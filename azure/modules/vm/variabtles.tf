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

variable "location" {
  description = "The location/region where the Virtual Machine will be created"
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
