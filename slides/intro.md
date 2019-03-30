---?image=slides/images/background-terraform.png

@snap[montserrat-heavy h2-white]
## @css[text-85](What is version 0.12?)
@snapend

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-black]
## @css[text-85](HCL)
@snapend

Because of this, we decided to create our own configuration language that is JSON-compatible. Our configuration language (HCL) is designed to be written and modified by humans. The API for HCL allows JSON as an input so that it is also machine-friendly (machines can generate JSON instead of trying to generate HCL).

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-black]
## @css[text-85](Why?)
@snapend

- 4 years since last major update
- This update ~2 years in the making
- Lacking some features -> Clunky workarounds
- Difficult to make future changes to Terraform

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-black]
## @css[text-85](Issues:)
@snapend

- Breaking changes
- Delayed release
- Provider updates