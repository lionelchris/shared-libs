shared_script "lib/lib.lua"

fx_version 'adamant'
game 'gta5'


server_scripts {
	'@mysql-async/lib/MySQL.lua',
	'lib/utils.lua',
	
	
}

client_scripts {
	'lib/utils.lua',
}

files {
	'lib/Tunnel.lua',
	'lib/Proxy.lua',
	'lib/Tools.lua'
	
}

server_export 'AddPriority'
server_export 'RemovePriority'  

