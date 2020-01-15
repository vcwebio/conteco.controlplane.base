# Current Work List

## CLI Reform

start must set CONTECO_OS - currently not setting it
Deduce it from pwd supplied: Windows requires host mapping, thus \

Remove mode from invocation - non-sensical

docker volume create --driver local --opt type=none --opt o=bind --opt device=c:\conteco\pwd controlplane2
docker volume create --driver local --opt type=nfs --opt o=addr=10.1.1.125,rw --opt device=:\conteco_pwd controlplane

nfs still has permission issues, but bind can be used already
someone says mapping directly to nfs server ...
Note, instead of a bind mount to the host NFS directory, you can also do a volume mount directly the NFS server. Here are several examples of how to do that:

  # create a reusable volume
  $ docker volume create --driver local \
      --opt type=nfs \
      --opt o=nfsvers=4,addr=nfs.example.com,rw \
      --opt device=:/path/to/dir \
      foo

  # or from the docker run command
  $ docker run -it --rm \
    --mount type=volume,dst=/container/path,volume-driver=local,volume-opt=type=nfs,\"volume-opt=o=nfsvers=4,addr=nfs.example.com\",volume-opt=device=:/host/path \
    foo

  # or to create a service
  $ docker service create \
    --mount type=volume,dst=/container/path,volume-driver=local,volume-opt=type=nfs,\"volume-opt=o=nfsvers=4,addr=nfs.example.com\",volume-opt=device=:/host/path \
    foo

  # inside a docker-compose file
  ...
  volumes:
    nfs-data:
      driver: local
      driver_opts:
        type: nfs
        o: nfsvers=4,addr=nfs.example.com,rw
        device: ":/path/to/dir"
  ...

## ModEco Modules

### Cluster Registry Module

Docker registry:2 with Nginx rewrite (probably will have to be localhost:5000).  
See: How to set up private registry on Ubuntu 1804  
Aim is to have an (unsafe) externally accessible registry so internet access can be avoided.

### Lightweight Execution Plane Modules

Module based on ELK pure parsing container logs, filtering out executionplane entries only.
The entries are parsed into a simple log. Only essential fields should be indexed by ES.

### Templated Repository Generator

Need to create a blank repository generator images generating blank images for, amongst others.
* base
* stack
* module

Could this also be used to update the schema of existing ones?

## Documentation

### docs.overview

The docs.overview image should have concise documentation to get started.  
The specific, more specialised bits should go to the documentation of the implementing image.  
There may be other docs images, e.g. examples etc. but not yet clear how.

docs.overview is to be the only dedicated documentation container until further notice.

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
