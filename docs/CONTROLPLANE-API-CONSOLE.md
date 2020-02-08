[`controlplane.base`](../README.md) >> `console` API - Partial

-----

# `console` API - Partial

API section containing methods that executes outside the context of a repository.  

__`extract-repo`__ [repository short name]
Extracts the repository from the container image specified by [repository short name].
The [repository short name] consists of $CONTECO_TYPE.$CONTECO_NAME, i.e. the last two name parts dot separated before the image tag.

__`load`__ ['--from-tar' optional] [image name] [image tag - optional]  
With `--from-tar` it loads the image from the `tar` file stored in the `/images` folder.
Without `--from-tar` it pulls and tags the container image specified by [image name].  
If the [image tag] is supplied than it creates a second tag for the image.

__`set-repo-user`__ [name] [email]  
Sets the current use identity to be used for GIT operations on the repositories.

__start-registry__  [port optional]  
Starts the controlplane local insecure registry on the port specified or port 5000.

__stop-registry__  [port optional]  
Stops the controlplane local insecure registry.

__`unload`__ [image name] [image tag - optional]  
Untags the container image specified by [image name].  
If the [image tag] is supplied than it untags both latest and tag specific image.

-----
[`controlplane.base`](../README.md) >> `console` API - Partial
