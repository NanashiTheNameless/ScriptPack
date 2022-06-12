surfs = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
tiles = {"Brown", "Reddish brown", "Dark grey", "Medium grey"}

scale = 3
floors = 20
length = 15

main = Vector3.new(100,0,0)

for y = 0, floors*scale, scale do
	for a = 0, 270, 90 do
		for x = -length, length, scale*2 do
			local p = Instance.new("Part")
			for i,v in pairs(surfs) do
				p[v] = "Weld"
			end
			p.BrickColor = BrickColor.new(tiles[math.random(1,#tiles)])
			p.Anchored = false
			p.Name = "Brick wall"
			p.formFactor = "Custom"
			p.Size = Vector3.new(scale*2,scale,scale)
			p.CFrame = CFrame.new(main) * CFrame.Angles(0,math.rad(a),0) * CFrame.new(x, y, length*1.06)
			p.Parent = workspace
			p:BreakJoints()
			p:MakeJoints()
		end
	end
end
