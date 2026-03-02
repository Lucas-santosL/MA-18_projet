# 1. Analyse

Sujet choisie :
Le sujet porte sur la gestion et l’automatisation du traitement des demandes utilisateurs.
L’objectif est de créer un petit service informatique qui permet de suivre, modifier et filtrer des demandes via PowerShell. Ce service correspond à une tâche de support intermédiaire. L’idée est d’apprendre que PowerShell peut remplacer un suivi manuel des demandes par un processus automatisé, plus rapide, fiable et organisé.

## 2. Notions PowerShell utilisées

Variables – pour stocker des informations sur les demandes :

$Demandeur

$TypeDemande

$Statut

Création de données (objets) :

[PSCustomObject] – pour structurer chaque demande

Affichage et filtrage :

Write-Host – pour afficher des messages à l’écran

Format-Table – pour afficher les demandes sous forme de tableau

Where-Object – pour filtrer les demandes selon leur statut

Modification de données :

$demandes[index].Statut = "NouvelleValeur" – pour mettre à jour le statut d’une demande

Dates automatiques (optionnel pour le suivi ou les logs) :

Get-Date – pour inclure l’heure ou la date d’une action

## 3. Consigne Exercice – Gestion des demandes automatisée

Objectif :
Automatiser un petit service : gérer les demandes utilisateurs (création, suivi, modification de statut et filtrage).

Travail demandé :
Le script doit :

Créer une liste de demandes (avec nom du demandeur, type et statut)

Afficher toutes les demandes

Modifier le statut d’une demande donnée

Afficher uniquement les demandes en cours

Améliorations possibles :

Ajouter un fichier log.txt pour garder une trace de toutes les modifications

Inclure la date dans les logs ou dans les rapports

Ajouter un menu interactif pour créer, modifier ou supprimer des demandes

## 4. Explications théoriques

Variables :
Les variables permettent de stocker temporairement des informations comme le nom du demandeur ou le type de demande. Cela évite de réécrire plusieurs fois la même information et facilite la gestion des données.

Objets et tableaux :
PowerShell permet de créer des objets et des tableaux pour organiser les demandes. Chaque demande peut contenir plusieurs champs (nom, type, statut), ce qui permet de structurer et de suivre efficacement le processus.

Affichage et suivi :
Afficher les demandes dans la console permet de suivre les actions en temps réel et de vérifier que le script fonctionne correctement.

Filtrage et modification :
La possibilité de filtrer par statut ou de modifier une demande rend le processus interactif et automatisé, évitant ainsi les erreurs d’un suivi manuel.

Journaux et dates :
Conserver un fichier de log et inclure la date des opérations permet de suivre l’historique des actions et d’améliorer le suivi du service.

## 5. Auteur Readme
   Lucas 
