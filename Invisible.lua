for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
local h = v:FindFirstChildOfClass("Decal")
if h then
h:Destroy()
end
if v.ClassName == "Part" then
v.Transparency = 1
end
if v.ClassName == "Accessory" then
v:Destroy()
end
end