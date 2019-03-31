---?image=slides/images/background-terraform.png

@snap[montserrat-heavy h2-white]
## @css[text-85](For Expressions)
@snapend

> @color[white](A **for** expression is available for iterating and filtering lists and map values)

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-black]
## @css[text-85](>= 0.12.0)
@snapend


```
output "instance_private_ip_addresses" {
  value = {
    for instance in aws_instance.example:
    instance.id => instance.private_ip
  }
}
```

```
{"i-1234" = "192.168.1.2", "i-5678" = "192.168.1.5"}
```

@snap[south span-100 text-08]
@[3-4,7](string)
@snapend