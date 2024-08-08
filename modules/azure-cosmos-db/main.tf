# Create a resource group for the resources
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "eastus"
}

# Create a Cosmos DB account to host the NoSQL database
resource "azurerm_cosmosdb_account" "example" {
  name                = "example-cosmosdb"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"

  # Configure the consistency policy for the Cosmos DB account
  consistency_policy {
    consistency_level       = "BoundedStaleness"
    max_interval_in_seconds = 10
    max_staleness_prefix   = 200
  }

  # Configure the geo-location for the Cosmos DB account
  geo_location {
    location          = azurerm_resource_group.example.location
    failover_priority = 0
  }
}

# Create a Cosmos DB SQL database to contain the containers
resource "azurerm_cosmosdb_sql_database" "example" {
  name                = "example-cosmosdb-database"
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_cosmosdb_account.example.name
}

# Create a Cosmos DB SQL container to store the data
resource "azurerm_cosmosdb_sql_container" "example" {
  name                = "example-cosmosdb-container"
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_cosmosdb_account.example.name
  database_name       = azurerm_cosmosdb_sql_database.example.name
  partition_key_path  = "/partitionKey"
}
