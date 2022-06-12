function Fade(p, color)
	local color2 = p.BrickColor.Color
	local r, g, b, r2, g2, b2 = color.r, color.g, color.b, color2.r, color2.g, color2.b
	local r3, g3, b3 = r-r2, g-g2, b-b2
	for i = 1, 0, -0.04 do
		p.BrickColor = BrickColor.new(r-r3*i, g-g3*i, b-b3*i)
		wait()
	end
end

local p = Instance.new("Part",workspace)
p.Anchored = true
p.Position = Vector3.new(0, 1, 0)

while true do
Fade(p, Color3.new(1, 1, 1))
Fade(p, Color3.new(0, 0, 0))
Fade(p, Color3.new(1, 1, 1))
Fade(p, Color3.new(1, 0.5, 1))
Fade(p, Color3.new(0.5, 0, 0.5))
Fade(p, Color3.new(0, 0.5, 0))
Fade(p, Color3.new(0, 0, 0))
end
