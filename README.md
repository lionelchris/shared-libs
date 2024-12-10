
# Shared Libs

![Logo](https://img.icons8.com/color/512/fivem.png)

Based on vRPEX libs

Tools, Proxy and Tunnel

This script can easily transfer packages of functions from a script to another.

Tunnel Script This script can easily transfer packages of functions by bypassing server-client barrier, just like an usual event.

Example of usage: add to fxmanifest

shared_script "@shared-libs/lib/lib.lua"

client_scripts { "@shared-libs/lib/utils.lua", --here 'config/config-client.lua', 'client.lua' } server_scripts { "@shared-libs/lib/utils.lua", --here '@mysql-async/lib/MySQL.lua', 'config/config-server.lua', 'server.lua', }

in your server scripts add

local Tunnel = module("shared-libs","lib/Tunnel") local Proxy = module("shared-libs","lib/Proxy") local Tools = module("shared-libs","lib/Tools")

--local Tunnel = exports["shared-libs"]:myTunnel()

--local Tools = exports["shared-libs"]:myTools() QBCore = exports["qb-core"]:GetCoreObject()

myServerVarAndFunctions = {} myServerVarAndFunctions = Tunnel.getInterface(GetCurrentResourceName()) Tunnel.bindInterface(GetCurrentResourceName(),myServerVarAndFunctions)

in your Client scripts add

local Tunnel = module("shared-libs","lib/Tunnel") local Proxy = module("shared-libs","lib/Proxy") local Tools = module("shared-libs","lib/Tools")

--local Tunnel = exports["shared-libs"]:myTunnel()

--local Tools = exports["shared-libs"]:myTools() QBCore = exports["qb-core"]:GetCoreObject()

myClientVarAndFunctions = {} myClientVarAndFunctions = Tunnel.getInterface(GetCurrentResourceName()) Tunnel.bindInterface(GetCurrentResourceName(),myClientVarAndFunctions)

