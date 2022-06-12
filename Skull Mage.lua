

User = game.Players.LocalPlayer

Char = User.Character

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

haw.Part1 = nil
haw2.Part1 = nil

Torso = Instance.new("Part", Char)
Torso.formFactor = "Symmetric"
Torso.BrickColor = Char.Torso.BrickColor
Torso.Size = Char.Torso.Size
Torso.Transparency = 1
Torso.Reflectance = 0
Torso:BreakJoints()
Torsow = Instance.new("Weld", Torso)
Torsow.Part0 = Char["Torso"]
Torsow.Part1 = Torso
Torsow.C1 = CFrame.Angles(0,math.rad(0),0)
Hw = Instance.new("Weld", Torso)
Hw.Part0 = Torso
Hw.Part1 = Char.Head
Hw.C1 = CFrame.new(0,-1.5,0)

prt1f = Instance.new("Part", Char)
prt1f.Size = Vector3.new(1,1,1)
prt1f.CanCollide = false
prt1f.BrickColor = BrickColor.new("Institutional white")
prt1f.TopSurface = "Smooth"
prt1f.Transparency = 1
prt1f.BottomSurface = "Smooth"
prtfM = Instance.new("CylinderMesh", prt1f)
prtfM.Scale = Vector3.new(0.2,4,0.2)
prt1f:BreakJoints()
prtfW = Instance.new("Weld", prt1f)
prtfW.Part0 = Char["Right Arm"]
prtfW.Part1 = prt1f
prtfW.C1 = CFrame.new(0,-0.5,1)*CFrame.Angles(math.rad(90),0,math.rad(0))

prt1 = Instance.new("Part", Char)
prt1.Size = Vector3.new(1,1,1)
prt1.CanCollide = false
prt1.BrickColor = BrickColor.new("Institutional white")
prt1.TopSurface = "Smooth"
prt1.Transparency = 0.5
prt1.BottomSurface = "Smooth"
prtM = Instance.new("CylinderMesh", prt1)
prtM.Scale = Vector3.new(0.2,4,0.2)
prt1:BreakJoints()
prtW = Instance.new("Weld", prt1)
prtW.Part0 = prt1f
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

for i = 0,17 do
prt = Instance.new("Part", Char)
prt.formFactor = "Custom"
prt.Size = Vector3.new(1,1,1)
prt.CanCollide = false
prt.BrickColor = BrickColor.new("Really black")
prt.TopSurface = "Smooth"
prt.Transparency = 0
prt.BottomSurface = "Smooth"
prtMm = Instance.new("SpecialMesh", prt)
prtMm.MeshType = "Sphere"
prtMm.Scale = Vector3.new(0.15,0.15,0.15)
prt:BreakJoints()
prtWw = Instance.new("Weld", prt)
prtWw.Part0 = prt1
prtWw.Part1 = prt
prtWw.C1 = CFrame.new(0,-i/8,0.07)*CFrame.Angles(math.rad(0),math.rad(i*50),math.rad(0))

end

for i = 1,17 do
prt = Instance.new("Part", Char)
prt.formFactor = "Custom"
prt.Size = Vector3.new(1,1,1)
prt.CanCollide = false
prt.BrickColor = BrickColor.new("Really black")
prt.TopSurface = "Smooth"
prt.Transparency = 0
prt.BottomSurface = "Smooth"
prtMm = Instance.new("SpecialMesh", prt)
prtMm.MeshType = "Sphere"
prtMm.Scale = Vector3.new(0.15,0.15,0.15)
prt:BreakJoints()
prtWw = Instance.new("Weld", prt)
prtWw.Part0 = prt1
prtWw.Part1 = prt
prtWw.C1 = CFrame.new(0,i/8,0.07)*CFrame.Angles(math.rad(0),math.rad(-(i*50)),math.rad(0))

end

