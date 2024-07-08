output "network_id" {
  description = "The ID of the VPC network"
  value       = google_compute_network.main.id
}

output "subnet_ids" {
  description = "The IDs of the subnets"
  value       = google_compute_subnetwork.main[*].id
}
