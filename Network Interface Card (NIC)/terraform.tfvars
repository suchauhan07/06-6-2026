Network-Interface-Card = {
  NIC1 = {
    name                = "nic-1"
    location            = "central India"
    resource_group_name = "test-rg"

    ip_key = {
      name                          = "IP-1"
      subnet_id                     = "/subscriptions/7f5d9e48-dc3a-4e43-89ee-2f65015f2837/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet1/subnets/test-subnet1"
      private_ip_address_allocation = "Dynamic"
    }
  }

  NIC2 = {
    name                = "nic-2"
    location            = "central India"
    resource_group_name = "test-rg"

    ip_key = {
      name                          = "IP-2"
      subnet_id                     = "/subscriptions/7f5d9e48-dc3a-4e43-89ee-2f65015f2837/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet2/subnets/test-subnet2"
      private_ip_address_allocation = "Dynamic"
    }
  }
}