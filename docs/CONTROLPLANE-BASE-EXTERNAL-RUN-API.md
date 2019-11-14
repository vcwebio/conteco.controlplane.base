[`controlplane.base`](../README.md) >> [`controlplane` External API](./CONTROLPLANE-BASE-EXTERNAL-API.md) >> `run` API

-----

# `run` API

The `run` lifecycle method.  
The run methods implements a number of flags:

__`--boot`__  
The default flag causes the service, service stack, module or solution to boot.  
This is the default action when no flag is supplied.

__`--start`__  
The start flag causes a service, service stack, module or solution to start.  
The service, service stack, module or solution must be booted first.  
It can be used to restart after pause has been executed.

__`--pause`__  
The start flag causes a service, service stack, module or solution to pause.  
The service, service stack, module or solution must have been booted (and optionally started) first.  

__`--stop`__  
The start flag causes a service, service stack, module or solution to pause.  
The service, service stack, module or solution must have been booted (and optionally started) first.  

__`--shutdown`__  
The start flag causes a service, service stack, module or solution to shut down.  

-----
[`controlplane.base`](../README.md) >> [`controlplane` External API](./CONTROLPLANE-BASE-EXTERNAL-API.md) >> `run` API
