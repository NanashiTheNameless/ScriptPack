wait()
--[[ Vital Variables ]]--

local Player = game.Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character["Humanoid"]
local Head = Character.Head
local Torso = Character.Torso
local RootPart = Character.HumanoidRootPart
local RightArm = Character["Right Arm"]
local LeftArm = Character["Left Arm"]
local RightLeg = Character["Right Leg"]
local LeftLeg = Character["Left Leg"]

--[[ Motor's Variables ]]--

local Neck = Torso.Neck
local RootJoint = RootPart.RootJoint
local RightShoulder = Torso["Right Shoulder"]
local LeftShoulder = Torso["Left Shoulder"]
local RightHip = Torso["Right Hip"]
local LeftHip = Torso["Left Hip"]

--[[ Other Variables ]]--

local Insert = table.insert

--[[ Services ]]--

Services = {
	
Workspace = game:GetService("Workspace");
Debris = game:GetService("Debris");	
	
}

--[[ Get mouse ]]--

local Mouse = Player:GetMouse()

--[[ VFX ]]--

VFXList = {}

--[[ Remove Character Animate ]]--

local CharaterAnimate, CharacterAnimator = Character:FindFirstChild("Animate"), Humanoid:FindFirstChild("Animator")

CharaterAnimate.Parent = nil
CharacterAnimator.Parent = nil


--[[ Walkspeed ]]--

Humanoid.WalkSpeed = 18

--[[ Number Values ]]--

local ManaDelay = 0
local ManaDelay2 = 8
local EffectRemovalDelay = 0
local EffectRemovalDelay2 = 3
local Combo = 1
local AttackDecrease = 0
local MvmtDecrease = 0
local DefenceDecrease = 0
local Mana = 0
local ChargeDelay = 0
local ChargeDelay2 = 100
local Charge = 4

--[[ Bool Values ]]--

local Attacking = false
local InAir = false
local Charging = false
local CanCharge = true

--[[ Cooldowns ]]--

local Cooldown1 = 0
local Cooldown2 = 0
local Cooldown3 = 0
local Cooldown4 = 0

local Cooldown1Add = 0.3
local Cooldown2Add = 0.25
local Cooldown3Add = 0.2
local Cooldown4Add = 0.12

local MaxCooldown1 = 120
local MaxCooldown2 = 140
local MaxCooldown3 = 180
local MaxCooldown4 = 200



--[[ CFrame Values ]]--

NeckDefaultCFrame = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RootDefaultCFrame = CFrame.Angles(-1.57, 0, 3.14)
RightLegDefaultCFrame = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LeftLegDefaultCFrame = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)

RightShoulder.C1 = CFrame.new(0,0.5,0)
LeftShoulder.C1 = CFrame.new(0,0.5,0)

--[[ Heartbeat ]]--

Heartbeat = Instance.new("BindableEvent", script)
Heartbeat.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
Frame = 1/35
TF = 0
AllowFrameLoss = false
TossRemainder = false
LastFrame = tick()
script.Heartbeat:Fire()
local HeartBeatIsNil = false

game:GetService("RunService").Heartbeat:connect(function(s, p)
if script:FindFirstChild("Heartbeat") == nil then
HeartBeatIsNil = true
end
if HeartBeatIsNil then
return 
end
TF = TF + s
if Frame <= TF then
if AllowFrameLoss then
Heartbeat:Fire()
LastFrame = tick()
else
for i = 1, math.floor(TF / Frame) do
Heartbeat:Fire()
LastFrame = tick()
end
end
if TossRemainder then
TF = 0
else
TF = TF - Frame * math.floor(TF / Frame)
end
end
end)

function Wait2(WaitNumber)	
if WaitNumber == 0 or WaitNumber == nil then
Heartbeat.Event:wait()
else
for i = 0, WaitNumber do
Heartbeat.Event:wait()
end
end
end

--[[ Vital Functions ]]--

function GUI(NewInstance, Parent, Size, Position, BGTransparency, Visible, BGColor, Rotation, Style, Text, TextColor, TextStroke, StrokeTrans, Scaled, Font)
	
local NewGui = Instance.new(NewInstance)
NewGui.Parent = Parent
coroutine.resume(coroutine.create(function()
NewGui:TweenSizeAndPosition(Size, Position, "Out", "Quad", 2)
end))
NewGui.BackgroundTransparency = BGTransparency
NewGui.Visible = Visible
NewGui.Rotation = Rotation
NewGui.BorderSizePixel = 0
NewGui.BackgroundColor3 = BrickColor.new(BGColor).Color	
if Style and NewInstance == "Frame" or Style and NewInstance == "ScrollingFrame" then
NewGui.Style = Style	
end
	
if NewInstance == "TextBox" or NewInstance == "TextLabel" or NewInstance == "TextButton" then
	
NewGui.Text = Text	
NewGui.TextStrokeTransparency = StrokeTrans
NewGui.TextColor3 = BrickColor.new(TextColor).Color
NewGui.TextStrokeColor3 = BrickColor.new(TextStroke).Color
NewGui.TextScaled = Scaled
NewGui.Font = Font
	
	
end	

return NewGui
end

local CreatePart = function(Parent, Name, Color, Size, Material, Transparency, Shape)

local Part = Instance.new("Part", Parent)
Part.Name = Name
Part.BrickColor = BrickColor.new(Color)
Part.Size = Size
Part.Material = Material
Part.Transparency = Transparency
Part.Shape = Shape
Part.CanCollide = false
NoOutlines(Part)

return Part

end

local CreateWeld = function(Parent, Cframe, Cframe2, P1 , P0, Name)

local Weld = Instance.new("Weld", Parent)
Weld.Part0 = P0
Weld.Part1 = P1
Weld.Name = Name
Weld.C0 = Cframe
Weld.C1 = Cframe2

return Weld

end

local CreateMesh = function(Parent, Scale, Type, Type2, ID, Texture)
local Mesh
if Type == "SpecialMesh" then
Mesh = Instance.new("SpecialMesh", Parent)
if Type then
Mesh.MeshType = Type2
if Type2 == "FileMesh" and ID then
Mesh.MeshId = "http://www.roblox.com/asset?id=" .. ID
if Texture then
Mesh.TextureId = "http://www.roblox.com/asset?id=" .. Texture
end
end
end

elseif Type == "BlockMesh" then
Mesh = Instance.new("BlockMesh", Parent)

elseif Type == "CylinderMesh" then
Mesh = Instance.new("CylinderMesh", Parent)

end
Mesh.Scale = Scale
return Mesh

end

function Animate(Weld, Point1, Point2)
	
return Weld:Lerp(Point1, Point2)
	
end

--[[ Secondary Functions ]]--

function ResumeCharacterControl()

CharacterUnderControl = true
Humanoid.JumpPower = 50


end

function RemoveCharacterControl()
CharacterUnderControl = false
wait()		
Humanoid.JumpPower = 0
Humanoid.WalkSpeed = 0
	
end

function SoundEffect(Part, ID, Volume, Pitch, Looped)
	
local Sound = Instance.new("Sound", Part)
Sound.SoundId = "http://www.roblox.com/asset?id=" .. ID
Sound.Name = "SFX"
Sound.Volume = Volume
Sound.Pitch = Pitch
Sound:Play()

if Looped then
return	
end

Services.Debris:AddItem(Sound, 5)

return Sound
	
end

function NoOutlines(Part)
	
Part.TopSurface = 10
Part.BottomSurface = 10
Part.LeftSurface = 10
Part.RightSurface = 10
Part.FrontSurface = 10
Part.BackSurface = 10

end

function AddVFX(VFXType, Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
	
Insert(VFXList, {VFXType, Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3})
	
end
	
function BlockVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 3)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "Brick")

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	
AddVFX("Rotate", Part)	
	
return Part	
	
end		

function CylinderVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 3)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "Cylinder")

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	

return Part	
	
end	

function CircleVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 3)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "Sphere")

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	
	
return Part	
	
end

function CylinderVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 3)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "Cylinder")

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	
	
return Part	
	
end

function WaveVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 3)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 20329976)

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	

return Part and Mesh

end

function RingVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 3)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 3270017)

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	

return Part and Mesh

end

function ShurikenVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 3)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 11112101)

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	

return Part

end


function KunaiVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 3)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 45728702)

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	

return Part

end

function WindVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 3)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 168892432)

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	

return Part

end

function TornadoVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
Part.Anchored = true
Part.CFrame = PartPosition
Services.Debris:AddItem(Part, 3)

local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 36755354)

AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)	

return Part

end

--[[ UI ]]--

WeaponGUI = Instance.new("ScreenGui", Player.PlayerGui)
WeaponGUI.Name = "WeaponThing"

local HealthBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 355, 0, 25), UDim2.new(0, 350, 0.96, 0), 0, true, "Really black", 0, nil)
local HealthBarBar = GUI("Frame", HealthBarBack, UDim2.new(0, 345, 0, 19), UDim2.new(0, 3, 0.1, 0), 0, true, "Lime green", 0)
local HealthBarText = GUI("TextLabel", WeaponGUI, UDim2.new(0, 345, 0, 19), UDim2.new(0, 355, 0.96, 0), 1, true, "", 0, nil, "Health", "White", "Black", 0, true, "SourceSansBold")

local ManaBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 355, 0, 25), UDim2.new(0, 350, 0.9, 0), 0, true, "Really black", 0, nil)
local ManaBarBar = GUI("Frame", ManaBarBack, UDim2.new(0, 0, 0, 19), UDim2.new(0, 3, 0.1, 0), 0, true, "Bright blue", 0)
local ManaBarText = GUI("TextLabel", WeaponGUI, UDim2.new(0, 345, 0, 19), UDim2.new(0, 355, 0.9, 0), 1, true, "", 0, nil, "Mana", "White", "Cyan", 0, true, "SourceSansBold")

local ChargeBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 355, 0, 25), UDim2.new(0, 350, 0.84, 0), 0, true, "Really black", 0, nil)
local ChargeBarBar = GUI("Frame", ChargeBarBack, UDim2.new(0, 0, 0, 19), UDim2.new(0, 3, 0.1, 0), 0, true, "Cyan", 0)
local ChargeBarText = GUI("TextLabel", WeaponGUI, UDim2.new(0, 345, 0, 19), UDim2.new(0, 355, 0.84, 0), 1, true, "", 0, nil, "Mana", "White", "Cyan", 0, true, "SourceSansBold")

local CooldownZBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0.3, 0), 0, true, "Really black", 0, nil)
local CooldownZBarBar = GUI("TextButton", CooldownZBarBack, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 5), 0.3, true, "Ghost grey", 0, nil, "", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownZBarText = GUI("TextLabel", CooldownZBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, "Z", "White", "Cyan", 1, true, "SourceSansBold")

local CooldownXBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0.93, 0, 0.3, 0), 0, true, "Really black", 0, nil)
local CooldownXBarBar = GUI("TextButton", CooldownXBarBack, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 5), 0.3, true, "Ghost grey", 0, nil, "", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownXBarText = GUI("TextLabel", CooldownXBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, "X", "White", "Cyan", 1, true, "SourceSansBold")

local CooldownCBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0.93, 0, 0.6, 0), 0, true, "Really black", 0, nil)
local CooldownCBarBar = GUI("TextButton", CooldownCBarBack, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 5), 0.3, true, "Ghost grey", 0, nil, "", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownCBarText = GUI("TextLabel", CooldownCBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, "C", "White", "Cyan", 1, true, "SourceSansBold")

local CooldownVBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0.6, 0), 0, true, "Really black", 0, nil)
local CooldownVBarBar = GUI("TextButton", CooldownVBarBack, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 5), 0.3, true, "Ghost grey", 0, nil, "", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownVBarText = GUI("TextLabel", CooldownVBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, "V", "White", "Cyan", 1, true, "SourceSansBold")

--[[ Weapon ]]--

Daggers = Instance.new("Model", Character)

