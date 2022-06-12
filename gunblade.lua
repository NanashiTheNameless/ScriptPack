User = game.Players.yfc
Char = User.Character
cen = Instance.new("Part", User.Character)
cen.BottomSurface = "Smooth"
cen.TopSurface = "Smooth"
cen.CanCollide = false
cen.formFactor = "Symmetric"
cen.Size = Vector3.new(1,1,1)
cen.BrickColor = BrickColor.new("Really red")
cen.Transparency = 1
cen2 = Instance.new("Part", User.Character)
cen2.BottomSurface = "Smooth"
cen2.TopSurface = "Smooth"
cen2.CanCollide = false
cen2.formFactor = "Symmetric"
cen2.Size = Vector3.new(1,1,1)
cen2.BrickColor = BrickColor.new("Really red")
cen2.Transparency = 1

cenw = Instance.new("Weld", cen)
cenw.Part0 = Char["Torso"]
cenw.Part1 = cen
cenw.C1 = CFrame.new(-1.5,-0.5,0)

cenw2 = Instance.new("Weld", cen2)
cenw2.Part0 = Char["Torso"]
cenw2.Part1 = cen2
cenw2.C1 = CFrame.new(1.5,-0.5,0)



haw = Instance.new("Weld", cen)
haw.Part0 = cen
haw.Part1 = Char["Right Arm"]
haw.C1 = CFrame.new(0,0.5,0)

haw2 = Instance.new("Weld", cen2)
haw2.Part0 = cen2
haw2.Part1 = Char["Left Arm"]
haw2.C1 = CFrame.new(0,0.5,0)

--[[haw.C0 = CFrame.Angles(math.rad(80),0,math.rad(-15))
haw.C1 = CFrame.new(0.5,1,0)

haw2.C0 = CFrame.Angles(math.rad(80),0,math.rad(35))
haw2.C1 = CFrame.new(0,1.2,0)--]]

haw.Part1 = nil
haw2.Part1 = nil
--[[
prtW.Part0 = Char["Right Arm"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,0.65)*CFrame.Angles(math.rad(0),0,math.rad(0))
--]]

prt1 = Instance.new("Part", Char)
prt1.Size = Vector3.new(1,1,1)
prt1.CanCollide = false
prt1.BrickColor = BrickColor.new("Really black")
prt1.TopSurface = "Smooth"
prt1.Transparency = 1
prt1.BottomSurface = "Smooth"
prtM = Instance.new("BlockMesh", prt1)
prtM.Scale = Vector3.new(0.7,1,0.7)
prt1:BreakJoints()
prtW = Instance.new("Weld", prt1)
prtW.Part0 = Char["Torso"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0.7,0,0)*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(120))

prt7 = Instance.new("Part", Char)
prt7.Size = Vector3.new(1,1,1)
prt7.CanCollide = false
prt7.BrickColor = BrickColor.new("Really black")
prt7.TopSurface = "Smooth"
prt7.Transparency = 1
prt7.BottomSurface = "Smooth"
prtM7 = Instance.new("BlockMesh", prt7)
prtM7.Scale = Vector3.new(0.7,1,0.7)
prt7:BreakJoints()
prtW7 = Instance.new("Weld", prt7)
prtW7.Part0 = prt1
prtW7.Part1 = prt7
prtW7.C1 = CFrame.new(0,-1.09,0.14)*CFrame.Angles(math.rad(-15),0,math.rad(0))

prt2 = Instance.new("Part", Char)
prt2.Size = Vector3.new(1,1,1)
prt2.CanCollide = false
prt2.BrickColor = BrickColor.new("Really black")
prt2.TopSurface = "Smooth"
prt2.Transparency = 1
prt2.BottomSurface = "Smooth"
prtM2 = Instance.new("BlockMesh", prt2)
prtM2.Scale = Vector3.new(0.7,1,0.7)
prt2:BreakJoints()
prtW2 = Instance.new("Weld", prt2)
prtW2.Part0 = prt7
prtW2.Part1 = prt2
prtW2.C1 = CFrame.new(0,-1.09,0.14)*CFrame.Angles(math.rad(-15),0,math.rad(0))

