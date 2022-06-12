CA = CFrame.Angles
CN = CFrame.new
V3 = Vector3.new
MR = math.rad
MP = math.pi
MRA = math.random
MH = math.huge

Scale = 1

Pos = V3(100, 0, 0)
Pos = Pos + V3(0, 1, 0)

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

for i,v in pairs(workspace:children()) do if v.Name == "Building" then v:remove() end end 

local Mod = Instance.new("Model")
Mod.Name = "Building"

for i = 0, 360, 72 do
	local cf = CN(Pos) * CA(0, MR(i), 0) * CN(0, 17.5*Scale, -100*Scale)
	local p = Part(Mod, true, true, 0, 0, "Dark grey", V3(15*Scale, 45*Scale, 15*Scale))
	p.CFrame = cf * CN(0, 5*Scale, 0)
	for x = 60, 120, 10 do
		local p2 = Part(Mod, true, true, 0, 0, "Dark grey", V3(25*Scale, 19.5*Scale, 12*Scale))
		local cen = cf * CA(0, MR(36), 0) * CN(-60*Scale, -70*Scale, 0)
		p2.CFrame = cen * CA(0, 0, MR(x)) * CN(98*Scale, 0, 0)
	end
	local p2 = Part(Mod, true, true, 0, 0, "Dark grey", V3(138*Scale, 1*Scale, 95*Scale))
	p2.CFrame = CN(Pos) * CA(0, MR(i+36), 0) * CN(0, 0, -47.5*Scale)
	local p3 = Part(Mod, true, true, 0, 0, "Dark grey", V3(138*Scale, 25*Scale, 95*Scale))
	p3.CFrame = CN(Pos) * CA(0, MR(i+36), 0) * CN(0, 50*Scale, -47.5*Scale)
end

Mod.Parent = workspace