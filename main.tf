provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "devops" {
  name     = "rg-devops-lab"
  location = "Central India"
}
