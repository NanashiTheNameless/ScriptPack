wait()
local Player = game.Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local Head = Character.Head
local Face = Character.Head.face
local Texture = Face.Texture
local Torso = Character.Torso
local RootPart = Character.HumanoidRootPart
local RightArm = Character["Right Arm"]
local LeftArm = Character["Left Arm"]
local RightLeg = Character["Right Leg"]
local LeftLeg = Character["Left Leg"]
local Neck = Torso.Neck
local RootJoint = RootPart.RootJoint
local RightShoulder = Torso["Right Shoulder"]
local LeftShoulder = Torso["Left Shoulder"]
local RightHip = Torso["Right Hip"]
local LeftHip = Torso["Left Hip"]
local Insert = table.insert
local Mouse = Player:GetMouse()
VFXList = {}
local CharaterAnimate, CharacterAnimator = Character:FindFirstChild("Animate"), Humanoid:FindFirstChild("Animator")
CharaterAnimate.Parent = nil
CharacterAnimator.Parent = nil
local ManaDelay = 0
local ManaDelay2 = 8
local EffectRemovalDelay = 0
local EffectRemovalDelay2 = 3
local Combo = 1
local AttackDecrease = 0
local MvmtDecrease = 0
local DefenceDecrease = 0
local Attacking = false
local StunBarVisible = false
local ConfusedVisible = false
local CanShowStunDisplay = true
local CanRemoveStun = false
local CanAnimate = true
local CharacterUnderControl = true
local CanResumeControl = true
local AntiGlitch = false
local Fury = false
NeckDefaultCFrame = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RootDefaultCFrame = CFrame.Angles(-1.57, 0, 3.14)
RightLegDefaultCFrame = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LeftLegDefaultCFrame = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RightShoulder.C1 = CFrame.new(0, 0.5, 0)
LeftShoulder.C1 = CFrame.new(0, 0.5, 0)
local MyStats = Instance.new("Folder", Character)
MyStats.Name = "MyStats"
local Defence = Instance.new("NumberValue", MyStats)
Defence.Name = "Defence"
Defence.Value = 1
local Attack = Instance.new("NumberValue", MyStats)
Attack.Name = "Attack"
Attack.Value = 1
local Movement = Instance.new("NumberValue", MyStats)
Movement.Name = "Movement"
Movement.Value = 1
local Mana = Instance.new("NumberValue", MyStats)
Mana.Name = "Mana"
Mana.Value = 0
local Debuffs = Instance.new("Folder", MyStats)
Debuffs.Name = "Debuffs"
local Effects = Instance.new("Folder", Character)
Effects.Name = "Effects"
local StunEffect = Instance.new("BoolValue", Effects)
StunEffect.Name = "StunEffect"
StunEffect.Value = false
local Stun = Instance.new("NumberValue", StunEffect)
Stun.Name = "Stun"
Stun.Value = 0
local PushedJump = Instance.new("BoolValue", Effects)
PushedJump.Name = "PushedJump"
PushedJump.Value = false
local Cooldown1 = 0
local Cooldown2 = 0
local Cooldown3 = 0
local Cooldown4 = 0
local Cooldown5 = 0
local Cooldown6 = 0
local Cooldown7 = 0
local Cooldown1Add = 0.3
local Cooldown2Add = 0.25
local Cooldown3Add = 0.2
local Cooldown4Add = 0.12
local Cooldown5Add = 0.05
local Cooldown6Add = 0.05
local Cooldown7Add = 5
local MaxCooldown1 = 60
local MaxCooldown2 = 80
local MaxCooldown3 = 140
local MaxCooldown4 = 180
local MaxCooldown5 = 5
local MaxCooldown6 = 5
local MaxCooldown7 = 8000
local Stars = Instance.new("Part", Character)
Stars.Name = "Stars"
Stars.CanCollide = false
Stars.Size = Vector3.new()
Stars.Transparency = 1
local StarsMesh = Instance.new("SpecialMesh", Stars)
StarsMesh.TextureId = "http://www.roblox.com/asset/?id=110857406"
StarsMesh.MeshId = "http://www.roblox.com/asset/?id=110857526"
local StarsWeld = Instance.new("Weld", Stars)
StarsWeld.Part0 = Stars
StarsWeld.Part1 = Head
StarsWeld.C0 = CFrame.new(0, -1, 0)
function GUI(NewInstance, Parent, Size, StartPosition, Position, BGTransparency, Visible, BGColor, Rotation, Style, Text, TextColor, TextStroke, StrokeTrans, Scaled, Font)
  local NewGui = Instance.new(NewInstance)
  NewGui.Parent = Parent
  NewGui.Position = StartPosition
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
local CreateWeld = function(Parent, Cframe, Cframe2, P1, P0, Name)
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
  Insert(VFXList, {
    VFXType,
    Part,
    TransparencyAdd,
    IncreaseSize1,
    IncreaseSize2,
    IncreaseSize3
  })
end
function BlockVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 20)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "Brick")
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  AddVFX("Rotate", Part)
  return Part
end
function CylinderVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 20)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "Cylinder")
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  return Part
end
function CircleVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 20)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "Sphere")
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  return Part
end
function CylinderVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 20)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "Cylinder")
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  return Part
end
function WaveVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 20)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 20329976)
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  return Part and Mesh
end
function RingVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 20)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 3270017)
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  return Part and Mesh
end
function ShurikenVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 20)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 11112101)
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  return Part
end
function KunaiVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 20)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 45728702)
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  return Part
end
function WindVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 20)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 168892432)
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  return Part
end
function SlashVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 20)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 448386996)
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  return Part
end
WeaponGUI = Instance.new("ScreenGui", Player.PlayerGui)
WeaponGUI.Name = "WeaponThing"
local HealthBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 355, 0, 25), UDim2.new(0, 0, 0, 0), UDim2.new(0, 350, 0.96, 0), 0, true, "Really black", 0, nil)
local HealthBarBar = GUI("Frame", HealthBarBack, UDim2.new(0, 345, 0, 19), UDim2.new(0, 0, 0, 0), UDim2.new(0, 3, 0.1, 0), 0, true, "Lime green", 0)
local HealthBarText = GUI("TextLabel", WeaponGUI, UDim2.new(0, 345, 0, 19), UDim2.new(0, 0, 0, 0), UDim2.new(0, 355, 0.96, 0), 1, true, "", 0, nil, "Health", "White", "Black", 0, true, "SourceSansBold")
local ManaBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 355, 0, 25), UDim2.new(0, 0, 0, 0), UDim2.new(0, 350, 0.9, 0), 0, true, "Really black", 0, nil)
local ManaBarBar = GUI("Frame", ManaBarBack, UDim2.new(0, 0, 0, 19), UDim2.new(0, 0, 0, 0), UDim2.new(0, 3, 0.1, 0), 0, true, "Bright blue", 0)
local ManaBarText = GUI("TextLabel", WeaponGUI, UDim2.new(0, 345, 0, 19), UDim2.new(0, 0, 0, 0), UDim2.new(0, 355, 0.9, 0), 1, true, "", 0, nil, "Mana", "White", "Cyan", 0, true, "SourceSansBold")
local AtkBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 70, 0, 25), UDim2.new(0, 0, 0, 0), UDim2.new(0, 195, 0.94, 0), 0, true, "Really black", 90)
local AtkBarBar = GUI("Frame", WeaponGUI, UDim2.new(0, 60, 0, 19), UDim2.new(0, 0, 0, 0), UDim2.new(0, 200, 0.94, 0), 0, true, "Really red", 90)
local AtkBarText = GUI("TextLabel", WeaponGUI, UDim2.new(0, 60, 0, 19), UDim2.new(0, 0, 0, 0), UDim2.new(0, 202, 0.94, 0), 1, true, "", 90, nil, "Atk", "Black", "Neon orange", 0, true, "SourceSansBold")
local DefBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 70, 0, 25), UDim2.new(0, 0, 0, 0), UDim2.new(0, 240, 0.94, 0), 0, true, "Really black", 90)
local DefBarBar = GUI("Frame", WeaponGUI, UDim2.new(0, 60, 0, 19), UDim2.new(0, 0, 0, 0), UDim2.new(0, 245, 0.94, 0), 0, true, "Bright blue", 90)
local DefBarText = GUI("TextLabel", WeaponGUI, UDim2.new(0, 60, 0, 19), UDim2.new(0, 0, 0, 0), UDim2.new(0, 247, 0.94, 0), 1, true, "", 90, nil, "Def", "White", "Cyan", 0, true, "SourceSansBold")
local MvmtBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 70, 0, 25), UDim2.new(0, 0, 0, 0), UDim2.new(0, 285, 0.94, 0), 0, true, "Really black", 90)
local MvmtBarBar = GUI("Frame", WeaponGUI, UDim2.new(0, 60, 0, 19), UDim2.new(0, 0, 0, 0), UDim2.new(0, 290, 0.94, 0), 0, true, "Lime green", 90)
local MvmtBarText = GUI("TextLabel", WeaponGUI, UDim2.new(0, 60, 0, 19), UDim2.new(0, 0, 0, 0), UDim2.new(0, 292, 0.94, 0), 1, true, "", 90, nil, "Mvmt", "White", "Black", 0, true, "SourceSansBold")
local CooldownZBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0.3, 0), 0, true, "Really black", 0, nil)
local CooldownZBarBar = GUI("TextButton", CooldownZBarBack, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 5), 0.3, true, "Ghost grey", 0, nil, "", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownZBarText = GUI("TextLabel", CooldownZBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, "Z", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownXBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), UDim2.new(0.93, 0, 0.3, 0), 0, true, "Really black", 0, nil)
local CooldownXBarBar = GUI("TextButton", CooldownXBarBack, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 5), 0.3, true, "Ghost grey", 0, nil, "", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownXBarText = GUI("TextLabel", CooldownXBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, "X", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownCBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), UDim2.new(0.93, 0, 0.6, 0), 0, true, "Really black", 0, nil)
local CooldownCBarBar = GUI("TextButton", CooldownCBarBack, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 5), 0.3, true, "Ghost grey", 0, nil, "", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownCBarText = GUI("TextLabel", CooldownCBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, "C", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownVBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0.6, 0), 0, true, "Really black", 0, nil)
local CooldownVBarBar = GUI("TextButton", CooldownVBarBack, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 5), 0.3, true, "Ghost grey", 0, nil, "", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownVBarText = GUI("TextLabel", CooldownVBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, "V", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownQBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), 0, true, "Really black", 0, nil)
local CooldownQBarBar = GUI("TextButton", CooldownQBarBack, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 5), 0.3, true, "Ghost grey", 0, nil, "", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownQBarText = GUI("TextLabel", CooldownQBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, "Q", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownEBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), UDim2.new(0.93, 0, 0, 0), 0, true, "Really black", 0, nil)
local CooldownEBarBar = GUI("TextButton", CooldownEBarBack, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 5), 0.3, true, "Ghost grey", 0, nil, "", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownEBarText = GUI("TextLabel", CooldownEBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, "E", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownFBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0.93, 0), 0, true, "Bright red", 0, nil)
local CooldownFBarBar = GUI("TextButton", CooldownFBarBack, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 5), 0.3, true, "Ghost grey", 0, nil, "", "White", "Cyan", 1, true, "SourceSansBold")
local CooldownFBarText = GUI("TextLabel", CooldownFBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, "F", "White", "Cyan", 1, true, "SourceSansBold")
function MobileControlZ()
  if not Attacking and Cooldown1 == MaxCooldown1 and Mana.Value > 5 then
    Cooldown1 = 0
    Mana.Value = Mana.Value - 5
    Move1()
  end
