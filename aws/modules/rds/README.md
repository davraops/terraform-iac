# RDS Module

This module creates an RDS instance within a specified VPC and private subnets, along with a security group allowing access to the database.

## Usage

module "rds" {
  source = "./modules/rds"

  db_name           = var.db_name
  allocated_storage = var.allocated_storage
  engine            = var.engine
  engine_version    = var.engine_version
  db_instance_class = var.db_instance_class
  username          = var.username
  password          = var.password
  vpc_id            = var.vpc_id
  private_subnet_ids = var.private_subnet_ids
  tags              = var.tags
}
