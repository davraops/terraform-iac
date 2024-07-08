output "instance_id" {
  description = "The ID of the Compute Instance"
  value       = google_compute_instance.main.id
}

output "instance_name" {
  description = "The name of the Compute Instance"
  value       = google_compute_instance.main.name
}

output "instance_zone" {
  description = "The zone of the Compute Instance"
  value       = google_compute_instance.main.zone
}

output "instance_self_link" {
  description = "The self-link of the Compute Instance"
  value       = google_compute_instance.main.self_link
}

output "instance_public_ip" {
  description = "The public IP address of the Compute Instance"
  value       = google_compute_instance.main.network_interface[0].access_config[0].nat_ip
}
