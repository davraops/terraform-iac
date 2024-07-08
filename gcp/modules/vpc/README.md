# VPC Module

This module creates a VPC network along with subnets in a specified region.

## Usage

module "vpc" {
  source = "./modules/vpc"

  network_name           = var.network_name
  network_description    = var.network_description
  subnet_names           = var.subnet_names
  subnet_cidrs           = var.subnet_cidrs
  region                 = var.region
  enable_private_ip_google_access = var.enable_private_ip_google_access
  tags                   = var.tags
}
