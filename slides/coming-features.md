---?image=images/background-terraform.png

@snap[montserrat-heavy h2-white]
## @css[text-85](Coming Features)
@snapend

You we're so close

+++?image=images/background-white.png

@snap[montserrat-heavy h2-black]
## @css[text-85](`for_each` iterator)
@snapend

```
resource "azurerm_subnet" "module" {
  resource_group_name  = azurerm_resource_group.module.name
  virtual_network_name = azurerm_virtual_network.module.name
  for_each             = var.subnets
  name                 = each.name
  address_prefix       = each.address_prefix
}
```

+++?image=images/background-white.png

@snap[montserrat-heavy h2-black]
## @css[text-85](JSON plan)
@snapend