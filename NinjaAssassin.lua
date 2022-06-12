user = "rigletto" 

if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "NinjaAssassin" 
bin.Parent = game.Players[user].Backpack 
script.Parent = bin 
end 

bin = script.Parent 
dcolor = "Really black" 
dcolor2 = "Dark stone grey" 
color = dcolor 
color2 = dcolor2 
Mode = "Sai" 
m = nil 

function Glow(ob) 
while ob.Parent.Parent.Parent ~= nil do 
for i = 1, 10 do 
ob.Transparency = ob.Transparency + 0.065 
wait(0.02) 
end 
for i = 1, 10 do 
ob.Transparency = ob.Transparency - 0.065 
wait(0.02) 
end 
wait(0.5) 
end 
end 

function BuildSuit() 
wait() 
char = bin.Parent.Parent.Character 
for i, v in pairs(char:children()) do 
if v.className == "Model" and v.Name == "WeaponLoad" or v.className == "Hat" then 
v:remove() 
end 
end 
h = Instance.new("Hat") 
h.Name = "Blocker" 
h.Parent = char 
----------------------------------------- Building of Suit ------------------
m = Instance.new("Model") 
m.Parent = char 
m.Name = "WeaponLoad" 
--------------------- Clothing ---------------------
p = Instance.new("Part") 
p.Parent = m 
p.Name = "Head Clothing" 
p.formFactor = "Custom" 
p.Size = Vector3.new(0.5,0.5,0.5) 
p.BrickColor = BrickColor.new(color) 
p.Locked = true 
p.Anchored = false 
p.CanCollide = false 
p.Position = char.Torso.Position 
p.TopSurface = 0 
p.BottomSurface = 0 
pm = Instance.new("SpecialMesh") 
pm.Parent = p 
pm.Scale = Vector3.new(1.05,1.05,1.05) 
pm.Name = "Mesh" 
pm.MeshId = "http://www.roblox.com/asset/?id=16952952" 
pw = Instance.new("Weld") 
pw.Parent = p 
pw.Part0 = char.Head 
pw.Part1 = p 
pw.Name = "BlawgWeld" 
pw.C0 = CFrame.new(0,0.25,-0.045) 

