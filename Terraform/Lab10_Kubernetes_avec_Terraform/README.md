# Lab 10 : déploiement de ressources Kubernetes avec Terraform

## Pré-requis :
- Avoir un cluster AKS (cf. Lab 6)
- Installer **Go** dans WSL
- Installer **tfk8s** 


## Installation de Golang
cf. https://go.dev/doc/install

wget https://go.dev/dl/go1.18.linux-amd64.tar.gz

sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.18.linux-amd64.tar.gz

export PATH=$PATH:/usr/local/go/bin

go version


## Installation de tfk8s 
tfk8s permet de transformer un fichier YAML Kubernetes en fichier TF avec des ressources Kubernetes_manifest

cf : https://github.com/jrhouston/tfk8s

go install github.com/jrhouston/tfk8s@latest

sudo mkdir /opt/tfk8s

sudo mv go/bin/tfk8s /opt/tfk8s

tfk8s --help

cat namespace.yml | tfk8s > namespace.tf


## Déployer le tout

Lire les fichiers main.tf et namespace.tf et déterminer les différences 

terraform init

terraform plan

terraform apply

## Vérifier la création des 2 namespaces
kubectl get namespaces
