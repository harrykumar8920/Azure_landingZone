rgs = {
  rg1 = {
    name     = "rg-VSR"
    location = "centralindia"
  }
  rg2 = {
    name     = "rg-VSR-2"
    location = "centralindia"
  }
}

vnets = {
  vnet1 = {
    name                = "vnet-VSR"
    location            = "centralindia"
    resource_group_name = "rg-VSR"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  snet1 = {
    name                 = "frontend-subnet-dev"
    resource_group_name  = "rg-VSR"
    virtual_network_name = "vnet-VSR"
    address_prefixes     = ["10.0.1.0/24"]
  }
  snet2 = {
    name                 = "backend-subnet-dev"
    resource_group_name  = "rg-VSR"
    virtual_network_name = "vnet-VSR"
    address_prefixes     = ["10.0.2.0/24"]
  }
  snet3 = {
    name                 = "database-subnet-dev"
    resource_group_name  = "rg-VSR"
    virtual_network_name = "vnet-VSR"
    address_prefixes     = ["10.0.3.0/24"]
  }
}


# vms = {
#   frontend_1 = {
#     nic_name        = "frontend-vm-nic-1-dev"
#     location        = "centralindia"
#     rg_name         = "rg-VSR"
#     nic_subnet_name = "frontend-subnet-dev"
#     nic_vnet_name   = "vnet-VSR"
#     vm_name         = "frontend-vm-1-dev"
#     vm_size         = "Standard_D2ps_v6"
#     admin_username  = "devopsadmin"
#     key_vault_name  = "kv-VSR-123"
#     secret_name     = "admin-password"
#     image_publisher = "Canonical"
#     image_offer     = "0001-com-ubuntu-server-jammy"
#     image_sku       = "D2ps_v6"
#     image_version   = "latest"
#   }
#   frontend_2 = {
#     nic_name        = "frontend-vm-nic-2-dev"
#     location        = "centralindia"
#     rg_name         = "rg-VSR"
#     nic_subnet_name = "frontend-subnet-dev"
#     nic_vnet_name   = "vnet-VSR"
#     vm_name         = "frontend-vm-2-dev"
#     vm_size         = "Standard_D2ps_v6"
#     admin_username  = "devopsadmin"
#     key_vault_name  = "kv-VSR-123"
#     secret_name     = "admin-password"
#     image_publisher = "Canonical"
#     image_offer     = "0001-com-ubuntu-server-jammy"
#     image_sku       = "D2ps_v6"
#     image_version   = "latest"
#   }
# }


# key_vaults = {
#   kv1 = {
#     name        = "kv-VSR-123"
#     location    = "centralindia"
#     rg_name     = "rg-VSR"
#     secret_name = "admin-password"
#   }
# }