p = Instance.new("Part") 
p.Parent = m 
p.Name = "Head Clothing 2" 
p.formFactor = "Custom" 
p.Size = Vector3.new(0.5,0.5,0.5) 
p.BrickColor = BrickColor.new(color) 
p.Locked = true 
p.Anchored = false 
p.CanCollide = false 
p.Position = char.Torso.Position 
p.TopSurface = 0 
p.BottomSurface = 0 
pm = Instance.new("SpecialMesh") 
pm.Parent = p 
pm.Scale = Vector3.new(1,1,1) 
pm.Name = "Mesh" 
pm.MeshId = "http://www.roblox.com/asset/?id=20637493" 
--pm.TextureId = "http://www.roblox.com/asset/?id=20637003" 
--pm.VertexColor = Vector3.new(0.6,0.6,0.6) 
pw = Instance.new("Weld") 
pw.Parent = p 
pw.Part0 = char.Head 
pw.Part1 = p 
pw.Name = "BlawgWeld" 
pw.C0 = CFrame.new(0,-0.3,0) 
for i, v in pairs(char:children()) do 
if v.className == "Part" and v.Name == "Torso" or v.Name == "Right Arm" or v.Name == "Right Leg" or v.Name == "Left Arm" or v.Name == "Left Leg" then 
v.Transparency = 1 
p = Instance.new("Part") 
p.Parent = m 
p.Name = v.Name .. " Clothing" 
p.formFactor = "Custom" 
p.Size = Vector3.new(0.5,0.5,0.5) 
p.BrickColor = BrickColor.new(color) 
p.Locked = true 
p.Anchored = false 
p.CanCollide = false 
p.Position = char.Torso.Position 
p.TopSurface = 0 
p.BottomSurface = 0 
pm = Instance.new("SpecialMesh") 
pm.Parent = p 
pm.MeshType = "Brick" 
pm.Scale = Vector3.new((v.Size.x*2)+0.05,(v.Size.y*2)+0.05,(v.Size.z*2)+0.05) 
pw = Instance.new("Weld") 
pw.Parent = p 
pw.Name = "Weld1" 
pw.Part0 = v 
pw.Part1 = p 
end 
end 
wait() 
--------------- Tomahawks ---------------
m2 = Instance.new("Model") 
m2.Parent = m 
m2.Name = "Tomahawks" 
p = Instance.new("Part") 
p.Parent = m2 
p.Name = "Tomahawk1" 
p.formFactor = "Custom" 
p.Size = Vector3.new(0.5,0.5,0.5) 
p.BrickColor = BrickColor.new("Lime green") 
p.Locked = true 
p.Anchored = false 
p.CanCollide = false 
p.Position = char.Torso.Position 
p.TopSurface = 0 
p.BottomSurface = 0 
pm = Instance.new("SpecialMesh") 
pm.Parent = p 
pm.Name = "Mesh" 
pm.MeshId = "http://www.roblox.com/asset/?id=38161203" 
pm.TextureId = "http://www.roblox.com/asset/?id=38161622" 
pm.Scale = Vector3.new(1.2,1.2,1.2) 
pm.VertexColor = Vector3.new(0.6,0.6,0.6) 
p2 = p:Clone() 
p2.Parent = p.Parent 
p2.Position = p.Position 
p2.Name = "Tomahawk2" 
pw = Instance.new("Weld") 
pw.Parent = p 
pw.Name = "Weld1" 
pw.Part0 = char.Torso  
pw.Part1 = p 
pw.C0 = CFrame.new(-0.2,-0.1,0.6) * CFrame.Angles(math.pi/2,-math.pi/1.3,0) 
p2w = Instance.new("Weld") 
p2w.Parent = p2 
p2w.Name = "Weld1" 
p2w.Part0 = char.Torso  
p2w.Part1 = p2 
p2w.C0 = CFrame.new(0.2,-0.1,0.6) * CFrame.Angles(math.pi/2,math.pi/1.3,math.pi) 
------------------------ Belt and Items --------------
m3 = Instance.new("Model") 
m3.Parent = m 
m3.Name = "Belt" 
p = Instance.new("Part") 
p.Parent = m3 
p.Name = "Belt" 
p.formFactor = "Custom" 
p.Size = Vector3.new(0.5,0.5,0.5) 
p.BrickColor = BrickColor.new(color2) 
p.Locked = true 
p.Anchored = false 
p.CanCollide = false 
p.Position = char.Torso.Position 
p.TopSurface = 0 
p.BottomSurface = 0 
pm = Instance.new("BlockMesh") 
pm.Parent = p 
pm.Scale = Vector3.new(4.2,0.5,2.2) 
pw = Instance.new("Weld") 
pw.Parent = p 
pw.Name = "Weld1" 
pw.Part0 = char.Torso  
pw.Part1 = p 
pw.C0 = CFrame.new(0,-0.9,0) 
pos = 0 
for i = 1, 8 do 
p = Instance.new("Part") 
p.Transparency = 1 
p.Parent = m3 
p.Name = "Item " .. i 
p.formFactor = "Custom" 
p.Size = Vector3.new(0.5,0.5,0.5) 
p.BrickColor = BrickColor.new("Really red") 
p.Locked = true 
p.Anchored = false 
p.CanCollide = false 
p.Position = char.Torso.Position 
p.TopSurface = 0 
p.BottomSurface = 0 
pm = Instance.new("SpecialMesh") 
pm.Parent = p 
pm.Name = "Mesh" 
if i < 4 then 
pm.MeshId = "http://www.roblox.com/asset/?id=47247427" 
pm.TextureId = "http://www.roblox.com/asset/?id=47247468" 
pm.Scale = Vector3.new(0.45,0.45,0.4) 
else 
pm.MeshId = "http://www.roblox.com/asset/?id=45728730" 
pm.TextureId = "http://www.roblox.com/asset/?id=45728837" 
pm.Scale = Vector3.new(0.7,0.7,0.42) 
end 
pw = Instance.new("Weld") 
pw.Parent = p 
pw.Name = "Weld"..i 
pw.Part0 = char.Torso 
pw.Part1 = p 
if i < 4 then 
pw.C0 = CFrame.new(0.75+pos,-0.8,-0.6) * CFrame.Angles(math.pi/2,-math.pi/1.25,0) 
else 
pw.C0 = CFrame.new(0.75+pos,-0.85,-0.55) * CFrame.Angles(math.pi/2,-math.pi/1.25,0) 
end 
if i < 4 then 
pos = pos - 0.25 
else 
pos = pos - 0.18 
end 
p.Transparency = 0 
end 
wait() 
------------- Sai's --------------
pos = 0 
for i = 1, 2 do 
p = Instance.new("Part") 
p.Parent = m3 
p.Name = "Sai" .. i 
p.formFactor = "Custom" 
p.Size = Vector3.new(0.5,0.5,0.5) 
p.BrickColor = BrickColor.new("Really blue") 
p.Locked = true 
p.Anchored = false 
p.CanCollide = false 
p.Position = char.Torso.Position 
p.TopSurface = 0 
p.BottomSurface = 0 
pm = Instance.new("SpecialMesh") 
pm.Parent = p 
pm.Name = "Mesh" 
pm.MeshId = "http://www.roblox.com/asset/?id=51229672" 
pm.TextureId = "http://www.roblox.com/asset/?id=51229767" 
pm.Scale = Vector3.new(1,1,1) 
pw = Instance.new("Weld") 
pw.Parent = p 
pw.Name = "Weld"..i 
pw.Part0 = char.Torso 
pw.Part1 = p 
pw.C0 = CFrame.new(1.05+pos,-1.05,-0.08) * CFrame.Angles(math.pi/4,0,math.pi/2) 
pos = pos - 2.1 
end 
--------------- Flute ---------------------
p = Instance.new("Part") 
p.Parent = m3 
p.Name = "Flute" 
p.formFactor = "Custom" 
p.Size = Vector3.new(0.5,0.5,0.5) 
p.BrickColor = BrickColor.new("Really red") 
p.Locked = true 
p.Anchored = false 
p.CanCollide = false 
p.Position = char.Torso.Position 
p.TopSurface = 0 
p.BottomSurface = 0 
pm = Instance.new("SpecialMesh") 
pm.Parent = p 
pm.Name = "Mesh" 
pm.MeshId = "http://www.roblox.com/asset/?id=52107091" 
pm.TextureId = "http://www.roblox.com/asset/?id=52107252" 
pm.Scale = Vector3.new(0.6,0.6,0.6) 
pm.VertexColor = Vector3.new(0.7,0.7,0.7) 
pw = Instance.new("Weld") 
pw.Parent = p 
pw.Name = "Weld" 
pw.Part0 = char.Torso 
pw.Part1 = p 
pw.C0 = CFrame.new(0.58,-0.88,0.525) * CFrame.Angles(0,0,-math.pi/2.65) 

