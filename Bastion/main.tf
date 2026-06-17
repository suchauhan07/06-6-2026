resource "azurerm_bastion_host" "suman-bastion" {
  for_each            = var.Bastion
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  sku                 = each.value.sku

  ip_configuration {
    name                 = each.value.ip_configuration-1.name
    subnet_id            = each.value.ip_configuration-1.subnet_id
    public_ip_address_id = each.value.ip_configuration-1.public_ip_address_id
  }
}