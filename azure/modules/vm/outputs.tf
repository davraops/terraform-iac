output "vm_id" {
  description = "The ID of the Virtual Machine"
  value       = azurerm_virtual_machine.main.id
}

output "public_ip" {
  description = "The public IP address of the Virtual Machine"
  value       = azurerm_public_ip.main[0].ip_address
}
