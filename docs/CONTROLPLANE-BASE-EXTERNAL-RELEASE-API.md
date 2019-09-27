[`controlplane.base`](../README.md) >> [`controlplane` External API](./CONTROLPLANE-BASE-EXTERNAL-API.md) >> `release` API

-----

# `release` API

The `release` lifecycle component.  
It implements two methods:

__`image`__  
The method pushes the image without tag to the image registry.  
It also pushes a tagged version if a tag exists.

__`all`__  
This method extracts and executes the release method of the image.  
By default it invokes the `release image` method.
This method releases all images defined by the repository.  

-----
[`controlplane.base`](../README.md) >> [`controlplane` External API](./CONTROLPLANE-BASE-EXTERNAL-API.md) >> `release` API
