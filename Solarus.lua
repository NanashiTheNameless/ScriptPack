script.Name = "Solarus"


Solarus = {}
if type(_G.Solarus) ~= "table" then _G.Solarus = {} end
_G.Solarus.GetInstance = function(Self)
	if Self ~= _G.Solarus then return nil end
	return script, script.Parent
end
_G.Solarus.GetTable = function(Self, Code)
	if Self ~= _G.Solarus then return nil end
	return Solarus
end


Solarus.SetGravity = function(Part, Gravity)
	if Part == nil or Gravity == nil then return false end
	Gravity = (-196.25 * (Gravity / 100)) + 196.25
	if Part:FindFirstChild("Gravity") ~= nil then Part.Gravity:Remove() end
	BodyForce = Instance.new("BodyForce")
	BodyForce.Name = "Gravity"
	BodyForce.force = Vector3.new(0, Part:GetMass() * Gravity, 0)
	BodyForce.Parent = Part
	return true
end


Solarus.Time = function()
	local Hours = math.floor((tick() / 3600) % 24)
	local Minutes = math.floor((tick() % 3600) / 60)
	local Seconds = math.floor(tick() % 60)
	local Section = ""
	if Hours == 24 or Hours < 12 then
		Section = "AM"
	else
		Section = "PM"
	end
	if Hours > 12 then
		Hours = Hours - 12
	end
	if Minutes <= 9 then
		Minutes = "0" ..tostring(Minutes)
	end
	if Seconds <= 9 then
		Seconds = "0" ..tostring(Seconds)
	end
	return Hours.. ":" ..Minutes.. "." ..Seconds.. " " ..Section
end


Solarus.Log = function(Player, Item, Details, Color)
	if Color == nil then Color = Color3.new(1, 1, 1) end
	if Player.PlayerGui:FindFirstChild("SolarusGui") ~= nil then
		for _, Part in pairs(Player.PlayerGui.SolarusGui.Log:GetChildren()) do
			if string.match(Part.Name, "Tag") then
				Part.Position = Part.Position - UDim2.new(0, 0, 0, Part.Size.Y.Offset)
				if Part.Position.Y.Offset < 35 then
					Part:Remove()
				end
			end
		end
		local Tag = Instance.new("TextLabel", Player.PlayerGui.SolarusGui.Log)
		Tag.Name = "Tag (" ..Workspace.DistributedGameTime.. ")"
		Tag.Text = " [" ..Solarus.Time().. ", " ..Item.. "] " ..Details
		Tag.Size = UDim2.new(1, -10, 0, 15)
		Tag.Position = UDim2.new(0, 5, 0, (Tag.Size.Y.Offset * 8) + 35)
		Tag.TextColor3 = Color3.new(1, 1, 1)
		Tag.TextXAlignment = "Left"
		Tag.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		Tag.BorderColor3 = Color3.new(0, 0, 0)
	end
end


Solarus.Ships = {}
Solarus.ShipCreate = function(ShipType, Owner, Planet)
	local Model = Instance.new("Model")
	Model.Name = ShipType.. " " ..(function()
		local i = 1
		for x = 1, #Solarus.Ships do
			if Solarus.Ships[x] ~= nil then
				if Solarus.Ships[x].Owner.Value == Owner and Solarus.Ships[x].ShipType.Value == ShipType then
					i = i + 1
				end
			end
		end
		return i
	end)()
	local Value = Instance.new("ObjectValue", Model)
	Value.Name = "Owner"
	Value.Value = Owner
	local Value = Instance.new("StringValue", Model)
	Value.Name = "ObjectType"
	Value.Value = "Ship"
	local Value = Instance.new("StringValue", Model)
	Value.Name = "ShipType"
	Value.Value = ShipType
	local Value = Instance.new("IntValue", Model)
	Value.Name = "Fuel"
	Value.Value = 0
	local Value = Instance.new("IntValue", Model)
	Value.Name = "MaxFuel"
	Value.Value = 0
	local Value = Instance.new("IntValue", Model)
	Value.Name = "DistancePerTurn"
	Value.Value = 0
	local Value = Instance.new("IntValue", Model)
	Value.Name = "Health"
	local Value = Instance.new("ObjectValue", Model)
	Value.Name = "Planet1"
	Value.Value = Planet
	local Value = Instance.new("ObjectValue", Model)
	Value.Name = "Planet2"
	Value.Value = nil
	local Value = Instance.new("BoolValue", Model)
	Value.Name = "InFlight"
	Value.Value = nil
	local Base = Instance.new("Part", Model)
	Base.Name = "Base"
	Base.Locked = true
	Base.FormFactor = "Custom"
	Base.Size = Vector3.new(1, 1, 1)
	Base.TopSurface = 0
	Base.BottomSurface = 0
	Base.BrickColor = Owner.Solarus["TeamBrickColor"].Value
	table.insert(Solarus.Ships, Model)
	if ShipType == "Fighter" then
		Model.Health.Value = 150
		Model.Fuel.Value = 1000
		Model.DistancePerTurn.Value = 250
		Base.Size = Vector3.new(0.75, 0.75, 3)
		local Part = Instance.new("Part", Model)
		Part.Name = "Wing Right"
		Part.Locked = true
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.9, 0.2, 2.25)
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.BrickColor = Owner.Solarus["TeamBrickColor"].Value
		local Weld = Instance.new("Weld", Base)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = Part
		Weld.C0 = CFrame.new(0.75, 0, 0.35)
		Weld.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(-45), 0)
		local Part = Instance.new("Part", Model)
		Part.Name = "Wing Left"
		Part.Locked = true
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.9, 0.2, 2.25)
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.BrickColor = Owner.Solarus["TeamBrickColor"].Value
		local Weld = Instance.new("Weld", Base)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = Part
		Weld.C0 = CFrame.new(-0.75, 0, 0.35)
		Weld.C1 = CFrame.fromEulerAnglesXYZ(0, math.rad(45), 0)
		local Part = Instance.new("Part", Model)
		Part.Name = "Thruster"
		Part.Locked = true
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.5, 0.4, 0.2)
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.BrickColor = BrickColor.new("Really black")
		local Weld = Instance.new("Weld", Base)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = Part
		Weld.C0 = CFrame.new(0, 0, 1.525)
		local Fire = Instance.new("Fire", Part)
		Fire.Size = 1
		Fire.Heat = 0
		Fire.Color = Color3.new(0, 0, 1)
		Fire.SecondaryColor = Color3.new(0.75, 0.75, 1)
	elseif ShipType == "Cargo" or ShipType == "Shuttle" then
		if ShipType == "Cargo" then
			Model.Health.Value = 500
			Model.Fuel.Value = 5000
			Model.DistancePerTurn.Value = 100
		elseif ShipType == "Shuttle" then
			Model.Health.Value = 450
			Model.Fuel.Value = 2750
			Model.DistancePerTurn.Value = 175
		end
		Base.Size = Vector3.new(1.5, 0.5, 4)
		for i = 36, 144, 36 do
			local Part = Instance.new("Part", Model)
			Part.Name = "Base Extention"
			Part.Locked = true
			Part.FormFactor = "Custom"
			Part.Size = Vector3.new(1.5, 0.5, 4)
			Part.TopSurface = 0
			Part.BottomSurface = 0
			Part.BrickColor = Owner.Solarus["TeamBrickColor"].Value
			local Weld = Instance.new("Weld", Base)
			Weld.Part0 = Weld.Parent
			Weld.Part1 = Part
			Weld.C0 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(i))
		end
		local Part = Instance.new("Part", Model)
		Part.Name = "Cockpit"
		Part.Locked = true
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(1.4, 1.4, 1.4)
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.BrickColor = BrickColor.new("Really black")
		local Weld = Instance.new("Weld", Base)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = Part
		Weld.C0 = CFrame.new(0, 0, -2)
		Instance.new("SpecialMesh", Part).MeshType = "Sphere"
		for i = 0, 360, ShipType == "Cargo" and 45 or 90 do
			if i ~= 0 then
				local Part = Instance.new("Part", Model)
				Part.Name = "Thruster " ..i
				Part.Locked = true
				Part.FormFactor = "Custom"
				Part.Size = Vector3.new(0.4, 0.4, 0.2)
				Part.TopSurface = 0
				Part.BottomSurface = 0
				Part.BrickColor = BrickColor.new("Really black")
				local Weld = Instance.new("Weld", Base)
				Weld.Part0 = Weld.Parent
				Weld.Part1 = Part
				Weld.C0 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(i)) * CFrame.new(0, 0.4, 2)
				local Fire = Instance.new("Fire", Part)
				Fire.Size = 1
				Fire.Heat = 0
				Fire.Color = Color3.new(0, 0, 1)
				Fire.SecondaryColor = Color3.new(0.75, 0.75, 1)
				Instance.new("SpecialMesh", Part).MeshType = "Sphere"
			end
		end
	end
	return Model
end


Solarus.SoundToServer = function(Format, Parent)
	local Sound = Instance.new("Sound", Parent)
	Sound.Pitch = 1
	Sound.Volume = 1
	Sound.Looped = false
	if Format == "Build" then
		Sound.Name = Format
		Sound.SoundId = "http://www.roblox.com/Asset/?id=18716629"
		Sound.Pitch = math.random(800, 1250) / 1000
	end
	Sound:Play()
	return Sound
end


Solarus.Print = function(Source, Text, Format, Color)
	local BillboardGui = Instance.new("BillboardGui", Source)
	BillboardGui.Name = "Print"
	BillboardGui.Adornee = Source
	BillboardGui.Size = UDim2.new(25, 0, 25, 0)
	local TextLabel = Instance.new("TextLabel", BillboardGui)
	TextLabel.Position = UDim2.new(0, 0, 0, 0)
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Text = Text
	TextLabel.TextWrap = true
	TextLabel.FontSize = "Size14"
	TextLabel.TextXAlignment = "Center"
	TextLabel.TextYAlignment = "Center"
	TextLabel.BackgroundTransparency = 1
	if Format == "Bad" then
		TextLabel.TextColor3 = Color3.new(1, 0, 0)
	elseif Format == "Good" then
		TextLabel.TextColor3 = Color3.new(0, 1, 0)
	end
	if Color ~= nil then
		TextLabel.TextColor3 = Color
	end
	coroutine.wrap(function()
		for i = 0, 1, 0.01 do
			BillboardGui.StudsOffset = Vector3.new(0, ((function()
				if Format == "Bad" then
					return 1 - i
				elseif Format == "Good" then
					return i
				else
					return 0.5
				end
			end)() * 5) + Source.Size.y, 0)
			TextLabel.TextTransparency = i
			wait()
		end
		BillboardGui:Remove()
	end)()
end


