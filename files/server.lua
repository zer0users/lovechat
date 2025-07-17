rednet.open("back") -- cambia "back" por el lado del módem

print("Esperando mensajes...")

while true do
  local senderId, msg = rednet.receive()
  print("Recibido: " .. msg)

  -- Responde con eco del mensaje (puedes cambiar esto)
  rednet.send(senderId, "Recibí: " .. msg)
end
