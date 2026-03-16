
# Résumé – Oleksii

Dans notre exercice, le script crée automatiquement un dossier pour un service en utilisant le nom de l’utilisateur et la date. La commande New-Item permet de créer le dossier.

Ensuite, le script génère un fichier confirmation.txt avec un message grâce à la commande Out-File. Une ligne est aussi ajoutée dans un fichier log.txt avec l’option -Append afin de garder un historique des services réalisés.

Finalement, la commande Write-Host affiche un message dans la console pour indiquer que le service est terminé.
