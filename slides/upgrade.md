---?image=slides/images/background-terraform.png

@snap[montserrat-heavy h2-white]
## @css[text-85](Upgrade Path)
@snapend


+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-black]
## @css[text-85](Helper Command)

@ul
- Upgrade binary to Terraform v0.11.14
- `terraform plan` -> No Changes
- `terraform 0.12checklist`
- Create new branch
- Upgrade binary to Terraform v0.12.*
- `terraform 0.12upgrade`
- `terraform plan` -> No Changes
@ulend
@snapend

Note:
- cd appserver-0.11
- First class expressions
- Versioning >=0.12
