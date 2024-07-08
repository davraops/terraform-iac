# VNet Module

This module creates a Virtual Network (VNet) along with subnets in a specified resource group.

## Usage

module "vnet" {
  source = "./modules/vnet"

  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_prefixes     = var.subnet_prefixes
  subnet_names        = var.subnet_names
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}
