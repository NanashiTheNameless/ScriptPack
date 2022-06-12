--created by metabase
local Players=game:service'Players'
local Player=Players.LocalPlayer
local Mouse=Player:GetMouse''
local RenderStepped=game:service'RunService'.RenderStepped

local MeshId='http://www.roblox.com/asset?id=162005808'
local TextureId='http://www.roblox.com/asset/?id=165751746'

local BeeSpeed=12

local QHold=false
local EHold=false

Mouse.Button1Down:connect(function()
if Mouse.Target then
local Bee=Instance.new('Part',Player.Character)
Bee.CanCollide=false
Bee.Size=Vector3.new(5,5,5)
Bee.CFrame=Player.Character.Torso.CFrame
local BeeMesh=Instance.new('SpecialMesh',Bee)
BeeMesh.MeshType='FileMesh'
BeeMesh.MeshId=MeshId
BeeMesh.TextureId=TextureId
BeeMesh.Scale=Vector3.new(2,2,2)
local BodyVel=Instance.new('BodyVelocity',Bee)
BodyVel.maxForce=Vector3.new(math.huge,math.huge,math.huge)
local BodyGyro=Instance.new('BodyGyro',Bee)
BodyGyro.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
BodyGyro.P=2e4
coroutine.wrap(function()
RenderStepped:connect(function()
BodyGyro.cframe=CFrame.new(Bee.Position,Mouse.Hit.p)
BodyVel.velocity=Bee.CFrame.lookVector*BeeSpeed
end)
end)()
Bee.Touched:connect(function(p)
if p.Parent~=Player.Character and p.Parent:FindFirstChild'Humanoid'then
p.Parent:BreakJoints()
Bee:Destroy''
end
end)
end
end)


Mouse.KeyDown:connect(function(k)
local Key=k:lower''
if Key=='q'then
QHold=true
elseif Key=='e'then
EHold=true
end
end)

Mouse.KeyUp:connect(function(k)
local Key=k:lower''
if Key=='q'then
QHold=false
elseif Key=='e'then
EHold=false
end
end)

coroutine.wrap(function()
RenderStepped:connect(function()
if QHold then
if BeeSpeed>0 then
BeeSpeed=BeeSpeed-1
end
elseif EHold then
BeeSpeed=BeeSpeed+1
end
end)
end)()