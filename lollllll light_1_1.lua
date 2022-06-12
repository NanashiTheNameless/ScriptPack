Me = game.Players.yfc
char = Me.Character
Torso = char.Torso
local Background = BrickColor.new("Lime green")
local Color = BrickColor.new("Lime green")

local pos = Vector3.new(-100, 1, 0)

xs = 5
xz = 5
x = xs*10
z = xz*10

local dist = xs*5

for _,v in pairs(workspace:children()) do if v.Name == "Lolz" then v:remove() end end

local Model = Instance.new("Model",workspace)
Model.Name = "Lolz"

function Part(Par, Anc, Colli, Tran, Ref, Col, Siz)
	local p = Instance.new("Part")
	p.formFactor = "Custom"
	p.TopSurface = 0
	p.BottomSurface = 0
	p.Transparency = Tran
	p.Reflectance = Ref
	p.Anchored = Anc
	p.CanCollide = Colli
	p.BrickColor = Col
	p.Size = Siz
	p.Locked = true
	p.Parent = Par
	p:BreakJoints()
	return p
end

local briks = {}

for x2 = 0, x, xs do
	for z2 = 0, z, xz do
		local p = Part(Model, true, true, 0, 0, Color, Vector3.new(xs, 1, xz))
		local p2 = Part(Model, true, true, 1, 0, BrickColor.new("Really black"), Vector3.new(xs, 1, xz))
		Instance.new("BlockMesh",p2).Scale = Vector3.new(1.002, 1.002, 1.002)
		Instance.new("BlockMesh",p)
		p.CFrame = CFrame.new(pos) * CFrame.new(x2, 0, z2)
		p2.CFrame = p.CFrame
		table.insert(briks, {p, p2})
	end
end

while true do
	for _,v in pairs(briks) do
		local magn = (v[1].Position - Torso.Position+Vector3.new(0,3,0)).magnitude
		if magn <= dist then
		magn = magn/dist
		v[2].Transparency = (1-magn)-(magn-1)
		else
		v[2].Transparency = 0
		end
	end
	wait()
end
