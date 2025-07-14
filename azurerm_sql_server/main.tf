resource "azurerm_mssql_server" "example" {
  name                         = var.name
  resource_group_name          = var.rgname
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "tusharadmin"
  administrator_login_password = "Tushar@2021" 
}

