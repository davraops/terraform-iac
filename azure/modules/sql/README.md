# SQL Module

This module creates an Azure SQL Server and Database, and configures a Virtual Network rule.

## Usage

module "sql" {
  source = "./modules/sql"

  sql_server_name        = var.sql_server_name
  sql_database_name      = var.sql_database_name
  sql_administrator_login = var.sql_administrator_login
  sql_administrator_password = var.sql_administrator_password
  location               = var.location
  resource_group_name    = var.resource_group_name
  subnet_id              = var.subnet_id
  tags                   = var.tags
}
