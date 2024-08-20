data "azurerm_subnet" "snet_datablock" {
  name                 = "subnetnipM02"
  virtual_network_name = "vnetnipunM02"
  resource_group_name  = "rgnipunM02"
}

data "azurerm_public_ip" "publicip_datablock" {
  name                = "publicipM02"
  resource_group_name = "rgnipunM02"
}