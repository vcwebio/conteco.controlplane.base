# Current Work List

## Pending

conteco.backup.external

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

#### The Bash Trap

Investigate how the Bash trap can work to ensure that all errors / information end up in the container logs.
https://medium.com/@dirk.avery/the-bash-trap-trap-ce6083f36700

#### to-JSON

Modify `to-JSON` so the `output-to-JSON` override can amend the __@timestamp__, __source__, __level__ and __message__. This could be done with multivalue parsing on single output line.
