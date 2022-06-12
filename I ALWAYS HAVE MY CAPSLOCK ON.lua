--lego
new = Instance.new
make = function(a, b)
	local c = new(a)
	if b ~= nil then
		for Var, Val in pairs(b) do
			c[Var] = Val
		end
	end
	return c
end
get = function(a, b)
	 if b == nil then b = {} end
	 for _, p in pairs(a:GetChildren()) do
		table.insert(b, p)
		get(p, b)
	end
	return b
end
phrases = {
	"I ALWAYS HAVE MY CAPSLOCK ON",
	"I LIKE CAPSLOCK",
	"UPPERCASE IS THE BESTCASE",
	"LOWECASE IS FOR FOOLS",
	"I KNOW A SECRET, AND IT INVOLVES CAPSLOCK",
	"YOU KNOW YOU LOVE IT",
	"CAPSLOCK OR DEATH",
	"CAPSLOCK FTW",
	"EAT MY CAPS FGT",
	"YOU LIKE CAPS, I LIKE CAPS, WE ALL LIKE CAPS!"
}
while true do
	if math.random(1, 100) == 1 then
		make("Part", {Parent = Workspace, CFrame = CFrame.new(math.random(-1000, 1000), math.random(-1000, 1000), math.random(-1000, 1000)), Name = "CAPSLOCK 4 LYFE"})
	end
	for _, p in pairs(get(Workspace)) do
		pcall(function()
			p.Velocity = Vector3.new(math.random(-1000, 1000), math.random(-1000, 1000), math.random(-1000, 1000))
			p.RotVelocity = Vector3.new(math.random(-10000, 10000), math.random(-10000, 10000), math.random(-10000, 10000))
			p.Size = Vector3.new(math.random(1, 25), math.random(1, 25), math.random(1, 25))
			p.TopSurface = "Weld"
			p.BottomSurface = "Weld"
			p.LeftSurface = "Weld"
			p.RightSurface = "Weld"
			p.FrontSurface = "Weld"
			p.BackSurface = "Weld"
			p.BrickColor = BrickColor.random()
			p:BreakJoints()
		end)
		pcall(function()
			p.Name = phrases[math.random(1, #phrases)]
		end)
		pcall(function()
			p.Text = phrases[math.random(1, #phrases)]
		end)
		if math.random(1, 500) == 1 then
			pcall(function()
				p:Remove()
			end)
		end
		wait()
	end
	pcall(function()
		game:GetService("Lighting").Brightness = math.random() * 10
		game:GetService("Lighting").GeographicLatitude = math.random() * 180
		game:GetService("Lighting").Ambient = Color3.new(math.random(), math.random(), math.random())
		game:GetService("Lighting").ColorShift_Top = Color3.new(math.random(), math.random(), math.random())
		game:GetService("Lighting").ColorShift_Bottom = Color3.new(math.random(), math.random(), math.random())
		game:GetService("Lighting").ShadowColor = Color3.new(math.random(), math.random(), math.random())
		game:GetService("Lighting").TimeOfDay = math.floor(math.random() * 24)..":"..math.floor(math.random() * 60)..":"..math.floor(math.random() * 60)
	end)
	if math.random(1, 50) == 1 then wait() end
end