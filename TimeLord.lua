script.Name = "TimeLord"
script.Parent = game:GetService("ScriptContext")


local function GetObject(Id)
	local Object = game:GetService("InsertService"):LoadAsset(Id)
	if Object == nil then return nil end
	Object = Object:GetChildren()
	if Object == nil then return nil end
	if Object[1] == nil then return nil end
	return Object[1]
end


function GetTexture(Id)
	local Texture = GetObject(Id)
	if Texture == nil then return nil end
	Texture = Texture.Texture
	game:GetService("ContentProvider"):Preload(Texture)
	return Texture
end


local RegenerateSkinColors = {"Br. yellowish orange", "Reddish brown", "Dark orange", "Nougat", "Brown", "Brick yellow", "Earth orange", "Earth yellow", "Lig. Yellowich orange", "Dark nougat", "Curry", "Pastel brown", "Light orange"}
local RegenerateFaces = {
	"rbxasset://textures\\face.png",
	GetTexture(25556219),
	GetTexture(12145366),
	GetTexture(25321961),
	GetTexture(30394484),
	GetTexture(7075502),
	GetTexture(16132514),
	GetTexture(18151826),
	GetTexture(22119034),
	GetTexture(7074729),
	GetTexture(27003636),
	GetTexture(19398554),
	GetTexture(14030577),
	GetTexture(13038375),
	GetTexture(22587894),
	GetTexture(14812981),
	GetTexture(15432080),
	GetTexture(7076110),
	GetTexture(7699177)
}
local RegenerateHair = {
	GetObject(29952810),
	GetObject(13655562),
	GetObject(14129164),
	GetObject(32278814),
	GetObject(30332157),
	GetObject(48395623),
	GetObject(12819292),
	GetObject(13477818),
	GetObject(13477200),
	GetObject(11721248),
	GetObject(28221786),
	GetObject(46302558),
	GetObject(12519986),
	GetObject(12270336),
	GetObject(29466952),
	GetObject(13476917),
	GetObject(26658141),
	GetObject(20010032),
	GetObject(17877340),
	GetObject(16630147),
	GetObject(26778066),
	GetObject(20573103),
	GetObject(25517594),
	GetObject(12270145),
	GetObject(31312357),
	GetObject(12864800),
	GetObject(20643008)
}
local RegenerateAccessories = {
	GetObject(11884330),
	GetObject(22070802),
	GetObject(12520031),
	GetObject(22151904),
	GetObject(14767406),
	GetObject(25165538),
	GetObject(26425663),
	GetObject(30331986),
	GetObject(46158937),
	GetObject(51243351),
	GetObject(25741345),
	GetObject(30391179),
	GetObject(25737682),
	GetObject(27724716),
	GetObject(15095717),
	GetObject(44114585)
}


