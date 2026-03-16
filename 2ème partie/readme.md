
# Résumé

Dans notre exercice, le script commence par définir des variables contenant le nom de l’utilisateur et la date. Ces informations sont utilisées pour créer automatiquement le chemin d’un dossier de service.

La commande New-Item permet ensuite de créer ce dossier sur l’ordinateur. Après cela, le script crée un fichier confirmation.txt dans ce dossier. Ce fichier contient un message indiquant que le service a été réalisé avec succès. Pour écrire ce message dans le fichier, la commande Out-File est utilisée.

Le script ajoute également une ligne dans un fichier log.txt afin de garder une trace des services réalisés. L’option -Append permet d’ajouter la nouvelle information sans supprimer les anciennes données.

Enfin, la commande Write-Host affiche un message dans la console pour indiquer que le service est terminé. Grâce à ces commandes, le script automatise la création du dossier, du fichier de confirmation et l’enregistrement dans le fichier log.
