variable "azureRegion" {
  type        = string
  default     = "westeurope"
  description = "value"
}

variable "resourceGroupName" {
  type    = string
  default = "RG-DemoGitHub00-stan"
}

variable "AzureSubscriptionID" {
  type = string
}

variable "AzureClientSecret" {
  type = string
}

variable "AzureClientID" {
  type = string
}

variable "AzureTenandID" {
  type = string
}

variable "Password" {
  type    = string
  default = "SuperMotdePasse"
}

variable "vnetName" {
  type    = string
  default = "Vnet-VM"
}

variable "vmUser" {
  type    = string
  default = "stan"
}

variable "subnetName" {
  type    = string
  default = "Subnet-VM"
}

variable "nicName" {
  type    = string
  default = "Nic-1"
}

variable "vmName" {
  type    = string
  default = "VM-Linux"
}

# az vm list-skus -l westus
variable "vmSize" {
  type    = string
  default = "Standard_B2ms"
}
