data "azurerm_network_interface" "nic_datablock" {
  name                = "nicnipun02"
  resource_group_name = "rgnipunM02"
}

data "azurerm_key_vault" "keyvaultblock" {
  name                = "nipunkeyvault"
  resource_group_name = "Rgnipun01"
}

data "azurerm_key_vault_secret" "usersecretblock" {
  name         = "nipunvmuser"
  key_vault_id = data.azurerm_key_vault.keyvaultblock.id
}

data "azurerm_key_vault_secret" "passwdsecretblock" {
  name         = "nipunvmpassward"
  key_vault_id = data.azurerm_key_vault.keyvaultblock.id
}