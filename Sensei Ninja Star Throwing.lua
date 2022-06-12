wait()
local Player = game.Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local Head = Character.Head
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
if CharaterAnimate and CharacterAnimator then
  CharaterAnimate.Parent = nil
  CharacterAnimator.Parent = nil
end
local ComboKey = "none"
local DisplayComboKey = "none"
local ComboPart = 1
local Attacking = false
local Combo1 = false
local Combo2 = false
local Combo3 = false
local OnCombo = false
local LockedEnemy
NeckDefaultCFrame = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
RootDefaultCFrame = CFrame.Angles(-1.57, 0, 3.14)
RightLegDefaultCFrame = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LeftLegDefaultCFrame = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RightShoulder.C1 = CFrame.new(0, 0.5, 0)
LeftShoulder.C1 = CFrame.new(0, 0.5, 0)
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
function GUI(NewInstance, Parent, Size, Position, BGTransparency, Visible, BGColor, Rotation, Style, Text, TextColor, TextStroke, StrokeTrans, Scaled, Font)
  local NewGui = Instance.new(NewInstance)
  NewGui.Parent = Parent
  coroutine.resume(coroutine.create(function()
    NewGui:TweenSizeAndPosition(Size, Position, "Out", "Quad", 0.5)
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
  return Mesh
end
function Animate(Weld, Point1, Point2)
  return Weld:Lerp(Point1, Point2)
end
function ResumeCharacterControl()
  Humanoid.JumpPower = 50
  Humanoid.WalkSpeed = 16
  CharacterUnderControl = true
end
function RemoveCharacterControl()
  Humanoid.JumpPower = 0
  Humanoid.WalkSpeed = 0
  CharacterUnderControl = false
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
  Services.Debris:AddItem(Part, 5)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "Brick")
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  AddVFX("Rotate", Part)
  return Part
end
function CircleVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 5)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "Sphere")
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  return Part
end
function CylinderVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 5)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "Cylinder")
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  return Part
end
function WaveVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 5)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 20329976)
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  return Part and Mesh
end
function ShurikenVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 5)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 11112101)
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  return Part
end
function KunaiVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 5)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 45728702)
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  return Part
end
function WindVFX(PartPosition, Color, Material, Transparency, TransparencyAdd, Size1, Size2, Size3, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  local Part = CreatePart(Services.Workspace, "VFX", Color, Vector3.new(), Material, Transparency, "Block")
  Part.Anchored = true
  Part.CFrame = PartPosition
  Services.Debris:AddItem(Part, 5)
  local Mesh = CreateMesh(Part, Vector3.new(Size1, Size2, Size3), "SpecialMesh", "FileMesh", 168892432)
  AddVFX("Resize", Part, TransparencyAdd, IncreaseSize1, IncreaseSize2, IncreaseSize3)
  return Part
end
WeaponGUI = Instance.new("ScreenGui", Player.PlayerGui)
WeaponGUI.Name = "WeaponThing"
RightArmReference = CreatePart(Character, "Right arm reference", "None", Vector3.new(), "SmoothPlastic", 1, "Block")
RightArmReferenceWeld = CreateWeld(RightArmReference, CFrame.new(0, 1.5, 0), CFrame.new(0, 0, 0), RightArm, RightArmReference, "LeftArmReferenceToLeftArm")
LeftArmReference = CreatePart(Character, "Left arm reference", "None", Vector3.new(), "SmoothPlastic", 1, "Block")
LeftArmReferenceWeld = CreateWeld(LeftArmReference, CFrame.new(0, 1.5, 0), CFrame.new(0, 0, 0), LeftArm, LeftArmReference, "LeftArmReferenceToRightArm")
function Display(HitCharacter, DisplayText)
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
      local BodyVelocity = Instance.new("BodyVelocity", DamageShowingPart)
      BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
      BodyVelocity.Velocity = Vector3.new(0, 0.5, 0)
      local DisplayNumber = Instance.new("TextLabel", DisplayGui)
      DisplayNumber.Size = UDim2.new(1, 0, 1, 0)
      DisplayNumber.TextTransparency = 1
      DisplayNumber.TextStrokeTransparency = 1
      DisplayNumber.BackgroundTransparency = 1
      DisplayNumber.TextTransparency = 1
      DisplayNumber.Font = "SourceSansBold"
      DisplayNumber.TextScaled = true
      DisplayNumber.TextStrokeColor3 = BrickColor.Black().Color
      DisplayNumber.TextColor3 = BrickColor.new("Really red").Color
      DisplayNumber.Text = "-" .. DisplayText
      DamageShowingPart.Position = HitCharacter.Head.Position + Vector3.new(math.random(-1, 1), 5, math.random(-1, 1))
      coroutine.resume(coroutine.create(function()
        while DisplayNumber.TextTransparency > 0 do
          Wait2()
          DisplayNumber.TextStrokeTransparency = DisplayNumber.BackgroundTransparency - 0.1
          DisplayNumber.TextTransparency = DisplayNumber.TextTransparency - 0.1
        end
        AddVFX("Display", DamageShowingPart, 0.05)
      end))
      Services.Debris:AddItem(DamageShowingPart, 10)
    end
  end
end
function DoDamage(Hit, HitCharacter, Type, MinDamage, MaxDamage, PartLook, Knockback, SFX, SFXPitch, Delay, PartLook)
  if Hit.Health == 0 or HitCharacter:FindFirstChild(Player.Name) then
    return
  end
  SoundEffect(HitCharacter.Torso, SFX, 1, SFXPitch, false)
  local DelayDebounce = Instance.new("Folder", HitCharacter)
  DelayDebounce.Name = Player.Name
  Services.Debris:AddItem(DelayDebounce, Delay)
  local Damage = math.random(MinDamage, MaxDamage)
  HitCharacter.Torso.Velocity = PartLook.CFrame.lookVector * Knockback
  coroutine.resume(coroutine.create(function()
    Wait2()
    Hit:TakeDamage(Damage)
    Display(HitCharacter, Damage, "Damage")
    if Type == "Lock" then
      LockedEnemy = HitCharacter
    end
  end))
end
function ValidateDamage(Part, Type, Distance, MinDamage, MaxDamage, PartLook, Knockback, SFX, SFXPitch, Delay)
  for ChildrenNumber, Children in pairs(Services.Workspace:children()) do
    if Children ~= Character and Children:FindFirstChild("Humanoid") and Children:FindFirstChild("Head") then
      local HitHead = Children.Head
      local TargetPosition = HitHead.Position - Part.Position
      local Magnitude = TargetPosition.magnitude
      if Distance > Magnitude then
        local Hit = Children.Humanoid
        local HitCharacter = Children
        DoDamage(Hit, HitCharacter, Type, MinDamage, MaxDamage, PartLook, Knockback, SFX, SFXPitch, Delay, PartLook)
      end
    end
  end
end
function Prepare2Target()
  Attacking = true
  Combo1 = true
  RightArmReferenceWeld.C0 = CFrame.new(0, 1.5, 0)
  LeftArmReferenceWeld.C0 = CFrame.new(0, 1.5, 0)
  for i = 1, 25 do
    Wait2()
    ShurikenVFX(RightArmReference.CFrame * CFrame.Angles(0, 0, 1.6), "White", "Neon", 0, 0.05, 1, 1, 1, 0.5, 0.5, 0.5)
    Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, 1), 0.2)
    RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, -0.2) * CFrame.Angles(0, 0, -1), 0.2)
    RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.3, 0.5, 0.1) * CFrame.Angles(0, -0.4, 1.6), 0.2)
    LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-0.8, 0.6, -0.5) * CFrame.Angles(1.6, 0, 0.8), 0.2)
    RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
    LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
    RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, -0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.03, 1, -0.5), 0.2)
    LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0.5) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.03, 1, 0.5), 0.2)
  end
  local RandomCombo = math.random(1, 4)
  if RandomCombo == 1 then
    ComboKey = "z"
    DisplayComboKey = "Z"
  elseif RandomCombo == 2 then
    ComboKey = "q"
    DisplayComboKey = "Q"
  elseif RandomCombo == 3 then
    ComboKey = "r"
    DisplayComboKey = "R"
  elseif RandomCombo == 4 then
    ComboKey = "f"
    DisplayComboKey = "F"
  end
  local KeyBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0.5, 0, 0.9, 0), 0, true, "Really black", 0, nil)
  local KeyBarText = GUI("TextLabel", KeyBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, DisplayComboKey, "White", "White", 1, true, "SourceSansBold")
  ComboPart = 1
  coroutine.resume(coroutine.create(function()
    while ComboPart == 1 and Combo1 == true do
      Wait2()
      ShurikenVFX(RightArmReference.CFrame * CFrame.Angles(0, 0, 1.6), "White", "Neon", 0, 0.05, 1, 1, 1, 0.5, 0.5, 0.5)
    end
  end))
  coroutine.resume(coroutine.create(function()
    wait(0.8)
    if ComboPart == 1 then
      Combo1 = false
      ComboKey = "none"
      Attacking = false
      KeyBarBack:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      KeyBarText:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      wait(2)
      KeyBarBack:Remove()
    elseif ComboPart == 2 then
      KeyBarBack:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      KeyBarText:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      wait(2)
      KeyBarBack:Remove()
    end
  end))
