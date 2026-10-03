provider "azurerm" {
  features {}
  subscription_id = "b4420f65-ecea-451e-8c2f-6eba9cbc90a4"
}

resource "azurerm_resource_group" "rg" {
  name     = "kodekloud-tf-rg"
  location = "eastus"
}

resource "azurerm_storage_account" "sa" {
  name                     = "praveen123098"
  resource_group_name      = "kodekloud-tf-rg"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "praveen-vnet"
  resource_group_name = "kodekloud-tf-rg"
  location            = "eastus"
  address_space       = ["10.0.0.0/16"]
}