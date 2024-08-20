resource "azurerm_virtual_network" "vnetblock" {
    for_each = var.Vnet_var
  name                = each.value.name
  address_space       = ["10.0.0.0/16"]
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
}