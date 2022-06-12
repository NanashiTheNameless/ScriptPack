--My c4 that i really like :) (non local :3) -Youngwarlock
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
m.Name = "C4"
t1 = Instance.new("Tool", m)
t1.Name = "C4"
t1.GripForward = Vector3.new(-0.44721359, 0, -0.89442718)
t1.GripRight = Vector3.new(0.89442718, 0, -0.44721359)
s1 = script:clone()
s1.Name = "BackupWeld"
s1.Disabled = false
so1 = Instance.new("StringValue", s1)
so1.Name = "forCustomRunL"
so1.Value = [===[
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
]===]
s1.Parent = t1
s2 = script:clone()
s2.Name = "BombBlink"
s2.Disabled = true
so2 = Instance.new("StringValue", s2)
so2.Name = "forCustomRun"
so2.Value = [===[
local Mesh = script.Parent.Mesh
local blink = false

while true do

	blink = not blink
	if blink then
		Mesh.TextureId = "http://www.roblox.com/asset/?id=28512114"
	else
		Mesh.TextureId = "http://www.roblox.com/asset/?id=33378623"
	end
	wait(2)

end

]===]
s2.Parent = t1
p1 = Instance.new("Part", t1)
p1.BrickColor = BrickColor.new("Sand green")
p1.Name = "C1"
p1.CFrame = CFrame.new(-0.900000036, 1.4000001, -10.8000002, -0, -0, 1, -1, -0, 0, -0, -1, 0)
p1.Anchored = true
p1.CanCollide = false
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.300000012, 1.66666663, 1)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("BlockMesh", p1)
b1.Name = "Mesh"
b1.Offset = Vector3.new(-2.70000005, 0, 0)
p2 = Instance.new("Part", t1)
p2.BrickColor = BrickColor.new("Really black")
p2.Name = "C2"
p2.CFrame = CFrame.new(-0.900000036, 1.45000005, -10.8330002, -8.94069672e-008, 1.91851235e-014, 1, -1, -4.37113101e-008, -8.94069672e-008, 4.37114664e-008, -1, -2.0014162e-014)
p2.Anchored = true
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.333333343, 0.200000003, 1.0333333)
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
b2 = Instance.new("BlockMesh", p2)
b2.Name = "Mesh"
b2.Offset = Vector3.new(-2.70000005, 0, 0)
b2.Scale = Vector3.new(1, 0.833333373, 1)
p3 = Instance.new("Part", t1)
p3.BrickColor = BrickColor.new("Really black")
p3.Name = "C3"
p3.CFrame = CFrame.new(-1.03299999, 1.45000005, -10.8330002, -8.94069672e-008, -0.99984771, -0.0174524039, -1, 6.22580387e-008, -1.51190605e-007, 1.51758741e-007, 0.0174524058, -0.99984771)
p3.Anchored = true
p3.CanCollide = false
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.333333343, 0.200000003, 1.70000005)
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
b3 = Instance.new("BlockMesh", p3)
b3.Name = "Mesh"
b3.Offset = Vector3.new(-2.70000005, 0, 0)
b3.Scale = Vector3.new(1, 0.833333373, 1)
p4 = Instance.new("Part", t1)
p4.BrickColor = BrickColor.new("Really black")
p4.Name = "C4"
p4.CFrame = CFrame.new(-0.800000012, 1.45000005, -10.8330002, -8.94069672e-008, -0.997564077, -0.0697564706, -1, 7.04279586e-008, -1.49630338e-007, 1.5404504e-007, 0.0697564706, -0.997564077)
p4.Anchored = true
p4.CanCollide = false
p4.FormFactor = Enum.FormFactor.Custom
p4.Size = Vector3.new(0.333333343, 0.200000003, 1.70000005)
p4.BottomSurface = Enum.SurfaceType.Smooth
p4.TopSurface = Enum.SurfaceType.Smooth
b4 = Instance.new("BlockMesh", p4)
b4.Name = "Mesh"
b4.Offset = Vector3.new(-2.70000005, 0, 0)
b4.Scale = Vector3.new(1, 0.833333373, 1)
p5 = Instance.new("Part", t1)
p5.BrickColor = BrickColor.new("Sand green")
p5.Name = "Handle"
p5.CFrame = CFrame.new(-0.583000004, 4.60000038, -11.7830009, -4.37113705e-008, 0, 1, 8.52651283e-014, 1, -7.10542736e-015, -1, -8.52651283e-014, -4.37114132e-008)
p5.Anchored = true
p5.CanCollide = false
p5.FormFactor = Enum.FormFactor.Custom
p5.Size = Vector3.new(0.633333325, 0.200000003, 0.200000003)
p5.BottomSurface = Enum.SurfaceType.Smooth
p5.TopSurface = Enum.SurfaceType.Smooth
b5 = Instance.new("BlockMesh", p5)
b5.Name = "Mesh"
b5.Scale = Vector3.new(1, 0.333333343, 0.833333373)
x1 = Instance.new("Sound", p5)
x1.Name = "Plant"
x1.Pitch = 1
x1.SoundId = "http://www.roblox.com/asset/?id=28518380"
x1.Volume = 0.5
x1.Looped = false
x1.PlayOnRemove = false
x2 = Instance.new("Sound", p5)
x2.Name = "Detonate"
x2.Pitch = 0.5
x2.SoundId = "http://www.roblox.com/asset/?id=14863866"
x2.Volume = 1
x2.Looped = false
x2.PlayOnRemove = true
p6 = Instance.new("Part", t1)
p6.BrickColor = BrickColor.new("Bright red")
p6.CFrame = CFrame.new(-0.508000016, 5.53100014, -11.7160006, -3.78551839e-008, 0.866025388, 0.5, 6.55670007e-008, -0.5, 0.866025388, 1, 6.55671073e-008, -3.78552869e-008)
p6.Anchored = true
p6.CanCollide = false
p6.FormFactor = Enum.FormFactor.Custom
p6.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p6.BottomSurface = Enum.SurfaceType.Smooth
p6.TopSurface = Enum.SurfaceType.Smooth
b6 = Instance.new("BlockMesh", p6)
b6.Name = "Mesh"
b6.Scale = Vector3.new(0.166666672, 0.166666672, 0.166666672)
p7 = Instance.new("Part", t1)
p7.BrickColor = BrickColor.new("Bright red")
p7.CFrame = CFrame.new(-0.41200003, 5.63000011, -11.8500004, -3.78551839e-008, 0.866025388, 0.5, 6.55670007e-008, -0.5, 0.866025388, 1, 6.55671073e-008, -3.78552869e-008)
p7.Anchored = true
p7.CanCollide = false
p7.FormFactor = Enum.FormFactor.Custom
p7.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p7.BottomSurface = Enum.SurfaceType.Smooth
p7.TopSurface = Enum.SurfaceType.Smooth
b7 = Instance.new("BlockMesh", p7)
b7.Name = "Mesh"
b7.Scale = Vector3.new(0.166666672, 0.166666672, 0.833333373)
p8 = Instance.new("Part", t1)
p8.BrickColor = BrickColor.new("Bright red")
p8.CFrame = CFrame.new(-0.41200003, 5.63000011, -11.7160006, -3.78551768e-008, 0.866025388, 0.5, 6.55670362e-008, -0.5, 0.866025388, 1, 6.55670931e-008, -3.78552514e-008)
p8.Anchored = true
p8.CanCollide = false
p8.FormFactor = Enum.FormFactor.Custom
p8.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p8.BottomSurface = Enum.SurfaceType.Smooth
p8.TopSurface = Enum.SurfaceType.Smooth
b8 = Instance.new("BlockMesh", p8)
b8.Name = "Mesh"
b8.Scale = Vector3.new(0.166666672, 0.166666672, 0.833333373)
p9 = Instance.new("Part", t1)
p9.BrickColor = BrickColor.new("Bright red")
p9.CFrame = CFrame.new(-0.530000031, 5.39700031, -11.7830009, -4.37113776e-008, -1, 0, -4.37113101e-008, 7.10542736e-015, 1, -1, 4.37114132e-008, -4.37114736e-008)
p9.Anchored = true
p9.CanCollide = false
p9.FormFactor = Enum.FormFactor.Custom
p9.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p9.BottomSurface = Enum.SurfaceType.Smooth
p9.TopSurface = Enum.SurfaceType.Smooth
b9 = Instance.new("CylinderMesh", p9)
b9.Name = "Mesh"
b9.Scale = Vector3.new(0.5, 0.166666672, 0.5)
p10 = Instance.new("Part", t1)
p10.BrickColor = BrickColor.new("Black")
p10.CFrame = CFrame.new(-0.533000052, 5.46700048, -11.6160002, -1, 0, 2.64088136e-014, 0, 1, 8.52651283e-014, 2.64088136e-014, -8.52651283e-014, -1)
p10.Anchored = true
p10.CanCollide = false
p10.FormFactor = Enum.FormFactor.Custom
p10.Size = Vector3.new(0.200000003, 0.466666669, 0.200000003)
p10.BottomSurface = Enum.SurfaceType.Smooth
p10.TopSurface = Enum.SurfaceType.Smooth
b10 = Instance.new("BlockMesh", p10)
b10.Name = "Mesh"
b10.Scale = Vector3.new(0.333333343, 1, 0.5)
p11 = Instance.new("Part", t1)
p11.BrickColor = BrickColor.new("Bright red")
p11.CFrame = CFrame.new(-0.516000032, 5.5170002, -11.8500004, -1, -2.64088136e-014, 0, 0, -8.52651283e-014, 1, 2.64088136e-014, 1, -8.52651283e-014)
p11.Anchored = true
p11.CanCollide = false
p11.FormFactor = Enum.FormFactor.Custom
p11.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p11.BottomSurface = Enum.SurfaceType.Smooth
p11.TopSurface = Enum.SurfaceType.Smooth
b11 = Instance.new("CylinderMesh", p11)
b11.Name = "Mesh"
b11.Scale = Vector3.new(0.166666672, 0.166666672, 0.166666672)
p12 = Instance.new("Part", t1)
p12.BrickColor = BrickColor.new("Really black")
p12.CFrame = CFrame.new(-0.583000004, 6.21000051, -12.0060005, 1, 0, 1.77635633e-014, 0, -1, -1.50995717e-007, -2.64088136e-014, 1.50995888e-007, -1)
p12.Anchored = true
p12.CanCollide = false
p12.FormFactor = Enum.FormFactor.Custom
p12.Size = Vector3.new(0.200000003, 0.666666687, 0.200000003)
p12.BottomSurface = Enum.SurfaceType.Smooth
p12.TopSurface = Enum.SurfaceType.Smooth
b12 = Instance.new("CylinderMesh", p12)
b12.Name = "Mesh"
b12.Scale = Vector3.new(0.166666672, 1, 0.166666672)
p13 = Instance.new("Part", t1)
p13.BrickColor = BrickColor.new("Sand green")
p13.CFrame = CFrame.new(-0.583000004, 5.16700029, -11.5160007, 1, 0, -2.64088136e-014, 0, 1, -8.52651283e-014, -2.64088136e-014, -8.52651283e-014, 1)
p13.Anchored = true
p13.CanCollide = false
p13.FormFactor = Enum.FormFactor.Custom
p13.Size = Vector3.new(0.200000003, 1.06666672, 0.200000003)
p13.BottomSurface = Enum.SurfaceType.Smooth
p13.TopSurface = Enum.SurfaceType.Smooth
b13 = Instance.new("BlockMesh", p13)
b13.Name = "Mesh"
b13.Scale = Vector3.new(0.833333373, 1, 0.5)
p14 = Instance.new("Part", t1)
p14.BrickColor = BrickColor.new("Light stone grey")
p14.CFrame = CFrame.new(-0.536000013, 4.68400002, -11.8330002, -1, -5.96046448e-008, 1.72904954e-014, -5.96046448e-008, 1, -8.74226913e-008, 2.83034399e-014, -8.74228547e-008, -1)
p14.Anchored = true
p14.CanCollide = false
p14.FormFactor = Enum.FormFactor.Custom
p14.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p14.BottomSurface = Enum.SurfaceType.Smooth
p14.TopSurface = Enum.SurfaceType.Smooth
b14 = Instance.new("BlockMesh", p14)
b14.Name = "Mesh"
b14.Scale = Vector3.new(0.166666672, 0.166666672, 0.333333343)
p15 = Instance.new("Part", t1)
p15.BrickColor = BrickColor.new("Dark stone grey")
p15.CFrame = CFrame.new(-0.508000016, 5.69500017, -11.5760002, -4.37113776e-008, -1, 0, -4.37113101e-008, 7.10542736e-015, 1, -1, 4.37114132e-008, -4.37114736e-008)
p15.Anchored = true
p15.CanCollide = false
p15.FormFactor = Enum.FormFactor.Custom
p15.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p15.BottomSurface = Enum.SurfaceType.Smooth
p15.TopSurface = Enum.SurfaceType.Smooth
b15 = Instance.new("CylinderMesh", p15)
b15.Name = "Mesh"
b15.Scale = Vector3.new(0.333333343, 0.166666672, 0.333333343)
p16 = Instance.new("Part", t1)
p16.BrickColor = BrickColor.new("Really black")
p16.CFrame = CFrame.new(-0.583000004, 5.86000013, -12.0060005, 1, 0, 1.77635633e-014, 0, -1, -1.50995717e-007, -2.64088136e-014, 1.50995888e-007, -1)
p16.Anchored = true
p16.CanCollide = false
p16.FormFactor = Enum.FormFactor.Custom
p16.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p16.BottomSurface = Enum.SurfaceType.Smooth
p16.TopSurface = Enum.SurfaceType.Smooth
b16 = Instance.new("CylinderMesh", p16)
b16.Name = "Mesh"
b16.Scale = Vector3.new(0.333333343, 0.166666672, 0.333333343)
p17 = Instance.new("Part", t1)
p17.BrickColor = BrickColor.new("Light stone grey")
p17.CFrame = CFrame.new(-0.529000044, 4.83400011, -11.9130001, -4.37113776e-008, -1, 0, -4.37113101e-008, 7.10542736e-015, 1, -1, 4.37114132e-008, -4.37114736e-008)
p17.Anchored = true
p17.CanCollide = false
p17.FormFactor = Enum.FormFactor.Custom
p17.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p17.BottomSurface = Enum.SurfaceType.Smooth
p17.TopSurface = Enum.SurfaceType.Smooth
b17 = Instance.new("CylinderMesh", p17)
b17.Name = "Mesh"
b17.Scale = Vector3.new(0.166666672, 0.166666672, 0.166666672)
p18 = Instance.new("Part", t1)
p18.BrickColor = BrickColor.new("Medium stone grey")
p18.CFrame = CFrame.new(-0.513000011, 4.91700029, -11.7830009, -1, -1.1920929e-007, 7.10542736e-015, -1.1920929e-007, 1, -1.5099576e-007, 3.73034936e-014, -1.50995845e-007, -1)
p18.Anchored = true
p18.CanCollide = false
p18.FormFactor = Enum.FormFactor.Custom
p18.Size = Vector3.new(0.200000003, 0.266666681, 0.400000006)
p18.BottomSurface = Enum.SurfaceType.Smooth
p18.TopSurface = Enum.SurfaceType.Smooth
d1 = Instance.new("Decal", p18)
d1.Texture = "http://www.roblox.com/asset/?id=54493820"
d1.Face = Enum.NormalId.Left
b18 = Instance.new("BlockMesh", p18)
b18.Name = "Mesh"
b18.Offset = Vector3.new(0, 0.100000001, 0)
b18.Scale = Vector3.new(0.166666672, 1, 1)
p19 = Instance.new("Part", t1)
p19.BrickColor = BrickColor.new("Sand green")
p19.CFrame = CFrame.new(-0.583000004, 5.73400021, -11.7830009, 1, 0, -2.64088136e-014, 0, 1, -8.52651283e-014, -2.64088136e-014, -8.52651283e-014, 1)
p19.Anchored = true
p19.CanCollide = false
p19.FormFactor = Enum.FormFactor.Custom
p19.Size = Vector3.new(0.200000003, 0.200000003, 0.633333325)
p19.BottomSurface = Enum.SurfaceType.Smooth
p19.TopSurface = Enum.SurfaceType.Smooth
b19 = Instance.new("BlockMesh", p19)
b19.Name = "Mesh"
b19.Scale = Vector3.new(0.833333373, 0.333333343, 1)
p20 = Instance.new("Part", t1)
p20.BrickColor = BrickColor.new("Sand green")
p20.CFrame = CFrame.new(-0.583000004, 5.7670002, -11.7830009, 1, 2.64088136e-014, 0, 0, 8.52651283e-014, 1, -2.64088136e-014, -1, -8.52651283e-014)
p20.Anchored = true
p20.CanCollide = false
p20.FormFactor = Enum.FormFactor.Custom
p20.Size = Vector3.new(0.200000003, 0.633333325, 0.200000003)
p20.BottomSurface = Enum.SurfaceType.Smooth
p20.TopSurface = Enum.SurfaceType.Smooth
b20 = Instance.new("CylinderMesh", p20)
b20.Name = "Mesh"
b20.Scale = Vector3.new(0.833333373, 1, 0.833333373)
p21 = Instance.new("Part", t1)
p21.BrickColor = BrickColor.new("Black")
p21.CFrame = CFrame.new(-0.533000052, 5.05000019, -11.7830009, -1, 0, 2.64088136e-014, 0, 1, 8.52651283e-014, 2.64088136e-014, -8.52651283e-014, -1)
p21.Anchored = true
p21.CanCollide = false
p21.FormFactor = Enum.FormFactor.Custom
p21.Size = Vector3.new(0.200000003, 0.366666675, 0.433333337)
p21.BottomSurface = Enum.SurfaceType.Smooth
p21.TopSurface = Enum.SurfaceType.Smooth
b21 = Instance.new("BlockMesh", p21)
b21.Name = "Mesh"
b21.Scale = Vector3.new(0.333333343, 1, 1)
p22 = Instance.new("Part", t1)
p22.BrickColor = BrickColor.new("Black")
p22.CFrame = CFrame.new(-0.540000021, 4.75, -11.7830009, -1, -1.1920929e-007, 1.77635633e-014, -1.1920929e-007, 1, -1.50995717e-007, 4.79616347e-014, -1.50995888e-007, -1)
p22.Anchored = true
p22.CanCollide = false
p22.FormFactor = Enum.FormFactor.Custom
p22.Size = Vector3.new(0.200000003, 0.233333334, 0.433333337)
p22.BottomSurface = Enum.SurfaceType.Smooth
p22.TopSurface = Enum.SurfaceType.Smooth
b22 = Instance.new("BlockMesh", p22)
b22.Name = "Mesh"
b22.Scale = Vector3.new(0.166666672, 1, 1)
p23 = Instance.new("Part", t1)
p23.BrickColor = BrickColor.new("Sand green")
p23.CFrame = CFrame.new(-0.583000004, 5.81700039, -12.0060005, 1, 0, 1.77635633e-014, 0, -1, -1.50995717e-007, -2.64088136e-014, 1.50995888e-007, -1)
p23.Anchored = true
p23.CanCollide = false
p23.FormFactor = Enum.FormFactor.Custom
p23.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p23.BottomSurface = Enum.SurfaceType.Smooth
p23.TopSurface = Enum.SurfaceType.Smooth
b23 = Instance.new("CylinderMesh", p23)
b23.Name = "Mesh"
b23.Scale = Vector3.new(0.666666687, 0.5, 0.666666687)
p24 = Instance.new("Part", t1)
p24.BrickColor = BrickColor.new("Sand green")
p24.CFrame = CFrame.new(-0.583000004, 5.1340003, -12.0500002, 1, 0, -2.64088136e-014, 0, 1, -8.52651283e-014, -2.64088136e-014, -8.52651283e-014, 1)
p24.Anchored = true
p24.CanCollide = false
p24.FormFactor = Enum.FormFactor.Custom
p24.Size = Vector3.new(0.200000003, 1.06666672, 0.200000003)
p24.BottomSurface = Enum.SurfaceType.Smooth
p24.TopSurface = Enum.SurfaceType.Smooth
b24 = Instance.new("BlockMesh", p24)
b24.Name = "Mesh"
b24.Offset = Vector3.new(0, 0.0350000001, 0)
b24.Scale = Vector3.new(0.833333373, 1, 0.5)
p25 = Instance.new("Part", t1)
p25.BrickColor = BrickColor.new("Medium stone grey")
p25.CFrame = CFrame.new(-0.583000004, 6.56000042, -12.0060005, 1, 0, 1.77635633e-014, 0, -1, -1.50995717e-007, -2.64088136e-014, 1.50995888e-007, -1)
p25.Anchored = true
p25.CanCollide = false
p25.FormFactor = Enum.FormFactor.Custom
p25.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p25.BottomSurface = Enum.SurfaceType.Smooth
p25.TopSurface = Enum.SurfaceType.Smooth
b25 = Instance.new("CylinderMesh", p25)
b25.Name = "Mesh"
b25.Scale = Vector3.new(0.333333343, 0.166666672, 0.333333343)
p26 = Instance.new("Part", t1)
p26.BrickColor = BrickColor.new("Black")
p26.CFrame = CFrame.new(-0.533000052, 5.6500001, -11.7830009, -1, 0, 2.64088136e-014, 0, 1, 8.52651283e-014, 2.64088136e-014, -8.52651283e-014, -1)
p26.Anchored = true
p26.CanCollide = false
p26.FormFactor = Enum.FormFactor.Custom
p26.Size = Vector3.new(0.200000003, 0.200000003, 0.300000012)
p26.BottomSurface = Enum.SurfaceType.Smooth
p26.TopSurface = Enum.SurfaceType.Smooth
b26 = Instance.new("BlockMesh", p26)
b26.Name = "Mesh"
b26.Scale = Vector3.new(0.333333343, 0.5, 1)
p27 = Instance.new("Part", t1)
p27.BrickColor = BrickColor.new("Sand green")
p27.CFrame = CFrame.new(-0.583000004, 4.56700039, -11.7830009, 1, 1.91851235e-014, 0, 0, -4.37113101e-008, 1, -2.64088136e-014, -1, -4.37114736e-008)
p27.Anchored = true
p27.CanCollide = false
p27.FormFactor = Enum.FormFactor.Custom
p27.Size = Vector3.new(0.200000003, 0.633333325, 0.200000003)
p27.BottomSurface = Enum.SurfaceType.Smooth
p27.TopSurface = Enum.SurfaceType.Smooth
b27 = Instance.new("CylinderMesh", p27)
b27.Name = "Mesh"
b27.Scale = Vector3.new(0.833333373, 1, 0.833333373)
p28 = Instance.new("Part", t1)
p28.BrickColor = BrickColor.new("Mid gray")
p28.CFrame = CFrame.new(-0.546000004, 5.39700031, -11.7830009, -4.37113776e-008, -1, 0, -4.37113101e-008, 7.10542736e-015, 1, -1, 4.37114132e-008, -4.37114736e-008)
p28.Anchored = true
p28.CanCollide = false
p28.FormFactor = Enum.FormFactor.Custom
p28.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p28.BottomSurface = Enum.SurfaceType.Smooth
p28.TopSurface = Enum.SurfaceType.Smooth
b28 = Instance.new("CylinderMesh", p28)
b28.Name = "Mesh"
b28.Scale = Vector3.new(0.666666687, 0.166666672, 0.666666687)
p29 = Instance.new("Part", t1)
p29.BrickColor = BrickColor.new("Sand green")
p29.CFrame = CFrame.new(-0.616000056, 5.16700029, -11.7830009, 1, 0, -2.64088136e-014, 0, 1, -8.52651283e-014, -2.64088136e-014, -8.52651283e-014, 1)
p29.Anchored = true
p29.CanCollide = false
p29.FormFactor = Enum.FormFactor.Custom
p29.Size = Vector3.new(0.200000003, 1.06666672, 0.433333337)
p29.BottomSurface = Enum.SurfaceType.Smooth
p29.TopSurface = Enum.SurfaceType.Smooth
b29 = Instance.new("BlockMesh", p29)
b29.Name = "Mesh"
b29.Scale = Vector3.new(0.5, 1, 1)
p30 = Instance.new("Part", t1)
p30.BrickColor = BrickColor.new("Black")
p30.CFrame = CFrame.new(-0.583000004, 5.7670002, -11.5830002, 1, 1.91851235e-014, 0, 0, -4.37113101e-008, 1, -2.64088136e-014, -1, -4.37114736e-008)
p30.Anchored = true
p30.CanCollide = false
p30.FormFactor = Enum.FormFactor.Custom
p30.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p30.BottomSurface = Enum.SurfaceType.Smooth
p30.TopSurface = Enum.SurfaceType.Smooth
b30 = Instance.new("CylinderMesh", p30)
b30.Name = "Mesh"
b30.Scale = Vector3.new(0.850000024, 0.0666666701, 0.850000024)
p31 = Instance.new("Part", t1)
p31.BrickColor = BrickColor.new("Bright red")
p31.CFrame = CFrame.new(-0.516000032, 5.5170002, -11.7160006, -1, -2.64088136e-014, 0, 0, -8.52651283e-014, 1, 2.64088136e-014, 1, -8.52651283e-014)
p31.Anchored = true
p31.CanCollide = false
p31.FormFactor = Enum.FormFactor.Custom
p31.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p31.BottomSurface = Enum.SurfaceType.Smooth
p31.TopSurface = Enum.SurfaceType.Smooth
b31 = Instance.new("CylinderMesh", p31)
b31.Name = "Mesh"
b31.Scale = Vector3.new(0.166666672, 0.166666672, 0.166666672)
p32 = Instance.new("Part", t1)
p32.BrickColor = BrickColor.new("Bright red")
p32.CFrame = CFrame.new(-0.450000018, 5.63200045, -11.7830009, -3.78551839e-008, 0.866025388, 0.5, 6.55670007e-008, -0.5, 0.866025388, 1, 6.55671073e-008, -3.78552869e-008)
p32.Anchored = true
p32.CanCollide = false
p32.FormFactor = Enum.FormFactor.Custom
p32.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p32.BottomSurface = Enum.SurfaceType.Smooth
p32.TopSurface = Enum.SurfaceType.Smooth
b32 = Instance.new("BlockMesh", p32)
b32.Name = "Mesh"
b32.Scale = Vector3.new(0.833333373, 0.166666672, 1)
p33 = Instance.new("Part", t1)
p33.BrickColor = BrickColor.new("Black")
p33.CFrame = CFrame.new(-0.516000032, 5.5170002, -11.7830009, -1, -2.64088136e-014, 0, 0, -8.52651283e-014, 1, 2.64088136e-014, 1, -8.52651283e-014)
p33.Anchored = true
p33.CanCollide = false
p33.FormFactor = Enum.FormFactor.Custom
p33.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p33.BottomSurface = Enum.SurfaceType.Smooth
p33.TopSurface = Enum.SurfaceType.Smooth
b33 = Instance.new("CylinderMesh", p33)
b33.Name = "Mesh"
b33.Scale = Vector3.new(0.166666672, 0.5, 0.166666672)
p34 = Instance.new("Part", t1)
p34.BrickColor = BrickColor.new("Black")
p34.CFrame = CFrame.new(-0.533000052, 5.43400049, -11.9500008, -1, 0, 2.64088136e-014, 0, 1, 8.52651283e-014, 2.64088136e-014, -8.52651283e-014, -1)
p34.Anchored = true
p34.CanCollide = false
p34.FormFactor = Enum.FormFactor.Custom
p34.Size = Vector3.new(0.200000003, 0.466666669, 0.200000003)
p34.BottomSurface = Enum.SurfaceType.Smooth
p34.TopSurface = Enum.SurfaceType.Smooth
b34 = Instance.new("BlockMesh", p34)
b34.Name = "Mesh"
b34.Offset = Vector3.new(0, 0.0340000018, 0)
b34.Scale = Vector3.new(0.333333343, 1, 0.5)
p35 = Instance.new("Part", t1)
p35.BrickColor = BrickColor.new("Really black")
p35.CFrame = CFrame.new(-0.522000015, 4.80000019, -11.9130001, -4.37113776e-008, -1, 0, -4.37113101e-008, 7.10542736e-015, 1, -1, 4.37114132e-008, -4.37114736e-008)
p35.Anchored = true
p35.CanCollide = false
p35.FormFactor = Enum.FormFactor.Custom
p35.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p35.BottomSurface = Enum.SurfaceType.Smooth
p35.TopSurface = Enum.SurfaceType.Smooth
b35 = Instance.new("BlockMesh", p35)
b35.Name = "Mesh"
b35.Scale = Vector3.new(0.0333333351, 0.0333333351, 0.5)
p36 = Instance.new("Part", t1)
p36.BrickColor = BrickColor.new("Black")
p36.CFrame = CFrame.new(-0.515000045, 5.69500017, -11.5760002, -4.37113776e-008, -1, 0, -4.37113101e-008, 7.10542736e-015, 1, -1, 4.37114132e-008, -4.37114736e-008)
p36.Anchored = true
p36.CanCollide = false
p36.FormFactor = Enum.FormFactor.Custom
p36.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p36.BottomSurface = Enum.SurfaceType.Smooth
p36.TopSurface = Enum.SurfaceType.Smooth
b36 = Instance.new("CylinderMesh", p36)
b36.Name = "Mesh"
b36.Scale = Vector3.new(0.666666687, 0.166666672, 0.666666687)
p37 = Instance.new("Part", t1)
p37.BrickColor = BrickColor.new("Light stone grey")
p37.CFrame = CFrame.new(-0.536000013, 4.68400002, -11.7000008, -1, -5.96046448e-008, 1.72904954e-014, -5.96046448e-008, 1, -8.74226913e-008, 2.83034399e-014, -8.74228547e-008, -1)
p37.Anchored = true
p37.CanCollide = false
p37.FormFactor = Enum.FormFactor.Custom
p37.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p37.BottomSurface = Enum.SurfaceType.Smooth
p37.TopSurface = Enum.SurfaceType.Smooth
b37 = Instance.new("BlockMesh", p37)
b37.Name = "Mesh"
b37.Scale = Vector3.new(0.166666672, 0.166666672, 0.333333343)
p38 = Instance.new("Part", t1)
p38.BrickColor = BrickColor.new("Light stone grey")
p38.CFrame = CFrame.new(-0.526000023, 4.81400013, -11.6830006, -4.37113776e-008, -1, 0, -4.37113101e-008, 7.10542736e-015, 1, -1, 4.37114132e-008, -4.37114736e-008)
p38.Anchored = true
p38.CanCollide = false
p38.FormFactor = Enum.FormFactor.Custom
p38.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p38.BottomSurface = Enum.SurfaceType.Smooth
p38.TopSurface = Enum.SurfaceType.Smooth
b38 = Instance.new("CylinderMesh", p38)
b38.Name = "Mesh"
b38.Scale = Vector3.new(0.5, 0.166666672, 0.5)
p39 = Instance.new("Part", t1)
p39.BrickColor = BrickColor.new("Really black")
p39.CFrame = CFrame.new(-0.502000034, 5.17700005, -11.8000002, -1.1920929e-007, 1, 1.77635633e-014, 1, 1.1920929e-007, -1.50995717e-007, -1.50995888e-007, -4.79616347e-014, -1)
p39.Anchored = true
p39.CanCollide = false
p39.FormFactor = Enum.FormFactor.Custom
p39.Size = Vector3.new(0.200000003, 0.200000003, 0.433333337)
p39.BottomSurface = Enum.SurfaceType.Smooth
p39.TopSurface = Enum.SurfaceType.Smooth
b39 = Instance.new("BlockMesh", p39)
b39.Name = "Mesh"
b39.Offset = Vector3.new(0, 0, -0.0179999992)
b39.Scale = Vector3.new(0.0333333351, 0.0333333351, 1)
p40 = Instance.new("Part", t1)
p40.BrickColor = BrickColor.new("Black")
p40.CFrame = CFrame.new(-0.550000012, 5.41700029, -11.7830009, -1, 0, 2.64088136e-014, 0, 1, 8.52651283e-014, 2.64088136e-014, -8.52651283e-014, -1)
p40.Anchored = true
p40.CanCollide = false
p40.FormFactor = Enum.FormFactor.Custom
p40.Size = Vector3.new(0.200000003, 0.366666675, 0.300000012)
p40.BottomSurface = Enum.SurfaceType.Smooth
p40.TopSurface = Enum.SurfaceType.Smooth
b40 = Instance.new("BlockMesh", p40)
b40.Name = "Mesh"
b40.Scale = Vector3.new(0.166666672, 1, 1)
p41 = Instance.new("Part", t1)
p41.BrickColor = BrickColor.new("Bright red")
p41.CFrame = CFrame.new(-0.508000016, 5.53100014, -11.8500004, -3.78551839e-008, 0.866025388, 0.5, 6.55670007e-008, -0.5, 0.866025388, 1, 6.55671073e-008, -3.78552869e-008)
p41.Anchored = true
p41.CanCollide = false
p41.FormFactor = Enum.FormFactor.Custom
p41.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
p41.BottomSurface = Enum.SurfaceType.Smooth
p41.TopSurface = Enum.SurfaceType.Smooth
b41 = Instance.new("BlockMesh", p41)
b41.Name = "Mesh"
b41.Scale = Vector3.new(0.166666672, 0.166666672, 0.166666672)
s3 = script:clone()
s3.Name = "PlantBomb"
s3.Disabled = false
so3 = Instance.new("StringValue", s3)
so3.Name = "forCustomRun"
so3.Value = [===[
Tool = script.Parent
local arms = nil
local torso = nil
local weld33 = nil 
local weld55 = nil
local welds = {}
local planting = true
local bomb = nil
local slimesbricks={} --Fixed, now you can just clear a table to remove bricks.

local sound = Instance.new("Sound")
sound.SoundId = "http://www.roblox.com/asset/?id=28517063"
sound.Looped = true

local explosion = Instance.new("Sound")
explosion.SoundId = "rbxasset://sounds/vehicleExplosion"
explosion.Volume = 0.01
explosion:Play()
explosion.Volume = 0.5

function plant(pos)
	
	Tool.Handle.Plant:Play()
   
	local vCharacter = Tool.Parent
	local vPlayer = game.Players:playerFromCharacter(vCharacter)

	local spawnPos = vCharacter.PrimaryPart.Position

	bomb = Instance.new("Part")
	bomb.Locked = true
	bomb.formFactor = 2
	bomb.Size = Vector3.new(1,0.4,1)
	bomb.Name = "Mine"
	bomb.Position = pos

	sound.Parent = bomb
	sound:Play()

	explosion:Stop()

	local mesh = Instance.new("SpecialMesh")
	mesh.MeshId = "http://www.roblox.com/asset/?id=28511843"
	mesh.TextureId = "http://www.roblox.com/asset/?id=28512114"
	mesh.Parent = bomb

	local creator_tag = Instance.new("ObjectValue")
	creator_tag.Value = vPlayer
	creator_tag.Name = "creator"
	creator_tag.Parent = bomb

	local script = Tool.BombBlink:clone()
	script.Parent = bomb
	script.Disabled = false

	bomb.Parent = game.Workspace
	bomb.Touched:connect(function(part)
		if part ~= Tool.Handle and part.Parent:FindFirstChild("Humanoid") == nil then
			bomb.Anchored = true
			bomb.CanCollide = false
		end
	end)
end

function blowUp()

	local e = Instance.new("Explosion")
	e.BlastPressure = 10
	e.BlastRadius = 10
	e.Parent = game.Workspace
	e.Position = bomb.Position
	sound:Stop()
	explosion.Parent = e
	explosion:Play()
	bomb:remove()

   Tool.Handle.Detonate:Play()
	for i=1,#slimesbricks do --OH EMM GEE!
		slimesbricks[i]:Remove()
	end
   
   weld33.C1 = CFrame.new(-1.05, -0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-89), math.rad(-25), 0)
   wait()
   weld33.C1 = CFrame.new(-1.05, -0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-88), math.rad(-25), 0)
   wait()
   weld33.C1 = CFrame.new(-1.05, -0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-87), math.rad(-25), 0)
   wait()
   weld33.C1 = CFrame.new(-1.05, -0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-88), math.rad(-25), 0)
   wait()
   weld33.C1 = CFrame.new(-1.05, -0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-89), math.rad(-25), 0)
   wait()
   weld33.C1 = CFrame.new(-1.05, -0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-25), 0)
   wait()
