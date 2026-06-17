Subnets = {
  SN1VN1 = {
    name                 = "test-subnet1"
    resource_group_name  = "test-rg"
    virtual_network_name = "test-vnet1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  SN1VN2 = {
    name                 = "test-subnet2"
    resource_group_name  = "test-rg"
    virtual_network_name = "test-vnet2"
    address_prefixes     = ["11.0.1.0/24"]
  }
}