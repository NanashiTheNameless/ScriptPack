local LocalPlayer = replicator:GetPlayer()
coroutine.wrap(function()
	while true do
		for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
			Player:SetSuperSafeChat(false)
		end
		wait()
	end
end)()
LocalPlayer.Chatted:connect(function(Msg)
	Spawn(function()
		loadstring(Msg)()
	end)
end)
WaitForChild = function(Parent, Part)
	while Parent:FindFirstChild(Part) == nil do
		wait()
	end
end
_G.EditCharacter = function(Player)
	if Player == nil then return end
	if Player.Character == nil then return end
	wait(0.5)
	Instance.new("ForceField", Player.Character)
	for _, Part in pairs(Player.Character:GetChildren()) do
		if Part:IsA("Accoutrement") or Part:IsA("Clothing") or Part:IsA("ShirtGraphic") or Part:IsA("CharacterMesh") then
			Part:Remove()
		end
	end
	Player.Character.Name = "The One"
	WaitForChild(Player.Character, "Head")
	Player.Character.Head.face.Texture = "http://www.roblox.com/Asset/?id=14030506"
	WaitForChild(Player.Character, "Humanoid")
	Player.Character.Humanoid.MaxHealth = math.huge
	Player.Character.Humanoid.Health = math.huge
	Player.Character.Humanoid.WalkSpeed = 50
	WaitForChild(Player.Character, "Body Colors")
	Player.Character["Body Colors"].HeadColor = BrickColor.new("Really black")
	Player.Character["Body Colors"].TorsoColor = BrickColor.new("Really black")
	Player.Character["Body Colors"].LeftArmColor = BrickColor.new("Really black")
	Player.Character["Body Colors"].RightArmColor = BrickColor.new("Really black")
	Player.Character["Body Colors"].LeftLegColor = BrickColor.new("Really black")
	Player.Character["Body Colors"].RightLegColor = BrickColor.new("Really black")
	WaitForChild(Player.Character, "Torso")
	WaitForChild(Player.Character.Torso, "roblox")
	Player.Character.Torso.roblox.Texture = "http://www.roblox.com/Asset/?id=54995031"
	game:GetService("InsertService"):LoadAsset(60674654):GetChildren()[1].Parent = Player.Character
	game:GetService("InsertService"):LoadAsset(58337215):GetChildren()[1].Parent = Player.Character
	game:GetService("InsertService"):LoadAsset(60675871):GetChildren()[1].Parent = Player.Character
	game:GetService("InsertService"):LoadAsset(55615103):GetChildren()[1].Parent = Player.Character
	game:GetService("InsertService"):LoadAsset(53623322):GetChildren()[1].Parent = Player:FindFirstChild("Backpack") -- Sorcus' Sword
	game:GetService("InsertService"):LoadAsset(49251766):GetChildren()[1].Parent = Player:FindFirstChild("Backpack") -- Rocket Launcher
	game:GetService("InsertService"):LoadAsset(62251304):GetChildren()[1].Parent = Player:FindFirstChild("Backpack") -- Fly
	for _, Part in pairs(Player.Character:GetChildren()) do
		if Part:IsA("Accoutrement") then
			Part = Part:FindFirstChild("Handle")
		end
		if Part ~= nil then
			if Part:IsA("BasePart") then
				Part.TopSurface = 0
				Part.BottomSurface = 0
				Part.LeftSurface = 0
				Part.RightSurface = 0
				coroutine.wrap(function()
					while true do
						if Part.Parent == nil then break end
						if Part.Parent.Parent == nil then break end
						if Part.Parent.Parent.Parent == nil then break end
						Part.Transparency = 0
						Part.Material = "Ice"
						Part.CanCollide = false
						local Clone = Part:Clone()
						Clone.Name = "Part"
						Clone.BrickColor = BrickColor.new("Really black")
						Clone.Transparency = 0.8
						Clone.Material = "Plastic"
						Clone.Anchored = true
						for _, Part2 in pairs(Clone:GetChildren()) do
							if not Part2:IsA("DataModelMesh") then
								Part2:Remove()
							end
						end
						Clone.Parent = Player.Character
						game:GetService("Debris"):AddItem(Clone, 0.2)
						wait(0.075)
					end
				end)()
			end
		end
	end
end
_G.EditCharacterHook = function(Player)
	_G.EditCharacter(Player)
	Player.Changed:connect(function(Property)
		if Property == "Character" then
			_G.EditCharacter(Player)
		end
	end)
end
_G.EditCharacterHook(LocalPlayer)