end
function WindShuriken()
  ComboKey = "none"
  for i = 1, 8 do
    Wait2()
    ShurikenVFX(RightArmReference.CFrame * CFrame.Angles(0, 0, 1.6), "White", "Neon", 0, 0.05, 1, 1, 1, 0.5, 0.5, 0.5)
    Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, -1.7), 0.5)
    RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, -0.1) * CFrame.Angles(0, 0, 1.7), 0.5)
    RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.3, 0.5, 0) * CFrame.Angles(1.6, 1, 1), 0.5)
    LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.3, 0.6, 0.3) * CFrame.Angles(0, 0.5, -1.6), 0.5)
    RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.5)
    LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.5)
    RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.5, -1, 0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.03, -1.6, -0.5), 0.5)
    LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.5, -1, -0.8) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.03, -1.6, 0.5), 0.5)
  end
  local Part = CreatePart(Services.Workspace, "Reference", "None", Vector3.new(3, 0, 3), "SmoothPlastic", 1, "Block")
  Part.Position = RightArmReference.Position
  Services.Debris:AddItem(Part, 1)
  Part.Touched:connect(function(Hit)
    if Hit ~= Character and Hit.Parent ~= Character and Hit.Name ~= "VFX" and Hit.Parent.className ~= "Accessory" then
      Part:Remove()
      ValidateDamage(Part, "Lock", 10, 6, 8, RootPart, 5, 199149269, 1, 0.3)
    end
  end)
  local BodyVelocity = Instance.new("BodyVelocity", Part)
  BodyVelocity.Velocity = RootPart.CFrame.lookVector * 50
  BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  coroutine.resume(coroutine.create(function()
    while Part.Parent == workspace do
      Wait2()
      ShurikenVFX(Part.CFrame * CFrame.Angles(3.2, 0, 0), "White", "Neon", 0, 0.05, 1, 1, 1, 0.5, 0.5, 0.5)
    end
    local TouchedFloor, WavePosition = FindPartOnRay(Part.Position, CFrame.new(LeftArmReference.Position, LeftArmReference.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
    CircleVFX(Part.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 5, 5, 5)
    BlockVFX(Part.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 3, 3, 3)
    WaveVFX(CFrame.new(WavePosition), "White", "Neon", 0, 0.05, 1, 1.5, 1, 2, 0, 2)
    Wait2()
    if LockedEnemy then
      do
        local RandomCombo = math.random(1, 3)
        if RandomCombo == 1 then
          ComboKey = "h"
          DisplayComboKey = "H"
        elseif RandomCombo == 2 then
          ComboKey = "b"
          DisplayComboKey = "B"
        elseif RandomCombo == 3 then
          ComboKey = "t"
          DisplayComboKey = "T"
        end
        local KeyBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0.5, 0, 0.9, 0), 0, true, "Really black", 0, nil)
        local KeyBarText = GUI("TextLabel", KeyBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, DisplayComboKey, "White", "White", 1, true, "SourceSansBold")
        coroutine.resume(coroutine.create(function()
          wait(0.8)
          if ComboPart == 2 then
            Combo1 = false
            ComboKey = "none"
            Attacking = false
            KeyBarBack:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
            KeyBarText:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
            LockedEnemy.Torso.Anchored = false
            wait()
            if LockedEnemy then
              LockedEnemy = nil
            end
            wait(2)
            KeyBarBack:Remove()
          elseif ComboPart == 3 then
            KeyBarBack:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
            KeyBarText:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
            wait(2)
            KeyBarBack:Remove()
          end
        end))
      end
    else
      Attacking = false
    end
  end))
