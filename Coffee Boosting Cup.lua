while not getmetatable(shared) do
  wait()
end
shared(script)
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local Player_UI = Player.PlayerGui
local Mouse = Player:GetMouse()
local Humanoid = Character:FindFirstChild("Humanoid")
local HealAmnt = 0
local SpdAmnt = 0
local Cam = workspace.CurrentCamera
local Root = Character.HumanoidRootPart
local Torso = Character.Torso
local Head = Character.Head
local LeftArm = Character["Left Arm"]
local RightArm = Character["Right Arm"]
local RightLeg = Character["Right Leg"]
local LeftLeg = Character["Left Leg"]
Torso["Left Shoulder"]:Remove()
Torso["Right Shoulder"]:Remove()
local LS = Instance.new("ManualWeld", Torso)
local RS = Instance.new("ManualWeld", Torso)
LS.Part0 = Torso
LS.Part1 = LeftArm
RS.Part0 = Torso
RS.Part1 = RightArm
local Handlerer = Instance.new("Script", workspace)
local Cup = Instance.new("Part", Handlerer)
local CupMesh = Instance.new("SpecialMesh", Cup)
local Liquid = Instance.new("Part", Handlerer)
local LiquidMesh = Instance.new("CylinderMesh", Liquid)
CupMesh.MeshId = "rbxassetid://32023686"
Cup.Position = Vector3.new(0, 200, 0)
Cup.Size = Vector3.new(0.757, 0.658, 0.55)
Cup.CanCollide = false
Liquid.Position = Vector3.new(0, 100, 20)
Liquid.TopSurface = Enum.SurfaceType.SmoothNoOutlines
Liquid.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
Liquid.Size = Vector3.new(0.48, 0.57, 0.56)
Liquid.BrickColor = BrickColor.new("Pastel Blue")
Liquid.CanCollide = false
local TW = Instance.new("Motor6D", RightArm)
TW.Part0 = RightArm
TW.Part1 = Cup
local W1 = Instance.new("ManualWeld", Cup)
W1.Part0 = Cup
W1.Part1 = Liquid
W1.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
W1.C1 = CFrame.new(0.110247374, 0.025247097, -3.80352139E-5, 0.999994516, 4.37113883E-8, 4.37113883E-8, -4.37111503E-8, 1, 0, -4.37111503E-8, -1.91068547E-15, 1)
local RJ = Root.RootJoint
local NK = Torso.Neck
local LH = Torso["Left Hip"]
local RH = Torso["Right Hip"]
function ClickSound1()
  local Eff = Instance.new("Sound", Cam)
  Eff.SoundId = "rbxassetid://270126064"
  Eff.Looped = false
  Eff:Play()
  Eff.Ended:connect(function()
    Eff:Destroy()
  end)
end
function SlurpSound()
  local Eff = Instance.new("Sound", Head)
  Eff.SoundId = "rbxassetid://201732848"
  Eff.Looped = false
  Eff:Play()
  Eff.Ended:connect(function()
    Eff:Destroy()
  end)
end
function HealEffect()
  spawn(function()
    local EffPart = Instance.new("Part", Handlerer)
    local EffMesh = Instance.new("SpecialMesh", EffPart)
    local Sound = Instance.new("Sound", Head)
    Sound.SoundId = "rbxassetid://2101144"
    Sound.Volume = 1
    Sound.Pitch = 1
    Sound:Play()
    Sound.Ended:connect(function()
      Sound:Destroy()
    end)
    EffMesh.MeshType = Enum.MeshType.Sphere
    EffPart.BrickColor = BrickColor.new("Lime green")
    EffPart.Position = Torso.Position
    EffPart.Material = Enum.Material.Neon
    EffPart.CanCollide = false
    EffPart.Size = Vector3.new(0, 0, 0)
    EffPart.Transparency = 0
    local Weld = Instance.new("ManualWeld", Handlerer)
    Weld.Part0 = Torso
    Weld.Part1 = EffPart
    repeat
      wait()
      EffPart.Transparency = EffPart.Transparency + 0.025
      EffMesh.Scale = EffMesh.Scale + Vector3.new(0.6, 0.6, 0.6)
    until 1 <= EffPart.Transparency
    EffPart:Destroy()
  end)