prt3 = Instance.new("Part", Char)
prt3.Size = Vector3.new(1,1,1)
prt3.CanCollide = false
prt3.BrickColor = BrickColor.new("Really black")
prt3.TopSurface = "Smooth"
prt3.Transparency = 1
prt3.BottomSurface = "Smooth"
prtM3 = Instance.new("CylinderMesh", prt3)
prtM3.Scale = Vector3.new(0.7,1,0.7)
prt3:BreakJoints()
prtW3 = Instance.new("Weld", prt3)
prtW3.Part0 = prt1
prtW3.Part1 = prt3
prtW3.C1 = CFrame.new(0,1,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt4 = Instance.new("Part", Char)
prt4.Size = Vector3.new(1,1,1)
prt4.CanCollide = false
prt4.BrickColor = BrickColor.new("Really black")
prt4.TopSurface = "Smooth"
prt4.Transparency = 1
prt4.BottomSurface = "Smooth"
prtM4 = Instance.new("CylinderMesh", prt4)
prtM4.Scale = Vector3.new(1.4,0.1,1.4)
prt4:BreakJoints()
prtW4 = Instance.new("Weld", prt4)
prtW4.Part0 = prt3
prtW4.Part1 = prt4
prtW4.C1 = CFrame.new(0,0.55,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt5 = Instance.new("Part", Char)
prt5.Size = Vector3.new(1,1,1)
prt5.CanCollide = false
prt5.BrickColor = BrickColor.new("Black")
prt5.TopSurface = "Smooth"
prt5.Transparency = 1
prt5.BottomSurface = "Smooth"
prtM5 = Instance.new("CylinderMesh", prt5)
prtM5.Scale = Vector3.new(0.5,1,0.5)
prt5:BreakJoints()
prtW5 = Instance.new("Weld", prt5)
prtW5.Part0 = prt4
prtW5.Part1 = prt5
prtW5.C1 = CFrame.new(0,0.5,0.4)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt6 = Instance.new("Part", Char)
prt6.Size = Vector3.new(1,1,1)
prt6.CanCollide = false
prt6.BrickColor = BrickColor.new("Black")
prt6.TopSurface = "Smooth"
prt6.Transparency = 1
prt6.BottomSurface = "Smooth"
prtM6 = Instance.new("CylinderMesh", prt6)
prtM6.Scale = Vector3.new(0.5,1,0.5)
prt6:BreakJoints()
prtW6 = Instance.new("Weld", prt6)
prtW6.Part0 = prt4
prtW6.Part1 = prt6
prtW6.C1 = CFrame.new(0,0.5,-0.4)*CFrame.Angles(math.rad(0),0,math.rad(0))


prt8 = Instance.new("Part", Char)
prt8.Size = Vector3.new(1,1,1)
prt8.CanCollide = false
prt8.BrickColor = BrickColor.new("Black")
prt8.TopSurface = "Smooth"
prt8.Transparency = 1
prt8.BottomSurface = "Smooth"
prtM8 = Instance.new("CylinderMesh", prt8)
prtM8.Scale = Vector3.new(0.5,1,0.5)
prt8:BreakJoints()
prtW8 = Instance.new("Weld", prt8)
prtW8.Part0 = prt4
prtW8.Part1 = prt8
prtW8.C1 = CFrame.new(0.4,0.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt9 = Instance.new("Part", Char)
prt9.Size = Vector3.new(1,1,1)
prt9.CanCollide = false
prt9.BrickColor = BrickColor.new("Black")
prt9.TopSurface = "Smooth"
prt9.Transparency = 1
prt9.BottomSurface = "Smooth"
prtM9 = Instance.new("CylinderMesh", prt9)
prtM9.Scale = Vector3.new(0.5,1,0.5)
prt9:BreakJoints()
prtW9 = Instance.new("Weld", prt9)
prtW9.Part0 = prt4
prtW9.Part1 = prt9
prtW9.C1 = CFrame.new(-0.4,0.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt10 = Instance.new("Part", Char)
prt10.Size = Vector3.new(1,1,1)
prt10.CanCollide = false
prt10.BrickColor = BrickColor.new("Really black")
prt10.TopSurface = "Smooth"
prt10.Transparency = 1
prt10.BottomSurface = "Smooth"
prtM10 = Instance.new("CylinderMesh", prt10)
prtM10.Scale = Vector3.new(1.4,0.1,1.4)
prt10:BreakJoints()
prtW10 = Instance.new("Weld", prt10)
prtW10.Part0 = prt4
prtW10.Part1 = prt10
prtW10.C1 = CFrame.new(0,1,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

blade = Instance.new("Part", Char)
blade.Size = Vector3.new(1,1,1)
blade.CanCollide = false
blade.BrickColor = BrickColor.new("Bright red")
blade.TopSurface = "Smooth"
blade.Transparency = 1
blade.Reflectance = 0
blade.BottomSurface = "Smooth"
bladeM = Instance.new("BlockMesh", blade)
bladeM.Scale = Vector3.new(0.1,3,1)
blade:BreakJoints()
bladeW = Instance.new("Weld", blade)
bladeW.Part0 = prt10
bladeW.Part1 = blade
bladeW.C1 = CFrame.new(0,1.75,-0.35)*CFrame.Angles(math.rad(0),0,math.rad(0))

blade.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= Char.Name then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - hit.Parent.Humanoid.MaxHealth/math.random(10,20)
end
end)

blade2 = Instance.new("Part", Char)
blade2.Size = Vector3.new(1,1,1)
blade2.CanCollide = false
blade2.BrickColor = BrickColor.new("Bright red")
blade2.TopSurface = "Smooth"
blade2.Transparency = 1
blade2.Reflectance = 0
blade2.BottomSurface = "Smooth"
bladeM2 = Instance.new("SpecialMesh", blade2)
bladeM2.MeshType = "Wedge"
bladeM2.Scale = Vector3.new(0.1,1,1)
blade2:BreakJoints()
bladeW2 = Instance.new("Weld", blade2)
bladeW2.Part0 = blade
bladeW2.Part1 = blade2
bladeW2.C1 = CFrame.new(0,-2.4,0)*CFrame.Angles(math.rad(180),0,math.rad(0))

blade2.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= Char.Name then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - hit.Parent.Humanoid.MaxHealth/math.random(10,20)
end
end)

blade3 = Instance.new("Part", Char)
blade3.Size = Vector3.new(1,1,1)
blade3.CanCollide = false
blade3.BrickColor = BrickColor.new("Bright red")
blade3.TopSurface = "Smooth"
blade3.Transparency = 1 
blade3.Reflectance = 0
blade3.BottomSurface = "Smooth"
bladeM3 = Instance.new("SpecialMesh", blade3)
bladeM3.MeshType = "Wedge"
bladeM3.Scale = Vector3.new(0.1,1,0.5)
blade3:BreakJoints()
bladeW3 = Instance.new("Weld", blade3)
bladeW3.Part0 = blade2
bladeW3.Part1 = blade3
bladeW3.C1 = CFrame.new(0,-0.5,-0.25)*CFrame.Angles(math.rad(0),0,math.rad(0))

blade3.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= Char.Name then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - hit.Parent.Humanoid.MaxHealth/math.random(10,20)
end
end)

prt11 = Instance.new("Part", Char)
prt11.Size = Vector3.new(1,1,1)
prt11.CanCollide = false
prt11.BrickColor = BrickColor.new("Really black")
prt11.TopSurface = "Smooth"
prt11.Transparency = 1
prt11.BottomSurface = "Smooth"
prtM11 = Instance.new("CylinderMesh", prt11)
prtM11.Scale = Vector3.new(0.5,4.4,0.5)
prt11:BreakJoints()
prtW11 = Instance.new("Weld", prt11)
prtW11.Part0 = blade
prtW11.Part1 = prt11
prtW11.C1 = CFrame.new(0,1,0.75)*CFrame.Angles(math.rad(0),0,math.rad(0))

blade5 = Instance.new("Part", Char)
blade5.Size = Vector3.new(1,1,1)
blade5.CanCollide = false
blade5.BrickColor = BrickColor.new("Really blue")
blade5.TopSurface = "Smooth"
blade5.Transparency = 1
blade5.Reflectance = 0
blade5.BottomSurface = "Smooth"
bladeM5 = Instance.new("BlockMesh", blade5)
bladeM5.Scale = Vector3.new(0,0,0)
blade5:BreakJoints()
bladeW5 = Instance.new("Weld", blade5)
bladeW5.Part0 = prt11
bladeW5.Part1 = blade5
bladeW5.C1 = CFrame.new(0,2.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

blade4 = Instance.new("Part", Char)
blade4.Size = Vector3.new(1,1,1)
blade4.CanCollide = false
blade4.BrickColor = BrickColor.new("Really blue")
blade4.TopSurface = "Smooth"
blade4.Transparency = 1
blade4.Reflectance = 0
blade4.BottomSurface = "Smooth"
bladeM4 = Instance.new("BlockMesh", blade4)
bladeM4.Scale = Vector3.new(0,0,0)
blade4:BreakJoints()
bladeW4 = Instance.new("Weld", blade4)
bladeW4.Part0 = blade5
bladeW4.Part1 = blade4
bladeW4.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

trig = Instance.new("Part", Char)
trig.Size = Vector3.new(1,1,1)
trig.CanCollide = false
trig.BrickColor = BrickColor.new("Really black")
trig.Transparency = 1
trig.BottomSurface = "Smooth"
trigM = Instance.new("SpecialMesh", trig)
trigM.MeshType = "FileMesh"
trigM.MeshId = "http://www.roblox.com/asset/?id=3270017"
trigM.Scale = Vector3.new(0.5,0.5,0.1)
trig:BreakJoints()
trigW = Instance.new("Weld", trig)
trigW.Part0 = prt3
trigW.Part1 = trig
trigW.C1 = CFrame.new(-0.3,0.2,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))

trig2 = Instance.new("Part", Char)
trig2.Size = Vector3.new(1,1,1)
trig2.CanCollide = false
trig2.BrickColor = BrickColor.new("Really black")
trig2.Transparency = 1
trig2.BottomSurface = "Smooth"
trigM2 = Instance.new("BlockMesh", trig2)
trigM2.Scale = Vector3.new(0.3,0.05,0.05)
trig2:BreakJoints()
trigW2 = Instance.new("Weld", trig2)
trigW2.Part0 = trig
trigW2.Part1 = trig2
trigW2.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

-------------------------------------------------

shell = Instance.new("Part", Char)
shell.Size = Vector3.new(1,1,1)
shell.CanCollide = false
shell.BrickColor = BrickColor.new("Bright red")
shell.Transparency = 1
shell.BottomSurface = "Smooth"
shellM = Instance.new("CylinderMesh", shell)
shellM.Scale = Vector3.new(0.4,0.6,0.4)
shell:BreakJoints()
shellW = Instance.new("Weld", shell)
shellW.Part0 = Char["Torso"]
shellW.Part1 = shell
shellW.C1 = CFrame.new(0,0,-0.6)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(45))

------------------------------------------------
function Equip()
haw.Part1 = Char["Right Arm"]
haw2.Part1 = Char["Left Arm"]
for i = 1,270,10 do
haw.C0 = CFrame.Angles(math.rad(i),math.rad(0),0)
wait()
end
prtW.Part0 = Char["Right Arm"]
prtW.C1 = CFrame.new(0,0,0.65)*CFrame.Angles(math.rad(0),0,math.rad(0))
for i = 1,270,10 do
haw.C0 = CFrame.Angles(math.rad(270-i),math.rad(0),0)
wait()
end

for i = 1,80 do

haw.C0 = CFrame.Angles(math.rad(i),0,math.rad(-i/5.3))
haw.C1 = CFrame.new(i*0.00625,i*0.0125,0)

haw2.C0 = CFrame.Angles(math.rad(i),0,math.rad(i/2.28))
haw2.C1 = CFrame.new(0,i*0.015,0)
wait()
end
haw.C0 = CFrame.Angles(math.rad(80),0,math.rad(-15))
haw.C1 = CFrame.new(0.5,1,0)

haw2.C0 = CFrame.Angles(math.rad(80),0,math.rad(35))
haw2.C1 = CFrame.new(0,1.2,0)
end

function UnEquip()
for i = 1,80 do

haw.C0 = CFrame.Angles(math.rad(80-i),0,math.rad(-15+i/5.3))
haw.C1 = CFrame.new(0.5-i*0.00625,1-i*0.0125,0)

haw2.C0 = CFrame.Angles(math.rad(80-i),0,math.rad(35-i/2.28))
haw2.C1 = CFrame.new(0,1.2-i*0.015,0)
wait()
end

haw.C1 = CFrame.new(0,0.5,0)
haw2.C1 = CFrame.new(0,0.5,0)

for i = 1,270,10 do
haw.C0 = CFrame.Angles(math.rad(i),math.rad(0),0)
wait()
end
prtW.Part0 = Char["Torso"]
prtW.C1 = CFrame.new(0.7,0,0)*CFrame.Angles(math.rad(0),math.rad(-90),math.rad(120))
for i = 1,270,10 do
haw.C0 = CFrame.Angles(math.rad(270-i),math.rad(0),0)
wait()
end
haw.Part1 = nil
haw2.Part1 = nil

end

function Shoot()
for i = 1,10 do
haw.C0 = CFrame.Angles(math.rad(80+i),0,math.rad(-15))
haw2.C0 = CFrame.Angles(math.rad(80+i),0,math.rad(35))
wait()
end
for i = 1,720,10 do
bladeM4.Scale = Vector3.new(i/200,i/200,i/200)
bladeW4.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(i),math.rad(i),math.rad(i))
wait()
end
bladeM4.Scale = Vector3.new(0,0,0)