end
function TPandHIT()
  ComboKey = "none"
  local TouchedFloor, WavePosition = FindPartOnRay(LeftArmReference.Position, CFrame.new(LeftArmReference.Position, LeftArmReference.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
  CircleVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 5, 5, 5)
  BlockVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 3, 3, 3)
  WaveVFX(CFrame.new(WavePosition), "White", "Neon", 0, 0.05, 1, 1.5, 1, 2, 0, 2)
  wait()
  LockedEnemy.Torso.Anchored = true
  RemoveCharacterControl()
  Character:MoveTo(LockedEnemy.Torso.Position + Vector3.new(0, 0, 5))
  wait()
  local TouchedFloor, WavePosition = FindPartOnRay(LeftArmReference.Position, CFrame.new(LeftArmReference.Position, LeftArmReference.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
  CircleVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 5, 5, 5)
  BlockVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 3, 3, 3)
  WaveVFX(CFrame.new(WavePosition), "White", "Neon", 0, 0.05, 1, 1.5, 1, 2, 0, 2)
  RightArmReferenceWeld.C0 = CFrame.new(1, 1, 0)
  LeftArmReferenceWeld.C0 = CFrame.new(1, 1, 0)
  for i = 1, 8 do
    Wait2()
    Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, -1.7), 0.5)
    RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, -0.1) * CFrame.Angles(0, 0, 1.7), 0.5)
    RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.3, 0.5, 0) * CFrame.Angles(1.6, 1, 0), 0.5)
    LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.3, 0.6, 0) * CFrame.Angles(0, 0.5, -1.6), 0.5)
    RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.5)
    LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.5)
    RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.5, -1, 0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.03, -1.6, -0.5), 0.5)
    LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.5, -1, -0.8) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.03, -1.6, 0.5), 0.5)
    KunaiVFX(LeftArmReference.CFrame * CFrame.Angles(0, 1.6, 1.6), "White", "Neon", 0, 0.05, 1, 1, 1, 0.1, 0.1, 0.1)
    KunaiVFX(RightArmReference.CFrame * CFrame.Angles(-1.6, 1.6, 1.6), "White", "Neon", 0, 0.05, 1, 1, 1, 0.1, 0.1, 0.1)
  end
  for i = 1, 8 do
    Wait2()
    local LeftKunai = KunaiVFX(LeftArmReference.CFrame * CFrame.Angles(0, 1.6, 1.6), "White", "Neon", 0, 0.05, 1, 1, 1, 0.1, 0.1, 0.1)
    local RightKunai = KunaiVFX(RightArmReference.CFrame * CFrame.Angles(-1.6, 1.6, 1.6), "White", "Neon", 0, 0.05, 1, 1, 1, 0.1, 0.1, 0.1)
    ValidateDamage(RightKunai, "Normal", 10, 6, 8, RootPart, 5, 199149269, 1, 0.3)
    Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, -1.7), 0.5)
    RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, -0.1) * CFrame.Angles(0, 0, 1.7), 0.5)
    RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.3, 0.5, 0) * CFrame.Angles(1.6, 0, 1), 0.5)
    LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.3, 0.6, 0) * CFrame.Angles(0, 0.5, -1.6), 0.5)
    RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.5)
    LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.5)
    RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.5, -1, 0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.03, -1.6, -0.5), 0.5)
    LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.5, -1, -0.8) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.03, -1.6, 0.5), 0.5)
    RootPart.Velocity = RootPart.CFrame.lookVector * 50
  end
  local RandomCombo = math.random(1, 3)
  if RandomCombo == 1 then
    ComboKey = "g"
    DisplayComboKey = "G"
  elseif RandomCombo == 2 then
    ComboKey = "r"
    DisplayComboKey = "R"
  elseif RandomCombo == 3 then
    ComboKey = "x"
    DisplayComboKey = "X"
  end
  local KeyBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0.5, 0, 0.9, 0), 0, true, "Really black", 0, nil)
  local KeyBarText = GUI("TextLabel", KeyBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, DisplayComboKey, "White", "White", 1, true, "SourceSansBold")
  coroutine.resume(coroutine.create(function()
    wait(0.8)
    if ComboPart == 3 then
      Combo1 = false
      ComboKey = "none"
      Attacking = false
      ResumeCharacterControl()
      KeyBarBack:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      KeyBarText:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      LockedEnemy.Torso.Anchored = false
      wait()
      if LockedEnemy then
        LockedEnemy = nil
      end
      wait(2)
      KeyBarBack:Remove()
      wait(2)
      KeyBarBack:Remove()
    elseif ComboPart == 4 then
      KeyBarBack:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      KeyBarText:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      wait(2)
      KeyBarBack:Remove()
    end
  end))
