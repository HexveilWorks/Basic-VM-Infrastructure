
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.71.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "aaa2cae7-98a0-464c-b899-b276d44b6d7c"
}