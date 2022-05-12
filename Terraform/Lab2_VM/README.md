# Lab 2 : Resource Group et machine virtuelle Linux

Objectif : Déployer un Resource Group et une machine virtuelle Linux avec le stockage du TFSTATE dans le compte de stockage créé dans le Lab1

Aller dans le répertoire Terraform/Lab2_VM

Editer les 4 fichiers terraform (.tf) les uns après les autres en suivant la numérotation

Utiliser les liens présents dans les fichiers pour aller dans la documentation de Terraform

Une fois les fichiers modifés, placez vous dans votre bash dans le répertoire Terraform/Lab2_VM et exécuter la commande **terraform init** 

Cette commande va télécharger le provider azurerm (dans cet exercice)

Exécuter **ls -lisa**

un répertoire .terraform et un fichier .terraform.lock.hcl ont été créés dans le répertoire

Exécuter **terraform plan**

Si tout se passe bien, cela doit afficher

_Plan: 5 to add, 0 to change, 0 to destroy._ 

Exécuter **terraform apply** 

le message suivant va être affiché :

*Plan: 5 to add, 0 to change, 0 to destroy.
 Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  _Enter a value:

  saisir **yes**

  Une fois le déploiement terminé. 

  Exécuter **ls -lisa**, il ne doit pas y avoir de fichier terraform.tfstate
  
  Vérifier la présence du TFstate dans le container tfstate du compte de stockage créé dans le lab 1

  Exécuter **terraform show** pour voir le TFState
  
