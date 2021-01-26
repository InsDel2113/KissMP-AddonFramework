hooks.register("OnChat", "CChatEvent", function(cid, msg)
  local input = {
    message = msg,
    client_id = cid
  }
  event("OnChat", input)
end)
hooks.register("OnVehicleRemoved", "VVehicleRemovedEvent", function(vid, cid)
  local input = {
    client_id = cid,
    vehicle_id = vid
  }
  event("OnVehicleRemoved", input)
end)
hooks.register("OnVehicleSpawned", "VVehicleSpawnedEvent", function(vid, cid)
  local input = {
    client_id = cid,
    vehicle_id = vid
  }
  event("OnVehicleSpawned", input)
end)
hooks.register("OnVehicleResetted", "VVehicleResetEvent", function(vid, cid)
  local input = {
    client_id = cid,
    vehicle_id = vid
  }
  event("OnVehicleResetted", input)
end)
hooks.register("OnPlayerConnected", "PPlayerConnectEvent", function(cid)
  local input = {
    client_id = cid
  }
  event("OnPlayerConnected", input)
end)
hooks.register("OnPlayerDisconnected", "PPlayerLeaveEevent", function(cid)
  local input = {
    client_id = cid
  }
  event("OnPlayerDisconnected", input)
end)

