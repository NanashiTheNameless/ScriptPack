if script == nil then return end


ModelName = "Wanda"
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
Spell = 0
SpellHotkey1 = 0
SpellHotkey2 = 0
SpellHotkey3 = 0
SpellHotkey1Delay = 0
SpellHotkey2Delay = 0
SpellHotkey3Delay = 0
Power = 100


SpellGui = Instance.new("ScreenGui")
SpellGui.Name = ModelName
local Frame = Instance.new("Frame")
Frame.Name = "Content"
Frame.Size = UDim2.new(0, 165, 0, 60)
Frame.Position = UDim2.new(0, 0, 0.5, -60)
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.Parent = SpellGui
local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "Weapon"
TextLabel.Text = "Weapon: " ..ModelName
TextLabel.Size = UDim2.new(1, 0, 0, 20)
TextLabel.Position = UDim2.new(0, 0, 0, 0)
TextLabel.BackgroundColor3 = Color3.new(1, 0, 0)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.Parent = Frame
local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "SpellPrefix"
TextLabel.Text = "    Spell:"
TextLabel.TextXAlignment = "Left"
TextLabel.Size = UDim2.new(1, 0, 0, 20)
TextLabel.Position = UDim2.new(0, 0, 0, 20)
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.Parent = Frame
local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "Spell"
TextLabel.Text = "None"
TextLabel.TextXAlignment = "Right"
TextLabel.Size = UDim2.new(1, 0, 0, 20)
TextLabel.Position = UDim2.new(0, -10, 0, 20)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Parent = Frame
local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "PowerPrefix"
TextLabel.Text = "    Power:"
TextLabel.TextXAlignment = "Left"
TextLabel.Size = UDim2.new(1, 0, 0, 20)
TextLabel.Position = UDim2.new(0, 0, 0, 40)
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.Parent = Frame
local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "Power"
TextLabel.Text = "100"
TextLabel.TextXAlignment = "Right"
TextLabel.Size = UDim2.new(1, 0, 0, 20)
TextLabel.Position = UDim2.new(0, -10, 0, 40)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Parent = Frame


function UpdateGui(Format)
	if Selected == false then return end
	if Player:FindFirstChild("PlayerGui") == nil then return end
	if Player.PlayerGui:FindFirstChild(ModelName) == nil then
		SpellGui:Clone().Parent = Player.PlayerGui
	end
	if Spell == 1 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "Arefu Slash (1P)"
	elseif Spell == 2 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "Arefu Metoria (50P)"
	elseif Spell == 3 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "Eccrando Bolt (25P)"
	elseif Spell == 4 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "Eccrando Strike (~60P)"
	elseif Spell == 5 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "Thius Dae (1P/2ms)"
	elseif Spell == 6 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "Thius Heed (1P/2ms)"
	elseif Spell == 7 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "Combuscus Phore (75P)"
	elseif Spell == 8 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "Combuscus Burn (10P)"
	elseif Spell == 9 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "Combuscus Vortex (50P)"
	elseif Spell == 10 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "C. Phore Nexus (100P)"
	elseif Spell == 11 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "Kanamla Cysis (2P/1sec)"
	elseif Spell == 12 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "Kanamla Tepidift (50P)"
	elseif Spell == 13 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "Kanamla Jump (5P)"
	elseif Spell == 14 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "Candora Hide (2P/1sec)"
	elseif Spell == 15 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "Duraen Control (1P/?ms)"
	elseif Spell == 16 then
		Player.PlayerGui[ModelName].Content.Spell.Text = "Duraen Switch (?P)"
	else
		Player.PlayerGui[ModelName].Content.Spell.Text = "None"
	end
	if Power <= 0 then
		Player.PlayerGui[ModelName].Content.Power.Text = "Overheat (" ..math.abs(Power).. ")"
	else
		Player.PlayerGui[ModelName].Content.Power.Text = Power
	end
end


function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end


function SoundToServer(Name, SoundId, Pitch, Volume, Looped, Parent)
	local NewScript = game:GetService("InsertService"):LoadAsset(54471119)["QuickScript"]
	NewScript.Name = "SoundToServer"
	NewScript.DynamicSource.Value = [[local Sound = Instance.new("Sound") 
Sound.Name = "]] ..(Name == nil and "Sound" or Name).. [[" 
Sound.SoundId = "]] ..(SoundId == nil and "" or SoundId).. [[" 
Sound.Pitch = ]] ..(Pitch == nil and 1 or Pitch).. [[ 
Sound.Volume = ]] ..(Volume == nil and 1 or Volume).. [[ 
Sound.Looped = ]] ..(Looped == true and "true" or "false").. [[ 
Sound.Parent = script.Parent 
Sound:Play() 
script:Remove()]]
	NewScript.Debug.Value = false
	NewScript.Parent = Parent
end


function TouchedToServer(Function, Parent)
	pcall(function() Parent.TouchConnector:Remove() end)
	local NewScript = game:GetService("InsertService"):LoadAsset(54471119)["QuickScript"]
	NewScript.Name = "TouchConnector"
	NewScript.DynamicSource.Value = [[script.Parent.Touched:connect(function(Hit)
]] ..Function.. [[ 
end)]]
	NewScript.Debug.Value = false
	NewScript.Parent = Parent
end


function CreateParts(Parent, Format)
	if Parent == nil then return end
	local Parts = Instance.new("Model")
	Parts.Name = ModelName
	if Format == 1 then
		Parts.Name = Parts.Name.. " (Holstered)"
	end
	Parts.Parent = Parent

	local MasterPart = Instance.new("Part")
	MasterPart.Name = "Handle"
	MasterPart.FormFactor = "Custom"
	MasterPart.Size = Vector3.new(0.2, 2, 0.2)
	MasterPart.BrickColor = BrickColor.new("Reddish brown")
	MasterPart.Locked = true
	MasterPart.TopSurface = 0
	MasterPart.BottomSurface = 0
	MasterPart.Parent = Parts
	local Mesh = Instance.new("SpecialMesh", MasterPart)
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Leg")
		Weld.C0 = CFrame.new(0, 0.1, -0.55) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
		Weld.C1 = CFrame.new()
		Weld.Parent = MasterPart
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C0 = CFrame.new(0, -0.75, 0.9) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
		Weld.C1 = CFrame.new()
		Weld.Parent = MasterPart
	end

	local Sound = Instance.new("Sound")
	Sound.Name = "Shine"
	Sound.SoundId = "http://www.roblox.com/Asset/?id=2101144"
	Sound.Parent = MasterPart
	local Sound = Sound:Clone()
	Sound.Name = "Bolt"
	Sound.SoundId = "http://www.roblox.com/Asset/?id=2974000"
	Sound.Parent = MasterPart
	local Sound = Sound:Clone()
	Sound.Name = "Impact1"
	Sound.SoundId = "http://www.roblox.com/Asset/?id=10209596"
	Sound.Parent = MasterPart
	local Sound = Sound:Clone()
	Sound.Name = "Charge1"
	Sound.SoundId = "http://www.roblox.com/Asset/?id=1369158"
	Sound.Parent = MasterPart
	local Sound = Sound:Clone()
	Sound.Name = "Charge2"
	Sound.SoundId = "http://www.roblox.com/Asset/?id=2101137"
	Sound.Parent = MasterPart
	local Sound = Sound:Clone()
	Sound.Name = "Charge3"
	Sound.SoundId = "http://www.roblox.com/Asset/?id=2785493"
	Sound.Parent = MasterPart
	local Sound = Sound:Clone()
	Sound.Name = "Charge4"
	Sound.SoundId = "http://www.roblox.com/Asset/?id=35275769"
	Sound.Parent = MasterPart
	local Sound = Sound:Clone()
	Sound.Name = "Fire1"
	Sound.SoundId = "http://www.roblox.com/Asset/?id=10209268"
	Sound.Parent = MasterPart
	local Sound = Sound:Clone()
	Sound.Name = "Fire2"
	Sound.SoundId = "http://www.roblox.com/Asset/?id=13775466"
	Sound.Parent = MasterPart
	local Sound = Sound:Clone()
	Sound.Name = "Fire3"
	Sound.SoundId = "http://www.roblox.com/Asset/?id=2767090"
	Sound.Parent = MasterPart
	local Sound = Sound:Clone()
	Sound.Name = "Fire4"
	Sound.SoundId = "http://www.roblox.com/Asset/?id=2800815"
	Sound.Parent = MasterPart
	local Sound = Sound:Clone()
	Sound.Name = "Fire5"
	Sound.SoundId = "http://www.roblox.com/Asset/?id=2974249"
	Sound.Parent = MasterPart
	local Part = MasterPart:Clone()
	Part.Parent = Parts
	Part.Name = "Source"
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(1, 1, 1)
	Part.Transparency = 1
	Part.BrickColor = BrickColor.new("Really black")
	Part.CanCollide = false
	Part.Mesh.MeshType = "Sphere"
	Part.Mesh.Scale = Vector3.new(1, 1, 1)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart
	Weld.C0 = CFrame.new()
	Weld.C1 = CFrame.new(0, 1, 0)
	Weld.Parent = Part
	local Fire = Instance.new("Fire")
	Fire.Enabled = false
	Fire.Parent = Part
end


function RemoveParts(Parent, Format)
	if Format == 1 then
		pcall(function() Parent[ModelName.. " (Holstered)"]:Remove() end)
	elseif Format == 2 then
		pcall(function() Parent[ModelName]:Remove() end)
	end
end


function SetAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
	end
end


