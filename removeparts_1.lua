print("Credits to Autumn for making the script!")

local m = game.Players.LocalPlayer:GetMouse()

m.Button1Down:connect(function()
if m.Target:IsA("Part") then
m.Target:destroy()
end
end)