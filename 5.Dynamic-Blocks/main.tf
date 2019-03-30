resource "azurerm_virtual_machine" "module" {
  resource_group_name              = azurerm_resource_group.module.name
  location                         = azurerm_resource_group.module.location
  name                             = "vm${count.index}"
  network_interface_ids            = [azurerm_network_interface.module[count.index].id]
  count                            = var.vm_count
  vm_size                          = "Standard_DS1_v2"
  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true

  storage_os_disk {
    caching           = "ReadWrite"
    create_option     = "FromImage"
    name              = "vm${count.index}-os"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  os_profile {
    computer_name  = "vm${count.index}"
    admin_username = "someuniqueadmin"
    admin_password = "Su&87securt$3"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }

  storage_data_disk {
    create_option     = "Empty"
    lun               = 0
    name              = "vm${count.index}-data0"
    managed_disk_type = "Standard_LRS"
    disk_size_gb      = "32"
  }

  storage_data_disk {
    create_option     = "Empty"
    lun               = 1
    name              = "vm${count.index}-data1"
    managed_disk_type = "Standard_LRS"
    disk_size_gb      = "64"
  }

  # dynamic "storage_data_disk" {
  #   for_each = var.data_disks

  #   content {
  #     create_option     = "Empty"
  #     lun               = storage_data_disk.value.lun
  #     name              = "vm${count.index}-data${storage_data_disk.value.lun}"
  #     managed_disk_type = "Standard_LRS"
  #     disk_size_gb      = storage_data_disk.value.size
  #   }
  # }
}