--------------------- Sword -----------------------
m4 = Instance.new("Model") 
m4.Parent = m 
m4.Name = "Back" 
p = Instance.new("Part") 
p.Parent = m4 
p.Name = "BackHook" 
p.formFactor = "Custom" 
p.Size = Vector3.new(0.5,0.5,0.5) 
p.BrickColor = BrickColor.new(color2) 
p.Locked = true 
p.Anchored = false 
p.CanCollide = false 
p.Position = char.Torso.Position 
p.TopSurface = 0 
p.BottomSurface = 0 
pm = Instance.new("BlockMesh") 
pm.Parent = p 
pm.Scale = Vector3.new(1,1,0.75) 
pw = Instance.new("Weld") 
pw.Parent = p 
pw.Name = "Weld1" 
pw.Part0 = char.Torso  
pw.Part1 = p 
pw.C0 = CFrame.new(0,0.1,0.525) 

p = Instance.new("Part") 
p.Parent = m4 
p.Name = "Sword" 
p.formFactor = "Custom" 
p.Size = Vector3.new(0.5,0.5,0.5) 
p.BrickColor = BrickColor.new("Bright orange") 
p.Locked = true 
p.Anchored = false 
p.CanCollide = false 
p.Position = char.Torso.Position 
p.TopSurface = 0 
p.BottomSurface = 0 
pm = Instance.new("SpecialMesh") 
pm.Parent = p 
pm.Name = "Mesh" 
pm.MeshId = "http://www.roblox.com/asset/?id=48047550" 
pm.TextureId = "http://www.roblox.com/asset/?id=48047390" 
pm.Scale = Vector3.new(0.38,0.38,0.38) 
pw = Instance.new("Weld") 
pw.Parent = p 
pw.Name = "Weld" 
pw.Part0 = char.Torso 
pw.Part1 = p 
pw.C0 = CFrame.new(0,-0.2,0.67) * CFrame.Angles(-math.pi/2,0,0) 
------------- Front ---------------
m5 = Instance.new("Model") 
m5.Parent = m 
m5.Name = "Front" 
p = Instance.new("Part") 
p.Parent = m5 
p.Name = "Star1" 
p.formFactor = "Custom" 
p.Size = Vector3.new(0.5,0.5,0.5) 
p.BrickColor = BrickColor.new(color2) 
p.Locked = true 
p.Anchored = false 
p.CanCollide = false 
p.Position = char.Torso.Position 
p.TopSurface = 0 
p.BottomSurface = 0 
pm = Instance.new("SpecialMesh") 
pm.Parent = p 
pm.Name = "Mesh" 
pm.MeshId = "http://www.roblox.com/asset/?id=18007807" 
--pm.TextureId = "http://www.roblox.com/asset/?id=18008745" 
pm.Scale = Vector3.new(1,1,1) 
pw = Instance.new("Weld") 
pw.Parent = p 
pw.Name = "Weld" 
pw.Part0 = char.Torso 
pw.Part1 = p 
pw.C0 = CFrame.new(0,0,-0.504) * CFrame.Angles(math.pi/2,-0.8,0) 
coroutine.resume(coroutine.create(Glow), p) 
p2 = p:Clone() 
p2.Parent = m5 
p2.Name = "Star2" 
p2.Position = char.Torso.Position 
pw = Instance.new("Weld") 
pw.Parent = p2 
pw.Name = "Weld" 
pw.Part0 = char.Torso 
pw.Part1 = p2 
pw.C0 = CFrame.new(0,0,-0.504) * CFrame.Angles(math.pi/2,0.2,0) 
coroutine.resume(coroutine.create(Glow), p2) 
end 

