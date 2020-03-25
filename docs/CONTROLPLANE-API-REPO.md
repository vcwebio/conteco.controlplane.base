[`controlplane.base`](../README.md) >> `repo` API - Full

-----

# `repo` API

`controlplane.base` is the sole implementer of the `repo` API section.  

The repo API section implements methods that operate on the repository.  
These are either direct ports of or implemented using methods from GIT.

__`--info`__  
Returns summary information for the repository relevant to the current context.

__`commit`__  
Adds the unstaged files and commits the staged files to the current branch.  
It also updates the current tag to the latest commit.

__`compact`__  
Compacts the commit log with garbage collection and pushes it out to the remote.  

__`config`__  
Sets the remote origin of the repository and sets the credentials to be stored.

__`extract`__
Extracts the repository from the cached repository image on top of the existing repository.

__`load`__ ['--from-tar' optional] [image name] [image tag - optional]  
With `--from-tar` it loads the image from the `tar` file stored in the `/images` folder.
Without `--from-tar` it pulls and tags the container image specified by [image name].  
If the [image tag] is supplied than it creates a second tag for the image.

__`log`__  
Displays a compact summary of the last 10 commits of the repository.

__`push`__   
Pushes the current branch to its remote. Direct port of _git push_.
It also updates the remote with the current $CONTECO_TAG.

__`remove`__  
Removes the repository from the filesystem.

__`retag-image`__  
Retags the image associated with the repository by replacing the registry-realm prefix with the new prefix supplied.

__`save`__  
Saves the current tagged image in cache to a tar file in the `/images` folder.

__`status`__  
Gives the current status of the repository. Direct port of _git status_.

__`tag-registry__   
Retags the selected images with the current registry prefix.  

__untag-registry`__  
Retags the selected images without the current registry prefix.  

-----
[`controlplane.base`](../README.md) >> `repo` API - Full
