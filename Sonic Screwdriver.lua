if script == nil then return end


ModelName = "Sonic Screwdriver"
Player = script:FindFirstChild("Player") ~= nil and script.Player.Value or game:GetService("Players"):FindFirstChild("DarkShadow6")
Selected = false
Connected = false
Button1Down = false
CanUse = true
CanEdit = false
PitchMod = 0
TARDISLink = nil


function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end


function CreateBrickBeam(Position1, Position2)
	local Beam = Instance.new("Part", Workspace)
	Beam.Name = "SSD Beam"
	Beam.FormFactor = "Custom"
	Beam.TopSurface = 0
	Beam.BottomSurface = 0
	Beam.Anchored = true
	Beam.CanCollide = false
	Beam.Size = Vector3.new(0.2, 0.2, 0.2)
	Beam.BrickColor = BrickColor.new("Really blue")
	local Mesh = Instance.new("SpecialMesh", Beam)
	Mesh.MeshType = "Brick"
	pcall(function()
		Beam.Mesh.Scale = Vector3.new(0.5, 0.5, (Position1 - Position2).magnitude / 0.2)
		Beam.CFrame = CFrame.new((Position1 + Position2) / 2, Position2)
	end)
	return Beam
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

	local MasterPart1 = Instance.new("Part")
	MasterPart1.Name = "Handle"
	MasterPart1.BrickColor = BrickColor.new("Phosph. White")
	MasterPart1.TopSurface = 0
	MasterPart1.BottomSurface = 0
	MasterPart1.FormFactor = "Custom"
	MasterPart1.Size = Vector3.new(0.2, 0.5, 0.2)
	MasterPart1.Locked = true
	MasterPart1.CanCollide = false
	MasterPart1.Parent = Parts
	local Mesh = Instance.new("CylinderMesh", MasterPart1)
	local Weld = Instance.new("Weld", MasterPart1)
	Weld.Part0 = Weld.Parent
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Torso")
		Weld.C1 = CFrame.new(-0.75, 0, -0.6)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
		Weld.C1 = CFrame.new(0, -1, -0.1)
	end

	local Part = MasterPart1:Clone()
	Part.Name = "Grip Bottom"
	Part.Size = Vector3.new(0.2, 0.25, 0.2)
	Part.Parent = Parts
	Part.Mesh.Scale = Vector3.new(0.8, 1, 0.8)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.375, 0)
	Weld.Parent = Weld.Part0

	local Part = Part:Clone()
	Part.Name = "Grip Bump 1"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	Part.Mesh:Remove()
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "FileMesh"
	Mesh.MeshId = "http://www.roblox.com/Asset/?id=1778999"
	Mesh.Scale = Vector3.new(0.15, 0.2, 0.15)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.4125, 0)
	Weld.Parent = Weld.Part0

	for i = 0, 1 do
		local Part = Part:Clone()
		Part.Name = "Grip Bump 2"
		Part.Parent = Parts
		Part.Mesh:Remove()
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Sphere"
		Mesh.Scale = Vector3.new(1, 0.4, 1)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart1
		Weld.C0 = CFrame.new(0, -0.375 + (0.05 * i), 0)
		Weld.Parent = Weld.Part0
	end

	local Part = MasterPart1:Clone()
	Part.Name = "Bottom Ring 1"
	Part.BrickColor = BrickColor.new("Med stone grey")
	Part.Reflectance = 0.1
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	Part.Mesh.Scale = Vector3.new(0.8, 0.25, 0.8)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.525, 0)
	Weld.Parent = Weld.Part0

	local Part = Part:Clone()
	Part.Name = "Bottom Ring 2"
	Part.Parent = Parts
	Part.Mesh.Scale = Vector3.new(0.7, 0.25, 0.7)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.575, 0)
	Weld.Parent = Weld.Part0

	local Part = Part:Clone()
	Part.Name = "Bottom Ring 3"
	Part.Parent = Parts
	Part.Mesh.Scale = Vector3.new(0.75, 0.25, 0.75)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.625, 0)
	Weld.Parent = Weld.Part0

	for i = 0, 19 do
		local Part = Part:Clone()
		Part.Name = "Bottom Cap"
		Part.BrickColor = BrickColor.new("Really black")
		Part.Reflectance = 0
		Part.Parent = Parts
		Part.Mesh.Scale = Vector3.new(0.9 - (i * 0.01), 0.1, 0.9 - (i * 0.01))
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart1
		Weld.C0 = CFrame.new(0, -0.66 - (i * 0.01), 0)
		Weld.Parent = Weld.Part0
	end

	for i = 20, 26 do
		local Part = Part:Clone()
		Part.Name = "Bottom Cap"
		Part.Parent = Parts
		Part.BrickColor = BrickColor.new("Really black")
		Part.Reflectance = 0
		Part.Mesh.Scale = Vector3.new(0.9 - (i * 0.02), 0.1, 0.9 - (i * 0.02))
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart1
		Weld.C0 = CFrame.new(0, -0.66 - (i * 0.01), 0)
		Weld.Parent = Weld.Part0
	end

	local Part = Part:Clone()
	Part.Name = "Top Ring 1"
	Part.BrickColor = BrickColor.new("Med stone grey")
	Part.Reflectance = 0.1
	Part.Parent = Parts
	Part.Mesh.Scale = Vector3.new(1, 0.25, 1)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.275, 0)
	Weld.Parent = Weld.Part0

	local Part = Part:Clone()
	Part.Name = "Top Ring 2"
	Part.Parent = Parts
	Part.Mesh.Scale = Vector3.new(0.75, 0.125, 0.75)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.3125, 0)
	Weld.Parent = Weld.Part0

	local MasterPart2 = Part:Clone()
	MasterPart2.Name = "Top Handle"
	MasterPart2.Parent = Parts
	MasterPart2.Mesh.Scale = Vector3.new(0.75, 0.25, 0.75)
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart2
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.35, 0)
	Weld.Parent = Weld.Part0

	local Part = MasterPart2:Clone()
	Part.Name = "Top Shaft Top"
	Part.Parent = Parts
	Part.Mesh.Scale = Vector3.new(0.4, 0.55, 0.4)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, -0.0775, 0)
	Weld.Parent = Weld.Part0

	local Part = Part:Clone()
	Part.Name = "Top Shaft Center"
	Part.Parent = Parts
	Part.Mesh:Remove()
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Sphere"
	Mesh.Scale = Vector3.new(0.55, 0.55, 0.55)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, -0.0625, 0)
	Weld.Parent = Weld.Part0

	local Part = MasterPart2:Clone()
	Part.Name = "Top Shaft Holder"
	Part.Parent = Parts
	Part.Mesh.Scale = Vector3.new(0.55, 0.1, 0.55)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, -0.1375, 0)
	Weld.Parent = Weld.Part0

	local Part = Part:Clone()
	Part.Name = "Top Shaft Crystal Shell"
	Part.Parent = Parts
	Part.BrickColor = BrickColor.new("Institutional white")
	Part.Reflectance = 0
	Part.Transparency = 0.5
	Part.Mesh.Scale = Vector3.new(0.55, 0.8875, 0.55)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, -0.23625, 0)
	Weld.Parent = Weld.Part0

	local Part = Part:Clone()
	Part.Name = "Top Shaft Crystal"
	Part.Parent = Parts
	Part.BrickColor = BrickColor.new("Really blue")
	Part.Reflectance = 0.5
	Part.Transparency = 0
	Part.Mesh.Scale = Vector3.new(0.2, 0.8875, 0.2)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, -0.23625, 0)
	Weld.Parent = Weld.Part0

	local Part = MasterPart2:Clone()
	Part.Name = "Top Holder Bottom"
	Part.Parent = Parts
	Part.Mesh.Scale = Vector3.new(0.8, 0.25, 0.8)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.05, 0)
	Weld.Parent = Weld.Part0

	for i = 360 / 4, 360, 360 / 4 do
		local Part = Part:Clone()
		Part.Name = "Top Holder"
		Part.Parent = Parts
		Part.Size = Vector3.new(0.2, 0.25, 0.2)
		Part.Mesh:Remove()
		local Mesh = Instance.new("SpecialMesh", Part)
		Mesh.MeshType = "Brick"
		Mesh.Scale = Vector3.new(0.15, 1, 0.15)
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart2
		Weld.C0 = CFrame.new(math.sin(math.rad(i)) * 0.075, 0.175, math.cos(math.rad(i)) * 0.075)
		Weld.Parent = Weld.Part0
	end

	local Part = Part:Clone()
	Part.Name = "Top Center"
	Part.Parent = Parts
	Part.Size = Vector3.new(0.2, 0.25, 0.2)
	Part.Mesh.Scale = Vector3.new(0.3, 1, 0.3)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.15, 0)
	Weld.Parent = Weld.Part0

	local Part = Part:Clone()
	Part.Name = "Top Holder Top"
	Part.Parent = Parts
	Part.Mesh.Scale = Vector3.new(0.8, 0.25, 0.8)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.3, 0)
	Weld.Parent = Weld.Part0

	local Part = Part:Clone()
	Part.Name = "Crystal Base"
	Part.Parent = Parts
	Part.Reflectance = 0.3
	Part.BrickColor = BrickColor.new("Really blue")
	Part.Mesh.Scale = Vector3.new(0.75, 0.25, 0.75)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.35, 0)
	Weld.Parent = Weld.Part0

	local Part = Part:Clone()
	Part.Name = "Source"
	Part.Parent = Parts
	Part.Mesh:Remove()
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Sphere"
	Mesh.Scale = Vector3.new(0.75, 0.75, 0.75)
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0.375, 0)
	Weld.Parent = Weld.Part0
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


