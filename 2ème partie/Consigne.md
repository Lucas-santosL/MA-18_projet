
# 1.Analyse


### 1. Analyse

Ce projet vise à automatiser un service simple mais essentiel dans un environnement informatique :  
la création d’un dossier utilisateur, la génération de fichiers associés et la conservation d’une trace de l’opération dans un journal.  
L’objectif principal est de démontrer comment PowerShell permet de remplacer une manipulation manuelle par un processus automatisé, plus rapide, plus fiable et surtout reproductible.

Dans un contexte professionnel, la création de dossiers utilisateurs fait partie des tâches répétitives du support informatique.  
Effectuée manuellement, cette opération peut entraîner plusieurs types d’erreurs :  
mauvais nom, mauvais chemin, fichiers oubliés ou manipulations incohérentes.  
L'automatisation apporte donc plusieurs avantages concrets :

- **Gain de temps** : les tâches récurrentes sont exécutées instantanément.  
- **Réduction des erreurs humaines** : le script applique toujours exactement la même procédure.  
- **Organisation améliorée** : l’ajout automatique de la date évite les doublons et facilite le classement.  
- **Traçabilité complète** : un fichier `log.txt` permet de garder une trace de chaque exécution.

Ce script est une introduction pratique aux bases de PowerShell et met en application plusieurs notions importantes :

- **Utilisation de variables** pour stocker des informations dynamiques (nom d'utilisateur, chemin, date).  
- **Création automatisée de dossiers et fichiers**, évitant toute manipulation manuelle.  
- **Écriture dans les fichiers**, par exemple pour confirmer la création ou enregistrer la date.  
- **Affichage d’un message final** indiquant le bon déroulement du service.  
- **Génération d’un fichier de log**, indispensable pour l’historique et le suivi des opérations.

L’intégration de la date dans le nom du dossier joue un rôle crucial :  
elle permet de différencier clairement chaque intervention, d’éviter l’écrasement accidentel de données et de conserver une organisation chronologique logique.

En résumé, cet exercice montre comment PowerShell peut automatiser efficacement une tâche courante du support informatique.  
Il sert de base solide avant de passer à des scripts plus avancés utilisés dans les environnements professionnels.



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
