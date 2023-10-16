local NDCore = exports["ND_Core"]:GetCoreObject()

TriggerEvent("chat:addSuggestion", "/showid", "Shows you a users ID", {{ name="Server ID", help="You put the users ID you want to see here."}})

RegisterNetEvent('displayNotification')
AddEventHandler('displayNotification', function(message)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(message)
    DrawNotification(false, false)
end)