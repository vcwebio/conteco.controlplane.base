[`controlplane.base`](../README.md) >> [`controlplane` Internal API](./CONTROLPLANE-BASE-INTERNAL-API.md) >> `.repo` API

-----

# `.repo` API

The `.repository` wrapper contains GIT functionality.

__`add`__  
Wrapper around `git add` that passes commandline arguments unchanges.  

__`branch`__  
Wrapper around `git branch` that passes commandline arguments unchanges.  

__`checkout`__  
Wrapper around `git checkout` that passes commandline arguments unchanges.  

__`config`__  
Wrapper around `git config` that passes commandline arguments unchanges.  

__`commit`__  
Wrapper around `git commit`. The arguments are passed on as a single string argument.

__`log`__  
Wrapper around `git log` passed on a pretty format of single line returning last 10 commits.

__`merge`__  
Wrapper around `git merge` that passes commandline arguments unchanges.  

__`status`__  
Wrapper around `git status` that passes commandline arguments unchanges.  

__`tag`__  
Wrapper around `git tag` that passes commandline arguments unchanges.  

-----
[`controlplane.base`](../README.md) >> [`controlplane` Internal API](./CONTROLPLANE-BASE-INTERNAL-API.md) >> `.repo` API
