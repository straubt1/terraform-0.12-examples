---?image=slides/images/background-terraform.png

@snap[montserrat-heavy h2-white]
## @css[text-85](Coming Features)
@snapend

> @color[white](You we're so close)

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-black]
## @css[text-85](`for_each`)
@snapend

```
variable "subnets" {
  type = list(object({
    name           = string
    address_prefix = string
  }))
}

resource "azurerm_subnet" "module" {
  resource_group_name  = azurerm_resource_group.module.name
  virtual_network_name = azurerm_virtual_network.module.name
  for_each             = var.subnets
  name                 = each.name
  address_prefix       = each.address_prefix
}
```

@snap[south span-100 text-08]
@[11](for_each)
@[12-13](each.)
@[*]()
@snapend

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-black]
## @css[text-85](JSON plan)
@snapend

```
terraform plan -out=plan.json
```