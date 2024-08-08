# Create a resource group for the resources
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "eastus"
}

# Create a SQL server to host the SQL database
resource "azurerm_sql_server" "example" {
  name                         = "example-sqlserver"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "adminuser"
  administrator_login_password = "P@ssw0rd1234!"
}

# Create a SQL database to store the data
resource "azurerm_sql_database" "example" {
  name                             = "example-sqldatabase"
  resource_group_name              = azurerm_resource_group.example.name
  location                         = azurerm_resource_group.example.location
  server_name                      = azurerm_sql_server.example.name
  requested_service_objective_name = "S0"
}
