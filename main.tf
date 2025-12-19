terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
backend "azurerm" {
    resource_group_name  = "satish_rg111"
    storage_account_name = "satishstg111222"
    container_name       = "newcontainer"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
    features {}
    subscription_id = "00ad737d-c579-441c-8386-0551f3fc4bf9"
}
resource "azurerm_resource_group" "rg" {
  name     = "rg_name"
  location = "West Europe"
}
