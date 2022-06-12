t = workspace.yfc.Torso.Position
pos = CFrame.new(t.X, 1, t.Z)
Scale = 0.1

CN = CFrame.new
CA = CFrame.Angles
MR = math.rad
MP = math.pi

function Part(P, Anch, Coll, Tran, Ref, Col, X, Y, Z)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Transparency = Tran
	p.Reflectance = Ref
	p.CanCollide = Coll
	p.Anchored = Anch
	p.BrickColor = BrickColor.new(Col)
	p.formFactor = "Custom"
	p.Size = Vector3.new(X,Y,Z)
	p.Parent = P
	p.Locked = true
	p:BreakJoints()
	return p
end

for i,v in pairs(workspace.Base:children()) do if v.Name == "Tower" then v:remove() end end

Mod = Instance.new("Model")
Mod.Name = "Tower"

for i = 40, 360, 40 do
	local p = Part(Mod, true, true, 0, 0, "Dark grey", 4.6*Scale, 1*Scale, 25*Scale)
	p.CFrame = pos * CA(0, MR(i), 0)
	local s = 70
	if i == 40 then s = 60 end
	local p2 = Part(Mod, true, true, 0, 0, "Dark grey", 9*Scale, s*Scale, 1*Scale)
	p2.CFrame = pos * CA(0, MR(i), 0) * CN(0, (70/2-0.5+(-(s-70)/2))*Scale, -12*Scale)
	local p3 = Part(Mod, true, true, 0, 0, "Dark grey", 14.4*Scale, 10*Scale, 8*Scale)
	p3.CFrame = pos * CA(0, MR(i), 0) * CN(0, 73.5*Scale, -15.5*Scale)
	for x = -6, 6, 12 do
		local p4 = Part(Mod, true, true, 0, 0, "Dark grey", 5*Scale, 4*Scale, 4*Scale)
		p4.CFrame = p3.CFrame * CN(x*Scale, 5*Scale, -5.5*Scale)
	end
end

for i = 0, 77, 1 do
	local p = Part(Mod, true, true, 0, 0, "Medium grey", 4*Scale, 1*Scale, 4*Scale)
	p.CFrame = pos * CA(0, MR((i+4)*15), 0) * CN(0, i*Scale, -9.5*Scale)
end

Mod.Parent = workspace.Base
