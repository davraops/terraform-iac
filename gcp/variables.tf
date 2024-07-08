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