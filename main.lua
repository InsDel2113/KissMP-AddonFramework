-- table structure:
--[[
input["client_id"] - the client id
input["message"] - a message, used primarily in chat but maybe for errors and other stuff
input["vehicle_id"] - the vehicle id
please note, this is automatically assigned in event as client_id, and vehicle_id to avoid duplicate code
client_exec is what you call getName() on and other things - it's the executor of the command/event - it is also automatically assigned

--]]
addonname = "test" -- PLEASE FILL THIS OUT
-- the dofile requires this to load the hooks & helpers

function event(type, input) -- type = event type, input is a table of data
  client_id = nil
  client_exec = nil
  vehicle_id = nil
  if type == "OnChat" or type == "OnVehicleRemoved" or type == "OnVehicleSpawned" or type == "OnVehicleResetted" or type == "OnPlayerConnected" or type == "OnPlayerDisconnected" then
      -- ^-^ these types support these params, consider making these into a table of supported clientid events?
      client_id = input["client_id"]
      client_exec = connections[client_id]
      if type == "OnVehicleRemoved" or type == "OnVehicleSpawned" or type == "OnVehicleResetted" then
          vehicle_id = input["vehicle_id"]
      else
          vehicle_id = client_exec:getCurrentVehicle()
      end
  end
  -- we assign some basic vars if the types match
  -- we don't need to access the table every time and we don't need to have localized variables made for client_exec and vehicle_id constantly
  if type == "OnChat" then
  -- print(input["message"] .. " From " .. client_exec:getName())
  end
  if type == "OnVehicleSpawned" then
      server_broadcast(client_exec:getName() .. " spawned a vehicle")
  end
  if type == "OnVehicleRemoved" then
      server_broadcast(client_exec:getName() .. " removed a vehicle")
  end
  -- to add a new event, just do if type == "eventname" then print("your code") end
  -- client_id, client_exec, and vehicle_id are automatically set if the event supports them. (vehicle removed, spawned, and resetted - onplayer connected and disconnected, and onchat)
  -- server_broadcast exists to not repeat code. you use it like "server_broadcast("your content")" - that would put "[SERVER]: your content" in chat!
end
-- use helpers to put "helper" functions in for organization
dofile("./addons/" .. addonname .. "/helpers.lua")
-- use hooks to add more hooks to send to event()
dofile("./addons/" .. addonname .. "/hooks.lua")
