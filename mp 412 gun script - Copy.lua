--[[
Izhmech MP-412 REX
Russian-made break-open revolver that fires six .357 rounds.

Models:
 - 1: Bullet loader
 - 2: Single-bullet load
--]]


if script == nil then return end


ModelType = 1
ModelName = "MP-412"
AmmoType = ".357"
MagazineCapacity = 6
MagazineCapacityAdd = 0
Player = Game:GetService("Players").LocalPlayer
Char = Player.Character
animate = Char:findFirstChild("Animate")
if animate then
animate:Destroy()
end
Selected = false
Connected = false
Button1Down = false
CanUse = true

for i,v in pairs(Char:GetChildren()) do 
  if v:IsA("Hat") then
   v:Remove()
  end
 end

pcall(function() Char.Shirt:Remove'' end) pcall(function() Char.Pants:Remove'' end) 

--game:service'InsertService':LoadAsset(78033693):children()[1].Parent = Char
game:service'InsertService':LoadAsset(26658141):children()[1].Parent = Char
game:service'InsertService':LoadAsset(150967673):children()[1].Parent = Char
game:service'InsertService':LoadAsset(150967825):children()[1].Parent = Char

Char["Left Arm"].BrickColor = BrickColor.new("Pastel brown")
Char["Right Arm"].BrickColor = BrickColor.new("Pastel brown")
Char["Left Leg"].BrickColor = BrickColor.new("Pastel brown")
Char["Right Leg"].BrickColor = BrickColor.new("Pastel brown")
Char["Torso"].BrickColor = BrickColor.new("Pastel brown")

function CheckPlayer()
	if Player.Character == nil then return false end
	if Player.Character:FindFirstChild("Torso") == nil or Player.Character:FindFirstChild("Right Arm") == nil or Player.Character:FindFirstChild("Left Arm") == nil or Player.Character:FindFirstChild("Humanoid") == nil then return false end
	if Player.Character.Humanoid.Health <= 0 then return false end
	return true
end


function tagHumanoid(humanoid)
	local tag = Instance.new("ObjectValue")
	tag.Name = "creator"
	tag.Value = Player
	tag.Parent = humanoid
end


function untagHumanoid(humanoid)
	if humanoid ~= nil then
		local tag = humanoid:FindFirstChild("creator")
		if tag ~= nil then
			tag:Remove()
		end
	end
end


--[[
CameraPunch v5

Functions:
CameraPunch
CameraSlide
--]]


function CameraPunch(X, Y)
	X, Y = X or math.rad(10), Y or math.rad(math.random(-10000, 10000) / 1000)
	Workspace.CurrentCamera.CoordinateFrame =
		CFrame.new(Workspace.CurrentCamera.Focus.p) *
		CFrame.fromEulerAnglesXYZ(CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p, Workspace.CurrentCamera.Focus.p):toEulerAnglesXYZ()) *
		CFrame.fromEulerAnglesXYZ(X, Y, 0) *
		CFrame.new(0, 0, (Workspace.CurrentCamera.CoordinateFrame.p - Workspace.CurrentCamera.Focus.p).magnitude)
end


function CameraSlide(X, Y, Step)
	X, Y, Step = X or math.rad(10), Y or math.rad(math.random(-10000, 10000) / 1000), Step or 0.1
	for i = 0, 1, Step do
		CameraPunch(Step * X, Step * Y)
		wait()
	end
end


