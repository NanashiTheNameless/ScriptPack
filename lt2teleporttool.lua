local t = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
t.Name = "Teleport"
local m = game.Players.LocalPlayer:GetMouse()
m.Button1Down:connect(function()
if m.Target and t.Active then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = m.Hit + Vector3.new(0,2,0)
end
end)
