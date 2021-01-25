# KissMP-AddonFramework
 My KissMP server-side addon framework

# Setup/Tutorial
 To use addons with KissMP, make a folder in the "addons" directory, and put the files in this respiratory inside of it
 The "main.lua" is what KissMP always loads, so main.lua MUST be named main.lua
 All of you code also should (mostly) go in main.lua
 Remember to change "addonname" to the name of the folder that your main.lua resides in!
 
 # Documentation
  input[""] holds a couple of variables
  for vehicle events:
  input["client_id"]
  input["vehicle_id"]
  for player connect/disconnect events:
  input["client_id"]
  for chat event(s)
  input["client_id"]
  input["msg"]
