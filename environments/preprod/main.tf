module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../modules/azurerm_virtual_network"

  vnets = var.vnets
}

module "subnets" {
  depends_on = [module.virtual_network]
  source     = "../../modules/azurerm_subnet"
  subnets    = var.subnets
}


# module "key_vault" {
#   depends_on = [module.resource_group]
#   source     = "../../modules/azurerm_key_vault"
#   key_vaults = var.key_vaults
# }

# module "virtual_machines" {
#   depends_on = [module.subnets, module.key_vault]
#   source     = "../../modules/azurerm_virtual_machine"
#   vms        = var.vms
# }

