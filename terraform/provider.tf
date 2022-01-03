provider "azurerm" {
  features {}
}

provider "azuread" {}

terraform {
  backend "azurerm" {
    resource_group_name  = "mgt-tfstate-rg"
    storage_account_name = "tfstatesapb"
    container_name       = "tfstatestorage"
    key                  = "story.tfstate"
  }
}