end
function ThrowWindKunai()
  local Part = CreatePart(Services.Workspace, "Reference", "None", Vector3.new(3, 0, 3), "SmoothPlastic", 1, "Block")
  Part.Position = LeftArmReference.Position
  Services.Debris:AddItem(Part, 3)
  local BodyVelocity = Instance.new("BodyVelocity", Part)
  BodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  Part.Touched:connect(function(Hit)
    if Hit ~= Character and Hit.Parent ~= Character and Hit.Name ~= "VFX" and Hit.Parent.className ~= "Accessory" then
      Part:Remove()
    end
  end)
  coroutine.resume(coroutine.create(function()
    while Part.Parent == Services.Workspace do
      Wait2()
      Part.CFrame = CFrame.new(Part.Position, LockedEnemy.Torso.Position)
      BodyVelocity.Velocity = Part.CFrame.lookVector * 50
      LeftKunai = KunaiVFX(Part.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 0.1, 0.1, 0.1)
      LeftKunai.Rotation = Part.Rotation
    end
    ValidateDamage(LeftKunai, "Normal", 10, 6, 10, RootPart, 5, 199149269, 1, 0.3)
    ResumeCharacterControl()
    local TouchedFloor, WavePosition = FindPartOnRay(Part.Position, CFrame.new(LeftArmReference.Position, LeftArmReference.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
    CircleVFX(Part.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 5, 5, 5)
    BlockVFX(Part.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 3, 3, 3)
    WaveVFX(CFrame.new(WavePosition), "White", "Neon", 0, 0.05, 1, 1.5, 1, 2, 0, 2)
  end))
  for i = 1, 10 do
    Wait2()
    Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0, 0, -1.7), 0.5)
    RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, -0.1) * CFrame.Angles(0, 0, 1.7), 0.5)
    RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.3, 0.5, 0) * CFrame.Angles(1.6, 0, 1), 0.5)
    LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.3, 0.6, 0) * CFrame.Angles(0, 0, -1.6), 0.5)
    RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.5)
    LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.5)
    RightHip.C0 = Animate(RightHip.C0, CFrame.new(0.5, -1, 0.5) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.03, -1.6, -0.5), 0.5)
    LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-0.5, -1, -0.8) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.03, -1.6, 0.5), 0.5)
  end
  local RandomCombo = math.random(1, 3)
  if RandomCombo == 1 then
    ComboKey = "t"
    DisplayComboKey = "T"
  elseif RandomCombo == 2 then
    ComboKey = "h"
    DisplayComboKey = "H"
  elseif RandomCombo == 3 then
    ComboKey = "c"
    DisplayComboKey = "C"
  end
  local KeyBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0.5, 0, 0.9, 0), 0, true, "Really black", 0, nil)
  local KeyBarText = GUI("TextLabel", KeyBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, DisplayComboKey, "White", "White", 1, true, "SourceSansBold")
  coroutine.resume(coroutine.create(function()
    wait(0.8)
    if ComboPart == 4 then
      Combo1 = false
      ComboKey = "none"
      Attacking = false
      ResumeCharacterControl()
      KeyBarBack:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      KeyBarText:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      LockedEnemy.Torso.Anchored = false
      wait()
      if LockedEnemy then
        LockedEnemy = nil
      end
      wait(2)
      KeyBarBack:Remove()
    elseif ComboPart == 5 then
      KeyBarBack:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      KeyBarText:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      wait(2)
      KeyBarBack:Remove()
    end
  end))
