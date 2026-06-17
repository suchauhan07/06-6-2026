resource "azurerm_public_ip" "suman-publicIP" {
  for_each            = var.publicip
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  allocation_method   = each.value.allocation_method
  sku                 = each.value.sku
}
