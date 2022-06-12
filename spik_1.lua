Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}

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


_G.makespike = function(scale, x, y, z)
realscale = scale/2

for i=0, 360, 10 do
	local p = Part(workspace, true, true, 0, 0, "Mid. grey", (realscale/3.4), scale*1.5, realscale/12, true)
	p.CFrame = CFrame.new(x, y+realscale, z) * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, -realscale/1.3) * CFrame.Angles(math.rad(30), 0, 0)
	Instance.new("BlockMesh",p)
	local p2 = Part(workspace, true, true, 0, 0, "Mid. grey", (realscale/3.4), realscale/12, (scale/1.3)*2, true)
	p2.CFrame = CFrame.new(x, y+realscale-((scale*1.25)/2), z) * CFrame.Angles(0, math.rad(i), 0)
	Instance.new("BlockMesh",p2)
end
end
_G.makespike(10, 10, 0, 0)
