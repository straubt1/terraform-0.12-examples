---?image=slides/images/background-terraform.png

@snap[montserrat-heavy h2-white]
## @css[text-85](Template Syntax)
@snapend

> @color[white](New template syntax can be used for looping without complex nested interpolation)

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-black]
## @css[text-85](>= 0.12.0)
@snapend

```
locals {
  lb_config = <<EOT
%{ for instance in opc_compute_instance.example ~}
server ${instance.label} ${instance.ip_address}:8080
%{ endfor }
EOT
}
```

@snap[south span-100 text-08]
@[3,5](syntax)
@[4](content)
@[*]()
@snapend

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-black]
## @css[text-85](>= 0.12.0)
@snapend

```
server example0 192.168.2.12:8080
server example1 192.168.2.65:8080
server example2 192.168.2.23:8080
```

Note:
Not the same as `template_file`.