
# 1.Analyse

### Sujet retenu: <br> 
Le sujet porte sur l’automatisation d’un petit service informatique : <br>
créer un dossier pour un utilisateur et générer un fichier de confirmation.
Ce service correspond à une tâche de support intérmediaire.
L’objectif est d’apprendre que PowerShell peut remplacer une action manuelle par une action automatisée, plus rapide,fiable,organisée


# 2. Notions PowerShell utilisées

### Les variables pour stocker des informations:<br>
● $NomUtilisateur<br>
● $Chemin<br>

### Création d’un dossier :<br>
● New-Item -ItemType Directory<br>

### Écriture d'un dossier:<br>
● New-Item -ItemType Directory<br>

### Écriture dans un fichier:<br>
● Out-File<br>

### Dates automatiques:<br>
● Get-Date<br>

### Message affiché en fin de service:<br>
● Write-Host<br>

# 3.Consigne Exercice 1  Création d’un dossier utilisateur automatisé
### Objectif
Automatiser un service simple : créer un dossier pour un utilisateur et générer un fichier de confirmation.

### Travail demandé 
Le script doit :
- Créer un dossier pour l’utilisateur
- Créer un fichier `confirmation.txt` dedans
- Afficher un message de fin

### Améliorations demandées
- Ajouter la date dans le nom du dossier
- Créer un fichier `log.txt` dans `C:\Service` qui garde une trace du service effectué

# Explications théoriques

L’objectif de cet exercice est de comprendre comment automatiser certaines tâches avec PowerShell.  

### Variables
Les variables servent à **stocker des informations temporaires** dans un script, comme un nom d’utilisateur ou un chemin. Cela permet de réutiliser ces données facilement sans les réécrire.

### Gestion des dossiers et fichiers
PowerShell permet de **créer, modifier et organiser des dossiers et fichiers** automatiquement. Automatiser ces actions évite les erreurs et gagne du temps par rapport à une manipulation manuelle.

### Messages et retours
Afficher des messages dans la console permet de **suivre l’exécution du script** et de confirmer que les actions ont bien été réalisées.

### Gestion des dates
Inclure la date dans les noms de dossiers ou fichiers permet de **suivre l’historique des opérations** et d’éviter d’écraser des données existantes.

### Journaux d’activité
Conserver un fichier de log permet de **documenter les actions effectuées** par le script, ce qui est utile pour le suivi et le débogage.

### vidéo 
vous pouvez consulter cette vidéo pour comprendre la création de dossier en PowerShell: [Lien YouTube](https://www.youtube.com/watch?v=oWZ6Jzn1TbE).










