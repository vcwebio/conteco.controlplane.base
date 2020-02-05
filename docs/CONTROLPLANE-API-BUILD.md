[`controlplane.base`](../README.md) >>. `build` API - Full

-----

# `build` API - Full

`controlplane.base` is the sole implementer of the `build` API.  

The `build` API consists of one method and can take one optional flag.

__[no flag]__
Builds the image from the `Dockerfile` applying the environment variables from the `environment` file.  
It creates two image tags: _latest_ and _${CONTECO_TAG}_

__--deep__  
Rebuilds first the __base__ images recursively followed by the build of the actual image.

__--exclude-external__  
This _--exclude-external_ flag force a recursive build of the base images recursively before building the container image.

-----
[`controlplane.base`](../README.md) >> `build` API - Full
