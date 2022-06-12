User = game.Players.LocalPlayer
--Press q then e 2 times then press q again to reload
Ammo = 0
CageOpen = false
Char = User.Character
Char.Humanoid.MaxHealth = 100000000
Char.Humanoid.Health = 9001
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

haw.C0 = CFrame.Angles(math.rad(90),0,math.rad(-15))
haw.C1 = CFrame.new(0.5,1,0)

haw2.C0 = CFrame.Angles(math.rad(90),0,math.rad(35))
haw2.C1 = CFrame.new(0,1.2,0)

--------------------------------
prt1 = Instance.new("Part", Char)
prt1.Size = Vector3.new(1,1,1)
prt1.CanCollide = false
prt1.BrickColor = BrickColor.new("Reddish brown")
prt1.TopSurface = "Smooth"
prt1.Transparency = 0
prt1.BottomSurface = "Smooth"
prtM = Instance.new("BlockMesh", prt1)
prtM.Scale = Vector3.new(0.7,1,0.7)
prt1:BreakJoints()
prtW = Instance.new("Weld", prt1)
prtW.Part0 = Char["Right Arm"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,0.65)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt2 = Instance.new("Part", Char)
prt2.Size = Vector3.new(1,1,1)
prt2.CanCollide = false
prt2.BrickColor = BrickColor.new("Reddish brown")
prt2.TopSurface = "Smooth"
prt2.Transparency = 0
prt2.BottomSurface = "Smooth"
prtM2 = Instance.new("CylinderMesh", prt2)
prtM2.Scale = Vector3.new(0.5,1,0.5)
prt2:BreakJoints()
prtW2 = Instance.new("Weld", prt2)
prtW2.Part0 = prt1
prtW2.Part1 = prt2
prtW2.C1 = CFrame.new(0,1,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt3 = Instance.new("Part", Char)
prt3.Size = Vector3.new(1,1,1)
prt3.CanCollide = false
prt3.BrickColor = BrickColor.new("Light stone grey")
prt3.TopSurface = "Smooth"
prt3.Transparency = 0
prt3.BottomSurface = "Smooth"
prtM3 = Instance.new("BlockMesh", prt3)
prtM3.Scale = Vector3.new(0.6,0.3,0.4)
prt3:BreakJoints()
prtW3 = Instance.new("Weld", prt3)
prtW3.Part0 = prt2
prtW3.Part1 = prt3
prtW3.C1 = CFrame.new(0,0.75,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt8 = Instance.new("Part", Char)
prt8.Size = Vector3.new(1,2,1)
prt8.CanCollide = false
prt8.BrickColor = BrickColor.new("Stone grey")
prt8.TopSurface = "Smooth"
prt8.Transparency = 0
prt8.BottomSurface = "Smooth"
prtM8 = Instance.new("SpecialMesh", prt8)
prtM8.MeshType = "Wedge"
prtM8.Scale = Vector3.new(0.1,1,0.1)
prt8:BreakJoints()
prtW8 = Instance.new("Weld", prt3)
prtW8.Part0 = prt3
prtW8.Part1 = prt8
prtW8.C1 = CFrame.new(0,-4.8,0.1)*CFrame.Angles(math.rad(180),math.rad(180),math.rad(0))
prt8.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= Char.Name then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 5
end
end)
prt4 = Instance.new("Part", Char)
prt4.Size = Vector3.new(1,1,1)
prt4.CanCollide = false
prt4.BrickColor = BrickColor.new("Dark stone grey")
prt4.TopSurface = "Smooth"
prt4.Transparency = 0
prt4.BottomSurface = "Smooth"
prtM4 = Instance.new("CylinderMesh", prt4)
prtM4.Scale = Vector3.new(0.3,3,0.3)
prt4:BreakJoints()
prtW4 = Instance.new("Weld", prt4)
prtW4.Part0 = prt3
prtW4.Part1 = prt4
prtW4.C1 = CFrame.new(0.15,1.9,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt5 = Instance.new("Part", Char)
prt5.Size = Vector3.new(1,1,1)
prt5.CanCollide = false
prt5.BrickColor = BrickColor.new("Dark stone grey")
prt5.TopSurface = "Smooth"
prt5.Transparency = 0
prt5.BottomSurface = "Smooth"
prtM5 = Instance.new("CylinderMesh", prt5)
prtM5.Scale = Vector3.new(0.3,3,0.3)
prt5:BreakJoints()
prtW5 = Instance.new("Weld", prt5)
prtW5.Part0 = prt3
prtW5.Part1 = prt5
prtW5.C1 = CFrame.new(-0.15,1.9,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt6 = Instance.new("Part", Char)
prt6.Size = Vector3.new(1,1,1)
prt6.CanCollide = false
prt6.BrickColor = BrickColor.new("Reddish brown")
prt6.TopSurface = "Smooth"
prt6.Transparency = 0
prt6.BottomSurface = "Smooth"
prtM6 = Instance.new("BlockMesh", prt6)
prtM6.Scale = Vector3.new(0.6,2,0.1)
prt6:BreakJoints()
prtW6 = Instance.new("Weld", prt6)
prtW6.Part0 = prt4
prtW6.Part1 = prt6
prtW6.C1 = CFrame.new(-0.15,-0.51,-0.1)*CFrame.Angles(math.rad(0),0,math.rad(0))

prt7 = Instance.new("Part", Char)
prt7.Size = Vector3.new(1,1,1)
prt7.CanCollide = false
prt7.BrickColor = BrickColor.new("Reddish brown")
prt7.TopSurface = "Smooth"
prt7.Transparency = 0
prt7.BottomSurface = "Smooth"
prtM7 = Instance.new("BlockMesh", prt7)
prtM7.Scale = Vector3.new(0.7,1,0.7)
prt7:BreakJoints()
prtW7 = Instance.new("Weld", prt7)
prtW7.Part0 = prt1
prtW7.Part1 = prt7
prtW7.C1 = CFrame.new(0,-1.09,0.14)*CFrame.Angles(math.rad(-15),0,math.rad(0))


shell = Instance.new("Part", Char)
shell.Size = Vector3.new(1,1,1)
shell.CanCollide = false
shell.BrickColor = BrickColor.new("Really red")
shell.Transparency = 0
shell.BottomSurface = "Smooth"
shellM = Instance.new("CylinderMesh", shell)
shellM.Scale = Vector3.new(0.2,0.4,0.2)
shell:BreakJoints()
shellW = Instance.new("Weld", shell)
shellW.Part0 = Char["Torso"]
shellW.Part1 = shell
shellW.C1 = CFrame.new(0,0,-0.6)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(45))

cap = Instance.new("Part", Char)
cap.Size = Vector3.new(1,1,1)
cap.CanCollide = false
cap.BrickColor = BrickColor.new("Stone grey")
cap.Transparency = 0
cap.BottomSurface = "Smooth"
capM = Instance.new("CylinderMesh", cap)
capM.Scale = Vector3.new(0.21,0.1,0.21)
cap:BreakJoints()
capW = Instance.new("Weld", cap)
capW.Part0 = shell
capW.Part1 = cap
capW.C1 = CFrame.new(0,-0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

shell2 = Instance.new("Part", Char)
shell2.Size = Vector3.new(1,1,1)
shell2.CanCollide = false
shell2.BrickColor = BrickColor.new("Really red")
shell2.Transparency = 0
shell2.BottomSurface = "Smooth"
shellM2 = Instance.new("CylinderMesh", shell2)
shellM2.Scale = Vector3.new(0.2,0.4,0.2)
shell2:BreakJoints()
shellW2 = Instance.new("Weld", shell2)
shellW2.Part0 = shell
shellW2.Part1 = shell2
shellW2.C1 = CFrame.new(0.2,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

cap2 = Instance.new("Part", Char)
cap2.Size = Vector3.new(1,1,1)
cap2.CanCollide = false
cap2.BrickColor = BrickColor.new("Stone grey")
cap2.Transparency = 0
cap2.BottomSurface = "Smooth"
capM2 = Instance.new("CylinderMesh", cap2)
capM2.Scale = Vector3.new(0.21,0.1,0.21)
cap2:BreakJoints()
capW2 = Instance.new("Weld", cap2)
capW2.Part0 = shell2
capW2.Part1 = cap2
capW2.C1 = CFrame.new(0,-0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

shell3 = Instance.new("Part", Char)
shell3.Size = Vector3.new(1,1,1)
shell3.CanCollide = false
shell3.BrickColor = BrickColor.new("Really red")
shell3.Transparency = 0
shell3.BottomSurface = "Smooth"
shellM3 = Instance.new("CylinderMesh", shell3)
shellM3.Scale = Vector3.new(0.2,0.4,0.2)
shell3:BreakJoints()
shellW3 = Instance.new("Weld", shell3)
shellW3.Part0 = shell2
shellW3.Part1 = shell3
shellW3.C1 = CFrame.new(0.2,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

cap3 = Instance.new("Part", Char)
cap3.Size = Vector3.new(1,1,1)
cap3.CanCollide = false
cap3.BrickColor = BrickColor.new("Stone grey")
cap3.Transparency = 0
cap3.BottomSurface = "Smooth"
capM3 = Instance.new("CylinderMesh", cap3)
capM3.Scale = Vector3.new(0.21,0.1,0.21)
cap3:BreakJoints()
capW3 = Instance.new("Weld", cap3)
capW3.Part0 = shell3
capW3.Part1 = cap3
capW3.C1 = CFrame.new(0,-0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

shell4 = Instance.new("Part", Char)
shell4.Size = Vector3.new(1,1,1)
shell4.CanCollide = false
shell4.BrickColor = BrickColor.new("Really red")
shell4.Transparency = 0
shell4.BottomSurface = "Smooth"
shellM4 = Instance.new("CylinderMesh", shell4)
shellM4.Scale = Vector3.new(0.2,0.4,0.2)
shell4:BreakJoints()
shellW4 = Instance.new("Weld", shell4)
shellW4.Part0 = shell3
shellW4.Part1 = shell4
shellW4.C1 = CFrame.new(0.2,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

cap4 = Instance.new("Part", Char)
cap4.Size = Vector3.new(1,1,1)
cap4.CanCollide = false
cap4.BrickColor = BrickColor.new("Stone grey")
cap4.Transparency = 0
cap4.BottomSurface = "Smooth"
capM4 = Instance.new("CylinderMesh", cap4)
capM4.Scale = Vector3.new(0.21,0.1,0.21)
cap4:BreakJoints()
capW4 = Instance.new("Weld", cap4)
capW4.Part0 = shell4
capW4.Part1 = cap4
capW4.C1 = CFrame.new(0,-0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

shell5 = Instance.new("Part", Char)
shell5.Size = Vector3.new(1,1,1)
shell5.CanCollide = false
shell5.BrickColor = BrickColor.new("Really red")
shell5.Transparency = 0
shell5.BottomSurface = "Smooth"
shellM5 = Instance.new("CylinderMesh", shell5)
shellM5.Scale = Vector3.new(0.2,0.4,0.2)
shell5:BreakJoints()
shellW5 = Instance.new("Weld", shell5)
shellW5.Part0 = shell4
shellW5.Part1 = shell5
shellW5.C1 = CFrame.new(0.2,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

cap5 = Instance.new("Part", Char)
cap5.Size = Vector3.new(1,1,1)
cap5.CanCollide = false
cap5.BrickColor = BrickColor.new("Stone grey")
cap5.Transparency = 0
cap5.BottomSurface = "Smooth"
capM5 = Instance.new("CylinderMesh", cap5)
capM5.Scale = Vector3.new(0.21,0.1,0.21)
cap5:BreakJoints()
capW5 = Instance.new("Weld", cap5)
capW5.Part0 = shell5
capW5.Part1 = cap5
capW5.C1 = CFrame.new(0,-0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

shell22 = Instance.new("Part", Char)
shell22.Size = Vector3.new(1,1,1)
shell22.CanCollide = false
shell22.BrickColor = BrickColor.new("Really red")
shell22.Transparency = 0
shell22.BottomSurface = "Smooth"
shellM22 = Instance.new("CylinderMesh", shell22)
shellM22.Scale = Vector3.new(0.2,0.4,0.2)
shell22:BreakJoints()
shellW22 = Instance.new("Weld", shell22)
shellW22.Part0 = shell
shellW22.Part1 = shell22
shellW22.C1 = CFrame.new(-0.2,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

cap22 = Instance.new("Part", Char)
cap22.Size = Vector3.new(1,1,1)
cap22.CanCollide = false
cap22.BrickColor = BrickColor.new("Stone grey")
cap22.Transparency = 0
cap22.BottomSurface = "Smooth"
capM22 = Instance.new("CylinderMesh", cap22)
capM22.Scale = Vector3.new(0.21,0.1,0.21)
cap22:BreakJoints()
capW22 = Instance.new("Weld", cap22)
capW22.Part0 = shell22
capW22.Part1 = cap22
capW22.C1 = CFrame.new(0,-0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

shell32 = Instance.new("Part", Char)
shell32.Size = Vector3.new(1,1,1)
shell32.CanCollide = false
shell32.BrickColor = BrickColor.new("Really red")
shell32.Transparency = 0
shell32.BottomSurface = "Smooth"
shellM32 = Instance.new("CylinderMesh", shell32)
shellM32.Scale = Vector3.new(0.2,0.4,0.2)
shell32:BreakJoints()
shellW32 = Instance.new("Weld", shell32)
shellW32.Part0 = shell22
shellW32.Part1 = shell32
shellW32.C1 = CFrame.new(-0.2,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

cap32 = Instance.new("Part", Char)
cap32.Size = Vector3.new(1,1,1)
cap32.CanCollide = false
cap32.BrickColor = BrickColor.new("Stone grey")
cap32.Transparency = 0
cap32.BottomSurface = "Smooth"
capM32 = Instance.new("CylinderMesh", cap32)
capM32.Scale = Vector3.new(0.21,0.1,0.21)
cap32:BreakJoints()
capW32 = Instance.new("Weld", cap32)
capW32.Part0 = shell32
capW32.Part1 = cap32
capW32.C1 = CFrame.new(0,-0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

shell42 = Instance.new("Part", Char)
shell42.Size = Vector3.new(1,1,1)
shell42.CanCollide = false
shell42.BrickColor = BrickColor.new("Really red")
shell42.Transparency = 0
shell42.BottomSurface = "Smooth"
shellM42 = Instance.new("CylinderMesh", shell42)
shellM42.Scale = Vector3.new(0.2,0.4,0.2)
shell42:BreakJoints()
shellW42 = Instance.new("Weld", shell42)
shellW42.Part0 = shell32
shellW42.Part1 = shell42
shellW42.C1 = CFrame.new(-0.2,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

cap42 = Instance.new("Part", Char)
cap42.Size = Vector3.new(1,1,1)
cap42.CanCollide = false
cap42.BrickColor = BrickColor.new("Stone grey")
cap42.Transparency = 0
cap42.BottomSurface = "Smooth"
capM42 = Instance.new("CylinderMesh", cap42)
capM42.Scale = Vector3.new(0.21,0.1,0.21)
cap42:BreakJoints()
capW42 = Instance.new("Weld", cap42)
capW42.Part0 = shell42
capW42.Part1 = cap42
capW42.C1 = CFrame.new(0,-0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

shell52 = Instance.new("Part", Char)
shell52.Size = Vector3.new(1,1,1)
shell52.CanCollide = false
shell52.BrickColor = BrickColor.new("Really red")
shell52.Transparency = 0
shell52.BottomSurface = "Smooth"
shellM52 = Instance.new("CylinderMesh", shell52)
shellM52.Scale = Vector3.new(0.2,0.4,0.2)
shell52:BreakJoints()
shellW52 = Instance.new("Weld", shell52)
shellW52.Part0 = shell42
shellW52.Part1 = shell52
shellW52.C1 = CFrame.new(-0.2,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

cap52 = Instance.new("Part", Char)
cap52.Size = Vector3.new(1,1,1)
cap52.CanCollide = false
cap52.BrickColor = BrickColor.new("Stone grey")
cap52.Transparency = 0
cap52.BottomSurface = "Smooth"
capM52 = Instance.new("CylinderMesh", cap52)
capM52.Scale = Vector3.new(0.21,0.1,0.21)
cap52:BreakJoints()
capW52 = Instance.new("Weld", cap52)
capW52.Part0 = shell52
capW52.Part1 = cap52
capW52.C1 = CFrame.new(0,-0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

trig = Instance.new("Part", Char)
trig.Size = Vector3.new(1,1,1)
trig.CanCollide = false
trig.BrickColor = BrickColor.new("Dark stone grey")
trig.Transparency = 0
trig.BottomSurface = "Smooth"
trigM = Instance.new("SpecialMesh", trig)
trigM.MeshType = "FileMesh"
trigM.MeshId = "http://www.roblox.com/asset/?id=3270017"
trigM.Scale = Vector3.new(0.5,0.5,0.1)
trig:BreakJoints()
trigW = Instance.new("Weld", trig)
trigW.Part0 = prt2
trigW.Part1 = trig
trigW.C1 = CFrame.new(-0.2,0.2,0)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))

trig2 = Instance.new("Part", Char)
trig2.Size = Vector3.new(1,1,1)
trig2.CanCollide = false
trig2.BrickColor = BrickColor.new("Dark stone grey")
trig2.Transparency = 0
trig2.BottomSurface = "Smooth"
trigM2 = Instance.new("BlockMesh", trig2)
trigM2.Scale = Vector3.new(0.3,0.05,0.05)
trig2:BreakJoints()
trigW2 = Instance.new("Weld", trig2)
trigW2.Part0 = trig
trigW2.Part1 = trig2
trigW2.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))

shellh = Instance.new("Part", Char)
shellh.Size = Vector3.new(1,1,1)
shellh.CanCollide = false
shellh.BrickColor = BrickColor.new("Really red")
shellh.Transparency = 1
shellh.BottomSurface = "Smooth"
shellMh = Instance.new("CylinderMesh", shellh)
shellMh.Scale = Vector3.new(0.2,0.4,0.2)
shellh:BreakJoints()
shellWh = Instance.new("Weld", shellh)
shellWh.Part0 = Char["Left Arm"]
shellWh.Part1 = shellh
shellWh.C1 = CFrame.new(0,0,1.1)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))

caph = Instance.new("Part", Char)
caph.Size = Vector3.new(1,1,1)
caph.CanCollide = false
caph.BrickColor = BrickColor.new("Stone grey")
caph.Transparency = 1
caph.BottomSurface = "Smooth"
capMh = Instance.new("CylinderMesh", caph)
capMh.Scale = Vector3.new(0.21,0.1,0.21)
caph:BreakJoints()
capWh = Instance.new("Weld", caph)
capWh.Part0 = shellh
capWh.Part1 = caph
capWh.C1 = CFrame.new(0,-0.2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

capi = Instance.new("Part", Char)
capi.Size = Vector3.new(1,1,1)
capi.CanCollide = false
capi.BrickColor = BrickColor.new("Stone grey")
capi.Transparency = 1
capi.BottomSurface = "Smooth"
capMi = Instance.new("CylinderMesh", capi)
capMi.Scale = Vector3.new(0.21,0.1,0.21)
capi:BreakJoints()
capWi = Instance.new("Weld", capi)
capWi.Part0 = prt3
capWi.Part1 = capi
capWi.C1 = CFrame.new(0.15,-0.15,0)*CFrame.Angles(math.rad(0),0,math.rad(0))


capi2 = Instance.new("Part", Char)
capi2.Size = Vector3.new(1,1,1)
capi2.CanCollide = false
capi2.BrickColor = BrickColor.new("Stone grey")
capi2.Transparency = 1
capi2.BottomSurface = "Smooth"
capMi2 = Instance.new("CylinderMesh", capi2)
capMi2.Scale = Vector3.new(0.21,0.1,0.21)
capi2:BreakJoints()
capWi2 = Instance.new("Weld", capi2)
capWi2.Part0 = prt3
capWi2.Part1 = capi2
capWi2.C1 = CFrame.new(-0.15,-0.15,0)*CFrame.Angles(math.rad(0),0,math.rad(0))

function Open()
for i = 1,10,0.5 do
haw2.C0 = CFrame.Angles(math.rad(90),0,math.rad(35-i))
haw2.C1 = CFrame.new(0,1.2+i/10,0)
wait()
end
for i = 1,35,1 do
prtW3.C1 = CFrame.new(0,0.75,i/100)*CFrame.Angles(math.rad(i),0,0)
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
prtW3.C1 = CFrame.new(0,0.75,0.35-i/100)*CFrame.Angles(math.rad(35-i),0,0)
wait()
end

local fire = Instance.new("Sound", workspace)
fire.SoundId = "http://www.roblox.com/asset/?id=13510737"
fire.Pitch = 1
fire.PlayOnRemove = true
wait()
fire.Parent = nil

haw2.C0 = CFrame.Angles(math.rad(90),0,math.rad(35))
haw2.C1 = CFrame.new(0,1.2,0)
end

function Load()
for i = 1,180,10 do
haw2.C0 = CFrame.Angles(math.rad(90-i),0,math.rad(35))
wait()
end
shellh.Transparency = 0
caph.Transparency = 0
for i = 1,180,10 do
haw2.C0 = CFrame.Angles(math.rad(-90+i),0,math.rad(35))
wait()
end
local reload = Instance.new("Sound", workspace)
reload.SoundId = "http://www.roblox.com/asset/?id=13510737"
reload.Pitch = 1.3
reload.PlayOnRemove = true
wait()
reload.Parent = nil
shellh.Transparency = 1
caph.Transparency = 1
haw2.C0 = CFrame.Angles(math.rad(90),0,math.rad(35))
end



if script.Parent.className ~= "HopperBin" then 
knife = Instance.new("HopperBin") 
knife.Parent = User.Backpack 
knife.Name = "Shotgun" 
script.Parent = knife 
end 

script.Parent.Selected:connect(function(mouse)
mouse.KeyDown:connect(function(key)
if key == "q" then
if CageOpen == false then
Open()
Shells = math.abs(Ammo - 2)
for i = 1,Shells do
delay(0, function()
local shellf = Instance.new("Part", Char)
shellf.Size = Vector3.new(1,1,1)
shellf.CanCollide = true
shellf.BrickColor = BrickColor.new("Really red")
shellf.Transparency = 0
shellf.BottomSurface = "Smooth"
shellMf = Instance.new("CylinderMesh", shellf)
shellMf.Scale = Vector3.new(0.2,0.4,0.2)
shellf:BreakJoints()
shellf.CFrame = prt3.CFrame
wait(3)
shellf:Remove()
end)
end
CageOpen = true
elseif CageOpen == true then
Close()
CageOpen = false
end

elseif key == "e" and CageOpen == true then
Load()
if Ammo == 0 then
Ammo = 1
capi.Transparency = 0
elseif Ammo == 1 then
Ammo = 2
capi2.Transparency = 0
end

elseif key == "b" then
for i = 1,10 do
haw.C1 = CFrame.new(0.5,1+i/10,0)
wait()
end
for i = 1,10 do
haw.C1 = CFrame.new(0.5,2-i/10,0)
wait()
end
haw.C1 = CFrame.new(0.5,1,0)
end
end)

mouse.Button1Down:connect(function()
if CageOpen == false and Ammo ~= 0 then

if Ammo == 2 then
damage = math.random(50,75)

local P = Instance.new("Part") 
P.Name = "P"
local Place0 = prt5
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

local P2 = Instance.new("Part") 
P2.Name = "P2"
local Place0 = prt5
P2.formFactor = 0 
P2.Size = Vector3.new(1,1,(Place0.Position - mouse.Hit.p).magnitude) 
P2.CFrame = CFrame.new((Place0.Position + mouse.Hit.p+Vector3.new(3,0,0))/2,Place0.Position) 
P2.Parent = game.Workspace 
P2.BrickColor = BrickColor.new("Institutional white")
P2.Transparency = 0.3
P2.Reflectance = 0 
P2.Anchored = true 
P2.CanCollide = false 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(0.3,0.3,1) 
m6.MeshType = "Brick" 
m6.Parent = P2

local P3 = Instance.new("Part") 
P3.Name = "P3"
local Place0 = prt5
P3.formFactor = 0 
P3.Size = Vector3.new(1,1,(Place0.Position - mouse.Hit.p).magnitude) 
P3.CFrame = CFrame.new((Place0.Position + mouse.Hit.p+Vector3.new(-3,0,0))/2,Place0.Position) 
P3.Parent = game.Workspace 
P3.BrickColor = BrickColor.new("Institutional white")
P3.Transparency = 0.3
P3.Reflectance = 0 
P3.Anchored = true 
P3.CanCollide = false 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(0.3,0.3,1) 
m6.MeshType = "Brick" 
m6.Parent = P3

local P4 = Instance.new("Part") 
P4.Name = "P4"
local Place0 = prt5
P4.formFactor = 0 
P4.Size = Vector3.new(1,1,(Place0.Position - mouse.Hit.p).magnitude) 
P4.CFrame = CFrame.new((Place0.Position + mouse.Hit.p+Vector3.new(0,3,0))/2,Place0.Position) 
P4.Parent = game.Workspace 
P4.BrickColor = BrickColor.new("Institutional white")
P4.Transparency = 0.3
P4.Reflectance = 0 
P4.Anchored = true 
P4.CanCollide = false 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(0.3,0.3,1) 
m6.MeshType = "Brick" 
m6.Parent = P4

local P5 = Instance.new("Part") 
P5.Name = "P5"
local Place0 = prt5
P5.formFactor = 0 
P5.Size = Vector3.new(1,1,(Place0.Position - mouse.Hit.p).magnitude) 
P5.CFrame = CFrame.new((Place0.Position + mouse.Hit.p+Vector3.new(0,-3,0))/2,Place0.Position) 
P5.Parent = game.Workspace 
P5.BrickColor = BrickColor.new("Institutional white")
P5.Transparency = 0.3
P5.Reflectance = 0 
P5.Anchored = true 
P5.CanCollide = false 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(0.3,0.3,1) 
m6.MeshType = "Brick" 
m6.Parent = P5


local fire = Instance.new("Sound", workspace)
fire.SoundId = "http://www.roblox.com/asset/?id=13510352"
fire.Pitch = 0.6
fire.PlayOnRemove = true
wait()
fire.Parent = nil


delay(0.03, function()
for i,v in pairs(game.Players:children()) do
if v.Name ~= User.Name then
if (v.Character.Torso.Position - mouse.hit.p).magnitude <= 5 then
damage = math.random(50,75)
crit = math.random(1,10)
if crit > 2 then
v.Character.Humanoid.Health = v.Character.Humanoid.Health - damage
elseif crit <= 2 then
v.Character.Humanoid.Health = v.Character.Humanoid.Health - (damage+10)
end
local tell = Instance.new("Part", v.Character)
tell.Position = mouse.hit.p
tell.formFactor = "Plate"
tell.Size = Vector3.new(1,0.4,1)
tell.BrickColor = BrickColor.new("Really red")
tell.Anchored = true
tell.CanCollide = false
tell.Transparency = 1
local bbg = Instance.new("BillboardGui",tell)
bbg.Adornee = tell
bbg.Size = UDim2.new(0,130,0,20)
bbg.StudsOffset = Vector3.new(0,1,0)
local tb = Instance.new("TextLabel",bbg)
tb.Size = UDim2.new(1,0,1,0)
if crit > 2 then
tb.Text = "-"..damage
else
tb.Text = "CRIT: ".."-"..damage+20
end
tb.BackgroundTransparency = 1
tb.FontSize = 6
tb.TextColor3 = BrickColor.new("Bright red").Color

for i = 1,50 do
tell.CFrame = tell.CFrame + Vector3.new(0,0.1,0)
wait()
end
tell:Remove()
end
end
end
end)



haw.C1 = CFrame.new(0.5,0.8,0)
haw2.C1 = CFrame.new(0,1.0,0)
wait(0.07)
haw.C1 = CFrame.new(0.5,1,0)
haw2.C1 = CFrame.new(0,1.2,0)
Ammo = 1
for i = 1,7 do
P.Transparency = P.Transparency + 0.1
P2.Transparency = P2.Transparency + 0.1
P3.Transparency = P3.Transparency + 0.1
P4.Transparency = P4.Transparency + 0.1
P5.Transparency = P5.Transparency + 0.1
wait(0.1)
end
P:Remove()
P2:Remove()
P3:Remove()
P4:Remove()
P5:Remove()
capi.Transparency = 1
elseif Ammo == 1 then
damage = math.random(50,75)
local P = Instance.new("Part") 
P.Name = "P"
local Place0 = prt5
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

local P2 = Instance.new("Part") 
P2.Name = "P2"
local Place0 = prt5
P2.formFactor = 0 
P2.Size = Vector3.new(1,1,(Place0.Position - mouse.Hit.p).magnitude) 
P2.CFrame = CFrame.new((Place0.Position + mouse.Hit.p+Vector3.new(3,0,0))/2,Place0.Position) 
P2.Parent = game.Workspace 
P2.BrickColor = BrickColor.new("Institutional white")
P2.Transparency = 0.3
P2.Reflectance = 0 
P2.Anchored = true 
P2.CanCollide = false 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(0.3,0.3,1) 
m6.MeshType = "Brick" 
m6.Parent = P2

local P3 = Instance.new("Part") 
P3.Name = "P3"
local Place0 = prt5
P3.formFactor = 0 
P3.Size = Vector3.new(1,1,(Place0.Position - mouse.Hit.p).magnitude) 
P3.CFrame = CFrame.new((Place0.Position + mouse.Hit.p+Vector3.new(-3,0,0))/2,Place0.Position) 
P3.Parent = game.Workspace 
P3.BrickColor = BrickColor.new("Institutional white")
P3.Transparency = 0.3
P3.Reflectance = 0 
P3.Anchored = true 
P3.CanCollide = false 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(0.3,0.3,1) 
m6.MeshType = "Brick" 
m6.Parent = P3

local P4 = Instance.new("Part") 
P4.Name = "P4"
local Place0 = prt5
P4.formFactor = 0 
P4.Size = Vector3.new(1,1,(Place0.Position - mouse.Hit.p).magnitude) 
P4.CFrame = CFrame.new((Place0.Position + mouse.Hit.p+Vector3.new(0,3,0))/2,Place0.Position) 
P4.Parent = game.Workspace 
P4.BrickColor = BrickColor.new("Institutional white")
P4.Transparency = 0.3
P4.Reflectance = 0 
P4.Anchored = true 
P4.CanCollide = false 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(0.3,0.3,1) 
m6.MeshType = "Brick" 
m6.Parent = P4

local P5 = Instance.new("Part") 
P5.Name = "P5"
local Place0 = prt5
P5.formFactor = 0 
P5.Size = Vector3.new(1,1,(Place0.Position - mouse.Hit.p).magnitude) 
P5.CFrame = CFrame.new((Place0.Position + mouse.Hit.p+Vector3.new(0,-3,0))/2,Place0.Position) 
P5.Parent = game.Workspace 
P5.BrickColor = BrickColor.new("Institutional white")
P5.Transparency = 0.3
P5.Reflectance = 0 
P5.Anchored = true 
P5.CanCollide = false 
m6 = Instance.new("SpecialMesh") 
m6.Scale = Vector3.new(0.3,0.3,1) 
m6.MeshType = "Brick" 
m6.Parent = P5


local fire = Instance.new("Sound", workspace)
fire.SoundId = "http://www.roblox.com/asset/?id=13510352"
fire.Pitch = 0.6
fire.PlayOnRemove = true
wait()
fire.Parent = nil

delay(0.03, function()
for i,v in pairs(game.Players:children()) do
if v.Name ~= User.Name then
if (v.Character.Torso.Position - mouse.hit.p).magnitude <= 5 then
damage = math.random(50,75)
crit = math.random(1,10)
if crit > 2 then
v.Character.Humanoid.Health = v.Character.Humanoid.Health - damage
elseif crit <= 2 then
v.Character.Humanoid.Health = v.Character.Humanoid.Health - (damage+10)
end
local tell = Instance.new("Part", v.Character)
tell.Position = mouse.hit.p
tell.formFactor = "Plate"
tell.Size = Vector3.new(1,0.4,1)
tell.BrickColor = BrickColor.new("Really red")
tell.Anchored = true
tell.CanCollide = false
tell.Transparency = 1
local bbg = Instance.new("BillboardGui",tell)
bbg.Adornee = tell
bbg.Size = UDim2.new(0,130,0,20)
bbg.StudsOffset = Vector3.new(0,1,0)
local tb = Instance.new("TextLabel",bbg)
tb.Size = UDim2.new(1,0,1,0)
if crit > 2 then
tb.Text = "-"..damage
else
tb.Text = "CRIT: ".."-"..damage+20
end
tb.BackgroundTransparency = 1
tb.FontSize = 6
tb.TextColor3 = BrickColor.new("Bright red").Color

for i = 1,50 do
tell.CFrame = tell.CFrame + Vector3.new(0,0.1,0)
wait()
end
tell:Remove()
end
end
end
end)

haw.C1 = CFrame.new(0.5,0.8,0)
haw2.C1 = CFrame.new(0,1.0,0)
wait(0.07)
haw.C1 = CFrame.new(0.5,1,0)
haw2.C1 = CFrame.new(0,1.2,0)
Ammo = 0

for i = 1,7 do
P.Transparency = P.Transparency + 0.1
P2.Transparency = P2.Transparency + 0.1
P3.Transparency = P3.Transparency + 0.1
P4.Transparency = P4.Transparency + 0.1
P5.Transparency = P5.Transparency + 0.1
wait(0.1)
end
P:Remove()
P2:Remove()
P3:Remove()
P4:Remove()
P5:Remove()
capi2.Transparency = 1
end
end
end)

end)