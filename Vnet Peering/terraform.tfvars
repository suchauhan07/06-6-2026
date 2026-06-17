vnet_peering = {
  peering1 = {
    name                      = "peering-1-2"
    resource_group_name       = "test-rg"
    virtual_network_name      = "test-vnet1"
    remote_virtual_network_id = "/subscriptions/7f5d9e48-dc3a-4e43-89ee-2f65015f2837/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet2"
  }

  peering2 = {
    name                      = "peering-2-1"
    resource_group_name       = "test-rg"
    virtual_network_name      = "test-vnet2"
    remote_virtual_network_id = "/subscriptions/7f5d9e48-dc3a-4e43-89ee-2f65015f2837/resourceGroups/test-rg/providers/Microsoft.Network/virtualNetworks/test-vnet1"
  }
}