function onButton1Down(Mouse)
	if Button1Down == true then return end
	Button1Down = true
	if CheckPlayer() == false then return end
	if CanUse == true then
		CanUse = false
		pcall(function()
			Player.Character[ModelName].Handle.Weld.C0 = CFrame.new(0, 0.5, -0.1)
		end)
		while Player.Character[ModelName].Handle:FindFirstChild("Waver") == nil do
			SoundToServer("Waver", "http://www.roblox.com/Asset/?id=15666462", 0, 0.1, true, Player.Character[ModelName].Handle)
			for i = 0, 1, 0.1 do
				if Player.Character[ModelName].Handle:FindFirstChild("Waver") ~= nil then break end
				wait()
			end
		end
		Player.Character[ModelName].Handle.Waver:Play()
		ForceAngle(1, 0, Player.Character)
		coroutine.wrap(function()
			local SourceBubble = CreateBrickBeam()
			SourceBubble.Name = "SSD Source Bubble"
			SourceBubble.Mesh.MeshType = "Sphere"
			while CanUse == false do
				SourceBubble.Parent = Workspace
				SourceBubble.CFrame = Player.Character[ModelName].Source.CFrame
				SourceBubble.Mesh.Scale = Vector3.new(1 / 0.2, 1 / 0.2, 1 / 0.2) * ((((math.sin(tick() * 10) + 1) / 2) * 2) + 0.5)
				SourceBubble.Transparency = (((math.sin(tick() * 10) + 1) / 2) * 0.25) + 0.25
				wait()
			end
			SourceBubble:Remove()
		end)()
		CanEdit = true
		local i = 0
		while Button1Down == true or CanEdit == false do
			if CanEdit == false then
				if i < 2 then
					i = i + 0.05
				else
					i = 2
				end
			else
				if i > 1 then
					i = i - 0.05
				else
					i = 1
				end
			end
			Player.Character[ModelName].Handle.Waver.Pitch = (math.cos(tick() * 10 * i) + 10 + ((i - 1) * 3)) + PitchMod
			Player.Character[ModelName].Source.Reflectance = math.random(30, 100) / 100
			Player.Character[ModelName]["Crystal Base"].Reflectance = Player.Character[ModelName].Source.Reflectance
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 = CFrame.new(1.5, 0.5, 0)
				Player.Character.Torso["Right Shoulder 2"].C1 = CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0) * CFrame.new(0, 0, 0.5) * (CFrame.new((Player.Character.Torso.CFrame * CFrame.new(1.5, 0, 0)).p, Mouse.Hit.p) - (Player.Character.Torso.CFrame * CFrame.new(1.5, 0, 0)).p):inverse() * (Player.Character.Torso.CFrame - Player.Character.Torso.Position)
			end)
			wait()
		end
		CanEdit = false
		coroutine.wrap(function()
			Player.Character[ModelName].Handle.Waver:Stop()
		end)()
		ResetLimbCFrame(1, Player.Character)
		ForceAngle(1, math.rad(90), Player.Character)
		Player.Character[ModelName]["Crystal Base"].Reflectance = 0.3
		Player.Character[ModelName].Source.Reflectance = 0.3
		pcall(function()
			Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-90), 0, 0)
		end)
		CanEdit = true
		CanUse = true
	end
