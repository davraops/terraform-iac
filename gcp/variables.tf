# export TF_VAR_gcp_credentials_json='your_json_credentials_as_string'
# export TF_VAR_gcp_project="your_project_id"
# export TF_VAR_gcp_region="us-central1"

variable "gcp_credentials_json" {
  description = "The JSON credentials for GCP."
  type        = string
  sensitive   = true
  default     = ""
}

variable "gcp_project" {
  description = "The GCP project ID."
  type        = string
  default     = ""
}

variable "gcp_region" {
  description = "The GCP region to deploy resources in."
  type        = string
  default     = "us-central1"
}

# VPC Variables
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

# Compute Variables
variable "instance_name" {
  description = "The name of the Compute Instance"
  type        = string
}

variable "machine_type" {
  description = "The machine type to use for the Compute Instance"
  type        = string
  default     = "n1-standard-1"
}

variable "source_image" {
  description = "The source image to use for the Compute Instance"
  type        = string
}

variable "zone" {
  description = "The zone to deploy the Compute Instance"
  type        = string
}

variable "startup_script" {
  description = "The startup script to run on instance creation"
  type        = string
  default     = ""
}

# SQL Variables
variable "sql_instance_name" {
  description = "The name of the SQL instance"
  type        = string
}

variable "database_version" {
  description = "The version of the database engine"
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

# Common Variables
variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}