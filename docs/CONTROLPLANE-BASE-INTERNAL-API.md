[`controlplane.base`](../README.md) >> `controlplane.base` Internal API

-----

# `controlplane.base` Internal API

The `controlplane.base` associated internal API contains a number of wrapper components around specific method groups.  
The current implementation uses Docker to create images, run container and manage cluster.
However, the aim is to do alternative implementations.

Each component is invoked as a method using its name.

__`.cluster`__  
The `.cluster` wrapper contains functionality that operates on cluster nodes.  
[`.cluster` API Methods](./CONTROLPLANE-BASE-INTERNAL-CLUSTER-API-METHODS.md)  

__`.console`__  
The `.console` wrapper contains functionality of Linus commandline.  
[`.console` API Methods](./CONTROLPLANE-BASE-INTERNAL-CONSOLE-API-METHODS.md)  

__`.container`__  
The `.container` wrapper contains functionality that operates on containers.  
[`.container` API Methods](./CONTROLPLANE-BASE-INTERNAL-CONTAINER-API-METHODS.md)  

__`.engine`__  
The `.engine` wrapper contains functionality that operates on the Docker engine.  
[`.engine` API Methods](./CONTROLPLANE-BASE-INTERNAL-ENGINE-API-METHODS.md)  

__`.image`__  
The `.image` wrapper contains functionality that operates on images.  
[`.image` API Methods](./CONTROLPLANE-BASE-INTERNAL-IMAGE-API-METHODS.md)  

__`.repository`__  
The `.repository` wrapper contains functionality that operates on GIT repositories.  
[`.repository` API Methods](./CONTROLPLANE-BASE-INTERNAL-REPOSITORY-API-METHODS.md)  

-----
[`controlplane.base`](../README.md) >> `controlplane.base` Internal API
