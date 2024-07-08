provider "google" {
  credentials = var.gcp_credentials_json
  project     = var.gcp_project
  region      = var.gcp_region
}