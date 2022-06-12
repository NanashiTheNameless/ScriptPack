Me = game.Players.yfc
Cam = workspace.CurrentCamera
--Me.Character = nil

Pos = Vector3.new(100, 1, 0)
PartSize = 10
UnAnchoredSize = 5

function getAllParts(from)
	local t = {}
	function getParts(where)
		for i, v in pairs(where:children()) do
			if v:IsA("BasePart") then
				if v.Parent ~= char and v.Parent.Parent ~= char then
					table.insert(t, v)
				end
			end
			getParts(v)
		end
	end
	getParts(workspace)
	return t
end

function RayCast(pos1, pos2, maxDist, forward, from)
	local list = getAllParts(from)
	local pos0 = pos1
	for dist = 1, maxDist, forward do
		pos0 = (CFrame.new(pos1, pos2) * CFrame.new(0, 0, -dist)).p
		for _, v in pairs(list) do
			local pos3 = v.CFrame:pointToObjectSpace(pos0)
			local s = v.Size
			if pos3.x > -(s.x/2) and pos3.x < (s.x/2) and pos3.y > -(s.y/2) and pos3.y < (s.y/2) and pos3.z > -(s.z/2) and pos3.x < (s.z/2) then
				return pos0, v
			end
		end
	end
	return pos0, nil
end

function Stats(P, Anchored, Collide)
	local stat = Instance.new("IntValue",P)
	stat.Name = "Stats"
	local anc = Instance.new("BoolValue",stat)
	anc.Name = "Anchor"
	anc.Value = Anchored
	local col = Instance.new("BoolValue",stat)
	col.Name = "Collide"
	col.Value = Collide
	return stat
end

function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
	local p = Instance.new("Part")
	p.formFactor = "Custom"
	p.Anchored = Anchor
	p.CanCollide = Collide
	p.Transparency = Tran
	p.Reflectance = Ref
	p.BrickColor = BrickColor.new(Color)
	p.TopSurface = "Smooth"
	p.BottomSurface = "Smooth"
	p.Size = Vector3.new(X, Y, Z)
	if Break then
		p:BreakJoints()
	else p:MakeJoints() end
	p.Parent = Parent
	return p
end

Model = Instance.new("Model",workspace.Base)
--Cam.CameraSubject = nil

for x = 0, PartSize*5, PartSize do
	for z = 0, PartSize*5, PartSize do
		local p = Part(Model, true, false, 0, 0, "Dark green", PartSize, math.random(2, 20), PartSize, true)
		p.CFrame = CFrame.new(Pos) * CFrame.new(x, p.Size.Y/2, z)
		Stats(p, true, true)
		local hm = math.random(1,6)
		if hm == 1 then
			local p2 = Part(Model, true, false, 0, 0, "Bright red", math.random(UnAnchoredSize/2, UnAnchoredSize*1.5), math.random(UnAnchoredSize/2, UnAnchoredSize*1.5), math.random(UnAnchoredSize/2, UnAnchoredSize*1.5), true)
			p2.CFrame = p.CFrame * CFrame.new(0, (p2.Size.Y/2) + (p.Size.Y/2) + 4, 0)
			Stats(p2, false, true)
		end
	end
end

for _, v in pairs(Model:children()) do
	for _, v2 in pairs(Model:children()) do
		
	end
end

if script.Parent ~= nil then
	local Hop = Instance.new("HopperBin",Me.Backpack)
	Hop.Name = "Physics"
	script.Parent = Hop
end
