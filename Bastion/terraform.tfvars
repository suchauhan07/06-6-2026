Bastion = {
  BastionVNET1 = {
    name                = "testpip"
    location            = "Central India"
    resource_group_name = "test-rg"
    allocation_method   = "Static"
    sku                 = "Standard"
    ip_configuration-1 = {
      name                 = "vnet-1-IPconfig"
      subnet_id            = "/subscriptions/7f5d9e48-dc3a-4e43-89ee-2f65015f2837/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet1/subnets/test-subnet1"
      public_ip_address_id = "/subscriptions/7f5d9e48-dc3a-4e43-89ee-2f65015f2837/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet2/subnets/test-subnet2"
    }
  }
  BastionVNET2 = {
    name                = "testpip"
    location            = "Central India"
    resource_group_name = "test-rg"
    allocation_method   = "Static"
    sku                 = "Standard"
    ip_configuration-2 = {
      name                 = "vnet-2-IPconfig"
      subnet_id            = "/subscriptions/7f5d9e48-dc3a-4e43-89ee-2f65015f2837/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet2/subnets/test-subnet2"
      public_ip_address_id = "/subscriptions/7f5d9e48-dc3a-4e43-89ee-2f65015f2837/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet2/subnets/test-subnet2"
    }
  }
}