resource "azurerm_subnet" "example" {
  name                 = var.name
  resource_group_name  = var.rgname
  virtual_network_name = var.vnname
  address_prefixes     = ["10.0.1.0/24"]
}



