[`controlplane.base`](../README.md) >> [`controlplane` External API](./CONTROLPLANE-BASE-EXTERNAL-API.md) >> `deploy` API

-----

# `deploy` API

The `deploy` lifecycle component.  
It implements two methods:

__`deploy`__  
The method removes and / or deploys a service stack. The default is deploy.
It takes two flags: _--remove_ which removes the stack and _--redeploy_ which first removes the stack before deploying it.

__`all`__  
This method extracts and executes the build method of the image to be built.  
By default it does do nothing as only specific types implement `deploy`.

-----
[`controlplane.base`](../README.md) >> [`controlplane` External API](./CONTROLPLANE-BASE-EXTERNAL-API.md) >> `deploy` API
