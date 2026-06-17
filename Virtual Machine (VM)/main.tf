resource "azurerm_windows_virtual_machine" "suman-window-VM" {
  for_each              = var.windowvm
  name                  = each.value.name
  resource_group_name   = each.value.resource_group_name
  location              = each.value.location
  size                  = each.value.size
  admin_username        = each.value.admin_username
  admin_password        = each.value.admin_password
  network_interface_ids = each.value.network_interface_ids
  patch_mode = each.value.patch_mode

  os_disk {
    caching              = each.value.os_key.caching
    storage_account_type = each.value.os_key.storage_account_type
  }

  source_image_reference {
    publisher = each.value.SIR_key.publisher
    offer     = each.value.SIR_key.offer
    sku       = each.value.SIR_key.sku
    version   = each.value.SIR_key.version
  }
}

resource "azurerm_linux_virtual_machine" "suman-linux-VM" {
  for_each              = var.linuxvm
  name                  = each.value.name
  resource_group_name   = each.value.resource_group_name
  location              = each.value.location
  size                  = each.value.size
  admin_username        = each.value.admin_username
  network_interface_ids = each.value.network_interface_ids
  patch_mode = each.value.patch_mode
  admin_ssh_key {
    username   = each.value.ssh_key.username
    public_key = file(each.value.ssh_key.public_key) #check local path for public key and use file() function to read the content of the public key file
  }

  os_disk {
    caching              = each.value.os_key.caching
    storage_account_type = each.value.os_key.storage_account_type
  }

  source_image_reference {
    publisher = each.value.SIR.publisher
    offer     = each.value.SIR.offer
    sku       = each.value.SIR.sku
    version   = each.value.SIR.version
  }
}

