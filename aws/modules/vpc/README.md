# VPC Module

This module creates a VPC along with public and private subnets, an internet gateway, and a public route table.

## Usage

module "vpc" {
  source = "./modules/vpc"

  vpc_name       = var.vpc_name
  cidr_block     = var.vpc_cidr_block
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
  tags           = var.tags
}
