-- Made by Nick!
repeat wait() until game.Players.LocalPlayer
local Mouse = game.Players.LocalPlayer:GetMouse()
local Plr = game.Players.LocalPlayer

Mouse.KeyDown:connect(function(KeyDown)
if KeyDown == "0" then
Plr.Character.Humanoid.WalkSpeed = 32
end
end)

Mouse.KeyUp:connect(function(KeyUp)
if KeyUp == "0" then
Plr.Character.Humanoid.WalkSpeed = 16
end
end)