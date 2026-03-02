# Corrigé de l'exercice – Gestion automatisée des demandes utilisateurs

## Description
Ce script PowerShell permet de gérer un petit service de suivi des demandes utilisateurs.  
Il permet de :  
- Créer un tableau de demandes (nom, type, statut)  
- Afficher toutes les demandes  
- Modifier le statut d’une demande  
- Afficher uniquement les demandes en cours  
- Enregistrer un fichier de log avec date et heure pour toutes les actions  

Le script inclut un fichier `log.txt` pour garder une trace des actions et assure un suivi automatique et traçable.

---

## Script PowerShell

```powershell
# ==========================================
# Script PowerShell : Gestion des demandes
# ==========================================

# Dossier de log (modifiable si pas de droits admin)
$logFolder = "$env:USERPROFILE\Service"
if (-not (Test-Path $logFolder)) {
    New-Item -ItemType Directory -Path $logFolder
}

$logFile = "$logFolder\log.txt"

# Fonction pour écrire dans le log
function Write-Log {
    param ([string]$Message)
    $date = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$date - $Message" | Out-File -FilePath $logFile -Append
}

# Création des demandes
$demandes = @(
    [PSCustomObject]@{ Demandeur = "Alice"; Type = "Accès réseau"; Statut = "Nouvelle" },
    [PSCustomObject]@{ Demandeur = "Bob"; Type = "Installation logiciel"; Statut = "En cours" },
    [PSCustomObject]@{ Demandeur = "Lucas"; Type = "Réinitialisation mot de passe"; Statut = "Traitée" }
)

Write-Host "Toutes les demandes :"
$demandes | Format-Table

Write-Log "Création initiale des demandes"

# Modifier le statut d’une demande (exemple : Alice passe en 'En cours')
$demandes[0].Statut = "En cours"
Write-Log "Statut de la demande d'Alice modifié en 'En cours'"

# Affichage des demandes en cours
Write-Host "`nDemandes en cours :"
$demandes | Where-Object { $_.Statut -eq "En cours" } | Format-Table
Write-Log "Affichage des demandes en cours"

# Message final
Write-Host "`nScript exécuté avec succès. Les actions ont été enregistrées dans $logFile."
Write-Log "Script exécuté avec succès"
