# VPC Module
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

# Compute Module
module "compute" {
  source = "./modules/compute"

  instance_name  = var.instance_name
  machine_type   = var.machine_type
  source_image   = var.source_image
  zone           = var.zone
  network        = module.vpc.network_id
  subnetwork     = module.vpc.subnet_ids[0]
  startup_script = var.startup_script
  tags           = var.tags
}

# SQL Module
module "sql" {
  source = "./modules/sql"

  instance_name       = var.sql_instance_name
  database_version    = var.database_version
  region              = var.region
  tier                = var.tier
  authorized_networks = var.authorized_networks
  root_password       = var.root_password
  database_name       = var.database_name
  user_name           = var.user_name
  user_password       = var.user_password
  tags                = var.tags
}