end
function UpAndBehind()
  local TouchedFloor, WavePosition = FindPartOnRay(LeftArmReference.Position, CFrame.new(LeftArmReference.Position, LeftArmReference.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
  CircleVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 5, 5, 5)
  BlockVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 3, 3, 3)
  WaveVFX(CFrame.new(WavePosition), "White", "Neon", 0, 0.05, 1, 1.5, 1, 2, 0, 2)
  wait()
  LockedEnemy.Torso.Anchored = true
  Character:MoveTo(LockedEnemy.Torso.Position + Vector3.new(0, 50, 30))
  wait()
  local TouchedFloor, WavePosition = FindPartOnRay(LeftArmReference.Position, CFrame.new(LeftArmReference.Position, LeftArmReference.Position - Vector3.new(0, 1, 0)).lookVector, 200, Character)
  CircleVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 5, 5, 5)
  BlockVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 3, 3, 3)
  WaveVFX(CFrame.new(WavePosition), "White", "Neon", 0, 0.05, 1, 1.5, 1, 2, 0, 2)
  BodyPosition = Instance.new("BodyPosition", Torso)
  BodyPosition.Position = Torso.Position
  BodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
  for i = 1, 10 do
    Wait2()
    Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.5)
    RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.5)
    RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(-0.6, 0, 0.3), 0.5)
    LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.6, 0, -0.3), 0.5)
    RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.5)
    LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.5)
    RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.03, 0, -0.5), 0.5)
    LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.03, 0, 0.5), 0.5)
  end
  local RandomCombo = math.random(1, 7)
  if RandomCombo == 1 then
    ComboKey = "f"
    DisplayComboKey = "F"
  elseif RandomCombo == 2 then
    ComboKey = "v"
    DisplayComboKey = "V"
  elseif RandomCombo == 3 then
    ComboKey = "g"
    DisplayComboKey = "G"
  elseif RandomCombo == 4 then
    ComboKey = "z"
    DisplayComboKey = "Z"
  elseif RandomCombo == 5 then
    ComboKey = "b"
    DisplayComboKey = "B"
  elseif RandomCombo == 6 then
    ComboKey = "m"
    DisplayComboKey = "M"
  elseif RandomCombo == 7 then
    ComboKey = "n"
    DisplayComboKey = "N"
  end
  local KeyBarBack = GUI("Frame", WeaponGUI, UDim2.new(0, 80, 0, 80), UDim2.new(0.5, 0, 0.9, 0), 0, true, "Really black", 0, nil)
  local KeyBarText = GUI("TextLabel", KeyBarBack, UDim2.new(0, 80, 0, 80), UDim2.new(0, 0, 0, 0), 1, true, "", 0, nil, DisplayComboKey, "White", "White", 1, true, "SourceSansBold")
  coroutine.resume(coroutine.create(function()
    wait(0.8)
    if ComboPart == 5 then
      Combo1 = false
      ComboKey = "none"
      Attacking = false
      ResumeCharacterControl()
      KeyBarBack:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      KeyBarText:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      BodyPosition:Remove()
      LockedEnemy.Torso.Anchored = false
      wait()
      if LockedEnemy then
        LockedEnemy = nil
      end
      wait(2)
      KeyBarBack:Remove()
    elseif ComboPart == 6 then
      KeyBarBack:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      KeyBarText:TweenSizeAndPosition(UDim2.new(0, 0.1, 0, 0.1), UDim2.new(0, 0, 0, 0), "Out", "Quad", 0.5)
      wait(2)
      KeyBarBack:Remove()
    end
  end))
