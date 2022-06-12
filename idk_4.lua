Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
pos = 200

function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
	local p = Instance.new("Part")
	p.formFactor = "Custom"
	p.Anchored = Anchor
	p.CanCollide = Collide
	p.Transparency = Tran
	p.Reflectance = Ref
	p.BrickColor = BrickColor.new(Color)
	for _, Surf in pairs(Surfaces) do
		p[Surf] = "Smooth"
	end
	p.Size = Vector3.new(X, Y, Z)
	if Break then
		p:BreakJoints()
	else p:MakeJoints() end
	p.Parent = Parent
	return p
end
bricks = {}
for x = 0, pos, 10 do
	wait()
	for z = 0, pos, 10 do
		local p = Part(workspace, true, true, 0, 0, "Black", 10,25,10,true)
		p.CFrame = CFrame.new(x, 1, z)
		table.insert(bricks, p)
	end
end

for i,v in pairs(game.Players:GetPlayers()) do
	v.Character:MoveTo(Vector3.new(math.random(0,pos), 50, math.random(0,pos)))
end

for i=1,8 do
local randomplace = Vector3.new(math.random(0, pos), 0.4, math.random(0, pos))

for i,v in pairs(bricks) do
	v.CFrame = v.CFrame * CFrame.new(0, 60/((randomplace - v.Position).magnitude), 0)
end
end