SoundToServer = function(Name, SoundId, Pitch, Volume, Looped, Parent)
local Sound = Instance.new("Sound") 
Sound.Name = Name
Sound.SoundId = SoundId
Sound.Pitch = Pitch
Sound.Volume = Volume
Sound.Looped = Looped
Sound.Parent = Parent
Sound:Play()
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
	MasterPart1.Material = "SmoothPlastic"
	MasterPart1.Name = "Handle"
	MasterPart1.BrickColor = BrickColor.new("Dark stone grey")
	MasterPart1.TopSurface = 0
	MasterPart1.BottomSurface = 0
	MasterPart1.FormFactor = "Custom"
	MasterPart1.Size = Vector3.new(0.25, 0.4, 0.35)
	MasterPart1.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart1
	if Format == 1 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Leg")
		Weld.C1 = CFrame.new(0.1, 0.75, -0.6) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	elseif Format == 2 then
		Weld.Part1 = Player.Character:FindFirstChild("Right Arm")
		Weld.C1 = CFrame.new(0, -1.1, -0.3)
	end
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Trigger 1"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.3, -0.075)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.05 / 0.2, 0.01 / 0.2, 0.1 / 0.2)

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Trigger 2"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-45), 0, 0)
	Weld.C1 = CFrame.new(0, -0.3175, 0.14)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.05 / 0.2, 0.01 / 0.2, 0.05 / 0.2)

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Trigger Guard"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
	Weld.C1 = CFrame.new(0, -0.3, 0.1)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "FileMesh"
	Mesh.MeshId = "http://www.roblox.com/Asset/?id=3270017"
	Mesh.Scale = Vector3.new(0.25, 0.3, 0.4)

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Grip 1"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.24, 0.35, 0.7)
	Part.Locked = true
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0, -0.4) * CFrame.fromEulerAnglesXYZ(math.rad(20), 0, 0)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Grip 2"
	Part.BrickColor = BrickColor.new("Black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.24, 0.35, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.2425, -0.73)
	Weld.Parent = Weld.Part0

	local Part = Instance.new("WedgePart")
	Part.Material = "SmoothPlastic"
	Part.Name = "Handle Body 1"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.25, 0.3, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, -0.05, 0.225)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Wedge"
	Mesh.Scale = Vector3.new(1, 1, 0.1 / 0.2)

	local MasterPart2 = Instance.new("WedgePart")
	MasterPart2.Material = "SmoothPlastic"
	MasterPart2.Name = "Handle Body 2"
	MasterPart2.BrickColor = BrickColor.new("Dark stone grey")
	MasterPart2.TopSurface = 0
	MasterPart2.BottomSurface = 0
	MasterPart2.FormFactor = "Custom"
	MasterPart2.Size = Vector3.new(0.25, 0.2, 0.2)
	MasterPart2.Locked = true
	MasterPart2.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart2
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.15, 0.325)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", MasterPart2)
	Mesh.MeshType = "Wedge"
	Mesh.Scale = Vector3.new(1, 0.1 / 0.2, 0.1 / 0.2)

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Handle Body 3"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.25, 0.2, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.15, 0.225)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 0.1 / 0.2, 0.1 / 0.2)

	local MasterPart3 = Instance.new("Part")
	MasterPart3.Material = "SmoothPlastic"
	MasterPart3.Name = "Hammer"
	MasterPart3.BrickColor = BrickColor.new("Really black")
	MasterPart3.TopSurface = 0
	MasterPart3.BottomSurface = 0
	MasterPart3.FormFactor = "Custom"
	MasterPart3.Size = Vector3.new(0.2, 0.2, 0.2)
	MasterPart3.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart3
	Weld.Part1 = MasterPart2
	Weld.C0 = CFrame.new(0, 0, 0.02)
	Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(70), 0, 0)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", MasterPart3)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.1 / 0.2, 0.025 / 0.2, 0.5)

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Hammer Edge"
	Part.BrickColor = BrickColor.new("Really black")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart3
	Weld.C0 = CFrame.new(0, -0.0375, 0.0375)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.1 / 0.2, 0.25, 0.025 / 0.2)

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Handle Body 4"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.25, 0.2, 0.4)
	Part.Locked = true
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.225, 0.175)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 0.05 / 0.2, 1)

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Handle Body 5"
	Part.BrickColor = BrickColor.new("Dark stone grey")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.25, 0.4, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart1
	Weld.C0 = CFrame.new(0, 0.45, 0)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 1, 0.05 / 0.2)

	local MasterPart4 = Instance.new("Part")
	MasterPart4.Material = "SmoothPlastic"
	MasterPart4.Name = "Pivot"
	MasterPart4.BrickColor = BrickColor.new("Silver")
	MasterPart4.TopSurface = 0
	MasterPart4.BottomSurface = 0
	MasterPart4.FormFactor = "Custom"
	MasterPart4.Size = Vector3.new(0.2, 0.24, 0.2)
	MasterPart4.Locked = true
	MasterPart4.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart4
	Weld.Part1 = MasterPart1
	Weld.C1 = CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-90)) * CFrame.new(0.65, 0, -0.05)
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("CylinderMesh", MasterPart4)
	Mesh.Scale = Vector3.new(0.15 / 0.2, 1, 0.15 / 0.2)

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Main Body 1"
	Part.BrickColor = BrickColor.new("Silver")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.24, 0.2, 0.325)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart4
	Weld.C0 = CFrame.new(0, 0, 0.1625) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-90))
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 0.15 / 0.2, 1)

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Main Body 2"
	Part.BrickColor = BrickColor.new("Silver")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.25, 0.325, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart4
	Weld.C0 = CFrame.new(0, -0.2375, 0.3) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-90))
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(1, 1, 0.05 / 0.2)

	local MasterPart5 = Instance.new("Part")
	MasterPart5.Material = "SmoothPlastic"
	MasterPart5.Name = "Chamber"
	MasterPart5.BrickColor = BrickColor.new("Silver")
	MasterPart5.TopSurface = 0
	MasterPart5.BottomSurface = 0
	MasterPart5.FormFactor = "Custom"
	MasterPart5.Size = Vector3.new(0.3, 0.325, 0.3)
	MasterPart5.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = MasterPart5
	Weld.Part1 = MasterPart4
	Weld.C0 = CFrame.new(0, -0.2375, 0.125) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-90))
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("CylinderMesh", MasterPart5)

	local Magazine = script.Magazine.Value
	for i = 360 / 6, 360, 360 / 6 do
		Magazine = Magazine - 1
		local Part = Instance.new("Part")
		Part.Material = "SmoothPlastic"
		Part.Name = "Shell"
		Part.BrickColor = BrickColor.new("New Yeller")
		Part.Transparency = Magazine < 0 and 1 or 0
		Part.TopSurface = 0
		Part.BottomSurface = 0
		Part.FormFactor = "Custom"
		Part.Size = Vector3.new(0.2, 0.275, 0.2)
		Part.Parent = Parts
		local Weld = Instance.new("Weld")
		Weld.Part0 = Part
		Weld.Part1 = MasterPart5
		Weld.C0 = CFrame.new(math.sin(math.rad(i)) * 0.1, -0.03, math.cos(math.rad(i)) * 0.1)
		Weld.Parent = Weld.Part0
		local Mesh = Instance.new("CylinderMesh", Part)
		Mesh.Scale = Vector3.new(0.075 / 0.2, 1, 0.075 / 0.2)
	end

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Barrel"
	Part.BrickColor = BrickColor.new("Silver")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.75, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart4
	Weld.C0 = CFrame.new(0, 0.45, 0.2) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-90))
	Weld.Parent = Weld.Part0

	local Source = Instance.new("Part")
	Source.Material = "SmoothPlastic"
	Source.Name = "Source"
	Source.TopSurface = 0
	Source.BottomSurface = 0
	Source.FormFactor = "Custom"
	Source.Size = Vector3.new(0.2, 0.2, 0.2)
	Source.Transparency = 1
	Source.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Source
	Weld.Part1 = MasterPart4
	Weld.C0 = CFrame.new(0, 1.4, 0.2) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-90))
	Weld.Parent = Weld.Part0
	local Fire = Instance.new("Fire", Part)
	Fire.Enabled = false
	Fire.Size = 5
	Fire.Heat = -10
	Fire.Color = Color3.new(1, 0.6, 0.2)
	Fire.SecondaryColor = Color3.new(0.6, 0.1, 0.05)
	local Smoke = Instance.new("Smoke", Part)
	Smoke.Enabled = false
	Smoke.Size = 20
	Smoke.RiseVelocity = -15
	Smoke.Color = Color3.new(0.8, 0.8, 0.8)
	Smoke.Opacity = 0.25
	
	--[[local Light = Instance.new("PointLight", Part)
	Light.Range = 10
	Light.Color = Color3.new(214, 214, 0)
	Light.Enabled = false]]--

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Barrel Top"
	Part.BrickColor = BrickColor.new("Silver")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.75, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart4
	Weld.C0 = CFrame.new(0, 0.45, 0.3125) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-90))
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.15 / 0.2, 1, 0.025 / 0.2)

	local Part = Instance.new("Part")
	Part.Material = "SmoothPlastic"
	Part.Name = "Barrel Bottom"
	Part.BrickColor = BrickColor.new("Silver")
	Part.TopSurface = 0
	Part.BottomSurface = 0
	Part.FormFactor = "Custom"
	Part.Size = Vector3.new(0.2, 0.75, 0.2)
	Part.Parent = Parts
	local Weld = Instance.new("Weld")
	Weld.Part0 = Part
	Weld.Part1 = MasterPart4
	Weld.C0 = CFrame.new(0, 0.45, 0.0875) * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(-90))
	Weld.Parent = Weld.Part0
	local Mesh = Instance.new("SpecialMesh", Part)
	Mesh.MeshType = "Brick"
	Mesh.Scale = Vector3.new(0.15 / 0.2, 1, 0.025 / 0.2)

	for _, Part in pairs(Parts:GetChildren()) do
		Part.Locked = true
		Part.CanCollide = false
	end
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
	local Joint = Instance.new("Motor6D")
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

