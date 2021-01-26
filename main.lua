addonname = "test" -- !! MAKE SURE YOU FILL THIS OUT !!
function event(type, input)
    local client_id = input["client_id"]
    if type == "OnVehicleSpawned" then
        server_broadcast(connections[client_id]:getName() .. " spawned or modified a vehicle")
    end
    -- example event handling
end
dofile("./addons/" .. addonname .. "/helpers.lua")
dofile("./addons/" .. addonname .. "/hooks.lua")
