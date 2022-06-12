User = game.Players.LocalPlayer
--lego
Char = User.Character
moving = false
Position = 1
cen = Instance.new("Part", User.Character)
cen.BottomSurface = "Smooth"
cen.TopSurface = "Smooth"
cen.CanCollide = false
cen.formFactor = "Symmetric"
cen.Size = Vector3.new(1,1,1)
cen.BrickColor = BrickColor.new("Really black")
cen.Transparency = 1

cen2 = Instance.new("Part", User.Character)
cen2.BottomSurface = "Smooth"
cen2.TopSurface = "Smooth"
cen2.CanCollide = false
cen2.formFactor = "Symmetric"
cen2.Size = Vector3.new(1,1,1)
cen2.BrickColor = BrickColor.new("Really black")
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

Torso = Instance.new("Part", Char)
Torso.formFactor = "Symmetric"
Torso.BrickColor = Char.Torso.BrickColor
Torso.Size = Char.Torso.Size
Torso.Transparency = 1
Torso:BreakJoints()
Torsow = Instance.new("Weld", Torso)
Torsow.Part0 = Char["Torso"]
Torsow.Part1 = Torso
Torsow.C1 = CFrame.Angles(0,math.rad(45),0)
bowMain = Instance.new("Part", Char)
bowMain.Size = Vector3.new(1,1,1)
bowMain.BottomSurface = "Smooth"
bowMain.TopSurface = "Smooth"
bowMain.BrickColor = BrickColor.new("CGA brown")
bowMain.CanCollide = false
bowM = Instance.new("CylinderMesh", bowMain)
bowM.Scale = Vector3.new(0.5,1,0.5)
bowMain:BreakJoints()
bowW = Instance.new("Weld", bowMain)
bowW.Part0 = Char["Right Arm"]
bowW.Part1 = bowMain
bowW.C1 = CFrame.new(0,0,1)*CFrame.Angles(math.rad(90),0,math.rad(0))

bowMain2 = Instance.new("Part", Char)
bowMain2.Size = Vector3.new(1,1,1)
bowMain2.BottomSurface = "Smooth"
bowMain2.TopSurface = "Smooth"
bowMain2.CanCollide = false
bowMain2.BrickColor = BrickColor.new("Reddish brown")
bowM2 = Instance.new("CylinderMesh", bowMain2)
bowM2.Scale = Vector3.new(0.3,2,0.3)
bowMain2:BreakJoints()
bowW2 = Instance.new("Weld", bowMain2)
bowW2.Part0 = Char["Right Arm"]
bowW2.Part1 = bowMain2
bowW2.C1 = CFrame.new(0,1.8,1)*CFrame.Angles(math.rad(90),0,math.rad(0))

bowMain3 = Instance.new("Part", Char)
bowMain3.Size = Vector3.new(1,1,1)
bowMain3.BottomSurface = "Smooth"
bowMain3.TopSurface = "Smooth"
bowMain3.CanCollide = false
bowMain3.BrickColor = BrickColor.new("Reddish brown")
bowM3 = Instance.new("CylinderMesh", bowMain3)
bowM3.Scale = Vector3.new(0.3,2,0.3)
bowMain3:BreakJoints()
bowW3 = Instance.new("Weld", bowMain3)
bowW3.Part0 = Char["Right Arm"]
bowW3.Part1 = bowMain3
bowW3.C1 = CFrame.new(0,-1.8,1)*CFrame.Angles(math.rad(90),0,math.rad(0))

bowMain4 = Instance.new("Part", Char)
bowMain4.Size = Vector3.new(1,1,1)
bowMain4.BottomSurface = "Smooth"
bowMain4.CanCollide = false
bowMain4.TopSurface = "Smooth"
bowMain4.BrickColor = BrickColor.new("Reddish brown")
bowM4 = Instance.new("CylinderMesh", bowMain4)
bowM4.Scale = Vector3.new(0.3,0.5,0.3)
bowMain4:BreakJoints()
bowW4 = Instance.new("Weld", bowMain4)
bowW4.Part0 = bowMain3
bowW4.Part1 = bowMain4
bowW4.C1 = CFrame.new(0,-1.8/2-0.5,0.3)*CFrame.Angles(math.rad(-15),0,math.rad(0))