function ForceAngle(Joint, Angle, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	if Joint == 1 or Joint == 3 then
		Joints[Joint].DesiredAngle = Angle
		Joints[Joint].CurrentAngle = Angle
	end
	if Joint == 2 or Joint == 4 then
		Joints[Joint].DesiredAngle = -Angle
		Joints[Joint].CurrentAngle = -Angle
	end
end


function SetSpeed(Joint, Speed, Character)
	if Character == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	if Joints[Joint] == nil then return false end
	Joints[Joint].MaxVelocity = Speed
end


function DisableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder"),
		Character.Torso:FindFirstChild("Left Shoulder"),
		Character.Torso:FindFirstChild("Right Hip"),
		Character.Torso:FindFirstChild("Left Hip")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	local Joint = Instance.new("Motor")
	Joint.Parent = Character.Torso
	Joint.Part0 = Character.Torso
	Joint.Part1 = Limbs[Limb]
	if Limb == 1 then
		Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Shoulder 2"
	elseif Limb == 2 then
		Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Shoulder 2"
	elseif Limb == 3 then
		Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joint.Name = "Right Hip 2"
	elseif Limb == 4 then
		Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joint.Name = "Left Hip 2"
	end
	Joint.MaxVelocity = Joints[Limb].MaxVelocity
	Joint.CurrentAngle = Joints[Limb].CurrentAngle
	Joint.DesiredAngle = Joints[Limb].DesiredAngle
	Joints[Limb]:Remove()
end


function ResetLimbCFrame(Limb, Character)
	if Character == nil then return false end
	if Character.Parent == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 2 then
		Joints[Limb].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	elseif Limb == 3 then
		Joints[Limb].C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Limb == 4 then
		Joints[Limb].C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
		Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
	end
end


function EnableLimb(Limb, Character)
	if Character == nil then return false end
	if Character:FindFirstChild("Torso") == nil then return false end
	local Joints = {
		Character.Torso:FindFirstChild("Right Shoulder 2"),
		Character.Torso:FindFirstChild("Left Shoulder 2"),
		Character.Torso:FindFirstChild("Right Hip 2"),
		Character.Torso:FindFirstChild("Left Hip 2")
	}
	local Limbs = {
		Character:FindFirstChild("Right Arm"),
		Character:FindFirstChild("Left Arm"),
		Character:FindFirstChild("Right Leg"),
		Character:FindFirstChild("Left Leg")
	}
	if Joints[Limb] == nil then return false end
	if Limbs[Limb] == nil then return false end
	if Limb == 1 then
		Joints[Limb].Name = "Right Shoulder"
	elseif Limb == 2 then
		Joints[Limb].Name = "Left Shoulder"
	elseif Limb == 3 then
		Joints[Limb].Name = "Right Hip"
	elseif Limb == 4 then
		Joints[Limb].Name = "Left Hip"
	end
	Animate = Character:FindFirstChild("Animate")
	if Animate == nil then return false end
	Animate = Animate:Clone()
	Character.Animate:Remove()
	Animate.Parent = Character
end


function Weld(x, y)
	local Weld = Instance.new("Weld")
	Weld.Part0 = x
	Weld.Part1 = y
	Weld.C0 = x.CFrame:inverse() * CFrame.new(x.Position)
	Weld.C1 = y.CFrame:inverse() * CFrame.new(x.Position)
	Weld.Parent = x
end


loadstring(game:GetService("InsertService"):LoadAsset(65363615)["tagHumanoid"].Value)()


function onButton1Down(Mouse)
	if Button1Down == true then return end
	Button1Down = true
	if CheckPlayer() == false or Power <= 0 then return end
	if Player.Character == nil then return end
	if Player.Character:FindFirstChild("Humanoid") == nil then return end
	if Player.Character.Humanoid.Health <= 0 then return end
	if Player.Character:FindFirstChild(ModelName) == nil then return end
	if Player.Character[ModelName]:FindFirstChild("Handle") == nil then return end
	if Player.Character[ModelName]:FindFirstChild("Source") == nil then return end
	if CanUse == true then
		if Spell == 1 then
			--Arefu Slash, projectile class. Uses hardened air particles to create razor-sharp projectiles.
			CanUse = false
			while Button1Down == true do
				if Power <= 0 then break end
				coroutine.wrap(function()
					Player.Character[ModelName].Source.Transparency = 0
					Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
					Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1, 1, 1)
					Player.Character[ModelName].Source.BrickColor = BrickColor.new("Bright green")
					Player.Character[ModelName].Source.Fire.Enabled = true
					Player.Character[ModelName].Source.Fire.Heat = math.random(5, 10)
					Player.Character[ModelName].Source.Fire.Size = math.random(5, 10)
					Player.Character[ModelName].Source.Fire.Color = Color3.new(0, 1, 0)
					Player.Character[ModelName].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
					local Base1 = math.random(25, 150) / 100
					Base1 = Vector3.new(Base1, Base1, Base1)
					local Base2 = math.random(250, 750) / 100
					for i = 0, 1, 0.1 do
						Player.Character[ModelName].Source.Mesh.Scale = Base1 + (Vector3.new(i, i, i) * Base2)
						Player.Character[ModelName].Source.Transparency = i
						wait()
					end
					Player.Character[ModelName].Source.Fire.Enabled = false
				end)()
				SoundToServer("Fire2", Player.Character[ModelName].Handle.Fire2.SoundId, 1, 1, false, Player.Character[ModelName].Source)
				Power = Power - 1
				local Air = Instance.new("Part", Workspace)
				Air.Name = "Air"
				Air.FormFactor = "Custom"
				Air.Size = Vector3.new(0.2, 0.2, 3)
				Air.TopSurface = "Smooth"
				Air.BottomSurface = "Smooth"
				Air.BrickColor = BrickColor.new("Institutional white")
				Air.CanCollide = false
				Air.Anchored = true
				Air.Transparency = math.random(0, 5) / 10
				Air.CFrame = CFrame.new(Mouse.Hit.p + Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)), Mouse.Hit.p)
				Air:BreakJoints()
				local Mesh = Instance.new("SpecialMesh", Air)
				Mesh.MeshType = "Sphere"
				coroutine.wrap(function()
					local function Break(Source, Children)
						if Source == nil then Source = Workspace end
						if Children == nil then Children = {} end
						for _, Part in pairs(Source:GetChildren()) do
							if Part:IsA("BasePart") and Part ~= Air and Part.Parent ~= Air then
								if (Part.Position - Air.Position).magnitude < 5 then
									table.insert(Children, Part)
									if Part.Anchored == false then
										Part.Velocity = (Part.Position - Air.Position).unit * 5
									end
									if math.random(0, 10) == 0 then
										Part:BreakJoints()
										if Part:GetMass() < 250 then
											Part.Anchored = false
										end
									end
									if Part.Parent:FindFirstChild("Humanoid") ~= nil then
										pcall(function()
											Part.Parent.Humanoid:TakeDamage(math.random(0, 3))
											if math.random(0, (1 - Percent) * 5) == 0 then Part.Parent.Humanoid.Sit = true end
										end)
									end
								end
							end
							Break(Part, Children)
						end
						return Children
					end
					while Air.Parent ~= nil do
						Air.CFrame = Air.CFrame * CFrame.new(0, 0, -7.5)
						Break()
						wait()
					end
				end)()
				coroutine.wrap(function()
					wait(3)
					Air:Remove()
				end)()
				wait()
			end
			CanUse = true
		elseif Spell == 2 then
			--Arefu Metoria, projectile class. Uses Meteors.
			if Mouse.Target == nil then return end
			local Position = Mouse.Hit.p
			CanUse = false
			Power = Power - 50
			local Size = math.random(10, 30)
			Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
			Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1, 1, 1)
			Player.Character[ModelName].Source.Transparency = 0
			Player.Character[ModelName].Source.BrickColor = BrickColor.new("Bright green")
			SoundToServer("Charge2", Player.Character[ModelName].Handle.Charge2.SoundId, 0.25, 1, false, Player.Character[ModelName].Source)
			local Beam = Instance.new("Part", Workspace)
			Beam.Name = "Beam"
			Beam.BrickColor = BrickColor.new("Bright green")
			Beam.TopSurface = 0
			Beam.BottomSurface = 0
			Beam.Size = Vector3.new(1, 1, 1)
			Beam.Transparency = 0.5
			Beam.Anchored = true
			Beam.CanCollide = false
			Beam.CFrame = CFrame.new(Position)
			local Mesh = Instance.new("CylinderMesh", Beam)
			for i = 0, 1, 0.02 do
				local Shine = Instance.new("Part")
				Shine.Name = "Shine"
				Shine.FormFactor = "Custom"
				Shine.Shape = "Ball"
				Shine.CanCollide = false
				Shine.BrickColor = BrickColor.new("Bright green")
				Shine.TopSurface = 0
				Shine.BottomSurface = 0
				Shine.Size = Vector3.new(1, 1, 1)
				Shine.Transparency = 0.25
				Shine.CFrame = CFrame.new(Player.Character[ModelName].Source.Position + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)))
				Shine.Parent = Workspace
				local BodyPosition = Instance.new("BodyPosition", Shine)
				BodyPosition.D = 7000
				BodyPosition.P = 100000
				BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				BodyPosition.position = Player.Character[ModelName].Source.Position
				coroutine.wrap(function()
					for i = 0, 10 do
						BodyPosition.position = Player.Character[ModelName].Source.Position
						wait()
					end
					Shine:Remove()
				end)()
				Mesh.Scale = Vector3.new(Size * i, 10000, Size * i)
				Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(i, i, i) * 5
				Player.Character[ModelName].Source.Transparency = (1 - i)
				wait()
			end
			for i = 0, 1, 0.1 do
				Beam.Transparency = i
				Player.Character[ModelName].Source.Transparency = i
				wait()
			end
			Beam:Remove()
			Player.Character[ModelName].Source.Transparency = 1
			wait(0.5)
			local Meteor = Instance.new("Part", Workspace)
			Meteor.Name = "Meteor"
			Meteor.BrickColor = BrickColor.new("Bright red")
			Meteor.CanCollide = true
			Meteor.Locked = true
			Meteor.FormFactor = "Custom"
			Meteor.Shape = "Ball"
			Meteor.Size = Vector3.new(Size, Size, Size)
			Meteor.RotVelocity = Vector3.new(math.random(-1000, 1000), math.random(-1000, 1000), math.random(-1000, 1000))
			Meteor:BreakJoints()
			Meteor.CFrame = CFrame.new(Position + Vector3.new(0, 1000, 0))
			Meteor.Velocity = Vector3.new(0, -100, 0)
			local Fire = Instance.new("Fire", Meteor)
			Fire.Heat = 0
			Fire.Size = Size
			local Smoke = Instance.new("Smoke", Meteor)
			Smoke.RiseVelocity = 0
			Smoke.Size = Size + 3
			Smoke.Color = Color3.new(50 / 255, 50 / 255, 50 / 255)
			Smoke.Opacity = 0.5
			local Mesh = Instance.new("SpecialMesh", Meteor)
			Mesh.MeshType = "FileMesh"
			Mesh.MeshId = "http://www.roblox.com/Asset/?id=1290033"
			Mesh.TextureId = "http://www.roblox.com/Asset/?id=1290030"
			Mesh.Scale = Meteor.Size-- / 1.5
			Mesh.VertexColor = Vector3.new(1, 0, 0)
			Instance.new("BoolValue", Meteor).Name = "HasHit"
			TouchedToServer([[function Weld(x, y)
	local Weld = Instance.new("Weld")
	Weld.Part0 = x
	Weld.Part1 = y
	Weld.C0 = x.CFrame:inverse() * CFrame.new(x.Position)
	Weld.C1 = y.CFrame:inverse() * CFrame.new(x.Position)
	Weld.Parent = x
end
local Meteor = script.Parent
local Size = Meteor.Size.x * 1.5
local HasHit = Meteor.HasHit
if HasHit.Value == true then return end
if Hit:GetMass() < 500 then
	Hit:BreakJoints()
	return
end
HasHit.Value = true
local OldMeteor = Meteor
local Meteor = Meteor:Clone()
Meteor.TouchConnector:Remove()
Meteor.CFrame = CFrame.new(OldMeteor.Position)
OldMeteor:Remove()
Weld(Hit, Meteor)
Meteor.Parent = Workspace
Meteor.Fire.Heat = 50
local Sound = Instance.new("Sound", Workspace)
Sound.SoundId = "rbxasset://sounds\\Launching rocket.wav"
Sound.Pitch = (30 - Meteor.Size.x) / 25
Sound:Play()
local Shards = {}
for i = 0, math.random(10, 30) do
	local Shard = Instance.new("Part", Workspace)
	Shard.Name = "Ground Shard"
	Shard.Anchored = true
	Shard.Locked = true
	Shard.BrickColor = Hit.BrickColor
	Shard.Size = Vector3.new(Size + 10, 2, Size)
	Shard.CFrame = CFrame.new(Meteor.Position - Vector3.new(0, Size / 2, 0)) * CFrame.fromEulerAnglesXYZ(0, math.rad(math.random(0, 360)), math.rad(math.random(0, 25)))
	table.insert(Shards, Shard)
end
local Shock = Instance.new("Part", Workspace)
Shock.Name = "Shock Ring"
Shock.FormFactor = "Custom"
Shock.Size = Vector3.new(1, 1, 1)
Shock.BrickColor = BrickColor.new("Institutional white")
Shock.Anchored = true
Shock.CanCollide = false
local Mesh = Instance.new("SpecialMesh", Shock)
Mesh.MeshType = "FileMesh"
Mesh.MeshId = "http://www.roblox.com/Asset/?id=3270017"
local Tilt1 = math.random(-10, 10)
local Tilt2 = math.random(-10, 10)
local TiltChance = math.random(1, 3)
for i = 0, 50 do
	Shock.Mesh.Scale = Vector3.new(i, i, i)
	if TiltChance == 1 then
		Shock.CFrame = CFrame.new(Meteor.Position - Vector3.new(0, Meteor.Size.y / 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + Tilt1), 0, 0)
	elseif TiltChance == 2 then
		Shock.CFrame = CFrame.new(Meteor.Position - Vector3.new(0, Meteor.Size.y / 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(Tilt2), 0)
	elseif TiltChance == 3 then
		Shock.CFrame = CFrame.new(Meteor.Position - Vector3.new(0, Meteor.Size.y / 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + Tilt1), math.rad(Tilt2), 0)
	end
	wait()
end
for i = 0, 1, 0.1 do
	Shock.Transparency = i
	wait()
end
Shock:Remove()
wait(math.random(1, 10))
if Meteor.Parent == nil then return end
local Explosion = Instance.new("Explosion")
Explosion.BlastPressure = 100000
Explosion.Position = Meteor.Position
Explosion.BlastRadius = Meteor.Size.y * 2
Explosion.Parent = Workspace
local Sound = Instance.new("Sound", Workspace)
Sound.Name = "Explosion"
Sound.Pitch = (30 - Size) / 20
Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
Sound:Play()
for i = 0, math.random(5, 25) do
	local MeteorChunkSize = math.random(1, 5)
	local MeteorChunk = Meteor:Clone()
	pcall(function() MeteorChunk.Main:Remove() end)
	MeteorChunk.Size = Vector3.new(MeteorChunkSize, MeteorChunkSize, MeteorChunkSize)
	MeteorChunk.Mesh.Scale = Vector3.new(MeteorChunkSize, MeteorChunkSize, MeteorChunkSize)
	MeteorChunk.CanCollide = true
	MeteorChunk.Anchored = false
	MeteorChunk.CFrame = CFrame.new(Meteor.Position + Vector3.new(math.random(-Size / 2, Size / 2), math.random(-Size / 2, Size / 2), math.random(-Size / 2, Size / 2))) * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
	MeteorChunk.Velocity = Vector3.new(math.random(-100, 100), math.random(10, 250), math.random(-100, 100))
	MeteorChunk.RotVelocity = Vector3.new(math.random(-500, 500), math.random(-500, 500), math.random(-500, 500))
	MeteorChunk.Parent = Workspace
	coroutine.wrap(function()
		wait(math.random(100, 300) / 100)
		MeteorChunk.Fire.Enabled = false
		MeteorChunk.Smoke.Enabled = false
		wait(math.random(250, 300) / 100)
		MeteorChunk.CanCollide = false
	end)()
end
for i = 1, #Shards do
	if Shards[i].Parent ~= nil then
		if math.random(1, 2) == 1 then
			Shards[i]:Remove()
		else
			Shards[i].CanCollide = false
			Shards[i].Anchored = false
			Shards[i].RotVelocity = Vector3.new(math.random(-500, 500), math.random(-500, 500), math.random(-500, 500))
			Shards[i].Velocity = Vector3.new(math.random(-100, 100), math.random(10, 250), math.random(-100, 100))
		end
	end
end
Meteor:Remove()]], Meteor)
			CanUse = true
		elseif Spell == 3 then
			--Eccrando Bolt, energy class. Fires a charged bolt of energy gathered in your wand.
			CanUse = false
			Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
			Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1, 1, 1)
			Player.Character[ModelName].Source.Transparency = 0
			Player.Character[ModelName].Source.BrickColor = BrickColor.new("New Yeller")
			SoundToServer("Charge1", Player.Character[ModelName].Handle.Charge1.SoundId, 0.85, 1, false, Player.Character[ModelName].Source)
			for i = 0, 1, 0.075 do
				local Shine = Instance.new("Part")
				Shine.Name = "Shine"
				Shine.FormFactor = "Custom"
				Shine.Shape = "Ball"
				Shine.CanCollide = false
				Shine.BrickColor = BrickColor.new("New Yeller")
				Shine.TopSurface = 0
				Shine.BottomSurface = 0
				Shine.Size = Vector3.new(1, 1, 1)
				Shine.Transparency = 0.25
				Shine.CFrame = CFrame.new(Player.Character[ModelName].Source.Position + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)))
				Shine.Parent = Workspace
				local BodyPosition = Instance.new("BodyPosition")
				BodyPosition.D = 7000
				BodyPosition.P = 100000
				BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				BodyPosition.position = Player.Character[ModelName].Source.Position
				BodyPosition.Parent = Shine
				coroutine.wrap(function()
					for i = 0, 10 do
						BodyPosition.position = Player.Character[ModelName].Source.Position
						wait()
					end
					Shine:Remove()
				end)()
				Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(i * 2, i * 2, i * 2)
				wait()
				Power = Power - 1
			end
			for i = 1, 2, 0.075 do
				Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(i * 2, i * 2, i * 2)
				Power = Power - 1
				wait()
			end
			local First = true
			while Button1Down == true or First == true do
				if Mouse == nil then break end
				if Power < 0 and First == false then break end
				First = false
				Power = Power - 5
				SoundToServer("Fire1", Player.Character[ModelName].Handle.Fire1.SoundId, 1, 1, false, Player.Character[ModelName].Source)
				local Explosion = Instance.new("Explosion")
				Explosion.BlastPressure = 500000
				Explosion.BlastRadius = 10
				Explosion.Position = Mouse.Hit.p
				Explosion.Parent = Workspace
				for i = 1, math.random(5, 25) do
					local Shine = Instance.new("Part")
					Shine.Name = "Shine"
					Shine.FormFactor = "Custom"
					Shine.Shape = "Block"
					Shine.CanCollide = false
					Shine.Anchored = true
					Shine.BrickColor = BrickColor.new("New Yeller")
					Shine.TopSurface = 0
					Shine.BottomSurface = 0
					Shine.Size = Vector3.new(1, 1, 1)
					Shine.Transparency = 0.25
					Shine.CFrame = CFrame.new(Mouse.Hit.p)
					Shine.Parent = Workspace
					local Mesh = Instance.new("SpecialMesh")
					Mesh.MeshType = "Brick"
					local random = math.random(3, 10) / 10
					Mesh.Scale = Vector3.new(random, random, random)
					Mesh.Parent = Shine
					coroutine.wrap(function()
						for i = Shine.Transparency, 1, 0.05 do
							Shine.Transparency = i
							Shine.CFrame = CFrame.new(Shine.Position + Vector3.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10)) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
							wait(math.random(1, 5) / 100)
						end
						Shine:Remove()
					end)()
				end
				for i = 1, math.random(2, 5) do
					local Shine = Instance.new("Part")
					Shine.Name = "Shine"
					Shine.FormFactor = "Custom"
					Shine.Shape = "Block"
					Shine.CanCollide = false
					Shine.Anchored = true
					Shine.BrickColor = BrickColor.new("New Yeller")
					Shine.TopSurface = 0
					Shine.BottomSurface = 0
					Shine.Size = Vector3.new(1, 1, 1)
					Shine.Transparency = 0.25
					Shine.CFrame = CFrame.new(Mouse.Hit.p + Vector3.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10))
					Shine.Parent = Workspace
					local Mesh = Instance.new("SpecialMesh")
					Mesh.MeshType = "Sphere"
					local random = math.random(3, 10) / 10
					Mesh.Scale = Vector3.new(random, random, random)
					Mesh.Parent = Shine
					coroutine.wrap(function()
						for i = Shine.Transparency, 1, 0.05 do
							Shine.Transparency = i
							Shine.Mesh.Scale = Shine.Mesh.Scale + Vector3.new(1, 1, 1)
							wait(math.random(1, 5) / 100)
						end
						Shine:Remove()
					end)()
				end
				local Beam = Instance.new("Part")
				Beam.BrickColor = BrickColor.new("New Yeller")
				Beam.TopSurface = 0
				Beam.BottomSurface = 0
				Beam.Size = Vector3.new(1, 1, 1)
				Beam.Transparency = 0.4
				Beam.Anchored = true
				Beam.CanCollide = false
				Beam.CFrame = CFrame.new((Player.Character[ModelName].Source.Position + Mouse.Hit.p) / 2, Mouse.Hit.p)
				Beam.Parent = Workspace
				local Mesh = Instance.new("SpecialMesh")
				Mesh.MeshType = "Brick"
				Mesh.Scale = Vector3.new(math.random(2, 5) / 10, math.random(2, 5) / 10, (Mouse.Hit.p - Player.Character[ModelName].Source.Position).magnitude)
				Mesh.Parent = Beam
				coroutine.wrap(function()
					wait(0.1)
					for i = Beam.Transparency, 1, 0.05 do
						Beam.Transparency = i
						wait(0.1)
					end
					Beam:Remove()
				end)()
				for i = 0, 1, 0.05 do
					Player.Character[ModelName].Source.Transparency = i
					Player.Character[ModelName].Source.Mesh.Scale = Vector3.new((1 - i) * 6.75, (1 - i) * 6.75, (1 - i) * 6.75)
					Power = Power - 1
					wait()
				end
				wait(0.3)
			end
			Player.Character[ModelName].Source.Transparency = 1
			CanUse = true
		elseif Spell == 4 then
			--Eccrando Strike, energy class. Use the clouds to your advantage and fire bolts of lightning at the ground.
			while Button1Down == true do
				while Power <= 25 and Button1Down == true do
					wait()
				end
				if Mouse == nil then break end
				CanUse = false
				Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
				Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1, 1, 1)
				Player.Character[ModelName].Source.Transparency = 0
				Player.Character[ModelName].Source.BrickColor = BrickColor.new("New Yeller")
				SoundToServer("Charge1", Player.Character[ModelName].Handle.Charge1.SoundId, 0.4, 1, false, Player.Character[ModelName].Source)
				for i = 0, 1, 1 / math.random(40, 50) do
					local Shine = Instance.new("Part")
					Shine.Name = "Shine"
					Shine.FormFactor = "Custom"
					Shine.Shape = "Ball"
					Shine.CanCollide = false
					Shine.BrickColor = BrickColor.new("New Yeller")
					Shine.TopSurface = 0
					Shine.BottomSurface = 0
					Shine.Size = Vector3.new(1, 1, 1)
					Shine.Transparency = 0.25
					Shine.CFrame = CFrame.new(Player.Character[ModelName].Source.Position + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)))
					Shine.Parent = Workspace
					local BodyPosition = Instance.new("BodyPosition")
					BodyPosition.D = 7000
					BodyPosition.P = 100000
					BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
					BodyPosition.position = Player.Character[ModelName].Source.Position
					BodyPosition.Parent = Shine
					coroutine.wrap(function()
						for i = 0, 10 do
							BodyPosition.position = Player.Character[ModelName].Source.Position
							wait()
						end
						Shine:Remove()
					end)()
					Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(i * 8.5, i * 8.5, i * 8.5)
					Power = Power - 1
					wait()
				end
				Power = Power - 10
				if Mouse == nil then break end
				SoundToServer("ID", "rbxasset://sounds\\Halloween" ..(math.random(1, 2) == 1 and "Thunder" or "Lightning").. ".wav", math.random(10, 50) / 10, math.random(9, 11) / 10, false, Workspace)
				SoundToServer("ID", "rbxasset://sounds\\Halloween" ..(math.random(1, 2) == 1 and "Thunder" or "Lightning").. ".wav", math.random(1, 10) / 10, math.random(1, 30) / 10, false, Workspace)
				local Explosion = Instance.new("Explosion")
				Explosion.BlastPressure = 1000000
				Explosion.BlastRadius = 25
				Explosion.Position = Mouse.Hit.p
				Explosion.Parent = Workspace
				local FinalPosition = Mouse.Hit.p + Vector3.new(math.random(-100, 100), 1000, math.random(-100, 100))
				local Beam = Instance.new("Part")
				Beam.BrickColor = BrickColor.new("New Yeller")
				Beam.TopSurface = 0
				Beam.BottomSurface = 0
				Beam.Size = Vector3.new(1, 1, 1)
				Beam.Transparency = 0.4
				Beam.Anchored = true
				Beam.CanCollide = false
				Beam.CFrame = CFrame.new((FinalPosition + Mouse.Hit.p) / 2, Mouse.Hit.p)
				Beam.Parent = Workspace
				local Mesh = Instance.new("SpecialMesh")
				Mesh.MeshType = "Brick"
				Mesh.Scale = Vector3.new(math.random(40, 50) / 10, math.random(40, 50) / 10, (Mouse.Hit.p - FinalPosition).magnitude + 10)
				Mesh.Parent = Beam
				coroutine.wrap(function()
					wait(0.1)
					for i = Beam.Transparency, 1, 0.05 do
						Beam.Transparency = i
						wait(0.1)
					end
					Beam:Remove()
				end)()
				for i = 0, 1, 0.05 do
					Player.Character[ModelName].Source.Transparency = i
					Player.Character[ModelName].Source.Mesh.Scale = Vector3.new((1 - i) * 8, (1 - i) * 8, (1 - i) * 8)
					Power = Power - 1
					wait()
				end
				Player.Character[ModelName].Source.Transparency = 1
				wait(0.1)
				CanUse = true
			end
		elseif Spell == 5 then
			--Thius Dae, health-based class. Seep life from your enemies to save yourself. Works as a general defense against multiple enemies.
			CanUse = false
			Player.Character[ModelName].Source.Mesh.MeshType = "Brick"
			Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1, 1, 1)
			Player.Character[ModelName].Source.Transparency = 0.25
			Player.Character[ModelName].Source.BrickColor = BrickColor.new("Really black")
			Player.Character[ModelName].Handle.Charge4.Looped = true
			Player.Character[ModelName].Handle.Charge4.Volume = 1
			Player.Character[ModelName].Handle.Charge4.Pitch = 1
			Player.Character[ModelName].Handle.Charge4:Play()
			for i = 0, 10 do
				Player.Character[ModelName].Source.Mesh.Scale = Player.Character[ModelName].Source.Mesh.Scale * 1.11
				Player.Character[ModelName].Source.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
				wait()
			end
			for i = 0, math.huge, 0.1 do
				if Button1Down == false then break end
				if Player.Character == nil then break end
				if Player.Character:FindFirstChild("Humanoid") == nil then break end
				if Player.Character.Humanoid.Health <= 0 then break end
				if Player.Character:FindFirstChild(ModelName) == nil then break end
				if Player.Character[ModelName]:FindFirstChild("Handle") == nil then break end
				if Player.Character[ModelName]:FindFirstChild("Source") == nil then break end
				if Power <= 0 then break end
				local endstr = string.sub(tostring(i), string.len(tostring(i)), string.len(tostring(i)))
				if endstr == "0" or endstr == "2" or endstr == "4" or endstr == "6" or endstr == "8" then
					Power = Power - 1
				end
				Player.Character[ModelName].Source.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
				Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(math.sin(i) + 3, math.sin(i) + 3, math.sin(i) + 3)
				local Shine = Instance.new("Part")
				Shine.Name = "Shine"
				Shine.FormFactor = "Custom"
				Shine.Shape = "Block"
				Shine.CanCollide = false
				Shine.Anchored = true
				Shine.BrickColor = BrickColor.new("Really black")
				Shine.TopSurface = 0
				Shine.BottomSurface = 0
				Shine.Size = Vector3.new(1, 1, 1)
				Shine.Transparency = 0.25
				Shine.CFrame = CFrame.new(Player.Character[ModelName].Source.Position)
				Shine.Parent = Workspace
				local Mesh = Instance.new("SpecialMesh")
				Mesh.MeshType = "Brick"
				local random = math.random(3, 10) / 10
				Mesh.Scale = Vector3.new(random, random, random)
				Mesh.Parent = Shine
				coroutine.resume(coroutine.create(function(part)
					for i = 0.25 * 25, 25 do
						part.Transparency = i / 25
						part.CFrame = CFrame.new(part.Position + Vector3.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10)) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
						wait(math.random(1, 5) / 100)
					end
					part:Remove()
				end), Shine)
				for _, model in pairs(Workspace:GetChildren()) do
					if model ~= Player.Character then
						if model:FindFirstChild("Torso") ~= nil and model:FindFirstChild("Humanoid") ~= nil then
							if (Player.Character.Torso.Position - model.Torso.Position).magnitude <= 25 then
								local Beam = Instance.new("Part")
								Beam.BrickColor = BrickColor.new("Really black")
								Beam.TopSurface = 0
								Beam.BottomSurface = 0
								Beam.Size = Vector3.new(1, 1, 1)
								Beam.Transparency = 0.4
								Beam.Anchored = true
								Beam.CanCollide = false
								Beam.CFrame = CFrame.new((Player.Character[ModelName].Source.Position + model.Torso.Position) / 2, model.Torso.Position)
								Beam.Parent = Workspace
								local Mesh = Instance.new("SpecialMesh")
								Mesh.MeshType = "Brick"
								Mesh.Scale = Vector3.new(math.random(2, 5) / 10, math.random(2, 5) / 10, (model.Torso.Position - Player.Character[ModelName].Source.Position).magnitude)
								Mesh.Parent = Beam
								coroutine.resume(coroutine.create(function(part) wait() part:Remove() end), Beam)
								if model.Humanoid.Health > 0 then
									model.Humanoid:TakeDamage(1.25)
									Player.Character.Humanoid.Health = Player.Character.Humanoid.Health + (1.25 / 2)
								elseif model.Humanoid.Health <= 0 then
									model.Humanoid.Health = 0
									model.Humanoid.Name = "HumanoidAbsorbed"
									for _, part in pairs(model:GetChildren()) do
										if part.ClassName == "Part" then
											local position = Instance.new("BodyPosition")
											position.Name = "Thius Dae"
											position.maxForce = Vector3.new(math.huge, math.huge, math.huge)
											position.P = 1000
											position.D = 50
											position.Parent = part
											position.position = Player.Character[ModelName].Source.Position
											coroutine.resume(coroutine.create(function() while position.Parent ~= nil do position.position = Player.Character[ModelName].Source.Position part.CanCollide = false wait() end end))
											coroutine.resume(coroutine.create(function() wait(3.5) position:Remove() end))
										end
									end
									Player.Character.Humanoid.Health = Player.Character.Humanoid.Health + 5
									Power = Power + 25
									Player.Character[ModelName].Handle.Fire4.Looped = false
									Player.Character[ModelName].Handle.Fire4.Volume = 1
									Player.Character[ModelName].Handle.Fire4.Pitch = 1
									Player.Character[ModelName].Handle.Fire4:Play()
								end
							end
						end
					end
				end
				wait()
			end
			for i = 0, 25 do
				Player.Character[ModelName].Source.Mesh.Scale = Player.Character[ModelName].Source.Mesh.Scale / 1.15
				Player.Character[ModelName].Source.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
				Player.Character[ModelName].Handle.Charge4.Volume = (25 - i) / 25
				wait()
			end
			Player.Character[ModelName].Handle.Charge4:Stop()
			Player.Character[ModelName].Source.Transparency = 1
			Player.Character[ModelName].Source.Weld.C0 = CFrame.new()
			CanUse = true
		elseif Spell == 6 then
			--Thius Heed, health-based class. Heal people around you and sheild them.
			CanUse = false
			Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
			Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1, 1, 1)
			Player.Character[ModelName].Source.Transparency = 0.25
			Player.Character[ModelName].Source.BrickColor = BrickColor.new("Institutional white")
			Player.Character[ModelName].Source.Fire.Enabled = true
			Player.Character[ModelName].Source.Fire.Heat = 10
			Player.Character[ModelName].Source.Fire.Size = 1
			Player.Character[ModelName].Source.Fire.Color = Color3.new(1, 1, 1)
			Player.Character[ModelName].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
			Player.Character[ModelName].Handle.Shine.Looped = true
			Player.Character[ModelName].Handle.Shine.Volume = 1
			Player.Character[ModelName].Handle.Shine.Pitch = 1
			Player.Character[ModelName].Handle.Shine:Play()
			for i = 0, 5 do
				Player.Character[ModelName].Source.Mesh.Scale = Player.Character[ModelName].Source.Mesh.Scale * 1.2
				Player.Character[ModelName].Source.Fire.Size = Player.Character[ModelName].Source.Fire.Size * 1.2
				wait()
			end
			local heed = Instance.new("ForceField")
			heed.Name = "HeedShield"
			for i = 0, math.huge, 0.1 do
				if Button1Down == false then break end
				if Player.Character == nil then break end
				if Player.Character:FindFirstChild("Humanoid") == nil then break end
				if Player.Character.Humanoid.Health <= 0 then break end
				if Player.Character:FindFirstChild(ModelName) == nil then break end
				if Player.Character[ModelName]:FindFirstChild("Handle") == nil then break end
				if Player.Character[ModelName]:FindFirstChild("Source") == nil then break end
				if Power <= 0 then break end
				local endstr = string.sub(tostring(i), string.len(tostring(i)), string.len(tostring(i)))
				if endstr == "0" or endstr == "2" or endstr == "4" or endstr == "6" or endstr == "8" then
					Power = Power - 1
				end
				Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(math.sin(i) + 3, math.sin(i) + 3, math.sin(i) + 3)
				Player.Character[ModelName].Source.Fire.Size = math.sin(i) + 10
				Player.Character[ModelName].Source.Fire.Heat = math.sin(i) + 10
				for _, model in pairs(Workspace:GetChildren()) do
					if model:FindFirstChild("Torso") ~= nil and model:FindFirstChild("Humanoid") ~= nil then
						if (Player.Character.Torso.Position - model.Torso.Position).magnitude <= 25 then
							local Beam = Instance.new("Part")
							Beam.BrickColor = BrickColor.new("Institutional white")
							Beam.TopSurface = 0
							Beam.BottomSurface = 0
							Beam.Size = Vector3.new(1, 1, 1)
							Beam.Transparency = 0.4
							Beam.Anchored = true
							Beam.CanCollide = false
							Beam.CFrame = CFrame.new((Player.Character[ModelName].Source.Position + model.Torso.Position) / 2, model.Torso.Position)
							Beam.Parent = Workspace
							local Mesh = Instance.new("SpecialMesh")
							Mesh.MeshType = "Brick"
							Mesh.Scale = Vector3.new(math.random(2, 5) / 10, math.random(2, 5) / 10, (model.Torso.Position - Player.Character[ModelName].Source.Position).magnitude)
							Mesh.Parent = Beam
							coroutine.resume(coroutine.create(function(part) wait() part:Remove() end), Beam)
							model.Humanoid.Health = model.Humanoid.Health + 1.25
							heed:Clone().Parent = model
							coroutine.resume(coroutine.create(function(part) wait() part:Remove() end), model.HeedShield)
						end
					end
				end
				wait()
			end
			for i = 0, 25 do
				Player.Character[ModelName].Source.Mesh.Scale = Player.Character[ModelName].Source.Mesh.Scale / 1.15
				Player.Character[ModelName].Source.Fire.Size = Player.Character[ModelName].Source.Fire.Size / 1.15
				Player.Character[ModelName].Source.Fire.Heat = Player.Character[ModelName].Source.Fire.Heat / 1.15
				Player.Character[ModelName].Handle.Shine.Volume = (25 - i) / 25
				wait()
			end
			Player.Character[ModelName].Handle.Shine:Stop()
			Player.Character[ModelName].Source.Transparency = 1
			Player.Character[ModelName].Source.Fire.Enabled = false
			CanUse = true
		elseif Spell == 7 then
			--Combuscus Phore, fire/explosives class. A small explosion with a bit of magic makes to be a spectacular performance.
			CanUse = false
			Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
			Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1, 1, 1)
			Player.Character[ModelName].Source.Transparency = 0.25
			Player.Character[ModelName].Source.BrickColor = BrickColor.new("Really red")
			Player.Character[ModelName].Source.Fire.Enabled = true
			Player.Character[ModelName].Source.Fire.Heat = 10
			Player.Character[ModelName].Source.Fire.Size = 10
			Player.Character[ModelName].Source.Fire.Color = Color3.new(1, 0, 0)
			Player.Character[ModelName].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
			Player.Character[ModelName].Handle.Bolt.Looped = false
			Player.Character[ModelName].Handle.Bolt.Volume = 1
			Player.Character[ModelName].Handle.Bolt.Pitch = 1.5
			Player.Character[ModelName].Handle.Bolt:Play()
			Power = Power - 75
			local Shock = Instance.new("Part")
			Shock.FormFactor = "Custom"
			Shock.Size = Vector3.new(1, 1, 1)
			Shock.BrickColor = BrickColor.new("Really red")
			Shock.Anchored = true
			Shock.Name = "Shock Ring"
			Shock.CanCollide = false
			Shock.Parent = Workspace
			local Mesh = Instance.new("SpecialMesh")
			Mesh.MeshType = "FileMesh"
			Mesh.MeshId = "http://www.roblox.com/Asset/?id=3270017"
			Mesh.Parent = Shock
			local Tilt1 = math.random(-10, 10)
			local Tilt2 = math.random(-10, 10)
			local TiltChance = math.random(1, 3)
			for i = 0, 25 do
				Player.Character[ModelName].Handle.Bolt.Pitch = Player.Character[ModelName].Handle.Bolt.Pitch - 0.1
				Shock.Mesh.Scale =  Vector3.new(i, i, i) * (25 - i)
				if TiltChance == 1 then
					Shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + Tilt1), 0, 0)
				elseif TiltChance == 2 then
					Shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(Tilt2), 0)
				elseif TiltChance == 3 then
					Shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + Tilt1), math.rad(Tilt2), 0)
				end
				Player.Character[ModelName].Source.Mesh.Scale = (Vector3.new(i, i, i) / 5) * (25 - i)
				Player.Character[ModelName].Source.Fire.Size = (i / 5) * (25 - i)
				Player.Character[ModelName].Source.Fire.Heat = (i / 5) * (25 - i)
				for _, model in pairs(Workspace:GetChildren()) do
					if model.ClassName == "Part" then
						if (Player.Character.Torso.Position - model.Position).magnitude <= (i * (25 - i)) / 2 and model.Anchored == false then
							model.Velocity = ((model.Position - Player.Character.Torso.Position) * (math.sin(i / 4) * 10)) + Vector3.new(0, 25, 0)
							if math.random(1, 10) == 1 then model:BreakJoints() end
						end
					elseif model.ClassName == "Model" and model ~= Player.Character then
						for _, x in pairs(model:GetChildren()) do
							if x.ClassName == "Part" then
								if (Player.Character.Torso.Position - x.Position).magnitude <= (i * (25 - i)) / 2 and x.Anchored == false then
									x.Velocity = ((x.Position - Player.Character.Torso.Position) * (math.sin(i / 4) * 10)) + Vector3.new(0, 25, 0)
									if math.random(1, 10) == 1 then x:BreakJoints() end
									if model:FindFirstChild("Humanoid") ~= nil then
										model.Humanoid:TakeDamage(10)
										model.Humanoid.Sit = true
									end
								end
							end
						end
					end
				end
				wait(0.03)
			end
			Shock:Remove()
			Player.Character[ModelName].Source.Transparency = 1
			Player.Character[ModelName].Source.Fire.Enabled = false
			CanUse = true
		elseif Spell == 8 then
			--Combuscus Burn, fire/explosives class. Basically, light things on fire.
			CanUse = false
			Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
			Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1, 1, 1)
			Player.Character[ModelName].Source.BrickColor = BrickColor.new("Really red")
			Player.Character[ModelName].Handle.Fire3.Looped = false
			Player.Character[ModelName].Handle.Fire3.Volume = 1
			Player.Character[ModelName].Handle.Fire3.Pitch = 1
			Player.Character[ModelName].Handle.Fire3:Play()
			Player.Character[ModelName].Handle.Fire4.Looped = false
			Player.Character[ModelName].Handle.Fire4.Volume = 1
			Player.Character[ModelName].Handle.Fire4.Pitch = 1
			Player.Character[ModelName].Handle.Fire4:Play()
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.1 do
					Player.Character[ModelName].Source.Mesh.Scale = (Vector3.new(i, i, i) * 5) + Vector3.new(1, 1, 1)
					Player.Character[ModelName].Source.Transparency = i
				wait()
				end
				Player.Character[ModelName].Source.Transparency = 1
			end))
			if Mouse.Target == nil then return end
			if Mouse.Target.Parent == nil then return end
			local function SetFire(target, offset)
				if target == nil then return end
				if offset == nil then offset = Vector3.new(0, 0, 0) end
				if target:GetMass() > 3500 then return end
				if target.Name == "CombuscusBurnFire" then return end
				if target:FindFirstChild("CombuscusBurnFire") ~= nil then return end
				if target:FindFirstChild("ForceField") ~= nil then return end
				if target.Parent == nil then return end
				if target.Parent:FindFirstChild("ForceField") ~= nil then return end
				if target.Parent:FindFirstChild("HeedShield") ~= nil then return end
				local check = Instance.new("Model")
				check.Name = "CombuscusBurnFire"
				check.Parent = target
				delay(math.random(0.1, 2), function() if target ~= nil then target.Touched:connect(function(hit) if target:FindFirstChild("CombuscusBurnFire") ~= nil then SetFire(hit) end end) end end)
				local part = Instance.new("Part")
				part.Name = "CombuscusBurnFire"
				part.CanCollide = false
				part.Anchored = true
				Part.FormFactor = "Custom"
				part.Size = Vector3.new(1, 1, 1)
				part.TopSurface = 0
				part.BottomSurface = 0
				part.Transparency = 1
				part.Parent = Workspace
				local fire = Instance.new("Fire")
				fire.Color = Color3.new(1, math.random(10, 30) / 100, 0)
				fire.SecondaryColor = Color3.new(1, 1, 1)
				fire.Size = math.random(4, 15)
				fire.Heat = fire.Size + 3
				fire.Parent = part
				local smoke = Instance.new("Smoke")
				smoke.Color = Color3.new(0.5, 0.5, 0.5)
				smoke.Size = fire.Size + 3
				smoke.RiseVelocity = fire.Heat / 5
				smoke.Opacity = math.random(1, 15) / 100
				smoke.Parent = part
				local sound = Instance.new("Sound")
				sound.SoundId = "http://www.roblox.com/Asset/?id=31760113"
				sound.Volume = 1
				sound.Pitch = 1
				sound.Looped = true
				sound.Parent = part
				sound:Play()
				coroutine.resume(coroutine.create(function()
					for i = 1, math.random(100, 1000) do
						if part.Parent == nil then break end
						if target.Parent == nil then break end
						if target.Parent.Parent == nil then break end
						if target:FindFirstChild("CombuscusBurnFire") == nil then break end
						if Player.Character == nil then break end
						if Player.Character:FindFirstChild("Humanoid") == nil then break end
						if Player.Character.Humanoid.Health <= 0 then break end
						part.CFrame = CFrame.new(target.Position + offset)
						if target.Parent:FindFirstChild("Humanoid") ~= nil then
							target.Parent.Humanoid:TakeDamage(0.25)
						end
						if math.random(1, 100) == 1 then target:BreakJoints() end
						if math.random(1, 25) == 1 and target.Anchored == false then target.BrickColor = BrickColor.new("Really black") end
						if math.random(1, 50) == 1 and target.Anchored == false then target.Velocity = target.Velocity + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)) end
						wait()
					end
					for i = 1, 0, -0.05 do
						sound.Volume = i
						fire.Size = fire.Size / 1.025
						fire.Heat = fire.Heat / 1.01
						fire.Color = Color3.new(1 * i, 0.25 * i, 0)
						fire.SecondaryColor = Color3.new(1 * i, 1 * i, 1 * i)
						smoke.Size = smoke.Size / 1.05
						smoke.RiseVelocity = smoke.RiseVelocity / 1.05
						smoke.Opacity = smoke.Opacity / 1.05
						wait()
					end
					sound:Stop()
					fire.Enabled = false
					smoke.Enabled = false
					if target ~= nil then if target:FindFirstChild("CombuscusBurnFire") ~= nil then target.CombuscusBurnFire:Remove() end end
					wait(3)
					part:Remove()
				end))
			end
			pcall(function() SetFire(Mouse.Target, Mouse.Hit.p - Mouse.Target.Position) end)
			CanUse = true
		elseif Spell == 9 then
			--Combuscus Vortex, fire/explosives class. A tornado in a can.
			CanUse = false
			Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
			Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1, 1, 1)
			Player.Character[ModelName].Source.Transparency = 0.25
			Player.Character[ModelName].Source.BrickColor = BrickColor.new("Really red")
			Player.Character[ModelName].Source.Fire.Enabled = true
			Player.Character[ModelName].Source.Fire.Heat = 10
			Player.Character[ModelName].Source.Fire.Size = 10
			Player.Character[ModelName].Source.Fire.Color = Color3.new(1, 0, 0)
			Player.Character[ModelName].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
			Player.Character[ModelName].Handle.Charge2.Looped = false
			Player.Character[ModelName].Handle.Charge2.Volume = 1
			Player.Character[ModelName].Handle.Charge2.Pitch = 0.125
			Player.Character[ModelName].Handle.Charge2:Play()
			Power = Power - 50
			for i = 0, 75 do
				if math.random(1, 3) == 1 then
					local Shock = Instance.new("Part")
					Shock.FormFactor = "Custom"
					Shock.Size = Vector3.new(1, 1, 1)
					Shock.BrickColor = BrickColor.new("Really red")
					Shock.Anchored = true
					Shock.Name = "Shock Ring"
					Shock.CanCollide = false
					Shock.Parent = Workspace
					local Mesh = Instance.new("SpecialMesh")
					Mesh.MeshType = "FileMesh"
					Mesh.MeshId = "http://www.roblox.com/Asset/?id=3270017"
					Mesh.Parent = Shock
					coroutine.resume(coroutine.create(function()
						local Tilt1 = math.random(-10, 10)
						local Tilt2 = math.random(-10, 10)
						local TiltChance = math.random(1, 3)
						local RandomSize = math.random(-10, 10)
						for x = 1, 25 do
							Shock.Mesh.Scale = Vector3.new(5 + x, 5 + x, 5 + (x / 5)) + Vector3.new(RandomSize, RandomSize, RandomSize)
							if TiltChance == 1 then
								Shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0) + Vector3.new(0, x, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + (Tilt1 / (25 - x))), 0, 0)
							elseif TiltChance == 2 then
								Shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0) + Vector3.new(0, x, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(Tilt2 / (25 - x)), 0)
							elseif TiltChance == 3 then
								Shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0) + Vector3.new(0, x, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + (Tilt1 / (25 - x))), math.rad(Tilt2 / (25 - x)), 0)
							end
							wait()
						end
					end))
				end
				Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(i, i, i) / 5
				Player.Character[ModelName].Source.Fire.Size = i / 5
				Player.Character[ModelName].Source.Fire.Heat = i / 5
				for _, model in pairs(Workspace:GetChildren()) do
					if model.ClassName == "Part" then
						if (Player.Character.Torso.Position - model.Position).magnitude <= 50 and model.Anchored == false then
							model.CanCollide = false
							model.Transparency = 0.5
							local Position = Instance.new("BodyPosition")
							Position.maxForce = Vector3.new(math.huge, math.huge, math.huge)
							Position.P = 100
							Position.D = 10
							Position.position = Player.Character.Torso.Position + Vector3.new(math.sin(i / (math.random(500, 750) / 100)) * (i / 2) + 4, (i / (math.random(800, 1200) / 100)) + 5, math.cos(i / (math.random(500, 750) / 100)) * (i / 2) + 4)
							Position.Parent = model
							coroutine.resume(coroutine.create(function() wait(0.1) Position:Remove() end))
							if math.random(1, 10) == 1 then model:BreakJoints() end
						end
					elseif model.ClassName == "Model" and model ~= Player.Character then
						for _, x in pairs(model:GetChildren()) do
							if x.ClassName == "Part" then
								if (Player.Character.Torso.Position - x.Position).magnitude <= 50 and x.Anchored == false then
									x.CanCollide = false
									local Position = Instance.new("BodyPosition")
									Position.maxForce = Vector3.new(math.huge, math.huge, math.huge)
									Position.P = 500
									Position.D = 10
									Position.position = Player.Character.Torso.Position + Vector3.new(math.sin(i / (math.random(500, 750) / 100)) * (i / 2) + 4, (i / (math.random(800, 1200) / 100)) + 7.5, math.cos(i / (math.random(500, 750) / 100)) * (i / 2) + 4)
									Position.Parent = x
									coroutine.resume(coroutine.create(function() wait(0.1) Position:Remove() end))
									if math.random(1, 10) == 1 then x:BreakJoints() end
									if model:FindFirstChild("Humanoid") ~= nil then
										model.Humanoid:TakeDamage(10)
										model.Humanoid.Sit = true
									end
								end
							end
						end
					end
				end
				wait(0.03)
			end
			Player.Character[ModelName].Handle.Fire2.Looped = false
			Player.Character[ModelName].Handle.Fire2.Volume = 1
			Player.Character[ModelName].Handle.Fire2.Pitch = 0.3
			Player.Character[ModelName].Handle.Fire2:Play()
			Player.Character[ModelName].Source.Fire.Enabled = false
			for i = 0.25, 1, 0.05 do
				Player.Character[ModelName].Source.Transparency = i
				wait()
			end
			Player.Character[ModelName].Source.Transparency = 1
			CanUse = true
		elseif Spell == 10 then
			--Combuscus Phore Nexus, fire/explosives class. Basically the outcome is similar to that of a nuclear warhead.
			CanUse = false
			Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
			Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1, 1, 1)
			Player.Character[ModelName].Source.Transparency = 0.25
			Player.Character[ModelName].Source.BrickColor = BrickColor.new("Really red")
			Player.Character[ModelName].Source.Fire.Enabled = true
			Player.Character[ModelName].Source.Fire.Heat = 10
			Player.Character[ModelName].Source.Fire.Size = 10
			Player.Character[ModelName].Source.Fire.Color = Color3.new(1, 0, 0)
			Player.Character[ModelName].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
			Player.Character[ModelName].Handle.Fire1.Looped = false
			Player.Character[ModelName].Handle.Fire1.Volume = 1
			Player.Character[ModelName].Handle.Fire1.Pitch = math.random(3, 6) / 10
			local new = Player.Character[ModelName].Handle.Fire1:Clone()
			new.Parent = Workspace
			new:Play()
			Player.Character[ModelName].Handle.Charge3.Looped = false
			Player.Character[ModelName].Handle.Charge3.Volume = 1
			Player.Character[ModelName].Handle.Charge3.Pitch = math.random(15, 20) / 10
			local new = Player.Character[ModelName].Handle.Charge3:Clone()
			new.Parent = Workspace
			new:Play()
			Player.Character[ModelName].Handle.Fire4.Looped = false
			Player.Character[ModelName].Handle.Fire4.Volume = 1
			Player.Character[ModelName].Handle.Fire4.Pitch = math.random(2, 4) / 10
			local new = Player.Character[ModelName].Handle.Fire4:Clone()
			new.Parent = Workspace
			new:Play()
			Power = Power - 100
			local Shock = Instance.new("Part")
			Shock.FormFactor = "Custom"
			Shock.Size = Vector3.new(1, 1, 1)
			Shock.BrickColor = BrickColor.new("Really red")
			Shock.Anchored = true
			Shock.Name = "Shock Ring"
			Shock.CanCollide = false
			Shock.Parent = Workspace
			local Mesh = Instance.new("SpecialMesh")
			Mesh.MeshType = "FileMesh"
			Mesh.MeshId = "http://www.roblox.com/Asset/?id=3270017"
			Mesh.Parent = Shock
			local Shock2 = Shock:Clone()
			Shock2.Parent = Workspace
			local Shock3 = Shock:Clone()
			Shock3.Parent = Workspace
			local ShockAngle = CFrame.fromEulerAnglesXYZ(math.rad(90 + math.random(-5, 5)), math.rad(math.random(-5, 5)), math.rad(math.random(-5, 5)))
			local Shock2Angle = CFrame.fromEulerAnglesXYZ(math.rad(90 + math.random(-5, 5)), math.rad(math.random(-5, 5)), math.rad(math.random(-5, 5)))
			local Shock3Angle = CFrame.fromEulerAnglesXYZ(math.rad(90 + math.random(-5, 5)), math.rad(math.random(-5, 5)), math.rad(math.random(-5, 5)))
			local Shock2Size = math.random(2, 3)
			local Shock3Size = math.random(4, 6)
			for i = 0, 500, 10 do
				if string.sub(tostring(i), string.len(tostring(i)), string.len(tostring(i))) == "0" then
					local Shock4 = Instance.new("Part")
					Shock4.FormFactor = "Custom"
					Shock4.Size = Vector3.new(1, 1, 1)
					Shock4.BrickColor = BrickColor.new("Really red")
					Shock4.Anchored = true
					Shock4.Name = "Shock Ring"
					Shock4.CanCollide = false
					Shock4.Parent = Workspace
					Shock4.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 2, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-25, 25)), math.rad(math.random(-25, 25)), math.rad(math.random(-25, 25)))
					local Mesh = Instance.new("SpecialMesh")
					Mesh.MeshType = "FileMesh"
					Mesh.MeshId = "http://www.roblox.com/Asset/?id=20329976"
					Mesh.Parent = Shock4
					coroutine.resume(coroutine.create(function(part)
						for i = 0, 1, 0.05 do
							part.Transparency = i
							part.Mesh.Scale = Vector3.new(i * 25, i * 25, i * 25)
							wait()
						end
						part:Remove()
					end), Shock4)
				end
				Shock.Transparency = i / 500
				Shock2.Transparency = i / 500
				Shock3.Transparency = i / 500
				Player.Character[ModelName].Source.Transparency = i / 250
				Shock.Mesh.Scale = Vector3.new(i, i, i)
				Shock2.Mesh.Scale = Vector3.new(i, i, i) / Shock2Size
				Shock3.Mesh.Scale = Vector3.new(i, i, i) / Shock3Size
				Shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * ShockAngle
				Shock2.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * Shock2Angle
				Shock3.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * Shock3Angle
				Player.Character[ModelName].Source.Mesh.Scale = (Vector3.new(i, i, i) / 15)
				Player.Character[ModelName].Source.Fire.Size = (i / 15)
				Player.Character[ModelName].Source.Fire.Heat = (i / 15)
				for _, model in pairs(Workspace:GetChildren()) do
					if model.ClassName == "Part" then
						if (Player.Character.Torso.Position - model.Position).magnitude <= i / 2 and model.Anchored == false then
							model.Velocity = (model.Position - Player.Character.Torso.Position) * 10 + Vector3.new(0, 25, 0)
							if math.random(1, 10) == 1 then model:BreakJoints() end
						end
					elseif model.ClassName == "Model" and model ~= Player.Character then
						for _, x in pairs(model:GetChildren()) do
							if x.ClassName == "Part" then
								if (Player.Character.Torso.Position - x.Position).magnitude <= i / 2 and x.Anchored == false then
									x.Velocity = (x.Position - Player.Character.Torso.Position) * 10 + Vector3.new(0, 25, 0)
									if math.random(1, 10) == 1 then x:BreakJoints() end
									if model:FindFirstChild("Humanoid") ~= nil then
										model.Humanoid:TakeDamage(10)
										model.Humanoid.Sit = true
									end
								end
							end
						end
					end
				end
				wait(0.03)
			end
			Shock:Remove()
			Shock2:Remove()
			Shock3:Remove()
			Player.Character[ModelName].Source.Transparency = 1
			Player.Character[ModelName].Source.Fire.Enabled = false
			CanUse = true
		elseif Spell == 11 then
			--Kanamla Cysis, object manipulation class. The easiest Spell in it's class allows you to lightly pick things up.
			local target = Mouse.Target
			if target == nil then return end
			if target.Parent == nil then return end
			if target.Anchored == true then return end
			if (target.Position - Player.Character[ModelName].Source.Position).magnitude > 25 then return end
			if game:GetService("Players"):GetPlayerFromCharacter(target.Parent) ~= nil then
				if game:GetService("Players"):GetPlayerFromCharacter(target.Parent).Character:FindFirstChild("Torso") ~= nil then
					target = game:GetService("Players"):GetPlayerFromCharacter(target.Parent).Character.Torso
					if game:GetService("Players"):GetPlayerFromCharacter(target.Parent).Character:FindFirstChild("Humanoid") ~= nil then
						game:GetService("Players"):GetPlayerFromCharacter(target.Parent).Character.Humanoid.PlatformStand = true
					end
				end
			end
			local position = Instance.new("BodyPosition")
			position.Name = "Cysis"
			position.maxForce = Vector3.new(math.huge, math.huge, math.huge)
			position.P = 1000
			position.D = 50
			position.Parent = target
			position.position = Player.Character[ModelName].Source.Position + ((Mouse.Hit.p - Player.Character[ModelName].Source.Position).unit * 10)
			CanUse = false
			Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
			Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1, 1, 1)
			Player.Character[ModelName].Source.Transparency = 0.25
			Player.Character[ModelName].Source.BrickColor = BrickColor.new("Bright blue")
			Player.Character[ModelName].Source.Fire.Enabled = true
			Player.Character[ModelName].Source.Fire.Heat = 10
			Player.Character[ModelName].Source.Fire.Size = 2
			Player.Character[ModelName].Source.Fire.Color = Color3.new(0, 0, 1)
			Player.Character[ModelName].Source.Fire.SecondaryColor = Color3.new(0.5, 0.5, 1)
			Player.Character[ModelName].Handle.Shine.Looped = false
			Player.Character[ModelName].Handle.Shine.Volume = 1
			Player.Character[ModelName].Handle.Shine.Pitch = 0.75
			Player.Character[ModelName].Handle.Shine:Play()
			for i = 0, math.huge do
				if Button1Down == false then break end
				if Player.Character == nil then break end
				if Player.Character:FindFirstChild("Humanoid") == nil then break end
				if Player.Character.Humanoid.Health <= 0 then break end
				if Player.Character:FindFirstChild(ModelName) == nil then break end
				if Player.Character[ModelName]:FindFirstChild("Handle") == nil then break end
				if Player.Character[ModelName]:FindFirstChild("Source") == nil then break end
				if Power <= 0 then break end
				if string.sub(tostring(i), string.len(tostring(i)), string.len(tostring(i))) == "0" then
					Power = Power - 1
				end
				if target ~= nil and position ~= nil then
					position.position = Player.Character[ModelName].Source.Position + ((Mouse.Hit.p - Player.Character[ModelName].Source.Position).unit * 10)
				end
				wait()
			end
			if position ~= nil then position:Remove() end
			if target ~= nil then
				if target.Parent:FindFirstChild("Humanoid") ~= nil then
					target.Parent.Humanoid.PlatformStand = false
					target.Parent.Humanoid.Sit = true
				end
			end
			for i = 0.25, 1, 0.05 do
				Player.Character[ModelName].Source.Transparency = i
				wait()
			end
			Player.Character[ModelName].Source.Transparency = 1
			Player.Character[ModelName].Source.Fire.Enabled = false
			CanUse = true
		elseif Spell == 12 then
			--Kanamla Tepidift, object manipulation class. Allows you to teleport from one area to another.
			CanUse = false
			Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
			Player.Character[ModelName].Source.BrickColor = BrickColor.new("Bright blue")
			Player.Character[ModelName].Source.Fire.Enabled = true
			Player.Character[ModelName].Source.Fire.Heat = 0
			Player.Character[ModelName].Source.Fire.Color = Color3.new(0, 0, 1)
			Player.Character[ModelName].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
			Player.Character[ModelName].Handle.Shine.Looped = true
			Player.Character[ModelName].Handle.Shine.Pitch = 1.5
			Player.Character[ModelName].Handle.Shine.Volume = 1
			Player.Character[ModelName].Handle.Shine:Play()
			for i = 1, 0, -0.05 do
				Player.Character[ModelName].Source.Transparency = i
				Player.Character[ModelName].Source.Mesh.Scale = (Vector3.new(1 - i, 1 - i, 1 - i) * 15)
				Player.Character[ModelName].Source.Fire.Size = (1 - i) * 15
				wait()
			end
			local maxDistance = (Player.Character.Torso.Position - Mouse.Hit.p).magnitude
			if maxDistance < 500 then 
				local pos1 = Player.Character.Torso.Position
				local pos2 = Mouse.Hit.p + Vector3.new(0, 3, 0)
				local pos0 = pos1
				for distance = 1, maxDistance, 5 do
					pos0 = (CFrame.new(pos1, pos2) * CFrame.new(0, 0, -distance)).p
					Player.Character.Torso.CFrame = CFrame.new(pos0, pos2)
					Player.Character.Torso.Velocity = Vector3.new()
					Power = Power - 1
					wait()
				end
				Player.Character.Torso.CFrame = CFrame.new(pos2)
				for i = 0, 1, 0.05 do
					Player.Character[ModelName].Source.Transparency = i
					Player.Character[ModelName].Source.Mesh.Scale = (Vector3.new(1 - i, 1 - i, 1 - i) * 15)
					Player.Character[ModelName].Source.Fire.Size = (1 - i) * 15
					Player.Character[ModelName].Handle.Shine.Volume = (1 - i)
					wait()
				end
				Player.Character[ModelName].Handle.Shine:Stop()
			else
				for i = 0, 1, 0.05 do
					Player.Character[ModelName].Source.BrickColor = Player.Character[ModelName].Source.BrickColor == BrickColor.new("Bright blue") and BrickColor.new("Really red") or BrickColor.new("Bright blue")
					Player.Character[ModelName].Source.Transparency = i
					Player.Character[ModelName].Source.Mesh.Scale = (Vector3.new(1 - i, 1 - i, 1 - i) * 15)
					Player.Character[ModelName].Source.Fire.Size = (1 - i) * 15
					Player.Character[ModelName].Source.Fire.Color = Player.Character[ModelName].Source.Fire.Color == Color3.new(0, 0, 1) and Color3.new(1, 0, 0) or Color3.new(0, 0, 1)
					Player.Character[ModelName].Source.Fire.SecondaryColor = Player.Character[ModelName].Source.Fire.SecondaryColor == Color3.new(1, 1, 1) and Color3.new(1, 0, 0) or Color3.new(1, 1, 1)
					Player.Character[ModelName].Handle.Shine.Pitch = (1 - i) + 0.5
					wait()
				end
				Player.Character[ModelName].Handle.Shine:Stop()
			end
			Player.Character[ModelName].Source.Transparency = 1
			Player.Character[ModelName].Source.Fire.Enabled = false
			CanUse = true
		elseif Spell == 13 then
			--Kanamla Jump, object manipulation class. Allows you to jump really high.
			CanUse = false
			while Button1Down == true do
				if Power <= 0 then break end
				Player.Character[ModelName].Handle.Fire3.Looped = false
				Player.Character[ModelName].Handle.Fire3.Pitch = 1
				Player.Character[ModelName].Handle.Fire3.Volume = 1
				for i = 1, 2 do Player.Character[ModelName].Handle.Fire3:Play() end
				Player.Character[ModelName].Source.BrickColor = BrickColor.new("Really blue")
				Player.Character.Humanoid.PlatformStand = true
				Player.Character.Torso.Velocity = Vector3.new(Player.Character.Torso.Velocity.x, (Player.Character.Torso.Velocity.y / 2) + 100, Player.Character.Torso.Velocity.z)
				Power = Power - 5
				local Shock = Instance.new("Part")
				Shock.FormFactor = "Custom"
				Shock.Size = Vector3.new(1, 1, 1)
				Shock.BrickColor = BrickColor.new("Really blue")
				Shock.Anchored = true
				Shock.Name = "Shock Ring"
				Shock.CanCollide = false
				Shock.Parent = Workspace
				local Mesh = Instance.new("SpecialMesh")
				Mesh.MeshType = "FileMesh"
				Mesh.MeshId = "http://www.roblox.com/Asset/?id=20329976"
				Mesh.Scale = Vector3.new(1, 1, 1)
				Mesh.Parent = Shock
				Shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 2.5, 0))
				coroutine.resume(coroutine.create(function()
					for i = 0, 50 do
						Mesh.Scale = Vector3.new(i, i / 5, i)
						Shock.Transparency = i / 50
						wait()
					end
					Shock:Remove()
				end))
				for i = 0, 1, 0.2 do
					Player.Character[ModelName].Source.Transparency = i
					Player.Character[ModelName].Source.Mesh.Scale = (Vector3.new(i, i, i) * 5)
					wait()
				end
				Player.Character[ModelName].Source.Transparency = 1
				Player.Character.Humanoid.PlatformStand = false
			end
			CanUse = true
		elseif Spell == 14 then
			--Candora Hide, light manipulation class. The Hide Spell makes you and your wand seem invisible to the naked eye by bending light around your limbs.
			CanUse = false
			Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
			Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1, 1, 1)
			Player.Character[ModelName].Source.BrickColor = BrickColor.new("Royal purple")
			for i = 1, 0, -0.05 do
				Player.Character[ModelName].Source.Transparency = i
				Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1 - i, 1 - i, 1 - i) * 2
				wait()
			end
			Player.Character[ModelName].Source.Transparency = 0
			if Player.Character:FindFirstChild("Head") ~= nil then
				if Player.Character.Head:FindFirstChild("face") ~= nil then
					Player.Character.Head.face.Face = "Bottom"
				end
			end
			Player.Character[ModelName].Handle.Shine.Looped = false
			Player.Character[ModelName].Handle.Shine.Volume = 1
			Player.Character[ModelName].Handle.Shine:Play()
			for i = 0, 1.1, 0.01 do
				Player.Character[ModelName].Handle.Shine.Pitch = math.sin(i)
				Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(math.sin(i), math.sin(i), math.sin(i)) + Vector3.new(2, 2, 2)
				for _, children in pairs(Player.Character:GetChildren()) do
					if children.ClassName == "Part" and children.Name ~= "" then
						children.Transparency = i
					end
					if children.Name == Name then
						for _, children2 in pairs(children:GetChildren()) do
							if children2.ClassName == "Part" then
								children2.Transparency = i
							end
						end
					end
				end
				wait()
			end
			while Button1Down == true do
				if Player.Character == nil then break end
				if Player.Character:FindFirstChild("Humanoid") == nil then break end
				if Player.Character.Humanoid.Health <= 0 then break end
				if Player.Character:FindFirstChild(ModelName) == nil then break end
				if Player.Character[ModelName]:FindFirstChild("Handle") == nil then break end
				if Player.Character[ModelName]:FindFirstChild("Source") == nil then break end
				if Power <= 0 then break end
				Power = Power - 1
				wait(0.5)
			end
			Player.Character[ModelName].Handle.Shine:Play()
			for i = 1, -0.1, -0.01 do
				Player.Character[ModelName].Handle.Shine.Pitch = math.sin(i)
				Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(math.sin(i), math.sin(i), math.sin(i)) + Vector3.new(2, 2, 2)
				for _, children in pairs(Player.Character:GetChildren()) do
					if children.ClassName == "Part" and children.Name ~= "" then
						children.Transparency = i
					end
					if children.Name == Name then
						for _, children2 in pairs(children:GetChildren()) do
							if children2.ClassName == "Part" then
								children2.Transparency = i
							end
						end
					end
				end
				wait()
			end
			Player.Character[ModelName].Handle.Shine:Stop()
			if Player.Character:FindFirstChild("Head") ~= nil then
				if Player.Character.Head:FindFirstChild("face") ~= nil then
					Player.Character.Head.face.Face = "Front"
				end
			end
			for i = 0, 1, 0.05 do
				Player.Character[ModelName].Source.Transparency = i
				Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1 - i, 1 - i, 1 - i) * 2
				wait()
			end
			Player.Character[ModelName].Source.Transparency = 1
			CanUse = true
		elseif Spell == 15 then
			--Duraen Control, human manipulation class. Lets you control the movements of others.
			Controlling = Controlling == nil and false or Controlling
			ControlModel = ControlModel == nil and nil or ControlModel
			if Controlling ~= true then
				if Mouse.Target == nil then return end
				if Mouse.Target.Parent == nil then return end
				if Mouse.Target.Parent:FindFirstChild("Humanoid") == nil then return end
				if Mouse.Target.Parent:FindFirstChild("Torso") == nil then return end
				if Mouse.Target.Parent:FindFirstChild("Head") == nil then return end
				CanUse = false
				Controlling = true
				ControlModel = Mouse.Target.Parent
				Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
				Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1, 1, 1)
				Player.Character[ModelName].Source.BrickColor = BrickColor.new("Neon orange")
				Player.Character[ModelName].Handle.Shine.Looped = false
				Player.Character[ModelName].Handle.Shine.Volume = 1
				Player.Character[ModelName].Handle.Shine.Pitch = 2
				Player.Character[ModelName].Handle.Shine:Play()
				for i = 1, 0, -0.025 do
					Player.Character[ModelName].Source.Transparency = i
					Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1 - i, 1 - i, 1 - i) * 2
					Player.Character[ModelName].Handle.Shine.Pitch = i * 2
					wait()
				end
				Player.Character[ModelName].Source.Transparency = 0
				Player.Character[ModelName].Handle.Shine:Stop()
				coroutine.resume(coroutine.create(function()
					for i = 0, 1, 0.05 do
						Player.Character[ModelName].Source.Transparency = i
						wait()
					end
					Player.Character[ModelName].Source.Transparency = 1
				end))
				Player.Character[ModelName].Handle.Fire2.Looped = false
				Player.Character[ModelName].Handle.Fire2.Volume = 1
				Player.Character[ModelName].Handle.Fire2.Pitch = 1
				Player.Character[ModelName].Handle.Fire2:Play()
				local Shot = Instance.new("Part", Workspace)
				Shot.FormFactor = "Custom"
				Shot.Shape = "Ball"
				Shot.Size = Vector3.new(1, 1, 1)
				Shot.CFrame = Player.Character[ModelName].Source.CFrame
				Shot.CanCollide = false
				Shot.BrickColor = BrickColor.new("Neon orange")
				Shot.Transparency = 0.5
				Shot.TopSurface = 0
				Shot.BottomSurface = 0
				local BodyVelocity = Instance.new("BodyVelocity", Shot)
				BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
				local Camera = Workspace.CurrentCamera
				Camera.CameraSubject = Shot
				while true do
					if ControlModel == nil then break end
					if ControlModel.Parent == nil then break end
					if ControlModel:FindFirstChild("Humanoid") == nil then break end
					if ControlModel.Humanoid.Health <= 0 then break end
					if ControlModel:FindFirstChild("Torso") == nil then break end
					if ControlModel:FindFirstChild("Head") == nil then break end
					if Player.Character == nil then break end
					if Player.Character.Parent == nil then break end
					if Player.Character:FindFirstChild("Humanoid") == nil then break end
					if Player.Character.Humanoid.Health <= 0 then break end
					if Player.Character:FindFirstChild("Torso") == nil then break end
					if Player.Character:FindFirstChild("Head") == nil then break end
					if Shot.Parent == nil then break end
					if (ControlModel.Head.Position - Shot.Position).magnitude < 3 then break end
					BodyVelocity.velocity = (ControlModel.Head.Position - Shot.Position).unit * (ControlModel.Humanoid.WalkSpeed * 1.5)
					wait()
				end
				Shot:Remove()
				if ControlModel:FindFirstChild("Humanoid") == nil then return end
				if ControlModel:FindFirstChild("Torso") == nil then return end
				if ControlModel:FindFirstChild("Head") == nil then return end
				local ControlPlayer = nil
				local Explosion = Instance.new("Part", Workspace)
				Explosion.FormFactor = "Custom"
				Explosion.Shape = "Ball"
				Explosion.Size = Vector3.new(1, 1, 1)
				Explosion.CFrame = ControlModel.Head.CFrame
				Explosion.CanCollide = false
				Explosion.Anchored = true
				Explosion.BrickColor = BrickColor.new("Neon orange")
				Explosion.Transparency = 0.5
				Explosion.TopSurface = 0
				Explosion.BottomSurface = 0
				local Mesh = Instance.new("SpecialMesh")
				Mesh.MeshType = "Sphere"
				Mesh.Parent = Explosion
				coroutine.resume(coroutine.create(function(Part)
					for i = 0, 1, 0.05 do
						Mesh.Scale = Vector3.new(i * 7.5, i * 2, i * 7.5)
						Explosion.Transparency = i
						Explosion.CFrame = Part.CFrame
						wait()
					end
					Explosion:Remove()
				end), ControlModel.Head)
				local Camera = Workspace.CurrentCamera
				Camera.CameraSubject = ControlModel.Humanoid
				CanUse = true
				while Controlling == true and ControlModel:FindFirstChild("Humanoid") ~= nil and ControlModel:FindFirstChild("Torso") ~= nil and ControlModel:FindFirstChild("Head") ~= nil and Spell == 15 and Selected == true do
					if Player.Character == nil then break end
					if Player.Character:FindFirstChild("Humanoid") == nil then break end
					if Player.Character.Humanoid.Health <= 0 then break end
					if Player.Character:FindFirstChild(ModelName) == nil then break end
					if Player.Character[ModelName]:FindFirstChild("Handle") == nil then break end
					if Player.Character[ModelName]:FindFirstChild("Source") == nil then break end
					if ControlModel.Humanoid.Health <= 0 then break end
					if Power <= 0 then break end
					if math.random(1, 2) == 1 then Power = Power - 1 end
					ControlModel.Humanoid:MoveTo(Mouse.Hit.p, Mouse.Target == nil and ControlModel.Torso or Mouse.Target)
					if Mouse.Hit.p.y > ControlModel.Torso.Position.y then
						ControlModel.Humanoid.Jump = true
					end
					wait()
				end
				if ControlModel.Parent ~= nil then
					if ControlModel:FindFirstChild("Head") ~= nil then
						local Explosion = Instance.new("Part", Workspace)
						Explosion.Name = "Magical Explosion"
						Explosion.FormFactor = "Custom"
						Explosion.Shape = "Ball"
						Explosion.Size = Vector3.new(1, 1, 1)
						Explosion.CFrame = ControlModel.Head.CFrame
						Explosion.CanCollide = false
						Explosion.Anchored = true
						Explosion.BrickColor = BrickColor.new("Neon orange")
						Explosion.TopSurface = 0
						Explosion.BottomSurface = 0
						local Mesh = Instance.new("SpecialMesh")
						Mesh.MeshType = "Sphere"
						Mesh.Parent = Explosion
						coroutine.resume(coroutine.create(function(Part)
							for i = 1, 0, -0.05 do
								Mesh.Scale = Vector3.new(i * 7.5, i * 2, i * 7.5)
								Explosion.Transparency = i
								Explosion.CFrame = Part.CFrame
								wait()
							end
							Explosion:Remove()
						end), ControlModel.Head)
					end
				end
				Controlling = false
				ControlModel = nil
				Camera.CameraSubject = Player.Character:FindFirstChild("Humanoid")
				CanUse = false
				if Selected == true then
					for i = 1, 0, -0.05 do
						Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
						Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(2, 2, 2)
						Player.Character[ModelName].Source.BrickColor = BrickColor.new("Neon orange")
						Player.Character[ModelName].Source.Transparency = i
						wait()
					end
					Player.Character[ModelName].Handle.Shine.Looped = false
					Player.Character[ModelName].Handle.Shine.Volume = 1
					Player.Character[ModelName].Handle.Shine.Pitch = 0
					Player.Character[ModelName].Handle.Shine:Play()
					for i = 0, 1, 0.025 do
						Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
						Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1 - i, 1 - i, 1 - i) * 2
						Player.Character[ModelName].Source.BrickColor = BrickColor.new("Neon orange")
						Player.Character[ModelName].Source.Transparency = i
						Player.Character[ModelName].Handle.Shine.Pitch = i * 2
						wait()
					end
					Player.Character[ModelName].Source.Transparency = 1
				end
				CanUse = true
			else
				Controlling = false
			end
		elseif Spell == 16 then
			--Duraen Switch, human manipulation class. Dress up as the enemy... Or as a woman, you sicko.
			if Mouse.Target == nil then return end
			if Mouse.Target.Parent == nil then return end
			if Mouse.Target.Parent:FindFirstChild("Humanoid") == nil then return end
			if Mouse.Target.Parent:FindFirstChild("Torso") == nil then return end
			if Mouse.Target.Parent:FindFirstChild("Head") == nil then return end
			CanUse = false
			local CharacterOne = Player.Character
			local CharacterTwo = Mouse.Target.Parent
			Player.Character[ModelName].Source.Mesh.MeshType = "Sphere"
			Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1, 1, 1)
			Player.Character[ModelName].Source.BrickColor = BrickColor.new("Neon orange")
			Player.Character[ModelName].Handle.Shine.Looped = false
			Player.Character[ModelName].Handle.Shine.Volume = 1
			Player.Character[ModelName].Handle.Shine.Pitch = 2
			Player.Character[ModelName].Handle.Shine:Play()
			for i = 1, 0, -0.025 do
				Player.Character[ModelName].Source.Transparency = i
				Player.Character[ModelName].Source.Mesh.Scale = Vector3.new(1 - i, 1 - i, 1 - i) * 2
				Player.Character[ModelName].Handle.Shine.Pitch = i * 2
				wait()
			end
			Player.Character[ModelName].Source.Transparency = 0
			Player.Character[ModelName].Handle.Shine:Stop()
			coroutine.resume(coroutine.create(function()
				for i = 0, 1, 0.05 do
					Player.Character[ModelName].Source.Transparency = i
					wait()
				end
				Player.Character[ModelName].Source.Transparency = 1
			end))
			coroutine.resume(coroutine.create(function()
				local Explosion = Instance.new("Part", Workspace)
				Explosion.Name = "Magical Explosion"
				Explosion.FormFactor = "Custom"
				Explosion.Shape = "Ball"
				Explosion.Size = Vector3.new(1, 1, 1)
				Explosion.CanCollide = false
				Explosion.Anchored = true
				Explosion.BrickColor = BrickColor.new("Neon orange")
				Explosion.TopSurface = 0
				Explosion.BottomSurface = 0
				local Mesh = Instance.new("SpecialMesh")
				Mesh.MeshType = "Sphere"
				Mesh.Parent = Explosion
				coroutine.resume(coroutine.create(function(Part)
					for i = 0, 7, 0.1 do
						Mesh.Scale = Vector3.new(i, i * 2, i)
						Explosion.CFrame = Part.CFrame
						wait()
					end
					for i = 7, 14, 0.1 do
						Mesh.Scale = Vector3.new(i, i * 2, i)
						Explosion.Transparency = (i - 7) / 7
						Explosion.CFrame = Part.CFrame
						wait()
					end
					Explosion:Remove()
				end), CharacterOne.Torso)
				local Explosion = Instance.new("Part", Workspace)
				Explosion.Name = "Magical Explosion"
				Explosion.FormFactor = "Custom"
				Explosion.Shape = "Ball"
				Explosion.Size = Vector3.new(1, 1, 1)
				Explosion.CanCollide = false
				Explosion.Anchored = true
				Explosion.BrickColor = BrickColor.new("Neon orange")
				Explosion.TopSurface = 0
				Explosion.BottomSurface = 0
				local Mesh = Instance.new("SpecialMesh")
				Mesh.MeshType = "Sphere"
				Mesh.Parent = Explosion
				coroutine.resume(coroutine.create(function(Part)
					for i = 0, 7, 0.1 do
						Mesh.Scale = Vector3.new(i, i * 2, i)
						Explosion.CFrame = Part.CFrame
						wait()
					end
					for i = 7, 14, 0.1 do
						Mesh.Scale = Vector3.new(i, i * 2, i)
						Explosion.Transparency = (i - 7) / 7
						Explosion.CFrame = Part.CFrame
						wait()
					end
					Explosion:Remove()
				end), CharacterTwo.Torso)
			end))
			wait(2)
			local CharacterOneParts = Instance.new("Model")
			local CharacterTwoParts = Instance.new("Model")
			if CharacterOne.Head:FindFirstChild("face") ~= nil then
				CharacterOne.Head.face.Parent = CharacterOneParts
			end
			if CharacterOne.Head:FindFirstChild("Mesh") ~= nil then
				CharacterOne.Head.Mesh.Parent = CharacterOneParts
			end
			if CharacterOne.Torso:FindFirstChild("roblox") ~= nil then
				CharacterOne.Torso.roblox.Parent = CharacterOneParts
			end
			for _, Part in pairs(CharacterOne:GetChildren()) do
				if Part.ClassName == "Shirt" or Part.ClassName == "Pants" or Part.ClassName == "CharacterMesh" or Part.ClassName == "ShirtGraphic" or Part.ClassName == "Hat" or Part.ClassName == "Accoutrement" or Part.ClassName == "BodyColors" then
					Part.Parent = CharacterOneParts
				end
			end
			if CharacterTwo.Head:FindFirstChild("face") ~= nil then
				CharacterTwo.Head.face.Parent = CharacterTwoParts
			end
			if CharacterTwo.Head:FindFirstChild("Mesh") ~= nil then
				CharacterTwo.Head.Mesh.Parent = CharacterTwoParts
			end
			if CharacterTwo.Torso:FindFirstChild("roblox") ~= nil then
				CharacterTwo.Torso.roblox.Parent = CharacterTwoParts
			end
			for _, Part in pairs(CharacterTwo:GetChildren()) do
				if Part.ClassName == "Shirt" or Part.ClassName == "Pants" or Part.ClassName == "CharacterMesh" or Part.ClassName == "ShirtGraphic" or Part.ClassName == "Hat" or Part.ClassName == "Accoutrement" or Part.ClassName == "BodyColors" then
					Part.Parent = CharacterTwoParts
				end
			end
			for _, Part in pairs(CharacterOneParts:GetChildren()) do
				if Part.Name == "face" or Part.Name == "Mesh" then
					Part.Parent = CharacterTwo.Head
				elseif Part.Name == "roblox" then
					Part.Parent = CharacterTwo.Torso
				else
					Part.Parent = CharacterTwo
				end
			end
			for _, Part in pairs(CharacterTwoParts:GetChildren()) do
				if Part.Name == "face" or Part.Name == "Mesh" then
					Part.Parent = CharacterOne.Head
				elseif Part.Name == "roblox" then
					Part.Parent = CharacterOne.Torso
				else
					Part.Parent = CharacterOne
				end
			end
			CanUse = true
		end
	end
