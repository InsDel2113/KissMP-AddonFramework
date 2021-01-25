hooks.register("OnChat", "ChatEvent", function(client_id, msg)
    local input = {}
    input["client_id"] = client_id
    input["message"] = msg
    event("OnChat", input)
  end)
  hooks.register("OnVehicleRemoved", "VehicleRemovedEvent", function(vehicle_id, client_id)
    local input = {}
    input["client_id"] = client_id
    input["vehicle_id"] = vehicle_id
    event("OnVehicleRemoved", input)
  end)
  hooks.register("OnVehicleSpawned", "VehicleSpawnedEvent", function(vehicle_id, client_id)
    local input = {}
    input["client_id"] = client_id
    input["vehicle_id"] = vehicle_id
    event("OnVehicleSpawned", input)
  end)
  hooks.register("OnVehicleResetted", "VehicleResetEvent", function(vehicle_id, client_id)
    local input = {}
    input["client_id"] = client_id
    input["vehicle_id"] = vehicle_id
    event("OnVehicleResetted", input)
  end)
  hooks.register("OnPlayerConnected", "PlayerConnectEvent", function(client_id)
    local input = {}
    input["client_id"] = client_id
    event("OnPlayerConnected", input)
  end)
  hooks.register("OnPlayerDisconnected", "PlayerLeaveEevent", function(client_id)
    local input = {}
    input["client_id"] = client_id
    event("OnPlayerDisconnected", input)
  end)