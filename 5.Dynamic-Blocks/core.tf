resource "azurerm_resource_group" "module" {
  name     = "some-vm-rg"
  location = "centralus"
}

resource "azurerm_virtual_network" "module" {
  resource_group_name = azurerm_resource_group.module.name
  location            = azurerm_resource_group.module.location
  name                = "some-vnet"
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "module" {
  resource_group_name  = azurerm_resource_group.module.name
  name                 = "some-subnet1"
  virtual_network_name = azurerm_virtual_network.module.name
  address_prefix       = "10.0.1.0/24"
}

resource "azurerm_network_interface" "module" {
  resource_group_name = azurerm_resource_group.module.name
  location            = azurerm_resource_group.module.location
  name                = "vm-nic${count.index}"
  count               = var.vm_count

  ip_configuration {
    name                          = "ipConfig"
    subnet_id                     = azurerm_subnet.module.id
    private_ip_address_allocation = "dynamic"
  }
}