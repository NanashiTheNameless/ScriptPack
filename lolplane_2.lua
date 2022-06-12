Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
modelname = "xPlane"
me = game.Players.yfc
Pos = Vector3.new(-50,2,0)

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

function Weld(p0, p1, x, y, z, a, b, c)
	local w = Instance.new("Weld")
	w.Parent = p0
	w.Part0 = p0
	w.Part1 = p1
	w.C0 = CFrame.new(x,y,z) * CFrame.Angles(a,b,c)
	return w
end

for i,v in pairs(workspace:children()) do if v.Name == modelname then v:remove() end end

plane = Instance.new("Model")
plane.Name = modelname

main = Part(plane, false, true, 0, 0, "Navy blue", 21, 1, 45, true)
main.CFrame = CFrame.new(Pos)

for i = -50, 90, 20 do
	local side = Part(plane, false, true, 0, 0, "Navy blue", 1, 2.5, 35, true)
	local w = Weld(main, side, 7.3, 5.3, 5, 0, 0, math.rad(i))
	w.C1 = CFrame.new(-6,0,0)
end

for i = -50, 90, 20 do
	local side = Part(plane, false, true, 0, 0, "Navy blue", 1, 2.5, 35, true)
	local w = Weld(main, side, -7.3, 5.3, 5, 0, math.pi, math.rad(i))
	w.C1 = CFrame.new(-6,0,0)
end

for i=0,320,40 do
	local ent = Part(plane, false, true, 0, 0, "Navy blue", 2.2, 4, 1, true)
	local w = Weld(main, ent, 0, 5.5, 22.5, 0, 0, math.rad(i))
	w.C1 = CFrame.new(-4,0,0)
end

for i=-7.7, 7.8, 15.4 do
for x=-60,60,40 do
local bloo = Part(plane, false, true, 0, 0, "Navy blue", 6.3, 4, 1, true)
local a = Weld(main, bloo, i, 5.5, 22, 0, 0, math.rad(x))
a.C1 = CFrame.new(-i/3,0,0)
end
end


roof = Part(plane, false, true, 0, 0, "Navy blue", 12.5, 1, 35, true)
Weld(main, roof, 0, 11.3, 5, 0, 0, 0)

bloo = Part(plane, false, false, 0.6, 0, "Institutional white", 9, 0.6, 9, true)
Instance.new("CylinderMesh",bloo)
Weld(main, bloo, 0, 5.5, 22.5, math.pi/2, 0, 0)

plane.Parent = workspace

