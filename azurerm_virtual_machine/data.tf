data "azurerm_subnet" "db_subnet" {
  name                 = var.sbname
  virtual_network_name = var.vnname
  resource_group_name  = var.rgname
}

data "azurerm_public_ip" "ip" {
  name                = var.ipname
  resource_group_name = var.rgname
}