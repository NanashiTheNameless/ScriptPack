-- Submine version 3 --
-- TODO: fixme areas, local digging
script.Name = "Submine"
Submine = {}
_G.Submine = {}
_G.Submine.GetTable = function() return Submine end

-- Functions --
Submine.Round = function(i) 
	if i >= 0 then
		return math.floor(i + 0.5) 
	else
		return math.ceil(i - 0.5)
	end
end

-- BasePart declaration --
BasePartSource = [[BaseSize = 6
BasePart = Instance.new("Part")
BasePart.Name = "Object"
BasePart.TopSurface = 0
BasePart.BottomSurface = 0
BasePart.FormFactor = "Custom"
BasePart.Size = Vector3.new(BaseSize, BaseSize, BaseSize)
BasePart.Anchored = true
BasePart.Locked = true]]
loadstring(BasePartSource)()

-- Settings --
Submine.Settings = {}
Submine.Settings.MaterialsEnabled = false
Submine.Settings.ServerSide = false
Submine.Settings.ChunkSize = 15
Submine.Settings.LoadPreset = function(Preset)
	if Preset == 1 or Preset == "Islands" then
		Submine.Settings.WaterLevel = 3
		Submine.Settings.Grade = {-3, 2}
		Submine.Settings.MaxGrade = 3
		Submine.Settings.Flatness = 2
		Submine.Settings.SampleRadius = 1
	elseif Preset == 2 or Preset == "Mountains" then
		Submine.Settings.WaterLevel = 2
		Submine.Settings.Grade = {-3, 3}
		Submine.Settings.MaxGrade = 4
		Submine.Settings.Flatness = 1
		Submine.Settings.SampleRadius = 1
	elseif Preset == 3 or Preset == "Big Mountains" then
		Submine.Settings.WaterLevel = 5
		Submine.Settings.Grade = {-5, 5}
		Submine.Settings.MaxGrade = 5
		Submine.Settings.Flatness = 1
		Submine.Settings.SampleRadius = 1
	elseif Preset == 4 or Preset == "Flatlands" then
		Submine.Settings.WaterLevel = 0
		Submine.Settings.Grade = {-3, 2}
		Submine.Settings.MaxGrade = 2
		Submine.Settings.Flatness = 1
		Submine.Settings.SampleRadius = 3
	else
		Submine.Settings.WaterLevel = 0
		Submine.Settings.Grade = {0, 0}
		Submine.Settings.MaxGrade = 0
		Submine.Settings.Flatness = 1
		Submine.Settings.SampleRadius = 1
	end
end
Submine.Settings.LoadPreset(0)

-- World tables --
Submine.World = Instance.new("Model", Submine.Settings.ServerSide == true and Workspace or nil)
Submine.ObjectData = Instance.new("Configuration")
Submine.ObjectData.Name = "ObjectData"
do
	local Dirt = BasePart:Clone()
	Dirt.Parent = Submine.ObjectData
	Dirt.Name = "Dirt"
	Dirt.Material = Submine.Settings.MaterialsEnabled == false and "Plastic" or "Ice"
	Dirt.BrickColor = BrickColor.new("Reddish brown")

	local Grass = BasePart:Clone()
	Grass.Parent = Submine.ObjectData
	Grass.Name = "Grass"
	Grass.Material = Submine.Settings.MaterialsEnabled == false and "Plastic" or "Grass"
	Grass.BrickColor = BrickColor.new("Dark green")

	local Stone = BasePart:Clone()
	Stone.Parent = Submine.ObjectData
	Stone.Name = "Stone"
	Stone.Material = Submine.Settings.MaterialsEnabled == false and "Plastic" or "Slate"
	Stone.BrickColor = BrickColor.new("Medium stone grey")

	local Water = BasePart:Clone()
	Water.Parent = Submine.ObjectData
	Water.Name = "Water"
	Water.Transparency = 0.5
	Water.BrickColor = BrickColor.new("Bright blue")
	Water.CanCollide = false

	local Sand = BasePart:Clone()
	Sand.Parent = Submine.ObjectData
	Sand.Name = "Sand"
	Sand.Material = Submine.Settings.MaterialsEnabled == false and "Plastic" or "Concrete"
	Sand.BrickColor = BrickColor.new("Pastel brown")
