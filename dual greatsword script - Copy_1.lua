root = game.Players.LocalPlayer
pack = root.Backpack
mouse = root:GetMouse()
char = root.Character
 
joint1 = char.Torso["Left Shoulder"]
joint2 = char.Torso["Right Shoulder"]
 
anim = false
active = false
mode = "Normal"
 
a = Instance.new("HopperBin",pack)
a.Name = ""
 
m = Instance.new("Model",char)
m.Name = ""
 
fWeld1 = Instance.new("Weld",game.Lighting)
fWeld2 = Instance.new("Weld",game.Lighting)
 
s = Instance.new("Sound",char.Torso) 
s.SoundId = "http://www.roblox.com/asset/?id=12222225"
s.Pitch = 0.5
 
 
 
lh1 = Instance.new("Part",m)
lh1.BrickColor = BrickColor.new("Royal purple")
lh1.CanCollide = false
lh1.FormFactor = "Custom"
lh1.Size = Vector3.new(0.2,0.2,0.2)
lh1.Position = char.Torso.Position
 
lm1 = Instance.new("CylinderMesh",lh1)
lm1.Scale = (Vector3.new(0.5,1.25,0.5))/lh1.Size
 
lw1 = Instance.new("Weld",lh1)
lw1.Part1 = char.Torso
lw1.Part0 = lh1
lw1.C0 = CFrame.new(-0.25,-2,-1)*CFrame.Angles(0,0,math.rad(-45))
 
 
 
lh2 = Instance.new("Part",m)
lh2.CanCollide = false
lh2.BrickColor = BrickColor.new("Bright yellow")
lh2.FormFactor = "Custom"
lh2.Reflectance = 0.15
lh2.Size = Vector3.new(0.2,0.2,0.2)
lh2.Position = char.Torso.Position
 
lm2 = Instance.new("BlockMesh",lh2)
lm2.Scale = (Vector3.new(1,0.1,0.6))/lh1.Size
 
lw2 = Instance.new("Weld",lh1)
lw2.Part1 = lh1
lw2.Part0 = lh2
lw2.C0 = CFrame.new(0,0.65,0)
 
 
 
lh3 = Instance.new("Part",m)
lh3.CanCollide = false
lh3.BrickColor = BrickColor.new("Medium stone grey")
lh3.FormFactor = "Custom"
lh3.Name = "Blade"
lh3.Reflectance = 0.15
lh3.Size = Vector3.new(0.9,4,0.1)
lh3.Position = char.Torso.Position
 
lm3 = Instance.new("BlockMesh",lh3)
lm3.Scale = (Vector3.new(0.2,0.2,0.2))/lh1.Size
 
lw3 = Instance.new("Weld",lh1)
lw3.Part1 = lh2
lw3.Part0 = lh3
lw3.C0 = CFrame.new(0,2,0)
 
 
 
lh4 = Instance.new("Part",m)
lh4.CanCollide = false
lh4.BrickColor = BrickColor.new("Medium stone grey")
lh4.FormFactor = "Custom"
lh4.Name = "Blade"
lh4.Reflectance = 0.15
lh4.Size = Vector3.new(0.65,0.65,0.1)
lh4.Position = char.Torso.Position
 
lm4 = Instance.new("BlockMesh",lh4)
lm4.Scale = (Vector3.new(0.2,0.2,0.2))/lh1.Size
 
lw4 = Instance.new("Weld",lh1)
lw4.Part1 = lh3
lw4.Part0 = lh4
lw4.C0 = CFrame.new(-1.4,1.4,0)*CFrame.Angles(0,0,math.rad(45))
 
 
-------------------------------------
 
 
rh1 = Instance.new("Part",m)
rh1.BrickColor = BrickColor.new("Royal purple")
rh1.FormFactor = "Custom"
rh1.CanCollide = false
rh1.Size = Vector3.new(0.2,0.2,0.2)
rh1.Position = char.Torso.Position
 
rm1 = Instance.new("CylinderMesh",rh1)
rm1.Scale = (Vector3.new(0.5,1.25,0.5))/rh1.Size
 
rw1 = Instance.new("Weld",rh1)
rw1.Part1 = char.Torso
rw1.Part0 = rh1
rw1.C0 = CFrame.new(0.25,-2,-1)*CFrame.Angles(0,0,math.rad(45))
 
 
 
rh2 = Instance.new("Part",m)
rh2.CanCollide = false
rh2.BrickColor = BrickColor.new("Bright yellow")
rh2.FormFactor = "Custom"
rh2.Reflectance = 0.15
rh2.Size = Vector3.new(0.2,0.2,0.2)
rh2.Position = char.Torso.Position
 
rm2 = Instance.new("BlockMesh",rh2)
rm2.Scale = (Vector3.new(1,0.1,0.6))/rh1.Size
 
rw2 = Instance.new("Weld",rh1)
rw2.Part1 = rh1
rw2.Part0 = rh2
rw2.C0 = CFrame.new(0,0.65,0)
 
 
 
rh3 = Instance.new("Part",m)
rh3.CanCollide = false
rh3.BrickColor = BrickColor.new("Medium stone grey")
rh3.Name = "Blade"
rh3.FormFactor = "Custom"
rh3.Reflectance = 0.15
rh3.Size = Vector3.new(0.9,4,0.1)
rh3.Position = char.Torso.Position
 
