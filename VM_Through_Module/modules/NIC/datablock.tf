data "azurerm_subnet" "snet_datablock" {
  name                 = "subnetnipM01"
  virtual_network_name = "vnetnipunM01"
  resource_group_name  = "rgnipunM01"
}

data "azurerm_public_ip" "publicip_datablock" {
  name                = "publicipM01"
  resource_group_name = "rgnipunM01"
}