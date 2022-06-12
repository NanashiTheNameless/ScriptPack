-- [[ Grids are cool ]] --


Grid = {}
Grid.Admins = {"mcfirno10", "DarkShadow6"}
Grid.BrickColor = BrickColor.new("Dark green")
Grid.Transparency = 0
Grid.Position = Vector3.new(0, 2, 0)
Grid.Model = nil
Grid.Debounce = false


Make = function(SizeX, SizeY)
	pcall(function() Grid.Model:Remove() end)
	Grid.Model = Instance.new("Model", Workspace)
	Grid.Model.Name = "Grid"
	for x = 1, SizeX do
		for z = 1, SizeY do
			local GridPart = Instance.new("Part", Grid.Model)
			GridPart.Name = "GridPart " ..x.. " " ..z
			GridPart.BottomSurface = 0
			GridPart.BrickColor = Grid.BrickColor
			GridPart.Transparency = Grid.Transparency
			GridPart.Anchored = true
			GridPart.FormFactor = "Custom"
			GridPart.Size = Vector3.new(4, 1, 4)
			GridPart.CFrame = CFrame.new(Grid.Position.x + (x * 4), Grid.Position.y, Grid.Position.z + (z * 4))
			local SelectionBox = Instance.new("SelectionBox", GridPart)
			SelectionBox.Name = "SelectionBox"
			SelectionBox.Adornee = GridPart
			SelectionBox.Color = Grid.BrickColor
			SelectionBox.Transparency = Grid.Transparency
		end
		wait()
	end
end


Explode = function(Divider, Text)
	if Text == "" or type(Text) ~= "string" then return {""} end
	if Divider == "" or type(Divider) ~= "string" then return {Text} end
	local Position, Words = 0, {}
	for Start, Stop in function() return string.find(Text, Divider, Position, true) end do
		table.insert(Words, string.sub(Text, Position, Start - 1))
		Position = Stop + 1
	end
	table.insert(Words, string.sub(Text, Position))
	return Words
end


function ChatterBox(Msg)
	if Grid.Debounce == true then return end
	Grid.Debounce = true
	if string.sub(Msg, 0, 4) == "/in/" then
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if string.match(Player.Name:lower(), string.sub(Msg, 5)) then
				pcall(function() Player.Character.Torso.CFrame = CFrame.new(Grid.Position + Vector3.new(4, 6, 4)) end)
				wait(0.5)
			end
		end
	elseif string.sub(Msg, 1, 6) == "/make/" then
		local Size = Explode("/", string.sub(Msg, 7))
		local X, Z = tonumber(Size[1]), tonumber(Size[2])
		if X ~= nil and Z ~= nil then
			Make(tonumber(Size[1]), tonumber(Size[2]))
		end
	elseif string.sub(Msg, 0, 1) == "/" and Grid.Model ~= nil then
		for x, Part in pairs(Grid.Model:GetChildren()) do
			local OldTransparency = Part.Transparency
			coroutine.wrap(function()
				for i = 0, 1, 0.05 do
					Part.CFrame = CFrame.new(Part.CFrame.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(math.cos(i * (math.pi / 2)) * 180), 0)
					Part.Transparency = OldTransparency + ((1 - OldTransparency) * i)
					Part.SelectionBox.Transparency = OldTransparency + ((1 - OldTransparency) * i)
					wait()
				end
				Part.Transparency = 1
				Part.SelectionBox.Transparency = 1
				wait(0.5)
				if string.sub(Msg, 1, 7) == "/color/" then
					Grid.BrickColor = BrickColor.new(tostring(tonumber(string.sub(Msg, 8))) == string.sub(Msg, 8) and tonumber(string.sub(Msg, 8)) or string.sub(Msg, 8))
					Part.BrickColor = Grid.BrickColor
					Part.SelectionBox.Color = Grid.BrickColor
				elseif string.sub(Msg, 1, 14) == "/transparency/" then
					Grid.Transparency = tonumber(string.sub(Msg, 15)) or 0
				elseif string.sub(Msg, 1, 6) == "/move/" then
					local Position = Explode("/", string.sub(Msg, 7))
					local X, Y, Z = tonumber(Position[1]), tonumber(Position[2]), tonumber(Position[3])
					if X ~= nil and Y ~= nil and Z ~= nil then
						Grid.Position = Vector3.new(X, Y, Z)
						local Offset = Explode(" ", Part.Name)
						Part.CFrame = CFrame.new(Grid.Position.x + (tonumber(Offset[2]) * 4), Grid.Position.y, Grid.Position.z + (tonumber(Offset[3]) * 4))
					end
				end
				for i = 1, 0, -0.05 do
					Part.CFrame = CFrame.new(Part.CFrame.p) * CFrame.fromEulerAnglesXYZ(0, math.rad(math.cos(i * (math.pi / 2)) * -180), 0)
					Part.Transparency = Grid.Transparency + ((1 - Grid.Transparency) * i)
					Part.SelectionBox.Transparency = OldTransparency + ((1 - OldTransparency) * i)
					wait()
				end
				Part.CFrame = CFrame.new(Part.CFrame.p)
				Part.Transparency = Grid.Transparency
			end)()
			wait()
		end
	end
	wait(0.1)
	Grid.Debounce = false
end


for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
	for i = 1, #Grid.Admins do
		if Player.Name == Grid.Admins[i] then
			Player.Chatted:connect(ChatterBox)
		end
	end
end


Make(10, 10)