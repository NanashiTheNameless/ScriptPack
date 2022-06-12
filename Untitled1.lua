local LP = game.Players.LocalPlayer
local LPC = LP.Character
local charmodel = Instance.new('Model',script)
local mouse = LP:GetMouse()
local mover = Instance.new'Part'
mover.Parent = charmodel
if LP == nil then
LPC = mover
end