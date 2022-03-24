# Lab 10 : déploiement de ressources Kubernetes avec Terraform

Pré-requis :
- Avoir un cluster AKS (cf. Lab 6)
- Installer tfk8s 
  cf. https://github.com/jrhouston/tfk8s


# Installation de Golang

wget https://go.dev/dl/go1.18.linux-amd64.tar.gz
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.18.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
go version


## Installation de tfk8s 

Source : https://github.com/jrhouston/tfk8s

go install github.com/jrhouston/tfk8s@latest
sudo mkdir /opt/tfk8s
sudo mv go/bin/tfk8s /opt/tfk8s
tfk8s --help

cat namespace.yml | tfk8s > namespace.tf


## Déployer le tout

terraform init
terraform plan
terraforn apply 

