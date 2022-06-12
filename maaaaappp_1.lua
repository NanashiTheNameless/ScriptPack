Pos = Vector3.new(0, 0, 0)
Scale = 1

Colors = {
Land = "Earth green",
Water = "Navy blue",
Material = "Dark grey",
Wood = "Reddish brown",
}

Naim = "Mapx"

V3 = Vector3.new
C3 = Color3.new
V2 = Vector2.new
CN = CFrame.new
CA = CFrame.Angles
BN = BrickColor.new
MR = math.rad
MRA = math.random
MP = math.pi

Part = function(Type, Parent, Anchor, Collide, Trans, Ref, Bri, Size)
local a = "Part"
if Type == 2 then
	a = "WedgePart"
else
	a = "Part"
end
local p = Instance.new(a)
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = Anchor
p.CanCollide = Collide
p.Transparency = Trans
p.Reflectance = Ref
p.formFactor = "Custom"
p.BrickColor = Bri
p.Size = Size
p.Parent = Parent
p:breakJoints()
return p
end

for _,v in pairs(workspace:children()) do
	if v.Name == Naim then
		v:remove()
	end
end

Map = Instance.new("Model")
Map.Name = Naim

Base1 = Part(2, Map, true, true, 0, 0, BN(Colors.Land), V3(20*Scale, 400*Scale, 400*Scale))
Base1.CFrame = CN(Pos) * CN(0, -10*Scale, 0) * CA(0, 0, MR(90)) * CN(0, -9*Scale, 9*Scale)
Base1.Material = "Grass"

Base2 = Part(2, Map, true, true, 0, 0, BN(Colors.Land), V3(20*Scale, 400*Scale, 400*Scale))
Base2.CFrame = CN(Pos) * CN(0, -10*Scale, 0) * CA(0, MR(-90), MR(-90)) * CN(0, -9*Scale, 9*Scale)
Base2.Material = "Grass"

local river = Part(1, Map, true, true, 0, 0, BN(Colors.Land), V3(30*Scale, 2*Scale, 565*Scale))
river.CFrame = CN(Pos) * CN(0, -15*Scale, 0) * CA(0, MR(-45), 0)

for i = 0, 12, 1 do
	local water = Part(1, Map, true, false, 0.4, 0, BN(Colors.Water), V3(1, 1, 1))
	water.CFrame = CN(Pos) * CN(0, (-15+i)*Scale, 0) * CA(0, MR(-45), 0)
	Instance.new("BlockMesh",water).Scale = V3(30*Scale, 1*Scale, 565*Scale)
end

for i = 0, 300, 60 do
	if i == 60 or i == 240 then
		local p = Part(1, Map, true, true, 0, 0, BN(Colors.Material), V3(15*Scale, 20*Scale, 2*Scale))
		p.CFrame = CN(Pos) * CN(0, 10*Scale, 0) * CA(0, MR(i-15), 0) * CN(-20*Scale, 0, (-47*Scale))
		local p2 = Part(1, Map, true, true, 0, 0, BN(Colors.Material), V3(15*Scale, 20*Scale, 2*Scale))
		p2.CFrame = CN(Pos) * CN(0, 10*Scale, 0) * CA(0, MR(i-15), 0) * CN(20*Scale, 0, (-47*Scale))
		local p3 = Part(1, Map, true, true, 0, 0, BN(Colors.Material), V3(25.5*Scale, 10*Scale, 2*Scale))
		p3.CFrame = CN(Pos) * CN(0, 15*Scale, 0) * CA(0, MR(i-15), 0) * CN(0, 0, (-47*Scale))
		p.Material = "Slate" p2.Material = "Slate" p3.Material = "Slate"
	else
		local p = Part(1, Map, true, true, 0, 0, BN(Colors.Material), V3(55*Scale, 20*Scale, 2*Scale))
		p.CFrame = CN(Pos) * CN(0, 10*Scale, 0) * CA(0, MR(i-15), 0) * CN(0, 0, (-47*Scale))
		p.Material = "Slate"
	end
	local p = Part(1, Map, true, true, 0, 0, BN(Colors.Material), V3(55*Scale, 2*Scale, 11*Scale))
	p.CFrame = CN(Pos) * CN(0, 17.5*Scale, 0) * CA(0, MR(i-15), 0) * CN(0, 0, (-41*Scale))
	p.Material = "Slate"
	for x = -27, 27, 8 do
		local p2 = Part(1, Map, true, true, 0, 0, BN(Colors.Material), V3(4*Scale, 3*Scale, 2.5*Scale))
		p2.CFrame = CN(Pos) * CN(0, 20.5*Scale, 0) * CA(0, MR(i-15), 0) * CN(x*Scale, 0, (-48*Scale))
		p2.Material = "Slate"
	end
end

for i = 0, 300, 60 do
	if i == 60 or i == 240 then
		local p = Part(1, Map, true, true, 0, 0, BN(Colors.Material), V3(11*Scale, 20*Scale, 2*Scale))
		p.CFrame = CN(Pos) * CN(0, 10*Scale, 0) * CA(0, MR(i-15), 0) * CN(-15.5*Scale, 0, (-35*Scale))
		local p2 = Part(1, Map, true, true, 0, 0, BN(Colors.Material), V3(11*Scale, 20*Scale, 2*Scale))
		p2.CFrame = CN(Pos) * CN(0, 10*Scale, 0) * CA(0, MR(i-15), 0) * CN(15.5*Scale, 0, (-35*Scale))
		local p3 = Part(1, Map, true, true, 0, 0, BN(Colors.Material), V3(25.5*Scale, 10*Scale, 2*Scale))
		p3.CFrame = CN(Pos) * CN(0, 15*Scale, 0) * CA(0, MR(i-15), 0) * CN(0, 0, (-35*Scale))
		p2.Material = "Slate"
		p3.Material = "Slate"
		p.Material = "Slate"
		for x = -15, 15, 30 do
			for x2 = -2, 2, 4 do
				local p4 = Part(1, Map, true, true, 0, 0, BN(Colors.Wood), V3(1*Scale, 21*Scale, 1*Scale))
				p4.CFrame = CN(Pos) * CN(0, 10.5*Scale, 0) * CA(0, MR(i-15), 0) * CN((x*Scale)+(x2*Scale), 0, (-33.5*Scale))
				p4.Material = "Wood"
			end
			for y = 1, 20, 1.8 do
				local p4 = Part(1, Map, true, true, 0, 0, BN(Colors.Wood), V3(3.5*Scale, 0.9*Scale, 1*Scale))
				p4.CFrame = CN(Pos) * CN(0, y*Scale, 0) * CA(0, MR(i-15), 0) * CN(x*Scale, 0, (-34*Scale))
				p4.Material = "Wood"
			end
		end
	else
		local p = Part(1, Map, true, true, 0, 0, BN(Colors.Material), V3(41*Scale, 20*Scale, 2*Scale))
		p.CFrame = CN(Pos) * CN(0, 10*Scale, 0) * CA(0, MR(i-15), 0) * CN(0, 0, (-35*Scale))
		p.Material = "Slate"
	end
	local p = Part(1, Map, true, true, 0, 0, BN(Colors.Wood), V3(55*Scale, 1*Scale, 12*Scale))
	p.CFrame = CN(Pos) * CN(0, 0, 0) * CA(0, MR(i-15), 0) * CN(0, 0, (-41*Scale))
	p.Material = "Wood"
end

Map.Parent = workspace

pcall(function() workspace.Base:remove() end)
