###########################
## Azure Provider - Main ##
###########################

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.66.0"
    }
   
  }
  required_version = ">= 0.14"
}
provider "azurerm" {
  features {}
  subscription_id = var.azure-subscription-id
  client_id       = var.azure-client-id
  client_secret   = var.azure-client-secret
  tenant_id       = var.azure-tenant-id

}
