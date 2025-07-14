module "rg" {
  source = "../azurerm_resource_group"
  name = "tushar-rg"
  location = "west us 3"
}

module "virtual_network_name" {
    depends_on = [ module.rg ]
    source = "../azurerm_vitrual_network"
    location = "west us 3"
    rgname = "tushar-rg"
    vnname = "tushar-vn"
  
}

module "subnet" {
  depends_on = [ module.virtual_network_name ]
  source = "../azurerm_subnet"
  name = "frontend"
  rgname = "tushar-rg"
  vnname = "tushar-vn"
}

module "publiip" {
  depends_on = [ module.rg ]
  source = "../azurerm_public_ip"
  name = "tushar-ip"
  rgname = "tushar-rg"
  location =  "west us 3"  
}

module "vm" {
  depends_on = [ module.subnet]
  source = "../azurerm_virtual_machine"
  name = "tushar-nic"
  location = "west us 3"
  rgname = "tushar-rg"
  vmname = "tushar-vm"
  sbname = "frontend"
  ipname = "tushar-ip"
  vnname = "tushar-vn"
}


module "sqlserver" {
  depends_on = [ module.rg ]
  source = "../azurerm_sql_server"
  name = "tushar-server"
  rgname = "tushar-rg"
  location = "west us 3"
  
}

module "sqldatabase" {
  depends_on = [ module.sqlserver ]
  source = "../azurerm_sql_database"
  servername = "tushar-server"
  rgname = "tushar-rg"
  name = "tushar-db"
}

