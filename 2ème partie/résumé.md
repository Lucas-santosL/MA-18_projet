# Résumé Ex Powershell

Cet exercice consiste à automatiser la création d’un dossier utilisateur à l’aide de PowerShell.
L’objectif est de remplacer une tâche manuelle par un script simple, rapide et reproductible, capable de créer automatiquement la structure nécessaire pour un utilisateur.

Le script fonctionne ainsi :

Il demande ou utilise un nom d’utilisateur.

Il crée un dossier dédié contenant un fichier confirmation.txt, confirmant que l’opération a été réalisée avec succès.

Pour améliorer l’organisation et éviter les doublons, la date est automatiquement ajoutée au nom du dossier.

Chaque exécution est enregistrée dans un fichier log.txt situé dans C:\Service, permettant de conserver une trace complète des opérations effectuées.

Cette fonctionnalité est essentielle pour assurer la traçabilité et le suivi des actions automatisées.

## Concepts PowerShell abordés

Variables : stockage et réutilisation d’informations dynamiques (nom d’utilisateur, chemin du dossier).

Création et gestion de dossiers et fichiers pour automatiser les tâches répétitives.

Écriture dans des fichiers (confirmation.txt et log.txt) pour le suivi et la confirmation des opérations.

Utilisation de la date automatique pour une organisation chronologique et éviter l’écrasement des données.

Affichage de messages dans la console avec Write-Host pour informer l’utilisateur.

## Avantages de l’automatisation

Gain de temps : les opérations se font en quelques secondes.

Réduction des erreurs humaines : le script applique toujours la même procédure.

Organisation améliorée : noms de dossiers datés et fichiers correctement créés.

Traçabilité complète : chaque action est enregistrée dans un fichier log.

## Objectifs pédagogiques

Comprendre l’automatisation des tâches répétitives dans un environnement professionnel.

Apprendre à gérer dossiers, fichiers et journaux avec PowerShell.

Découvrir comment améliorer la productivité et réduire les erreurs grâce à un script simple.

Poser les bases pour créer des scripts plus complexes utilisés dans le support informatique ou l’administration système.