Solarus.Names = {}
Solarus.Names.Vowels = {"a", "e", "i", "o", "u", "'"}
Solarus.Names.Consonants = {"b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z", "ph", "ll", "zz"}
Solarus.Names.Numbers = {"Zero", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"}
Solarus.Names.NumbersTen = {"Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Ninteen"}
Solarus.Names.NumbersTens = {"Twenty", "Thirty", "Fourty", "Fifty", "Sixty", "Seventy", "Eighty", "Nintey"}
Solarus.Names.Generate = function(HasNumber)
	local Word = ""
	local Word2 = Solarus.Names.Consonants[math.random(1, #Solarus.Names.Consonants)]
	Word = Word .. Word2:upper():sub(1, 1) .. Word2:sub(2)
	Word = Word .. Solarus.Names.Vowels[math.random(1, #Solarus.Names.Vowels)]
	if math.random(1, 10) == 1 and Word:sub(Word:len(), Word:len()) ~= "'" then
		Word = Word .. Word:sub(Word:len(), Word:len())
	end
	for i = 1, math.random(1, 4) do
		Word = Word .. Solarus.Names.Consonants[math.random(1, #Solarus.Names.Consonants)]
		Word = Word .. Solarus.Names.Vowels[math.random(1, #Solarus.Names.Vowels)]
		if math.random(1, 10) == 1 and Word:sub(Word:len(), Word:len()) ~= "'" then
			Word = Word .. Word:sub(Word:len(), Word:len())
		end
	end
	if Word:sub(Word:len()) == "'" then
		Word = Word:sub(1, Word:len() - 1)
	end
	Word = Word .. (function()
		local Result = math.random(1, HasNumber == false and 8 or 16)
		if Result == 1 then
			return "frey"
		elseif Result == 2 then
			return " Prime"
		elseif Result == 3 then
			return "ticus"
		elseif Result >= 10 then
			local Number = math.random(0, 12)
			if Number > 9 then
				Number = math.random(0, 999)
			end
			if math.random(1, 5) == 1 then
				return " " ..tostring(Number)
			else
				if Number <= 9 then
					return " " ..Solarus.Names.Numbers[Number + 1]
				elseif Number > 9 and Number <= 19 then
					Number = Number - 10
					return " " ..Solarus.Names.NumbersTen[Number + 1]
				elseif Number > 19 then
					local NumberFinal = ""
					local Tens = nil
					local Ones = nil
					if Number > 99 then
						local Hundreds = tonumber(tostring(Number):sub(1, 1))
						if tostring(Number):sub(2, 2) == "0" then
							Tens = 0
						end
						Number = Number - (Hundreds * 100)
						NumberFinal = Solarus.Names.Numbers[Hundreds + 1].. " Hundred "
					end
					if Tens == nil then
						Tens = tonumber(tostring(Number):sub(1, 1))
					end
					if Tens == 0 then
						Ones = tonumber(tostring(Number):sub(1, 1))
					else
						Ones = tonumber(tostring(Number):sub(2, 2))
					end
					if Number <= 9 and Tens ~= 0 then
						NumberFinal = Solarus.Names.Numbers[Number + 1]
					elseif Number > 9 and Number <= 19 and Tens ~= 0 then
						Number = Number - 10
						NumberFinal = NumberFinal .. Solarus.Names.NumbersTen[Number + 1]
					else
						if Tens ~= 0 then
							NumberFinal = NumberFinal .. Solarus.Names.NumbersTens[Tens - 1]
							if Ones ~= 0 then
								NumberFinal = NumberFinal.. "-" ..Solarus.Names.Numbers[Ones + 1]
							end
						else
							if Ones ~= 0 then
								NumberFinal = NumberFinal.. " " ..Solarus.Names.Numbers[Ones + 1]
							end
						end
					end
					return " " ..NumberFinal
				end
			end
		elseif Result >= 4 then
			local Word2 = ""
			for i = 1, math.random(1, 4) do
				Word2 = Word2 .. Solarus.Names.Consonants[math.random(1, #Solarus.Names.Consonants)]
				Word2 = Word2 .. Solarus.Names.Vowels[math.random(1, #Solarus.Names.Vowels)]
				if math.random(1, 7) == 1 and Word2:sub(Word2:len(), Word2:len()) ~= "'" then
					Word2 = Word2 .. Word2:sub(Word2:len(), Word2:len())
				end
			end
			return Word2
		end
	end)()
	if Word:sub(0, 1) == "'" then
		Word = "'" .. Word:sub(2, 2):upper() .. Word:sub(3)
	end
	if Word:sub(Word:len()) == "'" then
		Word = Word:sub(1, Word:len() - 1)
	end
	local i = 1
	while i < Word:len() do
		if Word:sub(i, i) == "'" and Word:sub(i + 1, i + 1) == "'" then
			Word = Word:sub(0, i) .. Word:sub(i + 2)
		else
			i = i + 1
		end
	end
	return Word
end


Solarus.Move = function(Part, Target)
	if Part == nil or Target == nil then return false end
	Part.Anchored = true
	Part.CFrame = Target
	for _, Weld in pairs(Part:GetChildren()) do
		if Weld.ClassName == "Weld" then
			Weld.Part1.CFrame = Weld.Part0.CFrame * Weld.C0 * Weld.C1:inverse()
		end
	end
	return true
end


Solarus.FlyPart = function(Part, Target, Speed)
	if Part == nil or Target == nil then return false end
	if Speed == nil then Speed = 1 end
	coroutine.wrap(function()
		while (Part.Position - Target.Position).magnitude > Speed + 1 and Part.Parent ~= nil and Target.Parent ~= nil do
			Part.Anchored = true
			Part.CFrame = CFrame.new(Part.Position, Target.Position) * CFrame.new(0, 0, -Speed)
			for _, Weld in pairs(Part:GetChildren()) do
				if Weld.ClassName == "Weld" then
					Weld.Part1.CFrame = Weld.Part0.CFrame * Weld.C0 * Weld.C1:inverse()
				end
			end
			wait()
		end
	end)()
	return true
end


Solarus.FlyVector3 = function(Part, Target, Speed)
	if Part == nil or Target == nil then return false end
	if Speed == nil then Speed = 1 end
	coroutine.wrap(function()
		while (Part.Position - Target).magnitude > Speed + 1 and Part.Parent ~= nil do
			Part.Anchored = true
			Part.CFrame = CFrame.new(Part.Position, Target) * CFrame.new(0, 0, -Speed)
			for _, Weld in pairs(Part:GetChildren()) do
				if Weld.ClassName == "Weld" then
					Weld.Part1.CFrame = Weld.Part0.CFrame * Weld.C0 * Weld.C1:inverse()
				end
			end
			wait()
		end
	end)()
end


Solarus.GetSunFromSolarSystem = function(SolarSystem)
	for _, Object in pairs(SolarSystem:GetChildren()) do
		if Object:FindFirstChild("ObjectType") ~= nil then
			if Object.ObjectType.Value == "Sun" then
				return Object
			end
		end
	end
	return nil
end


Solarus.GetPlanetGroupByName = function(PlanetName)
	for _, SolarSystem in pairs(Solarus.Galaxy:GetChildren()) do
		if SolarSystem.ObjectType.Value == "Solar System" then
			for _, PlanetGroup in pairs(SolarSystem:GetChildren()) do
				if PlanetGroup.Name == PlanetName then
					return PlanetGroup
				end
			end
		end
	end
	return nil
end


Solarus.GetPlanetByName = function(PlanetName)
	local PlanetGroup = Solarus.GetPlanetGroupByName(PlanetName)
	if PlanetGroup ~= nil then
		return PlanetGroup[PlanetName]
	end
	return nil
end


Solarus.TurnStep = function()
	for _, SolarSystem in pairs(Solarus.Galaxy:GetChildren()) do
		if SolarSystem.ObjectType.Value == "Solar System" then
			for _, PlanetGroup in pairs(SolarSystem:GetChildren()) do
				for _, Object in pairs(PlanetGroup:GetChildren()) do
					if Object:FindFirstChild("ObjectType") ~= nil then
						if Object.ObjectType.Value == "Planet" or Object.ObjectType.Value == "Moon" then
							for _, Part in pairs(Object:GetChildren()) do
								if Part:FindFirstChild("ObjectType") ~= nil then
									if Part.ObjectType.Value == "Player Status" then
										for _, Stat in pairs(Part:GetChildren()) do
											if string.match(Stat.Name, "Population") and not string.match(Stat.Name, "GrowthRate") then
												if Stat.Value > 0 then
													Stat.Value = Stat.Value + math.floor(Part[Stat.Name.. "GrowthRate"].Value) + math.random(-5, 5)
												end
											end
										end
									end
								elseif string.sub(Part.Name, 0, 5) == "Mined" then
									if Object[string.sub(Part.Name, 6)].Value > 0 then
										for _, Part2 in pairs(Object:GetChildren()) do
											if Part2:FindFirstChild("ObjectType") ~= nil then
												if Part2.ObjectType.Value == "Player Status" then
													local Max = (Object[string.sub(Part.Name, 6).. "MineRatePerWorker"].Value * Part2.WorkingPopulation.Value)
													if Object[string.sub(Part.Name, 6)].Value - Max <= 0 then
														Max = Object[string.sub(Part.Name, 6)].Value
														Object[string.sub(Part.Name, 6)].Value = 0
													else
														Object[string.sub(Part.Name, 6)].Value = Object[string.sub(Part.Name, 6)].Value - Max
													end
													Part.Value = Part.Value + Max
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		if Player:FindFirstChild("Solarus") ~= nil then
			local Planet1 = Player.Solarus.Planet1.Value
			local Planet2 = Player.Solarus.Planet2.Value
			Player.Solarus.Planet1.Value = nil
			Player.Solarus.Planet2.Value = nil
			Player.Solarus.Planet1.Value = Planet1
			Player.Solarus.Planet2.Value = Planet2
		end
	end
end


Solarus.TurnShipStep = function()
	for i, Ship in pairs(Solarus.Ships) do
		if Ship.Planet2.Value ~= nil then
			if Ship.InFlight.Value == false then
				Ship.InFlight.Value = true
				Ship.Parent = Solarus.Galaxy
				Solarus.Move(Ship.Base, Ship.Planet1.Value.CFrame)
			end
			if (Ship.Planet2.Value.Position - Ship.Base.Position).magnitude < Ship.DistancePerTurn.Value then
				Ship.InFlight.Value = false
				Solarus.FlyPart(Ship.Base, Ship.Planet2.Value, Ship.DistancePerTurn.Value / 75)
				Ship.Fuel.Value = Ship.Fuel.Value - (Ship.Planet2.Value.Position - Ship.Planet1.Value.Position).magnitude
				if Ship.Fuel.Value < 0 then Ship.Fuel.Value = 0 end
			else
				Solarus.FlyVector3(Ship.Base, Ship.Base.Position + ((Ship.Planet2.Value.Position - Ship.Base.Position).unit * Ship.DistancePerTurn.Value), Ship.DistancePerTurn.Value / 75)
			end
		end
	end
	for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
		if Player:FindFirstChild("Solarus") ~= nil then
			local Ship = Player.Solarus.Ship.Value
			Player.Solarus.Ship.Value = nil
			Player.Solarus.Ship.Value = Ship
		end
	end
end


Solarus.GalaxyCenter = CFrame.new(0, 500, 0)
Solarus.Galaxy = nil
Solarus.GalaxyCreate = function()
	if Solarus.Galaxy ~= nil then
		pcall(function() Solarus.Galaxy:Remove() end)
	end
	Solarus.Galaxy = Instance.new("Model", Workspace)
	Solarus.Galaxy.Name = "Solarus Galaxy"
	local Message = Instance.new("Hint", Workspace)
	for _, Part in pairs(game:GetService("Lighting"):GetChildren()) do
		if Part.ClassName == "Sky" then
			Part:Remove()
		end
	end
	local Sky = Instance.new("Sky", game:GetService("Lighting"))
	Sky.StarCount = 0
	Sky.CelestialBodiesShown = false
	game:GetService("Lighting").TimeOfDay = "00:00:00"
	for i = 1, math.random(5, 10) do
		local SolarSystem = Instance.new("Model", Solarus.Galaxy)
		SolarSystem.Name = Solarus.Names.Generate(false).. " System"
		local SolarSystemType = Instance.new("StringValue", SolarSystem)
		SolarSystemType.Name = "ObjectType"
		SolarSystemType.Value = "Solar System"
		Message.Text = "[Solarus] Creating \"" ..SolarSystem.Name.. "\"..."
		local Sun = Instance.new("Part", SolarSystem)
		Sun.Name = Solarus.Names.Generate(false)
		Sun.Anchored = true
		Sun.CanCollide = false
		Sun.Locked = true
		Sun.FormFactor = "Custom"
		local SunSize = math.random(15, 25)
		Sun.Size = Vector3.new(SunSize, SunSize, SunSize)
		Sun.CFrame = Solarus.GalaxyCenter * CFrame.new(math.random(-5000, 5000) / 10, (math.random(-5000, 5000) / 10), math.random(-5000, 5000) / 10)
		Sun.Material = "Ice"
		Sun.TopSurface = 0
		Sun.BottomSurface = 0
		local Color = math.random(1, 5)
		if Color == 1 then
			Color = "Br. yellowish orange"
		elseif Color == 2 then
			Color = "Bright orange"
		elseif Color == 3 then
			Color = "Neon orange"
		elseif Color == 4 then
			Color = "Deep orange"
		elseif Color == 5 then
			Color = "Medium red"
		end
		Sun.BrickColor = BrickColor.new(Color)
		Instance.new("SpecialMesh", Sun).MeshType = "Sphere"
		local SunAtmosphere = Instance.new("NumberValue", Sun)
		SunAtmosphere.Name = "Atmosphere"
		SunAtmosphere.Value = math.random()
		for i = 0, 1, ((1 - SunAtmosphere.Value) / 2) + 0.1 do
			local SunShade = Sun:Clone()
			for _, Part in pairs(SunShade:GetChildren()) do
				if Part.ClassName ~= "SpecialMesh" then
					Part:Remove()
				end
			end
			SunShade.Parent = Sun
			SunShade.Name = Sun.Name.. "'s Shade"
			SunShade.Material = "Plastic"
			SunShade.Size = Sun.Size + Vector3.new(i * 1.5, i * 1.5, i * 1.5)
			SunShade.Transparency = 0.7 + (i * 0.3)
			SunShade.CFrame = Sun.CFrame
			wait()
		end
		local BillboardGui = Instance.new("BillboardGui", Sun)
		BillboardGui.Name = "Print"
		BillboardGui.Adornee = Sun
		BillboardGui.Size = UDim2.new(1, 0, 1, 0)
		BillboardGui.StudsOffset = Vector3.new(0, (SunSize / 2) + 3, 0)
		local TextLabel = Instance.new("TextLabel", BillboardGui)
		TextLabel.Position = UDim2.new(0, 0, 0, 0)
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Text = Sun.Name
		TextLabel.FontSize = "Size14"
		TextLabel.TextColor3 = Color3.new(1, 1, 1)
		TextLabel.BackgroundTransparency = 1
		TextLabel.TextTransparency = 0.5
		local SunTilt = Instance.new("NumberValue", Sun)
		SunTilt.Name = "Tilt"
		SunTilt.Value = math.random(-500, 500) / 100
		local SunType = Instance.new("StringValue", Sun)
		SunType.Name = "ObjectType"
		SunType.Value = "Sun"
		local Planets = math.random(1, 8)
		local MinDistance = SunSize * (math.random(1000, 1250) / 1000)
		for i = 1, Planets do
			local Model = Instance.new("Model", SolarSystem)
			Model.Name = Solarus.Names.Generate(true)
			local ModelType = Instance.new("StringValue", Model)
			ModelType.Name = "ObjectType"
			ModelType.Value = "Planet Group"
			local Planet = Instance.new("Part", Model)
			Planet.Name = Model.Name
			Planet.Anchored = true
			Planet.CanCollide = false
			Planet.Locked = true
			Planet.FormFactor = "Custom"
			local PlanetSize = math.random(4, 9)
			Planet.Size = Vector3.new(PlanetSize, PlanetSize, PlanetSize)
			Planet.Material = "Grass"
			Planet.TopSurface = 0
			Planet.BottomSurface = 0
			Planet.BrickColor = BrickColor.random()
			Instance.new("SpecialMesh", Planet).MeshType = "Sphere"
			local PlanetRings = math.random(-3, 3)
			if PlanetRings > 0 then
				local PlanetRingsAngle = math.random(-100, 100) / 10
				for i = 0, PlanetRings do
					local PlanetRing = Instance.new("Part", Model)
					PlanetRing:BreakJoints()
					PlanetRing.CFrame = CFrame.new(0, 100, 0)
					PlanetRing.Name = Model.Name.. "'s Ring"
					PlanetRing.Anchored = true
					PlanetRing.CanCollide = false
					PlanetRing.Locked = true
					PlanetRing.FormFactor = "Custom"
					PlanetRing.Size = Vector3.new(PlanetSize * 1.5, PlanetSize * 1.5, 0.2)
					PlanetRing.TopSurface = 0
					PlanetRing.BottomSurface = 0
					PlanetRing.BrickColor = BrickColor.new("Institutional white")
					local Mesh = Instance.new("SpecialMesh", PlanetRing)
					Mesh.MeshType = "FileMesh"
					Mesh.MeshId = "http://www.roblox.com/Asset/?id=3270017"
					Mesh.Scale = PlanetRing.Size
					local PlanetRingType = Instance.new("StringValue", PlanetRing)
					PlanetRingType.Name = "ObjectType"
					PlanetRingType.Value = "Planet Ring"
					Planet.Changed:connect(function()
						PlanetRing.CFrame = (Planet.CFrame * CFrame.new(0, ((i / PlanetRings) - 0.5) * (PlanetSize / 5), 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + PlanetRingsAngle), 0, 0)
					end)
				end
			end
			local PlanetAtmosphere = Instance.new("NumberValue", Planet)
			PlanetAtmosphere.Name = "Atmosphere"
			PlanetAtmosphere.Value = (Sun.Atmosphere.Value < 0.2 and i < 3) and 0 or math.random()
			if PlanetAtmosphere.Value < 0.2 then
				Planet.Material = "Slate"
			end
			local PlanetMetal = Instance.new("IntValue", Planet)
			PlanetMetal.Name = "Metal"
			PlanetMetal.Value = PlanetAtmosphere.Value < 0.2 and math.random(10000, 50000) or math.random(1000, 10000)
			local PlanetWood = Instance.new("IntValue", Planet)
			PlanetWood.Name = "Wood"
			PlanetWood.Value = PlanetAtmosphere.Value < 0.3 and 0 or math.random(5000, 25000)
			local PlanetFuel = Instance.new("IntValue", Planet)
			PlanetFuel.Name = "Fuel"
			PlanetFuel.Value = math.random(1000, 7500) - (math.random(0, 2500) * PlanetAtmosphere.Value)
			if PlanetFuel.Value <= 500 then
				PlanetFuel.Value = math.random(400, 500)
			end
			local PlanetMinedMetal = Instance.new("IntValue", Planet)
			PlanetMinedMetal.Name = "MinedMetal"
			PlanetMinedMetal.Value = 0
			local PlanetMinedWood = Instance.new("IntValue", Planet)
			PlanetMinedWood.Name = "MinedWood"
			PlanetMinedWood.Value = 0
			local PlanetMinedFuel = Instance.new("IntValue", Planet)
			PlanetMinedFuel.Name = "MinedFuel"
			PlanetMinedFuel.Value = 0
			local PlanetMetalMineRatePerWorker = Instance.new("IntValue", Planet)
			PlanetMetalMineRatePerWorker.Name = "MetalMineRatePerWorker"
			PlanetMetalMineRatePerWorker.Value = 5
			local PlanetWoodMineRatePerWorker = Instance.new("IntValue", Planet)
			PlanetWoodMineRatePerWorker.Name = "WoodMineRatePerWorker"
			PlanetWoodMineRatePerWorker.Value = 7
			local PlanetFuelMineRatePerWorker = Instance.new("IntValue", Planet)
			PlanetFuelMineRatePerWorker.Name = "FuelMineRatePerWorker"
			PlanetFuelMineRatePerWorker.Value = 3
			local PlanetFood = Instance.new("IntValue", Planet)
			PlanetFood.Name = "Food"
			PlanetFood.Value = math.random(5000, 75000) - (math.random(0, 50000) * (1 - PlanetAtmosphere.Value))
			if PlanetFood.Value <= 1000 then
				PlanetFood.Value = math.random(900, 1000)
			end
			local PlanetType = Instance.new("StringValue", Planet)
			PlanetType.Name = "ObjectType"
			PlanetType.Value = "Planet"
			local PlanetDistance = Instance.new("NumberValue", Planet)
			PlanetDistance.Name = "Distance"
			PlanetDistance.Value = MinDistance
			MinDistance = MinDistance + (PlanetSize * (math.random(900, 1100) / 1000))
			local PlanetAngle = Instance.new("NumberValue", Planet)
			PlanetAngle.Name = "Angle"
			PlanetAngle.Value = math.random(0, 360)
			local PlanetTurnSpeed = Instance.new("NumberValue", Planet)
			PlanetTurnSpeed.Name = "TurnSpeed"
			PlanetTurnSpeed.Value = math.random(10, 80) / 1000
			local PlanetLocalTurnSpeed = Instance.new("NumberValue", Planet)
			PlanetLocalTurnSpeed.Name = "LocalTurnSpeed"
			PlanetLocalTurnSpeed.Value = math.random(5000, 25000) / 1000
			Planet.CFrame = Sun.CFrame
			local BillboardGui = Instance.new("BillboardGui", Planet)
			BillboardGui.Name = "Print"
			BillboardGui.Adornee = Planet
			BillboardGui.Size = UDim2.new(1, 0, 1, 0)
			BillboardGui.StudsOffset = Vector3.new(0, (PlanetSize / 2) + 1, 0)
			local TextLabel = Instance.new("TextLabel", BillboardGui)
			TextLabel.Position = UDim2.new(0, 0, 0, 0)
			TextLabel.Size = UDim2.new(1, 0, 1, 0)
			TextLabel.Text = Planet.Name
			TextLabel.FontSize = "Size10"
			TextLabel.TextColor3 = Color3.new(1, 1, 1)
			TextLabel.BackgroundTransparency = 1
			TextLabel.TextTransparency = 0.5
			coroutine.wrap(function()
				while Planet.Parent ~= nil do
					local Names = {}
					for _, Part in pairs(Planet:GetChildren()) do
						if Part:FindFirstChild("ObjectType") ~= nil then
							if Part.ObjectType.Value == "Player Status" then
								if Names[Part.Name] == nil then
									Names[Part.Name] = false
								end
								for _, Stat in pairs(Part:GetChildren()) do
									if string.match(Stat.Name, "Population") then
										if Stat.Value > 0 then
											Names[Part.Name] = true
										end
									end
								end
							end
						end
					end
					local FinalName = nil
					local Multi = false
					for Name, Inhabited in pairs(Names) do
						if Inhabited == true then
							if FinalName == nil then
								FinalName = Name
							else
								FinalName = FinalName.. ", " ..Name
								Multi = true
							end
						end
					end
					if FinalName == nil then
						TextLabel.Text = Planet.Name
						TextLabel.TextColor3 = Color3.new(1, 1, 1)
					else
						local Found = false
						TextLabel.Text = "[" ..FinalName.. "] " ..Planet.Name
						if Multi == false then
							for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
								if Player:FindFirstChild("Solarus") ~= nil then
									if Player.Solarus.TeamName.Value == FinalName then
										TextLabel.TextColor3 = Player.Solarus.TeamBrickColor.Value.Color
										Found = true
									end
								end
							end
						elseif Multi == true or Found == false then
							TextLabel.TextColor3 = Color3.new(1, 1, 1)
						end
					end
					wait(5)
				end
			end)()
			local MinDistanceOrig = MinDistance
			local PlanetDistanceOrig = PlanetDistance.Value
			MinDistance = MinDistance + (PlanetSize) / 2
			for x = 1, math.random(0, 3) do
				local MoonAngle = math.random(-4, 4)
				local Moon = Instance.new("Part", Model)
				Moon.Name = Solarus.Names.Generate(true)
				Moon.Anchored = true
				Moon.CanCollide = false
				Moon.Locked = true
				Moon.FormFactor = "Custom"
				local MoonSize = math.random(1000, 2500) / 1000
				Moon.Size = Vector3.new(MoonSize, MoonSize, MoonSize)
				Moon.Material = "Slate"
				Moon.TopSurface = 0
				Moon.BottomSurface = 0
				Moon.BrickColor = BrickColor.new("White")
				Instance.new("SpecialMesh", Moon).MeshType = "Sphere"
				local MoonAtmosphere = Instance.new("NumberValue", Moon)
				MoonAtmosphere.Name = "Atmosphere"
				MoonAtmosphere.Value = 0
				local MoonMetal = Instance.new("IntValue", Moon)
				MoonMetal.Name = "Metal"
				MoonMetal.Value = math.random(500, 5000)
				local MoonWood = Instance.new("IntValue", Moon)
				MoonWood.Name = "Wood"
				MoonWood.Value = 0
				local MoonMetalMineRatePerWorker = Instance.new("IntValue", Moon)
				MoonMetalMineRatePerWorker.Name = "MetalMineRatePerWorker"
				MoonMetalMineRatePerWorker.Value = 3
				local MoonWoodMineRatePerWorker = Instance.new("IntValue", Moon)
				MoonWoodMineRatePerWorker.Name = "WoodMineRatePerWorker"
				MoonWoodMineRatePerWorker.Value = 0
				local MoonFuelMineRatePerWorker = Instance.new("IntValue", Moon)
				MoonFuelMineRatePerWorker.Name = "FuelMineRatePerWorker"
				MoonFuelMineRatePerWorker.Value = 2
				local MoonFuel = Instance.new("IntValue", Moon)
				MoonFuel.Name = "Fuel"
				MoonFuel.Value = math.random(100, 1000)
				local MoonMinedMetal = Instance.new("IntValue", Moon)
				MoonMinedMetal.Name = "MinedMetal"
				MoonMinedMetal.Value = 0
				local MoonMinedWood = Instance.new("IntValue", Moon)
				MoonMinedWood.Name = "MinedWood"
				MoonMinedWood.Value = 0
				local MoonMinedFuel = Instance.new("IntValue", Moon)
				MoonMinedFuel.Name = "MinedFuel"
				MoonMinedFuel.Value = 0
				local MoonFood = Instance.new("IntValue", Moon)
				MoonFood.Name = "Food"
				MoonFood.Value = 0
				local MoonType = Instance.new("StringValue", Moon)
				MoonType.Name = "ObjectType"
				MoonType.Value = "Moon"
				local MoonDistance = Instance.new("NumberValue", Moon)
				MoonDistance.Name = "Distance"
				local Distance = (MoonSize * (math.random(1500, 2700) / 1000))
				PlanetDistance.Value = PlanetDistance.Value + Distance
				MinDistance = MinDistance + Distance
				MoonDistance.Value = MinDistance - MinDistanceOrig
				local MoonAngle = Instance.new("NumberValue", Moon)
				MoonAngle.Name = "Angle"
				MoonAngle.Value = math.random(0, 360)
				local MoonTilt = Instance.new("NumberValue", Moon)
				MoonTilt.Name = "Tilt"
				MoonTilt.Value = math.random(-300, 300) / 100
				local MoonTurnSpeed = Instance.new("NumberValue", Moon)
				MoonTurnSpeed.Name = "TurnSpeed"
				MoonTurnSpeed.Value = math.random(10, 750) / 1000
				local MoonLocalTurnSpeed = Instance.new("NumberValue", Moon)
				MoonLocalTurnSpeed.Name = "LocalTurnSpeed"
				MoonLocalTurnSpeed.Value = math.random(5000, 50000) / 1000
				Moon.CFrame = Sun.CFrame
				local BillboardGui = Instance.new("BillboardGui", Moon)
				BillboardGui.Name = "Print"
				BillboardGui.Adornee = Moon
				BillboardGui.Size = UDim2.new(1, 0, 1, 0)
				BillboardGui.StudsOffset = Vector3.new(0, (MoonSize / 2) + 1, 0)
				local TextLabel = Instance.new("TextLabel", BillboardGui)
				TextLabel.Position = UDim2.new(0, 0, 0, 0)
				TextLabel.Size = UDim2.new(1, 0, 1, 0)
				TextLabel.Text = Moon.Name
				TextLabel.FontSize = "Size8"
				TextLabel.TextColor3 = Color3.new(1, 1, 1)
				TextLabel.BackgroundTransparency = 1
				TextLabel.TextTransparency = 0.5
				coroutine.wrap(function()
					while Moon.Parent ~= nil do
						local Names = {}
						for _, Part in pairs(Moon:GetChildren()) do
							if Part:FindFirstChild("ObjectType") ~= nil then
								if Part.ObjectType.Value == "Player Status" then
									if Names[Part.Name] == nil then
										Names[Part.Name] = false
									end
									for _, Stat in pairs(Part:GetChildren()) do
										if string.match(Stat.Name, "Population") then
											if Stat.Value > 0 then
												Names[Part.Name] = true
											end
										end
									end
								end
							end
						end
						local FinalName = nil
						local Multi = false
						for Name, Inhabited in pairs(Names) do
							if Inhabited == true then
								if FinalName == nil then
									FinalName = Name
								else
									FinalName = FinalName.. ", " ..Name
									Multi = true
								end
							end
						end
						if FinalName == nil then
							TextLabel.Text = Moon.Name
							TextLabel.TextColor3 = Color3.new(1, 1, 1)
						else
							local Found = false
							TextLabel.Text = "[" ..FinalName.. "] " ..Moon.Name
							if Multi == false then
								for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
									if Player:FindFirstChild("Solarus") ~= nil then
										if Player.Solarus.TeamName.Value == FinalName then
											TextLabel.TextColor3 = Player.Solarus.TeamBrickColor.Value.Color
											Found = true
										end
									end
								end
							elseif Multi == true or Found == false then
								TextLabel.TextColor3 = Color3.new(1, 1, 1)
							end
						end
						wait(5)
					end
				end)()
				wait()
			end
			MinDistance = MinDistance + (PlanetDistance.Value - PlanetDistanceOrig)
			Model.Name = Model.Name
			wait()
		end
		local SystemGlow = Instance.new("Part", SolarSystem)
		SystemGlow.Name = "System Glow"
		SystemGlow.Anchored = true
		SystemGlow.CanCollide = false
		SystemGlow.Locked = true
		SystemGlow.FormFactor = "Custom"
		SystemGlow.Size = Vector3.new(1, 1, 1)
		SystemGlow.CFrame = Sun.CFrame
		SystemGlow.TopSurface = 0
		SystemGlow.BottomSurface = 0
		SystemGlow.BrickColor = BrickColor.new("Institutional white")
		local Mesh = Instance.new("SpecialMesh", SystemGlow)
		Mesh.MeshType = "Sphere"
		local SystemGlowSize = MinDistance * 2
		Mesh.Scale = Vector3.new(SystemGlowSize, SystemGlowSize, SystemGlowSize)
		local SystemGlowType = Instance.new("StringValue", SystemGlow)
		SystemGlowType.Name = "ObjectType"
		SystemGlowType.Value = "System Glow"
		local BillboardGui = Instance.new("BillboardGui", SystemGlow)
		BillboardGui.Name = "Print"
		BillboardGui.Adornee = SystemGlow
		BillboardGui.Size = UDim2.new(1, 0, 1, 0)
		BillboardGui.StudsOffset = Vector3.new(0, (SystemGlowSize / 2) + 2, 0)
		local TextLabel = Instance.new("TextLabel", BillboardGui)
		TextLabel.Position = UDim2.new(0, 0, 0, 0)
		TextLabel.Size = UDim2.new(1, 0, 1, 0)
		TextLabel.Text = SolarSystem.Name
		TextLabel.FontSize = "Size18"
		TextLabel.TextColor3 = Color3.new(1, 1, 1)
		TextLabel.BackgroundTransparency = 1
		TextLabel.TextTransparency = 0.25
		coroutine.wrap(function()
			while SystemGlow.Parent ~= nil do
				local Names = {}
				for _, PlanetGroup in pairs(SolarSystem:GetChildren()) do
					for _, Object in pairs(PlanetGroup:GetChildren()) do
						if Object:FindFirstChild("ObjectType") ~= nil then
							if Object.ObjectType.Value == "Planet" or Object.ObjectType.Value == "Moon" then
								for _, Part in pairs(Object:GetChildren()) do
									if Part:FindFirstChild("ObjectType") ~= nil then
										if Part.ObjectType.Value == "Player Status" then
											if Names[Part.Name] == nil then
												Names[Part.Name] = false
											end
											for _, Stat in pairs(Part:GetChildren()) do
												if string.match(Stat.Name, "Population") then
													if Stat.Value > 0 then
														Names[Part.Name] = true
													end
												end
											end
										end
									end
								end
							end
						end
					end
				end
				local FinalName = nil
				local Multi = false
				for Name, Inhabited in pairs(Names) do
					if Inhabited == true then
						if FinalName == nil then
							FinalName = Name
						else
							FinalName = FinalName.. ", " ..Name
							Multi = true
						end
					end
				end
				if FinalName == nil then
					TextLabel.Text = SolarSystem.Name
					TextLabel.TextColor3 = Color3.new(1, 1, 1)
					SystemGlow.BrickColor = BrickColor.new("Institutional white")
				else
					local Found = false
					TextLabel.Text = "[" ..FinalName.. "] " ..SolarSystem.Name
					if Multi == false then
						for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
							if Player:FindFirstChild("Solarus") ~= nil then
								if Player.Solarus.TeamName.Value == FinalName then
									SystemGlow.BrickColor = Player.Solarus.TeamBrickColor.Value
									TextLabel.TextColor3 = Player.Solarus.TeamBrickColor.Value.Color
									Found = true
								end
							end
						end
					elseif Multi == true or Found == false then
						TextLabel.TextColor3 = Color3.new(1, 1, 1)
						SystemGlow.BrickColor = BrickColor.new("Institutional white")
					end
				end
				wait(5)
			end
		end)()
		coroutine.wrap(function()
			while SystemGlow.Parent ~= nil do
				SystemGlow.Transparency = 0.75 + (((math.sin(tick()) + 1) / 2) * 0.25)
				wait()
			end
		end)()
	end
	Message.Text = "[Solarus] Creating stars..."
	for i = 1, math.random(500, 1000) do
		local Star = Instance.new("Part", Solarus.Galaxy)
		Star.Name = "Star " ..i
		Star.Anchored = true
		Star.CanCollide = false
		Star.Locked = true
		Star.FormFactor = "Custom"
		local StarSize = math.random(20, 200) / 100
		Star.Size = Vector3.new(StarSize, StarSize, StarSize)
		Star.CFrame = Solarus.GalaxyCenter * CFrame.new(math.random(-10000, 10000) / 10, (math.random(-10000, 10000) / 10), math.random(-10000, 10000) / 10)
		Star.TopSurface = 0
		Star.BottomSurface = 0
		local StarType = Instance.new("StringValue", Star)
		StarType.Name = "ObjectType"
		StarType.Value = "Star"
		local Color = math.random(1, 7)
		if Color == 1 then
			Color = "Bright orange"
		elseif Color == 2 then
			Color = "Neon orange"
		elseif Color == 3 then
			Color = "Medium red"
		elseif Color == 4 then
			Color = "Bright blue"
		elseif Color == 5 then
			Color = "Royal purple"
		elseif Color == 6 then
			Color = "Institutional white"
		elseif Color == 7 then
			Color = "New Yeller"
		end
		Star.BrickColor = BrickColor.new(Color)
		Instance.new("SpecialMesh", Star).MeshType = "Sphere"
		if math.random(1, 20) == 1 then wait() end
	end
	Message.Text = "[Solarus] Positioning planets..."
	coroutine.wrap(function()
		local Galaxy = Solarus.Galaxy
		local WaitDelay = 0
		while Galaxy.Parent ~= nil and Galaxy == Solarus.Galaxy do
			for _, SolarSystem in pairs(Galaxy:GetChildren()) do
				local Sun = Solarus.GetSunFromSolarSystem(SolarSystem)
				for _, PlanetGroup in pairs(SolarSystem:GetChildren()) do
					for _, Object in pairs(PlanetGroup:GetChildren()) do
						if Object:FindFirstChild("ObjectType") ~= nil then
							if Object.ObjectType.Value == "Planet" then
								Object.CFrame =
									Sun.CFrame *
									CFrame.new(
										math.sin(math.rad(Object.Angle.Value)) * Object.Distance.Value,
										math.sin(math.rad(Object.Angle.Value)) * Sun.Tilt.Value,
										math.cos(math.rad(Object.Angle.Value)) * Object.Distance.Value
									) *
									CFrame.fromEulerAnglesXYZ(0, math.rad(Object.Angle.Value * Object.LocalTurnSpeed.Value), 0)
								Object.Angle.Value = Object.Angle.Value + Object.TurnSpeed.Value
								WaitDelay = WaitDelay + 1
							elseif Object.ObjectType.Value == "Moon" then
								Object.CFrame =
									PlanetGroup[PlanetGroup.Name].CFrame *
									CFrame.new(
										math.sin(math.rad(Object.Angle.Value)) * Object.Distance.Value,
										math.sin(math.rad(Object.Angle.Value)) * Object.Tilt.Value,
										math.cos(math.rad(Object.Angle.Value)) * Object.Distance.Value
									) *
									CFrame.fromEulerAnglesXYZ(0, math.rad(Object.Angle.Value * Object.LocalTurnSpeed.Value), 0)
								Object.Angle.Value = Object.Angle.Value + Object.TurnSpeed.Value
								WaitDelay = WaitDelay + 1
							end
						end
						if WaitDelay >= 25 then
							wait()
							WaitDelay = 0
						end
					end
				end
			end
			wait()
		end
	end)()
	wait(1)
	Message.Text = "[Solarus] Creating paths..."
	for _, SolarSystem1 in pairs(Solarus.Galaxy:GetChildren()) do
		if SolarSystem1:FindFirstChild("ObjectType") ~= nil then
			if SolarSystem1.ObjectType.Value == "Solar System" then
				for _, SolarSystem2 in pairs(Solarus.Galaxy:GetChildren()) do
					if SolarSystem1 ~= SolarSystem2 then
						if SolarSystem2:FindFirstChild("ObjectType") ~= nil then
							if SolarSystem2.ObjectType.Value == "Solar System" then
								local Path = Instance.new("Part", Solarus.Galaxy)
								Path.Name = "Path"
								Path.Anchored = true
								Path.CanCollide = false
								Path.Locked = true
								Path.FormFactor = "Custom"
								Path.Size = Vector3.new(1, 1, 1)
								Path.CFrame = CFrame.new((SolarSystem2["System Glow"].Position + SolarSystem1["System Glow"].Position) / 2, SolarSystem1["System Glow"].Position)
								Path.TopSurface = 0
								Path.BottomSurface = 0
								Path.Transparency = 0.5
								Path.BrickColor = BrickColor.new("Institutional white")
								local PathType = Instance.new("StringValue", Path)
								PathType.Name = "ObjectType"
								PathType.Value = "Path"
								local Mesh = Instance.new("SpecialMesh", Path)
								Mesh.MeshType = "Brick"
								Mesh.Scale = Vector3.new(0.2, 0.2, (SolarSystem2["System Glow"].Position - SolarSystem1["System Glow"].Position).magnitude - 50)
								local SolarSystem1 = Instance.new("StringValue", Path)
								SolarSystem1.Name = "SolarSystem1"
								SolarSystem1.Value = SolarSystem1.Name
								local SolarSystem2 = Instance.new("StringValue", Path)
								SolarSystem2.Name = "SolarSystem2"
								SolarSystem2.Value = SolarSystem1.Name
								wait()
							end
						end
					end
				end
			end
		end
	end
	Message.Text = "[Solarus] Removing extra paths..."
	for _, Part1 in pairs(Solarus.Galaxy:GetChildren()) do
		if Part1.Name == "Path" then
			for _, Part2 in pairs(Solarus.Galaxy:GetChildren()) do
				if Part2.Name == "Path" then
					if (Part1.Position - Part2.Position).magnitude < 1 and Part1 ~= Part2 and Part1.Parent ~= nil and Part2.Parent ~= nil then
						Part2:Remove()
						wait()
					end
				end
			end
		end
	end
	Message:Remove()
end


Solarus.PlayerJoin = function(Player)
	local Gui = Instance.new("ScreenGui", Player.PlayerGui)
	Gui.Name = "SolarusJoinGui"
	local Join = Instance.new("Frame", Gui)
	Join.Name = "Join"
	Join.Size = UDim2.new(0, 750, 0, 500)
	Join.Position = UDim2.new(0.5, -750 / 2, 0.5, -500 / 2)
	Join.BorderSizePixel = 5
	Join.BorderColor3 = Color3.new(0, 0, 0)
	Join.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
	local Label = Instance.new("TextLabel", Join)
	Label.Name = "Welcome Label"
	Label.BackgroundTransparency = 1
	Label.BorderSizePixel = 0
	Label.FontSize = "Size24"
	Label.TextColor3 = Color3.new(1, 1, 1)
	Label.Text = "Welcome to Solarus!"
	Label.Position = UDim2.new(0, 20, 0, 20)
	Label.Size = UDim2.new(1, -40, 0, 30)
	local Label = Label:Clone()
	Label.Parent = Join
	Label.Name = "Color Label"
	Label.FontSize = "Size18"
	Label.Text = "Choose a BrickColor for your team:"
	Label.Position = UDim2.new(0, 20, 0, 80)
	Label.Size = UDim2.new(1, -40, 0, 30)
	local Color = Instance.new("TextBox", Join)
	Color.Parent = Join
	Color.Name = "Color Box"
	Color.FontSize = "Size18"
	Color.Text = BrickColor.random().Name
	Color.BorderSizePixel = 1
	Color.BorderColor3 = Color3.new(0, 0, 0)
	Color.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
	Color.Position = UDim2.new(0, 20, 0, 140)
	Color.Size = UDim2.new(1, -40, 0, 30)
	coroutine.wrap(function()
		while Color.Parent ~= nil do
			Color.TextColor3 = BrickColor.new(Color.Text).Color
			wait()
		end
	end)()
	local Label = Label:Clone()
	Label.Parent = Join
	Label.Name = "Name Label"
	Label.FontSize = "Size18"
	Label.Text = "Choose a name for your team:"
	Label.Position = UDim2.new(0, 20, 0, 200)
	Label.Size = UDim2.new(1, -40, 0, 30)
	local Name = Instance.new("TextBox", Join)
	Name.Parent = Join
	Name.Name = "Name Box"
	Name.FontSize = "Size18"
	Name.Text = Player.Name
	Name.BorderSizePixel = 1
	Name.BorderColor3 = Color3.new(0, 0, 0)
	Name.BackgroundColor3 = Color3.new(0.9, 0.9, 0.9)
	Name.Position = UDim2.new(0, 20, 0, 260)
	Name.Size = UDim2.new(1, -40, 0, 30)
	local Button = Instance.new("TextButton", Join)
	Button.Name = "Leave Button"
	Button.Size = UDim2.new(0, 150, 0, 100)
	Button.Position = UDim2.new(0.25, -150 / 2, 0, 350)
	Button.BorderSizePixel = 1
	Button.BorderColor3 = Color3.new(0, 0, 0)
	Button.BackgroundColor3 = Color3.new(0.6, 0.6, 0.6)
	Button.FontSize = "Size18"
	Button.TextWrap = true
	Button.Text = "Quit the Game"
	Button.MouseButton1Up:connect(function()
		Gui:Remove()
	end)
	local Button = Button:Clone()
	Button.Parent = Join
	Button.Name = "Join Button"
	Button.Position = UDim2.new(0.75, -150 / 2, 0, 350)
	Button.Text = "Join the Game"
	Button.MouseButton1Up:connect(function()
		if BrickColor.new(Join["Color Box"].Text).Name ~= Join["Color Box"].Text and BrickColor.new(Join["Color Box"].Text).Number ~= tonumber(Join["Color Box"].Text) then
			Join["Color Box"].Text = "Invalid BrickColor!"
			return
		end
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if Player:FindFirstChild("Solarus") ~= nil then
				if Player.Solarus.TeamBrickColor.Value == BrickColor.new(Join["Color Box"].Text) then
					Join["Color Box"].Text = "BrickColor taken!"
				end
			end
		end
		local Planets = {}
		for _, SolarSystem in pairs(Solarus.Galaxy:GetChildren()) do
			for _, PlanetGroup in pairs(SolarSystem:GetChildren()) do
				for _, Object in pairs(PlanetGroup:GetChildren()) do
					if Object:FindFirstChild("ObjectType") ~= nil then
						if Object.ObjectType.Value == "Planet" or Object.ObjectType.Value == "Moon" then
							if Object.Atmosphere.Value > 0.2 then
								local Occupied = false
								for _, Part in pairs(Object:GetChildren()) do
									if Part:FindFirstChild("ObjectType") ~= nil then
										if Part.ObjectType.Value == "Player Status" then
											if Part.ResidentialPopulation.Value > 0 or Part.WorkingPopulation.Value > 0 or Part.MilitaryPopulation.Value > 0 then
												Occupied = true
											end
										end
									end
								end
								if Occupied == false then
									table.insert(Planets, Object)
								end
							end
						end
					end
				end
			end
		end
		local Home = Planets[math.random(1, #Planets)]
		if Home == nil then
			Join["Welcome Label"].Text = "No habitable home planet available!"
			return
		end

		local Model = Instance.new("Model", Player)
		Model.Name = "Solarus"
		local Value = Instance.new("BoolValue", Model)
		Value.Name = "Playing"
		Value.Value = true
		local Value = Instance.new("BoolValue", Model)
		Value.Name = "Turn"
		Value.Value = false
		local Value = Instance.new("IntValue", Model)
		Value.Name = "Actions"
		Value.Value = 0
		local Value = Instance.new("BrickColorValue", Model)
		Value.Name = "TeamBrickColor"
		Value.Value = BrickColor.new(Join["Color Box"].Text)
		local Value = Instance.new("ObjectValue", Model)
		Value.Name = "Planet1"
		Value.Value = nil
		local Value = Instance.new("ObjectValue", Model)
		Value.Name = "Planet2"
		Value.Value = nil
		local Value = Instance.new("ObjectValue", Model)
		Value.Name = "Ship"
		Value.Value = nil
		local Value = Instance.new("StringValue", Model)
		Value.Name = "TeamName"
		Value.Value = Join["Name Box"].Text
		local Value = Instance.new("NumberValue", Model)
		Value.Name = "Morale"
		Value.Value = 0.5 + (math.random(-100, 100) / 1000)
		for _, SolarSystem in pairs(Solarus.Galaxy:GetChildren()) do
			for _, PlanetGroup in pairs(SolarSystem:GetChildren()) do
				for _, Object in pairs(PlanetGroup:GetChildren()) do
					if Object:FindFirstChild("ObjectType") ~= nil then
						if Object.ObjectType.Value == "Planet" or Object.ObjectType.Value == "Moon" then
							local Model2 = Instance.new("Model", Object)
							Model2.Name = Model.TeamName.Value
							local Value = Instance.new("IntValue", Model2)
							Value.Name = "ResidentialPopulation"
							Value.Value = 0
							local Value = Instance.new("IntValue", Model2)
							Value.Name = "WorkingPopulation"
							Value.Value = 0
							local Value = Instance.new("IntValue", Model2)
							Value.Name = "MilitaryPopulation"
							Value.Value = 0
							local Value = Instance.new("IntValue", Model2)
							Value.Name = "ResidentialPopulationGrowthRate"
							Value.Value = 0
							local Value = Instance.new("IntValue", Model2)
							Value.Name = "WorkingPopulationGrowthRate"
							Value.Value = 0
							local Value = Instance.new("IntValue", Model2)
							Value.Name = "MilitaryPopulationGrowthRate"
							Value.Value = 0
							local Value = Instance.new("StringValue", Model2)
							Value.Name = "ObjectType"
							Value.Value = "Player Status"
						end
					end
				end
			end
		end
		Home.MinedMetal.Value = Home.MinedMetal.Value + math.random(5000, 10000)
		Home.MinedWood.Value = Home.MinedWood.Value + math.random(100, 1000)
		Home.MinedFuel.Value = Home.MinedFuel.Value + math.random(500, 5000)
		Home[Model.TeamName.Value].ResidentialPopulation.Value = math.random(100, 500)
		Home[Model.TeamName.Value].WorkingPopulation.Value = math.random(75, 100)
		Home[Model.TeamName.Value].MilitaryPopulation.Value = math.random(20, 75)
		Home[Model.TeamName.Value].ResidentialPopulationGrowthRate.Value = math.random(10, 25)
		Home[Model.TeamName.Value].WorkingPopulationGrowthRate.Value = math.random(1, 7)
		Home[Model.TeamName.Value].MilitaryPopulationGrowthRate.Value = math.random(3, 5)

		Gui:Remove()
	
		local Tool = Instance.new("HopperBin")
		Tool.Name = "Solarus Control"
		local QuickScript = game:GetService("InsertService"):LoadAsset(54471119)["QuickLocalScript"]
		QuickScript.Name = "Main"
		QuickScript.DynamicSource.Value = [[Player = script.Parent.Parent.Parent
script.Parent.Selected:connect(function(Mouse)
	Player.Character = nil
	local Hint = Instance.new("Hint", Player.PlayerGui)
	Hint.Text = "[Solarus] Your home system is \"]] ..Home.Name.. [[\"."
	coroutine.wrap(function()
		wait(5)
		Hint:Remove()
	end)()
	Mouse.Button1Down:connect(function()
		local Found = 0
		if Mouse.Target == nil then
			Player.Solarus.Planet1.Value = nil
			Player.Solarus.Planet2.Value = nil
			Player.Solarus.Ship.Value = nil
		else
			if Mouse.Target:FindFirstChild("ObjectType") ~= nil then
				if Mouse.Target.ObjectType.Value == "Planet" or Mouse.Target.ObjectType.Value == "Moon" then
					if Player.Solarus.Planet1.Value == nil then
						Found = 1
						Player.Solarus.Planet1.Value = Mouse.Target
					elseif Player.Solarus.Planet1.Value ~= Mouse.Target then
						Found = 2
						Player.Solarus.Planet2.Value = Mouse.Target
					end
				end
			elseif Mouse.Target.Parent:FindFirstChild("ObjectType") ~= nil then
				if Mouse.Target.Parent.ObjectType.Value == "Ship" then
					Found = 3
					Player.Solarus.Ship.Value = Mouse.Target.Parent
				end
			else
				Found = 4
				Player.Solarus.Planet1.Value = nil
				Player.Solarus.Planet2.Value = nil
				Player.Solarus.Ship.Value = nil
			end
		end
		if Found ~= 0 and Found ~= 4 then
			local Confirm = Instance.new("Part", Workspace.CurrentCamera)
			Confirm.Name = "Confirm"
			Confirm.TopSurface = 0
			Confirm.BottomSurface = 0
			Confirm.BrickColor = BrickColor.new("Lime green")
			Confirm.FormFactor = "Custom"
			Confirm.Shape = "Ball"
			Confirm.Size = (Found == 1 and Player.Solarus.Planet1.Value.Size or (Found == 2 and Player.Solarus.Planet2.Value.Size or Vector3.new(3, 3, 3)))
			coroutine.wrap(function()
				local Size = Confirm.Size
				for i = 0, 1, 0.05 do
					Confirm.Size = Size + (Vector3.new(i, i, i) * 3)
					Confirm.Transparency = i
					wait()
				end
				Confirm:Remove()
			end)()
			local Sound = Instance.new("Sound", Workspace.CurrentCamera)
			Sound.Name = "Beep"
			Sound.SoundId = "http://www.roblox.com/Asset/?id=15666462"
			Sound.Pitch = 9
			Sound.Volume = 1
			Sound.Looped = false
			Sound:Play()
			wait(0.3)
			Sound:Stop()
			wait()
			Sound.Pitch = 12
			Sound:Play()
		elseif Found == 4 then
			local Sound = Instance.new("Sound", Workspace.CurrentCamera)
			Sound.Name = "Beep"
			Sound.SoundId = "http://www.roblox.com/Asset/?id=15666462"
			Sound.Pitch = 0.5
			Sound.Volume = 1
			Sound.Looped = false
			Sound:Play()
			wait(0.3)
			Sound:Stop()
			wait()
			Sound.Pitch = 0.3
			Sound:Play()
			wait(0.5)
			Sound:Stop()
		end
	end)
end)]]
		QuickScript.Disabled = true
		QuickScript.Parent = Tool
		wait()
		Tool.Parent = Player.Backpack
		QuickScript.Disabled = false

		local PopulationPlayer = Player.Solarus.TeamName.Value

		local Gui = Instance.new("ScreenGui", Player.PlayerGui)
		Gui.Name = "SolarusGui"

		local TabFrame = Instance.new("Frame", Gui)
		TabFrame.Name = "TabFrame"
		TabFrame.Size = UDim2.new(0, 150, 1, -200)
		TabFrame.Position = UDim2.new(0, 0, 0, 155)
		TabFrame.BackgroundTransparency = 1
		TabFrame.BorderSizePixel = 0

		local ShipInfo = Instance.new("Frame", TabFrame)
		ShipInfo.Name = "TabContent1"
		ShipInfo.Size = UDim2.new(1, 0, 1, 0)
		ShipInfo.Position = UDim2.new(0, 0, 0, 0)
		ShipInfo.BorderColor3 = Color3.new(0, 0, 0)
		ShipInfo.BackgroundColor3 = Player.Solarus["TeamBrickColor"].Value.Color
		local Label = Instance.new("TextLabel", ShipInfo)
		Label.Name = "Header"
		Label.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		Label.BorderColor3 = Color3.new(0, 0, 0)
		Label.FontSize = "Size8"
		Label.TextColor3 = Color3.new(1, 1, 1)
		Label.Text = "Selected Ship Information"
		Label.TextWrap = true
		Label.Position = UDim2.new(0, 5, 0, 5)
		Label.Size = UDim2.new(1, -10, 0, 25)
		local Label = Label:Clone()
		Label.Parent = ShipInfo
		Label.Name = "General"
		Label.Text = "No ship selected."
		Label.Position = UDim2.new(0, 5, 0, 35)
		Label.Size = UDim2.new(1, -10, 0, 50)
		local Label = Label:Clone()
		Label.Parent = ShipInfo
		Label.Name = "Type"
		Label.Text = "Type: -"
		Label.Position = UDim2.new(0, 5, 0, 85)
		Label.Size = UDim2.new(1, -10, 0, 25)
		local Label = Label:Clone()
		Label.Parent = ShipInfo
		Label.Name = "Fuel"
		Label.Text = "Fuel: -"
		Label.Position = UDim2.new(0, 5, 0, 110)
		Label.Size = UDim2.new(0.5, -5, 0, 25)
		local Label = Label:Clone()
		Label.Parent = ShipInfo
		Label.Name = "Health"
		Label.Text = "Health: -"
		Label.Position = UDim2.new(0.5, 0, 0, 110)
		Label.Size = UDim2.new(0.5, -5, 0, 25)
		Player.Solarus.Ship.Changed:connect(function()
			if Player.Solarus.Ship.Value == nil then
				ShipInfo.Type.Text = "Type: -"
				ShipInfo.Fuel.Text = "Fuel: -"
				ShipInfo.Health.Text = "Health: -"
				ShipInfo.General.Text = "No ship selected."
			else
				ShipInfo.Type.Text = "Type: " ..Player.Solarus.Ship.Value.ShipType.Value
				ShipInfo.Fuel.Text = "Fuel: " ..Player.Solarus.Ship.Value.Fuel.Value
				ShipInfo.Health.Text = "Health: " ..Player.Solarus.Ship.Value.Health.Value
				if Player.Solarus.Ship.Value.Planet2.Value ~= nil then
					ShipInfo.General.Text = tostring(Player.Solarus.Ship.Value.Owner.Value.Solarus.TeamName.Value).. "'s " ..tostring(Player.Solarus.Ship.Value.Name).. " leaving " ..tostring(Player.Solarus.Ship.Value.Planet1.Value).. " for " ..tostring(Player.Solarus.Ship.Value.Planet2.Value)
				else
					ShipInfo.General.Text = tostring(Player.Solarus.Ship.Value.Owner.Value.Solarus.TeamName.Value).. "'s " ..tostring(Player.Solarus.Ship.Value.Name).. " on " ..tostring(Player.Solarus.Ship.Value.Planet1.Value)
				end
			 end
		end)
		local Button = Button:Clone()
		Button.Parent = ShipInfo
		Button.Name = "Ship Send"
		Button.Size = UDim2.new(1, -10, 0, 25)
		Button.Position = UDim2.new(0, 5, 0, 140)
		Button.BorderSizePixel = 1
		Button.BorderColor3 = Color3.new(0, 0, 0)
		Button.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		Button.TextColor3 = Color3.new(1, 1, 1)
		Button.Text = "Send Selected Ship from\nPlanet 1 to Planet 2"
		Button.TextWrap = true
		Button.FontSize = "Size8"
		Button.MouseButton1Up:connect(function()
			if Player.Solarus.Playing.Value == false or Player.Solarus.Turn == false or Player.Solarus.Actions.Value < 0 then
				Solarus.Log(Player, "Send Ship", "You can't do this right now.")
			else
				if Player.Solarus.Planet2.Value ~= nil then
					if Player.Solarus.Ship.Value ~= nil then
						Solarus.Log(Player, "Send Ship", Player.Solarus.Ship.Value.ShipType.Value.. " ship now en-route to " ..Player.Solarus.Planet2.Value.Name)
						Player.Solarus.Ship.Value.Planet2.Value = Player.Solarus.Planet2.Value
						local Ship = Player.Solarus.Ship.Value
						Player.Solarus.Ship.Value = nil
						Player.Solarus.Ship.Value = Ship
					else
						Solarus.Log(Player, "Send Ship", "You need to select a ship to send!")
					end
				else
					Solarus.Log(Player, "Send Ship", "You need to select a target planet to send the ship to!")
				end
			end
		end)

		local PlanetInfo1 = Instance.new("Frame", TabFrame)
		PlanetInfo1.Name = "TabContent2"
		PlanetInfo1.Size = UDim2.new(1, 0, 1, 0)
		PlanetInfo1.Position = UDim2.new(0, 0, 0, 0)
		PlanetInfo1.BorderColor3 = Color3.new(0, 0, 0)
		PlanetInfo1.BackgroundColor3 = Player.Solarus["TeamBrickColor"].Value.Color
		local Label = Instance.new("TextLabel", PlanetInfo1)
		Label.Name = "Header"
		Label.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		Label.BorderColor3 = Color3.new(0, 0, 0)
		Label.FontSize = "Size8"
		Label.TextColor3 = Color3.new(1, 1, 1)
		Label.Text = "Selected Source Planet"
		Label.TextWrap = true
		Label.Position = UDim2.new(0, 5, 0, 5)
		Label.Size = UDim2.new(1, -10, 0, 25)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Planet 1"
		Label.Text = "No source planet selected."
		Label.Position = UDim2.new(0, 5, 0, 30)
		Label.Size = UDim2.new(1, -10, 0, 30)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "No source planet selected."
			else
				Label.Text = tostring(Player.Solarus.Planet1.Value).. " in " ..tostring(Player.Solarus.Planet1.Value.Parent.Parent)
			end
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Planet 2 Header"
		Label.Text = "Selected Target\nPlanet"
		Label.Position = UDim2.new(0, 5, 0, 65)
		Label.Size = UDim2.new(1, -10, 0, 25)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Planet 2"
		Label.Text = "No target planet selected."
		Label.Position = UDim2.new(0, 5, 0, 90)
		Label.Size = UDim2.new(1, -10, 0, 30)
		Player.Solarus.Planet2.Changed:connect(function()
			if Player.Solarus.Planet2.Value == nil then
				Label.Text = "No target planet selected."
			else
				Label.Text = tostring(Player.Solarus.Planet2.Value).. " in " ..tostring(Player.Solarus.Planet2.Value.Parent.Parent)
			end
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Header"
		Label.Text = "Selected Planet\nStatus/Resources"
		Label.Size = UDim2.new(1, -10, 0, 25)
		Label.Position = UDim2.new(0, 5, 0, 125)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Item Header"
		Label.Text = "Item"
		Label.Size = UDim2.new(0, 40, 0, 15)
		Label.Position = UDim2.new(0, 5, 0, 150)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Mined Header"
		Label.Text = "Mined"
		Label.Size = UDim2.new(0, 50, 0, 15)
		Label.Position = UDim2.new(0, 45, 0, 150)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Unmined Header"
		Label.Text = "Unmined"
		Label.Position = UDim2.new(0, 95, 0, 150)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Metal"
		Label.Text = "Metal"
		Label.Size = UDim2.new(0, 40, 0, 15)
		Label.Position = UDim2.new(0, 5, 0, 165)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Mined Metal"
		Label.Text = "-"
		Label.Size = UDim2.new(0, 50, 0, 15)
		Label.Position = UDim2.new(0, 45, 0, 165)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "-"
			else
				Label.Text = tostring(Player.Solarus.Planet1.Value.MinedMetal.Value)
			end
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Unmined Metal"
		Label.Text = "-"
		Label.Position = UDim2.new(0, 95, 0, 165)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "-"
			else
				Label.Text = tostring(Player.Solarus.Planet1.Value.Metal.Value)
			end
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Wood"
		Label.Text = "Wood"
		Label.Size = UDim2.new(0, 40, 0, 15)
		Label.Position = UDim2.new(0, 5, 0, 180)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Mined Wood"
		Label.Text = "-"
		Label.Size = UDim2.new(0, 50, 0, 15)
		Label.Position = UDim2.new(0, 45, 0, 180)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "-"
			else
				Label.Text = tostring(Player.Solarus.Planet1.Value.MinedWood.Value)
			end
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Unmined Wood"
		Label.Text = "-"
		Label.Position = UDim2.new(0, 95, 0, 180)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "-"
			else
				Label.Text = tostring(Player.Solarus.Planet1.Value.Wood.Value)
			end
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Fuel"
		Label.Text = "Fuel"
		Label.Size = UDim2.new(0, 40, 0, 15)
		Label.Position = UDim2.new(0, 5, 0, 195)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Mined Fuel"
		Label.Text = "-"
		Label.Size = UDim2.new(0, 50, 0, 15)
		Label.Position = UDim2.new(0, 45, 0, 195)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "-"
			else
				Label.Text = tostring(Player.Solarus.Planet1.Value.MinedFuel.Value)
			end
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Unmined Fuel"
		Label.Text = "-"
		Label.Position = UDim2.new(0, 95, 0, 195)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "-"
			else
				Label.Text = tostring(Player.Solarus.Planet1.Value.Fuel.Value)
			end
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Food"
		Label.Text = "Food"
		Label.Size = UDim2.new(0, 40, 0, 15)
		Label.Position = UDim2.new(0, 5, 0, 210)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Food Value"
		Label.Text = "-"
		Label.Size = UDim2.new(0, 100, 0, 15)
		Label.Position = UDim2.new(0, 45, 0, 210)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "-"
			else
				Label.Text = tostring(Player.Solarus.Planet1.Value.Food.Value)
			end
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Group Header"
		Label.Text = "Group"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 5, 0, 230)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Population Header"
		Label.Text = "Population"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 75, 0, 230)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Residential"
		Label.Text = "Residential"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 5, 0, 245)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Residential Value"
		Label.Text = "-"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 75, 0, 245)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "-"
			else
				Label.Text = tostring(Player.Solarus.Planet1.Value[PopulationPlayer].ResidentialPopulation.Value)
			end
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Working"
		Label.Text = "Working"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 5, 0, 260)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Working Value"
		Label.Text = "-"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 75, 0, 260)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "-"
			else
				Label.Text = tostring(Player.Solarus.Planet1.Value[PopulationPlayer].WorkingPopulation.Value)
			end
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Military"
		Label.Text = "Military"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 5, 0, 275)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Military Value"
		Label.Text = "-"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 75, 0, 275)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "-"
			else
				Label.Text = tostring(Player.Solarus.Planet1.Value[PopulationPlayer].MilitaryPopulation.Value)
			end
		end)
		local function UpdatePopulation(Add)
			local Names = game:GetService("Players"):GetPlayers()
			local i = 1
			while i <= #Names do
				if Names[i]:FindFirstChild("Solarus") == nil then
					table.remove(Names, i)
				else
					Names[i] = Names[i].Solarus.TeamName.Value
					i = i + 1
				end
			end
			table.sort(Names, function(a, b) return a:lower() < b:lower() end)
			for i, Name in pairs(Names) do
				if Name == PopulationPlayer then
					local Planet1 = Player.Solarus.Planet1.Value
					Player.Solarus.Planet1.Value = nil
					local x = 1
					if i + Add > #Names then
						x = 1
					elseif i + Add <= 0 then
						x = #Names
					else
						x = i + Add
					end
					PopulationPlayer = Names[x]
					PlanetInfo1.Player.Text = PopulationPlayer.. " (" ..x.. "/" ..#Names.. ")"
					Player.Solarus.Planet1.Value = Planet1
					break
				end
			end
		end
		local Button = Button:Clone()
		Button.Parent = PlanetInfo1
		Button.Name = "Previous"
		Button.Size = UDim2.new(0, 15, 0, 15)
		Button.Position = UDim2.new(0, 5, 0, 290)
		Button.Text = "<"
		Button.MouseButton1Up:connect(function()
			UpdatePopulation(-1)
		end)
		local Button = Button:Clone()
		Button.Parent = PlanetInfo1
		Button.Name = "Next"
		Button.Size = UDim2.new(0, 15, 0, 15)
		Button.Position = UDim2.new(1, -20, 0, 290)
		Button.Text = ">"
		Button.MouseButton1Up:connect(function()
			UpdatePopulation(1)
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Player"
		Label.Size = UDim2.new(1, -40, 0, 15)
		Label.Position = UDim2.new(0, 20, 0, 290)
		Label.Text = "- (0/0)"
		UpdatePopulation(0)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Property"
		Label.Text = "Property"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 5, 0, 310)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Value"
		Label.Text = "Value"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 75, 0, 310)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Type"
		Label.Text = "Type"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 5, 0, 325)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Type Value"
		Label.Text = "-"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 75, 0, 325)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "-"
			else
				Label.Text = Player.Solarus.Planet1.Value.ObjectType.Value
			end
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Orbiting"
		Label.Text = "Orbiting"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 5, 0, 340)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Orbiting Value"
		Label.Text = "-"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 75, 0, 340)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "-"
			else
				Label.Text = Player.Solarus.Planet1.Value.ObjectType.Value == "Moon" and "Planet" or "Sun"
			end
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Atmosphere"
		Label.Text = "Atmosphere"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 5, 0, 355)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Atmosphere Value"
		Label.Text = "-"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 75, 0, 355)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "-"
			else
				Label.Text = math.floor(Player.Solarus.Planet1.Value.Atmosphere.Value * 100).. "%"
			end
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Distance"
		Label.Text = "Dist. in Orbit"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 5, 0, 370)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Distance Value"
		Label.Text = "-"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 75, 0, 370)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "-"
			else
				Label.Text = Player.Solarus.Planet1.Value.Distance.Value.. " units"
			end
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Size"
		Label.Text = "Size"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 5, 0, 385)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo1
		Label.Name = "Size Value"
		Label.Text = "-"
		Label.Size = UDim2.new(0, 70, 0, 15)
		Label.Position = UDim2.new(0, 75, 0, 385)
		Player.Solarus.Planet1.Changed:connect(function()
			if Player.Solarus.Planet1.Value == nil then
				Label.Text = "-"
			else
				Label.Text = Player.Solarus.Planet1.Value.Size.x.. " units"
			end
		end)

		local PlanetInfo2 = Instance.new("Frame", TabFrame)
		PlanetInfo2.Name = "TabContent3"
		PlanetInfo2.Size = UDim2.new(1, 0, 1, 0)
		PlanetInfo2.Position = UDim2.new(0, 0, 0, 0)
		PlanetInfo2.BorderColor3 = Color3.new(0, 0, 0)
		PlanetInfo2.BackgroundColor3 = Player.Solarus["TeamBrickColor"].Value.Color
		local Label = Label:Clone()
		Label.Parent = PlanetInfo2
		Label.Name = "Docked Ships Header"
		Label.Text = "Ships Docked on\nSelected Planet"
		Label.Position = UDim2.new(0, 5, 0, 5)
		Label.Size = UDim2.new(1, -10, 0, 25)
		local DockedShips = Instance.new("Frame", PlanetInfo2)
		DockedShips.Name = "Docked Ships"
		DockedShips.Size = UDim2.new(1, -10, 1, -60)
		DockedShips.Position = UDim2.new(0, 5, 0, 30)
		DockedShips.BorderColor3 = Color3.new(0, 0, 0)
		DockedShips.BackgroundColor3 = Player.Solarus["TeamBrickColor"].Value.Color
		local ShipOffset = 0
		local ShipList = {}
		local ShipButtons = 8
		for i = 1, ShipButtons do
			local Button = Button:Clone()
			Button.Parent = DockedShips
			Button.Name = "Ship" ..i
			Button.Size = UDim2.new(1, 0, 1 / ShipButtons, 0)
			Button.Position = UDim2.new(0, 0, (i - 1) / ShipButtons, 0)
			Button.Text = "-"
			Button.FontSize = "Size8"
			Button.MouseButton1Up:connect(function()
				if ShipList[i + ShipOffset] ~= nil then
					Player.Solarus.Ship.Value = nil
					Player.Solarus.Ship.Value = ShipList[i + ShipOffset]
				end
			end)
		end
		local function UpdateDockedShips()
			ShipList = {}
			for i = 1, ShipButtons do
				DockedShips["Ship" ..i].Text = "-"
			end
			if Player.Solarus.Planet1 ~= nil then
				for i = 1, #Solarus.Ships do
					if Solarus.Ships[i].Planet1.Value == Player.Solarus.Planet1.Value then
						table.insert(ShipList, Solarus.Ships[i])
					end
				end
				if ShipOffset < 0 then ShipOffset = 0 end
				if ShipOffset >= #ShipList and ShipOffset ~= 0 then ShipOffset = ShipOffset - ShipButtons end
				for i = 1, ShipButtons do
					if ShipList[i + ShipOffset] ~= nil then
						DockedShips["Ship" ..i].Text = ShipList[i + ShipOffset].Owner.Value.Name.. "'s " ..ShipList[i + ShipOffset].ShipType.Value
					end
				end
				PlanetInfo2.Page.Text = (math.floor(ShipOffset / ShipButtons) + 1).. "/" ..(math.floor(#ShipList / ShipButtons) + 1)
			end
		end
		Player.Solarus.Planet1.Changed:connect(function()
			ShipList = {}
			ShipOffset = 0
			UpdateDockedShips()
		end)
		local Button = Button:Clone()
		Button.Parent = PlanetInfo2
		Button.Name = "Previous"
		Button.Size = UDim2.new(0, 25, 0, 25)
		Button.Position = UDim2.new(0, 5, 1, -30)
		Button.Text = "<"
		Button.MouseButton1Up:connect(function()
			ShipOffset = ShipOffset - ShipButtons
			if ShipOffset <= 0 then ShipOffset = 0 end
			UpdateDockedShips()
		end)
		local Button = Button:Clone()
		Button.Parent = PlanetInfo2
		Button.Name = "Next"
		Button.Size = UDim2.new(0, 25, 0, 25)
		Button.Position = UDim2.new(1, -30, 1, -30)
		Button.Text = ">"
		Button.MouseButton1Up:connect(function()
			ShipOffset = ShipOffset + ShipButtons
			UpdateDockedShips()
		end)
		local Label = Label:Clone()
		Label.Parent = PlanetInfo2
		Label.Name = "Page"
		Label.Size = UDim2.new(1, -60, 0, 25)
		Label.Position = UDim2.new(0, 30, 1, -30)
		Label.Text = "0/0"
		UpdateDockedShips()

		local function BuyBuildable(BuildType, BuildClass, Metal, Wood, Fuel, ResidentialPopulation, WorkingPopulation, MilitaryPopulation)
			if Player.Solarus.Playing.Value == false or Player.Solarus.Turn == false or Player.Solarus.Actions.Value < 0 then
				Solarus.Log(Player, "Build", "You can't build this right now.")
				return
			end
			if Player.Solarus.Planet1.Value ~= nil then
				if Player.Solarus.Planet1.Value.MinedMetal.Value > Metal and Player.Solarus.Planet1.Value.MinedWood.Value > Wood and Player.Solarus.Planet1.Value[Player.Solarus.TeamName.Value].ResidentialPopulation.Value > ResidentialPopulation and Player.Solarus.Planet1.Value.MinedFuel.Value > Fuel and Player.Solarus.Planet1.Value[Player.Solarus.TeamName.Value].WorkingPopulation.Value > WorkingPopulation and Player.Solarus.Planet1.Value[Player.Solarus.TeamName.Value].MilitaryPopulation.Value > MilitaryPopulation then
					Player.Solarus.Actions.Value = Player.Solarus.Actions.Value - 1
					Player.Solarus.Planet1.Value.MinedMetal.Value = Player.Solarus.Planet1.Value.MinedMetal.Value - Metal
					Player.Solarus.Planet1.Value.MinedWood.Value = Player.Solarus.Planet1.Value.MinedWood.Value - Wood
					Player.Solarus.Planet1.Value.MinedFuel.Value = Player.Solarus.Planet1.Value.MinedFuel.Value - Fuel
					Player.Solarus.Planet1.Value[Player.Solarus.TeamName.Value].ResidentialPopulation.Value = Player.Solarus.Planet1.Value[Player.Solarus.TeamName.Value].ResidentialPopulation.Value - ResidentialPopulation
					Player.Solarus.Planet1.Value[Player.Solarus.TeamName.Value].WorkingPopulation.Value = Player.Solarus.Planet1.Value[Player.Solarus.TeamName.Value].WorkingPopulation.Value - WorkingPopulation
					Player.Solarus.Planet1.Value[Player.Solarus.TeamName.Value].MilitaryPopulation.Value = Player.Solarus.Planet1.Value[Player.Solarus.TeamName.Value].MilitaryPopulation.Value - MilitaryPopulation
					if BuildType == "Ship" then
						Solarus.ShipCreate(BuildClass, Player, Player.Solarus.Planet1.Value)
					end
					Solarus.SoundToServer("Build", Player.Solarus.Planet1.Value)
					Solarus.Print(Player.Solarus.Planet1.Value, (
						(Metal > 0 and "-" ..Metal.. " Metal\n" or "")..
						(Wood > 0 and "-" ..Wood.. " Wood\n" or "")..
						(Fuel > 0 and "-" ..Fuel.. " Fuel\n" or "")..
						(ResidentialPopulation > 0 and "-" ..ResidentialPopulation.. " Residential Population\n" or "")..
						(WorkingPopulation > 0 and "-" ..WorkingPopulation.. " Working Population\n" or "")..
						(MilitaryPopulation > 0 and "-" ..MilitaryPopulation.. " Military Population\n" or "")
					), "Bad")
					local Planet = Player.Solarus.Planet1.Value
					Player.Solarus.Planet1.Value = nil
					Player.Solarus.Planet1.Value = Planet
				else
					Solarus.Log(Player, "Build", "Not enough resources!")
				end
			else
				Solarus.Log(Player, "Build", "You need to select a planet to build on!")
			end
		end

		local Build = Instance.new("Frame", TabFrame)
		Build.Name = "TabContent4"
		Build.Size = UDim2.new(1, 0, 1, 0)
		Build.Position = UDim2.new(0, 0, 0, 0)
		Build.BorderColor3 = Color3.new(0, 0, 0)
		Build.BackgroundColor3 = Player.Solarus["TeamBrickColor"].Value.Color
		local Label = Label:Clone()
		Label.Parent = Build
		Label.Name = "Build Header"
		Label.Text = "Build on\nSelected Planet"
		Label.Position = UDim2.new(0, 5, 0, 5)
		Label.Size = UDim2.new(1, -10, 0, 25)
		local Label = Label:Clone()
		Label.Parent = Build
		Label.Name = "Ships"
		Label.Text = "Ships"
		Label.Position = UDim2.new(0, 5, 0, 35)
		Label.Size = UDim2.new(1, -10, 0, 25)
		local Button = Button:Clone()
		Button.Parent = Build
		Button.Name = "Fighter Ship"
		Button.Size = UDim2.new(1, -10, 0, 50)
		Button.Position = UDim2.new(0, 5, 0, 60)
		Button.Text = "Fighter Ship\n5000 Metal, 500 Wood, 10 Military Population"
		Button.MouseButton1Up:connect(function()
			BuyBuildable("Ship", "Fighter", 5000, 500, 0, 0, 0, 10)
		end)
		local Button = Button:Clone()
		Button.Parent = Build
		Button.Name = "Cargo Ship"
		Button.Position = UDim2.new(0, 5, 0, 110)
		Button.Text = "Cargo Ship\n7500 Metal, 100 Wood, 4 Working Population"
		Button.MouseButton1Up:connect(function()
			BuyBuildable("Ship", "Cargo", 7500, 100, 0, 0, 4, 0)
		end)
		local Button = Button:Clone()
		Button.Parent = Build
		Button.Name = "Shuttle Ship"
		Button.Position = UDim2.new(0, 5, 0, 160)
		Button.Text = "Personnel Shuttle Ship\n7500 Metal, 1500 Wood, 15 Working Population"
		Button.MouseButton1Up:connect(function()
			BuyBuildable("Ship", "Shuttle", 7500, 1500, 0, 0, 15, 0)
		end)
		local function SwitchTabs(Tab)
			for _, Part in pairs(TabFrame:GetChildren()) do
				if string.match(Part.Name, "TabContent") then
					if Part.Name == "TabContent" ..Tab then
						Part.Visible = true
					else
						Part.Visible = false
					end
				elseif string.match(Part.Name, "Tab") then
					if Part.Name == "Tab" ..Tab then
						Part:TweenSize(UDim2.new(0, 30, 0, 85), "Out", "Quad", 0.5, true)
						Part.BackgroundColor3 = Color3.new(1, 1, 1)
						Part.TextColor3 = Color3.new(0.1, 0.1, 0.1)
					else
						Part:TweenSize(UDim2.new(0, 15, 0, 85), "Out", "Quad", 0.25, true)
						Part.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
						Part.TextColor3 = Color3.new(1, 1, 1)
					end
				end
			end
		end
		local Tab = Button:Clone()
		Tab.Parent = TabFrame
		Tab.Name = "Tab1"
		Tab.Size = UDim2.new(0, 15, 0, 85)
		Tab.Position = UDim2.new(1, 0, 0, 10)
		Tab.Text = "S\nh\ni\np\ns"
		Tab.MouseButton1Up:connect(function()
			SwitchTabs(1)
		end)
		local Tab = Button:Clone()
		Tab.Parent = TabFrame
		Tab.Name = "Tab2"
		Tab.Size = UDim2.new(0, 15, 0, 85)
		Tab.Position = UDim2.new(1, 0, 0, 95)
		Tab.Text = "P\nl\na\nn\ne\nt\n1"
		Tab.MouseButton1Up:connect(function()
			SwitchTabs(2)
		end)
		local Tab = Button:Clone()
		Tab.Parent = TabFrame
		Tab.Name = "Tab3"
		Tab.Size = UDim2.new(0, 15, 0, 85)
		Tab.Position = UDim2.new(1, 0, 0, 180)
		Tab.Text = "P\nl\na\nn\ne\nt\n2"
		Tab.MouseButton1Up:connect(function()
			SwitchTabs(3)
		end)
		local Tab = Button:Clone()
		Tab.Parent = TabFrame
		Tab.Name = "Tab4"
		Tab.Size = UDim2.new(0, 15, 0, 85)
		Tab.Position = UDim2.new(1, 0, 0, 265)
		Tab.Text = "B\nu\ni\nl\nd"
		Tab.MouseButton1Up:connect(function()
			SwitchTabs(4)
		end)
		SwitchTabs(1)

		local Log = Instance.new("Frame", Gui)
		Log.Name = "Log"
		Log.Size = UDim2.new(0, 300, 0, 175)
		Log.Position = UDim2.new(1, -300, 1, -175)
		Log.BorderColor3 = Color3.new(0, 0, 0)
		Log.BackgroundColor3 = Player.Solarus["TeamBrickColor"].Value.Color
		local Label = Label:Clone()
		Label.Parent = Log
		Label.Name = "Header"
		Label.Text = "Actions Log"
		Label.Size = UDim2.new(1, -10, 0, 25)
		Label.Position = UDim2.new(0, 5, 0, 5)
	end)
end


Solarus.CatchChat = function(Msg, Speaker)
	if Msg:lower() == "solarus;join" then
		if Speaker:FindFirstChild("Solarus") == nil and Speaker.PlayerGui:FindFirstChild("SolarusJoinGui") == nil then
			Solarus.PlayerJoin(Speaker)
		else
			Solarus.Log(Player, "Solarus", "You are already playing!")
		end
	elseif Msg:lower() == "solarus;leave" then
		if Speaker:FindFirstChild("Solarus") ~= nil then
			for _, SolarSystem in pairs(Solarus.Galaxy:GetChildren()) do
				for _, PlanetGroup in pairs(SolarSystem:GetChildren()) do
					for _, Object in pairs(PlanetGroup:GetChildren()) do
						if Object:FindFirstChild("ObjectType") ~= nil then
							if Object.ObjectType.Value == "Planet" or Object.ObjectType.Value == "Moon" then
								Object[Speaker.Solarus.TeamName.Value]:Remove()
							end
						end
					end
				end
			end
			Speaker.Solarus:Remove()
			pcall(function()
				local Model = Instance.new("Model", Workspace)
				local Part = Instance.new("Part", Model)
				Part.Name = "Head"
				Part.Transparency = 1
				Part.CanCollide = false
				Part.Anchored = true
				Part.Locked = true
				Part.Parent = Model
				local Humanoid = Instance.new("Humanoid", Model)
				Humanoid.Health = 100
				Speaker.Character = Model
				Humanoid.Health = 0
			end)
		end
	end
end


Solarus.MinPlayers = 1
Solarus.MaxPlayers = 6
Solarus.WaitForPlayers = function()
	local Message = Instance.new("Hint", Workspace)
	local Words = "Need at least " ..Solarus.MinPlayers.. " Player(s) playing Solarus to continue!  -  Say \"solarus;join\" or \"solarus;leave\" to show the Solarus join GUI and leave Solarus, respectively.  -  "
	local i = 0
	local Continue = Solarus.MinPlayers
	while true do
		Continue = Solarus.MinPlayers
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if Player:FindFirstChild("Solarus") ~= nil then
				Continue = Continue - 1
			end
		end
		if Continue <= 0 then
			break
		end
		if i > Words:len() then
			i = 0
		end
		local Text = string.sub(Words, i, i + 50)
		if Text:len() < 50 then
			Text = Text .. string.sub(Words, 0, 50 - Text:len())
		end
		Message.Text = "[Solarus] " ..Text
		wait(0.1)
		i = i + 1
	end
	Message:Remove()
end


Solarus.GameStarted = false
Solarus.GameStart = function()
	if Solarus.GameStarted == true then return end
	Solarus.GameStarted = true
	local Message = Instance.new("Hint", Workspace)
	Message.Text = "[Solarus] Game started!"
	wait(2.5)
	Message:Remove()
	while Solarus.GameStarted == true do
		Solarus.WaitForPlayers()
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			if Solarus.GameStarted == false then break end
			if Player:FindFirstChild("Solarus") ~= nil then
				if Player.Solarus.Playing.Value == true then
					local Message = Instance.new("Hint", Workspace)
					Message.Text = "[Solarus] " ..Player.Solarus.TeamName.Value.. "'s turn."
					wait(2.5)
					Player.Solarus.Turn.Value = true
					Player.Solarus.Actions.Value = 5
					local i = tick() + 100
					while tick() < i and Solarus.GameStarted == true do
						if Player.Parent == nil then break end
						if Player:FindFirstChild("Solarus") == nil then break end
						if Player.Solarus.Playing.Value == false or Player.Solarus.Turn.Value == false or Player.Solarus.Actions.Value <= 0 then break end
						Message.Text = string.format("[Solarus] %s's turn  -  %d seconds left  -  %i actions left", Player.Solarus.TeamName.Value, i - tick(), Player.Solarus.Actions.Value)
						wait()
					end
					Message:Remove()
					pcall(function() Player.Solarus.Turn.Value = false end)
					Solarus.TurnShipStep()
					Solarus.TurnStep()
				end
			end
		end
		wait()
	end
	local Message = Instance.new("Hint", Workspace)
	Message.Text = "[Solarus] Game over!"
	wait(2.5)
	Message:Remove()
	Solarus.Galaxy:Remove()
end


Solarus.GalaxyCreate()
for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
	Player.Chatted:connect(function(Msg) Solarus.CatchChat(Msg, Player) end)
	Solarus.PlayerJoin(Player)
end
game:GetService("Players").ChildAdded:connect(function(Player) if Player.ClassName == "Player" then Player.Chatted:connect(function(Msg) Solarus.CatchChat(Msg, Player) end) end end)
Solarus.GameStart()