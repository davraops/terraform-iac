# EC2 Module

This module creates an EC2 instance within a specified VPC and subnet, along with a security group allowing SSH access.

## Usage

module "ec2" {
  source = "./modules/ec2"

  instance_name     = var.instance_name
  instance_type     = var.instance_type
  ami_id            = var.ami_id
  key_name          = var.key_name
  vpc_id            = var.vpc_id
  public_subnet_ids = var.public_subnet_ids
  tags              = var.tags
}
