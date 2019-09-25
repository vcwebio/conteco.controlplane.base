[`controlplane.base`](../README.md) >> [`controlplane` Internal API](./CONTROLPLANE-BASE-INTERNAL-API.md) >> Auxiliary API

-----

# Auxiliary API

Auxiliary methods used to implement the external and internal API.

__`increment-version`__ [$versionpart] [$rootpath]  
Auxiliary method that takes the `$CONTECO_TAG` variable and increments the requested version part (_major_, _minor_ or _revision_).
It updates the version by calling the `set-version` auxiliary method.  
It only operates on the version format `vx.y.z`.

__`remove-crs`__  
Auxiliary method that remove CRs from files with no extension, `.static` or `.md` extension in selected folders.

__`set-version`__ [$version] [$rootpath]  
Sets the new version in the `$CONTECO_TAG` variable and `environment` file.

-----
[`controlplane.base`](../README.md) >> [`controlplane` Internal API](./CONTROLPLANE-BASE-INTERNAL-API.md) >> Auxiliary API
