me = game.Players.xSoulStealerx

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "Castle"
script.Parent = h
end

bin = script.Parent
hold = false

bin.Selected:connect(function(mouse)
	mouse.Button1Down:connect(function()
		startpoint = Instance.new("Part",me.Character)
		startpoint.Size = Vector3.new(1,1,1)
		startpoint.Anchored = true
		startpoint.CFrame = CFrame.new(mouse.Hit.p)
		gopoint = Instance.new("Part",me.Character)
		gopoint.Size = Vector3.new(1,1,1)
		gopoint.Anchored = true
		gopoint.CFrame = CFrame.new(mouse.Hit.p)
		hold = true
		while hold do
			gopoint.CFrame = CFrame.new(mouse.Hit.p)
			wait()
		end
	end)
	mouse.Button1Up:connect(function()
		hold = false
		local dist = (startpoint.Position - gopoint.Position).magnitude
		local lastangle = 0
		local wall = Instance.new("Part")
		wall.formFactor = "Custom"
		wall.Size = Vector3.new(dist/3,dist/4,dist/8)
		wall.Anchored = true
		wall.TopSurface = 0
		wall.BottomSurface = 0
		wall.BrickColor = BrickColor.new("Dark grey")
		for i=1, math.pi*2 + 0.3, 0.3 do
			wait()
			local wal = Instance.new("Part",workspace)
			wal.formFactor = "Custom"
			wal.Size = Vector3.new(dist/3,dist/4,dist/8)
			wal.Anchored = true
			wal.TopSurface = 0
			wal.BottomSurface = 0
			wal.BrickColor = BrickColor.new("Dark grey")
			wal.CFrame = CFrame.new(startpoint.Position) * CFrame.Angles(0,i,0)
			wal.CFrame = wal.CFrame * CFrame.new(0,wal.Size.Y/2,dist)
			local tip = wal:clone()
			tip.Parent = workspace
			tip.Size = Vector3.new(wal.Size.X/2.3,wal.Size.Y/3,wal.Size.Z/2)
			tip.CFrame = wal.CFrame * CFrame.new(0,wal.Size.Y/2,wal.Size.Z/2)
			lastangle = i
		end
		local door = wall:clone()
		door.Size = Vector3.new(dist/12,dist/4,dist/3)
		door.Parent = workspace
		door.BrickColor = BrickColor.new("Reddish brown")
		door.CFrame = CFrame.new(startpoint.Position) * CFrame.Angles(0,lastangle + 0.18,0)
		door.CFrame = door.CFrame * CFrame.new(0,door.Size.Y/2,dist*1.15)
		local door2 = door:clone()
		door2.Parent = workspace
		door2.CFrame = CFrame.new(startpoint.Position) * CFrame.Angles(0,lastangle + 0.7,0)
		door2.CFrame = door2.CFrame * CFrame.new(0,door2.Size.Y/2,dist*1.15)
		startpoint:remove()
		gopoint:remove()
	end)
end)
