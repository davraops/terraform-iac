resource "azurerm_virtual_network" "main" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}

resource "azurerm_subnet" "main" {
  count                = length(var.subnet_prefixes)
  name                 = var.subnet_names[count.index]
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = var.subnet_prefixes[count.index]
}

output "vnet_id" {
  value = azurerm_virtual_network.main.id
}

output "subnet_ids" {
  value = azurerm_subnet.main[*].id
}
