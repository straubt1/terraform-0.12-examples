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

@snap[montserrat-heavy h2-black]
## @css[text-85](Boolean Logic)

@ul
- `enabled = var.enabled == "true" ? "yes" : "no"`
- `enabled = var.enabled == true ? "yes" : "no"`
@ulend
@snapend
