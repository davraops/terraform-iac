# Compute Module

This module creates a Google Compute Engine instance along with a firewall rule allowing SSH access.

## Usage

module "compute" {
  source = "./modules/compute"

  instance_name  = var.instance_name
  machine_type   = var.machine_type
  source_image   = var.source_image
  zone           = var.zone
  network        = var.network
  subnetwork     = var.subnetwork
  startup_script = var.startup_script
  tags           = var.tags
}
