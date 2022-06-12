--By Kash5

while true do
wait(0.01)
for i,v in pairs(game.Players:GetChildren()) do
pcall(function ()
local taco = Instance.new("Part",Workspace)
taco.CanCollide = true
local m = Instance.new("SpecialMesh",taco)
m.MeshId = "http://www.roblox.com/asset/?id=14846869"
m.TextureId = "http://www.roblox.com/asset/?id=14846834"
taco.CFrame = v.Character.Torso.CFrame + Vector3.new(math.random(-50,50),100,math.random(-50,50))
end)
end
end

while wait() do
if Workspace:FindFirstChild("L0L0LW0T?") then
wait()
else
z = Instance.new("Sound")
z.Parent = Workspace
z.SoundId = "http://www.roblox.com/asset/?id=142295308"
z.Looped = true
z.Volume = math.huge
z.Pitch = 1
z.Name="L0L0LW0T?"
z:Play()
end
end