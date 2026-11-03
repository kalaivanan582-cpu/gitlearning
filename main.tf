provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "devops" {
  name     = "rg-devops-lab"
  location = "Central India"
}

resource "azurerm_storage_account" "devops" {
  name                     = "devopslabstorage12345"
  resource_group_name      = azurerm_resource_group.devops.name
  location                 = azurerm_resource_group.devops.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
