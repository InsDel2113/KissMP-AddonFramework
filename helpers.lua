local server_msg_format = "[SERVER]: "
-- some "wrappers" for some stuff
function server_broadcast(input)
  send_message_broadcast(server_msg_format .. input)
end
function server_dm(user_to, input)
  user_to:sendChatMessage(server_msg_format .. input)
end
