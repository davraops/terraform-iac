resource "azurerm_network_interface" "main" {
  name                = "${var.vm_name}-nic"
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = var.public_ip ? azurerm_public_ip.main.id : null
  }

  tags = var.tags
}

resource "azurerm_public_ip" "main" {
  count              = var.public_ip ? 1 : 0
  name               = "${var.vm_name}-pip"
  location           = var.location
  resource_group_name = var.resource_group_name
  allocation_method  = "Dynamic"
  tags               = var.tags
}

resource "azurerm_virtual_machine" "main" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size               = var.vm_size

  storage_os_disk {
    name              = var.os_disk.name
    caching           = var.os_disk.caching
    create_option     = "FromImage"
    managed_disk_type = var.os_disk.storage_account_type
  }

  storage_image_reference {
    id = var.source_image_id
  }

  os_profile {
    computer_name  = var.vm_name
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  tags = var.tags
}