Handle = CreatePart(Daggers, "Handle", "White", Vector3.new(1, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
HandleMesh = CreateMesh(Handle, Vector3.new(1, 1.20000005, 1.20000005), "BlockMesh")		
HandleWeld = CreateWeld(Handle,  CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), CFrame.new(0,0,0), RightArm, Handle, "HandleToRightArm")	
	
----------------------------------------------------

Part1 = CreatePart(Daggers, "Part1", "White", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part1Mesh = CreateMesh(Part1, Vector3.new(1, 1, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part1Weld = CreateWeld(Part1,  CFrame.new(-0.459999084, 1.09672546e-005, 0.19997406, 0, 0, -1, -1, 0, 0, 0, 1, 0), CFrame.new(0,0,0), Part1, Handle, "HandleToPart1")	
	
----------------------------------------------------

Part2 = CreatePart(Daggers, "Part2", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part2Mesh = CreateMesh(Part2, Vector3.new(2, 2, 2), "SpecialMesh", Enum.MeshType.Sphere)		
Part2Weld = CreateWeld(Part2,  CFrame.new(-0.759998322, 0, -1.52587891e-005, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0,0,0), Part2, Handle, "HandleToPart2")	
	
----------------------------------------------------

Part3 = CreatePart(Daggers, "Part3", "White", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part3Mesh = CreateMesh(Part3, Vector3.new(1, 1, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part3Weld = CreateWeld(Part3,  CFrame.new(-0.459999084, -0.199976027, -1.14440918e-005, 0, 0, -1, 0, -1, -0, -1, 0, -0), CFrame.new(0,0,0), Part3, Handle, "HandleToPart3")	
	
----------------------------------------------------

Part4 = CreatePart(Daggers, "Part4", "White", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part4Mesh = CreateMesh(Part4, Vector3.new(1, 1, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part4Weld = CreateWeld(Part4,  CFrame.new(-0.459999084, 1.19805336e-005, -0.199996948, 0, 0, -1, 1, 0, 0, 0, -1, 0), CFrame.new(0,0,0), Part4, Handle, "HandleToPart4")	
	
----------------------------------------------------

Part5 = CreatePart(Daggers, "Part5", "White", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part5Mesh = CreateMesh(Part5, Vector3.new(1, 1, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part5Weld = CreateWeld(Part5,  CFrame.new(-0.459999084, 0.199999988, -1.14440918e-005, 0, 0, -1, 0, 1, 0, 1, 0, 0), CFrame.new(0,0,0), Part5, Handle, "HandleToPart5")	
	
----------------------------------------------------

Part6 = CreatePart(Daggers, "Part6", "White", Vector3.new(0.200000003, 0.200000003, 0.400000006), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part6Mesh = CreateMesh(Part6, Vector3.new(1, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part6Weld = CreateWeld(Part6,  CFrame.new(-0.759998322, 0.24999994, -1.52587891e-005, 0, 0, 1, 0, -1, 0, 1, 0, 0), CFrame.new(0,0,0), Part6, Handle, "HandleToPart6")	
	
----------------------------------------------------

Part7 = CreatePart(Daggers, "Part7", "White", Vector3.new(0.200000003, 0.200000003, 0.400000006), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part7Mesh = CreateMesh(Part7, Vector3.new(1, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part7Weld = CreateWeld(Part7,  CFrame.new(-0.759998322, -0.249976039, -1.52587891e-005, 0, 0, 1, 0, 1, 0, -1, 0, 0), CFrame.new(0,0,0), Part7, Handle, "HandleToPart7")	
	
----------------------------------------------------

Part8 = CreatePart(Daggers, "Part8", "White", Vector3.new(0.200000003, 0.200000003, 0.400000006), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part8Mesh = CreateMesh(Part8, Vector3.new(1, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part8Weld = CreateWeld(Part8,  CFrame.new(-0.760002136, 1.09672546e-005, -0.250003815, 0, 0, 1, 1, 0, 0, 0, 1, 0), CFrame.new(0,0,0), Part8, Handle, "HandleToPart8")	
	
----------------------------------------------------

Part9 = CreatePart(Daggers, "Part9", "White", Vector3.new(0.200000003, 0.200000003, 0.400000006), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part9Mesh = CreateMesh(Part9, Vector3.new(1, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part9Weld = CreateWeld(Part9,  CFrame.new(-0.759998322, 1.09672546e-005, 0.239974976, 0, 0, 1, -1, 0, 0, 0, -1, 0), CFrame.new(0,0,0), Part9, Handle, "HandleToPart9")	
	
----------------------------------------------------

Part10 = CreatePart(Daggers, "Part10", "White", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part10Mesh = CreateMesh(Part10, Vector3.new(1, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part10Weld = CreateWeld(Part10,  CFrame.new(-0.659996033, 0.149993956, -1.52587891e-005, 0, 0, 1, 0, -1, 0, 1, 0, 0), CFrame.new(0,0,0), Part10, Handle, "HandleToPart10")	
	
----------------------------------------------------

Part11 = CreatePart(Daggers, "Part11", "White", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part11Mesh = CreateMesh(Part11, Vector3.new(1, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part11Weld = CreateWeld(Part11,  CFrame.new(-0.659996033, 5.00679016e-006, -0.150009155, 0, 0, 1, 1, 0, 0, 0, 1, 0), CFrame.new(0,0,0), Part11, Handle, "HandleToPart11")	
	
----------------------------------------------------

Part12 = CreatePart(Daggers, "Part12", "White", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part12Mesh = CreateMesh(Part12, Vector3.new(1, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part12Weld = CreateWeld(Part12,  CFrame.new(-0.659996033, 5.00679016e-006, 0.139976501, 0, 0, 1, -1, 0, 0, 0, -1, 0), CFrame.new(0,0,0), Part12, Handle, "HandleToPart12")	
	
----------------------------------------------------

Part13 = CreatePart(Daggers, "Part13", "White", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part13Mesh = CreateMesh(Part13, Vector3.new(1, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part13Weld = CreateWeld(Part13,  CFrame.new(-0.659996033, -0.149982035, -1.52587891e-005, 0, 0, 1, 0, 1, 0, -1, 0, 0), CFrame.new(0,0,0), Part13, Handle, "HandleToPart13")	
	
----------------------------------------------------

Part14 = CreatePart(Daggers, "Part14", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.400000006), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part14Mesh = CreateMesh(Part14, Vector3.new(0.5, 1.005, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part14Weld = CreateWeld(Part14,  CFrame.new(-0.359996796, 5.00679016e-006, -0.200000763, 0, 0, -1, 1, 0, 0, 0, -1, 0), CFrame.new(0,0,0), Part14, Handle, "HandleToPart14")	
	
----------------------------------------------------

Part15 = CreatePart(Daggers, "Part15", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.400000006), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part15Mesh = CreateMesh(Part15, Vector3.new(0.5, 1.005, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part15Weld = CreateWeld(Part15,  CFrame.new(-0.359996796, 0.199994981, -1.14440918e-005, 0, 0, -1, 0, 1, 0, 1, 0, 0), CFrame.new(0,0,0), Part15, Handle, "HandleToPart15")	
	
----------------------------------------------------

Part16 = CreatePart(Daggers, "Part16", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.600000024), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part16Mesh = CreateMesh(Part16, Vector3.new(0.5, 0.50999999, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part16Weld = CreateWeld(Part16,  CFrame.new(-0.859996796, 0.24999398, -1.14440918e-005, 0, 0, 1, 0, -1, 0, 1, 0, 0), CFrame.new(0,0,0), Part16, Handle, "HandleToPart16")	
	
----------------------------------------------------

Part17 = CreatePart(Daggers, "Part17", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.600000024), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part17Mesh = CreateMesh(Part17, Vector3.new(0.5, 0.50999999, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part17Weld = CreateWeld(Part17,  CFrame.new(-0.859996796, -0.249981999, -1.14440918e-005, 0, 0, 1, 0, 1, 0, -1, 0, 0), CFrame.new(0,0,0), Part17, Handle, "HandleToPart17")	
	
----------------------------------------------------

Part18 = CreatePart(Daggers, "Part18", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.400000006), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part18Mesh = CreateMesh(Part18, Vector3.new(0.5, 1.005, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part18Weld = CreateWeld(Part18,  CFrame.new(-0.359996796, 5.00679016e-006, 0.199966431, 0, 0, -1, -1, 0, 0, 0, 1, 0), CFrame.new(0,0,0), Part18, Handle, "HandleToPart18")	
	
----------------------------------------------------

Part19 = CreatePart(Daggers, "Part19", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part19Mesh = CreateMesh(Part19, Vector3.new(0.5, 0.50999999, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part19Weld = CreateWeld(Part19,  CFrame.new(-0.659996033, -1.01327896e-006, -0.150009155, 0, 0, 1, 1, 0, 0, 0, 1, 0), CFrame.new(0,0,0), Part19, Handle, "HandleToPart19")	
	
----------------------------------------------------

Part20 = CreatePart(Daggers, "Part20", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part20Mesh = CreateMesh(Part20, Vector3.new(0.5, 0.50999999, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part20Weld = CreateWeld(Part20,  CFrame.new(-0.659996033, 0.149987996, -1.52587891e-005, 0, 0, 1, 0, -1, 0, 1, 0, 0), CFrame.new(0,0,0), Part20, Handle, "HandleToPart20")	
	
----------------------------------------------------

Part21 = CreatePart(Daggers, "Part21", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.600000024), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part21Mesh = CreateMesh(Part21, Vector3.new(0.5, 0.50999999, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part21Weld = CreateWeld(Part21,  CFrame.new(-0.859996796, 5.00679016e-006, 0.239974976, 0, 0, 1, -1, 0, 0, 0, -1, 0), CFrame.new(0,0,0), Part21, Handle, "HandleToPart21")	
	
----------------------------------------------------

Part22 = CreatePart(Daggers, "Part22", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.600000024), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part22Mesh = CreateMesh(Part22, Vector3.new(0.5, 0.50999999, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part22Weld = CreateWeld(Part22,  CFrame.new(-0.859996796, 5.00679016e-006, -0.250007629, 0, 0, 1, 1, 0, 0, 0, 1, 0), CFrame.new(0,0,0), Part22, Handle, "HandleToPart22")	
	
----------------------------------------------------

Part23 = CreatePart(Daggers, "Part23", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.400000006), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part23Mesh = CreateMesh(Part23, Vector3.new(0.5, 1.005, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part23Weld = CreateWeld(Part23,  CFrame.new(-0.359996796, -0.199983001, -1.14440918e-005, 0, 0, -1, 0, -1, -0, -1, 0, -0), CFrame.new(0,0,0), Part23, Handle, "HandleToPart23")	
	
----------------------------------------------------

Part24 = CreatePart(Daggers, "Part24", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part24Mesh = CreateMesh(Part24, Vector3.new(0.5, 0.50999999, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part24Weld = CreateWeld(Part24,  CFrame.new(-0.659996033, -1.01327896e-006, 0.139976501, 0, 0, 1, -1, 0, 0, 0, -1, 0), CFrame.new(0,0,0), Part24, Handle, "HandleToPart24")	
	
----------------------------------------------------

Part25 = CreatePart(Daggers, "Part25", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part25Mesh = CreateMesh(Part25, Vector3.new(0.5, 0.50999999, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part25Weld = CreateWeld(Part25,  CFrame.new(-0.659996033, -0.149989009, -1.52587891e-005, 0, 0, 1, 0, 1, 0, -1, 0, 0), CFrame.new(0,0,0), Part25, Handle, "HandleToPart25")	
	
----------------------------------------------------

Part26 = CreatePart(Daggers, "Part26", "White", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part26Mesh = CreateMesh(Part26, Vector3.new(1, 0.5, 0.5), "BlockMesh")		
Part26Weld = CreateWeld(Part26,  CFrame.new(0.729290009, 2.30073929e-005, -0.279289246, 0.707106829, 0, 0.707106829, 0, 1, 0, -0.707106829, 0, 0.707106829), CFrame.new(0,0,0), Part26, Handle, "HandleToPart26")	
	
----------------------------------------------------

Part27 = CreatePart(Daggers, "Part27", "White", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part27Mesh = CreateMesh(Part27, Vector3.new(1, 0.5, 0.5), "BlockMesh")		
Part27Weld = CreateWeld(Part27,  CFrame.new(1.35639572, 2.30073929e-005, -0.279289246, -0.707106829, 0, 0.707106829, 0, 1, 0, -0.707106829, 0, -0.707106829), CFrame.new(0,0,0), Part27, Handle, "HandleToPart27")	
	
----------------------------------------------------

Part28 = CreatePart(Daggers, "Part28", "White", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part28Mesh = CreateMesh(Part28, Vector3.new(1, 0.5, 1), "BlockMesh")		
Part28Weld = CreateWeld(Part28,  CFrame.new(1.04284286, 2.30073929e-005, -0.672843933, -0.707106829, 0, 0.707106829, 0, 1, 0, -0.707106829, 0, -0.707106829), CFrame.new(0,0,0), Part28, Handle, "HandleToPart28")	
	
----------------------------------------------------

Part29 = CreatePart(Daggers, "Part29", "White", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part29Mesh = CreateMesh(Part29, Vector3.new(1, 0.5, 0.5), "BlockMesh")		
Part29Weld = CreateWeld(Part29,  CFrame.new(0.729290009, 2.30073929e-005, 0.264968872, 0.707106829, 0, 0.707106829, 0, -1, 0, 0.707106829, 0, -0.707106829), CFrame.new(0,0,0), Part29, Handle, "HandleToPart29")	
	
----------------------------------------------------

Part30 = CreatePart(Daggers, "Part30", "White", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part30Mesh = CreateMesh(Part30, Vector3.new(1, 0.5, 1), "BlockMesh")		
Part30Weld = CreateWeld(Part30,  CFrame.new(1.04284286, 2.30073929e-005, 0.658531189, -0.707107842, 0, 0.707105815, 0, -1, 0, 0.707105815, 0, 0.707107842), CFrame.new(0,0,0), Part30, Handle, "HandleToPart30")	
	
----------------------------------------------------

Part31 = CreatePart(Daggers, "Part31", "White", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part31Mesh = CreateMesh(Part31, Vector3.new(1, 0.5, 0.5), "BlockMesh")		
Part31Weld = CreateWeld(Part31,  CFrame.new(1.35639572, 2.39610672e-005, 0.264968872, -0.707107842, 0, 0.707105815, 0, -1, 0, 0.707105815, 0, 0.707107842), CFrame.new(0,0,0), Part31, Handle, "HandleToPart31")	
	
----------------------------------------------------

Part32 = CreatePart(Daggers, "Part32", "White", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part32Mesh = CreateMesh(Part32, Vector3.new(1, 0.5, 0.5), "BlockMesh")		
Part32Weld = CreateWeld(Part32,  CFrame.new(0.729290009, -0.272113025, -0.00716400146, 0.707107365, 0, 0.707106352, -0.707106352, 0, 0.707107365, 0, -1, 0), CFrame.new(0,0,0), Part32, Handle, "HandleToPart32")	
	
----------------------------------------------------

Part33 = CreatePart(Daggers, "Part33", "White", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part33Mesh = CreateMesh(Part33, Vector3.new(1, 0.5, 1), "BlockMesh")		
Part33Weld = CreateWeld(Part33,  CFrame.new(1.04284286, -0.665663004, -0.00715637207, -0.707107365, 0, 0.707106352, -0.707106352, 0, -0.707107365, 0, -1, 0), CFrame.new(0,0,0), Part33, Handle, "HandleToPart33")	
	
----------------------------------------------------

Part34 = CreatePart(Daggers, "Part34", "White", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part34Mesh = CreateMesh(Part34, Vector3.new(1, 0.5, 0.5), "BlockMesh")		
Part34Weld = CreateWeld(Part34,  CFrame.new(1.35639572, 0.272145927, -0.00715637207, -0.707107365, 0, 0.707106352, 0.707106352, 0, 0.707107365, 0, 1, 0), CFrame.new(0,0,0), Part34, Handle, "HandleToPart34")	
	
----------------------------------------------------

Part35 = CreatePart(Daggers, "Part35", "White", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part35Mesh = CreateMesh(Part35, Vector3.new(1, 0.5, 0.5), "BlockMesh")		
Part35Weld = CreateWeld(Part35,  CFrame.new(1.35639572, -0.272107005, -0.00715637207, -0.707107365, 0, 0.707106352, -0.707106352, 0, -0.707107365, 0, -1, 0), CFrame.new(0,0,0), Part35, Handle, "HandleToPart35")	
	
----------------------------------------------------

Part36 = CreatePart(Daggers, "Part36", "White", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part36Mesh = CreateMesh(Part36, Vector3.new(1, 0.5, 0.5), "BlockMesh")		
Part36Weld = CreateWeld(Part36,  CFrame.new(0.729290009, 0.272149026, -0.00715637207, 0.707107365, 0, 0.707106352, 0.707106352, 0, -0.707107365, 0, 1, 0), CFrame.new(0,0,0), Part36, Handle, "HandleToPart36")	
	
----------------------------------------------------

Part37 = CreatePart(Daggers, "Part37", "White", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part37Mesh = CreateMesh(Part37, Vector3.new(1, 0.5, 1), "BlockMesh")		
Part37Weld = CreateWeld(Part37,  CFrame.new(1.04284286, 0.665708959, -0.00715637207, -0.707107365, 0, 0.707106352, 0.707106352, 0, 0.707107365, 0, 1, 0), CFrame.new(0,0,0), Part37, Handle, "HandleToPart37")	
	
----------------------------------------------------

Part38 = CreatePart(Daggers, "Part38", "White", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part38Mesh = CreateMesh(Part38, Vector3.new(0.400200009, 1.79999995, 1.79999995), "BlockMesh")		
Part38Weld = CreateWeld(Part38,  CFrame.new(0.5, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0,0,0), Part38, Handle, "HandleToPart38")	
	
----------------------------------------------------

Part39 = CreatePart(Daggers, "Part39", "White", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part39Mesh = CreateMesh(Part39, Vector3.new(0.400000006, 1.79999995, 1.79999995), "BlockMesh")		
Part39Weld = CreateWeld(Part39,  CFrame.new(0.5, 2.39610672e-005, -7.62939453e-006, 1, 0, 0, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0.707106829), CFrame.new(0,0,0), Part39, Handle, "HandleToPart39")	
	
----------------------------------------------------

Part40 = CreatePart(Daggers, "Part40", "White", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part40Mesh = CreateMesh(Part40, Vector3.new(1, 1.20000005, 1.20000005), "BlockMesh")		
Part40Weld = CreateWeld(Part40,  CFrame.new(1.59000397, 0, 0, 1, 0, 0, 0, 0.707106829, -0.707106829, 0, 0.707106829, 0.707106829), CFrame.new(0,0,0), Part40, Handle, "HandleToPart40")	
	
----------------------------------------------------

Part41 = CreatePart(Daggers, "Part41", "Fossil", Vector3.new(0.200000003, 0.600000024, 0.600000024), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part41Mesh = CreateMesh(Part41, Vector3.new(0.400000006, 1, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part41Weld = CreateWeld(Part41,  CFrame.new(1.29999924, 0, 0.300003052, 0, 0, 1, -1, 0, 0, 0, -1, 0), CFrame.new(0,0,0), Part41, Handle, "HandleToPart41")	
	
----------------------------------------------------

Part42 = CreatePart(Daggers, "Part42", "Fossil", Vector3.new(0.200000003, 0.600000024, 2.60000014), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part42Mesh = CreateMesh(Part42, Vector3.new(0.400000006, 1, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part42Weld = CreateWeld(Part42,  CFrame.new(3.90000153, 0, 0.300003052, 0, 0, -1, -1, 0, 0, 0, 1, 0), CFrame.new(0,0,0), Part42, Handle, "HandleToPart42")	
	
----------------------------------------------------

Part43 = CreatePart(Daggers, "Part43", "Fossil", Vector3.new(0.200000003, 0.600000024, 1), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part43Mesh = CreateMesh(Part43, Vector3.new(0.400000006, 1, 1), "SpecialMesh", Enum.MeshType.Brick)		
Part43Weld = CreateWeld(Part43,  CFrame.new(2.09999847, 2.30073929e-005, 0.300003052, 0, 0, -1, -1, 0, 0, 0, 1, 0), CFrame.new(0,0,0), Part43, Handle, "HandleToPart43")	
	
----------------------------------------------------

Part44 = CreatePart(Daggers, "Part44", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.600000083), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part44Mesh = CreateMesh(Part44, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part44Weld = CreateWeld(Part44,  CFrame.new(1.70801163, 2.19941139e-005, -0.973514557, 0, 0.965925872, -0.258818984, -1, 0, 0, 0, 0.258818984, 0.965925872), CFrame.new(0,0,0), Part44, Handle, "HandleToPart44")	
	
----------------------------------------------------

Part45 = CreatePart(Daggers, "Part45", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.600000083), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part45Mesh = CreateMesh(Part45, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part45Weld = CreateWeld(Part45,  CFrame.new(1.55271912, 1.9967556e-005, -0.393955231, 0, -0.965925872, 0.258818984, -1, 0, 0, 0, -0.258818984, -0.965925872), CFrame.new(0,0,0), Part45, Handle, "HandleToPart45")	
	
----------------------------------------------------

Part46 = CreatePart(Daggers, "Part46", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.600000083), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part46Mesh = CreateMesh(Part46, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part46Weld = CreateWeld(Part46,  CFrame.new(1.50613022, 4.59551811e-005, -0.755889893, 0, 1, 0, -1, 0, 0, 0, 0, 1), CFrame.new(0,0,0), Part46, Handle, "HandleToPart46")	
	
----------------------------------------------------

Part47 = CreatePart(Daggers, "Part47", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.400000095), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part47Mesh = CreateMesh(Part47, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part47Weld = CreateWeld(Part47,  CFrame.new(1.50613785, 4.39882278e-005, -0.255889893, 0, -1, -0, -1, 0, -0, 0, 0, -1), CFrame.new(0,0,0), Part47, Handle, "HandleToPart47")	
	
----------------------------------------------------

Part48 = CreatePart(Daggers, "Part48", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.400000095), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part48Mesh = CreateMesh(Part48, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part48Weld = CreateWeld(Part48,  CFrame.new(1.34845734, 8.29696655e-005, -0.700138092, 0, 0.965925872, 0.258818984, -1, 0, 0, 0, -0.258818984, 0.965925872), CFrame.new(0,0,0), Part48, Handle, "HandleToPart48")	
	
----------------------------------------------------

Part49 = CreatePart(Daggers, "Part49", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.400000095), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part49Mesh = CreateMesh(Part49, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part49Weld = CreateWeld(Part49,  CFrame.new(1.45199203, 7.99894333e-005, -0.313762665, 0, -0.965925872, -0.258818984, -1, 0, 0, 0, 0.258818984, -0.965925872), CFrame.new(0,0,0), Part49, Handle, "HandleToPart49")	
	
----------------------------------------------------

Part50 = CreatePart(Daggers, "Part50", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.400000095), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part50Mesh = CreateMesh(Part50, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part50Weld = CreateWeld(Part50,  CFrame.new(1.40035629, 0.000115990639, -0.308738708, 0, -0.866025388, -0.500000238, -1, 0, 0, 0, 0.500000238, -0.866025388), CFrame.new(0,0,0), Part50, Handle, "HandleToPart50")	
	
----------------------------------------------------

Part51 = CreatePart(Daggers, "Part51", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000092), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part51Mesh = CreateMesh(Part51, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part51Weld = CreateWeld(Part51,  CFrame.new(1.25035095, 0.00011998415, -0.56855011, 0, 0.866025388, 0.500000238, -1, 0, 0, 0, -0.500000238, 0.866025388), CFrame.new(0,0,0), Part51, Handle, "HandleToPart51")	
	
----------------------------------------------------

Part52 = CreatePart(Daggers, "Part52", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.400000095), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part52Mesh = CreateMesh(Part52, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part52Weld = CreateWeld(Part52,  CFrame.new(0.829658508, 5.90085983e-005, 0.508571625, 0, 0.258818984, -0.965925872, 1, 0, 0, 0, -0.965925872, -0.258818984), CFrame.new(0,0,0), Part52, Handle, "HandleToPart52")	
	
----------------------------------------------------

Part53 = CreatePart(Daggers, "Part53", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.600000083), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part53Mesh = CreateMesh(Part53, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part53Weld = CreateWeld(Part53,  CFrame.new(0.239906311, 0.000115990639, 0.734588623, 0, 0.258818984, 0.965925872, 1, 0, 0, 0, 0.965925872, -0.258818984), CFrame.new(0,0,0), Part53, Handle, "HandleToPart53")	
	
----------------------------------------------------

Part54 = CreatePart(Daggers, "Part54", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000092), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part54Mesh = CreateMesh(Part54, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part54Weld = CreateWeld(Part54,  CFrame.new(0.574867249, 1.80006027e-005, 0.306930542, 0, -0.500000238, 0.866025388, 1, 0, 0, 0, 0.866025388, 0.500000238), CFrame.new(0,0,0), Part54, Handle, "HandleToPart54")	
	
----------------------------------------------------

Part55 = CreatePart(Daggers, "Part55", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.600000083), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part55Mesh = CreateMesh(Part55, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part55Weld = CreateWeld(Part55,  CFrame.new(0.819465637, 0.000118970871, 0.579296112, 0, -0.258818984, -0.965925872, 1, 0, 0, 0, -0.965925872, 0.258818984), CFrame.new(0,0,0), Part55, Handle, "HandleToPart55")	
	
----------------------------------------------------

Part56 = CreatePart(Daggers, "Part56", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.400000095), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part56Mesh = CreateMesh(Part56, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part56Weld = CreateWeld(Part56,  CFrame.new(0.443286896, 5.69820404e-005, 0.405036926, 0, -0.258818984, 0.965925872, 1, 0, 0, 0, 0.965925872, 0.258818984), CFrame.new(0,0,0), Part56, Handle, "HandleToPart56")	
	
----------------------------------------------------

Part57 = CreatePart(Daggers, "Part57", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.600000083), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part57Mesh = CreateMesh(Part57, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part57Weld = CreateWeld(Part57,  CFrame.new(0.367530823, 9.19699669e-005, 0.562705994, 0, 0, 1, 1, 0, 0, 0, 1, 0), CFrame.new(0,0,0), Part57, Handle, "HandleToPart57")	
	
----------------------------------------------------

Part58 = CreatePart(Daggers, "Part58", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.400000095), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part58Mesh = CreateMesh(Part58, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part58Weld = CreateWeld(Part58,  CFrame.new(0.834682465, 2.0980835e-005, 0.456935883, 0, 0.500000238, -0.866025388, 1, 0, 0, 0, -0.866025388, -0.500000238), CFrame.new(0,0,0), Part58, Handle, "HandleToPart58")	
	
----------------------------------------------------

Part59 = CreatePart(Daggers, "Part59", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.400000095), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part59Mesh = CreateMesh(Part59, Vector3.new(0.400000006, 0.5, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part59Weld = CreateWeld(Part59,  CFrame.new(0.867527008, 9.39965248e-005, 0.542709351, 0, 0, -1, 1, 0, 0, 0, -1, 0), CFrame.new(0,0,0), Part59, Handle, "HandleToPart59")	
	
----------------------------------------------------

Part60 = CreatePart(Daggers, "Part60", "Cyan", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part60Mesh = CreateMesh(Part60, Vector3.new(1, 0.50999999, 0.300000012), "BlockMesh")		
Part60Weld = CreateWeld(Part60,  CFrame.new(0.729290009, 0.272149026, -0.00715637207, 0.707107365, 0, 0.707106352, 0.707106352, 0, -0.707107365, 0, 1, 0), CFrame.new(0,0,0), Part60, Handle, "HandleToPart60")	
	
----------------------------------------------------

Part61 = CreatePart(Daggers, "Part61", "Cyan", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part61Mesh = CreateMesh(Part61, Vector3.new(1, 0.50999999, 0.300000012), "BlockMesh")		
Part61Weld = CreateWeld(Part61,  CFrame.new(0.729290009, 2.30073929e-005, 0.264968872, 0.707106829, 0, 0.707106829, 0, -1, 0, 0.707106829, 0, -0.707106829), CFrame.new(0,0,0), Part61, Handle, "HandleToPart61")	
	
----------------------------------------------------

Part62 = CreatePart(Daggers, "Part62", "Cyan", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part62Mesh = CreateMesh(Part62, Vector3.new(1, 0.50999999, 0.300000012), "BlockMesh")		
Part62Weld = CreateWeld(Part62,  CFrame.new(1.35639572, 2.30073929e-005, -0.279289246, -0.707106829, 0, 0.707106829, 0, 1, 0, -0.707106829, 0, -0.707106829), CFrame.new(0,0,0), Part62, Handle, "HandleToPart62")	
	
----------------------------------------------------

Part63 = CreatePart(Daggers, "Part63", "Cyan", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part63Mesh = CreateMesh(Part63, Vector3.new(1, 0.50999999, 0.300000012), "BlockMesh")		
Part63Weld = CreateWeld(Part63,  CFrame.new(0.729290009, 2.30073929e-005, -0.279289246, 0.707106829, 0, 0.707106829, 0, 1, 0, -0.707106829, 0, 0.707106829), CFrame.new(0,0,0), Part63, Handle, "HandleToPart63")	
	
----------------------------------------------------

Part64 = CreatePart(Daggers, "Part64", "Cyan", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part64Mesh = CreateMesh(Part64, Vector3.new(1, 0.50999999, 0.300000012), "BlockMesh")		
Part64Weld = CreateWeld(Part64,  CFrame.new(1.35639572, 0.272145927, -0.00715637207, -0.707107365, 0, 0.707106352, 0.707106352, 0, 0.707107365, 0, 1, 0), CFrame.new(0,0,0), Part64, Handle, "HandleToPart64")	
	
----------------------------------------------------

Part65 = CreatePart(Daggers, "Part65", "Cyan", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part65Mesh = CreateMesh(Part65, Vector3.new(1, 0.50999999, 0.300000012), "BlockMesh")		
Part65Weld = CreateWeld(Part65,  CFrame.new(0.729290009, -0.272110999, -0.00716018677, 0.707107365, 0, 0.707106352, -0.707106352, 0, 0.707107365, 0, -1, 0), CFrame.new(0,0,0), Part65, Handle, "HandleToPart65")	
	
----------------------------------------------------

Part66 = CreatePart(Daggers, "Part66", "Cyan", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part66Mesh = CreateMesh(Part66, Vector3.new(1, 0.50999999, 0.300000012), "BlockMesh")		
Part66Weld = CreateWeld(Part66,  CFrame.new(1.35639572, -0.272107005, -0.00715637207, -0.707107365, 0, 0.707106352, -0.707106352, 0, -0.707107365, 0, -1, 0), CFrame.new(0,0,0), Part66, Handle, "HandleToPart66")	
	
----------------------------------------------------

Part67 = CreatePart(Daggers, "Part67", "Cyan", Vector3.new(0.800000012, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part67Mesh = CreateMesh(Part67, Vector3.new(1, 0.50999999, 0.300000012), "BlockMesh")		
Part67Weld = CreateWeld(Part67,  CFrame.new(1.35639572, 2.39610672e-005, 0.264968872, -0.707107842, 0, 0.707105815, 0, -1, 0, 0.707105815, 0, 0.707107842), CFrame.new(0,0,0), Part67, Handle, "HandleToPart67")	
	
----------------------------------------------------

Part68 = CreatePart(Daggers, "Part68", "Cyan", Vector3.new(0.400000006, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part68Mesh = CreateMesh(Part68, Vector3.new(0.449999988, 0.50999999, 0.100000001), "BlockMesh")		
Part68Weld = CreateWeld(Part68,  CFrame.new(0.982131958, 0.714991987, -0.00716018677, 0.707107365, 0, 0.707106352, 0.707106352, 0, -0.707107365, 0, 1, 0), CFrame.new(0,0,0), Part68, Handle, "HandleToPart68")	
	
----------------------------------------------------

Part69 = CreatePart(Daggers, "Part69", "Cyan", Vector3.new(0.400000006, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part69Mesh = CreateMesh(Part69, Vector3.new(0.449999988, 0.50999999, 0.100000001), "BlockMesh")		
Part69Weld = CreateWeld(Part69,  CFrame.new(1.10213089, 0.714991987, -0.00715637207, 0.707106829, 0, -0.707106829, -0.707106829, 0, -0.707106829, 0, 1, 0), CFrame.new(0,0,0), Part69, Handle, "HandleToPart69")	
	
----------------------------------------------------

Part70 = CreatePart(Daggers, "Part70", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part70Mesh = CreateMesh(Part70, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part70Weld = CreateWeld(Part70,  CFrame.new(1.04284286, 0.585702002, -0.00715637207, 0.707107365, 0, 0.707106352, 0.707106352, 0, -0.707107365, 0, 1, 0), CFrame.new(0,0,0), Part70, Handle, "HandleToPart70")	
	
----------------------------------------------------

Part71 = CreatePart(Daggers, "Part71", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part71Mesh = CreateMesh(Part71, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part71Weld = CreateWeld(Part71,  CFrame.new(1.04284286, 0.705702007, -0.00715637207, 0.707107365, 0, 0.707106352, 0.707106352, 0, -0.707107365, 0, 1, 0), CFrame.new(0,0,0), Part71, Handle, "HandleToPart71")	
	
----------------------------------------------------

Part72 = CreatePart(Daggers, "Part72", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part72Mesh = CreateMesh(Part72, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part72Weld = CreateWeld(Part72,  CFrame.new(0.982841492, 0.645703018, -0.00715637207, 0.707107365, 0, 0.707106352, 0.707106352, 0, -0.707107365, 0, 1, 0), CFrame.new(0,0,0), Part72, Handle, "HandleToPart72")	
	
----------------------------------------------------

Part73 = CreatePart(Daggers, "Part73", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part73Mesh = CreateMesh(Part73, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part73Weld = CreateWeld(Part73,  CFrame.new(1.10284805, 0.645703018, -0.00715637207, 0.707107365, 0, 0.707106352, 0.707106352, 0, -0.707107365, 0, 1, 0), CFrame.new(0,0,0), Part73, Handle, "HandleToPart73")	
	
----------------------------------------------------

Part74 = CreatePart(Daggers, "Part74", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part74Mesh = CreateMesh(Part74, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part74Weld = CreateWeld(Part74,  CFrame.new(1.10141754, -0.645722985, -0.00715637207, -0.707106829, 0, -0.707106829, -0.707106829, 0, 0.707106829, 0, 1, 0), CFrame.new(0,0,0), Part74, Handle, "HandleToPart74")	
	
----------------------------------------------------

Part75 = CreatePart(Daggers, "Part75", "Cyan", Vector3.new(0.400000006, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part75Mesh = CreateMesh(Part75, Vector3.new(0.449999988, 0.50999999, 0.100000001), "BlockMesh")		
Part75Weld = CreateWeld(Part75,  CFrame.new(1.10213089, -0.715010047, -0.00715637207, -0.707106829, 0, -0.707106829, -0.707106829, 0, 0.707106829, 0, 1, 0), CFrame.new(0,0,0), Part75, Handle, "HandleToPart75")	
	
----------------------------------------------------

Part76 = CreatePart(Daggers, "Part76", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part76Mesh = CreateMesh(Part76, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part76Weld = CreateWeld(Part76,  CFrame.new(1.04141998, -0.705724001, -0.00715637207, -0.707106829, 0, -0.707106829, -0.707106829, 0, 0.707106829, 0, 1, 0), CFrame.new(0,0,0), Part76, Handle, "HandleToPart76")	
	
----------------------------------------------------

Part77 = CreatePart(Daggers, "Part77", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part77Mesh = CreateMesh(Part77, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part77Weld = CreateWeld(Part77,  CFrame.new(1.04141998, -0.585720003, -0.00715637207, -0.707106829, 0, -0.707106829, -0.707106829, 0, 0.707106829, 0, 1, 0), CFrame.new(0,0,0), Part77, Handle, "HandleToPart77")	
	
----------------------------------------------------

Part78 = CreatePart(Daggers, "Part78", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part78Mesh = CreateMesh(Part78, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part78Weld = CreateWeld(Part78,  CFrame.new(0.981414795, -0.645720005, -0.00716018677, -0.707106829, 0, -0.707106829, -0.707106829, 0, 0.707106829, 0, 1, 0), CFrame.new(0,0,0), Part78, Handle, "HandleToPart78")	
	
----------------------------------------------------

Part79 = CreatePart(Daggers, "Part79", "Cyan", Vector3.new(0.400000006, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part79Mesh = CreateMesh(Part79, Vector3.new(0.449999988, 0.50999999, 0.100000001), "BlockMesh")		
Part79Weld = CreateWeld(Part79,  CFrame.new(0.982131958, -0.715011001, -0.00716018677, -0.707106829, 0, 0.707106829, 0.707106829, 0, 0.707106829, 0, 1, 0), CFrame.new(0,0,0), Part79, Handle, "HandleToPart79")	
	
----------------------------------------------------

Part80 = CreatePart(Daggers, "Part80", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part80Mesh = CreateMesh(Part80, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part80Weld = CreateWeld(Part80,  CFrame.new(1.04284286, -1.10268593e-005, -0.712875366, 0.707107842, 0, 0.707105815, 0, 1, 0, -0.707105815, 0, 0.707107842), CFrame.new(0,0,0), Part80, Handle, "HandleToPart80")	
	
----------------------------------------------------

Part81 = CreatePart(Daggers, "Part81", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part81Mesh = CreateMesh(Part81, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part81Weld = CreateWeld(Part81,  CFrame.new(1.10284805, -8.04662704e-006, -0.652870178, 0.707107842, 0, 0.707105815, 0, 1, 0, -0.707105815, 0, 0.707107842), CFrame.new(0,0,0), Part81, Handle, "HandleToPart81")	
	
----------------------------------------------------

Part82 = CreatePart(Daggers, "Part82", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part82Mesh = CreateMesh(Part82, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part82Weld = CreateWeld(Part82,  CFrame.new(1.04284286, -1.00135803e-005, -0.592868805, 0.707107842, 0, 0.707105815, 0, 1, 0, -0.707105815, 0, 0.707107842), CFrame.new(0,0,0), Part82, Handle, "HandleToPart82")	
	
----------------------------------------------------

Part83 = CreatePart(Daggers, "Part83", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part83Mesh = CreateMesh(Part83, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part83Weld = CreateWeld(Part83,  CFrame.new(1.04141998, -8.04662704e-006, 0.578552246, -0.707107842, 0, -0.707105815, 0, 1, 0, 0.707105815, 0, -0.707107842), CFrame.new(0,0,0), Part83, Handle, "HandleToPart83")	
	
----------------------------------------------------

Part84 = CreatePart(Daggers, "Part84", "Cyan", Vector3.new(0.400000006, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part84Mesh = CreateMesh(Part84, Vector3.new(0.449999988, 0.50999999, 0.100000001), "BlockMesh")		
Part84Weld = CreateWeld(Part84,  CFrame.new(0.982131958, -9.00030136e-006, 0.707839966, -0.707106829, 0, 0.707106829, 0, 1, 0, -0.707106829, 0, -0.707106829), CFrame.new(0,0,0), Part84, Handle, "HandleToPart84")	
	
----------------------------------------------------

Part85 = CreatePart(Daggers, "Part85", "Cyan", Vector3.new(0.400000006, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part85Mesh = CreateMesh(Part85, Vector3.new(0.449999988, 0.50999999, 0.100000001), "BlockMesh")		
Part85Weld = CreateWeld(Part85,  CFrame.new(1.10213089, -1.10268593e-005, 0.707839966, -0.707107842, 0, -0.707105815, 0, 1, 0, 0.707105815, 0, -0.707107842), CFrame.new(0,0,0), Part85, Handle, "HandleToPart85")	
	
----------------------------------------------------

Part86 = CreatePart(Daggers, "Part86", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part86Mesh = CreateMesh(Part86, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part86Weld = CreateWeld(Part86,  CFrame.new(1.04141998, -8.04662704e-006, 0.698554993, -0.707107842, 0, -0.707105815, 0, 1, 0, 0.707105815, 0, -0.707107842), CFrame.new(0,0,0), Part86, Handle, "HandleToPart86")	
	
----------------------------------------------------

Part87 = CreatePart(Daggers, "Part87", "Cyan", Vector3.new(0.400000006, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part87Mesh = CreateMesh(Part87, Vector3.new(0.449999988, 0.50999999, 0.100000001), "BlockMesh")		
Part87Weld = CreateWeld(Part87,  CFrame.new(0.982131958, -9.00030136e-006, -0.722160339, 0.707107842, 0, 0.707105815, 0, 1, 0, -0.707105815, 0, 0.707107842), CFrame.new(0,0,0), Part87, Handle, "HandleToPart87")	
	
----------------------------------------------------

Part88 = CreatePart(Daggers, "Part88", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part88Mesh = CreateMesh(Part88, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part88Weld = CreateWeld(Part88,  CFrame.new(0.982841492, -8.04662704e-006, -0.652870178, 0.707107842, 0, 0.707105815, 0, 1, 0, -0.707105815, 0, 0.707107842), CFrame.new(0,0,0), Part88, Handle, "HandleToPart88")	
	
----------------------------------------------------

Part89 = CreatePart(Daggers, "Part89", "Cyan", Vector3.new(0.400000006, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part89Mesh = CreateMesh(Part89, Vector3.new(0.449999988, 0.50999999, 0.100000001), "BlockMesh")		
Part89Weld = CreateWeld(Part89,  CFrame.new(1.10213089, -9.00030136e-006, -0.722164154, 0.707106829, 0, -0.707106829, 0, 1, 0, 0.707106829, 0, 0.707106829), CFrame.new(0,0,0), Part89, Handle, "HandleToPart89")	
	
----------------------------------------------------

Part90 = CreatePart(Daggers, "Part90", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part90Mesh = CreateMesh(Part90, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part90Weld = CreateWeld(Part90,  CFrame.new(0.98141098, -1.00135803e-005, 0.638549805, -0.707107842, 0, -0.707105815, 0, 1, 0, 0.707105815, 0, -0.707107842), CFrame.new(0,0,0), Part90, Handle, "HandleToPart90")	
	
----------------------------------------------------

Part91 = CreatePart(Daggers, "Part91", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part91Mesh = CreateMesh(Part91, Vector3.new(0.300000012, 0.50999999, 0.300000012), "BlockMesh")		
Part91Weld = CreateWeld(Part91,  CFrame.new(1.10141754, -9.00030136e-006, 0.638557434, -0.707107842, 0, -0.707105815, 0, 1, 0, 0.707105815, 0, -0.707107842), CFrame.new(0,0,0), Part91, Handle, "HandleToPart91")	
	
----------------------------------------------------

Part92 = CreatePart(Daggers, "Part92", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part92Mesh = CreateMesh(Part92, Vector3.new(0.25, 0.409999996, 0.25), "CylinderMesh")		
Part92Weld = CreateWeld(Part92,  CFrame.new(1.59999847, 2.30073929e-005, 0.499996185, 0, 0, 1, 0, 1, 0, -1, 0, 0), CFrame.new(0,0,0), Part92, Handle, "HandleToPart92")	
	
----------------------------------------------------

Part93 = CreatePart(Daggers, "Part93", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part93Mesh = CreateMesh(Part93, Vector3.new(0.25, 0.409999996, 0.25), "CylinderMesh")		
Part93Weld = CreateWeld(Part93,  CFrame.new(1.70000076, 4.59551811e-005, 0.399997711, 0, 0, 1, 0, 1, 0, -1, 0, 0), CFrame.new(0,0,0), Part93, Handle, "HandleToPart93")	
	
----------------------------------------------------

Part94 = CreatePart(Daggers, "Part94", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part94Mesh = CreateMesh(Part94, Vector3.new(0.25, 0.409999996, 0.25), "CylinderMesh")		
Part94Weld = CreateWeld(Part94,  CFrame.new(1.80000305, 4.59551811e-005, 0.499996185, 0, 0, 1, 0, 1, 0, -1, 0, 0), CFrame.new(0,0,0), Part94, Handle, "HandleToPart94")	
	
----------------------------------------------------

Part95 = CreatePart(Daggers, "Part95", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part95Mesh = CreateMesh(Part95, Vector3.new(0.25, 0.409999996, 0.25), "CylinderMesh")		
Part95Weld = CreateWeld(Part95,  CFrame.new(1.59999847, 4.59551811e-005, 0.300003052, 0, 0, 1, 0, 1, 0, -1, 0, 0), CFrame.new(0,0,0), Part95, Handle, "HandleToPart95")	
	
----------------------------------------------------

Part96 = CreatePart(Daggers, "Part96", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part96Mesh = CreateMesh(Part96, Vector3.new(0.25, 0.409999996, 0.25), "CylinderMesh")		
Part96Weld = CreateWeld(Part96,  CFrame.new(1.79999924, 4.59551811e-005, 0.299999237, 0, 0, 1, 0, 1, 0, -1, 0, 0), CFrame.new(0,0,0), Part96, Handle, "HandleToPart96")	
	
----------------------------------------------------

Part97 = CreatePart(Daggers, "Part97", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part97Mesh = CreateMesh(Part97, Vector3.new(0.25, 0.409999996, 0.25), "CylinderMesh")		
Part97Weld = CreateWeld(Part97,  CFrame.new(1.5, 4.59551811e-005, 0.399993896, 0, 0, 1, 0, 1, 0, -1, 0, 0), CFrame.new(0,0,0), Part97, Handle, "HandleToPart97")	
	
----------------------------------------------------

Part98 = CreatePart(Daggers, "Part98", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part98Mesh = CreateMesh(Part98, Vector3.new(0.25, 0.409999996, 0.25), "CylinderMesh")		
Part98Weld = CreateWeld(Part98,  CFrame.new(1.39999771, 6.8962574e-005, 0.5, 0, 0, 1, 0, 1, 0, -1, 0, 0), CFrame.new(0,0,0), Part98, Handle, "HandleToPart98")	
	
----------------------------------------------------

Part99 = CreatePart(Daggers, "Part99", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part99Mesh = CreateMesh(Part99, Vector3.new(0.25, 0.409999996, 0.25), "CylinderMesh")		
Part99Weld = CreateWeld(Part99,  CFrame.new(1.90000153, 6.8962574e-005, 0.399997711, 0, 0, 1, 0, 1, 0, -1, 0, 0), CFrame.new(0,0,0), Part99, Handle, "HandleToPart99")	
	
----------------------------------------------------

Part100 = CreatePart(Daggers, "Part100", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.200000003), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part100Mesh = CreateMesh(Part100, Vector3.new(0.25, 0.409999996, 0.25), "CylinderMesh")		
Part100Weld = CreateWeld(Part100,  CFrame.new(2, 6.8962574e-005, 0.299999237, 0, 0, 1, 0, 1, 0, -1, 0, 0), CFrame.new(0,0,0), Part100, Handle, "HandleToPart100")	
	
----------------------------------------------------

Part101 = CreatePart(Daggers, "Part101", "Cyan", Vector3.new(0.200000003, 0.200000003, 1.79999995), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part101Mesh = CreateMesh(Part101, Vector3.new(0.409999996, 1, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part101Weld = CreateWeld(Part101,  CFrame.new(4.29999924, 0, 0.0899963379, 0, 0, -1, -1, 0, 0, 0, 1, 0), CFrame.new(0,0,0), Part101, Handle, "HandleToPart101")	
	
----------------------------------------------------

Part102 = CreatePart(Daggers, "Part102", "Cyan", Vector3.new(0.200000003, 0.200000003, 2), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part102Mesh = CreateMesh(Part102, Vector3.new(0.409999996, 1, 1), "SpecialMesh", Enum.MeshType.Brick)		
Part102Weld = CreateWeld(Part102,  CFrame.new(2.5, 0, 0.0899963379, 0, 0, -1, -1, 0, 0, 0, 1, 0), CFrame.new(0,0,0), Part102, Handle, "HandleToPart102")	
	
----------------------------------------------------

Part103 = CreatePart(Daggers, "Part103", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.499999881), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part103Mesh = CreateMesh(Part103, Vector3.new(0.389999986, 0.600000024, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part103Weld = CreateWeld(Part103,  CFrame.new(4.00980759, 0, -0.060005188, 0, -0.500000238, 0.866025388, 1, 0, 0, 0, 0.866025388, 0.500000238), CFrame.new(0,0,0), Part103, Handle, "HandleToPart103")	
	
----------------------------------------------------

Part104 = CreatePart(Daggers, "Part104", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.699999869), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part104Mesh = CreateMesh(Part104, Vector3.new(0.389999986, 0.600000024, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part104Weld = CreateWeld(Part104,  CFrame.new(3.52320099, 2.30073929e-005, -0.11000824, 0, -0.500000238, 0.866025388, 1, 0, 0, 0, 0.866025388, 0.500000238), CFrame.new(0,0,0), Part104, Handle, "HandleToPart104")	
	
----------------------------------------------------

Part105 = CreatePart(Daggers, "Part105", "Cyan", Vector3.new(0.200000003, 0.200000003, 1.0999999), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part105Mesh = CreateMesh(Part105, Vector3.new(0.389999986, 0.600000024, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part105Weld = CreateWeld(Part105,  CFrame.new(2.94999695, 2.30073929e-005, -0.100006104, 0, -0.258818984, 0.965925872, 1, 0, 0, 0, 0.965925872, 0.258818984), CFrame.new(0,0,0), Part105, Handle, "HandleToPart105")	
	
----------------------------------------------------

Part106 = CreatePart(Daggers, "Part106", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.899999857), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part106Mesh = CreateMesh(Part106, Vector3.new(0.389999986, 0.600000024, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part106Weld = CreateWeld(Part106,  CFrame.new(2.41661835, 2.30073929e-005, -0.0717697144, 0, -0.258818984, 0.965925872, 1, 0, 0, 0, 0.965925872, 0.258818984), CFrame.new(0,0,0), Part106, Handle, "HandleToPart106")	
	
----------------------------------------------------

Part107 = CreatePart(Daggers, "Part107", "White", Vector3.new(1, 0.200000003, 0.200000003), Enum.Material.SmoothPlastic, 0, Enum.PartType.Block)		
Part107Mesh = CreateMesh(Part107, Vector3.new(1.00399995, 1.20000005, 1.20000005), "BlockMesh")		
Part107Weld = CreateWeld(Part107,  CFrame.new(0, 2.39610672e-005, -7.62939453e-006, 1, 0, 0, 0, 0.707106829, 0.707106829, 0, -0.707106829, 0.707106829), CFrame.new(0,0,0), Part107, Handle, "HandleToPart107")	
	
----------------------------------------------------

Part108 = CreatePart(Daggers, "Part108", "Cyan", Vector3.new(0.200000003, 0.200000003, 0.499999851), Enum.Material.Neon, 0, Enum.PartType.Block)		
Part108Mesh = CreateMesh(Part108, Vector3.new(0.389999986, 0.600000024, 1), "SpecialMesh", Enum.MeshType.Wedge)		
Part108Weld = CreateWeld(Part108,  CFrame.new(2.00979996, 4.59551811e-005, -0.0200119019, 0, -0.258818984, 0.965925872, 1, 0, 0, 0, 0.965925872, 0.258818984), CFrame.new(0,0,0), Part108, Handle, "HandleToPart108")	
	
----------------------------------------------------

Part109 = CreatePart(Daggers, "Part109", "Cyan", Vector3.new(0.200000003, 0.200000003, 3.40000033), Enum.Material.Neon, 1, Enum.PartType.Block)		
Part109Mesh = CreateMesh(Part109, Vector3.new(0.409999996, 1, 1), "SpecialMesh", Enum.MeshType.Brick)		
Part109Weld = CreateWeld(Part109,  CFrame.new(3.29999924, 0, -0.0100021362, 0, 0, -1, -1, 0, 0, 0, 1, 0), CFrame.new(0,0,0), Part109, Handle, "HandleToPart109")	

Daggers2 = Daggers:clone()
Daggers2.Parent = Character
Daggers2.Handle.HandleToRightArm.Part1 = LeftArm
Handle2Weld = Daggers2.Handle.HandleToRightArm


--[[ References ]]--

RightArmReference = CreatePart(Character, "Right arm reference", "None", Vector3.new(), "SmoothPlastic", 1, "Block")
RightArmReferenceWeld = CreateWeld(RightArmReference,  CFrame.new(0,1.5,0), CFrame.new(0,0,0), RightArm, RightArmReference, "LeftArmReferenceToRightArm")

----------------------------------------------------------------------------------------------------------------------------

LeftArmReference = CreatePart(Character, "Left arm reference", "None", Vector3.new(), "SmoothPlastic", 1, "Block")
LeftArmReferenceWeld = CreateWeld(LeftArmReference,  CFrame.new(0,1.5,0), CFrame.new(0,0,0), LeftArm, LeftArmReference, "LeftArmReferenceToLeftArm")

----------------------------------------------------------------------------------------------------------------------------

TorsoReference = CreatePart(Character, "Torso reference", "None", Vector3.new(), "SmoothPlastic", 1, "Block")
TorsoReferenceWeld = CreateWeld(TorsoReference,  CFrame.new(0,0,0), CFrame.new(0,0,0), Torso, TorsoReference, "TorsoReferenceToTorsoArm")

----------------------------------------------------------------------------------------------------------------------------

RootPartReference = CreatePart(Character, "Root part reference", "None", Vector3.new(), "SmoothPlastic", 1, "Block")
RootPartReferenceWeld = CreateWeld(RootPartReference,  CFrame.new(0,0,0), CFrame.new(0,0,0), RootPart, RootPartReference, "RootPartReferenceToRootPart")

--[[ Damage function ]]-- 

function Display(HitCharacter, DisplayText, DisplayType)
	

if HitCharacter:FindFirstChild("Head") then
local DamageShowingPart = Instance.new("Part",Services.Workspace) 
DamageShowingPart.Name = "ShowDamage" 
DamageShowingPart.BrickColor = BrickColor.new("Crimson")
DamageShowingPart.Size = Vector3.new() 
DamageShowingPart.Material = "Neon" 
DamageShowingPart.Transparency = 1

local DisplayGui = Instance.new("BillboardGui", DamageShowingPart)
DisplayGui.Name = "Damage"
DisplayGui.AlwaysOnTop = true
DisplayGui.Size = UDim2.new(2, 0, 2, 0)

local DisplayNumber = Instance.new("TextLabel", DisplayGui)
DisplayNumber.Size = UDim2.new(1,0,1,0)
DisplayNumber.TextTransparency = 1
DisplayNumber.TextStrokeTransparency = 1
DisplayNumber.BackgroundTransparency = 1
DisplayNumber.TextTransparency = 1

DisplayNumber.Font = "SourceSansBold"
DisplayNumber.TextScaled = true

local BodyVelocity = Instance.new("BodyVelocity", DamageShowingPart)
BodyVelocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
BodyVelocity.Velocity = Vector3.new(0,0.5,0)	
if DisplayType == "Stun" then
BodyVelocity.Velocity = Vector3.new(0,0.1,0)	
DisplayGui.Size = UDim2.new(5, 0, 5, 0)
DisplayNumber.TextStrokeColor3 = BrickColor.Black().Color
DisplayNumber.TextColor3 = BrickColor.new("Bright yellow").Color
DisplayNumber.Text = "Stunned!"
DamageShowingPart.Position = HitCharacter.Head.Position + Vector3.new(0,5,0)

end 

if DisplayType == "Damage" then
DisplayNumber.TextStrokeColor3 = BrickColor.Black().Color
DisplayNumber.TextColor3 = BrickColor.new("Really red").Color
DisplayNumber.Text = "-" .. DisplayText
DamageShowingPart.Position = HitCharacter.Head.Position + Vector3.new(math.random(-1,1),5,math.random(-1,1))
end

coroutine.resume(coroutine.create(function()

while DisplayNumber.TextTransparency > 0 do
wait()

DisplayNumber.TextStrokeTransparency = DisplayNumber.BackgroundTransparency  - 0.1
DisplayNumber.TextTransparency = DisplayNumber.TextTransparency - 0.1

end
AddVFX("Display", DamageShowingPart, 0.05)

end))


Services.Debris:AddItem(DamageShowingPart, 10)


	
end	
	
	
end

function DoDamage(Hit, HitCharacter, Type, MinDamage, MaxDamage, PartLook, Knockback, SFX, SFXPitch, Delay, PartLook)

if Hit.Health == 0 or HitCharacter:FindFirstChild(Player.Name) then
return
end

SoundEffect(HitCharacter.Torso, SFX, 10, SFXPitch, false)


if Type == "Stand" then
HitCharacter.Humanoid.PlatformStand = true
coroutine.resume(coroutine.create(function()
wait(3)
	
HitCharacter.Humanoid.PlatformStand = false
	
end))	
	
end

local DelayDebounce = Instance.new("Folder", HitCharacter)
DelayDebounce.Name = Player.Name
Services.Debris:AddItem(DelayDebounce, Delay)

local Damage = math.random(MinDamage, MaxDamage)
HitCharacter.Torso.Velocity = PartLook.CFrame.lookVector * Knockback

coroutine.resume(coroutine.create(function()
wait()
Hit:TakeDamage(Damage)
Display(HitCharacter, Damage, "Damage")
end))	

end

function ValidateDamage(Part, Type, Distance, MinDamage, MaxDamage, PartLook, Knockback, SFX, SFXPitch, Delay, Effect, Stat, StatsDecreaseNumber, StatsDecreaseDuration)
	
for ChildrenNumber, Children in pairs(Services.Workspace:children()) do
if Children ~= Character and Children:FindFirstChild("Humanoid") and Children:FindFirstChild("Head") then
	
local HitHead = Children.Head

local TargetPosition = HitHead.Position - Part.Position
local Magnitude = TargetPosition.magnitude

if Magnitude < Distance then

local Hit = Children.Humanoid
local HitCharacter = Children

DoDamage(Hit, HitCharacter, Type, MinDamage, MaxDamage, PartLook, Knockback, SFX, SFXPitch, Delay, PartLook, Effect, Stat, StatsDecreaseNumber, StatsDecreaseDuration)

end
end		
end
end

--[[ Attacks ]]--

function Attack1()
Attacking = true	

for i = 1,10 do
Wait2()	
	

Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.3, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(-0.3, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(0 , -0.2, 1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5, 0) * CFrame.Angles(0 , 0.2, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,-0.3), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,0.3), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
	
end
SoundEffect(Torso, 231917871, 1, 2, false)
for i = 1,10 do
Wait2()	
ValidateDamage(Torso, "Normal", 10, 10, 15, RootPart, 5, 199149269, 1, 0.3)
RootPart.Velocity = RootPart.CFrame.lookVector * 50	
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(0.3, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1,0.5, -0.5) * CFrame.Angles(0 , 2.8, 1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1,0, -0.5) * CFrame.Angles(0 , -2.8, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,0), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,-0), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-0.5) * CFrame.Angles(-1.6,1.6,0) * CFrame.Angles(-1.6,0,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(-1.6,1.6,0) * CFrame.Angles(-1.6,0,0), 0.2)
	
end

	
Attacking = false
end



function Attack2()
Attacking = true	

for i = 1,10 do
Wait2()	
RootPart.Velocity = RootPart.CFrame.lookVector * 25	
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(0.3, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1,0.5, -0.5) * CFrame.Angles(0 , 2.8, 1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1,0, -0.5) * CFrame.Angles(0 , -2.8, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,0), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,-0), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0) * CFrame.Angles(-1,0,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0) * CFrame.Angles(-1,0,0), 0.2)
	
end
BlockVFX(Torso.CFrame, "Cyan", "Neon", 0, 0.05, 5, 5, 5, 3, 3, 3)
CircleVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 5, 5, 5, 5, 5, 5)
local TouchedFloor, WavePosition = FindPartOnRay(LeftArmReference.Position, CFrame.new(LeftArmReference.Position, LeftArmReference.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
if TouchedFloor then
WaveVFX(CFrame.new(WavePosition), "Cyan", "Neon", 0 , 0.05, 1,1.5,1, 1,0,1)	
end
ValidateDamage(Torso, "Normal", 10, 10, 15, RootPart, 5, 199149269, 1, 0.3)

wait()
RootPartReferenceWeld.C0 = CFrame.new(0,0,-25)
Character:MoveTo(RootPartReference.Position)


BlockVFX(Torso.CFrame, "Cyan", "Neon", 0, 0.05, 5, 5, 5, 3, 3, 3)
CircleVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 5, 5, 5, 5, 5, 5)
local TouchedFloor, WavePosition = FindPartOnRay(LeftArmReference.Position, CFrame.new(LeftArmReference.Position, LeftArmReference.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
if TouchedFloor then
WaveVFX(CFrame.new(WavePosition) , "Cyan", "Neon", 0 , 0.05, 1,1.5,1, 1,0,1)	
end
SoundEffect(Torso, 320557563, 1, 1, false)
for i = 1,10 do
Wait2()	
	

Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.3, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(-0.3, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(0 , -0.2, 1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5, 0) * CFrame.Angles(0 , 0.2, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,-0.3), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,0.3), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
	
end
	
Attacking = false
end

function Attack3()
Attacking = true
for i = 1,2 do
SoundEffect(Torso, 231917871, 1, 2, false)
for i = 1,10 do
Wait2()	
ValidateDamage(Torso, "Normal", 10, 10, 15, RootPart, 5, 199149269, 1, 0.3)
RootPart.Velocity = RootPart.CFrame.lookVector * 50	
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(0, 0, -i/2), 0.5)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(0 , -0, 1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5, 0) * CFrame.Angles(0 , 0, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,-0), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,0), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,-1.6,0), 0.2)
	
end
end
	
Attacking = false
end

function Attack4()
Attacking = true

for i = 1,5 do
Wait2()	
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.3, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(-0.3, 0, 0), 0.5)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(-0.5 , -0, 0.2), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5, 0) * CFrame.Angles(0 , 0.6, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,-0.3), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,0.3), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,-1.6,0), 0.2)
	
end
	
for i = 1,5 do
Wait2()	
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.3, 0, 1.6), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(0, 0.3, -1.6), 0.5)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(-0.8 , -0, 0.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5, 0) * CFrame.Angles(0 , 0, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,-0.3), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,0.3), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
	
end
local RootPartLook = RootPart.CFrame.lookVector
	
local Tornado = Instance.new("Part", Services.Workspace)
Tornado.Size = Vector3.new()
Tornado.CanCollide = false
Tornado.Position = RootPart.Position
Tornado.Transparency = 1

Services.Debris:AddItem(Tornado, 1)

local TornadoVelocity = Instance.new("BodyVelocity", Tornado)
TornadoVelocity.Velocity = RootPartLook * 30
TornadoVelocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)

SoundEffect(Tornado, 324867021, 1, 1, false)

coroutine.resume(coroutine.create(function()
local TornadoRotate = 0
while Tornado.Parent == Services.Workspace do
Wait2()	

local TouchedFloor, WavePosition = FindPartOnRay(Tornado.Position, CFrame.new(Tornado.Position, Tornado.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
if TouchedFloor then
WaveVFX(CFrame.new(WavePosition)  * CFrame.Angles(0,TornadoRotate,0), "Cyan", "Neon", 0 , 0.1, 10,2,10, 0,0,0)	
WaveVFX(CFrame.new(WavePosition)  * CFrame.Angles(0,TornadoRotate,0), "White", "Neon", 0 , 0.1, 5,2,5, 0,0,0)	
end

TornadoRotate = TornadoRotate + 0.1
TornadoVFX(Tornado.CFrame * CFrame.new(0,2,0) * CFrame.Angles(0,TornadoRotate,3.2), "Cyan", "Neon", 0.1, 0.5, 7, 7, 7, 0, 0, 0)
TornadoVFX(Tornado.CFrame * CFrame.new(0,2,0) * CFrame.Angles(0,TornadoRotate,3.2), "White", "Neon", 0, 0.5, 3,5, 3, 0, 0, 0)
ValidateDamage(Tornado, "Normal", 10, 6, 8, Tornado, 5, 199149269, 1, 0.3)
end	
end))	
	
Attacking = false
end


function Move1()
Attacking = true

for i = 1,10 do
Wait2()	
	

Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.3, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(-0.3, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(0 , -0.2, 1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5, 0) * CFrame.Angles(0 , 0.2, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,-0.3), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,0.3), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
	
end

for i = 1, 3 do

BlockVFX(Torso.CFrame, "Cyan", "Neon", 0, 0.05, 5, 5, 5, 3, 3, 3)
CircleVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 5, 5, 5, 5, 5, 5)
local TouchedFloor, WavePosition = FindPartOnRay(Torso.Position, CFrame.new(Torso.Position, Torso.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
if TouchedFloor then
WaveVFX(CFrame.new(WavePosition), "Cyan", "Neon", 0 , 0.05, 1,1.5,1, 1,0,1)	
end
ValidateDamage(Torso, "Normal", 20, 10, 15, RootPart, 5, 199149269, 1, 0.3)

wait()
RootPartReferenceWeld.C0 = CFrame.new(0,0,-10)
Character:MoveTo(RootPartReference.Position)


BlockVFX(Torso.CFrame, "Cyan", "Neon", 0, 0.05, 5, 5, 5, 3, 3, 3)
CircleVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 5, 5, 5, 5, 5, 5)
local TouchedFloor, WavePosition = FindPartOnRay(Torso.Position, CFrame.new(Torso.Position, Torso.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
if TouchedFloor then
WaveVFX(CFrame.new(WavePosition) , "Cyan", "Neon", 0 , 0.05, 1,1.5,1, 1,0,1)	
end
SoundEffect(Torso, 320557563, 1, 1, false)

end

for i = 1 ,3 do
	
for i = 1,10 do
Wait2()	
	

Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.3, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(-0.3, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(0 , -0.2, 1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5, 0) * CFrame.Angles(0 , 0.2, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,-0.3), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,0.3), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
	
end	
BlockVFX(Torso.CFrame, "Cyan", "Neon", 0, 0.05, 5, 5, 5, 3, 3, 3)
CircleVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 5, 5, 5, 5, 5, 5)
local TouchedFloor, WavePosition = FindPartOnRay(Torso.Position, CFrame.new(Torso.Position, Torso.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
if TouchedFloor then
WaveVFX(CFrame.new(WavePosition), "Cyan", "Neon", 0 , 0.05, 1,1.5,1, 1,0,1)	
end
ValidateDamage(Torso, "Normal", 10, 10, 15, RootPart, 5, 199149269, 1, 0.3)

wait()
RootPartReferenceWeld.C0 = CFrame.new(0,0,20)
Character:MoveTo(RootPartReference.Position)


BlockVFX(Torso.CFrame, "Cyan", "Neon", 0, 0.05, 5, 5, 5, 3, 3, 3)
CircleVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 5, 5, 5, 5, 5, 5)
local TouchedFloor, WavePosition = FindPartOnRay(Torso.Position, CFrame.new(Torso.Position, Torso.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
if TouchedFloor then
WaveVFX(CFrame.new(WavePosition) , "Cyan", "Neon", 0 , 0.05, 1,1.5,1, 1,0,1)	
end
SoundEffect(Torso, 231917871, 1, 2, false)

	for i = 1,10 do
Wait2()	
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(0.3, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1,0.5, -0.5) * CFrame.Angles(0 , 2.8, 1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1,0, -0.5) * CFrame.Angles(0 , -2.8, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,0), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,-0), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0) * CFrame.Angles(-1,0,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0) * CFrame.Angles(-1,0,0), 0.2)
	
end
end
Attacking = false
end


function Move2()
Attacking = true
Humanoid.WalkSpeed = 0
Humanoid.JumpPower = 0
coroutine.resume(coroutine.create(function()
for i = 1, 5 do
Wait2(10)
BlockVFX(RightArmReference.CFrame, "Cyan", "Neon", 0, 0.05, 1, 1, 1, 0.5, 0.5, 0.5)
BlockVFX(LeftArmReference.CFrame, "Cyan", "Neon", 0, 0.05, 1, 1, 1, 0.5, 0.5, 0.5)
	
local TouchedFloor, WavePosition = FindPartOnRay(Torso.Position, CFrame.new(Torso.Position, Torso.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
if TouchedFloor then
WaveVFX(CFrame.new(WavePosition), "Cyan", "Neon", 0 , 0.05, 1,1.5,1, 1,0,1)	
end
end
end))
for i = 1,100 do
Wait2()	
	

Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.3, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(-0.3, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(0 , -0.2, 1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5, 0) * CFrame.Angles(0 , 0.2, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,-0.3), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,0.3), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)


end	

	for i = 1,10 do
Wait2()	
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(0.3, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1,0.5, -0.5) * CFrame.Angles(0 , 2.8, 1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1,0, -0.5) * CFrame.Angles(0 , -2.8, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,0), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,-0), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0) * CFrame.Angles(-1,0,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0) * CFrame.Angles(-1,0,0), 0.2)
	
	end
	
	
local RootPartLook = RootPart.CFrame.lookVector
	
local Tornado = Instance.new("Part", Services.Workspace)
Tornado.Size = Vector3.new()
Tornado.CanCollide = false
Tornado.Position = RootPart.Position
Tornado.Transparency = 1

Services.Debris:AddItem(Tornado, 2)

local TornadoVelocity = Instance.new("BodyVelocity", Tornado)
TornadoVelocity.Velocity = RootPartLook * 100
TornadoVelocity.MaxForce = Vector3.new(math.huge,math.huge,math.huge)

SoundEffect(Tornado, 324867021, 1, 1, false)

coroutine.resume(coroutine.create(function()
local TornadoRotate = 0
while Tornado.Parent == Services.Workspace do
Wait2()	

local TouchedFloor, WavePosition = FindPartOnRay(Tornado.Position, CFrame.new(Tornado.Position, Tornado.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
if TouchedFloor then
WaveVFX(CFrame.new(WavePosition)  * CFrame.Angles(0,TornadoRotate,0), "Cyan", "Neon", 0 , 0.1, 20,4,20, 0,0,0)	
WaveVFX(CFrame.new(WavePosition)  * CFrame.Angles(0,TornadoRotate,0), "White", "Neon", 0 , 0.1, 15,4,15, 0,0,0)	
end

TornadoRotate = TornadoRotate + 0.1
TornadoVFX(Tornado.CFrame * CFrame.new(0,2,0) * CFrame.Angles(0,TornadoRotate,3.2), "Cyan", "Neon", 0.1, 0.5, 17, 17, 17, 0, 0, 0)
TornadoVFX(Tornado.CFrame * CFrame.new(0,2,0) * CFrame.Angles(0,TornadoRotate,3.2), "White", "Neon", 0, 0.5, 13,15, 13, 0, 0, 0)
ValidateDamage(Tornado, "Stand", 10, 10, 13, Tornado, 5, 199149269, 1, 0.1)
end	
end))	
	
Humanoid.WalkSpeed = 20
Humanoid.JumpPower = 50
Attacking = false

end


function Move3()
Attacking = true

for i = 1,10 do
Wait2()	
	

Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.3, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(-0.3, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(0 , -0.2, 1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5, 0) * CFrame.Angles(0 , 0.2, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,-0.3), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,0.3), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
	
end
Humanoid.WalkSpeed = 30
Humanoid.JumpPower = 0
BlockVFX(Torso.CFrame, "Cyan", "Neon", 0, 0.05, 5, 5, 5, 3, 3, 3)
CircleVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 5, 5, 5, 5, 5, 5)
local TouchedFloor, WavePosition = FindPartOnRay(Torso.Position, CFrame.new(Torso.Position, Torso.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
if TouchedFloor then
WaveVFX(CFrame.new(WavePosition) , "Cyan", "Neon", 0 , 0.05, 1,1.5,1, 1,0,1)	
end
Daggers.Parent = nil
Daggers2.Parent = nil
for i = 1,10 do
Wait2()
Head.face.Transparency = 1
for i,v in pairs(Character:children()) do
if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
	
v.Transparency = v.Transparency + 0.1	
	
end
	
if v:IsA("Accessory") then

v.Handle.Transparency = v.Handle.Transparency + 0.1
	
end
end	
end

wait(3)	

Daggers.Parent = Character
Daggers2.Parent = Character

for i = 1,10 do
Wait2()
Head.face.Transparency = 0
for i,v in pairs(Character:children()) do
if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
	
v.Transparency = v.Transparency - 0.1	
	
end	
if v:IsA("Accessory") then

v.Handle.Transparency = v.Handle.Transparency - 0.1
	
end	
end	
end
SoundEffect(Torso, 231917871, 1, 2, false)
BlockVFX(Torso.CFrame, "Cyan", "Neon", 0, 0.05, 5, 5, 5, 3, 3, 3)
CircleVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 5, 5, 5, 5, 5, 5)
local TouchedFloor, WavePosition = FindPartOnRay(Torso.Position, CFrame.new(Torso.Position, Torso.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
if TouchedFloor then
WaveVFX(CFrame.new(WavePosition) , "Cyan", "Neon", 0 , 0.05, 1,1.5,1, 1,0,1)	
end

for i = 1,10 do
Wait2()	
ValidateDamage(Torso, "Normal", 10, 36, 46, RootPart, 5, 199149269, 1, 0.3)
RootPart.Velocity = RootPart.CFrame.lookVector * 50	
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(0.3, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1,0.5, -0.5) * CFrame.Angles(0 , 2.8, 1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1,0, -0.5) * CFrame.Angles(0 , -2.8, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,0), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,-0), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-0.5) * CFrame.Angles(-1.6,1.6,0) * CFrame.Angles(-1.6,0,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(-1.6,1.6,0) * CFrame.Angles(-1.6,0,0), 0.2)
	
end

Humanoid.WalkSpeed = 20
Humanoid.JumpPower = 50
Attacking = false

end

function Move4()
Attacking = true

for i = 1,10 do
Wait2()	
	

Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.3, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(-0.3, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(0 , -0.2, 1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5, 0) * CFrame.Angles(0 , 0.2, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,-0.3), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,0.3), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
	
end


local RootPartLook = RootPart.CFrame.lookVector
	RootPartReferenceWeld.C0 = CFrame.new(0,0,20)
local Tornado = Instance.new("Part", Services.Workspace)
Tornado.Size = Vector3.new()
Tornado.CanCollide = false
Tornado.Position = RootPartReference.Position
Tornado.Transparency = 1
Tornado.Anchored = true

Services.Debris:AddItem(Tornado, 10)

SoundEffect(Tornado, 324867021, 1, 1, false)

coroutine.resume(coroutine.create(function()
local TornadoRotate = 0
while Tornado.Parent == Services.Workspace do
Wait2()	

local TouchedFloor, WavePosition = FindPartOnRay(Tornado.Position, CFrame.new(Tornado.Position, Tornado.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
if TouchedFloor then
WaveVFX(CFrame.new(WavePosition)  * CFrame.Angles(0,TornadoRotate,0), "Cyan", "Neon", 0 , 0.1, 100,20,100, 0,0,0)	
WaveVFX(CFrame.new(WavePosition)  * CFrame.Angles(0,TornadoRotate,0), "White", "Neon", 0 , 0.1, 50,20,50, 0,0,0)	
end

TornadoRotate = TornadoRotate + 0.1
TornadoVFX(Tornado.CFrame * CFrame.new(0,2,0) * CFrame.Angles(0,TornadoRotate,3.2), "Cyan", "Neon", 0.1, 0.5, 70, 70, 70, 0, 0, 0)
TornadoVFX(Tornado.CFrame * CFrame.new(0,2,0) * CFrame.Angles(0,TornadoRotate,3.2), "White", "Neon", 0, 0.5, 30,50, 30, 0, 0, 0)
ValidateDamage(Tornado, "Stand", 50, 3, 6, Tornado, 5, 199149269, 1, 0.3)
end	
end))	


for i = 1,10 do
Wait2()	
RootPart.Velocity = RootPart.CFrame.lookVector * 50	
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0) * CFrame.Angles(0.3, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1,0.5, -0.5) * CFrame.Angles(0 , 2.8, 1.6), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1,0, -0.5) * CFrame.Angles(0 , -2.8, -1.6), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,0), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,-0), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-0.5) * CFrame.Angles(-1.6,1.6,0) * CFrame.Angles(-1.6,0,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,0.5) * CFrame.Angles(-1.6,1.6,0) * CFrame.Angles(-1.6,0,0), 0.2)
	
end


Attacking = false

end

function UseAirCharge()
CanCharge = false
Charge = Charge - 1

local AntiFall = Instance.new("Part", workspace)
AntiFall.Anchored = true
AntiFall.Size = Vector3.new(50,1,50)
AntiFall.Transparency = 1
AntiFall.CFrame = RootPart.CFrame * CFrame.new(0,-2,0)
Services.Debris:AddItem(AntiFall, 1)
Humanoid.JumpPower = 0
SoundEffect(Torso, 169380505, 1, 1, false)
RingVFX(RootPart.CFrame * CFrame.new(0,-2,0) * CFrame.Angles(1.6,0,0), "Cyan", "Neon", 0, 0.05, 5, 5, 5, 3, 3, 3)		
CircleVFX(RootPart.CFrame * CFrame.new(0,-2,0), "Cyan", "Neon", 0, 0.05, 5, 5, 5, 3, 3, 3)	
	
coroutine.resume(coroutine.create(function()
	wait(1)
		CanCharge = true
end))

end


--[[ Other functions ]]--

function Keydown(Key)
if Attacking then
return
end

if Key == "z" and Cooldown1 == MaxCooldown1 and Mana > 20 then
Mana = Mana - 20
Cooldown1 = 0
Move1()	
	
end
if Key == "x" and Cooldown2 == MaxCooldown2 and Mana > 40 then
Cooldown2 = 0
Mana = Mana - 40
Move2()	
	
end
if Key == "c" and Cooldown3 == MaxCooldown3 and Mana > 70 then
Cooldown3 = 0
Mana = Mana - 70
Move3()	
	
end
if Key == "v" and Cooldown4 == MaxCooldown4  and Mana > 99 then
Cooldown4 = 0
Mana = Mana - 100
Move4()	
	
end
if Key == " " and InAir then
	Charging = true
	Humanoid.JumpPower = 0
	
	
end

end

function Keyup(Key)
if Attacking then
return
end

if Key == " "  then
	Charging = false
	Humanoid.JumpPower = 50
	
	
end

end



function MouseClick()
if Attacking then
return
end

if Combo == 1 then
Combo = 2
Attack1()

elseif Combo == 2 then
Combo = 3
Attack2()

elseif Combo == 3 then
Combo = 4
Attack3()

elseif Combo == 4 then
Combo = 1
Attack4()


end
end

Mouse.Button1Down:connect(MouseClick)
Mouse.KeyDown:connect(Keydown)
Mouse.KeyUp:connect(Keyup)

--[[ Values ]]--

DoAnimateVal = 0
DoAnimateVal2 = 0
DoAnimateVal3 = 0
DoAnimateVal4 = 0
Increase = 0
Increase2 = 0
Invert = false
Invert2 = false
Invert3 = false
Invert4 = false
WalkVal = 0

WalkInvert = false
Walk = false

--[[ Looped functions ]]--

function VisualEffects()
for i = 1, #VFXList do
if VFXList[i] then
local VFXConfiguration = VFXList[i]	

if VFXConfiguration then
if VFXConfiguration[1] == "Display" then
if VFXConfiguration[2]:FindFirstChild("Damage") then
VFXConfiguration[2].Damage.TextLabel.TextStrokeTransparency = VFXConfiguration[2].Damage.TextLabel.TextStrokeTransparency + VFXConfiguration[3]
VFXConfiguration[2].Damage.TextLabel.TextTransparency = VFXConfiguration[2].Damage.TextLabel.TextTransparency + VFXConfiguration[3]
end
end
if VFXConfiguration[1] == "Resize" then
if VFXConfiguration[2]:FindFirstChild("Mesh") then
if VFXConfiguration[2].Transparency < 1 then
VFXConfiguration[2].Mesh.Scale = VFXConfiguration[2].Mesh.Scale + Vector3.new(VFXConfiguration[4], VFXConfiguration[5], VFXConfiguration[6])
VFXConfiguration[2].Transparency = VFXConfiguration[2].Transparency + VFXConfiguration[3]
end
end
end
if VFXConfiguration[1] == "Rotate" then
if VFXConfiguration[2].Transparency < 1 then
VFXConfiguration[2].Rotation = VFXConfiguration[2].Rotation + Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
end
end	
end
end
end		
end

function FindPartOnRay(Position, Direction, MaxDistance, Ignore)
return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * MaxDistance), Ignore)
end

function Values()
Increase = Increase + 1
Increase2 = Increase2 + 0.5
	
if WalkVal > 8 then
WalkInvert = true
elseif WalkVal < 1 then
WalkInvert = false
end

if WalkInvert then
WalkVal = WalkVal - 1
elseif not WalkInvert then
WalkVal = WalkVal + 1	
end	
	
if 0.5 < DoAnimateVal then
Invert = true
elseif DoAnimateVal < -0.5 then
Invert = false
end

if 0.2 < DoAnimateVal2 then
Invert2 = true
elseif DoAnimateVal2 < -0.2 then
Invert2 = false
end


if Invert == false then
DoAnimateVal = DoAnimateVal + 0.01
else
DoAnimateVal = DoAnimateVal - 0.01
end 
if Invert2 == false then
DoAnimateVal2 = DoAnimateVal2 + 0.05
else
DoAnimateVal2 = DoAnimateVal2 - 0.05
end


if 1 < DoAnimateVal3 then
Invert3 = true
elseif DoAnimateVal3 < -0 then
Invert3 = false
end

if Invert3 == false then
DoAnimateVal3 = DoAnimateVal3 + 0.1
else
DoAnimateVal3 = DoAnimateVal3 - 0.1
end

if 1 < DoAnimateVal4 then
Invert4 = true
elseif DoAnimateVal4 < -1 then
Invert4 = false
end

if ChargeDelay < ChargeDelay2 then	
ChargeDelay = ChargeDelay + 1	
elseif ChargeDelay > ChargeDelay2 - 1 then
ChargeDelay = 0
end
	
if Charge < 100 and ChargeDelay < 1 and not Charging then
Charge = Charge + 1
end	
		
if Charge > 3 then
Charge = 4
end	

if Invert4 == false then
DoAnimateVal4 = DoAnimateVal4 + 0.1
else
DoAnimateVal4 = DoAnimateVal4 - 0.1
end

if Cooldown1 < MaxCooldown1 then
Cooldown1 = Cooldown1 + Cooldown1Add
end	
		
if Cooldown1 > MaxCooldown1 - 1 then
Cooldown1 = MaxCooldown1
end	

if Cooldown2 < MaxCooldown2 then
Cooldown2 = Cooldown2 + Cooldown2Add
end	
		
if Cooldown2 > MaxCooldown2 - 1 then
Cooldown2 = MaxCooldown2
end	

if Cooldown3 < MaxCooldown3 then
Cooldown3 = Cooldown3 + Cooldown3Add
end	
		
if Cooldown3 > MaxCooldown3 - 1 then
Cooldown3 = MaxCooldown3
end	

if Cooldown4 < MaxCooldown4 then
Cooldown4 = Cooldown4 + Cooldown4Add
end	
		
if Cooldown4 > MaxCooldown4 - 1 then
Cooldown4 = MaxCooldown4
end	

if ManaDelay < ManaDelay2 then	
ManaDelay = ManaDelay + 1	
elseif ManaDelay > ManaDelay2 - 1 then
ManaDelay = 0
end
	
if Mana < 100 and ManaDelay < 1 then
Mana = Mana + 1
end	
		
if Mana > 99 then
Mana = 100
end	
end


function UpdateAllBars()
	
ManaBarText.Text = "Mana: " .. Mana .. "%"	
HealthBarText.Text = "Health: " .. Humanoid.Health .. "%"	
ChargeBarText.Text = "Charges: "..Charge.." / 4"	

HealthBarBar:TweenSize(UDim2.new(0.98 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 0, 19), "Out", "Quad", 0.3)		
ManaBarBar:TweenSize(UDim2.new(0.98 * (Mana / 100), 0, 0, 19), "Out", "Quad", 0.3)	
ChargeBarBar:TweenSize(UDim2.new(0.98 * (Charge / 4), 0, 0, 19), "Out", "Quad", 0.3)	
CooldownZBarBar:TweenSize(UDim2.new(1 * (Cooldown1 / MaxCooldown1), 0, 0, 70), "Out", "Quad", 0.3)	
CooldownXBarBar:TweenSize(UDim2.new(1 * (Cooldown2 / MaxCooldown2), 0, 0, 70), "Out", "Quad", 0.3)	
CooldownCBarBar:TweenSize(UDim2.new(1 * (Cooldown3 / MaxCooldown3), 0, 0, 70), "Out", "Quad", 0.3)	
CooldownVBarBar:TweenSize(UDim2.new(1 * (Cooldown4 / MaxCooldown4), 0, 0, 70), "Out", "Quad", 0.3)	


if Humanoid.Health > 75 then
HealthBarBar.BackgroundColor3 = BrickColor.new("Lime green").Color
elseif Humanoid.Health > 50 and Humanoid.Health < 75 then
HealthBarBar.BackgroundColor3 = BrickColor.new("Cool yellow").Color
elseif Humanoid.Health > 35 and Humanoid.Health < 50 then
HealthBarBar.BackgroundColor3 = BrickColor.new("Bright yellow").Color
elseif Humanoid.Health > 15 and Humanoid.Health < 35 then
HealthBarBar.BackgroundColor3 = BrickColor.new("Bright red").Color
elseif Humanoid.Health < 35 then
HealthBarBar.BackgroundColor3 = BrickColor.new("Really red").Color		
end
end

function Animations()
	
local Velocity = (RootPart.Velocity * Vector3.new(1,0,1)).magnitude
local FallVelocity = RootPart.Velocity.Y
local Floor = FindPartOnRay(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position + Vector3.new(0,-1,0)).lookVector, 4, Character)


if Velocity > 1 and Floor then
if WalkInvert then
	
RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame * CFrame.Angles(0,0,1.2), 0.2)
LeftHip.C1 = Animate(LeftHip.C1,LeftLegDefaultCFrame * CFrame.Angles(0,0,1.2), 0.2)

elseif not WalkInvert then

RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame * CFrame.Angles(0,0,-0.8), 0.2)
LeftHip.C1 = Animate(LeftHip.C1,LeftLegDefaultCFrame * CFrame.Angles(0,0,-0.8), 0.2)
	
end	
else
RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
LeftHip.C1 = Animate(LeftHip.C1,LeftLegDefaultCFrame, 0.2)
end


if Velocity < 1 and Floor and not Attacking then
Walk = false
InAir = false
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.3, 0, -0.6), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,0 + DoAnimateVal / 8) * CFrame.Angles(-0.2, -0.1, 0.6), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5+ DoAnimateVal / 8, 0) * CFrame.Angles(-0.2 - DoAnimateVal / 8 , -0.2, 0.2 + DoAnimateVal / 8), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5 + DoAnimateVal / 8,0) * CFrame.Angles(-0.2 + DoAnimateVal / 8 , 0.2, -0.2- DoAnimateVal / 8), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1.05 - DoAnimateVal / 8, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0.01,0,-0.2), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1 - DoAnimateVal / 8, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0.05,0,0.2), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
end

if Velocity > 1 and Floor and not Attacking then
InAir = false
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(-0.3, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,-0.5) * CFrame.Angles(0.8, 0, DoAnimateVal2), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(-0.5 , -0, 0.5), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5, 0) * CFrame.Angles(-0.5 , 0, -0.5), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,-0.3), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,0.3), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0,-1) * CFrame.Angles(-1.6,1.6,0), 0.2)
end

if FallVelocity > 1 and not Floor and not Attacking then
InAir = true
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(-0.05, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,-0.2) * CFrame.Angles(-0.6, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(-0.5 , -0, 0.7), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5, 0) * CFrame.Angles(-0.5 , 0, -0.7), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,-0), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, -0.5) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,0.5), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0.5,-1) * CFrame.Angles(-1.6,1.6,0.5), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0.5,-1) * CFrame.Angles(-1.6,1.6,0.5), 0.2)
end

if FallVelocity < -1 and not Floor and not Attacking then
InAir = true
Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(-0.05, 0, 0), 0.2)
RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0,0,-0.2) * CFrame.Angles(0.6, 0, 0), 0.2)
RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5,0.5, 0) * CFrame.Angles(-0.5 , -0, 1), 0.2)
LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5,0.5, 0) * CFrame.Angles(-0.5 , 0, -1), 0.2)
RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0,1.6,0)* CFrame.Angles(-0,0,-0), 0.2)
LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, -0.5) * CFrame.Angles(0,-1.6,0) * CFrame.Angles(-0,0,0.5), 0.2)
Handle2Weld.C0 = Animate(Handle2Weld.C0, CFrame.new(0,0.5,-1) * CFrame.Angles(-1.6,1.6,0.5), 0.2)
HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0,0.5,-1) * CFrame.Angles(-1.6,1.6,0.5), 0.2)
end

if Charge < 1 then
Charging = false
end

if Charging and InAir and CanCharge then

UseAirCharge()		
	
end

end

--[[ Loop ]]--

while 1 do
Wait2()

Values()
UpdateAllBars()
VisualEffects()
Animations()

end
