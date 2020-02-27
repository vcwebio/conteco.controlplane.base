[`controlplane.base`](../README.md) >> `config` API - Partial

-----

# `config` API - Partial

__`--info`__  
Returns summary information for the repository relevant to the current context.

`controlplane.base` implements the following common methods of the `config` API section:

__`build`__  
Generates the `Dockerfile.static` with the `environment` configuration.  
Should be executed after an update to the variables in the `environment` file.  
The `Dockerfile.static` file allows a direct `docker build` of the image. It is used by the automated Docker Hub build.

__`increment`__  [version-part]
Increments the specified version part of a `vx.y.z` version tag in `$CONTECO_TAG`.
Requires $CONTECO_TAG_TYPE=incremental, otherwise action is ignored.

__`remove-crs`__  
This method remove CRs from files without extension or with _.md_ or _.static_ extension.  

__`set-version`__  
This method sets the value of the `$CONTECO_TAG` variable.  

-----
[`controlplane.base`](../README.md) >> `config` API - Partial
