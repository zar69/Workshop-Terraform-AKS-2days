# Lab 7 : Pipeline de Build de l'application 

L'objectif de ce pipeline (workflow Github utilisant des actions GitHub) de Build est :
- de tester le code de l'application : lint et tests de sécurité (CodeQL) et tests unitaires (npm test)
- de construire l'image de conteneur associée
- de faire une analyse de sécurité de l'image
- de pousser l'image dans l'Azure Container Registry

Les tests de sécurité sur le code sont faits avec GitHub CodeQL
cf. https://codeql.github.com/ 

Le test de l'image est basé sur une action GitHub (cf. https://github.com/Azure/container-scan) et utilise en interne :
- Trivy (cf https://github.com/aquasecurity/trivy) pour le test de vulnérabilités des package OS et spécifiques à des langages 
- Dockle (cf https://github.com/goodwithtech/dockle) est un code linter qui vérifie les bonnes pratiques pour builder l'image et s'appuie sur le CIS Benchmark pour sécuriser l'image

Information complémentaire : Identify vulnerable container images in your CI/CD workflows https://docs.microsoft.com/en-us/azure/defender-for-cloud/defender-for-container-registries-cicd

L'authentification à l'Azure Container Registry se fait avec un Service Principal et la cli Docker
cf. https://docs.microsoft.com/en-us/azure/container-registry/container-registry-auth-service-principal#use-with-docker-login :

Le fichier du workflow de ce lab est .github/workflows/Lab7_Pipeline_CI_App.yml

Si vous voulez activer des logs supplémentaires pour débugguer les worksflows GitHub, activer les options présentées ici : https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/enabling-debug-logging 