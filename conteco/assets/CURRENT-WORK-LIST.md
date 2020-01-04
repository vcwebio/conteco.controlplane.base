# Current Work List

## Repository Removals / Additions

### Repository Removals

* conteco.module.swarm
* conteco.module.swarm_es

__Docker Hub Removals__  
* conteco.module.elk
* conteco.module.kelk
* conteco.streamsets.kafka
* conteco.streamsets.kafka_es
* infometis.*
* modeco.elk.base
* modeco.kelk.base

## Conteco Image Additions

* Bash base (for scripting APIs)
* Confluent Kafka-Connect
* Confluent Avro Schema
* LogStash
* SQL Server
* Wireshark

## Conteco Repository Restructure

### Modules

Create module for ekg + url_rewrite and streamsets + url_rewrite.  
Remove elk, kelk, swarm_es and swarm modules - create modules instead.

### Templated Repository Generator

Need to create a blank repository generator images generating blank images for amongst others
* base
* stack
* module

Could this also be used to update the schema of existing ones?

## Documentation

The docs.overview image should have concise documentation to get started.  
The specific, more specialised bits should go to the documentation of the implementing image.  
There may be other docs images, e.g. examples etc. but not yet clear how.

- docs.overview (incorporate docs.modeco  and previously planned docs.conteco)
- controlplane.base
- controlplane.conteco
- controlplane.modeco

### `docs.conteco`

Managing the ContEco ecosystem images using `conteco.controlplane.conteco`.

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

### Cluster / Single Node flag

Implement cluster / single node flag which default can be set from boot-commandline.  
It should also be easy to set interactively.

### repo prepare

Split into two parts: setting author details and setting HTTPS / SSH format on remote origin

## modeco.swarm.base

Make initial container log processing pipeline lighter and faster with priority to metrics processing, then logs, then other entries.

## conteco.*.base

Sort out the logging output of wrapped external images.

## docs.conteco

Create the ContEco documentation container.

## metricbeat.base

Create a single base for metricbeat that should cover most uses within the platform.  
This single base container should then replace metricbeat.node and metricbeat.overlay.  
The configuration should use the autodisover feature.

## image.wrapper

Modify `to-JSON` so the `output-to-JSON` override can amend the __@timestamp__, __source__, __level__ and __message__. This could be done with multivalue parsing on single output line.