end
local TeaSimCrip = Instance.new("ScreenGui")
local TeaorCoffe = Instance.new("Frame")
local CurrentDrink = Instance.new("TextLabel")
local Tea = Instance.new("TextButton")
local Coffee = Instance.new("TextButton")
local ColorHelp = Instance.new("TextLabel")
local ColorSelect = Instance.new("TextBox")
TeaSimCrip.Name = "TeaSimCrip"
TeaSimCrip.Parent = Player_UI
TeaorCoffe.Name = "TeaorCoffe"
TeaorCoffe.Parent = TeaSimCrip
TeaorCoffe.Active = true
TeaorCoffe.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
TeaorCoffe.BackgroundTransparency = 0.5
TeaorCoffe.BorderColor3 = Color3.new(1, 1, 1)
TeaorCoffe.Draggable = true
TeaorCoffe.Position = UDim2.new(0, 690, 0, 202)
TeaorCoffe.Size = UDim2.new(0, 282, 0, 190)
CurrentDrink.Name = "CurrentDrink"
CurrentDrink.Parent = TeaorCoffe
CurrentDrink.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
CurrentDrink.BackgroundTransparency = 0.80000001192093
CurrentDrink.BorderColor3 = Color3.new(1, 1, 1)
CurrentDrink.Size = UDim2.new(0, 282, 0, 43)
CurrentDrink.Font = Enum.Font.SourceSans
CurrentDrink.FontSize = Enum.FontSize.Size14
CurrentDrink.Text = "Your current drink :"
CurrentDrink.TextColor3 = Color3.new(1, 1, 1)
CurrentDrink.TextScaled = true
CurrentDrink.TextSize = 14
CurrentDrink.TextStrokeTransparency = 0
CurrentDrink.TextWrapped = true
Tea.Name = "Tea"
Tea.Parent = CurrentDrink
Tea.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Tea.BackgroundTransparency = 0.80000001192093
Tea.BorderColor3 = Color3.new(1, 1, 1)
Tea.Position = UDim2.new(0, 0, 0, 65)
Tea.Size = UDim2.new(0, 141, 0, 50)
Tea.Font = Enum.Font.SourceSans
Tea.FontSize = Enum.FontSize.Size14
Tea.Text = "Tea"
Tea.TextColor3 = Color3.new(1, 1, 1)
Tea.TextScaled = true
Tea.TextSize = 14
Tea.TextStrokeTransparency = 0
Tea.TextWrapped = true
Coffee.Name = "Coffee"
Coffee.Parent = CurrentDrink
Coffee.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
Coffee.BackgroundTransparency = 0.80000001192093
Coffee.BorderColor3 = Color3.new(1, 1, 1)
Coffee.Position = UDim2.new(0, 141, 0, 65)
Coffee.Size = UDim2.new(0, 141, 0, 50)
Coffee.Font = Enum.Font.SourceSans
Coffee.FontSize = Enum.FontSize.Size14
Coffee.Text = "Coffee"
Coffee.TextColor3 = Color3.new(1, 1, 1)
Coffee.TextScaled = true
Coffee.TextSize = 14
Coffee.TextStrokeTransparency = 0
Coffee.TextWrapped = true
ColorHelp.Name = "ColorHelp"
ColorHelp.Parent = TeaorCoffe
ColorHelp.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ColorHelp.BackgroundTransparency = 0.80000001192093
ColorHelp.BorderColor3 = Color3.new(1, 1, 1)
ColorHelp.Position = UDim2.new(0, 0, 0, 138)
ColorHelp.Size = UDim2.new(0, 97, 0, 50)
ColorHelp.Font = Enum.Font.SourceSans
ColorHelp.FontSize = Enum.FontSize.Size14
ColorHelp.Text = "Color(eg Cool yellow)"
ColorHelp.TextColor3 = Color3.new(1, 1, 1)
ColorHelp.TextScaled = true
ColorHelp.TextSize = 14
ColorHelp.TextStrokeTransparency = 0
ColorHelp.TextWrapped = true
ColorSelect.Name = "ColorSelect"
ColorSelect.Parent = ColorHelp
ColorSelect.BackgroundColor3 = Color3.new(0.105882, 0.164706, 0.207843)
ColorSelect.BackgroundTransparency = 0.80000001192093
ColorSelect.BorderColor3 = Color3.new(1, 1, 1)
ColorSelect.Position = UDim2.new(0, 97, 0, 0)
ColorSelect.Size = UDim2.new(0, 183, 0, 50)
ColorSelect.Font = Enum.Font.SourceSans
ColorSelect.FontSize = Enum.FontSize.Size14
ColorSelect.Text = "Cyan"
ColorSelect.TextColor3 = Color3.new(1, 1, 1)
ColorSelect.TextScaled = true
ColorSelect.TextSize = 14
ColorSelect.TextStrokeTransparency = 0
ColorSelect.TextWrapped = true
Coffee.MouseButton1Down:connect(function()
  Liquid.BrickColor = BrickColor.new("Cocoa")
  SpdAmnt = 16
  HealAmnt = 5
  ClickSound1()
end)
Tea.MouseButton1Down:connect(function()
  Liquid.BrickColor = BrickColor.new("Dark orange")
  SpdAmnt = 5
  HealAmnt = 17
  ClickSound1()
end)
spawn(function()
  while wait(0.1) do
    Cup.BrickColor = BrickColor.new(ColorSelect.Text)
  end
end)
Walk = false
Idle = false
Jump = false
Fall = false
Swim = false
Stunned = false
CanClickAttack = false
CanAttack = false
CanClickDamageAttack = false
CanAttackDamage = false
AttackProgress = 0
SipAnim1 = false
SipAnim2 = false
game:GetService("RunService").RenderStepped:connect(function()
  if Idle then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    RJ.C1 = RJ.C1:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    NK.C0 = NK.C0:lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    NK.C1 = NK.C1:lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, -0.11544092, 0.993314385, 0, 0.993314385, 0.11544092), 0.1)
    LS.C0 = LS.C0:lerp(CFrame.new(-1, 0.5, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.1)
    LS.C1 = LS.C1:lerp(CFrame.new(0.5, 0.49999997, -7.4505806E-9, -0.187897623, -0.0816897452, -0.978785574, -0.00246167462, 0.996571302, -0.0827015787, 0.982185543, -0.0131299766, -0.187454447), 0.1)
    RS.C0 = RS.C0:lerp(CFrame.new(1, 0.5, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.1)
    RS.C1 = RS.C1:lerp(CFrame.new(-0.5, 0.5, 2.98023224E-8, 0.323121786, -0.126245826, 0.937898934, -0.795010865, 0.501410723, 0.341386825, -0.513371289, -0.855949461, 0.0616499074), 0.1)
    LH.C0 = LH.C0:lerp(CFrame.new(-1, -1, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.1)
    LH.C1 = LH.C1:lerp(CFrame.new(-0.5, 1, 0, -4.35866774E-8, -0.0754845291, -0.997146964, -3.29953354E-9, 0.997146964, -0.0754845291, 1, 0, -4.37113883E-8), 0.1)
    RH.C0 = RH.C0:lerp(CFrame.new(1, -1, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.1)
    RH.C1 = RH.C1:lerp(CFrame.new(0.49999997, 1, 0, -4.35004317E-8, 0.0981270373, 0.995173872, 4.28926894E-9, 0.995173872, -0.0981270373, -1, 0, -4.37113883E-8), 0.1)
    TW.C0 = TW.C0:lerp(CFrame.new(0, -0.939154744, -0.135634035, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    TW.C1 = TW.C1:lerp(CFrame.new(0.412438482, -0.252381921, 0.0113951787, 0.0229380336, 0.774168074, 0.632564425, -0.170427293, 0.626497328, -0.760562837, -0.98510325, -0.090360418, 0.146309972), 0.1)
  end
  if Walk then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    RJ.C1 = RJ.C1:lerp(CFrame.new(0, 0, 0, -0.98480773, -0.173648179, 0, 0, 0, 1, -0.173648179, 0.98480773, 0), 0.1)
    NK.C0 = NK.C0:lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    NK.C1 = NK.C1:lerp(CFrame.new(9.31322575E-10, -0.5, 3.7252903E-9, -0.98480773, 0.173418775, -0.00892297551, 0, 0.0513853654, 0.998678923, 0.173648179, 0.983506739, -0.0506047048), 0.1)
    LS.C0 = LS.C0:lerp(CFrame.new(-1, 0.5, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.1)
    LS.C1 = LS.C1:lerp(CFrame.new(0.5, 0.49999997, -7.4505806E-9, -0.187897623, -0.0816897452, -0.978785574, -0.00246167462, 0.996571302, -0.0827015787, 0.982185543, -0.0131299766, -0.187454447), 0.1)
    RS.C0 = RS.C0:lerp(CFrame.new(1, 0.5, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.1)
    RS.C1 = RS.C1:lerp(CFrame.new(-0.5, 0.5, 2.98023224E-8, 0.406466931, -0.179257989, 0.895908117, -0.755800605, 0.484992057, 0.439940959, -0.513371289, -0.855949461, 0.0616499074), 0.1)
    LH.C0 = LH.C0:lerp(CFrame.new(-1, -1, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.1)
    LH.C1 = LH.C1:lerp(CFrame.new(-0.5, 1, 0.229912519, 0.173648134, -0.0082930252, -0.984772801, -3.68091807E-10, 0.999964535, -0.00842095912, 0.98480773, 0.00146228424, 0.17364198), 0.1)
    RH.C0 = RH.C0:lerp(CFrame.new(1, -1, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.1)
    RH.C1 = RH.C1:lerp(CFrame.new(0.5, 1, 0, -0.173648223, 0.0401850529, 0.98398751, 1.78364212E-9, 0.999167144, -0.0408049747, -0.98480773, -0.00708570937, -0.173503593), 0.1)
    TW.C0 = TW.C0:lerp(CFrame.new(0, -0.939154744, -0.135634035, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    TW.C1 = TW.C1:lerp(CFrame.new(0.412438482, -0.252381921, 0.0113951787, 0.0229380336, 0.774168074, 0.632564425, -0.170427293, 0.626497328, -0.760562837, -0.98510325, -0.090360418, 0.146309972), 0.1)
  end
  if Jump then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    RJ.C1 = RJ.C1:lerp(CFrame.new(0, 0, 0, -0.99999994, -2.08616257E-7, 0, 0, 0, 1, -2.08616257E-7, 0.99999994, 0), 0.1)
    NK.C0 = NK.C0:lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    NK.C1 = NK.C1:lerp(CFrame.new(0, -0.5, 0, -0.999999881, 1.78813934E-7, -9.31322575E-9, 3.1050714E-8, 0.224023461, 0.974583745, 1.76097345E-7, 0.974583685, -0.224023476), 0.1)
    LS.C0 = LS.C0:lerp(CFrame.new(-1, 0.5, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.1)
    LS.C1 = LS.C1:lerp(CFrame.new(0.5, 0.49999994, -7.4505806E-9, -0.187897623, -0.0816897601, -0.978785574, -0.00246167555, 0.996571302, -0.0827015936, 0.982185543, -0.0131299766, -0.187454447), 0.1)
    RS.C0 = RS.C0:lerp(CFrame.new(1, 0.5, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.1)
    RS.C1 = RS.C1:lerp(CFrame.new(-0.5, 0.49999997, 0, 0.0846921653, 0.219005734, 0.97204107, -0.666242659, 0.737845004, -0.108191758, -0.740910232, -0.638452351, 0.208400637), 0.1)
    LH.C0 = LH.C0:lerp(CFrame.new(-1, -1, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.1)
    LH.C1 = LH.C1:lerp(CFrame.new(-0.5, 0.800889969, 0.114956319, 0.173648134, -0.0082930252, -0.984772801, -0.852868438, 0.498715937, -0.154588833, 0.492403865, 0.866725802, 0.0795282274), 0.1)
    RH.C0 = RH.C0:lerp(CFrame.new(1, -1, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.1)
    RH.C1 = RH.C1:lerp(CFrame.new(0.5, 1, 5.96046448E-8, -0.173648223, 0.0401850529, 0.98398751, -0.633022368, 0.760851681, -0.142784402, -0.754406393, -0.647680342, -0.106682509), 0.1)
    TW.C0 = TW.C0:lerp(CFrame.new(0, -0.939154744, -0.135634035, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    TW.C1 = TW.C1:lerp(CFrame.new(0.456622601, -0.238937616, -0.0752839297, 0.052183941, 0.653616607, 0.755024672, 0.182951853, 0.737001657, -0.650659144, -0.981735945, 0.172087103, -0.0811207294), 0.1)
  end
  if Fall then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    RJ.C1 = RJ.C1:lerp(CFrame.new(0, 0, 0, -0.99999994, -2.08616257E-7, 0, 3.62258348E-8, -0.173648164, 0.98480773, -2.05446895E-7, 0.98480767, 0.173648179), 0.1)
    NK.C0 = NK.C0:lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    NK.C1 = NK.C1:lerp(CFrame.new(0, -0.5, 0, -0.999999881, 1.78813934E-7, -9.31322575E-9, -6.11579623E-8, -0.293281853, 0.956026018, 1.68030127E-7, 0.956025958, 0.293281853), 0.1)
    LS.C0 = LS.C0:lerp(CFrame.new(-1, 0.5, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.1)
    LS.C1 = LS.C1:lerp(CFrame.new(0.49999997, 0.923977196, -0.0839125216, 0.844264328, 0.122526228, -0.521732748, 0.535815358, -0.212852404, 0.817065239, -0.0109401532, -0.969371498, -0.245355129), 0.1)
    RS.C0 = RS.C0:lerp(CFrame.new(1, 0.5, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.1)
    RS.C1 = RS.C1:lerp(CFrame.new(-0.5, 0.49999997, 0, 0.797518611, 0.0537811816, 0.600892484, -0.455932438, 0.705996275, 0.541936278, -0.395081878, -0.706170678, 0.58756578), 0.1)
    LH.C0 = LH.C0:lerp(CFrame.new(-1, -1, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.1)
    LH.C1 = LH.C1:lerp(CFrame.new(-0.5, 1.37267482, 0.687805593, 0.173648134, -0.0082930252, -0.984772801, 0.754406452, 0.643885016, 0.127604589, 0.63302213, -0.765077353, 0.118065737), 0.1)
    RH.C0 = RH.C0:lerp(CFrame.new(1, -1, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.1)
    RH.C1 = RH.C1:lerp(CFrame.new(0.5, 0.99999994, -5.96046448E-8, -0.173648223, 0.0401850529, 0.98398751, 0.754406393, 0.647680342, 0.106682509, -0.633022368, 0.760851681, -0.142784402), 0.1)
    TW.C0 = TW.C0:lerp(CFrame.new(0, -0.939154744, -0.135634035, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    TW.C1 = TW.C1:lerp(CFrame.new(0.456622601, -0.238937616, -0.0752839297, 0.052183941, 0.653616607, 0.755024672, 0.182951853, 0.737001657, -0.650659144, -0.981735945, 0.172087103, -0.0811207294), 0.1)
  end
  if Swim then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    RJ.C1 = RJ.C1:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    NK.C0 = NK.C0:lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    NK.C1 = NK.C1:lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    LS.C0 = LS.C0:lerp(CFrame.new(-1, 0.5, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.1)
    LS.C1 = LS.C1:lerp(CFrame.new(0.5, 0.621078968, 0.19879362, 0.719846368, -0.262002558, -0.642787695, 0.60402292, -0.219846264, 0.766044438, -0.342020065, -0.939692676, 1.49501727E-8), 0.1)
    RS.C0 = RS.C0:lerp(CFrame.new(1, 0.5, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.1)
    RS.C1 = RS.C1:lerp(CFrame.new(-0.49999994, 0.5, 0, 0.856848836, 0.163175762, 0.489063948, -0.503340065, 0.0593910813, 0.862044871, 0.111618795, -0.984807789, 0.133022055), 0.1)
    LH.C0 = LH.C0:lerp(CFrame.new(-1, -1, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.1)
    LH.C1 = LH.C1:lerp(CFrame.new(-0.5, 1, -7.4505806E-9, 1.65568949E-7, -0.173648179, -0.98480773, -7.59040297E-9, 0.98480773, -0.173648179, 0.99999994, 3.7252903E-8, 1.64904876E-7), 0.1)
    RH.C0 = RH.C0:lerp(CFrame.new(1, -1, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.1)
    RH.C1 = RH.C1:lerp(CFrame.new(0.5, 1, 0, -0.173648223, 0.171010062, 0.969846249, 7.59040297E-9, 0.98480773, -0.173648179, -0.98480773, -0.0301536899, -0.171010107), 0.1)
    TW.C0 = TW.C0:lerp(CFrame.new(0, -0.939154744, -0.135634035, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    TW.C1 = TW.C1:lerp(CFrame.new(0.351614326, 0.00738535076, -0.0349619985, 0, 1, 0, 0.173648179, 0, -0.98480773, -0.98480773, 0, -0.173648179), 0.1)
  end
  if Stunned then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    RJ.C1 = RJ.C1:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    NK.C0 = NK.C0:lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.1)
    NK.C1 = NK.C1:lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, -0.342020124, 0.939692616, 0, 0.939692616, 0.342020124), 0.1)
    LS.C0 = LS.C0:lerp(CFrame.new(-1, 0.5, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.1)
    LS.C1 = LS.C1:lerp(CFrame.new(0.5, 0.5, -1.49011612E-8, -0.14131473, -0.198565722, -0.969846249, -0.171010077, 0.969846249, -0.173648164, 0.975082397, 0.141314447, -0.171010271), 0.1)
    RS.C0 = RS.C0:lerp(CFrame.new(1, 0.5, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.1)
    RS.C1 = RS.C1:lerp(CFrame.new(-0.5, 0.5, -2.98023224E-8, 0.888258338, -0.249090672, 0.385941565, -0.39841494, 3.7035346E-4, 0.917205215, -0.228610188, -0.968480051, -0.0989124849), 0.1)
    LH.C0 = LH.C0:lerp(CFrame.new(-1, -1, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.1)
    LH.C1 = LH.C1:lerp(CFrame.new(-0.298158467, 0.0289102793, 1.08474374, -4.30473115E-8, -0.173648179, -0.98480773, 0.173647955, 0.969846308, -0.171010092, 0.984807789, -0.171009868, 0.0301536117), 0.1)
    RH.C0 = RH.C0:lerp(CFrame.new(1, -1, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.1)
    RH.C1 = RH.C1:lerp(CFrame.new(0.5, 0.999999881, 0, -0.171010107, 0.200705469, 0.9646101, -0.969846249, 0.138258547, -0.200705692, -0.173648342, -0.969846368, 0.171009853), 0.1)
    TW.C0 = TW.C0:lerp(CFrame.new(0, -0.939154744, -0.135634035, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.1)
    TW.C1 = TW.C1:lerp(CFrame.new(0.351614326, 0.00738535076, -0.0349619985, 0, 1, 0, -0.342020124, 0, -0.939692616, -0.939692616, 0, 0.342020124), 0.1)
  end
  if SipAnim1 then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2)
    RJ.C1 = RJ.C1:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2)
    NK.C0 = NK.C0:lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2)
    NK.C1 = NK.C1:lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, -0.213857487, 0.976864874, 0, 0.976864874, 0.213857487), 0.2)
    LS.C0 = LS.C0:lerp(CFrame.new(-1, 0.5, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.2)
    LS.C1 = LS.C1:lerp(CFrame.new(0.5, 0.5, 7.4505806E-9, -0.173648417, -0.171010062, -0.969846249, -7.59040297E-9, 0.98480773, -0.173648179, 0.98480767, -0.0301537216, -0.171010315), 0.2)
    RS.C0 = RS.C0:lerp(CFrame.new(1, 0.5, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.2)
    RS.C1 = RS.C1:lerp(CFrame.new(-0.49999997, 0.5, 0, 0.63302213, -0.111618869, 0.766044438, -0.754406512, 0.133022204, 0.642787516, -0.173648149, -0.98480773, -7.59040208E-9), 0.2)
    LH.C0 = LH.C0:lerp(CFrame.new(-1, -1, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.2)
    LH.C1 = LH.C1:lerp(CFrame.new(-0.49999997, 1, 0, -0.0805441961, -0.105777062, -0.991122544, -4.6387334E-9, 0.994353116, -0.106121846, 0.99675107, -0.00854749419, -0.0800893754), 0.2)
    RH.C0 = RH.C0:lerp(CFrame.new(1, -1, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.2)
    RH.C1 = RH.C1:lerp(CFrame.new(0.49999997, 1, 0, -0.0951967016, 0.1058596, 0.989813805, 4.64838079E-9, 0.994329572, -0.106342554, -0.995458484, -0.0101234559, -0.0946568921), 0.2)
    TW.C0 = TW.C0:lerp(CFrame.new(0, -0.939154744, -0.135634035, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.2)
    TW.C1 = TW.C1:lerp(CFrame.new(0.351614356, 0.00738534704, -0.0349619985, 0.0301536918, 0.984807789, 0.171010077, -0.171010062, 0.173648164, -0.969846249, -0.98480773, 0, 0.173648179), 0.2)
  end
  if SipAnim2 then
    RJ.C0 = RJ.C0:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2)
    RJ.C1 = RJ.C1:lerp(CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2)
    NK.C0 = NK.C0:lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0), 0.2)
    NK.C1 = NK.C1:lerp(CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0.104669198, 0.994507074, 0, 0.994507074, -0.104669198), 0.2)
    LS.C0 = LS.C0:lerp(CFrame.new(-1, 0.5, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.2)
    LS.C1 = LS.C1:lerp(CFrame.new(0.5, 0.5, 7.4505806E-9, -0.173648417, -0.171010062, -0.969846249, -7.59040297E-9, 0.98480773, -0.173648179, 0.98480767, -0.0301537216, -0.171010315), 0.2)
    RS.C0 = RS.C0:lerp(CFrame.new(1, 0.5, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.2)
    RS.C1 = RS.C1:lerp(CFrame.new(-0.249862134, -0.283640146, -1.16104293, 0.342248857, 0.745232344, 0.572271168, 0.292857856, -0.663318515, 0.688652635, 0.892804384, -0.0680963621, -0.44526723), 0.2)
    LH.C0 = LH.C0:lerp(CFrame.new(-1, -1, 0, -4.37113883E-8, 0, -1, 0, 0.99999994, 0, 1, 0, -4.37113883E-8), 0.2)
    LH.C1 = LH.C1:lerp(CFrame.new(-0.49999997, 1, 0, -0.0805441961, -0.105777062, -0.991122544, -4.6387334E-9, 0.994353116, -0.106121846, 0.99675107, -0.00854749419, -0.0800893754), 0.2)
    RH.C0 = RH.C0:lerp(CFrame.new(1, -1, 0, -4.37113883E-8, 0, 1, 0, 0.99999994, 0, -1, 0, -4.37113883E-8), 0.2)
    RH.C1 = RH.C1:lerp(CFrame.new(0.49999997, 1, 0, -0.0951967016, 0.1058596, 0.989813805, 4.64838079E-9, 0.994329572, -0.106342554, -0.995458484, -0.0101234559, -0.0946568921), 0.2)
    TW.C0 = TW.C0:lerp(CFrame.new(0, -0.939154744, -0.135634035, 1, 0, 0, 0, 1, 0, 0, 0, 1), 0.2)
    TW.C1 = TW.C1:lerp(CFrame.new(0.327641815, 0.00738534704, -0.0349619985, 0.0301536918, 0.984807789, 0.171010077, -0.171010062, 0.173648164, -0.969846249, -0.98480773, 0, 0.173648179), 0.2)
  end
end)
Idle = true
function onWalk(spd)
  if spd >= 0.001 then
    Walk = true
    Idle = false
    Jump = false
    Fall = false
    Swim = false
    Stunned = false
  else
    Walk = false
    Idle = true
    Jump = false
    Fall = false
    Swim = false
    Stunned = false
  end
end
function onJump()
  Walk = false
  Idle = false
  Jump = true
  Fall = false
  Swim = false
  Stunned = false
  wait(0.25)
  Walk = false
  Idle = false
  Jump = false
  Fall = true
  Swim = false
  Stunned = false
end
function onSwim()
  Walk = false
  Idle = false
  Jump = false
  Fall = false
  Swim = true
  Stunned = false
end
function onStunned()
  Walk = false
  Idle = false
  Jump = false
  Fall = false
  Swim = false
  Stunned = true
end
function Drink()
  if CanClickAttack == false then
    CanClickAttack = true
    CanAttack = true
    CanAttackDamage = false
    CanClickDamageAttack = false
    Walk = false
    Idle = false
    Jump = false
    Fall = false
    Swim = false
    Stunned = false
    wait(0.1)
    SipAnim1 = true
    SipAnim2 = false
    wait(0.3)
    SipAnim1 = false
    SipAnim2 = true
    HealEffect()
    SlurpSound()
    Humanoid.Health = Humanoid.Health + HealAmnt
    Humanoid.WalkSpeed = Humanoid.WalkSpeed + SpdAmnt
    spawn(function()
      wait(3)
      Humanoid.WalkSpeed = 16
    end)
    wait(0.3)
    SipAnim1 = false
    SipAnim2 = false
    Idle = true
    CanClickAttack = false
    CanAttack = false
    CanAttackDamage = false
    CanClickDamageAttack = false
  end
end
Mouse.KeyDown:connect(function(key)
  if key == "e" then
    Drink()
  end
end)
Humanoid.Running:connect(onWalk)
Humanoid.Jumping:connect(onJump)
Humanoid.Swimming:connect(onSwim)
Humanoid.PlatformStanding:connect(onStunned)
