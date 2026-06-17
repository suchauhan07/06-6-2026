resource "azurerm_resource_group" "suman-rg" {
  for_each = var.Resource_Group
  name     = each.value.name
  location = each.value.location
}
