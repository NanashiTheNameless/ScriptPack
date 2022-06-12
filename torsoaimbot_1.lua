_G.TorsoSize = 40
_G.TorsoOffset = 20
_G.Enabled = true
game:service'RunService'.Stepped:connect(function()
if _G.Enabled then
for i,v in pairs(game:service'Players':GetPlayers()) do
if v.TeamColor ~= game:service'Players'.LocalPlayer.TeamColor then
--if v.Name ~= game:service'Players'.LocalPlayer.Name then
pcall(function()
v.Character.Torso.CanCollide = false
v.Character.Torso.Size = Vector3.new(_G.TorsoSize,_G.TorsoSize,_G.TorsoSize)
v.Character.Torso.CFrame = v.Character.Head.CFrame * CFrame.new(0,_G.TorsoOffset,0)
end)
--end
end
end
end
end)