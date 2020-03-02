---?image=slides/images/background-terraform.png

@snap[montserrat-heavy h2-white]
## @css[text-85](Gotchas)
@snapend

> @color[white](You can't do what now?)

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-black]
@ul
- @color[red](count) can no longer be used a variable name
- Resource names cannot start with a number
@ulend
@snapend

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-white]
## @css[text-85](Boolean v0.11)
@snapend

```
variable "enabled-string" {
  default = "true"
}
variable "enabled-bool" {
  default = true
}

locals {
  # 0.12
  enabled5 = var.enabled-string == "true" ? "yes" : "no"
  enabled6 = var.enabled-string == true ? "yes" : "no"
  enabled7 = var.enabled-bool == "true" ? "yes" : "no"
  enabled8 = var.enabled-bool == true ? "yes" : "no"
}

# enabled5 = yes
# enabled6 = no
# enabled7 = no
# enabled8 = yes
```

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-white]
## @css[text-85](Boolean - v0.12)
@snapend

```
variable "enabled-string" {
  default = "true"
}
variable "enabled-bool" {
  default = true
}

locals {
  # 0.11
  enabled1 = "${var.enabled-string == "true" ? "yes" : "no"}"
  enabled2 = "${var.enabled-string == true ? "yes" : "no"}"
  enabled3 = "${var.enabled-bool == "true" ? "yes" : "no"}"
  enabled4 = "${var.enabled-bool == true ? "yes" : "no"}"
}

# enabled1 = yes
# enabled2 = yes
# enabled3 = no
# enabled4 = no
```