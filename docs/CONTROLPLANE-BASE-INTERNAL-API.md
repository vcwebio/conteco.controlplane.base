[`controlplane.base`](../README.md) >> `controlplane.base` Internal API

-----

# `controlplane.base` Internal API

The `controlplane.base` associated internal API contains a number of wrapper components around specific method groups.  
The current implementation uses Docker to create images, run container and manage cluster.
However, the aim is to do alternative implementations.

Each component is invoked as a method using its name.

__`.cluster`__  
The `.cluster` wrapper contains methods that operates on cluster nodes.  
[`.cluster` API](./CONTROLPLANE-BASE-INTERNAL-CLUSTER-API.md)  

__`.console`__  
The `.console` wrapper contains methods that execute on the Linux commandline.  
It will be used to control the type of access the controlplane has.
[`.console` API](./CONTROLPLANE-BASE-INTERNAL-CONSOLE-API.md)  

__`.container`__  
The `.container` wrapper contains methods that operates on containers.  
[`.container` API](./CONTROLPLANE-BASE-INTERNAL-CONTAINER-API.md)  

__`.engine`__  
The `.engine` wrapper contains methods that operates on the (Docker) engine.  
[`.engine` API](./CONTROLPLANE-BASE-INTERNAL-ENGINE-API.md)  

__`.image`__  
The `.image` wrapper contains methods that operates on images.  
[`.image` API](./CONTROLPLANE-BASE-INTERNAL-IMAGE-API.md)  

__`.repo`__  
The `.repo` wrapper contains methods that operates on GIT repositories.  
[`.repo` API](./CONTROLPLANE-BASE-INTERNAL-REPO-API.md)  

In addition there are a number of auxiliary methods used for the implementation of the external API:  
[Auxiliary API](./CONTROLPLANE-BASE-INTERNAL-AUXILIARY-API.md)  

-----
[`controlplane.base`](../README.md) >> `controlplane.base` Internal API
