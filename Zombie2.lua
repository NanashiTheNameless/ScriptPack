script.Name = "Zombie2"

Playing = false
Level = 1
Message = Instance.new("Hint", Workspace)
SoundIDs = {25954372, 25954392, 25954407, 24902268, 24902294}
Outfits = {
	--[[
	Outfits help:
		Outfits follow this sequence: KEY 1: VALUE 1|VALUE 2,KEY 2: VALUE 1|VALUE 2|VALUE 3,KEY 3: VALUE 1,etcetera
		Keys: hc, tc, lac, rac, llc, rlc, tshirt, shirt, pants, cmh, cmt, cmla, cmra, cmll, cmrl, hat. See sample below. Note that the keys in the sample are not all required.
		Limb colors default to "Really red".
		An outfit is ONE STRING. The sample string below is separated in this fashion: "String! " .. "Still the same string!" .. " Hello world!"
		Hat sequence: "MeshId|TextureId|Offset.x|.y|.z|Scale.x|.y|.z|VertexColor.x|.y|.z|AttachmentForward.x|.y|.z|AttachmentPos.x|.y|.z|AttachmentRight.x|.y|.z|AttachmentUp.x|.y|.z|Handle.Shape|Handle.FormFactor|Handle.Size.x|.y|.z|Hat.Name"
		CharacterMesh (cm) sequence: "BodyPart|MeshId|BaseTextureId|OverlayTextureId"
	--]]
	"face: rbxasset://textures/face.png,"..
	"hc: Br. yellowish green,"..
	"tc: Reddish brown,"..
	"lac: Br. yellowish green,"..
	"rac: Br. yellowish green,"..
	"llc: Reddish brown,"..
	"rlc: Reddish brown,",

	"face: rbxasset://textures/face.png,"..
	"hc: Br. yellowish green,"..
	"tc: Reddish brown,"..
	"lac: Br. yellowish green,"..
	"rac: Br. yellowish green,"..
	"llc: Reddish brown,"..
	"rlc: Reddish brown,"..
	"shirt: http://www.roblox.com/Asset/?id=23913892,"..
	"pants: http://www.roblox.com/Asset/?id=23913910,"..
	"cm: Torso|27111894|0|0,"..
	"cm: LeftArm|27111419|0|0,"..
	"cm: RightArm|27111864|0|0,"..
	"cm: LeftLeg|27111857|0|0,"..
	"cm: RightLeg|27111882|0|0,"..
	"hat: http://www.roblox.com/Asset/?id=18010890|"..	--Mesh.MeshId
	"http://www.roblox.com/Asset/?id=18010881|"..		--Mesh.TextureId
	"0|0|0|"..		--Mesh.Offset
	"1|1|1|"..		--Mesh.Scale
	"1|1|1|"..		--Mesh.VertexColor
	"0|0|1|"..		--Hat.AttachmentForward
	"0|-0.11|0|"..	--Hat.AttachmentPos
	"1|0|0|"..		--Hat.AttachmentRight
	"0|1|0|"..		--Hat.AttachmentUp
	"Block|"..		--Handle.Shape
	"Symmetric|"..	--Handle.FormFactor
	"2|1|1|"..		--Handle.Size
	"U.S. Military Helmet",	--Hat.Name

	"face: rbxasset://textures/face.png,"..
	"hc: Br. yellowish green,"..
	"tc: Institutional white,"..
	"lac: Really black,"..
	"rac: Really black,"..
	"llc: Really black,"..
	"rlc: Really black,"..
	"tshirt: http://www.roblox.com/Asset/?id=1718547,"..
	"hat: http://www.roblox.com/Asset/?id=22944290|"..	--Mesh.MeshId
	"http://www.roblox.com/Asset/?id=22944281|"..		--Mesh.TextureId
	"0|0|0|"..		--Mesh.Offset
	"1|1|0.97|"..	--Mesh.Scale
	"1|1|1|"..		--Mesh.VertexColor
	"0|0|1|"..		--Hat.AttachmentForward
	"0|-0.15|0.29|"..--Hat.AttachmentPos
	"1|0|0|"..		--Hat.AttachmentRight
	"0|1|0|"..		--Hat.AttachmentUp
	"Block|"..		--Handle.Shape
	"Symmetric|"..	--Handle.FormFactor
	"1|1|2|"..		--Handle.Size
	"Lua Cap"		--Hat.Name
}
RandomNames = {
	Prefix = {"the", "my", "his", "hers", "not", "evil", "good", "totally", "master", "mega", "queen", "king", "solar", "super", "so", "incredible", "lost", "crazy", "insane", "iAm", "iam", "really", "alien", "ro", "blox", "DX", "XD", "lol", "rofl", "rlly", "raging", "raeging", "manly", "womanly", "xX", "xXxX", "xXxXxX"},
	Center = {"twister", "striker", "epic", "smasher", "cool", "sk8ter", "sk8er", "sk8r", "pwn", "pwnage", "own", "ownage", "owned", "troll", "troller", "lurve", "l0v", "lov", "l0ve", "baby", "tagger", "tagged", "ro", "blox", "king", "queen", "master", "3p1c", "l33t", "leet", "1337", "gai", "john", "peter", "doe", "jimmy", "jacob", "sora", "elliot", "mary", "rager", "raeger", "sara", "sarah", "dawg", "dog", "killer", "slicer", "cutter", "maimer", "attacker", "murderer", "assault", "assaulter", "killa", "k1lla", "k1ll4", "k1ll3r", "ownyou", "OwnYou", "SPAMSPAMSPAMSPAM", "SPAMSPAMSPAM", "THISISNOTASPAMACCOUNT", "who", "paste", "sonic"},
	Suffix = {"dude", "daddy", "man", "male", "guy", "gai", "dood", "d00d", "D00D", "gal", "girl", "grl", "lady", "woman", "soul", "dog", "dawg"}
}


