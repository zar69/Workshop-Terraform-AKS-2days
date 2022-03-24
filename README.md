# Workshop Industrialisation des déploiements dans Azure avec Terraform 

tags: #workshop #aks #github #terraform

## Jour 1 

### Matin
- Introduction à Terraform
- Lab 1 : création d'un compte de stockage + containers
- Suite de la présentation Terraform (output, datasources)
- Lab 2 :  création d'une VM   + utilisation du Storage Backend + utilisation 
- Suite de la présentation Terraform : automatisation principe généraux CI/CD, Terraform Cloud

### Après midi
- Introduction à GitHub (Repo + Workflow)
- Lab 3 : simple pipeline
- Lab 4 : pipeline CI-CD terraform

---

## Jour 2
### Matin
- Introduction aux micro services
- Rappels sur Kubernetes
- Introduction à Azure Kubernetes Services
- Lab 5 : Déploiement Azure Container Registry
- Lab 6 : Déploiement Azure Kubernetes Service

### Après midi
- Rappels sur les deploiements Kubernetes : (YAML, Helm) et pipelines
- Focus/explication sur les Pipelines de Build 
- Lab 7 : Pipeline de build (CI) d'une application conteneurisée
- Focus/explication Pipeline de release
- Lab 8 : Pipeline de release d'une application dans Kubernetes
- Lab 9 : Pipeline de release d'une application dans Kubernetes Advanced (analyse manifest YML...)
- Lab 10 : Déploiement dans Kubernetes avec Terraform

---
## Pré requis

Repo Github pour les étudiants : https://github.com/FrenchBarbusCorp/Workshop-Terraform-AKS-2days

Avoir un environnement Bash 
- Pour ceux sous Windows 10/11 : Installation WSL2 https://docs.microsoft.com/en-us/windows/wsl/install

Avoir les outils suivants : 
- git
- Azure CLI -> https://docs.microsoft.com/fr-fr/cli/azure/install-azure-cli-linux?pivots=apt (test: ~$  az Login)
- terraform -> https://learn.hashicorp.com/tutorials/terraform/install-cli (test : ~$ terraform)
- kubectl -> https://kubernetes.io/docs/tasks/tools/#kubectl
- Visual Studio Code -> https://code.visualstudio.com
- Extension Terraform pour VSCode -> Depuis le bash, executez « code . » et aller chercher l’extension « Hashicorp Terraform »


**Créer un Service Principal dans Azure**

az login

az account list -o table

Récupérer l'ID de la subscription Azure puis exécuter la commande suivante :

az ad sp create-for-rbac --name "votrenom-demo-githubaction2022" --role "Contributor" --scopes /subscriptions/METTRE_ICI_L_ID_DE_LA_SUBSCRIPTION --sdk-auth -o jsonc

Récupérer le output de la commande et le sauvegarder temporairement dans un fichier 
   

