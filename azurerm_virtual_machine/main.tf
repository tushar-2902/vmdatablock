resource "azurerm_network_interface" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rgname

  ip_configuration {
    public_ip_address_id = data.azurerm_public_ip.ip.id
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.db_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "example" {
  name                = var.vmname
  resource_group_name = var.rgname
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "Tusharadmin"
  admin_password      = "Tushar@2021"
  disable_password_authentication = false
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

