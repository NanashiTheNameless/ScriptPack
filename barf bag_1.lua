--http://www.roblox.com/asset/?id=16657069
who = "yfc" 
players = game:GetService('Players') 
me = players[who] 
char = me.Character 

local colors = {"Reddish brown", "Light orange", "Bright yellow", "Dark green", "Bright green"} 

pcall(function() char.Barf:remove() end) 
local mod = Instance.new("Model", char) 
mod.Name = "Barf" 

local torso = Instance.new("Part") 
torso.Parent = mod 
torso.Anchored = false 
torso.CanCollide = false 
torso.BrickColor = BrickColor.new("Reddish brown") 
torso.Size = Vector3.new(2, 2, 1) 
torso.CFrame = CFrame.new(0, 0, 0) 
torso:BreakJoints() 
local torsom = Instance.new("SpecialMesh") 
torsom.Parent = torso 
torsom.MeshType = "FileMesh" 
torsom.MeshId = "http://www.roblox.com/asset/?id=16657069" 
torsom.Scale = Vector3.new(0.5, 0.5, 0.5) 
local torsow = Instance.new("Weld") 
torsow.Parent = mod 
torsow.Part0 = torso 
torsow.Part1 = char.Torso 
torsow.C0 = CFrame.new(0, 0.25, 1.5) * CFrame.Angles(0, 0, 0) 
local larm = Instance.new("Weld") 
larm.Parent = mod 
larm.Part0 = char["Left Arm"] 
larm.Part1 = torso 
larm.C0 = CFrame.new(1, -1, -0.5) * CFrame.Angles(-0.5, 0, -0.25) 
local rarm = Instance.new("Weld") 
rarm.Parent = mod 
rarm.Part0 = char["Right Arm"] 
rarm.Part1 = torso 
rarm.C0 = CFrame.new(-1, -1, -0.5) * CFrame.Angles(-0.5, 0, 0.25)
local head = Instance.new("Weld") 
head.Parent = mod 
head.Part0 = char["Head"] 
head.Part1 = char["Torso"] 
head.C0 = CFrame.new(0, -1.5, 0) * CFrame.Angles(0, 0, 0)

while wait(math.random(3, 10)) do 
for i = 0, 1, 0.1 do 
torsow.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(40*i), 0, 0)
head.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20*i), 0, 0)
wait() 
end 
bv = Instance.new("BodyAngularVelocity")
bv.Parent = char.Torso
bv.angularvelocity = Vector3.new(0, 20, 0) 
bv.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
bg = Instance.new("BodyGyro")
bg.Parent = char.Torso
bg.maxTorque = Vector3.new(0, 0, 0) 
for i = 0, math.random(5, 10), 0.1 do 
local barf = Instance.new("Part") 
barf.formFactor = "Custom" 
barf.BrickColor = BrickColor.new(colors[math.random(1, #colors)]) 
barf.Parent = mod 
barf.Name = "BARF" 
barf.Size = Vector3.new(math.random(0.2, 1), math.random(0.2, 1), math.random(0.2, 1)) 
barf.CanCollide = false 
barf.CFrame = torso.CFrame + Vector3.new(math.random(-0.5, 0.5), math.random(-0.5, 0.5), math.random(-0.5, 0.5)) 
local bm = Instance.new("BlockMesh", barf) 
bm.Bevel = math.random(0.05, 0.5) 
barf:BreakJoints() 
barf.CanCollide = true 
wait() 
end 
wait(math.random(0.5, 1.5)) 
for i = 0, 1, 0.1 do 
torsow.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(40-40*i), 0, 0)
head.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20+20*i), 0, 0)
wait() 
end 
bv:remove() 
bg:remove() 
for _,v in pairs(mod:GetChildren()) do 
if v.Name == "BARF" then 
v:remove() 
end 
wait() 
end 
end 