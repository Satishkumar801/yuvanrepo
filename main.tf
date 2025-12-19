terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
}

provider "azurerm" {
    features {}
    subscription_id = "bd6e61a5-d2a5-4a90-95dd-c977f616c3b7"
}
resource "azurerm_resource_group" "rg" {
  name     = "rg_name"
  location = "West Europe"
}