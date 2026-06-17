Virtual_Network = {
  Vnet1 = {
    name                = "test-vnet1"
    location            = "Central India"
    resource_group_name = "test-rg"
    address_space       = ["10.0.0.0/16"]
  }

  Vnet2 = {
    name                = "test-vnet2"
    location            = "Central India"
    resource_group_name = "test-rg"
    address_space       = ["11.0.0.0/16"]
  }
}