end
function MobileControlX()
  if not Attacking and Cooldown2 == MaxCooldown2 and Mana.Value > 15 then
    Cooldown2 = 0
    Mana.Value = Mana.Value - 15
    Move2()
  end
end
function MobileControlC()
  if not Attacking and Cooldown3 == MaxCooldown3 and Mana.Value > 40 then
    Cooldown3 = 0
    Mana.Value = Mana.Value - 40
    Move3()
  end
end
function MobileControlV()
  if not Attacking and Cooldown4 == MaxCooldown4 and Mana.Value > 50 then
    Cooldown4 = 0
    Mana.Value = Mana.Value - 50
    Move4()
  end
end
function MobileControlQ()
  if not Attacking and Cooldown5 == MaxCooldown5 then
    Cooldown5 = 0
    EvadeQ()
  end
end
function MobileControlE()
  if not Attacking and Cooldown6 == MaxCooldown6 then
    Cooldown6 = 0
    EvadeE()
  end
end
Services = {
  Workspace = game:GetService("Workspace"),
  Debris = game:GetService("Debris")
}
Heartbeat = Instance.new("BindableEvent", script)
Heartbeat.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
Frame = 0.033333333333333
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
local LazerEdge = Instance.new("Model", Character)
LazerEdge.Name = "Lazer Edge"
local Color1 = "Medium stone grey"
Handle = CreatePart(LazerEdge, "Handle", "Black", Vector3.new(2.32, 0.3, 0.4), "SmoothPlastic", 0, "Block")
HandleMesh = CreateMesh(Handle, Vector3.new(1, 1, 1), "SpecialMesh", "Cylinder")
HandleWeld = CreateWeld(Handle, CFrame.new(0, -1, 0) * CFrame.Angles(-1.57, 0, 1.57), CFrame.new(0, 0, 0), Handle, RightArm, "HandleToRightArm")
Part1 = CreatePart(LazerEdge, "Part1", Color1, Vector3.new(0.2, 0.4, 0.5), "SmoothPlastic", 0, "Block")
Part1Weld = CreateWeld(Part1, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.06002414, 0, 0, 0.99999547, 0, 0, 0, 1, 0, 0, 0, 0.99999547), Handle, Part1, "Part1ToHandle")
Part1Mesh = CreateMesh(Part1, Vector3.new(1, 1, 1), "SpecialMesh", "Cylinder")
Part2 = CreatePart(LazerEdge, "Part2", "Cyan", Vector3.new(1, 0.5, 0.5), "Neon", 0.4, "Block")
Part2Weld = CreateWeld(Part2, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.68999255, 0, 0, 0.99999547, 0, 0, 0, 1, 0, 0, 0, 0.99999547), Handle, Part2, "Part2ToHandle")
Part2Mesh = CreateMesh(Part2, Vector3.new(1, 1, 1), "SpecialMesh", "Cylinder")
Part3 = CreatePart(LazerEdge, "Part3", "Cyan", Vector3.new(1, 0.4, 0.4), "Neon", 0.6, "Block")
Part3Weld = CreateWeld(Part3, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(3.56998444, 0, 0.289997101, 0.966275215, 0, -0.257493705, 0, 1, 0, 0.257493705, 0, 0.966275215), Handle, Part3, "Part3ToHandle")
Part3Mesh = CreateMesh(Part3, Vector3.new(1, 1, 1), "SpecialMesh", "Cylinder")
Part4 = CreatePart(LazerEdge, "Part4", Color1, Vector3.new(0.2, 0.6, 0.6), "SmoothPlastic", 0, "Block")
Part4Weld = CreateWeld(Part4, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(1.16001117, 0, 1.90734863E-6, 0.99999547, 0, 0, 0, 1, 0, 0, 0, 0.99999547), Handle, Part4, "Part4ToHandle")
Part4Mesh = CreateMesh(Part4, Vector3.new(0.30000001192093, 1, 1), "SpecialMesh", "Cylinder")
Part5 = CreatePart(LazerEdge, "Part5", "Cyan", Vector3.new(1, 0.45, 0.45), "Neon", 0.5, "Block")
Part5Weld = CreateWeld(Part5, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(2.61998653, 0, 0.0800037384, 0.982708693, 0, -0.185134172, 0, 1, 0, 0.185134172, 0, 0.982708693), Handle, Part5, "Part5ToHandle")
Part5Mesh = CreateMesh(Part5, Vector3.new(1, 1, 1), "SpecialMesh", "Cylinder")
Part6 = CreatePart(LazerEdge, "Part6", "Black", Vector3.new(0.31, 0.31, 0.31), "SmoothPlastic", 0, "Block")
Part6Weld = CreateWeld(Part6, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-1.19999397, 0, -1.90734863E-6, 0.99999547, 0, 0, 0, 1, 0, 0, 0, 0.99999547), Handle, Part6, "Part6ToHandle")
Part6Mesh = CreateMesh(Part6, Vector3.new(1, 1, 1), "SpecialMesh", "Sphere")
Part7 = CreatePart(LazerEdge, "Part7", Color1, Vector3.new(0.5, 1.5, 0.5), "Plastic", 0, "Block")
Part7Weld = CreateWeld(Part7, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(-0.459974885, 0, -1.90734863E-6, 0, 0.99999547, 0, -1, 0, 0, 0, 0, 0.99999547), Handle, Part7, "Part7ToHandle")
Part7Mesh = CreateMesh(Part7, Vector3.new(1, 1, 1), "SpecialMesh", "Head")
Part8 = CreatePart(LazerEdge, "Part8", "Cyan", Vector3.new(1, 0.3, 0.3), "Neon", 0.8, "Block")
Part8Weld = CreateWeld(Part8, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(5.28999233, 1.90734863E-6, 0.929994583, 0.878526747, 0, -0.477683723, 0, 1, 0, 0.477683723, 0, 0.878526747), Handle, Part8, "Part8ToHandle")
Part8Mesh = CreateMesh(Part8, Vector3.new(1, 1, 1), "SpecialMesh", "Cylinder")
Part9 = CreatePart(LazerEdge, "Part9", "Cyan", Vector3.new(1, 0.35, 0.35), "Neon", 0.7, "Block")
Part9Weld = CreateWeld(Part9, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(4.46998024, 9.53674316E-7, 0.56999588, 0.929504633, 0, -0.368798256, 0, 1, 0, 0.368798256, 0, 0.929504514), Handle, Part9, "Part9ToHandle")
Part9Mesh = CreateMesh(Part9, Vector3.new(1, 1, 1), "SpecialMesh", "Cylinder")
Part10 = CreatePart(LazerEdge, "Part10", "Cyan", Vector3.new(1, 0.25, 0.25), "Neon", 0.9, "Block")
Part10Weld = CreateWeld(Part10, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(6.18000221, 1.90734863E-6, 1.40998459, 0.872381926, 0, -0.488815755, 0, 1, 0, 0.488815755, 0, 0.872381926), Handle, Part10, "Part10ToHandle")
Part10Mesh = CreateMesh(Part10, Vector3.new(1, 1, 1), "SpecialMesh", "Cylinder")
Part11 = CreatePart(LazerEdge, "Part11", Color1, Vector3.new(0.2, 0.4, 0.5), "SmoothPlastic", 0, "Block")
Part11Weld = CreateWeld(Part11, CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1), CFrame.new(0.360021114, 1.90734863E-6, -1.90734863E-6, 0.99999547, 0, 0, 0, 1, 0, 0, 0, 0.99999547), Handle, Part11, "Part11ToHandle")
Part11Mesh = CreateMesh(Part11, Vector3.new(1, 1, 1), "SpecialMesh", "Cylinder")
RightArmReference = CreatePart(Character, "Right arm reference", "None", Vector3.new(), "SmoothPlastic", 1, "Block")
RightArmReferenceWeld = CreateWeld(RightArmReference, CFrame.new(0, 1.5, 0), CFrame.new(0, 0, 0), RightArm, RightArmReference, "LeftArmReferenceToRightArm")
LeftArmReference = CreatePart(Character, "Left arm reference", "None", Vector3.new(), "SmoothPlastic", 1, "Block")
LeftArmReferenceWeld = CreateWeld(LeftArmReference, CFrame.new(0, 1.5, 0), CFrame.new(0, 0, 0), LeftArm, LeftArmReference, "LeftArmReferenceToLeftArm")
TorsoReference = CreatePart(Character, "Torso reference", "None", Vector3.new(), "SmoothPlastic", 1, "Block")
TorsoReferenceWeld = CreateWeld(TorsoReference, CFrame.new(0, 0, 0), CFrame.new(0, 0, 0), Torso, TorsoReference, "TorsoReferenceToTorsoArm")
RootPartReference = CreatePart(Character, "Root part reference", "None", Vector3.new(), "SmoothPlastic", 1, "Block")
RootPartReferenceWeld = CreateWeld(RootPartReference, CFrame.new(0, 0, 0), CFrame.new(0, 0, 0), RootPart, RootPartReference, "RootPartReferenceToRootPart")
function Display(HitCharacter, DisplayText, DisplayType)
  if HitCharacter:FindFirstChild("Head") then
    do
      local DamageShowingPart = Instance.new("Part", Services.Workspace)
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
      DisplayNumber.Size = UDim2.new(1, 0, 1, 0)
      DisplayNumber.TextTransparency = 1
      DisplayNumber.TextStrokeTransparency = 1
      DisplayNumber.BackgroundTransparency = 1
      DisplayNumber.TextTransparency = 1
      DisplayNumber.Font = "SourceSansBold"
      DisplayNumber.TextScaled = true
      local BodyVelocity = Instance.new("BodyVelocity", DamageShowingPart)
      BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
      BodyVelocity.Velocity = Vector3.new(0, 0.5, 0)
      if DisplayType == "Stun" then
        BodyVelocity.Velocity = Vector3.new(0, 0.1, 0)
        DisplayGui.Size = UDim2.new(5, 0, 5, 0)
        DisplayNumber.TextStrokeColor3 = BrickColor.Black().Color
        DisplayNumber.TextColor3 = BrickColor.new("Bright yellow").Color
        DisplayNumber.Text = "Stunned!"
        DamageShowingPart.Position = HitCharacter.Head.Position + Vector3.new(0, 5, 0)
      end
      if DisplayType == "Damage" then
        DisplayNumber.TextStrokeColor3 = BrickColor.Black().Color
        DisplayNumber.TextColor3 = BrickColor.new("Really red").Color
        DisplayNumber.Text = "-" .. DisplayText
        DamageShowingPart.Position = HitCharacter.Head.Position + Vector3.new(math.random(-1, 1), 5, math.random(-1, 1))
      end
      coroutine.resume(coroutine.create(function()
        while DisplayNumber.TextTransparency > 0 do
          wait()
          DisplayNumber.TextStrokeTransparency = DisplayNumber.BackgroundTransparency - 0.1
          DisplayNumber.TextTransparency = DisplayNumber.TextTransparency - 0.1
        end
        AddVFX("Display", DamageShowingPart, 0.05)
      end))
      Services.Debris:AddItem(DamageShowingPart, 10)
    end
  end
