resource "azurerm_network_interface" "suman-NIC" {
  for_each            = var.Network-Interface-Card
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = each.value.ip_key.name
    subnet_id                     = each.value.ip_key.subnet_id
    private_ip_address_allocation = each.value.ip_key.private_ip_address_allocation
  }
}