attackdebounce = false
Torso = Char.Torso
CRIT = false
Damagefunc1=function(hit,Damage,Knockback)
	if attackdebounce == false then 
	attackdebounce = true 
	coroutine.resume(coroutine.create(function() 
	wait(0.1) 
	attackdebounce = false 
	end)) 
	if hit.Parent==nil then
		return
	end
	CPlayer=Bin 
	h=hit.Parent:FindFirstChild("Humanoid")
	if h~=nil and hit.Parent.Name~=Char.Name and hit.Parent:FindFirstChild("Torso")~=nil then
		Damage=Damage
--[[		if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
			return
		end]]
			c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=game.Players.LocalPlayer
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
--			print(c.Value)
		if math.random(0,99)+math.random()<=5 then
			CRIT=true
			Damage=Damage*1.5
--[[			Knockback=Knockback*2
			r=Instance.new("BodyAngularVelocity")
			r.P=3000
			r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
			r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
			r.Parent=hit.Parent.Torso
			critsound(2)]] 
	
		end
		Damage=Damage+math.random(0,10)
--		Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
		h:TakeDamage(Damage)
		showDamage(hit.Parent,Damage,.5)
		SoundToServer("Hit", "http://www.roblox.com/Asset/?id=131864673", 1, 0.5, false, Player.Character[ModelName].Handle)
		vp=Instance.new("BodyVelocity")
		vp.P=500
		vp.maxForce=Vector3.new(math.huge,0,math.huge)
--		vp.velocity=Character.Torso.CFrame.lookVector*Knockback
		vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
		if Knockback>0 then
			vp.Parent=hit.Parent.Torso
		end
		game:GetService("Debris"):AddItem(vp,.25)
--[[		r=Instance.new("BodyAngularVelocity")
		r.P=3000
		r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
		r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
		r.Parent=hit.Parent.Torso]]
		game:GetService("Debris"):AddItem(r,.5)
				c=Instance.new("ObjectValue")
			c.Name="creator"
			c.Value=Player
			c.Parent=h
			game:GetService("Debris"):AddItem(c,.5)
		CRIT=false
		hitDeb=true
		AttackPos=6
	end
	end 
end

showDamage=function(Char,Dealt,du)
	m=Instance.new("Model")
	m.Name=tostring(Dealt)
	h=Instance.new("Humanoid")
	h.Health=0
	h.MaxHealth=0
	h.Parent=m
	c=Instance.new("Part")
	c.Material = "SmoothPlastic"
	c.Transparency=0
	c.BrickColor=BrickColor:Red()
	if CRIT==true then
		c.BrickColor=BrickColor.new("Really red")
	end
	c.Name="Head"
	c.TopSurface=0
	c.BottomSurface=0
	c.formFactor="Plate"
	c.Size=Vector3.new(1,.4,1)
	ms=Instance.new("CylinderMesh")
	
	ms.Scale=Vector3.new(.8,.8,.8)
	if CRIT==true then
		ms.Scale=Vector3.new(1.25,1.5,1.25)
		
	end
	ms.Parent=c
	c.Reflectance=0
	Instance.new("BodyGyro").Parent=c
	c.Parent=m
	c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
	f=Instance.new("BodyPosition")
	f.P=2000
	f.D=100
	f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
	f.position=c.Position+Vector3.new(0,3,0)
	f.Parent=c
	game:GetService("Debris"):AddItem(m,.5+du)
	c.CanCollide=false
	m.Parent=workspace
	c.CanCollide=false
end

