variable "instance_name" {
  description = "The name of the SQL instance"
  type        = string
}

variable "database_version" {
  description = "The version of the database engine"
  type        = string
}

variable "region" {
  description = "The region to deploy the SQL instance"
  type        = string
}

variable "tier" {
  description = "The machine tier (e.g., db-f1-micro)"
  type        = string
}

variable "authorized_networks" {
  description = "The list of authorized networks"
  type        = list(object({
    name  = string
    value = string
  }))
}

variable "root_password" {
  description = "The root password for the SQL instance"
  type        = string
  sensitive   = true
}

variable "database_name" {
  description = "The name of the SQL database"
  type        = string
}

variable "user_name" {
  description = "The name of the SQL user"
  type        = string
}

variable "user_password" {
  description = "The password for the SQL user"
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}