bowMain5 = Instance.new("Part", Char)
bowMain5.Size = Vector3.new(1,1,1)
bowMain5.BottomSurface = "Smooth"
bowMain5.TopSurface = "Smooth"
bowMain5.BrickColor = BrickColor.new("Reddish brown")
bowMain5.CanCollide = false
bowM5 = Instance.new("CylinderMesh", bowMain5)
bowM5.Scale = Vector3.new(0.3,0.5,0.3)
bowMain5:BreakJoints()
bowW5 = Instance.new("Weld", bowMain5)
bowW5.Part0 = bowMain2
bowW5.Part1 = bowMain5
bowW5.C1 = CFrame.new(0,1.8/2+0.5,0.3)*CFrame.Angles(math.rad(15),0,math.rad(0))

bowMain6 = Instance.new("Part", Char)
bowMain6.Size = Vector3.new(1,1,1)
bowMain6.BottomSurface = "Smooth"
bowMain6.TopSurface = "Smooth"
bowMain6.CanCollide = false
bowMain6.BrickColor = BrickColor.new("Reddish brown")
bowM6 = Instance.new("CylinderMesh", bowMain6)
bowM6.Scale = Vector3.new(0.3,0.7,0.3)
bowMain6:BreakJoints()
bowW6 = Instance.new("Weld", bowMain6)
bowW6.Part0 = bowMain4
bowW6.Part1 = bowMain6
bowW6.C1 = CFrame.new(0,-0.58,0.2)*CFrame.Angles(math.rad(-42),0,math.rad(0))

bowMain7 = Instance.new("Part", Char)
bowMain7.Size = Vector3.new(1,1,1)
bowMain7.BottomSurface = "Smooth"
bowMain7.TopSurface = "Smooth"
bowMain7.CanCollide = false
bowMain7.BrickColor = BrickColor.new("Reddish brown")
bowM7 = Instance.new("CylinderMesh", bowMain7)
bowM7.Scale = Vector3.new(0.3,0.7,0.3)
bowMain7:BreakJoints()
bowW7 = Instance.new("Weld", bowMain7)
bowW7.Part0 = bowMain5
bowW7.Part1 = bowMain7
bowW7.C1 = CFrame.new(0,0.58,0.2)*CFrame.Angles(math.rad(42),0,math.rad(0))


bowString = Instance.new("Part", Char)
bowString.Size = Vector3.new(1,1,1)
bowString.BottomSurface = "Smooth"
bowString.TopSurface = "Smooth"
bowString.CanCollide = false
bowString.BrickColor = BrickColor.new("Institutional white")
bowStringM = Instance.new("CylinderMesh", bowString)
bowStringM.Scale = Vector3.new(0.1,6.5,0.1)
bowString:BreakJoints()
bowStringW = Instance.new("Weld", bowString)
bowStringW.Part0 = Char["Right Arm"]
bowStringW.Part1 = bowString
bowStringW.C1 = CFrame.new(0,0,0.25)*CFrame.Angles(math.rad(90),0,math.rad(0))

pack5 = Instance.new("Part", Char)
pack5.Size = Vector3.new(1,1,1)
pack5.TopSurface = "Smooth"
pack5.BottomSurface = "Smooth"
pack5.Transparency = 1
pack5.BrickColor = BrickColor.new("Really black")

packm5 = Instance.new("SpecialMesh", pack5)
packm5.MeshType = "FileMesh"
packm5.MeshId = "http://www.roblox.com/asset/?id=15887356"
packm5.Scale = Vector3.new(1,1,1)
packm5.TextureId = "http://www.roblox.com/asset/?id=15886781"
pack5:BreakJoints()
packw5 = Instance.new("Weld", pack5)
packw5.Part0 = Char["Right Arm"]
packw5.Part1 = pack5
packw5.C1 = CFrame.new(0,0,-1.22)*CFrame.Angles(math.rad(-90),0,0)

