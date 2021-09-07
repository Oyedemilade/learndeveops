# Create Log Analytics Workspace
resource "azurerm_log_analytics_workspace" "insights" {
  name                = "logs-${random_pet.aksrandom.id}"
  location            = azurerm_resource_group.titans-RG1.location
  resource_group_name = azurerm_resource_group.titans-RG1.name
  retention_in_days   = 30
}