rm3 = Instance.new("BlockMesh",rh3)
rm3.Scale = (Vector3.new(0.2,0.2,0.2))/rh1.Size
 
rw3 = Instance.new("Weld",rh1)
rw3.Part1 = rh2
rw3.Part0 = rh3
rw3.C0 = CFrame.new(0,2,0)
 
 
 
rh4 = Instance.new("Part",m)
rh4.CanCollide = false
rh4.BrickColor = BrickColor.new("Medium stone grey")
rh4.Name = "Blade"
rh4.FormFactor = "Custom"
rh4.Reflectance = 0.15
rh4.Size = Vector3.new(0.65,0.65,0.1)
rh4.Position = char.Torso.Position
 
rm4 = Instance.new("BlockMesh",rh4)
rm4.Scale = (Vector3.new(0.2,0.2,0.2))/rh1.Size
 
rw4 = Instance.new("Weld",rh1)
rw4.Part1 = rh3
rw4.Part0 = rh4
rw4.C0 = CFrame.new(-1.4,1.4,0)*CFrame.Angles(0,0,math.rad(45))
 
 
 
function Sel()
if anim then
return 
else
 
anim = true
joint1.Parent = game.Lighting
fWeld1.Parent = char.Torso
fWeld1.Part0 = char["Left Arm"]
fWeld1.Part1 = char.Torso
fWeld1.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(0,0,0)
fWeld1.C1 = CFrame.new(0,0.5,0)
joint2.Parent = game.Lighting
fWeld2.Parent = char.Torso
fWeld2.Part0 = char["Right Arm"]
fWeld2.Part1 = char.Torso
fWeld2.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(0,0,0)
fWeld2.C1 = CFrame.new(0,0.5,0)
 
for i = 1,9 do
fWeld1.C0 = fWeld1.C0*CFrame.Angles(math.rad(-26),0,0)
fWeld2.C0 = fWeld2.C0*CFrame.Angles(math.rad(-26),0,0)
wait(math.pi/50) 
end
 
s:Play()
 
lw1.Part1 = char["Left Arm"]
lw1.C0 = CFrame.new(-1,0,0)*CFrame.Angles(math.rad(-90),0,math.rad(90))
rw1.Part1 = char["Right Arm"]
rw1.C0 = CFrame.new(-1,0,0)*CFrame.Angles(math.rad(-90),0,math.rad(90))
 
for i = 1,7 do
fWeld1.C0 = fWeld1.C0*CFrame.Angles(math.rad(26),0,0)
fWeld2.C0 = fWeld2.C0*CFrame.Angles(math.rad(26),0,0)
wait(0.005) 
end
end
 
anim = false
active = true
wait()
 
end
 
function Click()
wait(0.1)
if active == false then
return
else
wait()
if anim then
return
else
anim = true
for i = 1,5 do
fWeld1.C0 = fWeld1.C0*CFrame.Angles(0.1,0,0)
wait()
end
for i = 1,5 do
fWeld1.C0 = fWeld1.C0*CFrame.Angles(-0.1,0,0)
wait(0.1)
end
for i = 1,5 do
fWeld2.C0 = fWeld2.C0*CFrame.Angles(0.1,0,0)
wait()
end
for i = 1,5 do
fWeld2.C0 = fWeld2.C0*CFrame.Angles(-0.1,0,0)
wait(0.1)
end
end
anim = false
end
 
for i,t in pairs (m:GetChildren()) do -- Problem here.
if t.Touched ~= nil then
t.Touched:connect(function(damage)
dmg = damage.Parent
for i,r in pairs (dmg:GetChildren()) do
if r.Parent.ClassName == "Humanoid" then
r:TakeDamage(math.random(5000,25000))
end
end
end)
wait()
end
end
 
for i,v in pairs (m:GetChildren()) do
if v.Name == "Blade" then
v.Touched:connect(col)
end
end
end
mouse.Button1Down:connect(Click)
 
function Desel()
 
 
if anim then
return 
else
anim = true
for i = 1,7 do
fWeld1.C0 = fWeld1.C0*CFrame.Angles(math.rad(-26),0,0)
fWeld2.C0 = fWeld2.C0*CFrame.Angles(math.rad(-26),0,0)
wait(0.005) 
end
 
lw1.Part1 = char.Torso
lw1.C0 = CFrame.new(-0.25,-2,-1)*CFrame.Angles(0,0,math.rad(-45))
rw1.Part1 = char.Torso
rw1.C0 = CFrame.new(0.25,-2,-1)*CFrame.Angles(0,0,math.rad(45))
 
for i = 1,9 do
fWeld1.C0 = fWeld1.C0*CFrame.Angles(math.rad(26),0,0)
fWeld2.C0 = fWeld2.C0*CFrame.Angles(math.rad(26),0,0)
wait(math.pi/50) 
end
 
fWeld1.Parent = game.Lighting
joint1.Parent = char.Torso
joint1.Part0 = char.Torso
joint1.Part1 = char["Left Arm"]
fWeld2.Parent = game.Lighting
joint2.Parent = char.Torso
joint2.Part0 = char.Torso
joint2.Part1 = char["Right Arm"]
end
 
anim = false
active = false
end
 
a.Selected:connect(Sel) --hitler
a.Deselected:connect(Desel)
 