saiside = 1 
aniz = false 
char = bin.Parent.Parent.Character 
anim = char.Animate:Clone() 
player = bin.Parent.Parent 
Joints = {char.Torso:findFirstChild("Left Shoulder"), char.Torso:findFirstChild("Right Shoulder")} 
Limbs = {char:findFirstChild("Left Arm"), char:findFirstChild("Right Arm")} 

function Del(E, T) 
wait(T) 
E:remove() 
end 

function EnableLimb(Limb) 
if (Limb == 1) then 
Joints[Limb].C0 = CFrame.new(-0.75,0.5,0) * CFrame.Angles(0,-math.pi/2,0) 
Joints[Limb].C1 = CFrame.new(0.75,0.5,0) * CFrame.Angles(0,-math.pi/2,0) 
Joints[Limb].Name = "Left Shoulder" 
elseif(Limb == 2) then 
Joints[Limb].C0 = CFrame.new(0.75,0.5,0) * CFrame.Angles(0,math.pi/2,0) 
Joints[Limb].C1 = CFrame.new(-0.75,0.5,0) * CFrame.Angles(0,math.pi/2,0) 
Joints[Limb].Name = "Right Shoulder" 
end 
anim2 = anim:Clone() 
char.Animate:remove() 
anim2.Parent = char 
char.Humanoid.WalkSpeed = 16 
end 



