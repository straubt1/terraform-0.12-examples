---?image=slides/images/background-terraform.png

@snap[montserrat-heavy h2-white]
## @css[text-85](Dynamic Blocks)
@snapend

> @color[white](Child blocks can now be dynamically generated based on lists/maps and support iteration)

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-white]
## @css[text-85](~> 0.11.0)
@snapend

```
resource "aws_autoscaling_group" "example" {
  ...
  tag {
    key                 = "TagA"
    value               = "example-tag-a"
    propagate_at_launch = false
  }
  tag {
    key                 = "TagB"
    value               = "example-tag-b"
    propagate_at_launch = true
  }
}
```

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-white]
## @css[text-85](>= 0.12.0)
@snapend

```
locals {
  standard_tags = [
    {
      tag_name  = "TagA"
      tag_value = "example-tag-a"
    },
    {
      tag_name  = "TagB"
      tag_value = "example-tag-b"
    }
  ]
}
```

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-white]
## @css[text-85](>= 0.12.0)
@snapend

```
resource "aws_autoscaling_group" "example" {
  ...
  dynamic "tag" {
    for_each = local.standard_tags

    content {
      key                 = tag.value.tag_name
      value               = tag.value.tag_value
      propagate_at_launch = true
    }
  }
}
```

@snap[south span-100 text-08]
@[3](dynamic)
@[4](for_each)
@[6](content)
@[7-9](content)
@[*]()
@snapend

Note:
Demo 3 and 4
