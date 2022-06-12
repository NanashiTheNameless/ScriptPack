script.Name = "CirclingShield"
local gravitizer = game.Players:findFirstChild("rigletto")
local kill = true
local bcolor = "Lime green"
local fcolor = "Insitutional white"
local f2color = "Institutional white"
local radius = 5

local p = Instance.new("Part")
p.Parent = gravitizer.Character
p.Position = gravitizer.Character.Torso.Position
p.Size = Vector3.new(3,3,3)
p.Shape = "Ball"
p.Reflectance = 0
p.Transparency = 0.5
p.CanCollide = false
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
p.Locked = true
p.BrickColor = BrickColor.new(bcolor)

local fire = Instance.new("Fire")
fire.Parent = p
fire.Color = Color3.new(BrickColor.new(f2color).r, BrickColor.new(f2color).g, BrickColor.new(f2color).b)
fire.SecondaryColor = Color3.new(BrickColor.new(f2color).r, BrickColor.new(f2color).g, BrickColor.new(f2color).b)
fire.Size = p:GetMass()/2
fire.Heat = 0

local bp = Instance.new("BodyPosition")
bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
bp.Parent = p

local p2 = p:clone()
p2.Parent = p.Parent
p2.BrickColor = BrickColor.new("Really red")
local p3 = p:clone()
p3.Parent = p.Parent
p3.BrickColor = BrickColor.new("Really blue")

function killer(part)
	if part.Parent then
		if part.Parent.className == "Model" then
			if game.Players:GetPlayerFromCharacter(part.Parent) == gravitizer then return end
			if part.Parent:findFirstChild("Humanoid") ~= nil then
				local hum = part.Parent:findFirstChild("Humanoid")
				part.BrickColor = BrickColor.new("Really black")
				for i = 1, 110 do
					part.Transparency = part.Transparency + 0.01
					wait(0.01)
				end
				part:remove()
			end
		elseif part.Parent.className == "Hat" then
			if game.Players:GetPlayerFromCharacter(part.Parent.Parent) == gravitizer then return end
			part.BrickColor = BrickColor.new("Really black")
			for i = 1, 110 do
				part.Transparency = part.Transparency + 0.01
				wait(0.01)
			end
			part.Parent:remove()
		end
	end
end

if kill == true then
	p.Touched:connect(killer)
	p2.Touched:connect(killer)
	p3.Touched:connect(killer)
end

while true do
	for angle = 1, 360, 3 do
		local cf = gravitizer.Character.Torso.CFrame * CFrame.Angles(math.pi/2, 0, math.rad(angle)) * CFrame.new(radius * 2, 0, 0)
		local cf2 = gravitizer.Character.Torso.CFrame * CFrame.Angles(math.rad(angle), 0, 0) * CFrame.new(0, 0, radius * 2)
		local cf3 = gravitizer.Character.Torso.CFrame * CFrame.Angles(0, 0, math.rad(angle)) * CFrame.new(radius * 2, 0, 0)
		wait()
		bp.position = cf.p
		p2.BodyPosition.position = cf2.p
		p3.BodyPosition.position = cf3.p
	end
	wait(0.1)
end