function onButton1Down(Mouse)
	if Button1Down == true then return end
	Button1Down = true
	if CheckPlayer() == false then return end
	if CanUse == true then
		SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 15, 0.25, false, Player.Character[ModelName].Handle)
		if script.Magazine.Value <= 0 then
			return
		end
		CanUse = false
		pcall(function() Player.Character[ModelName].Hammer.Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(-30), 0, 0) end)
		wait()
		SoundToServer("Fire", "http://www.roblox.com/Asset/?id=10209803", 1, 0.5, false, Player.Character[ModelName].Handle)
		script.Magazine.Value = script.Magazine.Value - 1
		--Player.Character[ModelName].Source.Light.Enabled = true
		pcall(function()
			Player.Character[ModelName].Source.Fire.Enabled = true
			Player.Character[ModelName].Source.Smoke.Enabled = true
		end)
		local Bullet = Instance.new("Part", Workspace)
		Bullet.Material = "SmoothPlastic"
		Bullet.Name = "Bullet"
		Bullet.TopSurface = 0
		Bullet.BottomSurface = 0
		Bullet.BrickColor = BrickColor.new("Really black")
		Bullet.Locked = true
		Bullet.FormFactor = "Custom"
		Bullet.CanCollide = false
		Bullet.Size = Vector3.new(0.5, 0.5, 0.5)
		Bullet.CFrame = Player.Character[ModelName].Source.CFrame * CFrame.new(0, -2, 0)
		Bullet.Elasticity = 0
		Bullet.Friction = 0
		local Mesh = Instance.new("SpecialMesh", Bullet)
		Mesh.MeshType = "FileMesh"
		Mesh.MeshId = "http://www.roblox.com/asset/?id=1033714"
		--Mesh.TextureId = "http://www.roblox.com/asset/?id=95387789"
		Mesh.Scale = Vector3.new(0.1, 1.17, 0.1)
		tagHumanoid(Bullet)
		local BodyVelocity = Instance.new("BodyVelocity", Bullet)
		BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		BodyVelocity.velocity = ((Mouse.Hit.p - Player.Character[ModelName].Source.Position).unit * 275) + Vector3.new(math.random(-5000, 5000) / 1000, math.random(-5000, 5000) / 1000, math.random(-5000, 5000) / 1000)
		Con1 = Bullet.Touched:connect(function(hit) Damagefunc1(hit,30,30) end) 
		game:GetService("Debris"):AddItem(Bullet, 5)
		--TouchedToServer(BulletData, Bullet)
		coroutine.wrap(function()
			CameraPunch(math.rad(30), 0)
			CameraSlide(math.rad(-30), 0, 0.05) 
		end)()
		coroutine.wrap(function()
			for i = -30, 70, 50 do
				pcall(function() Player.Character[ModelName].Hammer.Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(i), 0, 0) end)
				wait()
			end
			--Player.Character[ModelName].Source.Light.Enabled = false
			pcall(function()
				Player.Character[ModelName].Hammer.Weld.C1 = CFrame.fromEulerAnglesXYZ(math.rad(70), 0, 0)
				Player.Character[ModelName].Source.Fire.Enabled = false
				Player.Character[ModelName].Source.Smoke.Enabled = false
			end)
		end)()
		for i = 0, 1, 0.3 do
			pcall(function()
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-50 * i), 0, 0)
			end)
			wait()
		end
		for i = 0, 1, 0.275 do
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 =
					CFrame.new(1, 0.5, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(100), math.rad(35 * i))
				Player.Character.Torso["Left Shoulder 2"].C0 =
					CFrame.new(-0.3, 0.25, -0.25) * CFrame.fromEulerAnglesXYZ(0, math.rad(-130), math.rad(-35 * i))
				Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-50 * (1 - i)), 0, 0)
			end)
			wait()
		end
		pcall(function() Player.Character[ModelName].Handle.Weld.C0 = CFrame.new() end)
		for i = 1, 0, -0.175 do
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 =
					CFrame.new(1, 0.5, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(100), math.rad(35 * i))
				Player.Character.Torso["Left Shoulder 2"].C0 =
					CFrame.new(-0.3, 0.25, -0.25) * CFrame.fromEulerAnglesXYZ(0, math.rad(-130), math.rad(-35 * i))
			end)
			wait()
		end
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(1, 0.5, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(100), 0)
			Player.Character.Torso["Left Shoulder 2"].C0 =
				CFrame.new(-0.3, 0.25, -0.25) * CFrame.fromEulerAnglesXYZ(0, math.rad(-130), 0)
		end)
		wait(0.075)
		CanUse = true
	end
end


function onButton1Up(Mouse)
	Button1Down = false
end


