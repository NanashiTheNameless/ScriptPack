--[[SoulCycle~~~~~~~~~~~~~~~~~~Made by xSoulStealerx~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~]]
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}

cs = {}
for i=0,63,1 do
	table.insert(cs, BrickColor.palette(i).Name)
end

for i = #cs, #cs/2, -1 do
	table.remove(cs, i)
end

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
	w.C1 = CFrame.Angles(a,b,c) * CFrame.new(x,y,z)
	return w
end

function weld(model)
	local parts = model:children()
	local last = nil
	for i,v in pairs(parts) do
		if last ~= nil then
			local w = Weld(last, v, 0, 0, 0, 0, 0, 0)
			w.C0 = last.CFrame:toObjectSpace(v.CFrame)
		end
		last = v
	end
end

_G.Circle = function(sn)

cycle = Instance.new("Model",workspace)
cycle.Name = "SoulCycle"
main = Vector3.new(0, 20, 0)

for a, v in pairs(cs) do
	wait(0.04)
	for i = 0, 360, 15 do
		local p = Part(cycle, true, true, 0, 0, v, 1, 1, 1, true)
		p.CFrame = CFrame.new(main) * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, (#cs - a)/sn+3)
		p.Size = Vector3.new((p.Position - main).magnitude/3.4+0.4, 1/(sn/2), 1/sn)
		p.CFrame = CFrame.new(main) * CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, (#cs-a)/sn+3)
	end
end

weld(cycle)
wait(0.4)
for i,v in pairs(cycle:children()) do
	v.Anchored = false
end
end
