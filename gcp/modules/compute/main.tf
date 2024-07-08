# VNet Module
module "vnet" {
  source = "./modules/vnet"

  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_prefixes     = var.subnet_prefixes
  subnet_names        = var.subnet_names
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

# VM Module
module "vm" {
  source = "./modules/vm"

  vm_name           = var.vm_name
  vm_size           = var.vm_size
  admin_username    = var.admin_username
  admin_password    = var.admin_password
  subnet_id         = module.vnet.subnet_ids[0]
  public_ip         = var.public_ip
  os_disk           = var.os_disk
  source_image_id   = var.source_image_id
  location          = var.location
  resource_group_name = var.resource_group_name

  tags = var.tags
}

# SQL Module
module "sql" {
  source = "./modules/sql"

  sql_server_name        = var.sql_server_name
  sql_database_name      = var.sql_database_name
  sql_administrator_login = var.sql_administrator_login
  sql_administrator_password = var.sql_administrator_password
  location               = var.location
  resource_group_name    = var.resource_group_name
  subnet_id              = module.vnet.subnet_ids[0]

  tags = var.tags
}
