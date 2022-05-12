# Lab 9 : Pipeline Avancé de Release de l'application dans Kubernetes

## Objectifs
Utiliser un pipeline de Release pour déployer l'application dans Azure Kubernetes Service en s'appuyant sur des fichiers manifests YAML et l'image coolapi stockée dans l'Azure Container Registry

Ce pipeline utilise **Kubescore** (https://kube-score.com/) pour évaluer le respect des bonnes pratiques Kubernetes

Ce pipeline génère une issue Github en cas d'erreur dans le pipeline

## Déroulé
Aller dans les settings du repository et activer les "issues"

Aller dans le répertoire .github/workflows et visualiser le fichier Lab9_Pipeline_CD_App_Advanced.yml

Modifier la ligne 43 (assignees) avec votre compte github

A partir de la ligne 33, une step permet d'exécuter des tests statiques sur les manifests YAML Kubernetes en utilisant Kubescore

Déclencher le workflow "Lab9_Pipeline_CD_App_Advanced.yml"

Visualiser les outputs du pipeline et regarder les erreurs trouvées par kubescore

<img width='800' src='https://github.com/FrenchBarbusCorp/Workshop-Terraform-AKS-2days/blob/main/images/lab9-kubescore-error.jpg'/> 

Vérifier les issues GitHub générées
