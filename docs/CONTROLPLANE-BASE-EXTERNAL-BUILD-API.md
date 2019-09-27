[`controlplane.base`](../README.md) >> [`controlplane` External API](./CONTROLPLANE-BASE-EXTERNAL-API.md) >> `build` API

-----

# `build` API

The `build` lifecycle component.  
It contains two methods:

__`image`__  [flag] [image]
This methods build the image specified.  
It takes optionally a flag which can have two values:  
- _--deep_: rebuilds first all base images upto the _external_ image type.
- _--full_: rebuilds first all base images including the _external_ image type.  

__`all`__  
This method extracts and executes the build method of the image to be built.  
By default it invokes the `build image` method.
For complex image types it will rebuild all images defined within the repository.  
This method can be executed with the same _--deep_ and _--full_ flags as above.  

-----
[`controlplane.base`](../README.md) >> [`controlplane` External API](./CONTROLPLANE-BASE-EXTERNAL-API.md) >> `build` API
