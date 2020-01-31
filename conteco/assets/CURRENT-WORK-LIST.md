# Current Work List

## ModEco Modules

### New


### Cluster Registry Module

Docker registry:2 with Nginx rewrite (probably will have to be localhost:5000).  
See: How to set up private registry on Ubuntu 1804  
Aim is to have an (unsafe) externally accessible registry so internet access can be avoided.

### Lightweight Execution Plane Modules

Module based on ELK pure parsing container logs, filtering out executionplane entries only.
The entries are parsed into a simple log. Only essential fields should be indexed by ES.

## Documentation

## Controlplane API

### Implement Info Summary

Needs implementing for all top level API methods and per controlplane.  
These are scripts that return key value settings of the image.

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

#### to-JSON

Modify `to-JSON` so the `output-to-JSON` override can amend the __@timestamp__, __source__, __level__ and __message__. This could be done with multivalue parsing on single output line.

#### Implement RUNTIME REALM flag for wrapper

Required so vcwebio controlplanes can be used in other realms.
Should be in initial grouping before --container
