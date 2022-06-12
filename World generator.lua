bricks = {}
modul = Instance.new("Model",workspace)
modul.Name = "Landscape"
colors = {"Earth green", "Bright blue"}
x = 0
z = 0
max = 100
repeat
	local p = Instance.new("Part",modul)
	p.formFactor = "Custom"
	p.BrickColor = BrickColor.new(colors[math.random(1,#colors)])
	p.Size = Vector3.new(4,1,4)
	if p.BrickColor.Name == "Earth green" then
		p.Size = Vector3.new(4,math.random(10,25)/10,4)
	end
	p.Anchored = true
	p.CFrame = CFrame.new(x,4,z)
	Instance.new("BlockMesh",p)
	table.insert(bricks,p)
	x = x + p.Size.X
	if x > max then
		z = z + p.Size.Z
		x = 0
	end
until z > max
wait(0.3)
for _,v in pairs(bricks) do
	wait()
	for _,k in pairs(bricks) do
		if (v.Position - k.Position).magnitude < v.Size.X*2 then
			local hm = math.random(1,2)
			if hm == 1 then
				k.BrickColor = v.BrickColor
				if k.BrickColor == BrickColor.new("Earth green") then
					local lol = v.Size.Y*10
					local h = k.CFrame
					k.Size = Vector3.new(4,math.random(lol*0.85,lol*1.14)/10,4)
					k.CFrame = h
				end
			end
		end
	end
end