arrowh = Instance.new("Part", User.Character)
arrowh.formFactor = "Symmetric"
arrowh.Size = Vector3.new(1,1,1)
arrowh.BrickColor = BrickColor.new("Really black")
arrowh.TopSurface = "Smooth"
arrowh.Transparency = 1
arrowh.BottomSurface = "Smooth"
arrowm = Instance.new("SpecialMesh", arrowh)
arrowm.MeshType = "FileMesh"
arrowm.Scale = Vector3.new(1,1,1)
arrowm.MeshId = "http://www.roblox.com/asset/?id=15887356"
arrowm.TextureId = "http://www.roblox.com/asset/?id=15886781"
arrowh:BreakJoints()
knifeprt12wld = Instance.new("Weld") 
knifeprt12wld.Parent = arrowh 
knifeprt12wld.Part0 = Char["Left Arm"] 
knifeprt12wld.Part1 = arrowh
knifeprt12wld.C1 = CFrame.new(0,-1,0)*CFrame.Angles(math.rad(180),0,0)

pack = Instance.new("Part", Char)
pack.Size = Vector3.new(1,1,1)
pack.TopSurface = "Smooth"
pack.BottomSurface = "Smooth"
pack.BrickColor = BrickColor.new("Brown")

packm = Instance.new("SpecialMesh", pack)
packm.MeshType = "FileMesh"
packm.MeshId = "http://www.roblox.com/asset/?id=19380188"
packm.Scale = Vector3.new(1.05,3,0.5)
pack:BreakJoints()
packw = Instance.new("Weld", pack)
packw.Part0 = Char["Torso"]
packw.Part1 = pack
packw.C1 = CFrame.new(0,0,0.7)*CFrame.Angles(math.rad(180),0,0)

pack2 = Instance.new("Part", Char)
pack2.Size = Vector3.new(1,1,1)
pack2.TopSurface = "Smooth"
pack2.BottomSurface = "Smooth"
pack2.BrickColor = BrickColor.new("Really black")

packm2 = Instance.new("SpecialMesh", pack2)
packm2.MeshType = "FileMesh"
packm2.MeshId = "http://www.roblox.com/asset/?id=15887356"
packm2.Scale = Vector3.new(1,1,1)
packm2.TextureId = "http://www.roblox.com/asset/?id=15886781"
pack2:BreakJoints()
packw2 = Instance.new("Weld", pack2)
packw2.Part0 = Char["Torso"]
packw2.Part1 = pack2
packw2.C1 = CFrame.new(0,-0.7,0.5)*CFrame.Angles(math.rad(-90),0,0)

pack3 = Instance.new("Part", Char)
pack3.Size = Vector3.new(1,1,1)
pack3.TopSurface = "Smooth"
pack3.BottomSurface = "Smooth"
pack3.BrickColor = BrickColor.new("Really black")

packm3 = Instance.new("SpecialMesh", pack3)
packm3.MeshType = "FileMesh"
packm3.MeshId = "http://www.roblox.com/asset/?id=15887356"
packm3.Scale = Vector3.new(1,1,1)
packm3.TextureId = "http://www.roblox.com/asset/?id=15886781"
pack3:BreakJoints()
packw3 = Instance.new("Weld", pack3)
packw3.Part0 = Char["Torso"]
packw3.Part1 = pack3
packw3.C1 = CFrame.new(0.5,-0.7,0.5)*CFrame.Angles(math.rad(-90),0,0)

pack4 = Instance.new("Part", Char)
pack4.Size = Vector3.new(1,1,1)
pack4.TopSurface = "Smooth"
pack4.BottomSurface = "Smooth"
pack4.BrickColor = BrickColor.new("Really black")