end
function DoDamage(Hit, HitCharacter, Type, MinDamage, MaxDamage, PartLook, Knockback, SFX, SFXPitch, Delay, PartLook, Effect, Stat, StatsDecreaseNumber, StatsDecreaseDuration)
  if Hit.Health == 0 or HitCharacter:FindFirstChild(Player.Name) then
    return
  end
  SoundEffect(HitCharacter.Torso, SFX, 1, SFXPitch, false)
  local DelayDebounce = Instance.new("Folder", HitCharacter)
  DelayDebounce.Name = Player.Name
  Services.Debris:AddItem(DelayDebounce, Delay)
  local Damage = math.random(MinDamage, MaxDamage) * Attack.Value
  local HitPlayer = game.Players:FindFirstChild(HitCharacter.Name)
  local HitStats = HitCharacter:FindFirstChild("MyStats")
  local EffectsFolder = HitCharacter:FindFirstChild("Effects")
  HitCharacter.Torso.Velocity = PartLook.CFrame.lookVector * Knockback
  if HitStats then
    if Stat ~= nil then
      local Decrease = Instance.new("NumberValue", HitStats.Debuffs)
      Decrease.Value = StatsDecreaseNumber
      Decrease.Name = Stat
      Services.Debris:AddItem(Decrease, StatsDecreaseDuration)
    end
    if Effect == "Stun" then
      EffectsFolder.StunEffect.Value = true
      EffectsFolder.StunEffect.Stun.Value = 1001
    end
  end
  if HitStats and HitStats:IsA("Folder") then
    Damage = Damage / HitStats.Defence.Value
  end
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
      if Distance > Magnitude then
        local Hit = Children.Humanoid
        local HitCharacter = Children
        DoDamage(Hit, HitCharacter, Type, MinDamage, MaxDamage, PartLook, Knockback, SFX, SFXPitch, Delay, PartLook, Effect, Stat, StatsDecreaseNumber, StatsDecreaseDuration)
      end
    end
  end
end
function Attack1()
  Attacking = true
  if not Fury then
    for i = 1, 8 do
      Wait2()
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(2.6, 0, 0.2), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, 1), 0.3)
    end
    SoundEffect(Torso, 247718224, 1, 1.044, false)
    for i = 1, 8 do
      Wait2()
      ValidateDamage(Part2, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part3, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part5, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part8, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part9, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part10, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, -1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, 1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.4, 0) * CFrame.Angles(0.3, 0, -0.5), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, 0.7) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, -1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, -0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, -1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, 1), 0.3)
    end
  else
    for i = 1, 3 do
      Wait2()
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(1, -1, 0.3), 0.5)
    end
    for i = 1, 8 do
      Wait2()
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1.2), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(0.2, 0.5, -0.8) * CFrame.Angles(2.6, 0, -1.3), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, 1.57), 0.3)
    end
    SoundEffect(Torso, 247718224, 1, 1.044, false)
    for i = 1, 8 do
      Wait2()
      ValidateDamage(Part2, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part3, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part5, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part8, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part9, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part10, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.2, 0.4, 0.2) * CFrame.Angles(-0.1, -0.2, 0.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.5, 0, -0.4), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.7) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-2, 0, 1.57), 0.3)
    end
  end
  Attacking = false
end
function Attack2()
  Attacking = true
  if not Fury then
    for i = 1, 8 do
      Wait2()
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0.3, -0.6, 1.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
    SoundEffect(Torso, 247718230, 1, 1.276, false)
    for i = 1, 10 do
      Wait2()
      ValidateDamage(Part2, "Normal", 3, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part3, "Normal", 3, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part5, "Normal", 3, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part8, "Normal", 3, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part9, "Normal", 3, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part10, "Normal", 3, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, -1.6), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 1, 0) * CFrame.Angles(0.3, 0, 1.6), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1, 0.5, -0.5) * CFrame.Angles(0, 2.3, 1.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.5, 0, -0.4), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.5, -1, 0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, -1.6, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.5, -1, -0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, -1.6, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
  else
    for i = 1, 8 do
      Wait2()
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0.3, -0.6, 1.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
    SoundEffect(Torso, 247718230, 1, 1.276, false)
    for i = 1, 10 do
      Wait2()
      ValidateDamage(Part2, "Normal", 3, 6, 8, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part3, "Normal", 3, 6, 8, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part5, "Normal", 3, 6, 8, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part8, "Normal", 3, 6, 8, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part9, "Normal", 3, 6, 8, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part10, "Normal", 3, 6, 8, RootPart, 5, 247718107, 1.4, 0.3)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, -1.6), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 1, 0) * CFrame.Angles(0.3, 0, 1.6), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1, 0.5, -0.5) * CFrame.Angles(0, 2.3, 1.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.5, 0, -0.4), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.5, -1, 0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, -1.6, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.5, -1, -0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, -1.6, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
  end
  Attacking = false
