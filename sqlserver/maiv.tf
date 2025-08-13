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
resource "azurerm_mssql_server" "example" {
  name                         = var.sql_server
  resource_group_name          = var.resouce_name
  location                     = var.resource_location
  version                      = "12.0"
  administrator_login          = "missadministrator"
  administrator_login_password = "thisIsKat11"
  minimum_tls_version          = "1.2"
}
