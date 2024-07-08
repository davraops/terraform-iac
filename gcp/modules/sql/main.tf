resource "google_sql_database_instance" "main" {
  name             = var.instance_name
  database_version = var.database_version
  region           = var.region

  settings {
    tier = var.tier

    ip_configuration {
      dynamic "authorized_network" {
        for_each = var.authorized_networks
        content {
          name  = authorized_network.value.name
          value = authorized_network.value.value
        }
      }
    }
  }
  root_password = var.root_password

  deletion_protection = false
}

resource "google_sql_database" "main" {
  name     = var.database_name
  instance = google_sql_database_instance.main.name
}

resource "google_sql_user" "main" {
  name     = var.user_name
  instance = google_sql_database_instance.main.name
  password = var.user_password
}