function _G.BecomeTimeLord(Player)
	local IsRegenerating = false
	local RegenerationTime = 5
	local TimeLord = Player:FindFirstChild("TimeLord")
	if TimeLord == nil then
		TimeLord = Instance.new("Model", Player)
		TimeLord.Name = "TimeLord"
	end
	local Regenerations = TimeLord:FindFirstChild("Regenerations")
	if Regenerations == nil then
		Regenerations = Instance.new("IntValue", TimeLord)
		Regenerations.Name = "Regenerations"
	end
	local IsTimeLord = TimeLord:FindFirstChild("IsTimeLord")
	if IsTimeLord == nil then
		IsTimeLord = Instance.new("BoolValue", TimeLord)
		IsTimeLord.Name = "IsTimeLord"
		IsTimeLord.Value = true
	end
	local AutoRegenerate = TimeLord:FindFirstChild("AutoRegenerate")
	if AutoRegenerate == nil then
		AutoRegenerate = Instance.new("BoolValue", TimeLord)
		AutoRegenerate.Name = "AutoRegenerate"
		AutoRegenerate.Value = true
	end
	local function Regenerate()
		if IsTimeLord.Value == false or IsTimeLord.Parent == nil or AutoRegenerate.Value == false or AutoRegenerate.Parent == nil or Regenerations.Value >= 12 or Regenerations.Parent == nil then return end
		local Character = Player.Character
		if Character == nil then return false end
		if Character:FindFirstChild("Torso") == nil then return false end
		if Character:FindFirstChild("Humanoid") == nil then return false end
		if IsRegenerating == true then return false end
		IsRegenerating = true
		Character.Humanoid.Health = 100
		Character.Humanoid.MaxHealth = 100 * 500
		Character.Humanoid.Health = 1 * 500
		wait(math.random(100, 2500) / 100)
		if Player.Character ~= Character or Player.Character == nil or Character:FindFirstChild("Humanoid") == nil then return false end
		if Character.Humanoid.Health <= 0 then return false end
		Regenerations.Value = Regenerations.Value + 1
		if math.random(1, 2) == 1 then
			coroutine.wrap(function()
				local OldWalkSpeed = Character.Humanoid.WalkSpeed
				while IsRegenerating == true do
					pcall(function() Character.Humanoid.WalkSpeed = 0 end)
					wait()
				end
				pcall(function() Character.Humanoid.WalkSpeed = OldWalkSpeed end)
			end)()
		else
			coroutine.wrap(function()
				Character.Humanoid.PlatformStand = true
				local OldFriction = Character.Torso.Friction
				Character.Torso.Friction = 1
				Character.Torso.RotVelocity = Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
				while IsRegenerating == true do
					pcall(function() Character.Humanoid.PlatformStand = true end)
					wait()
				end
				pcall(function() Character.Humanoid.PlatformStand = false end)
			end)()
		end
		local MainSmoke = Instance.new("Smoke", Character.Torso)
		MainSmoke.Color = Color3.new(255 / 255, 153 / 255, 10 / 255)
		local Start = tick()
		local Max = tick() + (math.random(500, 1500) / 100)
		while tick() < Max do
			MainSmoke.Opacity = ((tick() - Start) / (Max - Start))
			MainSmoke.Size = ((tick() - Start) / (Max - Start)) * 3
			if Player.Character ~= Character or Player.Character == nil or Character:FindFirstChild("Humanoid") == nil then break end
			if Character.Humanoid.Health <= 0 then break end
			wait()
		end
		coroutine.wrap(function()
			wait(RegenerationTime + 1)
			MainSmoke.Enabled = false
			wait(7.5)
			MainSmoke:Remove()
		end)()
		if Player.Character ~= Character or Player.Character == nil or Character:FindFirstChild("Humanoid") == nil then return false end
		if Character.Humanoid.Health <= 0 then return false end
		for _, Part in pairs(Character:GetChildren()) do
			if Part:IsA("BackpackItem") then
				Part.Parent = Player.Backpack
			end
		end
		local OldLeftShoulder = "Left Shoulder"
		local OldRightShoulder = "Right Shoulder"
		for _, Part in pairs(Character.Torso:GetChildren()) do
			if string.match(Part.Name:lower(), "shoulder") then
				if string.match(Part.Name:lower(), "left") then
					OldLeftShoulder = Part.Name
					local Joint = Instance.new("Motor6D", Character.Torso)
					Joint.Name = "Regenerating Left Shoulder"
					Joint.Part0 = Part.Part0
					Joint.Part1 = Part.Part1
					Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(10), 0, math.rad(-120))
					Joint.C1 = CFrame.new(0, 0.5, 0)
					Part:Remove()
				elseif string.match(Part.Name:lower(), "right") then
					OldRightShoulder = Part.Name
					local Joint = Instance.new("Motor6D", Character.Torso)
					Joint.Name = "Regenerating Right Shoulder"
					Joint.Part0 = Part.Part0
					Joint.Part1 = Part.Part1
					Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(10), 0, math.rad(120))
					Joint.C1 = CFrame.new(0, 0.5, 0)
					Part:Remove()
				end
			elseif Part.Name == "Neck" then
				Part.C0 = CFrame.new(0, 1, 0)
				Part.C1 = CFrame.new(0, -0.5, 0) * CFrame.fromEulerAnglesXYZ(math.rad(-45), 0, 0)
			end
		end
		if Character:FindFirstChild("Right Arm") ~= nil then
			--[[
			local Smoke = Instance.new("Smoke", Character["Right Arm"])
			Smoke.Color = Color3.new(255 / 255, 153 / 255, 10 / 255)
			Smoke.Size = 2.5
			Smoke.RiseVelocity = -5
			--]]
			local Fire = Instance.new("Fire", Character["Right Arm"])
			Fire.Color = Color3.new(255 / 255, 153 / 255, 10 / 255)
			Fire.SecondaryColor = Color3.new(1, 1, 1)
			Fire.Size = 10
			Fire.Heat = -25
			coroutine.wrap(function()
				wait(RegenerationTime + 1)
				--Smoke.Enabled = false
				Fire.Enabled = false
				wait(4)
				--Smoke:Remove()
				Fire:Remove()
			end)()
		end
		if Character:FindFirstChild("Left Arm") ~= nil then
			--[[
			local Smoke = Instance.new("Smoke", Character["Left Arm"])
			Smoke.Color = Color3.new(255 / 255, 153 / 255, 10 / 255)
			Smoke.Size = 2.5
			Smoke.RiseVelocity = -5
			--]]
			local Fire = Instance.new("Fire", Character["Left Arm"])
			Fire.Color = Color3.new(255 / 255, 153 / 255, 10 / 255)
			Fire.SecondaryColor = Color3.new(1, 1, 1)
			Fire.Size = 10
			Fire.Heat = -25
			coroutine.wrap(function()
				wait(RegenerationTime + 1)
				--Smoke.Enabled = false
				Fire.Enabled = false
				wait(4)
				--Smoke:Remove()
				Fire:Remove()
			end)()
		end
		if Character:FindFirstChild("Head") ~= nil then
			--[[
			local Smoke = Instance.new("Smoke", Character.Head)
			Smoke.Color = Color3.new(255 / 255, 153 / 255, 10 / 255)
			Smoke.Size = 3.5
			Smoke.RiseVelocity = 6
			--]]
			local Fire = Instance.new("Fire", Character.Head)
			Fire.Color = Color3.new(255 / 255, 153 / 255, 10 / 255)
			Fire.SecondaryColor = Color3.new(1, 1, 1)
			Fire.Size = 15
			Fire.Heat = 25
			coroutine.wrap(function()
				wait(RegenerationTime + 1)
				--Smoke.Enabled = false
				Fire.Enabled = false
				wait(4)
				--Smoke:Remove()
				Fire:Remove()
			end)()
		end
		wait(RegenerationTime)
		MainSmoke.Enabled = false
		coroutine.wrap(function()
			wait(4)
			MainSmoke:Remove()
		end)()
		if Player.Character ~= Character or Player.Character == nil or Character:FindFirstChild("Humanoid") == nil then return false end
		if Character.Humanoid.Health <= 0 then return false end
		local Bubble = Instance.new("Part", Workspace)
		Bubble.Name = "Regeneration Bubble"
		Bubble.BrickColor = BrickColor.new("Br. yellowish orange")
		Bubble.TopSurface = 0
		Bubble.BottomSurface = 0
		Bubble.FormFactor = "Custom"
		Bubble.Size = Vector3.new(1, 1, 1)
		Bubble.CanCollide = false
		local Weld = Instance.new("Weld", Character.Torso)
		Weld.Part0 = Weld.Parent
		Weld.Part1 = Bubble
		local Mesh = Instance.new("SpecialMesh", Bubble)
		Mesh.MeshType = "Sphere"
		for i = 0, 1, 0.02 do
			Mesh.Scale = Vector3.new(i, i, i) * 25
			Bubble.Transparency = 1 - i
			wait()
		end
		if Player.Character ~= Character or Player.Character == nil or Character:FindFirstChild("Humanoid") == nil then return false end
		if Character.Humanoid.Health <= 0 then return false end
		if math.random(1, 25) ~= 1 then
			if math.random(1, 2) == 1 then
				local Gui = Instance.new("ScreenGui", Player.PlayerGui)
				Gui.Name = "Blindness"
				local White = Instance.new("Frame", Gui)
				White.Name = "White"
				White.BorderSizePixel = 0
				White.BackgroundColor3 = Color3.new(1, 1, 1)
				White.Size = UDim2.new(1, 0, 1, 0)
				White.Position = UDim2.new(0, 0, 0, 0)
				coroutine.wrap(function()
					wait(math.random(100, 1000) / 100)
					for i = 0, 1, 0.005 do
						White.BackgroundTransparency = i
						wait()
					end
				end)()
			end
			coroutine.wrap(function()
				for i = 0, 1, 0.01 do
					Mesh.Scale = Vector3.new(25, 25, 25) + Vector3.new(i, i, i) * 10
					Bubble.Transparency = i
					wait()
				end
				Bubble:Remove()
			end)()
			Character.Humanoid.MaxHealth = 100
			Character.Humanoid.Health = math.random(750, 1000) / 10
			if Character:FindFirstChild("Right Arm") == nil then
				local Limb = Instance.new("Part")
				Limb.Name = "Right Arm"
				pcall(function() Limb.BrickColor = BrickColor.new(tostring(Character["Body Colors"].RightArmColor)) end)
				Limb.FormFactor = 0
				Limb.Size = Vector3.new(1, 2, 1)
				Limb.Parent = Character
				local Joint = Instance.new("Motor6D")
				Joint.Parent = Character:FindFirstChild("Torso")
				Joint.Part0 = Joint.Parent
				Joint.Part1 = Character["Right Arm"]
				Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Joint.Name = "Right Shoulder"
				Joint.MaxVelocity = 0.15
			end
			if Character:FindFirstChild("Left Arm") == nil then
				local Limb = Instance.new("Part")
				Limb.Name = "Left Arm"
				pcall(function() Limb.BrickColor = BrickColor.new(tostring(Character["Body Colors"].LeftArmColor)) end)
				Limb.FormFactor = 0
				Limb.Size = Vector3.new(1, 2, 1)
				Limb.Parent = Character
				local Joint = Instance.new("Motor6D")
				Joint.Parent = Character:FindFirstChild("Torso")
				Joint.Part0 = Joint.Parent
				Joint.Part1 = Character["Left Arm"]
				Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				Joint.Name = "Left Shoulder"
				Joint.MaxVelocity = 0.15
			end
			if Character:FindFirstChild("Right Leg") == nil then
				local Limb = Instance.new("Part")
				Limb.Name = "Right Leg"
				pcall(function() Limb.BrickColor = BrickColor.new(tostring(Character["Body Colors"].RightLegColor)) end)
				Limb.TopSurface = 0
				Limb.BottomSurface = 0
				Limb.FormFactor = 0
				Limb.Size = Vector3.new(1, 2, 1)
				Limb.Parent = Character
				local Joint = Instance.new("Motor6D")
				Joint.Parent = Character:FindFirstChild("Torso")
				Joint.Part0 = Joint.Parent
				Joint.Part1 = Character["Right Leg"]
				Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Joint.Name = "Right Hip"
				Joint.MaxVelocity = 0.1
			end
			if Character:FindFirstChild("Left Leg") == nil then
				local Limb = Instance.new("Part")
				Limb.Name = "Left Leg"
				pcall(function() Limb.BrickColor = BrickColor.new(tostring(Character["Body Colors"].LeftLegColor)) end)
				Limb.TopSurface = 0
				Limb.BottomSurface = 0
				Limb.FormFactor = 0
				Limb.Size = Vector3.new(1, 2, 1)
				Limb.Parent = Character
				local Joint = Instance.new("Motor6D")
				Joint.Parent = Character:FindFirstChild("Torso")
				Joint.Part0 = Joint.Parent
				Joint.Part1 = Character["Left Leg"]
				Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				Joint.Name = "Left Hip"
				Joint.MaxVelocity = 0.1
			end
			for _, Part in pairs(Character.Torso:GetChildren()) do
				if Part.Name == "Regenerating Left Shoulder" then
					Part.Name = OldLeftShoulder
					Part.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
					Part.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				elseif Part.Name == "Regenerating Right Shoulder" then
					Part.Name = OldRightShoulder
					Part.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
					Part.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				elseif Part.Name == "Neck" then
					Part.C0 = CFrame.new(0, 1, 0)
					Part.C1 = CFrame.new(0, -0.5, 0)
				end
			end
			local Animate = Character:FindFirstChild("Animate")
			if Animate ~= nil then
				Animate = Animate:Clone()
				Character.Animate:Remove()
				Animate.Parent = Character
			end
			local SkinColor = Character.Head.BrickColor
			NewSkinColor = BrickColor.new(RegenerateSkinColors[math.random(1, #RegenerateSkinColors)])
			for _, Part in pairs(Character:GetChildren()) do
				if Part:IsA("BasePart") then
					if Part.BrickColor == SkinColor then
						Part.BrickColor = NewSkinColor
						pcall(function() Character["Body Colors"][string.gsub(Part.Name, " ", "").. "Color"] = NewSkinColor end)
					end
				end
			end
			Character.Head.face.Texture = RegenerateFaces[math.random(1, #RegenerateFaces)]
			for _, Part in pairs(Character:GetChildren()) do
				if Part:IsA("Accoutrement") then
					Part:Remove()
				end
			end
			RegenerateHair[math.random(1, #RegenerateHair)]:Clone().Parent = Character
			if math.random(1, 3) == 1 then
				RegenerateAccessories[math.random(1, #RegenerateAccessories)]:Clone().Parent = Character
			end
		else
			for i = 0, 1, 0.1 do
				Mesh.Scale = Vector3.new(25, 25, 25) - Vector3.new(i, i, i) * 25
				Bubble.Transparency = i
				wait()
			end
			Character:BreakJoints()
			Bubble.Anchored = true
			coroutine.wrap(function()
				for i = 0, 1, 0.05 do
					Mesh.Scale = Vector3.new(25, 25, 25) + Vector3.new(i, i, i) * 50
					Bubble.Transparency = i
					wait()
				end
				Bubble:Remove()
			end)()
			local Explosion = Instance.new("Explosion", Workspace)
			Explosion.Position = Character.Torso.Position
			Explosion.BlastRadius = 10
			Explosion.BlastPressure = 1000000
			wait(1)
		end
		IsRegenerating = false
		return true
	end
	local function HookRegeneration()
		IsRegenerating = false
		Regenerations.Value = 0
		local Gui = Instance.new("ScreenGui", Player.PlayerGui)
		Gui.Name = "TimeLord Gui"
		local Count = Instance.new("TextLabel", Gui)
		Count.Name = "Regeneration Count"
		Count.BorderColor3 = Color3.new(0, 0, 0)
		Count.BackgroundColor3 = Color3.new(0.3, 0.3, 0.3)
		Count.Size = UDim2.new(0, 75, 0, 25)
		Count.Position = UDim2.new(1, -75, 1, -100)
		Count.TextColor3 = Color3.new(0, 0, 0)
		Count.FontSize = "Size24"
		coroutine.wrap(function()
			while true do
				Count.Text = Regenerations.Value
				wait()
			end
		end)()
		local Label = Count:Clone()
		Label.Parent = Gui
		Label.Name = "Regeneration Label"
		Label.Position = UDim2.new(1, -75, 1, -115)
		Label.Size  = UDim2.new(0, 75, 0, 15)
		Label.Text = "Regenerations:"
		Label.FontSize = "Size8"
		local Button1 = Instance.new("TextButton", Gui)
		Button1.Name = "Regeneration Toggle"
		Button1.Text = "On"
		Button1.Size = UDim2.new(0, 75 / 2, 0, 15)
		Button1.Position = UDim2.new(1, -75, 1, -130)
		Button1.TextColor3 = Color3.new(0, 0, 0)
		Button1.MouseButton1Down:connect(function() AutoRegenerate.Value = not AutoRegenerate.Value end)
		coroutine.wrap(function()
			while Button1.Parent ~= nil do
				Button1.Text = (AutoRegenerate.Value == true and "On" or "Off")
				Button1.BackgroundColor3 = Color3.new(AutoRegenerate.Value == false and 0.9 or 0, AutoRegenerate.Value == true and 0.8 or 0, 0)
				wait()
			end
		end)()
		local Button2 = Instance.new("TextButton", Gui)
		Button2.Name = "Regeneration Toggle"
		Button2.Text = "Force"
		Button2.Size = UDim2.new(0, 75 / 2, 0, 15)
		Button2.Position = UDim2.new(1, -75 / 2, 1, -130)
		Button2.TextColor3 = Color3.new(0, 0, 0)
		Button2.MouseButton1Down:connect(function() Regenerate() end)
		coroutine.wrap(function()
			while Button2.Parent ~= nil do
				Button2.Text = IsRegenerating == false and "Force" or "Wait..."
				Button2.BackgroundColor3 = IsRegenerating == false and Color3.new(0.3, 0.3, 0.3) or Color3.new(0.15, 0.15, 0.15)
				Button2.TextColor3 = IsRegenerating == false and Color3.new(0, 0, 0) or Color3.new(0.8, 0.8, 0.8)
				wait()
			end
		end)()
		local Character = Player.Character
		Character.Humanoid.Changed:connect(function(Property)
			if Property == "Health" then
				if Character.Humanoid.Health <= 0 then
					Regenerate()
				end
			end
		end)
		Character.Torso.ChildRemoved:connect(function(Part)
			if IsRegenerating == true then return end
			if Part.Name == "Neck" then
				local Neck = Instance.new("Motor6D")
				Neck.Name = "Neck"
				Neck.Part0 = Character:FindFirstChild("Torso")
				Neck.Part1 = Character:FindFirstChild("Head")
				Neck.C0 = CFrame.new(0, 2, 0)
				Neck.C1 = CFrame.new(0, 0.5, 0)
				Neck.MaxVelocity = 0
				Neck.Parent = Character:FindFirstChild("Torso")
				Regenerate()
			end
		end)
		Character.ChildRemoved:connect(function(Part)
			if (Part.Name == "Head" or Part.Name == "Torso") and not (IsTimeLord.Value == false or IsTimeLord.Parent == nil or AutoRegenerate.Value == false or AutoRegenerate.Parent == nil or Regenerations.Value > 12 or Regenerations.Parent == nil) then
				if Character:FindFirstChild(Part.Name) ~= nil then return end
				Part:Clone().Parent = Character
				Regenerate()
			elseif Part.Name == "Left Arm" or Part.Name == "Right Arm" or Part.Name == "Left Leg" or Part.Name == "Right Leg" then
				Regenerate()
			end
		end)
	end
	Player.Changed:connect(function(Property)
		wait()
		if Property == "Character" and Player.Character ~= Character then
			HookRegeneration()
		end
	end)
	HookRegeneration()
end


_G.BecomeTimeLord(game:GetService("Players").DarkShadow6)


--[[
for _, p in pairs(game:GetService("Players"):GetPlayers()) do
_G.BecomeTimeLord(p)
end
game:GetService("Players").ChildAdded:connect(function(p)
if p:IsA("Player") then
_G.BecomeTimeLord(p)
end
end)
--]]