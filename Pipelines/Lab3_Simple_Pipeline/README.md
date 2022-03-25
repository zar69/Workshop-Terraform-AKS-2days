# Lab 3 : Simple pipeline

Objectif : Connexion à un abonnement Azure et liste les ressources groupes de l'abonnement

Pré requis : avoir un Service Principal Azure

Créer un secret "AZURE_CREDENTIALS" dans le service secret de GitHub.
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

Déclencher manuellement le workflow GiHub (Pipeline est ici : .github/workflows/Lab3_Simple_Pipeline.yml)

Procédure associée : https://docs.github.com/en/actions/managing-workflow-runs/manually-running-a-workflow

Si le pipeline s'exécute correctement, une coche verte doit apparaitre. Dans les logs du workflow, on doit voir les ressources groupes de l'abonnement

  