end


function onButton1Up(Mouse)
	Button1Down = false
end


function onKeyDown(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Key == "t" then
		SpellHotkey1Delay = time()
	end
	if Key == "y" then
		SpellHotkey2Delay = time()
	end
	if Key == "u" then
		SpellHotkey3Delay = time()
	end
	if CheckPlayer() == true then
		if Button1Down == false and CanUse == true then
			if Key == "q" then
				if Mouse.Target == nil then return end
				if CheckPlayer() == false then return end
				local NewPlayer = game:GetService("Players"):GetPlayerFromCharacter(Mouse.Target.Parent)
				if NewPlayer == nil then return end
				if NewPlayer.Character == nil then return end
				if NewPlayer.Character:FindFirstChild("Torso") == nil then return end
				if (NewPlayer.Character.Torso.Position - Player.Character.Torso.Position).magnitude > 10 then return end
				onDeselected(Mouse)
				wait()
				RemoveParts(Player.Character, 1)
				script.Parent.Parent = NewPlayer.Backpack
				Player = NewPlayer
			end
			if Key == "e" then
				Spell = Spell - 1
				if Spell < 0 then
					Spell = 16
				end
			end
			if Key == "r" then
				Spell = Spell + 1
				if Spell > 16 then
					Spell = 0
				end
			end
		end
	end
	UpdateGui()
end


function onKeyUp(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Key == "t" then
		if time() - SpellHotkey1Delay > 0.5 then
			SpellHotkey1 = Spell
			local HotkeyMessage = Instance.new("Hint", Player:FindFirstChild("PlayerGui"))
			HotkeyMessage.Text = "[Wanda] Set hotkey 1."
			game:GetService("Debris"):AddItem(HotkeyMessage, 2.5)
		else
			Spell = SpellHotkey1
		end
	end
	if Key == "y" then
		if time() - SpellHotkey2Delay > 0.5 then
			SpellHotkey2 = Spell
			local HotkeyMessage = Instance.new("Hint", Player:FindFirstChild("PlayerGui"))
			HotkeyMessage.Text = "[Wanda] Set hotkey 2."
			game:GetService("Debris"):AddItem(HotkeyMessage, 2.5)
		else
			Spell = SpellHotkey2
		end
	end
	if Key == "u" then
		if time() - SpellHotkey3Delay > 0.5 then
			SpellHotkey3 = Spell
			local HotkeyMessage = Instance.new("Hint", Player:FindFirstChild("PlayerGui"))
			HotkeyMessage.Text = "[Wanda] Set hotkey 3."
			game:GetService("Debris"):AddItem(HotkeyMessage, 2.5)
		else
			Spell = SpellHotkey3
		end
	end
	UpdateGui()
end


function onSelected(Mouse)
	if Selected == true or CanUse == false then return end
	CanUse = false
	while true do
		if CheckPlayer() == true then
			if Player.Character.Torso:FindFirstChild("Right Shoulder") ~= nil then
				break
			end
		end
		wait(0.1)
	end
	Selected = true
	coroutine.wrap(function()
		while Selected == true do
			UpdateGui()
			if CanUse == true then
				Power = Power + 1
				if Power > 100 then
					Power = 100
				end
			end
			wait(0.1)
		end
	end)()
	CanUse = false
	DisableLimb(1, Player.Character)
	SetAngle(1, math.rad(90), Player.Character)
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.Button1Down:connect(function() onButton1Down(Mouse) end)
	Mouse.Button1Up:connect(function() onButton1Up(Mouse) end)
	Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
	Mouse.KeyUp:connect(function(Key) onKeyUp(Key, Mouse) end)
	UpdateGui()
	CanUse = true
end


function onDeselected(Mouse)
	if Selected == false then return end
	Selected = false
	while CanUse == false do wait() end
	if CheckPlayer() == false or pcall(function() local _ = Player.Character.Torso["Right Shoulder 2"] end) == false then
		RemoveParts(Player.Character, 2)
		CreateParts(Player.Character, 1)
		SetSpeed(1, 0.25, Player.Character)
		SetAngle(1, 0, Player.Character)
		EnableLimb(1, Player.Character)
		pcall(function() Player.PlayerGui[ModelName]:Remove() end)
		return
	end
	if Selected == true then return end
	CanUse = false
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	SetSpeed(1, 0.25, Player.Character)
	SetAngle(1, 0, Player.Character)
	EnableLimb(1, Player.Character)
	pcall(function() Player.PlayerGui[ModelName]:Remove() end)
	CanUse = true
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = ModelName
	Tool.Parent = Player.Backpack
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.ClassName == "HopperBin" and Connected == false then
	Connected = true
	Player = script.Parent.Parent.Parent
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	CreateParts(Player.Character, 1)
end