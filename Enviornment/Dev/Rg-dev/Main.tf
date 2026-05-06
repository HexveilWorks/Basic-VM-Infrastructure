
resource "azurerm_resource_group" "Resource-Group" {
    for_each = var.rg

  name     = each.value.Rg-name
  location = each.value.location

}