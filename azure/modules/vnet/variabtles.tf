variable "vnet_name" {
  description = "The name of the Virtual Network"
  type        = string
}

variable "address_space" {
  description = "The address space for the Virtual Network"
  type        = list(string)
}

variable "subnet_prefixes" {
  description = "The CIDR blocks for the subnets"
  type        = list(string)
}

variable "subnet_names" {
  description = "The names of the subnets"
  type        = list(string)
}

variable "location" {
  description = "The location/region where the Virtual Network will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}
