terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.42.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features{}
}

# Create a resource group
resource "azurerm_resource_group" "example1" {
  name     = "example1"
  location = "East America"
  tags     = {
    Name = "ex1"
  }
}
