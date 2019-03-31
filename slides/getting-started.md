---?image=slides/images/background-terraform.png

@snap[montserrat-heavy h2-white]
## @css[text-85](Getting Started)
@snapend

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-black]
## @css[text-85](Option 1)
@snapend

Get latest build

<https://releases.hashicorp.com/terraform/>

Get 0.12 providers

<http://terraform-0.12.0-dev-snapshots.s3-website-us-west-2.amazonaws.com/>

+++?image=slides/images/background-white.png

@snap[montserrat-heavy h2-black]
## @css[text-85](Option 2)
@snapend

```sh
docker run --rm -it --entrypoint /bin/bash \
  -v $(pwd):/terraform \
  straubt1/tf012-preview

root:/terraform# 
```

Note:
<https://cloud.docker.com/u/straubt1/repository/docker/straubt1/tf012-preview>