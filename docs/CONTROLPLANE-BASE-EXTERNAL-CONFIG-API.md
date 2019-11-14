[`controlplane.base`](../README.md) >> [`controlplane` External API](./CONTROLPLANE-BASE-EXTERNAL-API.md) >> `config` API

-----

# `configure` API

The `configure` lifecycle method.

__`build`__  
This method generates the `Dockerfile.static` with the current configuration.  
Typically it is run after an update to the variables in the `environment` file.

__`increment`__  [version-part]
This method increments the specified version part of a `vx.y.z` version tag in `$CONTECO_TAG`.  

__`remove-crs`__  
This method remove CRs from files without extension or with _.md_ or _.static_ extension.  

__`set-version`__  
This method sets the value of the `$CONTECO_TAG` variable.  

-----
[`controlplane.base`](../README.md) >> [`controlplane` External API](./CONTROLPLANE-BASE-EXTERNAL-API.md) >> `config` API
