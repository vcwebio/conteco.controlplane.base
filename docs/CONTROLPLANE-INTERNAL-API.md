[`controlplane.base`](../README.md) >> `controlplane` Internal API

-----

# `controlplane` Internal API

__`check-selector-exists`__  [$imageName] [$action]
Used by the `repo` component.
It checks if the current selector points to existing repository folders.  
If it doesn't, then it assumes that the image is fully named (`realm` and `ecosystem` are optional)
and sets the environment variables accordingly. It is used to execute actions where the folder may not yet exist.

__`entrypoint`__  
`controlplane` image specific `CONTECO_PREENTRYPOINT`.  
It sets the `CONTECO_EXECUTIONPLANE_BASEPATH` to `CONTECO_EXECUTIONPLANE_ORIGINALPATH` as it is a __ContEco__ defined image.  
It also sets the default for `CONTECO_EXECUTIONTAG`.

__`for-each`__  
Auxiliary method that executes the commanline argument for each path selection. The path selector is the last argument and gets replaced.  
It is used by the lifecycle external API methods to apply the action over the node selection.  
The method insert foreach as first argument to indicate it was processed by the function.

__`extract-and-execute`__  [$imageName] [$action]
Auxilairy method to extract and execute image specific lifecycle methods.

__`output-parser`__  
Method that parses the `executionplane` JSON output (from __stdout__ or __stderr__) into pretty console output.

__`output-parser-tagged`__  
This method is used when one wants to monitory when output from a command has completed and the process exits.  
This method should be used without nesting as it may not work - it could result in indefinite wait.
See `wait-for-output-parsed-tagged`.

__`set-selector`__  [$selector]
Preprocesses the selector supplied as last argument when invoking external API methods.  
It accepts the `.` as the selector for any repository loaded for the current ecosystem.  
It adds the proper _realm_ and _ecosystem_ prefix to the current selector.  
It accepts prefixes without trailing `*` to match any repository with that prefix.  
A leading `*` can be used to allow wildcard prefixes.

__`wait-for-output-parser-tagged`__  
Methods that wait until all `output-parser-tagged` processes have completed and exited. It polls every 500 ms.  
This method is used when it is necessary to keep the process output sequentially.
At times a command may exit before its output buffer has been fully processed by the `output-parser` process.  

-----
[`controlplane.base`](../README.md) >> `controlplane` Internal API
