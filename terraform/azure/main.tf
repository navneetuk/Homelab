terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0"

  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "navneettfstate"
    container_name       = "tfstate"
    key                  = "homelab.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id            = var.subscription_id
  skip_provider_registration = true
}

resource "azurerm_resource_group" "homelab" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    environment = "homelab"
    owner       = "navneet"
    purpose     = "learning"
    managed_by  = "terraform"
  }
}

resource "azurerm_virtual_network" "homelab" {
  name                = "homelab-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.homelab.location
  resource_group_name = azurerm_resource_group.homelab.name

  tags = {
    environment = "homelab"
  }
}

resource "azurerm_subnet" "homelab" {
  name                 = "homelab-subnet"
  resource_group_name  = azurerm_resource_group.homelab.name
  virtual_network_name = azurerm_virtual_network.homelab.name
  address_prefixes     = ["10.0.1.0/24"]
}