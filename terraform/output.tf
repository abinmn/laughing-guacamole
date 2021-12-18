output "resource_group_name" {
  value = azurerm_resource_group.rg
}

output "hello_world_public_ip" {
  value = azurerm_linux_virtual_machine.hello_web.public_ip_address
}