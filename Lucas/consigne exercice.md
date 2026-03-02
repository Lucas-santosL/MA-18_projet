# Consigne de l’exercice – Gestion automatisée des demandes utilisateurs

## Objectif
Automatiser un service informatique simple pour gérer les demandes utilisateurs (support, accès, incidents, services).  
L’objectif est de remplacer un suivi manuel par un processus automatisé plus rapide, fiable et traçable, et de se familiariser avec les fonctionnalités de PowerShell.

## Travail demandé

1. **Création de demandes**  
   Créer un tableau contenant au moins 3 demandes.  
   Chaque demande doit être un objet structuré (`PSCustomObject`) avec les informations suivantes :  
   - Nom du demandeur  
   - Type de demande (par exemple accès réseau, installation logiciel, réinitialisation mot de passe)  
   - Statut (`Nouvelle`, `En cours`, `Traitée`)  

2. **Affichage**  
   Afficher toutes les demandes dans un tableau lisible (`Format-Table`) pour visualiser les informations.

3. **Modification**  
   Modifier le statut d’une demande donnée.

4. **Filtrage**  
   Afficher uniquement les demandes dont le statut est “En cours”.

## Compétences visées
- Manipuler des variables, objets et tableaux en PowerShell  
- Filtrer et modifier des données de manière automatisée  
- Afficher des informations de manière structurée  
- Comprendre l’importance des logs et de la traçabilité dans un service informatique