end
function Attack3()
  Attacking = true
  if not Fury then
    CanAnimate = false
    for i = 1, 12 do
      Wait2()
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0.3, 2) * CFrame.Angles(0, 0, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(3.2, 0, 0.2), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, -0.5), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0.5) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0.5), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, 1.57), 0.3)
    end
    SoundEffect(Torso, 247718230, 1, 1.6, false)
    for i = 1, 12 do
      Wait2()
      ValidateDamage(Part2, "Normal", 3, 4, 7, RootPart, 5, 247718107, 1.4, 0.3, nil, "Movement", 0.1, 0.5)
      ValidateDamage(Part3, "Normal", 3, 4, 7, RootPart, 5, 247718107, 1.4, 0.3, nil, "Movement", 0.1, 0.5)
      ValidateDamage(Part5, "Normal", 3, 4, 7, RootPart, 5, 247718107, 1.4, 0.3, nil, "Movement", 0.1, 0.5)
      ValidateDamage(Part8, "Normal", 3, 4, 7, RootPart, 5, 247718107, 1.4, 0.3, nil, "Movement", 0.1, 0.5)
      ValidateDamage(Part9, "Normal", 3, 4, 7, RootPart, 5, 247718107, 1.4, 0.3, nil, "Movement", 0.1, 0.5)
      ValidateDamage(Part10, "Normal", 3, 4, 7, RootPart, 5, 247718107, 1.4, 0.3, nil, "Movement", 0.1, 0.5)
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, -1.6), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, -2, -0.5) * CFrame.Angles(0.3, 0, 1.6), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0.2, 0, 0.2), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.3, 0.4, 0.2) * CFrame.Angles(-0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, 0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, -1.6, -0.5), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, -0.5) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, -1.6, 0.5), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0.5, -0.8, 0) * CFrame.Angles(-1.57, 0, 0), 0.3)
    end
    CanAnimate = true
  else
    for i = 1, 8 do
      Wait2()
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 2, 0) * CFrame.Angles(0.3, 0, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(0.4, 0.5, -1) * CFrame.Angles(3.2, 3.8, 1.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
    SoundEffect(Torso, 247718230, 1, 1.6, false)
    for i = 1, 8 do
      Wait2()
      ValidateDamage(Part2, "Normal", 3, 7, 8, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part3, "Normal", 3, 7, 8, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part5, "Normal", 3, 7, 8, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part8, "Normal", 3, 7, 8, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part9, "Normal", 3, 7, 8, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part10, "Normal", 3, 7, 8, RootPart, 5, 247718107, 1.4, 0.3)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, -2, 0) * CFrame.Angles(0, 0, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(3.2, 0.5, 1.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.8, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
  end
  Attacking = false
end
function Attack4()
  Attacking = true
  if not Fury then
    CanAnimate = false
    for i = 1, 8 do
      Wait2()
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0, -0.6, 1.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
    SoundEffect(Torso, 247718248, 1, 1, false)
    for i = 1, 20 do
      Wait2()
      ValidateDamage(Part2, "Normal", 5, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part3, "Normal", 5, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part5, "Normal", 5, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part8, "Normal", 5, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part9, "Normal", 5, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part10, "Normal", 5, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 0), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, -2, 0) * CFrame.Angles(0.3, 0, i / 2), 0.4)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1, 0.5, -0.5) * CFrame.Angles(0, 2.3, 1.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.5, 0, -0.4), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.5, -1, 0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.5, -1.6, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.5, -1, -0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.5, -1.6, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
    CanAnimate = true
  else
    CanAnimate = false
    for i = 1, 8 do
      Wait2()
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0, -0.6, 1.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
    SoundEffect(Torso, 247718248, 1, 1, false)
    for i = 1, 20 do
      Wait2()
      ValidateDamage(Part2, "Normal", 5, 6, 8, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part3, "Normal", 5, 6, 8, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part5, "Normal", 5, 6, 8, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part8, "Normal", 5, 6, 8, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part9, "Normal", 5, 6, 8, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part10, "Normal", 5, 6, 8, RootPart, 5, 247718107, 1.4, 0.3)
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 0), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, -2, 2) * CFrame.Angles(0, 1.6, i / 2), 0.4)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1, 0.5, -0.5) * CFrame.Angles(0, 2.3, 1.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.5, 0, -0.4), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.5, -1, 0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.5, -1.6, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.5, -1, -0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.5, -1.6, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
    CanAnimate = true
  end
  Attacking = false
end
function EvadeE()
  Attacking = true
  CanAnimate = false
  SoundEffect(Torso, 320557563, 1, 1, false)
  if not Fury then
    for i = 1, 10 do
      Wait2()
      BlockVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 1, 1, 1)
      CircleVFX(Torso.CFrame, "Cyan", "Neon", 0.3, 0.05, 1, 1, 1, 3, 3, 3)
      RootPart.Velocity = Torso.CFrame.lookVector * -50
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 1)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 1)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.5)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 1.6), 0.5)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0.5, 0, 0.2), 0.5)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.5, 0, -0.2), 0.5)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 0, 0.5), 0.5)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 0, -0.5), 0.5)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.5)
    end
  else
    for i = 1, 10 do
      Wait2()
      RootPart.Velocity = RootPart.CFrame.lookVector * -100
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 1)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 1)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.5)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(-i / 2, 0, 1.6), 0.5)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0, 0, 2.6), 0.5)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0, 0, -2.6), 0.5)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.2, 0, 0), 0.5)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.2, 0, 0), 0.5)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.5)
    end
  end
  CanAnimate = true
  Attacking = false
end
function EvadeQ()
  Attacking = true
  CanAnimate = false
  SoundEffect(Torso, 320557563, 1, 1, false)
  if not Fury then
    for i = 1, 10 do
      Wait2()
      BlockVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 1, 1, 1)
      CircleVFX(Torso.CFrame, "Cyan", "Neon", 0.3, 0.05, 1, 1, 1, 3, 3, 3)
      RootPart.Velocity = Torso.CFrame.lookVector * -50
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 1)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 1)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.5)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1.6), 0.5)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0.5, 0, 0.2), 0.5)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.5, 0, -0.2), 0.5)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 0, 0.5), 0.5)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 0, -0.5), 0.5)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.5)
    end
  else
    for i = 1, 10 do
      Wait2()
      RootPart.Velocity = RootPart.CFrame.lookVector * 100
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 1)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 1)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.5)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(i / 2, 0, -1.6), 0.5)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0, 0, 2.6), 0.5)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0, 0, -2.6), 0.5)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.2, 0, 0), 0.5)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.2, 0, 0), 0.5)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.5)
    end
  end
  CanAnimate = true
  Attacking = false
end
function Move1()
  Attacking = true
  if not Fury then
    CanAnimate = false
    for i = 1, 8 do
      Wait2()
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 1, 3) * CFrame.Angles(0, 3.2, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(0, -0.6, 1.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "Galla spin!", "Blue")
    SoundEffect(Torso, 247718248, 1, 1, false)
    for i = 1, 20 do
      Wait2()
      ValidateDamage(Part2, "Normal", 5, 4, 6, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part3, "Normal", 5, 4, 6, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part5, "Normal", 5, 4, 6, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part8, "Normal", 5, 4, 6, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part9, "Normal", 5, 4, 6, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part10, "Normal", 5, 4, 6, RootPart, 5, 247718107, 1.4, 0.3)
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 0), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, -2, -1) * CFrame.Angles(0, 3.2, i / 2), 0.4)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1, 0.5, -0.5) * CFrame.Angles(0, 2.3, 1.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.5, 0, -0.4), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.5, -1, 0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.5, -1.6, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.5, -1, -0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.5, -1.6, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
    CanAnimate = true
  else
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, ". . .", "Red")
    for i = 1, 20 do
      Wait2()
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1.2), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(0.2, 0.5, -0.8) * CFrame.Angles(2.6, 0, -1.3), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, 1.57), 0.3)
    end
    SoundEffect(Torso, 247718224, 1, 0.8, false)
    RootPartReferenceWeld.C0 = CFrame.new(1, -1, 5) * CFrame.Angles(0, 0, 0.8)
    CircleVFX(RootPartReference.CFrame, "Bright red", "Neon", 0, 0.01, 3, 3, 3, 1, -0.001, 0.01)
    ValidateDamage(RootPartReference, "Normal", 10, 10, 13, RootPart, 5, 247718107, 1.4, 0.3, "Defence", 0.25, 3)
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "C h a o s  c u t .", "Red")
    for i = 1, 50 do
      Wait2()
      ValidateDamage(Part2, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part3, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part5, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part8, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part9, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part10, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.2, 0.4, 0.2) * CFrame.Angles(-0.1, -0.2, 0.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.5, 0, -0.4), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.7) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-2, 0, 1.57), 0.3)
    end
  end
  Attacking = false
