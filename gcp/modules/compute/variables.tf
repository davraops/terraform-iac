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

variable "network" {
  description = "The network to attach the Compute Instance"
  type        = string
}

variable "subnetwork" {
  description = "The subnetwork to attach the Compute Instance"
  type        = string
}

variable "startup_script" {
  description = "The startup script to run on instance creation"
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
}
