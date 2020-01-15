# conteco.controlplane.base

The `controlplane.base` image of the __ContEco__ container ecosystem.
See `conteco.docs.overview` for more information on the ContEco ecosystem.

The `controlplane.base` image implement core controlplane functionality.
* implementation of the commandline interfaces
* extraction of the interactive commandline interface
* full implementation of (console,) repo, build and release API
* partial implementation of the config API - set of auxiliary methods
* a set of internal auxiliary methods available to the internal API implementation.

See `conteco.docs.overview` for more information on how to extract and use the commandline interface.

## Controlplane API

The top level controlplane API consists of the following methods:

* __console__  
API section containing methods that executes outside the context of a repository.  
Partial implementation - [console API in detail](./docs/CONTROLPLANE-API-CONSOLE.md)

* __repo__  
API section dealing with version control, GIT based or directly ported from GIT.  
Full implementation - [repo API in detail](./docs/CONTROLPLANE-API-REPO.md)

* __config__  
API section dealing with repository configuration.  
Partial implementation - [config API in detail](./docs/CONTROLPLANE-API-CONFIG.md)

* __build__
Build API - container images only.  
Full implementation - [build API in detail](./docs/CONTROLPLANE-API-BUILD.md)

* __release__  
Release API - container images only.  
Full implementation - [release API in detail](./docs/CONTROLPLANE-API-RELEASE.md)

* __deploy__
Deploy API - of container images, modules or solutions.
No implementation within `controlplane.base`.

* __run__
Run API - of modules or solutions.
No implementation within `controlplane.base`.

## `controlplane` CLI

`controlplane.base` implements a CLI within the image.  
It also implements the scripts to invoke this CLI.  
The scripts are extracted from the image to the current folder by:

```bash
# Extracting the CLI instantiation scripts from the controlplane image
docker run -v %cd%:/conteco/pwd vcwebio/conteco.controlplane.base --interactive extract-cli windows # on Windows
docker run -v $(pwd):/conteco/pwd vcwebio/conteco.controlplane.base --interactive extract-cli linux # on linux

# Starting the CLI
# on linux
./start conteco # to start the controlplane for image configuration
./start modeco # to start the controlplane for module management
# on windows
start.bat conteco # to start the controlplane for image configuration
start.bat modeco # to start the controlplane for module management

# Invoking the API
# when conteco CLI is invoked
conteco [API method] [arguments]

# when modeco CLI is invoked
modeco [API method] [arguments]
```

[CLI Implementation in Detail](./docs/COMMANDLINE-INTERFACE.md)

## API Auxiliary and internal Methods

[Overview of API auxiliary methods](./docs/INTERNAL-API-AUXILIARY.md)

[Overview of other internal implementation methods](./docs/INTERNAL-AUXILIARY.md)
These methods can be used as part of the internal API implementation within `controlplane.base` or any derived controlplane.
