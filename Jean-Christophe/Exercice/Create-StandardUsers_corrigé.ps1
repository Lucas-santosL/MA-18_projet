<# 
.SYNOPSIS
    Création / mise à jour standardisée des utilisateurs locaux depuis users.csv
#>

param(
    [string]$CsvPath = ".\users.csv",
    [switch]$DryRun
)

# --- 1. Vérifications initiales ---

if (-not (Test-Path -Path $CsvPath)) {
    Write-Error "Fichier CSV introuvable : $CsvPath. Arrêt du script."
    exit 1
}

# Import CSV pour test
$csvSample = Import-Csv -Path $CsvPath -Delimiter ';' -Encoding Default -ErrorAction Stop

# Vérification COLUMNS SIMPLIFIÉE (juste vérifier que les colonnes existent)
$expectedHeaders = @('Login','FullName','Description','IsEnabled')
$actualHeaders = $csvSample[0].PSObject.Properties.Name

$missing = $expectedHeaders | Where-Object { $_ -notin $actualHeaders }
if ($missing) {
    Write-Error "Colonnes manquantes : $($missing -join ', ')"
    exit 1
}

Write-Host "✅ Colonnes OK : $($actualHeaders -join ', ')"


# Ré-import officiel (on pourrait réutiliser $csvSample, mais on garde cela clair)
$users = Import-Csv -Path $CsvPath -Delimiter ';' -Encoding Default

# --- 2. Préparation du log et du rapport ---

$logDir  = "C:\Logs"
$logFile = Join-Path $logDir "UserProvisioning.log"

if (-not (Test-Path $logDir)) {
    New-Item -Path $logDir -ItemType Directory -Force | Out-Null
}

$report = @()  # tableau d’objets pour le rapport final

function Write-Log {
    param(
        [string]$Login,
        [string]$Action,
        [string]$Result,
        [string]$Message = ""
    )

    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $line = "$timestamp;Login=$Login;Action=$Action;Result=$Result;Message=$Message"
    Add-Content -Path $logFile -Value $line
}

# --- 3. Traitement de chaque utilisateur ---

foreach ($u in $users) {

    $login     = $u.Login
    $fullName  = $u.FullName
    # Description standardisée, on ignore ce qui vient du CSV
    $desc      = "Employé – $fullName"

    # Gestion IsEnabled : on tolère True/False, true/false, 1/0
    $enabled = $false
    if ($u.IsEnabled -match '^(True|true|1)$') {
        $enabled = $true
    }

    $action = ""
    $result = "OK"
    $message = ""

    try {
        $existingUser = Get-LocalUser -Name $login -ErrorAction SilentlyContinue

        if ($null -eq $existingUser) {
            # Utilisateur inexistant : création
            $action = "Créé"

            if (-not $DryRun) {
                $securePwd = Read-Host -Prompt "Mot de passe pour l'utilisateur $login" -AsSecureString

                New-LocalUser -Name $login `
                              -FullName $fullName `
                              -Description $desc `
                              -Password $securePwd `
                              -ErrorAction Stop | Out-Null

                if ($enabled) {
                    Enable-LocalUser -Name $login -ErrorAction Stop
                }
                else {
                    Disable-LocalUser -Name $login -ErrorAction Stop
                }
            }
            else {
                $message = "DryRun : création simulée."
            }
        }
        else {
            # Utilisateur déjà existant : mise à jour
            $action = "Déjà existant – mis à jour"

            if (-not $DryRun) {
                # Mise à jour de la description
                $existingUser | Set-LocalUser -Description $desc -ErrorAction Stop

                # Activation / désactivation
                if ($enabled) {
                    Enable-LocalUser -Name $login -ErrorAction Stop
                }
                else {
                    Disable-LocalUser -Name $login -ErrorAction Stop
                }
            }
            else {
                $message = "DryRun : mise à jour simulée."
            }
        }
    }
    catch {
        $result  = "KO"
        $action  = if ($action) { $action } else { "Erreur" }
        $message = $_.Exception.Message
    }

    # --- Log et rapport pour cet utilisateur ---

    Write-Log -Login $login -Action $action -Result $result -Message $message

    $report += [PSCustomObject]@{
        Login   = $login
        Status  = $action
        Enabled = $enabled
        Message = $message
    }
}

# --- 4. Export du rapport ---

$reportFile = ".\UserProvisioningReport.csv"
$report | Export-Csv -Path $reportFile -Delimiter ';' -NoTypeInformation -Encoding UTF8

Write-Host "Traitement terminé. Rapport : $reportFile"
Write-Host "Log détaillé : $logFile"
if ($DryRun) {
    Write-Host "Attention : exécution en mode DryRun (aucune modification réelle)."
}