prt2 = Instance.new("Part", Char)
prt2.Size = Vector3.new(1,1,1)
prt2.CanCollide = false
prt2.BrickColor = BrickColor.new("Really red")
prt2.TopSurface = "Smooth"
prt2.Transparency = 0.5
prt2.BottomSurface = "Smooth"
prt2M = Instance.new("SpecialMesh", prt2)
prt2M.MeshId = "http://www.roblox.com/asset/?id=9756362"
prt2M.Scale = Vector3.new(0.5,1,0.5)
prt2:BreakJoints()
prt2W = Instance.new("Weld", prt2)
prt2W.Part0 = prt1
prt2W.Part1 = prt2
prt2W.C1 = CFrame.new(0,-3.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt3 = Instance.new("Part", Char)
prt3.Size = Vector3.new(1,1,1)
prt3.CanCollide = false
prt3.BrickColor = BrickColor.new("Institutional white")
prt3.TopSurface = "Smooth"
prt3.Transparency = 0.8
prt3.BottomSurface = "Smooth"
prt3M = Instance.new("SpecialMesh", prt3)
prt3M.MeshId = "http://www.roblox.com/asset/?id=9982590"
prt3M.Scale = Vector3.new(0.75,0.6,0.75)
prt3:BreakJoints()
prt3W = Instance.new("Weld", prt3)
prt3W.Part0 = prt2
prt3W.Part1 = prt3
prt3W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt4 = Instance.new("Part", Char)
prt4.formFactor = "Custom"
prt4.Size = Vector3.new(1,1,1)
prt4.CanCollide = false
prt4.BrickColor = BrickColor.new("Really black")
prt4.TopSurface = "Smooth"
prt4.Transparency = 0
prt4.BottomSurface = "Smooth"
prt4M = Instance.new("SpecialMesh", prt4)
prt4M.MeshType = "Sphere"
prt4M.Scale = Vector3.new(0.5,0.5,0.5)
prt4:BreakJoints()
prt4W = Instance.new("Weld", prt4)
prt4W.Part0 = prt1
prt4W.Part1 = prt4
prt4W.C1 = CFrame.new(0,2.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt5 = Instance.new("Part", Char)
prt5.Size = Vector3.new(1,1,1)
prt5.CanCollide = false
prt5.BrickColor = BrickColor.new("Really black")
prt5.TopSurface = "Smooth"
prt5.Transparency = 0.5
prt5.BottomSurface = "Smooth"
prt5M = Instance.new("SpecialMesh", prt5)
prt5M.MeshType = "FileMesh"
prt5M.MeshId = "http://www.roblox.com/asset/?id=20329976"
prt5M.Scale = Vector3.new(0.2,0.5,0.2)
prt5:BreakJoints()
prt5W = Instance.new("Weld", prt5)
prt5W.Part0 = prt1
prt5W.Part1 = prt5
prt5W.C1 = CFrame.new(0,-2.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))


prt6 = Instance.new("Part", Char)
prt6.formFactor = "Custom"
prt6.Size = Vector3.new(1,1,1)
prt6.CanCollide = false
prt6.BrickColor = BrickColor.new("Institutional white")
prt6.TopSurface = "Smooth"
prt6.Transparency = 1
prt6.BottomSurface = "Smooth"
prt6M = Instance.new("BlockMesh", prt6)
prt6M.Scale = Vector3.new(1,1,1)
prt6:BreakJoints()
prt6W = Instance.new("Weld", prt6)
prt6W.Part0 = prt2
prt6W.Part1 = prt6
prt6W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt7 = Instance.new("Part", Char)
prt7.formFactor = "Custom"
prt7.Size = Vector3.new(1,1,1)
prt7.CanCollide = false
prt7.BrickColor = BrickColor.new("Institutional white")
prt7.TopSurface = "Smooth"
prt7.Transparency = 1
prt7.BottomSurface = "Smooth"
prt7M = Instance.new("BlockMesh", prt7)
prt7M.Scale = Vector3.new(1,1,1)
prt7:BreakJoints()
prt7W = Instance.new("Weld", prt7)
prt7W.Part0 = prt2
prt7W.Part1 = prt7
prt7W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt8 = Instance.new("Part", Char)
prt8.formFactor = "Custom"
prt8.Size = Vector3.new(1,1,1)
prt8.CanCollide = false
prt8.BrickColor = BrickColor.new("Institutional white")
prt8.TopSurface = "Smooth"
prt8.Transparency = 1
prt8.BottomSurface = "Smooth"
prt8M = Instance.new("BlockMesh", prt8)
prt8M.Scale = Vector3.new(1,1,1)
prt8:BreakJoints()
prt8W = Instance.new("Weld", prt8)
prt8W.Part0 = prt2
prt8W.Part1 = prt8
prt8W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt9 = Instance.new("Part", Char)
prt9.formFactor = "Custom"
prt9.Size = Vector3.new(1,1,1)
prt9.CanCollide = false
prt9.BrickColor = BrickColor.new("Institutional white")
prt9.TopSurface = "Smooth"
prt9.Transparency = 1
prt9.BottomSurface = "Smooth"
prt9M = Instance.new("SpecialMesh", prt9)
prt9M.MeshId = "http://www.roblox.com/asset/?id=3270017"
prt9M.Scale = Vector3.new(1,1,1)
prt9:BreakJoints()
prt9W = Instance.new("Weld", prt9)
prt9W.Part0 = prt2
prt9W.Part1 = prt9
prt9W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,math.rad(0))

delay(0, function()
while true do
for i = 1,360 do
prt3W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(i),math.rad(0))
wait(0.1)
end
end
end)

------------------------------------------------------------------------------------------

function Blast()
for i = 1,60,15 do
haw.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),math.rad(45-i),math.rad(-45+i))
wait(0.03)
end

Char["Torso"].Transparency = 1
Torso.Transparency = 0
cenw2.Part0 = Torso
cenw.Part0 = Torso
Char.Torso["Right Hip"].Part0 = Torso
Char.Torso["Left Hip"].Part0 = Torso
haw2.Part1 = Char["Left Arm"]
for i = 1,120,30 do
Torsow.C0 = CFrame.Angles(math.rad(0),math.rad(i),0)
Hw.C0 = CFrame.Angles(math.rad(0),math.rad(-i),0)
haw.C0 = CFrame.Angles(math.rad(i),0,math.rad(i))
haw2.C0 = CFrame.Angles(math.rad(0),0,math.rad(-i/2))
prtW.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(i),0,math.rad(0))
wait()
end

