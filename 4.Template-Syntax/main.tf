variable "virtual_network" {
  type = object({
    vnet_name     = string
    address_space = list(string)
    subnets = list(object({
      name    = string
      address_prefix = string
    }))
  })

  default = {
    vnet_name     = "test"
    address_space = ["10.0.0.0/16", "10.1.0.0/16"]
    subnets = [{
      name    = "subnet1-1"
      address_prefix = "10.0.1.0/24"
      },
      {
        name    = "subnet1-2"
        address_prefix = "10.0.2.0/24"
      },
      {
        name    = "subnet1-3"
        address_prefix = "10.0.3.0/24"
      },
      {
        name    = "subnet2-1"
        address_prefix = "10.1.5.0/24"
      }
    ]
  }
}

resource "local_file" "config" {
  content = <<EOF
subnets:
%{ for subnet in var.virtual_network.subnets ~}
  ${subnet.name} ${subnet.address_prefix}
%{ endfor }
vnet:
%{ for space in var.virtual_network.address_space ~}
  ${space}
%{ endfor }
  EOF
  filename = "./config.foo"
}