end
function WindBeam()
  LeftArmReferenceWeld.C0 = CFrame.new(-1, 1, 0)
  CircleVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 10000, 10000, 10000, -10, -10, -10)
  LockedEnemy.Torso.Anchored = false
  for i = 1, 50 do
    Wait2()
    Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(-0.5, 0, 0), 0.5)
    RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.5)
    RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(-0.6, 0, 0.3), 0.5)
    LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(-0.6, 0, -0.3), 0.5)
    RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.5)
    LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.5)
    RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.05, 0, -0.5), 0.5)
    LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.05, 0, 0.5), 0.5)
  end
  LeftArmReferenceWeld.C0 = CFrame.new(0, 2, 0)
  for i = 1, 100 do
    Wait2()
    CircleVFX(Torso.CFrame, "White", "Neon", 0, 0.05, 1, 1, 1, 10, 10, 10)
    WindVFX(Torso.CFrame * CFrame.Angles(i, i, i), "White", "Neon", 0, 0.05, 10, 10, 10, 1, 1, 1)
    ValidateDamage(Torso, "Normal", 100, 3, 3, RootPart, 5, 199149269, 1, 0.1)
  end
  Attacking = false
  BodyPosition:Remove()
  if LockedEnemy then
    LockedEnemy = nil
  end
