resource "azurerm_resource_group" "flask_api_rg" {
  name     = "flask-api-resources"
  location = "eastus"
}

resource "azurerm_app_service_plan" "flask_api_asp" {
  name                = "flask-api-appserviceplan"
  location            = azurerm_resource_group.flask_api_rg.location
  resource_group_name = azurerm_resource_group.flask_api_rg.name
  sku {
    tier = "Standard"
    size = "S1"
  }
}

# with git repo 
resource "azurerm_app_service" "flask_api_as" {
  name                = "flask-api-appservice"
  location            = azurerm_resource_group.flask_api_rg.location
  resource_group_name = azurerm_resource_group.flask_api_rg.name
  app_service_plan_id = azurerm_app_service_plan.flask_api_asp.id
  site_config {
    python_version = "3.8"
    scm_type       = "LocalGit"
  }
  source_control {
    repo_url           = "https://github.com/your-username/flask-api.git"
    branch             = "main"
    manual_integration = true
  }
}

## docker
# resource "azurerm_app_service" "flask_api_as" {
#   name                = "flask-api-appservice"
#   location            = azurerm_resource_group.flask_api_rg.location
#   resource_group_name = azurerm_resource_group.flask_api_rg.name
#   app_service_plan_id = azurerm_app_service_plan.flask_api_asp.id
#   site_config {
#     linux_fx_version = "DOCKER|your-docker-registry.azurecr.io/flask-api:latest"
#     always_on        = true
#   }
#   app_settings = {
#     "DOCKER_REGISTRY_SERVER_URL"          = "https://your-docker-registry.azurecr.io"
#     "DOCKER_REGISTRY_SERVER_USERNAME"      = "your-docker-registry-username"
#     "DOCKER_REGISTRY_SERVER_PASSWORD"      = "your-docker-registry-password"
#     "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
#   }
# }
