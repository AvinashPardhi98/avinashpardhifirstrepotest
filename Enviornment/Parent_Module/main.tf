module "resourcegroup" {
  source   = "../Chil_Module/azurerm_resource_group"
  resource = var.resource
}

module "virtualnetwork" {
  depends_on = [module.resourcegroup]
  source     = "../Chil_Module/azurerm_vnet"
  vnet       = var.vnet
}

module "subnet" {
  depends_on = [module.resourcegroup, module.virtualnetwork]
  source     = "../Chil_Module/azurerm_subnet"
  subnets    = var.subnets
}

module "pips" {
  depends_on = [module.resourcegroup]
  source     = "../Chil_Module/azurerm_pip"
  pip        = var.pip
}

module "nics" {
  depends_on = [module.resourcegroup ,module.subnet]
  source     = "../Chil_Module/azurerm_nic"
  NIC        = var.NIC
}