end

function Spin()
for i = 1,90,2 do
prtW5.C1 = CFrame.new(0,0.5,0.4)*CFrame.Angles(math.rad(0),math.rad(i),math.rad(0))
prtW6.C1 = CFrame.new(0,0.5,-0.4)*CFrame.Angles(math.rad(0),math.rad(i),math.rad(0))
prtW8.C1 = CFrame.new(0.4,0.5,0)*CFrame.Angles(math.rad(0),math.rad(i),math.rad(0))
prtW9.C1 = CFrame.new(-0.4,0.5,0)*CFrame.Angles(math.rad(0),math.rad(i),math.rad(0))
wait()
end
end

function Load()
for i = 1,180,10 do
haw2.C0 = CFrame.Angles(math.rad(90-i),0,math.rad(35))
wait()
end
for i = 1,180,10 do
haw2.C0 = CFrame.Angles(math.rad(-90+i),0,math.rad(35))
wait()
end
haw2.C0 = CFrame.Angles(math.rad(80),0,math.rad(35))
end

function Open()
for i = 1,10,0.5 do
haw2.C0 = CFrame.Angles(math.rad(90),0,math.rad(35-i))
haw2.C1 = CFrame.new(0,1.2+i/10,0)
wait()
end
for i = 1,35,1 do
prtW4.C1 = CFrame.new(0,0.75,i/100)*CFrame.Angles(math.rad(i),0,0)
wait()
end
haw2.C0 = CFrame.Angles(math.rad(90),0,math.rad(35))
haw2.C1 = CFrame.new(0,1.2,0)
end

