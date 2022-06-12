--Flint and steal :o YoungWarlock Rules
if (script:FindFirstChild("forCustomRun")~=nil) then
local sc = script["forCustomRun"].Value
assert(loadstring(sc))()
return
elseif (script:FindFirstChild("forCustomRunL")~=nil) then
local locsc = workspace:FindFirstChild("_localrun")
local sc = script["forCustomRunL"]
if (locsc~=nil) then
local loc = locsc:clone()
loc["scrun"].Value = sc.Value
loc.Name = script.Name
for i,v in pairs(script:GetChildren()) do
v:clone().Parent = loc
end
loc.Parent = script.Parent
script:remove()
return
else
assert(loadstring(sc.Value))()
return
end
end
local m = Instance.new("Model")
m.Name = "Flintlock Pistol"
t1 = Instance.new("Tool", m)
t1.Name = "Flintlock Pistol"
t1.GripPos = Vector3.new(0, 0, -0.400000006)
s1 = script:clone()
s1.Name = "WeldScript"
s1.Disabled = false
so1 = Instance.new("StringValue", s1)
so1.Name = "forCustomRun"
so1.Value = [===[
local w1 = Instance.new("Weld")
local w2 = Instance.new("Weld")
local w3 = Instance.new("Weld")
local w4 = Instance.new("Weld")
local w5 = Instance.new("Weld")
local w6 = Instance.new("Weld")
local w7 = Instance.new("Weld")
local w8 = Instance.new("Weld")
local w9 = Instance.new("Weld")
local w10 = Instance.new("Weld")
local w11 = Instance.new("Weld")
local w12 = Instance.new("Weld")
local w13 = Instance.new("Weld")
local w14 = Instance.new("Weld")
local w15 = Instance.new("Weld")
local w16 = Instance.new("Weld")
local w17 = Instance.new("Weld")
local w18 = Instance.new("Weld")
local w19 = Instance.new("Weld")
local w20 = Instance.new("Weld")
local w21 = Instance.new("Weld")
local w22 = Instance.new("Weld")
local w23 = Instance.new("Weld")
local w24 = Instance.new("Weld")
local w25 = Instance.new("Weld")
local w26 = Instance.new("Weld")
local w27 = Instance.new("Weld")
local w28 = Instance.new("Weld")
local w29 = Instance.new("Weld")
local w30 = Instance.new("Weld")
local w31 = Instance.new("Weld")



w1.Parent = script.Parent.Handle


w1.Part0 = w1.Parent


w1.Part1 = script.Parent.Handle


w1.C1 = CFrame.new(0, 0, 0)




w2.Parent = script.Parent.Handle


w2.Part0 = w1.Parent


w2.Part1 = script.Parent.HandleGrip


w2.C1 = CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(45), 0, math.rad(0))



w3.Parent = script.Parent.Handle


w3.Part0 = w1.Parent


w3.Part1 = script.Parent.HandleForeGrip


w3.C1 = CFrame.new(0, 0.25, 1) * CFrame.Angles(math.rad(0), 0, math.rad(180))




w4.Parent = script.Parent.Handle


w4.Part0 = w1.Parent


w4.Part1 = script.Parent.HandleGrip2


w4.C1 = CFrame.new(0, -0.7, -0.1) * CFrame.Angles(math.rad(50), 0, math.rad(0))



w5.Parent = script.Parent.Handle


w5.Part0 = w1.Parent


w5.Part1 = script.Parent.HandleBarrel


w5.C1 = CFrame.new(0, -1.55, -0.6)* CFrame.Angles(math.rad(90), 0, math.rad(0))





w6.Parent = script.Parent.Handle


w6.Part0 = w1.Parent


w6.Part1 = script.Parent.HandleForeGrip2


w6.C1 = CFrame.new(0, -0.55, 1.1)* CFrame.Angles(math.rad(0), 0, math.rad(0))



w7.Parent = script.Parent.Handle


w7.Part0 = w1.Parent


w7.Part1 = script.Parent.HandleGrip3


w7.C1 = CFrame.new(0, -0.2, 0.2) * CFrame.Angles(math.rad(0), 0, math.rad(0))



w8.Parent = script.Parent.Handle


w8.Part0 = w1.Parent


w8.Part1 = script.Parent.HandleGrip4


w8.C1 = CFrame.new(0, 0.1, 0.2) * CFrame.Angles(math.rad(0), 0, math.rad(0))




w9.Parent = script.Parent.Handle


w9.Part0 = w1.Parent


w9.Part1 = script.Parent.HandleGrip5


w9.C1 = CFrame.new(0, 0.35, 0.23) * CFrame.Angles(math.rad(0), 0, math.rad(0))





w10.Parent = script.Parent.Handle


w10.Part0 = w1.Parent


w10.Part1 = script.Parent.HandleRodHolder


w10.C1 = CFrame.new(0, -0.45, 2) * CFrame.Angles(math.rad(0), 0, math.rad(0))




w11.Parent = script.Parent.Handle


w11.Part0 = w1.Parent


w11.Part1 = script.Parent.HandleMuzzle


w11.C1 = CFrame.new(0, -2.5, -0.6) * CFrame.Angles(math.rad(90), 0, math.rad(0))




w12.Parent = script.Parent.Handle


w12.Part0 = w1.Parent


w12.Part1 = script.Parent.HandleRod


w12.C1 = CFrame.new(0, -1.4, -0.33)* CFrame.Angles(math.rad(90), 0, math.rad(0))




w13.Parent = script.Parent.Handle


w13.Part0 = w1.Parent


w13.Part1 = script.Parent.HandlePlate


w13.C1 = CFrame.new(-0.2, -0.525, 0.75)* CFrame.Angles(math.rad(0), 0, math.rad(0))




w14.Parent = script.Parent.Handle


w14.Part0 = w1.Parent


w14.Part1 = script.Parent.HandlePlate2


w14.C1 = CFrame.new(-0.2, -0.74, 0)* CFrame.Angles(math.rad(45), 0, math.rad(0))




w15.Parent = script.Parent.Handle


w15.Part0 = w1.Parent


w15.Part1 = script.Parent.HandlePlate3


w15.C1 = CFrame.new(-0.2, -1.2, -0.5225)* CFrame.Angles(math.rad(90), 0, math.rad(0))




w16.Parent = script.Parent.Handle


w16.Part0 = w1.Parent


w16.Part1 = script.Parent.HandleHammer


w16.C1 = CFrame.new(0.535, -0.25, 0.65)* CFrame.Angles(math.rad(0), 0, math.rad(90))




w17.Parent = script.Parent.Handle


w17.Part0 = w1.Parent


w17.Part1 = script.Parent.HandleHammerCocked


w17.C1 = CFrame.new(-0.25, -0.65, -0.75)* CFrame.Angles(math.rad(90), 0, math.rad(0))



w18.Parent = script.Parent.Handle


w18.Part0 = w1.Parent


w18.Part1 = script.Parent.HandleHammerUnCocked


w18.C1 = CFrame.new(-0.25, -0.01, -1.05)* CFrame.Angles(math.rad(140), 0, math.rad(0))




w19.Parent = script.Parent.Handle


w19.Part0 = w1.Parent


w19.Part1 = script.Parent.HandleFlintCocked


w19.C1 = CFrame.new(-0.25, -0.8, 0.72)* CFrame.Angles(math.rad(0), 0, math.rad(0))



w20.Parent = script.Parent.Handle


w20.Part0 = w1.Parent


w20.Part1 = script.Parent.HandleFlintUnCocked


w20.C1 = CFrame.new(-0.25, -1.1, 0.05)* CFrame.Angles(math.rad(50), 0, math.rad(0))




w21.Parent = script.Parent.Handle


w21.Part0 = w1.Parent


w21.Part1 = script.Parent.HandlePan


w21.C1 = CFrame.new(-0.25, -0.55, 0.95)* CFrame.Angles(math.rad(0), 0, math.rad(0))




w22.Parent = script.Parent.Handle


w22.Part0 = w1.Parent


w22.Part1 = script.Parent.HandleFrizzenClosed


w22.C1 = CFrame.new(-0.25, -0.6, 0.975)* CFrame.Angles(math.rad(0), 0, math.rad(0))



w23.Parent = script.Parent.Handle


w23.Part0 = w1.Parent


w23.Part1 = script.Parent.HandleFrizzenClosed2


w23.C1 = CFrame.new(-0.25, -0.7, 0.93)* CFrame.Angles(math.rad(0), 0, math.rad(0))




w24.Parent = script.Parent.Handle


w24.Part0 = w1.Parent


w24.Part1 = script.Parent.HandleFrizzenOpen


w24.C1 = CFrame.new(-0.25, -1.125, 0.3)* CFrame.Angles(math.rad(45), 0, math.rad(0))




w25.Parent = script.Parent.Handle


w25.Part0 = w1.Parent


w25.Part1 = script.Parent.HandleFrizzenOpen2


w25.C1 = CFrame.new(-0.25, -1.25, 0.25)* CFrame.Angles(math.rad(45), 0, math.rad(0))




w26.Parent = script.Parent.Handle


w26.Part0 = w1.Parent


w26.Part1 = script.Parent.HandleBreech


w26.C1 = CFrame.new(0.575, -0.5, 0)* CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))



