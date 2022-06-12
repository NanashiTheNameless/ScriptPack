local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local UserInputService = game:GetService('UserInputService')

local HoldingControl = false

Mouse.Button1Down:connect(function()
if HoldingControl then
Player.Character:MoveTo(Mouse.Hit.p)
end
end)

UserInputService.InputBegan:connect(function(Input, Processed)
if Input.UserInputType == Enum.UserInputType.Keyboard then
if Input.KeyCode == Enum.KeyCode.LeftControl then
HoldingControl = true
elseif Input.KeyCode == Enum.KeyCode.RightControl then
HoldingControl = true 
end
end
end)

UserInputService.InputEnded:connect(function(Input, Processed)
if Input.UserInputType == Enum.UserInputType.Keyboard then
if Input.KeyCode == Enum.KeyCode.LeftControl then
HoldingControl = false
elseif Input.KeyCode == Enum.KeyCode.RightControl then
HoldingControl = false
end
end
end)