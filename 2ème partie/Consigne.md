
# 1.Analyse

### Sujet retenu: <br> 
Ce projet porte sur l’automatisation d’un service simple mais essentiel dans un environnement informatique : créer un dossier utilisateur de manière systématique, générer des fichiers associés et tracer l’opération dans un journal.
L’objectif principal est de montrer comment PowerShell peut remplacer une manipulation manuelle par un processus automatisé, plus rapide, plus fiable et surtout reproductible.
Dans un contexte professionnel, la création de dossiers utilisateurs fait partie des tâches récurrentes d’un service informatique. Réaliser cette opération manuellement peut entraîner des erreurs (mauvais nom, emplacement incorrect, fichiers oubliés). L’automatisation permet donc :
<br>
un gain de temps, surtout lorsque l’opération doit être répétée régulièrement ;
une réduction des erreurs humaines, car les instructions sont toujours exécutées de la même manière ;
une meilleure organisation, notamment en ajoutant la date aux dossiers et en générant un fichier de log ;
une traçabilité complète, ce qui est important dans les environnements professionnels.
<br>
Ce script constitue une introduction pratique à plusieurs notions fondamentales de PowerShell.
Il permet de comprendre :
<br>
comment déclarer et utiliser des variables pour stocker des informations dynamiques,
<br>
comment créer automatiquement des dossiers et des fichiers,
<br>
comment insérer des informations dans les fichiers (par exemple, la date ou des confirmations),
<br>
comment afficher un message de fin pour signaler à l'utilisateur que le service s'est déroulé correctement,
<br>
comment générer un log pour garder un historique des opérations effectuées.

L’ajout de la date au nom du dossier est également un élément clé :
il permet de différencier facilement les interventions, d’éviter les doublons et de conserver une organisation chronologique.
En résumé, cet exercice montre comment PowerShell peut automatiser une procédure simple de support informatique et constitue une base solide avant de passer à des scripts plus avancés utilisés dans les services IT professionnels.


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
Les variables servent à stocker des informations temporaires dans un script, comme un nom d’utilisateur ou un chemin. Cela permet de réutiliser ces données facilement sans les réécrire.

### Gestion des dossiers et fichiers
PowerShell permet de créer, modifier et organiser des dossiers et fichiers automatiquement. Automatiser ces actions évite les erreurs et gagne du temps par rapport à une manipulation manuelle.

### Messages et retours
Afficher des messages dans la console permet de suivre l’exécution du script et de confirmer que les actions ont bien été réalisées.

### Gestion des dates
Inclure la date dans les noms de dossiers ou fichiers permet de suivre l’historique des opérations et d’éviter d’écraser des données existantes.

### Journaux d’activité
Conserver un fichier de log permet de documenter les actions effectuées par le script, ce qui est utile pour le suivi et le débogage.

### vidéo 
vous pouvez consulter cette vidéo pour comprendre la création de dossier en PowerShell: [Lien YouTube](https://www.youtube.com/watch?v=oWZ6Jzn1TbE).

### Écriture dans un fichier:<br>
● Out-File<br>

### Dates automatiques:<br>
● Get-Date<br>

### Message affiché en fin de service:<br>
● Write-Host<br>