function SaiDisableLimb(Limb) 
char.Humanoid.WalkSpeed = 20 
Joint = Instance.new("Motor") 
Joint.Parent = char.Torso 
Joint.Part0 = Joint.Parent 
Joint.Part1 = Limbs[Limb] 
Joint.MaxVelocity = 0.1 
if (Limb == 1) then 
wait() 
Joints[Limb]:remove() 
Joint.C0 = CFrame.new(-0.45,0.45,-0.3) * CFrame.Angles(-math.pi/2,(math.pi/2)+(math.pi/4),math.pi/2) 
Joint.C1 = CFrame.new(0.45,0.45,0.3) * CFrame.Angles(0,math.pi/2,0) 
Joint.MaxVelocity = 0.2 
Joint.DesiredAngle = math.pi/1.2 
Joint.Name = "Left Top" 
Joints[Limb] = Joint 
------ Partz ------
sai = m.Belt.Sai2:Clone() 
sai.Position = char.Torso.Position 
m.Belt.Sai2.Transparency = 1 
sai.Transparency = 0 
sai.Parent = m 
sai.Name = "Sai" 
sai.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 12 
end 
end) 
saiw = Instance.new("Weld") 
saiw.Parent = sai 
saiw.Part0 = char["Left Arm"] 
saiw.Part1 = sai 
saiw.C0 = CFrame.new(0,-(char["Left Arm"].Size.y/8)*6,0.5) * CFrame.Angles(math.pi/5,0,math.pi/2) 
coroutine.resume(coroutine.create(Del), sai, 0.82) 
wait(0.4) 
Joint.DesiredAngle = 0 
wait(0.4) 
m.Belt.Sai2.Transparency = 0 
EnableLimb(1) 
aniz = false 
------ 
elseif(Limb == 2) then 
wait() 
Joints[Limb]:remove() 
Joint.C0 = CFrame.new(0.45,0.45,-0.3) * CFrame.Angles(math.pi/3,(math.pi/2)+(math.pi/4),-math.pi/3) 
Joint.C1 = CFrame.new(-0.45,0.45,0.3) * CFrame.Angles(0,math.pi/2,0) 
Joint.MaxVelocity = 0.2 
Joint.DesiredAngle = math.pi/1.2 
Joint.Name = "Right Top" 
Joints[Limb] = Joint 
------ Partz ------
sai = m.Belt.Sai1:Clone() 
sai.Position = char.Torso.Position 
m.Belt.Sai1.Transparency = 1 
sai.Transparency = 0 
sai.Parent = m 
sai.Name = "Sai" 
sai.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 12 
end 
end) 
saiw = Instance.new("Weld") 
saiw.Parent = sai 
saiw.Part0 = char["Right Arm"] 
saiw.Part1 = sai 
saiw.C0 = CFrame.new(0,-(char["Right Arm"].Size.y/8)*6,0.5) * CFrame.Angles(math.pi/5,0,math.pi/2) 
coroutine.resume(coroutine.create(Del), sai, 0.82) 
wait(0.4) 
Joint.DesiredAngle = 0 
wait(0.4) 
m.Belt.Sai1.Transparency = 0 
EnableLimb(2) 
aniz = false 
------ 
end 
Joints[Limb] = Joint 
end 

function SlashSai(mouse) 
if aniz == false then 
aniz = true 
SaiDisableLimb(saiside) 
saiside = math.random(1, 2) 
end 
end 

function onButton1Down(mouse) 
if Mode == "Sai" then 
coroutine.resume(coroutine.create(SlashSai), mouse) 
end 
end 

function onKeyDown(key, mouse) 
if key ~= nil then 
key:lower() 
if key == "r" then 
bin.Name = "Deselect = Remove" 
bin.Deselected:connect(function() wait() bin:remove() end) 
elseif key == ";" then 
color = "Dark stone grey" 
color2 = "Light stone grey" 
coroutine.resume(coroutine.create(BuildSuit)) 
elseif key == "'" then 
color = "Light stone grey" 
color2 = "Dark stone grey" 
coroutine.resume(coroutine.create(BuildSuit)) 
elseif key == "l" then 
color = "Really black" 
color2 = "Dark stone grey" 
coroutine.resume(coroutine.create(BuildSuit)) 


elseif key == "e" then 
Mode = "Sai" 
elseif key == "f" then 
Mode = "Sword Slash" 
end 
end 
end 

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
color = dcolor 
color2 = dcolor2 
coroutine.resume(coroutine.create(BuildSuit)) 
end)

--[[mediafire gtfo password]]--