end

-- ToolSource declaration --
ToolSource = BasePartSource.. "\n" ..[[
loadstring(game:GetService("InsertService"):LoadAsset(62991657)["PacketFunctions"].Value)()
if game:GetService("Players").LocalPlayer == nil then return end
Player = script.Parent.Parent.Parent
Selected = false
Button1Down = false
RenderData = 0
function Explode(Divider, Text)
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
function Render()
	pcall(function() Workspace.CurrentCamera.ObjectModel:Remove() end)
	RenderData = nil
	SendToServer([=[SendToClient("getfenv().RenderData = \"" ..(function()
	if _G.Submine:GetTable().Settings.ServerSide == false then
		local Render = nil
		local Chunks = {}
		local PositionToChunk = _G.Submine:GetTable().PositionToChunk
		local GetChunk = _G.Submine:GetTable().GetChunk
		local MasterChunk = PositionToChunk(Vector3.new(]=] ..tostring(Player.Character.Torso.Position).. [=[))
		table.insert(Chunks, MasterChunk)
		table.insert(Chunks, GetChunk(MasterChunk.LocalPosition + Vector3.new(1, 0, 0)))
		table.insert(Chunks, GetChunk(MasterChunk.LocalPosition + Vector3.new(-1, 0, 0)))
		table.insert(Chunks, GetChunk(MasterChunk.LocalPosition + Vector3.new(0, 1, 0)))
		table.insert(Chunks, GetChunk(MasterChunk.LocalPosition + Vector3.new(0, -1, 0)))
		table.insert(Chunks, GetChunk(MasterChunk.LocalPosition + Vector3.new(0, 0, 1)))
		table.insert(Chunks, GetChunk(MasterChunk.LocalPosition + Vector3.new(0, 0, -1)))
		for i = 1, Chunks do
			for _, Object in pairs(Chunks[i]) do
				Render = (Render == nil and "" or Render .. string.char(1)) .. tostring(Object.Position) .. string.char(2) .. tostring(Object.Type) .. string.char(2)
			end
		end
		return Render
	else
		return 1
	end
end)().. "\"", "Submine Render Local")]=], "Submine Render")
	wait(wait())
	if type(RenderData) == "string" then
		local Model = Instance.new("Model", Workspace.CurrentCamera)
		Model.Name = "ObjectModel"
		for _, Part1 in pairs(Explode(string.char(1), RenderData)) do
			local Part2 = Explode(string.char(2), Part1)
			local Position = Explode(", ", Part2[1])
			local NewPart = Player.SubmineData.ObjectData[Part2[2] ]:Clone()
			NewPart.CFrame = CFrame.new(tonumber(Position[1]), tonumber(Position[2]), tonumber(Position[3]))
			NewPart.Parent = Model
		end
	end
	RenderData = 0
end
coroutine.wrap(function()
	while script.Parent ~= nil do
		Render()
		wait(10)
	end
end)()
script.Parent.Selected:connect(function(Mouse)
	if Selected == true then return end
	Selected = true
	local Gui = Instance.new("ScreenGui", Player.PlayerGui)
	Gui.Name = "Submine Helper"
	local Popup = Instance.new("TextLabel", Gui)
	Popup.Name = "Popup"
	Popup.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
	Popup.BorderColor3 = Color3.new(0, 0, 0)
	Popup.Size = UDim2.new(0, 200, 0, 75)
	Popup.TextWrap = true
	Popup.FontSize = "Size10"
	coroutine.wrap(function()
		local TickCheck1 = nil
		Popup.Changed:connect(function(Property)
			if Property == "Text" then
				if Popup.Text:sub(0, 1) == string.char(2) then
					Popup.FontSize = "Size10"
				else
					Popup.FontSize = "Size18"
				end
				TickCheck1 = tick()
				local TickCheck2 = TickCheck1
				wait(2.5)
				if TickCheck1 == TickCheck2 then
					Popup.Text = string.format([=[<J| E: %s (%i) |K>
<N| Q: %s (%i) |M>
(JK and NM don't work (still))]=],
						Player.SubmineData.SelectedItem.Value,
						Player.SubmineData.ItemData[Player.SubmineData.SelectedItem.Value].Value,
						Player.SubmineData.SelectedResource.Value,
						Player.SubmineData.ResourceData[Player.SubmineData.SelectedResource.Value].Value
					)
					Popup.FontSize = "Size10"
				end
			end
		end)
		Popup.Text = "Welcome to\nSubmine"
	end)()
	local Selection = Instance.new("SurfaceSelection", Gui)
	Selection.Color = BrickColor.new("Really black")
	coroutine.wrap(function()
		while Popup.Parent ~= nil and Selected == true do
			pcall(function() Popup.Position = UDim2.new(0, Mouse.X + 30, 0, Mouse.Y + 30) end)
			wait()
		end
	end)()
	Gui.Parent = Player.PlayerGui
	Mouse.Move:connect(function()
		Selection.Adornee = nil
		if Mouse.Target ~= nil then
			if Mouse.Target.Parent.Name == "ObjectModel" then
				Selection.Adornee = Mouse.Target
				Selection.TargetSurface = Mouse.TargetSurface
			end
		end
	end)
	Mouse.Button1Down:connect(function()
		if Button1Down == true then return end
		Button1Down = true
		Selection.Color = BrickColor.new("Really red")
	end)
	Mouse.Button1Up:connect(function()
		if Button1Down == false then return end
		Button1Down = false
		Selection.Color = BrickColor.new("Really black")
		if Mouse.Target ~= nil then
			if Mouse.Target.Parent.Name == "ObjectModel" then
				Popup.Text = "Got resource"
				Player.SubmineData.ResourceData[Mouse.Target.Name].Value = Player.SubmineData.ResourceData[Mouse.Target.Name].Value + 1
				SendToServer([=[if _G.Submine:GetTable().Settings.ServerSide == true then
					Part:Remove()
				else
					--fixme
					SendToClient("Render()", "Render")
				end]=], "Remove", {Mouse.Target, "Part"})
			end
		end
	end)
	Mouse.KeyDown:connect(function(Key)
		Key = Key:lower()
		if Key == "q" then
			if KeyQDown == true then return end
			if Player.SubmineData.ResourceData[Player.SubmineData.SelectedResource.Value].Value <= 0 then
				Popup.Text = "No resources left"
				return
			end
			KeyQDown = true
			Selection.Color = BrickColor.new("Bright green")
			local Ghost = BasePart:Clone()
			Ghost.Transparency = 0.5
			Ghost.Material = "Plastic"
			Ghost.BrickColor = BrickColor.new("Institutional white")
			while Selected == true and KeyQDown == true and Mouse.Target ~= nil do
				if Mouse.Target.Parent.Name == "ObjectModel" then
					Ghost.Parent = Player.Character
					Ghost.CFrame = Mouse.Target.CFrame * CFrame.new(Vector3.FromNormalId(Mouse.TargetSurface) * BaseSize)
					wait()
				else
					break
				end
			end
			Ghost:Remove()
			Popup.Text = "Unable to place"
			if Mouse.Target ~= nil then
				if Mouse.Target.Parent.Name == "ObjectModel" then
					Popup.Text = "Used resource"
					Player.SubmineData.ResourceData[Player.SubmineData.SelectedResource.Value].Value = Player.SubmineData.ResourceData[Player.SubmineData.SelectedResource.Value].Value - 1
					SendToServer([=[if _G.Submine:GetTable().Settings.ServerSide == true then
						local NewPart = NewPart:Clone()
						NewPart.CFrame = Part.CFrame * CFrame.new(Vector3.FromNormalId(Mouse.TargetSurface) * BaseSize)
						NewPart.Parent = Part.Parent
					else
						--fixme
						SendToClient("Render()", "Render")
					end]=], "Create", {Mouse.Target, "Part", Player.SubmineData.ObjectData[Player.SubmineData.SelectedResource.Value], "NewPart"})
				end
			end
			Selection.Color = BrickColor.new("Really black")
		end
		if Key == "e" then
			if KeyEDown == true then return end
			if Player.SubmineData.ItemData[Player.SubmineData.SelectedItem.Value].Value <= 0 then
				Popup.Text = "No items left"
				return
			end
			KeyEDown = true
			Selection.Color = BrickColor.new("Neon orange")
			if Player.SubmineData.SelectedItem.Value == "Bomb" then
				local ExplosionGhost = Instance.new("Part")
				ExplosionGhost.Name = "Explosion Ghost"
				ExplosionGhost.BrickColor = BrickColor.new("Neon orange")
				ExplosionGhost.TopSurface = 0
				ExplosionGhost.BottomSurface = 0
				ExplosionGhost.FormFactor = "Custom"
				ExplosionGhost.Size = Vector3.new(0.2, 0.2, 0.2)
				ExplosionGhost.Anchored = true
				local Mesh = Instance.new("SpecialMesh", ExplosionGhost)
				Mesh.MeshType = "Sphere"
				Mesh.Scale = Vector3.new()
				while Selected == true and KeyEDown == true and Mouse.Target ~= nil do
					if Mouse.Target.Parent.Name == "ObjectModel" then
						ExplosionGhost.Parent = Workspace.CurrentCamera
						ExplosionGhost.CFrame = Mouse.Target.CFrame
						ExplosionGhost.Mesh.Scale = 10 / 0.2 * ((((math.cos(tick() * 5) + 1) / 2) * 0.5) + 0.5) * Vector3.new(1, 1, 1)
						ExplosionGhost.Transparency = (((math.cos(tick() * 5) + 1) / 2) * 0.5)
						wait()
					else
						break
					end
				end
				ExplosionGhost:Remove()
				if Mouse.Target ~= nil then
					if Mouse.Target.Parent.Name == "ObjectModel" then
						Popup.Text = "Used bomb"
						Player.SubmineData.ItemData.Bomb.Value = Player.SubmineData.ItemData.Bomb.Value - 1
						local Position = tostring(Mouse.Hit.p)
						local QuickScript = game:GetService("InsertService"):LoadAsset(54471119)["QuickScript"]
						QuickScript.DynamicSource.Value = [=[local Position = Vector3.new(]=] ..Position.. [=[)
for i = 1, 5 do
	if _G.Submine:GetTable().Settings.ServerSide == true then
		for _, Part in pairs(Workspace.Submine.ObjectModel:GetChildren()) do
			local Distance = (Part.Position - Position).magnitude
			if Distance < i * ]=] ..BaseSize.. [=[ then
				Part:Remove()
				if math.random(1, 2) == 1 then wait() end
			end
		end
	else
		--fixme
		SendToClient("Render()", "Render")
	end
end
script:Remove()]=]
						QuickScript.Debug.Value = false
						QuickScript.Parent = Workspace
					end
				end
			end
			Selection.Color = BrickColor.new("Really black")
		end
	end)
	Mouse.KeyUp:connect(function(Key)
		Key = Key:lower()
		if Key == "q" then
			KeyQDown = false
		elseif Key == "e" then
			KeyEDown = false
		end
	end)
end)
script.Parent.Deselected:connect(function()
	if Selected == false then return end
	Selected = false
	pcall(function() Player.PlayerGui["Submine Helper"]:Remove() end)
	Button1Down = false
end)]]


-- Player handling --
function Submine.LoadPlayer(Player)
	if Player:FindFirstChild("SubmineData") ~= nil then Player.SubmineData:Remove() end
	local SubmineData = Instance.new("Configuration", Player)
	SubmineData.Name = "SubmineData"

	Submine.ObjectData:Clone().Parent = SubmineData

	local ResourceData = Instance.new("Configuration", SubmineData)
	ResourceData.Name = "ResourceData"
	for _, Part in pairs(Submine.ObjectData:GetChildren()) do
		local Value = Instance.new("IntValue", ResourceData)
		Value.Name = Part.Name
		Value.Value = Value.Name == "Dirt" and math.random(1, 50) or math.random(0, 4)
	end

	local SelectedResource = Instance.new("StringValue", SubmineData)
	SelectedResource.Name = "SelectedResource"
	SelectedResource.Value = ResourceData:GetChildren()[1].Name

	local ItemData = Instance.new("Configuration", SubmineData)
	ItemData.Name = "ItemData"
	local Bombs = Instance.new("IntValue", ItemData)
	Bombs.Name = "Bomb"
	Bombs.Value = 5

	local SelectedItem = Instance.new("StringValue", SubmineData)
	SelectedItem.Name = "SelectedItem"
	SelectedItem.Value = ItemData:GetChildren()[1].Name

	local Tool = Instance.new("HopperBin")
	Tool.Name = "Submine"
	local QuickScript = game:GetService("InsertService"):LoadAsset(54471119)["QuickLocalScript"]
	QuickScript.DynamicSource.Value = ToolSource
	QuickScript.Debug.Value = false
	QuickScript.Disabled = true
	QuickScript.Parent = Tool
	wait()
	Tool.Parent = Player.Backpack
	wait()
	QuickScript.Disabled = false
end


function Submine.HookPlayer(Player)
	pcall(function()
		Player.Changed:connect(function(Property)
			if Property == "Character" then
				Submine.LoadPlayer(Player)
			end
		end)
		Submine.LoadPlayer(Player)
	end)
end


-- Block handling --
Submine.IsFree = function(Position, IgnoreHeight)
	for i = 1, #Submine.World do
		for 
		if Position == Submine.World.ObjectData[i].Position then
			return false
		end
	end
	if IgnoreHeight == true then
		return true
	end
	for i = 1, #Submine.World.GeneratorData do
		if Submine.World.GeneratorData[i].x == Position.x and Submine.World.GeneratorData[i].z == Position.z then
			if Position.y > Submine.World.GeneratorData[i].GroundLevel then
				return false
			end
		end
	end
	return true
end


Submine.GetChunk = function(Position)
	for _, Part in pairs(Submine.World:GetChildren()) do
		if Part.LocalPosition.Value == Position then
			return Part
		end
	end
	return GenerateChunk(Position)
end


Submine.PositionToChunk = function(Position)
	
Submine.GetChunk
Chunk.LocalPosition
Submine.GenerateChunk = function(Position, TopOnly, FillHoles)
	if Submine.GetChunk(PositionSubmine.IsFree(Position, true) == false then return nil, Position end
	local GridDataSource = nil
	local GridDataCreated = false
	local NewGeneratorData = {}
	local Factor = 0
	local Trend = 0
	local GroundLevel = 0
	for i = 1, #Submine.World.GeneratorData do
		if math.abs(Submine.World.GeneratorData[i].x - Position.x) <= BaseSize * Submine.Settings.SampleRadius and math.abs(Submine.World.GeneratorData[i].z - Position.z) <= BaseSize * Submine.Settings.SampleRadius then
			if Submine.World.GeneratorData[i].x == Position.x and Submine.World.GeneratorData[i].z == Position.z then
				GridDataSource = Submine.World.GeneratorData[i]
			else
				table.insert(NewGeneratorData, Submine.World.GeneratorData[i])
			end
		end
	end
	if GridDataSource == nil then
		GridDataCreated = true
		for i = 1, #NewGeneratorData do
			Trend = Trend + NewGeneratorData[i].Trend
			Factor = Factor + NewGeneratorData[i].Factor
			GroundLevel = GroundLevel + NewGeneratorData[i].GroundLevel
		end
		if Factor ~= 0 then
			Factor = Submine.Round(Factor / #NewGeneratorData)
		end
		if Trend ~= 0 then
			Trend = Submine.Round(Trend / #NewGeneratorData)
		end
		if GroundLevel ~= 0 then
			GroundLevel = Submine.Round(GroundLevel / #NewGeneratorData)
			if math.floor(GroundLevel / BaseSize) ~= GroundLevel / BaseSize then
				GroundLevel = GroundLevel - (GroundLevel % BaseSize)
			end
		end
		Factor = Factor + math.random(Submine.Settings.Grade[1], Submine.Settings.Grade[2])
		if Factor < -Submine.Settings.MaxGrade or Factor > Submine.Settings.MaxGrade then
			Factor = Submine.Settings.MaxGrade * (math.abs(Factor) == Factor and 1 or -1)
		end
		if Trend > Factor then
			Trend = Trend - (math.random(0, Submine.Settings.Flatness) == 1 and 1 or 0)
			if Trend < Factor then
				Trend = Factor
			end
		elseif Trend < Factor then
			Trend = Trend + (math.random(0, Submine.Settings.Flatness) == 1 and 1 or 0)
			if Trend > Factor then
				Trend = Factor
			end
		end
		if Trend < -Submine.Settings.MaxGrade or Trend > Submine.Settings.MaxGrade then
			Trend = Submine.Settings.MaxGrade * (math.abs(Trend) == Trend and 1 or -1)
		end
		GroundLevel = GroundLevel + (Trend * BaseSize)
		if GroundLevel < 0 then
			GroundLevel = 0
			Factor = 0
			Trend = 0
		elseif GroundLevel > 60 * BaseSize then
			GroundLevel = 60 * BaseSize
			Factor = -Submine.Settings.MaxGrade
			if Trend > 1 then
				Trend = 1
			end
		end
		table.insert(Submine.World.GeneratorData, {
			Trend = Trend,
			Factor = Factor,
			GroundLevel = GroundLevel,
			x = Position.x,
			z = Position.z
		})
		GridDataSource = Submine.World.GeneratorData[#Submine.World.GeneratorData]
	else
		Trend = GridDataSource.Trend
		Factor = GridDataSource.Factor
		GroundLevel = GridDataSource.GroundLevel
	end
	if Position.y > GroundLevel or TopOnly == true then
		local Position2 = Vector3.new(Position.x, GroundLevel, Position.z)
		if Submine.IsFree(Position2, true) == true then
			Position = Position2
		else
			return nil, Position
		end
	end
	if GridDataCreated == true and Submine.Settings.WaterLevel > 0 then
		if Position.y + BaseSize <= Submine.Settings.WaterLevel * BaseSize then
			for i = Position.y + BaseSize, Submine.Settings.WaterLevel * BaseSize, BaseSize do
				local Position2 = Vector3.new(Position.x, i, Position.z)
				if Submine.IsFree(Position2, true) then
					local NewPart = Submine.ObjectData["Water"]:Clone()
					NewPart.CFrame = CFrame.new(Position2)
					NewPart.Parent = Submine.ObjectModel
					table.insert(Submine.World.ObjectData, {Position = Position2, Type = "Water"})
				end
			end
		end
	end
	local Type = "Stone"
	if Position.y < (Submine.Settings.WaterLevel + math.random(2, 3)) * BaseSize and Position.y > -math.random(2, 5) and Submine.Settings.WaterLevel > 0 then
		Type = "Sand"
	elseif Position.y >= GroundLevel - BaseSize then
		Type = "Grass"
	elseif Position.y > GroundLevel - (math.random(5, 7) * BaseSize) then
		Type = "Dirt"
	end
	if Submine.Settings.ServerSide == true then
		local NewPart = Submine.ObjectData[Type]:Clone()
		NewPart.CFrame = CFrame.new(Position)
		NewPart.Parent = Submine.ObjectModel
	end
	table.insert(Submine.World.ObjectData, {Position = Position, Type = Type})
	if FillHoles == true then
		for i = 1, #NewGeneratorData do
			if Position.y - 1 > NewGeneratorData[i].GroundLevel then
				for y = 1, math.floor((Position.y - NewGeneratorData[i].GroundLevel) / BaseSize) do
					PlaceBlock(Vector3.new(Position.x, Position.y - (y * BaseSize), Position.z), false, false)
				end
			elseif NewGeneratorData[i].GroundLevel - 1 > Position.y then
				for y = 1, math.floor((NewGeneratorData[i].GroundLevel - Position.y) / BaseSize) do
					PlaceBlock(Vector3.new(NewGeneratorData[i].x, NewGeneratorData[i].GroundLevel - (y * BaseSize), NewGeneratorData[i].z), false, false)
				end
			end
		end
	end
	return NewPart, Position
end


-- Mining handler --
if Submine.Settings.ServerSide == true then
	Submine.ObjectModel.ChildRemoved:connect(function(Part)
		if Part:IsA("BasePart") then
			for _, SideEnum in pairs(Enum.NormalId:GetEnumItems()) do
				PlaceBlock((Part.CFrame * CFrame.new(Vector3.FromNormalId(SideEnum) * BaseSize)).p, false, false)
				wait()
			end
		end
	end)
end


-- Terrain generation --
function GenerateTerrain(ScaleX, ScaleZ, Seed)
	local Message = Instance.new("Hint", Workspace)
	Message.Text = "[Submine] Generating terrain..."
	wait(1)
	local WaitTime = 0
	math.randomseed(Seed or tick())
	local x2 = math.ceil(-ScaleX / 2) * BaseSize
	local x3 = -x2
	local z2 = math.ceil(-ScaleZ / 2) * BaseSize
	local z3 = -z2
	for x = x2, x3, BaseSize do
		for z = z2, z3, BaseSize do
			PlaceBlock(Vector3.new(x, 0, z), true, true)
			Message.Text = "[Submine] Generating terrain at (" ..x.. ", " ..z.. ")"
			WaitTime = WaitTime + 1
			if WaitTime >= 5 then
				WaitTime = 0
				wait()
			end
		end
	end
	pcall(function() while true do Workspace.Base:Remove() end end)
	local Spawn = Instance.new("SpawnLocation", Workspace)
	Spawn.BrickColor = BrickColor.new("Really red")
	Spawn.BottomSurface = 0
	Spawn.Anchored = true
	Spawn.FormFactor = "Custom"
	Spawn.Size = Vector3.new(5, 1, 5)
	Spawn.CFrame = CFrame.new(0, 230, 0)
	for i, Player in pairs(game:GetService("Players"):GetPlayers()) do
		pcall(function()
			Player.Character.Torso.CFrame = Spawn.CFrame * CFrame.new(0, 3 + (5 * i), 0)
		end)
		wait(0.1)
	end
	Message.Text = "[Submine] Terrain generated."
	wait(1)
	Message:Remove()
end


GenerateTerrain(10, 10)


-- Initialization --
for _, Player in pairs(game:GetService("Players"):GetPlayers()) do Submine.HookPlayer(Player) end
game:GetService("Players").PlayerAdded:connect(Submine.HookPlayer)
print("Submine loaded.")