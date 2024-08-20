resource "azurerm_resource_group" "rgblock" {
    for_each = var.rg_nip
    name = each.value.name
    location = each.value.location 
  
}