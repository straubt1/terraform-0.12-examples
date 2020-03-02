---?image=slides/images/background-terraform.png

@snap[montserrat-heavy h2-white]
## @css[text-85](First-class Expressions)
@snapend

> @color[white](Expressions no longer need to be wrapped in interpolation sequences with double quotes)

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-white]
## @css[text-85](~> 0.11.0)
@snapend

```
variable "ami"           {}
variable "instance_type" {}
variable "vpc_security_group_ids" {
  type = "list"
}

resource "aws_instance" "example" {
  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  vpc_security_group_ids = "${var.vpc_security_group_ids}"
}
```

@snap[south span-100 text-08]
@[8-10](Interpolate syntax)
@snapend

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-white]
## @css[text-85](>= 0.12.0)
@snapend

```
variable "ami"           {}
variable "instance_type" {}
variable "vpc_security_group_ids" {
  type = "list"
}

resource "aws_instance" "example" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
}
```

@snap[south span-100 text-08]
@[8-10](New syntax)
@snapend