end
function Move2()
  Attacking = true
  CanResumeControl = false
  RemoveCharacterControl()
  if not Fury then
    local Point1 = Torso.Position
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "...", "Blue")
    for i = 1, 15 do
      Wait2()
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, -0.5) * CFrame.Angles(0, 0, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(1.6, 0, -0.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0, -0.6, -1.6), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, -0.5), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0.5) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0.5), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0) * CFrame.Angles(-1.8, 0, 0), 0.3)
    end
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "Star cutter!", "Blue")
    SoundEffect(Torso, 247718230, 1, 1.6, false)
    RootPart.Velocity = RootPart.CFrame.lookVector * 2000
    TorsoReferenceWeld.C0 = CFrame.new(-15, 0, -9)
    wait()
    RootPart.Velocity = Vector3.new(0, 0, 0)
    local Point2 = Torso.Position
    local Magnitude = Point1 - Point2.magnitude
    local Hitbox = CylinderVFX(TorsoReference.CFrame * CFrame.Angles(0, 2.6, 0), "Cyan", "Neon", 0, 0.008, 1, 1, 1, 0, 0.1, 0.1)
    Hitbox.Size = Vector3.new(Magnitude, 0, 0)
    ValidateDamage(Hitbox, "Normal", 20, 8, 12, RootPart, 5, 247718107, 1.4, 0.3, nil, "Defence", 0.2, 5)
    for i = 1, 15 do
      Wait2()
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, -1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, -0.5) * CFrame.Angles(0, 0, 1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, -0.5) * CFrame.Angles(1.6, 0, 0.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.5, 0, -0.8), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, -1, -0.5), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, -0.5) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, -1, 0.5), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0) * CFrame.Angles(-1.57, -0.5, 0), 0.3)
    end
    TorsoReferenceWeld.C0 = CFrame.new(0, 0, 0)
  else
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, ". . .", "Red")
    RootPartReferenceWeld.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, 1.6)
    for i = 1, 50 do
      Wait2()
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 2, 0) * CFrame.Angles(0.3, 0, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(0.4, 0.5, -1) * CFrame.Angles(3.2, 3.8, 1.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "C h a o s   w a v e .", "Red")
    SoundEffect(Torso, 247718230, 1, 1.6, false)
    do
      local WaveReference = RootPartReference:Clone()
      WaveReference.Parent = Services.Workspace
      WaveReference:ClearAllChildren()
      Services.Debris:AddItem(WaveReference, 2)
      local BodyVelocity = Instance.new("BodyVelocity", WaveReference)
      BodyVelocity.Velocity = RootPart.CFrame.lookVector * 100
      BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
      coroutine.resume(coroutine.create(function()
        while WaveReference.Parent == Services.Workspace do
          Wait2()
          ValidateDamage(WaveReference, "Normal", 10, 10, 16, RootPart, 5, 247718107, 1.4, 0.3)
          SlashVFX(WaveReference.CFrame, "Bright red", "Neon", 0, 0.1, 0.001, 0.1, 0.1, 0, 0.001, 0.001)
        end
      end))
      for i = 1, 50 do
        Wait2()
        ValidateDamage(Part2, "Normal", 2, 7, 8, RootPart, 5, 247718107, 1.4, 0.3)
        ValidateDamage(Part3, "Normal", 2, 7, 8, RootPart, 5, 247718107, 1.4, 0.3)
        ValidateDamage(Part5, "Normal", 2, 7, 8, RootPart, 5, 247718107, 1.4, 0.3)
        ValidateDamage(Part8, "Normal", 2, 7, 8, RootPart, 5, 247718107, 1.4, 0.3)
        ValidateDamage(Part9, "Normal", 2, 7, 8, RootPart, 5, 247718107, 1.4, 0.3)
        ValidateDamage(Part10, "Normal", 2, 7, 8, RootPart, 5, 247718107, 1.4, 0.3)
        Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 1), 0.3)
        RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, -2, 0) * CFrame.Angles(0, 0, -1), 0.3)
        RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(3.2, 0.5, 1.6), 0.3)
        LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.8, 0, -0.2), 0.3)
        RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
        LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
        HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
      end
    end
  end
  RemoveCharacterControl()
  CanResumeControl = true
  Attacking = false
