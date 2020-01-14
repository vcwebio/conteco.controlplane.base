[`controlplane.base`](../README.md) >> `repo` API - Full

-----

# `repo` API

`controlplane.base` is the sole implementer of the `repo` API section.  

The repo API section implements methods that operate on the repository.  
These are either direct ports of or implemented using methods from GIT.

__`add`__  
Stages all changed files. A direct port of _git add ._

__`branch`__ [arguments]  
Executes _git branch_ [arguments] on the selected repositories. Direct port of _git branch_

__`create-workspace`__  
Creates a _workspace_ branch and checks it out.  

__`commit`__  
Commits the staged files to the current branch. Direct port of _git commit -m_.

__`compact`__  
Compacts the commit log with garbage collection and pushes it out to the remote.  

__`checkin-workspace`__  
Checks out the main branch and merges the _workspace_ branch into it.
It creates or updates the position of the tag with value `$CONTECO_TAG`.

__`config`__  
Sets the remote origin of the repository and sets the credentials to be stored.

__`init`__  
Initialises or reinitialises the repository. Direct port of _git init_.

__`log`__  
Displays the commit log of the repository. Direct port of _git log_.

__`log10`__  
Displays a compact summary of the last 10 commits of the repository.

__`pull`__   
Pulls the remote into the repository. Direct port of _git pull_.

__`push`__   
Pushes the current branch to its remote. Direct port of _git push_.
It also updates the remote with the current $CONTECO_TAG.

__`remote`__  
Direct port of _git remote_.

__`remove-workspace`__  
Removes the workspace branch from the repository.

__`status`__  
Gives the current status of the repository. Direct port of _git status_.

__`tag`__  
Direct port of _git tag_.  

-----
[`controlplane.base`](../README.md) >> `repo` API - Full
