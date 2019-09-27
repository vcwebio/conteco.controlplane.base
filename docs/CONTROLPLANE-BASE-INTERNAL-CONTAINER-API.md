[`controlplane.base`](../README.md) >> [`controlplane` Internal API](./CONTROLPLANE-BASE-INTERNAL-API.md) >> `.container` API

-----

# `.container` API

The `.container` wrapper contains methods that operates on containers.  
It wraps around the `Docker` client.

__`cp`__  
Wrapper around `docker cp`, the arguments are passed on unchanged.

__`create`__  
Wrapper around `docker create`, the arguments are passed on unchanged.

__`invoke`__  
The `invoke` method implement a specific version of `docker run` invoking an (external) API method on the container.  
It maps the __ContEco__ working directory to `$CONTECO_PWD_VOLUME`.

__`prune`__  
Wrapper around `docker container prune`, the arguments are passed on unchanged.

__`run`__  
Wrapper around `docker container run`, the arguments are passed on unchanged.

-----
[`controlplane.base`](../README.md) >> [`controlplane` Internal API](./CONTROLPLANE-BASE-INTERNAL-API.md) >> `.container` API
