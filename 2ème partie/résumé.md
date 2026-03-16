
# Résumé

Dans notre exercice, le script automatise la création d’un service. Il commence par définir des variables pour le nom de l’utilisateur et la date, puis crée un dossier spécifique pour ce service avec la commande New-Item.

Ensuite, le script génère un fichier confirmation.txt contenant un message indiquant que le service a été réalisé, grâce à Out-File. Il ajoute également une ligne dans le fichier log.txt avec l’option -Append afin de garder un historique des services réalisés.

Enfin, Write-Host affiche un message dans la console pour indiquer que le service est terminé. Ce script permet ainsi de créer automatiquement le dossier, générer le fichier de confirmation et enregistrer l’action dans un log, tout en simplifiant l’organisation et le suivi des services.
