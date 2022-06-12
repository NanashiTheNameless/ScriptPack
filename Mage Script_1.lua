--[[                                              
Script shared by eletronix                                              ]]

if script.Parent.className ~= "HopperBin" then 
h = Instance.new("HopperBin") 
local admin = game.Players.LocalPlayer
h.Name = "Staff" 
script.Parent = h 
h.Parent = admin.Backpack 
end 

bin = script.Parent 
player = bin.Parent.Parent.Character 
rarm = player["Right Arm"] 
larm = player["Left Arm"] 
player.Humanoid.MaxHealth = 50 
visible = true 
parts = {} 

function Check(pos) 
local hurt = false 
local players = game.Players:GetChildren() 
for i = 1, #players do 
if players[i].Character and hurt == false then 
local parts = players[i].Character:GetChildren() 
for q = 1, #parts do 
if parts[q].className == "Part" and hurt == false then 
local range = math.sqrt(math.pow(parts[q].Size.Z, 2) + math.sqrt(math.pow(parts[q].Size.X, 2) + math.pow(parts[q].Size.Y, 2))) 
if (found - parts[q].Position).magnitude <= range then 
hurt = true 
character = parts[q].Parent 
humanoid = character.Humanoid 
character.Torso.CFrame = character.Torso.CFrame*CFrame.Angles(2,2,2)--Oen, here you put what you want it to do. For example, humanoid:TakeDamage(25) :D 
humanoid:TakeDamage(50) 
humanoid.Sit = true 
end 
end 
end 
end 
end 
end 

function clean(min,thing2) 
while min.Humanoid.Health ~= 0 do 
local a = game.Players:GetChildren() 
for i = 1, #a do 
wait() 
if (a[i].Character.Torso.Position - thing2.Position).magnitude < 5 then 
a[i].Character.Humanoid:TakeDamage(5) 
end 
end 
wait() 
end 
min:remove() 
end 

function fire(v) 
local spawnPos = (tip2.CFrame * CFrame.new(0, 1, 0)).p 
local HitSpot = RayCast(spawnPos, v) 
local distance = (HitSpot - spawnPos).magnitude 
start = nil 
finish = nil 
local num = math.random(3, 10) 
for i = distance / num, distance, distance / num do 
if start == nil then 
start = tip2.CFrame.p 
elseif start ~= nil then 
start = finish 
end 
finish = CFrame.new(spawnPos, HitSpot) 
if i ~= distance then 
finish = (finish * CFrame.new(math.random(-5, 5), math.random(-1, 1), -i)).p 
else 
finish = HitSpot 
end 
local P = Instance.new("Part") 
P.Name = "Magic" 
P.formFactor = 0 
P.Size = Vector3.new(1, 1, (start - finish).magnitude) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.new(1006) 
P.Anchored = true 
P.CanCollide = false 
P.TopSurface = "Smooth" 
P.BottomSurface = "Smooth" 
P.Transparency = 0 
m = Instance.new("BlockMesh") 
m.Scale = Vector3.new(.25, .25, 1) 
m.Offset = Vector3.new(0, -1000, 0) 
m.VertexColor = Vector3.new(math.huge, math.huge, math.huge) 
m.Parent = P 
P.CFrame = CFrame.new(start, finish) 
P.CFrame = P.CFrame * CFrame.new(0, 1000, P.Size.Z / -2) 
table.insert(parts, P) 
game:GetService("Debris"):AddItem(P, 2.5) 
end 
end 

function RayCast(start, v) 

local ray = Instance.new("Part") 
ray.Parent = game.Workspace 
ray.Anchored = true 
ray.CFrame = CFrame.new(start) 
ray.Size = Vector3.new(1,1,1) 
ray.Shape = 0 
ray.BottomSurface = 0 
ray.TopSurface = 0 
ray.Name = "Magic" 
ray.Elasticity = 0 
ray.Reflectance = 0 
ray.Friction = 0 
ray.Transparency = 0 

local finding = true 
far = 1000 

while finding do 
far = far - 1 
if far > 0 then 
local see = ray.Position + v 
ray.Position = ray.Position + v 
if ray.Position ~= see then 
finding = false 
found = see 
end 
else 
finding = false 
found = ray.Position 
end 
end 

ray:remove() 
Check(found) 
return found 
end 

function kill(tar) 
while tar.Parent.Humanoid.Health ~= 0 do 
tar.Parent.Humanoid.Health = tar.Parent.Humanoid.Health -1 
wait() 
end 
end 