function onKeyDown(Key, Mouse)
	if Selected == false then return end
	Key = Key:lower()
	if Button1Down == false and CanUse == true and CheckPlayer() == true then
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
		elseif Key == "r" then
			if script.Magazine.Value >= MagazineCapacity or Player.Backpack.Ammo[AmmoType].Value <= 0 then return end
			CanUse = false
			SetSpeed(1, 0.2, Player.Character)
			SetSpeed(2, 0.2, Player.Character)
			SetAngle(1, math.rad(40), Player.Character)
			SetAngle(2, math.rad(-10), Player.Character)
			coroutine.wrap(function()
				for i = 0, 90, 15 do
					pcall(function() Player.Character[ModelName].Pivot.Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(i), 0) end)
					wait()
				end
				pcall(function() Player.Character[ModelName].Pivot.Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0) end)
			end)()
			SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 2, 1, false, Player.Character[ModelName].Handle)
			for i = 0, 1, 0.08 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 =
						CFrame.new(-0.3 - (1.2 * i), 0.25 + (0.25 * i), -0.25 + (0.25 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-130) + math.rad(40 * i), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-180) + math.rad(90 * i), 0)
				end)
				CameraPunch(math.rad(-1), 0)
				wait()
			end
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C0 =
					CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 =
					CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
			end)
			if Player.Character:FindFirstChild(ModelName) ~= nil then
				for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
					if Part.Name == "Shell" and Part.Transparency == 0 then
						if script.Magazine.Value > 0 then
							script.Magazine.Value = script.Magazine.Value - 1
							Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value + 1
						end
						local Clone = Part:Clone()
						Clone.CanCollide = false
						Clone.Parent = Workspace
						Clone.Velocity = ((Clone.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)).lookVector * 25) + Vector3.new(math.rad(-3, 3), math.rad(-3, 3), math.rad(-3, 3))
						game:GetService("Debris"):AddItem(Clone, 15)
						coroutine.wrap(function()
							wait(0.1)
							Clone.CanCollide = true
						end)()
						Part.Transparency = 1
						SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 10, 0.25, false, Player.Character[ModelName].Handle)
						wait()
					end
				end
			end
			local Loader = nil
			if ModelType == 1 then
				Loader = Instance.new("Part")
				Loader.Name = "Loader"
				Loader.BrickColor = BrickColor.new("Really black")
				Loader.TopSurface = 0
				Loader.BottomSurface = 0
				Loader.FormFactor = "Custom"
				Loader.Size = Vector3.new(0.55, 0.2, 0.55)
				Loader.Locked = true
				Loader.Parent = Workspace
				local Weld = Instance.new("Weld")
				Weld.Part0 = Loader
				Weld.Part1 = Player.Character:FindFirstChild("Left Arm")
				Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(25), math.rad(90))
				Weld.C1 = CFrame.new(0, -1.425, 0)
				Weld.Parent = Weld.Part0
				local Mesh = Instance.new("CylinderMesh", Loader)
				Mesh.Scale = Vector3.new(1, 0.05 / 0.2, 1)
				for i = 360 / 6, 360, 360 / 6 do
					if math.floor((i / 360) * 6) <= Player.Backpack.Ammo[AmmoType].Value then
						local Part = Instance.new("Part")
						Part.Name = "Loading Shell"
						Part.BrickColor = BrickColor.new("New Yeller")
						Part.TopSurface = 0
						Part.BottomSurface = 0
						Part.FormFactor = "Custom"
						Part.Size = Vector3.new(0.2, 0.275, 0.2)
						Part.Locked = true
						Part.Parent = Player.Character:FindFirstChild(ModelName)
						local Weld = Instance.new("Weld")
						Weld.Part0 = Part
						Weld.Part1 = Loader
						Weld.C0 = CFrame.new(math.sin(math.rad(i)) * 0.1, -0.175, math.cos(math.rad(i)) * 0.1)
						Weld.Parent = Weld.Part0
						local Mesh = Instance.new("CylinderMesh", Part)
						Mesh.Scale = Vector3.new(0.075 / 0.2, 1, 0.075 / 0.2)
					end
				end
			end
			SetAngle(1, math.rad(90), Player.Character)
			SetAngle(2, math.rad(130), Player.Character)
			for i = 0, 1, 0.08 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 =
						CFrame.new(-1.5 + (1.3 * i), 0.5 - (0.1 * i), -0.75 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) - math.rad(25 * i), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 =
						CFrame.new(0, 0.5 + (ModelType == 2 and 0.4 * i or 0), 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) + math.rad(90 * i), 0)
				end)
				CameraPunch(math.rad(1), 0)
				wait()
			end
			pcall(function()
				Player.Character.Torso["Left Shoulder 2"].C0 =
					CFrame.new(-0.2, 0.4, -0.75) * CFrame.fromEulerAnglesXYZ(0, math.rad(-115), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 =
					CFrame.new(0, ModelType == 1 and 0.5 or 0.9, 0)
			end)
			wait()
			if ModelType == 1 then
				SetSpeed(2, 0.125, Player.Character)
				SetAngle(2, math.rad(115), Player.Character)
				wait(0.1)
				SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 9, 0.75, false, Player.Character[ModelName].Handle)
				local i = 0
				for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
					if Part.Name == "Shell" then
						i = i + 1
						if i <= Player.Backpack.Ammo[AmmoType].Value then
							Part.Transparency = 0
						end
					elseif Part.Name == "Loading Shell" then
						Part:Remove()
					end
				end
				if Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity < 0 then
					script.Magazine.Value = Player.Backpack.Ammo[AmmoType].Value
					Player.Backpack.Ammo[AmmoType].Value = 0
				else
					script.Magazine.Value = MagazineCapacity
					Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value - MagazineCapacity
				end
				SetAngle(2, math.rad(130), Player.Character)
				wait(0.15)
			elseif ModelType == 2 then
				if Player.Character:FindFirstChild(ModelName) ~= nil then
					for _, Part in pairs(Player.Character[ModelName]:GetChildren()) do
						if Part.Name == "Shell" then
							if Button1Down == true then break end
							SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 9, 0.75, false, Player.Character[ModelName].Handle)
							SetSpeed(2, 0.1, Player.Character)
							SetAngle(2, math.rad(115), Player.Character)
							wait(0.1)
							Part.Transparency = 0
							if Player.Backpack.Ammo[AmmoType].Value - 1 < 0 then break end
							script.Magazine.Value = script.Magazine.Value + 1
							Player.Backpack.Ammo[AmmoType].Value = Player.Backpack.Ammo[AmmoType].Value - 1
							SetAngle(2, math.rad(130), Player.Character)
							wait(0.1)
						end
					end
				end
			end
			SetSpeed(1, 0.15, Player.Character)
			SetAngle(1, math.rad(130), Player.Character)
			SetSpeed(2, 0.2, Player.Character)
			SetAngle(2, math.rad(25), Player.Character)
			SoundToServer("Click", "http://www.roblox.com/Asset/?id=2697295", 2, 1, false, Player.Character[ModelName].Handle)
			coroutine.wrap(function()
				for i = 0, 1, 0.11 do
					pcall(function() Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-80 * i), 0, 0) end)
					wait()
				end
				for i = 1, 0, -0.08 do
					pcall(function() Player.Character[ModelName].Handle.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(-80 * i), 0, 0) end)
					wait()
				end
				pcall(function() Player.Character[ModelName].Handle.Weld.C0 = CFrame.new() end)
			end)()
			coroutine.wrap(function()
				for i = 1, 0, -0.21 do
					pcall(function() Player.Character[ModelName].Pivot.Weld.C0 = CFrame.fromEulerAnglesXYZ(0, math.rad(i * 90), 0) end)
					wait()
				end
				pcall(function() Player.Character[ModelName].Pivot.Weld.C0 = CFrame.new() end)
			end)()
			for i = 1, 0, -0.13 do
				pcall(function()
					Player.Character.Torso["Left Shoulder 2"].C0 =
						CFrame.new(-1.5 + (1.3 * i), 0.5 - (0.1 * i), -0.75 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) - math.rad(25 * i), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 =
						CFrame.new(0, 0.5 + (ModelType == 2 and 0.4 * i or 0), 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) + math.rad(90 * i), 0)
				end)
				CameraPunch(math.rad(2), 0)
				wait()
			end
			pcall(function()
				Loader:BreakJoints()
				game:GetService("Debris"):AddItem(Loader, 15)
			end)
			SetAngle(1, math.rad(90), Player.Character)
			SetAngle(2, math.rad(90), Player.Character)
			for i = 1, 0, -0.09 do
				pcall(function()
					Player.Character.Torso["Right Shoulder 2"].C0 =
						CFrame.new(1, 0.5, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(100), 0)
					Player.Character.Torso["Right Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
					Player.Character.Torso["Left Shoulder 2"].C0 =
						CFrame.new(-0.3 - (1.2 * i), 0.25 + (0.25 * i), -0.25 + (0.25 * i)) * CFrame.fromEulerAnglesXYZ(0, math.rad(-130) + math.rad(40 * i), 0)
					Player.Character.Torso["Left Shoulder 2"].C1 =
						CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-180) + math.rad(180 * i), 0)
				end)
				CameraPunch(math.rad(-2), 0)
				wait()
			end
			pcall(function()
				Player.Character.Torso["Right Shoulder 2"].C0 =
					CFrame.new(1, 0.5, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(100), 0)
				Player.Character.Torso["Right Shoulder 2"].C1 =
					CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
				Player.Character.Torso["Left Shoulder 2"].C0 =
					CFrame.new(-0.3, 0.25, -0.25) * CFrame.fromEulerAnglesXYZ(0, math.rad(-130), 0)
				Player.Character.Torso["Left Shoulder 2"].C1 =
					CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-180), 0)
			end)
			wait()
			CanUse = true
		elseif Key == "g" then
			CanUse = false
			SetSpeed(1, 0.35, Player.Character)
			SetSpeed(2, 0.35, Player.Character)
			SetAngle(1, math.rad(150), Player.Character)
			SetAngle(2, math.rad(150), Player.Character)
			SoundToServer("Slash", "rbxasset://sounds/swordslash.wav", 2, 1, false, Player.Character.Torso)
			wait(0.2)
			SetSpeed(1, 0.5, Player.Character)
			SetSpeed(2, 0.5, Player.Character)
			SetAngle(1, math.rad(20), Player.Character)
			SetAngle(2, math.rad(20), Player.Character)
			local HasHit = false
			local _, HitConnection = pcall(function() return Player.Character[ModelName].Barrel.Touched:connect(function(Hit)
				if HasHit == true or Hit:IsDescendantOf(Player.Character) then return end
				HasHit = true
				SoundToServer("Bash", "http://www.roblox.com/Asset/?id=46153268", 1, 0.25, false, Player.Character.Torso)
				local Humanoid = Hit.Parent:FindFirstChild("Humanoid") or Hit.Parent.Parent:FindFirstChild("Humanoid")
				if Humanoid ~= nil then
					tagHumanoid(Humanoid)
					Humanoid:TakeDamage(10)
					wait()
					pcall(function() untagHumanoid(Humanoid) end)
				end
			end) end)
			wait(0.2)
			pcall(function() HitConnection:disconnect() end)
			SetSpeed(1, 0.15, Player.Character)
			SetSpeed(2, 0.15, Player.Character)
			SetAngle(1, math.rad(90), Player.Character)
			SetAngle(2, math.rad(90), Player.Character)
			wait(0.3)
			CanUse = true
		end
	end
