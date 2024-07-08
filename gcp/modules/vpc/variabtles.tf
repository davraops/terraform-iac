variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}

variable "network_description" {
  description = "The description of the VPC network"
  type        = string
  default     = ""
}

variable "subnet_names" {
  description = "A list of subnet names"
  type        = list(string)
}

variable "subnet_cidrs" {
  description = "A list of subnet CIDR ranges"
  type        = list(string)
}

variable "region" {
  description = "The region in which to create the subnets"
  type        = string
}

variable "enable_private_ip_google_access" {
  description = "Whether to enable private Google access for the subnets"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}
