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
