[`controlplane.base`](../README.md) >> [`controlplane` External API](./CONTROLPLANE-BASE-EXTERNAL-API.md) >> `repo` API

-----

# `repo` API

The `run` lifecycle method.

__`add`__  
This method stages the new and modified files for commit.   

__`cleanup`__  
This method removes the _workspace_ working branch.  

__`create`__  
Not implemented.  

__`checkout`__  
This method creates the _workspace_ working branch and checks it out.  

__`commit`__  
The method commits the staged files to the current branch.  

__`checkin`__  
This method switches to the _conteco_ branch, merges the _workspace_ branch into the _conteco_ branch
and creates a tag with value `$CONTECO_TAG`.

__`extract`__  
This method extracts the repository from the specified image and saves it in the _conteco_ working folder.  

__`load`__  
This method pulls an image from the registry.  
It pulls the latest and the tagged version.  

__`log`__  
This method displays the last 10 commits of the repository.  

__`prepare`__  [name] [email]
This method sets the name and email as author on the specificed repositories.  

__`remove`__  
This method removes the repository from the filesystem.  

__`status`__  
This method gives the version control status of the repository.  

__`unload`__  
This method untags and removes the latest and tagged image.  

-----
[`controlplane.base`](../README.md) >> [`controlplane` External API](./CONTROLPLANE-BASE-EXTERNAL-API.md) >> `repo` API
