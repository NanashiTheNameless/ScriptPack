--Made By Rafael
--Only Works In LocalPlayer

player = game.Players.LocalPlayer
repeat wait(0.0001) until player.Character
char = player.Character

local tool = Instance.new("Tool", player.Backpack)
tool.Name = "Sword"
tool.GripPos = Vector3.new(0, -1.3, 0)
local mainl = Instance.new("Part", tool)
mainl.Name = "Handle"
mainl.Size = Vector3.new(0.34, 4.2, 0.27)

tool.Activated:connect(function()
local mouse = player:GetMouse()
local explo = Instance.new("Part", workspace)
explo.Transparency = 1
explo.CanCollide = false
explo.Anchored = true
explo.CFrame = mouse.hit
local explod = Instance.new("Explosion", explo)
explod.Position = explo.Position
wait(2)
explo:Destroy()
explod:Destroy()
end)