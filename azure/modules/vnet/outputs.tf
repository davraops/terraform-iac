output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = azurerm_virtual_network.main.id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = azurerm_subnet.main[*].id
}