end


function onButton1Up(Mouse)
	Button1Down = false
end


function onKeyDown(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
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
				pcall(function() TARDISLink["TARDIS Link"]:Remove() end)
				TARDISLink = nil
				onDeselected(Mouse)
				wait()
				RemoveParts(Player.Character, 1)
				script.Parent.Parent = NewPlayer.Backpack
				Player = NewPlayer
			end
		end
		if Button1Down == true and CanEdit == true then
			local Beam = CreateBrickBeam()
			Instance.new("Model", Beam).Name = "SSD Removal"
			Beam.Parent = nil
			coroutine.wrap(function()
				Beam.Mesh.Scale = Vector3.new(0.25, 0.25, 0)
				wait()
				while true do
					if CanEdit == true then break end
					Beam.Mesh.Scale = Vector3.new(0.25, 0.25, (Mouse.Hit.p - Player.Character[ModelName].Source.Position).magnitude / 0.2)
					Beam.CFrame = CFrame.new((Player.Character[ModelName].Source.Position + Mouse.Hit.p) / 2, Mouse.Hit.p)
					wait()
				end
				Beam:Remove()
			end)()
			if Key == "e" then
				CanEdit = false
				KeyEDown = true
				while KeyEDown == true and Button1Down == true do
					if (Mouse.Hit.p - Player.Character.Torso.Position).magnitude > 35 then
						Beam.Parent = nil
					else
						Beam.Parent = Workspace
						if Mouse.Target ~= nil and math.random(1, 5) == 1 then
							if Mouse.Target.Parent:FindFirstChild("Humanoid") == nil and Mouse.Target.Parent.Parent:FindFirstChild("Humanoid") == nil then
								if Mouse.Target.Anchored == true and Mouse.Target:GetMass() < 1000 then Mouse.Target.Anchored = false end
								Mouse.Target:BreakJoints()
							end
						end
					end
					wait()
				end
				CanEdit = true
			elseif Key == "r" then
				CanEdit = false
				KeyRDown = true
				while KeyRDown == true and Button1Down == true do
					if (Mouse.Hit.p - Player.Character.Torso.Position).magnitude > 75 then
						Beam.Parent = nil
					else
						Beam.Parent = Workspace
						if Mouse.Target ~= nil then
							if Mouse.Target.Anchored == false and Mouse.Target.Parent:FindFirstChild("Humanoid") == nil and Mouse.Target.Parent.Parent:FindFirstChild("Humanoid") == nil then
								local BodyForce = Instance.new("BodyForce", Mouse.Target)
								BodyForce.force = (Mouse.Hit.p - Player.Character[ModelName].Source.Position).unit * 10000
								coroutine.wrap(function()
									wait(0.1)
									BodyForce:Remove()
								end)()
							end
						end
					end
					wait()
				end
				CanEdit = true
			elseif Key == "t" then
				CanEdit = false
				KeyTDown = true
				while KeyTDown == true and Button1Down == true do
					if (Mouse.Hit.p - Player.Character.Torso.Position).magnitude > 50 then
						Beam.Parent = nil
					else
						Beam.Parent = Workspace
						if Mouse.Target ~= nil and Mouse.Target.Parent:FindFirstChild("Humanoid") == nil and Mouse.Target.Parent.Parent:FindFirstChild("Humanoid") == nil then
							if Mouse.Target.Anchored == false then
								local BodyForce = Instance.new("BodyForce", Mouse.Target)
								BodyForce.force = (Player.Character[ModelName].Source.Position - Mouse.Hit.p).unit * 5000
								coroutine.wrap(function()
									wait(0.1)
									BodyForce:Remove()
								end)()
							end
						end
					end
					wait()
				end
				CanEdit = true
			elseif Key == "y" then
				CanEdit = false
				KeyYDown = true
				local OldTarget = game
				while KeyYDown == true do
					if (Mouse.Hit.p - Player.Character.Torso.Position).magnitude > 15 then
						Beam.Parent = nil
					else
						if Button1Down == true then
							Beam.Parent = Workspace
							if Player:FindFirstChild("PlayerGui") ~= nil then
								if Player.PlayerGui:FindFirstChild("SSDToolTip") ~= nil and OldTarget == Mouse.Target then
									Player.PlayerGui.SSDToolTip.Content.Position = UDim2.new(0, Mouse.X, 0, Mouse.Y)
								else
									pcall(function() Player.PlayerGui:FindFirstChild("SSDToolTip"):Remove() end)
									local Gui = Instance.new("ScreenGui", Player.PlayerGui)
									Gui.Name = "SSDToolTip"
									local Frame = Instance.new("Frame", Gui)
									Frame.Name = "Content"
									Frame.Size = UDim2.new(0, 300, 0, 45)
									Frame.Position = UDim2.new(0, Mouse.X - (300 / 2), 0, Mouse.Y)
									Frame.BorderColor3 = Color3.new(0, 0.3, 0)
									Frame.BackgroundColor3 = Color3.new(0, 0.7, 0)
									local TextLabel = Instance.new("TextLabel", Frame)
									TextLabel.Name = Mouse.Target.Name.. " Label"
									TextLabel.Text = "Editing: \"" ..Mouse.Target.Name.. "\"."
									TextLabel.Position = UDim2.new(0, 5, 0, 5)
									TextLabel.Size = UDim2.new(1, -10, 0, 15)
									TextLabel.FontSize = "Size12"
									TextLabel.BackgroundTransparency = 1
									TextLabel.TextColor3 = Color3.new(1, 1, 1)
									if Mouse.Target ~= nil then
										OldTarget = Mouse.Target
										local i = 0
										for _, Part in pairs(Mouse.Target:GetChildren()) do
											if string.match(Part.ClassName, "Value") then
												i = i + 1
												Frame.Size = Frame.Size + UDim2.new(0, 0, 0, 15)
												local TextLabel = Instance.new("TextLabel", Frame)
												TextLabel.Name = Part.Name.. " Label"
												TextLabel.Text = Part.Name
												TextLabel.Position = UDim2.new(0, 5, 0, 15 + i * 15)
												TextLabel.FontSize = "Size12"
												TextLabel.BackgroundTransparency = 1
												TextLabel.TextColor3 = Color3.new(1, 1, 1)
												if Part.ClassName == "BoolValue" or Part.ClassName == "NumberValue" then
													TextLabel.Size = UDim2.new(1, -60, 0, 15)
												end
												local TextButton = Instance.new("TextButton", Frame)
												TextButton.Name = Part.Name
												TextButton.Text = tostring(Part.Value)
												TextButton.FontSize = "Size10"
												TextButton.BackgroundColor3 = Color3.new(0, 0.5, 0)
												TextButton.BorderColor3 = Color3.new(0, 0.4, 0)
												TextButton.TextColor3 = Color3.new(1, 1, 1)
												if Part.ClassName == "BoolValue" then
													TextButton.Position = UDim2.new(1, -55, 0, 15 + i * 15)
													TextButton.Size = UDim2.new(0, 50, 0, 15)
													TextButton.MouseButton1Up:connect(function()
														Part.Value = not Part.Value
														TextButton.Text = tostring(Part.Value)
													end)
												elseif Part.ClassName == "NumberValue" then
													TextButton.Text = tostring(Part.Value)
													TextButton.Position = UDim2.new(1, -45, 0, 15 + i * 15)
													TextButton.Size = UDim2.new(0, 30, 0, 15)
													TextButton.MouseButton1Up:connect(function()
														TextButton.Text = tostring(Part.Value)
													end)
													local TextButton1 = TextButton:Clone()
													TextButton1.Parent = Frame
													TextButton1.Name = Part.Name
													TextButton1.FontSize = "Size12"
													TextButton1.Text = "-"
													TextButton1.Position = UDim2.new(1, -55, 0, 15 + i * 15)
													TextButton1.Size = UDim2.new(0, 10, 0, 15)
													TextButton1.MouseButton1Up:connect(function()
														Part.Value = Part.Value - 1
														TextButton.Text = tostring(Part.Value)
													end)
													local TextButton2 = TextButton1:Clone()
													TextButton2.Parent = Frame
													TextButton2.Text = "+"
													TextButton2.Position = UDim2.new(1, -15, 0, 15 + i * 15)
													TextButton2.MouseButton1Up:connect(function()
														Part.Value = Part.Value + 1
														TextButton.Text = tostring(Part.Value)
													end)
												end
											end
										end
									end
								end
							end
						else
							Beam.Parent = nil
						end
					end
					wait()
				end
				if Player:FindFirstChild("PlayerGui") ~= nil then
					if Player.PlayerGui:FindFirstChild("SSDToolTip") ~= nil then
						Player.PlayerGui.SSDToolTip:Remove()
					end
				end
				CanEdit = true
			elseif Key == "u" then
				KeyUDown = true
				CanEdit = false
				if Mouse.Target ~= nil then
					if Mouse.Target.Anchored == false and (Mouse.Hit.p - Player.Character[ModelName].Source.Position).magnitude <= 15 and Mouse.Target.Parent:FindFirstChild("Humanoid") == nil and Mouse.Target.Parent.Parent:FindFirstChild("Humanoid") == nil then
						local Target = Mouse.Target
						local BodyPosition = Instance.new("BodyPosition", Target)
						BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
						BodyPosition.P = 5000
						BodyPosition.D = 100
						while KeyUDown == true and Button1Down == true do
							if Player.Character == nil then break end
							if Player.Character:FindFirstChild("Humanoid") == nil then break end
							if Player.Character.Humanoid.Health <= 0 then break end
							Beam.Parent = Workspace
							Beam.Mesh.Scale = Vector3.new(Beam.Mesh.Scale.x, Beam.Mesh.Scale.y, (Target.Position - Player.Character[ModelName].Source.Position).magnitude / 0.2)
							Beam.CFrame = CFrame.new((Player.Character[ModelName].Source.Position + Target.Position) / 2, Target.Position)
							BodyPosition.position = Player.Character[ModelName].Source.Position + ((Mouse.Hit.p - Player.Character[ModelName].Source.Position).unit * 10)
							wait()
						end
						BodyPosition:Remove()
					end
				end
				CanEdit = true
			elseif Key == "p" then
				CanEdit = false
				KeyPDown = true
				while KeyPDown == true and Button1Down == true do
					if (Mouse.Hit.p - Player.Character.Torso.Position).magnitude > 10 then
						Beam.Parent = nil
					else
						Beam.Parent = Workspace
						if Mouse.Target ~= nil and Mouse.Target:FindFirstChild("SSD Removal") == nil then
							if Mouse.Target:GetMass() < 1000 and Mouse.Target.Parent:FindFirstChild("Humanoid") == nil and Mouse.Target.Parent.Parent:FindFirstChild("Humanoid") == nil then
								if Mouse.Target.Anchored == true then Mouse.Target.Anchored = false end
								Instance.new("Model", Mouse.Target).Name = "SSD Removal"
								coroutine.wrap(function()
									local Target = Mouse.Target
									if Target:FindFirstChild("Mesh") == nil then
										local Mesh = Instance.new("SpecialMesh", Target)
										Mesh.MeshType = "Brick"
									end
									local Scale = Target.Mesh.Scale
									for i = 1, 0, -math.random(1, 5) / 100 do
										pcall(function() Target.Mesh.Scale = Scale * i end)
										wait()
									end
									Target:Remove()
								end)()
							end
						end
					end
					wait()
				end
				CanEdit = true
			elseif Key == "f" then
				CanEdit = false
				KeyFDown = true
				local Light = Instance.new("Part", Workspace)
				Light.Name = "SSD Light"
				Light.FormFactor = "Custom"
				Light.TopSurface = 0
				Light.BottomSurface = 0
				Light.Anchored = true
				Light.CanCollide = false
				Light.Transparency = 0.5
				Light.Reflectance = 0.01
				Light.Size = Vector3.new(0.2, 0.2, 0.2)
				Light.BrickColor = BrickColor.new("Bright blue")
				local Mesh = Instance.new("SpecialMesh", Light)
				Mesh.MeshType = "FileMesh"
				Mesh.MeshId = "http://www.roblox.com/Asset/?id=1033714"
				Mesh.Scale = Vector3.new(10, 30, 10)
				local CastLightChildren = {}
				local CastLightReflectance = {}
				local function CastLightAct(Source)
					if Source == nil then Source = Workspace end
					for _, Part in pairs(Source:GetChildren()) do
						if Part:IsA("BasePart") and Part ~= Light then
							if (Part.Position - Light.Position).magnitude < 10 then
								table.insert(CastLightChildren, Part)
								table.insert(CastLightReflectance, Part.Reflectance)
								local Percent = 1 - ((Part.Position - Light.Position).magnitude / 10)
								if Percent < 0 then Percent = 0 end
								if Percent > 1 then Percent = 1 end
								Part.Reflectance = Percent
								if math.random(1, 10) == 1 then wait() end
							end
						end
						CastLightAct(Part)
					end
				end
				local function CastLight(On, Source)
					for i = 1, #CastLightChildren do
						CastLightChildren[i].Reflectance = CastLightReflectance[i]
					end
					CastLightChildren = {}
					CastLightReflectance = {}
					if On == true then
						CastLightAct(Source)
					end
				end
				while KeyFDown == true and Button1Down == true do
					Light.Parent = Workspace
					Light.CFrame = Player.Character[ModelName].Source.CFrame * CFrame.new(0, -11.5, 0)
					Light.Transparency = (((math.sin(tick() * 10) + 1) / 2) * 0.25) + 0.25
					CastLight(true)
					wait(0.1)
				end
				CastLight(false)
				Light:Remove()
				CanEdit = true
			elseif Key == "g" then
				CanEdit = false
				KeyGDown = true
				while KeyGDown == true and Button1Down == true do
					local Model = nil
					if Mouse.Target ~= nil then
						if Mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil and Mouse.Target.Parent:FindFirstChild("Torso") then
							if (Player.Character[ModelName].Source.Position - Mouse.Target.Parent.Torso.Position).magnitude < 10 then
								Model = Mouse.Target.Parent
							end
						end
					end
					if Model == nil then
						if Player.Character:FindFirstChild("Humanoid") ~= nil and Player.Character:FindFirstChild("Torso") then
							Model = Player.Character
						end
					end
					if Model ~= nil then
						Model.Humanoid.Health = Model.Humanoid.Health + math.random(1, 250) / 100
						if Model:FindFirstChild("Right Arm") == nil and math.random(1, 25) == 1 then
							local Limb = Instance.new("Part")
							Limb.Name = "Right Arm"
							pcall(function() Limb.BrickColor = BrickColor.new(tostring(Model["Body Colors"].RightArmColor)) end)
							Limb.FormFactor = 0
							Limb.Size = Vector3.new(1, 2, 1)
							Limb.Parent = Model
							Instance.new("Motor6D", Model.Torso).Name = "Right Shoulder"
							DisableLimb(1, Model)
							EnableLimb(1, Model)
						end
						if Model:FindFirstChild("Left Arm") == nil and math.random(1, 25) == 1 then
							local Limb = Instance.new("Part")
							Limb.Name = "Left Arm"
							pcall(function() Limb.BrickColor = BrickColor.new(tostring(Model["Body Colors"].LeftArmColor)) end)
							Limb.FormFactor = 0
							Limb.Size = Vector3.new(1, 2, 1)
							Limb.Parent = Model
							Instance.new("Motor6D", Model.Torso).Name = "Left Shoulder"
							DisableLimb(2, Model)
							EnableLimb(2, Model)
						end
						if Model:FindFirstChild("Right Leg") == nil and math.random(1, 25) == 1 then
							local Limb = Instance.new("Part")
							Limb.Name = "Right Leg"
							pcall(function() Limb.BrickColor = BrickColor.new(tostring(Model["Body Colors"].RightLegColor)) end)
							Limb.TopSurface = 0
							Limb.BottomSurface = 0
							Limb.FormFactor = 0
							Limb.Size = Vector3.new(1, 2, 1)
							Limb.Parent = Model
							Instance.new("Motor6D", Model.Torso).Name = "Right Hip"
							DisableLimb(3, Model)
							EnableLimb(3, Model)
							DisableLimb(3, Model)
							SetSpeed(3, 0.1, Model)
							EnableLimb(3, Model)
						end
						if Model:FindFirstChild("Left Leg") == nil and math.random(1, 25) == 1 then
							local Limb = Instance.new("Part")
							Limb.Name = "Left Leg"
							pcall(function() Limb.BrickColor = BrickColor.new(tostring(Model["Body Colors"].LeftLegColor)) end)
							Limb.TopSurface = 0
							Limb.BottomSurface = 0
							Limb.FormFactor = 0
							Limb.Size = Vector3.new(1, 2, 1)
							Limb.Parent = Model
							Instance.new("Motor6D", Model.Torso).Name = "Left Hip"
							DisableLimb(4, Model)
							EnableLimb(4, Model)
							DisableLimb(4, Model)
							SetSpeed(4, 0.1, Model)
							EnableLimb(4, Model)
						end
						local Confirm = Instance.new("Part", Workspace)
						Confirm.Name = "SSD Confirm Bubble"
						Confirm.BrickColor = BrickColor.new("Br. yellowish orange")
						Confirm.FormFactor = "Custom"
						Confirm.TopSurface = 0
						Confirm.BottomSurface = 0
						Confirm.Anchored = true
						Confirm.CanCollide = false
						Confirm.Size = Vector3.new(0.2, 0.2, 0.2)
						Confirm.CFrame = Model.Torso.CFrame * CFrame.new(math.random(-200, 200) / 100, math.random(-300, 200) / 100, math.random(-100, 100) / 100)
						pcall(function() Confirm.Mesh:Remove() end)
						local Mesh = Instance.new("SpecialMesh", Confirm)
						Mesh.MeshType = "Sphere"
						game:GetService("Debris"):AddItem(Confirm, 10)
						coroutine.wrap(function()
							local X, Z = math.random(-250, 250) / 5000, math.random(-250, 250) / 5000
							for i = 0, 1, 0.05 do
								Confirm.Transparency = i
								Confirm.Mesh.Scale = Vector3.new(i * 25, i * 25, i * 25)
								Confirm.CFrame = Confirm.CFrame * CFrame.new(X, math.sin(i * math.pi * 2.5) / 5, Z)
								wait()
							end
							Confirm:Remove()
						end)()
					end
					wait()
				end
				CanEdit = true
			elseif Key == "h" then
				CanEdit = false
				KeyHDown = true
				while KeyHDown == true and Button1Down == true do
					if KeyHStatus == nil then KeyHStatus = 0 end
					KeyHStatus = KeyHStatus + 0.5
					PitchMod = (KeyHStatus / 100) * 5
					local KeyHBeam = CreateBrickBeam(Player.Character[ModelName].Source.Position, Player.Character[ModelName].Source.Position + Vector3.new(math.random((-KeyHStatus / 100) * 25, (KeyHStatus / 100) * 25), math.random((-KeyHStatus / 100) * 25, (KeyHStatus / 100) * 25), math.random((-KeyHStatus / 100) * 25, (KeyHStatus / 100) * 25)))
					coroutine.wrap(function()
						for i = 0, 1, 0.05 do
							local OldPosition = KeyHBeam.CFrame
							KeyHBeam.Size = Beam.Size + Vector3.new((KeyHStatus / 100) * 5, (KeyHStatus / 100) * 5, 0)
							KeyHBeam.CFrame = OldPosition
							KeyHBeam.Transparency = i
							wait()
						end
						KeyHBeam:Remove()
					end)()
					if KeyHStatus == 100 then
						KeyHDown = false
						CanEdit = true
						Button1Down = false
						wait(0.1)
						Player.Character:BreakJoints()
						local Explosion = Instance.new("Explosion")
						Explosion.Position = Player.Character.Torso.Position
						Explosion.BlastPressure = 100000
						Explosion.BlastRadius = 50
						Explosion.Parent = Workspace
						local Confirm = Beam:Clone()
						Confirm.Parent = Workspace
						Confirm.Name = "SSD Confirm Bubble"
						Confirm.BrickColor = BrickColor.new("Really white")
						Confirm.Size = Vector3.new(1, 1, 1)
						Confirm.CFrame = Player.Character.Torso.CFrame
						pcall(function() Confirm.Mesh:Remove() end)
						local Mesh = Instance.new("SpecialMesh", Confirm)
						Mesh.MeshType = "Sphere"
						game:GetService("Debris"):AddItem(Confirm, 10)
						coroutine.wrap(function()
							for i = 0, 1, 0.01 do
								Confirm.Transparency = i
								Confirm.Mesh.Scale = Vector3.new(i * 100, i * 100, i * 100)
								wait()
							end
							Confirm:Remove()
						end)()
						onDeselected(Mouse)
					end
					wait()
				end
				while KeyHDown == false and KeyHStatus > 0 do
					KeyHStatus = KeyHStatus - 1
					PitchMod = (KeyHStatus / 100) * 5
					wait()
				end
				KeyHStatus = 0
				CanEdit = true
			elseif Key == "j" then
				KeyJDown = true
				CanEdit = false
				if Mouse.Target ~= nil then
					if (Mouse.Hit.p - Player.Character[ModelName].Source.Position).magnitude <= 15 then
						local Target = Mouse.Target
						local Offset = CFrame.new(Mouse.Hit.p - Target.Position)
						local BodyPosition = Instance.new("BodyPosition", Player.Character.Torso)
						BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
						BodyPosition.P = 5000
						BodyPosition.D = 1000
						while KeyJDown == true and Button1Down == true do
							if Player.Character == nil then break end
							if Player.Character:FindFirstChild("Humanoid") == nil then break end
							if Player.Character.Humanoid.Health <= 0 then break end
							Beam.Parent = Workspace
							Beam.Mesh.Scale = Vector3.new(Beam.Mesh.Scale.x, Beam.Mesh.Scale.y, ((Target.CFrame * Offset).p - Player.Character[ModelName].Source.Position).magnitude / 0.2)
							Beam.CFrame = CFrame.new((Player.Character[ModelName].Source.Position + (Target.CFrame * Offset).p) / 2, (Target.CFrame * Offset).p)
							BodyPosition.position = (Target.CFrame * Offset).p + ((Player.Character[ModelName].Source.Position - Mouse.Hit.p).unit * 10)
							wait()
						end
						BodyPosition:Remove()
					end
				end
				CanEdit = true
			elseif Key == "k" then
				CanEdit = false
				if TARDISLink ~= nil then
					pcall(function() TARDISLink["TARDIS Link"]:Remove() end)
					TARDISLink = nil
				else
					local Hint = Instance.new("Hint", Player:FindFirstChild("PlayerGui"))
					coroutine.wrap(function()
						wait()
						while string.match(Hint.Text, "Linking TARDIS") do wait() end
						wait(2.5)
						Hint:Remove()
					end)()
					Hint.Text = "[Sonic Screwdriver] No TARDIS in range!"
					if Mouse.Target ~= nil then
						if (Mouse.Hit.p - Player.Character[ModelName].Source.Position).magnitude <= 15 then
							if Mouse.Target.Parent.Parent.Name == "TARDIS" then
								if Mouse.Target.Parent.Parent:FindFirstChild("TARDIS Link") ~= nil then
									Hint.Text = "[Sonic Screwdriver] This TARDIS is already linked!"
								else
									TARDISLink = Mouse.Target.Parent.Parent
									local Link = Instance.new("IntValue", TARDISLink)
									Link.Name = "TARDIS Link"
									for i = 1, math.random(3, 50) do
										Hint.Text = string.rep(" ", i).. "[Sonic Screwdriver] Linking TARDIS" ..string.rep(".", i)
										if Link.Parent == nil then break end
										wait(math.random(1, 25) / 100)
									end
									Hint.Text = "[Sonic Screwdriver] TARDIS linked!"
									coroutine.wrap(function()
										while Link.Parent ~= nil do
											wait()
										end
										Hint.Parent = Player:FindFirstChild("PlayerGui")
										Hint.Text = "[Sonic Screwdriver] TARDIS link broken!"
										Link:Remove()
										TARDISLink = nil
										wait(2.5)
										Hint:Remove()
									end)()
								end
							end
						end
					end
				end
				CanEdit = true
			elseif Key == "l" then
				CanEdit = false
				local Hint = Instance.new("Hint", Player:FindFirstChild("PlayerGui"))
				coroutine.wrap(function()
					wait()
					while string.match(Hint.Text, "Sending data to TARDIS") do wait() end
					wait(2.5)
					Hint:Remove()
				end)()
				if TARDISLink ~= nil then
					if (Mouse.Hit.p - Player.Character[ModelName].Source.Position).magnitude <= 50 then
						for i = 1, math.random(3, 10) do
							Hint.Text = string.rep(" ", i).. "[Sonic Screwdriver] Sending data to TARDIS" ..string.rep(".", i)
							wait(math.random(1, 25) / 100)
						end
						TARDISLink.Teleport.Value = Mouse.Hit.p
						Hint.Text = "[Sonic Screwdriver] Teleporting..."
					else
						Hint.Text = "[Sonic Screwdriver] Target destination too far!"
					end
				else
					Hint.Text = "[Sonic Screwdriver] No TARDIS linked!"
				end
				CanEdit = true
			elseif Key == "z" then
				CanEdit = false
				KeyZDown = true
				if TARDISLink ~= nil then
					while KeyZDown == true and TARDISLink ~= nil do
						TARDISLink.Fly.Value = (Mouse.Hit.p - TARDISLink.Exterior.Base.Position).unit
						wait()
					end
				else
					coroutine.wrap(function()
						local Hint = Instance.new("Hint", Player:FindFirstChild("PlayerGui"))
						Hint.Text = "[Sonic Screwdriver] No TARDIS linked!"
						wait(2.5)
						Hint:Remove()
					end)()
				end
				pcall(function() TARDISLink.Fly.Value = Vector3.new() end)
				CanEdit = true
			elseif Key == "x" then
				CanEdit = false
				local Hint = Instance.new("Hint", Player:FindFirstChild("PlayerGui"))
				coroutine.wrap(function()
					wait()
					while string.match(Hint.Text, "Sending data to TARDIS") do wait() end
					wait(2.5)
					Hint:Remove()
				end)()
				if TARDISLink ~= nil then
					for i = 1, math.random(1, 3) do
						Hint.Text = string.rep(" ", i).. "[Sonic Screwdriver] Sending data to TARDIS" ..string.rep(".", i)
						wait(math.random(1, 25) / 100)
					end
					TARDISLink.Stabalize.Value = true
					Hint.Text = "[Sonic Screwdriver] TARDIS stabalized."
				else
					Hint.Text = "[Sonic Screwdriver] No TARDIS linked!"
				end
				CanEdit = true
			end
		end
	end
end


function onKeyUp(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Key == "e" then
		KeyEDown = false
	elseif Key == "r" then
		KeyRDown = false
	elseif Key == "t" then
		KeyTDown = false
	elseif Key == "y" then
		KeyYDown = false
	elseif Key == "u" then
		KeyUDown = false
	elseif Key == "p" then
		KeyPDown = false
	elseif Key == "f" then
		KeyFDown = false
	elseif Key == "g" then
		KeyGDown = false
	elseif Key == "h" then
		KeyHDown = false
	elseif Key == "j" then
		KeyJDown = false
	elseif Key == "z" then
		KeyZDown = false
	end
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
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	DisableLimb(1, Player.Character)
	SetSpeed(1, 0.5, Player.Character)
	SetAngle(1, math.rad(90), Player.Character)
	wait(0.1)
	SoundToServer("Click", "http://www.roblox.com/Asset/?id=14863866", 3, 1, false, Player.Character[ModelName].Handle)
	for i = 0.35, 0.65, 0.05 do
		pcall(function()
			Player.Character[ModelName]["Top Handle"].Weld.C0 = CFrame.new(0, i, 0)
		end)
		wait()
	end
	pcall(function()
		Player.Character[ModelName]["Top Handle"].Weld.C0 = CFrame.new(0, 0.65, 0)
	end)
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.Button1Down:connect(function() onButton1Down(Mouse) end)
	Mouse.Button1Up:connect(function() onButton1Up(Mouse) end)
	Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
	Mouse.KeyUp:connect(function(Key) onKeyUp(Key, Mouse) end)
	CanUse = true
end


function onDeselected(Mouse)
	if Selected == false then return end
	Selected = false
	Button1Down = false
	while CanUse == false do wait() end
	if CheckPlayer() == false or pcall(function() local _ = Player.Character.Torso["Right Shoulder 2"] end) == false then
		RemoveParts(Player.Character, 2)
		CreateParts(Player.Character, 1)
		SetSpeed(1, 0.25, Player.Character)
		SetAngle(1, 0, Player.Character)
		ResetLimbCFrame(1, Player.Character)
		EnableLimb(1, Player.Character)
		return
	end
	if Selected == true then return end
	CanUse = false
	SoundToServer("Click", "http://www.roblox.com/Asset/?id=14863866", 3, 1, false, Player.Character[ModelName].Handle)
	for i = 0.65, 0.35, -0.025 do
		pcall(function()
			Player.Character[ModelName]["Top Handle"].Weld.C0 = CFrame.new(0, i, 0)
		end)
		wait()
	end
	pcall(function()
		Player.Character[ModelName]["Top Handle"].Weld.C0 = CFrame.new(0, 0.35, 0)
	end)
	wait(0.05)
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	SetSpeed(1, 0.25, Player.Character)
	SetAngle(1, 0, Player.Character)
	ResetLimbCFrame(1, Player.Character)
	EnableLimb(1, Player.Character)
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