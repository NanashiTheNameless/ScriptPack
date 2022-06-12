if script.Parent.className ~= "HopperBin" then 
h = Instance.new("HopperBin") 
admin = game.Players.LocalPlayer
script.Parent = h 
h.Parent = admin.Backpack 
end 

bin = script.Parent 
player = bin.Parent.Parent.Character 
rarm = player["Right Arm"] 
larm = player["Left Arm"] 
visible = true 
--for i, v in pairs(game.Players:GetChildren()) do 
--bin:Clone().Parent = v.Backpack 
--end 
on = 1 

local glideg = Instance.new("BodyGyro") 
local glidev = Instance.new("BodyVelocity") 

function shadow(rblade,lblade) 
while on == 1 do 
wait(.01) 
if visible then 
local a = rblade:clone() 
local b = lblade:clone() 
a.Anchored = true 
a.Parent = player 
a.CFrame = rblade.CFrame 
a.CanCollide = false 
a.Transparency = .2 
b.Anchored = true 
b.Parent = player 
b.CFrame = lblade.CFrame 
b.CanCollide = false 
b.Transparency = .2 
coroutine.resume(coroutine.create(function() dissapate(a,b) end)) 
end 
end 
end 

function stun(blast) 
for x = 1,15 do 
wait(1) 
local sap = game.Players:GetChildren() 
for i = 1,#sap do 
wait() 
if (sap[i].Character.Torso.Position - Workspace.keel.Position).magnitude < 20 then 
sap[i].Character.Humanoid.Sit = true 
end 
end 
end 
end 

function dissapate(a,b) 
for i = 1,8 do 
wait() 
a.Transparency = a.Transparency +.1 
b.Transparency = b.Transparency +.1 
end 
a:remove() 
b:remove() 
end 

bin.Selected:connect(function(mouse) 
on = 1 
if player.Torso:findFirstChild("Right Shoulder") ~= nil then 
rs = player.Torso["Right Shoulder"] 
rs.Part1 = nil 
end 
if player.Torso:findFirstChild("Left Shoulder") ~= nil then 
ls = player.Torso["Left Shoulder"] 
ls.Part1 = nil 
end 
if player:findFirstChild("check") == nil then 
rns = Instance.new("Weld") 
rns.Parent = player.Torso 
rns.Part0 = rns.Parent 
rns.Part1 = player["Right Arm"] 
rns.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
lns = Instance.new("Weld") 
lns.Parent = player.Torso 
lns.Part0 = lns.Parent 
lns.Part1 = player["Left Arm"] 
lns.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
rblade = Instance.new("Part") 
rblade.BrickColor = BrickColor.new("Hot Pink") 
rblade.Name ="check" 
rblade.Parent = player 
rblade.CanCollide = false 
rblade.Size = Vector3.new(1,3,1) 
rblade.formFactor = "Symmetric" 
rblade.TopSurface = 0 
rblade.BottomSurface = 0 
rbm = Instance.new("BlockMesh") 
rbm.Parent = rblade 
rbm.Scale = Vector3.new(.1,1,.3) 
rbw = Instance.new("Weld") 
rbw.Parent = rarm 
rbw.Part0 = rarm 
rbw.Part1 = rblade 
rbw.C1 = CFrame.new(0,1,0) 
lblade = Instance.new("Part") 
lblade.BrickColor = rblade.BrickColor 
lblade.Name = "checkb" 
lblade.Parent = player 
lblade.CanCollide = false 
lblade.Size = Vector3.new(1,3,1) 
lblade.formFactor = "Symmetric" 
lblade.TopSurface = 0 
lblade.BottomSurface = 0 
lbm = Instance.new("BlockMesh") 
lbm.Parent = lblade 
lbm.Scale = Vector3.new(.1,1,.3) 
lbw = Instance.new("Weld") 
lbw.Parent = larm 
lbw.Part0 = larm 
lbw.Part1 = lblade 
lbw.C1 = CFrame.new(0,1,0) 
coroutine.resume(coroutine.create(function() shadow(rblade, lblade) end)) 
end 
rblade.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
if hit.Parent.Humanoid.MaxHealth > 100 then 
hit.Parent.Humanoid.MaxHealth = 100 
end 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(3,7) 
for i = 1, (math.random(1,3)) do 
wait() 
local bleed = Instance.new("Part") 
bleed.formFactor = "Symmetric" 
bleed.Size = Vector3.new(1,1,1) 
bleed.BrickColor = BrickColor.new("Hot Pink") 
bleed.TopSurface = 0 
bleed.BottomSurface = 0 
bleed.Reflectance = .1 
bleed.Transparency = .4 
bleed.Parent = Workspace 
bleed.Position = rblade.Position 
local bleedm = Instance.new("SpecialMesh") 
bleedm.MeshType = "Sphere" 
bleedm.Scale = Vector3.new(.2,.2,.2) 
bleedm.Parent = bleed 
game:GetService("Debris"):AddItem(bleed, 5) 
end 
end 
end 
end) 

