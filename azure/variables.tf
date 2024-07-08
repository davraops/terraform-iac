# export TF_VAR_azure_subscription_id="your_subscription_id"
# export TF_VAR_azure_client_id="your_client_id"
# export TF_VAR_azure_client_secret="your_client_secret"
# export TF_VAR_azure_tenant_id="your_tenant_id"

variable "azure_subscription_id" {
  description = "The Subscription ID for Azure"
  type        = string
  sensitive   = true
  default     = ""
}

variable "azure_client_id" {
  description = "The Client ID for Azure"
  type        = string
  sensitive   = true
  default     = ""
}

variable "azure_client_secret" {
  description = "The Client Secret for Azure"
  type        = string
  sensitive   = true
  default     = ""
}

variable "azure_tenant_id" {
  description = "The Tenant ID for Azure"
  type        = string
  sensitive   = true
  default     = ""
}

# VNet Variables
variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
  default     = "my-vnet"
}

variable "address_space" {
  description = "The address space for the Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_prefixes" {
  description = "The CIDR blocks for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "subnet_names" {
  description = "The names of the subnets"
  type        = list(string)
  default     = ["subnet1", "subnet2"]
}

# VM Variables
variable "vm_name" {
  description = "The name of the Virtual Machine"
  type        = string
}

variable "vm_size" {
  description = "The size of the Virtual Machine"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "The admin username for the Virtual Machine"
  type        = string
}

variable "admin_password" {
  description = "The admin password for the Virtual Machine"
  type        = string
  sensitive   = true
}

variable "public_ip" {
  description = "Boolean indicating if the Virtual Machine should have a public IP"
  type        = bool
  default     = true
}

variable "os_disk" {
  description = "The OS disk configuration"
  type        = object({
    name                  = string
    caching               = string
    storage_account_type  = string
  })
}

variable "source_image_id" {
  description = "The ID of the source image for the Virtual Machine"
  type        = string
}

# SQL Variables
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

# Common Variables
variable "location" {
  description = "The location/region where resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    Project     = "iac"
  }
}
