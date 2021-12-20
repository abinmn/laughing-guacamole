data "azurerm_image" "hello_world" {
  name                = var.hello_world_image_name
  resource_group_name = var.vm_image_rg_name
}

resource "azurerm_linux_virtual_machine" "hello_web" {
  name                = "hello-web-vm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B1s"
  admin_username      = var.hello_world_vm_username
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  admin_ssh_key {
    username   = var.hello_world_vm_username
    public_key = file(var.hello_world_vm_ssh_public_key)
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_id = data.azurerm_image.hello_world.id
}