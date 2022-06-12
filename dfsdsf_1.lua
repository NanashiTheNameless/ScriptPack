CA = CFrame.Angles
CN = CFrame.new
V3 = Vector3.new
MR = math.rad
MP = math.pi
MRA = math.random
MH = math.huge

Pos = V3(350,0,0)

for i,v in pairs(workspace:children()) do
	if v.Name == "Mountain" then v:remove() end
end

Mod = Instance.new("Model",workspace)
Mod.Name = "Mountain"

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
local poszz = CN()

for x = -25, 50, 5 do
	for y = 0, 90, 5 do
		local s = MRA(40,50)
		local p = Part(Mod, true, true, 0, 0, "Dark grey", V3(s,s,s))
		local cen = CN(Pos) * CN(0, 0, -400)
		p.CFrame = cen * CA(MR(x), MR(y), 0) * CN(0, 0, 400) * CA(MR(MRA(-180,180)), MR(MRA(-180,180)), MR(MRA(-180,180)))
		p.Material = "Slate"
		if x >= 5 and x <= 10 and y >= 35 and y <= 45 then 
			poszz = cen * CA(MR(x), MR(y), 0) * CN(0, 0, 400)
			p:remove()
		end
	end
end

for i = -11, 11, 2 do
	local p = Part(Mod, true, false, 0.6, 0, "Really black", V3(1,1,1))
	p.CFrame = poszz * CN(-30, 15, i)
	Instance.new("BlockMesh",p).Scale = V3(130, 80, 1)
end

for y = 0, 90, 5 do
	local p = Part(Mod, true, true, 0, 0, "Dark grey", V3(45,60,45))
	local cen = CN(Pos) * CN(0, -70, -400)
	p.CFrame = cen * CA(0, MR(y), 0) * CN(0, 0, 430) * CA(0, MR(MRA(-20,20)), 0)
	local p2 = Part(Mod, true, false, 0.8, 0, "Mid gray", V3(1,1,1))
	p2.CFrame = CN(Pos) * CN(0, -130-y, 0)
	Instance.new("BlockMesh",p2).Scale = V3(1200, 1, 1200)
end

base = Part(Mod, true, true, 0, 0, "Dark grey", V3(160,5,160))
base.CFrame = CN(Pos) * CN(180,-60, -140) * CA(0, MR(45), 0)

base2 = Part(Mod, true, true, 0, 0, "Dark grey", V3(160,5,160))
base2.CFrame = base.CFrame * CN(0, 50, 0)

for i = -90, 90, 90 do
	local p = Part(Mod, true, true, 0, 0, "Dark grey", V3(160,50,5))
	p.CFrame = base.CFrame * CA(0, MR(i), 0) * CN(0, 23, -80)
end
