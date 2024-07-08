output "sql_server_name" {
  description = "The name of the SQL Server"
  value       = azurerm_sql_server.main.name
}

output "sql_database_name" {
  description = "The name of the SQL Database"
  value       = azurerm_sql_database.main.name
}
