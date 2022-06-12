------[[Kirby Morph made by: DoogleFox, for kirbystar1996]]-------------------------------------------------------------------------------------------------------------------------------------------------

user = "lordsheen" 

if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Parent = game.Players[user].Backpack 
bin.Name = "Kirby" 
script.Parent = bin 
end 

bin = script.Parent 

m = Instance.new("Model") 
m.Parent = bin.Parent.Parent.Character 
m.Name = "KirbyMorph" 

p = Instance.new("Part") 
p.Parent = m 
p.Name = "MainBody" 
p.formFactor = ("Symmetric") 
p.Size = Vector3.new(4,4,4) 
p.CFrame = bin.Parent.Parent.Character.Torso.CFrame 
p.BrickColor = BrickColor.new("Light reddish violet") 
p.Locked = true 
p.CanCollide = true 
p.Shape = ("Ball") 
p.TopSurface = ("Smooth") 
p.BottomSurface = ("Smooth") 

d = Instance.new("Decal") 
d.Parent = p 
d.Face = ("Front") 
d.Texture = ("http://www.roblox.com/asset/?id=5732750") 

w = Instance.new("Weld") 
w.Parent = p 
w.Name = "BodyWeld" 
w.Part0 = p 
w.Part1 = bin.Parent.Parent.Character.Torso 
w.C0 = CFrame.new(0,0.2,0) 

a1 = Instance.new("Part") 
a1.Parent = m 
a1.Name = "Left Arm" 
a1.formFactor = ("Symmetric") 
a1.Size = Vector3.new(2,2,2) 
a1.CFrame = bin.Parent.Parent.Character["Left Arm"].CFrame 
a1.BrickColor = BrickColor.new("Light reddish violet") 
a1.Locked = true 
a1.CanCollide = true 
a1.Shape = ("Ball") 
a1.TopSurface = ("Smooth") 
a1.BottomSurface = ("Smooth") 

a1w = Instance.new("Weld") 
a1w.Parent = a1 
a1w.Name = "ArmWeld1" 
a1w.Part0 = a1 
a1w.Part1 = bin.Parent.Parent.Character["Left Arm"] 
a1w.C0 = CFrame.new(0.2,0.2,0) 

a2 = Instance.new("Part") 
a2.Parent = m 
a2.Name = "Right Arm" 
a2.formFactor = ("Symmetric") 
a2.Size = Vector3.new(2,2,2) 
a2.CFrame = bin.Parent.Parent.Character["Left Arm"].CFrame 
a2.BrickColor = BrickColor.new("Light reddish violet") 
a2.Locked = true 
a2.CanCollide = true 
a2.Shape = ("Ball") 
a2.TopSurface = ("Smooth") 
a2.BottomSurface = ("Smooth") 

a2w = Instance.new("Weld") 
a2w.Parent = a2 
a2w.Name = "ArmWeld2" 
a2w.Part0 = a2 
a2w.Part1 = bin.Parent.Parent.Character["Right Arm"] 
a2w.C0 = CFrame.new(-0.2,0.2,0) 

l = Instance.new("Part") 
l.Parent = m 
l.Name = "Left Leg" 
l.formFactor = ("Symmetric") 
l.Size = Vector3.new(2,2,2) 
l.CFrame = bin.Parent.Parent.Character["Left Leg"].CFrame 
l.BrickColor = BrickColor.new("Dusty Rose") 
l.Locked = true 
l.CanCollide = true 
l.Shape = ("Ball") 
l.TopSurface = ("Smooth") 
l.BottomSurface = ("Smooth") 

lm = Instance.new("SpecialMesh") 
lm.Parent = l 
lm.Name = "LegMesh" 
lm.MeshType = ("Sphere") 
lm.Scale = Vector3.new(0.9,0.9,1.2) 

lw = Instance.new("Weld") 
lw.Parent = l 
lw.Name = "LegWeld" 
lw.Part0 = l 
lw.Part1 = bin.Parent.Parent.Character["Left Leg"] 
lw.C0 = CFrame.new(0.25,0.2,0) 

l2 = Instance.new("Part") 
l2.Parent = m 
l2.Name = "Right Leg" 
l2.formFactor = ("Symmetric") 
l2.Size = Vector3.new(2,2,2) 
l2.CFrame = bin.Parent.Parent.Character["Right Leg"].CFrame 
l2.BrickColor = BrickColor.new("Dusty Rose") 
l2.Locked = true 
l2.CanCollide = true 
l2.Shape = ("Ball") 
l2.TopSurface = ("Smooth") 
l2.BottomSurface = ("Smooth") 

l2m = Instance.new("SpecialMesh") 
l2m.Parent = l2 
l2m.Name = "LegMesh" 
l2m.MeshType = ("Sphere") 
l2m.Scale = Vector3.new(0.9,0.9,1.2) 

l2w = Instance.new("Weld") 
l2w.Parent = l2 
l2w.Name = "LegWeld2" 
l2w.Part0 = l2 
l2w.Part1 = bin.Parent.Parent.Character["Right Leg"] 
l2w.C0 = CFrame.new(-0.25,0.2,0) 

c = bin.Parent.Parent.Character:GetChildren() 
for i = 1, #c do 
if c[i].className == "Part" then 
c[i].Transparency = 1 
end 
end 
for ii = 1, #c do 
if c[ii].className == "Hat" then 
c[ii]:remove() 
end 
end 
wait() 
if bin.Parent.Parent.Character.Head:findFirstChild("face") ~= nil then 
bin.Parent.Parent.Character.Head:findFirstChild("face"):remove() 
end 


---------------------------------------------------------------------------------------------------------------------



bp = Instance.new("BodyPosition") 
bp.Parent = bin 
bp.maxForce = Vector3.new(2000,2000,2000) 

enabled = true 
function onButton1Down(mouse) 
if mouse.Target ~= nil then 
if mouse.Target.Parent:findFirstChild("Humanoid") ~= nil then 
if enabled == true then 
enabled = false 
name = mouse.Target.Parent.Name 
bp.Parent = mouse.Target.Parent:findFirstChild("Torso") 
mouse.Target.Parent.Humanoid.PlatformStand = true 
bp.position = bin.Parent.Parent.Character.Torso.Position 
function touch(hit) 
if hit.Name == "MainBody" then 
parts = workspace[name]:GetChildren() 
for i = 1, #parts do 
if parts[i].className == "Part" then 
parts[i]:remove() 
end 
enabled = true 
end 
else 
wait() 
end 
end 
mouse.Target.Parent:findFirstChild("Torso").Touched:connect(touch) 
else 
wait() 
end 
end 
end 
end 

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end) 