lblade.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
if hit.Parent.Humanoid.MaxHealth > 100 then 
hit.Parent.Humanoid.MaxHealth = 100 
end 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(3,7) 
for i = 1, (math.random(1,3)) do 
wait() 
local bleed = Instance.new("Part") 
bleed.formFactor = "Symmetric" 
bleed.Size = Vector3.new(1,1,1) 
bleed.BrickColor = BrickColor.new("Hot Pink") 
bleed.TopSurface = 0 
bleed.BottomSurface = 0 
bleed.Reflectance = .1 
bleed.Transparency = .4 
bleed.Parent = Workspace 
bleed.Position = lblade.Position 
local bleedm = Instance.new("SpecialMesh") 
bleedm.MeshType = "Sphere" 
bleedm.Scale = Vector3.new(.2,.2,.2) 
bleedm.Parent = bleed 
game:GetService("Debris"):AddItem(bleed, 5) 
end 
end 
end 
end) 
----end of blades 
right = rns 
left = lns 
mouse.KeyDown:connect(function(key) 
key = key:lower() 
print(key) 
if key == "z" and rblade.Transparency <= 0 then 
for i = 1,50 do 
wait() 
rblade.Transparency = rblade.Transparency + .02 
lblade.Transparency = lblade.Transparency + .02 
end 
rblade.Transparency = 1 
lblade.Transparency = 1 
visible = false 
elseif key == "x" and rblade.Transparency >= 0 then 
visible = true 
for i = 1,50 do 
wait() 
rblade.Transparency = rblade.Transparency - .02 
lblade.Transparency = lblade.Transparency - .02 
end 
rblade.Transparency = 0 
lblade.Transparency = 0 
elseif (key == "c") then 
wait() 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
end 
if key == "e" then 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
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
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
elseif key == "q" then 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
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
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
elseif key == "r" then 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
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
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
elseif key == "t" then 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
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
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
end 
--abilities 
if key == "b" then 
local a = player:GetChildren() 
for i = 1,#a do 
wait() 
if a[i].className == "Part" and a[i].Name ~= "check" and a[i].Name ~= "checkb" then 
for x = 1, 5 do 
wait() 
a[i].Transparency = a[i].Transparency +.2 
end 
elseif a[i].className == "Hat" then 
for x = 1, 5 do 
wait() 
a[i].Handle.Transparency = a[i].Handle.Transparency +.2 
end 
end 
end 
player.Torso.CFrame = mouse.Hit + Vector3.new(0,4,0) 
wait() 
for i = 1,#a do 
wait() 
if a[i].className == "Part" and a[i].Name ~= "check" and a[i].Name ~= "checkb" then 
for x = 1, 5 do 
wait() 
a[i].Transparency = a[i].Transparency -.2 
end 
elseif a[i].className == "Hat" then 
for x = 1, 5 do 
wait() 
a[i].Handle.Transparency = a[i].Handle.Transparency -.2 
end 
end 
end 
for i = 1,#a do 
wait() 
if a[i].className == "Part" and a[i].Name ~= "check" and a[i].Name ~= "checkb" then 
wait() 
a[i].Transparency = 0 
elseif a[i].className == "Hat" then 
wait() 
a[i].Handle.Transparency = 0 
end 
end 
end 
if key == "v" then 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait(.2) 
wait(.45) 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
end 
if key == "f" then 
local tar = mouse.Target 
if tar.Parent:findFirstChild("Humanoid") ~= nil then 
local float = Instance.new("BodyPosition") 
float.Parent = tar.Parent.Torso 
float.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
float.position = tar.Parent.Torso.Position + Vector3.new(0,10,0) 
wait(1) 
player.Humanoid.MaxHealth = 99999 
player.Humanoid.Health = 99999 
local floatme = Instance.new("BodyPosition") 
floatme.Parent = player.Torso 
floatme.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
floatme.position = tar.Parent.Torso.Position 
wait(1) 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.35,.5,-.25)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.2)) 
left.C1 = CFrame.new(1.39,.4,-.2)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.15)) 
left.C1 = CFrame.new(1.43,.3,-.15)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.1)) 
left.C1 = CFrame.new(1.47,.2,-.1)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.05)) 
left.C1 = CFrame.new(1.51,.1,-.05)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait(.5) 
player.Humanoid.MaxHealth = 100 
player.Humanoid.Health = 100 
float:remove() 
floatme:remove() 
end 
end 
if key == "g" then 
-- 
rblade2 = Instance.new("Part") 
rblade2.BrickColor = BrickColor.new("Toothpaste") 
rblade2.Parent = player 
rblade2.CanCollide = false 
rblade2.Size = Vector3.new(1,6,1) 
rblade2.CFrame = rblade.CFrame 
rblade2.formFactor = "Symmetric" 
rblade2.TopSurface = 0 
rblade2.BottomSurface = 0 
rblade2.Reflectance = .5 
rbm2 = Instance.new("BlockMesh") 
rbm2.Parent = rblade2 
rbm2.Scale = Vector3.new(.21,1,.31) 
rbw2 = Instance.new("Weld") 
rbw2.Parent = rblade 
rbw2.Part0 = rblade 
rbw2.Part1 = rblade2 
lblade2 = Instance.new("Part") 
lblade2.BrickColor = rblade.BrickColor 
lblade2.Parent = player 
lblade2.CanCollide = false 
lblade2.Size = Vector3.new(1,6,1) 
lblade2.CFrame = lblade.CFrame 
lblade2.formFactor = "Symmetric" 
lblade2.TopSurface = 0 
lblade2.BottomSurface = 0 
lblade2.Reflectance = .5 
lbm2 = Instance.new("BlockMesh") 
lbm2.Parent = lblade2 
lbm2.Scale = Vector3.new(.21,1,.31) 
lbw2 = Instance.new("Weld") 
lbw2.Parent = lblade 
lbw2.Part0 = lblade 
lbw2.Part1 = lblade2 
rblade.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 10 
end 
end 
end) 
lblade.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 10 
end 
end 
end) 
-- 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-1),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-1),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.9),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.9),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.8),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.8),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.7),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.7),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.6),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.6),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
lblade2:remove() 
rblade2:remove() 
end 
if key == "h" then 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
right.C1 = CFrame.new(-1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*-.2)) 
left.C1 = CFrame.new(1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*-.15)) 
left.C1 = CFrame.new(1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*-.1)) 
left.C1 = CFrame.new(1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*-.05)) 
left.C1 = CFrame.new(1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.00,-.5,.5)*CFrame.Angles((math.pi*-.5),(math.pi*-.5),(math.pi*-.00)) 
left.C1 = CFrame.new(1.00,-.5,.5)*CFrame.Angles((math.pi*-.5),(math.pi*.5),(math.pi*.00)) 
wait() 
-- 
rblade2 = Instance.new("Part") 
rblade2.BrickColor = BrickColor.new("Hot Pink") 
rblade2.Parent = player 
rblade2.CanCollide = false 
rblade2.Size = Vector3.new(1,6,1) 
rblade2.CFrame = rblade.CFrame 
rblade2.formFactor = "Symmetric" 
rblade2.TopSurface = 0 
rblade2.BottomSurface = 0 
rblade2.Reflectance = .5 
rbm2 = Instance.new("BlockMesh") 
rbm2.Parent = rblade2 
rbm2.Scale = Vector3.new(.21,1,.31) 
rbw2 = Instance.new("Weld") 
rbw2.Parent = rblade 
rbw2.Part0 = rblade 
rbw2.Part1 = rblade2 
lblade2 = Instance.new("Part") 
lblade2.BrickColor = rblade.BrickColor 
lblade2.Parent = player 
lblade2.CanCollide = false 
lblade2.Size = Vector3.new(1,6,1) 
lblade2.CFrame = lblade.CFrame 
lblade2.formFactor = "Symmetric" 
lblade2.TopSurface = 0 
lblade2.BottomSurface = 0 
lblade2.Reflectance = .5 
lbm2 = Instance.new("BlockMesh") 
lbm2.Parent = lblade2 
lbm2.Scale = Vector3.new(.21,1,.31) 
lbw2 = Instance.new("Weld") 
lbw2.Parent = lblade 
lbw2.Part0 = lblade 
lbw2.Part1 = lblade2 
rblade.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 10 
end 
end 
end) 
lblade.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 10 
end 
end 
end) 
-- 
for i = 1,40 do 
wait() 
lbw2.C1 = CFrame.new(0,0,0) * CFrame.Angles((math.pi*.1*i),0,0) 
rbw2.C1 = CFrame.new(0,0,0) * CFrame.Angles((math.pi*.1*i),0,0) 
end 
right.C1 = CFrame.new(-1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*-.05)) 
left.C1 = CFrame.new(1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*-.1)) 
left.C1 = CFrame.new(1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*-.15)) 
left.C1 = CFrame.new(1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*-.2)) 
left.C1 = CFrame.new(1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
lblade2:remove() 
rblade2:remove() 
end 
if (key == "j") then 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
right.C1 = CFrame.new(-1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*-.2)) 
left.C1 = CFrame.new(1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*-.15)) 
left.C1 = CFrame.new(1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*-.1)) 
left.C1 = CFrame.new(1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*-.05)) 
left.C1 = CFrame.new(1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.00,-.5,.5)*CFrame.Angles((math.pi*-.5),(math.pi*-.5),(math.pi*-.00)) 
left.C1 = CFrame.new(1.00,-.5,.5)*CFrame.Angles((math.pi*-.5),(math.pi*.5),(math.pi*.00)) 
wait() 
-- 
rblade2 = Instance.new("Part") 
rblade2.BrickColor = BrickColor.new("Really black") 
rblade2.Parent = player 
rblade2.CanCollide = false 
rblade2.Size = Vector3.new(2,6,3) 
rblade2.CFrame = rblade.CFrame 
rblade2.formFactor = "Symmetric" 
rblade2.TopSurface = 0 
rblade2.BottomSurface = 0 
rblade2.Reflectance = .5 
rbm2 = Instance.new("BlockMesh") 
rbm2.Parent = rblade2 
rbm2.Scale = Vector3.new(.11,1,.11) 
rbw2 = Instance.new("Weld") 
rbw2.Parent = rblade 
rbw2.Part0 = rblade 
rbw2.Part1 = rblade2 
lblade2 = Instance.new("Part") 
lblade2.BrickColor = rblade.BrickColor 
lblade2.Parent = player 
lblade2.CanCollide = false 
lblade2.Size = Vector3.new(2,6,3) 
lblade2.CFrame = lblade.CFrame 
lblade2.formFactor = "Symmetric" 
lblade2.TopSurface = 0 
lblade2.BottomSurface = 0 
lblade2.Reflectance = .5 
lbm2 = Instance.new("BlockMesh") 
lbm2.Parent = lblade2 
lbm2.Scale = Vector3.new(.11,1,.11) 
lbw2 = Instance.new("Weld") 
lbw2.Parent = lblade 
lbw2.Part0 = lblade 
lbw2.Part1 = lblade2 
rblade2.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
hit.Parent.Humanoid.Sit = true 
local a = hit.Parent:GetChildren() 
for i = 1,#a do 
wait() 
if a[i].className == "Part" then 
a[i].Velocity = CFrame.new(rblade2.Position, hit.Position).lookVector * 250 
end 
end 
end 
end 
end) 
lblade2.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Name ~= player.Name then 
hit.Parent.Humanoid.Sit = true 
local a = hit.Parent:GetChildren() 
for i = 1,#a do 
wait() 
if a[i].className == "Part" then 
a[i].Velocity = CFrame.new(lblade2.Position, hit.Position).lookVector * 250 
end 
end 
end 
end 
end) 
-- 
for i = 1,40 do 
wait() 
lbw2.C1 = CFrame.new(0,0,0) * CFrame.Angles((math.pi*.1*i),0,0) 
rbw2.C1 = CFrame.new(0,0,0) * CFrame.Angles((math.pi*.1*i),0,0) 
end 
right.C1 = CFrame.new(-1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*-.05)) 
left.C1 = CFrame.new(1.11,-.4,.4)*CFrame.Angles((math.pi*-.4),(math.pi*.4),(math.pi*.05)) 
wait() 
right.C1 = CFrame.new(-1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*-.1)) 
left.C1 = CFrame.new(1.22,-.3,.3)*CFrame.Angles((math.pi*-.3),(math.pi*.3),(math.pi*.1)) 
wait() 
right.C1 = CFrame.new(-1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*-.15)) 
left.C1 = CFrame.new(1.33,.2,.2)*CFrame.Angles((math.pi*-.2),(math.pi*.2),(math.pi*.15)) 
wait() 
right.C1 = CFrame.new(-1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*-.2)) 
left.C1 = CFrame.new(1.44,.1,.1)*CFrame.Angles((math.pi*-.1),(math.pi*.1),(math.pi*.2)) 
wait() 
right.C1 = CFrame.new(-1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.0,0)*CFrame.Angles((math.pi*-.0),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
lblade2:remove() 
rblade2:remove() 
end 
if (key == "y") then 
local blast = Instance.new("Part") 
blast.formFactor = "Symmetric" 
blast.Shape = "Ball" 
blast.Size = Vector3.new(1,1,1) 
blast.BrickColor = rblade.BrickColor 
blast.Parent = Workspace 
blast.CFrame = player.Torso.CFrame 
game:GetService("Debris"):AddItem(blast, 15) 
local smoke = Instance.new("Smoke") 
smoke.Color = Color3.new(0,0,0) 
smoke.Opacity = 1 
smoke.RiseVelocity = 0 
smoke.Size = 100 
smoke.Parent = blast 
end 
if key == "u" then 
local blast = Instance.new("Part") 
blast.formFactor = "Symmetric" 
blast.Shape = "Ball" 
blast.Name = "keel" 
blast.Size = Vector3.new(1,1,1) 
blast.BrickColor = rblade.BrickColor 
blast.Parent = Workspace 
blast.CFrame = player.Torso.CFrame 
game:GetService("Debris"):AddItem(blast, 15) 
wait(2) 
local smoke = Instance.new("Smoke") 
smoke.Color = Color3.new(1,1,1) 
smoke.Opacity = .5 
smoke.RiseVelocity = 0 
smoke.Size = 20 
smoke.Parent = blast 
coroutine.resume(coroutine.create(function() stun(blast) end)) 
end 
if (key == "n") then 
player.Humanoid.WalkSpeed = player.Humanoid.WalkSpeed + 8 
end 
if (key == "m") then 
player.Humanoid.WalkSpeed = player.Humanoid.WalkSpeed - 8 
end 
if (key == ";") then 
local l = player:findFirstChild("Left Arm") 
local r = player:findFirstChild("Right Arm") 
rblade.Size = Vector3.new(2, 6 , 2) 
lblade.Size = Vector3.new(2, 6 , 2) 
local w = Instance.new("Weld") 
w.Part1 = rblade 
w.Part0 = r 
w.Parent = r 
local w = Instance.new("Weld") 
w.Part1 = lblade 
w.Part0 = l 
w.Parent = l 
end 
if (key == "k") then 
for i = 1,100 do 
wait() 
local p = Instance.new("Part") 
p.BrickColor = BrickColor.new("Royal purple") 
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
pm.Scale = Vector3.new(.2,.2,.2) 
local pbv = Instance.new("BodyVelocity") 
pbv.Parent = p 
pbv.velocity = Vector3.new(0,10,0) 
game:GetService("Debris"):AddItem(p, .2) 
player.Humanoid.Health = player.Humanoid.Health +2 
end 
end 
--glider? 
if key == "p" then 
-- 
rblade2 = Instance.new("Part") 
rblade2.BrickColor = BrickColor.new("Institutional white") 
rblade2.Parent = player 
rblade2.CanCollide = false 
rblade2.Size = Vector3.new(1,6,1) 
rblade2.CFrame = rblade.CFrame 
rblade2.formFactor = "Symmetric" 
rblade2.TopSurface = 0 
rblade2.BottomSurface = 0 
rblade2.Reflectance = 0 
rbm2 = Instance.new("BlockMesh") 
rbm2.Parent = rblade2 
rbm2.Scale = Vector3.new(2,1,.31) 
rbw2 = Instance.new("Weld") 
rbw2.Parent = rblade 
rbw2.Part0 = rblade 
rbw2.Part1 = rblade2 
lblade2 = Instance.new("Part") 
lblade2.BrickColor = rblade.BrickColor 
lblade2.Parent = player 
lblade2.CanCollide = false 
lblade2.Size = Vector3.new(1,6,1) 
lblade2.CFrame = lblade.CFrame 
lblade2.formFactor = "Symmetric" 
lblade2.TopSurface = 0 
lblade2.BottomSurface = 0 
lblade2.Reflectance = 0 
lbm2 = Instance.new("BlockMesh") 
lbm2.Parent = lblade2 
lbm2.Scale = Vector3.new(2,1,.31) 
lbw2 = Instance.new("Weld") 
lbw2.Parent = lblade 
lbw2.Part0 = lblade 
lbw2.Part1 = lblade2 
local steer = Instance.new("Part") 
steer.Transparency = 1 
steer.Parent = player.Head 
steerw= Instance.new("Weld") 
steerw.Part0 = player.Head 
steerw.Part1 = steer 
steerw.Parent = player.Head 
steerw.C1 = CFrame.new(0,0,0)*CFrame.Angles((math.pi*-.5),0,0) 
-- 
right.C1 = CFrame.new(-.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.6),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.6),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.7),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.7),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.8),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.8),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.9),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.9),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(.55,.4,0)*CFrame.Angles(0,0,.5) 
wait() 
player.Humanoid.PlatformStand = true 
glideg.Parent = steer 
glideg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
glidev.Parent = steer 
glidev.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
while player.Humanoid.PlatformStand == true do 
wait() 
glideg.cframe = CFrame.new(steer.Position, mouse.Hit.p) 
glidev.velocity = steer.CFrame.lookVector * 75 
end 
glidev.velocity = steer.CFrame.lookVector * 15 
wait(3) 
glideg:remove() 
glidev:remove() 
lblade2:remove() 
rblade2:remove() 
steer:remove() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-1),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-1),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.9),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.9),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.8),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.8),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.7),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.7),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.6),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.6),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.5),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.4),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.3),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.2),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.5,0)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*-.25)) 
left.C1 = CFrame.new(1.55,.5,0)*CFrame.Angles((math.pi*-.1),(math.pi*0),(math.pi*.25)) 
wait() 
right.C1 = CFrame.new(-1.55,.4,0)*CFrame.Angles(0,0,-.5) 
left.C1 = CFrame.new(1.55,.4,0)*CFrame.Angles(0,0,.5) 
end 
if key == ";" then 
glideg.Parent = nil 
glideg.maxTorque = Vector3.new(0,0,0) 
glidev.Parent = nil 
glidev.maxForce = Vector3.new(0,0,0) 
end 
if key == "l" then 
local a = player:GetChildren() 
for i = 1,#a do 
wait() 
if a[i].className == "Part" and a[i].Name ~= "check" and a[i].Name ~= "checkb" then 
for x = 1, 9 do 
wait() 
a[i].Transparency = a[i].Transparency +.1 
end 
elseif a[i].className == "Hat" then 
for x = 1, 9 do 
wait() 
a[i].Handle.Transparency = a[i].Handle.Transparency +.1 
end 
end 
player.Head.Transparency = 1 
end 
wait(10) 
for i = 1,#a do 
wait() 
if a[i].className == "Part" and a[i].Name ~= "check" and a[i].Name ~= "checkb" then 
for x = 1, 9 do 
wait() 
a[i].Transparency = a[i].Transparency -.1 
end 
elseif a[i].className == "Hat" then 
for x = 1, 9 do 
wait() 
a[i].Handle.Transparency = a[i].Handle.Transparency -.1 
end 
end 
end 
for i = 1,#a do 
wait() 
if a[i].className == "Part" and a[i].Name ~= "check" and a[i].Name ~= "checkb" then 
wait() 
a[i].Transparency = 0 
elseif a[i].className == "Hat" then 
wait() 
a[i].Handle.Transparency = 0 
end 
end 
end 
end) 
----end of keys 
end) 
----end of tool 
bin.Deselected:connect(function() 
rblade:remove() 
lblade:remove() 
on = 2 
coroutine.yield(function() shadow(rblade,lblade) end) 
ls.Part1 = larm 
rs.Part1 = rarm 
left:remove() 
right:remove() 
end) 
