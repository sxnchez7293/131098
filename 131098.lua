-- Importar la biblioteca Delta
local Delta = loadstring(game:HttpGet("https://raw.githubusercontent.com/DeltaScript/Delta/main/Source.lua"))()

-- Definir la función para obtener un objeto
local function obtenerObjeto(nombreObjeto)
    -- Buscar el objeto en el servidor
    local objeto = game:GetService("Workspace"):FindFirstChild(nombreObjeto)

    if objeto then
        -- Si el objeto existe, clonarlo y colocarlo en la posición del jugador
        local clon = objeto:Clone()
        clon.Parent = game:GetService("Workspace")
        clon.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        return true
    else
        return false
    end
end

-- Ejemplo de uso: obtener un trampolín llamado "Trampolin"
local nombreObjeto = "Trampolin"
if obtenerObjeto(nombreObjeto) then
    print("Objeto obtenido con éxito.")
else
    print("Objeto no encontrado.")
end
