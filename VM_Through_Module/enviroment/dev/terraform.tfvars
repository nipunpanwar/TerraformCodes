rgmodule_var = {
  rg1 = {
    name     = "rgnipunM01"
    location = "westus"
  }
}

vnetmodule_var = {
  Vnet1 = {
    name                = "vnetnipunM01"
    address_space       = ["10.0.0.0/16"]
    location            = "westus"
    resource_group_name = "rgnipunM01"
  }
}

subnetmodule_var = {
  subnet1 = {
    name                 = "subnetnipM01"
    resource_group_name  = "rgnipunM01"
    virtual_network_name = "vnetnipunM01"
    address_prefixes     = ["10.0.2.0/24"]

  }
}

publicipmodule_var = {
  publicip1 = {
    name                = "publicipM01"
    resource_group_name = "rgnipunM01"
    location            = "westus"
    allocation_method   = "Static"
  }
}
nsgmodule_var = {
  nsg1 = {
    name                = "nsgnipunM01"
    location            = "westus"
    resource_group_name = "rgnipunM01"
  }
}

nicmodule_var ={
nic1 ={
  name                = "nicnipun01"
  location            = "westus"
  resource_group_name ="rgnipunM01"


}
}

vmmodule_var = {
Vm01 ={
  name                            = "VMnipun01"
  resource_group_name             = "rgnipunM01"
  location                       = "westus"


}

}
