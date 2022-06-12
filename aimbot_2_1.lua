_G.HeadSize = 40
_G.HeadOffset = 20
_G.Enabled = true
game:service'RunService'.Stepped:connect(function()
if _G.Enabled then
for i,v in pairs(game:service'Players':GetPlayers()) do
if v.TeamColor ~= game:service'Players'.LocalPlayer.TeamColor then
--if v.Name ~= game:service'Players'.LocalPlayer.Name then
pcall(function()
v.Character.Head.CanCollide = false
v.Character.Head.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.Head.CFrame = v.Character.Torso.CFrame * CFrame.new(0,_G.HeadOffset,0)
end)
--end
end
end
end
end)