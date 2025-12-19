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
resource "azurerm_storage_account" "stg" {
  name                     = "storageaccountname"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}