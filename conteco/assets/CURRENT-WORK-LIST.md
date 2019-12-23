# Current Work List

## Documentation

### Branding

Brand the platform under vcWEB platform, with conteco, modeco, soleco and infometis as constituent parts.  
The documentation images should be moved to the vcweb ecosystem - however this means that we need a controlplane!  
Think about it ...  
Leave them under `conteco.docs` until `soleco`and `infometis` is tackled.

### Default Documentation - ContEco Images

Default documentation for the conteco images.  

#### Remaining To Be Done

Images not dealt with in alphabetical order.
conteco
- controlplane.base
- controlplane.conteco
- controlplane.modeco
- image.wrapper

### `docs.conteco`

Managing the ContEco ecosystem images using `conteco.controlplane.conteco`.

## Module Hierarchy - Naming

The repository published by __conteco__ should create a __modeco__ repository using the underscore concatenated __TYPE__ and __NAME__ as __NAME_.

__conteco.type.name >>> modeco.base.type_name__

The __base__ module images act as structural templates to create the actual module images from. The module cast from __base__ has the __NAME__ __conf__.

__modeco.base.[base_type]__ >creates a module> __modeco.[module_name].conf__

The __deploy__ and __run__ APIs should operate on __images__ and not on __repositories__. This creates a clear separation between __configuration__, __build__ and __release__ on the one hand and __deploy__ and __run__ on the other hand.

The next step is to give these images specific operational incarnations. The specific incarnation is expressed by the module name.

__modeco.[module_name].conf__ >>> creates incarnation >>> __modeco.[module_name].[incarnation]__

Incarnations can be cluster, micro, read/write  etc. ... . These are ___compiled___ versions of the module.

Operational modules are made available to the next structural layer which deals with a solution. The solution consists of modules (could be seen as applications) and is in first instance local to one cluster. No firm ideas exist yet how this could be extended across multiple cluster however it is probably a master cluster with satellite clusters.

### Modeco Base module

Bring friendly names into conteco.module.* delivering a modeco.base.* that is ready for use.  
Modules should only container a single instance per container type, and the new naming scheme then allows for cloning under this new name scheme.  
The friendly names are there for a reason, having meaning.  
Within modeco, there should be a facility to clone part of the module (multiple instances of), e.g. for multinode setup.  

## Controlplane Console

### Client Console v1

Amend `controlplane` images to take the __ecosystem__ it operates on from the image __tag__.  
Extend the use of the `--silent` and `--errors-only` flags for commands.  

### Client Console v2

Override the `--silent` and `--errors-only` flag with a `--verbose` flag at top level (sibling of `--interactive`)

Create new client that pipes all commands to a container image invocation with no output.  
The ideal solution would be to invoke the commands as a controlplane service with command line - service name must then be unique to allow command concurrency.  

Service invocation opens the door to cluster-wide commands, executed on each node. The logic to determine the scope of a command (local or global) is implemented in the client. The client could be a service in itself.

The client requires swarm log collection (ELK or KELK type) to display the output.

Invocation of Client Console v2 should (initially) follow the same pattern as v1: extraction with `boot-commandline` and invocation with `start-service` instead of `start`. The `start-service` command then starts the (replicated) client service and hooks interactively into the container instance on the local node.

## Controlplane API

### repo prepare

Split into two parts: setting author details and setting HTTPS / SSH format on remote origin

## modeco.swarm.base

Make initial container log processing pipeline lighter and faster with priority to metrics processing, then logs, then other entries.

## conteco.*.base

Sort out the logging output of wrapped external images.

## controlplane.conteco

Use modeco.base.base as template for repo.  
Modeco general documentation within should be moved to docs.modeco.

## docs.conteco

Create the ContEco documentation container.

## metricbeat.base

Create a single base for metricbeat that should cover most uses within the platform.  
This single base container should then replace metricbeat.node and metricbeat.overlay.  
The configuration should use the autodisover feature.
