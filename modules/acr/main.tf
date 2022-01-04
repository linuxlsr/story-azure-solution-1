resource "azurerm_container_registry" "acr" {
  location = var.REGION
  name = "${var.APPNAME}-${var.ENVIRONMENT}-acr"
  resource_group_name = var.resource_group_name
  sku = var.ACR_SKU
}