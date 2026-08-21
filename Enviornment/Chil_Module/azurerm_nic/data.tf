data "azurerm_public_ip" "pipdata" {
    for_each = var.NIC
  name                =each.value.pip_name 
  resource_group_name =each.value.resource_group_name
}

data "azurerm_subnet" "subnetdata" {
    for_each =var.NIC
  name                 =each.value.subnet_name
  virtual_network_name =each.value.vnet_name
  resource_group_name  =each.value.resource_group_name
}