# Current Work List

## Pending

### Confluent Platform

Add confluent platform to the kafka images.  
This will involve switching to cp- prefixed images.  
The platform is free to use for developers and on single broker clusters.

### Modeco Module CONFIGURATION

The base module packages should update from the conteco images.  
The module package should update from the base packages.

### Modeco DEPLOY

Should follow the same syntax as other methods:  
deploy [stack name selector] [module packages selector]

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
