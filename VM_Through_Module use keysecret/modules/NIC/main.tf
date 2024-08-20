resource "azurerm_network_interface" "nicblock" {
    for_each = var.nic_var
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "ipconfig01"
    subnet_id                     = data.azurerm_subnet.snet_datablock.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.publicip_datablock.id
  }
}