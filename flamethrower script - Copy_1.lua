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
--this script was made by benningtonguy and probably stolen by accountmonitor
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
haw.C0 = CFrame.Angles(0,math.rad(10),0)
haw.C1 = CFrame.new(0.5,0.5,1)
haw2.C0 = CFrame.Angles(math.rad(45),0,math.rad(45))
haw2.C1 = CFrame.new(0,1.5,0)
--this script was made by benningtonguy and probably stolen by accountmonitor
mainb = Instance.new("Part", Char)
mainb.formFactor = "Symmetric"
mainb.Size = Vector3.new(1,1,1)
mainb.BrickColor = BrickColor.new("Dark stone grey")
mainbm = Instance.new("CylinderMesh", mainb)
mainbm.Scale = Vector3.new(1.3,2,1.3)
mainb:BreakJoints()
mainbw = Instance.new("Weld", mainb)
mainbw.Part0 = Char["Torso"]
mainbw.Part1 = mainb
mainbw.C1 = CFrame.new(0.6,0,-1)
mainb2 = Instance.new("Part", Char)
mainb2.formFactor = "Symmetric"
mainb2.Size = Vector3.new(1,1,1)
mainb2.BrickColor = BrickColor.new("Dark stone grey")
mainbm2 = Instance.new("CylinderMesh", mainb2)
mainbm2.Scale = Vector3.new(1.3,2,1.3)
mainb2:BreakJoints()
mainbw2 = Instance.new("Weld", mainb2)
mainbw2.Part0 = Char["Torso"]
mainbw2.Part1 = mainb2
mainbw2.C1 = CFrame.new(-0.6,0,-1)
top = Instance.new("Part", Char)
top.formFactor = "Symmetric"
top.Size = Vector3.new(1,1,1)
top.BrickColor = BrickColor.new("Dark stone grey")
topm = Instance.new("SpecialMesh", top)
topm.MeshType = "Sphere"
topm.Scale = Vector3.new(1.3,1,1.3)
top:BreakJoints()
topw = Instance.new("Weld", top)
topw.Part0 = mainb
topw.Part1 = top
topw.C1 = CFrame.new(0,-1,0)
top2 = Instance.new("Part", Char)
top2.formFactor = "Symmetric"
top2.Size = Vector3.new(1,1,1)
top2.BrickColor = BrickColor.new("Dark stone grey")
topm2 = Instance.new("SpecialMesh", top2)
topm2.MeshType = "Sphere"
topm2.Scale = Vector3.new(1.3,1,1.3)
top2:BreakJoints()
topw2 = Instance.new("Weld", top2)
topw2.Part0 = mainb2
topw2.Part1 = top2
topw2.C1 = CFrame.new(0,-1,0)
cir = Instance.new("Part", Char)
cir.formFactor = "Symmetric"
cir.Size = Vector3.new(1,1,1)
cir.BrickColor = BrickColor.new("Stone grey")
cirm = Instance.new("CylinderMesh", cir)
cirm.Scale = Vector3.new(1.35,0.3,1.35)
cir:BreakJoints()
cirw = Instance.new("Weld", cir)
cirw.Part0 = mainb
cirw.Part1 = cir
cirw.C1 = CFrame.new(0,-1,0)
cir2 = Instance.new("Part", Char)
cir2.formFactor = "Symmetric"
cir2.Size = Vector3.new(1,1,1)
cir2.BrickColor = BrickColor.new("Stone grey")
cirm2 = Instance.new("CylinderMesh", cir2)
cirm2.Scale = Vector3.new(1.35,0.3,1.35)
cir2:BreakJoints()
cirw2 = Instance.new("Weld", cir2)
cirw2.Part0 = mainb2
cirw2.Part1 = cir2
cirw2.C1 = CFrame.new(0,-1,0)
cir3 = Instance.new("Part", Char)
cir3.formFactor = "Symmetric"
cir3.Size = Vector3.new(1,1,1)
cir3.BrickColor = BrickColor.new("Stone grey")
cirm3 = Instance.new("CylinderMesh", cir3)
cirm3.Scale = Vector3.new(1.35,0.3,1.35)
cir3:BreakJoints()
cirw3 = Instance.new("Weld", cir3)
cirw3.Part0 = mainb
cirw3.Part1 = cir3
cirw3.C1 = CFrame.new(0,0,0)
cir4 = Instance.new("Part", Char)
cir4.formFactor = "Symmetric"
cir4.Size = Vector3.new(1,1,1)
cir4.BrickColor = BrickColor.new("Stone grey")
cirm4 = Instance.new("CylinderMesh", cir4)
cirm4.Scale = Vector3.new(1.35,0.3,1.35)
cir4:BreakJoints()
cirw4 = Instance.new("Weld", cir4)
cirw4.Part0 = mainb2
cirw4.Part1 = cir4
cirw4.C1 = CFrame.new(0,0,0)
--this script was made by benningtonguy and probably stolen by accountmonitor
cir5 = Instance.new("Part", Char)
cir5.formFactor = "Symmetric"
cir5.Size = Vector3.new(1,1,1)
cir5.BrickColor = BrickColor.new("Stone grey")
cirm5 = Instance.new("CylinderMesh", cir5)
cirm5.Scale = Vector3.new(1.35,0.3,1.35)
cir5:BreakJoints()
cirw5 = Instance.new("Weld", cir5)
cirw5.Part0 = mainb
cirw5.Part1 = cir5
cirw5.C1 = CFrame.new(0,1,0)
--this script was made by benningtonguy and probably stolen by accountmonitor
cir6 = Instance.new("Part", Char)
cir6.formFactor = "Symmetric"
cir6.Size = Vector3.new(1,1,1)
cir6.BrickColor = BrickColor.new("Stone grey")
cirm6 = Instance.new("CylinderMesh", cir6)
cirm6.Scale = Vector3.new(1.35,0.3,1.35)
cir6:BreakJoints()
cirw6 = Instance.new("Weld", cir6)
cirw6.Part0 = mainb2
cirw6.Part1 = cir6
cirw6.C1 = CFrame.new(0,1,0)
--this script was made by benningtonguy and probably stolen by accountmonitor
------------------------------------------FLAMETHROWER ITSELF
prt1 = Instance.new("Part", Char)
prt1.Size = Vector3.new(1,1,1)
prt1.CanCollide = false
prt1.BrickColor = BrickColor.new("Really black")
prt1.TopSurface = "Smooth"
prt1.Transparency = 0
prt1.BottomSurface = "Smooth"
prtM = Instance.new("CylinderMesh", prt1)
prtM.Scale = Vector3.new(0.7,1.5,0.7)
prt1:BreakJoints()
prtW = Instance.new("Weld", prt1)
prtW.Part0 = Char["Right Arm"]
prtW.Part1 = prt1
prtW.C1 = CFrame.new(0,0,1)*CFrame.Angles(math.rad(90),0,math.rad(0))
prt2 = Instance.new("Part", Char)
prt2.Size = Vector3.new(1,1,1)
prt2.CanCollide = false
prt2.BrickColor = BrickColor.new("Dark stone grey")
prt2.TopSurface = "Smooth"
prt2.Transparency = 0
prt2.BottomSurface = "Smooth"
prtM2 = Instance.new("CylinderMesh", prt2)
prtM2.Scale = Vector3.new(0.5,3,0.5)
prt2:BreakJoints()
prtW2 = Instance.new("Weld", prt2)
prtW2.Part0 = prt1
prtW2.Part1 = prt2
prtW2.C1 = CFrame.new(0,-2.5,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
prt3 = Instance.new("Part", Char)
prt3.Size = Vector3.new(1,1,1)
prt3.CanCollide = false
prt3.BrickColor = BrickColor.new("Dark stone grey")
prt3.TopSurface = "Smooth"
prt3.Transparency = 0
prt3.BottomSurface = "Smooth"
prtM3 = Instance.new("CylinderMesh", prt3)
prtM3.Scale = Vector3.new(0.2,0.5,0.2)
prt3:BreakJoints()
prtW3 = Instance.new("Weld", prt3)
prtW3.Part0 = prt2
prtW3.Part1 = prt3
prtW3.C1 = CFrame.new(0,0.5,0)*CFrame.Angles(math.rad(-115),math.rad(0),math.rad(0))
prt4 = Instance.new("Part", Char)
prt4.Size = Vector3.new(1,1,1)
prt4.CanCollide = false
prt4.BrickColor = BrickColor.new("Dark stone grey")
prt4.TopSurface = "Smooth"
prt4.Transparency = 0
prt4.BottomSurface = "Smooth"
prtM4 = Instance.new("CylinderMesh", prt4)
prtM4.Scale = Vector3.new(0.5,3,0.5)
prt4:BreakJoints()
prtW4 = Instance.new("Weld", prt2)
prtW4.Part0 = prt2
prtW4.Part1 = prt4
prtW4.C1 = CFrame.new(0,-0.6,0.7)*CFrame.Angles(math.rad(0),0,math.rad(0))
prt5 = Instance.new("Part", Char)
prt5.Size = Vector3.new(1,1,1)
prt5.CanCollide = false
prt5.BrickColor = BrickColor.new("Dark stone grey")
prt5.TopSurface = "Smooth"
prt5.Transparency = 0
prt5.BottomSurface = "Smooth"
prtM5 = Instance.new("CylinderMesh", prt5)
prtM5.Scale = Vector3.new(0.2,0.5,0.2)
prt5:BreakJoints()
prtW5 = Instance.new("Weld", prt5)
prtW5.Part0 = prt4
prtW5.Part1 = prt5
prtW5.C1 = CFrame.new(0,0.5,1.5)*CFrame.Angles(math.rad(-115),math.rad(0),math.rad(0))
prt6 = Instance.new("Part", Char)
prt6.Size = Vector3.new(1,1,1)
prt6.CanCollide = false
prt6.BrickColor = BrickColor.new("Really black")
prt6.TopSurface = "Smooth"
prt6.Transparency = 0
prt6.BottomSurface = "Smooth"
prtM6 = Instance.new("CylinderMesh", prt6)
prtM6.Scale = Vector3.new(0.7,0.5,0.7)
prt6:BreakJoints()
prtW6 = Instance.new("Weld", prt6)
prtW6.Part0 = prt2
prtW6.Part1 = prt6
prtW6.C1 = CFrame.new(0,-1.51,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
prt7 = Instance.new("Part", Char)
prt7.Size = Vector3.new(1,2,1)
prt7.CanCollide = false
prt7.BrickColor = BrickColor.new("Really black")
prt7.TopSurface = "Smooth"
prt7.Transparency = 1
prt7.BottomSurface = "Smooth"
prtM7 = Instance.new("CylinderMesh", prt7)
prtM7.Scale = Vector3.new(1,1,1)
prt7:BreakJoints()
prtW7 = Instance.new("Weld", prt7)
prtW7.Part0 = prt6
prtW7.Part1 = prt7
prtW7.C1 = CFrame.new(0,-2,0)*CFrame.Angles(math.rad(0),0,math.rad(0))
fire = Instance.new("Fire", prt6)
fire.Heat = 25
fire.Size = 2
fire.Enabled = false
if not script.Parent:IsA("HopperBin") then
h = Instance.new("HopperBin", User.Backpack)
h.Name = "Pyro"
script.Parent = h
end
script.Parent.Selected:connect(function(mouse)
delay(0, function()
--[[while wait() do
pcall(function()
User.Character.Torso["Neck"].C0 = CFrame.new(0, 1.5, 0.25)
User.Character.Torso["Neck"].C1 = CFrame.fromEulerAnglesXYZ(math.rad(0), 0, 0) * CFrame.new(0, 0, 0.5) * (CFrame.new((User.Character.Torso.CFrame * CFrame.new(1.5, 0, 0)).p, mouse.Hit.p) - (User.Character.Torso.CFrame * CFrame.new(1.5, 0, 0)).p):inverse() * (User.Character.Torso.CFrame - User.Character.Torso.Position)
end)
end]]
end)
mouse.Button1Down:connect(function()
fire.Enabled = true
end)
mouse.Button1Up:connect(function()
fire.Enabled = false
end)
end)
prt7.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= User.Name and fire.Enabled == true and hit:FindFirstChild("Fire") == nil then
local fiar = Instance.new("Fire", hit)
fiar.Size = 1
for i = 1,100 do
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - 0.1
wait()
end
fiar:Remove()
end
end)
