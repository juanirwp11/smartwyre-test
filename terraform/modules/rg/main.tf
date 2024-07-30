resource "azurerm_resource_group" "main" {
  name                = "rg"
  location            = var.location
  resource_group_name = var.resource_group_name
}
