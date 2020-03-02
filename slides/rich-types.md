---?image=slides/images/background-terraform.png

@snap[montserrat-heavy h2-white]
## @css[text-85](Rich Types)
@snapend

> @color[white](Allow arbitrarily complex lists and maps for any inputs and outputs, including modules)

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-white]
## @css[text-85](~> 0.11.0)
@snapend

```
variable "vm_name" {
  type = "string"
}
```

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-white]
## @css[text-85](>= 0.12.0)
@snapend

```
variable "vm_name" {
  type = string
}

variable "networks" {
  type = map(object({
    network_number    = number
    availability_zone = string
    tags              = map(string)
  }))
}
```

@snap[south span-100 text-08]
@[2](string)
@[6-11](object and map)
@snapend

Note:
Demo 1 and 2

```sh
terraform console
var.vnet
var.subnets
var.subnets[0]
var.subnets[0].name
```

```sh
terraform output
```