packm4 = Instance.new("SpecialMesh", pack4)
packm4.MeshType = "FileMesh"
packm4.MeshId = "http://www.roblox.com/asset/?id=15887356"
packm4.Scale = Vector3.new(1,1,1)
packm4.TextureId = "http://www.roblox.com/asset/?id=15886781"
pack4:BreakJoints()
packw4 = Instance.new("Weld", pack4)
packw4.Part0 = Char["Torso"]
packw4.Part1 = pack4
packw4.C1 = CFrame.new(-0.5,-0.7,0.5)*CFrame.Angles(math.rad(-90),0,0)

strap = Instance.new("Part", Char)
strap.formFactor = "Symmetric"
strap.Size = Vector3.new(1,2,1)
strap.BrickColor = BrickColor.new("Brown")
strap.CanCollide = false
strapm = Instance.new("BlockMesh", strap)
strapm.Scale = Vector3.new(0.1,1.05,1.1)
strap:BreakJoints()
strapw = Instance.new("Weld", strap)
strapw.Part0 = Char["Torso"]
strapw.Part1 = strap
strapw.C1 = CFrame.new(0.5,0,0)*CFrame.Angles(0,0,math.rad(0))

strap2 = Instance.new("Part", Char)
strap2.formFactor = "Symmetric"
strap2.Size = Vector3.new(1,2,1)
strap2.BrickColor = BrickColor.new("Brown")
strap2.CanCollide = false
strapm2 = Instance.new("BlockMesh", strap2)
strapm2.Scale = Vector3.new(0.1,1.05,1.1)
strap2:BreakJoints()
strapw2 = Instance.new("Weld", strap2)
strapw2.Part0 = Char["Torso"]
strapw2.Part1 = strap2
strapw2.C1 = CFrame.new(-0.5,0,0)*CFrame.Angles(0,0,math.rad(0))
bowMain4.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= Char.Name then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 7
end
end)
---ANIMATION FUNCTIONS---
function Melee()
for i = 1,90,10 do
delay(0, function()
local ghost = bowMain4:clone()
ghost.Transparency = 0.5
ghost.Mesh:Remove()
local ghostm = Instance.new("BlockMesh", ghost)
ghost.Anchored = true
ghostm.Scale = Vector3.new(0.1,1,1)
ghost.Parent = Char
ghost.CFrame = bowMain4.CFrame
ghost.BrickColor = BrickColor.new("Institutional white")
delay(0, function()
ghostm.Scale = ghostm.Scale - Vector3.new(0,0.5,0)
wait()
end)
wait(0.06)
ghost:Remove()
end)
haw.C0 = CFrame.Angles(math.rad(45-i),0,math.rad(-45/2))
wait()
end
for i = 1,90,10 do
haw.C0 = CFrame.Angles(math.rad(-45+i),0,math.rad(-45/2))
wait()
end
end
function OnEquippedRA()
for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(i),0,math.rad(-i/2))
wait()
end
end

function OnLoadingRA()
for i = 1,45,3 do
haw.C0 = CFrame.Angles(math.rad(45+i+i/2),math.rad(i),math.rad(-45/2))
wait()
end
end

function OnLoadingLA()
for i = 1,45,3 do
haw2.C0 = CFrame.Angles(math.rad(-i*2),0,math.rad(i))
haw2.C1 = CFrame.new(0,0.5,0)
wait()
end
arrowh.Transparency = 0
for i = 1,45,3 do
haw2.C0 = CFrame.Angles(math.rad(-90+i*2),0,math.rad(45+ -i))
haw2.C1 = CFrame.new(0,0.5,0)
wait()
end
for i = 1,45,3 do
haw2.C0 = CFrame.Angles(math.rad(i*2),0,math.rad(i))
haw2.C1 = CFrame.new(0,0.5,0)
wait()
end
pack5.Transparency = 0
arrowh.Transparency = 1
for i = 1,45,3 do
haw2.C0 = CFrame.Angles(math.rad(90+ -i*2),0,math.rad(45+ -i))
haw2.C1 = CFrame.new(0,0.5,0)
wait()
end
haw2.Part1 = nil
end