bin.Selected:connect(function(mouse) 
if player.Torso:findFirstChild("Right Shoulder") ~= nil then 
rs = player.Torso["Right Shoulder"] 
rs.Part1 = nil 
end 
if player.Torso:findFirstChild("Left Shoulder") ~= nil then 
ls = player.Torso["Left Shoulder"] 
ls.Part1 = nil 
end 
if player:FindFirstChild("check") == nil then 
rns = Instance.new("Weld") 
rns.Parent = player.Torso 
rns.Part0 = rns.Parent 
rns.Part1 = player["Right Arm"] 
rns.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.05)) 
lns = Instance.new("Weld") 
lns.Parent = player.Torso 
lns.Part0 = lns.Parent 
lns.Part1 = player["Left Arm"] 
lns.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.05)) 
rblade = Instance.new("Part") 
rblade.BrickColor = BrickColor.new(1003) 
rblade.Name ="check" 
rblade.Parent = player 
rblade.CanCollide = false 
rblade.Size = Vector3.new(1,8,1) 
rblade.formFactor = "Symmetric" 
rblade.TopSurface = 0 
rblade.BottomSurface = 0 
rbm = Instance.new("BlockMesh") 
rbm.Parent = rblade 
rbm.Scale = Vector3.new(.4,1,.4) 
rbw = Instance.new("Weld") 
rbw.Parent = rblade 
rbw.Part0 = rarm 
rbw.Part1 = rblade 
rbw.C1 = CFrame.new(0,0,1) *CFrame.Angles((math.pi*.5),(math.pi*0),(math.pi*0)) 
tip = Instance.new("Part") 
tip.CanCollide = false 
tip.TopSurface = 0 
tip.BottomSurface = 0 
tip.Parent = rblade 
tip.Size = Vector3.new(1,1,1) 
tip.formFactor = "Symmetric" 
tip.BrickColor = BrickColor.new(1004) 
tipm = Instance.new("BlockMesh") 
tipm.Scale = Vector3.new(.41,.2,.41) 
tipm.Parent = tip 
tipw = Instance.new("Weld") 
tipw.Parent = rblade 
tipw.Part0 = rblade 
tipw.Part1 = tip 
tipw.C1 = CFrame.new(0,3.5,0) 
tip2 = Instance.new("Part") 
tip2.CanCollide = false 
tip2.TopSurface = 0 
tip2.BottomSurface = 0 
tip2.Parent = rblade 
tip2.Size = Vector3.new(1,1,1) 
tip2.formFactor = "Symmetric" 
tip2.BrickColor = BrickColor.new(1004) 
tip2m = Instance.new("BlockMesh") 
tip2m.Scale = Vector3.new(.41,.2,.41) 
tip2m.Parent = tip2 
tip2w = Instance.new("Weld") 
tip2w.Parent = rblade 
tip2w.Part0 = rblade 
tip2w.Part1 = tip2 
tip2w.C1 = CFrame.new(0,-3.5,0) 
tip3 = Instance.new("Part") 
tip3.CanCollide = false 
tip3.TopSurface = 0 
tip3.BottomSurface = 0 
tip3.Parent = rblade 
tip3.Size = Vector3.new(1,1,1) 
tip3.formFactor = "Symmetric" 
tip3.BrickColor = BrickColor.new(1004) 
tip3m = Instance.new("BlockMesh") 
tip3m.Scale = Vector3.new(.41,.2,.41) 
tip3m.Parent = tip3 
tip3w = Instance.new("Weld") 
tip3w.Parent = rblade 
tip3w.Part0 = rblade 
tip3w.Part1 = tip3 
tip3w.C1 = CFrame.new(0,-.5,0) 
tip4 = Instance.new("Part") 
tip4.CanCollide = false 
tip4.TopSurface = 0 
tip4.BottomSurface = 0 
tip4.Parent = rblade 
tip4.Size = Vector3.new(1,1,1) 
tip4.formFactor = "Symmetric" 
tip4.BrickColor = BrickColor.new(1004) 
tip4m = Instance.new("BlockMesh") 
tip4m.Scale = Vector3.new(.41,.2,.41) 
tip4m.Parent = tip4 
tip4w = Instance.new("Weld") 
tip4w.Parent = rblade 
tip4w.Part0 = rblade 
tip4w.Part1 = tip4 
tip4w.C1 = CFrame.new(0,.5,0) 
tip5 = Instance.new("Part") 
tip5.CanCollide = false 
tip5.TopSurface = 0 
tip5.BottomSurface = 0 
tip5.Parent = rblade 
tip5.Size = Vector3.new(1,1,1) 
tip5.formFactor = "Symmetric" 
tip5.BrickColor = BrickColor.new(1004) 
tip5m = Instance.new("BlockMesh") 
tip5m.Scale = Vector3.new(.41,.2,.41) 
tip5m.Parent = tip5 
tip5w = Instance.new("Weld") 
tip5w.Parent = rblade 
tip5w.Part0 = rblade 
tip5w.Part1 = tip5 
tip5w.C1 = CFrame.new(0,0,0) 
tip6 = Instance.new("Part") 
tip6.CanCollide = false 
tip6.TopSurface = 0 
tip6.BottomSurface = 0 
tip6.Parent = rblade 
tip6.Size = Vector3.new(1,1,1) 
tip6.formFactor = "Symmetric" 
tip6.BrickColor = BrickColor.new(1004) 
tip6m = Instance.new("BlockMesh") 
tip6m.Scale = Vector3.new(.05,.6,.41) 
tip6m.Parent = tip6 
tip6w = Instance.new("Weld") 
tip6w.Parent = rblade 
tip6w.Part0 = rblade 
tip6w.Part1 = tip6 
tip6w.C1 = CFrame.new(0,-3,0) 
tip7 = Instance.new("Part") 
tip7.CanCollide = false 
tip7.TopSurface = 0 
tip7.BottomSurface = 0 
tip7.Parent = rblade 
tip7.Size = Vector3.new(1,1,1) 
tip7.formFactor = "Symmetric" 
tip7.BrickColor = BrickColor.new(1004) 
tip7m = Instance.new("BlockMesh") 
tip7m.Scale = Vector3.new(.41,.6,.05) 
tip7m.Parent = tip7 
tip7w = Instance.new("Weld") 
tip7w.Parent = rblade 
tip7w.Part0 = rblade 
tip7w.Part1 = tip7 
tip7w.C1 = CFrame.new(0,-3,0) 
tip6a = Instance.new("Part") 
tip6a.CanCollide = false 
tip6a.TopSurface = 0 
tip6a.BottomSurface = 0 
tip6a.Parent = rblade 
tip6a.Size = Vector3.new(1,1,1) 
tip6a.formFactor = "Symmetric" 
tip6a.BrickColor = BrickColor.new(1004) 
tip6am = Instance.new("BlockMesh") 
tip6am.Scale = Vector3.new(.15,.6,.41) 
tip6am.Parent = tip6a 
tip6aw = Instance.new("Weld") 
tip6aw.Parent = rblade 
tip6aw.Part0 = rblade 
tip6aw.Part1 = tip6a 
tip6aw.C1 = CFrame.new(0,-2.5,0) 
tip7a = Instance.new("Part") 
tip7a.CanCollide = false 
tip7a.TopSurface = 0 
tip7a.BottomSurface = 0 
tip7a.Parent = rblade 
tip7a.Size = Vector3.new(1,1,1) 
tip7a.formFactor = "Symmetric" 
tip7a.BrickColor = BrickColor.new(1004) 
tip7am = Instance.new("BlockMesh") 
tip7am.Scale = Vector3.new(.41,.6,.15) 
tip7am.Parent = tip7a 
tip7aw = Instance.new("Weld") 
tip7aw.Parent = rblade 
tip7aw.Part0 = rblade 
tip7aw.Part1 = tip7a 
tip7aw.C1 = CFrame.new(0,-2.5,0) 
tip6b = Instance.new("Part") 
tip6b.CanCollide = false 
tip6b.TopSurface = 0 
tip6b.BottomSurface = 0 
tip6b.Parent = rblade 
tip6b.Size = Vector3.new(1,1,1) 
tip6b.formFactor = "Symmetric" 
tip6b.BrickColor = BrickColor.new(1004) 
tip6bm = Instance.new("BlockMesh") 
tip6bm.Scale = Vector3.new(.05,.6,.41) 
tip6bm.Parent = tip6b 
tip6bw = Instance.new("Weld") 
tip6bw.Parent = rblade 
tip6bw.Part0 = rblade 
tip6bw.Part1 = tip6b 
tip6bw.C1 = CFrame.new(0,-2,0) 
tip7b = Instance.new("Part") 
tip7b.CanCollide = false 
tip7b.TopSurface = 0 
tip7b.BottomSurface = 0 
tip7b.Parent = rblade 
tip7b.Size = Vector3.new(1,1,1) 
tip7b.formFactor = "Symmetric" 
tip7b.BrickColor = BrickColor.new(1004) 
tip7bm = Instance.new("BlockMesh") 
tip7bm.Scale = Vector3.new(.41,.6,.05) 
tip7bm.Parent = tip7b 
tip7bw = Instance.new("Weld") 
tip7bw.Parent = rblade 
tip7bw.Part0 = rblade 
tip7bw.Part1 = tip7b 
tip7bw.C1 = CFrame.new(0,-2,0) 

