# Contexte
Vous êtes technicien système dans une PME.
La direction souhaite standardiser le processus de création d’utilisateurs locaux Windows (onboarding) afin que toutes les arrivées soient traitées de la même manière, avec les mêmes règles et la même traçabilité.

Votre mission est de mettre en place un couple fichier CSV + script PowerShell qui permet de créer les utilisateurs de façon standardisée.

# Fichier fourni
On vous fournit un fichier users.csv avec le séparateur ; contenant les colonnes suivantes :
- Login
- FullName
- Description
- IsEnabled

# Travail demandé
Vous devez écrire un script PowerShell nommé Create-StandardUsers.ps1 qui :
## Vérifications initiales
- Vérifie la présence du fichier users.csv dans le même dossier que le script.
- Vérifie que le fichier contient exactement les colonnes attendues : Login, FullName, Description, IsEnabled.
- En cas de problème (fichier absent, colonnes incorrectes), affiche un message d’erreur clair et arrête l’exécution.

## Création / mise à jour des comptes utilisateurs
- Importe le contenu du CSV.
- Pour chaque ligne du CSV :
  - Vérifie si un utilisateur avec le Login indiqué existe déjà en local.
  - Si l’utilisateur n’existe pas :
    - Crée un compte local avec New-LocalUser (ou New-ADUser si vous travaillez en Active Directory, selon le contexte du TP).
    - Utilise le champ FullName comme nom complet.
    - Applique systématiquement une description au format :
    - Employé – <FullName> (même si la description du CSV est différente).
    - Définit l’état du compte (activé/désactivé) selon la valeur de IsEnabled (True = activé, False = désactivé).
  - Si l’utilisateur existe déjà :
    - Ne le recrée pas, mais met à jour au minimum la description et l’état (activé/désactivé) pour respecter les règles standard.

## Journalisation (logs)
- Crée (ou complète) un fichier de log : C:\Logs\UserProvisioning.log.
- Pour chaque utilisateur traité, écrit une ligne contenant au minimum :
  - Date et heure
  - Login
  - Action réalisée (Créé, Déjà existant – mis à jour, Erreur)
  - Résultat (OK ou KO)
  - Message d’erreur éventuel.
 
## Rapport de fin
- Génère un fichier UserProvisioningReport.csv récapitulant le traitement, avec par exemple les colonnes :
  - Login
  - Status (Créé, Existant, Erreur)
  - Enabled (True/False)
  - Message (optionnel, pour les détails ou les erreurs).

# Contraintes (pour illustrer la standardisation)
- Le script ne doit jamais créer ou modifier un compte sans passer par les informations du CSV.
- Le format des logs doit être identique pour chaque ligne (même ordre d’informations, même structure de texte).
- Les mêmes règles métier doivent s’appliquer pour tous les utilisateurs :
  - Même format de description.
  - Même logique d’activation/désactivation.
  - Même mode de traitement en cas d’erreur (message + log).
 
# Variante (optionnelle, niveau avancé)
Pour aller plus loin, vous pouvez :
  - Ajouter automatiquement chaque nouvel utilisateur à un groupe local standard (par exemple EmployesStd) avec Add-LocalGroupMember.
  - Ajouter un paramètre -DryRun à votre script :
      - Quand -DryRun est utilisé, le script lit le CSV, simule toutes les actions, écrit les logs et le rapport, mais ne crée ni ne modifie réellement aucun compte.