end


function onSelected(Mouse)
	if Selected == true or CanUse == false then return end
	CanUse = false
	while true do
		if CheckPlayer() == true then
			if Player.Character.Torso:FindFirstChild("Right Shoulder") ~= nil and Player.Character.Torso:FindFirstChild("Left Shoulder") ~= nil then
				break
			end
		end
		wait(0.1)
	end
	Selected = true
	DisableLimb(1, Player.Character)
	SetSpeed(1, 0.5, Player.Character)
	SetAngle(1, 0, Player.Character)
	DisableLimb(2, Player.Character)
	SetSpeed(2, 0.5, Player.Character)
	SetAngle(2, 0, Player.Character)
	wait(0.05)
	RemoveParts(Player.Character, 1)
	CreateParts(Player.Character, 2)
	SetSpeed(1, 0.15, Player.Character)
	SetAngle(1, math.rad(90), Player.Character)
	SetSpeed(2, 0.15, Player.Character)
	SetAngle(2, math.rad(90), Player.Character)
	for i = 0, 1, 0.08 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(1.5 - (0.5 * i), 0.5, -0.1 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) + math.rad(10 * i), 0)
			Player.Character.Torso["Right Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			Player.Character.Torso["Left Shoulder 2"].C0 =
				CFrame.new(-1.5 + (1.2 * i), 0.5 - (0.25 * i), -0.25 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) - math.rad(40 * i), 0)
			Player.Character.Torso["Left Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) - math.rad(90 * i), 0)
		end)
		wait()
	end
	pcall(function()
		Player.Character.Torso["Right Shoulder 2"].C0 =
			CFrame.new(1, 0.5, -0.1) * CFrame.fromEulerAnglesXYZ(0, math.rad(100), 0)
		Player.Character.Torso["Right Shoulder 2"].C1 =
			CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
		Player.Character.Torso["Left Shoulder 2"].C0 =
			CFrame.new(-0.3, 0.25, -0.25) * CFrame.fromEulerAnglesXYZ(0, math.rad(-130), 0)
		Player.Character.Torso["Left Shoulder 2"].C1 =
			CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-180), 0)
	end)
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.Button1Down:connect(function() onButton1Down(Mouse) end)
	Mouse.Button1Up:connect(function() onButton1Up(Mouse) end)
	Mouse.KeyDown:connect(function(Key) onKeyDown(Key, Mouse) end)
	CanUse = true
end