rblade.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
if hit.Parent.Humanoid.MaxHealth > 100 then 
hit.Parent.Humanoid.MaxHealth = 100 
end 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(5,15) 
hit.Parent.Humanoid.Sit = true 
for i = 1, (math.random(1,3)) do 
wait() 
local bleed = Instance.new("Part") 
bleed.formFactor = "Symmetric" 
bleed.Size = Vector3.new(1,1,1) 
bleed.BrickColor = BrickColor.new(1004) 
bleed.TopSurface = 0 
bleed.BottomSurface = 0 
bleed.Reflectance = .1 
bleed.Transparency = 0 
bleed.Parent = Workspace 
bleed.Position = rblade.Position 
local bleedm = Instance.new("SpecialMesh") 
bleedm.MeshType = "Sphere" 
bleedm.Scale = Vector3.new(.5,.5,.5) 
bleedm.Parent = bleed 
game:GetService("Debris"):AddItem(bleed, 5) 
end 
end 
end 
end) 

end 
-- animations-- 
right = rns 
staff = rblade 
left = lns 
up = "right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.05))wait()right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05))wait()right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1))wait()right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15))wait()right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2))wait()right.C1 = CFrame.new(-1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25))" 
down = "right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2))wait()right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15))wait()right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1))wait()right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05))wait()right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.05))" 
-- end of staff 
mouse.KeyDown:connect(function(key) 
-- moves 
if key == "z" then 
if rbw.Part0 == rarm then 
rbw.Part0 = larm 
end 
end 
if key == "x" then 
if rbw.Part0 == larm then 
rbw.Part0 = rarm 
end 
end 
if key == "e" then 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.05)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
wait() 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
wait() 
right.C1 = CFrame.new(-1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
wait(.5) 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.05)) 
elseif key == "q" then 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.05)) 
wait() 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
left.C1 = CFrame.new(1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait(.5) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.05)) 
elseif key == "r" then 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.05)) 
wait() 
left.C1 = CFrame.new(1.42,0.62,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*.3)) 
wait() 
left.C1 = CFrame.new(1.29,0.84,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*.35)) 
wait() 
left.C1 = CFrame.new(1.16,1.06,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*.4)) 
wait() 
left.C1 = CFrame.new(1.03,1.28,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*.45)) 
wait() 
left.C1 = CFrame.new(0.9,1.5,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*.5)) 
wait(.2) 
left.C1 = CFrame.new(0.9,1.5,-0.15)*CFrame.Angles((math.pi*-.15),(math.pi*0),(math.pi*.5)) 
wait() 
left.C1 = CFrame.new(0.9,1.5,-0.30)*CFrame.Angles((math.pi*-.30),(math.pi*0),(math.pi*.5)) 
wait() 
left.C1 = CFrame.new(0.9,1.5,-0.45)*CFrame.Angles((math.pi*-.45),(math.pi*0),(math.pi*.5)) 
wait() 
left.C1 = CFrame.new(0.9,1.5,-0.60)*CFrame.Angles((math.pi*-.60),(math.pi*0),(math.pi*.5)) 
wait() 
left.C1 = CFrame.new(0.9,1.5,-0.75)*CFrame.Angles((math.pi*-.75),(math.pi*0),(math.pi*.5)) 
wait(.1) 
left.C1 = CFrame.new(1.03,1.28,0)*CFrame.Angles((math.pi*-.60),(math.pi*0),(math.pi*.45)) 
wait() 
left.C1 = CFrame.new(1.16,1.06,0)*CFrame.Angles((math.pi*-.45),(math.pi*0),(math.pi*.4)) 
wait() 
left.C1 = CFrame.new(1.29,0.84,0)*CFrame.Angles((math.pi*-.30),(math.pi*0),(math.pi*.35)) 
wait() 
left.C1 = CFrame.new(1.42,0.62,0)*CFrame.Angles((math.pi*-.15),(math.pi*0),(math.pi*.3)) 
wait() 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.05)) 
elseif key == "t" then 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.05)) 
wait() 
right.C1 = CFrame.new(-1.42,0.62,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*-.3)) 
wait() 
right.C1 = CFrame.new(-1.29,0.84,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*-.35)) 
wait() 
right.C1 = CFrame.new(-1.16,1.06,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*-.4)) 
wait() 
right.C1 = CFrame.new(-1.03,1.28,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*-.45)) 
wait() 
right.C1 = CFrame.new(-0.9,1.5,0)*CFrame.Angles((math.pi*0),(math.pi*0),(math.pi*-.5)) 
wait(.2) 
right.C1 = CFrame.new(-0.9,1.5,-0.15)*CFrame.Angles((math.pi*-.15),(math.pi*0),(math.pi*-.5)) 
wait() 
right.C1 = CFrame.new(-0.9,1.5,-0.30)*CFrame.Angles((math.pi*-.30),(math.pi*0),(math.pi*-.5)) 
wait() 
right.C1 = CFrame.new(-0.9,1.5,-0.45)*CFrame.Angles((math.pi*-.45),(math.pi*0),(math.pi*-.5)) 
wait() 
right.C1 = CFrame.new(-0.9,1.5,-0.60)*CFrame.Angles((math.pi*-.60),(math.pi*0),(math.pi*-.5)) 
wait() 
right.C1 = CFrame.new(-0.9,1.5,-0.75)*CFrame.Angles((math.pi*-.75),(math.pi*0),(math.pi*-.5)) 
wait(.1) 
right.C1 = CFrame.new(-1.03,1.28,0)*CFrame.Angles((math.pi*-.60),(math.pi*0),(math.pi*-.45)) 
wait() 
right.C1 = CFrame.new(-1.16,1.06,0)*CFrame.Angles((math.pi*-.45),(math.pi*0),(math.pi*-.4)) 
wait() 
right.C1 = CFrame.new(-1.29,0.84,0)*CFrame.Angles((math.pi*-.30),(math.pi*0),(math.pi*-.35)) 
wait() 
right.C1 = CFrame.new(-1.42,0.62,0)*CFrame.Angles((math.pi*-.15),(math.pi*0),(math.pi*-.3)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.05)) 
end 
-- spells------------------------------------------------------------------------------------- 
if key == "f" then 
loadstring(up)() 
local wall = Instance.new("Part") 
wall.Parent = Workspace 
wall.Size = Vector3.new(10,1,10) 
wall.formFactor = "Symmetric" 
wall.CFrame = player.Torso.CFrame *CFrame.new(0,-3.42,0) 
wall.TopSurface = 0 
wall.BottomSurface = 0 
wall.Anchored = true 
wall.BrickColor = BrickColor.new(1006) 
wall.Material = "Ice" 
game:GetService("Debris"):AddItem(wall, 15) 
while wall:IsDescendantOf(Workspace) do 
wait() 
wall.CFrame = player.Torso.CFrame*CFrame.new(0,-3.42,0) 
end 
wait(.5) 
loadstring(down)() 
end 
if key == "g" then 
if mouse.Target then 
if mouse.Target.Parent:findFirstChild("Humanoid") ~= nil then 
local tar = mouse.Target 
loadstring(up)() 
local spark = Instance.new("Explosion") 
spark.BlastRadius = 4 
spark.BlastPressure = 0 
spark.Parent = Workspace 
spark.Position = tip2.Position 
local ptar = tar.Parent 
local mis = Instance.new("Part") 
mis.formFactor = "Symmetric" 
mis.Shape = "Ball" 
mis.BrickColor = BrickColor.new(1006) 
mis.Transparency = .5 
mis.Size = Vector3.new(1,1,1) 
mis.Parent = Workspace 
mis.CFrame = staff.CFrame * CFrame.new(0,0,-15) 
local misv = Instance.new("BodyVelocity") 
misv.Parent = mis 
misv.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
misv.velocity = mis.CFrame.lookVector * 50 
local misg = Instance.new("BodyGyro") 
misg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
misg.Parent = mis 
misg.cframe = CFrame.new(tar.Position, mis.Position) 
mis.Touched:connect(function(hit) 
if hit.Name == tar.Name then 
local ex = Instance.new("Explosion") 
ex.Parent = Workspace 
ex.Position = mis.Position 
mis:remove() 
end 
end) 
wait(.5) 
loadstring(down)() 
while mis.Parent == Workspace and tar:IsDescendantOf(Workspace) do 
wait() 
misg.cframe = CFrame.new(tar.Position, mis.Position) 
local fire = Instance.new("Explosion") 
fire.Parent = Workspace 
fire.Position = mis.Position 
fire.BlastRadius = 2 
misv.velocity = mis.CFrame.lookVector * -18 
end 
mis:remove() 
end 
end 
end 
if key == "b" then 
loadstring(up)() 
for i = 1,100 do 
wait() 
local p = Instance.new("Part") 
p.BrickColor = BrickColor.new(1006) 
p.Name ="check" 
p.Parent = Workspace 
p.CanCollide = false 
p.Size = Vector3.new(1,3,1) 
p.CFrame = player.Torso.CFrame + Vector3.new(math.random(-5,5),math.random(-2,4),math.random(-5,5)) 
p.formFactor = "Symmetric" 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Transparency = .5 
local pm = Instance.new("SpecialMesh") 
pm.Parent = p 
pm.MeshType = "Sphere" 
pm.Scale = Vector3.new((.2+(.05*i)),(.2+(.05*i)),(.2+(.05*i))) 
local pbv = Instance.new("BodyVelocity") 
pbv.Parent = p 
pbv.velocity = Vector3.new(0,10,0) 
game:GetService("Debris"):AddItem(p, .2) 
player.Humanoid.Health = player.Humanoid.Health +2 
end 
player.Torso.CFrame = mouse.Hit + Vector3.new(0,4,0) 
wait(.5) 
loadstring(down)() 
end 
if key == "v" then 
local tar = mouse.Target 
if tar ~= nil then 
if (tip6a.Position - tar.Position).magnitude < 100 then 
loadstring(up)() 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Cyan") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(tip6a.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((tip6a.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
local ice = Instance.new("Part") 
ice.Position = tar.Parent.Torso.Position 
ice.Anchored = true 
tar.Parent.Torso.Anchored = true 
ice.BrickColor = BrickColor.new("Cyan") 
ice.Size = Vector3.new(4,6,4) 
ice.Reflectance = .2 
ice.TopSurface = 0 
ice.BottomSurface = 0 
ice.Transparency = .5 
ice.Parent = tar.Parent 
coroutine.resume(coroutine.create(function() kill(tar) end)) 
end 
wait(.1) 
shot:remove() 
end 
wait(.5) 
loadstring(down)() 
end 
end 
if key == "c" then 
local tar = mouse.Target 
if tar ~= nil then 
if (tip6a.Position - tar.Position).magnitude < 100 then 
loadstring(up)() 
right.C1 = CFrame.new(-1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
local shot = Instance.new("Part") 
shot.Parent = Workspace 
shot.BrickColor = BrickColor.new("Royal purple") 
shot.formFactor = "Symmetric" 
shot.Size = Vector3.new(1,1,1) 
shot.Anchored = true 
local shotm = Instance.new("BlockMesh") 
shotm.Scale = Vector3.new(.2,.2,(tip6a.Position - mouse.Hit.p).magnitude) 
shot.CFrame = CFrame.new(((tip6a.Position + mouse.Hit.p)/2),mouse.Hit.p) 
shotm.Parent = shot 
if tar.className == "Part" then 
local ice = Instance.new("Part") 
ice.CFrame = tar.CFrame 
ice.Size = tar.Size + Vector3.new(1,1,1) 
ice.Anchored = true 
tar.Anchored = true 
ice.BrickColor = BrickColor.new("Cyan") 
ice.Reflectance = .2 
ice.TopSurface = 0 
ice.BottomSurface = 0 
ice.Transparency = .5 
ice.Parent = tar 
ice.Friction = 0 
game:GetService("Debris"):AddItem(ice, 10) 
wait(.1) 
shot:remove() 
wait(.5) 
loadstring(down)() 
end 
end 
end 
end 
if key == "h" then 
loadstring(up)() 
local cf = CFrame.new(tip2.Position, mouse.Hit.p) 
local v = cf.lookVector 
local dx = (math.random() - .5) * .02 
local dy = (math.random() - .5) * .02 
local dz = (math.random() - .5) * .02 
parts = {} 
local f = coroutine.create(function() fire(Vector3.new(v.x + dx, v.y + dy, v.z + dz)) end) 
coroutine.resume(f) 
wait(.5) 
loadstring(down)() 
end 
if key == "y" then 
loadstring(up)() 
for i = 2,101 do 
wait() 
local boulder = Instance.new("Part") 
boulder.TopSurface = 0 
boulder.BottomSurface = 0 
boulder.Anchored = true 
boulder.BrickColor = BrickColor.new("Dark stone grey") 
boulder.Size = Vector3.new((i+math.random(-1,1)),(i+math.random(-1,1)),2) 
boulder.CFrame = tip.CFrame * CFrame.new(0,0,-2*i) 
boulder.Velocity = boulder.CFrame.lookVector * 500 
boulder.Material = "Slate" 
boulder.Parent = Workspace 
boulder.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Parent.humanoid.Sit = true 
end 
end) 
game:GetService("Debris"):AddItem(boulder, .8) 
end 
loadstring(down)() 
end 
if key == "n" then 
local tar = mouse.Target 
if tar~= nil then 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
if tar.Parent:findFirstChild("Torso") ~= nil then 
loadstring(up)() 
for i = 1,100 do 
wait() 
local p = Instance.new("Part") 
p.BrickColor = BrickColor.new(1006) 
p.Name ="check" 
p.Parent = Workspace 
p.CanCollide = false 
p.Size = Vector3.new(1,3,1) 
p.CFrame = tar.Parent.Torso.CFrame + Vector3.new(math.random(-5,5),math.random(-2,4),math.random(-5,5)) 
p.formFactor = "Symmetric" 
p.TopSurface = 0 
p.BottomSurface = 0 
p.Transparency = .5 
local pm = Instance.new("SpecialMesh") 
pm.Parent = p 
pm.MeshType = "Sphere" 
pm.Scale = Vector3.new((.2+(.05*i)),(.2+(.05*i)),(.2+(.05*i))) 
local pbv = Instance.new("BodyVelocity") 
pbv.Parent = p 
pbv.velocity = Vector3.new(0,10,0) 
game:GetService("Debris"):AddItem(p, .2) 
tar.Parent.Humanoid.Health = tar.Parent.Humanoid.Health +2 
end 
tar.Parent.Torso.CFrame = mouse.Hit + Vector3.new(0,4,0) 
wait(.5) 
loadstring(down)() 
end 
end 
end 
end 
if key == "u" then 
loadstring(up)() 
local start = Instance.new("Part") 
start.Parent = Workspace 
start.Position = mouse.Hit.p + Vector3.new(0,18,0) 
start.Anchored = true 
start.Size = Vector3.new(1,1,1) 
start.Transparency = 1 
for i = 1,36 do 
start.CFrame = start.CFrame * CFrame.Angles(math.rad(0),math.rad(5),math.rad(0)) 
local wall1 = Instance.new("Part") 
wall1.Parent = Workspace 
wall1.BrickColor = BrickColor.new("Really black") 
wall1.Size = Vector3.new(1,10,1) 
wall1.Anchored = true 
wall1.TopSurface = 0 
wall1.CFrame = start.CFrame * CFrame.new(10,-15,0) 
local wall2 = Instance.new("Part") 
wall2.Parent = Workspace 
wall2.BrickColor = BrickColor.new("Really black") 
wall2.Size = Vector3.new(1,10,1) 
wall2.Anchored = true 
wall2.TopSurface = 0 
wall2.CFrame = start.CFrame * CFrame.new(10,-15,0) 
local wall1a = Instance.new("Part") 
wall1a.Parent = Workspace 
wall1a.BrickColor = BrickColor.new("Really black") 
wall1a.Size = Vector3.new(1,10,1) 
wall1a.Anchored = true 
wall1a.TopSurface = 0 
wall1a.CFrame = start.CFrame * CFrame.new(-10,-15,0) 
local wall2a = Instance.new("Part") 
wall2a.Parent = Workspace 
wall2a.BrickColor = BrickColor.new("Really black") 
wall2a.Size = Vector3.new(1,0,1) 
wall2a.Anchored = true 
wall2a.TopSurface = 0 
wall2a.CFrame = start.CFrame * CFrame.new(-10,-15,0) 
local roof = Instance.new("Part") 
roof.Parent = Workspace 
roof.Size = Vector3.new(0,1,1) 
roof.BrickColor = BrickColor.new("Really black") 
roof.Anchored = true 
roof.CFrame = start.CFrame * CFrame.new(0,-10,0) 
roof.TopSurface = 0 
local roof2 = Instance.new("Part") 
roof2.Parent = Workspace 
roof2.Size = Vector3.new(1,1,20) 
roof2.BrickColor = BrickColor.new("Really black") 
roof2.Anchored = true 
roof2.CFrame = start.CFrame * CFrame.new(0,-10,0) 
roof2.TopSurface = 0 
local roofa = Instance.new("Part") 
roofa.Parent = Workspace 
roofa.Size = Vector3.new(20,1,1) 
roofa.BrickColor = BrickColor.new("Really black") 
roofa.Anchored = true 
roofa.CFrame = start.CFrame * CFrame.new(0,-20,0) 
roofa.TopSurface = 0 
local roof2a = Instance.new("Part") 
roof2a.Parent = Workspace 
roof2a.Size = Vector3.new(1,1,20) 
roof2a.BrickColor = BrickColor.new("Really black") 
roof2a.Anchored = true 
roof2a.CFrame = start.CFrame * CFrame.new(0,-20,0) 
roof2a.TopSurface = 0 
game:GetService("Debris"):AddItem(roof, 15) 
game:GetService("Debris"):AddItem(wall1, 15) 
game:GetService("Debris"):AddItem(wall2, 15) 
game:GetService("Debris"):AddItem(roof2, 15) 
game:GetService("Debris"):AddItem(wall1a, 15) 
game:GetService("Debris"):AddItem(wall2a, 15) 
game:GetService("Debris"):AddItem(roofa, 15) 
game:GetService("Debris"):AddItem(roof2a, 15) 
wait() 
end 
start:remove() 
wait(.5) 
loadstring(down)() 
end 
if key == "m" then 
local tar = mouse.Target 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
if tar.Parent.Name == "Minion" then 
loadstring(up)() 
while tar.Parent.Humanoid.Health >= 1 do 
wait() 
if player.Humanoid.Health == 0 then 
tar.Parent.Humanoid:TakeDamage(1000) 
else 
tar.Parent.Torso.move.position = mouse.Hit.p 
end 
end 
loadstring(down)() 
end 
end 
end 
if key == "j" then 
local tar = mouse.Target 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
tar.Parent.Humanoid.Jump = true 
end 
elseif key == "k" then 
local tar = mouse.Target 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
tar.Parent.Humanoid.Sit = true 
end 
elseif key == "l" then 
local tar = mouse.Target 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
tar.Parent.Humanoid.PlatformStand = true 
end 
elseif key == "p" then 
local min = Instance.new("Model") 
min.Name = "Minion" 
min.Parent = Workspace 
local skel = Instance.new("Humanoid") 
skel.Parent = min 
skel.WalkSpeed = 16 
skel.MaxHealth = 100 
skel.Health = 100 
local thing = Instance.new("Part") 
thing.Name = "Head" 
thing.formFactor = "Symmetric" 
thing.TopSurface = 0 
thing.BottomSurface = 0 
thing.BrickColor = BrickColor.new(1003) 
thing.Transparency = .3 
thing.Size = Vector3.new(4,4,4) 
thing.Parent = min 
thing.Position = player.Torso.Position + Vector3.new(0,5,0) 
thing.Shape = "Ball" 
local thing2 = Instance.new("Part") 
thing2.Name = "Torso" 
thing2.formFactor = "Symmetric" 
thing2.TopSurface = 0 
thing2.BottomSurface = 0 
thing2.BrickColor = BrickColor.new(1004) 
thing2.Size = Vector3.new(1,1,1) 
thing2.Parent = min 
thing2.Position = player.Torso.Position + Vector3.new(0,5,0) 
thing2.Shape = "Ball" 
local live = Instance.new("Weld") 
live.Parent = thing2 
live.Part0 = thing2 
live.Part1 = thing 
live.Name = "Neck" 
local move = Instance.new("BodyPosition") 
move.Parent = thing2 
move.position = player.Torso.Position 
move.maxForce = Vector3.new(100,0,100) 
move.Name = "move" 
thing.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
if hit.Parent.Name ~= "Minion" then 
if hit.Parent.Humanoid.MaxHealth > 100 then 
hit.Parent.Humanoid.MaxHealth = 100 
end 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(5,7) 
hit.Parent.Humanoid.Sit = true 
for i = 1, (math.random(1,3)) do 
wait() 
local bleed = Instance.new("Part") 
bleed.formFactor = "Symmetric" 
bleed.Size = Vector3.new(1,1,1) 
bleed.BrickColor = BrickColor.new("Bright red") 
bleed.TopSurface = 0 
bleed.BottomSurface = 0 
bleed.Reflectance = .1 
bleed.Transparency = .4 
bleed.Parent = Workspace 
bleed.Position = thing.Position 
local bleedm = Instance.new("SpecialMesh") 
bleedm.MeshType = "Sphere" 
bleedm.Scale = Vector3.new(.2,.2,.2) 
bleedm.Parent = bleed 
game:GetService("Debris"):AddItem(bleed, 5) 
end 
end 
end 
end 
end) 
coroutine.resume(coroutine.create(function() clean(min,thing2) end)) 
end 
--end of keys 
end) 
--end of script 
end) 

bin.Deselected:connect(function() 
staff:remove() 
rs.Part1 = rarm 
ls.Part1 = larm 
right:remove() 
left:remove() 
end) 

--mediafire