resource "azurerm_sql_server" "main" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.sql_administrator_login
  administrator_login_password = var.sql_administrator_password

  tags = var.tags
}

resource "azurerm_sql_database" "main" {
  name                = var.sql_database_name
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = azurerm_sql_server.main.name
  edition             = "Basic"
  requested_service_objective_name = "Basic"

  tags = var.tags
}

resource "azurerm_virtual_network_rule" "main" {
  name       = "${var.sql_server_name}-vnet-rule"
  resource_group_name = var.resource_group_name
  server_name = azurerm_sql_server.main.name
  subnet_id   = var.subnet_id
}