function onDeselected(Mouse)
	if Selected == false then return end
	Selected = false
	while CanUse == false do wait() end
	if CheckPlayer() == false or pcall(function() local _ = Player.Character.Torso["Right Shoulder 2"] end) == false then
		RemoveParts(Player.Character, 2)
		CreateParts(Player.Character, 1)
		SetAngle(1, 0, Player.Character)
		ResetLimbCFrame(1, Player.Character)
		EnableLimb(1, Player.Character)
		SetAngle(2, 0, Player.Character)
		ResetLimbCFrame(2, Player.Character)
		EnableLimb(2, Player.Character)
		return
	end
	if Selected == true then return end
	CanUse = false
	SetSpeed(1, 0.15, Player.Character)
	SetSpeed(2, 0.15, Player.Character)
	SetAngle(1, 0, Player.Character)
	SetAngle(2, 0, Player.Character)
	for i = 1, 0, -0.08 do
		pcall(function()
			Player.Character.Torso["Right Shoulder 2"].C0 =
				CFrame.new(1.5 - (0.5 * i), 0.5, -0.1 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(90) + math.rad(10 * i), 0)
			Player.Character.Torso["Right Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
			Player.Character.Torso["Left Shoulder 2"].C0 =
				CFrame.new(-1.5 + (1.2 * i), 0.5 - (0.25 * i), -0.25 * i) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) - math.rad(40 * i), 0)
			Player.Character.Torso["Left Shoulder 2"].C1 =
				CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90) - math.rad(90 * i), 0)
		end)
		wait()
	end
	RemoveParts(Player.Character, 2)
	CreateParts(Player.Character, 1)
	ResetLimbCFrame(1, Player.Character)
	ResetLimbCFrame(2, Player.Character)
	EnableLimb(1, Player.Character)
	EnableLimb(2, Player.Character)
	CanUse = true
end


if script.Parent.ClassName ~= "HopperBin" then
	if Player == nil then print("Error: Player not found!") return end
	Tool = Instance.new("HopperBin")
	Tool.Name = ModelName
	Tool.Parent = Player.Backpack
	Instance.new("IntValue", script).Name = "Magazine"
	script.Name = "Main"
	script.Parent = Tool
elseif script.Parent.ClassName == "HopperBin" and Connected == false then
	Connected = true
	Player = script.Parent.Parent.Parent
	end wait() if script.Parent.ClassName == "HopperBin" then
	while script.Parent.Parent.ClassName ~= "Backpack" do
		wait()
	end
		Instance.new("Configuration", Player.Backpack).Name = "Ammo"
		Instance.new("IntValue", Player.Backpack.Ammo).Name = AmmoType
		Player.Backpack.Ammo[AmmoType].Value = 8 * 8
	script.Parent.Selected:connect(onSelected)
	script.Parent.Deselected:connect(onDeselected)
	CreateParts(Player.Character, 1)
	--[[
MouseAim v11
--]]


script.Parent.Selected:connect(function(Mouse)
	while Selected == false do wait() end
	while Selected == true do
		if script.Parent == nil then break end
		if Player.Character:FindFirstChild("Humanoid") == nil or Player.Character:FindFirstChild("Torso") == nil then break end
		if Player.Character.Humanoid.Health > 0 and Player.Character.Humanoid.Sit == false and Player.Character.Humanoid.PlatformStand == false and Player.Character.Torso:FindFirstChild("BodyGyro") == nil and Player.Character.Torso:FindFirstChild("BodyAngularVelocity") == nil and Player.Character:FindFirstChild("Ragdoll") == nil then
			local AimGyro = Instance.new("BodyGyro")
			game:GetService("Debris"):AddItem(AimGyro, 0)
			AimGyro.Parent = Player.Character.Torso
			AimGyro.Name = "AimGyro"
			AimGyro.P = 40000
			AimGyro.D = 300
			AimGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
			AimGyro.cframe = CFrame.new(Player.Character.Torso.Position, Vector3.new(Mouse.Hit.p.x, Player.Character.Torso.Position.y, Mouse.Hit.p.z)) * (Player.Character:FindFirstChild("AimGyroAdd") and Player.Character.AimGyroAdd.Value or CFrame.new())
		end
		wait()
	end
end)
	--[[
AmmoCounter v5
--]]


local Gui = nil


local function Remove()
	if Gui ~= nil then
		local Gui2 = Gui
		Gui = nil
		if Gui2.Parent ~= nil then
			Gui2.AmmoCounter:TweenPosition(UDim2.new(0.35, 0, 1, 0), "In", "Quart", 0.5, true)
			wait(0.5)
		end
		Gui2:Remove()
	end
end