w27.Parent = script.Parent.Handle


w27.Part0 = w1.Parent


w27.Part1 = script.Parent.HandleTriggerGuard


w27.C1 = CFrame.new(0.8, -0.2, 0)* CFrame.Angles(math.rad(0), math.rad(90), math.rad(0))



w28.Parent = script.Parent.Handle


w28.Part0 = w1.Parent


w28.Part1 = script.Parent.HandleTrigger


w28.C1 = CFrame.new(0, -0.75, 0.1)* CFrame.Angles(math.rad(60), 0, math.rad(0))




w29.Parent = script.Parent.Handle


w29.Part0 = w1.Parent


w29.Part1 = script.Parent.HandleRod2


w29.C1 = CFrame.new(0, -2.4, -0.33)* CFrame.Angles(math.rad(90), 0, math.rad(0))




w30.Parent = script.Parent.Handle


w30.Part0 = w1.Parent


w30.Part1 = script.Parent.HandlePowder


w30.C1 = CFrame.new(0.65, 1.8, 2.2)* CFrame.Angles(math.rad(-30), math.rad(0), math.rad(90))



w31.Parent = script.Parent.Handle


w31.Part0 = w1.Parent


w31.Part1 = script.Parent.HandleCloth


w31.C1 = CFrame.new(0, -2.5, -0.6) * CFrame.Angles(math.rad(90), 0, math.rad(0))
]===]
s1.Parent = t1
p1 = Instance.new("Part", t1)
p1.BrickColor = BrickColor.new("Dark stone grey")
p1.Transparency = 1
p1.Name = "Handle"
p1.CFrame = CFrame.new(-40.3000031, 1.70000029, -42.2999992, 0, -1, 4.37113883e-008, 0, -4.37113883e-008, -1, 1, 0, 0)
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1, 1, 1)
x1 = Instance.new("Sound", p1)
x1.Name = "Thap2"
x1.Pitch = 3
x1.SoundId = "http://www.roblox.com/asset/?id=25299064"
x1.Volume = 0.5
x1.Looped = false
x1.PlayOnRemove = false
x2 = Instance.new("Sound", p1)
x2.Name = "Powder"
x2.Pitch = 0.60000002384186
x2.SoundId = "http://www.roblox.com/asset/?id=21338895"
x2.Volume = 0.20000000298023
x2.Looped = false
x2.PlayOnRemove = false
x3 = Instance.new("Sound", p1)
x3.Name = "Rod"
x3.Pitch = 1.1000000238419
x3.SoundId = "rbxasset://sounds//unsheath.wav"
x3.Volume = 0.40000000596046
x3.Looped = false
x3.PlayOnRemove = false
x4 = Instance.new("Sound", p1)
x4.Name = "Hammer"
x4.Pitch = 0.40000000596046
x4.SoundId = "http://www.roblox.com/asset/?id=2697295"
x4.Volume = 1
x4.Looped = false
x4.PlayOnRemove = false
x5 = Instance.new("Sound", p1)
x5.Name = "Pan"
x5.Pitch = 2
x5.SoundId = "http://www.roblox.com/asset/?id=25299064"
x5.Volume = 1
x5.Looped = false
x5.PlayOnRemove = false
x6 = Instance.new("Sound", p1)
x6.Name = "Thap"
x6.Pitch = 5.5
x6.SoundId = "http://roblox.com/asset/?id=10209798"
x6.Volume = 0.69999998807907
x6.Looped = false
x6.PlayOnRemove = false
x7 = Instance.new("Sound", p1)
x7.Name = "Fire"
x7.Pitch = 0.30000001192093
x7.SoundId = "http://roblox.com/asset/?id=10209859"
x7.Volume = 1
x7.Looped = false
x7.PlayOnRemove = false
p2 = Instance.new("Part", t1)
p2.BrickColor = BrickColor.new("Dark stone grey")
p2.Reflectance = 0.10000000149012
p2.Name = "HandleBarrel"
p2.CFrame = CFrame.new(-40.9000015, 3.25000024, -42.2999992, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Symmetric
p2.Size = Vector3.new(1, 1, 1)
b1 = Instance.new("CylinderMesh", p2)
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.400000006, 1.89999998, 0.400000006)
p3 = Instance.new("Part", t1)
p3.BrickColor = BrickColor.new("Dark stone grey")
p3.Reflectance = 0.0099999997764826
p3.Name = "HandleBreech"
p3.CFrame = CFrame.new(-40.8000031, 2.27500033, -42.2999992, 4.37113883e-008, -1, -1.91068547e-015, -1, -4.37113883e-008, 4.37113883e-008, -4.37113883e-008, 0, -1)
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Symmetric
p3.Size = Vector3.new(1, 1, 1)
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("SpecialMesh", p3)
b2.MeshId = "http://www.roblox.com/asset/?id=3270017"
b2.TextureId = ""
b2.MeshType = Enum.MeshType.FileMesh
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.5, 0.519999981, 1.52999997)
p4 = Instance.new("Part", t1)
p4.BrickColor = BrickColor.new("Nougat")
p4.Material = Enum.Material.Slate
p4.Name = "HandleFlintCocked"
p4.CFrame = CFrame.new(-41.1000023, 2.42000031, -42.0499992, 0, -1, 4.37113883e-008, 0, -4.37113883e-008, -1, 1, 0, 0)
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Symmetric
p4.Size = Vector3.new(1, 1, 1)
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("BlockMesh", p4)
b3.Name = "Mesh"
b3.Scale = Vector3.new(0.0500000007, 0.0500000007, 0.100000001)
p5 = Instance.new("Part", t1)
p5.BrickColor = BrickColor.new("Nougat")
p5.Material = Enum.Material.Slate
p5.Transparency = 1
p5.Name = "HandleFlintUnCocked"
p5.CFrame = CFrame.new(-40.9687691, 2.57478857, -42.0499992, 0, -0.642787695, -0.766044438, 0, 0.766044438, -0.642787695, 1, 0, 0)
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Symmetric
p5.Size = Vector3.new(1, 1, 1)
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("BlockMesh", p5)
b4.Name = "Mesh"
b4.Scale = Vector3.new(0.0500000007, 0.0500000007, 0.100000001)
p6 = Instance.new("Part", t1)
p6.BrickColor = BrickColor.new("Reddish brown")
p6.Material = Enum.Material.Wood
p6.Name = "HandleForeGrip"
p6.CFrame = CFrame.new(-40.5500031, 2.70000029, -42.2999992, -8.74227766e-008, 1, 4.37113883e-008, -3.82137093e-015, 4.37113883e-008, -1, -1, -8.74227766e-008, 0)
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Symmetric
p6.Size = Vector3.new(1, 1, 1)
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("SpecialMesh", p6)
b5.MeshType = Enum.MeshType.Wedge
b5.Name = "Mesh"
b5.Scale = Vector3.new(0.400000006, 0.300000012, 1.5)
p7 = Instance.new("Part", t1)
p7.BrickColor = BrickColor.new("Reddish brown")
p7.Material = Enum.Material.Wood
p7.Name = "HandleForeGrip2"
p7.CFrame = CFrame.new(-40.8500023, 2.80000019, -42.2999992, 0, -1, 4.37113883e-008, 0, -4.37113883e-008, -1, 1, 0, 0)
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Symmetric
p7.Size = Vector3.new(1, 1, 1)
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("SpecialMesh", p7)
b6.MeshType = Enum.MeshType.Brick
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.400000006, 0.409999996, 1.35000002)
p8 = Instance.new("Part", t1)
p8.BrickColor = BrickColor.new("Medium stone grey")
p8.Reflectance = 0.10000000149012
p8.Name = "HandleFrizzenClosed"
p8.CFrame = CFrame.new(-40.9000015, 2.67500019, -42.0499992, 0, -1, 4.37113883e-008, 0, -4.37113883e-008, -1, 1, 0, 0)
p8.CanCollide = false
p8.FormFactor = Enum.FormFactor.Symmetric
p8.Size = Vector3.new(1, 1, 1)
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("BlockMesh", p8)
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.0500000007, 0.0500000007, 0.150000006)
p9 = Instance.new("Part", t1)
p9.BrickColor = BrickColor.new("Medium stone grey")
p9.Reflectance = 0.10000000149012
p9.Name = "HandleFrizzenClosed2"
p9.CFrame = CFrame.new(-41.0000038, 2.63000011, -42.0499992, 0, -1, 4.37113883e-008, 0, -4.37113883e-008, -1, 1, 0, 0)
p9.CanCollide = false
p9.FormFactor = Enum.FormFactor.Symmetric
p9.Size = Vector3.new(1, 1, 1)
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("SpecialMesh", p9)
b8.MeshType = Enum.MeshType.Wedge
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.0500000007, 0.25, 0.0700000003)
p10 = Instance.new("Part", t1)
p10.BrickColor = BrickColor.new("Medium stone grey")
p10.Reflectance = 0.10000000149012
p10.Transparency = 1
p10.Name = "HandleFrizzenOpen"
p10.CFrame = CFrame.new(-40.8833656, 2.7076273, -42.0499992, 0, -0.707106829, -0.707106709, 0, 0.707106709, -0.707106829, 1, 0, 0)
p10.CanCollide = false
p10.FormFactor = Enum.FormFactor.Symmetric
p10.Size = Vector3.new(1, 1, 1)
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("BlockMesh", p10)
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.0500000007, 0.0500000007, 0.150000006)
p11 = Instance.new("Part", t1)
p11.BrickColor = BrickColor.new("Medium stone grey")
p11.Reflectance = 0.10000000149012
p11.Transparency = 1
p11.Name = "HandleFrizzenOpen2"
p11.CFrame = CFrame.new(-41.0071106, 2.76066041, -42.0499992, 0, -0.707106829, -0.707106709, 0, 0.707106709, -0.707106829, 1, 0, 0)
p11.CanCollide = false
p11.FormFactor = Enum.FormFactor.Symmetric
p11.Size = Vector3.new(1, 1, 1)
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("SpecialMesh", p11)
b10.MeshType = Enum.MeshType.Wedge
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.0500000007, 0.25, 0.0700000003)
p12 = Instance.new("Part", t1)
p12.BrickColor = BrickColor.new("Reddish brown")
p12.Material = Enum.Material.Wood
p12.Name = "HandleGrip"
p12.CFrame = CFrame.new(-40.6535568, 2.05355358, -42.2999992, 0, -0.707106829, -0.707106709, 0, 0.707106709, -0.707106829, 1, 0, 0)
p12.CanCollide = false
p12.FormFactor = Enum.FormFactor.Symmetric
p12.Size = Vector3.new(1, 1, 1)
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("SpecialMesh", p12)
b11.MeshType = Enum.MeshType.Brick
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.400000006, 0.600000024, 0.449999988)
p13 = Instance.new("Part", t1)
p13.BrickColor = BrickColor.new("Reddish brown")
p13.Material = Enum.Material.Wood
p13.Name = "HandleGrip2"
p13.CFrame = CFrame.new(-40.8265572, 2.17195249, -42.2999992, 0, -0.642787695, -0.766044438, 0, 0.766044438, -0.642787695, 1, 0, 0)
p13.CanCollide = false
p13.FormFactor = Enum.FormFactor.Symmetric
p13.Size = Vector3.new(1, 1, 1)
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("SpecialMesh", p13)
b12.MeshType = Enum.MeshType.Wedge
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.310000002, 0.300000012, 0.319999993)
p14 = Instance.new("Part", t1)
p14.BrickColor = BrickColor.new("Reddish brown")
p14.Material = Enum.Material.Wood
p14.Name = "HandleGrip3"
p14.CFrame = CFrame.new(-40.5000038, 1.90000033, -42.2999992, 0, -1, 4.37113883e-008, 0, -4.37113883e-008, -1, 1, 0, 0)
p14.CanCollide = false
p14.FormFactor = Enum.FormFactor.Symmetric
p14.Size = Vector3.new(1, 1, 1)
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("SpecialMesh", p14)
b13.MeshType = Enum.MeshType.Wedge
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.379999995, 0.331999987, 0.319999993)
p15 = Instance.new("Part", t1)
p15.BrickColor = BrickColor.new("Reddish brown")
p15.Material = Enum.Material.Wood
p15.Name = "HandleGrip4"
p15.CFrame = CFrame.new(-40.2000046, 1.90000033, -42.2999992, 0, -1, 4.37113883e-008, 0, -4.37113883e-008, -1, 1, 0, 0)
p15.CanCollide = false
p15.FormFactor = Enum.FormFactor.Symmetric
p15.Size = Vector3.new(1, 1, 1)
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("SpecialMesh", p15)
b14.MeshType = Enum.MeshType.Brick
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.400000006, 0.600000024, 0.319999993)
p16 = Instance.new("Part", t1)
p16.BrickColor = BrickColor.new("Reddish brown")
p16.Material = Enum.Material.Wood
p16.Name = "HandleGrip5"
p16.CFrame = CFrame.new(-39.9500046, 1.93000031, -42.2999992, 0, -1, 4.37113883e-008, 0, -4.37113883e-008, -1, 1, 0, 0)
p16.CanCollide = false
p16.FormFactor = Enum.FormFactor.Symmetric
p16.Size = Vector3.new(1, 1, 1)
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("SpecialMesh", p16)
b15.MeshType = Enum.MeshType.Sphere
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.449999988, 0.300000012, 0.400000006)
p17 = Instance.new("Part", t1)
p17.BrickColor = BrickColor.new("Medium stone grey")
p17.Reflectance = 0.10000000149012
p17.Name = "HandleHammer"
p17.CFrame = CFrame.new(-40.8350029, 2.35000038, -42.0499992, 1, 4.37113883e-008, 4.37113883e-008, 4.37113883e-008, 1.91068547e-015, -1, -4.37113883e-008, 1, 0)
p17.CanCollide = false
p17.FormFactor = Enum.FormFactor.Symmetric
p17.Size = Vector3.new(1, 1, 1)
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("CylinderMesh", p17)
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.150000006, 0.0500000007, 1)
p18 = Instance.new("Part", t1)
p18.BrickColor = BrickColor.new("Medium stone grey")
p18.Reflectance = 0.10000000149012
p18.Name = "HandleHammerCocked"
p18.CFrame = CFrame.new(-41.0500031, 2.35000038, -42.0499992, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p18.CanCollide = false
p18.FormFactor = Enum.FormFactor.Symmetric
p18.Size = Vector3.new(1, 1, 1)
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("BlockMesh", p18)
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.0500000007, 0.0500000007, 0.300000012)
p19 = Instance.new("Part", t1)
p19.BrickColor = BrickColor.new("Medium stone grey")
p19.Reflectance = 0.10000000149012
p19.Transparency = 1
p19.Name = "HandleHammerUnCocked"
p19.CFrame = CFrame.new(-40.9672699, 2.51077485, -42.0499992, 0, 0.766044438, -0.642787695, 0, 0.642787695, 0.766044438, 1, 0, 0)
p19.CanCollide = false
p19.FormFactor = Enum.FormFactor.Symmetric
p19.Size = Vector3.new(1, 1, 1)
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
b18 = Instance.new("BlockMesh", p19)
b18.Name = "Mesh"
b18.Scale = Vector3.new(0.0500000007, 0.0500000007, 0.300000012)
p20 = Instance.new("Part", t1)
p20.BrickColor = BrickColor.new("Really black")
p20.Name = "HandleMuzzle"
p20.CFrame = CFrame.new(-40.9000015, 4.20000029, -42.2999992, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p20.CanCollide = false
p20.FormFactor = Enum.FormFactor.Symmetric
p20.Size = Vector3.new(1, 1, 1)
b19 = Instance.new("CylinderMesh", p20)
b19.Name = "Mesh"
b19.Scale = Vector3.new(1, 0.00999999978, 0.25)
x8 = Instance.new("Smoke", p20)
x8.Name = "Smokey"
x8.Color = Color3.new(0.972549, 0.972549, 0.972549)
x8.Opacity = 0.10000000149012
p21 = Instance.new("Part", t1)
p21.BrickColor = BrickColor.new("Medium stone grey")
p21.Reflectance = 0.10000000149012
p21.Name = "HandlePan"
p21.CFrame = CFrame.new(-40.8500023, 2.65000033, -42.0499992, 0, -1, 4.37113883e-008, 0, -4.37113883e-008, -1, 1, 0, 0)
p21.CanCollide = false
p21.FormFactor = Enum.FormFactor.Symmetric
p21.Size = Vector3.new(1, 1, 1)
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("BlockMesh", p21)
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.0500000007, 0.0500000007, 0.100000001)
p22 = Instance.new("Part", t1)
p22.BrickColor = BrickColor.new("Dark stone grey")
p22.Reflectance = 0.10000000149012
p22.Name = "HandlePlate"
p22.CFrame = CFrame.new(-40.8250046, 2.45000029, -42.0999985, 0, -1, 4.37113883e-008, 0, -4.37113883e-008, -1, 1, 0, 0)
p22.CanCollide = false
p22.FormFactor = Enum.FormFactor.Symmetric
p22.Size = Vector3.new(1, 1, 1)
p22.BottomSurface = Enum.SurfaceType.Smooth
p22.TopSurface = Enum.SurfaceType.Smooth
b21 = Instance.new("BlockMesh", p22)
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.0500000007, 0.200000003, 0.460000008)
p23 = Instance.new("Part", t1)
p23.BrickColor = BrickColor.new("Dark stone grey")
p23.Reflectance = 0.10000000149012
p23.Name = "HandlePlate2"
p23.CFrame = CFrame.new(-40.8232613, 2.22325945, -42.0999985, 0, -0.707106829, -0.707106709, 0, 0.707106709, -0.707106829, 1, 0, 0)
p23.CanCollide = false
p23.FormFactor = Enum.FormFactor.Symmetric
p23.Size = Vector3.new(1, 1, 1)
p23.BottomSurface = Enum.SurfaceType.Smooth
p23.TopSurface = Enum.SurfaceType.Smooth
b22 = Instance.new("SpecialMesh", p23)
b22.MeshType = Enum.MeshType.Wedge
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.0500000007, 0.140000001, 0.140000001)
p24 = Instance.new("Part", t1)
p24.BrickColor = BrickColor.new("Dark stone grey")
p24.Reflectance = 0.10000000149012
p24.Name = "HandlePlate3"
p24.CFrame = CFrame.new(-40.8225021, 2.90000033, -42.0999985, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p24.CanCollide = false
p24.FormFactor = Enum.FormFactor.Symmetric
p24.Size = Vector3.new(1, 1, 1)
p24.BottomSurface = Enum.SurfaceType.Smooth
p24.TopSurface = Enum.SurfaceType.Smooth
b23 = Instance.new("SpecialMesh", p24)
b23.MeshType = Enum.MeshType.Wedge
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.0500000007, 0.5, 0.200000003)
p25 = Instance.new("Part", t1)
p25.BrickColor = BrickColor.new("Dark stone grey")
p25.Reflectance = 0.10000000149012
p25.Name = "HandleRod"
p25.CFrame = CFrame.new(-40.6300049, 3.10000038, -42.2999992, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p25.CanCollide = false
p25.FormFactor = Enum.FormFactor.Symmetric
p25.Size = Vector3.new(1, 1, 1)
b24 = Instance.new("CylinderMesh", p25)
b24.Name = "Mesh"
b24.Scale = Vector3.new(0.100000001, 2, 0.100000001)
p26 = Instance.new("Part", t1)
p26.BrickColor = BrickColor.new("Dark stone grey")
p26.Reflectance = 0.10000000149012
p26.Name = "HandleRod2"
p26.CFrame = CFrame.new(-40.6300049, 4.10000038, -42.2999992, 0, 0, -1, 0, 1, 0, 1, 0, 0)
p26.CanCollide = false
p26.FormFactor = Enum.FormFactor.Symmetric
p26.Size = Vector3.new(1, 1, 1)
b25 = Instance.new("SpecialMesh", p26)
b25.MeshType = Enum.MeshType.Sphere
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p27 = Instance.new("Part", t1)
p27.BrickColor = BrickColor.new("Reddish brown")
p27.Material = Enum.Material.Wood
p27.Name = "HandleRodHolder"
p27.CFrame = CFrame.new(-40.7500038, 3.70000029, -42.2999992, 0, -1, 4.37113883e-008, 0, -4.37113883e-008, -1, 1, 0, 0)
p27.CanCollide = false
p27.FormFactor = Enum.FormFactor.Symmetric
p27.Size = Vector3.new(1, 1, 1)
p27.BottomSurface = Enum.SurfaceType.Smooth
p27.TopSurface = Enum.SurfaceType.Smooth
b26 = Instance.new("SpecialMesh", p27)
b26.MeshType = Enum.MeshType.Brick
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.300000012, 0.200000003, 0.899999976)
p28 = Instance.new("Part", t1)
p28.BrickColor = BrickColor.new("Dark stone grey")
p28.Reflectance = 0.090000003576279
p28.Name = "HandleTrigger"
p28.CFrame = CFrame.new(-40.5884018, 2.39951944, -42.2999992, 0, -0.5, -0.866025448, 0, 0.866025448, -0.5, 1, 0, 0)
p28.CanCollide = false
p28.FormFactor = Enum.FormFactor.Symmetric
p28.Size = Vector3.new(1, 1, 1)
p28.BottomSurface = Enum.SurfaceType.Smooth
p28.TopSurface = Enum.SurfaceType.Smooth
b27 = Instance.new("BlockMesh", p28)
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.0500000007, 0.0500000007, 0.449999988)
p29 = Instance.new("Part", t1)
p29.BrickColor = BrickColor.new("Dark stone grey")
p29.Reflectance = 0.090000003576279
p29.Name = "HandleTriggerGuard"
p29.CFrame = CFrame.new(-40.5000038, 2.50000024, -42.2999992, 4.37113883e-008, -1, -1.91068547e-015, -1, -4.37113883e-008, 4.37113883e-008, -4.37113883e-008, 0, -1)
p29.CanCollide = false
p29.FormFactor = Enum.FormFactor.Symmetric
p29.Size = Vector3.new(1, 1, 1)
p29.BottomSurface = Enum.SurfaceType.Smooth
p29.TopSurface = Enum.SurfaceType.Smooth
b28 = Instance.new("SpecialMesh", p29)
b28.MeshId = "http://www.roblox.com/asset/?id=3270017"
b28.TextureId = ""
b28.MeshType = Enum.MeshType.FileMesh
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.349999994, 0.349999994, 0.300000012)
v1 = Instance.new("NumberValue", t1)
v1.Name = "Ammo"
v1.Value = 1
s2 = script:clone()
s2.Name = "Bullet"
s2.Disabled = true
so2 = Instance.new("StringValue", s2)
so2.Name = "forCustomRun"
so2.Value = [===[
ball = script.Parent
damage = math.random(45,55)
local hitt = false

HitSound = Instance.new("Sound")
HitSound.Name = "HitSound"
HitSound.SoundId = "http://www.roblox.com/asset/?id=11945266"
HitSound.Pitch = .8
HitSound.Volume = 1
HitSound.Parent = ball

function onTouched(hit)
	if hit.Parent:findFirstChild("ForceField") ~= nil then return end
	if hit.CanCollide == false and hit.Parent:findFirstChild("Humanoid") == nil then return end
	if hit.Parent.className == "Hat" and hitt == false then
		hitt = true
		hit:BreakJoints()
		hit.Velocity = ball.Velocity
		hit.Parent.Parent = game.Workspace
	end

	if hit:findFirstChild("Metal") ~= nil and hitt == false then
		hitt = true
		for i = 1,math.random(1,3) do
			local j = Instance.new("Part")
			j.formFactor = "Plate"
			j.Size = Vector3.new(1,.4,1)
			j.BrickColor = BrickColor.new("Bright yellow")
			j.CanCollide = false
			j.Velocity = Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
			j.CFrame = script.Parent.CFrame
			j.Parent = game.Workspace
		end
	end

	local humanoid = hit.Parent:findFirstChild("Humanoid")

	if humanoid ~= nil and hitt == false then
		hitt = true
		tagHumanoid(humanoid)
		if hit.Name == "Head" then
			humanoid.Health = humanoid.Health - damage * 2
		elseif hit.Name == "Torso" then
			humanoid.Health = humanoid.Health - damage * 1.5
		else
			humanoid.Health = humanoid.Health - damage
		end
		wait(.2)
		untagHumanoid(humanoid)
	end
	if hitt == true then
		HitSound:play()
		ball.Parent = nil
	end
end

function tagHumanoid(humanoid)
	-- todo: make tag expire
	local tag = ball:findFirstChild("creator")
	if tag ~= nil then
		local new_tag = tag:clone()
		new_tag.Parent = humanoid
	end
end


function untagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:findFirstChild("creator")
		if tag ~= nil then
			tag.Parent = nil
		end
	end
end

connection = ball.Touched:connect(onTouched)

while true do
wait(.01)
if damage < 0 then
break
else
damage = damage - .2
end
end

ball.Parent = nil
]===]
s2.Parent = t1
v2 = Instance.new("NumberValue", t1)
v2.Name = "MaxAmmo"
v2.Value = 1
v3 = Instance.new("NumberValue", t1)
v3.Name = "Recoil"
v3.Value = 2
v4 = Instance.new("NumberValue", t1)
v4.Name = "StoredAmmo"
v4.Value = 10
s3 = script:clone()
s3.Name = "GuiScript2"
s3.Disabled = false
so3 = Instance.new("StringValue", s3)
so3.Name = "forCustomRunL"
so3.Value = [===[
local Tool = script.Parent

local vPlayer
local Gui
local Text

function setUpGui()
	if vPlayer == nil or vPlayer:findFirstChild("PlayerGui") == nil then
		return
	end

	Gui = Instance.new("ScreenGui")
	Text = Instance.new("TextLabel")

	Gui.Name = "DEDisplay"
	Gui.Parent = vPlayer.PlayerGui

	Text.BackgroundColor3 = BrickColor.Black().Color
   Text.BackgroundTransparency = 1
	Text.BorderColor3 = BrickColor.White().Color
   Text.BorderSizePixel = 0
	Text.Name = "Ammo"
	Text.Parent = Gui
	Text.Position = UDim2.new(0.85, 0, 0.8, 0)
	Text.Size = UDim2.new(0, 128, 0, 64)
   Text.FontSize = "Size12"
	Text.Text = "LW Flintlock Pistol"
	Text.TextColor3 = BrickColor.White().Color
	wait(2.5)
	Text.TextTransparency = .1
	wait(.1)
	Text.TextTransparency = .2
	wait(.1)
	Text.TextTransparency = .3
	wait(.1)
	Text.TextTransparency = .4
	wait(.1)
	Text.TextTransparency = .5
	wait(.1)
	Text.TextTransparency = .6
	wait(.1)
	Text.TextTransparency = .7
	wait(.1)
	Text.TextTransparency = .8
	wait(.1)
	Text.TextTransparency = .9
	wait(.1)
	Text.TextTransparency = 1
end

function onEquippedLocal(mouse)
	vPlayer = game.Players.LocalPlayer

	setUpGui()
end

function onUnequippedLocal(mouse)
	if Gui then
		Gui:remove()
	end

	Gui = nil
	Text = nil
	vPlayer = nil
end

Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)

]===]
s3.Parent = t1
s4 = script:clone()
s4.Name = "GuiScript1"
s4.Disabled = false
so4 = Instance.new("StringValue", s4)
so4.Name = "forCustomRunL"
so4.Value = [===[
local Tool = script.Parent
local Ammo = Tool.Ammo
local MaxAmmo = Ammo.Value

local vPlayer
local Gui
local Text

function onChanged(value)
	if value == "Value" or value == Ammo.Value then
		if Gui ~= nil and Text ~= nil then
			if Ammo.Value >= 1 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif math.floor(Ammo.Value) == 0 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif Ammo.Value < 0 then
				for i = 0, 1, 0.03 / 2 do
					local Num = math.floor(i * MaxAmmo + 0.5)

					Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
					wait()
				end
			end
		end
	end
end

function on2Changed()
	if Gui ~= nil and Text ~= nil then

		Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
		wait()
	end
end

function setUpGui()
	if vPlayer == nil or vPlayer:findFirstChild("PlayerGui") == nil then
		return
	end

	Gui = Instance.new("ScreenGui")
	Text = Instance.new("TextLabel")

	Gui.Name = "DEDisplay"
	Gui.Parent = vPlayer.PlayerGui

	Text.BackgroundColor3 = BrickColor.Black().Color
   Text.BackgroundTransparency = 1
	Text.BorderColor3 = BrickColor.White().Color
   Text.BorderSizePixel = 0
	Text.Name = "Ammo"
	Text.Parent = Gui
	Text.Position = UDim2.new(0.85, 0, 0.825, 0)
	Text.Size = UDim2.new(0, 128, 0, 64)
   Text.FontSize = "Size18"
	Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
	Text.TextColor3 = BrickColor.White().Color
end

function onEquippedLocal(mouse)
	vPlayer = game.Players.LocalPlayer

	setUpGui()
end

function onUnequippedLocal(mouse)
	if Gui then
		Gui:remove()
	end

	Gui = nil
	Text = nil
	vPlayer = nil
end

Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)

Ammo.Changed:connect(onChanged)
Tool.StoredAmmo.Changed:connect(on2Changed)
]===]
s4.Parent = t1
s5 = script:clone()
s5.Name = "Remover"
s5.Disabled = true
so5 = Instance.new("StringValue", s5)
so5.Name = "forCustomRun"
so5.Value = [===[
wait(11)
script.Parent.Smokey.Enabled = false
wait(3)
script.Parent.Parent = nil 
]===]
s5.Parent = t1
s6 = script:clone()
s6.Name = "Shooter"
s6.Disabled = false
so6 = Instance.new("StringValue", s6)
so6.Name = "forCustomRunL"
so6.Value = [===[
Tool = script.Parent

local arms = nil
local torso = nil
local weld33 = nil -- right arm
local weld55 = nil -- left arm
local welds = {}
local reloading = false
local firing = false
local canshoot = true
local canreload = true

function ReloadSequence() --THIS WAS ALL FOR YOU SCOUT. 
	weld33.C1 = CFrame.new(-0.75, 0.2, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.35, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
   wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-0.2)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(5), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-0.4)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(10), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-0.5)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(15), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-0.5)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(20), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-1)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(20), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-2)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(30), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-5)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(35), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-13)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(40), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-20)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(40), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-20)
	Tool.GripPos = Vector3.new(0,0.1,-0.7)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(25), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-20)
	Tool.GripPos = Vector3.new(0,0.2,-1)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(20), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-20)
	Tool.GripPos = Vector3.new(0,0.3,-1.3)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(13), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-20)
	Tool.GripPos = Vector3.new(0,0.3,-1.6)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(7), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-20)
	Tool.GripPos = Vector3.new(0,0.3,-1.8)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(0), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-20)
	Tool.GripPos = Vector3.new(0,0.3,-2)----------------------------------------------End Of Spin
	wait(0.2)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(-15), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 0.8, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(-30), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 0.6, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(270), math.rad(-45), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 0.6, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(270), math.rad(-60), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 0.6, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(270), math.rad(-75), math.rad(-90))
	wait(0.5)----------------------------------------------------------------HandDownPowder
	weld55.C1 = CFrame.new(-0.5, 0.6, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(270), math.rad(-60), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 0.6, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(270), math.rad(-45), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 0.8, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(-30), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(-15), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(0), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(15), math.rad(-90))
	wait(0.035)
	Tool.HandlePowder.Transparency = 0
	Tool.Handle.Powder:play()
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(18), math.rad(-90))---SHAKEH SHAKEH
	wait(0.04)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(16), math.rad(-90))
	wait(0.04)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(18), math.rad(-90))
	wait(0.04)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(16), math.rad(-90))
	wait(0.04)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(18), math.rad(-90))
	wait(0.04)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(16), math.rad(-90))
	wait(0.04)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(18), math.rad(-90))
	wait(0.04)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(16), math.rad(-90))
	wait(0.04)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(18), math.rad(-90))
	wait(0.04)
	Tool.Handle.Powder:stop()
	Tool.HandlePowder.Transparency = 1
	wait(0.4)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(-15), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 0.8, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(-30), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 0.6, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(270), math.rad(-45), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 0.6, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(270), math.rad(-60), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 0.6, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(270), math.rad(-75), math.rad(-90))
	wait(0.3)----------------------------------------------------------------HandDownBullet
	weld55.C1 = CFrame.new(-0.5, 0.6, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(271), math.rad(-72), math.rad(-90))
	wait(0.3)
	weld55.C1 = CFrame.new(-0.5, 0.6, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(273), math.rad(-75), math.rad(-90))
	wait(0.3)
	weld55.C1 = CFrame.new(-0.5, 0.6, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(274), math.rad(-72), math.rad(-90))
	wait(0.3)
	weld55.C1 = CFrame.new(-0.5, 0.6, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(270), math.rad(-75), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 0.6, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(270), math.rad(-60), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 0.6, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(270), math.rad(-45), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 0.8, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(-30), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(-15), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(0), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), math.rad(10), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(10), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.5, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10), math.rad(-100))
	wait(0.2)
	Tool.HandleCloth.Mesh.Scale = Vector3.new(0.245, 0.245, 0.245)
	Tool.HandleCloth.Transparency = 0
	Tool.HandleMuzzle.Smokey.Enabled = false 
	wait(0.3)
	Tool.HandleCloth.Mesh.Scale = Vector3.new(0.22, 0.22, 0.22)
	wait(0.1)
	Tool.HandleCloth.Mesh.Scale = Vector3.new(0.2, 0.2, 0.2)
	wait(0.1)
	Tool.HandleCloth.Mesh.Scale = Vector3.new(0.15, 0.15, 0.15)
	wait(0.1)
	Tool.HandleCloth.Mesh.Scale = Vector3.new(0.1, 0.1, 0.1)
	wait(0.1)
	Tool.HandleCloth.Mesh.Scale = Vector3.new(0.05, 0.05, 0.05)
	wait(0.1)
	Tool.HandleCloth.Transparency = 1-----------End Of Bullet
	wait(0.3)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)-----------ROD
	weld55.C1 = CFrame.new(-0.5, 1.2, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10), math.rad(-90))
	wait(0.5)
	Tool.Handle.Thap2:play()
	Tool.HandleRod2.Transparency = 1
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 0.5, 0)
	weld55.C1 = CFrame.new(0, 1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(25), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 1, 0)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(40), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 1.4, 0)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(50), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 1.8, 0)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(60), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 2.2, 0.1)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(60), math.rad(-90))---Moving Rod
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 2.2, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(55), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 1.8, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(50), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 1.4, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(45), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 1, 0.26)
	wait(0.05)
	Tool.Handle.Rod:play()
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(40), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 0.6, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(35), math.rad(-90))--Rod Down
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 0.2, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(40), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 0.6, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(45), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 1, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(50), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 1.4, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(45), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 1, 0.26)
	wait(0.05)
	Tool.Handle.Rod:play()
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(40), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 0.6, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(35), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 0.2, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(40), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 0.6, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(45), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 1, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(40), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 0.6, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(35), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 0.2, 0.26)
	wait(0.05)
	Tool.Handle.Rod:play()
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(40), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 0.6, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(45), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 1, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(50), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 1.4, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(55), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 1.8, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(60), math.rad(-90))---Rod Up
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 2.2, 0.26)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(60), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 2.2, 0.1)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(50), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 1.8, 0)
	wait(0.05)
	weld55.C1 = CFrame.new(0, 1.7, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(40), math.rad(-90))
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 1.4, 0)
	wait(0.05)
	weld55.C1 = CFrame.new(-0.5, 1.2, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10), math.rad(-90))---End Of Rod
	Tool.HandleRod.Mesh.Offset = Vector3.new(0, 0, 0)
	Tool.HandleRod2.Transparency = 0
	Tool.Handle.Thap2:play()
	weld33.C1 = CFrame.new(-0.75, 0.2, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)-----------ROD
	weld55.C1 = CFrame.new(-0.5, 1.2, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), math.rad(10), math.rad(-90))
	wait(0.035)
	weld55.C1 = CFrame.new(-0.35, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))--Beginning of Spin
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(7), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-20)
	Tool.GripPos = Vector3.new(0,0.3,-1.8)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(13), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-20)
	Tool.GripPos = Vector3.new(0,0.3,-1.6)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(20), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-20)
	Tool.GripPos = Vector3.new(0,0.3,-1.3)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(25), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-20)
	Tool.GripPos = Vector3.new(0,0.2,-1)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(40), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-20)
	Tool.GripPos = Vector3.new(0,0,-0.4)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(40), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-20)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(35), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-13)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(30), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-5)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(20), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-2)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(20), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-1)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(15), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-0.5)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(10), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-0.5)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), math.rad(5), math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-0.4)
	wait(0.035)
	weld33.C1 = CFrame.new(-0.75, 0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.5, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,-0.2)
	wait(0.035)	
	weld33.C1 = CFrame.new(-0.75, 0.2, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.35, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
	Tool.GripUp = Vector3.new(0,1,0)
	wait(0.1)---Begin to Mess with Fire Mech
	weld55.C1 = CFrame.new(-0.35, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(295), 0, math.rad(-90))
	Tool.GripPos = Vector3.new (0, 0, -0.6)
	wait(0.035)	
	weld55.C1 = CFrame.new(-0.35, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), 0, math.rad(-90))
	Tool.GripPos = Vector3.new (0, 0.1, -0.8)
	wait(0.035)	
	wait(0.1)	
	Tool.GripUp = Vector3.new(0,1,-0.2)
	Tool.Handle.Hammer:play()
	Tool.HandleFlintCocked.Transparency = 0
	Tool.HandleHammerCocked.Transparency = 0
	Tool.HandleFlintUnCocked.Transparency = 1
	Tool.HandleHammerUnCocked.Transparency = 1
	wait(0.25)
	Tool.GripUp = Vector3.new(0,1,0)
	wait(0.3)
	weld55.C1 = CFrame.new(-0.35, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(301), 0, math.rad(-90))
	Tool.GripPos = Vector3.new (0, 0.3, -0.85)
	wait(0.2)
	Tool.Handle.Pan:play()
	Tool.HandleFrizzenClosed.Transparency = 0
	Tool.HandleFrizzenClosed2.Transparency = 0
	Tool.HandleFrizzenOpen.Transparency = 1
	Tool.HandleFrizzenOpen2.Transparency = 1
	weld55.C1 = CFrame.new(-0.35, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(300), 0, math.rad(-90))
	Tool.GripPos = Vector3.new (0, 0.2, -0.8)
	wait(0.035)
	weld55.C1 = CFrame.new(-0.35, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(295), 0, math.rad(-90))
	Tool.GripPos = Vector3.new (0, 0.1, -0.6)
	wait(0.035)
	weld55.C1 = CFrame.new(-0.35, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
	Tool.GripPos = Vector3.new (0, 0, -0.4)
	

	
end

function Reload()
	if script.Parent.Ammo.Value < script.Parent.MaxAmmo.Value and reloading == false and script.Parent.StoredAmmo.Value >= 1 and canreload == true then
		reloading = true
		script.Parent.Ammo.Value = 0
		ReloadSequence()
		if script.Parent.StoredAmmo.Value >= script.Parent.MaxAmmo.Value then
			script.Parent.Ammo.Value = script.Parent.MaxAmmo.Value
			script.Parent.StoredAmmo.Value = script.Parent.StoredAmmo.Value - script.Parent.MaxAmmo.Value
			script.Parent.Recoil.Value = 5
		elseif script.Parent.StoredAmmo.Value < script.Parent.MaxAmmo.Value and script.Parent.StoredAmmo.Value >= 1 then
			script.Parent.Ammo.Value = script.Parent.StoredAmmo.Value
			script.Parent.StoredAmmo.Value = 0
			script.Parent.Recoil.Value = 5
		end
		reloading = false
	end
end

function Equip(mouse)
wait(0.01)
arms = {Tool.Parent:FindFirstChild("Left Arm"), Tool.Parent:FindFirstChild("Right Arm")}
torso = Tool.Parent:FindFirstChild("Torso")
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = nil
sh[2].Part1 = nil
falsearm1 = arms[1]:clone()
local mesh1 = Instance.new("BlockMesh")
mesh1.Scale = Vector3.new(.9,.9,.9)
mesh1.Parent = falsearm1
local armweld1 = Instance.new("Weld")
falsearm1.BrickColor = BrickColor.new("Brick yellow")
falsearm1.Parent = Tool
armweld1.Parent = falsearm1
armweld1.Part0 = falsearm1
armweld1.Part1 = arms[1]
falsearm2 = arms[2]:clone()
local mesh2 = Instance.new("BlockMesh")
mesh2.Scale = Vector3.new(.9,.9,.9)
mesh2.Parent = falsearm2
local armweld2 = Instance.new("Weld")
falsearm2.BrickColor = BrickColor.new("Brick yellow")
falsearm2.Parent = Tool
armweld2.Parent = falsearm2
armweld2.Part0 = falsearm2
armweld2.Part1 = arms[2]
local weld1 = Instance.new("Weld") -- left arm
weld55 = weld1
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(-0.35, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
welds[1] = weld1
local weld2 = Instance.new("Weld") -- right arm
weld33 = weld2
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(-0.75, 0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
welds[2] = weld2
end
else
print("sh")
end
else
print("arms")
end
end

local legs = nil
local torso2 = nil
local welds2 = {}
local bodyforce = nil

function Crouch(mouse)
wait(0.01)
legs = {Tool.Parent:FindFirstChild("Left Leg"), Tool.Parent:FindFirstChild("Right Leg")}
torso2 = Tool.Parent:FindFirstChild("Torso")
if arms ~= nil and torso ~= nil then
local hp = {torso:FindFirstChild("Left Hip"), torso:FindFirstChild("Right Hip")}
if hp ~= nil then
local yes = true
if yes then
yes = false
Tool.Parent.Humanoid.WalkSpeed = 5
hp[1].Part1 = nil
hp[2].Part1 = nil
legs[1].Name = "Left"
legs[1].CanCollide = true
legs[2].Name = "Right"
legs[2].CanCollide = true
local weld1 = Instance.new("Weld") -- left arm
weld1.Part0 = torso2
weld1.Parent = torso2
weld1.Part1 = legs[1]
weld1.C1 = CFrame.new(-0.5,0.5,0.5) * CFrame.fromEulerAnglesXYZ(0.6,0,0)
welds2[1] = weld1
local weld2 = Instance.new("Weld") -- right arm
weld2.Part0 = torso2
weld2.Parent = torso2
weld2.Part1 = legs[2]
weld2.C1 = CFrame.new(0.5,0.5,0.5) * CFrame.fromEulerAnglesXYZ(0.6,0,0)
welds2[2] = weld2
bodyforce = Instance.new("BodyForce")
bodyforce.Parent = torso2
end
else
print("hp")
end
else
print("legs")
end
end

function Uncrouch(mouse)
if arms ~= nil and torso ~= nil then
local hp = {torso2:FindFirstChild("Left Hip"), torso2:FindFirstChild("Right Hip")}
if hp ~= nil then
local yes = true
if yes then
yes = false
Tool.Parent.Humanoid.WalkSpeed = 16
hp[1].Part1 = legs[1]
hp[2].Part1 = legs[2]
legs[1].Name = "Left Leg"
legs[2].Name = "Right Leg"
welds2[1].Parent = nil
welds2[2].Parent = nil
bodyforce:remove()
end
else
print("hp")
end
else
print("legs")
end
end

function Unequip(mouse)
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
welds[1].Parent = nil
welds[2].Parent = nil
falsearm1:remove()
falsearm2:remove()
end
else
print("sh")
end
else
print("arms")
end
end

function fire(v)
	Tool.Handle.Thap:play()
	Tool.HandleFlintCocked.Transparency = 1
	Tool.HandleHammerCocked.Transparency = 1
	Tool.HandleFrizzenClosed.Transparency = 1
	Tool.HandleFrizzenClosed2.Transparency = 1
	Tool.HandleFlintUnCocked.Transparency = 0
	Tool.HandleHammerUnCocked.Transparency = 0
	Tool.HandleFrizzenOpen.Transparency = 0
	Tool.HandleFrizzenOpen2.Transparency = 0
	
	local spark = Instance.new("Fire")
	spark.Parent = Tool.HandleFrizzenOpen
	spark.Heat = 1
	spark.Size = 2
	wait(0.01)
	spark:Remove()
	
	wait(0.05)
	Tool.Handle.Fire:play()
	Tool.HandleMuzzle.Smokey.Enabled = true 

	local spark2 = Instance.new("Fire")
	spark2.Parent = Tool.HandleMuzzle
	spark2.Heat = 1
	spark2.Size = 2
	wait(0.01)
	spark2:Remove()

	
	local vCharacter = Tool.Parent
	local vPlayer = game.Players:playerFromCharacter(vCharacter)

	local missile = Instance.new("Part")

	local spawnPos = vCharacter.PrimaryPart.Position
	
	spawnPos  = spawnPos + (v * 8)

	missile.Position = spawnPos
	missile.Size = Vector3.new(1,1,1)
	missile.Velocity = v * 600  
	missile.BrickColor = BrickColor.new("Really black")
	missile.Shape = 0
	missile.BottomSurface = 0
	missile.TopSurface = 0
	missile.Name = "Bullet"
	missile.Elasticity = 0
	missile.Reflectance = 0.1
	missile.Friction = .9
   missile.CanCollide = false

	local force = Instance.new("BodyForce")
	force.force = Vector3.new(0,missile:getMass() * 196,0)
	force.Parent = missile

	local mesh = Instance.new("SpecialMesh")
	mesh.Scale = Vector3.new(.2,.2,.2)
	mesh.MeshType = "Sphere"
	mesh.Parent = missile

	local new_script = script.Parent.Bullet:clone()
	new_script.Disabled = false
	new_script.Parent = missile

	local creator_tag = Instance.new("ObjectValue")
	creator_tag.Value = vPlayer
	creator_tag.Name = "creator"
	creator_tag.Parent = missile


	missile.Parent = game.Workspace

	local smoke = Instance.new("Part")

	smoke.Position = Tool.HandleMuzzle.Position
	smoke.Size = Vector3.new(1,1,1)
	smoke.Velocity = v * 1
	smoke.BrickColor = BrickColor.new("White")
	smoke.Shape = 0
	smoke.BottomSurface = 0
	smoke.TopSurface = 0
	smoke.Name = "Smoke"
	smoke.Elasticity = 0
	smoke.Reflectance = 0
	smoke.Friction = 0
   smoke.CanCollide = false
	smoke.Anchored = true
	smoke.Transparency = 1

	local smoke1 = script.Parent.HandleMuzzle.Smokey:clone()
	smoke1.Parent = smoke
	smoke1.Opacity = 0.8
	smoke1.Enabled = true

	smoke.Parent = game.Workspace

	local new_script1 = script.Parent.Remover:clone()
	new_script1.Disabled = false
	new_script1.Parent = smoke
	
	
	cam = game.Workspace.CurrentCamera
	local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
	local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
	local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.005, 0, 0)
	cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
	weld33.C1 = CFrame.new(-0.75, 0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.35, 1.3, 0.55) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
	wait(0.005)
	cam = game.Workspace.CurrentCamera
	local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
	local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
	local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(0.0025, 0, 0)
	cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
	weld33.C1 = CFrame.new(-0.75, 0.15, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.35, 1.35, 0.575) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
	wait(0.005)
	cam = game.Workspace.CurrentCamera
	local cam_rot = cam.CoordinateFrame - cam.CoordinateFrame.p
	local cam_scroll = (cam.CoordinateFrame.p - cam.Focus.p).magnitude
	local ncf = CFrame.new(cam.Focus.p)*cam_rot*CFrame.fromEulerAnglesXYZ(-0.0025, 0, 0)
	cam.CoordinateFrame = ncf*CFrame.new(0, 0, cam_scroll)
	weld33.C1 = CFrame.new(-0.75, 0.2, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-5), 0)
	weld55.C1 = CFrame.new(-0.35, 1.4, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
	wait(1)
end

function KeyDownFunctions(key)
	if key == "r" then
		Reload()
	end
	if key == "v" then
		if c.Value == false then
			c.Value = true
			Crouch()
		elseif c.Value == true then
			c.Value = false
			Uncrouch()
		end
	end
end

Tool.Enabled = true
function onActivated()

	if not Tool.Enabled then
		return
	end

	Tool.Enabled = false

	local character = Tool.Parent;
	local humanoid = character.Humanoid
	if humanoid == nil then
		print("Humanoid not found")
		return 
	end
	local ammo = script.Parent.Ammo
	local maxammo = script.Parent.MaxAmmo
	firing = true
	while firing == true do
		wait()
		if reloading == false and humanoid.Health >= 1 then
			if ammo.Value >= 1 then
				ammo.Value = ammo.Value - 1
				local targetPos = humanoid.TargetPoint
				local lookAt = (targetPos - character.Head.Position).unit
				if script.Parent.Recoil.Value < 10 then
					script.Parent.Recoil.Value = script.Parent.Recoil.Value + 1
				end
				fire(lookAt)
			else
				Reload()
				break
			end
		elseif reloading == false and humanoid.Health < 1 then
			Tool:remove()
		end
	end
	Tool.Enabled = true
end

function nofiar(mouse)
firing = false
end

function onEquippedLocal(mouse)

	if mouse == nil then
		print("Mouse not found")
		return 
	end

	mouse.Icon = "http://www.roblox.com/asset/?id=30699648"
--	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.Button1Up:connect(function() nofiar(mouse) end)
	mouse.KeyDown:connect(KeyDownFunctions)
	c = Tool.Parent:findFirstChild("Crouch")
	while true do
		wait()
	end
end


function onUnequippedLocal(mouse)
	nofiar(mouse)
end

Tool.Unequipped:connect(onUnequippedLocal)

Tool.Equipped:connect(onEquippedLocal)

script.Parent.Activated:connect(onActivated)
Tool.Equipped:connect(Equip)
Tool.Unequipped:connect(Unequip)
Tool.Unequipped:connect(Uncrouch)

]===]
s6.Parent = t1
p30 = Instance.new("Part", t1)
p30.BrickColor = BrickColor.new("Institutional white")
p30.Transparency = 1
p30.Name = "HandlePowder"
p30.CFrame = CFrame.new(-40.9500046, 4.50525618, -42.7588463, 1, 5.97108709e-008, 1.59994791e-008, 4.37113883e-008, -0.5, -0.866025388, -4.37113883e-008, 0.866025388, -0.5)
p30.CanCollide = false
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(1, 1, 1)
b29 = Instance.new("SpecialMesh", p30)
b29.MeshId = "http://www.roblox.com/asset/?id=1033714"
b29.TextureId = ""
b29.MeshType = Enum.MeshType.FileMesh
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.200000003, 1.5, 0.200000003)
p31 = Instance.new("Part", t1)
p31.BrickColor = BrickColor.new("Pastel yellow")
p31.Transparency = 1
p31.Name = "HandleCloth"
p31.CFrame = CFrame.new(-40.9000015, 4.20000029, -42.2999992, 0, 0, -1, 0, 1, -0, 1, 0, -0)
p31.CanCollide = false
p31.FormFactor = Enum.FormFactor.Symmetric
p31.Size = Vector3.new(1, 1, 1)
b30 = Instance.new("SpecialMesh", p31)
b30.MeshType = Enum.MeshType.Sphere
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.245000005, 0.245000005, 0.245000005)
s7 = script:clone()
s7.Name = "Crouch"
s7.Disabled = false
so7 = Instance.new("StringValue", s7)
so7.Name = "forCustomRunL"
so7.Value = [===[
on = 0
Tool = script.Parent
welds = {}
sh = {}
arms = nil
torso = nil
f = nil
function Crouch(ison)
if arms == nil and torso == nil then
arms = {Tool.Parent:FindFirstChild("Left Leg"), Tool.Parent:FindFirstChild("Right Leg")}
torso = Tool.Parent:FindFirstChild("Torso")
end
if arms ~= nil and torso ~= nil then
sh = {torso:FindFirstChild("Left Hip"), torso:FindFirstChild("Right Hip")}
if sh ~= nil then
local yes = true
if yes then
yes = false
if ison == 1 then
sh[1].Part1 = nil
sh[2].Part1 = nil
local weld1 = Instance.new("Weld")
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(-0.5, 0.75, 1)
arms[1].Name = "LDave"
arms[1].CanCollide = true
welds[1] = weld1
-------------------------------------------
local weld2 = Instance.new("Weld")
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(0.5,0.495,1.25) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
arms[2].Name = "RDave"
arms[2].CanCollide = true
welds[2] = weld2
---------------------------------
local force = Instance.new("BodyForce")
force.Parent = torso
f = force
wait(0.01)
elseif ison == 0 then
if arms then
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
f.Parent = nil
arms[2].Name = "Right Leg"
arms[1].Name = "Left Leg"
welds[1].Parent = nil
welds[2].Parent = nil
end
end
--
end
else
print("sh")
end
else
print("arms")
end
end
function Key(key)
if key then
key = string.lower(key)
if (key=="c") then
if on == 1 then
on = 0
elseif on == 0 then
on = 1
end
Crouch(on)
end
end
end
function Equip(mouse)
mouse.KeyDown:connect(Key)
end
script.Parent.Equipped:connect(Equip)


]===]
s7.Parent = t1
w1 = Instance.new("Weld", p1)
w1.Part0 = p1
w1.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w1.Part1 = p1
w1.C1 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2 = Instance.new("Weld", p1)
w2.Part0 = p1
w2.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w2.Part1 = p12
w2.C1 = CFrame.new(0, -0.5, 0, 1, 0, 0, 0, 0.707106769, -0.707106769, 0, 0.707106769, 0.707106769)
w3 = Instance.new("Weld", p1)
w3.Part0 = p1
w3.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w3.Part1 = p6
w3.C1 = CFrame.new(0, 0.25, 1, -1, 8.74227766e-008, 0, -8.74227766e-008, -1, 0, 0, 0, 1)
w4 = Instance.new("Weld", p1)
w4.Part0 = p1
w4.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w4.Part1 = p13
w4.C1 = CFrame.new(0, -0.699999988, -0.100000001, 1, 0, 0, 0, 0.642787635, -0.766044438, 0, 0.766044438, 0.642787635)
w5 = Instance.new("Weld", p1)
w5.Part0 = p1
w5.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w5.Part1 = p2
w5.C1 = CFrame.new(0, -1.54999995, -0.600000024, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008)
w6 = Instance.new("Weld", p1)
w6.Part0 = p1
w6.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w6.Part1 = p7
w6.C1 = CFrame.new(0, -0.550000012, 1.10000002, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7 = Instance.new("Weld", p1)
w7.Part0 = p1
w7.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w7.Part1 = p14
w7.C1 = CFrame.new(0, -0.200000003, 0.200000003, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8 = Instance.new("Weld", p1)
w8.Part0 = p1
w8.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w8.Part1 = p15
w8.C1 = CFrame.new(0, 0.100000001, 0.200000003, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9 = Instance.new("Weld", p1)
w9.Part0 = p1
w9.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w9.Part1 = p16
w9.C1 = CFrame.new(0, 0.349999994, 0.230000004, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10 = Instance.new("Weld", p1)
w10.Part0 = p1
w10.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w10.Part1 = p27
w10.C1 = CFrame.new(0, -0.449999988, 2, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11 = Instance.new("Weld", p1)
w11.Part0 = p1
w11.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w11.Part1 = p20
w11.C1 = CFrame.new(0, -2.5, -0.600000024, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008)
w12 = Instance.new("Weld", p1)
w12.Part0 = p1
w12.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w12.Part1 = p25
w12.C1 = CFrame.new(0, -1.39999998, -0.330000013, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008)
w13 = Instance.new("Weld", p1)
w13.Part0 = p1
w13.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w13.Part1 = p22
w13.C1 = CFrame.new(-0.200000003, -0.524999976, 0.75, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14 = Instance.new("Weld", p1)
w14.Part0 = p1
w14.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w14.Part1 = p23
w14.C1 = CFrame.new(-0.200000003, -0.74000001, 0, 1, 0, 0, 0, 0.707106769, -0.707106769, 0, 0.707106769, 0.707106769)
w15 = Instance.new("Weld", p1)
w15.Part0 = p1
w15.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w15.Part1 = p24
w15.C1 = CFrame.new(-0.200000003, -1.20000005, -0.522499979, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008)
w16 = Instance.new("Weld", p1)
w16.Part0 = p1
w16.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w16.Part1 = p17
w16.C1 = CFrame.new(0.535000026, -0.25, 0.649999976, -4.37113883e-008, -1, 0, 1, -4.37113883e-008, 0, 0, 0, 1)
w17 = Instance.new("Weld", p1)
w17.Part0 = p1
w17.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w17.Part1 = p18
w17.C1 = CFrame.new(-0.25, -0.649999976, -0.75, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008)
w18 = Instance.new("Weld", p1)
w18.Part0 = p1
w18.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w18.Part1 = p19
w18.C1 = CFrame.new(-0.25, -0.00999999978, -1.04999995, 1, 0, 0, 0, -0.766044438, -0.642787635, 0, 0.642787635, -0.766044438)
w19 = Instance.new("Weld", p1)
w19.Part0 = p1
w19.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w19.Part1 = p4
w19.C1 = CFrame.new(-0.25, -0.800000012, 0.720000029, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w20 = Instance.new("Weld", p1)
w20.Part0 = p1
w20.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w20.Part1 = p5
w20.C1 = CFrame.new(-0.25, -1.10000002, 0.0500000007, 1, 0, 0, 0, 0.642787635, -0.766044438, 0, 0.766044438, 0.642787635)
w21 = Instance.new("Weld", p1)
w21.Part0 = p1
w21.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w21.Part1 = p21
w21.C1 = CFrame.new(-0.25, -0.550000012, 0.949999988, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w22 = Instance.new("Weld", p1)
w22.Part0 = p1
w22.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w22.Part1 = p8
w22.C1 = CFrame.new(-0.25, -0.600000024, 0.975000024, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w23 = Instance.new("Weld", p1)
w23.Part0 = p1
w23.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w23.Part1 = p9
w23.C1 = CFrame.new(-0.25, -0.699999988, 0.930000007, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w24 = Instance.new("Weld", p1)
w24.Part0 = p1
w24.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w24.Part1 = p10
w24.C1 = CFrame.new(-0.25, -1.125, 0.300000012, 1, 0, 0, 0, 0.707106769, -0.707106769, 0, 0.707106769, 0.707106769)
w25 = Instance.new("Weld", p1)
w25.Part0 = p1
w25.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w25.Part1 = p11
w25.C1 = CFrame.new(-0.25, -1.25, 0.25, 1, 0, 0, 0, 0.707106769, -0.707106769, 0, 0.707106769, 0.707106769)
w26 = Instance.new("Weld", p1)
w26.Part0 = p1
w26.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w26.Part1 = p3
w26.C1 = CFrame.new(0.574999988, -0.5, 0, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w27 = Instance.new("Weld", p1)
w27.Part0 = p1
w27.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w27.Part1 = p29
w27.C1 = CFrame.new(0.800000012, -0.200000003, 0, -4.37113883e-008, 0, 1, 0, 1, 0, -1, 0, -4.37113883e-008)
w28 = Instance.new("Weld", p1)
w28.Part0 = p1
w28.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w28.Part1 = p28
w28.C1 = CFrame.new(0, -0.75, 0.100000001, 1, 0, 0, 0, 0.49999997, -0.866025448, 0, 0.866025448, 0.49999997)
w29 = Instance.new("Weld", p1)
w29.Part0 = p1
w29.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w29.Part1 = p26
w29.C1 = CFrame.new(0, -2.4000001, -0.330000013, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008)
w30 = Instance.new("Weld", p1)
w30.Part0 = p1
w30.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w30.Part1 = p30
w30.C1 = CFrame.new(0.649999976, 1.79999995, 2.20000005, -4.37113883e-008, -1, 0, 0.866025388, -3.78551732e-008, 0.5, -0.5, 2.18556941e-008, 0.866025388)
w31 = Instance.new("Weld", p1)
w31.Part0 = p1
w31.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
w31.Part1 = p31
w31.C1 = CFrame.new(0, -2.5, -0.600000024, 1, 0, 0, 0, -4.37113883e-008, -1, 0, 1, -4.37113883e-008)
m.Parent = game:service("Workspace")
m:MakeJoints()