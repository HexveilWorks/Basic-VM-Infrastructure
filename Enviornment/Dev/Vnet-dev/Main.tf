
resource "azurerm_virtual_network" "Virtual-network" {

  for_each            = var.Vnet
  name                = each.value.vnet-name  
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
  #   dns_servers         = []

  # tags = {
  #   environment = "Development"
  # }
}
