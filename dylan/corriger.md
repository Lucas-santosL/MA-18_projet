# Étape 1 : Informations du service
$NomUtilisateur = "dylan"
$Date = Get-Date -Format "yyyy-MM-dd"
$Chemin = "C:\Service\$NomUtilisateur-$Date"

# Étape 2 : Création du dossier
New-Item -ItemType Directory -Path $Chemin

# Étape 3 : Création du fichier de confirmation
$Message = "Le service a été réalisé avec succès le $(Get-Date)"
$Message | Out-File "$Chemin\confirmation.txt"

# Étape 4 : Log général
"Service fait pour $NomUtilisateur le $(Get-Date)" | Out-File "C:\Service\log.txt" -Append

# Étape 5 : Message final
Write-Host "Service terminé pour $NomUtilisateur"