end
function Move3()
  Attacking = true
  if not Fury then
    CanResumeControl = false
    RemoveCharacterControl()
    SoundEffect(RootPart, 588738544, 10, 1, false)
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "Charge...", "Blue")
    for i = 1, 15 do
      wait()
      BlockVFX(LeftArmReference.CFrame, "Cyan", "Neon", 0, 0.05, 1, 1, 1, 0.5, 0.5, 0.5)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, -1), 0.2)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 1), 0.2)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(0.2, 0, 0.2), 0.2)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.3, 0.8, 0) * CFrame.Angles(0, 0, -2.6), 0.2)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, 0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, -1, 0), 0.2)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, -0.5) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, -1, 0), 0.2)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.2)
    end
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "Tactical blast!", "Blue")
    for i = 1, 8 do
      wait()
      BlockVFX(LeftArmReference.CFrame, "Cyan", "Neon", 0, 0.05, 1, 1, 1, 0.5, 0.5, 0.5)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(-0.3, 0, 0.2), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.3, 0.5, -0.3) * CFrame.Angles(0.5, 0, 0.5), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.5) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
    local TouchedFloor, WavePosition = FindPartOnRay(LeftArmReference.Position, CFrame.new(LeftArmReference.Position, LeftArmReference.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
    SoundEffect(RootPart, 588735437, 10, 1, false)
    SoundEffect(RootPart, 588736245, 10, 1, false)
    CircleVFX(LeftArmReference.CFrame, "Cyan", "Neon", 0, 0.05, 10, 10, 10, 10, 10, 10)
    if TouchedFloor then
      WaveVFX(CFrame.new(WavePosition), "Cyan", "Neon", 0, 0.05, 1, 1.5, 1, 2, 0, 2)
    end
    ValidateDamage(RootPart, "Normal", 20, 10, 14, RootPart, 5, 0, 1.4, 0.3, "Stun")
    ValidateDamage(RootPart, "Normal", 45, 6, 8, RootPart, 5, 0, 1.4, 0.3)
    RemoveCharacterControl()
    CanResumeControl = true
  else
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "C h a o s   c o u n t e r   a t t a c k .", "Red")
    for i = 1, 5 do
      for i = 1, 5 do
        Wait2()
        Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
        RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, -1), 0.3)
        RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(2.6, 0, 0.2), 0.3)
        LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.5, 0, -0.2), 0.3)
        RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
        LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
        HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, 1), 0.3)
      end
      SoundEffect(Torso, 247718224, 1, 1.044, false)
      for i = 1, 5 do
        Wait2()
        ValidateDamage(Part2, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
        ValidateDamage(Part3, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
        ValidateDamage(Part5, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
        ValidateDamage(Part8, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
        ValidateDamage(Part9, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
        ValidateDamage(Part10, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
        Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, -1), 0.3)
        RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, 1), 0.3)
        RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.4, 0) * CFrame.Angles(0.3, 0, -0.5), 0.3)
        LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.5, 0, -0.2), 0.3)
        RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, 0.7) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, -1, 0), 0.3)
        LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, -0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, -1, 0), 0.3)
        HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, 1), 0.3)
      end
      for i = 1, 3 do
        Wait2()
        RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(1, -1, 0.3), 0.5)
      end
      for i = 1, 5 do
        Wait2()
        Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
        RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1.2), 0.3)
        RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(0.2, 0.5, -0.8) * CFrame.Angles(2.6, 0, -1.3), 0.3)
        LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.5, 0, -0.2), 0.3)
        RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
        LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
        HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, 1.57), 0.3)
      end
      SoundEffect(Torso, 247718224, 1, 1.044, false)
      for i = 1, 5 do
        Wait2()
        ValidateDamage(Part2, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
        ValidateDamage(Part3, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
        ValidateDamage(Part5, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
        ValidateDamage(Part8, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
        ValidateDamage(Part9, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
        ValidateDamage(Part10, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
        Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
        RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1), 0.3)
        RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.2, 0.4, 0.2) * CFrame.Angles(-0.1, -0.2, 0.6), 0.3)
        LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.5, 0, -0.4), 0.3)
        RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.7) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
        LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
        HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-2, 0, 1.57), 0.3)
      end
    end
    local TouchedFloor, WavePosition = FindPartOnRay(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
    SoundEffect(RootPart, 588735437, 10, 1, false)
    SoundEffect(RootPart, 588736245, 10, 1, false)
    CircleVFX(RootPart.CFrame, "Bright red", "Neon", 0, 0.05, 10, 10, 10, 10, 10, 10)
    if TouchedFloor then
      WaveVFX(CFrame.new(WavePosition), "Bright red", "Neon", 0, 0.05, 1, 1.5, 1, 2, 0, 2)
    end
    ValidateDamage(RootPart, "Normal", 20, 10, 14, RootPart, 5, 0, 1.4, 0.3, "Stun")
    ValidateDamage(RootPart, "Normal", 45, 6, 8, RootPart, 5, 0, 1.4, 0.3)
  end
  Attacking = false
end
function Move4()
  Attacking = true
  CanResumeControl = false
  RemoveCharacterControl()
  if not Fury then
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "...", "Blue")
    for i = 1, 20 do
      Wait2()
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(2.6, 0, 0.2), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, 1), 0.3)
    end
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "X...", "Blue")
    SoundEffect(Torso, 247718224, 1, 0.8, false)
    RootPartReferenceWeld.C0 = CFrame.new(0, 0, 10) * CFrame.Angles(0, 0, -0.8)
    CircleVFX(RootPartReference.CFrame, "Cyan", "Neon", 0, 0.01, 5, 5, 5, 3, -0.001, 0.01)
    ValidateDamage(RootPartReference, "Normal", 10, 10, 13, RootPart, 5, 247718107, 1.4, 0.3, "Defence", 0.25, 3)
    for i = 1, 8 do
      Wait2()
      ValidateDamage(Part2, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part3, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part5, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part8, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part9, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part10, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, -1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.4, 0) * CFrame.Angles(0.1, 0, -0.5), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, 0.7) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, -1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, -0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, -1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, 1), 0.3)
    end
    for i = 1, 20 do
      Wait2()
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1.2), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(0.2, 0.5, -0.8) * CFrame.Angles(2.6, 0, -1.3), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(0.5, 0, -0.2), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, 1.57), 0.3)
    end
    SoundEffect(Torso, 247718224, 1, 0.8, false)
    RootPartReferenceWeld.C0 = CFrame.new(0, 0, 10) * CFrame.Angles(0, 0, 0.8)
    CircleVFX(RootPartReference.CFrame, "Cyan", "Neon", 0, 0.01, 5, 5, 5, 3, -0.001, 0.01)
    ValidateDamage(RootPartReference, "Normal", 10, 10, 13, RootPart, 5, 247718107, 1.4, 0.3, "Defence", 0.25, 3)
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "Cut!", "Blue")
    for i = 1, 50 do
      Wait2()
      ValidateDamage(Part2, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part3, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part5, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part8, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part9, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      ValidateDamage(Part10, "Normal", 2, 3, 5, RootPart, 5, 247718107, 1.4, 0.3)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.2, 0.4, 0.2) * CFrame.Angles(-0.1, -0.2, 0.6), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.5, 0, -0.4), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.7) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, 0.7) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-2, 0, 1.57), 0.3)
    end
  else
    SoundEffect(LeftArmReference, 199145446, 1, 1, false)
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, ". . .", "Red")
    for i = 1, 30 do
      wait()
      BlockVFX(LeftArmReference.CFrame, "Bright red", "Neon", 0, 0.05, 1, 1, 1, 0.5, 0.5, 0.5)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, -1), 0.2)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 1), 0.2)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(0.2, 0, 0.2), 0.2)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.3, 0.5, 0) * CFrame.Angles(1.6, 0, 0.6), 0.2)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, -1, 0), 0.2)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.8, -1, -0.5) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, -1, 0.5), 0.2)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.2)
    end
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "C h a o s . . .", "Red")
    for i = 1, 8 do
      wait()
      BlockVFX(LeftArmReference.CFrame, "Bright red", "Neon", 0, 0.05, 1, 1, 1, 0.5, 0.5, 0.5)
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1.6), 0.4)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, -0.2) * CFrame.Angles(0, 0, -1.6), 0.4)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.6, 0) * CFrame.Angles(-0.2, 0, 0.2), 0.4)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.3, 0.5, 0) * CFrame.Angles(1.6, 0, -1.6), 0.4)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.6, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1.6, -0.5), 0.4)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.6, -1, 0.5) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1.6, 0.5), 0.4)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.4)
    end
    SoundEffect(LeftArmReference, 280247455, 3, 1, false)
    WaveVFX(LeftArmReference.CFrame, "Bright red", "Neon", 0, 0.05, 1, 1.5, 1, 1, 0.5, 1)
    for i = 1, 30 do
      wait()
      WaveVFX(LeftArmReference.CFrame, "Bright red", "Neon", 0, 0.05, 1, 1.5, 1, 1, 0.5, 1)
      LeftArmReferenceWeld.C0 = CFrame.new(0, i * 2, 0)
      RingVFX(LeftArmReference.CFrame * CFrame.Angles(1.57, 0, 1.57), "Bright red", "Neon", 0, 0.05, 1, 1, 1, 1, 1, 1)
    end
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "O V E R D R I V E !", "Red")
    local TouchedFloor, WavePosition = FindPartOnRay(LeftArmReference.Position, CFrame.new(LeftArmReference.Position, LeftArmReference.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
    if TouchedFloor then
      Hitbox = CircleVFX(CFrame.new(WavePosition), "Bright red", "Neon", 0, 0.01, 10, 10, 10, 10, 10, 10)
      WaveVFX(Hitbox.CFrame, "Bright red", "Neon", 0, 0.01, 1, 1.5, 1, 2, 0, 2)
    end
    SoundEffect(LeftArmReference, 110284742, 3, 0.8, false)
    wait()
    ValidateDamage(Hitbox, "Normal", 100, 26, 30, RootPart, 5, 247718107, 1.4, 0.3, "Stun", "Movement", 0.1, 0.5)
    LeftArmReferenceWeld.C0 = CFrame.new(0, 1, 0)
  end
  ResumeCharacterControl()
  CanResumeControl = true
  Attacking = false
end
function FuryMode()
  Attacking = true
  Cooldown7Add = 0
  CanResumeControl = false
  RemoveCharacterControl()
  if not Fury then
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, ". . .", "Red")
    coroutine.resume(coroutine.create(function()
      for i = 1, 60 do
        Wait2()
        Attacking = true
        Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.3)
        RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
        RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5 - DoAnimateVal / 4, 0) * CFrame.Angles(-0.1 - DoAnimateVal / 8, -1, 0.3 - DoAnimateVal / 8), 0.3)
        LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5 - DoAnimateVal / 4, 0) * CFrame.Angles(0 - DoAnimateVal2 / 2, 0, -0.2 - DoAnimateVal2 / 4), 0.3)
        RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 0, 0), 0.3)
        LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 0, 0), 0.3)
        HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, 1.57), 0.3)
      end
    end))
    Face.Texture = "http://www.roblox.com/asset/?id=362505168"
    for i = 1, 60 do
      wait()
      Part2.Transparency = Part2.Transparency + 0.01
      Part5.Transparency = Part5.Transparency + 0.01
      Part3.Transparency = Part3.Transparency + 0.01
      Part9.Transparency = Part9.Transparency + 0.01
      Part8.Transparency = Part8.Transparency + 0.01
      Part10.Transparency = Part10.Transparency + 0.01
    end
    for i, v in pairs(LazerEdge:children()) do
      if v.BrickColor == BrickColor.new("Cyan") then
        v.BrickColor = BrickColor.new("Bright red")
      end
    end
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "I t ' s   t i m e   t o   e n d   t h i s   a l r e a d y   ,", "Red")
    wait(2)
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "d o n ' t   y o u   t h i n k ?", "Red")
    for i = 1, 60 do
      wait()
      Part2.Transparency = Part2.Transparency - 0.01
      Part5.Transparency = Part5.Transparency - 0.01
      Part3.Transparency = Part3.Transparency - 0.01
      Part9.Transparency = Part9.Transparency - 0.01
      Part8.Transparency = Part8.Transparency - 0.01
      Part10.Transparency = Part10.Transparency - 0.01
    end
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "L e t ' s   p l a y   h i d e   a n d   s e e k .", "Red")
    for i = 1, 120 do
      Wait2()
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0.3, 0), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.4 - DoAnimateVal / 4, 0) * CFrame.Angles(-0.1 - DoAnimateVal / 8, -1, 0.3 - DoAnimateVal / 8), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.4 - DoAnimateVal / 4, 0) * CFrame.Angles(0 - DoAnimateVal2 / 2, 0, -0.2 - DoAnimateVal2 / 4), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 0, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 0, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, 1.57), 0.3)
    end
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, ": )", "Red")
    Fury = true
  else
    Fury = false
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "Uhh..", "Blue")
    coroutine.resume(coroutine.create(function()
      for i = 1, 60 do
        Wait2()
        Attacking = true
        Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.3)
        RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.3)
        RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5 - DoAnimateVal / 4, 0) * CFrame.Angles(-0.1 - DoAnimateVal / 8, -1, 0.3 - DoAnimateVal / 8), 0.3)
        LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5 - DoAnimateVal / 4, 0) * CFrame.Angles(0 - DoAnimateVal2 / 2, 0, -0.2 - DoAnimateVal2 / 4), 0.3)
        RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 0, 0), 0.3)
        LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 0, 0), 0.3)
        HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, 1.57), 0.3)
      end
    end))
    Face.Texture = Texture
    for i = 1, 60 do
      wait()
      Part2.Transparency = Part2.Transparency + 0.01
      Part5.Transparency = Part5.Transparency + 0.01
      Part3.Transparency = Part3.Transparency + 0.01
      Part9.Transparency = Part9.Transparency + 0.01
      Part8.Transparency = Part8.Transparency + 0.01
      Part10.Transparency = Part10.Transparency + 0.01
      Head.face.Transparency = Head.face.Transparency - 0.01
    end
    for i, v in pairs(LazerEdge:children()) do
      if v.BrickColor == BrickColor.new("Bright red") then
        v.BrickColor = BrickColor.new("Cyan")
      end
    end
    for i = 1, 60 do
      wait()
      Part2.Transparency = Part2.Transparency - 0.01
      Part5.Transparency = Part5.Transparency - 0.01
      Part3.Transparency = Part3.Transparency - 0.01
      Part9.Transparency = Part9.Transparency - 0.01
      Part8.Transparency = Part8.Transparency - 0.01
      Part10.Transparency = Part10.Transparency - 0.01
    end
    game.Chat:Chat(game.Players.LocalPlayer.Character.Head, "What the hell just happened? i can't remember anything...", "Blue")
    for i = 1, 120 do
      Wait2()
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, DoAnimateVal4 / 4, DoAnimateVal4 / 4), 0.2)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.2)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5 + DoAnimateVal2, 0) * CFrame.Angles(0.1 + DoAnimateVal2, 0, 0.2), 0.2)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5 + DoAnimateVal2, 0) * CFrame.Angles(0.1 + DoAnimateVal2, 0, -0.2), 0.2)
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.05, 0, 0), 0.2)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.05, 0, 0), 0.2)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
  end
  CanResumeControl = true
  Attacking = false
  Cooldown7Add = 1
end
function MouseClick()
  if Attacking or not CanAnimate then
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
function Keydown(Key)
  if Attacking or not CanAnimate then
    return
  end
  if Key == "z" and Cooldown1 == MaxCooldown1 and Mana.Value > 5 then
    Cooldown1 = 0
    Mana.Value = Mana.Value - 5
    Move1()
  end
  if Key == "x" and Cooldown2 == MaxCooldown2 and Mana.Value > 15 then
    Cooldown2 = 0
    Mana.Value = Mana.Value - 15
    Move2()
  end
  if Key == "c" and Cooldown3 == MaxCooldown3 and Mana.Value > 40 then
    Cooldown3 = 0
    Mana.Value = Mana.Value - 40
    Move3()
  end
  if Key == "v" and Cooldown4 == MaxCooldown4 and Mana.Value > 50 then
    Cooldown4 = 0
    Mana.Value = Mana.Value - 50
    Move4()
  end
  if Key == "q" and Cooldown5 == MaxCooldown5 then
    Cooldown5 = 0
    EvadeQ()
  end
  if Key == "e" and Cooldown6 == MaxCooldown6 then
    Cooldown6 = 0
    EvadeE()
  end
  if Key == "f" and Cooldown7 > MaxCooldown7 / 16 then
    FuryMode()
  end
