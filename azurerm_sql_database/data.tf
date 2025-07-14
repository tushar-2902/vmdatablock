data "azurerm_mssql_server" "example" {
  name                = var.servername
  resource_group_name = var.rgname
}
