Me = game.Players.LocalPlayer
Char = Me.Character
Asset = "http://www.roblox.com/asset/?id="

Base = false
Objects = {}

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

Part = function(Ty, P, A, C, T, R, B, S)
local a = "Part"
if Ty == 2 then
	a = "WedgePart"
else
	a = "Part"
end
local p = Instance.new(a)
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = A
p.CanCollide = C
p.Transparency = T
p.Reflectance = R
p.formFactor = "Custom"
p.BrickColor = B
p.Size = S
p.Parent = P
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

Ba = Part(nil, nil, true, false, 0.4, 0, BN("Dark green"), V3(100, 4, 100))
Ba.TopSurface = "Studs"

Map.Parent = Char

function MakeChar(pos)
	local c = Instance.new("Model",Map)
	c.Name = "Char"
	local torso = Part(nil, c, true, true, 0, 0, BN("Bright blue"), V3(2, 2, 1))
	torso.Name = "Torso"
	local head = Part(nil, c, true, true, 0, 0, BN("Bright yellow"), V3(2, 1, 1))
	Instance.new("SpecialMesh",head).Scale = V3(1.25, 1.25, 1.25)
	head.Name = "Head"
	local rarm = Part(nil, c, true, true, 0, 0, BN("Bright yellow"), V3(1, 2, 1))
	rarm.Name = "Right Arm"
	local larm = Part(nil, c, true, true, 0, 0, BN("Bright yellow"), V3(1, 2, 1))
	larm.Name = "Left Arm"
	local lleg = Part(nil, c, true, true, 0, 0, BN("Br. yellowish green"), V3(1, 2, 1))
	lleg.Name = "Left Leg"
	local rleg = Part(nil, c, true, true, 0, 0, BN("Br. yellowish green"), V3(1, 2, 1))
	rleg.Name = "Right Leg"
	local sword = Part(nil, c, true, true, 0, 0, BN("White"), V3(1, 0.5, 4))
	sword.Name = "Sword"
	local m = Instance.new("SpecialMesh",sword)
	m.MeshId = "http://www.roblox.com/asset/?id=10467539"
	m.TextureId = "http://www.roblox.com/asset/?id=10467545"
	m.Scale = V3(1.8, 1.8, 1.8)
	local Face = Instance.new("Decal",head)
	Face.Face = "Front"
	Face.Texture = Asset..(13038247)
	torso.CFrame = pos * CN(0, 3, 0)
	head.CFrame = pos * CN(0, 4.5, 0)
	rarm.CFrame = pos * CN(-1.5, 3, 0)
	larm.CFrame = pos * CN(1.5, 3, 0)
	rleg.CFrame = pos * CN(-0.5, 1, 0)
	lleg.CFrame = pos * CN(0.5, 1, 0)
	sword.CFrame = rarm.CFrame * CN(0, -1, -1.5)
	table.insert(Objects, {
	{p0 = torso, p1 = head, c0 = CN(0, 1, 0), c1 = CN(0, 0.5, 0)},
	{p0 = torso, p1 = rarm, c0 = CN(-1.5, 1, 0), c1 = CN(0, -1, 0)},
	{p0 = torso, p1 = larm, c0 = CN(1.5, 1, 0), c1 = CN(0, -1, 0)},
	{p0 = torso, p1 = rleg, c0 = CN(-0.5, -1, 0), c1 = CN(0, -1, 0)},
	{p0 = torso, p1 = lleg, c0 = CN(0.5, -1, 0), c1 = CN(0, -1, 0)},
	{p0 = rarm, p1 = sword, c0 = CN(0, -1, 0), c1 = CN(0, 0, -0.5)}
	})
end

if script.Parent.className ~= "HopperBin" then
	h = Instance.new("HopperBin",Me.Backpack)
	h.Name = "Animate"
	script.Parent = h
end

bin = script.Parent

function Selected(mouse)
	if Base == false then
		Ba.Parent = Map
		Ba.CanCollide = false
		local c = mouse.Move:connect(function()
			Ba.CFrame = CN(mouse.Hit.p) * CN(0, 2, 0)
		end)
		mouse.Button1Down:wait()
		c:disconnect()
		Ba.Transparency = 0
		Ba.CanCollide = true
		Ba.Parent = Map
		Map.Parent = workspace
		Base = true
		MakeChar(Ba.CFrame * CN(0, 2, 0))
	else
		local targ = mouse.Target
		if targ then
		end
	end
end

function Deselected(mouse)
	if Base == false then
		Ba.Parent = nil
	end
end

bin.Selected:connect(Selected)
bin.Deselected:connect(Deselected)
