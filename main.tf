terraform {
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "testrg" {
 name     = "${var.resourcegroup}"
 location = "${var.location}"
}

resource "azurerm_virtual_network" "testvnet" {
 name                = "${var.vnet}"
 address_space       = "${var.vnet_address_space}"
 location            = azurerm_resource_group.testrg.location
 resource_group_name = azurerm_resource_group.testrg.name
}

module "tier1"
  source              = "./Application_tier/Tier1"
  
module "tier2"
  source              = "./Application_tier/Tier2"
  
module "tier3"
  source              = "./Application_tier/Tier3"
