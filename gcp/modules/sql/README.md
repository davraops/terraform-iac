# SQL Module

This module creates a Google Cloud SQL instance along with a database and a user.

## Usage

module "sql" {
  source = "./modules/sql"

  instance_name      = var.instance_name
  database_version   = var.database_version
  region             = var.region
  tier               = var.tier
  authorized_networks = var.authorized_networks
  root_password      = var.root_password
  database_name      = var.database_name
  user_name          = var.user_name
  user_password      = var.user_password
  tags               = var.tags
}
