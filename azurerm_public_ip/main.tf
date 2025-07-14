resource "azurerm_public_ip" "example" {
  name                = var.name
  resource_group_name = var.rgname
  location            = var.location
  allocation_method   = "Static"
}

