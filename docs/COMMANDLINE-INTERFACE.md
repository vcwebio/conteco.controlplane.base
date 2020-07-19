[`controlplane.base`](../README.md) >> `controlplane` CLI

-----

# `controlplane` CLI

## CLI Implementation

The current CLI executes within the controlplane container, invoking the API.  
It converts the JSON executionplane output into a readable compact format.  
This is done through the controlplane handler which can be found in the `/conteco/bin` folder.

For convention, each controlplane has its own, although the handler executes the same logic.  
It underlines which controlplane is currently active.

## Method Overview

### `/conteco/bin/controlplane`

__`start`__  [working directory] [controlplane type] [realm]
This method is invoked on the container instance to start the CLI.  
It requires the current working directory, the specific controlplane and optionalyy the CONTECO_REALM it wants to operate on.

-----
[`controlplane.base`](../README.md) >> `controlplane` CLI
