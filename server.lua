NDCore = exports["ND_Core"]:GetCoreObject()

local ShowID = true
local IDCommand = "showid"

if ShowID then
    RegisterCommand(IDCommand, function(source, args, rawCommand)
        local targetPlayer = tonumber(args[1])

        if not targetPlayer then
            local message = '~r~ERROR: Invalid player ID.'
            TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, message)
            return
        end

        local issuerCharacter = NDCore.Functions.GetPlayer(source)

        if issuerCharacter then
            local dob = issuerCharacter.dob
            local year, month, day = dob:match("(%d+)-(%d+)-(%d+)")
            local age = os.date("%Y") - year

            local message = 'Player ID ~b~' .. source ..
                '\n~w~First Name: ~b~' .. issuerCharacter.firstName ..
                '\n~w~Last Name: ~b~' .. issuerCharacter.lastName ..
                '\n~w~Age: ~b~' .. age ..
                '\n~w~Gender: ~b~' .. issuerCharacter.gender

            TriggerClientEvent('displayNotification', targetPlayer, message)

            TriggerClientEvent('displayNotification', source, '~g~ID Card Given!')
        else
            local message = '~r~ERROR: Issuer data not found.'
            TriggerClientEvent('displayNotification', source, message)
        end
    end, false)
end
