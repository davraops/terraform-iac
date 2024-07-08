output "network_id" {
  description = "The ID of the VPC network"
  value       = module.vpc.network_id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = module.vpc.subnet_ids
}

output "compute_instance_id" {
  description = "The ID of the Compute Instance"
  value       = module.compute.instance_id
}

output "compute_instance_public_ip" {
  description = "The public IP address of the Compute Instance"
  value       = module.compute.instance_public_ip
}

output "sql_instance_id" {
  description = "The ID of the SQL instance"
  value       = module.sql.sql_instance_id
}

output "sql_database_name" {
  description = "The name of the SQL database"
  value       = module.sql.sql_database_name
}

output "sql_user_name" {
  description = "The name of the SQL user"
  value       = module.sql.sql_user_name
}