prt6.Transparency = 0.7
prt7.Transparency = 0.7
for i = 1,1050,50 do
prt6W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(i),math.rad(i),math.rad(i))
prt6M.Scale = Vector3.new(i/500,i/500,i/500)
prt7W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-i/2),math.rad(-i/2),math.rad(-i/2))
prt7M.Scale = Vector3.new(i/500,i/500,i/500)
wait(0.03)
end
prt6.Transparency = 1
prt7.Transparency = 1

shot = Instance.new("Part", workspace)
shot.Size = Vector3.new(1,1,1)
shot.CanCollide = false
shot.BrickColor = BrickColor.new("Institutional white")
shot.TopSurface = "Smooth"
shot.Transparency = 0
shot.BottomSurface = "Smooth"
shotM = Instance.new("SpecialMesh", shot)
shotM.MeshId = "http://www.roblox.com/asset/?id=4770583"
shotM.Scale = Vector3.new(1,1,1)
shot:BreakJoints()
shot.CFrame = prt2.CFrame






local shotv = Instance.new("BodyVelocity", shot)
shotv.velocity = prt1f.CFrame.lookVector*200

prt9.Transparency = 0
prt9W.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90),0,math.rad(0))

loadstring([[Char = workspace.rigletto
function sound(id, pt)
local sd = Instance.new("Sound", Char.Head)
sd.SoundId = "http://www.roblox.com/asset/?id="..tostring(id)
sd.Pitch = pt
sd.Volume = 1
delay(0, function()
sd:Play()
wait(2)
sd:Remove()
end)
end
sound(2767090, 1)]])()

for i = 1,1050,50 do
delay(0,function()
for i,v in pairs(workspace:children()) do
if v:FindFirstChild("Humanoid") and v:FindFirstChild("Head") then
if (v.Head.Position - shot.Position).magnitude < 5 then
v:BreakJoints()
end
end
end
end)
prt9M.Scale = Vector3.new(i/100,i/100,i/100)
prt9.Transparency = i/1000
prt9W.C1 = CFrame.new(0,0,i/500)*CFrame.Angles(math.rad(90),0,math.rad(0))

local shot2 = Instance.new("Part", workspace)
shot2.Size = Vector3.new(1,1,1)
shot2.CanCollide = true
shot2.BrickColor = BrickColor.new("Institutional white")
shot2.TopSurface = "Smooth"
shot2.Transparency = 0
shot2.Anchored = true
shot2.BottomSurface = "Smooth"
local shot2M = Instance.new("SpecialMesh", shot2)
shot2M.MeshId = "http://www.roblox.com/asset/?id=4770583"
shot2M.Scale = Vector3.new(1,1,1)
shot2:BreakJoints()
shot2.CFrame = shot.CFrame



delay(0,function()
for i = 1,10 do
shot2.Transparency = shot2.Transparency+0.1
shot2.CFrame = shot2.CFrame+Vector3.new(math.random(-10,10)/10,0,math.random(-10,10)/10)
shot2M.Scale = shot2M.Scale + Vector3.new(0.1,0.1,0.1)
wait(0.03)
end
shot2:Remove()
end)

wait(0.03)
end
shot:remove()
for i = 1,100,10 do
Torsow.C0 = CFrame.Angles(math.rad(0),math.rad(90-i),0)
Hw.C0 = CFrame.Angles(math.rad(0),math.rad(-90+i),0)
haw.C0 = CFrame.Angles(math.rad(i),0,math.rad(90-i))
haw2.C0 = CFrame.Angles(math.rad(0),0,math.rad(-45+i/2))
prtW.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(90-i),0,math.rad(0))
wait()
end
haw2.Part1 = nil
Char["Torso"].Transparency = 0
Torso.Transparency = 1
cenw2.Part0 = Char.Torso
cenw.Part0 = Char.Torso
Char.Torso["Right Hip"].Part0 = Char.Torso
Char.Torso["Left Hip"].Part0 = Char.Torso
Equip()

end


function Equip()
haw.Part1 = Char["Right Arm"]
for i = 1,60,15 do
haw.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(i*2),math.rad(i),math.rad(-i))
wait(0.03)
end
end

function UnEquip()
for i = 1,60,15 do
haw.C0 = CFrame.new(0,0,0)*CFrame.Angles(math.rad((45/2)-(i/2)),math.rad(45-i),math.rad(-45+i))
wait(0.03)
end
haw.Part1 = nil
end

function Arcrain()

end


--------------------------------------------
local _ = false
if not script.Parent:IsA("HopperBin") then
h = Instance.new("HopperBin", User.Backpack)
h.Name = "Staff"
script.Parent = h
end


script.Parent.Selected:connect(function(mouse)
Equip()
mouse.Button1Down:connect(function()
if _ == false then
_ = true
Blast()
_ = false
end
end)

mouse.KeyDown:connect(function(key)
if key == "q" and _ == false then
_ = true
CircleBlast()
_ = false
end
end)
end)

script.Parent.Deselected:connect(function()
UnEquip()
end)

--mediafire gtfo password