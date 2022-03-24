# cf. https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs
# 

# Création d'un namespace en code HCL
# https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace
resource "kubernetes_namespace" "Terra-k8s-ns" {
  metadata {
    annotations = {
      name = "example-annotation"
    }

    labels = {
      app = "coolapi"
    }

    name = "terraform-ex-namespace"
  }
}


# Création d'un namespace en utilisant un manifest Kubernetes en YAML 
# cf. https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/manifest
# voir la procédure dans le readme du Lab 10
