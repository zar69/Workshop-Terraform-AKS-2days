# Lab 1 : Resource Group et Storage Account

## Objectif

Déployer un Resource Group et un compte de stockage Azure avec terraform

## Pré requis

- Avoir installé terraform dans un Bash
- Etre connecté à Azure (via la commande **az login**)
- avoir cloné le Repo Github forké

Alternative :

Utiliser le Cloud Shell Azure.
Pour cela : 
- S'authentifier dans le navigateur sur le portail Azure (https://portal.azure.com)
- Ouvrir un nouvel onglet sur https://shell.azure.com. Valider la création d'un compte de stockage si c'est la première fois que le Cloud Shell est utilisé. Ce compte de stockage sert de stockage persistent (l'Azure Cloud Shell est instancié sous la forme d'un conteneur)
- Aller dans le répertoire clouddrive :  cd clouddrive
- cloner le repo forké : git clone ....


## Déroulé

Aller dans le **répertoire Terraform/Lab1_Compte_de_Stockage**

Editer les 4 fichiers terraform (.tf) les uns après les autres en suivant la numérotation

Utiliser les liens présents dans les fichiers pour aller dans la documentation de Terraform

Une fois les fichiers modifés, placez vous dans votre bash dans le répertoire Terraform/Lab1_Compte_de_Stockage et exécuter la commande **terraform init** 

Cette commande va télécharger le provider azurerm (dans cet exercice)

Exécuter **ls -lisa**

un répertoire .terraform et un fichier .terraform.lock.hcl ont été créés dans le répertoire

Exécuter **terraform plan**

Si tout se passe bien, cela doit afficher

_Plan: 3 to add, 0 to change, 0 to destroy._ 


---
/!\ si vous utilisez terraform dans WSL2, il peut y avoir un problème avec la command terraform plan ou terraform apply qui se bloque. Ceci est lié à un bug de résolution DNS provoqué par une mise à jour de WSL 2.0.

Exécuter la commande suivante pour activer le mode debug de Terraform : 
```
export TF_LOG="TRACE"
```
Information supplémentaires sur le debugging terraform : https://www.terraform.io/internals/debugging

Le descriptif du problème et une solution sont disponibles ici : https://www.cryingcloud.com/blog/2022/2/21/terraform-and-wsl2-issue et ici: https://github.com/microsoft/WSL/issues/5420#issuecomment-646479747

Exécuter les commandes suivantes pour régler le problème
```
sudo rm /etc/resolv.conf
sudo bash -c 'echo "nameserver 8.8.8.8" > /etc/resolv.conf'
sudo bash -c 'echo "[network]" > /etc/wsl.conf'
sudo bash -c 'echo "generateResolvConf = false" >> /etc/wsl.conf'
sudo chattr +i /etc/resolv.conf
```

----

Exécuter **terraform apply** 

le message suivant va être affiché :

*Plan: 3 to add, 0 to change, 0 to destroy.
 Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  _Enter a value:

  saisir **yes**

  Une fois le déploiement terminé. 

  Exécuter **ls -lisa** et vérifier la présence de 2 nouveaux fichiers : **terraform.tfstate** et **terraform.tfstate.backup**

  Exécuter **terraform show** pour voir le TFState
