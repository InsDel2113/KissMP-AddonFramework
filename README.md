# KissMP-AddonFramework
 My KissMP server-side addon framework

# Setup/Tutorial
 To use addons with KissMP, make a folder in the "addons" directory, and put the files in this respiratory inside of it
 The "main.lua" is what KissMP always loads, so main.lua MUST be named main.lua
 All of you code also should (mostly) go in main.lua
 Remember to change "addonname" to the name of the folder that your main.lua resides in!
 
 # Documentation
  <p>input[""] holds a couple of variables for various events</p>
  <p>for vehicle events:</p>
  <p>input["client_id"]</p>
  <p>input["vehicle_id"]</p>
  <p>for player connect/disconnect events:</p>
  <p>input["client_id"]</p>
 <p> for chat event(s)</p>
  <p>input["client_id"]</p>
  <p>input["msg"]</p>
