# Current Work List

### Cluster Registry Module

Docker registry:2 with Nginx rewrite (probably will have to be localhost:5000).  
See: How to set up private registry on Ubuntu 1804  
Aim is to have an (unsafe) externally accessible registry so internet access can be avoided.

## Documentation

## Controlplane API

### Implement Info Summary

Needs implementing for all top level API methods and per controlplane.  
These are scripts that return key value settings of the image.

## SolEco & SwarEco & Infometis

Define an the SolEco, SwarEco and Infometis controlplane contexts.

* SolEco is the controlplane of solutions. A solution consists of modules.
* SwarEco is the controlpane of swarms - clusters of nodes. It consists of modules required for the operation of the cluster.
* Infometis is the controlplane of the platform. It brings the management of all other controlplanes together.

## Various Enhancements

### conteco. external . *

Tackle the user the container runs under - too many ROOT users now.

### conteco. * .base

Sort out the logging output of wrapped external images.

### metricbeat.base

Create a single base for metricbeat that should cover most uses within the platform.  
This single base container should then replace metricbeat.node and metricbeat.overlay.  
The configuration should use the autodisover feature.

### image.wrapper

#### to-JSON

Modify `to-JSON` so the `output-to-JSON` override can amend the __@timestamp__, __source__, __level__ and __message__. This could be done with multivalue parsing on single output line.
