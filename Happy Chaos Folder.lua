--alright so lets clear some shit up
--this is a really old version of hakumen
--i didnt realise it until hierofag told ppatta who told me.
--me and couple peeps are still planning to get the updated one
--gl fixing.

--[[my notes
	line 1039
	line 1082
	line 1121
	line 1185
--]]

wait(2)
local Player = game.Players.LocalPlayer
repeat
  wait()
until Player
local Character = Player.Character
repeat
  wait()
until Character
local CFolder = Instance.new("Folder", Player)
CFolder.Name = "Chaos\' Folder"
local CFBP = Instance.new("BodyPosition", CFolder)
script.Parent = CFBP
print(script.Parent, CFBP.Parent, CFolder.Parent)
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
FLeftShoulder.Name = "Left Shoulder"
FRightShoulder.Name = "Right Shoulder"
local FLeftHip, FRightHip = Instance.new("Weld", Torso), Instance.new("Weld", Torso)
FLeftHip.Name = "Left Hip"
FRightHip.Name = "Right Hip"
local FRootJoint = Instance.new("Weld", RootPart)
FRootJoint.Name = "Root Joint"
local CamPart, RootGyro, CamGyro = Instance.new("Part", Character), Instance.new("BodyGyro", RootPart), Instance.new("BodyGyro")
CamPart.Transparency = 1
CamPart.CanCollide = false
CamPart.Locked = true
CamPart.Anchored = true
RootGyro.MaxTorque = Vector3.new(0, 0, 0)
RootGyro.Name = "MadeBy" .. Player.Name .. ""
CamGyro.Parent = CamPart
CamGyro.MaxTorque = Vector3.new(0, 0, 0)
CamGyro.Name = "MadeBy" .. Player.Name .. ""
local Drag_To_Part = Instance.new("Part", Character)
Drag_To_Part.Transparency = 1
Drag_To_Part.Name = "Drag-to-part"
Drag_To_Part.Size = Vector3.new(0.2, 0.2, 0.2)
Drag_To_Part.Anchored = false
Drag_To_Part.CanCollide = false
Drag_To_Part.Locked = true
local DTPWeld = Instance.new("Weld", Drag_To_Part)
DTPWeld.Part0 = RootPart
DTPWeld.Part1 = Drag_To_Part
local WepWeld = nil
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
local Handle, Hitbox = nil, nil
local chatServ = game:GetService("Chat")
local runServ = game:GetService("RunService").RenderStepped
local debServ = game:GetService("Debris")
local CurrentSpeed = 16
local Current_Anim = "Idle"
local Attack_Num = 1
local Damage_Buff = 1
local Last_Health = 800
local Max_Health = 800
local idle = 1
local idlenum = 1
local idlenum2 = 1
local walk = 1
local walknum = 1
local walknum2 = 1
local Text_Table = {}
local Effects = {}
local DragTable = {}
local KeyStroke = {}
local Target = nil
local ViewDirection = "Right"
local ViewMode = "3D"
local CamGyro = Instance.new("BodyGyro", RootPart)
CamGyro.MaxTorque = Vector3.new(0, 0, 0)
local LLCF = CFrame.new()
local SWP = Instance.new("BoolValue")
local ControlScript = Player.PlayerScripts:WaitForChild("ControlScript")
local Debounces = {Equipped = false, Equipping = false, HasWep = false, Attacking = false, Locked_On = false, Can_Double_Jump = false, AnimOverride = false, Guarding = false, Crouching = false, JumpAnim = false, DoubleJumpAnim = false, KeyStrokeEnabled = false, UIAction = false, ZeroGravity = false, DoubleJumping = false}
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
local OP_HEALTH = runServ:connect(function()
  if GodMode then
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
if Player.UserId == 43981323 then
  ccol1.Text = "Dark indigo"
end
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
if Player.UserId == 43981323 then
  col2:WaitForChild("Colour").Text = "Really black"
end
local col3 = col1:Clone()
col3.Parent = ColMain
col3.Name = "Col3"
col3.Position = Ud2(0, 0, 0.6, 0)
col3:WaitForChild("Colour").Text = "Smoky grey"
col3:WaitForChild("Col").Text = "Colour 3:"
if Player.UserId == 43981323 then
  col3:WaitForChild("Colour").Text = "Really black"
end
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
KPTemplate.Size = Ud2(0.15, 0, 1, 0)
KPTemplate.Font = FONT
KPTemplate.Text = ">"
KPTemplate.TextColor3 = Col3(1, 1, 1)
KPTemplate.TextScaled = true
Moves.BackgroundColor3 = Col3(0.28235294117647, 0.28235294117647, 0.28235294117647)
Moves.BackgroundTransparency = 0.8
Moves.BorderSizePixel = 0
Moves.Name = "Moves"
Moves.Position = Ud2(0.8, 0, 0.5, 0)
Moves.Size = Ud2(0.2, 0, 0.5, 0)
Moves.Visible = false
Moves.ScrollBarThickness = 8
OM.Name = "View Moves List"
OM.Position = Ud2(0.92, 0, 0.42, 0)
OM.Size = Ud2(0.08, 0, 0.08, 0)
OM.Visible = false
OM.Style = "RobloxRoundButton"
OM.Font = FONT
OM.Text = "View Moves List"
OM.TextColor3 = Col3(1, 1, 1)
OM.TextScaled = true
local Title = Inst("TextLabel", Moves)
Title.BackgroundTransparency = 1
Title.Name = "Title"
Title.Size = Ud2(1, 0, 0.02, 0)
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
CreateWeapon = function()
  CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "BladeCorner", Vec(0, 7.2, -272.2), Vec(0, 0, 0), Vec(0.4, 0.4, 0.2), "SpecialMesh", Vec(0.625, 0.625, 1.25), "", "Sphere")
  CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "BladeCorner", Vec(1.4, 8.4, -272.2), Vec(0, 0, 0), Vec(0.4, 0.4, 0.2), "SpecialMesh", Vec(0.625, 0.625, 1.25), "", "Sphere")
  CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "BladeEdge", Vec(1.4, 5.3, -272.2), Vec(0, 0, 0), Vec(0.4, 6.2, 0.2), "CylinderMesh", Vec(1.25, 1, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour1, "Neon", 0, 0, "BladeEdge", Vec(0, 4.7, -272.2), Vec(0, 0, 0), Vec(0.4, 5, 0.2), "CylinderMesh", Vec(1.25, 1, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(1.3, 5.5, -272.2), Vec(0, 0, 0), Vec(0.2, 1, 0.2), "BlockMesh", Vec(1, 1, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(0.4, 5, -272.2), Vec(0, 0, 0), Vec(0.4, 0.4, 0.2), "BlockMesh", Vec(0.4, 0.5, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(0.3, 5.1, -272.2), Vec(0, 0, 0), Vec(0.6, 0.2, 0.2), "BlockMesh", Vec(0.4, 1, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(1.1, 5.1, -272.2), Vec(0, 0, 0), Vec(0.6, 0.2, 0.2), "BlockMesh", Vec(0.4, 1, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(0.1, 5.5, -272.2), Vec(0, 0, 0), Vec(0.2, 1, 0.2), "BlockMesh", Vec(1, 1, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(0.3, 5.8, -272.2), Vec(0, 0, 0), Vec(0.6, 0.4, 0.2), "BlockMesh", Vec(0.2, 0.35, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(1.2, 5.5, -272.2), Vec(0, 0, 0), Vec(0.4, 0.6, 0.2), "BlockMesh", Vec(0.4, 1, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(0.3, 5.9, -272.2), Vec(0, 0, 0), Vec(0.6, 0.2, 0.2), "BlockMesh", Vec(0.4, 1, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(0.7, 5, -272.2), Vec(0, 0, 0), Vec(1.4, 0.4, 0.2), "BlockMesh", Vec(1, 0.4, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(1.1, 5.8, -272.2), Vec(0, 0, 0), Vec(0.6, 0.4, 0.2), "BlockMesh", Vec(0.2, 0.35, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(1.1, 5.9, -272.2), Vec(0, 0, 0), Vec(0.6, 0.2, 0.2), "BlockMesh", Vec(0.4, 1, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(1, 6, -272.2), Vec(0, 0, 0), Vec(0.4, 0.4, 0.2), "BlockMesh", Vec(0.4, 0.5, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(0.4, 6, -272.2), Vec(0, 0, 0), Vec(0.4, 0.4, 0.2), "BlockMesh", Vec(0.4, 0.5, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(0.7, 7.8, -272.2), Vec(0, 90, 0), Vec(0.2, 1.2, 1.4), "SpecialMesh", Vec(1.25, 1, 1), "", "Wedge")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(0.7, 3.6, -272.2), Vec(0, 0, 0), Vec(1.4, 2.8, 0.2), "BlockMesh", Vec(1, 1, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(0.7, 6.6, -272.2), Vec(0, 0, 0), Vec(1.4, 1.2, 0.2), "BlockMesh", Vec(1, 1, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(1, 5, -272.2), Vec(0, 0, 0), Vec(0.4, 0.4, 0.2), "BlockMesh", Vec(0.4, 0.5, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(1.1, 5.2, -272.2), Vec(0, 0, 0), Vec(0.6, 0.4, 0.2), "BlockMesh", Vec(0.2, 0.35, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(0.3, 5.2, -272.2), Vec(0, 0, 0), Vec(0.6, 0.4, 0.2), "BlockMesh", Vec(0.2, 0.35, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(0.7, 6, -272.2), Vec(0, 0, 0), Vec(1.4, 0.4, 0.2), "BlockMesh", Vec(1, 0.4, 1.25), "", "")
  CreateWeaponPart("Part", Denial, Colour2, "Granite", 0, 0, "BladePart", Vec(0.2, 5.5, -272.2), Vec(0, 0, 0), Vec(0.4, 0.6, 0.2), "BlockMesh", Vec(0.4, 1, 1.25), "", "")
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
  Hitbox = CreateWeaponPart("Part", Denial, "White", "SmoothPlastic", 1, 0, "Hitbox", Vec(0.7, 5.4, -272.2), Vec(0, 0, 0), Vec(2.2, 6.8, 0.6), "BlockMesh", Vec(1, 1, 1), "", "")
  for _,Part in pairs(Denial:GetChildren()) do
    if Part:IsA("Part") then
      if Part.Name ~= "Handle" then
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
          Part.TopSurface = "SmoothNoOutlines"
          Part.BottomSurface = "SmoothNoOutlines"
          Part.LeftSurface = "SmoothNoOutlines"
          Part.RightSurface = "SmoothNoOutlines"
          Part.FrontSurface = "SmoothNoOutlines"
          Part.BackSurface = "SmoothNoOutlines"
          -- DECOMPILER ERROR at PC1744: LeaveBlock: unexpected jumping out DO_STMT

          -- DECOMPILER ERROR at PC1744: LeaveBlock: unexpected jumping out IF_THEN_STMT

          -- DECOMPILER ERROR at PC1744: LeaveBlock: unexpected jumping out IF_STMT

        end
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
  local move = Title:Clone()
  move.Parent = Moves
  move.Name = "A Move"
  move.Text = "Q - Enable/Disable Keystrokes"
  move.Position = Ud2(0, 0, 0.02, 0)
  move.TextXAlignment = "Left"
  move = Title:Clone()
  move.Parent = Moves
  move.Name = "A Move"
  move.Text = "E - Disrupt"
  move.Position = Ud2(0, 0, 0.04, 0)
  move.TextXAlignment = "Left"
  move = Title:Clone()
  move.Parent = Moves
  move.Name = "A Move"
  move.Text = "F - Equip/Unequip"
  move.Position = Ud2(0, 0, 0.06, 0)
  move.TextXAlignment = "Left"
  move = Title:Clone()
  move.Parent = Moves
  move.Name = "3D Title"
  move.Text = "--3D Moves--"
  move.Position = Ud2(0, 0, 0.08, 0)
  move = Title:Clone()
  move.Parent = Moves
  move.Name = "A Move"
  move.Text = "Z - Fatal Blow"
  move.Position = Ud2(0, 0, 0.1, 0)
  move.TextXAlignment = "Left"
  move = Title:Clone()
  move.Parent = Moves
  move.Name = "A Move"
  move.Text = "X - Axel"
  move.Position = Ud2(0, 0, 0.12, 0)
  move.TextXAlignment = "Left"
  move = Title:Clone()
  move.Parent = Moves
  move.Name = "A Move"
  move.Text = "Ctrl - Change ViewMode"
  move.Position = Ud2(0, 0, 0.14, 0)
  move.TextXAlignment = "Left"
end

Create_Moves_In_List()
OM.MouseButton1Click:connect(function()
  if not Debounces.UIAction and not Moves.Visible then
    Debounces.UIAction = true
    OM.Text = "Hide Move List"
    Moves.Visible = true
    wait(0.3)
    Debounces.UIAction = false
  else
    if not Debounces.UIAction and Moves.Visible then
      Debounces.UIAction = true
      OM.Text = "View Move List"
      Moves.Visible = false
      wait(0.3)
      Debounces.UIAction = false
    end
  end
end
)
local Holder = CreateWeaponPart("Part", Character, "White", "SmoothPlastic", 1, 0, "Holder", Vec(0.7, 1, -272.2), Vec(0, 90, 0), Vec(0.6, 0.2, 0.6), "BlockMesh", Vec(1, 1, 1), "", "")
Holder.Anchored = false
local HWeld = Inst("Motor6D", RightArm)
HWeld.Name = "Holder Joint"
HWeld.Part0 = RightArm
HWeld.Part1 = Holder
HWeld.C0 = Cf(0, -1, 0)
Humanoid.Changed:connect(function()
  if Humanoid.Health < 0.001 then
    debServ:AddItem(CFolder, 5)
  end
end
)
repeat
  repeat
    wait()
  until Handle
until Hitbox
print("Handle and Hitbox created")
local F1, F2 = Inst("Folder", Character), Inst("Folder")
F1.Name = "Effects Folder"
F2.Parent = F1
F2.Name = "Effects"
Protector = function(object)
  if object:IsA("BasePart") or object:IsA("BodyMover") or object:IsA("JointInstance") or object:IsA("Light") then
    game:GetService("RunService").Stepped:wait()
    if object.Name ~= DecName then
      debServ:AddItem(object, 0)
      if object:IsA("BodyMover") then
        RootPart.Velocity = Vec(0, 0, 0)
      end
    end
  end
end

for _,child in pairs(Character:GetChildren()) do
  if child:IsA("BasePart") then
    child.ChildAdded:connect(Protector)
    child.DescendantAdded:connect(Protector)
  end
end
for _,child in pairs(Denial:GetChildren()) do
  if child:IsA("BasePart") then
    child.ChildAdded:connect(Protector)
    child.DescendantAdded:connect(Protector)
  end
end
Momentum_Cancel = function()
  if Humanoid.WalkSpeed + 50 < (RootPart.Velocity).Magnitude and not Debounces.Attacking and not Debounces.DoubleJumping then
    RootPart.Velocity = Vec(0, 0, 0)
  end
end

RootPart.Changed:connect(Momentum_Cancel)
Torso.Changed:connect(Momentum_Cancel)
Head.Changed:connect(Momentum_Cancel)
RightArm.Changed:connect(Momentum_Cancel)
RightLeg.Changed:connect(Momentum_Cancel)
LeftArm.Changed:connect(Momentum_Cancel)
LeftLeg.Changed:connect(Momentum_Cancel)
Humanoid.Changed:connect(function()
  if Humanoid.Health < 0.01 then
    Denial.Parent = workspace
    Hitbox.CanCollide = true
    debServ:AddItem(Denial, 30)
  end
end
)
AdvanceText = function()
  for i,v in pairs(Text_Table) do
    if v ~= nil then
      if v.StudsOffset.Y >= 5 then
        v.Time.Counter.Value = v.Time.Counter.Value + 0.1
        if v.Time.Value <= v.Time.Counter.Value then
          v.WHYYYYYYYY.TextTransparency = v.WHYYYYYYYY.TextTransparency + 0.15
          v.WHYYYYYYYY.TextStrokeTransparency = v.WHYYYYYYYY.TextStrokeTransparency + 0.15
          if v.WHYYYYYYYY.TextTransparency >= 1 then
            debServ:AddItem(v.Parent, 1)
            table.remove(Text_Table, i)
          end
        end
      else
        v.StudsOffset = Vector3.new(0, v.StudsOffset.Y + 0.15, 0)
      end
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
  local tem = Instance.new("NumberValue", bill)
  tem.Value = duration
  tem.Name = "Time"
  local counter = Instance.new("NumberValue", tem)
  counter.Value = 0
  counter.Name = "Counter"
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
  table.insert(Text_Table, bill)
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

local DamageFunction = function(Hit, IsRan, MinDam, MaxDam, HKB, Knockback, DamType, Property, Duration, HDrag, DragDuration)
  local humanoid = FindHum(Hit.Parent)
  if humanoid and humanoid ~= Humanoid then
    local IsSafe = true
    local Deb = humanoid:FindFirstChild("ChaosDebounce")
    do
      if Deb then
        local Cre = Deb:FindFirstChild("Creator")
        if Cre and Cre.Value == Player.UserId then
          IsSafe = false
        end
      end
      if IsSafe then
        local s = Sound(Hit, "http://roblox.com/asset/?id=401057895", 1, 1, false)
        debServ:AddItem(s, 2)
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
        if humanoid.MaxHealth > 10000000000 then
          humanoid.MaxHealth = 100
        end
        Damage = Damage * Damage_Buff
        humanoid.Health = humanoid.Health - Damage
        MakeText("-" .. Damage .. "", FONT, 0.5, 255, 255, 255, 255, 0, 0, Hit.CFrame)
        if HKB then
          Hit.Velocity = Property.CFrame.lookVector * Knockback
        end
        if DamType ~= "Normal" or DamType == "Stun" then
          humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
          local pos = Inst("BodyPosition", Hit)
          pos.MaxForce = Vec(huge, huge, huge)
          pos.Position = Hit.Position
          debServ:AddItem(pos, Duration * 10)
        else
          do
            if DamType == "LifeSteal" then
              Humanoid.Health = Humanoid.Health + Damage / 2
              MakeText("+" .. Damage / 2 .. "", FONT, 0.5, 0, 170, 0, 0, 255, 0, RootPart.CFrame)
            else
              if DamType == "MomentumStopper" then
                local vel = Inst("BodyVelocity", Hit)
                vel.Name = "MomentumStopper"
                vel.MaxForce = Vec(huge, huge, huge)
                vel.Velocity = Vec(0, 0, 0)
                debServ:AddItem(vel, 3)
              else
                do
                  if DamType == "Knockdown" then
                    humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)
                  else
                    if DamType == "SkyRocket" then
                      Hit.Velocity = Vec(0, Knockback, 0)
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
                end
              end
            end
          end
        end
      end
    end
  end
end

MagniDamage = function(Part, range, isRan, mindam, maxdam, hkb, knock, DType, dur, hd, dd)
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
      do
        if head then
          local Mag = (head.Position - Part.Position).magnitude
          if Mag <= Dis then
            Dis = Mag
            Par = head
          end
        end
        do
          if tor then
            local Mag = (tor.Position - Part.Position).magnitude
            if Mag <= Dis then
              Dis = Mag
              Par = tor
            end
          end
          do
            if rarm then
              local Mag = (rarm.Position - Part.Position).magnitude
              if Mag <= Dis then
                Dis = Mag
                Par = rarm
              end
            end
            do
              if larm then
                local Mag = (larm.Position - Part.Position).magnitude
                if Mag <= Dis then
                  Dis = Mag
                  Par = larm
                end
              end
              do
                if rleg then
                  local Mag = (rleg.Position - Part.Position).magnitude
                  if Mag <= Dis then
                    Dis = Mag
                    Par = rleg
                  end
                end
                do
                  do
                    if lleg then
                      local Mag = (lleg.Position - Part.Position).magnitude
                      if Mag <= Dis then
                        Dis = Mag
                        Par = lleg
                      end
                    end
                    if Par then
                      DamageFunction(Par, isRan, mindam, maxdam, hkb, knock, DType, Part, dur, hd, dd)
                    end
                    -- DECOMPILER ERROR at PC109: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC109: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC109: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC109: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC109: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC109: LeaveBlock: unexpected jumping out DO_STMT

                    -- DECOMPILER ERROR at PC109: LeaveBlock: unexpected jumping out IF_THEN_STMT

                    -- DECOMPILER ERROR at PC109: LeaveBlock: unexpected jumping out IF_STMT

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
        wait()
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

AssumeNormalJoints = function()
  for i = 0, 1, 0.1 do
    wait()
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
  if Attack_Num == 1 then
    local hit = RightArm.Touched:connect(function(part)
    DamageFunction(part, true, 5, 20, true, 5, "Normal", RootPart, 0.2, false, 1)
  end
)
    for i = 0, 0.4, 0.1 do
      wait()
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
      wait()
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
    hit:disconnect()
  elseif Attack_Num == 2 then
        local hit = LeftArm.Touched:connect(function(part)
    DamageFunction(part, true, 5, 20, true, 5, "Normal", RootPart, 0.2, false, 1)
  end
)
        for i = 0, 0.4, 0.1 do
          wait()
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
          wait()
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
        hit:disconnect()
      elseif Attack_Num == 3 then
            local hit = LeftLeg.Touched:connect(function(part)
    DamageFunction(part, true, 15, 30, false, 70, "SkyRocket", RootPart, 0.2, false, 1)
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
              wait()
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
              wait()
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
            hit:disconnect()
          elseif Attack_Num == 4 then
                  local hit = RightLeg.Touched:connect(function(part)
    DamageFunction(part, true, 20, 40, false, 0, "Stun", RootPart, 0.2, false, 1)
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
                    wait()
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
                    wait()
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
                  hit:disconnect()
                end
                Debounces.Attacking = false
end

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
  local hbox = Inst("Part", F2)
  hbox.Transparency = 1
  hbox.CanCollide = false
  hbox.Anchored = false
  hbox.Locked = true
  hbox.CFrame = RootPart.CFrame
  hbox.Size = Vec(8, 8, 16)
  hbox.Name = "DashHitBox"
  local hweld = Inst("Weld", hbox)
  hweld.Part0 = RootPart
  hweld.Part1 = hbox
  hweld.C0 = Cf(0, 0, 4)
  hweld.Name = DecName
  DTPWeld.C0 = Cf(0, 0, -2) * Euler(rad(90), 0, 0)
  Humanoid.WalkSpeed = 0
  local hit = hbox.Touched:connect(function(part)
    DamageFunction(part, true, 15, 30, false, 0, "LifeSteal", RootPart, 0.1, true, 2)
  end
)
  for i = 0, 1, 0.1 do
    wait()
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
  debServ:AddItem(hweld, 0)
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

Fatal_Blow = function()
  Debounces.Attacking = true
  for i = 0, 0.4, 0.1 do
    wait()
    FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.35, 0) * Euler(rad(-25), 0, rad(8)), 0.4)
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
  end
  local FB = coroutine.create(function()
    local s = Sound(LeftArm, "http://roblox.com/asset/?id=200633327", 1, 1.4, false)
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
    Rm1.DesiredAngle = 1e+028
    Rm1.MaxVelocity = rad(6)
    Rm1.C0 = Cf() * Euler(rad(rand(-360, 360)), rad(rand(-360, 360)), rad(rand(-360, 360)))
    Rm1.C1 = Cf() * Euler(rad(rand(-360, 360)), rad(rand(-360, 360)), rad(rand(-360, 360)))
    local Rm2 = Inst("Motor", Ring2)
    Rm2.Part0 = Orb
    Rm2.Part1 = Ring2
    Rm2.DesiredAngle = 1e+028
    Rm2.MaxVelocity = rad(6)
    Rm2.C0 = Cf() * Euler(rad(rand(-360, 360)), rad(rand(-360, 360)), rad(rand(-360, 360)))
    Rm2.C1 = Cf() * Euler(rad(rand(-360, 360)), rad(rand(-360, 360)), rad(rand(-360, 360)))
    Orb.CFrame = LeftArm.CFrame * Cf()
    local Vel = Inst("BodyVelocity", Orb)
    Vel.MaxForce = Vec(huge, huge, huge)
    Vel.Velocity = RootPart.CFrame.lookVector * 70
    debServ:AddItem(Orb, 40)
    debServ:AddItem(Ring1, 40)
    debServ:AddItem(Ring2, 40)
    local hit = Orb.Touched:connect(function(part)
      local hum = FindHum(part.Parent)
      if (hum and hum ~= Humanoid and Orb.Anchored == false) or part.Anchored == true and Orb.Anchored == false and part.Name ~= "OrbBlast" and part.Name ~= "hoi hoi" then
        Orb.Anchored = true
        Orb.Transparency = 1
        local s = Sound(Orb, "http://roblox.com/asset/?id=233856079", 1, 1, false)
        debServ:AddItem(s, 2)
        debServ:AddItem(Ring1, 0)
        debServ:AddItem(Vel, 0)
        debServ:AddItem(Ring2, 0)
        DamageFunction(part, true, 10, 25, false, 0, "Stun", RootPart, 0.2, true, 2)
        local Blast = Inst("Part", F2)
        Blast.BrickColor = BC(Colour1)
        Blast.Material = "Neon"
        Blast.Transparency = 1
        Blast.Name = "OrbBlast"
        Blast.Anchored = true
        Blast.CanCollide = false
        Blast.Locked = true
        Blast.Size = Vec(20, 20, 20)
        Blast.CFrame = Orb.CFrame
        local ED = 1
        if hum and hum.MaxHealth > 10000 then
          ED = hum.MaxHealth / 100
        end
        local Bm = Inst("SpecialMesh", Blast)
        Bm.MeshType = "Sphere"
        Bm.Scale = Vec(0, 0, 0)
        local Range = 0
        for t = 0, 1, 0.2 do
          wait()
          Range = t * 10
          Blast.Transparency = (-2 + t) * -1 / 2
          Bm.Scale = Vec(t, t, t)
          MagniDamage(Blast, Range, true, 1 * (ED), 5 * (ED), false, 0, "Normal", 0.2, false, 0)
        end
        for t = 0, 2, 0.1 do
          wait()
          MagniDamage(Blast, Range, true, 4 * (ED), 12 * (ED), false, 0, "LifeSteal", 0.2, false, 0)
        end
        for t = 1, 0, -0.2 do
          wait()
          Range = t * 10
          Blast.Transparency = (-2 + t) * -1 / 2
          Bm.Scale = Vec(t, t, t)
          MagniDamage(Blast, Range, true, 1 * (ED), 5 * (ED), false, 0, "Stun", 0.1, false, 0)
        end
        debServ:AddItem(Blast, 0)
        debServ:AddItem(Orb, 0)
      end
    end
)
    repeat
      wait()
    until Orb.Parent == nil
    debServ:AddItem(Orb, 0)
    hit:disconnect()
  end
)
  for i = 0, 0.4, 0.1 do
    wait()
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
  wait(0.05)
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
          for i = 0, 1.8, 0.1 do
            wait()
            if noscope ~= 360 then
              noscope = noscope + 20
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
          local HBox = Inst("Part", F2)
          HBox.Transparency = 1
          HBox.Anchored = false
          HBox.CanCollide = false
          HBox.Locked = false
          HBox.Size = HBSize
          local HBWeld = Inst("Weld", HBox)
          HBWeld.Part0 = LeftLeg
          HBWeld.Part1 = HBox
          HBWeld.Name = DecName
          HBWeld.C0 = Cf(0, -(HBSize.Y / 4), 0)
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
    end
      DamageFunction(part, true, 15, 30, false, 150, "SkyRocket", RootPart, 0.1, false, 0)
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
              wait()
            until tim <= T
            debServ:AddItem(HBox, 0)
            hit:disconnect()
            debServ:AddItem(Vel, 0)
            if Upward then
              debServ:AddItem(VelPart, 0)
            end
            if not Upward then
              for i = 0, 1.4, 0.1 do
                wait()
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
              local HBox = Inst("Part", F2)
              HBox.Transparency = 1
              HBox.Anchored = false
              HBox.CanCollide = false
              HBox.Locked = false
              HBox.Size = Vec(3, 5, 3)
              local HBWeld = Inst("Weld", HBox)
              HBWeld.Part0 = LeftLeg
              HBWeld.Part1 = HBox
              HBWeld.Name = DecName
              HBWeld.C0 = Cf(0, -1.25, 0)
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
              local ground, pos = rayCast(LVec.Position, LVec.CFrame.lookVector, 5, Character)
              local hit = HBox.Touched:connect(function(part)
    local hum = FindHum(part.Parent)
    if hum and hum ~= Humanoid and CanDiveKick then
      CanDiveKick = false
      FallDamage = FallDamage + 4
      Vel.Velocity = RootPart.CFrame.lookVector * -6 + Vec(0, 25, 0)
      local noscope = 0
      local s = Sound(part, "http://roblox.com/asset/?id=401057895", 1, 1, false)
      debServ:AddItem(s, 2)
      local j = Sound(RootPart, "http://roblox.com/asset/?id=158149887", 0.5, 1, false)
      debServ:AddItem(j, 2)
      DamageFunction(part, false, 0, 50, false, 0, "LifeSteal", RootPart, 0.1, false, 0)
      for i = 0, 1.8, 0.1 do
        wait()
        Vel.Velocity = RootPart.CFrame.lookVector * -6 + Vec(0, 25, 0)
        if noscope ~= 360 then
          noscope = noscope + 20
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
                wait()
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
                  ground, pos = rayCast(LVec.Position, LVec.CFrame.lookVector, 15, Character)
                  if ground and ground.Anchored == true then
                    TouchedGround = true
                  end
                end
              until TouchedGround
              MagicWave(ground.BrickColor, ground.Material, Cf(pos), 1, 1, 1, 3, 1, 3, 0.1)
              local WaveP = Inst("Part", F2)
              WaveP.Transparency = 1
              WaveP.Anchored = true
              WaveP.CanCollide = false
              WaveP.Locked = true
              WaveP.CFrame = Cf(pos)
              MagniDamage(WaveP, 25, true, 1 + (FallDamage), 5 + (FallDamage), false, 0, "Stun", 0.06 + (FallDamage) / 100, false, 0)
              debServ:AddItem(WaveP, 3)
              local boo = Sound(WaveP, "http://roblox.com/asset/?id=157878578", 1, 1, false)
              debServ:AddItem(boo, 0.4)
              debServ:AddItem(HBox, 0)
              debServ:AddItem(LVec, 0)
              hit:disconnect()
              debServ:AddItem(Vel, 0)
              for i = 0, 1.8, 0.1 do
                wait()
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
              Debounces.Attacking = false
            end
  end

Mouse.KeyDown:connect(function(key)
  if key == "f" and not Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking then
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
    wait()
    CurrentSpeed = 8
    Humanoid.JumpPower = 90
    Humanoid.WalkSpeed = CurrentSpeed
    Debounces.Equipped = true
    Debounces.Equipping = false
  else
    if key == "f" and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking and not Debounces.HasWep then
      Debounces.Equipping = true
      AssumeNormalJoints()
      wait()
      CurrentSpeed = 16
      Humanoid.JumpPower = 50
      Humanoid.WalkSpeed = CurrentSpeed
      Debounces.Equipped = false
      Debounces.Equipping = false
    end
  end
  if key == " " and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking and Debounces.Can_Double_Jump then
    Debounces.Can_Double_Jump = false
    Debounces.DoubleJumping = true
    RootPart.Velocity = Vec(0, 180, 0)
    local noscope = 0
    if not Debounces.DoubleJumpAnim then
      Debounces.AnimOverride = true
      Debounces.DoubleJumpAnim = true
      for i = 0, 2, 0.1 do
        wait()
        if noscope ~= 360 then
          noscope = noscope + 20
        end
        if not Debounces.Attacking then
          local JumpSpeed = 0.4
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
      Debounces.DoubleJumpAnim = false
      Debounces.AnimOverride = false
    end
    Debounces.DoubleJumping = false
  end
  do
    if key == "e" and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking then
      Disrupt()
    end
    if key == "z" and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking then
      Fatal_Blow()
    end
    if key == "x" and Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking then
      game:GetService("RunService").Stepped:wait()
      Axel(SWP.Value)
    end
    if key == "s" and not SWP.Value then
      SWP.Value = true
      wait(0.08)
      SWP.Value = false
    end
    if key == "]" then
      if not Debounces.ZeroGravity then
        Debounces.ZeroGravity = true
        workspace.Gravity = 1
        chatServ:Chat(Head, "Zero gravity!", 2)
      else
        Debounces.ZeroGravity = false
        workspace.Gravity = 196.2
        chatServ:Chat(Head, "Revert gravity.", 0)
      end
    end
  end
end
)
Mouse.Button1Down:connect(function()
  if Debounces.Equipped and not Debounces.Equipping and not Debounces.Attacking and not Debounces.HasWep then
    if Attack_Num == 1 then
      ClickCombo()
      Attack_Num = 2
    else
      if Attack_Num == 2 then
        ClickCombo()
        Attack_Num = 3
      else
        if Attack_Num == 3 then
          ClickCombo()
          Attack_Num = 4
        else
          if Attack_Num == 4 then
            ClickCombo()
            Attack_Num = 1
          end
        end
      end
    end
  end
end
)
Humanoid.Running:connect(function(speed)
  if speed > 0.01 then
    Current_Anim = "Walking"
    Debounces.Can_Double_Jump = false
  else
    if speed < 0.01 or speed == 0 then
      Current_Anim = "Idle"
      Debounces.Can_Double_Jump = false
    end
  end
end
)
Humanoid.FreeFalling:connect(function()
  Current_Anim = "Falling"
end
)
Humanoid.Jumping:connect(function()
  Current_Anim = "Jumping"
  if Debounces.Equipped and not Debounces.Equipping and not Debounces.JumpAnim then
    Debounces.Can_Double_Jump = true
    Debounces.AnimOverride = true
    Debounces.JumpAnim = true
    for i = 0, 0.8, 0.1 do
      wait()
      if not Debounces.Attacking then
        local JumpSpeed = 0.4
        FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.5, 0) * Euler(rad(-30), 0, rad(10)), JumpSpeed)
        FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), JumpSpeed)
        FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-1.5, 0.5, 0) * Euler(rad(-30), 0, rad(-10)), JumpSpeed)
        FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), JumpSpeed)
        Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(15), 0, 0), JumpSpeed)
        Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), JumpSpeed)
        FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-20), 0, 0), JumpSpeed)
        FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), JumpSpeed)
        RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(rad(-8), rad(90), 0), JumpSpeed)
        RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), JumpSpeed)
        LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -0.5, -0.8) * Euler(rad(-20), rad(-90), 0), JumpSpeed)
        LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), JumpSpeed)
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
runServ:connect(function()
  CamPart.Position = RootPart.Position
  CamPart.Anchored = false
  Bringer()
  AdvanceText()
  Humanoid.MaxHealth = Max_Health
  Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
  Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
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
            else
              if Thing[2] == "Wave" then
                Mesh = Thing[1]:FindFirstChild("Mesh")
                if not Mesh then
                  Mesh = Instance.new("BlockMesh")
                end
                Mesh.Scale = Mesh.Scale + Vec(Thing[4], Thing[5], Thing[6])
                Thing[1].Transparency = Thing[1].Transparency + Thing[3]
              else
                if Thing[2] == "Cylinder" then
                  Mesh = Thing[1]:FindFirstChild("Mesh")
                  if not Mesh then
                    Mesh = Instance.new("BlockMesh")
                  end
                  Mesh.Scale = Mesh.Scale + Vec(Thing[4], Thing[5], Thing[6])
                  Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                else
                  if Thing[2] == "Blood" then
                    Mesh = Thing[1]:FindFirstChild("Mesh")
                    if not Mesh then
                      Mesh = Instance.new("BlockMesh")
                    end
                    Thing[1].CFrame = Thing[1].CFrame * Cf(0, 0.5, 0)
                    Mesh.Scale = Mesh.Scale + Vec(Thing[4], Thing[5], Thing[6])
                    Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                  else
                    if Thing[2] == "Elec" then
                      Mesh = Thing[1]:FindFirstChild("Mesh")
                      if not Mesh then
                        Mesh = Instance.new("BlockMesh")
                      end
                      Mesh.Scale = Mesh.Scale + Vec(Thing[7], Thing[8], Thing[9])
                      Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                    else
                      if Thing[2] == "Disappear" then
                        Thing[1].Transparency = Thing[1].Transparency + Thing[3]
                      end
                    end
                  end
                end
              end
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

wait(1)
Player.Character.Parent=nil
wait()
Player.Character.Parent=game.Workspace

while true do
  if wait() then
    if Debounces.Equipped then
      if not Debounces.Attacking then
        if not Debounces.AnimOverride then
          if not Debounces.Equipping then
            if Current_Anim == "Idle" and not Debounces.HasWep then
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
            end
              if Current_Anim == "Walking" and not Debounces.HasWep then
                walknum = 0.3
                if walknum2 < 9.999 and walk == 1 then
                  walknum2 = walknum2 + walknum
                elseif walknum2 > 9.999 and walk == 1 then
                    walk = -1
                  elseif walknum2 > 0.999 and walk == -1 then
                      walknum2 = walknum2 - walknum
                    elseif walknum2 < 0.999 and walk == -1 then
                        walk = 1
                end
                local WalkSpeed = 0.4
                FRightShoulder.C0 = clerp(FRightShoulder.C0, Cf(1.5, 0.35, 0) * Euler(rad(-25), 0, rad(8)), WalkSpeed)
                FRightShoulder.C1 = clerp(FRightShoulder.C1, Cf(0, 0.5, 0) * Euler(0, 0, 0), WalkSpeed)
                FLeftShoulder.C0 = clerp(FLeftShoulder.C0, Cf(-0.7, 0.5 - (walknum2) / 70, -1) * Euler(rad(80), 0, rad(60)), WalkSpeed)
                FLeftShoulder.C1 = clerp(FLeftShoulder.C1, Cf(0, 0.5, 0) * Euler(rad(1 - (walknum2) * 2), 0, 0), WalkSpeed)
                Neck.C0 = clerp(Neck.C0, Cf(0, 1.5, 0) * Euler(rad(3), 0, 0), WalkSpeed)
                Neck.C1 = clerp(Neck.C1, Cf(0, 0, 0) * Euler(0, 0, 0), WalkSpeed)
                FRootJoint.C0 = clerp(FRootJoint.C0, Cf(0, -1, 0) * Euler(rad(-10), 0, 0), WalkSpeed)
                FRootJoint.C1 = clerp(FRootJoint.C1, Cf(0, -1, 0) * Euler(0, 0, 0), WalkSpeed)
                RightHip.C0 = clerp(RightHip.C0, Cf(1.5, -1, 0) * Euler(0, rad(90), 0), WalkSpeed)
                RightHip.C1 = clerp(RightHip.C1, Cf(1, 1, 0) * Euler(0, rad(90), 0), WalkSpeed)
                LeftHip.C0 = clerp(LeftHip.C0, Cf(-1.5, -1, 0) * Euler(0, rad(-90), 0), WalkSpeed)
                LeftHip.C1 = clerp(LeftHip.C1, Cf(-1, 1, 0) * Euler(0, rad(-90), 0), WalkSpeed)
              end
                  if Current_Anim ~= "Falling" or not Debounces.HasWep then
                    local FallSpeed = 0.5
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
                end
        end
      end
    end
  end
end

