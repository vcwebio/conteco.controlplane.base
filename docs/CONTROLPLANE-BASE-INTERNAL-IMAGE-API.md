[`controlplane.base`](../README.md) >> [`controlplane` Internal API](./CONTROLPLANE-BASE-INTERNAL-API.md) >> `.image` API

-----

# `.image` API

The `.image` wrapper contains methods that operates on images.  
It wraps around the Docker client.

__`build`__  
Wrapper around `docker build`, the arguments are passed on unchanged.

__`prune`__  
Wrapper around `docker prune`, the arguments are passed on unchanged.

__`pull`__  
Wrapper around `docker pull`, the arguments are passed on unchanged.

__`push`__  
Wrapper around `docker push`, the arguments are passed on unchanged.

__`rm`__  
Wrapper around `docker image rm`.  
If the first arguments is `all` then it executes `docker image rm $(docker image ls)`,
otherwise it passes the arguments unchanged.

__`tag`__  
Wrapper around `docker tag`, the arguments are passed on unchanged.

-----
[`controlplane.base`](../README.md) >> [`controlplane` Internal API](./CONTROLPLANE-BASE-INTERNAL-API.md) >> `.image` API
