me = game.Players.yfc



if script.Parent.className ~= "HopperBin" then

h = Instance.new("HopperBin")

h.Parent = me.Backpack

h.Name = "Castle"

script.Parent = h

end



bin = script.Parent



hold = false



wallbricks = {}



bin.Selected:connect(function(mouse)

	mouse.Button1Down:connect(function()

		hold = true

		local br = Instance.new("Part",me.Character)

		br.formFactor = 0

		br.Size = Vector3.new(1,1,1)

		br.CanCollide = false

		br.Anchored = true

		br.TopSurface = 0

		br.BottomSurface = 0

		br.CFrame = CFrame.new(mouse.Hit.p)

		table.insert(wallbricks,br)

		while hold do

			wait()

			br.CFrame = CFrame.new(mouse.Hit.p)

		end

	end)

	mouse.Button1Up:connect(function()

		hold = false

	end)

	mouse.KeyDown:connect(function(key)

		key = key:lower()

		if key == "q" then

			local br = Instance.new("Part",me.Character)

			br.formFactor = 0

			br.Size = Vector3.new(1,1,1)

			br.CanCollide = false

			br.Anchored = true

			br.TopSurface = 0

			br.BottomSurface = 0

			br.CFrame = CFrame.new(wallbricks[1].Position)

			table.insert(wallbricks,br)

			for i=1, #wallbricks do

				local brick1 = wallbricks[i]

				local brick2 = wallbricks[i+1]

				local dist = (brick1.Position - brick2.Position).magnitude

				local wall = Instance.new("Part")

				wall.Parent = workspace

				wall.formFactor = 0

				wall.Size = Vector3.new(1,8,dist)

				wall.Anchored = true

				wall.TopSurface = 0

				wall.BottomSurface = 0

				wall.CFrame = CFrame.new(brick1.Position, brick2.Position)

				wall.CFrame = wall.CFrame * CFrame.new(0,wall.Size.Y/2,-dist/2)

			end

			for i=1, #wallbricks do

				wallbricks[1]:remove()

				table.remove(wallbricks, 1)

			end

		end

	end)

end)

