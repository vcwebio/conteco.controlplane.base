# Current Work List

## Full Stack Description

```bash
--> conteco - configuring sets of container images
      --> modeco - configuring functional modules
            --> swareco - configuring and running a cluster
                  --> soleco - configuring and running a solution
                        --> infometis - running the data world
```

## ModEco Modules

### Cluster Registry Module

Docker registry:2 with Nginx rewrite (probably will have to be localhost:5000).  
See: How to set up private registry on Ubuntu 1804  
Aim is to have an (unsafe) externally accessible registry so internet access can be avoided.

### Lightweight Execution Plane Modules

Module based on ELK pure parsing container logs, filtering out executionplane entries only.
The entries are parsed into a simple log. Only essential fields should be indexed by ES.

## Documentation

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

Invocation of Client Console v2 should (initially) follow the same pattern as v1: extraction with `extract-cli` and invocation with `start-service` instead of `start`. The `start-service` command then starts the (replicated) client service and hooks interactively into the container instance on the local node.

## Controlplane API

### Implement Info Summary

Needs implementing for all top level API methods and per controlplane.  
These are scripts that return key value settings of the image.

### Cluster / Single Node flag

Implement cluster / single node flag which default can be set from extract-cli.  
It should also be easy to set interactively.

## ModEco

Tweak the structure of the ModEco ecosystem to create modules with packages.  
CONTECO_TYPE becomes the module name and CONTECO_NAME the package name.  
Modules would consist a core package with additional packages for optional features - backup, bulk import, etc.

There should be templates of these packages to start from.  
Use the base.* namespace for these templates.

Could there be more than one core package? And what about demo? Core + import?

## Various Enhancements

### modeco.swarm.base

Make initial container log processing pipeline lighter and faster with priority to metrics processing, then logs, then other entries.

### conteco. * .base

Sort out the logging output of wrapped external images.

Create the ContEco documentation container.

### metricbeat.base

Create a single base for metricbeat that should cover most uses within the platform.  
This single base container should then replace metricbeat.node and metricbeat.overlay.  
The configuration should use the autodisover feature.

### image.wrapper

Modify `to-JSON` so the `output-to-JSON` override can amend the __@timestamp__, __source__, __level__ and __message__. This could be done with multivalue parsing on single output line.
