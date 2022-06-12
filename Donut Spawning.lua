MainScale = 1

function Part(P, Anch, Coll, Tran, Ref, Col, Size, Name)
	local p = Instance.new("Part")
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Transparency = Tran
	p.Reflectance = Ref
	p.CanCollide = Coll
	p.Anchored = Anch
	p.BrickColor = BrickColor.new(Col)
	p.formFactor = "Custom"
	p.Size = Size
	if Name then p.Name = Name end
	p.Parent = P
	p.Locked = true
	p:BreakJoints()
	return p
end

V3 = Vector3.new
CN = CFrame.new
CA = CFrame.Angles
MR = math.rad
MRA = math.random

function Weld(P0, P1, CF1, CF2)
	if P0 and P1 and CF1 and CF2 then
		local w = Instance.new("Weld")
		w.Part0 = P0
		w.Part1 = P1
		w.C0 = CF1:toObjectSpace(CF2)
		w.Parent = P0
	end
end

function makeDonut(pos, Scale)
	local m = Instance.new("Model",workspace)
	m.Name = "Donut"
	local Donuts = {}
	local prevpos = nil
	local prevpart = nil
	for x = 0, 360, 20 do
		wait()
		for y = 0, 360, 20 do
			local s = math.abs(y-180)
			local col = "Brown"
			if (y-180) <= -40 and (y-180) >= -120 then
				col = "Pink"
			end
			local p = Part(m, false, true, 0, 0, col, V3((1.9+(s/43.5))*Scale, 1.95*Scale, 1*Scale))
			local cf = pos * CA(0, MR(x), 0) * CN(0, 0, -10*Scale) * CA(MR(y), 0, 0) * CN(0, 0, -5*Scale)
			p.CFrame = cf
			Weld(prevpart, p, prevpos, cf)
			prevpos = cf
			prevpart = p
			table.insert(Donuts, p)
		end
	end
	return Donuts
end

for i = 1, 1 do
local Pos = CN(MRA(-50,50), MRA(100,140), MRA(-50,50)) * CA(MR(90), 0, 0)
local a = makeDonut(Pos, MainScale)
end

--[[for i,v in pairs(game.Players:GetPlayers()) do
	coroutine.resume(coroutine.create(function()
		for i = 1, 5 do
			v.Character.Torso.CFrame = Pos * CN(0, 0, -10*MainScale)
			wait()
		end
	end))
end]]
