output "sql_instance_id" {
  description = "The ID of the SQL instance"
  value       = google_sql_database_instance.main.id
}

output "sql_instance_name" {
  description = "The name of the SQL instance"
  value       = google_sql_database_instance.main.name
}

output "sql_database_name" {
  description = "The name of the SQL database"
  value       = google_sql_database.main.name
}

output "sql_user_name" {
  description = "The name of the SQL user"
  value       = google_sql_user.main.name
}
