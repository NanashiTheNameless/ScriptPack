main = Vector3.new(40, 1.5, 0)
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}

trampoline = Instance.new("Model")
trampoline.Name = "xS Tr"

local strs = {}

for i,v in pairs(workspace:children()) do if v.Name == "xS Tr" then v:remove() end end 
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

for i = 0, 360, 120 do
	local holder = Part(trampoline, true, true, 0, 0, "Medium grey", 10, 0.8, 0.8, true)
	holder.CFrame = CFrame.new(main) * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,0,-12)
	for x = 0, math.pi, math.pi do
		for y = 0, 90, 15 do
			local p = Part(trampoline, true, true, 0, 0, "Medium grey", 0.8, 0.8, 0.8, true)
			p.CFrame = holder.CFrame * CFrame.Angles(0, x, 0) * CFrame.new(5,2,0) * CFrame.Angles(0,0,math.rad(-y)) * CFrame.new(2,0,0)
		end
		local p = Part(trampoline, true, true, 0, 0, "Medium grey", 0.8, 2.2, 0.8, true)
		p.CFrame = holder.CFrame * CFrame.Angles(0, x, 0) * CFrame.new(7,3,0)
	end
end

for i = 0, 360, 20 do
	local p = Part(trampoline, true, true, 0, 0, "Medium grey", 5, 0.8, 0.8, true)
	p.CFrame = CFrame.new(main) * CFrame.Angles(0,math.rad(i),0) * CFrame.new(0,4,-13.75)
	local b = Part(trampoline, true, true, 0, 0, "Bright blue", 10, 0.8, 4.5, true)
	b.CFrame = p.CFrame * CFrame.new(0,0.55,1.4)
	Instance.new("SpecialMesh",b).MeshType = "Sphere"
	for x = -1.25, 1.3, 2.5 do
		local p2 = Part(trampoline, true, true, 0, 0, "Medium grey", 0.5, 0.5, 2, true)
		p2.CFrame = p.CFrame * CFrame.new(x,0,1.5)
		local m = Instance.new("SpecialMesh",p2)
		m.MeshId = "http://www.roblox.com/asset/?id=16606212"
		m.Scale = Vector3.new(0.3, 0.3, 0.7)
	end
	for x = 2.3, 14.3, 1.5 do
		local p2 = Part(trampoline, true, true, 0, 0, "Black", 5+1.5-(x/2.4), 0.3, 1.8, true)
		p2.CFrame = p.CFrame * CFrame.new(0,0.4,x)
		table.insert(strs, p2)
	end
end

trampoline.Parent = workspace