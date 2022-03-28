# Lab 8 : Pipeline de Release de l'application dans Kubernetes
L'objectif de ce pipeline de Release est :
- Déployer l'application dans AKS en s'appuyant sur des fichiers manifests et l'image coolapi stockée dans l'Azure Container Registry

Aller dans le répertoire Kubernetes/Manifests/coolapi
Visualiser les trois fichiers:
- 1_namespace.yml
- 2_deployment.yml
- 3_service.yml

Lancer le forkflow "4 - Workflow CD Application dans AKS"

Vérification:
- Aller dans la console Azure (https://portal.azure.com/#blade/HubsExtension/BrowseResource/resourceType/Microsoft.ContainerService%2FmanagedClusters)
- Dans le cluster AKS
- Kubernetes resources Namespaces (vérifier la présence du Namespace)
- Kubernetes resources Services and Ingresses (coolapi-service et cliquer sur l'adresse IP Publique externe)

Une page web avec le message hello API Bleue doit apparaitre