function Close()
for i = 1,10,0.5 do
haw2.C0 = CFrame.Angles(math.rad(90),0,math.rad(35-i))
haw2.C1 = CFrame.new(0,1.2+i/10,0)
wait()
end
for i = 1,35,1 do
prtW4.C1 = CFrame.new(0,0.75,0.35-i/100)*CFrame.Angles(math.rad(35-i),0,0)
wait()
end
prtW4.C1 = CFrame.new(0,0.55,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
haw2.C0 = CFrame.Angles(math.rad(90),0,math.rad(35))
haw2.C1 = CFrame.new(0,1.2,0)
end

function SlashE()
---
local sound = Instance.new("Sound", Char.Head)
sound.SoundId = "rbxasset://sounds\\swordslash.wav"
sound.Pitch = 0.8
sound.PlayOnRemove = true
wait()
sound.Parent = nil
---
for i = 1,90,15 do
haw.C0 = CFrame.Angles(math.rad(80+i/2),0,math.rad(-15+1/2))
wait()
end
for i = 1,45,5 do
haw.C0 = CFrame.Angles(math.rad(145-i*2),0,math.rad(30-i))
wait()
end
haw.C0 = CFrame.Angles(math.rad(80),0,math.rad(-15))
end

-------------------------------------------------------------

if not script.Parent:IsA("HopperBin") then
h = Instance.new("HopperBin", User.Backpack)
h.Name = "Sword"
script.Parent = h
end

script.Parent.Selected:connect(function(mouse)
Equip()
mouse.KeyDown:connect(function(key)
if key == "r" then
Load()
Spin()
elseif key == "q" then
Open()
elseif key == "e" then
Close()
elseif key == "z" then
SlashE()
end
end)

mouse.Button1Down:connect(function()
Shoot()
delay(0, function()
wait(0.2*7*2)
for i = 1,10 do
haw.C0 = CFrame.Angles(math.rad(90-i),0,math.rad(-15))
haw2.C0 = CFrame.Angles(math.rad(90-i),0,math.rad(35))
wait()
end
haw.C0 = CFrame.Angles(math.rad(80),0,math.rad(-15))
haw2.C0 = CFrame.Angles(math.rad(80),0,math.rad(35))
end)

local P = Instance.new("Part") 
P.Name = "P"
local Place0 = blade4
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.Position - mouse.Hit.p).magnitude) 
P.CFrame = CFrame.new((Place0.Position + mouse.Hit.p)/2,Place0.Position) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.new("Institutional white")
P.Transparency = 1
P.Reflectance = 0 
P.Anchored = true 
P.CanCollide = false 
m6 = Instance.new("BlockMesh") 
m6.Scale = Vector3.new(1,1,1) 
m6.Parent = P
local exp = Instance.new("Explosion", workspace)
exp.Position = mouse.Hit.p
delay(0.03, function()
for i,v in pairs(game.Players:children()) do
if v.Name ~= User.Name then
if (v.Character.Torso.Position - mouse.hit.p).magnitude <= 5 then
damage = math.random(50,75)
crit = math.random(1,10)
if crit > 2 then
v.Character.Humanoid.Health = v.Character.Humanoid.Health - damage
elseif crit <= 2 then
v.Character.Humanoid.Health = v.Character.Humanoid.Health - (damage+20)
end
end
end
end
end)
Spin()

for i = 1,7 do
P.Transparency = P.Transparency + 0.1
wait(0.2)
end
P:Remove()
end)
end)

script.Parent.Deselected:connect(function()
UnEquip()
end)

--password

--Q = open, E = closed, Z = melee, R = +1 ammo