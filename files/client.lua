rednet.open("back") -- cambia "back" si tu módem está en otro lado

print("Chat multijugador iniciado. Escribe y envía mensajes:")

-- Función para escuchar mensajes entrantes y mostrarlos
local function listen()
  while true do
    local senderId, message = rednet.receive()
    print("[" .. senderId .. "] dice: " .. message)
  end
end

-- Ejecutar escucha en un hilo separado para no bloquear el input
local listener = coroutine.create(listen)
coroutine.resume(listener)

-- Enviar mensajes
while true do
  io.write("> ")
  local msg = read()
  if msg ~= "" then
    -- Enviar mensaje a todos (broadcast = 0)
    rednet.broadcast(msg)
  end
end
