author "FrostFireFury"
description "ID resource for ND Framework"
version "1.0.0"

fx_version "cerulean"
game "gta5"
lua54 "yes"

shared_scripts {
    "@ND_Core/shared/import.lua"
}
server_scripts {
    "server.lua"
}
client_scripts {
    "client.lua"
}

dependency "ND_Core"