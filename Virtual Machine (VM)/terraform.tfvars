windowvm = {
  VM1 = {
    name                  = "suman-machine1"
    resource_group_name   = "test-rg"
    location              = "Central India"
    size                  = "Standard_D2s_v3"
    admin_username        = "test-VM-Window1"
    admin_password        = "Default@123"
    network_interface_ids = ["/subscriptions/7f5d9e48-dc3a-4e43-89ee-2f65015f2837/resourceGroups/test-rg/providers/Microsoft.Network/networkInterfaces/nic-1"]
    patch_mode = "AutomaticByPlatform"
    os_key = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
    SIR_key = {
      publisher = "MicrosoftWindowsServer"
      offer     = "WindowsServer"
      sku       = "2025-datacenter-azure-edition"
      version   = "latest"
    }
  }
}

linuxvm = {
  VM2 = {
    name                  = "suman-linux-machine1"
    resource_group_name   = "test-rg"
    location              = "Central India"
    size                  = "Standard_D2s_v3"
    admin_username        = "chauhan-linux-admin"
    network_interface_ids = ["/subscriptions/7f5d9e48-dc3a-4e43-89ee-2f65015f2837/resourceGroups/test-rg/providers/Microsoft.Network/networkInterfaces/nic-2"]
    patch_mode = "AutomaticByPlatform" 
    ssh_key = {
      username   = "chauhan-linux-admin"  #this should be same as the admin_username
      public_key = "~/.ssh/id_rsa.pub" #if path is not available, generate one using ssh-keygen -t rsa -b 4096
    }
    os_key = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }
    SIR = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
  }
}
