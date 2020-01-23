[`controlplane.base`](../README.md) >> Internal Implementation Methods

-----

# Internal Implementation Methods

### `/conteco/bin`

__`base`__  
CLI handler for `controlplane.base`, for demo purposes only.

## `/conteco/bin/controlplane/internal`

__`entrypoint`__  
`controlplane` image specific `CONTECO_PREENTRYPOINT` invoked at container instantiation.  
It sets the `CONTECO_EXECUTIONPLANE_BASEPATH` to `CONTECO_EXECUTIONPLANE_ORIGINALPATH` as it is a __ContEco__ defined image.  
It also sets the default for `CONTECO_EXECUTIONTAG`.

__`for-each`__  
Wrapper around the API calls that run within the context of a repository - repo, config, build, release, deploy and run.
It's bootstrapped from within the API method. It gets the repositories from the selection and invokes the API method for each.

__`for-each-info`__  
Auxiliary method to invoke the correct info-generating script for the current API method.  
It returns an overview of the settings relevant for the context.

__`output-parser-tagged`__  
Used by the CLI to parse the output from unmanaged commands.

__`set-selector`__  [$selector]
Preprocesses the selector supplied as last argument when invoking external API methods.  
It accepts the `.` as the selector for any repository loaded for the current ecosystem.  
It adds the proper _realm_ and _ecosystem_ prefix to the current selector.  
It accepts prefixes without trailing `*` to match any repository with that prefix.  
A leading `*` can be used to allow wildcard prefixes.

__`wait-for-output-parser-tagged`__  
Used by the CLI to track when unmanaged commands have completed their stdout/stderr output.
It polls every 500 ms. This method is used to keep the process output sequentially.
At times a command may exit before its output buffer has been fully processed by the `output-parser` process.  

-----
[`controlplane.base`](../README.md) >> Internal Implementation Methods
