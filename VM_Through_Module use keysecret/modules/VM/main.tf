resource "azurerm_linux_virtual_machine" "vmblock" {
  for_each                        = var.vm_var
  name                            = each.value.name
  resource_group_name             = each.value.resource_group_name
  location                        = each.value.location
  size                            = "Standard_F2"
  admin_username                  = data.azurerm_key_vault_secret.usersecretblock.value
  admin_password                  = data.azurerm_key_vault_secret.passwdsecretblock.value
  disable_password_authentication = false
  network_interface_ids = [data.azurerm_network_interface.nic_datablock.id]


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
