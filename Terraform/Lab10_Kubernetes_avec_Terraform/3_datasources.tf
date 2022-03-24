
# Récupération des atributs d'un cluster AKS déployé hors de ce déploiement 
# cf. https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/kubernetes_cluster
data "azurerm_kubernetes_cluster" "Terra_aks" {
  name                = var.cluster_name
  resource_group_name = var.resource_group_name
}