

data "azurerm_subnet" "Subnet-Data" {
    for_each = var.vm_nic

  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}