script.Parent.Selected:connect(function(Mouse)
	while Selected == false do wait() end
	local DualConnection1, DualConnection2
	Gui = Instance.new("ScreenGui", Player.PlayerGui)
	Gui.Name = "AmmoCounter"
	local AmmoCounter = Instance.new("Frame", Gui)
	AmmoCounter.Name = "AmmoCounter"
	AmmoCounter.BorderColor3 = Color3.new(0, 0, 0)
	AmmoCounter.BackgroundTransparency = 0.8
	AmmoCounter.BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
	AmmoCounter.Size = UDim2.new(0.3, 0, 0, 100)
	AmmoCounter.Position = UDim2.new(0.35, 0, 1, 0)
	AmmoCounter:TweenPosition(UDim2.new(0.35, 0, 1, -200), "Out", "Quart", 0.5, true)
	local Notification = Instance.new("TextLabel", AmmoCounter)
	Notification.Name = "Notification"
	Notification.Text = ""
	Notification.TextTransparency = 1
	Notification.Font = "ArialBold"
	Notification.FontSize = "Size18"
	Notification.BorderColor3 = Color3.new(0, 0, 0)
	Notification.BackgroundTransparency = 0.3
	Notification.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
	Notification.Size = UDim2.new(1, -10, 0, 20)
	Notification.Position = UDim2.new(0, 5, 0, 5)
	coroutine.wrap(function()
		local Reloading = false
		local OldMagazine = script.Magazine.Value
		local OldMagazineDual = nil
		pcall(function() OldMagazineDual = script.Dual.Main.Magazine.Value end)
		while Notification.Parent ~= nil do
			if OldMagazineDual == nil then
				pcall(function() OldMagazineDual = script.Dual.Main.Magazine.Value end)
			end
			if Reloading == false then
				if ((script.Magazine.Value > OldMagazine or OldMagazine - script.Magazine.Value > 1) or (Dual == true and (script.Dual.Main.Magazine.Value > OldMagazineDual or OldMagazineDual - script.Dual.Main.Magazine.Value > 1))) and CanUse == false then
					Reloading = true
				end
			else
				if CanUse == true then
					Reloading = false
				end
			end
			OldMagazine = script.Magazine.Value
			pcall(function() OldMagazineDual = script.Dual.Main.Magazine.Value end)
			if Reloading == true then
				Notification.TextTransparency = 0
				Notification.TextColor3 = Color3.new(0.1, 0.8, 0.1)
				Notification.Text = "Reloading..."
				wait()
			else
				if (script.Magazine.Value / MagazineCapacity < 0.2) or (Dual == true and (script.Dual.Main.Magazine.Value / MagazineCapacity < 0.2)) then
					Notification.TextColor3 = Color3.new(1, 0.1, 0.05)
					Notification.TextTransparency = 0
				else
					Notification.TextColor3 = CanUse == false and Color3.new(0.8, 0.8, 0.8) or Color3.new(0, 0, 0)
					Notification.TextTransparency = 0
				end
				Notification.Text = "Magazine: " ..script.Magazine.Value .. (Dual == true and ("/" ..script.Dual.Main.Magazine.Value) or "")
				wait()
			end
		end
	end)()
	for x = 1, Dual ~= nil and 2 or 1 do
		for i = 1, MagazineCapacity + MagazineCapacityAdd do
			local Bullet = Instance.new("Frame", AmmoCounter)
			Bullet.Name = i.. ", " ..x
			Bullet.BorderColor3 = Color3.new(0, 0, 0)
			if i > script.Magazine.Value then
				Bullet.BackgroundTransparency = 0.8
				Bullet.BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
			else
				Bullet.BackgroundTransparency = 0.3
				Bullet.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
			end
			Bullet.Size = UDim2.new(1 / (MagazineCapacity + MagazineCapacityAdd), -10, 0, Dual ~= nil and 20 or 40)
			Bullet.Position = UDim2.new((i - 1) / (MagazineCapacity + MagazineCapacityAdd), 5, 0, 30 + (20 * (x - 1)))
		end
	end
	local function Check(Value, y)
		return Value.Changed:connect(function()
			for i = 1, MagazineCapacity + MagazineCapacityAdd do
				AmmoCounter[i.. ", " ..y].BackgroundTransparency = 0.8
				AmmoCounter[i.. ", " ..y].BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
			end
			for i = 1, Value.Value do
				AmmoCounter[i.. ", " ..y].BackgroundTransparency = 0.3
				AmmoCounter[i.. ", " ..y].BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
			end
		end)
	end
	Check(script.Magazine, 1)
	if Dual == true then
		DualConnection1 = Check(script.Dual.Main.Magazine, 2)
		coroutine.wrap(function()
			while Dual == true do
				wait()
			end
			pcall(function() DualConnection1:disconnect() end)
		end)()
	else
		DualConnection1 = script.ChildAdded:connect(function(Child)
			if Child.Name == "Dual" then
				DualConnection2 = Check(Child.Main.Magazine, 2)
				coroutine.wrap(function()
					wait()
					for i = 1, MagazineCapacity + MagazineCapacityAdd do
						AmmoCounter[i.. ", 2"].BackgroundTransparency = 0.8
						AmmoCounter[i.. ", 2"].BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
					end
					for i = 1, Child.Main.Magazine.Value do
						AmmoCounter[i.. ", 2"].BackgroundTransparency = 0.3
						AmmoCounter[i.. ", 2"].BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
					end
					while Dual == true do
						wait()
					end
					pcall(function() DualConnection2:disconnect() end)
					for i = 1, MagazineCapacity + MagazineCapacityAdd do
						AmmoCounter[i.. ", 2"].BackgroundTransparency = 0.8
						AmmoCounter[i.. ", 2"].BackgroundColor3 = Color3.new(0.7, 0.7, 0.7)
					end
				end)()
			end
		end)
	end
	local ModelNameLabel = Instance.new("TextLabel", AmmoCounter)
	ModelNameLabel.Name = "ModelNameLabel"
	ModelNameLabel.Text = " " ..ModelName
	ModelNameLabel.TextColor3 = Color3.new(0, 0, 0)
	ModelNameLabel.Font = "ArialBold"
	ModelNameLabel.FontSize = "Size14"
	ModelNameLabel.TextXAlignment = "Left"
	ModelNameLabel.BorderColor3 = Color3.new(0, 0, 0)
	ModelNameLabel.BackgroundTransparency = 0.3
	ModelNameLabel.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
	ModelNameLabel.Size = UDim2.new(1, -10, 0, 20)
	ModelNameLabel.Position = UDim2.new(0, 5, 0, 75)
	local TotalAmmo = ModelNameLabel:Clone()
	TotalAmmo.Parent = AmmoCounter
	TotalAmmo.Name = "TotalAmmo"
	TotalAmmo.Text = Player.Backpack.Ammo[AmmoType].Value.. " " ..AmmoType.. " "
	TotalAmmo.TextXAlignment = "Right"
	TotalAmmo.BorderSizePixel = 0
	TotalAmmo.BackgroundTransparency = 1
	TotalAmmo.Size = UDim2.new(1, - 10, 0, 20)
	TotalAmmo.Position = UDim2.new(0, 5, 1, -25)
	Player.Backpack.Ammo[AmmoType].Changed:connect(function()
		TotalAmmo.Text = Player.Backpack.Ammo[AmmoType].Value.. " " ..AmmoType.. " "
	end)
	coroutine.wrap(function()
		while Selected == true do
			wait()
		end
		Remove()
		pcall(function() DualConnection1:disconnect() end)
		pcall(function() DualConnection2:disconnect() end)
	end)()
end)
end