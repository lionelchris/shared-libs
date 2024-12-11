
# Shared Libs

![Logo](https://img.icons8.com/color/96/fivem.png)

[Based on vRPEX libs](https://github.com/vRP-framework/vRP)

Tools, Proxy and Tunnel

This script can easily transfer packages of functions from a script to another.

Tunnel Script This script can easily transfer packages of functions by bypassing server-client barrier, just like an usual event.



## Example of usage: add to fxmanifest

```lua
shared_script "@shared-libs/lib/lib.lua"

client_scripts { "@shared-libs/lib/utils.lua", -- add here
'config/config-client.lua',
'client.lua' }
server_scripts { "@shared-libs/lib/utils.lua", -- add here
'@mysql-async/lib/MySQL.lua',
'config/config-server.lua',
'server.lua' }
```



## Example of usage: in your server scripts add

```lua
local Tunnel = module("shared-libs","lib/Tunnel")
local Proxy = module("shared-libs","lib/Proxy")
local Tools = module("shared-libs","lib/Tools")

--local Tunnel = exports["shared-libs"]:myTunnel()

--local Tools = exports["shared-libs"]:myTools()
QBCore = exports["qb-core"]:GetCoreObject()

myServerVarAndFunctions = {}
myClientVarAndFunctions = Tunnel.getInterface(GetCurrentResourceName())
Tunnel.bindInterface(GetCurrentResourceName(),myServerVarAndFunctions)
```



## Example of usage: in your Client scripts add

```lua
local Tunnel = module("shared-libs","lib/Tunnel")
local Proxy = module("shared-libs","lib/Proxy")
local Tools = module("shared-libs","lib/Tools")

--local Tunnel = exports["shared-libs"]:myTunnel()

--local Tools = exports["shared-libs"]:myTools()
QBCore = exports["qb-core"]:GetCoreObject()

myClientVarAndFunctions = {}
Tunnel.bindInterface(GetCurrentResourceName(),myClientVarAndFunctions)
myServerVarAndFunctions = Tunnel.bindInterface(GetCurrentResourceName())
```




