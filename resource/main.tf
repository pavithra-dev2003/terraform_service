terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "381b371f-c06d-4487-a677-8d1e6f61613f"
  features {}
}
resource "azurerm_resource_group" "this" {
  name     = var.resouce_name
  location = var.resource_location
}