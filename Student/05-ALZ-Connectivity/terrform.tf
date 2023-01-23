terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.19.0"
    }
  }

  backend "azurerm" {
    key = "connectivity"
  }
}

provider "azurerm" {
  features {}
}