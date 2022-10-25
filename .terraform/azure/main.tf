terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.28.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "automatic-giggle-terraform"
    storage_account_name = "agterraformstorage"
    container_name       = "agterraformstate"
    key                  = "agterraformstate.dev.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  # The "feature" block is required for AzureRM provider 2.x.
  # If you're using version 1.x, the "features" block is not allowed.
  features {}
}
# Create a resource group
resource "azurerm_resource_group" "automatic-giggle" {
  name     = "automatic-giggle"
  location = "southindia"
}
