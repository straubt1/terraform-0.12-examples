variable "vnet" {
  type = object({
    name          = string
    address_space = list(string)
  })

  default = {
    name          = "test"
    address_space = ["10.0.0.0/16"]
  }
}

variable "subnets" {
  type = list(object({
    name           = string
    address_prefix = string
  }))

  default = [{
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
    },
    {
      name           = "subnet2"
      address_prefix = "10.0.2.0/24"
    },
    {
      name           = "subnet3"
      address_prefix = "10.0.3.0/24"
    }
  ]
}

resource "azurerm_resource_group" "module" {
  name     = "some-rg"
  location = "centralus"
}

resource "azurerm_virtual_network" "module" {
  location            = azurerm_resource_group.module.location
  resource_group_name = azurerm_resource_group.module.name
  name                = var.vnet.name
  address_space       = var.vnet.address_space
}

resource "azurerm_subnet" "module" {
  resource_group_name  = azurerm_resource_group.module.name
  virtual_network_name = azurerm_virtual_network.module.name
  count                = length(var.subnets)
  name                 = var.subnets[count.index].name
  address_prefix       = var.subnets[count.index].address_prefix
}

# resource "azurerm_subnet" "module" {
#   resource_group_name  = azurerm_resource_group.module.name
#   virtual_network_name = azurerm_virtual_network.module.name
#   for_each             = var.subnets
#   name                 = each.name
#   address_prefix       = each.address_prefix
# }

# output "subnets" {
#   value = azurerm_subnet.module
# }

# output "subnets-address_prefix" {
#   value = azurerm_subnet.module.*.address_prefix
# }
