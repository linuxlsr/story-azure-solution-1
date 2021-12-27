resource "azurerm_resource_group" "rg" {
  name     = "${var.APPNAME}-${var.ENVIRONMENT}-rg"
  location = var.REGION
}