function _G.GenerateRandomUsername()
	NamePrefix = math.random(1, 10) == 1 and tostring(math.random(10, 100)) or RandomNames["Prefix"][math.random(1, #RandomNames["Prefix"])]
	NameCenter = math.random(1, 50) == 1 and tostring(math.random(10, 100000)) or RandomNames["Center"][math.random(1, #RandomNames["Center"])]
	NameSuffix = math.random(1, 10) == 1 and tostring(math.random(10, 1000)) or RandomNames["Suffix"][math.random(1, #RandomNames["Suffix"])]
	NamePrefix = math.random(1, 2) == 1 and string.sub(NamePrefix, 0, 1):upper() .. string.sub(NamePrefix, 2) or NamePrefix
	NameCenter = math.random(1, 2) == 1 and string.sub(NameCenter, 0, 1):upper() .. string.sub(NameCenter, 2) or NameCenter
	NameSuffix = math.random(1, 2) == 1 and string.sub(NameSuffix, 0, 1):upper() .. string.sub(NameSuffix, 2) or NameSuffix
	NamePrefix = math.random(1, 10) == 1 and NamePrefix:upper() or NamePrefix
	NameCenter = math.random(1, 5) == 1 and NameCenter:upper() or NameCenter
	NameSuffix = math.random(1, 10) == 1 and NameSuffix:upper() or NameSuffix
	NamePrefix = math.random(1, 10) == 1 and "" or NamePrefix
	NameCenter = math.random(1, 100) == 1 and "" or NameCenter
	NameSuffix = math.random(1, 10) == 1 and "" or NameSuffix
	return NamePrefix .. NameCenter .. NameSuffix
end


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


function _G.MakeZombie(Position)
	local Character = Instance.new("Model")
	Character.Name = _G.GenerateRandomUsername()
	Instance.new("Configuration", Character).Name = "Zombie"
	local Template = Instance.new("Part")
	Template.FormFactor = "Custom"
	Template.Size = Vector3.new(1, 2, 1)
	Template.BrickColor = BrickColor.new("Really red")
	Template.Locked = true
	local Head = Template:Clone()
	Head.Name = "Head"
	Head.TopSurface = "Smooth"
	Head.BottomSurface = "Smooth"
	Head.Size = Vector3.new(2, 1, 1)
	Head.Parent = Character
	local Mesh = Instance.new("SpecialMesh")
	Mesh.MeshType = "Head"
	Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
	Mesh.Parent = Head
	local Face = Instance.new("Decal")
	Face.Name = "face"
	Face.Parent = Head
	local Torso = Template:Clone()
	Torso.Name = "Torso"
	Torso.LeftSurface = "Weld"
	Torso.RightSurface = "Weld"
	Torso.CFrame = CFrame.new(0, 10000, 0)
	Torso.Size = Vector3.new(2, 2, 1)
	Torso.Parent = Character
	local TShirt = Instance.new("Decal")
	TShirt.Name = "roblox"
	TShirt.Parent = Torso
	local LeftArm = Template:Clone()
	LeftArm.Name = "Left Arm"
	LeftArm.Parent = Character
	local RightArm = Template:Clone()
	RightArm.Name = "Right Arm"
	RightArm.Parent = Character
	local LeftLeg = Template:Clone()
	LeftLeg.Name = "Left Leg"
	LeftLeg.Parent = Character
	local RightLeg = Template:Clone()
	RightLeg.Name = "Right Leg"
	RightLeg.Parent = Character
	Character:BreakJoints()
	local Neck = Instance.new("Weld")
	Neck.Name = "Neck"
	Neck.Part0 = Torso
	Neck.Part1 = Head
	Neck.C0 = CFrame.new(0, 1.5, 0)
	Neck.Parent = Torso
	local LeftShoulder = Instance.new("Motor")
	LeftShoulder.Name = "Left Shoulder"
	LeftShoulder.Part0 = Torso
	LeftShoulder.Part1 = LeftArm
	LeftShoulder.MaxVelocity = 0.1
	LeftShoulder.C0 = CFrame.new(-Torso.Size.x / 2 - RightArm.Size.x / 2, LeftArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0)
	LeftShoulder.C1 = CFrame.new(0, LeftArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0)
	LeftShoulder.Parent = Torso
	local RightShoulder = Instance.new("Motor")
	RightShoulder.Name = "Right Shoulder"
	RightShoulder.Part0 = Torso
	RightShoulder.Part1 = RightArm
	RightShoulder.MaxVelocity = 0.1
	RightShoulder.C0 = CFrame.new(Torso.Size.x / 2 + RightArm.Size.x / 2, RightArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0)
	RightShoulder.C1 = CFrame.new(0, RightArm.Size.y / 4, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0)
	RightShoulder.Parent = Torso
	local LeftHip = Instance.new("Motor")
	LeftHip.Name = "Left Hip"
	LeftHip.Part0 = Torso
	LeftHip.Part1 = LeftLeg
	LeftHip.MaxVelocity = 0.1
	LeftHip.C0 = CFrame.new(-LeftLeg.Size.x / 2, -LeftLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0)
	LeftHip.C1 = CFrame.new(0, LeftLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, -3.14 / 2, 0)
	LeftHip.Parent = Torso
	local RightHip = Instance.new("Motor")
	RightHip.Name = "Right Hip"
	RightHip.Part0 = Torso
	RightHip.Part1 = RightLeg
	RightHip.MaxVelocity = 0.1
	RightHip.C0 = CFrame.new(RightLeg.Size.x / 2, -RightLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0)
	RightHip.C1 = CFrame.new(0, RightLeg.Size.y / 2, 0) * CFrame.fromEulerAnglesXYZ(0, 3.14 / 2, 0)
	RightHip.Parent = Torso
	local Humanoid = Instance.new("Humanoid", Character)
	Humanoid.WalkSpeed = 10 + math.min(Level * 0.3, 22)
	local BodyColors = Instance.new("BodyColors")
	BodyColors.LeftArmColor = BrickColor.new("Really red")
	BodyColors.RightArmColor = BrickColor.new("Really red")
	BodyColors.LeftLegColor = BrickColor.new("Really red")
	BodyColors.RightLegColor = BrickColor.new("Really red")
	BodyColors.HeadColor = BrickColor.new("Really red")
	BodyColors.TorsoColor = BrickColor.new("Really red")
	local Outfit = Explode(",", Outfits[math.random(1, #Outfits)])
	for x = 1, #Outfit do
		if string.sub(Outfit[x], 0, 6) == "face: " then
			Face.Texture = string.sub(Outfit[x], 7)
		end
		if string.sub(Outfit[x], 0, 4) == "hc: " then
			Head.BrickColor = BrickColor.new(string.sub(Outfit[x], 5))
			BodyColors.HeadColor = BrickColor.new(string.sub(Outfit[x], 5))
		end
		if string.sub(Outfit[x], 0, 4) == "tc: " then
			Torso.BrickColor = BrickColor.new(string.sub(Outfit[x], 5))
			BodyColors.TorsoColor = BrickColor.new(string.sub(Outfit[x], 5))
		end
		if string.sub(Outfit[x], 0, 5) == "lac: " then
			LeftArm.BrickColor = BrickColor.new(string.sub(Outfit[x], 6))
			BodyColors.LeftArmColor = BrickColor.new(string.sub(Outfit[x], 6))
		end
		if string.sub(Outfit[x], 0, 5) == "rac: " then
			RightArm.BrickColor = BrickColor.new(string.sub(Outfit[x], 6))
			BodyColors.RightArmColor = BrickColor.new(string.sub(Outfit[x], 6))
		end
		if string.sub(Outfit[x], 0, 5) == "llc: " then
			LeftLeg.BrickColor = BrickColor.new(string.sub(Outfit[x], 6))
			BodyColors.LeftLegColor = BrickColor.new(string.sub(Outfit[x], 6))
		end
		if string.sub(Outfit[x], 0, 5) == "rlc: " then
			RightLeg.BrickColor = BrickColor.new(string.sub(Outfit[x], 6))
			BodyColors.RightLegColor = BrickColor.new(string.sub(Outfit[x], 6))
		end
		if string.sub(Outfit[x], 0, 8) == "tshirt: " then
			TShirt.Texture = string.sub(Outfit[x], 9)
		end
		if string.sub(Outfit[x], 0, 7) == "shirt: " then
			local Shirt = Instance.new("Shirt")
			Shirt.ShirtTemplate = string.sub(Outfit[x], 8)
			Shirt.Parent = Character
		end
		if string.sub(Outfit[x], 0, 7) == "pants: " then
			local Pants = Instance.new("Pants")
			Pants.PantsTemplate = string.sub(Outfit[x], 8)
			Pants.Parent = Character
		end
		if string.sub(Outfit[x], 0, 4) == "cm: " then
			local Data = Explode("|", string.sub(Outfit[x], 5))
			local CM = Instance.new("CharacterMesh")
			CM.Name = "Roblox 2.0 " ..Data[1]
			CM.BodyPart = Data[1]
			CM.MeshId = Data[2]
			CM.Parent = Character
		end
		if string.sub(Outfit[x], 0, 5) == "hat: " then
			local Data = Explode("|", string.sub(Outfit[x], 6))
			local Mesh = Instance.new("SpecialMesh")
			Mesh.MeshType = "FileMesh"
			Mesh.MeshId = Data[1]
			Mesh.TextureId = Data[2]
			Mesh.Offset = Vector3.new(tonumber(Data[3]), tonumber(Data[4]), tonumber(Data[5]))
			Mesh.Scale = Vector3.new(tonumber(Data[6]), tonumber(Data[7]), tonumber(Data[8]))
			Mesh.VertexColor = Vector3.new(tonumber(Data[9]), tonumber(Data[10]), tonumber(Data[11]))
			local Hat = Instance.new("Hat")
			Hat.AttachmentForward = Vector3.new(tonumber(Data[12]), tonumber(Data[13]), tonumber(Data[14]))
			Hat.AttachmentPos = Vector3.new(tonumber(Data[15]), tonumber(Data[16]), tonumber(Data[17]))
			Hat.AttachmentRight = Vector3.new(tonumber(Data[18]), tonumber(Data[19]), tonumber(Data[20]))
			Hat.AttachmentUp = Vector3.new(tonumber(Data[21]), tonumber(Data[22]), tonumber(Data[23]))
			local Handle = Instance.new("Part")
			Handle.Name = "Handle"
			Handle.TopSurface = 0
			Handle.BottomSurface = 0
			Handle.Shape = Data[24]
			Handle.FormFactor = Data[25]
			Handle.Size = Vector3.new(tonumber(Data[26]), tonumber(Data[27]), tonumber(Data[28]))
			Hat.Name = Data[29]
			Mesh.Parent = Handle
			Handle.Parent = Hat
			Hat.Parent = Character
		end
	end
	local SoundObjects = {}
	for i = 1, #SoundIDs do
		local Sound = Instance.new("Sound")
		Sound.SoundId = "http://www.roblox.com/Asset/?id=" .. SoundIDs[i]
		Sound.Volume = 1
		Sound.Parent = Head
		SoundObjects[i] = Sound
	end
	coroutine.wrap(function()
		while true do
			wait(math.random(1, 10))
			local i = math.random(1, #SoundObjects)
			SoundObjects[i].Pitch = math.random(8, 12) / 10
			SoundObjects[i]:Play()
		end
	end)()
	BodyColors.Parent = Character
	Character.Parent = Workspace
	Character:MoveTo(Position)
	Character:MoveTo(Torso.Position + Vector3.new(0, 3, 0))
	game:GetService("InsertService"):LoadAsset(55821959)["Animate"].Parent = Character
	coroutine.wrap(function()
		while true do
			if Character.Parent == nil or Head.Parent == nil or Torso.Parent == nil or Neck.Parent == nil or Humanoid.Parent == nil or Humanoid.Health <= 0 then wait(5) pcall(function() Character:Remove() end) break end
			local List = {}
			for _, Model in pairs(Workspace:GetChildren()) do
				if Model ~= Character and Model:FindFirstChild("Zombie") == nil and Model:FindFirstChild("ForceField") == nil and Model:FindFirstChild("Torso") ~= nil and Model:FindFirstChild("Humanoid") ~= nil and Model.Humanoid.Health > 0 and Model.Humanoid.MaxHealth > 0 and Model.Humanoid.Health < math.huge and Model.Humanoid.MaxHealth < math.huge then
					table.insert(List, Model)
				end
			end
			if #List > 0 then
				local Closest = List[1]
				for i = 1, #List do
					if (Torso.Position - List[i].Torso.Position).magnitude < (Torso.Position - Closest.Torso.Position).magnitude then
						Closest = List[i]
					end
				end
				if (Torso.Position - Closest.Torso.Position).magnitude <= 500 then
					Humanoid:MoveTo(Closest.Torso.Position + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)), Closest.Torso)
					Torso["Left Shoulder"].DesiredAngle = -math.rad(90)
					Torso["Right Shoulder"].DesiredAngle = math.rad(90)
				end
				if (Torso.Position - Closest.Torso.Position).magnitude <= 4 then
					Closest.Humanoid:TakeDamage((math.random(500, 1000) / 1000) * (Level * 0.1))
					Torso["Left Shoulder"].DesiredAngle = -math.rad(math.random(0, 180))
					Torso["Right Shoulder"].DesiredAngle = math.rad(math.random(0, 180))
				end
			end
			wait()
		end
	end)()
	local function onTouched(Hit)
		if Humanoid.Health <= 0 then return end
		if Hit.Name ~= "Fire" and Hit.Name ~= "Flame" and Hit.Name ~= "Foam" and Hit.Name ~= "Water" and Hit.CanCollide == true and Hit.Anchored == false and Hit.Parent:FindFirstChild("ForceField") == nil and Hit.Parent.Parent:FindFirstChild("ForceField") == nil and Hit.Parent:FindFirstChild("Humanoid") == nil and Hit.Parent.Parent:FindFirstChild("Humanoid") == nil and Hit.Parent:FindFirstChild("Zombie") == nil and Hit.Parent.Parent:FindFirstChild("Zombie") == nil and math.random(0, math.max(100 / Level, 10)) == 0 then
			Hit:BreakJoints()
			local Sound = Instance.new("Sound", Torso)
			Sound.SoundId = "http://www.roblox.com/Asset/?id=2801263"
			Sound.Volume = 0.8
			Sound.Pitch = math.random(500, 700) / 1000
			Sound:Play()
			game:GetService("Debris"):AddItem(Sound, 1)
		end
	end
	LeftArm.Touched:connect(onTouched)
	RightArm.Touched:connect(onTouched)
	return Character
end


function NoRespawn(Player)
	local function Hook()
		if Playing == false then return end
		pcall(function()
			local Character = Player.Character
			Player.Character = nil
			Character:Remove()
		end)
		while Playing == true do wait() end
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
		Player.Character = Model
		Humanoid.Health = 0
	end
	Hook(Player.Character)
	Player.Changed:connect(function(Property)
		if Property == "Character" and Player.Character ~= nil and Player.Character:FindFirstChild("Humanoid") ~= nil then
			Hook(Player.Character)
		end
	end)
end
for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
	NoRespawn(Player)
end
game:GetService("Players").PlayerAdded:connect(NoRespawn)


local function DoMessage(Text, Time)
	for i = Time, 0, -1 do
		if DoMessageStop == true then
			DoMessageStop = nil
			return false
		end
		Message.Text = "Level " ..Level.. " | " ..Text.. " | You have " ..i.. " second" ..(i == 1 and "" or "s").. " left" ..(i <= 10 and "!" or "...")
		Message.Parent = Workspace
		wait(1)
	end
	return true
end


while true do
	DoMessage("The zombies are gathering...", math.random(20, 40))
	Playing = true
	local Time = 60 * ((Level > 10 and 10 or Level) / 3)
	local Zombies = {}
	coroutine.wrap(function()
		while Playing == true do
			local Found = false
			for _, Player in pairs(game:GetService("Players"):GetPlayers()) do
				if Player.Character ~= nil then
					Found = true
				end
			end
			if Found == false then
				DoMessageStop = true
				return
			end
			if math.random(0, math.max(60 / Level, 10)) == 0 then
				table.insert(Zombies, _G.MakeZombie(Vector3.new(math.random(-250, 250), 3, math.random(-250, 250))))
			end
			wait(0.25)
		end
	end)()
	local Lived = DoMessage("The zombies are attacking!", Time)
	Playing = false
	if Lived == true then
		Playing = false
		Message.Text = "The zombies are leaving."
		wait(0.5)
		Level = Level + 1
	else
		Message.Text = "Everyone died. Game over!"
		wait(0.5)
		Level = 1
	end
	for _, Zombie in pairs(Zombies) do
		if Zombie.Parent ~= nil then
			pcall(function() Zombie.Humanoid.Health = 0 end)
			pcall(function() Zombie:BreakJoints() end)
		end
		wait(0.1)
	end
	Message.Text = "Level: " ..Level
	wait(3)
end