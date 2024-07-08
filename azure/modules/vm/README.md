# VM Module

This module creates a Virtual Machine (VM) in a specified subnet, along with a network interface and optional public IP.

## Usage

module "vm" {
  source = "./modules/vm"

  vm_name           = var.vm_name
  vm_size           = var.vm_size
  admin_username    = var.admin_username
  admin_password    = var.admin_password
  subnet_id         = var.subnet_id
  vnet_id           = var.vnet_id
  public_ip         = var.public_ip
  os_disk           = var.os_disk
  source_image_id   = var.source_image_id
  location          = var.location
  resource_group_name = var.resource_group_name
  tags              = var.tags
}
