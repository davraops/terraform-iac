# export TF_VAR_aws_region="us-west-2"
# export TF_VAR_aws_access_key="your_access_key"
# export TF_VAR_aws_secret_key="your_secret_key"

variable "aws_region" {
  description = "The AWS region to deploy resources in."
  type        = string
  default     = "us-west-2"
}

variable "aws_access_key" {
  description = "The AWS access key."
  type        = string
  default     = ""
  sensitive   = true
}

variable "aws_secret_key" {
  description = "The AWS secret key."
  type        = string
  default     = ""
  sensitive   = true
}