[`controlplane.base`](../README.md) >> `controlplane` CLI

-----

# `controlplane` CLI

## CLI Implementation

The current CLI executes within the controlplane container, invoking the API.  
It converts the JSON executionplane output into a readable compact format.  
This is done through the controlplane handler which can be found in the `/conteco/bin` folder.

For convention, each controlplane has its own, although the handler executes the same logic.  
It underlines which controlplane is currently active.

## CLI Invocation Script Extraction

The invocation script are prepared and extracted using the `extract-cli` method.  



The external API consists of five lifecycle component and six auxiliary component.  


The _controlplane_ API exposes the following methods. These methods can be invoked directly.  
The method help to extract and run an interactive commandline console.

## Method Overview

### `/conteco/bin`

__`base`__  
CLI handler for `controlplane.base`, for demo purposes only.

### `/conteco/bin/controlplane`

__`extract-cli`__  [linux/windows] [sudo]
This method extracts the CLI invocation scripts for the specfied platform.  
It checks `CONTECO_OS` for the operating system (Linux or Windows) and prepares methods accordingly.  
If the operating system is not set, then both sets are prepared.  

__`start`__  [working directory] [controlplane type] [realm]
This method is invoked on the container instance to start the CLI.  
It requires the current working directory, the specific controlplane and optionalyy the CONTECO_REALM it wants to operate on.

### `/conteco/extract`

This folder holds the invocation scripts that are extracted from the image.  
They contain environment variables which are substituted prior to extraction.

__`start`__   
Invocation of the CLI on linux.

__`start.bat`__  
Invocation of the CLI on Windows.

-----
[`controlplane.base`](../README.md) >> `controlplane` CLI
