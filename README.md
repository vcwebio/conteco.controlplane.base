# conteco.controlplane.base

The _controlplane.base_ image of the __ContEco__ container ecosystem.

## Image Structure

This image sets the API framework for the _controlplane_ images and provides the base implementation of the API methods.  

It implements the `controlplane` interface which is available from the commandline of all `controlplane` images.
This interface contains methods that cover the extraction of commandline methods to start the commandline container in `inline` or `external` mode.  

It implements the `controlplane.base` interface, externally accessible from `controlplane.base` and internally accessible from any other `controlplane` image.  
This interface is hierarchical: it implements top level methods representing life cycle stages and system areas, each with a set of submethods.

## External and Internal APIs

The _controlplane.base_ image contains two external APIs.  
These are backed up with two associated internal APIs for their implementation.

[`controlplane` External API](./docs/CONTROLPLANE-EXTERNAL-API.md)  
This API provides commmandline methods available to all `controlplane` images to setup and run as an inline or external execution console.  

[`controlplane` Internal API](./docs/CONTROLPLANE-INTERNAL-API.md)  
The internal API contains auxiliary methods available for implementation to all `controlplane` images.  

[`controlplane.base` External API](./docs/CONTROLPLANE-BASE-EXTERNAL-API.md)  
This API consists of two parts: the lifecycle groupings and the auxiliary groupings.  
The lifecycle groupings are common to all `controlplane` images although all methods may not be implemented.
The `controlplane.base` image provides the base implementation for this API.  
The auxiliary groupings are only implemented by `controlplane.base` and provide direct access to the different functional components.

[`controlplane.base` Internal API](./docs/CONTROLPLANE-BASE-INTERNAL-API.md)  
This internal API contains wrappers around the various functional components.

## External Commandline Methods

The external `controlplane` API implements the `boot-commandline` method which prepares and extract the external commandline methods.
They can be prepared for both Windows and Linux. The files are stored in `/conteco/extract`.  
Note that all `controlplane` images avail of this interface, not just `controlplane.base`.  

__`start`__  
Method to start a container of the `controlplane` image on Linux.

__`start-output-console`__  
Method to start the external execution console.  
This implementation is used both for Windows and Linux.  

__`start-registry`__
Method to start a docker container registry in a standalone container.  

__`start.bat`__  
Method to start a container of the `controlplane` image on Windows.
