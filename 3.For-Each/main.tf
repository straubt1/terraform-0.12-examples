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

variable "subnets-count" {
  default = {
    "subnet1" = "10.0.1.0/24"
    "subnet2" = "10.0.2.0/24"
    "subnet3" = "10.0.3.0/24"
  }
}

variable "subnets-foreach" {
  default = {
    "subnet11" = "10.0.11.0/24"
    # "subnet12" = "10.0.12.0/24"
    "subnet13" = "10.0.13.0/24"
  }
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

resource "azurerm_subnet" "module-count" {
  resource_group_name  = azurerm_resource_group.module.name
  virtual_network_name = azurerm_virtual_network.module.name
  count                = length(var.subnets-count)
  name                 = keys(var.subnets-count)[count.index]
  address_prefix       = values(var.subnets-count)[count.index]
}

resource "azurerm_subnet" "module-foreach" {
  resource_group_name  = azurerm_resource_group.module.name
  virtual_network_name = azurerm_virtual_network.module.name
  for_each             = var.subnets-foreach
  name                 = each.key
  address_prefix       = each.value
}

# output "subnets" {
#   value = azurerm_subnet.module
# }

# output "subnets-address_prefix" {
#   value = azurerm_subnet.module[*].address_prefix
# }