end
Mouse.Button1Down:connect(function()
  if Attacking then
    return
  end
  Prepare2Target()
end)
function OnKeyDown(Key)
  if Key == ComboKey and ComboPart == 1 and Combo1 then
    ComboPart = 2
    WindShuriken()
  end
  if Key == ComboKey and ComboPart == 2 and Combo1 then
    ComboPart = 3
    TPandHIT()
  end
  if Key == ComboKey and ComboPart == 3 and Combo1 then
    ComboPart = 4
    ThrowWindKunai()
  end
  if Key == ComboKey and ComboPart == 4 and Combo1 then
    ComboPart = 5
    UpAndBehind()
  end
  if Key == ComboKey and ComboPart == 5 and Combo1 then
    ComboPart = 6
    WindBeam()
    ComboPart = 1
    Combo1 = false
  end
end
Mouse.KeyDown:connect(OnKeyDown)
function Animate(Weld, Point, vel)
  return Weld:Lerp(Point, vel)
end
function FindPartOnRay(Position, Direction, MaxDistance, Ignore)
  return game:service("Workspace"):FindPartOnRay(Ray.new(Position, Direction.unit * MaxDistance), Ignore)
end
WalkInvert = false
WalkVal = 0
function Animations()
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
  local Velocity = RootPart.Velocity.magnitude * Vector3.new(1, 0, 1).magnitude
  local FallVelocity = RootPart.Velocity.Y
  local Floor = FindPartOnRay(RootPart.Position, CFrame.new(RootPart.Position, RootPart.Position + Vector3.new(0, -1, 0)).lookVector, 4, Character)
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
  if Velocity < 1 and Floor and not Attacking then
    Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.5, 0, 0), 0.2)
    RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.2)
    RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(0.8, 0.4, -1) * CFrame.Angles(-0.2, 0, -1.6), 0.2)
    LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-0.8, 0.4, -1) * CFrame.Angles(-0.2, 0, 1.6), 0.2)
    RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
    LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
    RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(-0.03, 0, 0), 0.2)
    LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(-0.03, 0, 0), 0.2)
  end
  if Velocity > 1 and Floor and not Attacking then
    Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.2, 0, 0), 0.2)
    RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0), 0.2)
    RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(0.8, 0.4, -1) * CFrame.Angles(-0.2, 0, -1.6), 0.2)
    LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-0.8, 0.4, -1) * CFrame.Angles(-0.2, 0, 1.6), 0.2)
    RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
    LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
    RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
    LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 0, 0), 0.2)
  end
  if FallVelocity > 1 and not Floor and not Attacking then
    Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(-0.5, 0, 0), 0.2)
    RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(-0.3, 0, 0), 0.2)
    RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(0.8, 0.4, -1) * CFrame.Angles(-0.2, 0, -1.6), 0.2)
    LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-0.8, 0.4, -1) * CFrame.Angles(-0.2, 0, 1.6), 0.2)
    RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
    LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
    RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 0, -0.5), 0.2)
    LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 0, 0.5), 0.2)
  end
  if FallVelocity < -1 and not Floor and not Attacking then
    Neck.C0 = Animate(Neck.C0, NeckDefaultCFrame * CFrame.Angles(0.3, 0, 0), 0.2)
    RootJoint.C0 = Animate(RootJoint.C0, RootDefaultCFrame * CFrame.new(0, 0, 0) * CFrame.Angles(0.3, 0, 0), 0.2)
    RightShoulder.C0 = Animate(RightShoulder.C0, CFrame.new(0.8, 0.4, -1) * CFrame.Angles(-0.2, 0, -1.6), 0.2)
    LeftShoulder.C0 = Animate(LeftShoulder.C0, CFrame.new(-0.8, 0.4, -1) * CFrame.Angles(-0.2, 0, 1.6), 0.2)
    RightHip.C1 = Animate(RightHip.C1, RightLegDefaultCFrame, 0.2)
    LeftHip.C1 = Animate(LeftHip.C1, LeftLegDefaultCFrame, 0.2)
    RightHip.C0 = Animate(RightHip.C0, CFrame.new(1, -1, 0) * CFrame.Angles(0, 1.6, 0) * CFrame.Angles(0, 0, 0.5), 0.2)
    LeftHip.C0 = Animate(LeftHip.C0, CFrame.new(-1, -1, 0) * CFrame.Angles(0, -1.6, 0) * CFrame.Angles(0, 0, -0.5), 0.2)
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
while true do
  Wait2()
  Animations()
  VisualEffects()
end