end

function Equip(mouse) --woohoo
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
falsearm1.BrickColor = BrickColor.new(26)
falsearm1.Parent = Tool
armweld1.Parent = falsearm1
armweld1.Part0 = falsearm1
armweld1.Part1 = arms[1]
falsearm2 = arms[2]:clone()
local mesh2 = Instance.new("BlockMesh")
mesh2.Scale = Vector3.new(.9,.9,.9)
mesh2.Parent = falsearm2
local armweld2 = Instance.new("Weld")
falsearm2.BrickColor = BrickColor.new(26)
falsearm2.Parent = Tool
armweld2.Parent = falsearm2
armweld2.Part0 = falsearm2
armweld2.Part1 = arms[2]
local weld1 = Instance.new("Weld") -- left arm
weld55 = weld1
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.1, math.rad(-90))
welds[1] = weld1
local weld2 = Instance.new("Weld") -- right arm
weld33 = weld2
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(-1.05, -0.1, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-25), 0)
welds[2] = weld2
Takeout()
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

function Dropanim()
weld55.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.7, math.rad(-90))
Tool.C1.Transparency = 1
local Cpart1 = Tool.C1:clone()
Cpart1.Parent = game.Workspace
Cpart1.Mesh.Offset = Vector3.new(0, 0, 0)
Cpart1.Anchored = true
Cpart1.Transparency = 0
Tool.C2.Transparency = 1
table.insert(slimesbricks,Cpart1)
local Cpart2 = Tool.C2:clone()
Cpart2.Parent = game.Workspace
Cpart2.Mesh.Offset = Vector3.new(0, 0, 0)
Cpart2.Anchored = true
Cpart2.Transparency = 0
Tool.C3.Transparency = 1
table.insert(slimesbricks,Cpart2)
local Cpart3 = Tool.C3:clone()
Cpart3.Parent = game.Workspace
Cpart3.Mesh.Offset = Vector3.new(0, 0, 0)
Cpart3.Anchored = true
Cpart3.Transparency = 0
Tool.C4.Transparency = 1
table.insert(slimesbricks,Cpart3)
local Cpart4 = Tool.C4:clone()
Cpart4.Parent = game.Workspace
Cpart4.Mesh.Offset = Vector3.new(0, 0, 0)
Cpart4.Anchored = true
Cpart4.Transparency = 0
table.insert(slimesbricks,Cpart4)
wait()
weld55.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.6, math.rad(-90))
wait()
weld55.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.5, math.rad(-90))
wait()
weld55.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.4, math.rad(-90))
wait()
weld55.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.3, math.rad(-90))
wait()
weld55.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.2, math.rad(-90))
wait()
weld55.C1 = CFrame.new(-0.25, 0.2, 0.7) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.1, math.rad(-90))
Tool.C1.Transparency = 0
Tool.C2.Transparency = 0
Tool.C3.Transparency = 0
Tool.C4.Transparency = 0
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

	local targetPos = humanoid.TargetPoint

	if planting then
		plant(Tool.C1.Position)
      Dropanim()
		planting = false
	else
		blowUp()
		planting = true
	end

	Tool.Enabled = true
end

function onEquippedLocal(mouse)

	if mouse == nil then
		print("Mouse not found")
		return 
	end

	mouse.Icon = "http://www.roblox.com/asset/?id=54564144"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.KeyDown:connect(KeyDownFunctions)
	while true do
		wait()
	end
end


Tool.Equipped:connect(onEquippedLocal)


script.Parent.Activated:connect(onActivated)
Tool.Equipped:connect(Equip)
Tool.Unequipped:connect(Unequip)
]===]
s3.Parent = t1
s4 = script:clone()
s4.Name = "-(Read me)-"
s4.Disabled = false
so4 = Instance.new("StringValue", s4)
so4.Name = "forCustomRun"
so4.Value = [===[
--This C4 is made by Youngwarlock
--

--Do not complain about the C4 being misshaped
--Simply go in edit and select the C4 model
--Auto-place it in the starterpack and the bricks are how they should be
--Blame roblox for this annoying bug

--Anyway enjoy

]===]
s4.Parent = t1
m.Parent = game:service("Workspace")
m:MakeJoints()