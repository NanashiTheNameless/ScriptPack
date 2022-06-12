scale = 100

maxscale = 500

if scale > maxscale then scale = maxscale end 
main = Vector3.new(40, 1.5, 0)

Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
for i,v in pairs(workspace:children()) do if v.Name == "xS Tra" then v:remove() end end 
trampoline = Instance.new("Model",workspace)
trampoline.Name = "xS Tra"

local strs = {}


realscale = scale/2
size1 = realscale/10
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

for i=0, 360, 20 do
	
	local p = Part(trampoline, true, true, 0, 0, "Really black", realscale*0.37, size1, size1, true)
	p.CFrame = CFrame.new(main) * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, -realscale)
	local p2 = Part(trampoline, true, true, 0, 0, "Bright yellow", realscale*0.34, size1, realscale*1.3, true)
	p2.CFrame = p.CFrame * CFrame.new(0, 0, (realscale*1.3))
end

for i = -realscale/2.3, realscale/2.3+0.01, realscale/2.3*2 do
	local p = Part(trampoline, true, true, 0, 0, "Really black", realscale*0.55, size1, size1, true)
	p.CFrame = CFrame.new(main) * CFrame.new(i+size1, 0.1, realscale*0.15)
	for x = -110, 110, 20 do
		
		local p2 = Part(trampoline, true, true, 0, 0, "Really black", realscale*0.116, size1, size1, true)
		p2.CFrame = p.CFrame * CFrame.new(0, 0, realscale*0.116) * CFrame.Angles(0, math.rad(x), 0) * CFrame.new(0, 0, realscale*0.55/2)
		local p3 = Part(trampoline, true, true, 0, 0, "Institutional white", realscale*0.14, size1, realscale*0.25, true)
		p3.CFrame = p2.CFrame * CFrame.new(0, -0.03, -(p3.Size.Z/2)-(p2.Size.Z/2))
	end
	for x = 0, 360, 40 do
		
		local p2 = Part(trampoline, true, true, 0, 0, "Really black", size1/2.7, size1, size1*2, true)
		p2.CFrame = p.CFrame * CFrame.new(-size1*1.3, 0, size1*2.4) * CFrame.Angles(0, math.rad(x), 0)
	end
end

local p = Part(trampoline, true, true, 0, 0, "Really black", realscale*1.4, size1, size1, true)
p.CFrame = CFrame.new(main) * CFrame.new(size1*1.2, 0.1, -size1*0.8)

for i = -90, 90, 20 do
	
	local p2 = Part(trampoline, true, true, 0, 0, "Really black", realscale*0.255, size1, size1, true)
	p2.CFrame = p.CFrame * CFrame.new(-size1*0.7, 0, -size1*0.8) * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, -p.Size.X/2.1)
	local p3 = Part(trampoline, true, true, 0, 0, "Tr. Red", realscale*0.25, size1, p.Size.X/2, true)
	p3.CFrame = p2.CFrame * CFrame.new(0, -0.03, p3.Size.Z/2)
end

for i = -50, 90, 20 do
	
	local p2 = Part(trampoline, true, true, 0, 0, "Light reddish violet", size1*1.45, size1, size1*4.5, true)
	p2.CFrame = p.CFrame * CFrame.new(-size1*2.8, -0.015, -size1*6.5) * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, p2.Size.Z/2.6)
end

wait(5) print(trampoline.Parent)