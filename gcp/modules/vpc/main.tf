resource "google_compute_network" "main" {
  name                    = var.network_name
  auto_create_subnetworks = false
  description             = var.network_description

}

resource "google_compute_subnetwork" "main" {
  count               = length(var.subnet_names)
  name                = var.subnet_names[count.index]
  ip_cidr_range       = var.subnet_cidrs[count.index]
  region              = var.region
  network             = google_compute_network.main.name
  private_ip_google_access = var.enable_private_ip_google_access

}
