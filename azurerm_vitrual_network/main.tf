resource "azurerm_virtual_network" "example" {
  name                = var.vnname
  location            = var.location
  resource_group_name = var.rgname
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
