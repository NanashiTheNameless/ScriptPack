for i,v in pairs(workspace:children()) do if v.Name == ":e" then v:remove() end end 

Mod = Instance.new("Model",workspace)
Mod.Name = ":e"

Col1 = {"Bright red", "Neon orange", "Bright yellow"}
Col2 = {"Dark grey", "Black", "Really black"}
Col3 = {"Bright yellow", "Neon orange", "New Yeller"}

CA = CFrame.Angles
CN = CFrame.new
V3 = Vector3.new
MR = math.rad
MP = math.pi
MRA = math.random
MH = math.huge

Scale = 4
Pos = V3(0, 0, 0)

function Part(P, Anch, Coll, Tran, Ref, Col, Size)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Transparency = Tran
	p.Reflectance = Ref
	p.CanCollide = Coll
	p.Anchored = Anch
	p.BrickColor = BrickColor.new(Col)
	p.formFactor = "Custom"
	p.Size = Size
	p.Parent = P
	p.Locked = true
	p:BreakJoints()
	return p
end

for i = 1, MRA(60,90) do
	local p = Part(Mod, true, false, 0.2, 0, Col3[MRA(1,#Col3)], V3(1, 1, 1))
	local s = Instance.new("SpecialMesh",p)
	s.MeshType = "Sphere"
	s.Scale = V3(0.8, 0.8, MRA(1*10, 5*10)/10)*Scale
	local cf = CN(Pos) * CA(0, MR(MRA(-180, 180)), 0) * CA(MR(MRA(-10, 90)), 0, 0)
	p.CFrame = cf * CN(0, 0, (MRA(-22*100, -6*100)/100)*Scale)
end

for i = 1, MRA(10,20) do
	local p = Part(Mod, true, false, 0.2, 0, Col1[MRA(1,#Col1)], V3(1, 1, 1))
	local s = Instance.new("SpecialMesh",p)
	s.MeshType = "Sphere"
	local ss = MRA(3*10, 8*10)/10
	s.Scale = V3(ss, ss, ss)*Scale
	local cf = CN(Pos) * CA(0, MR(MRA(-180, 180)), 0) * CA(MR(MRA(-10, 90)), 0, 0)
	p.CFrame = cf * CN(0, 0, (MRA(-7*100, -4*100)/100)*Scale)
end

for i = 1, MRA(10,20) do
	local p = Part(Mod, true, false, 0.4, 0, Col2[MRA(1,#Col2)], V3(1, 1, 1))
	local s = Instance.new("SpecialMesh",p)
	s.MeshType = "Sphere"
	local ss = MRA(3*10, 8*10)/10
	s.Scale = V3(ss, ss, ss)*Scale
	local ce = MRA(12, 18)*Scale
	local cf = CN(Pos) * CN(0, ce/2, 0) * CA(0, MR(MRA(-180, 180)), 0)
	p.CFrame = cf * CA(MR(MRA(30,90)), 0, 0) * CN(0, 0, -ce)
end
