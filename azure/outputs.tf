output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = module.vnet.vnet_id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = module.vnet.subnet_ids
}

output "vm_id" {
  description = "The ID of the Virtual Machine"
  value       = module.vm.vm_id
}

output "public_ip" {
  description = "The public IP address of the Virtual Machine"
  value       = module.vm.public_ip
}

output "sql_server_name" {
  description = "The name of the SQL Server"
  value       = module.sql.sql_server_name
}

output "sql_database_name" {
  description = "The name of the SQL Database"
  value       = module.sql.sql_database_name
}
