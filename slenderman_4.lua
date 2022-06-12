game.Lighting.FogEnd = 32
game.Lighting.FogColor = Color3.new(0,0,0)
game.Lighting.TimeOfDay="00:00:00"
game.Workspace.Base.Material="Grass"
slendy = game.Players.YoungWarlock
slendychar = slendy.Character
slendychar.Head.face:remove()
local sh = slendychar.Head:Clone()
sh.CFrame = slendychar.Head.CFrame
sh.Transparency=0
slendychar.Head.Transparency=1
local m = Instance.new("Model",slendychar)
m.Name="Slenderman"
local h = Instance.new("Humanoid",m)
slenderhead.parent = m
slendychar.Shirt.ShirtTemplate="http://www.roblox.com/asset/?id=25158587"
local bc = slendychar:FindFirstChild("Body Colors")
bc.HeadColor = BrickColor.new(1)
bc.LeftArmColor = BrickColor.new(1)
bc.RightArmColor = BrickColor.new(1)
bc.LeftLegColor = BrickColor.new(1003)
bc.RightLegColor = BrickColor.new(1003)
players = game.Players:GetChildren()
for i,v in pairs(players) do
	v.CameraMode="LockFirstPerson"
end