rednet.open("back") -- cambia "back" por el lado del módem

print("Chat iniciado. Escribe tus mensajes:")
local targetId = <ID-de-la-Command-Computer> -- pon el ID correcto aquí

while true do
  io.write("> ")
  local msg = read()
  rednet.send(targetId, msg) -- envía mensaje

  -- Espera respuesta
  local senderId, response = rednet.receive(2) -- espera 2 segundos
  if senderId == targetId and response then
    print("Comando: " .. response)
  end
end