end
Mouse.Button1Down:connect(MouseClick)
Mouse.KeyDown:connect(Keydown)
CooldownZBarBar.MouseButton1Click:connect(MobileControlZ)
CooldownXBarBar.MouseButton1Click:connect(MobileControlX)
CooldownCBarBar.MouseButton1Click:connect(MobileControlC)
CooldownVBarBar.MouseButton1Click:connect(MobileControlV)
CooldownQBarBar.MouseButton1Click:connect(MobileControlQ)
CooldownEBarBar.MouseButton1Click:connect(MobileControlE)
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
function Effects()
  if StunEffect.Value and not Attacking then
    CanAnimate = false
    HealthBarText.Text = "Stunned!"
    ManaBarText.Text = "Stunned!"
    RemoveCharacterControl()
    if CanShowStunDisplay then
      CanShowStunDisplay = false
      Display(Character, "Stunned", "Stun")
    end
    AntiGlitch = true
    Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, DoAnimateVal4 / 4, DoAnimateVal4 / 4), 0.2)
    RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.2)
    RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5 + DoAnimateVal2, 0) * CFrame.Angles(0.1 + DoAnimateVal2, 0, 0.2), 0.2)
    LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5 + DoAnimateVal2, 0) * CFrame.Angles(0.1 + DoAnimateVal2, 0, -0.2), 0.2)
    RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
    LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
    RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.05, 0, 0), 0.2)
    LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.05, 0, 0), 0.2)
    HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    coroutine.resume(coroutine.create(function()
      wait(2)
      CanRemoveStun = true
    end))
    if CanRemoveStun then
      StunEffect.Stun.Value = StunEffect.Stun.Value - 10
    end
    if 0 < Stars.Transparency then
      Stars.Transparency = Stars.Transparency - 0.01
    end
  end
  if StunEffect.Stun.Value < 1 then
    if CanResumeControl then
      ResumeCharacterControl()
    else
      wait()
    end
    StunEffect.Stun.Value = 0
    StunBarVisible = false
    StunEffect.Value = false
    CanShowStunDisplay = true
    CanRemoveStun = false
    if not Attacking then
      CanAnimate = true
    end
    AntiGlitch = false
    if 1 > Stars.Transparency then
      Stars.Transparency = Stars.Transparency + 0.05
    end
  end
end
for i, v in pairs(Debuffs:children()) do
  if MyStats:FindFirstChild(v.Name) then
    MyStats:FindFirstChild(v.Name).Value = MyStats:FindFirstChild(v.Name).Value - v.Value
  end
end
function VisualEffects()
  for i = 1, #VFXList do
    if VFXList[i] then
      local VFXConfiguration = VFXList[i]
      if VFXConfiguration then
        if VFXConfiguration[1] == "Display" and VFXConfiguration[2]:FindFirstChild("Damage") then
          VFXConfiguration[2].Damage.TextLabel.TextStrokeTransparency = VFXConfiguration[2].Damage.TextLabel.TextStrokeTransparency + VFXConfiguration[3]
          VFXConfiguration[2].Damage.TextLabel.TextTransparency = VFXConfiguration[2].Damage.TextLabel.TextTransparency + VFXConfiguration[3]
        end
        if VFXConfiguration[1] == "Resize" and VFXConfiguration[2]:FindFirstChild("Mesh") and 1 > VFXConfiguration[2].Transparency then
          VFXConfiguration[2].Mesh.Scale = VFXConfiguration[2].Mesh.Scale + Vector3.new(VFXConfiguration[4], VFXConfiguration[5], VFXConfiguration[6])
          VFXConfiguration[2].Transparency = VFXConfiguration[2].Transparency + VFXConfiguration[3]
        end
        if VFXConfiguration[1] == "Rotate" and 1 > VFXConfiguration[2].Transparency then
          VFXConfiguration[2].Rotation = VFXConfiguration[2].Rotation + Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
        end
      end
    end
  end
end
function UpdateAllBars()
  AtkBarText.Text = "Atk: " .. Attack.Value * 100 .. "%"
  DefBarText.Text = "Def: " .. Defence.Value * 100 .. "%"
  MvmtBarText.Text = "Mvmt: " .. Movement.Value * 100 .. "%"
  ManaBarText.Text = "Mana: " .. Mana.Value .. "%"
  HealthBarText.Text = "Health: " .. Humanoid.Health .. "%"
  if PushedJump.Value then
    Humanoid.JumpPower = 300
    CanResumeControl = false
  else
    CanResumeControl = true
  end
  if not AntiGlitch then
    HealthBarBar:TweenSize(UDim2.new(0.98 * (Character.Humanoid.Health / Character.Humanoid.MaxHealth), 0, 0, 19), "Out", "Quad", 0.3)
    ManaBarBar:TweenSize(UDim2.new(0.98 * (Mana.Value / 100), 0, 0, 19), "Out", "Quad", 0.3)
    CooldownZBarBar:TweenSize(UDim2.new(1 * (Cooldown1 / MaxCooldown1), 0, 0, 70), "Out", "Quad", 0.3)
    CooldownXBarBar:TweenSize(UDim2.new(1 * (Cooldown2 / MaxCooldown2), 0, 0, 70), "Out", "Quad", 0.3)
    CooldownCBarBar:TweenSize(UDim2.new(1 * (Cooldown3 / MaxCooldown3), 0, 0, 70), "Out", "Quad", 0.3)
    CooldownVBarBar:TweenSize(UDim2.new(1 * (Cooldown4 / MaxCooldown4), 0, 0, 70), "Out", "Quad", 0.3)
    CooldownQBarBar:TweenSize(UDim2.new(1 * (Cooldown5 / MaxCooldown5), 0, 0, 70), "Out", "Quad", 0.3)
    CooldownEBarBar:TweenSize(UDim2.new(1 * (Cooldown6 / MaxCooldown6), 0, 0, 70), "Out", "Quad", 0.3)
    CooldownFBarBar:TweenSize(UDim2.new(1 * (Cooldown7 / MaxCooldown7), 0, 0, 70), "Out", "Quad", 0.3)
  end
  if StunEffect.Value == true then
    if not StunBarVisible then
      StunBarVisible = true
      StunBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 116, 0, 25), UDim2.new(0, 0, 0, 0), UDim2.new(0, 116, 0.843, 0), 0, true, "Really black", 0)
      StunBarBar = GUI("Frame", StunBarBack, UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), UDim2.new(0, 4, 0, 3), 0, true, "Cool yellow", 0)
      StunBarText = GUI("TextLabel", WeaponGUI, UDim2.new(0, 109, 0, 19), UDim2.new(0, 120, 0.844, 0), 1, true, "", 0, nil, "Stun", "Bright yellow", "Black", 0, true, "SourceSansBold")
    end
    StunBarBar:TweenSize(UDim2.new(0.94 * (StunEffect.Stun.Value / 1000), 0, 0, 19), "Out", "Quad", 0.3)
  end
  if Stun.Value == 0 then
    coroutine.resume(coroutine.create(function()
      StunBarBack:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), "Out", "Quad", 3)
      StunBarBack:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), "Out", "Quad", 3)
      StunBarText:TweenSizeAndPosition(UDim2.new(0, 0, 0, 0), UDim2.new(0, 0, 0, 0), "Out", "Quad", 3)
      StunBarBar:Remove()
      wait(5)
      StunBarBack:Remove()
      StunBarText:Remove()
    end))
  end
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
function FindPartOnRay(Position, Direction, MaxDistance, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * MaxDistance), Ignore)
end
function Values()
  for i, v in pairs(Debuffs:children()) do
    if v ~= nil and MyStats:FindFirstChild(v.Name) then
      if v.Name == "Attack" then
        AttackDecrease = AttackDecrease + v.Value
      end
      if v.Name == "Movement" then
        MvmtDecrease = MvmtDecrease + v.Value
      end
      if v.Name == "Defence" then
        DefenceDecrease = DefenceDecrease + v.Value
      end
      if Attack.Value < 0 then
        Attack.Value = 0
      end
      if Defence.Value < 0 then
        Defence.Value = 0
      end
      if Movement.Value < 0 then
        Movement.Value = 0
      end
    end
  end
  Attack.Value = 1 - AttackDecrease
  Defence.Value = 1 - DefenceDecrease
  Movement.Value = 1 - MvmtDecrease
  AttackDecrease = 0
  MvmtDecrease = 0
  DefenceDecrease = 0
  if CharacterUnderControl and not Attacking then
    Humanoid.WalkSpeed = 16 * Movement.Value
  end
  Increase = Increase + 0.1
  Increase2 = Increase2 + 1
  if WalkVal > 10 then
    WalkInvert = true
  elseif 1 > WalkVal then
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
  elseif 0 > DoAnimateVal2 then
    Invert2 = false
  end
  if Invert == false then
    DoAnimateVal = DoAnimateVal + 0.01
  else
    DoAnimateVal = DoAnimateVal - 0.01
  end
  if Invert2 == false then
    DoAnimateVal2 = DoAnimateVal2 + 0.005
  else
    DoAnimateVal2 = DoAnimateVal2 - 0.005
  end
  if 1 < DoAnimateVal3 then
    Invert3 = true
  elseif 0 > DoAnimateVal3 then
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
  if Invert4 == false then
    DoAnimateVal4 = DoAnimateVal4 + 0.1
  else
    DoAnimateVal4 = DoAnimateVal4 - 0.1
  end
  if Stun.Value > 999 then
    Stun.Value = 1000
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
  if Cooldown5 < MaxCooldown5 then
    Cooldown5 = Cooldown5 + Cooldown5Add
  end
  if Cooldown5 > MaxCooldown5 - 1 then
    Cooldown5 = MaxCooldown5
  end
  if Cooldown6 < MaxCooldown6 then
    Cooldown6 = Cooldown6 + Cooldown6Add
  end
  if Cooldown6 > MaxCooldown6 - 1 then
    Cooldown6 = MaxCooldown6
  end
  if Cooldown7 < MaxCooldown7 and not Fury then
    Cooldown7 = Cooldown7 + Cooldown7Add
  end
  if Fury then
    Cooldown7 = Cooldown7 - Cooldown7Add
  end
  if Cooldown7 > MaxCooldown7 - 1 then
    Cooldown7 = MaxCooldown7
  end
  if Cooldown7 < 1 and Fury and not Attacking then
    coroutine.resume(coroutine.create(function()
      FuryMode()
    end))
  end
  if ManaDelay < ManaDelay2 then
    ManaDelay = ManaDelay + 1
  elseif ManaDelay > ManaDelay2 - 1 then
    ManaDelay = 0
  end
  if Mana.Value < 100 and ManaDelay < 1 then
    Mana.Value = Mana.Value + 1
  end
  if Mana.Value > 99 then
    Mana.Value = 100
  end
