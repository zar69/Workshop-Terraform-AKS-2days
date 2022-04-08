variable "azureRegion" {
  type        = string
  default     = "westeurope"
  description = "value"
}
variable "resourceGroupName" {
  type    = string
  default = "RG-DemoGitHub00"
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
