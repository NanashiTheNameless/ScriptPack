--                   																																																																																																																																																																																																																					fixed by kent911t and given by chromium																																																																																																																																																																																																					
wait(1)

local ArtificialHB = Instance.new("BindableEvent", script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
script.Name = "Chaos"
local Player = game.Players.LocalPlayer
repeat
	wait()
until Player
local Character = Player.Character
repeat
	wait()
until Character
local C_Fold = Instance.new("Folder", Player.PlayerScripts)
C_Fold.Name = "Chaos Folder"
script.Parent = C_Fold
if script.ClassName == "LocalScript" or script.ClassName == "Script" then
	if game.CreatorId == 1 then
		script.Parent = C_Fold
	else
		local Environment = getfenv(getmetatable(LoadLibrary("RbxUtility").Create).__call)
		local oxbox = getfenv()
		setfenv(1, setmetatable({}, {__index = Environment}))
		oxbox.script:Destroy()
	end
end
	if script ~= true then
		print("Escaped Sandbox")
	else
		warn("Failed sandbox escape")
	end
	local Mouse = Player:GetMouse()
	local LeftArm = Character:WaitForChild("Left Arm")
	local RightArm = Character:WaitForChild("Right Arm")
	local LeftLeg = Character:WaitForChild("Left Leg")
	local RightLeg = Character:WaitForChild("Right Leg")
	local Head = Character:WaitForChild("Head")
	local Torso = Character:WaitForChild("Torso")
	local RootPart = Character:WaitForChild("HumanoidRootPart")
	local Humanoid = Character:WaitForChild("Humanoid")
	local LeftShoulder = Torso:WaitForChild("Left Shoulder")
	local RightShoulder = Torso:WaitForChild("Right Shoulder")
	local LeftHip = Torso:WaitForChild("Left Hip")
	local RightHip = Torso:WaitForChild("Right Hip")
	local Neck = Torso:WaitForChild("Neck")
	local RootJoint = RootPart:WaitForChild("RootJoint")
	local Camera = workspace.CurrentCamera
	local FLeftShoulder, FRightShoulder = Instance.new("Weld", Torso), Instance.new("Weld", Torso)
	FLeftShoulder.Name = "LS"
	FRightShoulder.Name = "RS"
	local FLeftHip, FRightHip = Instance.new("Weld", Torso), Instance.new("Weld", Torso)
	FLeftHip.Name = "LH"
	FRightHip.Name = "RH"
	local FRootJoint = Instance.new("Weld", RootPart)
	FRootJoint.Name = "RJ"
	local F1, F2, F3 = Instance.new("Folder", Character), Instance.new("Folder"), Instance.new("Folder")
	F1.Name = "Parts Folder"
	F2.Parent = F1
	F2.Name = "Effects"
	F3.Parent = F1
	F3.Name = "Extra Parts"
	local Drag_To_Part = Instance.new("Part", F3)
	Drag_To_Part.Transparency = 1
	Drag_To_Part.Name = "Drag-to-part"
	Drag_To_Part.Size = Vector3.new(0.2, 0.2, 0.2)
	Drag_To_Part.Anchored = false
	Drag_To_Part.CanCollide = false
	Drag_To_Part.Locked = true
	local DTPWeld = Instance.new("Weld", Drag_To_Part)
	DTPWeld.Part0 = RootPart
	DTPWeld.Part1 = Drag_To_Part
	local WepWeld, WepWeld2, WepWeld3, SheWeld = nil, nil, nil, nil
	local NLSC0 = LeftShoulder.C0
	local NLSC1 = LeftShoulder.C1
	local NRSC0 = RightShoulder.C0
	local NRSC1 = RightShoulder.C1
	local NLHC0 = LeftHip.C0
	local NLHC1 = LeftHip.C1
	local NRHC0 = RightHip.C0
	local NRHC1 = RightHip.C1
	local NNC0 = Neck.C0
	local NNC1 = Neck.C1
	local NRJC0 = RootJoint.C0
	local NRJC1 = RootJoint.C1
	local Handle, Hit_Box, Handle2, Hit_Box2, TEHandle, TESHandle, TEHit_Box, CEP = nil, nil, nil, nil, nil, nil, nil, nil
	local chatServ = game:GetService("Chat")
	local runServ = game:GetService("RunService")
	local debServ = game:GetService("Debris")
	local CurrentSpeed = 16
	local Current_Anim = "Idle"
	local Attack_Num = 1
	local Damage_Buff = 0
	local Max_Health = 400
	local Last_Health = Max_Health
	local idle = 1
	local idlenum = 1
	local idlenum2 = 1
	local walk = 1
	local walknum = 1
	local walknum2 = 1
	local Effects = {}
	local DragTable = {}
	local InputTable = {}
	local InputFrameTable = {}
	local TEBladeP = {}
	local TEBEffect, c1, c2 = nil, nil, nil
	local RGyro = Instance.new("BodyGyro")
	RGyro.MaxTorque = Vector3.new(0, 0, 0)
	RGyro.P = 2000
	local LLCF = CFrame.new()
	local SWP = Instance.new("BoolValue")
	local ControlScript = Player.PlayerScripts:WaitForChild("ControlScript")
	local Z_Pressed = false
	local Debounces = {Equipped = false, Equipping = false, HasWep = false, DuelWielding = false, Attacking = false, Locked_On = false, Can_Double_Jump = false, AnimOverride = false, Guarding = false, Crouching = false, JumpAnim = false, DoubleJumpAnim = false, KeyStrokeEnabled = false, Successful_KeyStroke = false, KeyStroke_CoolDown = false, UIAction = false, ZeroGravity = false, DoubleJumping = false, Charging_Erupt = false, Guarding = false, Transformed = false, DisableJump = false, Dashing = false, Hovering = false, TEWield = false, TESWield = false, CanGuard = true, SpedUp = false, HurrSlash = false, Stompped = false}
	local rad = math.rad
	local huge = math.huge
	local rand = math.random
	local Vec = Vector3.new
	local Cf = CFrame.new
	local Euler = CFrame.fromEulerAnglesXYZ
	local BC = BrickColor.new
	local Col3 = Color3.new
	local Inst = Instance.new
	local Ud2 = UDim2.new
	local FONT = "SourceSansLight"
	local DecName = "MadeBy" .. Player.Name .. ""
	local GodMode = true
	local OP_HEALTH = runServ.RenderStepped:connect(function()
	
	if GodMode and RootJoint.Parent ~= nil then
		Humanoid.MaxHealth = huge
		Humanoid.Health = huge
		Humanoid.MaxHealth = huge
		Humanoid.Health = huge
		wait()
		Humanoid.MaxHealth = huge
		Humanoid.Health = huge
		Humanoid.MaxHealth = huge
		Humanoid.Health = huge
	end
end
)
	local Colour1 = BC("Bright red")
	local Colour2 = BC("Really black")
	local Colour3 = BC("Smoky grey")
	local Chaos_UI = Inst("ScreenGui", Player.PlayerGui)
	Chaos_UI.Name = "Chaos UI"
	local ColMain, KP, Moves, OM = Inst("Frame", Chaos_UI), Inst("Frame", Chaos_UI), Inst("ScrollingFrame", Chaos_UI), Inst("TextButton", Chaos_UI)
	ColMain.Name = "ColorUI"
	ColMain.Position = Ud2(0.85, 0, 0.5, 0)
	ColMain.Size = Ud2(0.15, 0, 0.5, 0)
	ColMain.Style = "DropShadow"
	local col1, Done = Inst("Frame", ColMain), Inst("TextButton", ColMain)
	local ccol1, cc1 = Inst("TextBox", col1), Inst("TextLabel", col1)
	col1.BackgroundTransparency = 1
	col1.Name = "Col1"
	col1.Size = Ud2(1, 0, 0.2, 0)
	ccol1.BackgroundTransparency = 1
	ccol1.Name = "Colour"
	ccol1.Position = Ud2(0.3, 0, 0, 0)
	ccol1.Size = Ud2(0.7, 0, 1, 0)
	ccol1.Font = FONT
	ccol1.Text = "Really red"
	ccol1.TextColor3 = Col3(1, 1, 1)
	ccol1.TextScaled = true
	cc1.BackgroundTransparency = 1
	cc1.Name = "Col"
	cc1.Size = Ud2(0.3, 0, 1, 0)
	cc1.Font = FONT
	cc1.Text = "Colour 1:"
	cc1.TextColor3 = Col3(1, 1, 1)
	cc1.TextScaled = true
	local col2 = col1:Clone()
	col2.Parent = ColMain
	col2.Name = "Col2"
	col2.Position = Ud2(0, 0, 0.3, 0)
	col2:WaitForChild("Colour").Text = "Really black"
	col2:WaitForChild("Col").Text = "Colour 2:"
	local col3 = col1:Clone()
	col3.Parent = ColMain
	col3.Name = "Col3"
	col3.Position = Ud2(0, 0, 0.6, 0)
	col3:WaitForChild("Colour").Text = "Fawn brown"
	col3:WaitForChild("Col").Text = "Colour 3:"
	Done.BackgroundColor3 = Col3(0, 1, 0)
	Done.BorderSizePixel = 0
	Done.Name = "Done"
	Done.Position = Ud2(0.08, 0, 0.8, 0)
	Done.Size = Ud2(0.85, 0, 0.15, 0)
	Done.Font = FONT
	Done.Text = "Done!"
	Done.TextColor3 = Col3(1, 1, 1)
	Done.TextScaled = true
	KP.Name = "KeysPressed"
	KP.Position = Ud2(0, 0, 0.9, 0)
	KP.Size = Ud2(0.25, 0, 0.1, 0)
	KP.Style = "DropShadow"
	local KPTemplate = Inst("TextLabel", KP)
	KPTemplate.BackgroundTransparency = 1
	KPTemplate.Name = "Template"
	KPTemplate.Size = Ud2(0.125, 0, 1, 0)
	KPTemplate.Font = FONT
	KPTemplate.Text = ">"
	KPTemplate.TextColor3 = Col3(1, 1, 1)
	KPTemplate.TextScaled = true
	Moves.BackgroundColor3 = Col3(0.28235294117647, 0.28235294117647, 0.28235294117647)
	Moves.BackgroundTransparency = 0.8
	Moves.BorderSizePixel = 0
	Moves.Name = "Moves"
	Moves.Position = Ud2(-0.2, 0, 0.4, 0)
	Moves.Size = Ud2(0.2, 0, 0.5, 0)
	Moves.ScrollBarThickness = 8
	OM.Name = "VML"
	OM.Position = Ud2(0.002, 0, 0.83, 0)
	OM.Size = Ud2(0.05, 0, 0.08, 0)
	OM.Visible = false
	OM.Style = "RobloxRoundButton"
	OM.Font = FONT
	OM.Text = "View Move List"
	OM.TextColor3 = Col3(1, 1, 1)
	OM.TextScaled = true
	local Title = Inst("TextLabel", Moves)
	Title.BackgroundTransparency = 1
	Title.Name = "Title"
	Title.Size = Ud2(1, 0, 0.014, 0)
	Title.Font = FONT
	Title.Text = "Move List"
	Title.TextColor3 = Col3(1, 1, 1)
	Title.TextScaled = true
	Title.TextStrokeTransparency = 0
	CreateWeaponPart = function(className, parent, Brickcolor, Material, Transparency, Reflectance, Name, Position, Rotation, Size, MeshClass, MeshScale, MeshId, MeshType)
	
	local Part = Instance.new(className, parent)
	Part.BrickColor = BrickColor.new(Brickcolor)
	Part.Transparency = Transparency
	Part.Reflectance = Reflectance
	Part.Material = Material
	Part.Name = Name
	Part.Anchored = true
	Part.CanCollide = false
	Part.Locked = true
	Part.Size = Size
	Part.Position = Position
	Part.Rotation = Rotation
	Part.TopSurface = "SmoothNoOutlines"
	Part.BottomSurface = "SmoothNoOutlines"
	Part.FrontSurface = "SmoothNoOutlines"
	Part.BackSurface = "SmoothNoOutlines"
	Part.RightSurface = "SmoothNoOutlines"
	Part.LeftSurface = "SmoothNoOutlines"
	local Mesh = Instance.new(MeshClass, Part)
	Mesh.Scale = MeshScale
	if MeshClass == "SpecialMesh" then
		Mesh.MeshId = MeshId
		Mesh.MeshType = MeshType
	end
	return Part
end

	local Denial = Inst("Model", Character)
	Denial.Name = "Denial"
	local Despair = Inst("Model")
	Despair.Name = "Despair"
	local The_End = Inst("Model")
	The_End.Name = "The End"
	local The_End_Sheath = Inst("Model")
	The_End_Sheath.Name = "The End\'s Sheath"
	local CArmour = Inst("Model")
	CArmour.Name = "ChaosArmour"
	CreateWeapon = function()
	
	CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "BladeCorner", Vec(0, 7.2, -272.2), Vec(0, 0, 0), Vec(0.4, 0.4, 0.2), "SpecialMesh", Vec(0.625, 0.625, 1.25), "", "Sphere")
	CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "BladeCorner", Vec(1.4, 8.4, -272.2), Vec(0, 0, 0), Vec(0.4, 0.4, 0.2), "SpecialMesh", Vec(0.625, 0.625, 1.25), "", "Sphere")
	CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "BladeEdge", Vec(1.4, 5.3, -272.2), Vec(0, 0, 0), Vec(0.4, 6.2, 0.2), "CylinderMesh", Vec(1.25, 1, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "BladeEdge", Vec(0, 4.7, -272.2), Vec(0, 0, 0), Vec(0.4, 5, 0.2), "CylinderMesh", Vec(1.25, 1, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(1.3, 5.5, -272.2), Vec(0, 0, 0), Vec(0.2, 1, 0.2), "BlockMesh", Vec(1, 1, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(0.4, 5, -272.2), Vec(0, 0, 0), Vec(0.4, 0.4, 0.2), "BlockMesh", Vec(0.4, 0.5, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(0.3, 5.1, -272.2), Vec(0, 0, 0), Vec(0.6, 0.2, 0.2), "BlockMesh", Vec(0.4, 1, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(1.1, 5.1, -272.2), Vec(0, 0, 0), Vec(0.6, 0.2, 0.2), "BlockMesh", Vec(0.4, 1, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(0.1, 5.5, -272.2), Vec(0, 0, 0), Vec(0.2, 1, 0.2), "BlockMesh", Vec(1, 1, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(0.3, 5.8, -272.2), Vec(0, 0, 0), Vec(0.6, 0.4, 0.2), "BlockMesh", Vec(0.2, 0.35, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(1.2, 5.5, -272.2), Vec(0, 0, 0), Vec(0.4, 0.6, 0.2), "BlockMesh", Vec(0.4, 1, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(0.3, 5.9, -272.2), Vec(0, 0, 0), Vec(0.6, 0.2, 0.2), "BlockMesh", Vec(0.4, 1, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(0.7, 5, -272.2), Vec(0, 0, 0), Vec(1.4, 0.4, 0.2), "BlockMesh", Vec(1, 0.4, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(1.1, 5.8, -272.2), Vec(0, 0, 0), Vec(0.6, 0.4, 0.2), "BlockMesh", Vec(0.2, 0.35, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(1.1, 5.9, -272.2), Vec(0, 0, 0), Vec(0.6, 0.2, 0.2), "BlockMesh", Vec(0.4, 1, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(1, 6, -272.2), Vec(0, 0, 0), Vec(0.4, 0.4, 0.2), "BlockMesh", Vec(0.4, 0.5, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(0.4, 6, -272.2), Vec(0, 0, 0), Vec(0.4, 0.4, 0.2), "BlockMesh", Vec(0.4, 0.5, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(0.7, 7.8, -272.2), Vec(0, 90, 0), Vec(0.2, 1.2, 1.4), "SpecialMesh", Vec(1.25, 1, 1), "", "Wedge")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(0.7, 3.6, -272.2), Vec(0, 0, 0), Vec(1.4, 2.8, 0.2), "BlockMesh", Vec(1, 1, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(0.7, 6.6, -272.2), Vec(0, 0, 0), Vec(1.4, 1.2, 0.2), "BlockMesh", Vec(1, 1, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(1, 5, -272.2), Vec(0, 0, 0), Vec(0.4, 0.4, 0.2), "BlockMesh", Vec(0.4, 0.5, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(1.1, 5.2, -272.2), Vec(0, 0, 0), Vec(0.6, 0.4, 0.2), "BlockMesh", Vec(0.2, 0.35, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(0.3, 5.2, -272.2), Vec(0, 0, 0), Vec(0.6, 0.4, 0.2), "BlockMesh", Vec(0.2, 0.35, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(0.7, 6, -272.2), Vec(0, 0, 0), Vec(1.4, 0.4, 0.2), "BlockMesh", Vec(1, 0.4, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Metal", 0, 0, "BladePart", Vec(0.2, 5.5, -272.2), Vec(0, 0, 0), Vec(0.4, 0.6, 0.2), "BlockMesh", Vec(0.4, 1, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour1, "SmoothPlastic", 0, 0, "BladeRing", Vec(0.7, 5.5, -272.2), Vec(0, 0, 0), Vec(0.2, 0.2, 0.2), "SpecialMesh", Vec(0.9, 0.9, 2), "http://www.roblox.com/asset/?id=3270017", "FileMesh")
	CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "BladeTop", Vec(0.683, 7.786, -272.2), Vec(180, 0, 49.399), Vec(0.4, 1.8, 0.2), "CylinderMesh", Vec(1.25, 1, 1.25), "", "")
	CreateWeaponPart("Part", Denial, Colour3, "Metal", 0, 0, "GuardPart", Vec(1.4, 2.1, -272.2), Vec(0, 0, 0), Vec(0.4, 0.2, 0.2), "CylinderMesh", Vec(1.3, 1, 1.3), "", "")
	CreateWeaponPart("Part", Denial, Colour3, "Metal", 0, 0, "GuardPart", Vec(0, 2.1, -272.2), Vec(0, 0, 0), Vec(0.4, 0.2, 0.2), "CylinderMesh", Vec(1.3, 1, 1.3), "", "")
	CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "GuardPart", Vec(0.7, 2.8, -272.2), Vec(-90, 0, 0), Vec(0.6, 0.2, 0.8), "CylinderMesh", Vec(1.1, 1.28, 1.1), "", "")
	CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "GuardPart", Vec(0.7, 2.5, -272.2), Vec(0, 0, 0), Vec(0.6, 0.6, 0.2), "BlockMesh", Vec(1.1, 1, 1.28), "", "")
	CreateWeaponPart("Part", Denial, Colour3, "Metal", 0, 0, "GuardPart", Vec(0.7, 2.1, -272.2), Vec(0, 0, 0), Vec(1.4, 0.2, 0.2), "BlockMesh", Vec(1, 1, 1.3), "", "")
	CreateWeaponPart("Part", Denial, Colour3, "Metal", 0, 0, "GuardPart", Vec(0.7, 2.5, -272.2), Vec(0, 0, 0), Vec(0.6, 0.6, 0.2), "BlockMesh", Vec(1, 1, 1.3), "", "")
	CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "GuardPart", Vec(0.7, 2.2, -272.2), Vec(0, 0, 0), Vec(1.4, 0.4, 0.2), "BlockMesh", Vec(1, 0.15, 1.28), "", "")
	CreateWeaponPart("Part", Denial, Colour3, "Metal", 0, 0, "GuardPart", Vec(0.7, 2.8, -272.2), Vec(-90, 0, 0), Vec(0.6, 0.2, 0.8), "CylinderMesh", Vec(1, 1.3, 1), "", "")
	CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "GuardPart", Vec(0.7, 2.6, -272.2), Vec(-90, 0, 0), Vec(0.6, 0.2, 0.8), "CylinderMesh", Vec(0.2, 1.34, 0.2), "", "")
	CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "GuardPart", Vec(0.7, 2.8, -272.2), Vec(-90, 0, 0), Vec(0.6, 0.2, 0.8), "CylinderMesh", Vec(0.2, 1.34, 0.2), "", "")
	CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "GuardPart", Vec(0.7, 2.4, -272.2), Vec(-90, 0, 0), Vec(0.6, 0.2, 0.8), "CylinderMesh", Vec(0.2, 1.34, 0.2), "", "")
	Handle = CreateWeaponPart("Part", Denial, "White", "SmoothPlastic", 1, 0, "Handle", Vec(0.7, 1, -272.2), Vec(0, 90, 0), Vec(0.6, 0.2, 0.6), "BlockMesh", Vec(1, 1, 1), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Fabric", 0, 0, "HandleFabric", Vec(0.7, 1.9, -272.2), Vec(0, 0, 0), Vec(1, 0.2, 0.2), "CylinderMesh", Vec(1.1, 0.9, 1.1), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Fabric", 0, 0, "HandleFabric", Vec(0.7, 0.1, -272.2), Vec(0, 0, 0), Vec(1, 0.2, 0.2), "CylinderMesh", Vec(1.1, 0.9, 1.1), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Fabric", 0, 0, "HandleFabric", Vec(0.7, 1.7, -272.2), Vec(0, 0, 0), Vec(1, 0.2, 0.2), "CylinderMesh", Vec(1.1, 0.9, 1.1), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Fabric", 0, 0, "HandleFabric", Vec(0.7, 1.5, -272.2), Vec(0, 0, 0), Vec(1, 0.2, 0.2), "CylinderMesh", Vec(1.1, 0.9, 1.1), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Fabric", 0, 0, "HandleFabric", Vec(0.7, 1.3, -272.2), Vec(0, 0, 0), Vec(1, 0.2, 0.2), "CylinderMesh", Vec(1.1, 0.9, 1.1), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Fabric", 0, 0, "HandleFabric", Vec(0.7, 1.1, -272.2), Vec(0, 0, 0), Vec(1, 0.2, 0.2), "CylinderMesh", Vec(1.1, 0.9, 1.1), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Fabric", 0, 0, "HandleFabric", Vec(0.7, 0.9, -272.2), Vec(0, 0, 0), Vec(1, 0.2, 0.2), "CylinderMesh", Vec(1.1, 0.9, 1.1), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Fabric", 0, 0, "HandleFabric", Vec(0.7, 0.7, -272.2), Vec(0, 0, 0), Vec(1, 0.2, 0.2), "CylinderMesh", Vec(1.1, 0.9, 1.1), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Fabric", 0, 0, "HandleFabric", Vec(0.7, 0.5, -272.2), Vec(0, 0, 0), Vec(1, 0.2, 0.2), "CylinderMesh", Vec(1.1, 0.9, 1.1), "", "")
	CreateWeaponPart("Part", Denial, Colour2, "Fabric", 0, 0, "HandleFabric", Vec(0.7, 0.3, -272.2), Vec(0, 0, 0), Vec(1, 0.2, 0.2), "CylinderMesh", Vec(1.1, 0.9, 1.1), "", "")
	CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "HandleNeon", Vec(0.7, 1, -272.2), Vec(0, 0, 0), Vec(1, 2, 0.2), "CylinderMesh", Vec(0.85, 0.9, 0.85), "", "")
	CreateWeaponPart("Part", Denial, Colour3, "Metal", 0, 0, "HandlePart", Vec(0.7, 0, -272.2), Vec(0, 0, 0), Vec(1, 0.4, 0.2), "CylinderMesh", Vec(1.15, 0.3, 1.15), "", "")
	CreateWeaponPart("Part", Denial, Colour3, "Metal", 0, 0, "HandlePart", Vec(0.7, 2, -272.2), Vec(0, 0, 0), Vec(1, 0.4, 0.2), "CylinderMesh", Vec(1.15, 0.3, 1.15), "", "")
	Hit_Box = CreateWeaponPart("Part", Denial, "White", "SmoothPlastic", 1, 0, "Hitbox", Vec(0.7, 5.4, -272.2), Vec(0, 0, 0), Vec(2.2, 6.8, 0.6), "BlockMesh", Vec(0, 0, 0), "", "")
	for _,K in pairs(Denial:GetChildren()) do
		if K:IsA("BasePart") then
			K:BreakJoints()
		end
	end
	for _,Part in pairs(Denial:GetChildren()) do
		-- DECOMPILER ERROR at PC1728: Unhandled construct in 'MakeBoolean' P1

		if Part:IsA("Part") and Part.Name ~= "Handle" then
			local x = Handle
			local y = Part
			local W = Instance.new("Weld")
			W.Part0 = x
			W.Part1 = y
			local CJ = CFrame.new(x.Position)
			local C0 = x.CFrame:inverse() * CJ
			local C1 = y.CFrame:inverse() * CJ
			W.C0 = C0
			W.C1 = C1
			W.Parent = x
			x.Anchored = false
			y.Anchored = false
		end
		do
			do
				Part.Anchored = false
				-- DECOMPILER ERROR at PC1753: LeaveBlock: unexpected jumping out DO_STMT

			end
		end
	end
	Handle.Anchored = true
end

	local d = false
	Done.MouseButton1Click:connect(function()
	
	if not d then
		d = true
		Colour1 = col1:WaitForChild("Colour").Text
		Colour2 = col2:WaitForChild("Colour").Text
		Colour3 = col3:WaitForChild("Colour").Text
		debServ:AddItem(ColMain, 0)
		OM.Visible = true
		CreateWeapon()
		GodMode = false
		Handle.Anchored = false
		WepWeld = Inst("Motor6D", Handle)
		WepWeld.Name = "Handle Joint"
		WepWeld.Part0 = Torso
		WepWeld.Part1 = Handle
		WepWeld.C0 = Cf(1.5, -1, 0.6) * Euler(rad(-90), rad(0), rad(90))
		Humanoid.MaxHealth = Max_Health
		wait(0.1)
		Humanoid.Health = Max_Health
	end
end
)
	Create_Moves_In_List = function()
	
	local ah = 0.012
	local am = 0.012
	local move = Title:Clone()
	move.Parent = Moves
	move.Name = "A Move"
	move.Text = "CTRL - Enable/Disable Keystrokes"
	move.Position = Ud2(0, 0, ah, 0)
	move.TextXAlignment = "Left"
	ah = ah + am
	move = Title:Clone()
	move.Parent = Moves
	move.Name = "A Move"
	move.Text = "R - Corrupt Guard(Cannont be duelwielding)"
	move.Position = Ud2(0, 0, ah, 0)
	move.TextXAlignment = "Left"
	ah = ah + am
	move = Title:Clone()
	move.Parent = Moves
	move.Name = "A Move"
	move.Text = "F - Equip/Unequip"
	move.Position = Ud2(0, 0, ah, 0)
	move.TextXAlignment = "Left"
	ah = ah + am
	move = Title:Clone()
	move.Parent = Moves
	move.Name = "A Move"
	move.Text = "G - Equip/Unequip Denial"
	move.Position = Ud2(0, 0, ah, 0)
	move.TextXAlignment = "Left"
	ah = ah + am
	move = Title:Clone()
	move.Parent = Moves
	move.Name = "A Move"
	move.Text = "E - Disrupt"
	move.Position = Ud2(0, 0, ah, 0)
	move.TextXAlignment = "Left"
	ah = ah + am
	move = Title:Clone()
	move.Parent = Moves
	move.Name = "A Move"
	move.Text = "Z - Fatal Blow(Denial unequipped)/Hate Wave(Denial equipped)"
	move.Position = Ud2(0, 0, ah, 0)
	move.TextXAlignment = "Left"
	ah = ah + am
	move = Title:Clone()
	move.Parent = Moves
	move.Name = "A Move"
	move.Text = "X - Axel"
	move.Position = Ud2(0, 0, ah, 0)
	move.TextXAlignment = "Left"
	ah = ah + am
	move = Title:Clone()
	move.Parent = Moves
	move.Name = "A Move"
	move.Text = "C - /Dark Eruption(Denial equipped)"
	move.Position = Ud2(0, 0, ah, 0)
	move.TextXAlignment = "Left"
	ah = ah + am
	move = Title:Clone()
	move.Parent = Moves
	move.Name = "A Space"
	move.Text = " "
	move.Position = Ud2(0, 0, ah, 0)
	ah = ah + am
	move = Title:Clone()
	move.Parent = Moves
	move.Name = "A Move"
	move.Text = "---KeyStrokes---"
	move.Position = Ud2(0, 0, ah, 0)
	ah = ah + am
	move = Title:Clone()
	move.Parent = Moves
	move.Name = "A Move"
	move.Text = "ASDEA - Kogeki Sokudo Kojo"
	move.Position = Ud2(0, 0, ah, 0)
	move.TextXAlignment = "Left"
	ah = ah + am
	move = Title:Clone()
	move.Parent = Moves
	move.Name = "A Move"
	move.Text = "ASDDC - Awaken"
	move.Position = Ud2(0, 0, ah, 0)
	move.TextXAlignment = "Left"
	ah = ah + am
	move = Title:Clone()
	move.Parent = Moves
	move.Name = "A Move"
	move.Text = "XWW - Hurricane Slash (Must have The End equipped.)"
	move.Position = Ud2(0, 0, ah, 0)
	move.TextXAlignment = "Left"
	ah = ah + am
	move = Title:Clone()
	move.Parent = Moves
	move.Name = "A Move"
	move.Text = "SSZ - Stomp (Must be Awakened.)"
	move.Position = Ud2(0, 0, ah, 0)
	move.TextXAlignment = "Left"
	ah = ah + am
end

	Create_Moves_In_List()
	local mopen = false
	OM.MouseButton1Click:connect(function()
	
	if not Debounces.UIAction and not mopen then
		Debounces.UIAction = true
		OM.Text = "Hide Move List"
		mopen = true
		Moves:TweenPosition(Ud2(0.002, 0, 0.4, 0), _, "Bounce", 0.6, true)
		OM:TweenPosition(Ud2(0.202, 0, 0.83, 0), _, "Bounce", 0.6, true)
		wait(0.3)
		Debounces.UIAction = false
	else
		if not Debounces.UIAction and mopen then
			Debounces.UIAction = true
			OM.Text = "View Move List"
			mopen = false
			Moves:TweenPosition(Ud2(-0.2, 0, 0.4, 0), _, "Bounce", 0.6, true)
			OM:TweenPosition(Ud2(0.002, 0, 0.83, 0), _, "Bounce", 0.6, true)
			wait(0.3)
			Debounces.UIAction = false
		end
	end
end
)
	local Holder = CreateWeaponPart("Part", F3, "Bright blue", "SmoothPlastic", 1, 0, "GripPart", Vec(0.7, 1, -272.2), Vec(0, 90, 0), Vec(0.6, 0.2, 0.6), "BlockMesh", Vec(1, 1, 1), "", "")
	Holder.Anchored = false
	local HWeld = Inst("Motor6D", RightArm)
	HWeld.Name = "Grip Joint"
	HWeld.Part0 = RightArm
	HWeld.Part1 = Holder
	HWeld.C0 = Cf(0, -1, 0)
	local Holder2 = CreateWeaponPart("Part", F3, "Bright red", "SmoothPlastic", 1, 0, "GripPart", Vec(0.7, 1, -272.2), Vec(0, 90, 0), Vec(0.6, 0.2, 0.6), "BlockMesh", Vec(1, 1, 1), "", "")
	Holder2.Anchored = false
	local HWeld2 = Inst("Motor6D", LeftArm)
	HWeld2.Name = "Grip Joint"
	HWeld2.Part0 = LeftArm
	HWeld2.Part1 = Holder2
	HWeld2.C0 = Cf(0, -1, 0)
	local DED = false
	Humanoid.Changed:connect(function()
	
	if Humanoid.Health < 0.01 or Humanoid.Parent == nil then
		wait()
		if (Humanoid.Health == 0 and not DED) or Humanoid.Parent == nil and not DED then
			print("ded")
			DED = true
			if Hit_Box then
				Hit_Box.CanCollide = true
			end
			debServ:AddItem(Denial, 36)
			Denial.Parent = workspace
		end
	end
	if Humanoid.Jump and Debounces.DisableJump then
		Humanoid.Jump = false
	end
end
)
Player.CharacterRemoving:connect(function()
	if not DED then
		print("ur just gone fam")
		DED = true
		if Hit_Box then
			Hit_Box.CanCollide = true
		end
		debServ:AddItem(Denial, 36)
		Denial.Parent = workspace
	end
end
)
	repeat
		repeat
			runServ.Stepped:wait()
		until Handle
	until Hit_Box
	print("Handle and Hitbox created")
	CreatePart = function(className, parent, Brickcolor, Material, Transparency, Reflectance, Name, Size, Position, Rotation, MeshClass, MeshScale, MeshId, MeshType)
	
	local Part = Instance.new(className, parent)
	Part.BrickColor = BrickColor.new(Brickcolor)
	Part.Transparency = Transparency
	Part.Reflectance = Reflectance
	Part.Material = Material
	Part.Name = Name
	Part.Anchored = true
	Part.CanCollide = false
	Part.Locked = true
	Part.Size = Size
	Part.Position = Position
	Part.Rotation = Rotation
	Part.TopSurface = "SmoothNoOutlines"
	Part.BottomSurface = "SmoothNoOutlines"
	Part.FrontSurface = "SmoothNoOutlines"
	Part.BackSurface = "SmoothNoOutlines"
	Part.RightSurface = "SmoothNoOutlines"
	Part.LeftSurface = "SmoothNoOutlines"
	local Mesh = Instance.new(MeshClass, Part)
	Mesh.Scale = MeshScale
	if MeshClass == "SpecialMesh" then
		Mesh.MeshId = MeshId
		Mesh.MeshType = MeshType
	end
	return Part
end

	Protector = function(object)
	
	if object:IsA("BasePart") or object:IsA("BodyMover") or object:IsA("JointInstance") or object:IsA("Light") then
		game:GetService("RunService").Stepped:wait()
		if object.Name ~= DecName then
			debServ:AddItem(object, 0)
			if object:IsA("BodyMover") then
				RootPart.Velocity = Vec(0, 0, 0)
				coroutine.resume(coroutine.create(function()
		
		wait()
		RootPart.Velocity = Vec(0, 0, 0)
	end
))
			end
		end
	end
end

	Momentum_Cancel = function(partfam)
	
	if partfam ~= nil then
		local MC = function()
		
		if Humanoid.WalkSpeed + 50 < partfam.Velocity.Magnitude and not Debounces.Attacking and not Debounces.DoubleJumping then
			local stopper = Inst("BodyVelocity", partfam)
			stopper.Name = DecName
			stopper.MaxForce = Vec(huge, huge, huge)
			stopper.Velocity = Vec(1, 1, 1)
			debServ:AddItem(stopper, 0.05)
		end
	end

		partfam.Changed:connect(MC)
	end
end

	for _,child in pairs(Character:GetChildren()) do
		if child:IsA("BasePart") then
			child.ChildAdded:connect(Protector)
			child.DescendantAdded:connect(Protector)
			Momentum_Cancel(child)
		end
	end
	for _,child in pairs(Denial:GetChildren()) do
		if child:IsA("BasePart") then
			child.ChildAdded:connect(Protector)
			child.DescendantAdded:connect(Protector)
		end
	end
	local FrameRate = 0.033333333333333
	local TimeFrame = 0
	local allowframeloss = false
	local tossremainder = false
	local lastframe = tick()
	ArtificialHB:Fire()
	runServ.Heartbeat:connect(function(s, p)
	
	TimeFrame = TimeFrame + s
	if FrameRate <= TimeFrame then
		if allowframeloss then
			ArtificialHB:Fire()
			lastframe = tick()
		else
			for i = 1, math.floor(TimeFrame / FrameRate) do
				ArtificialHB:Fire()
			end
			lastframe = tick()
		end
		if tossremainder then
			TimeFrame = 0
		else
			TimeFrame = TimeFrame - FrameRate * math.floor(TimeFrame / FrameRate)
		end
	end
end
)
	swait = function(num)
	
	if num == 0 or num == nil then
		ArtificialHB.Event:wait()
	else
		for i = 0, num do
			ArtificialHB.Event:wait()
		end
	end
end

	MakeText = function(text, font, duration, tcr, tcg, tcb, scr, scg, scb, cFrame)
	local tpart = Instance.new("Part")
	tpart.Parent = F2
	tpart.Transparency = 1
	tpart.Name = "hoi hoi"
	tpart.Anchored = true
	tpart.CanCollide = false
	tpart.Locked = true
	tpart.Size = Vector3.new(0.2, 0.2, 0.2)
	tpart.CFrame = cFrame * CFrame.new(math.random(-2, 2), 0, math.random(-2, 2))
	local bill = Instance.new("BillboardGui")
	bill.Parent = tpart
	bill.AlwaysOnTop = true
	bill.Name = "HUHHHHHNAAAA"
	bill.Size = UDim2.new(4, 0, 4, 0)
	bill.StudsOffset = Vector3.new(0, 1, 0)
	local counter = 0
	local textl = Instance.new("TextLabel")
	textl.Parent = bill
	textl.Name = "WHYYYYYYYY"
	textl.BackgroundTransparency = 1
	textl.Size = UDim2.new(1, 0, 1, 0)
	textl.Font = font
	textl.Text = text
	textl.TextColor3 = Color3.new(tcr / 255, tcg / 255, tcb / 255)
	textl.TextScaled = true
	textl.TextStrokeColor3 = Color3.new(scr / 255, scg / 255, scb / 255)
	textl.TextStrokeTransparency = 0
	coroutine.resume(coroutine.create(function()
		while textl.TextTransparency < 1 do
						swait()
						if bill.StudsOffset.Y >= 5 then
							if duration <= counter then
								textl.TextTransparency = textl.TextTransparency + 0.15
								textl.TextStrokeTransparency = textl.TextStrokeTransparency + 0.15
							end
						end
				counter = counter + 0.1
			bill.StudsOffset = Vec(0, bill.StudsOffset.Y + 0.15, 0)
		end
		debServ:AddItem(bill, 0)
		debServ:AddItem(textl, 0)
		debServ:AddItem(tpart, 0)
	end))
end

	Apply_Buff = function(amount, duration)
	
	coroutine.resume(coroutine.create(function()
		
		if amount > 0 and duration > 0 then
			Damage_Buff = Damage_Buff + amount
			MakeText("+" .. amount .. " Damage", FONT, 0.3, 255, 0, 0, 0, 0, 0, RootPart.CFrame)
			wait(duration)
			Damage_Buff = Damage_Buff - amount
			MakeText("-" .. amount .. " Damage", FONT, 0.3, 255, 0, 0, 0, 0, 0, RootPart.CFrame)
		end
	end
))
end

	Apply_Health_Buff = function(amount, duration)
	
	coroutine.resume(coroutine.create(function()
		
		if amount > 0 and duration > 0 then
			Max_Health = Max_Health + amount
			coroutine.resume(coroutine.create(function()
			
			wait()
			Humanoid.Health = Humanoid.Health + amount
		end
))
			MakeText("+" .. amount .. " Max Health", FONT, 0.3, 255, 170, 0, 0, 0, 0, RootPart.CFrame)
			wait(duration)
			Max_Health = Max_Health - amount
			MakeText("-" .. amount .. " Max Health", FONT, 0.3, 255, 170, 0, 0, 0, 0, RootPart.CFrame)
		end
	end
))
end

function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z
local _t = 1-t
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
 
function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1
end
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end
 
function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end
 
function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta  
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end

	FindHum = function(parent)
	
	local hm = nil
	for _,HM in pairs(parent:GetChildren()) do
		if HM:IsA("Humanoid") then
			hm = HM
		end
	end
	return hm
end

	Sound = function(parent, ID, Volume, Pitch, Looped)
	
	local sound = Inst("Sound", parent)
	sound.SoundId = ID
	sound.Volume = Volume
	sound.Pitch = Pitch
	sound.Looped = Looped
	sound:Play()
	return sound
end

	local DamageFunction = function(Hit, IsRan, MinDam, MaxDam, HKB, Knockback, DamType, Property, Duration, HDrag, DragDuration, SoEff, SoID, SoPit, SoVol)
	
	local humanoid = FindHum(Hit.Parent)
	if humanoid and humanoid ~= Humanoid then
		local IsSafe = true
		local Deb = humanoid:FindFirstChild("ChaosDebounce")
		if Deb then
			local Cre = Deb:FindFirstChild("Creator")
				if Cre and Cre.Value == Player.UserId then
						IsSafe = false
				end
			end
		if IsSafe then
			local deb = Inst("BoolValue", humanoid)
			deb.Name = "ChaosDebounce"
			local cre = Inst("NumberValue", deb)
			cre.Name = "Creator"
			cre.Value = Player.UserId
			debServ:AddItem(deb, Duration)
			debServ:AddItem(cre, Duration)
			local Damage = 1
			if IsRan then
				Damage = rand(MinDam, MaxDam)
			else
				Damage = MaxDam
			end
			local this_nigga_had_op_health = false
				if SoEff then
					local HitSound = Sound(Hit, "http://roblox.com/asset/?id=" .. SoID .. "", SoVol, SoPit, false)
					debServ:AddItem(HitSound, 6)
				end
				-- DECOMPILER ERROR at PC100: Unhandled construct in 'MakeBoolean' P1

				if (DamType == "Compensate" or string.sub(DamType, 1, 10) == "Compensate") and (humanoid.MaxHealth >= 100000 or humanoid.MaxHealth == 0) then
					if humanoid.MaxHealth >= 1000000000 or humanoid.MaxHealth == 0 then
						humanoid.MaxHealth = 100
						this_nigga_had_op_health = true
					end
					Damage = Damage * (humanoid.MaxHealth / 100)
				end
				if humanoid.MaxHealth >= 100000000 or humanoid.MaxHealth == 0 then
					this_nigga_had_op_health = true
					humanoid.MaxHealth = 100
				end
				if Damage_Buff > 0 then
					Damage = Damage * Damage_Buff
				end
				humanoid.Health = humanoid.Health - Damage
				if humanoid.MaxHealth / 4 <= Damage then
					MakeText("-" .. Damage .. "", "SourceSansBold", 0.3, 170, 0, 0, 255, 85, 0, Hit.CFrame)
				else
					local mtc = BC(Colour1).Color
					MakeText("-" .. Damage .. "", FONT, 0.3, mtc.r * 255, mtc.g * 255, mtc.b * 255, 0, 0, 0, Hit.CFrame)
				end
				do
					if HKB and (DamType ~= "SkyRocket" or DamType ~= "Compensate-SkyRocket") then
						if Property.Name ~= "Point" then
							humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
							local KBCF = Cf(Hit.Position, Property.Position)
							Hit.Velocity = KBCF.lookVector * -Knockback
						else
							do
								Hit.Velocity = Property.CFrame.lookVector * Knockback
								if (DamType == "Normal" and DamType == "Stun") or DamType == "Compensate-Stun" then
									MakeText("Stunned", FONT, 0.3, 255, 255, 0, 0, 0, 0, Hit.CFrame)
									humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
									local pos = Inst("BodyPosition", Hit)
									pos.MaxForce = Vec(huge, huge, huge)
									pos.Position = Hit.Position
									debServ:AddItem(pos, Duration * 10)
								else
									do
										if DamType == "LifeSteal" or DamType == "Compensate-LifeSteal" then
											Humanoid.Health = Humanoid.Health + Damage / 2
											MakeText("+" .. Damage / 2, FONT, 0.4, 0, 0, 0, 0, 255, 0, RootPart.CFrame)
										else
											if DamType == "MomentumStopper" or DamType == "Compensate-MomentumStopper" then
												local vel = Inst("BodyVelocity", Hit)
												vel.Name = "MomentumStopper"
												vel.MaxForce = Vec(huge, huge, huge)
												vel.Velocity = Vec(0, 0, 0)
												debServ:AddItem(vel, 3)
											else
												do
													if DamType == "Knockdown" or DamType == "Compensate-Knockdown" then
														humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
													else
														if DamType == "SkyRocket" or DamType == "Compensate-SkyRocket" then
															humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
															Hit.Velocity = Vec(0, Knockback, 0)
															if rand(1, 4) == 1 then
																local Twista = Inst("BodyAngularVelocity", Hit)
																Twista.MaxTorque = Vec(1000000, 1000000, 1000000)
																Twista.AngularVelocity = Vec(rand(-2, 2) * (Knockback / 2), rand(-2, 2) * (Knockback / 2), rand(-2, 2) * (Knockback / 2))
																debServ:AddItem(Twista, 0.01)
															end
														else
															do
																if DamType == "FreezeStun" or DamType == "Compensate-FreezeStun" then
																	MakeText("Stunned", FONT, 0.3, 0, 0, 0, 255, 170, 0, Hit.CFrame)
																	coroutine.resume(coroutine.create(function()
		
		local ti = 0
		local hHead = Hit.Parent:FindFirstChild("Head")
		if hHead then
			hHead = Hit
			local h = Inst("Part", F2)
			h.Size = Vec(0.2, 0.2, 0.2)
			h.CanCollide = false
			h.Transparency = 1
			h.Position = hHead.Position
			local hWELD = Inst("Weld", h)
			hWELD.Part0 = hHead
			hWELD.Part1 = h
			hWELD.C0 = Cf(0, -4, 0)
			repeat
				ti = ti + 0.1
				for _,p in pairs(humanoid.Parent:GetChildren()) do
					if p:IsA("BasePart") then
						p.Anchored = true
					end
				end
				swait()
				humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
				local p1 = hHead.Position + Vec(rand(-200, 200) / 100, -(hHead.Size.y * 1.5), rand(-200, 200) / 100)
				local p0 = h.Position
				Lightning(p0, p1, 5, 3, Colour1, "Neon", 0.1, 0.2, 0.2)
			until Duration * 12 <= ti
			for _,p in pairs(humanoid.Parent:GetChildren()) do
				if p:IsA("BasePart") then
					p.Anchored = false
				end
			end
			debServ:AddItem(h, 0)
		end
	end
))
																else
																	if DamType == "KnockDownFreezeStun" or DamType == "Compensate-KnockDownFreezeStun" then
																		MakeText("Stunned", FONT, 0.3, 0, 0, 0, 255, 64, 0, Hit.CFrame)
																		coroutine.resume(coroutine.create(function()
		
		local ti = 0
		local scf = nil
		local h = Inst("Part", F2)
		h.Size = Vec(0.2, 0.2, 0.2)
		h.CanCollide = false
		h.Anchored = true
		h.Transparency = 1
		h.Position = Hit.Position
		h.CFrame = h.CFrame * Euler(rad(-90), 0, 0)
		local IL = {Character, Hit.Parent}
		local Ground, Pos = workspace:FindPartOnRayWithIgnoreList(Ray.new(h.Position, h.CFrame.lookVector.Unit * 999), IL, true, true)
		if Ground then
			Hit.CFrame = Cf(Pos) * Euler(rad(-90), 0, 0)
			scf = Cf(Pos) * Euler(rad(-90), 0, 0)
		end
		repeat
			ti = ti + 0.1
			for _,p in pairs(humanoid.Parent:GetChildren()) do
				if p:IsA("BasePart") then
					p.Anchored = true
				end
			end
			Hit.CFrame = scf
			swait()
			humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
		until Duration * 7 <= ti
		for _,p in pairs(humanoid.Parent:GetChildren()) do
			if p:IsA("BasePart") then
				p.Anchored = false
			end
		end
		debServ:AddItem(h, 0)
	end
))
																	end
																end
																if HDrag then
																	humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
																	local pos = Inst("BodyPosition", Hit)
																	pos.MaxForce = Vec(huge, huge, huge)
																	pos.Position = Drag_To_Part.Position
																	local d = Inst("NumberValue", pos)
																	d.Name = "Duration"
																	d.Value = DragDuration
																	table.insert(DragTable, pos)
																end
																do
																	if this_nigga_had_op_health then
																		coroutine.resume(coroutine.create(function()
		
		swait()
		Damage = Damage * 2
		humanoid.Health = humanoid.Health - Damage
		MakeText("-" .. Damage .. "", FONT, 0.4, 0, 0, 0, 0, 0, 91, Hit.CFrame)
	end
))
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
					end
				end
			end
	end
end

	MagniDamage = function(Part, range, isRan, mindam, maxdam, hkb, knock, DType, dur, hd, dd, soe, soid, sopit, sovol)
	
	for _,c in pairs(workspace:GetChildren()) do
		local hum = FindHum(c)
		if hum and hum ~= Humanoid then
			local head = c:FindFirstChild("Head")
			local tor = c:FindFirstChild("Torso")
			local larm = c:FindFirstChild("Left Arm")
			local rarm = c:FindFirstChild("Right Arm")
			local lleg = c:FindFirstChild("Left Leg")
			local rleg = c:FindFirstChild("Right Leg")
			local Dis = range
			local Par = nil
				if head then
					local Mag = (head.Position - Part.Position).magnitude
					if Mag <= Dis then
						Dis = Mag
						Par = head
					end
				end
					if tor then
						local Mag = (tor.Position - Part.Position).magnitude
						if Mag <= Dis then
							Dis = Mag
							Par = tor
						end
					end
						if rarm then
							local Mag = (rarm.Position - Part.Position).magnitude
							if Mag <= Dis then
								Dis = Mag
								Par = rarm
							end
						end
							if larm then
								local Mag = (larm.Position - Part.Position).magnitude
								if Mag <= Dis then
									Dis = Mag
									Par = larm
								end
							end
								if rleg then
									local Mag = (rleg.Position - Part.Position).magnitude
									if Mag <= Dis then
										Dis = Mag
										Par = rleg
									end
								end
										if lleg then
											local Mag = (lleg.Position - Part.Position).magnitude
											if Mag <= Dis then
												Dis = Mag
												Par = lleg
											end
										end
										if Par then
											DamageFunction(Par, isRan, mindam, maxdam, hkb, knock, DType, Part, dur, hd, dd, soe, soid, sopit, sovol)
										end
										-- DECOMPILER ERROR at PC113: LeaveBlock: unexpected jumping out DO_STMT

										-- DECOMPILER ERROR at PC113: LeaveBlock: unexpected jumping out DO_STMT

										-- DECOMPILER ERROR at PC113: LeaveBlock: unexpected jumping out DO_STMT

										-- DECOMPILER ERROR at PC113: LeaveBlock: unexpected jumping out DO_STMT

										-- DECOMPILER ERROR at PC113: LeaveBlock: unexpected jumping out DO_STMT

										-- DECOMPILER ERROR at PC113: LeaveBlock: unexpected jumping out DO_STMT

										-- DECOMPILER ERROR at PC113: LeaveBlock: unexpected jumping out IF_THEN_STMT

										-- DECOMPILER ERROR at PC113: LeaveBlock: unexpected jumping out IF_STMT

									end
	end
end

	rayCast = function(Pos, Dir, Max, Ignore)
	
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end

	local Point = Torso.CFrame * Cf(0, Torso.Size.Y, 0)
	LastPoint = Point
	effect = function(Color, Ref, LP, P1, returnn)
	
	local effectsmsh = Instance.new("CylinderMesh")
	effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
	effectsmsh.Name = "Mesh"
	local effectsg = Instance.new("Part")
	effectsg.formFactor = 3
	effectsg.CanCollide = false
	effectsg.Name = "Eff"
	effectsg.Locked = true
	effectsg.Anchored = true
	effectsg.Size = Vector3.new(0.5, 1, 0.5)
	effectsg.Parent = F2
	effectsmsh.Parent = effectsg
	effectsg.BrickColor = BrickColor.new(Color)
	effectsg.Reflectance = Ref
	local point1 = P1
	local mg = (LP.p - point1.p).magnitude
	effectsg.Size = Vector3.new(0.5, mg, 0.5)
	effectsg.CFrame = Cf((LP.p + point1.p) / 2, point1.p) * CFrame.Angles(math.rad(90), 0, 0)
	effectsmsh.Scale = Vector3.new(0.2, 1, 0.2)
	game:GetService("Debris"):AddItem(effectsg, 2)
	if returnn then
		return effectsg
	end
	coroutine.resume(coroutine.create(function(Part, Mesh)
		
		if not returnn then
			for i = 0, 1, 0.05 do
				swait()
				Part.Transparency = 1 * i
				Mesh.Scale = Vector3.new(0.5 - 0.5 * i, 1, 0.5 - 0.5 * i)
			end
			Part.Parent = nil
		end
	end
), effectsg, effectsmsh)
end

	local CFrameFromTopBack = function(at, top, back)
	
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z, right.x, top.x, back.x, right.y, top.y, back.y, right.z, top.z, back.z)
end

	NoOutline = function(Part)
	
	Part.TopSurface = 10
end

	part = function(parent, reflectance, transparency, brickcolor, name, size, material)
	
	local fp = Inst("Part")
	fp.Parent = parent
	fp.Reflectance = reflectance
	fp.Transparency = transparency
	fp.CanCollide = false
	fp.Locked = true
	fp.BrickColor = brickcolor
	fp.Name = name
	fp.Size = size
	fp.Position = Torso.Position
	NoOutline(fp)
	fp.Material = material
	fp:BreakJoints()
	return fp
end

	mesh = function(Mesh, part, meshtype, meshid, offset, scale)
	
	local mesh = Inst(Mesh)
	mesh.Parent = part
	if Mesh == "SpecialMesh" then
		mesh.MeshType = meshtype
		mesh.MeshId = meshid
	end
	mesh.Offset = offset
	mesh.Scale = scale
	return mesh
end

	MagicBlock = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, Delay)
	
	local prt = part(F2, 0, 0, brickcolor, "Effect", Vec(), material)
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("BlockMesh", prt, "", "", Vec(0, 0, 0), Vec(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	table.insert(Effects, {prt, "Block1", Delay, x3, y3, z3})
end

	MagicBlock2 = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, Delay)
	
	local prt = part(F2, 0, 0, brickcolor, "Effect", Vec(), material)
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("BlockMesh", prt, "", "", Vec(0, 0, 0), Vec(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	table.insert(Effects, {prt, "Disappear", Delay, x3, y3, z3})
end

	MagicSpikeBall = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, Delay)
	
	local prt = part(F2, 0, 0, brickcolor, "Effect", Vec(), material)
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/Asset/?id=9982590", Vec(0, 0, 0), Vec(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	table.insert(Effects, {prt, "Block1", Delay, x3, y3, z3})
end

	MagicCircle = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, Delay)
	
	local prt = part(F2, 0, 0, brickcolor, "Effect", Vec(), material)
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "Sphere", "", Vec(0, 0, 0), Vec(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	table.insert(Effects, {prt, "Cylinder", Delay, x3, y3, z3})
end

	MagicWave = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, Delay)
	
	local prt = part(F2, 0, 0, brickcolor, "Effect", Vec(), material)
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", Vec(0, 0, 0), Vec(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	table.insert(Effects, {prt, "Cylinder", Delay, x3, y3, z3})
end

	MagicWave2 = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, Delay)
	
	local prt = part(F2, 0, 0, brickcolor, "Effect", Vec(), material)
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", Vec(0, 0, 0), Vec(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	table.insert(Effects, {prt, "Wave", Delay, x3, y3, z3})
end

	MagicCylinder = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, Delay)
	
	local prt = part(F2, 0, 0, brickcolor, "Effect", Vec(0.2, 0.2, 0.2), material)
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "Head", "", Vec(0, 0, 0), Vec(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	Effects[#Effects + 1] = {prt, "Cylinder", Delay, x3, y3, z3}
end

	MagicCylinder2 = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, Delay)
	
	local prt = part(F2, 0, 0, brickcolor, "Effect", Vec(0.2, 0.2, 0.2), material)
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("CylinderMesh", prt, "", "", Vec(0, 0, 0), Vec(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	Effects[#Effects + 1] = {prt, "Cylinder", Delay, x3, y3, z3}
end

	MagicBlood = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, Delay)
	
	local prt = part(F2, 0, 0, brickcolor, "Effect", Vec(), material)
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "Sphere", "", Vec(0, 0, 0), Vec(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	table.insert(Effects, {prt, "Blood", Delay, x3, y3, z3})
end

	MagicRing = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, Delay)
	
	local prt = part(F2, 0, 0, brickcolor, "Effect", Vec(), material)
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", Vec(0, 0, 0), Vec(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	table.insert(Effects, {prt, "Cylinder", Delay, x3, y3, z3})
end

	MagicRing2 = function(brickcolor, material, cframe, x1, y1, z1, x3, y3, z3, Delay)
	
	local prt = part(F2, 0, 0, brickcolor, "Effect", Vec(), material)
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=3270017", Vec(0, 0, 0), Vec(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	table.insert(Effects, {prt, "Blood", Delay, x3, y3, z3})
end

	ElecEffect = function(brickCol, Mat, cff, x, y, z)
	
	local prt = part(F2, 0, 0, brickCol, "Part", Vec(1, 1, 1), Mat)
	prt.Anchored = true
	prt.CFrame = cff * Cf(rand(-x, x), rand(-y, y), rand(-z, z))
	prt.CFrame = Cf(prt.Position)
	debServ:AddItem(prt, 2)
	local xval = math.random() / 2
	local yval = math.random() / 2
	local zval = math.random() / 2
	local msh = mesh("BlockMesh", prt, "", "", Vec(0, 0, 0), Vec(xval, yval, zval))
	Effects[#Effects + 1] = {prt, "Elec", 0.1, x, y, z, xval, yval, zval}
end

	Lightning = function(p0, p1, tym, ofs, col, mat, th, tra, last)
	
	local magz = (p0 - p1).magnitude
	local curpos = p0
	local trz = {-ofs, ofs}
	for i = 1, tym do
		local li = Instance.new("Part", F2)
		li.TopSurface = 0
		li.BottomSurface = 0
		li.Anchored = true
		li.Transparency = tra or 0.4
		li.BrickColor = BrickColor.new(col)
		li.Material = mat
		li.Material = "Neon"
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(th, th, magz / tym)
		local ofz = Vector3.new(trz[math.random(1, 2)], trz[math.random(1, 2)], trz[math.random(1, 2)])
		local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
		if tym == i then
			local magz2 = (curpos - p1).magnitude
			li.Size = Vector3.new(th, th, magz2)
			li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
			game:GetService("Debris"):AddItem(li, last)
		else
					li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
					curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
					game:GetService("Debris"):AddItem(li, last)
		end
	end
end

	Triangle = function(a, b, c, tcol, tmat)
	
	local edg1 = (c-a):Dot((b-a).unit)
	local edg2 = (a-b):Dot((c-b).unit)
	local edg3 = (b-c):Dot((a-c).unit)
	if edg1 <= (b - a).magnitude and edg1 >= 0 then
		a = a
	elseif edg2 <= (c - b).magnitude and edg2 >= 0 then
			a = b
		elseif edg3 <= (a - c).magnitude and edg3 >= 0 then
				a = c
			else
				return 
			end
	local len1 = (c-a):Dot((b-a).unit)
local len2 = (b-a).magnitude - len1
local width = (a + (b-a).unit*len1 - c).magnitude
	local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
	local list = {}
	if len1 > 0.01 then
		local w1 = Inst("WedgePart", F2)
		w1.Material = tmat
		w1.BrickColor = BC(tcol)
		w1.Transparency = 0
		w1.Reflectance = 0
		w1.CanCollide = false
		NoOutline(w1)
		local sz = Vec(0.2, width, len1)
		w1.Size = sz
		local sp = Inst("SpecialMesh", w1)
		sp.MeshType = "Wedge"
		sp.Scale = Vec(0, 1, 1) * sz / w1.Size
		w1:BreakJoints()
		w1.Anchored = true
		w1.Transparency = 0.7
		debServ:AddItem(w1, 25)
		table.insert(Effects, {w1, "Disappear", 0.045})
		w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
		table.insert(list, w1)
	end
		if len2 > 0.01 then
			local w2 = Inst("WedgePart", F2)
			w2.Material = tmat
			w2.BrickColor = BC(tcol)
			w2.Transparency = 0
			w2.Reflectance = 0
			w2.CanCollide = false
			NoOutline(w2)
			local sz = Vec(0.2, width, len2)
			w2.Size = sz
			local sp = Inst("SpecialMesh", w2)
			sp.MeshType = "Wedge"
			sp.Scale = Vec(0, 1, 1) * sz / w2.Size
			w2:BreakJoints()
			w2.Anchored = true
			w2.Transparency = 0.7
			debServ:AddItem(w2, 25)
			table.insert(Effects, {w2, "Disappear", 0.045})
			w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
			table.insert(list, w2)
		end
			return unpack(list)
	end

	Bringer = function()
	
	for i,d in pairs(DragTable) do
		if d and d:IsA("BodyPosition") then
			local tem = d:FindFirstChild("Time")
			if not tem then
				tem = Inst("NumberValue", d)
				tem.Name = "Time"
				tem.Value = 0
			end
			local Dur = d:FindFirstChild("Duration")
			if not Dur then
				Dur = Inst("NumberValue", d)
				Dur.Name = "Duration"
				Dur.Value = 1.5
			end
			if tem.Value < Dur.Value then
				tem.Value = tem.Value + 0.1
				d.P = 20000
				d.Position = Drag_To_Part.Position
			else
				debServ:AddItem(tem, 0)
				debServ:AddItem(Dur, 0)
				debServ:AddItem(d, 0)
				table.remove(DragTable, i)
			end
		end
	end
end

	MakeHitBox = function(size, part, customcf, c0, c1)
	
	local hbox = Inst("Part", F2)
	hbox.Transparency = 1
	hbox.Anchored = false
	hbox.CanCollide = false
	hbox.Locked = true
	hbox.CFrame = part.CFrame
	hbox.Size = size
	hbox:BreakJoints()
	local hbw = Inst("Weld", hbox)
	hbw.Part0 = part
	hbw.Part1 = hbox
	if customcf then
		hbw.C0 = c0
		hbw.C1 = c1
	else
		hbw.C0 = Cf(0, -(part.Size.y / 4 + size.y / 4), 0)
	end
	return hbox
end

	HTEB = function()
	
	coroutine.resume(coroutine.create(function()
		
		if #TEBladeP > 0 and TEBEffect ~= nil then
			TEBEffect.Enabled = false
			for _,b in pairs(TEBladeP) do
				if b:IsA("BasePart") then
					b.Transparency = 1
				end
			end
		end
	end
))
end

	FITEB = function(Rate)
	
	coroutine.resume(coroutine.create(function()
		
		if #TEBladeP > 0 and TEBEffect ~= nil then
			TEBEffect.Enabled = true
			for _,b in pairs(TEBladeP) do
				if b:IsA("BasePart") then
					b.Transparency = 1
				end
			end
			for i = 1, 0, -(0.1 * (Rate / 100)) do
				swait()
				for _,b in pairs(TEBladeP) do
					if b:IsA("BasePart") then
						b.Transparency = i
					end
				end
			end
			for _,b in pairs(TEBladeP) do
				if b:IsA("BasePart") then
					b.Transparency = 0
				end
			end
			TEBEffect.Enabled = false
		end
	end
))
end

	AssumeNormalJoints = function()
	
	for i = 0, 1, 0.1 do
		swait()
		FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, rad(90), 0), 0.3)
		FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(90), 0), 0.3)
		FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, rad(-90), 0), 0.3)
		FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-90), 0), 0.3)
		Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, 0, 0), 0.3)
		Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), 0.3)
		FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-90), 0, 0), 0.3)
		FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(rad(-90), 0, 0), 0.3)
		RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), 0.3)
		RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), 0.3)
		LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), 0.3)
		LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), 0.3)
	end
	LeftShoulder.Part0 = Torso
	LeftShoulder.Part1 = LeftArm
	RightShoulder.Part0 = Torso
	RightShoulder.Part1 = RightArm
	FLeftShoulder.Part0 = nil
	FLeftShoulder.Part1 = nil
	FRightShoulder.Part0 = nil
	FRightShoulder.Part1 = nil
	LeftHip.Part0 = Torso
	LeftHip.Part1 = LeftLeg
	RightHip.Part0 = Torso
	RightHip.Part1 = RightLeg
	FLeftHip.Part0 = nil
	FLeftHip.Part1 = nil
	FRightHip.Part0 = nil
	FRightHip.Part1 = nil
	RootJoint.Part0 = RootPart
	RootJoint.Part1 = Torso
	FRootJoint.Part0 = nil
	FRootJoint.Part1 = nil
end

	ClickCombo = function()
	Debounces.Attacking = true
	if not Debounces.HasWep and Debounces.Transformed and Debounces.TEWield and not Debounces.TESWield then
		if Attack_Num == 1 then
			Attack_Num = 2
			for i = 0, 1, 0.1 do
				swait()
				local SwingSpeed = 0.4
				HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(rad(160), 0, 0), SwingSpeed)
				HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
				WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(0.6, 0.5, -1) * Euler(0, 0, rad(90)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(rad(-150), rad(-50), 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-10), 0, rad(-25)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(0, 0, 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(40), 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(40), 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
				RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
				LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
				LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
			end
			LeftHip.Part0 = nil
			LeftHip.Part1 = nil
			RightHip.Part0 = nil
			RightHip.Part1 = nil
			FLeftHip.Part0 = Torso
			FLeftHip.Part1 = LeftLeg
			FLeftHip.C0 = LeftHip.C0
			FLeftHip.C1 = LeftHip.C1
			FRightHip.Part0 = Torso
			FRightHip.Part1 = RightLeg
			FRightHip.C0 = RightHip.C0
			FRightHip.C1 = RightHip.C1
			RootPart.Velocity = RootPart.CFrame.lookVector * 52
			local SlashS = Sound(TEHandle, "http://roblox.com/asset/?id=169445073", 1, 1.8, false)
			debServ:AddItem(SlashS, 2)
			c1 = nil
			c2 = nil
			local hit = TEHit_Box.Touched:connect(function(part)
		DamageFunction(part, false, 0, 600, true, 30, "Compensate", RootPart, 0.2, false, _, true, 153092227, 1.4, 0.4)
	end
)
			for i = 0, 0.6, 0.1 do
				swait()
				local x = TEHit_Box
				c2 = x.CFrame * Cf(0, 0.5, 0)
				if c1 and (x.Position - c1.p).magnitude > 0.1 then
					local h = 6
					local a, b = Triangle(c1 * Cf(0, h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, c2 * Cf(0, h / 2, 0).p, Colour1, "Neon")
					if a then
						debServ:AddItem(a, 1)
					end
					if b then
						debServ:AddItem(b, 1)
					end
					local c, d = Triangle(c2 * Cf(0, h / 2, 0).p, c2 * Cf(0, -h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, Colour1, "Neon")
					if c then
						debServ:AddItem(c, 1)
					end
					if d then
						debServ:AddItem(d, 1)
					end
					c1 = c2
				else
					if not c1 then
							c1 = c2
					end
					end
							local SwingSpeed = 0.5
							HWeld.C0 = clerp(HWeld.C0, Cf(0, -0.96, 0.5) * Euler(rad(-10), 0, 0), SwingSpeed)
							HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
							WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
							WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
							FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(60)), SwingSpeed)
							FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
							FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(80), 0, rad(-30)), SwingSpeed)
							FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
							Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-10), 0, 0), SwingSpeed)
							Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-30), 0), SwingSpeed)
							FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1.5, 0) * Euler(0, rad(-3), 0), SwingSpeed)
							FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
							FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -0.8, 0.1) * Euler(rad(-20), 0, 0), SwingSpeed)
							FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
							FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.6, -0.4) * Euler(rad(-5), 0, 0), SwingSpeed)
							FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
							-- DECOMPILER ERROR at PC844: LeaveBlock: unexpected jumping out DO_STMT

							-- DECOMPILER ERROR at PC844: LeaveBlock: unexpected jumping out IF_ELSE_STMT

							-- DECOMPILER ERROR at PC844: LeaveBlock: unexpected jumping out IF_STMT

						end
			hit:disconnect()
			LeftHip.Part0 = Torso
			LeftHip.Part1 = LeftLeg
			RightHip.Part0 = Torso
			RightHip.Part1 = RightLeg
			FLeftHip.Part0 = nil
			FLeftHip.Part1 = nil
			LeftHip.C0 = FLeftHip.C0
			LeftHip.C1 = FLeftHip.C1
			FRightHip.Part0 = nil
			FRightHip.Part1 = nil
			RightHip.C0 = FRightHip.C0
			RightHip.C1 = FRightHip.C1
		elseif Attack_Num == 2 then
					Attack_Num = 3
					for i = 0, 1, 0.1 do
						swait()
						local SwingSpeed = 0.4
						HWeld.C0 = clerp(HWeld.C0, Cf(0, -0.95, 0.5) * Euler(rad(180), 0, 0), SwingSpeed)
						HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
						WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
						WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
						FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, -0.4) * Euler(rad(170), 0, 0), SwingSpeed)
						FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(40), 0), SwingSpeed)
						FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.45, 0.8, -0.95) * Euler(rad(150), 0, rad(40)), SwingSpeed)
						FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
						Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(0, 0, 0), SwingSpeed)
						Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-40), 0), SwingSpeed)
						FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-40), 0), SwingSpeed)
						FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
						RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
						RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
						LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
						LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
					end
					LeftHip.Part0 = nil
					LeftHip.Part1 = nil
					RightHip.Part0 = nil
					RightHip.Part1 = nil
					FLeftHip.Part0 = Torso
					FLeftHip.Part1 = LeftLeg
					FLeftHip.C0 = LeftHip.C0
					FLeftHip.C1 = LeftHip.C1
					FRightHip.Part0 = Torso
					FRightHip.Part1 = RightLeg
					FRightHip.C0 = RightHip.C0
					FRightHip.C1 = RightHip.C1
					local SlashS = Sound(TEHandle, "http://roblox.com/asset/?id=169445092", 1, 1, false)
					debServ:AddItem(SlashS, 2)
					c1 = nil
					c2 = nil
					local hit = TEHit_Box.Touched:connect(function(part)
		DamageFunction(part, false, 0, 1000, true, 30, "Compensate", RootPart, 0.2, false, _, true, 153092227, 1.4, 0.4)
	end
)
					for i = 0, 0.9, 0.1 do
						swait()
						local x = TEHit_Box
						c2 = x.CFrame * Cf(0, 0.5, 0)
						if c1 and (x.Position - c1.p).magnitude > 0.1 then
							local h = 6
							local a, b = Triangle(c1 * Cf(0, h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, c2 * Cf(0, h / 2, 0).p, Colour1, "Neon")
							if a then
								debServ:AddItem(a, 1)
							end
							if b then
								debServ:AddItem(b, 1)
							end
							local c, d = Triangle(c2 * Cf(0, h / 2, 0).p, c2 * Cf(0, -h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, Colour1, "Neon")
							if c then
								debServ:AddItem(c, 1)
							end
							if d then
								debServ:AddItem(d, 1)
							end
							c1 = c2
						elseif not c1 then
									c1 = c2
								end
									local SwingSpeed = 0.5
									HWeld.C0 = clerp(HWeld.C0, Cf(0, -0.8, 0.6) * Euler(rad(146), 0, rad(-40)), SwingSpeed)
									HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, rad(-5), 0), SwingSpeed)
									WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
									WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
									FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, -0.3) * Euler(0, rad(-65), rad(-40)), SwingSpeed)
									FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(rad(-20), 0, 0), SwingSpeed)
									FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -0.5) * Euler(rad(20), 0, rad(60)), SwingSpeed)
									FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(65), 0), SwingSpeed)
									Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(0, 0, 0), SwingSpeed)
									Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(rad(20), rad(60), 0), SwingSpeed)
									FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -2.2, 0) * Euler(0, rad(60), 0), SwingSpeed)
									FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
									FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1.3, 0.1) * Euler(rad(-80), 0, 0), SwingSpeed)
									FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
									FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.1, -0.6) * Euler(rad(-10), 0, 0), SwingSpeed)
									FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
									-- DECOMPILER ERROR at PC1710: LeaveBlock: unexpected jumping out DO_STMT

									-- DECOMPILER ERROR at PC1710: LeaveBlock: unexpected jumping out IF_ELSE_STMT

									-- DECOMPILER ERROR at PC1710: LeaveBlock: unexpected jumping out IF_STMT

								end
					hit:disconnect()
					LeftHip.Part0 = Torso
					LeftHip.Part1 = LeftLeg
					RightHip.Part0 = Torso
					RightHip.Part1 = RightLeg
					FLeftHip.Part0 = nil
					FLeftHip.Part1 = nil
					LeftHip.C0 = FLeftHip.C0
					LeftHip.C1 = FLeftHip.C1
					FRightHip.Part0 = nil
					FRightHip.Part1 = nil
					RightHip.C0 = FRightHip.C0
					RightHip.C1 = FRightHip.C1
				elseif Attack_Num == 3 then
							Attack_Num = 1
							for i = 0, 1, 0.1 do
								swait()
								local SwingSpeed = 0.2
								WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0, -0.1, 0) * Euler(rad(90), rad(180), 0), SwingSpeed)
								WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
								HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
								HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
								FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(90)), SwingSpeed)
								FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
								FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(80), 0, rad(-60)), SwingSpeed)
								FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
								Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-10), 0, 0), SwingSpeed)
								Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-60), 0), SwingSpeed)
								FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1.4, 0) * Euler(0, rad(-60), 0), SwingSpeed)
								FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
								RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -0.6, 0) * Euler(rad(-4), rad(80), 0), SwingSpeed)
								RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
								LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -0.6, 0.14) * Euler(rad(-6), rad(-75), 0), SwingSpeed)
								LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
							end
							RootPart.Velocity = RootPart.CFrame.lookVector * 50
							local hit = TEHit_Box.Touched:connect(function(part)
		DamageFunction(part, false, 0, 500, true, 50, "Compensate", RootPart, 0.2, false, _, true, 153092227, 1.4, 0.4)
	end
)
							local SlashS = Sound(TEHandle, "http://roblox.com/asset/?id=169445073", 1, 1, false)
							debServ:AddItem(SlashS, 2)
							c1 = nil
							c2 = nil
							for i = 0, 0.9, 0.1 do
								swait()
								local x = TEHit_Box
								c2 = x.CFrame * Cf(0, 0.5, 0)
								if c1 and (x.Position - c1.p).magnitude > 0.1 then
									local h = 6
									local a, b = Triangle(c1 * Cf(0, h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, c2 * Cf(0, h / 2, 0).p, Colour1, "Neon")
									if a then
										debServ:AddItem(a, 1)
									end
									if b then
										debServ:AddItem(b, 1)
									end
									local c, d = Triangle(c2 * Cf(0, h / 2, 0).p, c2 * Cf(0, -h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, Colour1, "Neon")
									if c then
										debServ:AddItem(c, 1)
									end
									if d then
										debServ:AddItem(d, 1)
									end
									c1 = c2
								elseif not c1 then
											c1 = c2
											end
											local SwingSpeed = 0.5
											WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0, -0.1, 0) * Euler(rad(90), rad(180), 0), SwingSpeed)
											WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
											HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
											HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
											FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1, 0.5, -0.7) * Euler(0, rad(150), rad(90)), SwingSpeed)
											FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
											FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-5), 0, rad(-10)), SwingSpeed)
											FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
											Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-10), 0, 0), SwingSpeed)
											Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(40), 0), SwingSpeed)
											FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1.4, 0) * Euler(0, rad(40), 0), SwingSpeed)
											FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
											RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -0.6, 0) * Euler(rad(-4), rad(80), 0), SwingSpeed)
											RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
											LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -0.6, 0.14) * Euler(rad(-6), rad(-75), 0), SwingSpeed)
											LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
											-- DECOMPILER ERROR at PC2548: LeaveBlock: unexpected jumping out DO_STMT

											-- DECOMPILER ERROR at PC2548: LeaveBlock: unexpected jumping out IF_ELSE_STMT

											-- DECOMPILER ERROR at PC2548: LeaveBlock: unexpected jumping out IF_STMT

										end
							
		hit:disconnect()
		end
		end
							if Debounces.Transformed and not Debounces.TEWield and Debounces.TESWield then
								if Attack_Num == 1 then
									for i = 0, 0.3, 0.1 do
										swait()
										local SwingSpeed = 0.6
										MagicCircle(BC(Colour2), "Neon", RightArm.CFrame * Cf(0, 0, 0), 0, 0, 0, 2.5, 2.5, 2.5, 0.1)
										MagicBlock(BC(Colour1), "Neon", RightArm.CFrame * Cf(0, 0, 0), 0, 0, 0, 2.5, 2.5, 2.5, 0.1)
										SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(90), 0, 0), SwingSpeed)
										SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
										HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
										HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
										FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(90), 0, rad(6)), SwingSpeed)
										FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
										FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-8), 0, rad(-60)), SwingSpeed)
										FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
										Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(25), 0), SwingSpeed)
										Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
										FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-30), 0), SwingSpeed)
										FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
										RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
										RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
										LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
										LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
									end
									RootPart.Velocity = RootPart.CFrame.lookVector * 60
									for i = 0, 0.2, 0.1 do
										swait()
										MagicCircle(BC(Colour2), "Neon", RightArm.CFrame * Cf(0, 0, 0), 0, 0, 0, 2.5, 2.5, 2.5, 0.1)
										MagicBlock(BC(Colour1), "Neon", RightArm.CFrame * Cf(0, 0, 0), 0, 0, 0, 2.5, 2.5, 2.5, 0.1)
										MagniDamage(Holder, 7, false, 0, 8, true, rand(-1, 1) * 60, "Compensate-SkyRocket", 0.1, false, 0, true, "386946017", rand(0.8, 1.2), 0.4)
										local SwingSpeed = 0.7
										SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(90), 0, 0), SwingSpeed)
										SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
										HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
										HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
										FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(90), 0, rad(60)), SwingSpeed)
										FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
										FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-8), 0, rad(-10)), SwingSpeed)
										FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
										Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(-55), 0), SwingSpeed)
										Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
										FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(60), 0), SwingSpeed)
										FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
										RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
										RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
										LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
										LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
									end
									Attack_Num = 2
									MagicCircle(BC(Colour2), "Neon", RightArm.CFrame * Cf(0, -1.2, 0), 0, 0, 0, 6, 6, 6, 0.07)
									MagicBlock(BC(Colour1), "Neon", RightArm.CFrame * Cf(0, -1.2, 0), 0, 0, 0, 6, 6, 6, 0.07)
								elseif Attack_Num == 2 then
										Attack_Num = 3
										LeftHip.Part0 = nil
										LeftHip.Part1 = nil
										RightHip.Part0 = nil
										RightHip.Part1 = nil
										FLeftHip.Part0 = Torso
										FLeftHip.Part1 = LeftLeg
										FLeftHip.C0 = LeftHip.C0
										FLeftHip.C1 = LeftHip.C1
										FRightHip.Part0 = Torso
										FRightHip.Part1 = RightLeg
										FRightHip.C0 = RightHip.C0
										FRightHip.C1 = RightHip.C1
										for i = 0, 0.3, 0.1 do
											swait()
											local SwingSpeed = 0.6
											MagicCircle(BC(Colour2), "Neon", LeftLeg.CFrame, 0, 0, 0, 2.1, 2.1, 2.1, 0.1)
											MagicBlock(BC(Colour1), "Neon", LeftLeg.CFrame, 0, 0, 0, 2.1, 2.1, 2.1, 0.1)
											SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(90), 0, 0), SwingSpeed)
											SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
											HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
											HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
											MagniDamage(LeftLeg, 10, false, 0, 2, true, -20, "Compensate", 0.1, false, 0, false, _, "", "")
											FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-10), 0, rad(6)), SwingSpeed)
											FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
											FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-10), 0, rad(-10)), SwingSpeed)
											FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
											Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, 0, 0), SwingSpeed)
											Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
											FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-30), 0, 0), SwingSpeed)
											FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
											FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(rad(30), rad(90), 0), SwingSpeed)
											FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
											FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(rad(-40), rad(-90), 0), SwingSpeed)
											FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
										end
										RootPart.Velocity = RootPart.CFrame.lookVector * 60
										for i = 0, 0.4, 0.1 do
											swait()
											local SwingSpeed = 0.5
											MagicCircle(BC(Colour2), "Neon", LeftLeg.CFrame, 0, 0, 0, 2.1, 2.1, 2.1, 0.1)
											MagicBlock(BC(Colour1), "Neon", LeftLeg.CFrame, 0, 0, 0, 2.1, 2.1, 2.1, 0.1)
											MagniDamage(LeftLeg, 7, false, 0, 8, true, 90, "Compensate-SkyRocket", 0.1, false, 0, false, _, "", "")
											SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(96), 0, 0), SwingSpeed)
											SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
											HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
											HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
											FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-10), 0, rad(6)), SwingSpeed)
											FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
											FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-20), 0, rad(-12)), SwingSpeed)
											FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
											Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, 0, 0), SwingSpeed)
											Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
											FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(20), 0, 0), SwingSpeed)
											FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
											FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-20), rad(90), 0), SwingSpeed)
											FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
											FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(rad(80), rad(-90), 0), SwingSpeed)
											FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
										end
										MagicCircle(BC(Colour2), "Neon", LeftLeg.CFrame, 0, 0, 0, 7, 7, 7, 0.1)
										MagicBlock(BC(Colour1), "Neon", LeftLeg.CFrame, 0, 0, 0, 7, 7, 7, 0.1)
										MagniDamage(LeftLeg, 12, false, 0, 12, true, 30, "Compensate", 0.1, false, 0, false, _, "", "")
										LeftHip.Part0 = Torso
										LeftHip.Part1 = LeftLeg
										RightHip.Part0 = Torso
										RightHip.Part1 = RightLeg
										FLeftHip.Part0 = nil
										FLeftHip.Part1 = nil
										LeftHip.C0 = FLeftHip.C0
										LeftHip.C1 = FLeftHip.C1
										FRightHip.Part0 = nil
										FRightHip.Part1 = nil
										RightHip.C0 = FRightHip.C0
										RightHip.C1 = FRightHip.C1
									elseif Attack_Num == 3 then
											Attack_Num = 1
											LeftHip.Part0 = nil
											LeftHip.Part1 = nil
											RightHip.Part0 = nil
											RightHip.Part1 = nil
											FLeftHip.Part0 = Torso
											FLeftHip.Part1 = LeftLeg
											FLeftHip.C0 = LeftHip.C0
											FLeftHip.C1 = LeftHip.C1
											FRightHip.Part0 = Torso
											FRightHip.Part1 = RightLeg
											FRightHip.C0 = RightHip.C0
											FRightHip.C1 = RightHip.C1
											Humanoid.WalkSpeed = 3
											for i = 0, 1.2, 0.1 do
												swait()
												local SwingSpeed = 0.2
												SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(100), 0, 0), SwingSpeed)
												SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
												HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
												HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
												FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.1, 0.325, -1.27) * Euler(rad(60), 0, rad(-25)), SwingSpeed)
												FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-90), 0), SwingSpeed)
												FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.6, 0.5, -0.4) * Euler(rad(8), rad(-50), 0), SwingSpeed)
												FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
												Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(13), rad(-60), 0), SwingSpeed)
												Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
												FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1.6, 0) * Euler(rad(-17), rad(70), 0), SwingSpeed)
												FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
												FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, 0, -0.4) * Euler(rad(-6), 0, rad(17)), SwingSpeed)
												FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
												FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.95, 0.1) * Euler(rad(-40), 0, rad(14)), SwingSpeed)
												FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
											end
											WepWeld3.Parent = nil
											WepWeld3.Part0 = Holder
											WepWeld3.Part1 = TEHandle
											WepWeld3.C0 = Holder.CFrame:inverse() * Cf(Holder.Position)
											WepWeld3.C1 = TEHandle.CFrame:inverse() * Cf(Holder.Position)
											WepWeld3.Parent = TEHandle
											FITEB(800)
											Debounces.DisableJump = true
											local SlashS = Sound(TEHandle, "http://www.roblox.com/asset/?id=161006195", 1, 1.5, false)
											debServ:AddItem(SlashS, 6)
											local hit = (TEHit_Box.Touched:connect(function(part)
		
		DamageFunction(part, false, 0, 333, true, 10, "Compensate-FreezeStun", RootPart, 0.4, false, _, false, _, "", "")
	end
))
											c1 = nil
											c2 = nil
											for i = 0, 1.5, 0.1 do
												swait()
												local x = TEHit_Box
												c2 = x.CFrame * Cf(0, 0.5, 0)
												if c1 and (x.Position - c1.p).magnitude > 0.1 then
													local h = 6
													local a, b = Triangle(c1 * Cf(0, h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, c2 * Cf(0, h / 2, 0).p, Colour1, "Neon")
													if a then
														debServ:AddItem(a, 1)
													end
													if b then
														debServ:AddItem(b, 1)
													end
													local c, d = Triangle(c2 * Cf(0, h / 2, 0).p, c2 * Cf(0, -h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, Colour1, "Neon")
													if c then
														debServ:AddItem(c, 1)
													end
													if d then
														debServ:AddItem(d, 1)
													end
													c1 = c2
												elseif not c1 then
															c1 = c2
														end
															local SwingSpeed = 0.5
															if i < 0.5 then
																RootPart.Velocity = RootPart.CFrame.lookVector * 220
															else
																RootPart.Velocity = Vec(0, 0, 0)
																Humanoid.WalkSpeed = 0
															end
															WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0, 0, 0) * Euler(rad(-90), 0, 0), SwingSpeed)
															WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
															SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(100), 0, 0), SwingSpeed)
															SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
															HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
															HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
															FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(90)), SwingSpeed)
															FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(rad(40), rad(12), 0), SwingSpeed)
															FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.6, 0.6, 0) * Euler(rad(-10), 0, rad(-15)), SwingSpeed)
															FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
															Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(30), 0), SwingSpeed)
															Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
															FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1.3, 0) * Euler(rad(-15), rad(-30), 0), SwingSpeed)
															FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
															FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -0.7, 0) * Euler(rad(-20), rad(-10), 0), SwingSpeed)
															FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
															FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.7, 0.2) * Euler(rad(10), rad(30), rad(-3)), SwingSpeed)
															FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
															-- DECOMPILER ERROR at PC5148: LeaveBlock: unexpected jumping out DO_STMT

															-- DECOMPILER ERROR at PC5148: LeaveBlock: unexpected jumping out IF_ELSE_STMT

															-- DECOMPILER ERROR at PC5148: LeaveBlock: unexpected jumping out IF_STMT

														end
											HTEB()
											for i = 0, 0.3, 0.1 do
												swait()
												local SwingSpeed = 0.6
												WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
												WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
												SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(100), 0, 0), SwingSpeed)
												SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
												HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
												HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
												FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.1, 0.325, -1.27) * Euler(rad(60), 0, rad(-25)), SwingSpeed)
												FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-90), 0), SwingSpeed)
												FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.6, 0.5, -0.4) * Euler(rad(8), rad(-50), 0), SwingSpeed)
												FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
												Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(13), rad(-60), 0), SwingSpeed)
												Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
												FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1.6, 0) * Euler(rad(-17), rad(70), 0), SwingSpeed)
												FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
												FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, 0, -0.4) * Euler(rad(-6), 0, rad(17)), SwingSpeed)
												FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
												FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.95, 0.1) * Euler(rad(-40), 0, rad(14)), SwingSpeed)
												FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
											end
											local Sheath = Sound(TESHandle, "rbxasset://sounds\\unsheath.wav", 1, 1, false)
											debServ:AddItem(Sheath, 6)
											hit:disconnect()
											Debounces.DisableJump = false
											Humanoid.WalkSpeed = CurrentSpeed
											WepWeld3.Part0 = TESHandle
											WepWeld3.Part1 = TEHandle
											WepWeld3.C0 = Cf(0, 0, 0)
											WepWeld3.C1 = Cf(0, 3, 0) * Euler(0, rad(180), 0)
											LeftHip.Part0 = Torso
											LeftHip.Part1 = LeftLeg
											RightHip.Part0 = Torso
											RightHip.Part1 = RightLeg
											FLeftHip.Part0 = nil
											FLeftHip.Part1 = nil
											LeftHip.C0 = FLeftHip.C0
											LeftHip.C1 = FLeftHip.C1
											FRightHip.Part0 = nil
											FRightHip.Part1 = nil
											RightHip.C0 = FRightHip.C0
											RightHip.C1 = FRightHip.C1
										end
end
								if Debounces.Transformed and not Debounces.TEWield and not Debounces.TESWield then
									for i = 0, 0.15, 0.1 do
										swait()
										local SwingSpeed = 0.8
										MagicCircle(BC(Colour2), "Neon", RightArm.CFrame * Cf(0, 0, 0), 0, 0, 0, 2.5, 2.5, 2.5, 0.1)
										MagicBlock(BC(Colour1), "Neon", RightArm.CFrame * Cf(0, 0, 0), 0, 0, 0, 2.5, 2.5, 2.5, 0.1)
										MagniDamage(Holder, 3, false, 0, 3, false, 0, "Compensate", 0, false, 0, false, _, "", "")
										FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(90), 0, rad(6)), SwingSpeed)
										FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
										FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-8), 0, rad(-60)), SwingSpeed)
										FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
										Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(25), 0), SwingSpeed)
										Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
										FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-30), 0), SwingSpeed)
										FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
										RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
										RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
										LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
										LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
									end
									RootPart.Velocity = RootPart.CFrame.lookVector * 60
									for i = 0, 0.15, 0.1 do
										swait()
										MagicCircle(BC(Colour2), "Neon", RightArm.CFrame * Cf(0, 0, 0), 0, 0, 0, 2.5, 2.5, 2.5, 0.1)
										MagicBlock(BC(Colour1), "Neon", RightArm.CFrame * Cf(0, 0, 0), 0, 0, 0, 2.5, 2.5, 2.5, 0.1)
										MagniDamage(Holder, 8, false, 0, 10, true, rand(-1, 1) * 30, "Compensate-SkyRocket", 0.1, false, 0, true, "153092296", 1, 1)
										local SwingSpeed = 0.8
										FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(90), 0, rad(60)), SwingSpeed)
										FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
										FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-8), 0, rad(-10)), SwingSpeed)
										FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
										Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(-55), 0), SwingSpeed)
										Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
										FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(60), 0), SwingSpeed)
										FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
										RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
										RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
										LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
										LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
									end
									MagicCircle(BC(Colour2), "Neon", RightArm.CFrame * Cf(0, -1.2, 0), 0, 0, 0, 6, 6, 6, 0.07)
									MagicBlock(BC(Colour1), "Neon", RightArm.CFrame * Cf(0, -1.2, 0), 0, 0, 0, 6, 6, 6, 0.07)
								end
								if not Debounces.HasWep and not Debounces.Transformed then
									if Attack_Num == 1 then
										Attack_Num = 2
										local HBox = MakeHitBox(Vec(1.6, 1.6, 1.6), RightArm, false, "", "")
										local hit = HBox.Touched:connect(function(part)
		DamageFunction(part, true, 6, 7, true, 5, "Normal", RootPart, 0.8, false, _, false, _, "", "")
	end
)
										for i = 0, 0.4, 0.1 do
											swait()
											FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(0.85, 0.45, -1) * Euler(rad(60), 0, rad(-80)), 0.3)
											FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-20), 0), 0.3)
											FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.4, 0.3, -0.3) * Euler(rad(90), 0, rad(-80)), 0.3)
											FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(20), 0), 0.3)
											Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-20), rad(80), 0), 0.3)
											Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0.1) * Euler(0, 0, 0), 0.3)
											FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-80), 0), 0.3)
											FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), 0.3)
											RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), 0.3)
											RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), 0.3)
											LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), 0.3)
											LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), 0.3)
										end
										for i = 0, 0.7, 0.1 do
											swait()
											FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(90), 0, rad(80)), 0.5)
											FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-20), 0), 0.5)
											FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.5, 0.3, -0.8) * Euler(rad(90), 0, rad(80)), 0.5)
											FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(20), 0), 0.5)
											Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(0), rad(-80), 0), 0.5)
											Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0.1) * Euler(0, 0, 0), 0.5)
											FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(80), 0), 0.5)
											FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), 0.5)
											RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), 0.5)
											RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), 0.5)
											LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), 0.5)
											LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), 0.5)
										end
										debServ:AddItem(HBox, 0)
										hit:disconnect()
									elseif Attack_Num == 2 then
												Attack_Num = 3
												local HBox = MakeHitBox(Vec(1.6, 1.6, 1.6), LeftArm, false, "", "")
												local hit = HBox.Touched:connect(function(part)
		
		DamageFunction(part, true, 6, 7, true, 5, "Normal", RootPart, 0.8, false, _, false, _, "", "")
	end
)
												for i = 0, 0.4, 0.1 do
													swait()
													FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(90), 0, rad(80)), 0.3)
													FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-20), 0), 0.3)
													FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.5, 0.3, -0.8) * Euler(rad(90), 0, rad(80)), 0.3)
													FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(20), 0), 0.3)
													Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(0), rad(-80), 0), 0.3)
													Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0.1) * Euler(0, 0, 0), 0.3)
													FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(80), 0), 0.3)
													FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), 0.3)
													RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), 0.3)
													RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), 0.3)
													LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), 0.3)
													LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), 0.3)
												end
												for i = 0, 0.7, 0.1 do
													swait()
													FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(0.85, 0.45, -1) * Euler(rad(60), 0, rad(-80)), 0.5)
													FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-20), 0), 0.5)
													FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.4, 0.3, -0.3) * Euler(rad(90), 0, rad(-80)), 0.5)
													FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(20), 0), 0.5)
													Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-20), rad(80), 0), 0.5)
													Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0.1) * Euler(0, 0, 0), 0.5)
													FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-80), 0), 0.5)
													FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), 0.5)
													RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), 0.5)
													RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), 0.5)
													LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), 0.5)
													LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), 0.5)
												end
												debServ:AddItem(HBox, 0)
												hit:disconnect()
											elseif Attack_Num == 3 then
														Attack_Num = 4
														local HBox = MakeHitBox(Vec(2, 2, 2), LeftLeg, false, "", "")
														local hit = HBox.Touched:connect(function(part)
		
		DamageFunction(part, true, 9, 10, false, 70, "SkyRocket", RootPart, 0.8, false, _, false, _, "", "")
	end
)
														LeftHip.Part0 = nil
														LeftHip.Part1 = nil
														RightHip.Part0 = nil
														RightHip.Part1 = nil
														FLeftHip.Part0 = Torso
														FLeftHip.Part1 = LeftLeg
														FLeftHip.C0 = LeftHip.C0
														FLeftHip.C1 = LeftHip.C1
														FRightHip.Part0 = Torso
														FRightHip.Part1 = RightLeg
														FRightHip.C0 = RightHip.C0
														FRightHip.C1 = RightHip.C1
														for i = 0, 0.8, 0.1 do
															swait()
															FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-60), 0, rad(8)), 0.3)
															FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), 0.3)
															FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-60), 0, rad(-8)), 0.3)
															FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), 0.3)
															Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, 0, 0), 0.3)
															Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), 0.3)
															FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-30), 0, 0), 0.3)
															FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), 0.3)
															FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(rad(30), rad(90), 0), 0.3)
															FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), 0.3)
															FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(rad(-40), rad(-90), 0), 0.3)
															FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), 0.3)
														end
														RootPart.Velocity = RootPart.CFrame.lookVector * 60
														for i = 0, 1.4, 0.1 do
															swait()
															FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(0), 0, rad(14)), 0.3)
															FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), 0.3)
															FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -1) * Euler(rad(80), 0, rad(60)), 0.4)
															FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), 0.3)
															Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-20), 0, 0), 0.3)
															Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), 0.3)
															FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(20), 0, 0), 0.3)
															FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), 0.3)
															FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-20), rad(90), 0), 0.3)
															FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), 0.3)
															FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(rad(80), rad(-90), 0), 0.3)
															FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), 0.3)
														end
														LeftHip.Part0 = Torso
														LeftHip.Part1 = LeftLeg
														RightHip.Part0 = Torso
														RightHip.Part1 = RightLeg
														FLeftHip.Part0 = nil
														FLeftHip.Part1 = nil
														LeftHip.C0 = FLeftHip.C0
														LeftHip.C1 = FLeftHip.C1
														FRightHip.Part0 = nil
														FRightHip.Part1 = nil
														RightHip.C0 = FRightHip.C0
														RightHip.C1 = FRightHip.C1
														debServ:AddItem(HBox, 0)
														hit:disconnect()
													elseif Attack_Num == 4 then
																Attack_Num = 1
																local HBox = MakeHitBox(Vec(2.4, 2.4, 2.4), RightLeg, false, "", "")
																local hit = HBox.Touched:connect(function(part)
		
		DamageFunction(part, true, 11, 12, true, 50, "Knockdown", RootPart, 1.5, false, _, false, _, "", "")
	end
)
																LeftHip.Part0 = nil
																LeftHip.Part1 = nil
																RightHip.Part0 = nil
																RightHip.Part1 = nil
																FLeftHip.Part0 = Torso
																FLeftHip.Part1 = LeftLeg
																FLeftHip.C0 = LeftHip.C0
																FLeftHip.C1 = LeftHip.C1
																FRightHip.Part0 = Torso
																FRightHip.Part1 = RightLeg
																FRightHip.C0 = RightHip.C0
																FRightHip.C1 = RightHip.C1
																for i = 0, 0.5, 0.1 do
																	swait()
																	FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(0.85, 0.45, -1) * Euler(rad(60), 0, rad(-80)), 0.3)
																	FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-20), 0), 0.3)
																	FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.4, 0.3, -0.2) * Euler(rad(120), 0, rad(-80)), 0.3)
																	FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(20), 0), 0.3)
																	Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-20), rad(60), 0), 0.3)
																	Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0.1) * Euler(0, 0, 0), 0.3)
																	FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-80), 0), 0.3)
																	FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), 0.3)
																	FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, -0.6) * Euler(0, rad(120), 0), 0.3)
																	FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(rad(10), rad(90), 0), 0.3)
																	FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0.4) * Euler(0, rad(-50), 0), 0.3)
																	FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(rad(10), rad(-90), 0), 0.3)
																end
																Humanoid.WalkSpeed = 0
																RootPart.Velocity = RootPart.CFrame.lookVector * 100
																for i = 0, 1.6, 0.1 do
																	swait()
																	FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(60), 0, rad(16)), 0.3)
																	FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), 0.3)
																	FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(30), 0, rad(-60)), 0.4)
																	FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(30), 0), 0.3)
																	Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(-60), 0), 0.3)
																	Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), 0.3)
																	FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -0.6, 0) * Euler(rad(60), rad(-250), 0), 0.3)
																	FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), 0.3)
																	FRightHip.C0 = clerp(FRightHip.C0, Cf(1.4, -0.6, 0) * Euler(rad(10), rad(0), rad(30)), 0.3)
																	FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(0), 0), 0.3)
																	FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1, -0.4, 0) * Euler(rad(30), 0, rad(-60)), 0.3)
																	FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(20), 0), 0.3)
																end
																Humanoid.WalkSpeed = CurrentSpeed
																LeftHip.Part0 = Torso
																LeftHip.Part1 = LeftLeg
																RightHip.Part0 = Torso
																RightHip.Part1 = RightLeg
																FLeftHip.Part0 = nil
																FLeftHip.Part1 = nil
																LeftHip.C0 = FLeftHip.C0
																LeftHip.C1 = FLeftHip.C1
																FRightHip.Part0 = nil
																FRightHip.Part1 = nil
																RightHip.C0 = FRightHip.C0
																RightHip.C1 = FRightHip.C1
																debServ:AddItem(HBox, 0)
																hit:disconnect()
									end
									end
																if Debounces.HasWep and not Debounces.Transformed and not Debounces.DuelWielding then
																	if Attack_Num == 1 then
																		Attack_Num = 2
																		for i = 0, 0.2, 0.1 do
																			swait()
																			local SwingSpeed = 0.6
																			HWeld.C0 = clerp(HWeld.C0, Cf(0, -0.96, 0.5) * Euler(rad(-10), 0, 0), SwingSpeed)
																			HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
																			WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
																			WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), SwingSpeed)
																			FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(80)), SwingSpeed)
																			FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
																			FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -1) * Euler(rad(80), 0, rad(60)), SwingSpeed)
																			FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
																			Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-10), 0, 0), SwingSpeed)
																			Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-40), 0), SwingSpeed)
																			FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-40), 0), SwingSpeed)
																			FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
																			RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
																			RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
																			LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
																			LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
																		end
																		local hit = (Hit_Box.Touched:connect(function(part)
		
		DamageFunction(part, true, 7, 8, true, 10, "Compensate", RootPart, 0.12, false, _, false, _, "", "")
	end
))
																		c1 = nil
																		c2 = nil
																		for i = 0, 0.5, 0.1 do
																			swait()
																			local x = Hit_Box
																			c2 = x.CFrame * Cf(0, 0.5, 0)
																			if c1 and (x.Position - c1.p).magnitude > 0.1 then
																				local h = 5
																				local a, b = Triangle(c1 * Cf(0, h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, c2 * Cf(0, h / 2, 0).p, Colour1, "Neon")
																				if a then
																					debServ:AddItem(a, 1)
																				end
																				if b then
																					debServ:AddItem(b, 1)
																				end
																				local c, d = Triangle(c2 * Cf(0, h / 2, 0).p, c2 * Cf(0, -h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, Colour1, "Neon")
																				if c then
																					debServ:AddItem(c, 1)
																				end
																				if d then
																					debServ:AddItem(d, 1)
																				end
																				c1 = c2
																			elseif not c1 then
																						c1 = c2
																					end
																						local SwingSpeed = 0.4
																						HWeld.C0 = clerp(HWeld.C0, Cf(0, -0.98, -0.4) * Euler(rad(20), 0, 0), SwingSpeed)
																						HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
																						WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
																						WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), SwingSpeed)
																						FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(0.6, 0.5, -1) * Euler(0, 0, rad(90)), SwingSpeed)
																						FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(rad(-160), 0, 0), SwingSpeed)
																						FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-10), 0, rad(-25)), SwingSpeed)
																						FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
																						Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(rad(-17), 0, 0), SwingSpeed)
																						Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(30), 0), SwingSpeed)
																						FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(30), 0), SwingSpeed)
																						FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
																						RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
																						RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
																						LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
																						LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
																						-- DECOMPILER ERROR at PC9336: LeaveBlock: unexpected jumping out DO_STMT

																						-- DECOMPILER ERROR at PC9336: LeaveBlock: unexpected jumping out IF_ELSE_STMT

																						-- DECOMPILER ERROR at PC9336: LeaveBlock: unexpected jumping out IF_STMT

																					end
																		hit:disconnect()
																	elseif Attack_Num == 2 then
																				Attack_Num = 3
																				for i = 0, 0.6, 0.1 do
																					swait()
																					local SwingSpeed = 0.5
																					HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(rad(160), 0, 0), SwingSpeed)
																					HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
																					WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
																					WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
																					FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(0.6, 0.5, -1) * Euler(0, 0, rad(90)), SwingSpeed)
																					FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(rad(-150), rad(-50), 0), SwingSpeed)
																					FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-10), 0, rad(-25)), SwingSpeed)
																					FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
																					Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(0, 0, 0), SwingSpeed)
																					Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(40), 0), SwingSpeed)
																					FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(40), 0), SwingSpeed)
																					FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
																					RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
																					RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
																					LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
																					LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
																				end
																				local hit = (Hit_Box.Touched:connect(function(part)
		
		DamageFunction(part, true, 10, 11, true, 10, "Compensate", RootPart, 0.12, false, _, false, _, "", "")
	end
))
																				c1 = nil
																				c2 = nil
																				for i = 0, 0.5, 0.1 do
																					swait()
																					local x = Hit_Box
																					c2 = x.CFrame * Cf(0, 0.5, 0)
																					if c1 and (x.Position - c1.p).magnitude > 0.1 then
																						local h = 5
																						local a, b = Triangle(c1 * Cf(0, h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, c2 * Cf(0, h / 2, 0).p, Colour1, "Neon")
																						if a then
																							debServ:AddItem(a, 1)
																						end
																						if b then
																							debServ:AddItem(b, 1)
																						end
																						local c, d = Triangle(c2 * Cf(0, h / 2, 0).p, c2 * Cf(0, -h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, Colour1, "Neon")
																						if c then
																							debServ:AddItem(c, 1)
																						end
																						if d then
																							debServ:AddItem(d, 1)
																						end
																						c1 = c2
																					elseif not c1 then
																								c1 = c2
																							end
																								local SwingSpeed = 0.4
																								HWeld.C0 = clerp(HWeld.C0, Cf(0, -0.96, 0.5) * Euler(rad(-10), 0, 0), SwingSpeed)
																								HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
																								WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
																								WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
																								FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(60)), SwingSpeed)
																								FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
																								FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(80), 0, rad(-30)), SwingSpeed)
																								FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
																								Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-10), 0, 0), SwingSpeed)
																								Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-30), 0), SwingSpeed)
																								FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-30), 0), SwingSpeed)
																								FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
																								RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
																								RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
																								LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
																								LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
																								-- DECOMPILER ERROR at PC10116: LeaveBlock: unexpected jumping out DO_STMT

																								-- DECOMPILER ERROR at PC10116: LeaveBlock: unexpected jumping out IF_ELSE_STMT

																								-- DECOMPILER ERROR at PC10116: LeaveBlock: unexpected jumping out IF_STMT

																							end
																				hit:disconnect()
																			elseif Attack_Num == 3 then
																						Attack_Num = 1
																						for i = 0, 0.7, 0.1 do
																							swait()
																							local SwingSpeed = 0.5
																							HWeld.C0 = clerp(HWeld.C0, Cf(0, -0.9, 0.6) * Euler(rad(160), 0, 0), SwingSpeed)
																							HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
																							WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
																							WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
																							FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, -0.4) * Euler(rad(160), 0, 0), SwingSpeed)
																							FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(40), 0), SwingSpeed)
																							FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.6, 0.8, -0.95) * Euler(rad(120), 0, rad(60)), SwingSpeed)
																							FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
																							Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(0, 0, 0), SwingSpeed)
																							Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-40), 0), SwingSpeed)
																							FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-40), 0), SwingSpeed)
																							FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
																							RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
																							RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
																							LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
																							LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
																						end
																						c1 = nil
																						c2 = nil
																						local hit2 = Hit_Box.Touched:connect(function(part)
		
		DamageFunction(part, true, 11, 12, true, 10, "Compensate", RootPart, 0.2, false, _, false, _, "", "")
	end
)
																						for i = 0, 1, 0.1 do
																							swait()
																							local x = Hit_Box
																							c2 = x.CFrame * Cf(0, 0.5, 0)
																							if c1 and (x.Position - c1.p).magnitude > 0.1 then
																								local h = 5
																								local a, b = Triangle(c1 * Cf(0, h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, c2 * Cf(0, h / 2, 0).p, Colour1, "Neon")
																								if a then
																									debServ:AddItem(a, 1)
																								end
																								if b then
																									debServ:AddItem(b, 1)
																								end
																								local c, d = Triangle(c2 * Cf(0, h / 2, 0).p, c2 * Cf(0, -h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, Colour1, "Neon")
																								if c then
																									debServ:AddItem(c, 1)
																								end
																								if d then
																									debServ:AddItem(d, 1)
																								end
																								c1 = c2
																							elseif not c1 then
																										c1 = c2
																									end
																										local SwingSpeed = 0.5
																										Humanoid.WalkSpeed = 5
																										HWeld.C0 = clerp(HWeld.C0, Cf(0, -0.8, 0.6) * Euler(rad(146), 0, rad(-40)), SwingSpeed)
																										HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, rad(-5), 0), SwingSpeed)
																										WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
																										WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
																										FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, -0.3) * Euler(0, rad(-65), rad(-40)), SwingSpeed)
																										FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(rad(-20), 0, 0), SwingSpeed)
																										FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -0.5) * Euler(rad(20), 0, rad(60)), SwingSpeed)
																										FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(65), 0), SwingSpeed)
																										Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(0, 0, 0), SwingSpeed)
																										Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(rad(20), rad(60), 0), SwingSpeed)
																										FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(60), 0), SwingSpeed)
																										FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
																										RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
																										RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
																										LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
																										LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
																										-- DECOMPILER ERROR at PC10906: LeaveBlock: unexpected jumping out DO_STMT

																										-- DECOMPILER ERROR at PC10906: LeaveBlock: unexpected jumping out IF_ELSE_STMT

																										-- DECOMPILER ERROR at PC10906: LeaveBlock: unexpected jumping out IF_STMT

								end
						hit2:disconnect()
																	end
										end
							Humanoid.WalkSpeed = CurrentSpeed
						Debounces.Attacking = false
end
--fixed by kent911t
	Disrupt = function()
	
	Debounces.Attacking = true
	LeftHip.Part0 = nil
	LeftHip.Part1 = nil
	RightHip.Part0 = nil
	RightHip.Part1 = nil
	FLeftHip.Part0 = Torso
	FLeftHip.Part1 = LeftLeg
	FLeftHip.C0 = LeftHip.C0
	FLeftHip.C1 = LeftHip.C1
	FRightHip.Part0 = Torso
	FRightHip.Part1 = RightLeg
	FRightHip.C0 = RightHip.C0
	FRightHip.C1 = RightHip.C1
	local BV = Inst("BodyVelocity", RootPart)
	BV.Name = DecName
	BV.MaxForce = Vec(huge, huge, huge)
	BV.Velocity = RootPart.CFrame.lookVector * 150
	local hbox = MakeHitBox(Vec(8, 8, 16), RootPart, true, Cf(0, 0, 4), Cf())
	DTPWeld.C0 = Cf(0, 0, -2) * Euler(rad(90), 0, 0)
	Humanoid.WalkSpeed = 0
	local hit = hbox.Touched:connect(function(part)
		
		DamageFunction(part, true, 29, 30, false, 0, "LifeSteal", RootPart, 0.1, true, 2, false, _, "", "")
	end
)
	for i = 0, 1, 0.1 do
		swait()
		if Debounces.HasWep then
			HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), 0.3)
			HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), 0.3)
			WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), 0.3)
			WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), 0.3)
		end
		MagicBlock(BrickColor.new(Colour2), "Neon", Drag_To_Part:GetRenderCFrame() * Cf(0, 0, 0), 8, 8, 8, 16, 16, 16, 0.1)
		MagicCircle(BrickColor.new(Colour1), "Neon", Drag_To_Part:GetRenderCFrame() * Cf(0, 0, 0), 5, 0.1, 5, 15, 0.2, 15, 0.1)
		MagicWave2(BrickColor.new(Colour1), "Neon", Drag_To_Part:GetRenderCFrame() * Cf(0, 0, 0), 1, 3, 1, 3, 6, 3, 0.1)
		FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-40), 0, rad(10)), 0.3)
		FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), 0.3)
		FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-40), 0, rad(-10)), 0.3)
		FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), 0.3)
		Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0.2) * Euler(rad(50), 0, 0), 0.3)
		Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), 0.3)
		FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-60), 0, 0), 0.3)
		FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), 0.3)
		FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-12), rad(90), 0), 0.3)
		FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), 0.3)
		FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.5, -0.8) * Euler(rad(-30), rad(-90), 0), 0.3)
		FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), 0.3)
	end
	Humanoid.WalkSpeed = CurrentSpeed
	debServ:AddItem(hbox, 0)
	debServ:AddItem(BV, 0)
	LeftHip.Part0 = Torso
	LeftHip.Part1 = LeftLeg
	RightHip.Part0 = Torso
	RightHip.Part1 = RightLeg
	FLeftHip.Part0 = nil
	FLeftHip.Part1 = nil
	LeftHip.C0 = FLeftHip.C0
	LeftHip.C1 = FLeftHip.C1
	FRightHip.Part0 = nil
	FRightHip.Part1 = nil
	RightHip.C0 = FRightHip.C0
	RightHip.C1 = FRightHip.C1
	Debounces.Attacking = false
	DTPWeld.C0 = Cf(0, 0, 0)
	hit:disconnect()
end

	local GH = 5000
	local VHealth = Inst("DoubleConstrainedValue")
	VHealth.MaxValue = GH * 4
	VHealth.MinValue = 0
	VHealth.Value = GH * 4
	Corrupt_Guard = function()
	
	Debounces.Attacking = true
	Debounces.CanGuard = false
	Humanoid.WalkSpeed = 0
	local LHealth = Humanoid.Health
	GodMode = true
	local MakeGuard = function()
		
		local guard = Inst("Part", workspace)
		guard.BrickColor = BC(Colour1)
		guard.Material = "SmoothPlastic"
		guard.Transparency = 0.3
		guard.Anchored = true
		guard.Name = "Guard"
		guard.Anchored = true
		guard.CanCollide = false
		guard.Locked = true
		guard.Size = Vec(5.6, 5.6, 1.6)
		local gm = Inst("SpecialMesh", guard)
		gm.MeshId = "http://www.roblox.com/asset/?id=1185246"
		gm.Scale = Vec(12, 12, 5)
		gm.TextureId = "http://www.roblox.com/asset/?id=74697410"
		local vc = BC(Colour1).Color
		gm.VertexColor = Vec(vc.r, vc.g, vc.b)
		guard.CFrame = RootPart.CFrame * Cf(0, 0, -2.2)
		local DBModel = Inst("Model", workspace)
		DBModel.Name = "DamageBox"
		local gdb = Inst("Part", DBModel)
		gdb.Transparency = 1
		gdb.Anchored = true
		gdb.CanCollide = true
		gdb.Locked = true
		gdb.Size = Vec(8, 8, 6)
		gdb.CFrame = guard.CFrame * Cf(0, 0, -3.2)
		gdb.Name = "Head"
		local gdt = Inst("Part", DBModel)
		gdt.Transparency = 1
		gdt.Anchored = true
		gdt.CanCollide = true
		gdt.Locked = true
		gdt.Size = Vec(8, 8, 6)
		gdt.CFrame = guard.CFrame * Cf(0, 0, -3.2)
		gdt.Name = "Torso"
		local kthen = Inst("Weld", gdb)
		kthen.Part0 = gdb
		kthen.Part1 = gdt
		local GHealth = Inst("Humanoid", DBModel)
		GHealth.MaxHealth = GH
		coroutine.resume(coroutine.create(function()
			
			runServ.Stepped:wait()
			GHealth.Health = GHealth.MaxHealth
		end
))
		return guard, GHealth, gdb, gdt, DBModel
	end

	local Guard, GuardHealth, GDB, GDT, DBM = MakeGuard()
	local Projectiles = {}
	local Ignore = {Character}
	local DontHeal = false
	local Check = function(pro)
		
		local isSafe = false
		for _,g in pairs(Projectiles) do
			if g[1] ~= pro then
				isSafe = true
			end
		end
		return isSafe
	end
--fixed by kent911t
	runServ.Stepped:wait()
	repeat
		Humanoid.WalkSpeed = 0
		Humanoid.MaxHealth = huge
		runServ.Stepped:wait()
		Humanoid.Health = huge
		RootPart.Velocity = Vec(0, 0, 0)
		if Guard and GuardHealth and GDB and GDT and DBM and not DontHeal and Guard.Parent ~= nil and GuardHealth.Parent ~= nil and GDB.Parent ~= nil and GDT.Parent ~= nil and DBM.Parent ~= nil and GuardHealth.Health ~= 0 then
			GuardHealth.MaxHealth = GH
			Guard.CFrame = RootPart:GetRenderCFrame() * Cf(0, 0, -2.2)
			GDB.CFrame = Guard:GetRenderCFrame() * Cf(0, 0, -3.2)
			GDT.CFrame = Guard:GetRenderCFrame() * Cf(0, 0, -3.2)
			if GuardHealth.Health ~= GuardHealth.MaxHealth then
				local HealthLost = GuardHealth.MaxHealth - GuardHealth.Health
				LHealth = LHealth + HealthLost / 2
				VHealth.Value = VHealth.Value - HealthLost
				Apply_Buff(HealthLost / (GH / (GH / 160)), 25)
				MakeText("+" .. HealthLost / 2 .. "", FONT, 0.4, 0, 170, 0, 0, 255, 0, RootPart.CFrame)
				GuardHealth.Health = GuardHealth.MaxHealth
				RootPart.Velocity = RootPart.CFrame.lookVector * -(30 + HealthLost / (GH / 50))
			end
		else
			do
				debServ:AddItem(Guard, 0)
				debServ:AddItem(GuardHealth, 0)
				debServ:AddItem(GDB, 0)
				debServ:AddItem(DBM, 0)
				Guard = MakeGuard()
				do
					local s1 = Sound(RootPart, "http://roblox.com/asset/?id=233091161", 1, 1.4, false)
					debServ:AddItem(s1, 3)
					MagicRing(BrickColor.new(Colour1), "Neon", RootPart:GetRenderCFrame() * Cf(0, 0, 0) * Euler(rad(90), 0, 0), 2, 2, 4, 8, 8, 16, 0.05)
					DBM.Parent = F2
					Apply_Buff(10, 120)
					MagniDamage(RootPart, 40, false, 0, 1e+19, true, 9e+15, "Compensate", 0.01, false, 0, false, _, "", "")
					DBM.Parent = workspace
					repeat
						repeat
							repeat
								repeat
									runServ.Stepped:wait()
								until Guard
							until GuardHealth
						until GDB
					until DBM
					local GuardSpeed = 0.5
					if Debounces.HasWep then
						HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), GuardSpeed)
						HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), GuardSpeed)
						WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), GuardSpeed)
						WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), GuardSpeed)
					end
					FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.51, 0.53, 0.2) * Euler(0, 0, rad(12)), GuardSpeed)
					FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(40), 0), GuardSpeed)
					FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.4, 0.4, -0.5) * Euler(rad(-210), 0, 0), GuardSpeed)
					FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-50), 0), GuardSpeed)
					Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(rad(-12), 0, 0), GuardSpeed)
					Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-50), 0), GuardSpeed)
					FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0.5, -1, 0) * Euler(0, rad(-50), 0), GuardSpeed)
					FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), GuardSpeed)
					RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0.15) * Euler(0, rad(90), 0), GuardSpeed)
					RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(105), 0), GuardSpeed)
					LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0.3) * Euler(0, rad(-90), 0), GuardSpeed)
					LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-120), 0), GuardSpeed)
				end
			end
		end
	until not Debounces.Guarding or Humanoid.Health < 0.01 or VHealth.Value == VHealth.MinValue
	do
		debServ:AddItem(Guard, 0)
		debServ:AddItem(GuardHealth, 0)
		debServ:AddItem(GDB, 0)
		debServ:AddItem(DBM, 0)
		GodMode = false
		Humanoid.MaxHealth = Max_Health
		Humanoid.WalkSpeed = CurrentSpeed
		Debounces.Attacking = false
		wait(0.15)
		Humanoid.Health = LHealth
		coroutine.resume(coroutine.create(function()
		
		wait(1)
		Debounces.CanGuard = true
	end
))
	end
end

	Fatal_Blow = function()
	
	Debounces.Attacking = true
	local PlusSize = 0
	local Del = 0
	local Continue = false
	local K = Mouse.KeyUp:connect(function(key)
		
		if key == "z" and Z_Pressed then
			Continue = true
			Z_Pressed = false
		end
	end
)
	local psm = 1
	local gy = Inst("BodyGyro", RootPart)
	gy.Name = DecName
	gy.MaxTorque = Vec(0, 3000, 0)
	repeat
		gy.CFrame = Cf(RootPart.Position, Mouse.Hit.p)
		if Del >= 3 then
			PlusSize = PlusSize + 0.15 * psm
		else
			Del = Del + 0.1
		end
		if 15 * psm - 0.15 <= PlusSize then
			psm = psm + 0.1
		end
		FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.35, 0) * Euler(rad(-25), 0, rad(4)), 0.4)
		FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), 0.4)
		FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -1) * Euler(rad(80), 0, rad(60)), 0.4)
		FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), 0.4)
		Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(60), 0), 0.4)
		Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), 0.4)
		FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-60), 0), 0.4)
		FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), 0.4)
		RightHip.C0 = clerp(RightHip.C0, Cf(0.5, -1, 0) * Euler(0, rad(90), 0), 0.4)
		RightHip.C1 = clerp(RightHip.C1, Cf(0, 1, 0) * Euler(0, rad(90), 0), 0.4)
		LeftHip.C0 = clerp(LeftHip.C0, Cf(-0.5, -1, 0) * Euler(0, rad(-90), 0), 0.4)
		LeftHip.C1 = clerp(LeftHip.C1, Cf(0, 1, 0) * Euler(0, rad(-90), 0), 0.4)
		MagicBlood(BrickColor.new(Colour1), "Neon", LeftArm:GetRenderCFrame() * Cf(0, -0.5, 0) * Euler(rad(rand(-360, 360)), rad(rand(-360, 360)), rad(rand(-360, 360))), 0.1, 2, 0.1, 0.1, 2, 0.1, 0.05)
		swait()
	until Continue or PlusSize >= 5000
	debServ:AddItem(gy, 0)
	K:disconnect()
	local FB = coroutine.create(function()
		
		MagicRing(BrickColor.new(Colour2), "Neon", LeftArm:GetRenderCFrame() * Cf(0, -0.5, 0) * Euler(rad(90), 0, 0), 0.1, 0.1, 0.1, 1, 1, 0.1, 0.05)
		MagicRing(BrickColor.new(Colour1), "Neon", LeftArm:GetRenderCFrame() * Cf(0, -0.5, 0) * Euler(rad(90), 0, 0), 0.1, 0.1, 0.1, 0.6, 0.6, 0.1, 0.05)
		MagicRing(BrickColor.new(Colour1), "Neon", LeftArm:GetRenderCFrame() * Cf(0, -0.5, 0) * Euler(rad(90), 0, 0), 0.1, 0.1, 0.1, 0.3, 0.3, 0.1, 0.05)
		RootPart.Velocity = RootPart.CFrame.lookVector * -60
		local s = Sound(LeftArm, "http://roblox.com/asset/?id=231917750", 1, 1.6, false)
		debServ:AddItem(s, 2)
		local Orb = Inst("Part", F2)
		Orb.Material = "Neon"
		Orb.BrickColor = BC(Colour1)
		Orb.Transparency = 0.5
		Orb.Name = "Orb"
		Orb.Anchored = false
		Orb.CanCollide = false
		Orb.Locked = true
		Orb.Size = Vec(1.4, 1.4, 1.4)
		local OrbM = Inst("SpecialMesh", Orb)
		OrbM.MeshType = "Sphere"
		local Ring1 = Inst("Part", F2)
		Ring1.Transparency = 0.5
		Ring1.BrickColor = BC(Colour1)
		Ring1.Name = "Ring"
		Ring1.Anchored = false
		Ring1.CanCollide = false
		Ring1.Locked = true
		Ring1.Size = Vec(0.2, 0.2, 0.2)
		local Ring1M = Inst("SpecialMesh", Ring1)
		Ring1M.MeshId = "http://www.roblox.com/asset/?id=3270017"
		Ring1M.Scale = Vec(2, 2, 2)
		local Ring2 = Inst("Part", F2)
		Ring2.Transparency = 0.5
		Ring2.BrickColor = BC(Colour1)
		Ring2.Name = "Ring"
		Ring2.Anchored = false
		Ring2.CanCollide = false
		Ring2.Locked = true
		Ring2.Size = Vec(0.2, 0.2, 0.2)
		local Ring2M = Inst("SpecialMesh", Ring2)
		Ring2M.MeshId = "http://www.roblox.com/asset/?id=3270017"
		Ring2M.Scale = Vec(2, 2, 2)
		local Rm1 = Inst("Motor", Ring1)
		Rm1.Part0 = Orb
		Rm1.Part1 = Ring1
		Rm1.DesiredAngle = 1e+28
		Rm1.MaxVelocity = rad(6)
		Rm1.C0 = Cf() * Euler(rad(rand(-360, 360)), rad(rand(-360, 360)), rad(rand(-360, 360)))
		Rm1.C1 = Cf() * Euler(rad(rand(-360, 360)), rad(rand(-360, 360)), rad(rand(-360, 360)))
		local Rm2 = Inst("Motor", Ring2)
		Rm2.Part0 = Orb
		Rm2.Part1 = Ring2
		Rm2.DesiredAngle = 1e+28
		Rm2.MaxVelocity = rad(6)
		Rm2.C0 = Cf() * Euler(rad(rand(-360, 360)), rad(rand(-360, 360)), rad(rand(-360, 360)))
		Rm2.C1 = Cf() * Euler(rad(rand(-360, 360)), rad(rand(-360, 360)), rad(rand(-360, 360)))
		Orb.CFrame = LeftArm.CFrame * Cf(0, -(0.5 + Orb.Size.Y / 2), 0)
		local dir = CFrame.new(LeftArm.Position, Mouse.Hit.p)
		local Vel = Inst("BodyVelocity", Orb)
		Vel.MaxForce = Vec(huge, huge, huge)
		Vel.Velocity = dir.lookVector * (190 + PlusSize / 12)
		debServ:AddItem(Orb, 40 + PlusSize / 2)
		debServ:AddItem(Ring1, 40 + PlusSize / 2)
		debServ:AddItem(Ring2, 40 + PlusSize / 2)
		local hit = Orb.Touched:connect(function(part)
			
			local hum = FindHum(part.Parent)
			if (hum and hum ~= Humanoid and Orb.Anchored == false) or part.Anchored == true and Orb.Anchored == false and part.Name ~= "OrbBlast" and part.Name ~= "hoi hoi" and part.Name ~= "Effect" then
				Orb.Anchored = true
				Orb.Transparency = 1
				local s = Sound(Orb, "http://roblox.com/asset/?id=233856079", 1, 1, false)
				debServ:AddItem(s, 2)
				debServ:AddItem(Ring1, 0)
				debServ:AddItem(Vel, 0)
				debServ:AddItem(Ring2, 0)
				DamageFunction(part, false, 0, 8 + PlusSize * 2, false, 0, "Compensate-Stun", RootPart, 0.2, true, 2, false, _, "", "")
				local Blast = Inst("Part", F2)
				Blast.BrickColor = BC(Colour2)
				Blast.Material = "Neon"
				Blast.Transparency = 1
				Blast.Name = "OrbBlast"
				Blast.Anchored = true
				Blast.CanCollide = false
				Blast.Locked = true
				Blast.Size = Vec(0.2, 0.2, 0.2)
				Blast.CFrame = Orb.CFrame
				local Bm = Inst("SpecialMesh", Blast)
				Bm.MeshType = "Sphere"
				Bm.Scale = Vec(0, 0, 0)
				local Range = 0
				MagicCircle(BrickColor.new(Colour1), "Neon", Blast:GetRenderCFrame(), 0, 0, 0, 20 + PlusSize * 2.5, 20 + PlusSize * 2.5, 20 + PlusSize * 2.5, 0.05)
				MagicRing(BrickColor.new(Colour1), "Neon", Blast:GetRenderCFrame() * Euler(rad(90), rad(90), 0), 0, 0, 0, 5 + PlusSize * 2.5, 5 + PlusSize * 2.5, 4 + PlusSize * 2.5, 0.05)
				MagicRing(BrickColor.new(Colour1), "Neon", Blast:GetRenderCFrame() * Euler(rad(22.5), 0, 0), 0, 0, 0, 10 + PlusSize * 2.5, 10 + PlusSize * 2.5, 4 + PlusSize * 2.5, 0.05)
				MagicRing(BrickColor.new(Colour1), "Neon", Blast:GetRenderCFrame() * Euler(rad(-22.5), 0, 0), 0, 0, 0, 15 + PlusSize * 2.5, 15 + PlusSize * 2.5, 4 + PlusSize * 2.5, 0.05)
				for t = 0, 1, 0.18 do
					swait()
					Range = t * (10 + PlusSize * 1.5)
					Blast.Transparency = (-2 + t) * -1 / 2
					Bm.Scale = Vec(t * (120 + PlusSize * 6), t * (120 + PlusSize * 6), t * (120 + PlusSize * 6))
					MagniDamage(Blast, Range, true, 6 + PlusSize / 10, 7 + PlusSize / 10, false, 0, "Compensate-Normal", 0.01, false, 0, false, _, "", "")
				end
				for t = 0, 2, 0.08 do
					swait()
					MagniDamage(Blast, Range, true, 4 + PlusSize / 10, 5 + PlusSize / 10, false, 0, "Compensate-LifeSteal", 0.2, false, 0, false, _, "", "")
				end
				for t = 1, 0, -0.22 do
					swait()
					Range = t * (10 + PlusSize * 1.5)
					Blast.Transparency = (-2 + t) * -1 / 2
					Bm.Scale = Vec(t * (120 + PlusSize * 6), t * (120 + PlusSize * 6), t * (120 + PlusSize * 6))
					MagniDamage(Blast, Range, true, 6 + PlusSize / 10, 7 + PlusSize / 10, false, 0, "Compensate-Normal", 0.01, false, 0, false, _, "", "")
				end
				debServ:AddItem(Blast, 0)
				debServ:AddItem(Orb, 0)
			end
		end
)
		repeat
			swait()
		until Orb.Parent == nil
		debServ:AddItem(Orb, 0)
		hit:disconnect()
	end
)
	for i = 0, 0.4, 0.1 do
		swait()
		FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.35, 0) * Euler(rad(-25), 0, rad(8)), 0.4)
		FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), 0.4)
		FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(90), 0, rad(-70)), 0.4)
		FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), 0.4)
		Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(60), 0), 0.4)
		Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), 0.4)
		FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-70), 0), 0.4)
		FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), 0.4)
		RightHip.C0 = clerp(RightHip.C0, Cf(0.5, -1, 0) * Euler(0, rad(90), 0), 0.4)
		RightHip.C1 = clerp(RightHip.C1, Cf(0, 1, 0) * Euler(0, rad(90), 0), 0.4)
		LeftHip.C0 = clerp(LeftHip.C0, Cf(-0.5, -1, 0) * Euler(0, rad(-90), 0), 0.4)
		LeftHip.C1 = clerp(LeftHip.C1, Cf(0, 1, 0) * Euler(0, rad(-90), 0), 0.4)
	end
	coroutine.resume(FB)
	Debounces.Attacking = false
end

	local WaveNum = 1
	Hate_Wave = function()
	Debounces.Attacking = true
	local MakeWave = function()
		
		local Wave = Inst("Model", F2)
		Wave.Name = "Wave"
		local WM = Inst("Part", Wave)
		WM.BrickColor = BC(Colour1)
		WM.Material = "Neon"
		WM.Name = "WavePart"
		WM.Position = Vec(10.3, 7.6, -239.4)
		WM.Rotation = Vec(-180, 0, -180)
		WM.Anchored = true
		WM.CanCollide = false
		WM.Locked = true
		WM.Size = Vec(1, 2.4, 1)
		local W1 = Inst("Part", Wave)
		W1.BrickColor = BC(Colour1)
		W1.Material = "Neon"
		W1.Name = "WavePart"
		W1.Position = Vec(10.3, 9.648, -239.664)
		W1.Rotation = Vec(165, 0, -180)
		W1.Anchored = true
		W1.CanCollide = false
		W1.Locked = true
		W1.Size = Vec(1, 2.1, 1)
		local W2 = Inst("Part", Wave)
		W2.BrickColor = BC(Colour1)
		W2.Material = "Neon"
		W2.Name = "WavePart"
		W2.Position = Vec(10.3, 11.4, -240.4)
		W2.Rotation = Vec(150, 0, -180)
		W2.Anchored = true
		W2.CanCollide = false
		W2.Locked = true
		W2.Size = Vec(1, 2, 1)
		local W3 = Inst("Part", Wave)
		W3.BrickColor = BC(Colour1)
		W3.Material = "Neon"
		W3.Name = "WavePart"
		W3.Position = Vec(10.3, 5.552, -239.663)
		W3.Rotation = Vec(-165, 0, -180)
		W3.Anchored = true
		W3.CanCollide = false
		W3.Locked = true
		W3.Size = Vec(1, 2.1, 1)
		local W4 = Inst("Part", Wave)
		W4.BrickColor = BC(Colour1)
		W4.Material = "Neon"
		W4.Name = "WavePart"
		W4.Position = Vec(10.3, 3.8, -240.4)
		W4.Rotation = Vec(-150, 0, -180)
		W4.Anchored = true
		W4.CanCollide = false
		W4.Locked = true
		W4.Size = Vec(1, 2, 1)
		local WH = Inst("Part", Wave)
		WH.Transparency = 1
		WH.Name = "WaveHitbox"
		WH.Position = Vec(10.3, 7.6, -240.2)
		WH.Rotation = Vec(-180, 0, -180)
		WH.Anchored = true
		WH.CanCollide = false
		WH.Locked = true
		WH.Size = Vec(5, 12, 8)
		for _,w in pairs(Wave:GetChildren()) do
			if w:IsA("BasePart") and w ~= WH then
				local W = Inst("Weld", WH)
				W.Part0 = WH
				W.Part1 = w
				W.C0 = WH.CFrame:inverse() * Cf(WH.Position)
				W.C1 = w.CFrame:inverse() * Cf(WH.Position)
				local M = Inst("BlockMesh", w)
				M.Scale = Vec(0, 1, 1)
			end
		end
		local SiP = {NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(1, 0.188, 0)}
		local TrP = {NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)}
		local PE = Inst("ParticleEmitter", WH)
		PE.Color = ColorSequence.new(BC(Colour1).Color)
		PE.LightEmission = 1
		PE.Size = NumberSequence.new(SiP)
		PE.Transparency = NumberSequence.new(TrP)
		PE.EmissionDirection = "Back"
		PE.Lifetime = NumberRange.new(0.2, 0.8)
		PE.Rate = 500
		PE.Rotation = NumberRange.new(60, 120)
		PE.RotSpeed = NumberRange.new(120, 360)
		PE.Speed = NumberRange.new(30)
		return Wave, WH
	end

	if WaveNum == 1 then
		WaveNum = 2
			for i = 0, 0.3, 0.1 do
				swait()
				local SwingSpeed = 0.7
				HWeld.C0 = clerp(HWeld.C0, Cf(0, -0.96, 0.5) * Euler(rad(-10), 0, 0), SwingSpeed)
				HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
				WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), SwingSpeed)
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(80)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -1) * Euler(rad(80), 0, rad(60)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-10), 0, 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-40), 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-40), 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
				RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
				LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
				LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
			end
		for i = 0, 0.2, 0.1 do
			swait()
			local SwingSpeed = 0.7
			HWeld.C0 = clerp(HWeld.C0, Cf(0, -0.98, -0.4) * Euler(rad(20), 0, 0), SwingSpeed)
			HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
			WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), SwingSpeed)
			FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(0.6, 0.5, -1) * Euler(0, 0, rad(90)), SwingSpeed)
			FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(rad(-160), 0, 0), SwingSpeed)
			FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-10), 0, rad(-25)), SwingSpeed)
			FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
			Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(rad(-17), 0, 0), SwingSpeed)
			Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(30), 0), SwingSpeed)
			FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(30), 0), SwingSpeed)
			FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
			RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
			LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
			LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
		end
		local Wave, WHB = MakeWave()
		for _,p in pairs(Wave:GetChildren()) do
			if p:IsA("BasePart") then
				p.Anchored = false
			end
		end
		WHB.CFrame = RootPart.CFrame * Euler(0, 0, rad(90))
		local Vel = Inst("BodyVelocity", WHB)
		Vel.MaxForce = Vec(huge, huge, huge)
		Vel.Velocity = WHB.CFrame.lookVector * 220
		local Gyr = Inst("BodyGyro", WHB)
		Gyr.CFrame = WHB.CFrame
		Gyr.MaxTorque = Vec(huge, huge, huge)
		local s = Sound(WHB, "http://roblox.com/asset/?id=233091183", 1, 1.6, false)
		debServ:AddItem(s, 2)
		coroutine.resume(coroutine.create(function()
		
		debServ:AddItem(Wave, 2)
		local hit = WHB.Touched:connect(function(part)
			
			DamageFunction(part, false, 0, 8, false, 0, "Compensate-LifeSteal", WHB, 0.2, false, 0, false, _, "", "")
		end
)
		repeat
			swait()
		until Wave.Parent == nil
		hit:disconnect()
	end
))
	elseif WaveNum == 2 then
				WaveNum = 3
				for i = 0, 0.3, 0.1 do
					swait()
					local SwingSpeed = 0.7
					HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(rad(160), 0, 0), SwingSpeed)
					HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
					WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
					WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
					FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(0.6, 0.5, -1) * Euler(0, 0, rad(45)), SwingSpeed)
					FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(rad(-150), rad(0), 0), SwingSpeed)
					FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-10), 0, rad(-25)), SwingSpeed)
					FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
					Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(0, 0, 0), SwingSpeed)
					Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(40), 0), SwingSpeed)
					FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(40), 0), SwingSpeed)
					FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
					RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
					RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
					LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
					LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
				end
				for i = 0, 0.2, 0.1 do
					swait()
					local SwingSpeed = 0.7
					HWeld.C0 = clerp(HWeld.C0, Cf(0, -0.96, 0.5) * Euler(rad(-10), 0, 0), SwingSpeed)
					HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
					WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
					WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
					FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(45)), SwingSpeed)
					FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
					FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(80), 0, rad(-30)), SwingSpeed)
					FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
					Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-10), 0, 0), SwingSpeed)
					Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-30), 0), SwingSpeed)
					FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-30), 0), SwingSpeed)
					FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
					RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
					RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
					LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
					LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
				end
				local Wave, WHB = MakeWave()
				for _,p in pairs(Wave:GetChildren()) do
					if p:IsA("BasePart") then
						p.Anchored = false
					end
				end
				WHB.CFrame = RootPart.CFrame * Euler(0, 0, rad(45))
				local Vel = Inst("BodyVelocity", WHB)
				Vel.MaxForce = Vec(huge, huge, huge)
				Vel.Velocity = WHB.CFrame.lookVector * 220
				local Gyr = Inst("BodyGyro", WHB)
				Gyr.CFrame = WHB.CFrame
				Gyr.MaxTorque = Vec(huge, huge, huge)
				local s = Sound(WHB, "http://roblox.com/asset/?id=233091183", 1, 1.6, false)
				debServ:AddItem(s, 2)
				coroutine.resume(coroutine.create(function()
		
		debServ:AddItem(Wave, 2)
		local hit = WHB.Touched:connect(function(part)
			
			DamageFunction(part, false, 0, 8, false, 0, "Compensate-LifeSteal", WHB, 0.2, false, 0, false, _, "", "")
		end
)
		repeat
			swait()
		until Wave.Parent == nil
		hit:disconnect()
	end
))
			elseif WaveNum == 3 then
						WaveNum = 4
						for i = 0, 0.3, 0.1 do
							swait()
							local SwingSpeed = 0.7
							HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(rad(0), 0, 0), SwingSpeed)
							HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
							WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(-90), 0, 0), SwingSpeed)
							WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
							FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(135), 0, 0), SwingSpeed)
							FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(45), rad(-45)), SwingSpeed)
							FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(80), 0, rad(-40)), SwingSpeed)
							FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
							Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-10), 0, 0), SwingSpeed)
							Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-40), 0), SwingSpeed)
							FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-40), 0), SwingSpeed)
							FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
							RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
							RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
							LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
							LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
						end--fixed by kent911t
						for i = 0, 0.2, 0.1 do
							swait()
							local SwingSpeed = 0.7
							HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(rad(0), 0, 0), SwingSpeed)
							HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
							WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(-90), 0, 0), SwingSpeed)
							WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
							FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-25), 0, rad(0)), SwingSpeed)
							FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(60), rad(-10)), SwingSpeed)
							FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-20), 0, rad(-25)), SwingSpeed)
							FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
							Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(0, 0, 0), SwingSpeed)
							Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(82), 0), SwingSpeed)
							FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(100), 0), SwingSpeed)
							FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
							RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
							RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
							LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
							LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
						end
						local Wave, WHB = MakeWave()
						for _,p in pairs(Wave:GetChildren()) do
							if p:IsA("BasePart") then
								p.Anchored = false
							end
						end
						WHB.CFrame = RootPart.CFrame * Euler(0, 0, rad(-45))
						local Vel = Inst("BodyVelocity", WHB)
						Vel.MaxForce = Vec(huge, huge, huge)
						Vel.Velocity = WHB.CFrame.lookVector * 220
						local Gyr = Inst("BodyGyro", WHB)
						Gyr.CFrame = WHB.CFrame
						Gyr.MaxTorque = Vec(huge, huge, huge)
						local s = Sound(WHB, "http://roblox.com/asset/?id=233091183", 1, 1.6, false)
						debServ:AddItem(s, 2)
						coroutine.resume(coroutine.create(function()
		
		debServ:AddItem(Wave, 2)
		local hit = WHB.Touched:connect(function(part)
			
			DamageFunction(part, false, 0, 8, false, 0, "Compensate-LifeSteal", WHB, 0.2, false, 0, false, _, "", "")
		end
)
		repeat
			swait()
		until Wave.Parent == nil
		hit:disconnect()
	end
))
					elseif WaveNum == 4 then
								WaveNum = 1
								for i = 0, 0.3, 0.1 do
									swait()
									local SwingSpeed = 0.7
									HWeld.C0 = clerp(HWeld.C0, Cf(0, -0.9, 0.6) * Euler(rad(160), 0, 0), SwingSpeed)
									HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
									WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
									WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
									FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, -0.4) * Euler(rad(160), 0, 0), SwingSpeed)
									FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(40), 0), SwingSpeed)
									FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.6, 0.8, -0.95) * Euler(rad(120), 0, rad(60)), SwingSpeed)
									FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
									Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(0, 0, 0), SwingSpeed)
									Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-40), 0), SwingSpeed)
									FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-40), 0), SwingSpeed)
									FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
									RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
									RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
									LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
									LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
								end
								for i = 0, 0.2, 0.1 do
									swait()
									local SwingSpeed = 0.7
									HWeld.C0 = clerp(HWeld.C0, Cf(0, -0.8, 0.6) * Euler(rad(146), 0, rad(-40)), SwingSpeed)
									HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, rad(-5), 0), SwingSpeed)
									WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
									WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
									FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, -0.3) * Euler(0, rad(-65), rad(-40)), SwingSpeed)
									FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(rad(-20), 0, 0), SwingSpeed)
									FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -0.5) * Euler(rad(20), 0, rad(60)), SwingSpeed)
									FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(65), 0), SwingSpeed)
									Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(0, 0, 0), SwingSpeed)
									Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(rad(20), rad(60), 0), SwingSpeed)
									FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(60), 0), SwingSpeed)
									FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
									RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
									RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
									LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
									LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
								end
								local Wave, WHB = MakeWave()
								for _,p in pairs(Wave:GetChildren()) do
									if p:IsA("BasePart") then
										p.Anchored = false
									end
								end
								WHB.CFrame = RootPart.CFrame
								local Vel = Inst("BodyVelocity", WHB)
								Vel.MaxForce = Vec(huge, huge, huge)
								Vel.Velocity = WHB.CFrame.lookVector * 220
								local Gyr = Inst("BodyGyro", WHB)
								Gyr.CFrame = WHB.CFrame
								Gyr.MaxTorque = Vec(huge, huge, huge)
								local s = Sound(WHB, "http://roblox.com/asset/?id=233091183", 1, 1.6, false)
								debServ:AddItem(s, 2)
								coroutine.resume(coroutine.create(function()
		
		debServ:AddItem(Wave, 2)
		local hit = WHB.Touched:connect(function(part)
			
			DamageFunction(part, false, 0, 8, false, 0, "Compensate-LifeSteal", WHB, 0.2, false, 0, false, _, "", "")
		end
)
		repeat
			swait()
		until Wave.Parent == nil
		hit:disconnect()
	end
))
	end
	Debounces.Attacking = false
end

	Dark_Eruption = function()
	
	Debounces.Attacking = true
	local EPower = 0
	local BuffDelay = 0
	repeat
		if BuffDelay < 3.9 then
			BuffDelay = BuffDelay + 0.1
		else
			EPower = EPower + 0.25
		end
		MagicBlock(BrickColor.new(Colour1), "Neon", Hit_Box:GetRenderCFrame() * Cf(0.9, rand(-3, 3), 0), 0.1, 0, 0.1, 0.65, 0.65, 0.65, 0.05)
		MagicBlock(BrickColor.new(Colour1), "Neon", Hit_Box:GetRenderCFrame() * Cf(0.9, rand(-3, 3), 0), 0.1, 0, 0.1, 0.65, 0.65, 0.65, 0.05)
		MagicBlock(BrickColor.new(Colour2), "Neon", Hit_Box:GetRenderCFrame() * Cf(0.9, rand(-3, 3), 0), 0.1, 0, 0.1, 0.65, 0.65, 0.65, 0.05)
		MagicBlock(BrickColor.new(Colour2), "Neon", Hit_Box:GetRenderCFrame() * Cf(0.9, rand(-3, 3), 0), 0.1, 0, 0.1, 0.65, 0.65, 0.65, 0.05)
		Humanoid.WalkSpeed = 5
		local SwingSpeed = 0.5
		HWeld.C0 = clerp(HWeld.C0, Cf(0, -0.95, 0.5) * Euler(rad(180), 0, 0), SwingSpeed)
		HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
		WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
		WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
		FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, -0.4) * Euler(rad(170), 0, 0), SwingSpeed)
		FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(40), 0), SwingSpeed)
		FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.45, 0.8, -0.95) * Euler(rad(150), 0, rad(40)), SwingSpeed)
		FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
		Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(0, 0, 0), SwingSpeed)
		Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-40), 0), SwingSpeed)
		FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-40), 0), SwingSpeed)
		FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
		RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
		RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
		LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
		LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
		wait()
	until not Debounces.Charging_Erupt
	Debounces.DisableJump = true
	LeftHip.Part0 = nil
	LeftHip.Part1 = nil
	RightHip.Part0 = nil
	RightHip.Part1 = nil
	FLeftHip.Part0 = Torso
	FLeftHip.Part1 = LeftLeg
	FLeftHip.C0 = LeftHip.C0
	FLeftHip.C1 = LeftHip.C1
	FRightHip.Part0 = Torso
	FRightHip.Part1 = RightLeg
	FRightHip.C0 = RightHip.C0
	FRightHip.C1 = RightHip.C1
	local hit = Hit_Box.Touched:connect(function(part)
		
		DamageFunction(part, false, 0, 20 + EPower / 4, true, 40, "Compensate-Knockdown", Hit_Box, 0.2, false, 0, false, _, "", "")
	end
)
	for i = 0, 0.4, 0.1 do
		swait()
		local SwingSpeed = 0.55
		Humanoid.WalkSpeed = 0
		MagicBlock(BrickColor.new(Colour1), "Neon", Hit_Box:GetRenderCFrame() * Cf(0.9, rand(-3, 3), 0), 0.1, 0, 0.1, 0.65, 0.65, 0.65, 0.05)
		MagicBlock(BrickColor.new(Colour1), "Neon", Hit_Box:GetRenderCFrame() * Cf(0.9, rand(-3, 3), 0), 0.1, 0, 0.1, 0.65, 0.65, 0.65, 0.05)
		MagicBlock(BrickColor.new(Colour2), "Neon", Hit_Box:GetRenderCFrame() * Cf(0.9, rand(-3, 3), 0), 0.1, 0, 0.1, 0.65, 0.65, 0.65, 0.05)
		MagicBlock(BrickColor.new(Colour2), "Neon", Hit_Box:GetRenderCFrame() * Cf(0.9, rand(-3, 3), 0), 0.1, 0, 0.1, 0.65, 0.65, 0.65, 0.05)
		HWeld.C0 = clerp(HWeld.C0, Cf(0, -0.8, 0.6) * Euler(rad(146), 0, rad(-40)), SwingSpeed)
		HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, rad(-5), 0), SwingSpeed)
		WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
		WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
		FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, -0.3) * Euler(0, rad(-65), rad(-40)), SwingSpeed)
		FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(rad(-20), 0, 0), SwingSpeed)
		FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -0.5) * Euler(rad(20), 0, rad(60)), SwingSpeed)
		FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(65), 0), SwingSpeed)
		Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(0, 0, 0), SwingSpeed)
		Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(rad(20), rad(60), 0), SwingSpeed)
		FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -2.2, 0) * Euler(0, rad(60), 0), SwingSpeed)
		FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
		FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1.3, 0.1) * Euler(rad(-80), 0, 0), SwingSpeed)
		FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
		FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.1, -0.6) * Euler(rad(-10), 0, 0), SwingSpeed)
		FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
	end
	coroutine.resume(coroutine.create(function()
		
		for i = 1, 10 do
			swait()
			local Point = Inst("Part", F2)
			do
				Point.Anchored = true
				Point.Name = "Point"
				Point.CanCollide = false
				Point.Transparency = 1
				Point.Locked = true
				Point.Size = Vec(0.2, 0.2, 0.2)
				Point.CFrame = RootPart.CFrame * Cf(0, -3, -(11 * i))
				local P2 = Inst("Part", Point)
				P2.Anchored = true
				P2.CanCollide = false
				P2.Name = "Point"
				P2.Transparency = 1
				P2.Locked = true
				P2.Size = Vec(0.2, 0.2, 0.2)
				P2.CFrame = Point.CFrame * Cf(0, 10, 0)
				local P3 = Inst("Part", Point)
				P3.Anchored = true
				P3.Name = "Point"
				P3.CanCollide = false
				P3.Transparency = 1
				P3.Locked = true
				P3.Size = Vec(0.2, 0.2, 0.2)
				P3.CFrame = Point.CFrame * Cf(0, -10, 0)
				local s1 = Sound(Point, "http://roblox.com/asset/?id=233091161", 0.4, 3, false)
				debServ:AddItem(s1, 3)
				local s2 = Sound(Point, "http://roblox.com/asset/?id=231917744", 1, 2, false)
				debServ:AddItem(s2, 3)
				MagicCircle(BrickColor.new(Colour1), "SmoothPlastic", Point:GetRenderCFrame(), 0.1, 0, 0.1, 5, 0.5, 5, 0.08)
				MagicCircle(BrickColor.new(Colour1), "SmoothPlastic", Point:GetRenderCFrame(), 0.1, 0, 0.1, 1, 50, 1, 0.08)
				MagicCircle(BrickColor.new(Colour2), "Neon", Point:GetRenderCFrame(), 0.06, 0, 0.06, 4.6, 0.46, 4.6, 0.06)
				MagicCircle(BrickColor.new(Colour2), "Neon", Point:GetRenderCFrame(), 0.06, 0, 0.06, 0.6, 46, 0.6, 0.06)
				MagicBlock(BrickColor.new(Colour1), "SmoothPlastic", Point:GetRenderCFrame(), 0.1, 0.1, 0.1, 2, 2, 2, 0.08)
				MagicBlock(BrickColor.new(Colour2), "Neon", Point:GetRenderCFrame(), 0.1, 0.1, 0.1, 2, 2, 2, 0.06)
				coroutine.resume(coroutine.create(function()
			
			for i = 0, 0.4, 0.1 do
				swait()
				MagniDamage(Point, 12, true, 8 + EPower, 9 + EPower, true, 90, "Compensate-LifeSteal", 0.01, false, 0, false, _, "", "")
				MagniDamage(P2, 12, true, 8 + EPower, 9 + EPower, true, 90, "Compensate-LifeSteal", 0.01, false, 0, false, _, "", "")
				MagniDamage(P3, 12, true, 8 + EPower, 9 + EPower, true, 90, "Compensate-LifeSteal", 0.01, false, 0, false, _, "", "")
			end
			debServ:AddItem(Point, 0)
		end
))
			end
		end
	end
))
	wait(0.55)
	hit:disconnect()
	FLeftHip.Part0 = nil
	FLeftHip.Part1 = nil
	FRightHip.Part0 = nil
	FRightHip.Part1 = nil
	LeftHip.Part0 = Torso
	LeftHip.Part1 = LeftLeg
	LeftHip.C0 = FLeftHip.C0
	LeftHip.C1 = FLeftHip.C1
	RightHip.Part0 = Torso
	RightHip.Part1 = RightLeg
	RightHip.C0 = FRightHip.C0
	RightHip.C1 = FRightHip.C1
	Humanoid.WalkSpeed = CurrentSpeed
	Debounces.DisableJump = false
	Debounces.Attacking = false
end

	Axel = function(Upward)
	Debounces.Attacking = true
	if not Debounces.HasWep then
		if Current_Anim == "Idle" or Current_Anim == "Walking" then
			LeftHip.Part0 = nil
			LeftHip.Part1 = nil
			RightHip.Part0 = nil
			RightHip.Part1 = nil
			FLeftHip.Part0 = Torso
			FLeftHip.Part1 = LeftLeg
			FLeftHip.C0 = LeftHip.C0
			FLeftHip.C1 = LeftHip.C1
			FRightHip.Part0 = Torso
			FRightHip.Part1 = RightLeg
			FRightHip.C0 = RightHip.C0
			FRightHip.C1 = RightHip.C1
			local t = 0.6
				local VelPart = RootPart
				local tim = 1
				local Speed = 100
				local HBSize = Vec(3, 5, 3)
				local Vel = Inst("BodyVelocity", RootPart)
				Vel.Name = DecName
				Vel.MaxForce = Vec(huge, huge, huge)
				Vel.Velocity = VelPart.CFrame.lookVector * 0
				if Upward then
					tim = 1.4
					HBSize = Vec(5, 7, 5)
					Speed = 250
					local LVec = Inst("Part", F2)
					LVec.Transparency = 1
					LVec.Anchored = false
					LVec.CanCollide = false
					LVec.Locked = true
					LVec.Size = Vec(1, 1, 1)
					LVec.FrontSurface = "Hinge"
					local LVW = Inst("Weld", LVec)
					LVW.Part0 = LeftLeg
					LVW.Part1 = LVec
					LVW.Name = DecName
					LVW.C0 = Cf(0, -0.5, 0) * Euler(rad(-90), 0, 0)
					LVW.C1 = Cf(0, 0, 0) * Euler(0, 0, rad(-20))
					VelPart = LVec
					Vel.Velocity = RootPart.CFrame.lookVector * -15 + Vec(0, 25, 0)
					local noscope = 0
					local j = Sound(RootPart, "http://roblox.com/asset/?id=158149887", 0.5, 1, false)
					debServ:AddItem(j, 2)
					for i = 0, 1.4, 0.1 do
						swait()
						if noscope ~= 360 then
							noscope = noscope + 30
						end
						local JumpSpeed = 0.4
						FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-60), 0, rad(10)), JumpSpeed)
						FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), JumpSpeed)
						FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-60), 0, rad(-10)), JumpSpeed)
						FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), JumpSpeed)
						Neck.C0 = clerp(Neck.C0, Cf(0, 1.4, 0.2) * Euler(rad(30), 0, 0), JumpSpeed)
						Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), JumpSpeed)
						FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(noscope), 0, 0), JumpSpeed)
						FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), JumpSpeed)
						FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-18), rad(90), 0), JumpSpeed)
						FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), JumpSpeed)
						FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.5, -0.8) * Euler(rad(-30), rad(-90), 0), JumpSpeed)
						FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), JumpSpeed)
					end
				end
					local HBox = MakeHitBox(HBSize, LeftLeg, true, Cf(0, -(HBSize.Y / 4), 0), Cf())
					local T = 0
						local hit = HBox.Touched:connect(function(part)
		
		local hum = FindHum(part.Parent)
		local Axeld = part.Parent:FindFirstChild("Axeld")
		if hum and hum ~= Humanoid and not Axeld then
			tim = tim + 1.2
			local ax = Inst("BoolValue", part.Parent)
			ax.Name = "Axeld"
			local QuickDelay = Inst("BodyPosition", RootPart)
			QuickDelay.Name = DecName
			QuickDelay.MaxForce = Vec(huge, huge, huge)
			QuickDelay.Position = RootPart.Position
			debServ:AddItem(QuickDelay, 0.3)
			debServ:AddItem(ax, 0.4)
			DamageFunction(part, true, 20, 21, false, 150, "SkyRocket", RootPart, 0.1, false, 0, false, _, "", "")
		end
	end
)
						repeat
							Vel.Velocity = VelPart.CFrame.lookVector * Speed
							MagicBlock(BrickColor.new(Colour1), "Neon", LeftLeg:GetRenderCFrame() * Cf(0, -5, -1), 3, 3, 3, 7, 7, 7, 0.1)
							MagicBlock(BrickColor.new(Colour2), "Neon", LeftLeg:GetRenderCFrame() * Cf(0, -4, -1), 2, 2, 2, 6, 6, 6, 0.1)
							FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, rad(15), rad(70)), t)
							FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), t)
							FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -0.9) * Euler(rad(90), 0, 0), t)
							FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, rad(-70)), t)
							Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.3) * Euler(rad(-35), rad(60), 0), t)
							Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), t)
							if not Upward then
								FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(40), rad(-80), 0), t)
								FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), t)
							else
								FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(100), rad(-80), 0), t)
								FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), t)
							end
							FRightHip.C0 = clerp(FRightHip.C0, Cf(0.8, -0.5, -0.7) * Euler(rad(-30), 0, 0), t)
							FRightHip.C1 = clerp(FRightHip.C1, Cf(0, 1, 0) * Euler(0, 0, rad(25)), t)
							FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-0.8, -1, -0.15) * Euler(rad(-20), rad(60), 0), t)
							FLeftHip.C1 = clerp(FLeftHip.C1, Cf(0, 1, 0) * Euler(rad(-40), 0, 0), t)
							T = T + 0.1
							swait()
						until tim <= T
						debServ:AddItem(HBox, 0)
						hit:disconnect()
						debServ:AddItem(Vel, 0)
						if Upward then
							debServ:AddItem(VelPart, 0)
						end
						if not Upward then
							for i = 0, 1.4, 0.1 do
								swait()
								Humanoid.WalkSpeed = 0
								FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(70)), 0.3)
								FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), 0.3)
								FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -1) * Euler(rad(70), 0, rad(60)), 0.3)
								FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(60), 0), 0.3)
								Neck.C0 = clerp(Neck.C0, Cf(0, 1.35, -0.5) * Euler(rad(-45), 0, 0), 0.3)
								Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-30), 0), 0.3)
								FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -0.4, 0) * Euler(rad(-20), rad(-60), 0), 0.3)
								FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, 0, 0) * Euler(0, 0, 0), 0.3)
								FRightHip.C0 = clerp(FRightHip.C0, Cf(0.5, -1.8, -0.7) * Euler(0, rad(20), 0), 0.3)
								FRightHip.C1 = clerp(FRightHip.C1, Cf(0, 0, 0) * Euler(rad(-15), 0, 0), 0.3)
								FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1, -1.4, -0.6) * Euler(0, rad(60), 0), 0.3)
								FLeftHip.C1 = clerp(FLeftHip.C1, Cf(0, 0, 0) * Euler(rad(-15), 0, 0), 0.3)
							end
						end
							Humanoid.WalkSpeed = CurrentSpeed
							LeftHip.Part0 = Torso
							LeftHip.Part1 = LeftLeg
							RightHip.Part0 = Torso
							RightHip.Part1 = RightLeg
							FLeftHip.Part0 = nil
							FLeftHip.Part1 = nil
							LeftHip.C0 = FLeftHip.C0
							LeftHip.C1 = FLeftHip.C1
							FRightHip.Part0 = nil
							FRightHip.Part1 = nil
							RightHip.C0 = FRightHip.C0
							RightHip.C1 = FRightHip.C1
						end
						if Current_Anim == "Falling" or Current_Anim == "Jumping" then
							LeftHip.Part0 = nil
							LeftHip.Part1 = nil
							RightHip.Part0 = nil
							RightHip.Part1 = nil
							FLeftHip.Part0 = Torso
							FLeftHip.Part1 = LeftLeg
							FLeftHip.C0 = LeftHip.C0
							FLeftHip.C1 = LeftHip.C1
							FRightHip.Part0 = Torso
							FRightHip.Part1 = RightLeg
							FRightHip.C0 = RightHip.C0
							FRightHip.C1 = RightHip.C1
							local t = 0.6
							local HBox = MakeHitBox(Vec(3, 5, 3), LeftLeg, true, Cf(0, -1.25, 0), Cf())
							local LVec = Inst("Part", F2)
							LVec.Transparency = 1
							LVec.Anchored = false
							LVec.CanCollide = false
							LVec.Locked = true
							LVec.Size = Vec(1, 1, 1)
							LVec.FrontSurface = "Hinge"
							local LVW = Inst("Weld", LVec)
							LVW.Part0 = LeftLeg
							LVW.Part1 = LVec
							LVW.Name = DecName
							LVW.C0 = Cf(0, -0.5, 0) * Euler(rad(-90), 0, 0)
							LVW.C1 = Cf(0, 0, 0) * Euler(0, 0, rad(-20))
							local Vel = Inst("BodyVelocity", RootPart)
							Vel.Name = DecName
							Vel.MaxForce = Vec(huge, huge, huge)
							Vel.Velocity = LVec.CFrame.lookVector * 0
							local FallDamage = 0
							local CanDiveKick = true
							local TouchedGround = false
							local BuffN = 3
							local ground, pos = rayCast(LVec.Position, LVec.CFrame.lookVector, 5, Character)
							local hit = HBox.Touched:connect(function(part)
		
		local hum = FindHum(part.Parent)
		if hum and hum ~= Humanoid and CanDiveKick then
			CanDiveKick = false
			FallDamage = FallDamage + 4
			Vel.Velocity = RootPart.CFrame.lookVector * -8 + Vec(0, 20, 0)
			local noscope = 0
			local s = Sound(part, "http://roblox.com/asset/?id=401057895", 1, 1, false)
			debServ:AddItem(s, 2)
			local j = Sound(RootPart, "http://roblox.com/asset/?id=158149887", 0.5, 1, false)
			debServ:AddItem(j, 2)
			DamageFunction(part, false, 0, 45, false, 0, "LifeSteal", RootPart, 0.1, false, 0, false, _, "", "")
			Apply_Buff(BuffN, 15)
			if BuffN > 0 then
				BuffN = BuffN - 0.1
			end
			for i = 0, 1.4, 0.1 do
				swait()
				Vel.Velocity = RootPart.CFrame.lookVector * -8 + Vec(0, 22, 0)
				if noscope ~= 360 then
					noscope = noscope + 30
				end
				local JumpSpeed = 0.4
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-60), 0, rad(10)), JumpSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), JumpSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-60), 0, rad(-10)), JumpSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), JumpSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.4, 0.2) * Euler(rad(30), 0, 0), JumpSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), JumpSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(noscope), 0, 0), JumpSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), JumpSpeed)
				FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-18), rad(90), 0), JumpSpeed)
				FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), JumpSpeed)
				FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.5, -0.8) * Euler(rad(-30), rad(-90), 0), JumpSpeed)
				FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), JumpSpeed)
			end
			CanDiveKick = true
		end
	end
)
							repeat
								swait()
								if CanDiveKick then
									FallDamage = FallDamage + 1
									FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, rad(15), rad(70)), t)
									FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), t)
									FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -0.9) * Euler(rad(90), 0, 0), t)
									FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, rad(-70)), t)
									Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.3) * Euler(rad(-35), rad(60), 0), t)
									Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), t)
									FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-5), rad(-80), 0), t)
									FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), t)
									FRightHip.C0 = clerp(FRightHip.C0, Cf(0.8, -0.5, -0.7) * Euler(rad(-30), 0, 0), t)
									FRightHip.C1 = clerp(FRightHip.C1, Cf(0, 1, 0) * Euler(0, 0, rad(25)), t)
									FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-0.8, -1, -0.15) * Euler(rad(-20), rad(60), 0), t)
									FLeftHip.C1 = clerp(FLeftHip.C1, Cf(0, 1, 0) * Euler(rad(-40), 0, 0), t)
									Vel.Velocity = LVec.CFrame.lookVector * 150
									MagicBlock(BrickColor.new(Colour1), "Neon", LeftLeg:GetRenderCFrame() * Cf(0, -5, -1), 3, 3, 3, 7, 7, 7, 0.1)
									MagicBlock(BrickColor.new(Colour2), "Neon", LeftLeg:GetRenderCFrame() * Cf(0, -4, -1), 2, 2, 2, 6, 6, 6, 0.1)
									ground = rayCast(LVec.Position, LVec.CFrame.lookVector, 15, Character)
									if ground and ground.Anchored == true then
										TouchedGround = true
									end
								end
							until TouchedGround
							MagicWave(ground.BrickColor, ground.Material, Cf(pos), 0, 0, 0, 3, 1, 3, 0.1)
							local WaveP = Inst("Part", F2)
							WaveP.Transparency = 1
							WaveP.Anchored = true
							WaveP.CanCollide = false
							WaveP.Locked = true
							WaveP.CFrame = Cf(pos)
							MagniDamage(WaveP, 25, true, 4 + (FallDamage), 5 + (FallDamage), false, 0, "Stun", 0.06 + (FallDamage) / 100, false, 0, false, _, "", "")
							debServ:AddItem(WaveP, 3)
							local boo = Sound(WaveP, "http://roblox.com/asset/?id=157878578", 1, 1, false)
							debServ:AddItem(boo, 0.4)
							debServ:AddItem(HBox, 0)
							debServ:AddItem(LVec, 0)
							hit:disconnect()
							debServ:AddItem(Vel, 0)
							for i = 0, 1.8, 0.1 do
								swait()
								Humanoid.WalkSpeed = 0
								FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(70)), 0.3)
								FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), 0.3)
								FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -1) * Euler(rad(70), 0, rad(60)), 0.3)
								FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(60), 0), 0.3)
								Neck.C0 = clerp(Neck.C0, Cf(0, 1.35, -0.5) * Euler(rad(-45), 0, 0), 0.3)
								Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-30), 0), 0.3)
								FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -0.4, 0) * Euler(rad(-20), rad(-60), 0), 0.3)
								FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, 0, 0) * Euler(0, 0, 0), 0.3)
								FRightHip.C0 = clerp(FRightHip.C0, Cf(0.5, -1.8, -0.7) * Euler(0, rad(20), 0), 0.3)
								FRightHip.C1 = clerp(FRightHip.C1, Cf(0, 0, 0) * Euler(rad(-15), 0, 0), 0.3)
								FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1, -1.4, -0.6) * Euler(0, rad(60), 0), 0.3)
								FLeftHip.C1 = clerp(FLeftHip.C1, Cf(0, 0, 0) * Euler(rad(-15), 0, 0), 0.3)
							end
							Humanoid.WalkSpeed = CurrentSpeed
							LeftHip.Part0 = Torso
							LeftHip.Part1 = LeftLeg
							RightHip.Part0 = Torso
							RightHip.Part1 = RightLeg
							FLeftHip.Part0 = nil
							FLeftHip.Part1 = nil
							LeftHip.C0 = FLeftHip.C0
							LeftHip.C1 = FLeftHip.C1
							FRightHip.Part0 = nil
							FRightHip.Part1 = nil
							RightHip.C0 = FRightHip.C0
							RightHip.C1 = FRightHip.C1
						end
							if Debounces.HasWep and not Debounces.DuelWielding then
								if Current_Anim == "Idle" or Current_Anim == "Walking" then
									LeftHip.Part0 = nil
									LeftHip.Part1 = nil
									RightHip.Part0 = nil
									RightHip.Part1 = nil
									FLeftHip.Part0 = Torso
									FLeftHip.Part1 = LeftLeg
									FLeftHip.C0 = LeftHip.C0
									FLeftHip.C1 = LeftHip.C1
									FRightHip.Part0 = Torso
									FRightHip.Part1 = RightLeg
									FRightHip.C0 = RightHip.C0
									FRightHip.C1 = RightHip.C1
									local t = 0.6
									local VelPart = RootPart
									local tim = 1
									local Speed = 150
									local HBSize = Vec(4, 8, 3)
									local Vel = Inst("BodyVelocity", RootPart)
									Vel.Name = DecName
									Vel.MaxForce = Vec(huge, huge, huge)
									Vel.Velocity = VelPart.CFrame.lookVector * 0
									if Upward then
										tim = 1.4
										Speed = 300
										local LVec = Inst("Part", F2)
										LVec.Transparency = 1
										LVec.Anchored = false
										LVec.CanCollide = false
										LVec.Locked = true
										-- DECOMPILER ERROR at PC2022: Overwrote pending register: R11 in 'AssignReg'

										LVec.Size = Vec(2, 2, 2--[[pos]])
										LVec.FrontSurface = "Hinge"
										local LVW = Inst("Weld", LVec)
										LVW.Part0 = RootPart
										LVW.Part1 = LVec
										LVW.Name = DecName
										LVW.C0 = Cf(0, 0, 0) * Euler(rad(50), 0, 0)
										VelPart = LVec
										Vel.Velocity = RootPart.CFrame.lookVector * -15 + Vec(0, 25, 0)
										local noscope = 0
										local j = Sound(RootPart, "http://roblox.com/asset/?id=158149887", 0.5, 1, false)
										debServ:AddItem(j, 2)
										for i = 0, 1.4, 0.1 do
											swait()
											if noscope ~= 360 then
												noscope = noscope + 30
											end
											local JumpSpeed = 0.4
											HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), JumpSpeed)
											HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), JumpSpeed)
											WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), JumpSpeed)
											WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), JumpSpeed)
											FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-60), 0, rad(10)), JumpSpeed)
											FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), JumpSpeed)
											FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-60), 0, rad(-10)), JumpSpeed)
											FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), JumpSpeed)
											Neck.C0 = clerp(Neck.C0, Cf(0, 1.4, 0.2) * Euler(rad(30), 0, 0), JumpSpeed)
											Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), JumpSpeed)
											FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(noscope), 0, 0), JumpSpeed)
											FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), JumpSpeed)
											FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-18), rad(90), 0), JumpSpeed)
											FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), JumpSpeed)
											FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.5, -0.8) * Euler(rad(-30), rad(-90), 0), JumpSpeed)
											FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), JumpSpeed)
										end
									end
										local HBox = MakeHitBox(HBSize, Hit_Box, true, Cf(), Cf())
										local T = 0
										local Penetrates = 0
										local hit = HBox.Touched:connect(function(part)
		
		local hum = FindHum(part.Parent)
		local p = part.Parent:FindFirstChild("Penetrated")
		local tor = part.Parent:FindFirstChild("Torso")
		if hum and hum ~= Humanoid and not p and tor then
			if not Upward then
				tim = tim + 1.2
			else
				tim = tim + 1.6
			end
			DamageFunction(part, false, 0, 30, false, 0, "Compensate", RootPart, 0.1, false, _, false, _, "", "")
			local Penetrate = Inst("Part")
			if hum.MaxHealth / 12 < hum.Health then
				debServ:AddItem(Penetrate, 0)
				Penetrate = Inst("Weld", HBox)
				Penetrate.Part0 = HBox
				Penetrate.Part1 = tor
				Penetrate.C0 = Cf(0, 2.6 - Penetrates, 0) * Euler(rad(90), 0, rad(-90))
			end
			local P = Inst("BoolValue", part.Parent)
			P.Name = "Penetrated"
			debServ:AddItem(P, 4)
			debServ:AddItem(Penetrate, 2)
			if Penetrates ~= 6 then
				Penetrates = Penetrates + 1
			end
			local rip = runServ.RenderStepped:connect(function()
			
			hum.PlatformStand = true
			DamageFunction(part, false, 0, 0 + Penetrates, false, 0, "Compensate", RootPart, 0.02, false, _, false, _, "", "")
		end
)
			repeat
				swait()
			until Penetrate.Parent == nil or T == tim or hum.Health <= hum.MaxHealth / 12
			hum.PlatformStand = false
			if Penetrates ~= 6 then
				Penetrates = Penetrates - 1
			end
			debServ:AddItem(P, 0)
			debServ:AddItem(Penetrate, 0)
			rip:disconnect()
		end
	end
)
										repeat
											Vel.Velocity = VelPart.CFrame.lookVector * Speed
											MagicBlock(BrickColor.new(Colour1), "Neon", HBox:GetRenderCFrame() * Cf(rand(-3, 3), 4, rand(-3, 3)), 5, 5, 5, 7, 7, 7, 0.1)
											MagicBlock(BrickColor.new(Colour2), "Neon", HBox:GetRenderCFrame() * Cf(rand(-3, 3), 4, rand(-3, 3)), 4, 4, 4, 6, 6, 6, 0.1)
											MagicBlock(BrickColor.new(Colour1), "Neon", HBox:GetRenderCFrame() * Cf(rand(-3, 3), 4, rand(-3, 3)), 5, 5, 5, 7, 7, 7, 0.1)
											MagicBlock(BrickColor.new(Colour2), "Neon", HBox:GetRenderCFrame() * Cf(rand(-3, 3), 4, rand(-3, 3)), 4, 4, 4, 6, 6, 6, 0.1)
											local SwingSpeed = 0.5
											HWeld.C0 = clerp(HWeld.C0, Cf(-0.7, -0.15, 0) * Euler(0, 0, 0), SwingSpeed)
											HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
											WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(180), 0, rad(-20)), SwingSpeed)
											WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
											FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, -0.3) * Euler(0, rad(-50), 0), SwingSpeed)
											FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(rad(-90), 0, 0), SwingSpeed)
											FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -1) * Euler(rad(60), 0, rad(80)), SwingSpeed)
											FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(65), 0), SwingSpeed)
											Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(0, 0, 0), SwingSpeed)
											Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(rad(20), rad(70), 0), SwingSpeed)
											if not Upward then
												FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0.65, -1, 0) * Euler(0, rad(70), 0), SwingSpeed)
												FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
											else
												FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0.65, -1, 0) * Euler(rad(50), 0, 0), SwingSpeed)
												FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, rad(-70), 0), SwingSpeed)
											end
											FRightHip.C0 = clerp(FRightHip.C0, Cf(0.8, -1, 0) * Euler(0, rad(-70), 0), SwingSpeed)
											FRightHip.C1 = clerp(FRightHip.C1, Cf(0, 1, 0) * Euler(rad(50), 0, 0), SwingSpeed)
											FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-0.5, -1, 0) * Euler(0, rad(-60), 0), SwingSpeed)
											FLeftHip.C1 = clerp(FLeftHip.C1, Cf(0, 1, 0) * Euler(rad(50), 0, 0), SwingSpeed)
											T = T + 0.1
											swait()
										until tim <= T
										debServ:AddItem(HBox, 0)
										hit:disconnect()
										debServ:AddItem(Vel, 0)
										if Upward then
											debServ:AddItem(VelPart, 0)
										end
										if not Upward then
											for i = 0, 1.4, 0.1 do
												swait()
												Humanoid.WalkSpeed = 0
												local SwingSpeed = 0.5
												HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
												HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
												WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
												WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), SwingSpeed)
												FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(60)), SwingSpeed)
												FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(30), 0), SwingSpeed)
												FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, rad(-60)), SwingSpeed)
												FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-30), 0), SwingSpeed)
												Neck.C0 = clerp(Neck.C0, Cf(0, 1.52, 0.2) * Euler(rad(30), 0, 0), SwingSpeed)
												Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
												FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1.2, 0) * Euler(rad(-40), 0, 0), SwingSpeed)
												FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
												FRightHip.C0 = clerp(FRightHip.C0, Cf(0.5, -1, -0.4) * Euler(rad(-12), 0, 0), SwingSpeed)
												FRightHip.C1 = clerp(FRightHip.C1, Cf(0, 1, 0) * Euler(0, 0, 0), SwingSpeed)
												FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-0.5, -0.6, -0.5) * Euler(rad(40), 0, 0), SwingSpeed)
												FLeftHip.C1 = clerp(FLeftHip.C1, Cf(0, 1, 0) * Euler(0, 0, 0), SwingSpeed)
											end
										end
												Humanoid.WalkSpeed = CurrentSpeed
												LeftHip.Part0 = Torso
												LeftHip.Part1 = LeftLeg
												RightHip.Part0 = Torso
												RightHip.Part1 = RightLeg
												FLeftHip.Part0 = nil
												FLeftHip.Part1 = nil
												LeftHip.C0 = FLeftHip.C0
												LeftHip.C1 = FLeftHip.C1
												FRightHip.Part0 = nil
												FRightHip.Part1 = nil
												RightHip.C0 = FRightHip.C0
												RightHip.C1 = FRightHip.C1
												end
												if Current_Anim == "Falling" or Current_Anim == "Jumping" then
													LeftHip.Part0 = nil
													LeftHip.Part1 = nil
													RightHip.Part0 = nil
													RightHip.Part1 = nil
													FLeftHip.Part0 = Torso
													FLeftHip.Part1 = LeftLeg
													FLeftHip.C0 = LeftHip.C0
													FLeftHip.C1 = LeftHip.C1
													FRightHip.Part0 = Torso
													FRightHip.Part1 = RightLeg
													FRightHip.C0 = RightHip.C0
													FRightHip.C1 = RightHip.C1
													local Speed = 150
													local HBSize = Vec(4, 8, 3)
													local Vel = Inst("BodyVelocity", RootPart)
													Vel.Name = DecName
													Vel.MaxForce = Vec(huge, huge, huge)
													Vel.Velocity = RootPart.CFrame.lookVector * 0
													local LVec = Inst("Part", F2)
													LVec.Transparency = 1
													LVec.Anchored = false
													LVec.CanCollide = false
													LVec.Locked = true
													LVec.Size = Vec(2, 2, 1)
													LVec.FrontSurface = "Hinge"
													local LVW = Inst("Weld", LVec)
													LVW.Part0 = RootPart
													LVW.Part1 = LVec
													LVW.Name = DecName
													LVW.C0 = Cf(0, 0, 0) * Euler(rad(-60), 0, 0)
													local HBox = MakeHitBox(HBSize, Hit_Box, true, Cf(), Cf())
													local FallDamage = 0
													local Penetrates = 0
													local ground, pos = rayCast(LVec.Position, LVec.CFrame.lookVector, 30, Character)
													local TouchedGround = false
													local hit = HBox.Touched:connect(function(part)
		
		local hum = FindHum(part.Parent)
		local p = part.Parent:FindFirstChild("Penetrated")
		local tor = part.Parent:FindFirstChild("Torso")
		if hum and hum ~= Humanoid and not p and tor then
			DamageFunction(part, false, 0, 25, false, 0, "Compensate", RootPart, 0.1, false, _, false, _, "", "")
			local Penetrate = Inst("Part")
			if hum.MaxHealth / 12 < hum.Health then
				debServ:AddItem(Penetrate, 0)
				Penetrate = Inst("Weld", HBox)
				Penetrate.Part0 = HBox
				Penetrate.Part1 = tor
				Penetrate.C0 = Cf(0, 2.6 - Penetrates, 0) * Euler(rad(90), 0, rad(-90))
			end
			local P = Inst("BoolValue", part.Parent)
			P.Name = "Penetrated"
			debServ:AddItem(P, 4)
			debServ:AddItem(Penetrate, 2)
			if Penetrates ~= 6 then
				Penetrates = Penetrates + 1
			end
			local rip = runServ.RenderStepped:connect(function()
			
			hum.PlatformStand = true
			DamageFunction(part, false, 0, 0 + Penetrates * 2 + FallDamage, false, 0, "Compensate", RootPart, 0.01, false, _, false, _, "", "")
		end
)
			repeat
				swait()
			until Penetrate.Parent == nil or hum.Health <= hum.MaxHealth / 12 or TouchedGround
			hum.PlatformStand = false
			if Penetrates ~= 6 then
				Penetrates = Penetrates - 1
			end
			debServ:AddItem(P, 0)
			debServ:AddItem(Penetrate, 0)
			rip:disconnect()
		end
	end
)
													repeat
														Vel.Velocity = LVec.CFrame.lookVector * Speed
														FallDamage = FallDamage + 1
														MagicBlock(BrickColor.new(Colour1), "Neon", HBox:GetRenderCFrame() * Cf(rand(-3, 3), 4, rand(-3, 3)), 5, 5, 5, 7, 7, 7, 0.1)
														MagicBlock(BrickColor.new(Colour2), "Neon", HBox:GetRenderCFrame() * Cf(rand(-3, 3), 4, rand(-3, 3)), 4, 4, 4, 6, 6, 6, 0.1)
														MagicBlock(BrickColor.new(Colour1), "Neon", HBox:GetRenderCFrame() * Cf(rand(-3, 3), 4, rand(-3, 3)), 5, 5, 5, 7, 7, 7, 0.1)
														MagicBlock(BrickColor.new(Colour2), "Neon", HBox:GetRenderCFrame() * Cf(rand(-3, 3), 4, rand(-3, 3)), 4, 4, 4, 6, 6, 6, 0.1)
														local SwingSpeed = 0.5
														HWeld.C0 = clerp(HWeld.C0, Cf(-0.7, -0.15, 0) * Euler(0, 0, 0), SwingSpeed)
														HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
														WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(180), 0, rad(-20)), SwingSpeed)
														WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
														FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, -0.3) * Euler(0, rad(-50), 0), SwingSpeed)
														FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(rad(-90), 0, 0), SwingSpeed)
														FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -1) * Euler(rad(60), 0, rad(80)), SwingSpeed)
														FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(65), 0), SwingSpeed)
														Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(0, 0, 0), SwingSpeed)
														Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(rad(20), rad(70), 0), SwingSpeed)
														FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0.65, -1, 0) * Euler(rad(-60), 0, 0), SwingSpeed)
														FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, rad(-70), 0), SwingSpeed)
														FRightHip.C0 = clerp(FRightHip.C0, Cf(0.8, -1, 0) * Euler(0, rad(-70), 0), SwingSpeed)
														FRightHip.C1 = clerp(FRightHip.C1, Cf(0, 1, 0) * Euler(rad(50), 0, 0), SwingSpeed)
														FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-0.5, -1, 0) * Euler(0, rad(-60), 0), SwingSpeed)
														FLeftHip.C1 = clerp(FLeftHip.C1, Cf(0, 1, 0) * Euler(rad(50), 0, 0), SwingSpeed)
														ground = rayCast(LVec.Position, LVec.CFrame.lookVector, 30, Character)
														if ground and ground.Anchored == true then
															TouchedGround = true
														end
														swait()
													until TouchedGround
													MagicWave(ground.BrickColor, ground.Material, Cf(pos), 0, 0, 0, 8, 1, 8, 0.1)
													local WaveP = Inst("Part", F2)
													WaveP.Transparency = 1
													WaveP.Anchored = true
													WaveP.CanCollide = false
													WaveP.Locked = true
													WaveP.CFrame = Cf(pos)
													MagniDamage(WaveP, 40, true, 2 + (FallDamage), 6 + (FallDamage), false, 0, "Compensate-Stun", 0.1 + (FallDamage) / 100, false, 0, false, _, "", "")
													debServ:AddItem(WaveP, 3)
													local boo = Sound(WaveP, "http://roblox.com/asset/?id=157878578", 1, 1, false)
													debServ:AddItem(boo, 0.4)
													debServ:AddItem(HBox, 0)
													debServ:AddItem(LVec, 0)
													hit:disconnect()
													debServ:AddItem(Vel, 0)
													if not Upward then
														for i = 0, 1.8, 0.1 do
															swait()
															Humanoid.WalkSpeed = 0
															local SwingSpeed = 0.5
															HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
															HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
															WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
															WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), SwingSpeed)
															FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(60)), SwingSpeed)
															FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(30), 0), SwingSpeed)
															FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, rad(-60)), SwingSpeed)
															FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-30), 0), SwingSpeed)
															Neck.C0 = clerp(Neck.C0, Cf(0, 1.52, 0.2) * Euler(rad(30), 0, 0), SwingSpeed)
															Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
															FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1.2, 0) * Euler(rad(-40), 0, 0), SwingSpeed)
															FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
															FRightHip.C0 = clerp(FRightHip.C0, Cf(0.5, -1, -0.4) * Euler(rad(-12), 0, 0), SwingSpeed)
															FRightHip.C1 = clerp(FRightHip.C1, Cf(0, 1, 0) * Euler(0, 0, 0), SwingSpeed)
															FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-0.5, -0.6, -0.5) * Euler(rad(40), 0, 0), SwingSpeed)
															FLeftHip.C1 = clerp(FLeftHip.C1, Cf(0, 1, 0) * Euler(0, 0, 0), SwingSpeed)
														end
													end
														end
													end
											end
																Humanoid.WalkSpeed = CurrentSpeed
															LeftHip.Part0 = Torso
															LeftHip.Part1 = LeftLeg
															RightHip.Part0 = Torso
															RightHip.Part1 = RightLeg
															FLeftHip.Part0 = nil
															FLeftHip.Part1 = nil
															LeftHip.C0 = FLeftHip.C0
															LeftHip.C1 = FLeftHip.C1
															FRightHip.Part0 = nil
															FRightHip.Part1 = nil
															RightHip.C0 = FRightHip.C0
															RightHip.C1 = FRightHip.C1
															Debounces.Attacking = false
	end
	
	Equip_Denial = function()
	
	Debounces.Equipping = true
	Attack_Num = 1
	for i = 0, 0.5, 0.1 do
		swait()
		local equips = 0.5
		HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(rad(25), 0, 0), equips)
		HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), equips)
		FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.35, 0) * Euler(rad(-25), 0, 0), equips)
		FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), equips)
		FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, 0), equips)
		FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), equips)
		Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.2) * Euler(-rad(10), 0, 0), equips)
		Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(20), 0), equips)
		FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, 0, 0), equips)
		FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), equips)
		RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), equips)
		RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), equips)
		LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), equips)
		LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), equips)
	end
	WepWeld.Part0 = Holder
	WepWeld.Part1 = Handle
	WepWeld.C0 = Cf() * Euler(rad(90), 0, rad(90))
	WepWeld.C1 = Cf() * Euler(0, rad(180), 0)
	CurrentSpeed = 12
	Humanoid.WalkSpeed = CurrentSpeed
	Debounces.HasWep = true
	Debounces.Equipping = false
end

	Unequip_Denial = function()
	
	Debounces.Equipping = true
	Attack_Num = 1
	LeftShoulder.Part0 = nil
	LeftShoulder.Part1 = nil
	FLeftShoulder.Part0 = Torso
	FLeftShoulder.Part1 = LeftArm
	FLeftShoulder.C0 = LeftShoulder.C0
	FLeftShoulder.C1 = LeftShoulder.C1
	for i = 0, 0.5, 0.1 do
		swait()
		local equips = 0.5
		HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(rad(25), 0, 0), equips)
		HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), equips)
		WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, rad(90)), equips)
		WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), equips)
		FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.35, 0) * Euler(rad(-25), 0, 0), equips)
		FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), equips)
		FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, 0), equips)
		FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), equips)
		Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.2) * Euler(-rad(10), 0, 0), equips)
		Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(20), 0), equips)
		FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, 0, 0), equips)
		FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), equips)
		RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), equips)
		RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), equips)
		LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), equips)
		LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), equips)
	end
	WepWeld.Part0 = Torso
	WepWeld.Part1 = Handle
	WepWeld.C0 = Cf(1.5, -1, 0.6) * Euler(rad(-90), 0, rad(90))
	WepWeld.C1 = Cf() * Euler(0, 0, 0)
	CurrentSpeed = 20
	Humanoid.WalkSpeed = CurrentSpeed
	Debounces.HasWep = false
	Debounces.Equipping = false
end

	EquipTES = function()
	
	if not Debounces.TESWield then
		Debounces.Equipping = true
		for i = 0, 0.5, 0.1 do
			swait()
			local SwingSpeed = 0.5
			FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(3)), SwingSpeed)
			FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
			FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, rad(12)), SwingSpeed)
			FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
			Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, 0, 0), SwingSpeed)
			Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
			RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
			LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
			LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
		end
		SheWeld.Parent = nil
		SheWeld.Part0 = Holder2
		SheWeld.Part1 = TESHandle
		SheWeld.C0 = Holder2.CFrame:inverse() * Cf(Holder2.Position)
		SheWeld.C1 = TESHandle.CFrame:inverse() * Cf(Holder2.Position)
		SheWeld.Parent = TESHandle
		Debounces.Equipping = false
		Debounces.TESWield = true
		CurrentSpeed = 16
		Humanoid.WalkSpeed = CurrentSpeed
	else
		Debounces.Equipping = true
		for i = 0, 0.5, 0.1 do
			swait()
			local SwingSpeed = 0.5
			SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(100), 0, 0), SwingSpeed)
			SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(3)), SwingSpeed)
			FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
			FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, rad(12)), SwingSpeed)
			FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
			Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, 0, 0), SwingSpeed)
			Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
			RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
			LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
			LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
		end
		CurrentSpeed = 6
		Humanoid.WalkSpeed = CurrentSpeed
		SheWeld.Part0 = Torso
		SheWeld.Part1 = TESHandle
		SheWeld.C0 = Cf(-1.1, -1.1, -0.2) * Euler(rad(100), 0, 0)
		Debounces.Equipping = false
		Debounces.TESWield = false
	end
end

	EquipTE = function()
	if not Debounces.TEWield then
		Debounces.Equipping = true
		Humanoid.WalkSpeed = 0
		Debounces.DisableJump = true
		LeftHip.Part0 = nil
		LeftHip.Part1 = nil
		RightHip.Part0 = nil
		RightHip.Part1 = nil
		FLeftHip.Part0 = Torso
		FLeftHip.Part1 = LeftLeg
		FLeftHip.C0 = LeftHip.C0
		FLeftHip.C1 = LeftHip.C1
		FRightHip.Part0 = Torso
		FRightHip.Part1 = RightLeg
		FRightHip.C0 = RightHip.C0
		FRightHip.C1 = RightHip.C1
		for i = 0, 0.7, 0.1 do
			swait()
			local SwingSpeed = 0.3
			FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(3)), SwingSpeed)
			FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
			FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, rad(12)), SwingSpeed)
			FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
			Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, 0, 0), SwingSpeed)
			Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
			FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
			FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
			FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
		end
		SheWeld.Parent = nil
		SheWeld.Part0 = Holder2
		SheWeld.Part1 = TESHandle
		SheWeld.C0 = Holder2.CFrame:inverse() * Cf(Holder2.Position)
		SheWeld.C1 = TESHandle.CFrame:inverse() * Cf(Holder2.Position)
		SheWeld.Parent = TESHandle
		for i = 0, 0.7, 0.1 do
			swait()
			local SwingSpeed = 0.3
			SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(100), 0, 0), SwingSpeed)
			SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.1, 0.325, -1.27) * Euler(rad(60), 0, rad(-25)), SwingSpeed)
			FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-90), 0), SwingSpeed)
			FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.6, 0.5, -0.4) * Euler(rad(8), rad(-50), 0), SwingSpeed)
			FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
			Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-8), rad(-15), 0), SwingSpeed)
			Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(15), 0), SwingSpeed)
			FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(9), 0), SwingSpeed)
			FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(6), 0), SwingSpeed)
			FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
		end
		WepWeld3.Parent = nil
		WepWeld3.Part0 = Holder
		WepWeld3.Part1 = TEHandle
		WepWeld3.C0 = Holder.CFrame:inverse() * Cf(Holder.Position)
		WepWeld3.C1 = TEHandle.CFrame:inverse() * Cf(Holder.Position)
		WepWeld3.Parent = TEHandle
		FITEB(11)
		for i = 0, 0.5, 0.1 do
			swait()
			local SwingSpeed = 0.08
			WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0, -0.1, 0) * Euler(rad(-90), 0, 0), SwingSpeed)
			WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			HWeld.C0 = clerp(HWeld.C0, Cf(0.4, -0.92, 0) * Euler(0, 0, rad(-20)), SwingSpeed)
			HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(100), 0, 0), SwingSpeed)
			SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.3, 0.5, -0.4) * Euler(rad(90), 0, rad(20)), SwingSpeed)
			FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
			FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.6, 0.6, 0) * Euler(0, 0, rad(-15)), SwingSpeed)
			FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
			Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(-20), 0), SwingSpeed)
			Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(20), 0), SwingSpeed)
			FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(9), 0), SwingSpeed)
			FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(6), 0), SwingSpeed)
			FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
		end
		local rotatebecauseitscool = 0
		local swing = Sound(TEHandle, "http://roblox.com/asset/?id=161006212", 1, 2.5, true)
		for i = 0, 0.5, 0.1 do
			swait()
			if rotatebecauseitscool < 1980 then
				rotatebecauseitscool = rotatebecauseitscool + 60
			end
			local SwingSpeed = 0.05
			WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0, -0.1, 0) * Euler(rad(rotatebecauseitscool), 0, 0), 0.7)
			WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), 0.7)
			HWeld.C0 = clerp(HWeld.C0, Cf(0.4, -0.92, 0) * Euler(0, 0, rad(-20)), 0.7)
			HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), 0.7)
			FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.3, 0.5, -0.4) * Euler(rad(90), 0, rad(20)), SwingSpeed)
			FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
			FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, rad(12)), 0.4)
			FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), 0.4)
			Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(-20), 0), SwingSpeed)
			Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(20), 0), SwingSpeed)
			FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(9), 0), SwingSpeed)
			FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(6), 0), SwingSpeed)
			FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
		end
		SheWeld.Part0 = Torso
		SheWeld.Part1 = TESHandle
		SheWeld.C0 = Cf(-1.1, -1.1, -0.2) * Euler(rad(100), 0, 0)
		for i = 0, 2, 0.1 do
			swait()
			if rotatebecauseitscool < 1980 then
				rotatebecauseitscool = rotatebecauseitscool + 60
			end
			local SwingSpeed = 0.05
			WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0, -0.1, 0) * Euler(rad(rotatebecauseitscool), 0, 0), 0.7)
			WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), 0.7)
			HWeld.C0 = clerp(HWeld.C0, Cf(0.4, -0.92, 0) * Euler(0, 0, rad(-20)), 0.7)
			HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), 0.7)
			FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.3, 0.5, -0.4) * Euler(rad(90), 0, rad(20)), SwingSpeed)
			FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
			FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, rad(-15)), 0.4)
			FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), 0.4)
			Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(-20), 0), SwingSpeed)
			Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(20), 0), SwingSpeed)
			FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(9), 0), SwingSpeed)
			FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(6), 0), SwingSpeed)
			FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
		end
		swing:Stop()
		debServ:AddItem(swing, 1)
		local leash = Sound(TEHandle, "rbxasset://sounds\\unsheath.wav", 1, 0.7, false)
		debServ:AddItem(leash, 1)
		for i = 0, 2, 0.1 do
			swait()
			local SwingSpeed = 0.08
			WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0, -0.1, 0) * Euler(rad(-100), 0, 0), 0.5)
			WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.6, 0.4, -0.4) * Euler(rad(30), 0, rad(20)), SwingSpeed)
			FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(20), 0), SwingSpeed)
			FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, rad(-15)), 0.4)
			FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-15), 0), 0.4)
			Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-11), rad(-40), 0), SwingSpeed)
			Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(40), 0), SwingSpeed)
			FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(13), 0), SwingSpeed)
			FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(3), 0), SwingSpeed)
			FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
		end
		chatServ:Chat(Head, "It\'s time to end this fairy tale.", 2)
		for i = 0, 7.5, 0.1 do
			swait()
			local SwingSpeed = 0.08
			WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0, -0.1, 0) * Euler(rad(-100), 0, 0), 0.5)
			WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.6, 0.4, -0.4) * Euler(rad(30), 0, rad(20)), SwingSpeed)
			FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(20), 0), SwingSpeed)
			FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, rad(-15)), 0.4)
			FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-15), 0), 0.4)
			Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-11), rad(-40), 0), SwingSpeed)
			Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(40), 0), SwingSpeed)
			FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(13), 0), SwingSpeed)
			FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(3), 0), SwingSpeed)
			FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
		end
		LeftHip.Part0 = Torso
		LeftHip.Part1 = LeftLeg
		RightHip.Part0 = Torso
		RightHip.Part1 = RightLeg
		FLeftHip.Part0 = nil
		FLeftHip.Part1 = nil
		LeftHip.C0 = FLeftHip.C0
		LeftHip.C1 = FLeftHip.C1
		FRightHip.Part0 = nil
		FRightHip.Part1 = nil
		RightHip.C0 = FRightHip.C0
		RightHip.C1 = FRightHip.C1
		Debounces.Equipping = false
		Debounces.DisableJump = false
		Debounces.TEWield = true
		Attack_Num = 1
		CurrentSpeed = 14
		Humanoid.WalkSpeed = CurrentSpeed
	else
		do
			Debounces.Equipping = true
			Debounces.DisableJump = true
			Humanoid.WalkSpeed = 0
			LeftHip.Part0 = nil
			LeftHip.Part1 = nil
			RightHip.Part0 = nil
			RightHip.Part1 = nil
			FLeftHip.Part0 = Torso
			FLeftHip.Part1 = LeftLeg
			FLeftHip.C0 = LeftHip.C0
			FLeftHip.C1 = LeftHip.C1
			FRightHip.Part0 = Torso
			FRightHip.Part1 = RightLeg
			FRightHip.C0 = RightHip.C0
			FRightHip.C1 = RightHip.C1
			for i = 0, 0.5, 0.1 do
				swait()
				local SwingSpeed = 0.5
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(3)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, rad(12)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
				FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
				FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
				FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
			end
			SheWeld.Parent = nil
			SheWeld.Part0 = Holder2
			SheWeld.Part1 = TESHandle
			SheWeld.C0 = Holder2.CFrame:inverse() * Cf(Holder2.Position)
			SheWeld.C1 = TESHandle.CFrame:inverse() * Cf(Holder2.Position)
			SheWeld.Parent = TESHandle
			HTEB()
			for i = 0, 0.5, 0.1 do
				swait()
				local SwingSpeed = 0.5
				SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(100), 0, 0), SwingSpeed)
				SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.1, 0.325, -1.27) * Euler(rad(60), 0, rad(-25)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-90), 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.6, 0.5, -0.4) * Euler(rad(8), rad(-50), 0), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-8), rad(-15), 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(15), 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(9), 0), SwingSpeed)
				FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(6), 0), SwingSpeed)
				FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
			end
			local Sheath = Sound(TESHandle, "rbxasset://sounds\\unsheath.wav", 1, 1, false)
			for i = 0, 0.5, 0.1 do
				swait()
				local SwingSpeed = 0.5
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(3)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, rad(12)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
				FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
				FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
				FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
			end
			Attack_Num = 1
			SheWeld.Part0 = Torso
			SheWeld.Part1 = TESHandle
			SheWeld.C0 = Cf(-1.1, -1.1, -0.2) * Euler(rad(100), 0, 0)
			LeftHip.Part0 = Torso
			LeftHip.Part1 = LeftLeg
			RightHip.Part0 = Torso
			RightHip.Part1 = RightLeg
			FLeftHip.Part0 = nil
			FLeftHip.Part1 = nil
			LeftHip.C0 = FLeftHip.C0
			LeftHip.C1 = FLeftHip.C1
			FRightHip.Part0 = nil
			FRightHip.Part1 = nil
			RightHip.C0 = FRightHip.C0
			RightHip.C1 = FRightHip.C1
			WepWeld3.Part0 = TESHandle
			WepWeld3.Part1 = TEHandle
			WepWeld3.C0 = Cf(0, 0, 0)
			WepWeld3.C1 = Cf(0, 3, 0) * Euler(0, rad(180), 0)
			Debounces.Equipping = false
			Debounces.DisableJump = false
			Debounces.TEWield = false
			CurrentSpeed = 6
			Humanoid.WalkSpeed = CurrentSpeed
		end
	end
end

	Awaken = function()
	Debounces.Successful_KeyStroke = true
	Debounces.Attacking = true
	Debounces.DisableJump = true
	GodMode = true
	Humanoid.WalkSpeed = 0
	WepWeld.Part0 = RootPart
	WepWeld.Part1 = Handle
	WepWeld.C0 = RootPart.CFrame:inverse() * Cf(RootPart.Position)
	WepWeld.C1 = Handle.CFrame:inverse() * Cf(RootPart.Position)
	local BP = Inst("BodyPosition", RootPart)
	local StopEffects = false
	if not runServ:IsStudio() then
		local RingP = Inst("Part", F2)
			RingP.Anchored = true
			RingP.CanCollide = false
			RingP.Transparency = 1
			RingP.CFrame = RootPart.CFrame * CFrame.new(0, -3, 0)
			BP.Parent = RootPart
			BP.Name = DecName
			BP.Position = RootPart.Position
			local OGPos = RootPart.Position
			BP.MaxForce = Vec(huge, huge, huge)
			local StopRings = false
			coroutine.resume(coroutine.create(function()
		repeat
			wait(0.3)
			local boo = Sound(RingP, "http://roblox.com/asset/?id=228343249", 0.1, 0.5, false)
			debServ:AddItem(boo, 0.3)
			MagniDamage(RingP, 38, true, 4, 8, true, 200, "Compensate-Knockdown", 0.01, false, 0, false, _, "", "")
			MagniDamage(RootPart, 38, true, 4, 8, true, 200, "Compensate-Knockdown", 0.01, false, 0, false, _, "", "")
			MagicRing(BrickColor.new(Colour1), "Neon", RingP:GetRenderCFrame() * Cf(0, 0, 0) * Euler(rad(90), 0, 0), 0, 0, 1, 3, 3, 1.2, 0.05)
		until StopRings
	end
))
			chatServ:Chat(Head, "Seal 6, disable.", 2)
			for i = 0, 5, 0.1 do
				swait()
				local SwingSpeed = 0.5
				HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 13, -1.7) * Euler(rad(180), 0, 0), SwingSpeed)
				WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(140), 0, rad(20)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(140), 0, rad(-20)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(10), 0, 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(15), 0, 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-15), rad(90), 0), SwingSpeed)
				RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
				LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(rad(-15), rad(-90), 0), SwingSpeed)
				LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
			end
			chatServ:Chat(Head, "This world and I are irreconcilable.", 2)
			wait(2)
			for i = 0, 16, 0.2 do
				swait()
				BP.Position = Vec(OGPos.x, OGPos.y + i, OGPos.z)
				local SwingSpeed = 0.5
				HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 13, -1.7) * Euler(rad(180), 0, 0), SwingSpeed)
				WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(140), 0, rad(20)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(140), 0, rad(-20)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(15), 0, 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(20), 0, 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-30), rad(90), 0), SwingSpeed)
				RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
				LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(rad(-30), rad(-90), 0), SwingSpeed)
				LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
			end
			chatServ:Chat(Head, "I deny this world its existence,", 2)
			wait(2)
			debServ:AddItem(RingP, 0)
			local s = Sound(Hit_Box, "http://roblox.com/asset/?id=178452217", 0.6, 0.5, false)
			debServ:AddItem(s, 5)
			for i = 0, 5, 0.1 do
				local SwingSpeed = 0.5
				for _,p in pairs(Denial:GetChildren()) do
					if p.Transparency ~= 1 then
						p.Transparency = i / 4.5
					end
				end
				MagicBlock(BC(Colour1), "Neon", Hit_Box:GetRenderCFrame() * Cf(rand(-1, 1), rand(-5, 5), rand(-1, 1)), 0.1, 0.1, 0.1, 1.2, 1.2, 1.2, 0.05)
				MagicBlock(BC(Colour2), "Neon", Hit_Box:GetRenderCFrame() * Cf(rand(-1, 1), rand(-5, 5), rand(-1, 1)), 0.1, 0.1, 0.1, 1.2, 1.2, 1.2, 0.05)
				MagicBlock(BC(Colour1), "Neon", Hit_Box:GetRenderCFrame() * Cf(rand(-1, 1), rand(-5, 5), rand(-1, 1)), 0.1, 0.1, 0.1, 1.2, 1.2, 1.2, 0.05)
				MagicBlock(BC(Colour2), "Neon", Hit_Box:GetRenderCFrame() * Cf(rand(-1, 1), rand(-5, 5), rand(-1, 1)), 0.1, 0.1, 0.1, 1.2, 1.2, 1.2, 0.05)
				HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 13, -1.7) * Euler(rad(180), 0, 0), SwingSpeed)
				WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(140), 0, rad(60)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(140), 0, rad(-60)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(10), 0, 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(15), 0, 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-15), rad(90), 0), SwingSpeed)
				RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
				LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(rad(-15), rad(-90), 0), SwingSpeed)
				LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
				swait()
			end
			chatServ:Chat(Head, "and I shall erase it!", 2)
			FRightHip.Part0 = Torso
			FRightHip.Part1 = RightLeg
			RightHip.Part0 = nil
			RightHip.Part1 = nil
			FRightHip.C0 = RightHip.C0
			FRightHip.C1 = RightHip.C1
			FLeftHip.Part0 = Torso
			FLeftHip.Part1 = LeftLeg
			LeftHip.Part0 = nil
			LeftHip.Part1 = nil
			FLeftHip.C0 = LeftHip.C0
			FLeftHip.C1 = LeftHip.C1
			StopRings = true
			for i = 0, 0.6, 0.1 do
				local SwingSpeed = 0.3
				HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 13, -1.7) * Euler(rad(180), 0, 0), SwingSpeed)
				WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(0), 0), SwingSpeed)
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(0.8, 0.5, -0.6) * Euler(rad(70), 0, rad(-60)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.8, 0.5, -0.6) * Euler(rad(66), 0, rad(60)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.2, -0.4) * Euler(rad(-60), 0, 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-30), 0, 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -0.15, -1.2) * Euler(rad(-25), 0, 0), SwingSpeed)
				FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.15, -1.2) * Euler(rad(-25), 0, 0), SwingSpeed)
				FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
				swait()
			end
			coroutine.resume(coroutine.create(function()
		
		coroutine.resume(coroutine.create(function()
			
			repeat
				wait()
				MagniDamage(RootPart, 18, true, 60, 90, true, 666, "Compensate-Knockdown", 0.5, false, 0, false, _, "", "")
				MagniDamage(RootPart, 52, false, 0, 2, true, -20, "Compensate", 0.1, false, 0, false, _, "", "")
				local rnum = 40
				local Rand1, Rand2, Rand3, Rand4 = {rand(-rnum, rnum), rand(-rnum, rnum), rand(-rnum, rnum)}, {rand(-rnum, rnum), rand(-rnum, rnum), rand(-rnum, rnum)}, {rand(-360, 360), rand(-360, 360), rand(-360, 360)}, {rand(-rnum, rnum), rand(-rnum, rnum), rand(-rnum, rnum)}
				MagicBlood(BC(Colour1), "Neon", RootPart:GetRenderCFrame() * Cf(Rand1[1], Rand1[2], Rand1[3]), 14, 14, 14, 0.1, 0.1, 0.1, 0.05)
				MagicBlood(BC(Colour2), "Neon", RootPart:GetRenderCFrame() * Cf(Rand1[1], Rand1[2], Rand1[3]), 8, 8, 8, 0.1, 0.1, 0.1, 0.05)
				MagicBlood(BC(Colour2), "Neon", RootPart:GetRenderCFrame() * Cf(Rand2[1], Rand2[2], Rand2[3]), 14, 14, 14, 0.1, 0.1, 0.1, 0.05)
				MagicBlood(BC(Colour1), "Neon", RootPart:GetRenderCFrame() * Cf(Rand2[1], Rand2[2], Rand2[3]), 8, 8, 8, 0.1, 0.1, 0.1, 0.05)
				MagicBlock(BC(Colour1), "Neon", RootPart:GetRenderCFrame() * Cf(Rand4[1], Rand4[2], Rand4[3]), 14, 14, 14, 0.1, 0.1, 0.1, 0.05)
				MagicBlock(BC(Colour2), "Neon", RootPart:GetRenderCFrame() * Cf(Rand4[1], Rand4[2], Rand4[3]), 8, 8, 8, 0.1, 0.1, 0.1, 0.05)
			until StopEffects
		end
))
		repeat
			MagicSpikeBall(BC(Colour1), "Neon", RootPart:GetRenderCFrame(), 0, 0, 0, 0.7, 0.7, 0.7, 0.05)
			MagicSpikeBall(BC(Colour2), "Neon", RootPart:GetRenderCFrame(), 0, 0, 0, 0.5, 0.5, 0.5, 0.05)
			MagicCircle(BC(Colour1), "Neon", RootPart:GetRenderCFrame(), 0, 0, 0, 0.4, 0.4, 0.4, 0.05)
			MagicCircle(BC(Colour2), "Neon", RootPart:GetRenderCFrame(), 0, 0, 0, 0.3, 0.3, 0.3, 0.05)
			wait(0.3)
		until StopEffects
	end
))
			wait(10)
		end
		CArmour.Parent = Character
		local WeldBase = Inst("Model", CArmour)
		WeldBase.Name = "WeldBase"
		local aHead = Inst("Part", WeldBase)
		aHead.Transparency = 1
		aHead.Name = "FakeHead"
		aHead.Anchored = true
		aHead.CanCollide = false
		aHead.Locked = true
		aHead.Size = Vec(0.2, 0.2, 0.2)
		aHead.Position = Vec(60.2, 5.3, -275)
		aHead.Rotation = Vec(-180, 0, -180)
		local aLarm = Inst("Part", WeldBase)
		aLarm.Transparency = 1
		aLarm.Name = "FakeLeftArm"
		aLarm.Anchored = true
		aLarm.CanCollide = false
		aLarm.Locked = true
		aLarm.Size = Vec(0.2, 0.2, 0.2)
		aLarm.Position = Vec(58.7, 3.8, -275)
		aLarm.Rotation = Vec(-180, 0, -180)
		local aLleg = Inst("Part", WeldBase)
		aLleg.Transparency = 1
		aLleg.Name = "FakeLeftLeg"
		aLleg.Anchored = true
		aLleg.CanCollide = false
		aLleg.Locked = true
		aLleg.Size = Vec(0.2, 0.2, 0.2)
		aLleg.Position = Vec(59.7, 1.8, -275)
		aLleg.Rotation = Vec(-180, 0, -180)
		local aRarm = Inst("Part", WeldBase)
		aRarm.Transparency = 1
		aRarm.Name = "FakeRightArm"
		aRarm.Anchored = true
		aRarm.CanCollide = false
		aRarm.Locked = true
		aRarm.Size = Vec(0.2, 0.2, 0.2)
		aRarm.Position = Vec(58.7, 3.8, -275)
		aRarm.Rotation = Vec(-180, 0, -180)
		local aRleg = Inst("Part", WeldBase)
		aRleg.Transparency = 1
		aRleg.Name = "FakeRightLeg"
		aRleg.Anchored = true
		aRleg.CanCollide = false
		aRleg.Locked = true
		aRleg.Size = Vec(0.2, 0.2, 0.2)
		aRleg.Position = Vec(59.7, 1.8, -275)
		aRleg.Rotation = Vec(-180, 0, -180)
		local aTor = Inst("Part", WeldBase)
		aTor.Transparency = 1
		aTor.Name = "FakeTorso"
		aTor.Anchored = true
		aTor.CanCollide = false
		aTor.Locked = true
		aTor.Size = Vec(0.2, 0.2, 0.2)
		aTor.Position = Vec(60.2, 3.8, -275)
		aTor.Rotation = Vec(-180, 0, -180)
		for _,k in pairs(WeldBase:GetChildren()) do
			if k:IsA("BasePart") then
				k:BreakJoints()
			end
		end
		local MakeHelmet = function()
		
		local Parent = Inst("Model", CArmour)
		Parent.Name = "Helmet"
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "HelmetBack", Vector3.new(0.2, 0.2, 0.2), Vector3.new(60.2, 5.4, -275.73), Vector3.new(90, 0, 0), "SpecialMesh", Vector3.new(1.2, 2, 1.6), "http://www.roblox.com/asset/?id=20637493", "FileMesh")
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "HelmetBase", Vector3.new(0.2, 0.2, 0.2), Vector3.new(60.2, 5.4, -275), Vector3.new(-180, 0, -180), "SpecialMesh", Vector3.new(1, 1, 1), "http://www.roblox.com/asset/?id=87249889", "FileMesh")
		local HEpart = CreatePart("Part", Parent, Colour1, "Neon", 1, 0, "HelmetEffect", Vector3.new(0.2, 0.2, 0.2), Vector3.new(60.2, 5.5, -275.7), Vector3.new(0, 0, 0), "BlockMesh", Vector3.new(0, 0, 0), "", "")
		local peSize = {NumberSequenceKeypoint.new(0, 1.31, 0), NumberSequenceKeypoint.new(1, 0, 0)}
		local peTrans = {NumberSequenceKeypoint.new(0, 0.137, 0), NumberSequenceKeypoint.new(1, 1, 0)}
		local pe = Inst("ParticleEmitter", HEpart)
		pe.LightEmission = 0.5
		pe.Color = ColorSequence.new(HEpart.BrickColor.Color)
		pe.Size = NumberSequence.new(peSize)
		pe.Transparency = NumberSequence.new(peTrans)
		pe.Texture = "rbxassetid://37332909"
		pe.Acceleration = Vec(0, -100, 0)
		pe.EmissionDirection = "Front"
		pe.Lifetime = NumberRange.new(0.35)
		pe.Rate = 800000
		pe.Speed = NumberRange.new(15)
		CEP = HEpart
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "HelmetPart", Vector3.new(0.2, 0.2, 0.2), Vector3.new(60.2, 5.8, -275), Vector3.new(-150, 0, -180), "SpecialMesh", Vector3.new(1, 1, 1), "http://www.roblox.com/asset/?id=189962102", "FileMesh")
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "MouthGuard", Vector3.new(0.2, 0.2, 0.2), Vector3.new(60.2, 5, -274.6), Vector3.new(-180, 0, -180), "SpecialMesh", Vector3.new(1, 1.2, 1.1), "http://www.roblox.com/asset/?id=19380683", "FileMesh")
		for _,K in pairs(Parent:GetChildren()) do
			if K:IsA("BasePart") then
				K:BreakJoints()
			end
		end
		for _,z in pairs(Parent:GetChildren()) do
			if z:IsA("BasePart") then
				local Weld = Inst("Weld", aHead)
				Weld.Part0 = aHead
				Weld.Part1 = z
				Weld.Name = z.Name .. "-to-" .. aHead.Name
				Weld.C0 = aHead.CFrame:inverse() * Cf(aHead.Position)
				Weld.C1 = z.CFrame:inverse() * Cf(aHead.Position)
				z.Anchored = false
				z.CanCollide = false
			end
		end
	end

		local Cape = nil
		local MakeTorsoArmour = function()
		
		local Parent = Inst("Model", CArmour)
		Parent.Name = "TorsoArmour"
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourBody", Vector3.new(2, 2, 1), Vector3.new(60.2, 3.8, -275), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1, 1, 1.01), "", "")
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ArmourPartWedge1", Vector3.new(0.2, 1, 0.2), Vector3.new(59.7, 3.7, -275.4), Vector3.new(90, 0, 90), "SpecialMesh", Vector3.new(1.1, 1, 1), "", "Wedge")
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ArmourPart1", Vector3.new(2, 0.2, 0.2), Vector3.new(60.2, 3.5, -275.4), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1.01, 1, 1.1), "", "")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourPartNail1", Vector3.new(0.2, 0.2, 0.2), Vector3.new(61.1, 4.7, -274.6), Vector3.new(-90, -90, 0), "CylinderMesh", Vector3.new(0.6, 1.18, 0.6), "", "")
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ArmourPart2", Vector3.new(2, 0.6, 1), Vector3.new(60.2, 3.1, -275), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1.01, 1, 1.02), "", "")
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ArmourPartWedge2", Vector3.new(1, 0.8, 0.2), Vector3.new(60.8, 3.5, -275), Vector3.new(90, 0, 90), "SpecialMesh", Vector3.new(1.02, 1.025, 1), "", "Wedge")
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ArmourPart3", Vector3.new(0.4, 1, 0.4), Vector3.new(60.2, 4.3, -275.5), Vector3.new(-180, 0, -180), "SpecialMesh", Vector3.new(0.4, 1, 0.5), "", "Sphere")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourPartNail2", Vector3.new(0.2, 0.2, 0.2), Vector3.new(59.3, 2.9, -274.6), Vector3.new(-90, -90, 0), "CylinderMesh", Vector3.new(0.6, 1.18, 0.6), "", "")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourPartNail3", Vector3.new(0.2, 0.2, 0.2), Vector3.new(61.1, 2.9, -274.6), Vector3.new(-90, -90, 0), "CylinderMesh", Vector3.new(0.6, 1.18, 0.6), "", "")
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ArmourPartWedge3", Vector3.new(1, 0.8, 0.2), Vector3.new(59.6, 3.5, -275), Vector3.new(90, 0, -90), "SpecialMesh", Vector3.new(1.02, 1.025, 1), "", "Wedge")
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ArmourPartWedge4", Vector3.new(0.2, 1, 0.2), Vector3.new(60.7, 3.7, -275.4), Vector3.new(90, 0, -90), "SpecialMesh", Vector3.new(1.1, 1, 1), "", "Wedge")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourPartNail4", Vector3.new(0.2, 0.2, 0.2), Vector3.new(59.3, 4.7, -275.4), Vector3.new(90, 90, 0), "CylinderMesh", Vector3.new(0.6, 1.18, 0.6), "", "")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourPartNail5", Vector3.new(0.2, 0.2, 0.2), Vector3.new(59.3, 4.7, -274.6), Vector3.new(-90, -90, 0), "CylinderMesh", Vector3.new(0.6, 1.18, 0.6), "", "")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourPartNail6", Vector3.new(0.2, 0.2, 0.2), Vector3.new(59.3, 3.5, -274.6), Vector3.new(-90, -90, 0), "CylinderMesh", Vector3.new(0.6, 1.18, 0.6), "", "")
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ArmourPart4", Vector3.new(0.4, 0.4, 0.2), Vector3.new(60.2, 3.6, -274.6), Vector3.new(0, 0, 0), "SpecialMesh", Vector3.new(1, 1, 1.1), "", "Torso")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourPartNail7", Vector3.new(0.2, 0.2, 0.2), Vector3.new(61.1, 2.9, -275.4), Vector3.new(90, 90, 0), "CylinderMesh", Vector3.new(0.6, 1.18, 0.6), "", "")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourPartNail8", Vector3.new(0.2, 0.2, 0.2), Vector3.new(61.1, 3.5, -275.4), Vector3.new(90, 90, 0), "CylinderMesh", Vector3.new(0.6, 1.18, 0.6), "", "")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourPartNail9", Vector3.new(0.2, 0.2, 0.2), Vector3.new(59.3, 3.5, -275.4), Vector3.new(90, 90, 0), "CylinderMesh", Vector3.new(0.6, 1.18, 0.6), "", "")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourPartNail10", Vector3.new(0.2, 0.2, 0.2), Vector3.new(59.3, 2.9, -275.4), Vector3.new(90, 90, 0), "CylinderMesh", Vector3.new(0.6, 1.18, 0.6), "", "")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourPartNail11", Vector3.new(0.2, 0.2, 0.2), Vector3.new(61.1, 4.7, -275.4), Vector3.new(90, 90, 0), "CylinderMesh", Vector3.new(0.6, 1.18, 0.6), "", "")
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ArmourPart5", Vector3.new(0.4, 0.2, 0.4), Vector3.new(60.2, 3.8, -274.6), Vector3.new(-90, 0, 0), "CylinderMesh", Vector3.new(0.68, 1.1, 0.68), "", "")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourPart6", Vector3.new(0.4, 0.2, 0.4), Vector3.new(60.2, 3.8, -274.6), Vector3.new(-90, 0, 0), "CylinderMesh", Vector3.new(0.45, 1.15, 0.45), "", "")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourPart7", Vector3.new(0.2, 0.2, 0.2), Vector3.new(61.1, 3.5, -274.6), Vector3.new(-90, -90, 0), "CylinderMesh", Vector3.new(0.6, 1.18, 0.6), "", "")
		local k = CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ArmourPartNeon1", Vector3.new(0.2, 0.2, 0.4), Vector3.new(61.1, 4.7, -274.5), Vector3.new(-180, 0, -180), "SpecialMesh", Vector3.new(0.5, 0.5, 0.1), "", "Sphere")
		k.Mesh.Offset = Vec(0, 0, -0.01)
		local k = CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ArmourPartNeon2", Vector3.new(0.2, 0.2, 0.4), Vector3.new(61.1, 2.9, -274.5), Vector3.new(-180, 0, -180), "SpecialMesh", Vector3.new(0.5, 0.5, 0.1), "", "Sphere")
		k.Mesh.Offset = Vec(0, 0, -0.01)
		local k = CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ArmourPartNeon3", Vector3.new(0.2, 0.2, 0.4), Vector3.new(59.3, 2.9, -274.5), Vector3.new(-180, 0, -180), "SpecialMesh", Vector3.new(0.5, 0.5, 0.1), "", "Sphere")
		k.Mesh.Offset = Vec(0, 0, -0.01)
		local k = CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ArmourPartNeon4", Vector3.new(0.2, 0.2, 0.4), Vector3.new(61.1, 3.5, -275.5), Vector3.new(0, 0, 0), "SpecialMesh", Vector3.new(0.5, 0.5, 0.1), "", "Sphere")
		k.Mesh.Offset = Vec(0, 0, -0.01)
		local k = CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ArmourPartNeon5", Vector3.new(0.2, 0.2, 0.4), Vector3.new(59.3, 2.9, -275.5), Vector3.new(0, 0, 0), "SpecialMesh", Vector3.new(0.5, 0.5, 0.1), "", "Sphere")
		k.Mesh.Offset = Vec(0, 0, -0.01)
		local k = CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ArmourPartNeon6", Vector3.new(0.2, 0.2, 0.4), Vector3.new(61.1, 2.9, -275.5), Vector3.new(0, 0, 0), "SpecialMesh", Vector3.new(0.5, 0.5, 0.1), "", "Sphere")
		k.Mesh.Offset = Vec(0, 0, -0.01)
		CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ArmourPartNeon7", Vector3.new(0.4, 0.4, 0.4), Vector3.new(60.2, 3.8, -274.5), Vector3.new(-180, 0, -180), "SpecialMesh", Vector3.new(0.4, 0.4, 0.2), "", "Sphere")
		local k = CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ArmourPartNeon8", Vector3.new(0.2, 0.2, 0.4), Vector3.new(59.3, 3.5, -274.5), Vector3.new(-180, 0, -180), "SpecialMesh", Vector3.new(0.5, 0.5, 0.1), "", "Sphere")
		k.Mesh.Offset = Vec(0, 0, -0.01)
		local k = CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ArmourPartNeon9", Vector3.new(0.2, 0.2, 0.4), Vector3.new(59.3, 4.7, -275.5), Vector3.new(0, 0, 0), "SpecialMesh", Vector3.new(0.5, 0.5, 0.1), "", "Sphere")
		k.Mesh.Offset = Vec(0, 0, -0.01)
		local k = CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ArmourPartNeon10", Vector3.new(0.2, 0.2, 0.4), Vector3.new(61.1, 4.7, -275.5), Vector3.new(0, 0, 0), "SpecialMesh", Vector3.new(0.5, 0.5, 0.1), "", "Sphere")
		k.Mesh.Offset = Vec(0, 0, -0.01)
		local k = CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ArmourPartNeon11", Vector3.new(0.2, 0.2, 0.4), Vector3.new(59.3, 3.5, -275.5), Vector3.new(0, 0, 0), "SpecialMesh", Vector3.new(0.5, 0.5, 0.1), "", "Sphere")
		k.Mesh.Offset = Vec(0, 0, -0.01)
		local k = CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ArmourPartNeon12", Vector3.new(0.2, 0.2, 0.4), Vector3.new(61.1, 3.5, -274.5), Vector3.new(-180, 0, -180), "SpecialMesh", Vector3.new(0.5, 0.5, 0.1), "", "Sphere")
		k.Mesh.Offset = Vec(0, 0, -0.01)
		local k = CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ArmourPartNeon13", Vector3.new(0.2, 0.2, 0.4), Vector3.new(59.3, 4.7, -274.5), Vector3.new(-180, 0, -180), "SpecialMesh", Vector3.new(0.5, 0.5, 0.1), "", "Sphere")
		k.Mesh.Offset = Vec(0, 0, -0.01)
		Cape = CreatePart("Part", Parent, "White", "SmoothPlastic", 1, 0, "Mini-CapeSpot", Vector3.new(2, 0.2, 0.2), Vector3.new(60.2, 3.49, -275.47), Vector3.new(120, 0, -180), "BlockMesh", Vector3.new(0, 0, 0), "", "")
		local kk = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ShoulderArmour1", Vector3.new(1, 0.4, 0.4), Vector3.new(59.4, 4.4, -275), Vector3.new(-90, 0, -90), "SpecialMesh", Vector3.new(1.03, 1, 1), "", "Wedge")
		kk.Mesh.Offset = Vec(0, -0.01, 0)
		local kk = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ShoulderArmour2", Vector3.new(1, 0.4, 0.4), Vector3.new(61, 4.4, -275), Vector3.new(-90, 0, 90), "SpecialMesh", Vector3.new(1.03, 1, 1), "", "Wedge")
		kk.Mesh.Offset = Vec(0, -0.01, 0)
		local kk = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ShoulderArmour3", Vector3.new(1, 0.4, 0.2), Vector3.new(59.8, 4.7, -275), Vector3.new(-90, 0, -90), "SpecialMesh", Vector3.new(1.03, 1, 1.01), "", "Wedge")
		kk.Mesh.Offset = Vec(0, -0.01, 0.001)
		local kk = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ShoulderArmour4", Vector3.new(0.4, 0.2, 1), Vector3.new(59.4, 4.7, -275), Vector3.new(0, 0, 0), "BlockMesh", Vector3.new(1, 1.01, 1.03), "", "")
		kk.Mesh.Offset = Vec(-0.01, 0.001, 0)
		local kk = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ShoulderArmour5", Vector3.new(1, 0.4, 0.2), Vector3.new(60.6, 4.7, -275), Vector3.new(-90, 0, 90), "SpecialMesh", Vector3.new(1.03, 1, 1.01), "", "Wedge")
		kk.Mesh.Offset = Vec(0, -0.01, 0.001)
		local kk = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ShoulderArmour6", Vector3.new(0.4, 0.2, 1), Vector3.new(61, 4.7, -275), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1, 1.01, 1.03), "", "")
		kk.Mesh.Offset = Vec(-0.01, 0.001, 0)
		for _,K in pairs(Parent:GetChildren()) do
			if K:IsA("BasePart") then
				K:BreakJoints()
			end
		end
		for _,z in pairs(Parent:GetChildren()) do
			if z:IsA("BasePart") then
				local Weld = Inst("Weld", aTor)
				Weld.Part0 = aTor
				Weld.Part1 = z
				Weld.Name = z.Name .. "-to-" .. aTor.Name
				Weld.C0 = aTor.CFrame:inverse() * Cf(aTor.Position)
				Weld.C1 = z.CFrame:inverse() * Cf(aTor.Position)
				z.Anchored = false
				z.CanCollide = false
			end
		end
	end

		local MakeArmArmour = function(limb, limbname)
		
		local Parent = Inst("Model", CArmour)
		Parent.Name = limbname .. "Armour"
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourBody", Vector3.new(1, 2, 1), Vector3.new(58.7, 3.8, -275), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1.01, 1, 1.01), "", "")
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "Glove", Vector3.new(1, 0.4, 1), Vector3.new(58.7, 2.8, -275), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1.02, 0.1, 1.02), "", "")
		local y = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "SideArmour1", Vector3.new(0.2, 0.2, 0.6), Vector3.new(58.3, 4.5, -274.6), Vector3.new(-90, 0, -180), "SpecialMesh", Vector3.new(1.1, 1, 1), "", "Wedge")
		y.Mesh.Offset = Vec(0, 0, 0.001)
		local y = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "SideArmour2", Vector3.new(1, 0.6, 0.2), Vector3.new(58.5, 4.7, -275), Vector3.new(-90, 0, 90), "SpecialMesh", Vector3.new(1.03, 1, 1.01), "", "Wedge")
		y.Mesh.Offset = Vec(0, -0.01, 0.001)
		local y = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "SideArmour3", Vector3.new(1, 0.2, 0.4), Vector3.new(59.1, 4.2, -275), Vector3.new(-90, 0, 90), "SpecialMesh", Vector3.new(1.03, 1, 1), "", "Wedge")
		y.Mesh.Offset = Vec(0, -0.01, 0)
		local y = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "SideArmour4", Vector3.new(0.2, 0.2, 1), Vector3.new(59.1, 4.5, -275), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1, 1, 1.03), "", "")
		y.Mesh.Offset = Vec(-0.01, 0, 0)
		local y = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "SideArmour5", Vector3.new(0.4, 0.2, 1), Vector3.new(59, 4.7, -275), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1, 1, 1.03), "", "")
		y.Mesh.Offset = Vec(-0.01, 0.001, 0)
		local y = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "SideArmour6", Vector3.new(1, 0.2, 0.2), Vector3.new(58.9, 4.5, -275), Vector3.new(-90, 0, 90), "SpecialMesh", Vector3.new(1.03, 1, 1), "", "Wedge")
		y.Mesh.Offset = Vec(0, -0.01, 0)
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "SideArmour7", Vector3.new(0.2, 2, 0.6), Vector3.new(58.3, 3.8, -275), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1.1, 1.001, 1), "", "")
		local y = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "SideArmour8", Vector3.new(0.2, 0.2, 0.4), Vector3.new(58.3, 3, -274.6), Vector3.new(90, 0, 0), "SpecialMesh", Vector3.new(1.1, 1, 1), "", "Wedge")
		y.Mesh.Offset = Vec(0, 0, 0.001)
		local y = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "SideArmour9", Vector3.new(0.2, 0.2, 0.4), Vector3.new(58.3, 3, -275.4), Vector3.new(90, 0, -180), "SpecialMesh", Vector3.new(1.1, 1, 1), "", "Wedge")
		y.Mesh.Offset = Vec(0, 0, 0.001)
		local y = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "SideArmour10", Vector3.new(0.2, 0.2, 0.6), Vector3.new(58.3, 4.5, -275.4), Vector3.new(-90, 0, 0), "SpecialMesh", Vector3.new(1.1, 1, 1), "", "Wedge")
		y.Mesh.Offset = Vec(0, 0, 0.001)
		local y = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "SideArmourDesign1", Vector3.new(1, 1, 0.4), Vector3.new(58.7, 4.6, -275), Vector3.new(-90, 30, 90), "SpecialMesh", Vector3.new(0.5, 1, 1), "http://www.roblox.com/asset/?id=189962102", "FileMesh")
		y.Mesh.Offset = Vec(0, 0.4, 0)
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "SideArmourDesign2", Vector3.new(0.4, 0.6, 0.2), Vector3.new(58.2, 3.1, -275.2), Vector3.new(-165, 0, -180), "SpecialMesh", Vector3.new(0.08, 1, 0.6), "", "Sphere")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "SideArmourDesign3", Vector3.new(0.4, 0.6, 0.2), Vector3.new(58.2, 3.1, -274.8), Vector3.new(165, 0, -180), "SpecialMesh", Vector3.new(0.08, 1, 0.6), "", "Sphere")
		CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "SideArmourNeonDesign1", Vector3.new(0.4, 0.6, 0.2), Vector3.new(58.2, 3.1, -275.2), Vector3.new(-165, 0, -180), "SpecialMesh", Vector3.new(0.1, 0.8, 0.4), "", "Sphere")
		CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "SideArmourNeonDesign2", Vector3.new(0.4, 0.6, 0.2), Vector3.new(58.2, 3.1, -274.8), Vector3.new(165, 0, -180), "SpecialMesh", Vector3.new(0.1, 0.8, 0.4), "", "Sphere")
		CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "SideArmourNeonDesign3", Vector3.new(0.6, 0.2, 0.2), Vector3.new(58.3, 4.1, -275), Vector3.new(-180, 0, -180), "SpecialMesh", Vector3.new(0.5, 1.5, 2), "", "Sphere")
		for _,K in pairs(Parent:GetChildren()) do
			if K:IsA("BasePart") then
				K:BreakJoints()
			end
		end
		for _,z in pairs(Parent:GetChildren()) do
			if z:IsA("BasePart") then
				local Weld = Inst("Weld", limb)
				Weld.Part0 = limb
				Weld.Part1 = z
				Weld.Name = z.Name .. "-to-" .. limb.Name
				Weld.C0 = limb.CFrame:inverse() * Cf(limb.Position)
				Weld.C1 = z.CFrame:inverse() * Cf(limb.Position)
				z.Anchored = false
				z.CanCollide = false
			end
		end
	end

		local MakeLegArmour = function(limb, limbname)
		
		local Parent = Inst("Model", CArmour)
		Parent.Name = limbname .. "Armour"
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ArmourBody", Vector3.new(1, 2, 1), Vector3.new(59.7, 1.8, -275), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1.01, 1, 1.01), "", "")
		local cri = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "KneeGuardPart1", Vector3.new(0.4, 0.4, 0.4), Vector3.new(60, 2.2, -274.7), Vector3.new(-180, -90, 0), "SpecialMesh", Vector3.new(1.1, 1, 1.05), "", "Wedge")
		cri.Mesh.Offset = Vec(0, 0, -0.01)
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "KneeGuardPart2", Vector3.new(0.2, 0.4, 0.2), Vector3.new(59.7, 2.2, -274.6), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1, 1, 1.2), "", "")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "KneeGuardPart3", Vector3.new(0.4, 0.2, 0.6), Vector3.new(59.7, 2.2, -274.6), Vector3.new(-180, 0, 90), "SpecialMesh", Vector3.new(1, 0.8, 0.47), "", "Sphere")
		local cri = CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "KneeGuardPart4", Vector3.new(0.4, 0.4, 0.4), Vector3.new(59.4, 2.2, -274.7), Vector3.new(180, 90, 0), "SpecialMesh", Vector3.new(1.1, 1, 1.05), "", "Wedge")
		cri.Mesh.Offset = Vec(0, 0, -0.01)
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "KneeGuardPart5", Vector3.new(1, 0.4, 0.4), Vector3.new(59.7, 2.6, -274.7), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1.04, 1, 1.1), "", "")
		CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "KneeGuardPartNeon", Vector3.new(0.4, 0.2, 0.6), Vector3.new(59.7, 2.2, -274.6), Vector3.new(-180, 0, 90), "SpecialMesh", Vector3.new(0.8, 0.5, 0.5), "", "Sphere")
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ShinGuard1", Vector3.new(0.6, 0.2, 0.6), Vector3.new(59.7, 1.7, -274.6), Vector3.new(-180, 0, -180), "SpecialMesh", Vector3.new(1, 1, 0.4), "", "Torso")
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "ShinGuard2", Vector3.new(0.6, 0.4, 0.6), Vector3.new(59.7, 1.4, -274.6), Vector3.new(-180, 0, 0), "SpecialMesh", Vector3.new(1, 1, 0.4), "", "Torso")
		CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ShinGuardNeon1", Vector3.new(0.4, 0.2, 0.4), Vector3.new(59.6, 1.5, -274.5), Vector3.new(-180, 0, -165), "SpecialMesh", Vector3.new(0.4, 0.2, 0.2), "", "Sphere")
		CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ShinGuardNeon2", Vector3.new(0.4, 0.2, 0.4), Vector3.new(59.8, 1.7, -274.5), Vector3.new(-180, 0, 165), "SpecialMesh", Vector3.new(0.4, 0.2, 0.2), "", "Sphere")
		CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ShinGuardNeon3", Vector3.new(0.4, 0.2, 0.4), Vector3.new(59.8, 1.5, -274.5), Vector3.new(-180, 0, 165), "SpecialMesh", Vector3.new(0.4, 0.2, 0.2), "", "Sphere")
		CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ShinGuardNeon4", Vector3.new(0.4, 0.2, 0.4), Vector3.new(59.8, 1.3, -274.5), Vector3.new(-180, 0, 165), "SpecialMesh", Vector3.new(0.4, 0.2, 0.2), "", "Sphere")
		CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ShinGuardNeon5", Vector3.new(0.4, 0.2, 0.4), Vector3.new(59.6, 1.7, -274.5), Vector3.new(-180, 0, -165), "SpecialMesh", Vector3.new(0.4, 0.2, 0.2), "", "Sphere")
		CreatePart("Part", Parent, Colour1, "Neon", 0, 0, "ShinGuardNeon6", Vector3.new(0.4, 0.2, 0.4), Vector3.new(59.6, 1.3, -274.5), Vector3.new(-180, 0, -165), "SpecialMesh", Vector3.new(0.4, 0.2, 0.2), "", "Sphere")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ShinGuardPart1", Vector3.new(0.4, 0.2, 0.4), Vector3.new(59.6, 1.5, -274.5), Vector3.new(-180, 0, -165), "SpecialMesh", Vector3.new(0.46, 0.26, 0.18), "", "Sphere")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ShinGuardPart2", Vector3.new(0.4, 0.2, 0.4), Vector3.new(59.8, 1.7, -274.5), Vector3.new(-180, 0, 165), "SpecialMesh", Vector3.new(0.46, 0.26, 0.18), "", "Sphere")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ShinGuardPart3", Vector3.new(0.4, 0.2, 0.4), Vector3.new(59.8, 1.5, -274.5), Vector3.new(-180, 0, 165), "SpecialMesh", Vector3.new(0.46, 0.26, 0.18), "", "Sphere")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ShinGuardPart4", Vector3.new(0.4, 0.2, 0.4), Vector3.new(59.8, 1.3, -274.5), Vector3.new(-180, 0, 165), "SpecialMesh", Vector3.new(0.46, 0.26, 0.18), "", "Sphere")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ShinGuardPart5", Vector3.new(0.4, 0.2, 0.4), Vector3.new(59.6, 1.7, -274.5), Vector3.new(-180, 0, -165), "SpecialMesh", Vector3.new(0.46, 0.26, 0.18), "", "Sphere")
		CreatePart("Part", Parent, Colour2, "SmoothPlastic", 0, 0, "ShinGuardPart6", Vector3.new(0.4, 0.2, 0.4), Vector3.new(59.6, 1.3, -274.5), Vector3.new(-180, 0, -165), "SpecialMesh", Vector3.new(0.46, 0.26, 0.18), "", "Sphere")
		CreatePart("Part", Parent, Colour3, "SmoothPlastic", 0, 0, "Shoe", Vector3.new(1, 0.2, 1), Vector3.new(59.7, 0.9, -275), Vector3.new(-180, 0, -180), "BlockMesh", Vector3.new(1.02, 1.2, 1.02), "", "")
		for _,K in pairs(Parent:GetChildren()) do
			if K:IsA("BasePart") then
				K:BreakJoints()
			end
		end
		for _,z in pairs(Parent:GetChildren()) do
			if z:IsA("BasePart") then
				local Weld = Inst("Weld", limb)
				Weld.Part0 = limb
				Weld.Part1 = z
				Weld.Name = z.Name .. "-to-" .. limb.Name
				Weld.C0 = limb.CFrame:inverse() * Cf(limb.Position)
				Weld.C1 = z.CFrame:inverse() * Cf(limb.Position)
				z.Anchored = false
				z.CanCollide = false
			end
		end
	end

		local MakeTeeWeapon = function()
		The_End.Parent = Character
		The_End_Sheath.Parent = Character
		local BL1 = CreatePart("Part", The_End, Colour2, "SmoothPlastic", 0, 0.2, "Blade", Vector3.new(0.2, 0.4, 6.4), Vector3.new(42.5, 3.8, -252.5), Vector3.new(90, 0, -180), "SpecialMesh", Vector3.new(1, 0.5, 1), "", "Torso")
		local BL2 = CreatePart("Part", The_End, Colour3, "SmoothPlastic", 0, 0.2, "BladeDesign", Vector3.new(0.2, 6.4, 0.2), Vector3.new(42.5, 3.8, -252.4), Vector3.new(-180, -90, 0), "BlockMesh", Vector3.new(0.1, 1.001, 1.05), "", "")
		local BL3 = CreatePart("Part", The_End, Colour1, "Neon", 0, 0, "BladeNeon", Vector3.new(0.2, 0.4, 6.4), Vector3.new(42.5, 3.8, -252.3), Vector3.new(90, 0, 0), "SpecialMesh", Vector3.new(1, 0.5, 1), "", "Torso")
		CreatePart("Part", The_End, Colour2, "SmoothPlastic", 0, 0, "GuardDesign1", Vector3.new(0.2, 0.2, 0.2), Vector3.new(42.5, 7.1, -252.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.4, 1.84, 0.4), "", "")
		CreatePart("Part", The_End, Colour2, "SmoothPlastic", 0, 0, "GuardDesign2", Vector3.new(0.2, 0.2, 0.2), Vector3.new(42.5, 7.1, -252.4), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.4, 1.84, 0.4), "", "")
		CreatePart("Part", The_End, Colour2, "SmoothPlastic", 0, 0, "GuardDesign3", Vector3.new(0.2, 1, 0.2), Vector3.new(42.5, 7.1, -252.4), Vector3.new(90, 0, -180), "CylinderMesh", Vector3.new(0.4, 1.005, 0.4), "", "")
		CreatePart("Part", The_End, Colour2, "SmoothPlastic", 0, 0, "GuardDesign4", Vector3.new(0.2, 0.2, 0.2), Vector3.new(42.5, 7.1, -252.2), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.4, 1.84, 0.4), "", "")
		CreatePart("Part", The_End, Colour1, "Neon", 0, 0, "GuardNeonDesign1", Vector3.new(0.2, 0.2, 0.2), Vector3.new(42.5, 7.1, -252.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.85, 0.3), "", "")
		CreatePart("Part", The_End, Colour1, "Neon", 0, 0, "GuardNeonDesign2", Vector3.new(0.2, 0.2, 0.2), Vector3.new(42.5, 7.1, -252.4), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.85, 0.3), "", "")
		CreatePart("Part", The_End, Colour1, "Neon", 0, 0, "GuardNeonDesign3", Vector3.new(0.2, 1, 0.2), Vector3.new(42.5, 7.1, -252.4), Vector3.new(90, 0, -180), "CylinderMesh", Vector3.new(0.3, 1.01, 0.3), "", "")
		CreatePart("Part", The_End, Colour1, "Neon", 0, 0, "GuardNeonDesign4", Vector3.new(0.2, 0.2, 0.2), Vector3.new(42.5, 7.1, -252.2), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.85, 0.3), "", "")
		CreatePart("Part", The_End, Colour3, "SmoothPlastic", 0, 0, "GuardPart1", Vector3.new(0.6, 0.2, 0.2), Vector3.new(42.5, 7.1, -252.4), Vector3.new(-180, -90, 0), "BlockMesh", Vector3.new(1, 1, 1.8), "", "")
		CreatePart("Part", The_End, Colour3, "SmoothPlastic", 0, 0, "GuardPart2", Vector3.new(0.2, 0.2, 0.2), Vector3.new(42.5, 7.1, -252.8), Vector3.new(-90, 0, 0), "SpecialMesh", Vector3.new(1.8, 1, 1), "", "Torso")
		CreatePart("Part", The_End, Colour3, "SmoothPlastic", 0, 0, "GuardPart2", Vector3.new(0.2, 0.2, 0.2), Vector3.new(42.5, 7.1, -252), Vector3.new(-90, 0, -180), "SpecialMesh", Vector3.new(1.8, 1, 1), "", "Torso")
		TEHandle = CreatePart("Part", The_End, "White", "SmoothPlastic", 1, 0, "Handle", Vector3.new(0.6, 0.2, 0.6), Vector3.new(42.5, 8.5, -252.4), Vector3.new(-180, 0, 0), "BlockMesh", Vector3.new(1, 1, 1), "", "")
		CreatePart("Part", The_End, Colour3, "SmoothPlastic", 0, 0, "HiltDesign1", Vector3.new(0.2, 0.2, 0.2), Vector3.new(42.5, 9.9, -252.4), Vector3.new(-180, -90, 0), "BlockMesh", Vector3.new(1.1, 1, 1.1), "", "")
		CreatePart("Part", The_End, Colour3, "SmoothPlastic", 0, 0, "HiltDesign2", Vector3.new(0.2, 0.4, 0.2), Vector3.new(42.5, 9.6, -252.4), Vector3.new(-180, 0, 0), "SpecialMesh", Vector3.new(1.1, 1, 1.1), "", "Wedge")
		CreatePart("Part", The_End, Colour3, "SmoothPlastic", 0, 0, "HiltDesign3", Vector3.new(0.2, 0.2, 0.2), Vector3.new(42.5, 7.3, -252.4), Vector3.new(-180, -90, 0), "BlockMesh", Vector3.new(1.1, 1, 1.1), "", "")
		CreatePart("Part", The_End, Colour2, "Fabric", 0, 0, "HiltFabric", Vector3.new(0.2, 2.4, 0.2), Vector3.new(42.5, 8.6, -252.4), Vector3.new(-180, -90, 0), "BlockMesh", Vector3.new(1, 1, 1), "", "")
		CreatePart("Part", The_End, Colour1, "Neon", 0, 0, "HiltNeonDesign1", Vector3.new(0.2, 0.2, 0.2), Vector3.new(42.5, 9.7, -252.4), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.14, 0.2), "", "")
		CreatePart("Part", The_End, Colour1, "Neon", 0, 0, "HiltNeonDesign2", Vector3.new(0.2, 0.2, 0.4), Vector3.new(42.5, 9.8, -252.4), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.14, 0.2), "", "")
		CreatePart("Part", The_End, Colour1, "Neon", 0, 0, "HiltNeonDesign3", Vector3.new(0.2, 0.2, 0.2), Vector3.new(42.5, 9.9, -252.4), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.14, 0.2), "", "")
		TEHit_Box = CreatePart("Part", The_End, "White", "SmoothPlastic", 1, 0, "HitBox", Vector3.new(1.4, 7, 0.6), Vector3.new(42.5, 3.5, -252.4), Vector3.new(-180, -90, 0), "CylinderMesh", Vector3.new(0.2, 1.14, 0.2), "", "")
		TESHandle = CreatePart("Part", The_End_Sheath, "White", "Neon", 1, 0, "Handle", Vector3.new(0.6, 0.2, 0.6), Vector3.new(42.5, 5.5, -253.6), Vector3.new(0, 0, -180), "BlockMesh", Vector3.new(1, 1, 1), "", "")
		CreatePart("Part", The_End_Sheath, Colour2, "SmoothPlastic", 0, 0, "SheathBody", Vector3.new(0.4, 6, 0.2), Vector3.new(42.5, 3.8, -253.6), Vector3.new(-180, -90, 0), "BlockMesh", Vector3.new(1, 1, 1.1), "", "")
		CreatePart("Part", The_End_Sheath, Colour2, "SmoothPlastic", 0, 0, "SheathBodyCylinder1", Vector3.new(0.4, 6, 0.2), Vector3.new(42.5, 3.8, -253.4), Vector3.new(-180, -90, 0), "CylinderMesh", Vector3.new(1.1, 1, 1.1), "", "")
		CreatePart("Part", The_End_Sheath, Colour2, "SmoothPlastic", 0, 0, "SheathBody", Vector3.new(0.4, 6, 0.2), Vector3.new(42.5, 3.8, -253.8), Vector3.new(-180, -90, 0), "CylinderMesh", Vector3.new(1.1, 1, 1.1), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesign1", Vector3.new(0.4, 0.2, 0.2), Vector3.new(42.5, 6.9, -253.4), Vector3.new(-180, -90, 0), "CylinderMesh", Vector3.new(1.2, 1.1, 1.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesign2", Vector3.new(0.4, 0.2, 0.2), Vector3.new(42.5, 6.9, -253.8), Vector3.new(-180, -90, 0), "CylinderMesh", Vector3.new(1.2, 1.1, 1.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesign3", Vector3.new(0.4, 0.2, 0.2), Vector3.new(42.5, 6.9, -253.6), Vector3.new(-180, -90, 0), "BlockMesh", Vector3.new(1, 1.1, 1.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesign4", Vector3.new(0.4, 0.2, 0.2), Vector3.new(42.5, 0.7, -253.4), Vector3.new(-180, -90, 0), "CylinderMesh", Vector3.new(1.2, 1.1, 1.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesign5", Vector3.new(0.4, 0.2, 0.2), Vector3.new(42.5, 0.7, -253.8), Vector3.new(-180, -90, 0), "CylinderMesh", Vector3.new(1.2, 1.1, 1.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesign6", Vector3.new(0.4, 0.2, 0.2), Vector3.new(42.5, 0.7, -253.6), Vector3.new(-180, -90, 0), "BlockMesh", Vector3.new(1, 1.1, 1.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesignRing1", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 5.8, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.14, 0.3), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesignRing2", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 6.2, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.14, 0.3), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesignRing3", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 2.2, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.14, 0.3), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesignRing4", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 6.6, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.14, 0.3), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesignRing5", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 1.4, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.14, 0.3), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesignRing6", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 1.8, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.14, 0.3), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesignRing7", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 1, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.14, 0.3), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesignRing8", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 3, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.14, 0.3), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesignRing9", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 2.6, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.14, 0.3), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesignRing10", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 4.2, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.14, 0.3), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesignRing11", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 5, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.14, 0.3), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesignRing12", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 3.8, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.14, 0.3), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesignRing13", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 5.4, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.14, 0.3), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesignRing14", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 3.4, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.14, 0.3), "", "")
		CreatePart("Part", The_End_Sheath, Colour3, "SmoothPlastic", 0, 0, "SheathDesignRing15", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 4.6, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.3, 1.14, 0.3), "", "")
		CreatePart("Part", The_End_Sheath, Colour1, "Neon", 0, 0, "SheathDesignNeonRing1", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 5.8, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.16, 0.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour1, "Neon", 0, 0, "SheathDesignNeonRing2", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 6.2, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.16, 0.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour1, "Neon", 0, 0, "SheathDesignNeonRing3", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 2.2, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.16, 0.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour1, "Neon", 0, 0, "SheathDesignNeonRing4", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 6.6, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.16, 0.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour1, "Neon", 0, 0, "SheathDesignNeonRing5", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 1.4, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.16, 0.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour1, "Neon", 0, 0, "SheathDesignNeonRing6", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 1.8, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.16, 0.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour1, "Neon", 0, 0, "SheathDesignNeonRing7", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 1, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.16, 0.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour1, "Neon", 0, 0, "SheathDesignNeonRing8", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 3, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.16, 0.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour1, "Neon", 0, 0, "SheathDesignNeonRing9", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 2.6, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.16, 0.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour1, "Neon", 0, 0, "SheathDesignNeonRing10", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 4.2, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.16, 0.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour1, "Neon", 0, 0, "SheathDesignNeonRing11", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 5, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.16, 0.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour1, "Neon", 0, 0, "SheathDesignNeonRing12", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 3.8, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.16, 0.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour1, "Neon", 0, 0, "SheathDesignNeonRing13", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 5.4, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.16, 0.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour1, "Neon", 0, 0, "SheathDesignNeonRing14", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 3.4, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.16, 0.2), "", "")
		CreatePart("Part", The_End_Sheath, Colour1, "Neon", 0, 0, "SheathDesignNeonRing15", Vector3.new(0.4, 0.2, 0.4), Vector3.new(42.5, 4.6, -253.6), Vector3.new(90, 0, -90), "CylinderMesh", Vector3.new(0.2, 1.16, 0.2), "", "")
		CreatePart("Part", The_End_Sheath, "Really black", "SmoothPlastic", 0, 0, "SheathHole", Vector3.new(0.8, 0.4, 0.2), Vector3.new(42.5, 7, -253.6), Vector3.new(-180, -90, 0), "BlockMesh", Vector3.new(0.6, 0.06, 0.6), "", "")
		for _,K in pairs(The_End:GetChildren()) do
			if K:IsA("BasePart") then
				K:BreakJoints()
			end
		end
		for _,K in pairs(The_End_Sheath:GetChildren()) do
			if K:IsA("BasePart") then
				K:BreakJoints()
			end
		end
		for _,p in pairs(The_End:GetChildren()) do
			if p:IsA("BasePart") and p ~= TEHandle then
				local Weld = Inst("Weld", TEHandle)
				Weld.Part0 = TEHandle
				Weld.Part1 = p
				Weld.C0 = TEHandle.CFrame:inverse() * Cf(TEHandle.Position)
				Weld.C1 = p.CFrame:inverse() * Cf(TEHandle.Position)
				p.Anchored = false
				p.CanCollide = false
			end
		end
		for _,p in pairs(The_End_Sheath:GetChildren()) do
			if p:IsA("BasePart") and p ~= TESHandle then
				local Weld = Inst("Weld", TESHandle)
				Weld.Part0 = TESHandle
				Weld.Part1 = p
				Weld.C0 = TESHandle.CFrame:inverse() * Cf(TESHandle.Position)
				Weld.C1 = p.CFrame:inverse() * Cf(TESHandle.Position)
				p.Anchored = false
				p.CanCollide = false
			end
		end
		table.insert(TEBladeP, BL1)
		table.insert(TEBladeP, BL2)
		table.insert(TEBladeP, BL3)
		TEBEffect = Inst("ParticleEmitter", BL2)
		local colSeq = {ColorSequenceKeypoint.new(0, BC(Colour1).Color), ColorSequenceKeypoint.new(0.25, BC(Colour2).Color), ColorSequenceKeypoint.new(0.5, BC(Colour1).Color), ColorSequenceKeypoint.new(0.7, BC(Colour2).Color), ColorSequenceKeypoint.new(1, BC(Colour2).Color)}
		local sizSeq = {NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(0.5, 0.6, 0), NumberSequenceKeypoint.new(1, 0, 0)}
		local traSeq = {NumberSequenceKeypoint.new(0, 0, 0), NumberSequenceKeypoint.new(1, 1, 0)}
		TEBEffect.Color = ColorSequence.new(colSeq)
		TEBEffect.LightEmission = 0.2
		TEBEffect.Size = NumberSequence.new(sizSeq)
		TEBEffect.Texture = "rbxassetid://37332909"
		TEBEffect.Transparency = NumberSequence.new(traSeq)
		TEBEffect.Enabled = false
		TEBEffect.Lifetime = NumberRange.new(0.7)
		TEBEffect.Rate = 90000000
		TEBEffect.Speed = NumberRange.new(0)
	end

		MakeHelmet()
		MakeTorsoArmour()
		MakeArmArmour(aRarm, "RightArm")
		MakeArmArmour(aLarm, "LeftArm")
		MakeLegArmour(aRleg, "RightLeg")
		MakeLegArmour(aLleg, "LeftLeg")
		MakeTeeWeapon()
		Denial.Parent = nil
		if not runServ:IsStudio() then
			StopEffects = true
			coroutine.resume(coroutine.create(function()
		
		repeat
			runServ.Stepped:wait()
			MagniDamage(RootPart, 25, false, 0, 1, true, 200, "Compensate-Knockdown", 0, false, 0, false, _, _, _)
		until Debounces.Transformed
	end
))
		end
		local Weld1 = Inst("Weld", Head)
		Weld1.Name = DecName
		Weld1.Part0 = Head
		Weld1.Part1 = aHead
		local Weld2 = Inst("Weld", Torso)
		Weld2.Name = DecName
		Weld2.Part0 = Torso
		Weld2.Part1 = aTor
		local Weld3 = Inst("Weld", LeftArm)
		Weld3.Name = DecName
		Weld3.Part0 = LeftArm
		Weld3.Part1 = aLarm
		Weld3.C0 = Cf() * Euler(0, rad(180), 0)
		local Weld4 = Inst("Weld", RightArm)
		Weld4.Name = DecName
		Weld4.Part0 = RightArm
		Weld4.Part1 = aRarm
		local Weld5 = Inst("Weld", LeftLeg)
		Weld5.Name = DecName
		Weld5.Part0 = LeftLeg
		Weld5.Part1 = aLleg
		local Weld6 = Inst("Weld", RightLeg)
		Weld6.Name = DecName
		Weld6.Part0 = RightLeg
		Weld6.Part1 = aRleg
		WepWeld3 = Inst("Weld", TEHandle)
		WepWeld3.Part0 = TESHandle
		WepWeld3.Part1 = TEHandle
		WepWeld3.C0 = Cf(0, 0, 0)
		WepWeld3.C1 = Cf(0, 3, 0) * Euler(0, rad(180), 0)
		SheWeld = Inst("Weld", TESHandle)
		SheWeld.Part0 = RootPart
		SheWeld.Part1 = TESHandle
		SheWeld.C0 = Cf(0, 1.5, -1.8) * Euler(rad(180), 0, 0)
		TEHandle.Anchored = false
		TESHandle.Anchored = false
		for _,p in pairs(WeldBase:GetChildren()) do
			if p:IsA("BasePart") then
				p.Anchored = false
			end
		end
		for _,p in pairs(Character:GetChildren()) do
			if p:IsA("BasePart") and p.Name ~= "Head" then
				p.Transparency = 1
				for _,d in pairs(p:GetChildren()) do
					if d:IsA("Decal") then
						d.Transparency = 1
					end
				end
			elseif p.Name == "Head" then
						p.Transparency = 0
						for _,d in pairs(p:GetChildren()) do
							if d:IsA("Decal") then
								d.Transparency = 1
							end
						end
						if p:IsA("Hat") then
							for _,P in pairs(p:GetChildren()) do
								if P:IsA("BasePart") then
									P.Transparency = 1
								end
							end
						end
							-- DECOMPILER ERROR at PC2110: LeaveBlock: unexpected jumping out DO_STMT

							-- DECOMPILER ERROR at PC2110: LeaveBlock: unexpected jumping out DO_STMT

							-- DECOMPILER ERROR at PC2110: LeaveBlock: unexpected jumping out IF_ELSE_STMT

							-- DECOMPILER ERROR at PC2110: LeaveBlock: unexpected jumping out IF_STMT

						end
					end
		if not runServ:IsStudio() then
			MagicCircle(BC(Colour1), "Neon", RootPart:GetRenderCFrame(), 2, 2, 2, 6, 6, 6, 0.1)
			local boo = Sound(RootPart, "http://roblox.com/asset/?id=168586621", 1, 0.5, false)
			debServ:AddItem(boo, 4)
			for i = 0, 5, 0.2 do
				swait()
				local SwingSpeed = 0.5
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(140), 0, rad(20)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(140), 0, rad(-20)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(15), 0, 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(20), 0, 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -0.8, 0) * Euler(rad(-30), 0, 0), SwingSpeed)
				FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, rad(-15)), SwingSpeed)
				FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.8, 0) * Euler(rad(-30), 0, 0), SwingSpeed)
				FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, rad(15)), SwingSpeed)
			end
			for i = 0, 0.8, 0.1 do
				swait()
				local SwingSpeed = 0.5
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.6, 0) * Euler(0, 0, rad(10)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.6, 0) * Euler(0, 0, rad(-10)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-13), 0, 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, rad(-3)), SwingSpeed)
				FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, rad(3)), SwingSpeed)
			end
			for i = 0, 0.6, 0.1 do
				swait()
				local SwingSpeed = 0.5
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-8), 0, rad(15)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(90), 0, rad(-50)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-13), 0, 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(20), 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(20), 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C0 = clerp(FRightHip.C0, Cf(1.55, -1, 0) * Euler(0, rad(-20), 0), SwingSpeed)
				FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, rad(-3)), SwingSpeed)
				FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.55, -1, -0.4) * Euler(rad(-7), rad(-20), 0), SwingSpeed)
				FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, rad(3)), SwingSpeed)
			end
			for i = 0, 1, 0.1 do
				swait()
				local SwingSpeed = 0.5
				HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-13), 0, rad(15)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.15, 0.5, -0.6) * Euler(rad(90), 0, rad(50)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-13), 0, 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-28), 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-20), 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C0 = clerp(FRightHip.C0, Cf(1.55, -1, -0.4) * Euler(rad(-7), rad(20), 0), SwingSpeed)
				FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, rad(-3)), SwingSpeed)
				FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.55, -1, 0) * Euler(0, rad(20), 0), SwingSpeed)
				FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, rad(3)), SwingSpeed)
				do
					do
						if i == 0.4 then
							local boo = Sound(LeftArm, "http://roblox.com/asset/?id=227194112", 1, 1, false)
							debServ:AddItem(boo, 4)
							SheWeld.Part0 = Holder2
							SheWeld.Part1 = TESHandle
							SheWeld.C0 = Holder2.CFrame:inverse() * Cf(Holder2.Position)
							SheWeld.C1 = TESHandle.CFrame:inverse() * Cf(Holder2.Position)
						end
						if i >= 0.4 then
							SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(90), 0, 0), SwingSpeed)
							SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
						end
						-- DECOMPILER ERROR at PC3236: LeaveBlock: unexpected jumping out DO_STMT

					end
				end
			end
			debServ:AddItem(BP, 0)
			for i = 0, 1.5, 0.1 do
				swait()
				local SwingSpeed = 0.5
				SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(80), 0, 0), SwingSpeed)
				SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.2, 0.5, -0.4) * Euler(rad(80), 0, rad(-50)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(50), 0, rad(-11)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-30), 0, 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1.4, 0) * Euler(rad(-40), 0, 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1.2, -0.3) * Euler(rad(-50), 0, 0), SwingSpeed)
				FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.3, -0.8) * Euler(rad(10), 0, 0), SwingSpeed)
				FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			end
			coroutine.resume(coroutine.create(function()
		
		chatServ:Chat(Head, "I am the ominous dusk.", 2)
		wait(2.6)
		chatServ:Chat(Head, "I am the aching pressence.", 2)
		wait(2.6)
		chatServ:Chat(Head, "I am the adversary of just.", 2)
		wait(2.6)
		chatServ:Chat(Head, "Wielding this blade I shall eradicate every being in this world and purge it in the clouds of chaos!", 2)
		wait(5)
		chatServ:Chat(Head, "I am Shiminuki! The end is near!", 2)
	end
))
			for i = 0, 37, 0.1 do
				swait()
				local SwingSpeed = 0.007
				SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(90), 0, 0), SwingSpeed)
				SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(10)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, rad(-10)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(-20), 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(20), 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0.2) * Euler(0, rad(-20), 0), SwingSpeed)
				FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0.1) * Euler(0, rad(10), 0), SwingSpeed)
				FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
			end
			for i = 0, 0.7, 0.1 do
				swait()
				local SwingSpeed = 0.5
				SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(100), 0, 0), SwingSpeed)
				SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(10)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, rad(-10)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(-20), 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
				FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
				FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
				FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
			end
			for i = 0, 0.5, 0.1 do
				swait()
				local SwingSpeed = 0.5
				SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(100), 0, 0), SwingSpeed)
				SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(10)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(0, 0, rad(12)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), SwingSpeed)
				FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
				FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
				FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
			end
		end
			FRightHip.Part0 = nil
			FRightHip.Part1 = nil
			RightHip.Part0 = Torso
			RightHip.Part1 = RightLeg
			RightHip.C0 = FRightHip.C0
			RightHip.C1 = FRightHip.C1
			FLeftHip.Part0 = nil
			FLeftHip.Part1 = nil
			LeftHip.Part0 = Torso
			LeftHip.Part1 = LeftLeg
			LeftHip.C0 = FLeftHip.C0
			LeftHip.C1 = FLeftHip.C1
			GodMode = false
			Max_Health = 80000
			coroutine.resume(coroutine.create(function()
		
		swait()
		Humanoid.Health = Max_Health
	end
))
			SheWeld.Part0 = Torso
			SheWeld.Part1 = TESHandle
			SheWeld.C0 = Cf(-1.1, -1.1, -0.2) * Euler(rad(100), 0, 0)
			CurrentSpeed = 6
			Debounces.HasWep = false
			Debounces.Transformed = true
			Debounces.Attacking = false
			Debounces.DisableJump = false
			Humanoid.WalkSpeed = CurrentSpeed
			Humanoid.JumpPower = 120
		end

	ActivateDash = function()
	
	Debounces.Successful_KeyStroke = true
	swait()
	Debounces.Dashing = true
	RightHip.Part0 = nil
	RightHip.Part1 = nil
	FRightHip.Part0 = Torso
	FRightHip.Part1 = RightLeg
	FRightHip.C0 = RightHip.C0
	FRightHip.C1 = RightHip.C1
	LeftHip.Part0 = nil
	LeftHip.Part1 = nil
	FLeftHip.Part0 = Torso
	FLeftHip.Part1 = LeftLeg
	FLeftHip.C0 = LeftHip.C0
	FLeftHip.C1 = LeftHip.C1
	Humanoid.WalkSpeed = CurrentSpeed * 30
	repeat
		runServ.Stepped:wait()
	until not Debounces.Dashing or Debounces.Equipping or Debounces.Attacking or Debounces.Hovering
	FRightHip.Part0 = nil
	FRightHip.Part1 = nil
	RootPart.Velocity = Vec(0, 0, 0)
	Current_Anim = "Idle"
	Debounces.Dashing = false
	RightHip.Part0 = Torso
	RightHip.Part1 = RightLeg
	RightHip.C0 = FRightHip.C0
	RightHip.C1 = FRightHip.C1
	FLeftHip.Part0 = nil
	FLeftHip.Part1 = nil
	LeftHip.Part0 = Torso
	LeftHip.Part1 = LeftLeg
	LeftHip.C0 = FLeftHip.C0
	LeftHip.C1 = FLeftHip.C1
	Humanoid.WalkSpeed = CurrentSpeed
end

	Kogeki_Sokudo_Kojo = function()
	
	Debounces.Attacking = true
	Debounces.Successful_KeyStroke = true
	Debounces.SpedUp = true
	Debounces.DisableJump = true
	Humanoid.WalkSpeed = 0
	RightHip.Part0 = nil
	RightHip.Part1 = nil
	FRightHip.Part0 = Torso
	FRightHip.Part1 = RightLeg
	FRightHip.C0 = RightHip.C0
	FRightHip.C1 = RightHip.C1
	LeftHip.Part0 = nil
	LeftHip.Part1 = nil
	FLeftHip.Part0 = Torso
	FLeftHip.Part1 = LeftLeg
	FLeftHip.C0 = LeftHip.C0
	FLeftHip.C1 = LeftHip.C1
	for i = 0, 2, 0.1 do
		swait()
		local SwingSpeed = 0.15
		if Debounces.Transformed and Debounces.TEWield and not Debounces.TESWield then
			WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0.1, 0, 0) * Euler(rad(90), rad(180), 0), SwingSpeed)
			WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(rad(5), 0, 0), SwingSpeed)
			HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(5), 0, rad(10)), SwingSpeed)
			FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(10), 0), SwingSpeed)
			FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.4, 0.5, -0.4) * Euler(rad(90), 0, rad(-30)), SwingSpeed)
			FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
			Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(30), 0), SwingSpeed)
			Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-30), 0), SwingSpeed)
			FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(5), 0), SwingSpeed)
			FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(16), 0), SwingSpeed)
			FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
		else
			if Debounces.Transformed and Debounces.TESWield and not Debounces.TEWield then
				HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
				HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.05, -1.5) * Euler(rad(90), rad(90), 0), SwingSpeed)
				SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, -0.4) * Euler(rad(84), 0, 0), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, -0.4) * Euler(rad(84), 0, 0), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-10), 0, 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(6), 0, 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-6), rad(-8), 0), SwingSpeed)
				FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(rad(-6), rad(8), 0), SwingSpeed)
				FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
			else
				if Debounces.Transformed and not Debounces.TESWield and not Debounces.TEWield then
					FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(5), 0, rad(10)), SwingSpeed)
					FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(10), 0), SwingSpeed)
					FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.4, 0.5, -0.4) * Euler(rad(90), 0, rad(-30)), SwingSpeed)
					FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
					Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(30), 0), SwingSpeed)
					Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
					FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-30), 0), SwingSpeed)
					FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
					FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
					FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(5), 0), SwingSpeed)
					FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(16), 0), SwingSpeed)
					FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
				else
					if not Debounces.Transformed and not Debounces.HasWep and not Debounces.DuelWielding then
						FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(5), 0, rad(10)), SwingSpeed)
						FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(10), 0), SwingSpeed)
						FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.4, 0.5, -0.4) * Euler(rad(90), 0, rad(-30)), SwingSpeed)
						FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
						Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(30), 0), SwingSpeed)
						Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
						FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-30), 0), SwingSpeed)
						FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
						FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
						FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(5), 0), SwingSpeed)
						FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(16), 0), SwingSpeed)
						FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
					else
						if not Debounces.Transformed and Debounces.HasWep and not Debounces.DuelWielding then
							HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
							HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
							WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
							WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), SwingSpeed)
							FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(5), 0, rad(10)), SwingSpeed)
							FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(10), 0), SwingSpeed)
							FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.4, 0.5, -0.4) * Euler(rad(90), 0, rad(-30)), SwingSpeed)
							FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
							Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(30), 0), SwingSpeed)
							Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
							FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-30), 0), SwingSpeed)
							FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
							FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
							FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(5), 0), SwingSpeed)
							FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(16), 0), SwingSpeed)
							FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
						else
						end
					end
				end
			end
		end
	end
	if Debounces.Transformed or not Debounces.HasWep or Debounces.DuelWielding then
		chatServ:Chat(Head, "Seal 3, disable...", 2)
		local SPP = Inst("Part", F2)
		SPP.Anchored = true
		SPP.CanCollide = false
		SPP.Transparency = 1
		SPP.Size = Vec(20, 1, 20)
		local SPart = Inst("Part", F2)
		SPart.Anchored = false
		SPart.CanCollide = false
		SPart.Transparency = 1
		SPart.Size = Vec(20, 0.2, 20)
		local SPW = Inst("Motor", SPart)
		SPW.Part0 = SPP
		SPW.Part1 = SPart
		SPW.C0 = Cf() * Euler(rad(90), 0, 0)
		SPW.C1 = Cf() * Euler(rad(90), 0, 0)
		SPW.DesiredAngle = 1e+48
		SPW.MaxVelocity = rad(8)
		local SPSGui = Inst("SurfaceGui", SPart)
		SPSGui.Face = "Top"
		local SPSCOL = BC(Colour1)
		local SPS = Inst("ImageLabel", SPSGui)
		SPS.BackgroundTransparency = 1
		SPS.Image = "rbxassetid://144076055"
		SPS.ImageColor3 = Col3(SPSCOL.r, SPSCOL.g, SPSCOL.b)
		SPS.ImageTransparency = 0.5
		SPS.Position = Ud2(0.45, 0, 0.45, 0)
		SPS.Size = Ud2(0.1, 0, 0.1, 0)
		local SPSGui2 = Inst("SurfaceGui", SPart)
		SPSGui2.Face = "Bottom"
		local SPS2 = Inst("ImageLabel", SPSGui2)
		SPS2.BackgroundTransparency = 1
		SPS2.Image = "rbxassetid://144076055"
		SPS2.ImageColor3 = Col3(SPSCOL.r, SPSCOL.g, SPSCOL.b)
		SPS2.ImageTransparency = 0.5
		SPS2.Position = Ud2(0.45, 0, 0.45, 0)
		SPS2.Size = Ud2(0.1, 0, 0.1, 0)
		local cre = Sound(SPart, "http://roblox.com/asset/?id=231917894", 0.7, 1, false)
		debServ:AddItem(cre, 5)
		for i = 0, 1, 0.3 do
			swait()
			SPP.CFrame = RootPart:GetRenderCFrame() * Cf(0, -3.1, 0)
			SPS:TweenSize(Ud2(i, 0, i, 0), _, "Linear", 0.2, true)
			SPS:TweenPosition(Ud2((-1 + i) * -1 / 2.22222, 0, (-1 + i) * -1 / 2.22222, 0), _, "Linear", 0.2, true)
			SPS2:TweenSize(Ud2(i, 0, i, 0), _, "Linear", 0.2, true)
			SPS2:TweenPosition(Ud2((-1 + i) * -1 / 2.22222, 0, (-1 + i) * -1 / 2.22222, 0), _, "Linear", 0.2, true)
		end
		local num = 0
		local nmax = 5
		local stopwave = false
		coroutine.resume(coroutine.create(function()
		
		while not stopwave do
			wait(0.45)
			MagniDamage(RootPart, 20, false, 0, 10, true, 100, "Compensate-Knockdown", 0, false, 0, false, _, _, _)
			MagicRing(BC(Colour1), "SmoothPlastic", SPart.CFrame * Cf(0, 0.1, 0) * Euler(rad(90), 0, 0), 1, 1, 0.1, 2, 2, 0.1, 0.05)
		end
	end
))
		while num <= nmax do
			swait()
			num = num + 0.1
			SPP.CFrame = RootPart:GetRenderCFrame() * Cf(0, -3.1, 0)
		end
		for i = -3.1, 5, 0.4 do
			swait()
			SPP.CFrame = RootPart:GetRenderCFrame() * Cf(0, i, 0)
			local SwingSpeed = 0.3
			if Debounces.Transformed and Debounces.TEWield and not Debounces.TESWield then
				WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0.1, 0, 0) * Euler(rad(90), rad(180), 0), SwingSpeed)
				WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(rad(5), 0, 0), SwingSpeed)
				HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-5), 0, rad(5)), SwingSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.4, 0.5, -0.4) * Euler(rad(150), 0, rad(30)), SwingSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-15), rad(50), 0), SwingSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-20), 0), SwingSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(2), 0), SwingSpeed)
				FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(8), 0), SwingSpeed)
				FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
			else
				if Debounces.Transformed and Debounces.TESWield and not Debounces.TEWield then
					HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
					HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
					SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.05, -1.5) * Euler(rad(90), rad(90), 0), SwingSpeed)
					SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
					FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, -0.4) * Euler(rad(84), 0, 0), SwingSpeed)
					FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
					FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, -0.4) * Euler(rad(84), 0, 0), SwingSpeed)
					FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
					Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(10), 0, 0), SwingSpeed)
					Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
					FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -0.5, 0) * Euler(rad(6), 0, 0), SwingSpeed)
					FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
					FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-6), rad(-8), 0), SwingSpeed)
					FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
					FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(rad(-6), rad(8), 0), SwingSpeed)
					FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
				else
					if Debounces.Transformed and not Debounces.TESWield and not Debounces.TEWield then
						FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-5), 0, rad(5)), SwingSpeed)
						FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
						FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.4, 0.5, -0.4) * Euler(rad(150), 0, rad(30)), SwingSpeed)
						FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
						Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-15), rad(50), 0), SwingSpeed)
						Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
						FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-20), 0), SwingSpeed)
						FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
						FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
						FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(2), 0), SwingSpeed)
						FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(8), 0), SwingSpeed)
						FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
					else
						if not Debounces.Transformed and not Debounces.HasWep and not Debounces.DuelWielding then
							FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-5), 0, rad(5)), SwingSpeed)
							FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
							FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.4, 0.5, -0.4) * Euler(rad(150), 0, rad(30)), SwingSpeed)
							FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
							Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-15), rad(50), 0), SwingSpeed)
							Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
							FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-20), 0), SwingSpeed)
							FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
							FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
							FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(2), 0), SwingSpeed)
							FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(8), 0), SwingSpeed)
							FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
						else
							if not Debounces.Transformed and Debounces.HasWep and not Debounces.DuelWielding then
								HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
								HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
								WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), SwingSpeed)
								WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), SwingSpeed)
								FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-5), 0, rad(5)), SwingSpeed)
								FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
								FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.4, 0.5, -0.4) * Euler(rad(150), 0, rad(30)), SwingSpeed)
								FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
								Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-15), rad(50), 0), SwingSpeed)
								Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
								FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(0, rad(-20), 0), SwingSpeed)
								FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
								FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(0, 0, 0), SwingSpeed)
								FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(2), 0), SwingSpeed)
								FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(8), 0), SwingSpeed)
								FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
							else
							end
						end
					end
				end
			end
		end
		if Debounces.Transformed or not Debounces.HasWep or Debounces.DuelWielding then
			chatServ:Chat(Head, "Kogeki sokudo kojo!", 2)
			debServ:AddItem(SPart, 0)
			debServ:AddItem(SPP, 0)
			stopwave = true
			MagicCircle(BC(Colour1), "Neon", RootPart.CFrame, 2, 2, 2, 5, 5, 5, 0.02)
			MagicRing(BC(Colour1), "Neon", RootPart.CFrame * Euler(0, 0, 0), 1, 1, 1, 4, 4, 1, 0.02)
			MagicRing(BC(Colour1), "Neon", RootPart.CFrame * Euler(rad(45), rad(-45), 0), 2, 2, 1, 5, 5, 1, 0.02)
			MagicRing(BC(Colour1), "Neon", RootPart.CFrame * Euler(rad(-45), rad(45), 0), 3, 3, 1, 6, 6, 1, 0.02)
			MagicRing(BC(Colour1), "Neon", RootPart.CFrame * Euler(rad(90), 0, 0), 4, 4, 1, 7, 7, 1, 0.02)
			MagniDamage(RootPart, 25, false, 0, 20, true, 100, "Compensate-Knockdown", 0, false, 0, false, _, _, _)
			local boo = Sound(RootPart, "http://roblox.com/asset/?id=233091136", 1, 1, false)
			debServ:AddItem(boo, 5)
			wait(0.5)
			FRightHip.Part0 = nil
			FRightHip.Part1 = nil
			RightHip.Part0 = Torso
			RightHip.Part1 = RightLeg
			RightHip.C0 = FRightHip.C0
			RightHip.C1 = FRightHip.C1
			FLeftHip.Part0 = nil
			FLeftHip.Part1 = nil
			LeftHip.Part0 = Torso
			LeftHip.Part1 = LeftLeg
			LeftHip.C0 = FLeftHip.C0
			LeftHip.C1 = FLeftHip.C1
			local LFR = FrameRate
			FrameRate = 0.0125
			Apply_Buff(6, 60)
			Humanoid.WalkSpeed = CurrentSpeed
			Debounces.Attacking = false
			Debounces.DisableJump = false
			coroutine.resume(coroutine.create(function()
		
		wait(60)
		FrameRate = LFR
		wait(80)
		Debounces.SpedUp = false
	end
))
		end
	end
end

	HurricaneSlash = function()
	
	Debounces.Attacking = true
	Debounces.Successful_KeyStroke = true
	Debounces.HurrSlash = true
	Debounces.DisableJump = true
	Humanoid.WalkSpeed = 0
	for i = 0, 1.4, 0.1 do
		swait()
		local SwingSpeed = 0.2
		WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0, -0.1, 0) * Euler(rad(90), rad(180), 0), SwingSpeed)
		WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
		HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
		HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
		FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(0, 0, rad(90)), SwingSpeed)
		FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
		FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(80), 0, rad(-60)), SwingSpeed)
		FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
		Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-10), 0, 0), SwingSpeed)
		Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-60), 0), SwingSpeed)
		FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1.4, 0) * Euler(0, rad(-60), 0), SwingSpeed)
		FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
		RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -0.6, 0) * Euler(rad(-4), rad(80), 0), SwingSpeed)
		RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
		LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -0.6, 0.14) * Euler(rad(-6), rad(-75), 0), SwingSpeed)
		LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
	end
	local hit = TEHit_Box.Touched:connect(function(part)
		
		DamageFunction(part, false, 0, 500, true, 50, "Compensate", RootPart, 0.05, false, _, true, 153092227, 1.4, 0.4)
	end
)
	local SlashS = Sound(TEHandle, "http://roblox.com/asset/?id=169445073", 1, 1, false)
	debServ:AddItem(SlashS, 2)
	c1 = nil
	c2 = nil
	coroutine.resume(coroutine.create(function()
		
		wait(0.1)
		local Hur = Inst("Part", F2)
		Hur.BrickColor = BC(Colour1)
		Hur.Material = "SmoothPlastic"
		Hur.Transparency = 0.8
		Hur.Name = "Hurricane"
		Hur.Anchored = false
		Hur.CanCollide = false
		Hur.Locked = true
		Hur.Size = Vec(0.2, 0.2, 0.2)
		local HM = Inst("SpecialMesh", Hur)
		HM.MeshId = "http://www.roblox.com/asset/?id=102638417"
		HM.Scale = Vec(15, 10, 15)
		Hur.CFrame = RootPart.CFrame * Cf(0, 12, -3) * Euler(0, 0, rad(-10))
		local Hmo = Inst("BodyVelocity", Hur)
		Hmo.MaxForce = Vec(huge, huge, huge)
		Hmo.Velocity = RootPart.CFrame.lookVector * 110
		local Hpo = Inst("BodyPosition", Hur)
		Hpo.MaxForce = Vec(0, huge, 0)
		Hpo.Position = Hur.Position
		local Hro = Inst("BodyGyro", Hur)
		Hro.MaxTorque = Vec(0, huge, 0)
		Hro.CFrame = Hur.CFrame
		Hro.P = 30000
		local howl = Sound(Hur, "http://roblox.com/asset/?id=138161364", 1, 0.5, true)
		coroutine.resume(coroutine.create(function()
			
			while Hur.Parent do
				swait()
				Hro.CFrame = Hur.CFrame * CFrame.Angles(0, 600, 0)
				MagniDamage(Hur, 18, false, 0, 111, true, -110, "Compensate-Knockdown", 0.01, false, 0, true, "233856140", 2, 0.3)
				local IL = {Character}
				local Ground, Pos = workspace:FindPartOnRayWithIgnoreList(Ray.new(Hur.Position, Hur.CFrame * Euler(rad(-90), 0, rad(10)).lookVector.Unit * 20), IL, true, true)
				if Ground then
					MagicBlock(BC(Colour1), "Neon", Cf(Pos) * Euler(rad(rand(-360, 360)), rad(rand(-360, 360)), rad(rand(-360, 360))), 16, 16, 16, -3, -3, -3, 0.06)
				end
			end
		end
))
		wait(1.5)
		for i = 0.8, 1, 0.04 do
			swait()
			Hur.Transparency = i
		end
		debServ:AddItem(Hur, 0)
		debServ:AddItem(howl, 0)
	end
))
	for i = 0, 1.4, 0.1 do
		swait()
		local x = TEHit_Box
		c2 = x.CFrame * Cf(0, 0.5, 0)
		if c1 and (x.Position - c1.p).magnitude > 0.1 then
			local h = 6
			local a, b = Triangle(c1 * Cf(0, h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, c2 * Cf(0, h / 2, 0).p, Colour1, "Neon")
			if a then
				debServ:AddItem(a, 1)
			end
			if b then
				debServ:AddItem(b, 1)
			end
			local c, d = Triangle(c2 * Cf(0, h / 2, 0).p, c2 * Cf(0, -h / 2, 0).p, c1 * Cf(0, -h / 2, 0).p, Colour1, "Neon")
			if c then
				debServ:AddItem(c, 1)
			end
			if d then
				debServ:AddItem(d, 1)
			end
			c1 = c2
		elseif not c1 then
					c1 = c2
				end
					local SwingSpeed = 0.7
					WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0, -0.1, 0) * Euler(rad(90), rad(180), 0), SwingSpeed)
					WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
					HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
					HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
					FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1, 0.5, -0.7) * Euler(0, rad(150), rad(90)), SwingSpeed)
					FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
					FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-5), 0, rad(-10)), SwingSpeed)
					FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
					Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-10), 0, 0), SwingSpeed)
					Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(40), 0), SwingSpeed)
					FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1.4, 0) * Euler(0, rad(40), 0), SwingSpeed)
					FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
					RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -0.6, 0) * Euler(rad(-4), rad(80), 0), SwingSpeed)
					RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), SwingSpeed)
					LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -0.6, 0.14) * Euler(rad(-6), rad(-75), 0), SwingSpeed)
					LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), SwingSpeed)
					-- DECOMPILER ERROR at PC817: LeaveBlock: unexpected jumping out DO_STMT

					-- DECOMPILER ERROR at PC817: LeaveBlock: unexpected jumping out IF_ELSE_STMT

					-- DECOMPILER ERROR at PC817: LeaveBlock: unexpected jumping out IF_STMT

				end
	hit:disconnect()
	Debounces.Attacking = false
	coroutine.resume(coroutine.create(function()
		
		wait(4)
		Debounces.HurrSlash = false
	end
))
	Debounces.DisableJump = false
	Humanoid.WalkSpeed = CurrentSpeed
end

	Stomp = function()
	
	Debounces.Attacking = true
	Debounces.Successful_KeyStroke = true
	Debounces.Stompped = true
	Debounces.DisableJump = true
	Humanoid.WalkSpeed = 5
	RightHip.Part0 = nil
	RightHip.Part1 = nil
	FRightHip.Part0 = Torso
	FRightHip.Part1 = RightLeg
	FRightHip.C0 = RightHip.C0
	FRightHip.C1 = RightHip.C1
	LeftHip.Part0 = nil
	LeftHip.Part1 = nil
	FLeftHip.Part0 = Torso
	FLeftHip.Part1 = LeftLeg
	FLeftHip.C0 = LeftHip.C0
	FLeftHip.C1 = LeftHip.C1
	local hit = LeftLeg.Touched:connect(function(part)
		
		DamageFunction(part, false, 0, 100, false, 25, "Compensate-SkyRocket", RootPart, 0.2, false, _, true, 153092296, 1.4, 0.4)
	end
)
	for i = 0, 1.6, 0.1 do
		swait()
		local SwingSpeed = 0.25
		if Debounces.TEWield and not Debounces.TESWield then
			WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0.1, 0, 0) * Euler(rad(90), rad(180), 0), SwingSpeed)
			WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
		else
			if Debounces.TESWield and not Debounces.TEWield then
				SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(90), 0, 0), SwingSpeed)
				SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			end
		end
		FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-12), 0, rad(10)), SwingSpeed)
		FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
		FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.3, 0) * Euler(rad(120), 0, 0), SwingSpeed)
		FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
		Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-20), 0, 0), SwingSpeed)
		Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
		FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(10), 0, 0), SwingSpeed)
		FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
		FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-10), 0, 0), SwingSpeed)
		FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
		FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.6, -0.4) * Euler(rad(60), 0, 0), SwingSpeed)
		FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
	end
	hit:disconnect()
	Humanoid.WalkSpeed = 0
	for i = 0, 0.8, 0.1 do
		swait()
		local SwingSpeed = 0.3
		MagniDamage(LeftLeg, 8, false, 0, 5, false, -50, "Compensate-SkyRocket", 0.1, false, 0, true, "153092285", 0.75, 0.4)
		if Debounces.TEWield and not Debounces.TESWield then
			WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0.1, 0, 0) * Euler(rad(90), rad(180), 0), SwingSpeed)
			WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
			HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
		else
			if Debounces.TESWield and not Debounces.TEWield then
				SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(90), 0, 0), SwingSpeed)
				SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
				HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
			end
		end
		FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-20), 0, rad(10)), SwingSpeed)
		FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
		FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-20), 0, 0), SwingSpeed)
		FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), SwingSpeed)
		Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-22), 0, 0), SwingSpeed)
		Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), SwingSpeed)
		FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-10), 0, 0), SwingSpeed)
		FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), SwingSpeed)
		FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(rad(10), 0, 0), SwingSpeed)
		FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
		FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, -0.8) * Euler(rad(10), 0, 0), SwingSpeed)
		FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), SwingSpeed)
	end
	coroutine.resume(coroutine.create(function()
		
		for i = 0, 0.6, 0.1 do
			swait()
			MagniDamage(LeftLeg, 22, false, 0, 50, false, 0, "Compensate-FreezeStun", 0.6, false, 0, true, "153092213", 1.4, 0.4)
		end
	end
))
	MagicRing(BC(Colour1), "Neon", RootPart.CFrame * Cf(0.3, -3, -0.3) * Euler(rad(90), 0, 0), 3, 3, 1, 7, 7, 1, 0.1)
	MagicWave2(BC(Colour1), "Neon", RootPart.CFrame * Cf(0, -3, 0), 3, 0.3, 3, 7, 0.3, 7, 0.1)
	local boo = Sound(RootPart, "http://roblox.com/asset/?id=231917806", 1, 1, false)
	debServ:AddItem(boo, 5)
	wait(0.6)
	FRightHip.Part0 = nil
	FRightHip.Part1 = nil
	RightHip.Part0 = Torso
	RightHip.Part1 = RightLeg
	RightHip.C0 = FRightHip.C0
	RightHip.C1 = FRightHip.C1
	FLeftHip.Part0 = nil
	FLeftHip.Part1 = nil
	LeftHip.Part0 = Torso
	LeftHip.Part1 = LeftLeg
	LeftHip.C0 = FLeftHip.C0
	LeftHip.C1 = FLeftHip.C1
	Debounces.Attacking = false
	coroutine.resume(coroutine.create(function()
		
		wait(5)
		Debounces.Stompped = false
	end
))
	Debounces.DisableJump = false
	Humanoid.WalkSpeed = CurrentSpeed
end

	KeyStrokesAttacks = function()
	if InputTable[1] == "a" and InputTable[2] == "s" and InputTable[3] == "d" and InputTable[4] == "d" and InputTable[5] == "c" and not Debounces.Transformed and not Debounces.DuelWielding then
		Awaken()
	end
	if InputTable[1] == "w" and InputTable[2] == "w" and Debounces.Transformed and not Debounces.Dashing and not Debounces.Hovering then
		ActivateDash()
	end
	if InputTable[1] == "a" and InputTable[2] == "s" and InputTable[3] == "d" and InputTable[4] == "e" and InputTable[5] == "a" then
		if not Debounces.SpedUp then
			Kogeki_Sokudo_Kojo()
		else
			Debounces.KeyStroke_CoolDown = true
		end
	else
		if InputTable[1] == "x" and InputTable[2] == "w" and InputTable[3] == "w" and Debounces.Transformed and Debounces.TEWield then
			if not Debounces.HurrSlash then
				HurricaneSlash()
			else
				Debounces.KeyStroke_CoolDown = true
			end
		end
	end
	if InputTable[1] == "s" and InputTable[2] == "s" and InputTable[3] == "z" and Debounces.Transformed then
		if not Debounces.Stompped then
			Stomp()
		else
			Debounces.KeyStroke_CoolDown = true
		end
	end
end

	local Input_Time = 0
	local Input_MaxTime = 0.5
	local Input_Addition = 0.16
	local Max_Input = 7
	local Running_Timer = false
	Input_Timer = function()
	
	if not Running_Timer then
		Running_Timer = true
		repeat
			wait()
			Input_Time = Input_Time - 0.1
		until Input_Time <= 0.1 or Debounces.Successful_KeyStroke or #InputTable == Max_Input or Debounces.KeyStroke_CoolDown
		local TweenTransCol = function(p, newCol, i)
		
		p.TextColor3 = newCol
		p:TweenPosition(Ud2(0.125 * i, 0, 2, 0), _, "Linear", 0.5, true)
		debServ:AddItem(p, 1)
		coroutine.resume(coroutine.create(function()
			
			for i = 0, 1, 0.1 do
				swait()
				p.TextTransparency = i
				p.TextStrokeTransparency = i
			end
		end
))
	end

		if Input_Time <= 0.1 and not Debounces.Successful_KeyStroke then
			for i,p in pairs(InputFrameTable) do
				if p:IsA("TextLabel") then
					TweenTransCol(p, Col3(0.66666666666667, 0, 0), i)
				end
			end
			InputFrameTable = {}
			InputTable = {}
		end
		if #InputTable == Max_Input then
			wait()
			if not Debounces.Successful_KeyStroke then
				for i,p in pairs(InputFrameTable) do
					if p:IsA("TextLabel") then
						TweenTransCol(p, Col3(0.66666666666667, 0, 0), i)
					end
				end
				InputFrameTable = {}
				InputTable = {}
			end
		end
		if Debounces.Successful_KeyStroke then
			for i,p in pairs(InputFrameTable) do
				if p:IsA("TextLabel") then
					TweenTransCol(p, Col3(0, 1, 0), i)
				end
			end
			InputFrameTable = {}
			InputTable = {}
		end
		if Debounces.KeyStroke_CoolDown then
			for i,p in pairs(InputFrameTable) do
				if p:IsA("TextLabel") then
					TweenTransCol(p, Col3(1, 0.66666666666667, 0), i)
				end
			end
			InputFrameTable = {}
			InputTable = {}
		end
		Debounces.Successful_KeyStroke = false
		Debounces.KeyStroke_CoolDown = false
		Input_Time = Input_MaxTime
		Running_Timer = false
	end
end

	Mouse.KeyDown:connect(function(key)
	if Debounces.KeyStrokeEnabled and not Debounces.Attacking and #InputTable ~= Max_Input and (key == "w" or key == "a" or key == "s" or key == "d" or key == "q" or key == "e" or key == "c" or key == "x" or key == "z") then
		table.insert(InputTable, key)
		local newKP = KPTemplate:Clone()
		newKP.Parent = KP
		newKP.Text = string.upper(key)
		if Input_Time < Input_MaxTime then
			Input_Time = Input_Time + Input_Addition
		end
		table.insert(InputFrameTable, newKP)
		for i,p in pairs(InputFrameTable) do
			if p == newKP then
				newKP:TweenPosition(Ud2(0.125 * i, 0, 0, 0), _, "Linear", 0.03, true)
			end
		end
		coroutine.resume(coroutine.create(function()
		
		KeyStrokesAttacks()
	end
))
		Input_Timer()
	end
end
)
	Mouse.KeyDown:connect(function(key)
	if key == "f" and not Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking and not Debounces.Transformed and not Debounces.KeyStrokeEnabled then
		Debounces.Equipping = true
		LeftShoulder.Part0 = nil
		LeftShoulder.Part1 = nil
		RightShoulder.Part0 = nil
		RightShoulder.Part1 = nil
		FLeftShoulder.Part0 = Torso
		FLeftShoulder.Part1 = LeftArm
		FLeftShoulder.C0 = NLSC0
		FLeftShoulder.C1 = NLSC1
		FRightShoulder.Part0 = Torso
		FRightShoulder.Part1 = RightArm
		FRightShoulder.C0 = NRSC0
		FRightShoulder.C1 = NRSC1
		RootJoint.Part0 = nil
		RootJoint.Part1 = nil
		FRootJoint.Part0 = RootPart
		FRootJoint.Part1 = Torso
		FRootJoint.C0 = NRJC0
		FRootJoint.C1 = NRJC1
		swait()
		CurrentSpeed = 20
		Humanoid.JumpPower = 90
		Humanoid.WalkSpeed = CurrentSpeed
		Debounces.Equipped = true
		Debounces.Equipping = false
		wait(3)
	elseif key == "f" and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking and not Debounces.HasWep and not Debounces.Transformed and not Debounces.KeyStrokeEnabled then
			Debounces.Equipping = true
			AssumeNormalJoints()
			swait()
			CurrentSpeed = 16
			Humanoid.JumpPower = 50
			Humanoid.WalkSpeed = CurrentSpeed
			Debounces.Equipped = false
			Debounces.Equipping = false
		end
	if key == "f" and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking and Debounces.Transformed and not Debounces.TESWield then
		EquipTE()
	end
	if key == "g" and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking and Debounces.Transformed and not Debounces.TEWield then
		EquipTES()
	end
	if key == " " and Debounces.Equipped and not Debounces.Equipping and (Current_Anim == "Falling" or Current_Anim == "Jumping") and not Debounces.DisableJump and not Debounces.Attack and Debounces.Transformed and not Debounces.Hovering and not Debounces.TEWield then
		Debounces.Hovering = true
		Debounces.AnimOverride = true
		Humanoid.WalkSpeed = CurrentSpeed * 8
		local holdk = Mouse.KeyUp:connect(function(Key)
		if Key == " " and Debounces.Hovering then
			Debounces.Hovering = false
		end
	end
		)
			local hover = Inst("BodyPosition", RootPart)
			hover.Name = DecName
			hover.MaxForce = Vec(0, huge, 0)
			hover.Position = RootPart.Position
			hover.P = 25000
			local moving = false
			local go_up = Mouse.KeyDown:connect(function(k)
		
		if k == "n" and not moving then
			moving = true
			local kek = Mouse.KeyUp:connect(function(K)
			
			if K == "n" and moving then
				moving = false
			end
		end
)
			repeat
				hover.Position = Vec(0, RootPart.Position.Y + 6, 0)
					if not Debounces.Attacking then
						local WalkSpeed = 0.5
						FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-10), 0, rad(8)), WalkSpeed)
						FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
						FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-10), 0, rad(-8)), WalkSpeed)
						FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
						Neck.C0 = clerp(Neck.C0, Cf(0, 1.4, 0) * Euler(rad(20), 0, 0), WalkSpeed)
						Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
						FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-6), 0, 0), WalkSpeed)
						FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), WalkSpeed)
						FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -0.7, -0.3) * Euler(rad(-10), rad(90), 0), WalkSpeed)
						FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), WalkSpeed)
						FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, -0.1) * Euler(rad(-6), rad(-90), 0), WalkSpeed)
						FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), WalkSpeed)
					end
					swait()
			until not moving
		end
	end
)
				local go_down = Mouse.KeyDown:connect(function(k)
		if k == "m" and not moving then
			moving = true
			local kek = Mouse.KeyUp:connect(function(K)
			
			if K == "m" and moving then
				moving = false
			end
		end
)
			repeat
				hover.Position = Vec(0, RootPart.Position.Y - 6, 0)
					if not Debounces.Attacking then
						local WalkSpeed = 0.5
						FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-5), 0, rad(50)), WalkSpeed)
						FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
						FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-5), 0, rad(-50)), WalkSpeed)
						FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
						Neck.C0 = clerp(Neck.C0, Cf(0, 1.4, -0.4) * Euler(rad(-30), 0, 0), WalkSpeed)
						Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
						FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-6), 0, 0), WalkSpeed)
						FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), WalkSpeed)
						FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -0.6, -0.3) * Euler(rad(-5), rad(80), 0), WalkSpeed)
						FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), WalkSpeed)
						FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.6, -0.1) * Euler(rad(-2), rad(-85), 0), WalkSpeed)
						FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), WalkSpeed)
					end
					swait()
			until not moving
		end
	end
)
				LeftHip.Part0 = nil
				LeftHip.Part1 = nil
				FLeftHip.Part0 = Torso
				FLeftHip.Part1 = LeftLeg
				FLeftHip.C0 = LeftHip.C0
				FLeftHip.C1 = LeftHip.C1
				RightHip.Part0 = nil
				RightHip.Part1 = nil
				FRightHip.Part0 = Torso
				FRightHip.Part1 = RightLeg
				FRightHip.C0 = RightHip.C0
				FRightHip.C1 = RightHip.C1
				repeat
					wait()
					Humanoid.WalkSpeed = CurrentSpeed * 4
					Debounces.AnimOverride = true
					MagniDamage(LeftLeg, 6, true, 2, 6, true, 1, "Compensate-LifeSteal", 0.1, false, 0, false, _, _, _)
					MagniDamage(RightLeg, 6, true, 2, 6, true, 1, "Compensate-LifeSteal", 0.1, false, 0, false, _, _, _)
					MagicBlock(BC(Colour1), "Neon", LeftLeg:GetRenderCFrame() * Cf(0, -1.15, 0), 0.3, 0.3, 0.3, 1.3, 1.3, 1.3, 0.12)
					MagicBlock(BC(Colour2), "Neon", LeftLeg:GetRenderCFrame() * Cf(0, -1.15, 0), 0.3, 0.3, 0.3, 1.3, 1.3, 1.3, 0.12)
					MagicBlock(BC(Colour1), "Neon", RightLeg:GetRenderCFrame() * Cf(0, -1.15, 0), 0.3, 0.3, 0.3, 1.3, 1.3, 1.3, 0.12)
					MagicBlock(BC(Colour2), "Neon", RightLeg:GetRenderCFrame() * Cf(0, -1.15, 0), 0.3, 0.3, 0.3, 1.3, 1.3, 1.3, 0.12)
					if not moving and not Debounces.Attacking and not Debounces.Equipping then
						LeftHip.Part0 = nil
						LeftHip.Part1 = nil
						FLeftHip.Part0 = Torso
						FLeftHip.Part1 = LeftLeg
						RightHip.Part0 = nil
						RightHip.Part1 = nil
						FRightHip.Part0 = Torso
						FRightHip.Part1 = RightLeg
						if RootPart.Velocity.Magnitude > 5 then
							local WalkSpeed = 0.5
							if Debounces.TESWield then
								SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(100), 0, 0), WalkSpeed)
								SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
								HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), WalkSpeed)
								HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
							end
							FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-15), 0, rad(17)), WalkSpeed)
							FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
							FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-15), 0, rad(-17)), WalkSpeed)
							FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
							Neck.C0 = clerp(Neck.C0, Cf(0, 1.4, 0) * Euler(rad(8), 0, 0), WalkSpeed)
							Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
							FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-20), 0, 0), WalkSpeed)
							FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), WalkSpeed)
							FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -0.5, -0.3) * Euler(rad(-12), rad(90), 0), WalkSpeed)
							FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), WalkSpeed)
							FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.8, -0.1) * Euler(rad(-8), rad(-90), 0), WalkSpeed)
							FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), WalkSpeed)
						else
								idlenum = 0.3
								if idlenum2 < 9.999 and idle == 1 then
									idlenum2 = idlenum2 + idlenum
								elseif idlenum2 > 9.999 and idle == 1 then
										idle = -1
									elseif idlenum2 > 0.999 and idle == -1 then
											idlenum2 = idlenum2 - idlenum
										elseif idlenum2 < 0.999 and idle == -1 then
												idle = 1
								end
								local IdleSpeed = 0.4
								if Debounces.TESWield then
									SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(100), 0, 0), IdleSpeed)
									SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), IdleSpeed)
									HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), IdleSpeed)
									HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), IdleSpeed)
								end
								FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.51, 0.6, 0.2) * Euler(0, 0, rad(6 + idlenum2 / 1.5)), IdleSpeed)
								FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(20), 0), IdleSpeed)
								FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.6, 0) * Euler(0, 0, rad(-6 - idlenum2 / 1.5)), IdleSpeed)
								FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-12), 0), IdleSpeed)
								Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(rad(-10 - idlenum2 / 1.25), 0, 0), IdleSpeed)
								Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(16), 0), IdleSpeed)
								FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1 - idlenum2 / 60, 0) * Euler(0, rad(16), 0), IdleSpeed)
								FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), IdleSpeed)
								FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -0.8 + idlenum2 / 60, 0.08) * Euler(rad(-4), rad(-10), 0), IdleSpeed)
								FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, 0, 0), IdleSpeed)
								FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1 + idlenum2 / 60, 0.02) * Euler(rad(-4), rad(8), 0), IdleSpeed)
								FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, 0, 0), IdleSpeed)
							end
					end
				until not Debounces.Hovering or Debounces.Guarding or Debounces.Successful_KeyStroke
					FLeftHip.Part0 = nil
					FLeftHip.Part1 = nil
					LeftHip.Part0 = Torso
					LeftHip.Part1 = LeftLeg
					LeftHip.C0 = FLeftHip.C0
					LeftHip.C1 = FLeftHip.C1
					FRightHip.Part0 = nil
					FRightHip.Part1 = nil
					RightHip.Part0 = Torso
					RightHip.Part1 = RightLeg
					RightHip.C0 = FRightHip.C0
					RightHip.C1 = FRightHip.C1
					debServ:AddItem(hover, 0)
					Humanoid.WalkSpeed = CurrentSpeed
					Debounces.AnimOverride = false
					Debounces.Hovering = false
					end
				if key == " " and Debounces.Equipped and not Debounces.Equipping and Debounces.Can_Double_Jump and not Debounces.DisableJump and not Debounces.Transformed then
					Debounces.Can_Double_Jump = false
					Debounces.DoubleJumping = true
					RootPart.Velocity = Vec(0, 180, 0)
					local noscope = 0
					if not Debounces.DoubleJumpAnim then
						Debounces.AnimOverride = true
						Debounces.DoubleJumpAnim = true
						Current_Anim = "Jumping"
						for i = 0, 1.6, 0.1 do
							swait()
							if noscope ~= 360 then
								noscope = noscope + 30
							end
							if not Debounces.Attacking then
								local JumpSpeed = 0.4
								if Debounces.HasWep then
									HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), JumpSpeed)
									HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), JumpSpeed)
									WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), JumpSpeed)
									WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), JumpSpeed)
								end
								FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-30), 0, rad(10)), JumpSpeed)
								FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), JumpSpeed)
								FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-30), 0, rad(-10)), JumpSpeed)
								FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), JumpSpeed)
								Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(15), 0, 0), JumpSpeed)
								Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), JumpSpeed)
								FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-10), 0, 0), JumpSpeed)
								FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, rad(noscope), 0), JumpSpeed)
								RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-8), rad(90), 0), JumpSpeed)
								RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), JumpSpeed)
								LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -0.5, -0.8) * Euler(rad(-20), rad(-90), 0), JumpSpeed)
								LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), JumpSpeed)
							end
						end
						Current_Anim = "Falling"
						Debounces.DoubleJumpAnim = false
						Debounces.AnimOverride = false
					end
					Debounces.DoubleJumping = false
				end
					if key == "e" and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking and not Debounces.Transformed and not Debounces.KeyStrokeEnabled then
						Disrupt()
					end
					if key == "z" and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking and not Debounces.HasWep and not Debounces.Transformed and not Debounces.KeyStrokeEnabled then
						Z_Pressed = true
						Fatal_Blow()
						Z_Pressed = false
					end
					if key == "z" and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking and Debounces.HasWep and not Debounces.Transformed and not Debounces.KeyStrokeEnabled then
						Hate_Wave()
					end
					if key == "c" and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking and Debounces.HasWep and not Debounces.DuelWielding and not Debounces.Transformed and not Debounces.KeyStrokeEnabled and not Debounces.Charging_Erupt then
						Debounces.Charging_Erupt = true
						releasez = Mouse.KeyUp:connect(function(Key)
					if Key == "c" and Debounces.Charging_Erupt then
					Debounces.Charging_Erupt = false
					releasez:disconnect()
					end
			end)
		Dark_Eruption()
	end
					if key == "r" and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking and not Debounces.DuelWielding and not Debounces.TEWield and not Debounces.TESWield and not Debounces.Guarding and Debounces.CanGuard then
						Debounces.Guarding = true
						greal = Mouse.KeyUp:connect(function(Key)
		
		if Key == "r" and Debounces.Guarding then
			Debounces.Guarding = false
			greal:disconnect()
		end
	end)
Corrupt_Guard()
end
					if key == "x" and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking and not Debounces.Transformed and not Debounces.KeyStrokeEnabled then
						game:GetService("RunService").Stepped:wait()
						Axel(SWP.Value)
					end
					if key == "s" and not SWP.Value and not Debounces.Transformed and not Debounces.KeyStrokeEnabled then
						SWP.Value = true
						swait(0.08)
						SWP.Value = false
					end
					if key == "g" and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking and not Debounces.Transformed then
						if not Debounces.DuelWielding and not Debounces.HasWep then
							Equip_Denial()
						elseif not Debounces.DuelWielding and Debounces.HasWep then
								Unequip_Denial()
						end
					end
					if key == "2" and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking and not Debounces.Transformed then
						swait()
						Debounces.KeyStrokeEnabled = not Debounces.KeyStrokeEnabled
					end
				end
)
	Mouse.Button1Down:connect(function()
	
	if Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking then
		ClickCombo()
	end
end
)
	local SSS = 1
	Humanoid.Running:connect(function(speed)
	if SSS < speed then
		if not Debounces.Dashing and Humanoid.WalkSpeed == CurrentSpeed then
			Current_Anim = "Walking"
		else
			Current_Anim = "Dashing"
		end
		Debounces.Can_Double_Jump = false
	elseif speed < SSS or speed == 0 then
			Current_Anim = "Idle"
			Debounces.Dashing = false
			Debounces.Can_Double_Jump = false
	end
end
)
	Humanoid.FreeFalling:connect(function()
	if Current_Anim ~= "Falling" then
		Current_Anim = "Falling"
		Debounces.Can_Double_Jump = true
	end
end
)
	Humanoid.Jumping:connect(function()
	Current_Anim = "Jumping"
	if Debounces.Equipped and not Debounces.Equipping and not Debounces.JumpAnim and not Debounces.DisableJump then
		Debounces.Can_Double_Jump = true
		Debounces.AnimOverride = true
		Debounces.JumpAnim = true
		for i = 0, 0.8, 0.1 do
			swait()
			if not Debounces.Attacking then
				local JumpSpeed = 0.4
				if Debounces.HasWep then
					HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), JumpSpeed)
					HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), JumpSpeed)
					WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), JumpSpeed)
					WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), JumpSpeed)
				end
				if Debounces.TEWield then
					WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0.1, 0, -0.6) * Euler(rad(90), rad(180), 0), JumpSpeed)
					WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), JumpSpeed)
					HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(rad(-10), rad(18), 0), JumpSpeed)
					HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), JumpSpeed)
					FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(30), 0, rad(-10)), JumpSpeed)
					FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-20), 0), JumpSpeed)
					FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.4, -0.96) * Euler(rad(52), 0, rad(34)), JumpSpeed)
					FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(60), 0), JumpSpeed)
					FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(4), rad(-12), 0), JumpSpeed)
					FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), JumpSpeed)
					Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(7), rad(12), 0), JumpSpeed)
					Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), JumpSpeed)
					if not Debounces.Dashing then
						RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-16), rad(80), 0), JumpSpeed)
						RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), JumpSpeed)
						LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -0.5, -0.8) * Euler(rad(-8), rad(-86), 0), JumpSpeed)
						LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), JumpSpeed)
					else
						FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-16), rad(80), 0), JumpSpeed)
						FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), JumpSpeed)
						FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.5, -0.8) * Euler(rad(-8), rad(-86), 0), JumpSpeed)
						FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), JumpSpeed)
					end
				else
					FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-30), 0, rad(10)), JumpSpeed)
					FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), JumpSpeed)
					FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-30), 0, rad(-10)), JumpSpeed)
					FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), JumpSpeed)
					Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(15), 0, 0), JumpSpeed)
					Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), JumpSpeed)
					FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-20), 0, 0), JumpSpeed)
					FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), JumpSpeed)
					if not Debounces.Dashing then
						RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-8), rad(90), 0), JumpSpeed)
						RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), JumpSpeed)
						LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -0.5, -0.8) * Euler(rad(-20), rad(-90), 0), JumpSpeed)
						LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), JumpSpeed)
					else
						FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-8), rad(90), 0), JumpSpeed)
						FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), JumpSpeed)
						FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.5, -0.8) * Euler(rad(-20), rad(-90), 0), JumpSpeed)
						FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), JumpSpeed)
					end
				end
			end
		end
		Debounces.JumpAnim = false
		Debounces.AnimOverride = false
	end
end
)
	Humanoid.Swimming:connect(function()
	
	Current_Anim = "Walking"
	Debounces.Can_Double_Jump = true
end
)
	Humanoid.Changed:connect(function()
	
	if Humanoid.PlatformStand then
		Humanoid.PlatformStand = false
	end
end
)
	runServ.RenderStepped:connect(function()
	
	Bringer()
	if Debounces.KeyStrokeEnabled then
		KPTemplate.Text = ">>>"
		KPTemplate.TextColor3 = Col3(1, 1, 1)
	else
		KPTemplate.Text = "-X-"
		KPTemplate.TextColor3 = Col3(0.66666666666667, 0, 0)
	end
	if not GodMode then
		Humanoid.MaxHealth = Max_Health
	end
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
	Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
	if #Effects > 0 then
		for e = 1, #Effects do
			if Effects[e] ~= nil then
				local Thing = Effects[e]
				if Thing ~= nil then
					local Part = Thing[1]
					local Mode = Thing[2]
					local Delay = Thing[3]
					local IncX = Thing[4]
					local IncY = Thing[5]
					local IncZ = Thing[6]
					if Thing[1].Transparency <= 1 then
						if Thing[2] == "Block1" then
							Thing[1].CFrame = Thing[1].CFrame * Euler(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
							Mesh = Thing[1]:FindFirstChild("Mesh")
							if not Mesh then
								Mesh = Instance.new("BlockMesh")
							end
							Mesh.Scale = Mesh.Scale + Vec(Thing[4], Thing[5], Thing[6])
							Thing[1].Transparency = Thing[1].Transparency + Thing[3]
						elseif Thing[2] == "Wave" then
								Thing[1].CFrame = Thing[1].CFrame * CFrame.Angles(0, rad(10), 0)
								Mesh = Thing[1]:FindFirstChild("Mesh")
								if not Mesh then
									Mesh = Instance.new("BlockMesh")
								end
								Mesh.Scale = Mesh.Scale + Vec(Thing[4], Thing[5], Thing[6])
								Thing[1].Transparency = Thing[1].Transparency + Thing[3]
							elseif Thing[2] == "Cylinder" then
									Mesh = Thing[1]:FindFirstChild("Mesh")
									if not Mesh then
										Mesh = Instance.new("BlockMesh")
									end
									Mesh.Scale = Mesh.Scale + Vec(Thing[4], Thing[5], Thing[6])
									Thing[1].Transparency = Thing[1].Transparency + Thing[3]
								elseif Thing[2] == "Blood" then
										Mesh = Thing[1]:FindFirstChild("Mesh")
										if not Mesh then
											Mesh = Instance.new("BlockMesh")
										end
										Thing[1].CFrame = Thing[1].CFrame * Cf(0, 0.5, 0)
										Mesh.Scale = Mesh.Scale + Vec(Thing[4], Thing[5], Thing[6])
										Thing[1].Transparency = Thing[1].Transparency + Thing[3]
									elseif Thing[2] == "Elec" then
											Mesh = Thing[1]:FindFirstChild("Mesh")
											if not Mesh then
												Mesh = Instance.new("BlockMesh")
											end
											Mesh.Scale = Mesh.Scale + Vec(Thing[7], Thing[8], Thing[9])
											Thing[1].Transparency = Thing[1].Transparency + Thing[3]
										elseif Thing[2] == "Disappear" then
												Thing[1].Transparency = Thing[1].Transparency + Thing[3]
										end
					else
						Part.Parent = nil
						debServ:AddItem(Part, 0)
						table.remove(Effects, e)
					end
				end
			end
		end
	end
end
)
	while true do
		swait()
		if not Debounces.Guarding and Debounces.CanGuard then
			VHealth.Value = VHealth.Value + GH / 6000
		end
		if Debounces.Equipped and not Debounces.Attacking and not Debounces.AnimOverride and not Debounces.Equipping and Debounces.Transformed then
			if Current_Anim == "Idle" and not Debounces.TEWield and not Debounces.TESWield then
				idlenum = 0.3
				if idlenum2 < 9.999 and idle == 1 then
					idlenum2 = idlenum2 + idlenum
				elseif 9.999 < idlenum2 and idle == 1 then
						idle = -1
					elseif 0.999 < idlenum2 and idle == -1 then
							idlenum2 = idlenum2 - idlenum
						elseif idlenum2 < 0.999 and idle == -1 then
								idle = 1
				end
				local IdleSpeed = 0.4
				HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), IdleSpeed)
				HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), IdleSpeed)
				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.51, 0.6, 0.2) * Euler(0, 0, rad(6 + (idlenum2) / 1.5)), IdleSpeed)
				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(20), 0), IdleSpeed)
				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.6, 0) * Euler(0, 0, rad(-6 - (idlenum2) / 1.5)), IdleSpeed)
				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-12), 0), IdleSpeed)
				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(rad(-20 - (idlenum2) / 1.25), 0, 0), IdleSpeed)
				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(10), 0), IdleSpeed)
				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1 - (idlenum2) / 60, 0) * Euler(0, rad(10), 0), IdleSpeed)
				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), IdleSpeed)
				RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1 + (idlenum2) / 60, 0.08) * Euler(0, rad(90), 0), IdleSpeed)
				RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(100), 0), IdleSpeed)
				LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1 + (idlenum2) / 60, 0.02) * Euler(0, rad(-90), 0), IdleSpeed)
				LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-96), 0), IdleSpeed)
			elseif Current_Anim == "Idle" and not Debounces.TEWield and Debounces.TESWield then
						idlenum = 0.3
						if idlenum2 < 9.999 and idle == 1 then
							idlenum2 = idlenum2 + idlenum
						elseif 9.999 < idlenum2 and idle == 1 then
								idle = -1
							elseif 0.999 < idlenum2 and idle == -1 then
									idlenum2 = idlenum2 - idlenum
								elseif idlenum2 < 0.999 and idle == -1 then
										idle = 1
									end
						local IdleSpeed = 0.4
						SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(100), 0, 0), IdleSpeed)
						SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), IdleSpeed)
						HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), IdleSpeed)
						HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), IdleSpeed)
						FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.51, 0.6, 0.2) * Euler(0, 0, rad(6 + (idlenum2) / 1.5)), IdleSpeed)
						FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(20), 0), IdleSpeed)
						FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.6, 0) * Euler(0, 0, rad(-6 - (idlenum2) / 1.5)), IdleSpeed)
						FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-12), 0), IdleSpeed)
						Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(rad(-20 - (idlenum2) / 1.25), 0, 0), IdleSpeed)
						Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-10), 0), IdleSpeed)
						FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1 - (idlenum2) / 60, 0) * Euler(0, rad(-10), 0), IdleSpeed)
						FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), IdleSpeed)
						RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1 + (idlenum2) / 60, 0.08) * Euler(0, rad(90), 0), IdleSpeed)
						RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(100), 0), IdleSpeed)
						LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1 + (idlenum2) / 60, 0.02) * Euler(0, rad(-90), 0), IdleSpeed)
						LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-96), 0), IdleSpeed)
					elseif Current_Anim == "Idle" and Debounces.TEWield and not Debounces.TESWield then
								idlenum = 0.2
								if idlenum2 < 9.999 and idle == 1 then
									idlenum2 = idlenum2 + idlenum
								elseif 9.999 < idlenum2 and idle == 1 then
										idle = -1
									elseif 0.999 < idlenum2 and idle == -1 then
											idlenum2 = idlenum2 - idlenum
										elseif idlenum2 < 0.999 and idle == -1 then
												idle = 1
								end
								local IdleSpeed = 0.4
								WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0.1, 0, -0.7) * Euler(rad(90), 0, 0), IdleSpeed)
								WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), IdleSpeed)
								HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(rad(-120), rad(70), 0), IdleSpeed)
								HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), IdleSpeed)
								FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0 - (idlenum2) / 65, 0) * Euler(rad(120), rad(0), rad(10)), IdleSpeed)
								FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.45, 0) * Euler(0, 0, 0), IdleSpeed)
								FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.86, 0.4 - (idlenum2) / 65, -1.2) * Euler(rad(110), 0, rad(40)), IdleSpeed)
								FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(60), 0), IdleSpeed)
								Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(60), 0), IdleSpeed)
								Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(rad(5 + (idlenum2) / 2), 0, 0), IdleSpeed)
								FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1 - (idlenum2) / 50, 0) * Euler(rad(-7), rad(-70), 0), IdleSpeed)
								FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), IdleSpeed)
								RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1 + (idlenum2) / 50, 0) * Euler(0, rad(80), 0), IdleSpeed)
								RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), IdleSpeed)
								LeftHip.C0 = clerp(LeftHip.C0, Cf(-0.8, -1 + (idlenum2) / 50, -0.36) * Euler(rad(-7), rad(-27), 0), IdleSpeed)
								LeftHip.C1 = clerp(LeftHip.C1, Cf(0, 1, 0) * Euler(rad(-15), rad(-90), 0), IdleSpeed)
							end
								if Current_Anim == "Walking" and not Debounces.TEWield then
									local WalkSpeed = 0.5
									RightHip.MaxVelocity = 0.04
									LeftHip.MaxVelocity = 0.04
									if Debounces.TESWield then
										SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(95), 0, 0), WalkSpeed)
										SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
										FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-10), 0, rad(-5)), 0.8)
										FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
									else
										FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(math.deg(LeftHip.CurrentAngle) / 1.5), 0, rad(-5)), 0.8)
										FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
									end
									HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), WalkSpeed)
									HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
									FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(-rad(math.deg(LeftHip.CurrentAngle) / 1.5), 0, rad(5)), 0.8)
									FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
									Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-16), 0, 0), WalkSpeed)
									Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
									FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-12), 0, 0), WalkSpeed)
									FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), WalkSpeed)
									RightHip.C0 = clerp(RightHip.C0, Cf(0.5, -1, 0.2) * Euler(0, rad(90), 0), WalkSpeed)
									RightHip.C1 = clerp(RightHip.C1, Cf(0, 1, 0.2) * Euler(0, rad(90), 0), WalkSpeed)
									LeftHip.C0 = clerp(LeftHip.C0, Cf(-0.5, -1, 0.2) * Euler(0, rad(-90), 0), WalkSpeed)
									LeftHip.C1 = clerp(LeftHip.C1, Cf(0, 1, 0.2) * Euler(0, rad(-90), 0), WalkSpeed)
								elseif Current_Anim == "Walking" and Debounces.TEWield then
												local WalkSpeed = 0.5
												WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0.1, 0, -0.6) * Euler(rad(90), rad(180), 0), WalkSpeed)
												WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
												HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(rad(-10), rad(18), 0), WalkSpeed)
												HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
												FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(30), 0, rad(-10)), WalkSpeed)
												FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-20), 0), WalkSpeed)
												FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.4, -0.96) * Euler(rad(52), 0, rad(34)), WalkSpeed)
												FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(60), 0), WalkSpeed)
												Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(0, rad(20), 0), WalkSpeed)
												Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(rad(5), 0, 0), WalkSpeed)
												FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-11), rad(-20), 0), WalkSpeed)
												FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), WalkSpeed)
												RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(82), 0), WalkSpeed)
												RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), WalkSpeed)
												LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, -0.1) * Euler(rad(-7), rad(-80), 0), WalkSpeed)
												LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(rad(-15), rad(-90), 0), WalkSpeed)
											end
											if Current_Anim == "Dashing" and not Debounces.TEWield then
												local WalkSpeed = 0.5
												if Debounces.TESWield then
													SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(130), 0, 0), WalkSpeed)
													SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
												end
												HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), WalkSpeed)
												HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
												FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-50), 0, rad(15)), 0.8)
												FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
												FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-50), 0, rad(-15)), 0.8)
												FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
												Neck.C0 = clerp(Neck.C0, Cf(0, 1.4, 0) * Euler(rad(30), 0, 0), WalkSpeed)
												Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
												FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-60), 0, 0), WalkSpeed)
												FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), WalkSpeed)
												FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -0.5, -0.8) * Euler(rad(-20), rad(90), 0), WalkSpeed)
												FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), WalkSpeed)
												FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.8, -0.1) * Euler(rad(-8), rad(-90), 0), WalkSpeed)
												FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), WalkSpeed)
											elseif Current_Anim == "Dashing" and Debounces.TEWield then
															local WalkSpeed = 0.5
															WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0.1, 0, 0) * Euler(rad(60), rad(180), 0), WalkSpeed)
															WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
															HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), WalkSpeed)
															HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
															FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(95), 0, rad(15)), 0.8)
															FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
															FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(10), 0, rad(-15)), 0.8)
															FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
															Neck.C0 = clerp(Neck.C0, Cf(0, 1.4, 0) * Euler(rad(30), 0, 0), WalkSpeed)
															Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
															FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-60), 0, 0), WalkSpeed)
															FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), WalkSpeed)
															FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -0.5, -0.6) * Euler(rad(-20), rad(90), 0), WalkSpeed)
															FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), WalkSpeed)
															FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.8, -0.1) * Euler(rad(-8), rad(-90), 0), WalkSpeed)
															FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), WalkSpeed)
															end
														if Current_Anim == "Falling" and not Debounces.TEWield and not Debounces.TESWield then
															local FallSpeed = 0.5
															HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(0, 0, 0), FallSpeed)
															HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), FallSpeed)
															FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.35, 0) * Euler(rad(-25), 0, rad(8)), FallSpeed)
															FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), FallSpeed)
															FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -1) * Euler(rad(80), 0, rad(60)), FallSpeed)
															FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), FallSpeed)
															Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-20), 0, 0), FallSpeed)
															Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), FallSpeed)
															FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(10), 0, 0), FallSpeed)
															FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), FallSpeed)
															if not Debounces.Dashing then
																RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -0.5, -0.8) * Euler(rad(-20), rad(90), 0), FallSpeed)
																RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), FallSpeed)
																LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(rad(8), rad(-90), 0), FallSpeed)
																LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), FallSpeed)
															else
																FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -0.5, -0.8) * Euler(rad(-20), rad(90), 0), FallSpeed)
																FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), FallSpeed)
																FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(rad(8), rad(-90), 0), FallSpeed)
																FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), FallSpeed)
															end
														elseif Current_Anim == "Falling" and not Debounces.TEWield and Debounces.TESWield then
																	local FallSpeed = 0.5
																	HWeld2.C0 = clerp(HWeld2.C0, Cf(0, -1, 0) * Euler(0, 0, 0), FallSpeed)
																	HWeld2.C1 = clerp(HWeld2.C1, Cf(0, 0, 0) * Euler(0, 0, 0), FallSpeed)
																	SheWeld.C0 = clerp(SheWeld.C0, Cf(0, -0.24, 0) * Euler(rad(90), 0, 0), FallSpeed)
																	SheWeld.C1 = clerp(SheWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), FallSpeed)
																	FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 1, 0) * Euler(rad(160), 0, 0), FallSpeed)
																	FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, rad(-15)), FallSpeed)
																	FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 1, 0) * Euler(rad(160), 0, 0), FallSpeed)
																	FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, rad(15)), FallSpeed)
																	Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-20), 0, 0), FallSpeed)
																	Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), FallSpeed)
																	FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(10), 0, 0), FallSpeed)
																	FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), FallSpeed)
																	if not Debounces.Dashing then
																		RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -0.5, -0.8) * Euler(rad(-20), rad(90), 0), FallSpeed)
																		RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), FallSpeed)
																		LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(rad(8), rad(-90), 0), FallSpeed)
																		LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), FallSpeed)
																	else
																		FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -0.5, -0.8) * Euler(rad(-20), rad(90), 0), FallSpeed)
																		FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), FallSpeed)
																		FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -1, 0) * Euler(rad(8), rad(-90), 0), FallSpeed)
																		FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), FallSpeed)
																	end
																elseif Current_Anim == "Falling" and Debounces.TEWield and not Debounces.TESWield then
																				local FallSpeed = 0.5
																				WepWeld3.C0 = clerp(WepWeld3.C0, Cf(0.1, 0, 0) * Euler(rad(90), rad(180), 0), FallSpeed)
																				WepWeld3.C1 = clerp(WepWeld3.C1, Cf(0, 0, 0) * Euler(0, 0, 0), FallSpeed)
																				HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(rad(-12), 0, 0), FallSpeed)
																				HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), FallSpeed)
																				FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(30), 0, rad(10)), FallSpeed)
																				FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(10), 0), FallSpeed)
																				FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -1) * Euler(rad(80), 0, rad(60)), FallSpeed)
																				FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), FallSpeed)
																				FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-20), rad(-12), 0), FallSpeed)
																				FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), FallSpeed)
																				Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-16), rad(12), 0), FallSpeed)
																				Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), FallSpeed)
																				if not Debounces.Dashing then
																					RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -0.7, 0) * Euler(rad(20), rad(80), 0), FallSpeed)
																					RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), FallSpeed)
																					LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -0.3, -0.5) * Euler(rad(7), rad(-86), 0), FallSpeed)
																					LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), FallSpeed)
																				else
																					FRightHip.C0 = clerp(FRightHip.C0, Cf(1.5, -0.7, 0) * Euler(rad(20), rad(80), 0), FallSpeed)
																					FRightHip.C1 = clerp(FRightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), FallSpeed)
																					FLeftHip.C0 = clerp(FLeftHip.C0, Cf(-1.5, -0.3, -0.5) * Euler(rad(7), rad(-86), 0), FallSpeed)
																					FLeftHip.C1 = clerp(FLeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), FallSpeed)
																				end
														end
														end
																			if Debounces.Equipped then
																				if not Debounces.Attacking then
																					if not Debounces.AnimOverride then
																						if not Debounces.Equipping then
																							if not Debounces.Transformed then
																								if Current_Anim == "Idle" and not Debounces.HasWep then
																									idlenum = 0.3
																									if idlenum2 < 9.999 and idle == 1 then
																										idlenum2 = idlenum2 + idlenum
																									elseif 9.999 < idlenum2 and idle == 1 then
																											idle = -1
																										elseif 0.999 < idlenum2 and idle == -1 then
																												idlenum2 = idlenum2 - idlenum
																											elseif idlenum2 < 0.999 and idle == -1 then
																													idle = 1
																									end
																									local IdleSpeed = 0.4
																									FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(0.85, 0.45 - (idlenum2) / 70, -1) * Euler(rad(60), 0, rad(-40)), IdleSpeed)
																									FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(rad(1 - (idlenum2) * 2), rad(-20), 0), IdleSpeed)
																									FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.4, 0.3 - (idlenum2) / 70, -0.3) * Euler(rad(120), 0, rad(-40)), IdleSpeed)
																									FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(rad(1 - (idlenum2) * 2), rad(20), 0), IdleSpeed)
																									Neck.C0 = clerp(Neck.C0, Cf(0, 1.5 + (idlenum2) / 50, 0) * Euler(rad(-20), rad(40), 0), IdleSpeed)
																									Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0.1 + (idlenum2) / 50) * Euler(rad(1 + (idlenum2) * 1.5), 0, 0), IdleSpeed)
																									FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1 - (idlenum2) / 40, 0) * Euler(0, rad(-40), 0), IdleSpeed)
																									FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), IdleSpeed)
																									RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1 + (idlenum2) / 38, -0.6) * Euler(0, rad(120), 0), IdleSpeed)
																									RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(rad(10), rad(90), 0), IdleSpeed)
																									LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1 + (idlenum2) / 38, 0.4) * Euler(0, rad(-50), 0), IdleSpeed)
																									LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(rad(10), rad(-90), 0), IdleSpeed)
																								elseif Current_Anim == "Idle" and Debounces.HasWep and not Debounces.DuelWielding then
																											idlenum = 0.3
																											if idlenum2 < 9.999 and idle == 1 then
																												idlenum2 = idlenum2 + idlenum
																											elseif 9.999 < idlenum2 and idle == 1 then
																													idle = -1
																												elseif 0.999 < idlenum2 and idle == -1 then
																														idlenum2 = idlenum2 - idlenum
																													elseif idlenum2 < 0.999 and idle == -1 then
																															idle = 1
																											end
																											local IdleSpeed = 0.4
																											HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(rad(6.5 - (idlenum2) / 2), 0, 0), IdleSpeed)
																											HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), IdleSpeed)
																											WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), IdleSpeed)
																											WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), IdleSpeed)
																											FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.51, 0.53, 0.2) * Euler(0, 0, rad(12 + (idlenum2) / 2)), IdleSpeed)
																											FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(20), 0), IdleSpeed)
																											FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.53, 0) * Euler(0, 0, rad(-12 - (idlenum2) / 2)), IdleSpeed)
																											FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, rad(-12), 0), IdleSpeed)
																											Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, -0.1) * Euler(rad(-10 - (idlenum2) / 2), 0, 0), IdleSpeed)
																											Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, rad(-20), 0), IdleSpeed)
																											FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -(1 + (idlenum2) / 50), 0) * Euler(0, rad(-20), 0), IdleSpeed)
																											FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), IdleSpeed)
																											RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -(1 - (idlenum2) / 50), 0.15) * Euler(0, rad(90), 0), IdleSpeed)
																											RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(105), 0), IdleSpeed)
																											LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -(1 - (idlenum2) / 50), 0.3) * Euler(0, rad(-90), 0), IdleSpeed)
																											LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-115), 0), IdleSpeed)
																											end
																											if Current_Anim == "Walking" and not Debounces.HasWep then
																												local WalkSpeed = 0.4
																												FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.35, 0) * Euler(rad(-25), 0, rad(8)), WalkSpeed)
																												FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
																												FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -1) * Euler(rad(80), 0, rad(60)), WalkSpeed)
																												FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
																												Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(3), 0, 0), WalkSpeed)
																												Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
																												FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-10), 0, 0), WalkSpeed)
																												FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), WalkSpeed)
																												RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), WalkSpeed)
																												RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), WalkSpeed)
																												LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), WalkSpeed)
																												LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), WalkSpeed)
																											elseif Current_Anim == "Walking" and Debounces.HasWep and not Debounces.DuelWielding then
																															local WalkSpeed = 0.4
																															HWeld.C0 = clerp(HWeld.C0, Cf(0, -1.3, 0.3) * Euler(rad(24), 0, 0), WalkSpeed)
																															HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
																															WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), WalkSpeed)
																															WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), WalkSpeed)
																															FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.65, 0) * Euler(0, 0, rad(12)), WalkSpeed)
																															FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
																															FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5, -1) * Euler(rad(85), 0, rad(70)), WalkSpeed)
																															FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
																															Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(7), 0, 0), WalkSpeed)
																															Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
																															FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-13), 0, 0), WalkSpeed)
																															FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), WalkSpeed)
																															RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), WalkSpeed)
																															RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), WalkSpeed)
																															LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), WalkSpeed)
																															LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), WalkSpeed)
																															end
																															if Current_Anim == "Falling" then
																																local FallSpeed = 0.5
																																if Debounces.HasWep and not Debounces.DuelWielding then
																																	HWeld.C0 = clerp(HWeld.C0, Cf(0, -1, 0) * Euler(rad(90), 0, 0), FallSpeed)
																																	HWeld.C1 = clerp(HWeld.C1, Cf(0, 0, 0) * Euler(0, 0, 0), FallSpeed)
																																	WepWeld.C0 = clerp(WepWeld.C0, Cf(0, 0, 0) * Euler(rad(90), 0, 0), FallSpeed)
																																	WepWeld.C1 = clerp(WepWeld.C1, Cf(0, 0, 0) * Euler(0, rad(180), 0), FallSpeed)
																																end
																																FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 1, 0) * Euler(rad(160), 0, 0), FallSpeed)
																																FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, rad(-15)), FallSpeed)
																																FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 1, 0) * Euler(rad(160), 0, 0), FallSpeed)
																																FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, rad(15)), FallSpeed)
																																Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(-20), 0, 0), FallSpeed)
																																Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), FallSpeed)
																																FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(10), 0, 0), FallSpeed)
																																FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), FallSpeed)
																																RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -0.5, -0.8) * Euler(rad(-20), rad(90), 0), FallSpeed)
																																RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), FallSpeed)
																																LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(rad(8), rad(-90), 0), FallSpeed)
																																LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), FallSpeed)
																															end
																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out DO_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out DO_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_ELSE_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out DO_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out DO_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_ELSE_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_THEN_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_THEN_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_THEN_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_THEN_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_THEN_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out DO_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out DO_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_ELSE_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out DO_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_ELSE_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out DO_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out DO_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_ELSE_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out DO_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out DO_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_ELSE_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out DO_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out DO_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_ELSE_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out DO_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_ELSE_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_THEN_STMT

																															-- DECOMPILER ERROR at PC6588: LeaveBlock: unexpected jumping out IF_STMT

																														end
																							end
																						end
																					end
																				end
																			end