end
function Animations()
  local Velocity = RootPart.Velocity.magnitude * Vector3.new(1, 0, 1).magnitude
  local FallVelocity = RootPart.Velocity.Y
  local Floor = FindPartOnRay(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position + Vector3.new(0, -1, 0)).lookVector, 4, Character)
  if Floor and PushedJump.Value then
    PushedJump.Value = false
  end
  StarsWeld.C1 = Animate(StarsWeld.C1, CFrame.Angles(0, Increase, 0), 0.2)
  if CanAnimate then
    if Velocity > 1 and Floor then
      if WalkInvert then
        RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame * CFrame.Angles(0, 0, 1), 0.2)
        LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame * CFrame.Angles(0, 0, 1), 0.2)
      elseif not WalkInvert then
        RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame * CFrame.Angles(0, 0, -1), 0.2)
        LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame * CFrame.Angles(0, 0, -1), 0.2)
      end
    else
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
    end
    if Velocity < 1 and Floor and not Attacking and Fury then
      Walk = false
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 0), 0.2)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.2)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5 - DoAnimateVal / 8, 0) * CFrame.Angles(-0.1 - DoAnimateVal / 8, -1, 0.3 - DoAnimateVal / 8), 0.2)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5 - DoAnimateVal / 8, 0) * CFrame.Angles(0 - DoAnimateVal2 / 2, 0, -0.2 - DoAnimateVal2 / 4), 0.2)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, -0.5) * CFrame.Angles(-1.57, 0, 1.57), 0.2)
    end
    if Velocity > 1 and Floor and not Attacking and Fury then
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.2, 0.1, 0.6), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0.1, 0, -0.8), 0.2)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5 - DoAnimateVal / 4, 0) * CFrame.Angles(-0.3 - DoAnimateVal / 8, -1, 0.3 - DoAnimateVal / 8), 0.2)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1, 0.5 - DoAnimateVal / 4, -1) * CFrame.Angles(1.6 - DoAnimateVal2 / 2, 0, 1.6 + DoAnimateVal2 / 4), 0.2)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 0.8, 0), 0.2)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.7, -1, 0.5) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 0.8, 0), 0.2)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0.5, -0.8, 0) * CFrame.Angles(-1.57, 0, 0), 0.2)
    end
    if FallVelocity > 1 and not Floor and not Attacking and not PushedJump.Value and Fury then
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(-0.5, 0, 0 + DoAnimateVal / 8), 0.2)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0.3, RootPart.RotVelocity.Y / 50, 0), 0.2)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.6 + DoAnimateVal2 / 4, 0) * CFrame.Angles(-0.5, 0, 0.1 + DoAnimateVal2 / 4), 0.2)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.6 + DoAnimateVal2 / 8, 0) * CFrame.Angles(-0.5, 0, -0.1 - DoAnimateVal2 / 4), 0.2)
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, -0.5) * CFrame.Angles(-0.5, -1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.2)
    end
    if FallVelocity > 1 and not Floor and not Attacking and PushedJump.Value and Fury then
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(-0.5, 0, 0), 0.2)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, Increase * 6), 0.35)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0.2) * CFrame.Angles(-0.5, 0, 0.3 + DoAnimateVal2 / 4), 0.2)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0.2) * CFrame.Angles(-0.5, 0, -0.3 - DoAnimateVal2 / 4), 0.2)
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.3, 0, 0), 0.2)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.3, 0, 0), 0.2)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.2)
    end
    if FallVelocity < -1 and not Floor and not Attacking and PushedJump.Value and Fury then
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.2)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(-Increase * 6, 0, 0), 0.35)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0.2) * CFrame.Angles(-0.5, 0, 0.1 + DoAnimateVal2 / 4), 0.2)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0.2) * CFrame.Angles(-0.5, 0, -0.1 - DoAnimateVal2 / 4), 0.2)
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(1, 1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(-1, -1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.2)
    end
    if FallVelocity < -1 and not Floor and not Attacking and not PushedJump.Value and Fury then
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0.8, 0, 0 + DoAnimateVal / 8), 0.2)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(-0.3, RootPart.RotVelocity.Y / 50, 0), 0.2)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.6 + DoAnimateVal2 / 4, 0) * CFrame.Angles(0.5, 0, 0.1 + DoAnimateVal2 / 4), 0.2)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.6 + DoAnimateVal2 / 8, 0) * CFrame.Angles(0.5, 0, -0.1 - DoAnimateVal2 / 4), 0.2)
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0.3, 1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, -0.5) * CFrame.Angles(-0.5, -1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.2)
    end
    if Velocity < 1 and Floor and not Attacking and not Fury then
      Walk = false
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(-DoAnimateVal / 4, 0, 0.8 + DoAnimateVal / 8), 0.2)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, -1), 0.2)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5 + DoAnimateVal2 / 4, 0) * CFrame.Angles(0 + DoAnimateVal / 4, 0, 0.1 + DoAnimateVal2 / 4), 0.2)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5 + DoAnimateVal2 / 8, 0) * CFrame.Angles(0 - DoAnimateVal / 4, 0, -0.1 - DoAnimateVal2 / 4), 0.2)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.7, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 1.2, 0), 0.2)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.7, -1, 0.4) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 1.2, 0), 0.2)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.2)
    end
    if Velocity > 1 and Floor and not Attacking and not Fury then
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 0.6), 0.3)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0.1, 0, -0.8), 0.3)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5 - DoAnimateVal / 4, 0) * CFrame.Angles(-0.3 - DoAnimateVal / 8, 0, 0.3 - DoAnimateVal / 8), 0.3)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1, 0.5 - DoAnimateVal / 4, -1) * CFrame.Angles(1.6 - DoAnimateVal2 / 2, 0, 1.6 + DoAnimateVal2 / 4), 0.3)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.8, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 0.8, 0), 0.3)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.7, -1, 0.5) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 0.8, 0), 0.3)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.3)
    end
    if FallVelocity > 1 and not Floor and not Attacking and not PushedJump.Value and not Fury then
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(-0.5, 0, 0 + DoAnimateVal / 8), 0.2)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0.3, RootPart.RotVelocity.Y / 50, 0), 0.2)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.6 + DoAnimateVal2 / 4, 0) * CFrame.Angles(-0.5, 0, 0.1 + DoAnimateVal2 / 4), 0.2)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.6 + DoAnimateVal2 / 8, 0) * CFrame.Angles(-0.5, 0, -0.1 - DoAnimateVal2 / 4), 0.2)
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, -0.5) * CFrame.Angles(-0.5, -1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.2)
    end
    if FallVelocity > 1 and not Floor and not Attacking and PushedJump.Value and not Fury then
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(-0.5, 0, 0), 0.2)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, Increase * 6), 0.35)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0.2) * CFrame.Angles(-0.5, 0, 0.3 + DoAnimateVal2 / 4), 0.2)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0.2) * CFrame.Angles(-0.5, 0, -0.3 - DoAnimateVal2 / 4), 0.2)
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.3, 0, 0), 0.2)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.3, 0, 0), 0.2)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.2)
    end
    if FallVelocity < -1 and not Floor and not Attacking and PushedJump.Value and not Fury then
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.2)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(-Increase * 6, 0, 0), 0.35)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0.2) * CFrame.Angles(-0.5, 0, 0.1 + DoAnimateVal2 / 4), 0.2)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0.2) * CFrame.Angles(-0.5, 0, -0.1 - DoAnimateVal2 / 4), 0.2)
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(1, 1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(-1, -1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.2)
    end
    if FallVelocity < -1 and not Floor and not Attacking and not PushedJump.Value and not Fury then
      Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0.8, 0, 0 + DoAnimateVal / 8), 0.2)
      RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(-0.3, RootPart.RotVelocity.Y / 50, 0), 0.2)
      RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.6 + DoAnimateVal2 / 4, 0) * CFrame.Angles(0.5, 0, 0.1 + DoAnimateVal2 / 4), 0.2)
      LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.6 + DoAnimateVal2 / 8, 0) * CFrame.Angles(0.5, 0, -0.1 - DoAnimateVal2 / 4), 0.2)
      RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
      LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
      RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0.3, 1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
      LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, -0.5) * CFrame.Angles(-0.5, -1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
      HandleWeld.C0 = Animate(HandleWeld.C0, CFrame.new(0, -0.8, 0.5) * CFrame.Angles(-1.57, 0, -1.57), 0.2)
    end
  end
end
while true do
  Wait2()
  UpdateAllBars()
  Values()
  Effects()
  VisualEffects()
  Animations()
end
