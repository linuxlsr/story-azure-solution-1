resource "azurerm_virtual_network" "vnet" {
  name                = "${var.APPNAME}-${var.ENVIRONMENT}-vnet"
  location            = var.REGION
  address_space       = var.CIDR_BLOCK
  resource_group_name = module.rg.rg

  subnet {
    name           = "${var.APPNAME}-sn1"
    address_prefix = var.SUBNET1
  }

  subnet {
    name           = "${var.APPNAME}-sn2"
    address_prefix = var.SUBNET2
  }

}