function OnFiring()
haw2.Part1 = Char["Left Arm"]
for i = 1,45,3 do
haw2.C1 = CFrame.new(0,i/30,0)
haw2.C0 = CFrame.Angles(math.rad(i*2),0,math.rad(i))
wait()
end
end

function AfterFiring()
for i = 1,45,3 do
haw2.C0 = CFrame.Angles(math.rad(90+ -i*2),0,math.rad(45+ -i))
wait()
end
haw2.Part1 = nil
end
haw.Part1 = nil
haw2.Part1 = nil
if not script.Parent:IsA("HopperBin") then
h = Instance.new("HopperBin", User.Backpack)
h.Name = "Bow"
script.Parent = h
end
-------------------------
script.Parent.Selected:connect(function(mouse)
cenw.Part0 = Torso
cenw2.Part0 = Torso
packw.Part0 = Torso
packw2.Part0 = Torso
packw3.Part0 = Torso
packw4.Part0 = Torso
strapw.Part0 = Torso
strapw2.Part0 = Torso
Char["Torso"]["Right Shoulder"].Part0 = Torso
Char["Torso"]["Left Shoulder"].Part0 = Torso
Char["Torso"]["Left Hip"].Part0 = Torso
Char["Torso"]["Right Hip"].Part0 = Torso
Char["Torso"].Transparency = 1
Torso.Transparency = 0
mouse.KeyDown:connect(function(key)
if key == "e" and Position == 1 then
Melee()
end
end)
haw.Part1 = Char["Right Arm"]
OnEquippedRA()
mouse.Button1Down:connect(function()
if Position == 1 and moving == false then
haw2.Part1 = Char["Left Arm"]
Position = 2
moving = true
OnLoadingRA()
OnLoadingLA()

moving = false
elseif Position == 2 and moving == false then
Position = 1
moving = true
OnFiring()
if mouse.Target.Parent:FindFirstChild("Humanoid") then
mouse.Target.Parent:BreakJoints()
end

pack5.Transparency = 1

sound = Instance.new("Sound", workspace[Char.Name].Torso)
sound.SoundId = "http://www.roblox.com/asset/?id=16211041"
sound.Pitch = 1.2
sound.PlayOnRemove = true
wait()
sound.Parent = nil

local P = Instance.new("Part") 
P.Name = "P"
local Place0 = bowMain
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.Position - mouse.Hit.p).magnitude) 
P.CFrame = CFrame.new((Place0.Position + mouse.Hit.p)/2,Place0.Position) 
P.Parent = game.Workspace 
P.BrickColor = BrickColor.new("Institutional white")
P.Transparency = 0.3
P.Reflectance = 0 
P.Anchored = true 
P.CanCollide = false 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(0.3,0.3,1) 
m6.MeshType = "Brick" 
m6.Parent = P



for i = 1,7 do
P.Transparency = P.Transparency + 0.1
wait(0.1)
end
P:Remove()


wait(1)
haw2.Part1 = nil
haw2.C0 = CFrame.Angles(0,0,0)
haw2.C1 = CFrame.new(0,0.5,0)
OnEquippedRA()
moving = false
end
end)

end)


script.Parent.Deselected:connect(function()
cenw.Part0 = Char["Torso"]
cenw2.Part0 = Char["Torso"]
packw.Part0 = Char["Torso"]
packw2.Part0 = Char["Torso"]
packw3.Part0 = Char["Torso"]
packw4.Part0 = Char["Torso"]
strapw.Part0 = Char["Torso"]
strapw2.Part0 = Char["Torso"]
Char["Torso"]["Right Shoulder"].Part0 = Char["Torso"]
Char["Torso"]["Left Shoulder"].Part0 = Char["Torso"]
Char["Torso"]["Left Hip"].Part0 = Char["Torso"]
Char["Torso"]["Right Hip"].Part0 = Char["Torso"]
Char["Torso"].Transparency = 0
Torso.Transparency = 1
pack5.Transparency = 1
Position = 1
haw2.Part1 = nil
haw.Part1 = nil
end)