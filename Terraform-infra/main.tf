resource "azurerm_resource_group" "webapprg" {
  name     = var.rgname
  location = var.rglocation
}


resource "azurerm_app_service_plan" "asp" {
  name                = var.asp
  location            = azurerm_resource_group.webapprg.location
  resource_group_name = azurerm_resource_group.webapprg.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "webapp" {
  name                = var.webapp
  location            = azurerm_resource_group.webapprg.location
  resource_group_name = azurerm_resource_group.webapprg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id

  site_config {
    current_stack = "dotnetcore"
    dotnet_version = "V8.0"
  }

}