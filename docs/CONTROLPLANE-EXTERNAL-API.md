[`controlplane.base`](../README.md) >> `controlplane` External API

-----

# `controlplane` External API

The _controlplane_ API exposes the following methods. These methods can be invoked directly.  
The method help to extract and run an interactive commandline console.

__`boot-commandline`__  
This method extracts the methods to start the commandline console and a local registry.  
It checks `CONTECO_OS` for the operating system (Linux or Windows) and prepares methods accordingly.  
If the operating system is not set, then both sets are prepared.  

__`conteco`__  
The commandline wrapper method to execute methods from the external API.  
It parses the JSON output into a simple text format. This method is only required for the interactive console.  

__`linux`__  
Sets `$CONTECO_OS` to _linux_  and `$CONTECO_PWD_VOLUME` to `/conteco/pwd`.

__`start`__  linux/volume/windows
This method is used to start a BASH shell for the interactive console.  
It applies the current working directory to the command cursor and starts the console using the settings for _linux_, _volume_ or _windows_.

__`start-console`__  
Method to start the FIFO console. Not in use.  

__`start-fifo`__  
Method to create the FIFO pipeline. Not in use.  

__`volume`__  
Sets `$CONTECO_OS` to _volume_  and `$CONTECO_PWD_VOLUME` to `CONTECO.PWD`.

__`windows`__  
Sets `$CONTECO_OS` to _windows_  and `$CONTECO_PWD_VOLUME` to `/c/conteco/pwd`.

-----
[`controlplane.base`](../README.md) >> `controlplane` External API
