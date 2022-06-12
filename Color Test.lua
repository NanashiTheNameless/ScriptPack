R, G, B = 255, 0, 0
Mode = 2
Add = 1
Hint = Instance.new("Hint")
while true do
	if Mode == 1 then
		R = R + Add
		B = B - Add
		if R >= 255 then
			Mode = 2
			R = 255
			B = 0
		end
	elseif Mode == 2 then
		R = R - Add
		G = G + Add
		if G >= 255 then
			Mode = 3
			R = 0
			G = 255
		end
	elseif Mode == 3 then
		G = G - Add
		B = B + Add
		if B >= 255 then
			Mode = 1
			G = 0
			B = 255
		end
	end
	local Color = BrickColor.new(Color3.new(R / 255, G / 255, B / 255))
	Workspace.Base.BrickColor = BrickColor.new(Color3.new(R / 255, G / 255, B / 255))
	Hint.Text = string.format("Color: %i Red, %i Green, %i Blue  |  BrickColor: %s", R, G, B, BrickColor.new(Color3.new(R / 255, G / 255, B / 255)).Name)
	Hint.Parent = Workspace
	wait()
end