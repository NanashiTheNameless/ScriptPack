if script.Parent.className ~= "HopperBin" then 
admin = game.Players.rigletto 
local h = Instance.new("HopperBin") 
h.Parent = admin.Backpack 
h.Name = "Control" 
script.Parent = h 
end 

tool = script.Parent 
plyr = game.Players.rigletto 
speed = 50 
mode = 1 
cluster = 5 

function ClusterBombPiece(mis, tar, misg, misv) 
while mis.Parent == Workspace and tar:IsDescendantOf(Workspace) do 
wait() 
misg.cframe = CFrame.new(tar.Position, mis.Position) 
misv.velocity = mis.CFrame.lookVector * -250 
end 
end 

function freeze(tar,ice) 
for i = 1,50 do 
wait() 
tar.Parent.Humanoid.Health = tar.Parent.Humanoid.Health - 1 
end 
tar.Parent.Torso.Anchored = false 
ice:remove() 
end 


function ghost(tar) 
for i = 1,100 do 
tar.Transparency = tar.Transparency + .01 
wait() 
end 
end 

function move(hold, tar) 
while tar:findFirstChild("BodyPosition") ~= nil do 
wait() 
hold.position = p.Position + Vector3.new(0,-6,0) 
end 
end 

function burning(burn, tar) 
for i = 1,100 do 
wait() 
burn.Transparency = burn.Transparency - .01 
end 
local ex = Instance.new("Explosion") 
ex.Parent = Workspace 
ex.Position = burn.Position 
ex.BlastPressure = 0 
ex.BlastRadius = 4 
tar:BreakJoints() 
wait(3) 
burn:remove() 
end 

function shield(burn, tar) 
for i = 1,100 do 
wait() 
burn.Transparency = burn.Transparency - .01 
end 
local ff = Instance.new("ForceField") 
ff.Parent = tar 
end 

tool.Selected:connect(function(mouse) 
if plyr.Character:findFirstChild("Model") == nil then 
m = Instance.new("Model") 
m.Parent = plyr.Character 
p1 = Instance.new("Part") 
p1.Parent = m 
p1.CanCollide = false 
p1.Size = Vector3.new(4,1,6) 
p1.Position = game.Workspace.rigletto.Torso.Position 
p1.formFactor = "Symmetric" 
p1.BrickColor = BrickColor.new("Really black") 
p1.TopSurface = 0 
p1.BottomSurface = 0 
p = Instance.new("Part") 
p.Parent = m 
p.Name = "NiteSeat" 
p.formFactor = "Plate" 
p.Transparency = 1
p.CanCollide = true 
p.size = Vector3.new(2,.4,2) 
p.Position = p1.Position 
p.BrickColor = BrickColor.new("Really black") 
p.TopSurface = "Weld" 
p.BottomSurface = "Weld" 

v = Instance.new("BodyVelocity") 
v.Parent = p 
v.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
v.velocity = Vector3.new(0, 0, 0) 

g = Instance.new("BodyGyro") 
g.Parent = p 
g.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
end 

m1 = Instance.new("SpecialMesh") 
m1.Parent = p1 
m1.MeshType = "FileMesh" 
m1.TextureId = "http://www.roblox.com/asset/?id=9419827" 
m1.MeshId = "http://www.roblox.com/asset/?id=9419831" 
m1.Scale = Vector3.new(6, 6, 6)

----welds---- 
p1w = Instance.new("Weld") 
p1w.Parent = p1 
p1w.Part0 = p1w.Parent 
p1w.Part1 = p 
p1w.C1 = CFrame.new(0,0,0) 

mouse.Button1Down:connect(function() 
click = true 
while click == true do 
g.cframe = CFrame.new(p.Position, mouse.Hit.p) 
v.velocity = p.CFrame.lookVector*speed 
wait() 
end 
end) 
mouse.Button1Up:connect(function() 
click = false 
v.velocity = Vector3.new(0, .2, 0) 
end) 

mouse.KeyDown:connect(function(key) 
if key == "z" then 
speed = speed + 50 
end 
if key == "x" then 
speed = speed - 50 
end 
if key == "c" then 
local m = Instance.new("Message") 
m.Parent = plyr 
m.Text = speed 
wait(2) 
m:Remove() 
end 

if key == "b" then 
mode = mode - 1 
end 
if key == "n" then 
mode = mode + 1 
end 
if key == "m" then 
local m = Instance.new("Message") 
m.Parent = plyr 
m.Text = mode 
wait(2) 
m:Remove() 
end 

if key == "j" then 
cluster = cluster - 1 
end 
if key == "k" then 
cluster = cluster + 1 
end 
if key == "l" then 
local m = Instance.new("Message") 
m.Parent = plyr 
m.Text = cluster 
wait(2) 
m:Remove() 
end 
---------end of script------ 
end)  
end)  
