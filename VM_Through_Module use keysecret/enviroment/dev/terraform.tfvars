rgmodule_var = {
  rg01 = {
    name     = "rgnipunM02"
    location = "westus"
  }
}

vnetmodule_var = {
  Vnet1 = {
    name                = "vnetnipunM02"
    address_space       = ["10.0.0.0/16"]
    location            = "westus"
    resource_group_name = "rgnipunM02"
  }
}

subnetmodule_var = {
  subnet1 = {
    name                 = "subnetnipM02"
    resource_group_name  = "rgnipunM02"
    virtual_network_name = "vnetnipunM02"
    address_prefixes     = ["10.0.2.0/24"]

  }
}

publicipmodule_var = {
  publicip1 = {
    name                = "publicipM02"
    resource_group_name = "rgnipunM02"
    location            = "westus"
    allocation_method   = "Static"
  }
}
nsgmodule_var = {
  nsg1 = {
    name                = "nsgnipunM02"
    location            = "westus"
    resource_group_name = "rgnipunM02"
  }
}

nicmodule_var ={
nic1 ={
  name                = "nicnipun02"
  location            = "westus"
  resource_group_name ="rgnipunM02"


}
}

vmmodule_var = {
VM02 ={
  name                            = "VMnipun02"
  resource_group_name             = "rgnipunM02"
  location                       = "westus"


}

}
