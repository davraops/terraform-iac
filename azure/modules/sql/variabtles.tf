variable "sql_server_name" {
  description = "The name of the SQL Server"
  type        = string
}

variable "sql_database_name" {
  description = "The name of the SQL Database"
  type        = string
}

variable "sql_administrator_login" {
  description = "The administrator login for the SQL Server"
  type        = string
}

variable "sql_administrator_password" {
  description = "The administrator password for the SQL Server"
  type        = string
  sensitive   = true
}

variable "location" {
  description = "The location/region where resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "subnet_id" {
  description = "The ID of the subnet"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}
