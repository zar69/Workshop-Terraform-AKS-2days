# Lab 3 : Simple pipeline

Objectif : Connexion à un abonnement Azure et liste les ressources groupes de l'abonnement

Pré requis : avoir un Service Principal Azure

## Créér un secret "AZURE_CREDENTIALS" dans le service secret de GitHub

Mettre les informations récupérées lors de la création du "Service Principal"
  ```
  {
    "clientId": "xxxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxxx",
    "clientSecret": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
    "subscriptionId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxx",
    "tenantId": "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
  }
  ```
   

Procédure pour créer un secret GitHub : https://github.com/Azure/actions-workflow-samples/blob/master/assets/create-secrets-for-GitHub-workflows.md


## Déclencher manuellement le workflow GiHub 

Le Pipeline est dans le répertoire : **.github/workflows/Lab3_Simple_Pipeline.yml**

Aller dans GitHub dans votre
Cliquer sur Actions (entre Pull Request et Projets)
Sélectionner le workflow **1 - Workflow connexion Azure**
Cliquer sur le menu déroulant Run Workflow
Cliquer sur le bouton Run workflow

Procédure associée : https://docs.github.com/en/actions/managing-workflow-runs/manually-running-a-workflow

Le Workflow va prendre quelques secondes à démarrer avec un indicateur orange

Cliquer sur le nom du workflow à côté du point orange pour voir le déroulé du workflow

Si le pipeline s'exécute correctement, une coche verte doit apparaitre.

Procédure associée : https://docs.github.com/en/actions/managing-workflow-runs/manually-running-a-workflow

Si le pipeline s'exécute correctement, une coche verte doit apparaitre. Dans les logs du workflow, on doit voir les ressources groupes de l'abonnement

  
