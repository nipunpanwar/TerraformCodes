module "rg_module" {
    source = "../../modules/RG"
    rg_nip = var.rgmodule_var
  
}

module "vnet_module" {
  source = "../../modules/Vnet"
  Vnet_var = var.vnetmodule_var
depends_on = [ module.rg_module ]

}
module "subnet_module" {
    source = "../../modules/Subnet"
    subnet_var = var.subnetmodule_var
    depends_on = [ module.vnet_module ]
  
}

module "publicip_module" {
    source = "../../modules/PublicIP"
    publicip_var = var.publicipmodule_var
  depends_on = [ module.rg_module ]
}

module "nsg_module" {
    source = "../../modules/NSG"
    nsg_var = var.nsgmodule_var
depends_on = [ module.rg_module ]

}

module "nic_module" {
  source = "../../modules/NIC"
  nic_var = var.nicmodule_var
  depends_on = [ module.rg_module , module.subnet_module ]
}

module "vm_nodule" {
  source = "../../modules/VM"
  vm_var = var.vmmodule_var
  depends_on = [ module.nic_module ]
}