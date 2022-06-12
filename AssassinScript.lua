--MADE BY OneLegend (NOT THE SCRIPT) LOCAL SCRIPT: Go to line 4 and 22 and put your name where it says "BRICKER24alt"

f = Instance.new("Fire")
f.Parent = game.Workspace.BRICKER24alt.Head
f.Color = Color3.new(1,0,0) 
f.SecondaryColor = Color3.new(1,0,0) 
f.Size = 3
Players = game.Players
Workspace = game.Workspace
HopperBinName = "Sword"
Activated = false
Equipped = false
Equipping = false
Unequipping = false
Flaming = false
Shielding = false
SlimeCharge = false
DarkCharge = false
Mode = ""
Damage = 20
ExplosionVictim = ""
Name = "BRICKER24alt"
Me = Players:findFirstChild(Name)
if Me == nil then 
 Me = Players:findFirstChild("Player") 
end
Backpack = Me["Backpack"]
PlayerGui = Me["PlayerGui"]
wait(0.8)
------------------------------------------------------------>
--[[
?     -->> Load
--]]
------------------------------------------------------------>
Check = Me.Character:findFirstChild("Loaded")
if Check == nil then
Gui = Instance.new("ScreenGui")
Gui.Parent = PlayerGui
Gui.Name = "LoadGui"
Background = Instance.new("ImageLabel")
Background.Parent = Gui
Background.Name = "Background"
Background.Size = UDim2.new(0.25, 0, 0.05, 0)
Background.BackgroundTransparency = 0.7
Background.Position = UDim2.new(0.55, 0, 0, 0) 
Header = Instance.new("TextLabel")
Header.Parent = Background
Header.Name = "Header"
Header.Size = UDim2.new(0, 0, 0, 0)
Header.BackgroundTransparency = 1
Header.Position = UDim2.new(0.5, 0, 0.2, 0)
Header.Text = "[ Loading : 0 ]"
Bar = Instance.new("ImageLabel")
Bar.Parent = Background
Bar.Size = UDim2.new(0.9, 0, 0.5, 0)
Bar.BackgroundTransparency = 0.2
Bar.BackgroundColor = BrickColor.new(1224)
Bar.Position = UDim2.new(0.05, 0, 0.37, 0)
Bar.BorderSizePixel = 0
Bar2 = Instance.new("ImageLabel")
Bar2.Parent = Bar
Bar2.Size = UDim2.new(0, 0, 1, 0)
Bar2.BackgroundTransparency = 0.2
Bar2.BackgroundColor = BrickColor.new(1010)
Bar2.Position = UDim2.new(0, 0, 0, 0)
Bar2.BorderSizePixel = 0
for i = 1 , 50 do
Bar2.Size = Bar2.Size + UDim2.new(0.02, 0, 0, 0)
Header.Text = "[ Loading : "..(i*2).." ]"
wait()
end
Header.Text = "[ Loaded ]"
wait(1)
Loaded = Instance.new("IntValue")
Loaded.Parent = Me.Character
Loaded.Name = "Loaded"
Gui:Remove()
end
------------------------------------------------------------>
--[[
?     -->> Joints
--]]
------------------------------------------------------------>
LeftShoulder = Me.Character.Torso["Left Shoulder"]
RightShoulder = Me.Character.Torso["Right Shoulder"]
LeftShoulder.C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RightShoulder.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
OriginalLeftShoulder = LeftShoulder.C0
OriginalLeftShoulder2 = LeftShoulder.C1
OriginalRightShoulder = RightShoulder.C0
OriginalRightShoulder2 = RightShoulder.C1
------------------------------------------------------------>
--[[
?     -->> HopperBin
--]]
------------------------------------------------------------>
HopperBin = Instance.new("HopperBin")
Test = Backpack:findFirstChild(HopperBinName)
if Test ~= nil then
Test.Name = "Fake"
end
Stuff = Me.Character:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "Hat" then
  Stuff[i]:Remove()
 end
end
HopperBin.Parent = Backpack
HopperBin.Name = HopperBinName
script.Parent = HopperBin
wait(1)
------------------------------------------------------------>
--[[
?     -->> Charge Function
--]]
------------------------------------------------------------>
function onCharge(Color)
 Charge = Instance.new("Part")
 Charge.Parent = Me.Character.Torso
 Charge.Anchored = true
 Charge.CanCollide = false
 Charge.Locked = true
 Charge.Transparency = 0
 Charge.BrickColor = BrickColor.new(Color)
 Charge.formFactor = "Symmetric"
 Charge.Size = Vector3.new(4, 4, 4)
 Charge.TopSurface = "Smooth"
 Charge.BottomSurface = "Smooth"
 Charge.CFrame = Me.Character.Torso.CFrame
 ChargeMesh = Instance.new("SpecialMesh")
 ChargeMesh.Parent = Charge
 ChargeMesh.MeshType = "Brick"
 ChargeMesh.Scale = Vector3.new(1.5, 1.5, 1.5)
 Sound.SoundId = "http://www.roblox.com/asset/?id=2101137"
 Sound:play()
 for i = 1 , 20 do
  Stuff = Charge:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Particle" then
    Stuff[i].Transparency = Stuff[i].Transparency + 0.05
    Stuff[i].BodyPosition.position = Me.Character.Torso.Position
   end
  end
  Particle = Instance.new("Part")
  Particle.Size = Vector3.new(1, 1, 1)
  Particle.Parent = Charge
  Particle.Locked = true
  Particle.CanCollide = false
  Particle.Shape = "Ball"
  Particle.BrickColor = BrickColor.new(Color)
  Particle.TopSurface = "Smooth"
  Particle.BottomSurface = "Smooth"
  Particle.Name = "Particle"
  Particle.CFrame = Me.Character.Torso.CFrame * CFrame.new(math.random(-i, i)*2, math.random(-i, i)*2, math.random(-i, i)*2)
  ParticleMesh = Instance.new("SpecialMesh")
  ParticleMesh.Parent = Particle
  ParticleMesh.MeshType = "Sphere"
  ParticleMesh.Scale = ChargeMesh.Scale / Vector3.new(1.5, 1.5, 1.5)
  BodyPosition = Instance.new("BodyPosition")
  BodyPosition.Parent = Particle
  BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  BodyPosition.position = Me.Character.Torso.Position
  Particle:BreakJoints()
  
  if i >= 10 then
   ChargeMesh.Scale = ChargeMesh.Scale + Vector3.new(0.5, 0.5, 0.5)
  end
  Charge.CFrame = Me.Character.Torso.CFrame * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
  Charge.Transparency = Charge.Transparency + 0.05
  Stuff = Charge:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Effect" then
    Stuff[i]:Remove()
   end
  end
  part = Instance.new("Part")
  part.Parent = Me.Character
  part.CFrame = Me.Character.Torso.CFrame
  Angle = (6.28/7)
  angle = 0
  for ii = 1 , 14 do
   angle = Angle + angle
   part.CFrame = Me.Character.Torso.CFrame
   part.CFrame = part.CFrame * CFrame.Angles(0, angle, 0)
   p = Instance.new("Part")
   p.Parent = Charge
   p.Name = "Effect"
   p.formFactor = "Symmetric"
   p.Size = Vector3.new(2, 1, 1)
   p.BrickColor = BrickColor.new(Color)
   p.Locked = true
   p.Anchored = true
   p.CanCollide = false
   p.TopSurface = "Smooth"
   p.BottomSurface = "Smooth"
   p.CFrame = part.CFrame * CFrame.new(0, -2.5, 20-i)
  end
  part:Remove()
  for i = 1 , 5 do
   Effect = Instance.new("Part")
   Effect.Parent = Charge
   Effect.Anchored = true
   Effect.CanCollide = false
   Effect.Locked = true
   Effect.Name = "Effect"
   Effect.Transparency = Charge.Transparency
   Effect.BrickColor = BrickColor.new(Color)
   Effect.formFactor = "Symmetric"
   Effect.Size = Vector3.new(1, 1, 1)
   Effect.TopSurface = "Smooth"
   Effect.BottomSurface = "Smooth"
   Effect.CFrame = Charge.CFrame * CFrame.new(math.random(-(ChargeMesh.Scale.X)*4, ChargeMesh.Scale.X*4), math.random(-(ChargeMesh.Scale.Y)*4, ChargeMesh.Scale.Y*4), math.random(-(ChargeMesh.Scale.Z)*4, ChargeMesh.Scale.Z*4))
   Effect.CFrame = CFrame.new(Effect.Position, Charge.Position)
   EffectMesh = Instance.new("SpecialMesh")
   EffectMesh.Parent = Effect
   EffectMesh.MeshType = "Sphere"
   EffectMesh.Scale = Vector3.new(1, 1, ChargeMesh.Scale.Z*4)
  end
  wait(0.05)
 end
 Charge:Remove()
 Sound.SoundId = "http://www.roblox.com/asset/?id=2101148"
 Sound:play()
end
------------------------------------------------------------>
--[[
?     -->> Charge/Aim Function
--]]
------------------------------------------------------------>
function onChargeAim(Color, VictimTorso)
 Charge = Instance.new("Part")
 Charge.Parent = Me.Character.Torso
 Charge.Anchored = true
 Charge.CanCollide = false
 Charge.Locked = true
 Charge.Transparency = 0
 Charge.BrickColor = BrickColor.new(Color)
 Charge.formFactor = "Symmetric"
 Charge.Size = Vector3.new(4, 4, 4)
 Charge.TopSurface = "Smooth"
 Charge.BottomSurface = "Smooth"
 Charge.CFrame = Me.Character.Torso.CFrame
 ChargeMesh = Instance.new("SpecialMesh")
 ChargeMesh.Parent = Charge
 ChargeMesh.MeshType = "Brick"
 ChargeMesh.Scale = Vector3.new(1.5, 1.5, 1.5)
 Sound.SoundId = "http://www.roblox.com/asset/?id=2101137"
 Sound:play()
 for i = 1 , 20 do
  Stuff = Charge:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Particle" then
    Stuff[i].Transparency = Stuff[i].Transparency + 0.05
    Stuff[i].BodyPosition.position = Me.Character.Torso.Position
   end
  end
  Particle = Instance.new("Part")
  Particle.Size = Vector3.new(1, 1, 1)
  Particle.Parent = Charge
  Particle.Locked = true
  Particle.CanCollide = false
  Particle.Shape = "Ball"
  Particle.BrickColor = BrickColor.new(Color)
  Particle.TopSurface = "Smooth"
  Particle.BottomSurface = "Smooth"
  Particle.Name = "Particle"
  Particle.CFrame = Me.Character.Torso.CFrame * CFrame.new(math.random(-i, i)*2, math.random(-i, i)*2, math.random(-i, i)*2)
  ParticleMesh = Instance.new("SpecialMesh")
  ParticleMesh.Parent = Particle
  ParticleMesh.MeshType = "Sphere"
  ParticleMesh.Scale = ChargeMesh.Scale / Vector3.new(1.5, 1.5, 1.5)
  BodyPosition = Instance.new("BodyPosition")
  BodyPosition.Parent = Particle
  BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  BodyPosition.position = Me.Character.Torso.Position
  Particle:BreakJoints()
  
  if i >= 10 then
   ChargeMesh.Scale = ChargeMesh.Scale + Vector3.new(0.5, 0.5, 0.5)
  end
  Charge.CFrame = Me.Character.Torso.CFrame * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
  Charge.Transparency = Charge.Transparency + 0.05
  Stuff = Charge:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Effect" then
    Stuff[i]:Remove()
   end
  end
  part = Instance.new("Part")
  part.Parent = Me.Character
  part.CFrame = Me.Character.Torso.CFrame
  Angle = (6.28/7)
  angle = 0
  for ii = 1 , 14 do
   angle = Angle + angle
   part.CFrame = Me.Character.Torso.CFrame
   part.CFrame = part.CFrame * CFrame.Angles(0, angle, 0)
   p = Instance.new("Part")
   p.Parent = Charge
   p.Name = "Effect"
   p.formFactor = "Symmetric"
   p.Size = Vector3.new(2, 1, 1)
   p.BrickColor = BrickColor.new(Color)
   p.Locked = true
   p.Anchored = true
   p.CanCollide = false
   p.TopSurface = "Smooth"
   p.BottomSurface = "Smooth"
   p.CFrame = part.CFrame * CFrame.new(0, -2.5, 20-i)
  end
  part:Remove()
  part = Instance.new("Part")
  part.Parent = Me.Character
  part.CFrame = Me.Character.Torso.CFrame
  Angle = (6.28/7)
  angle = 0
  for ii = 1 , 14 do
   angle = Angle + angle
   part.CFrame = VictimTorso.CFrame
   part.CFrame = part.CFrame * CFrame.Angles(0, angle, 0)
   p = Instance.new("Part")
   p.Parent = Charge
   p.Name = "Effect"
   p.formFactor = "Symmetric"
   p.Size = Vector3.new(2, 1, 1)
   p.BrickColor = BrickColor.new(Color)
   p.Locked = true
   p.Anchored = true
   p.CanCollide = false
   p.TopSurface = "Smooth"
   p.BottomSurface = "Smooth"
   p.CFrame = part.CFrame * CFrame.new(0, -2.5, 20-i)
  end
  part:Remove()
  for i = 1 , 5 do
   Effect = Instance.new("Part")
   Effect.Parent = Charge
   Effect.Anchored = true
   Effect.CanCollide = false
   Effect.Locked = true
   Effect.Name = "Effect"
   Effect.Transparency = Charge.Transparency
   Effect.BrickColor = BrickColor.new(Color)
   Effect.formFactor = "Symmetric"
   Effect.Size = Vector3.new(1, 1, 1)
   Effect.TopSurface = "Smooth"
   Effect.BottomSurface = "Smooth"
   Effect.CFrame = Charge.CFrame * CFrame.new(math.random(-(ChargeMesh.Scale.X)*4, ChargeMesh.Scale.X*4), math.random(-(ChargeMesh.Scale.Y)*4, ChargeMesh.Scale.Y*4), math.random(-(ChargeMesh.Scale.Z)*4, ChargeMesh.Scale.Z*4))
   Effect.CFrame = CFrame.new(Effect.Position, Charge.Position)
   EffectMesh = Instance.new("SpecialMesh")
   EffectMesh.Parent = Effect
   EffectMesh.MeshType = "Sphere"
   EffectMesh.Scale = Vector3.new(1, 1, ChargeMesh.Scale.Z*4)
  end
  wait(0.05)
 end
 Charge:Remove()
 Sound.SoundId = "http://www.roblox.com/asset/?id=2101148"
 Sound:play()
end
------------------------------------------------------------>
--[[
?     -->> Blade
-- The Parts' names are named, "Grip" because I was too lazy to rename them :3
--]]
------------------------------------------------------------>
wait()
Tool = Me.Character:findFirstChild("Sword")
if Tool ~= nil then
 Tool:Remove()
end
Tool = Instance.new("Model")
Tool.Parent = Me.Character
Tool.Name = "Sword"
Handle = Instance.new("Part")
Handle.Parent = Tool
Handle.Locked = true
Handle.CanCollide = false
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Handle.Size = Vector3.new(1, 1, 1)
Handle.formFactor = "Symmetric"
Handle.Transparency = 1
Handle.Name = "Handle"
Handle.Reflectance = 0
Mesh = Instance.new("SpecialMesh")
Mesh.Parent = Handle
Mesh.MeshType = "Brick"
Mesh.Scale = Vector3.new(0, 0, 0)
Weld = Instance.new("Weld")
Weld.Parent = Me.Character["Torso"]
Weld.Part0 = Me.Character["Torso"]
Weld.Part1 = Handle
Weld.C0 = CFrame.new(1.6, 2.3, 0.6) * CFrame.Angles(0, 0, 2.2)
Weld.C0 = Weld.C0 * CFrame.Angles(0, 1.57, 0)
Grip1 = Instance.new("Part")
Grip1.Parent = Tool
Grip1.Locked = true
Grip1.BrickColor = BrickColor.new(1003)
Grip1.TopSurface = "Smooth"
Grip1.BottomSurface = "Smooth"
Grip1.Size = Vector3.new(1, 1, 1)
Grip1.formFactor = "Symmetric"
Grip1.Transparency = 0
Grip1.Reflectance = 0
Grip1.CanCollide = false
Grip1.Name = "Grip1"
GripMesh1 = Instance.new("CylinderMesh")
GripMesh1.Parent = Grip1
GripMesh1.Scale = Vector3.new(0.45, 1.6, 0.45)
GripWeld = Instance.new("Weld")
GripWeld.Parent = Handle
GripWeld.Part0 = Handle
GripWeld.Part1 = Grip1
GripWeld.C0 = CFrame.new(0, 0, 0)*CFrame.Angles(0, 0, 0)
Grip2 = Instance.new("Part")
Grip2.Parent = Tool
Grip2.Locked = true
Grip2.BrickColor = BrickColor.new(1004)
Grip2.TopSurface = "Smooth"
Grip2.BottomSurface = "Smooth"
Grip2.Size = Vector3.new(1, 1, 1)
Grip2.formFactor = "Symmetric"
Grip2.Transparency = 0
Grip2.CanCollide = false
Grip2.Name = "Grip2"
GripMesh2 = Instance.new("CylinderMesh")
GripMesh2.Parent = Grip2
GripMesh2.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld2 = Instance.new("Weld")
GripWeld2.Parent = Handle
GripWeld2.Part0 = Handle
GripWeld2.Part1 = Grip2
GripWeld2.C0 = CFrame.new(0, -0.4, 0)*CFrame.Angles(0, 0, 0)
Grip3 = Instance.new("Part")
Grip3.Parent = Tool
Grip3.Locked = true
Grip3.BrickColor = BrickColor.new(1004)
Grip3.TopSurface = "Smooth"
Grip3.BottomSurface = "Smooth"
Grip3.Size = Vector3.new(1, 1, 1)
Grip3.formFactor = "Symmetric"
Grip3.Transparency = 0
Grip3.CanCollide = false
Grip3.Name = "Grip3"
GripMesh3 = Instance.new("CylinderMesh")
GripMesh3.Parent = Grip3
GripMesh3.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld3 = Instance.new("Weld")
GripWeld3.Parent = Handle
GripWeld3.Part0 = Handle
GripWeld3.Part1 = Grip3
GripWeld3.C0 = CFrame.new(0, -0.29, 0)*CFrame.Angles(0, 0, 0.05)
Grip4 = Instance.new("Part")
Grip4.Parent = Tool
Grip4.Locked = true
Grip4.BrickColor = BrickColor.new(1004)
Grip4.TopSurface = "Smooth"
Grip4.BottomSurface = "Smooth"
Grip4.Size = Vector3.new(1, 1, 1)
Grip4.formFactor = "Symmetric"
Grip4.Transparency = 0
Grip4.CanCollide = false
Grip4.Name = "Grip4"
GripMesh4 = Instance.new("CylinderMesh")
GripMesh4.Parent = Grip4
GripMesh4.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld4 = Instance.new("Weld")
GripWeld4.Parent = Handle
GripWeld4.Part0 = Handle
GripWeld4.Part1 = Grip4
GripWeld4.C0 = CFrame.new(0, -0.18, 0)*CFrame.Angles(0, 0, 0)
Grip5 = Instance.new("Part")
Grip5.Parent = Tool
Grip5.Locked = true
Grip5.BrickColor = BrickColor.new(1004)
Grip5.TopSurface = "Smooth"
Grip5.BottomSurface = "Smooth"
Grip5.Size = Vector3.new(1, 1, 1)
Grip5.formFactor = "Symmetric"
Grip5.Transparency = 0
Grip5.CanCollide = false
Grip5.Name = "Grip5"
GripMesh5 = Instance.new("CylinderMesh")
GripMesh5.Parent = Grip5
GripMesh5.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld5 = Instance.new("Weld")
GripWeld5.Parent = Handle
GripWeld5.Part0 = Handle
GripWeld5.Part1 = Grip5
GripWeld5.C0 = CFrame.new(0, -0.07, 0)*CFrame.Angles(0, 0, 0.03)
Grip6 = Instance.new("Part")
Grip6.Parent = Tool
Grip6.Locked = true
Grip6.BrickColor = BrickColor.new(1004)
Grip6.TopSurface = "Smooth"
Grip6.BottomSurface = "Smooth"
Grip6.Size = Vector3.new(1, 1, 1)
Grip6.formFactor = "Symmetric"
Grip6.Transparency = 0
Grip6.CanCollide = false
Grip6.Name = "Grip6"
GripMesh = Instance.new("CylinderMesh")
GripMesh.Parent = Grip6
GripMesh.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld = Instance.new("Weld")
GripWeld.Parent = Handle
GripWeld.Part0 = Handle
GripWeld.Part1 = Grip6
GripWeld.C0 = CFrame.new(0, 0.04, 0)*CFrame.Angles(0, 0, -0.05)
Grip7 = Instance.new("Part")
Grip7.Parent = Tool
Grip7.Locked = true
Grip7.BrickColor = BrickColor.new(1004)
Grip7.TopSurface = "Smooth"
Grip7.BottomSurface = "Smooth"
Grip7.Size = Vector3.new(1, 1, 1)
Grip7.formFactor = "Symmetric"
Grip7.Transparency = 0
Grip7.CanCollide = false
Grip7.Name = "Grip7"
GripMesh7 = Instance.new("CylinderMesh")
GripMesh7.Parent = Grip7
GripMesh7.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld7 = Instance.new("Weld")
GripWeld7.Parent = Handle
GripWeld7.Part0 = Handle
GripWeld7.Part1 = Grip7
GripWeld7.C0 = CFrame.new(0, 0.15, 0)*CFrame.Angles(0, 0, 0)
Grip8 = Instance.new("Part")
Grip8.Parent = Tool
Grip8.Locked = true
Grip8.BrickColor = BrickColor.new(1004)
Grip8.TopSurface = "Smooth"
Grip8.BottomSurface = "Smooth"
Grip8.Size = Vector3.new(1, 1, 1)
Grip8.formFactor = "Symmetric"
Grip8.Transparency = 0
Grip8.CanCollide = false
Grip8.Name = "Grip8"
GripMesh8 = Instance.new("CylinderMesh")
GripMesh8.Parent = Grip8
GripMesh8.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld8 = Instance.new("Weld")
GripWeld8.Parent = Handle
GripWeld8.Part0 = Handle
GripWeld8.Part1 = Grip8
GripWeld8.C0 = CFrame.new(0, 0.26, 0)*CFrame.Angles(0, 0, 0)
Grip9 = Instance.new("Part")
Grip9.Parent = Tool
Grip9.Locked = true
Grip9.BrickColor = BrickColor.new(1004)
Grip9.TopSurface = "Smooth"
Grip9.BottomSurface = "Smooth"
Grip9.Size = Vector3.new(1, 1, 1)
Grip9.formFactor = "Symmetric"
Grip9.Transparency = 0
Grip9.CanCollide = false
Grip9.Name = "Grip9"
GripMesh9 = Instance.new("CylinderMesh")
GripMesh9.Parent = Grip9
GripMesh9.Scale = Vector3.new(0.46, 0.1, 0.46)
GripWeld9 = Instance.new("Weld")
GripWeld9.Parent = Handle
GripWeld9.Part0 = Handle
GripWeld9.Part1 = Grip9
GripWeld9.C0 = CFrame.new(0, 0.37, 0)*CFrame.Angles(0, 0, 0.07)
Grip10 = Instance.new("Part")
Grip10.Parent = Tool
Grip10.Locked = true
Grip10.Reflectance = 0
Grip10.CanCollide = false
Grip10.BrickColor = BrickColor.new(1003)
Grip10.TopSurface = "Smooth"
Grip10.BottomSurface = "Smooth"
Grip10.Size = Vector3.new(1, 1, 1)
Grip10.formFactor = "Symmetric"
Grip10.Transparency = 0
Grip10.Name = "Grip10"
GripMesh10 = Instance.new("SpecialMesh")
GripMesh10.Parent = Grip10
GripMesh10.MeshType = "Sphere"
GripMesh10.Scale = Vector3.new(0.6, 0.6, 0.6)
GripWeld10 = Instance.new("Weld")
GripWeld10.Parent = Handle
GripWeld10.Part0 = Handle
GripWeld10.Part1 = Grip10
GripWeld10.C0 = CFrame.new(0, -0.8, 0)*CFrame.Angles(0, 0, 0)
Grip11 = Instance.new("Part")
Grip11.Parent = Tool
Grip11.Locked = true
Grip11.BrickColor = BrickColor.new(1003)
Grip11.TopSurface = "Smooth"
Grip11.CanCollide = false
Grip11.BottomSurface = "Smooth"
Grip11.Size = Vector3.new(1, 1, 1)
Grip11.formFactor = "Symmetric"
Grip11.Transparency = 0
Grip11.Name = "Grip11"
Grip11.Reflectance = 0
GripMesh11 = Instance.new("SpecialMesh")
GripMesh11.Parent = Grip11
GripMesh11.MeshType = "Brick"
GripMesh11.Scale = Vector3.new(0.55, 0.4, 1.4)
GripWeld11 = Instance.new("Weld")
GripWeld11.Parent = Handle
GripWeld11.Part0 = Handle
GripWeld11.Part1 = Grip11
GripWeld11.C0 = CFrame.new(0, 0.85, 0)*CFrame.Angles(0, 0, 0)
Grip12 = Instance.new("Part")
Grip12.Parent = Tool
Grip12.Locked = true
Grip12.CanCollide = false
Grip12.BrickColor = BrickColor.new(1003)
Grip12.TopSurface = "Smooth"
Grip12.BottomSurface = "Smooth"
Grip12.Size = Vector3.new(1, 1, 1)
Grip12.formFactor = "Symmetric"
Grip12.Transparency = 0
Grip12.Name = "Grip12"
Grip12.Reflectance = 0
GripMesh12 = Instance.new("SpecialMesh")
GripMesh12.Parent = Grip12
GripMesh12.MeshType = "Wedge"
GripMesh12.Scale = Vector3.new(0.55, 0.4, 0.9)
GripWeld12 = Instance.new("Weld")
GripWeld12.Parent = Handle
GripWeld12.Part0 = Handle
GripWeld12.Part1 = Grip12
GripWeld12.C0 = CFrame.new(0, 0.908, 1.1)*CFrame.Angles(3, 0, 0)
Grip13 = Instance.new("Part")
Grip13.Parent = Tool
Grip13.Locked = true
Grip13.CanCollide = false
Grip13.BrickColor = BrickColor.new(1003)
Grip13.TopSurface = "Smooth"
Grip13.BottomSurface = "Smooth"
Grip13.Size = Vector3.new(1, 1, 1)
Grip13.formFactor = "Symmetric"
Grip13.Transparency = 0
Grip13.Name = "Grip13"
Grip13.Reflectance = 0
GripMesh13 = Instance.new("SpecialMesh")
GripMesh13.Parent = Grip13
GripMesh13.MeshType = "Wedge"
GripMesh13.Scale = Vector3.new(0.55, 0.4, 0.9)
GripWeld13 = Instance.new("Weld")
GripWeld13.Parent = Handle
GripWeld13.Part0 = Handle
GripWeld13.Part1 = Grip13
GripWeld13.C0 = CFrame.new(0, 0.908, -1.1)*CFrame.Angles(-3, 3.14, 0)
Grip14 = Instance.new("Part")
Grip14.Parent = Tool
Grip14.Locked = true
Grip14.CanCollide = false
Grip14.BrickColor = BrickColor.new(1004)
Grip14.TopSurface = "Smooth"
Grip14.BottomSurface = "Smooth"
Grip14.Size = Vector3.new(1, 1, 1)
Grip14.formFactor = "Symmetric"
Grip14.Transparency = 0.1
Grip14.Name = "Grip14"
Grip14.Reflectance = 0
GripMesh14 = Instance.new("SpecialMesh")
GripMesh14.Parent = Grip14
GripMesh14.MeshType = "Brick"
GripMesh14.Scale = Vector3.new(0.552, 0.15, 1.3)
GripWeld14 = Instance.new("Weld")
GripWeld14.Parent = Handle
GripWeld14.Part0 = Handle
GripWeld14.Part1 = Grip14
GripWeld14.C0 = CFrame.new(0, 0.85, 0)*CFrame.Angles(0, 0, 0)
Grip15 = Instance.new("Part")
Grip15.Parent = Tool
Grip15.Locked = true
Grip15.CanCollide = false
Grip15.BrickColor = BrickColor.new(1004)
Grip15.TopSurface = "Smooth"
Grip15.BottomSurface = "Smooth"
Grip15.Size = Vector3.new(1, 1, 1)
Grip15.formFactor = "Symmetric"
Grip15.Transparency = 0.1
Grip15.Name = "Grip15"
Grip15.Reflectance = 0
GripMesh15 = Instance.new("SpecialMesh")
GripMesh15.Parent = Grip15
GripMesh15.MeshType = "Sphere"
GripMesh15.Scale = Vector3.new(0.6, 0.4, 1.5)
GripWeld15 = Instance.new("Weld")
GripWeld15.Parent = Handle
GripWeld15.Part0 = Handle
GripWeld15.Part1 = Grip15
GripWeld15.C0 = CFrame.new(0, 0.85, 0)*CFrame.Angles(0, 0, 0)
Grip16 = Instance.new("Part")
Grip16.Parent = Tool
Grip16.Locked = true
Grip16.BrickColor = BrickColor.new(1004)
Grip16.TopSurface = "Smooth"
Grip16.BottomSurface = "Smooth"
Grip16.Size = Vector3.new(1, 1, 1)
Grip16.formFactor = "Symmetric"
Grip16.Transparency = 0
Grip16.Name = "Grip16"
Grip16.CanCollide = false
Grip16.Reflectance = 0
GripMesh16 = Instance.new("SpecialMesh")
GripMesh16.Parent = Grip16
GripMesh16.MeshType = "Brick"
GripMesh16.Scale = Vector3.new(0.2, 0.3, 1)
GripWeld = Instance.new("Weld")
GripWeld.Parent = Handle
GripWeld.Part0 = Handle
GripWeld.Part1 = Grip16
GripWeld.C0 = CFrame.new(0, 1.1, 0)*CFrame.Angles(0, 0, 0)
Grip17 = Instance.new("Part")
Grip17.Parent = Tool
Grip17.Locked = true
Grip17.BrickColor = BrickColor.new(1003)
Grip17.TopSurface = "Smooth"
Grip17.BottomSurface = "Smooth"
Grip17.Size = Vector3.new(1, 3, 1)
Grip17.formFactor = "Symmetric"
Grip17.Transparency = 0
Grip17.Name = "Grip17"
Grip17.CanCollide = false
Grip17.Reflectance = 0
GripMesh17 = Instance.new("SpecialMesh")
GripMesh17.Parent = Grip17
GripMesh17.MeshType = "Brick"
GripMesh17.Scale = Vector3.new(0.19, 1, 1)
GripWeld17 = Instance.new("Weld")
GripWeld17.Parent = Handle
GripWeld17.Part0 = Handle
GripWeld17.Part1 = Grip17
GripWeld17.C0 = CFrame.new(0, 2.21, -0.08)*CFrame.Angles(-0.08, 0, 0)
Grip18 = Instance.new("Part")
Grip18.Parent = Tool
Grip18.Locked = true
Grip18.BrickColor = BrickColor.new(1003)
Grip18.TopSurface = "Smooth"
Grip18.BottomSurface = "Smooth"
Grip18.Size = Vector3.new(1, 3, 1)
Grip18.formFactor = "Symmetric"
Grip18.Transparency = 0
Grip18.Name = "Grip18"
Grip18.CanCollide = false
Grip18.Reflectance = 0
GripMesh18 = Instance.new("SpecialMesh")
GripMesh18.Parent = Grip18
GripMesh18.MeshType = "Brick"
GripMesh18.Scale = Vector3.new(0.19, 1, 1)
GripWeld18 = Instance.new("Weld")
GripWeld18.Parent = Handle
GripWeld18.Part0 = Handle
GripWeld18.Part1 = Grip18
GripWeld18.C0 = CFrame.new(0, 4.15, -0.155)*CFrame.Angles(0, 0, 0)
Grip19 = Instance.new("Part")
Grip19.Parent = Tool
Grip19.Locked = true
Grip19.BrickColor = BrickColor.new(1003)
Grip19.TopSurface = "Smooth"
Grip19.BottomSurface = "Smooth"
Grip19.Size = Vector3.new(1, 3, 1)
Grip19.formFactor = "Symmetric"
Grip19.Transparency = 0
Grip19.CanCollide = false
Grip19.Name = "Grip19"
Grip19.Reflectance = 0
GripMesh19 = Instance.new("SpecialMesh")
GripMesh19.Parent = Grip19
GripMesh19.MeshType = "Wedge"
GripMesh19.Scale = Vector3.new(0.19, 1, 1)
GripWeld19 = Instance.new("Weld")
GripWeld19.Parent = Handle
GripWeld19.Part0 = Handle
GripWeld19.Part1 = Grip19
GripWeld19.C0 = CFrame.new(0, 6.99, -0.07)*CFrame.Angles(0.08, 0, 0)
Grip20 = Instance.new("Part")
Grip20.Parent = Tool
Grip20.Locked = true
Grip20.BrickColor = BrickColor.new(1004)
Grip20.TopSurface = "Smooth"
Grip20.BottomSurface = "Smooth"
Grip20.Size = Vector3.new(1, 3, 1)
Grip20.formFactor = "Symmetric"
Grip20.Transparency = 0
Grip20.Name = "Grip20"
Grip20.CanCollide = false
Grip20.Reflectance = 0
GripMesh20 = Instance.new("SpecialMesh")
GripMesh20.Parent = Grip20
GripMesh20.MeshType = "Brick"
GripMesh20.Scale = Vector3.new(0.193, 1, 0.2)
GripWeld20 = Instance.new("Weld")
GripWeld20.Parent = Handle
GripWeld20.Part0 = Handle
GripWeld20.Part1 = Grip20
GripWeld20.C0 = CFrame.new(0, 2.21, -0.08)*CFrame.Angles(-0.08, 0, 0)
Grip21 = Instance.new("Part")
Grip21.Parent = Tool
Grip21.Locked = true
Grip21.BrickColor = BrickColor.new(1004)
Grip21.TopSurface = "Smooth"
Grip21.BottomSurface = "Smooth"
Grip21.Size = Vector3.new(1, 1, 1)
Grip21.formFactor = "Symmetric"
Grip21.Transparency = 0
Grip21.Name = "Grip21"
Grip21.CanCollide = false
Grip21.Reflectance = 0
GripMesh21 = Instance.new("SpecialMesh")
GripMesh21.Parent = Grip21
GripMesh21.MeshType = "Brick"
GripMesh21.Scale = Vector3.new(0.193, 1, 0.2)
GripWeld21 = Instance.new("Weld")
GripWeld21.Parent = Handle
GripWeld21.Part0 = Handle
GripWeld21.Part1 = Grip21
GripWeld21.C0 = CFrame.new(0, 3.7, -0.155)*CFrame.Angles(0, 0, 0)
Grip22 = Instance.new("Part")
Grip22.Parent = Tool
Grip22.Locked = true
Grip22.BrickColor = BrickColor.new(1004)
Grip22.TopSurface = "Smooth"
Grip22.BottomSurface = "Smooth"
Grip22.Size = Vector3.new(1, 1, 1)
Grip22.formFactor = "Symmetric"
Grip22.Transparency = 0
Grip22.CanCollide = false
Grip22.Name = "Grip22"
Grip22.Reflectance = 0
GripMesh22 = Instance.new("CylinderMesh")
GripMesh22.Parent = Grip22
GripMesh22.Scale = Vector3.new(0.6, 0.193, 0.6)
GripWeld22 = Instance.new("Weld")
GripWeld22.Parent = Handle
GripWeld22.Part0 = Handle
GripWeld22.Part1 = Grip22
GripWeld22.C0 = CFrame.new(0, 4.2, -0.155)*CFrame.Angles(0, 0, 1.57)
------------------------------------------------------------>
--[[
?     -->> Sounds
--]]
------------------------------------------------------------>
Sound = Instance.new("Sound")
Sound.Parent = Handle
Sound.Name = "Sound"
Sound.Pitch = 1
Sound.SoundId = ""
Sound.Volume = 2
------------------------------------------------------------>
--[[
?     -->> Button1Down
--]]
------------------------------------------------------------>
function onButton1Down()
if Activated then return end
if Me.Character.Humanoid.Sit == true or Me.Character.Humanoid.PlatformStand == true then
 Me.Character.Humanoid.Jump = true
 Me.Character.Humanoid.PlatformStand = false
 Me.Character.Humanoid.Sit = false
 Me.Character.Torso.Velocity = Vector3.new(0, 20, 0)
end
if Mode == "Swing" then
 Activated = true
 if Me.Character.Humanoid.Jump == true then
  Weld.Parent = Me.Character["Left Arm"]
  Weld.Part0 = Me.Character["Left Arm"]
  Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, 1, 0)
  Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
  Sound:play()
  for i = 1 , 8 do
   Clone1 = Grip17:clone()
   Clone1.Parent = Tool
   Clone1.Name = "Shadow"
   Clone1.Anchored = true
   Clone1.CanCollide = false
   Clone1.Transparency = 0.2
   Clone1.BrickColor = BrickColor.new(1003)
   Clone2 = Grip18:clone()
   Clone2.Parent = Tool
   Clone2.Name = "Shadow"
   Clone2.Anchored = true
   Clone2.CanCollide = false
   Clone2.Transparency = 0.2
   Clone2.BrickColor = BrickColor.new(1003)
   Clone3 = Grip19:clone()
   Clone3.Parent = Tool
   Clone3.Name = "Shadow"
   Clone3.Anchored = true
   Clone3.CanCollide = false
   Clone3.Transparency = 0.2
   Clone3.BrickColor = BrickColor.new(1003)
   FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
   FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
   wait()
  end
  wait()
  for i = 1 , 8 do
   Clone1 = Grip17:clone()
   Clone1.Parent = Tool
   Clone1.Name = "Shadow"
   Clone1.Anchored = true
   Clone1.CanCollide = false
   Clone1.Transparency = 0.2
   Clone1.BrickColor = BrickColor.new(1003)
   Clone2 = Grip18:clone()
   Clone2.Parent = Tool
   Clone2.Name = "Shadow"
   Clone2.Anchored = true
   Clone2.CanCollide = false
   Clone2.Transparency = 0.2
   Clone2.BrickColor = BrickColor.new(1003)
   Clone3 = Grip19:clone()
   Clone3.Parent = Tool
   Clone3.Name = "Shadow"
   Clone3.Anchored = true
   Clone3.CanCollide = false
   Clone3.Transparency = 0.2
   Clone3.BrickColor = BrickColor.new(1003)
   FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
   FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
   wait()
  end
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0, -1, 0)
  Weld.Parent = Me.Character["Right Arm"]
  Weld.Part0 = Me.Character["Right Arm"]
  Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15) 
  else
  Weld.Parent = Me.Character["Left Arm"]
  Weld.Part0 = Me.Character["Left Arm"]
  Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
  Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
  Sound:play()
  for i = 1 , 8 do
   Clone1 = Grip17:clone()
   Clone1.Parent = Tool
   Clone1.Name = "Shadow"
   Clone1.Anchored = true
   Clone1.CanCollide = false
   Clone1.Transparency = 0.2
   Clone1.BrickColor = BrickColor.new(1003)
   Clone2 = Grip18:clone()
   Clone2.Parent = Tool
   Clone2.Name = "Shadow"
   Clone2.Anchored = true
   Clone2.CanCollide = false
   Clone2.Transparency = 0.2
   Clone2.BrickColor = BrickColor.new(1003)
   Clone3 = Grip19:clone()
   Clone3.Parent = Tool
   Clone3.Name = "Shadow"
   Clone3.Anchored = true
   Clone3.CanCollide = false
   Clone3.Transparency = 0.2
   Clone3.BrickColor = BrickColor.new(1003)
   FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
   FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
   wait()
  end
  wait(0.2)
  for i = 1 , 8 do
   Clone1 = Grip17:clone()
   Clone1.Parent = Tool
   Clone1.Name = "Shadow"
   Clone1.Anchored = true
   Clone1.CanCollide = false
   Clone1.Transparency = 0.2
   Clone1.BrickColor = BrickColor.new(1003)
   Clone2 = Grip18:clone()
   Clone2.Parent = Tool
   Clone2.Name = "Shadow"
   Clone2.Anchored = true
   Clone2.CanCollide = false
   Clone2.Transparency = 0.2
   Clone2.BrickColor = BrickColor.new(1003)
   Clone3 = Grip19:clone()
   Clone3.Parent = Tool
   Clone3.Name = "Shadow"
   Clone3.Anchored = true
   Clone3.CanCollide = false
   Clone3.Transparency = 0.2
   Clone3.BrickColor = BrickColor.new(1003)
   FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
   FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
   wait()
  end
  Weld.Parent = Me.Character["Right Arm"]
  Weld.Part0 = Me.Character["Right Arm"]
  Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
 end
Activated = false
end
if Mode == "Spin" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Sound.SoundId = "http://www.roblox.com/asset/?id=18478970"
 Sound:play()
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Me.Character.Torso
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame
 Gyro.D = 50
 Wave = Instance.new("Part")
 Wave.Parent = Me.Character.Torso
 Wave.Anchored = true
 Wave.CanCollide = false
 Wave.Locked = true
 Wave.Transparency = 0.2
 Wave.BrickColor = BrickColor.new(1004)
 Wave.Size = Vector3.new(2, 1, 2)
 Wave.TopSurface = "Smooth"
 Wave.BottomSurface = "Smooth"
 Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
 WaveMesh = Instance.new("CylinderMesh")
 WaveMesh.Parent = Wave
 WaveMesh.Scale = Vector3.new(1, 0.1, 1)
 for i = 1 , 16 do
  Wave.Size = Wave.Size + Vector3.new(1, 0, 1)
  Wave.Transparency = Wave.Transparency + 0.055
  Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 0.785, 0)
  wait()
 end
 
 Wave:Remove()
 Gyro:Remove()
 wait(0.2)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Teleport" then
 if mouse.Target ~= nil then
  Activated = true
  MousePosition = mouse.Hit.p
  Weld.Parent = Me.Character["Left Arm"]
  Weld.Part0 = Me.Character["Left Arm"]
  Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
  Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
  Sound:play()
  for i = 1 , 8 do
   Clone1 = Grip17:clone() 
   Clone1.Parent = Tool
   Clone1.Name = "Shadow"
   Clone1.Anchored = true
   Clone1.CanCollide = false
   Clone1.Transparency = 0.2
   Clone1.BrickColor = BrickColor.new(1003)
   Clone2 = Grip18:clone()
   Clone2.Parent = Tool
   Clone2.Name = "Shadow"
   Clone2.Anchored = true
   Clone2.CanCollide = false
   Clone2.Transparency = 0.2
   Clone2.BrickColor = BrickColor.new(1003)
   Clone3 = Grip19:clone()
   Clone3.Parent = Tool
   Clone3.Name = "Shadow"
   Clone3.Anchored = true
   Clone3.CanCollide = false
   Clone3.Transparency = 0.2
   Clone3.BrickColor = BrickColor.new(1003)
   FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
   FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
   wait()
  end
  Me.Character.Torso.CFrame = CFrame.new(MousePosition+Vector3.new(0, 3, 0))
  Sound.SoundId = "http://www.roblox.com/asset/?id=18478970"
  Sound:play()
  Gyro = Instance.new("BodyGyro")
  Gyro.Parent = Me.Character.Torso
  Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
  Gyro.cframe = Me.Character.Torso.CFrame
  Gyro.D = 50
  Wave = Instance.new("Part")
  Wave.Parent = Me.Character.Torso
  Wave.Anchored = true
  Wave.CanCollide = false
  Wave.Locked = true
  Wave.Transparency = 0.2
  Wave.BrickColor = BrickColor.new(1004)
  Wave.Size = Vector3.new(2, 1, 2)
  Wave.TopSurface = "Smooth"
  Wave.BottomSurface = "Smooth"
  Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
  WaveMesh = Instance.new("CylinderMesh")
  WaveMesh.Parent = Wave
  WaveMesh.Scale = Vector3.new(1, 0.1, 1)
  for i = 1 , 5 do
   Wave.Size = Wave.Size + Vector3.new(1, 0, 1)
   Wave.Transparency = Wave.Transparency + 0.055
   Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
   Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 1, 0)
   wait()
  end
  Wave:Remove()
  for i = 1 , 15 do
   Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 1, 0)
   wait()
  end
 
  Gyro:Remove()
  wait(0.2)
  for i = 1 , 8 do
   Clone1 = Grip17:clone()
   Clone1.Parent = Tool
   Clone1.Name = "Shadow"
   Clone1.Anchored = true
   Clone1.CanCollide = false
   Clone1.Transparency = 0.2
   Clone1.BrickColor = BrickColor.new(1003)
   Clone2 = Grip18:clone()
   Clone2.Parent = Tool
   Clone2.Name = "Shadow"
   Clone2.Anchored = true
   Clone2.CanCollide = false
   Clone2.Transparency = 0.2
   Clone2.BrickColor = BrickColor.new(1003)
   Clone3 = Grip19:clone()
   Clone3.Parent = Tool
   Clone3.Name = "Shadow"
   Clone3.Anchored = true
   Clone3.CanCollide = false
   Clone3.Transparency = 0.2
   Clone3.BrickColor = BrickColor.new(1003)
   FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
   FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
   wait()
  end
  Weld.Parent = Me.Character["Right Arm"]
  Weld.Part0 = Me.Character["Right Arm"]
  Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
 Activated = false
 end
end
if Mode == "Explosion" then
 Activated = true
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 onCharge(24)
 Range = 10
 for i = 1 , 5 do
 Range = Range + 15
 Me.Character.Humanoid.WalkSpeed = 0
 
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(Range, 0, 0) 
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(-Range, 0, 0) 
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(0, 0, Range) 
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(0, 0, -Range)
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(Range, 0, Range) 
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(-Range, 0, Range) 
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(Range, 0, -Range) 
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = Range/2
 Boom.Position = Me.Character.Torso.Position+Vector3.new(-Range, 0, -Range)
 wait(0.05)
 end
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
Activated = false
end
if Mode == "ExplodeVictim" then
 if mouse.Target ~= nil then
 torso = mouse.Target.Parent:findFirstChild("Torso")
 if torso ~= nil and torso.Parent.Name ~= Me.Name then
 Activated = true
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 onChargeAim(24, torso)
 Boom = Instance.new("Explosion")
 Boom.Parent = Workspace
 Boom.BlastRadius = 20
 Boom.Position = torso.Position
 Stuff = torso.Parent:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Part" then
   Stuff[i].Anchored = false
   Stuff[i]:BreakJoints()
   Stuff[i].BrickColor = BrickColor.new("Really black")
   Stuff[i].CanCollide = true
  end
 end
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Activated = false
 end
 end
end
if Mode == "Assassinate" then
 if mouse.Target ~= nil then
 torso = mouse.Target.Parent:findFirstChild("Torso")
 if torso ~= nil and torso.Parent.Name ~= Me.Name then
 Activated = true
 Sound.SoundId = "rbxasset://sounds\\unsheath.wav"
 Sound:play()
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.05, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.15, 0, 0)
  wait()
 end
 wait()
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.2)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, 0.19)
  wait()
 end
 FakeLeftShoulder.C0 = OriginalLeftShoulder
 Weld = Instance.new("Weld")
 Weld.Parent = Me.Character["Torso"]
 Weld.Part0 = Me.Character["Torso"]
 Weld.Part1 = Handle
 Weld.C0 = CFrame.new(1.6, 2.5, 0.6) * CFrame.Angles(0, 0, 2.2)
 Weld.C0 = Weld.C0 * CFrame.Angles(0, 1.57, 0)    
 
 for i = 1 , 16 do
  Weld.C0 = Weld.C0 * CFrame.new(0, 0, -0.03) * CFrame.Angles(0.03, 0, 0.11)
 end
 for i = 1 , 16 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.1)
  Weld.C0 = Weld.C0 * CFrame.new(0, 0, 0.03) * CFrame.Angles(-0.03, 0, -0.11)
  wait()
 end
 FakeRightShoulder.Parent = Me.Character.Torso
 FakeRightShoulder.Part0 = Me.Character.Torso
 FakeRightShoulder.Part1 = Me.Character["Right Arm"]
 FakeRightShoulder.C0 = OriginalRightShoulder
 FakeRightShoulder.C1 = OriginalRightShoulder2
 FakeLeftShoulder.Parent = Me.Character.Torso
 FakeLeftShoulder.Part0 = Me.Character.Torso
 FakeLeftShoulder.Part1 = Me.Character["Left Arm"]
 FakeLeftShoulder.C0 = OriginalLeftShoulder
 FakeLeftShoulder.C1 = OriginalLeftShoulder2
 FakeRightShoulder.C0 = OriginalRightShoulder * CFrame.Angles(-0.1, 0, 0)
 FakeLeftShoulder.C0 = OriginalLeftShoulder * CFrame.Angles(-0.1, 0, 0) 
 wait(0.1)
 FakeRightShoulder.C0 = OriginalRightShoulder * CFrame.Angles(-0.2, 0, 0)
 FakeLeftShoulder.C0 = OriginalLeftShoulder * CFrame.Angles(-0.2, 0, 0) 
 wait(0.1)
 Blade1 = Instance.new("Part")
 Blade1.Parent = Me.Character["Right Arm"]
 Blade1.CanCollide = false
 Blade1.formFactor = "Symmetric"
 Blade1.Size = Vector3.new(1, 2, 1)
 Blade1.TopSurface = "Smooth"
 Blade1.BottomSurface = "Smooth"
 Blade1.Locked = true
 Blade1.BrickColor = BrickColor.new(1003)
 Blade1.Name = "Blade1"
 Blade1.CFrame = Me.Character["Right Arm"].CFrame
 Blade2 = Instance.new("Part")
 Blade2.Parent = Me.Character["Left Arm"]
 Blade2.CanCollide = false
 Blade2.formFactor = "Symmetric"
 Blade2.Size = Vector3.new(1, 2, 1)
 Blade2.TopSurface = "Smooth"
 Blade2.BottomSurface = "Smooth"
 Blade2.Locked = true
 Blade2.BrickColor = BrickColor.new(1003)
 Blade2.Name = "Blade2"
 Blade2.CFrame = Me.Character["Left Arm"].CFrame
 Blade1Mesh = Instance.new("SpecialMesh")
 Blade1Mesh.Parent = Blade1
 Blade1Mesh.MeshType = "Brick"
 Blade1Mesh.Scale = Vector3.new(0.2, 1, 0.2)
 Blade2Mesh = Instance.new("SpecialMesh")
 Blade2Mesh.Parent = Blade2
 Blade2Mesh.MeshType = "Brick"
 Blade2Mesh.Scale = Vector3.new(0.2, 1, 0.2)
 Blade1Weld = Instance.new("Weld")
 Blade1Weld.Parent = Me.Character["Right Arm"]
 Blade1Weld.Part0 = Me.Character["Right Arm"]
 Blade1Weld.Part1 = Blade1
 Blade1Weld.C0 = CFrame.new(-0.3, 0, 0)
 Blade2Weld = Instance.new("Weld")
 Blade2Weld.Parent = Me.Character["Left Arm"]
 Blade2Weld.Part0 = Me.Character["Left Arm"]
 Blade2Weld.Part1 = Blade2
 Blade2Weld.C0 = CFrame.new(0.3, 0, 0)
 for i = 1 , 17 do
  Blade1Weld.C0 = Blade1Weld.C0 * CFrame.new(0, -0.1, 0)
  Blade2Weld.C0 = Blade2Weld.C0 * CFrame.new(0, -0.1, 0)
  Me.Character:MoveTo(Me.Character.Torso.Position)
  wait(0.05)
 end
 for i = 1 , 5 do
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.1)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, 0.1)  
 wait()
 end
 
 wait(0.5)
 Me.Character:MoveTo(Me.Character.Torso.Position)
 BodyPosition = Instance.new("BodyPosition")
 BodyPosition.Parent = Me.Character.Torso
 BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 BodyPosition.position = torso.Position
 BodyGyro = Instance.new("BodyGyro")
 BodyGyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 BodyGyro.Parent = Me.Character.Torso
 BodyGyro.cframe = CFrame.new(Me.Character.Torso.Position, torso.Position)
 wait(0.8)
 BodyPosition:Remove()
 BodyGyro:Remove()
 Me.Character.Torso.CFrame = torso.CFrame
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.5)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, -0.5)  
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 1.57)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, -1.57)  
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.785, 0, 0)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0.785, 0, 0)  
 KillWeld = Instance.new("Weld")
 KillWeld.Parent = Me.Character.Torso
 KillWeld.Part0 = Me.Character.Torso
 KillWeld.Part1 = torso
 KillWeld.C0 = CFrame.new(0, 0, -1.6)
 wait(0.3)
 for i = 1 , 12 do
 KillWeld.C0 = KillWeld.C0 * CFrame.new(0, 0.08, 0.02) * CFrame.Angles(0.1, 0, 0)
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.1)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, -0.1)
 wait(0.1)
 end
 wait(0.15)
 KillWeld:Remove()
 if torso ~= nil then
  torso:BreakJoints()
 end
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.785, 0, 0)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.785, 0, 0)
 for i = 1 , 3 do
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.1)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, -0.1)
 wait()
 end
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.07)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, -0.07)
 wait(0.1)
 for i = 1 , 17 do
  Blade1Weld.C0 = Blade1Weld.C0 * CFrame.new(0, 0.1, 0)
  Blade2Weld.C0 = Blade2Weld.C0 * CFrame.new(0, 0.1, 0)
  wait(0.05)
 end
 FakeRightShoulder.C0 = OriginalRightShoulder
 FakeLeftShoulder.C0 = OriginalLeftShoulder
 wait()
 Sound.SoundId = "rbxasset://sounds\\unsheath.wav"
 Sound:play()
 FakeRightShoulder.Parent = Me.Character.Torso
 FakeRightShoulder.Part0 = Me.Character.Torso
 FakeRightShoulder.Part1 = Me.Character["Right Arm"]
 FakeRightShoulder.C0 = OriginalRightShoulder
 FakeRightShoulder.C1 = OriginalRightShoulder2
 FakeLeftShoulder.Parent = Me.Character.Torso
 FakeLeftShoulder.Part0 = Me.Character.Torso
 FakeLeftShoulder.Part1 = Me.Character["Left Arm"]
 FakeLeftShoulder.C0 = OriginalLeftShoulder * CFrame.new(-0.25, 0, -0.45)
 FakeLeftShoulder.C1 = OriginalLeftShoulder2
 Weld:Remove()
 Weld = Instance.new("Weld")
 Weld.Parent = Me.Character["Torso"]
 Weld.Part0 = Me.Character["Torso"]
 Weld.Part1 = Handle
 Weld.C0 = CFrame.new(1.6, 2.5, 0.6) * CFrame.Angles(0, 0, 2.2)
 Weld.C0 = Weld.C0 * CFrame.Angles(0, 1.57, 0)
 for i = 1 , 16 do
  FakeRightShoulder.C0 = OriginalRightShoulder * CFrame.Angles(0, 0, (i/5.2))
  Weld.C0 = Weld.C0 * CFrame.new(0, 0, -0.03) * CFrame.Angles(0.03, 0, 0.11)
  wait()
 end
 wait()
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.2)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, -0.19)
  wait()
 end
 wait()
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.05, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0.15, 0, 0)
  wait()
 end
 wait(0.2)
 Activated = false
 end
 end
end
if Mode == "Tornado" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Sound.SoundId = "http://www.roblox.com/asset/?id=18478970"
 Sound:play()
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Me.Character.Torso
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame
 Gyro.D = 50
 Part = Instance.new("Part")
 Part.Transparency = 1
 Part.CanCollide = false
 Part.Anchored = true
 Part.Parent = Me.Character.Torso
 range = 10
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 80 do
  range = range + 2
  Part.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -(range*1.2))
  p = game.Workspace:GetChildren()
  for i = 1 , #p do
   torso = p[i]:findFirstChild("Torso")
   if torso ~= nil and torso.Parent.Name ~= Me.Name then
    if (Me.Character.Torso.Position-torso.Position).magnitude <= 200 then
    humanoid = torso.Parent:findFirstChild("Humanoid")
    bp = torso:findFirstChild("BodyPosition")
    if bp == nil then
     bp = Instance.new("BodyPosition")
     bp.Parent = torso
     bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
     bp.position = Part.Position + Vector3.new(0, range, 0)
    end
    if bp ~= nil then
     bp.position = Part.Position + Vector3.new(0, range, 0)
    end
    bg = torso:findFirstChild("BodyGyro")
    if bg == nil then
     bg = Instance.new("BodyGyro")
     bg.Parent = torso
     bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
     bg.cframe = CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
    end
    if bg ~= nil then
     bg.cframe = CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
    end
    if humanoid ~= nil then
     humanoid.Sit = true
     humanoid.MaxHealth = 100
     humanoid:TakeDamage(2)
    end
   end
   end
  end
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 1.3, 0)
  wait()
 end
  p = game.Workspace:GetChildren()
  for i = 1 , #p do
   torso = p[i]:findFirstChild("Torso")
   if torso ~= nil and torso.Parent.Name ~= Me.Name then
    humanoid = torso.Parent:findFirstChild("Humanoid")
    bp = torso:findFirstChild("BodyPosition")
    if bp ~= nil then
     bp:Remove()
    end
    bg = torso:findFirstChild("BodyGyro")
    if bg ~= nil then
     bg:Remove()
    end
    if humanoid ~= nil then
     humanoid.Sit = true
     torso.Velocity = torso.CFrame.lookVector * 100
    end
   end
   wait()
  end
 Stuff = Workspace:GetChildren()
 for i = 1 , #Stuff do
  torso = Stuff[i]:findFirstChild("Torso")
  if torso ~= nil then
   hax = torso:GetChildren()
   for i = 1 , #hax do
    if hax[i].className == "BodyPosition" then
     hax[i]:Remove()
    end
   end
  end
 end
 
 Gyro:Remove()
 wait(0.2)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "TripleSlash" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.26, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 2 do
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 1.57, 0)
  wait()
 end
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 2 do
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, -1.57, 0)
  wait()
 end
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 4 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.26, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0.62, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Slashes" then
 Activated = true
 f = Instance.new("Fire")
 f.Parent = Grip17
 f.Size = 2
 ff = Instance.new("Fire")
 ff.Parent = Grip18
 ff.Size = 2
 fff = Instance.new("Fire")
 fff.Parent = Grip18
 fff.Size = 2
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Test = FakeLeftShoulder.C0
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-(0.26*4), 0, 0)
 for i = 1 , 20 do
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1004)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1004)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1004)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 2 do
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 1.57, 0)
  wait()
 end
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1005)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1005)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1005)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 2 do
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, -1.57, 0)
  wait()
 end
 end
 for i = 1 , 2 do
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 1.57, 0)
 end
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1009)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1009)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1009)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 4 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1004)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1004)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1004)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.26, 0, 0)
  FakeLeftShoulder.C0 = Test
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
f:remove()
ff:remove()
fff:remove()
end
if Mode == "Wave" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 2 do
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 1.57, 0)
  wait()
 end
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
  wait()
 end
 for i = 1 , 2 do
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, -1.57, 0)
  wait()
 end
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Me.Character.Torso
 Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 Velocity.velocity = Vector3.new(0, 30, 0)
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Me.Character.Torso
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame
 Gyro.D = 50
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.31, 0, 0)
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, (0.785*2), 0)
  wait()
 end
 Velocity.maxForce = Vector3.new(math.huge, 0, math.huge)
 Velocity.velocity = Vector3.new(0, 0, 0)
 for i = 1 , 2 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(1.24, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
 for i = 1 , 4 do
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.4)
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.62, 0, 0)
 wait()
 end
 wait(0.2)
 for i = 1 , 8 do
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.4)
 wait()
 end
 
 Wave = Instance.new("Part")
 Wave.Parent = Me.Character.Torso
 Wave.Anchored = true
 Wave.CanCollide = false
 Wave.Locked = true
 Wave.Transparency = 0.2
 Wave.Size = Vector3.new(2, 1, 2)
 Wave.TopSurface = "Smooth"
 Wave.BrickColor = BrickColor.new(1004)
 Wave.BottomSurface = "Smooth"
 Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
 WaveMesh = Instance.new("CylinderMesh")
 WaveMesh.Parent = Wave
 WaveMesh.Scale = Vector3.new(1, 0.3, 1)
 for i = 1 , 32 do
  Wave.Size = Wave.Size + Vector3.new(3, 0, 3)
  Wave.Transparency = Wave.Transparency + (0.8/32)
  Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
  Stuff = Workspace:GetChildren()
  for i = 1 , #Stuff do
   Torso = Stuff[i]:findFirstChild("Torso")
   if Torso ~= nil then
    if (Me.Character.Torso.Position-Torso.Position).magnitude <= (Wave.Size.X/2) then
     if Torso.Parent.Name ~= Me.Name then
      Humanoid = Torso.Parent:findFirstChild("Humanoid")
      if Humanoid ~= nil then
       Humanoid.MaxHealth = 100
       Humanoid:TakeDamage(Damage)
      end
     end
    end
   end
  end
  wait()
 end
 for i = 1 , 4 do
 FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0.62, 0, 0)
 FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.4)
 wait()
 end
 wait(0.4)
 Gyro:Remove()
 Velocity:Remove()
Activated = false
end
if Mode == "ForwardSpin" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Sound.SoundId = "http://www.roblox.com/asset/?id=18478970"
 Sound:play()
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Me.Character.Torso
 Velocity.maxForce = Vector3.new(math.huge, 0, math.huge)
 Velocity.velocity = Me.Character.Torso.CFrame.lookVector * 200
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Me.Character.Torso
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame
 Gyro.D = 50
 Wave = Instance.new("Part")
 Wave.Parent = Me.Character.Torso
 Wave.Anchored = true
 Wave.CanCollide = false
 Wave.Locked = true
 Wave.Transparency = 0.2
 Wave.BrickColor = BrickColor.new(1004)
 Wave.Size = Vector3.new(2, 1, 2)
 Wave.TopSurface = "Smooth"
 Wave.BottomSurface = "Smooth"
 Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
 WaveMesh = Instance.new("CylinderMesh")
 WaveMesh.Parent = Wave
 WaveMesh.Scale = Vector3.new(1, 0.1, 1)
 for i = 1 , 16 do
  Wave.Size = Wave.Size + Vector3.new(1, 0, 1)
  Wave.Transparency = Wave.Transparency + 0.055
  Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 0.785, 0)
  wait()
 end
 
 Wave:Remove()
 Gyro:Remove()
 Velocity:Remove()
 wait(1)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "DownThrust" then
 Activated = true
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 24 do
  Weld.C0 = Weld.C0 * CFrame.Angles(-0.3925, 0, 0)
  wait()
 end
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Me.Character.Torso
 Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 Velocity.velocity = Vector3.new(0, 30, 0)
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Me.Character.Torso
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame
 Gyro.D = 50
 wait(0.8)
 Velocity:Remove()
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait(0.08)
 end
 Wave = Instance.new("Part")
 Wave.Parent = Me.Character.Torso
 Wave.Anchored = true
 Wave.CanCollide = false
 Wave.Locked = true
 Wave.Transparency = 0.2
 Wave.Size = Vector3.new(2, 1, 2)
 Wave.TopSurface = "Smooth"
 Wave.BottomSurface = "Smooth"
 Wave.BrickColor = BrickColor.new(1004)
 Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
 WaveMesh = Instance.new("CylinderMesh")
 WaveMesh.Parent = Wave
 WaveMesh.Scale = Vector3.new(1, 0.1, 1)
 for i = 1 , 16 do
  Wave.Size = Wave.Size + Vector3.new(1, 0, 1)
  Wave.Transparency = Wave.Transparency + 0.055
  Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
  wait()
 end
 
 Wave:Remove()
 Gyro:Remove()
 wait(0.8)
 for i = 1 , 20 do
  Weld.C0 = Weld.C0 * CFrame.Angles(0.3925*2, 0, 0)
  wait()
 end
Activated = false
end
if Mode == "Escape" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Stuff = Me.Character:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Part" then
   Stuff[i].Anchored = false
  end
 end
 Stuff = Me.Character:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Part" then
   Stuff[i].Anchored = false
  end
  Stuff2 = Stuff[i]:GetChildren()
  for i = 1 , #Stuff2 do
   if Stuff2[i].className == "BodyPosition" or Stuff2[i].className == "BodyVelocity" or Stuff2[i].className == "BodyGyro" then
    Stuff2[i]:Remove()
   end
  end
 end
 Sound.SoundId = "http://www.roblox.com/asset/?id=18478970"
 Sound:play()
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Me.Character.Torso
 Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 Velocity.velocity = Vector3.new(0, 40, 0)
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Me.Character.Torso
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame
 Gyro.D = 50
 Wave = Instance.new("Part")
 Wave.Parent = Me.Character.Torso
 Wave.Anchored = true
 Wave.CanCollide = false
 Wave.Locked = true
 Wave.Transparency = 0.2
 Wave.Size = Vector3.new(2, 1, 2)
 Wave.TopSurface = "Smooth"
 Wave.BottomSurface = "Smooth"
 Wave.BrickColor = BrickColor.new(1004)
 Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
 WaveMesh = Instance.new("CylinderMesh")
 WaveMesh.Parent = Wave
 WaveMesh.Scale = Vector3.new(1, 0.1, 1)
 for i = 1 , 16 do
  Wave.Size = Wave.Size + Vector3.new(1, 0, 1)
  Wave.Transparency = Wave.Transparency + 0.055
  Wave.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2.4, 0)
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 0.785, 0)
  wait()
 end
 
 Wave:Remove()
 Gyro:Remove()
 Velocity:Remove()
 wait(1)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Toss" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1005)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1005)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1005)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Weld:Remove()
 Sound.SoundId = "http://www.roblox.com/asset/?id=18478970"
 Sound:play()
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Handle
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame * CFrame.Angles(0, 0, 1.57)
 Gyro.D = 50
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Handle
 Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 Velocity.velocity = Vector3.new(0, 1, 0) * 10
 for i = 1 , 4 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 for i = 1 , 15 do
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 1, 1)
  wait(0.1)
 end
 Velocity.velocity = Vector3.new(0, 0, 0)
 for i = 1 , 5 do
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 1, 1)
  wait(0.1)
 end
 Velocity:Remove()
 Position = Instance.new("BodyPosition")
 Position.Parent = Handle
 Position.maxForce = Vector3.new(9999999999, 9999999999, 9999999999)
 Position.position = Me.Character["Left Arm"].Position
 for i = 1 , 10 do
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 1, 1)
  Position.position = Me.Character["Left Arm"].Position  
  wait(0.1)
 end
 Gyro:Remove()
 Position:Remove()
 Weld = Instance.new("Weld")
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.Part1 = Handle
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1005)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1005)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1005)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Boomerang" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 4 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Weld:Remove()
 Sound.SoundId = "http://www.roblox.com/asset/?id=18478970"
 Sound:play()
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Handle
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame * CFrame.Angles(0, 0, 1.57)
 Gyro.D = 50
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Handle
 Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 Velocity.velocity = Me.Character.Torso.CFrame.lookVector * 100
 for i = 1 , 4 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 for i = 1 , 15 do
  Gyro.cframe = Gyro.cframe * CFrame.Angles(1, 0, 0)
  wait(0.1)
 end
 Velocity.velocity = Vector3.new(0, 0, 0)
 for i = 1 , 5 do
  Gyro.cframe = Gyro.cframe * CFrame.Angles(1, 0, 0)
  wait(0.1)
 end
 Velocity:Remove()
 Position = Instance.new("BodyPosition")
 Position.Parent = Handle
 Position.maxForce = Vector3.new(9999999999, 9999999999, 9999999999)
 Position.position = Me.Character["Left Arm"].Position
 for i = 1 , 10 do
  Gyro.cframe = Gyro.cframe * CFrame.Angles(1, 0, 0)
  Position.position = Me.Character["Left Arm"].Position  
  wait(0.1)
 end
 Gyro:Remove()
 Position:Remove()
 Weld = Instance.new("Weld")
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.Part1 = Handle
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Remover" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Me.Character.Torso
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.cframe = Me.Character.Torso.CFrame
 Gyro.D = 50
 ShockWave = Instance.new("Part")
 ShockWave.Parent = Me.Character.Torso
 ShockWave.Anchored = true
 ShockWave.CanCollide = false
 ShockWave.Locked = true
 ShockWave.Transparency = 0
 ShockWave.Shape = "Ball"
 ShockWave.BrickColor = BrickColor.new(1004)
 ShockWave.Size = Vector3.new(1, 1, 1)
 ShockWave.TopSurface = "Smooth"
 ShockWave.BottomSurface = "Smooth"
 ShockWave.CFrame = Me.Character.Torso.CFrame
 ShockWaveMesh = Instance.new("SpecialMesh")
 ShockWaveMesh.Parent = ShockWave
 ShockWaveMesh.MeshType = "Sphere"
 ShockWaveMesh.Scale = Vector3.new(1, 1, 1)
 for ii = 1 , 50 do
  ShockWave.Size = ShockWave.Size + Vector3.new(2, 2, 2)
  ShockWave.Transparency = ShockWave.Transparency + 0.02
  ShockWave.CFrame = Me.Character.Torso.CFrame
  Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 0.785, 0)
  Stuff = game.Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name ~= "Base" and Stuff[i].Name ~= Me.Name then
    if Stuff[i].className == "Part" then
     if (Me.Character.Torso.Position-Stuff[i].Position).magnitude <= ii then
      Stuff[i]:Remove()
     end
    end
    if Stuff[i].className == "Model" then
     Stuff2 = Stuff[i]:GetChildren()
     for i = 1 , #Stuff2 do
      if Stuff2[i].className == "Part" then
       if (Me.Character.Torso.Position-Stuff2[i].Position).magnitude <= ii then
        Stuff2[i]:Remove()
       end
      end
     end
    end
   end
  end
  wait()
 end
 
 ShockWave:Remove()
 Gyro:Remove()
 wait(0.2)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Alchemy" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Point1 = Instance.new("Part")
 Point1.Parent = Me.Character.Torso
 Point1.Anchored = true
 Point1.Locked = true
 Point1.Transparency = 1
 Point1.Size = Vector3.new(5, 10, 5)
 Point1.TopSurface = "Smooth"
 Point1.BottomSurface = "Smooth"
 Point1.CFrame = Me.Character.Torso.CFrame * CFrame.new(100, -2, 0)
 Point1Mesh = Instance.new("CylinderMesh")
 Point1Mesh.Parent = Point1
 Point1Mesh.Scale = Vector3.new(0.7, 1, 0.7)
 Point2 = Instance.new("Part")
 Point2.Parent = Me.Character.Torso
 Point2.Anchored = true
 Point2.Locked = true
 Point2.Transparency = 1
 Point2.Size = Vector3.new(5, 10, 5)
 Point2.TopSurface = "Smooth"
 Point2.BottomSurface = "Smooth"
 Point2.CFrame = Me.Character.Torso.CFrame * CFrame.new(-100, -2, 0)
 Point2Mesh = Instance.new("CylinderMesh")
 Point2Mesh.Parent = Point2
 Point2Mesh.Scale = Vector3.new(0.7, 1, 0.7)
 Point3 = Instance.new("Part")
 Point3.Parent = Me.Character.Torso
 Point3.Anchored = true
 Point3.Locked = true
 Point3.Transparency = 1
 Point3.Size = Vector3.new(5, 10, 5)
 Point3.TopSurface = "Smooth"
 Point3.BottomSurface = "Smooth"
 Point3.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2, 100)
 Point3Mesh = Instance.new("CylinderMesh")
 Point3Mesh.Parent = Point3
 Point3Mesh.Scale = Vector3.new(0.7, 1, 0.7)
 Point4 = Instance.new("Part")
 Point4.Parent = Me.Character.Torso
 Point4.Anchored = true
 Point4.Locked = true
 Point4.Transparency = 1
 Point4.Size = Vector3.new(5, 10, 5)
 Point4.TopSurface = "Smooth"
 Point4.BottomSurface = "Smooth"
 Point4.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, -2, -100)
 Point4Mesh = Instance.new("CylinderMesh")
 Point4Mesh.Parent = Point4
 Point4Mesh.Scale = Vector3.new(0.7, 1, 0.7)
 for i = 1 , 10 do
 Point1.Transparency = Point1.Transparency - 0.1
 Point2.Transparency = Point2.Transparency - 0.1
 Point3.Transparency = Point3.Transparency - 0.1
 Point4.Transparency = Point4.Transparency - 0.1
 wait(0.1)
 end
 Line1 = Instance.new("Part")
 Line1.Parent = Me.Character.Torso
 Line1.Anchored = true
 Line1.Locked = true
 Line1.Transparency = 0.5
 Line1.BrickColor = BrickColor.new(1)
 Line1.Size = Vector3.new(1, 1, 1)
 Line1.TopSurface = "Smooth"
 Line1.BottomSurface = "Smooth"
 Line1.CFrame = CFrame.new((Point1.Position+Point3.Position)/2, Point3.Position)
 Line1Mesh = Instance.new("SpecialMesh")
 Line1Mesh.MeshType = "Brick"
 Line1Mesh.Parent = Line1
 Line1Mesh.Scale = Vector3.new(1, 1, (Point1.Position-Point3.Position).magnitude)
 Line2 = Instance.new("Part")
 Line2.Parent = Me.Character.Torso
 Line2.Anchored = true
 Line2.Locked = true
 Line2.Transparency = 0.5
 Line2.BrickColor = BrickColor.new(1)
 Line2.Size = Vector3.new(1, 1, 1)
 Line2.TopSurface = "Smooth"
 Line2.BottomSurface = "Smooth"
 Line2.CFrame = CFrame.new((Point1.Position+Point4.Position)/2, Point4.Position)
 Line2Mesh = Instance.new("SpecialMesh")
 Line2Mesh.MeshType = "Brick"
 Line2Mesh.Parent = Line2
 Line2Mesh.Scale = Vector3.new(1, 1, (Point1.Position-Point4.Position).magnitude)
 Line3 = Instance.new("Part")
 Line3.Parent = Me.Character.Torso
 Line3.Anchored = true
 Line3.Locked = true
 Line3.Transparency = 0.5
 Line3.BrickColor = BrickColor.new(1)
 Line3.Size = Vector3.new(1, 1, 1)
 Line3.TopSurface = "Smooth"
 Line3.BottomSurface = "Smooth"
 Line3.CFrame = CFrame.new((Point2.Position+Point3.Position)/2, Point3.Position)
 Line3Mesh = Instance.new("SpecialMesh")
 Line3Mesh.MeshType = "Brick"
 Line3Mesh.Parent = Line3
 Line3Mesh.Scale = Vector3.new(1, 1, (Point2.Position-Point3.Position).magnitude)
 Line4 = Instance.new("Part")
 Line4.Parent = Me.Character.Torso
 Line4.Anchored = true
 Line4.Locked = true
 Line4.Transparency = 0.5
 Line4.BrickColor = BrickColor.new(1)
 Line4.Size = Vector3.new(1, 1, 1)
 Line4.TopSurface = "Smooth"
 Line4.BottomSurface = "Smooth"
 Line4.CFrame = CFrame.new((Point2.Position+Point4.Position)/2, Point4.Position)
 Line4Mesh = Instance.new("SpecialMesh")
 Line4Mesh.MeshType = "Brick"
 Line4Mesh.Parent = Line4
 Line4Mesh.Scale = Vector3.new(1, 1, (Point2.Position-Point4.Position).magnitude)
 for i = 1 , 20 do
 Sound.SoundId = "http://www.roblox.com/asset/?id=10756118"
 Sound:play()
 Line1Mesh.Scale = Line1Mesh.Scale + Vector3.new(0, 90, 0)
 Line2Mesh.Scale = Line2Mesh.Scale + Vector3.new(0, 90, 0)
 Line3Mesh.Scale = Line3Mesh.Scale + Vector3.new(0, 90, 0)
 Line4Mesh.Scale = Line4Mesh.Scale + Vector3.new(0, 90, 0)
 Stuff = Workspace:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].Name ~= "Base" and Stuff[i].Name ~= Me.Name then
   if Stuff[i].className == "Part" then
    if (Me.Character.Torso.Position-Stuff[i].Position).magnitude <= 100 then
     if Stuff[i].BrickColor ~= BrickColor.new(28) then
      Stuff[i]:Remove()
     end
    end
   end
   if Stuff[i].className == "Model" then
    Stuff2 = Stuff[i]:GetChildren()
    for i = 1 , #Stuff2 do
     if Stuff2[i].className == "Part" then
      if (Me.Character.Torso.Position-Stuff2[i].Position).magnitude <= 100 then
       Stuff2[i]:Remove()
      end
     end
    end
   end
  end
 end
 wait(0.05)
 end
 wait(1)
 for i = 1 , 20 do
 Line1Mesh.Scale = Line1Mesh.Scale - Vector3.new(0, 90, 0)
 Line2Mesh.Scale = Line2Mesh.Scale - Vector3.new(0, 90, 0)
 Line3Mesh.Scale = Line3Mesh.Scale - Vector3.new(0, 90, 0)
 Line4Mesh.Scale = Line4Mesh.Scale - Vector3.new(0, 90, 0)
 wait(0.05)
 end
 Line1:Remove()
 Line2:Remove()
 Line3:Remove()
 Line4:Remove()
 for i = 1 , 10 do
 Point1.Transparency = Point1.Transparency + 0.1
 Point2.Transparency = Point2.Transparency + 0.1
 Point3.Transparency = Point3.Transparency + 0.1
 Point4.Transparency = Point4.Transparency + 0.1
 wait(0.1)
 end
 Point1:Remove()
 Point2:Remove()
 Point3:Remove()
 Point4:Remove()

 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Lightning" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(24)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(24)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(24)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Bolt = Instance.new("Part")
 Bolt.Parent = Tool
 Bolt.Anchored = true
 Bolt.Name = "Shadow"
 Bolt.CanCollide = false
 Bolt.Locked = true
 Bolt.Transparency = 0.2
 Bolt.formFactor = "Symmetric"
 Bolt.Size = Vector3.new(1, 1, math.random(5, 10))
 Bolt.TopSurface = "Smooth"
 Bolt.BrickColor = BrickColor.new(1009)
 Bolt.BottomSurface = "Smooth"
 Value = (math.random(-5, 5)/100)
 Value2 = (math.random(-5, 5)/100)
 Value3 = (math.random(-5, 5)/100)
 Bolt.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -6) * CFrame.Angles(Value, Value2, Value3)
 BoltMesh = Instance.new("SpecialMesh")
 BoltMesh.MeshType = "Brick"
 BoltMesh.Parent = Bolt
 BoltMesh.Scale = Vector3.new(0.3, 0.3, 1)
 Stuff = Workspace:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
   Torso = Stuff[i]:findFirstChild("Torso")
   Humanoid = Stuff[i]:findFirstChild("Humanoid")
   if Torso ~= nil and Humanoid ~= nil then
    if (Bolt.Position-Torso.Position).magnitude <= 15 then
     Humanoid.MaxHealth = 100
     Humanoid:TakeDamage(Damage)
    end
   end
  end
 end
 game.Lighting.Brightness = 10
 Sound.SoundId = "http://www.roblox.com/asset/?id=12222030"
 Sound:play()
 for i = 1 , math.random(9, 13) do
  FakeBolt = Instance.new("Part")
  FakeBolt.Parent = Tool
  FakeBolt.Anchored = true
  FakeBolt.Name = "Shadow"
  FakeBolt.CanCollide = false
  FakeBolt.Locked = true
  FakeBolt.Transparency = 0.2
  FakeBolt.formFactor = "Symmetric"
  FakeBolt.Size = Vector3.new(1, 1, math.random(5, 10))
  FakeBolt.TopSurface = "Smooth"
  FakeBolt.BrickColor = BrickColor.new(1009)
  FakeBolt.BottomSurface = "Smooth"
  Value = (math.random(-5, 5)/100)
  Value2 = (math.random(-5, 5)/100)
  Value3 = (math.random(-5, 5)/100)
  FakeBolt.CFrame = Bolt.CFrame * CFrame.new(0, 0, -(Bolt.Size.Z/2))
  FakeBolt.CFrame = FakeBolt.CFrame * CFrame.Angles(Value, Value2, Value3)
  FakeBolt.CFrame = FakeBolt.CFrame * CFrame.new(0, 0, -(FakeBolt.Size.Z/2))
  FakeBoltMesh = Instance.new("SpecialMesh")
  FakeBoltMesh.MeshType = "Brick"
  FakeBoltMesh.Parent = FakeBolt
  FakeBoltMesh.Scale = Vector3.new(0.3, 0.3, 1)
  Stuff = Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
    Torso = Stuff[i]:findFirstChild("Torso")
    Humanoid = Stuff[i]:findFirstChild("Humanoid")
    if Torso ~= nil and Humanoid ~= nil then
     if (FakeBolt.Position-Torso.Position).magnitude <= 15 then
      Humanoid.MaxHealth = 100
      Humanoid:TakeDamage(Damage)
     end
    end
   end
  end
  Bolt:Remove()
  Bolt = Instance.new("Part")
  Bolt.Parent = Tool
  Bolt.Anchored = true
  Bolt.Name = "Shadow"
  Bolt.CanCollide = false
  Bolt.Locked = true
  Bolt.Transparency = 0.2
  Bolt.formFactor = "Symmetric"
  Bolt.Size = Vector3.new(1, 1, math.random(5, 10))
  Bolt.TopSurface = "Smooth"
  Bolt.BrickColor = BrickColor.new(1009)
  Bolt.BottomSurface = "Smooth"
  Value = (math.random(-5, 5)/100)
  Value2 = (math.random(-5, 5)/100)
  Value3 = (math.random(-5, 5)/100)
  Bolt.CFrame = FakeBolt.CFrame * CFrame.new(0, 0, -(FakeBolt.Size.Z/2))
  Bolt.CFrame = Bolt.CFrame * CFrame.Angles(Value, Value2, Value3)
  Bolt.CFrame = Bolt.CFrame * CFrame.new(0, 0, -(Bolt.Size.Z/2))
  BoltMesh = Instance.new("SpecialMesh")
  BoltMesh.MeshType = "Brick"
  BoltMesh.Parent = Bolt
  BoltMesh.Scale = Vector3.new(0.3, 0.3, 1)
  Stuff = Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
    Torso = Stuff[i]:findFirstChild("Torso")
    Humanoid = Stuff[i]:findFirstChild("Humanoid")
    if Torso ~= nil and Humanoid ~= nil then
     if (Bolt.Position-Torso.Position).magnitude <= 15 then
      Humanoid.MaxHealth = 100
      Humanoid:TakeDamage(Damage)
     end
    end
   end
  end
  Bolt2 = Instance.new("Part")
  Bolt2.Parent = Tool
  Bolt2.Anchored = true
  Bolt2.Name = "Shadow"
  Bolt2.CanCollide = false
  Bolt2.Locked = true
  Bolt2.Transparency = 0.2
  Bolt2.formFactor = "Symmetric"
  Bolt2.Size = Bolt.Size
  Bolt2.TopSurface = "Smooth"
  Bolt2.BrickColor = BrickColor.new(1009)
  Bolt2.BottomSurface = "Smooth"
  Bolt2.CFrame = Bolt.CFrame
  BoltMesh = Instance.new("SpecialMesh")
  BoltMesh.MeshType = "Brick"
  BoltMesh.Parent = Bolt2
  BoltMesh.Scale = Vector3.new(0.3, 0.3, 1)
  Stuff = Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
    Torso = Stuff[i]:findFirstChild("Torso")
    Humanoid = Stuff[i]:findFirstChild("Humanoid")
    if Torso ~= nil and Humanoid ~= nil then
     if (Bolt2.Position-Torso.Position).magnitude <= 20 then
      Humanoid.MaxHealth = 100
      Humanoid:TakeDamage(Damage)
    end
    end
   end
  end
 end
 FakeBolt = Instance.new("Part")
 FakeBolt.Parent = Tool
 FakeBolt.Anchored = true
 FakeBolt.Name = "Shadow"
 FakeBolt.CanCollide = false
 FakeBolt.Locked = true
 FakeBolt.Transparency = 0.2
 FakeBolt.formFactor = "Symmetric"
 FakeBolt.Size = Vector3.new(1, 1, math.random(5, 10))
 FakeBolt.TopSurface = "Smooth"
 FakeBolt.BrickColor = BrickColor.new(1009)
 FakeBolt.BottomSurface = "Smooth"
 Value = (math.random(-5, 5)/100)
 Value2 = (math.random(-5, 5)/100)
 Value3 = (math.random(-5, 5)/100)
 FakeBolt.CFrame = Bolt.CFrame * CFrame.new(0, 0, -(Bolt.Size.Z/2))
 FakeBolt.CFrame = FakeBolt.CFrame * CFrame.Angles(Value, Value2, Value3)
 FakeBolt.CFrame = FakeBolt.CFrame * CFrame.new(0, 0, -(FakeBolt.Size.Z/2))
 FakeBoltMesh = Instance.new("SpecialMesh") 
 FakeBoltMesh.MeshType = "Brick"
 FakeBoltMesh.Parent = FakeBolt
 FakeBoltMesh.Scale = Vector3.new(0.3, 0.3, 1)
 Stuff = Workspace:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
   Torso = Stuff[i]:findFirstChild("Torso")
   Humanoid = Stuff[i]:findFirstChild("Humanoid")
   if Torso ~= nil and Humanoid ~= nil then
    if (FakeBolt.Position-Torso.Position).magnitude <= 10 then
     Humanoid.MaxHealth = 100
     Humanoid:TakeDamage(Damage)
     FakeBolt.CFrame = CFrame.new(FakeBolt.Position, Torso.Position)
    end
   end
  end
 end
 Bolt:Remove()
 wait(0.1)
 game.Lighting.Brightness = 1
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(24)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(24)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(24)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Lazor" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1010)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1010)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1010)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Bolt = Instance.new("Part")
 Bolt.Parent = Tool
 Bolt.Anchored = true
 Bolt.Name = "Shadow"
 Bolt.CanCollide = false
 Bolt.Locked = true
 Bolt.Transparency = 0.2
 Bolt.formFactor = "Symmetric"
 Bolt.Size = Vector3.new(1, 1, math.random(5, 10))
 Bolt.TopSurface = "Smooth"
 Bolt.BrickColor = BrickColor.new(1010)
 Bolt.BottomSurface = "Smooth"
 Value = (math.random(-5, 5)/100)
 Value2 = (math.random(-5, 5)/100)
 Value3 = (math.random(-5, 5)/100)
 Bolt.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -6) * CFrame.Angles(Value, Value2, Value3)
 BoltMesh = Instance.new("SpecialMesh")
 BoltMesh.MeshType = "Brick"
 BoltMesh.Parent = Bolt
 BoltMesh.Scale = Vector3.new(10, 10, 3)
 Stuff = Workspace:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
   Torso = Stuff[i]:findFirstChild("Torso")
   Humanoid = Stuff[i]:findFirstChild("Humanoid")
   if Torso ~= nil and Humanoid ~= nil then
    if (Bolt.Position-Torso.Position).magnitude <= 15 then
     Humanoid.MaxHealth = 100
     Humanoid:TakeDamage(Damage)
    end
   end
  end
 end
 game.Lighting.Brightness = 10
 Sound.SoundId = "http://www.roblox.com/asset/?id=12222030"
 Sound:play()
 for i = 1 , math.random(9, 13) do
  FakeBolt = Instance.new("Part")
  FakeBolt.Parent = Tool
  FakeBolt.Anchored = true
  FakeBolt.Name = "Shadow"
  FakeBolt.CanCollide = false
  FakeBolt.Locked = true
  FakeBolt.Transparency = 0.2
  FakeBolt.formFactor = "Symmetric"
  FakeBolt.Size = Vector3.new(1, 1, math.random(5, 10))
  FakeBolt.TopSurface = "Smooth"
  FakeBolt.BrickColor = BrickColor.new(1010)
  FakeBolt.BottomSurface = "Smooth"
  Value = (math.random(-5, 5)/100)
  Value2 = (math.random(-5, 5)/100)
  Value3 = (math.random(-5, 5)/100)
  FakeBolt.CFrame = Bolt.CFrame * CFrame.new(0, 0, -(Bolt.Size.Z/2))
  FakeBolt.CFrame = FakeBolt.CFrame * CFrame.Angles(Value, Value2, Value3)
  FakeBolt.CFrame = FakeBolt.CFrame * CFrame.new(0, 0, -(FakeBolt.Size.Z/2))
  FakeBoltMesh = Instance.new("SpecialMesh")
  FakeBoltMesh.MeshType = "Brick"
  FakeBoltMesh.Parent = FakeBolt
  FakeBoltMesh.Scale = Vector3.new(10, 10, 3)
  Stuff = Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
    Torso = Stuff[i]:findFirstChild("Torso")
    Humanoid = Stuff[i]:findFirstChild("Humanoid")
    if Torso ~= nil and Humanoid ~= nil then
     if (FakeBolt.Position-Torso.Position).magnitude <= 15 then
      Humanoid.MaxHealth = 100
      Humanoid:TakeDamage(Damage)
     end
    end
   end
  end
  Bolt:Remove()
  Bolt = Instance.new("Part")
  Bolt.Parent = Tool
  Bolt.Anchored = true
  Bolt.Name = "Shadow"
  Bolt.CanCollide = false
  Bolt.Locked = true
  Bolt.Transparency = 0.2
  Bolt.formFactor = "Symmetric"
  Bolt.Size = Vector3.new(1, 1, math.random(5, 10))
  Bolt.TopSurface = "Smooth"
  Bolt.BrickColor = BrickColor.new(1010)
  Bolt.BottomSurface = "Smooth"
  Value = (math.random(-5, 5)/100)
  Value2 = (math.random(-5, 5)/100)
  Value3 = (math.random(-5, 5)/100)
  Bolt.CFrame = FakeBolt.CFrame * CFrame.new(0, 0, -(FakeBolt.Size.Z/2))
  Bolt.CFrame = Bolt.CFrame * CFrame.Angles(Value, Value2, Value3)
  Bolt.CFrame = Bolt.CFrame * CFrame.new(0, 0, -(Bolt.Size.Z/2))
  BoltMesh = Instance.new("SpecialMesh")
  BoltMesh.MeshType = "Brick"
  BoltMesh.Parent = Bolt
  BoltMesh.Scale = Vector3.new(10, 10, 3)
  Stuff = Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
    Torso = Stuff[i]:findFirstChild("Torso")
    Humanoid = Stuff[i]:findFirstChild("Humanoid")
    if Torso ~= nil and Humanoid ~= nil then
     if (Bolt.Position-Torso.Position).magnitude <= 15 then
      Humanoid.MaxHealth = 100
      Humanoid:TakeDamage(Damage)
     end
    end
   end
  end
  Bolt2 = Instance.new("Part")
  Bolt2.Parent = Tool
  Bolt2.Anchored = true
  Bolt2.Name = "Shadow"
  Bolt2.CanCollide = false
  Bolt2.Locked = true
  Bolt2.Transparency = 0.2
  Bolt2.formFactor = "Symmetric"
  Bolt2.Size = Bolt.Size
  Bolt2.TopSurface = "Smooth"
  Bolt2.BrickColor = BrickColor.new(1010)
  Bolt2.BottomSurface = "Smooth"
  Bolt2.CFrame = Bolt.CFrame
  BoltMesh = Instance.new("SpecialMesh")
  BoltMesh.MeshType = "Brick"
  BoltMesh.Parent = Bolt2
  BoltMesh.Scale = Vector3.new(10, 10, 3)
  Stuff = Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
    Torso = Stuff[i]:findFirstChild("Torso")
    Humanoid = Stuff[i]:findFirstChild("Humanoid")
    if Torso ~= nil and Humanoid ~= nil then
     if (Bolt2.Position-Torso.Position).magnitude <= 20 then
      Humanoid.MaxHealth = 100
      Humanoid:TakeDamage(Damage)
    end
    end
   end
  end
 end
 FakeBolt = Instance.new("Part")
 FakeBolt.Parent = Tool
 FakeBolt.Anchored = true
 FakeBolt.Name = "Shadow"
 FakeBolt.CanCollide = false
 FakeBolt.Locked = true
 FakeBolt.Transparency = 0.2
 FakeBolt.formFactor = "Symmetric"
 FakeBolt.Size = Vector3.new(1, 1, math.random(5, 10))
 FakeBolt.TopSurface = "Smooth"
 FakeBolt.BrickColor = BrickColor.new(1010)
 FakeBolt.BottomSurface = "Smooth"
 Value = (math.random(-5, 5)/100)
 Value2 = (math.random(-5, 5)/100)
 Value3 = (math.random(-5, 5)/100)
 FakeBolt.CFrame = Bolt.CFrame * CFrame.new(0, 0, -(Bolt.Size.Z/2))
 FakeBolt.CFrame = FakeBolt.CFrame * CFrame.Angles(Value, Value2, Value3)
 FakeBolt.CFrame = FakeBolt.CFrame * CFrame.new(0, 0, -(FakeBolt.Size.Z/2))
 FakeBoltMesh = Instance.new("SpecialMesh") 
 FakeBoltMesh.MeshType = "Brick"
 FakeBoltMesh.Parent = FakeBolt
 FakeBoltMesh.Scale = Vector3.new(10, 10, 3)
 Stuff = Workspace:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
   Torso = Stuff[i]:findFirstChild("Torso")
   Humanoid = Stuff[i]:findFirstChild("Humanoid")
   if Torso ~= nil and Humanoid ~= nil then
    if (FakeBolt.Position-Torso.Position).magnitude <= 10 then
     Humanoid.MaxHealth = 100
     Humanoid:TakeDamage(Damage)
     FakeBolt.CFrame = CFrame.new(FakeBolt.Position, Torso.Position)
    end
   end
  end
 end
 Bolt:Remove()
 wait(0.1)
 game.Lighting.Brightness = 1
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1010)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1010)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1010)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Ice" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(23)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(23)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(23)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Bolt = Instance.new("Part")
 Bolt.Parent = Tool
 Bolt.Anchored = true
 Bolt.Name = "Shadow"
 Bolt.CanCollide = false
 Bolt.Locked = true
 Bolt.Transparency = 0.2
 Bolt.Reflectance = 0.3
 Bolt.formFactor = "Symmetric"
 Bolt.Size = Vector3.new(1, 3, math.random(5, 10))
 Bolt.TopSurface = "Smooth"
 Bolt.BrickColor = BrickColor.new(1)
 Bolt.BottomSurface = "Smooth"
 Value = (math.random(-5, 5)/100)
 Value2 = (math.random(-5, 5)/100)
 Value3 = (math.random(-5, 5)/100)
 Bolt.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -6) * CFrame.Angles(Value, Value2, Value3)
 BoltMesh = Instance.new("SpecialMesh")
 BoltMesh.MeshType = "Brick"
 BoltMesh.Parent = Bolt
 BoltMesh.Scale = Vector3.new(0.7, 0.7, 1)
 Stuff = Workspace:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
   Torso = Stuff[i]:findFirstChild("Torso")
   Humanoid = Stuff[i]:findFirstChild("Humanoid")
   if Torso ~= nil and Humanoid ~= nil then
    if (Bolt.Position-Torso.Position).magnitude <= 15 then
     Humanoid.MaxHealth = 100
     Humanoid:TakeDamage(Damage)
     Stuff2 = Stuff[i]:GetChildren()
     for i = 1 , #Stuff2 do
      if Stuff2[i].className == "Part" then
       Stuff2[i].Anchored = true
       Stuff2[i].Transparency = 0.5
       Stuff2[i].Reflectance = 0.5
       Stuff2[i].Friction = 0
       IceBrick = Instance.new("Part")
       IceBrick.Parent = Stuff2[i]
       IceBrick.Anchored = true
       IceBrick.Locked = true
       IceBrick.Transparency = 0.5
       IceBrick.Reflectance = 0.5
       IceBrick.Size = Stuff2[i].Size + Vector3.new(math.random(2, 4), math.random(2, 4), math.random(2, 4))
       IceBrick.TopSurface = "Smooth"
       IceBrick.BottomSurface = "Smooth"
       IceBrick.CFrame = Stuff2[i].CFrame * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
      end
     end
    end
   end
  end
 end
 for i = 1 , math.random(9, 13) do
  FakeBolt = Instance.new("Part")
  FakeBolt.Parent = Tool
  FakeBolt.Anchored = true
  FakeBolt.Name = "Shadow"
  FakeBolt.CanCollide = false
  FakeBolt.Locked = true
  FakeBolt.Reflectance = 0.3
  FakeBolt.Transparency = 0.2
  FakeBolt.formFactor = "Symmetric"
  FakeBolt.Size = Vector3.new(1, 3, math.random(5, 10))
  FakeBolt.TopSurface = "Smooth"
  FakeBolt.BrickColor = BrickColor.new(1)
  FakeBolt.BottomSurface = "Smooth"
  Value = (math.random(-5, 5)/100)
  Value2 = (math.random(-5, 5)/100)
  Value3 = (math.random(-5, 5)/100)
  FakeBolt.CFrame = Bolt.CFrame * CFrame.new(0, 0, -(Bolt.Size.Z/2))
  FakeBolt.CFrame = FakeBolt.CFrame * CFrame.Angles(Value, Value2, Value3)
  FakeBolt.CFrame = FakeBolt.CFrame * CFrame.new(0, 0, -(FakeBolt.Size.Z/2))
  FakeBoltMesh = Instance.new("SpecialMesh")
  FakeBoltMesh.MeshType = "Brick"
  FakeBoltMesh.Parent = FakeBolt
  FakeBoltMesh.Scale = Vector3.new(0.7, 0.7, 1)
  Stuff = Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
    Torso = Stuff[i]:findFirstChild("Torso")
    Humanoid = Stuff[i]:findFirstChild("Humanoid")
    if Torso ~= nil and Humanoid ~= nil then
     if (FakeBolt.Position-Torso.Position).magnitude <= 15 then
      Humanoid.MaxHealth = 100
      Humanoid:TakeDamage(Damage)
      Stuff2 = Stuff[i]:GetChildren()
      for i = 1 , #Stuff2 do
       if Stuff2[i].className == "Part" then
        Stuff2[i].Anchored = true
        Stuff2[i].Transparency = 0.5
        Stuff2[i].Reflectance = 0.5
        Stuff2[i].Friction = 0
        IceBrick = Instance.new("Part")
        IceBrick.Parent = Stuff2[i]
        IceBrick.Anchored = true
        IceBrick.Locked = true
        IceBrick.Transparency = 0.5
        IceBrick.Reflectance = 0.5
        IceBrick.Size = Stuff2[i].Size + Vector3.new(math.random(2, 4), math.random(2, 4), math.random(2, 4))
        IceBrick.TopSurface = "Smooth"
        IceBrick.BottomSurface = "Smooth"
        IceBrick.CFrame = Stuff2[i].CFrame * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
       end
      end
     end
    end
   end
  end
  Bolt:Remove()
  Bolt = Instance.new("Part")
  Bolt.Parent = Tool
  Bolt.Anchored = true
  Bolt.Name = "Shadow"
  Bolt.CanCollide = false
  Bolt.Locked = true
  Bolt.Reflectance = 0.3
  Bolt.Transparency = 0.2
  Bolt.formFactor = "Symmetric"
  Bolt.Size = Vector3.new(1, 3, math.random(5, 10))
  Bolt.TopSurface = "Smooth"
  Bolt.BrickColor = BrickColor.new(1)
  Bolt.BottomSurface = "Smooth"
  Value = (math.random(-5, 5)/100)
  Value2 = (math.random(-5, 5)/100)
  Value3 = (math.random(-5, 5)/100)
  Bolt.CFrame = FakeBolt.CFrame * CFrame.new(0, 0, -(FakeBolt.Size.Z/2))
  Bolt.CFrame = Bolt.CFrame * CFrame.Angles(Value, Value2, Value3)
  Bolt.CFrame = Bolt.CFrame * CFrame.new(0, 0, -(Bolt.Size.Z/2))
  BoltMesh = Instance.new("SpecialMesh")
  BoltMesh.MeshType = "Brick"
  BoltMesh.Parent = Bolt
  BoltMesh.Scale = Vector3.new(0.7, 0.7, 1)
  Stuff = Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
    Torso = Stuff[i]:findFirstChild("Torso")
    Humanoid = Stuff[i]:findFirstChild("Humanoid")
    if Torso ~= nil and Humanoid ~= nil then
     if (Bolt.Position-Torso.Position).magnitude <= 15 then
      Humanoid.MaxHealth = 100
      Humanoid:TakeDamage(Damage)
      Stuff2 = Stuff[i]:GetChildren()
      for i = 1 , #Stuff2 do
       if Stuff2[i].className == "Part" then
        Stuff2[i].Anchored = true
        Stuff2[i].Transparency = 0.5
        Stuff2[i].Reflectance = 0.5
        Stuff2[i].Friction = 0
        IceBrick = Instance.new("Part")
        IceBrick.Parent = Stuff2[i]
        IceBrick.Anchored = true
        IceBrick.Locked = true
        IceBrick.Transparency = 0.5
        IceBrick.Reflectance = 0.5
        IceBrick.Size = Stuff2[i].Size + Vector3.new(math.random(2, 4), math.random(2, 4), math.random(2, 4))
        IceBrick.TopSurface = "Smooth"
        IceBrick.BottomSurface = "Smooth"
        IceBrick.CFrame = Stuff2[i].CFrame * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
       end
      end
     end
    end
   end
  end
  Bolt2 = Instance.new("Part")
  Bolt2.Parent = Tool
  Bolt2.Anchored = true
  Bolt2.Name = "Shadow"
  Bolt2.CanCollide = false
  Bolt2.Locked = true
  Bolt2.Reflectance = 0.3
  Bolt2.Transparency = 0.2
  Bolt2.formFactor = "Symmetric"
  Bolt2.Size = Bolt.Size
  Bolt2.TopSurface = "Smooth"
  Bolt2.BrickColor = BrickColor.new(1)
  Bolt2.BottomSurface = "Smooth"
  Bolt2.CFrame = Bolt.CFrame
  BoltMesh = Instance.new("SpecialMesh")
  BoltMesh.MeshType = "Brick"
  BoltMesh.Parent = Bolt2
  BoltMesh.Scale = Vector3.new(0.7, 0.7, 1)
  Stuff = Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
    Torso = Stuff[i]:findFirstChild("Torso")
    Humanoid = Stuff[i]:findFirstChild("Humanoid")
    if Torso ~= nil and Humanoid ~= nil then
     if (Bolt2.Position-Torso.Position).magnitude <= 20 then
      Humanoid.MaxHealth = 100
      Humanoid:TakeDamage(Damage)
      Stuff2 = Stuff[i]:GetChildren()
      for i = 1 , #Stuff2 do
       if Stuff2[i].className == "Part" then
        Stuff2[i].Anchored = true
        Stuff2[i].Transparency = 0.5
        Stuff2[i].Reflectance = 0.5
        Stuff2[i].Friction = 0
        IceBrick = Instance.new("Part")
        IceBrick.Parent = Stuff2[i]
        IceBrick.Anchored = true
        IceBrick.Locked = true
        IceBrick.Transparency = 0.5
        IceBrick.Reflectance = 0.5
        IceBrick.Size = Stuff2[i].Size + Vector3.new(math.random(2, 4), math.random(2, 4), math.random(2, 4))
        IceBrick.TopSurface = "Smooth"
        IceBrick.BottomSurface = "Smooth"
        IceBrick.CFrame = Stuff2[i].CFrame * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
       end
      end
     end
    end
   end
  end
 end
 FakeBolt = Instance.new("Part")
 FakeBolt.Parent = Tool
 FakeBolt.Anchored = true
 FakeBolt.Name = "Shadow"
 FakeBolt.CanCollide = false
 FakeBolt.Locked = true
 FakeBolt.Reflectance = 0.3
 FakeBolt.Transparency = 0.2
 FakeBolt.formFactor = "Symmetric"
 FakeBolt.Size = Vector3.new(1, 3, math.random(5, 10))
 FakeBolt.TopSurface = "Smooth"
 FakeBolt.BrickColor = BrickColor.new(1)
 FakeBolt.BottomSurface = "Smooth"
 Value = (math.random(-5, 5)/100)
 Value2 = (math.random(-5, 5)/100)
 Value3 = (math.random(-5, 5)/100)
 FakeBolt.CFrame = Bolt.CFrame * CFrame.new(0, 0, -(Bolt.Size.Z/2))
 FakeBolt.CFrame = FakeBolt.CFrame * CFrame.Angles(Value, Value2, Value3)
 FakeBolt.CFrame = FakeBolt.CFrame * CFrame.new(0, 0, -(FakeBolt.Size.Z/2))
 FakeBoltMesh = Instance.new("SpecialMesh") 
 FakeBoltMesh.MeshType = "Brick"
 FakeBoltMesh.Parent = FakeBolt
 FakeBoltMesh.Scale = Vector3.new(0.7, 0.7, 1)
 Stuff = Workspace:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Model" and Stuff[i].Name ~= Me.Name then
   Torso = Stuff[i]:findFirstChild("Torso")
   Humanoid = Stuff[i]:findFirstChild("Humanoid")
   if Torso ~= nil and Humanoid ~= nil then
    if (FakeBolt.Position-Torso.Position).magnitude <= 10 then
     Humanoid.MaxHealth = 100
     Humanoid:TakeDamage(Damage)
     Stuff2 = Stuff[i]:GetChildren()
     for i = 1 , #Stuff2 do
      if Stuff2[i].className == "Part" then
       Stuff2[i].Anchored = true
       Stuff2[i].Transparency = 0.5
       Stuff2[i].Reflectance = 0.5
       Stuff2[i].Friction = 0
       IceBrick = Instance.new("Part")
       IceBrick.Parent = Stuff2[i]
       IceBrick.Anchored = true
       IceBrick.Locked = true
       IceBrick.Transparency = 0.5
       IceBrick.Reflectance = 0.5
       IceBrick.Size = Stuff2[i].Size + Vector3.new(math.random(2, 4), math.random(2, 4), math.random(2, 4))
       IceBrick.TopSurface = "Smooth"
       IceBrick.BottomSurface = "Smooth"
       IceBrick.CFrame = Stuff2[i].CFrame * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
      end
     end
    end
   end
  end
 end
 Bolt:Remove()
 wait(0.1)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(23)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(23)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(23)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Fire" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(21)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(21)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(21)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Flaming = true
 while Flaming == true do
 wait()
 end
 wait(0.2)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(21)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(21)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(21)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Slime" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1004)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1004)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1004)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 SlimeCharge = true
 Slime = Instance.new("Part")
 Slime.Parent = Me.Character.Torso
 Slime.Size = Vector3.new(1, 1, 1)
 Slime.BrickColor = BrickColor.new(1003)
 Slime.Locked = true
 Slime.Shape = "Ball"
 Slime.Anchored = true
 Slime.TopSurface = "Smooth"
 Slime.BottomSurface = "Smooth"
 Slime.Transparency = 0.4
 Slime.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -10)
 Nucleus = Instance.new("Part")
 Nucleus.Parent = Slime
 Nucleus.Size = Vector3.new(2, 2, 2)
 Nucleus.BrickColor = BrickColor.new(1004)
 Nucleus.Locked = true
 Nucleus.LeftSurface = "Glue"
 Nucleus.Anchored = true
 Nucleus.RightSurface = "Glue"
 Nucleus.FrontSurface = "Glue"
 Nucleus.BackSurface = "Glue"
 Nucleus.TopSurface = "Glue"
 Nucleus.BottomSurface = "Glue"
 Nucleus.Transparency = 0.1
 Nucleus.Shape = "Ball"
 Nucleus.CFrame = Slime.CFrame
 SlimeWeld = Instance.new("Weld")
 SlimeWeld.Parent = Slime
 SlimeWeld.Part0 = Slime
 SlimeWeld.Part1 = Nucleus
 SlimeWeld.C0 = CFrame.new(0, 0, 0)
 while SlimeCharge == true do
  Slime.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -10)
  Nucleus.CFrame = Slime.CFrame
  if Slime.Size.X <= 10 then
   SlimeWeld:Remove()
   Slime.Size = Slime.Size + Vector3.new(1, 1, 1)
   Slime.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -10)
   Nucleus.CFrame = Slime.CFrame
   SlimeWeld = Instance.new("Weld")
   SlimeWeld.Parent = Slime
   SlimeWeld.Part0 = Slime
   SlimeWeld.Part1 = Nucleus
   SlimeWeld.C0 = CFrame.new(0, 0, 0)
  end
 wait()
 end
 wait(0.2)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1010)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1010)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1010)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "DarkPulse" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 DarkCharge = true
 Dark = Instance.new("Part")
 Dark.Parent = Me.Character.Torso
 Dark.Size = Vector3.new(1, 2, 1)
 Dark.BrickColor = BrickColor.new(1003)
 Dark.Locked = true
 Dark.Anchored = true
 Dark.TopSurface = "Smooth"
 Dark.BottomSurface = "Smooth"
 Dark.Transparency = 0
 Dark.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -20)
 DarkMesh = Instance.new("SpecialMesh")
 DarkMesh.Parent = Dark
 DarkMesh.MeshType = "Sphere"
 Gyro = Instance.new("BodyGyro")
 Gyro.Parent = Dark
 Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
 Gyro.D = 50
 Gyro.cframe = Dark.CFrame
 while DarkCharge == true do
  if Dark.Transparency < 0 then
   Dark.Transparency = Dark.Transparency + 0
  end
  Dark.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -20)
  if Dark.Size.X <= 20 then
   Dark.Size = Dark.Size + Vector3.new(1, 0, 1)
   Dark.CFrame = Me.Character.Torso.CFrame * CFrame.new(0, 0, -20)
  end
 wait()
 end
 wait(0.2)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new(1003)
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new(1003)
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new(1003)
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
end
if Mode == "Raise" then
 if mouse.Target ~= nil then
 Activated = true
 MousePosition = mouse.Hit.p
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Dark stone grey")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Dark stone grey")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Dark stone grey")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 onCharge(28)
 WidthSize = 10
 for i = 1 , 20 do
 Rock = Instance.new("Part")
 Rock.Parent = Tool
 Rock.Name = "Rock"
 Rock.Anchored = true
 Rock.BrickColor = BrickColor.new("Dark stone grey")
 Base = Workspace:findFirstChild("Base")
 if Base ~= nil then
  Rock.BrickColor = Base.BrickColor
 end
 Rock.Material = "Concrete"
 Rock.Size = Vector3.new(60+(WidthSize*i), 2, 60+(WidthSize*i))
 Rock.formFactor = "Symmetric"
 Rock.Locked = true
 Rock.BottomSurface = "Smooth"
 Rock.CFrame = CFrame.new(MousePosition-Vector3.new(0, 2+((WidthSize/1.9)*i), 0))
 end
 for i = 1 , 32 do
  Stuff = Tool:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Rock" then
    Stuff2 = Workspace:GetChildren()
    for i = 1 , #Stuff2 do
     Torso = Stuff2[i]:findFirstChild("Torso")
     if Torso ~= nil then
      if (Rock.Position-Torso.Position).magnitude <= 30 then
       Torso.Velocity = Vector3.new(0, 200, 0)
      end
     end
    end
    Stuff[i].Velocity = Vector3.new(0, 100, 0)
    P = Stuff[i].CFrame
    Stuff[i].Size = Stuff[i].Size + Vector3.new(0, 4, 0)
    Stuff[i].CFrame = P * CFrame.new(0, 1.5, 0)
   end
  end
 wait()
 end
 wait(5)
 for i = 1 , 40 do
  Stuff = Tool:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Rock" then
    P = Stuff[i].CFrame
    Stuff[i].Size = Stuff[i].Size + Vector3.new(0, -4, 0)
    Stuff[i].CFrame = P * CFrame.new(0, -1.5, 0)
   end
  end
 wait()
 end
 Stuff = Tool:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].Name == "Rock" then
   Stuff[i]:Remove()
  end
 end
 wait(0.2)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Dark stone grey")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Dark stone grey")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Dark stone grey")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
Activated = false
end
end
if Mode == "Stone" then
 Activated = true
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Dark stone grey")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Dark stone grey")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Dark stone grey")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 onCharge(27)
 Stuff = game.Workspace:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].Name ~= Me.Name then
   Torso = Stuff[i]:findFirstChild("Torso")
   Humanoid = Stuff[i]:findFirstChild("Humanoid")
   if Torso ~= nil and Humanoid ~= nil then
    if (Me.Character.Torso.Position-Torso.Position).magnitude <= 200 then
     Humanoid.Sit = true
     Rock = Instance.new("Part")
     Rock.Parent = Tool
     Rock.Name = "Rock"
     Rock.Anchored = true
     Rock.BrickColor = BrickColor.new("Dark stone grey")
     Rock.Material = "Concrete"
     Rock.Size = Vector3.new(10, 2, 10)
     Rock.formFactor = "Symmetric"
     Rock.Locked = true
     Rock.TopSurface = "Smooth"
     Rock.BottomSurface = "Smooth"
     Rock.CFrame = CFrame.new(Torso.Position-Vector3.new(0, 2, 0))
     Torso.Velocity = Vector3.new(math.random(-20, 20), 150, math.random(-20, 20))
     Humanoid.MaxHealth = 100
     Humanoid:TakeDamage(Damage*3)
    end
   end
  end
 end
 for i = 1 , 10 do
  Stuff = Tool:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Rock" then
    P = Stuff[i].CFrame
    Stuff[i].Size = Stuff[i].Size + Vector3.new(0, 2, 0)
    Stuff[i].CFrame = P * CFrame.new(0, 1, 0)
   end
  end
 wait()
 end
 wait(0.1)
 for i = 1 , 10 do
  Stuff = Tool:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name == "Rock" then
    P = Stuff[i].CFrame
    Stuff[i].Size = Stuff[i].Size - Vector3.new(0, 2, 0)
    Stuff[i].CFrame = P * CFrame.new(0, -1, 0)
   end
  end
 wait()
 end
 Stuff = Tool:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].Name == "Rock" then
   Stuff[i]:Remove()
  end
 end
 wait(0.2)
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Dark stone grey")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Dark stone grey")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Dark stone grey")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.13)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
Activated = false
end
if Mode == "Shield" then
 Activated = true
 Weld.Parent = Me.Character["Left Arm"]
 Weld.Part0 = Me.Character["Left Arm"]
 Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
 Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
 Sound:play()
 for i = 1 , 8 do
  Clone1 = Grip17:clone() 
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Dark stone grey")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Dark stone grey")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Dark stone grey")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
  wait()
 end
 Shielding = true
 while Shielding == true do
  Me.Character.Humanoid.WalkSpeed = 0
  Stuff = game.Workspace:GetChildren()
  for i = 1 , #Stuff do
   if Stuff[i].Name ~= "Base" and Stuff[i].Name ~= Me.Name then
    if Stuff[i].className == "Part" then
     if (Me.Character.Torso.Position-Stuff[i].Position).magnitude <= 30 then
      Stuff[i]:Remove()
     end
    end
    if Stuff[i].className == "Model" then
     Stuff2 = Stuff[i]:GetChildren()
     for i = 1 , #Stuff2 do
      if Stuff2[i].className == "Part" then
       if (Me.Character.Torso.Position-Stuff2[i].Position).magnitude <= 30 then
        Stuff2[i]:Remove()
       end
      end
     end
    end
   end
  end
 wait()
 end
 for i = 1 , 8 do
  Clone1 = Grip17:clone()
  Clone1.Parent = Tool
  Clone1.Name = "Shadow"
  Clone1.Anchored = true
  Clone1.CanCollide = false
  Clone1.Transparency = 0.2
  Clone1.BrickColor = BrickColor.new("Dark stone grey")
  Clone2 = Grip18:clone()
  Clone2.Parent = Tool
  Clone2.Name = "Shadow"
  Clone2.Anchored = true
  Clone2.CanCollide = false
  Clone2.Transparency = 0.2
  Clone2.BrickColor = BrickColor.new("Dark stone grey")
  Clone3 = Grip19:clone()
  Clone3.Parent = Tool
  Clone3.Name = "Shadow"
  Clone3.Anchored = true
  Clone3.CanCollide = false
  Clone3.Transparency = 0.2
  Clone3.BrickColor = BrickColor.new("Dark stone grey")
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
  wait()
 end
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
Activated = false
end
if Mode == "Snipe" then
 if mouse.Target ~= nil then
  Torso = mouse.Target.Parent:findFirstChild("Torso")
  if mouse.Target.Parent.Name ~= Me.Name and Torso ~= nil then
   Activated = true
   Weld.Parent = Me.Character["Left Arm"]
   Weld.Part0 = Me.Character["Left Arm"]
   Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
   Sound.SoundId = "rbxasset://sounds\\swordslash.wav"
   Sound:play()
   for i = 1 , 4 do
    Clone1 = Grip17:clone() 
    Clone1.Parent = Tool
    Clone1.Name = "Shadow"
    Clone1.Anchored = true
    Clone1.CanCollide = false
    Clone1.Transparency = 0.2
    Clone1.BrickColor = BrickColor.new(1003)
    Clone2 = Grip18:clone()
    Clone2.Parent = Tool
    Clone2.Name = "Shadow"
    Clone2.Anchored = true
    Clone2.CanCollide = false
    Clone2.Transparency = 0.2
    Clone2.BrickColor = BrickColor.new(1003)
    Clone3 = Grip19:clone()
    Clone3.Parent = Tool
    Clone3.Name = "Shadow"
    Clone3.Anchored = true
    Clone3.CanCollide = false
    Clone3.Transparency = 0.2
    Clone3.BrickColor = BrickColor.new(1003)
    FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
    FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
    wait()
   end
   Weld:Remove()
   Sound.SoundId = "http://www.roblox.com/asset/?id=18478970"
   Sound:play()
   Gyro = Instance.new("BodyGyro")
   Gyro.Parent = Handle
   Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
   Gyro.cframe = Me.Character.Torso.CFrame * CFrame.Angles(0, 0, 1.57)
   Gyro.D = 50
   Position = Instance.new("BodyPosition")
   Position.Parent = Handle
   Position.maxForce = Vector3.new(9999999999, 9999999999, 9999999999)
   Position.position = Torso.Position
   for i = 1 , 4 do
    FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.13, 0, 0)
    FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(-0.39, 0, 0)
    wait()
   end
   for i = 1 , 20 do
    if Torso ~= nil then
     Gyro.cframe = CFrame.new(Handle.Position, Torso.Position) * CFrame.Angles(-1.57, 0, 0)
     Position.position = Torso.Position
    end
    wait(0.1)
   end
   Gyro:Remove()
   Position:Remove()
   for i = 1 , 10 do
    Gyro.cframe = CFrame.new(Handle.Position, Me.Character.Torso.Position) * CFrame.Angles(-1.57, 0, 0)
    Position.position = Me.Character.Torso.Position
    wait(0.1)
   end
   Weld = Instance.new("Weld")
   Weld.Parent = Me.Character["Left Arm"]
   Weld.Part0 = Me.Character["Left Arm"]
   Weld.Part1 = Handle
   Weld.C0 = CFrame.new(0.3, -1, -0.05) * CFrame.Angles(-1.15, 0.3, -1.3)
   for i = 1 , 8 do
    Clone1 = Grip17:clone()
    Clone1.Parent = Tool
    Clone1.Name = "Shadow"
    Clone1.Anchored = true
    Clone1.CanCollide = false
    Clone1.Transparency = 0.2
    Clone1.BrickColor = BrickColor.new(1003)
    Clone2 = Grip18:clone()
    Clone2.Parent = Tool
    Clone2.Name = "Shadow"
    Clone2.Anchored = true
    Clone2.CanCollide = false
    Clone2.Transparency = 0.2
    Clone2.BrickColor = BrickColor.new(1003)
    Clone3 = Grip19:clone()
    Clone3.Parent = Tool
    Clone3.Name = "Shadow"
    Clone3.Anchored = true
    Clone3.CanCollide = false
    Clone3.Transparency = 0.2
    Clone3.BrickColor = BrickColor.new(1003)
    FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.13, 0, 0)
    FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.new(0, 0, 0) * CFrame.Angles(0.39, 0, 0)
    wait()
   end
   Weld.Parent = Me.Character["Right Arm"]
   Weld.Part0 = Me.Character["Right Arm"]
   Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
   Activated = false
  end
 end
end
end
------------------------------------------------------------>
--[[
?     -->> onButton1Up
--]]
------------------------------------------------------------>
function onButton1Up()
Flaming = false
Shielding = false
if DarkCharge == true then
 Sound.SoundId = "http://www.roblox.com/asset/?id=11998770"
 Sound:play()
 DarkCharge = false
 Dark.Anchored = false
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Dark
 Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 Velocity.velocity = Me.Character.Torso.CFrame.lookVector * 150
 for i = 1 , 40 do
 Dark.Transparency = Dark.Transparency + 0.02
 function DarkHit(Hit)
  if Hit.Name ~= "Base" and Hit.Parent.Name ~= "Sword" and Hit.Parent.Name ~= Me.Name and Hit.Parent.Parent.Name ~= Me.Name then
   Hit:Remove()
  end
 end
 Dark.Touched:connect(DarkHit)
 wait(0.1)
 end
 Dark:Remove()
 Activated = false
end
if SlimeCharge == true then
 SlimeCharge = false
 Slime.Anchored = false
 Nucleus.Anchored = false
 SlimeWeld = Instance.new("Weld")
 SlimeWeld.Parent = Slime
 SlimeWeld.Part0 = Slime
 SlimeWeld.Part1 = Nucleus
 SlimeWeld.C0 = CFrame.new(0, 0, 0) 
 Velocity = Instance.new("BodyVelocity")
 Velocity.Parent = Slime
 Velocity.maxForce = Vector3.new(math.huge, 0, math.huge)
 Velocity.velocity = Me.Character.Torso.CFrame.lookVector * 100
 
 function SlimeWeld(Hit)
  if Hit.Parent.Name ~= Me.Name then
   Humanoid = Hit.Parent:findFirstChild("Humanoid")
   if Humanoid ~= nil then
    Humanoid.MaxHealth = 0
    Humanoid.Health = 0
    Stuff = Humanoid.Parent:GetChildren()
    for i = 1 , #Stuff do
     if Stuff[i].className == "Part" then
      SlimeWeldz = Instance.new("Weld")
      SlimeWeldz.Parent = Slime
      SlimeWeldz.Part0 = Slime
      SlimeWeldz.Part1 = Stuff[i]
      SlimeWeldz.C0 = CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1)) * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
     end
    end
   end
  end
 end
 Slime.Touched:connect(SlimeWeld)
end
end
------------------------------------------------------------>
--[[
?     -->> Selected
--]]
------------------------------------------------------------>
function onSelected(Mouse)
 Sound.SoundId = "rbxasset://sounds\\unsheath.wav"
 Sound:play()
 Mouse.Button1Down:connect(function() onButton1Down(mouse) end)
 Mouse.Button1Up:connect(function() onButton1Up(mouse) end)
 mouse = Mouse
 FakeRightShoulder = Instance.new("Weld")
 FakeRightShoulder.Parent = Me.Character.Torso
 FakeRightShoulder.Part0 = Me.Character.Torso
 FakeRightShoulder.Part1 = Me.Character["Right Arm"]
 FakeRightShoulder.C0 = OriginalRightShoulder
 FakeRightShoulder.C1 = OriginalRightShoulder2
 FakeLeftShoulder = Instance.new("Weld")
 FakeLeftShoulder.Parent = Me.Character.Torso
 FakeLeftShoulder.Part0 = Me.Character.Torso
 FakeLeftShoulder.Part1 = Me.Character["Left Arm"]
 FakeLeftShoulder.C0 = OriginalLeftShoulder * CFrame.new(-0.25, 0, -0.45)
 FakeLeftShoulder.C1 = OriginalLeftShoulder2
 Weld:Remove()
 Weld = Instance.new("Weld")
 Weld.Parent = Me.Character["Torso"]
 Weld.Part0 = Me.Character["Torso"]
 Weld.Part1 = Handle
 Weld.C0 = CFrame.new(1.6, 2.5, 0.6) * CFrame.Angles(0, 0, 2.2)
 Weld.C0 = Weld.C0 * CFrame.Angles(0, 1.57, 0)
 equipped = true
 Activated = false
 Equipping = true
 Unequipping = false
 Flaming = false
 Shielding = false
 SlimeCharge = false
 DarkCharge = false
 for i = 1 , 16 do
  FakeRightShoulder.C0 = OriginalRightShoulder * CFrame.Angles(0, 0, (i/5.2))
  Weld.C0 = Weld.C0 * CFrame.new(0, 0, -0.03) * CFrame.Angles(0.03, 0, 0.11)
  wait()
 end
 wait()
 Weld.Parent = Me.Character["Right Arm"]
 Weld.Part0 = Me.Character["Right Arm"]
 Weld.C0 = CFrame.new(-0.3, -1, 0.05) * CFrame.Angles(-1.15, -0.3, -0.15)
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.2)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, -0.19)
  wait()
 end
 wait()
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0.05, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0.15, 0, 0)
  wait()
 end
 Equipping = false
end
HopperBin.Selected:connect(onSelected)
------------------------------------------------------------>
--[[
?     -->> Deselected
--]]
------------------------------------------------------------>
function onDeselected(Mouse)
 Sound.SoundId = "rbxasset://sounds\\unsheath.wav"
 Sound:play()
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(-0.05, 0, 0)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(-0.15, 0, 0)
  wait()
 end
 wait()
 for i = 1 , 8 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, 0.2)
  FakeLeftShoulder.C0 = FakeLeftShoulder.C0 * CFrame.Angles(0, 0, 0.19)
  wait()
 end
 FakeLeftShoulder.C0 = OriginalLeftShoulder
 Weld = Instance.new("Weld")
 Weld.Parent = Me.Character["Torso"]
 Weld.Part0 = Me.Character["Torso"]
 Weld.Part1 = Handle
 Weld.C0 = CFrame.new(1.6, 2.5, 0.6) * CFrame.Angles(0, 0, 2.2)
 Weld.C0 = Weld.C0 * CFrame.Angles(0, 1.57, 0)    
 
 for i = 1 , 16 do
  Weld.C0 = Weld.C0 * CFrame.new(0, 0, -0.03) * CFrame.Angles(0.03, 0, 0.11)
 end
 for i = 1 , 16 do
  FakeRightShoulder.C0 = FakeRightShoulder.C0 * CFrame.Angles(0, 0, -0.1)
  Weld.C0 = Weld.C0 * CFrame.new(0, 0, 0.03) * CFrame.Angles(-0.03, 0, -0.11)
  wait()
 end
 FakeRightShoulder:Remove()
 FakeLeftShoulder:Remove()
 FakeRightShoulder = Instance.new("Weld")
 FakeRightShoulder.Parent = Me.Character.Torso
 FakeRightShoulder.Part0 = Me.Character.Torso
 FakeRightShoulder.Part1 = Me.Character["Right Arm"]
 FakeRightShoulder.C0 = OriginalRightShoulder
 FakeRightShoulder.C1 = OriginalRightShoulder2
 FakeLeftShoulder = Instance.new("Weld")
 FakeLeftShoulder.Parent = Me.Character.Torso
 FakeLeftShoulder.Part0 = Me.Character.Torso
 FakeLeftShoulder.Part1 = Me.Character["Left Arm"]
 FakeLeftShoulder.C0 = OriginalLeftShoulder
 FakeLeftShoulder.C1 = OriginalLeftShoulder2
 Equipped = false
 Activated = false
 Equipping = false
 Flaming = false
 DarkCharge = false
 Shielding = false
 Unequipping = true
 SlimeCharge = false
 Unequipping = false
end
HopperBin.Deselected:connect(onDeselected)
------------------------------------------------------------>
--[[
?     -->> onTouched() Functions
--]]
------------------------------------------------------------>
function onTouched(Hit)
 if Activated then
  if Hit.Parent.Name ~= Me.Name and Hit.Parent.Name ~= HopperBinName then
   Humanoid = Hit.Parent:findFirstChild("Humanoid")
   if Humanoid ~= nil and Mode ~= "Assassinate" then
    Humanoid.MaxHealth = 100
    Humanoid:TakeDamage(Damage)
    for i = 1 , (Humanoid.Health/10) do
     Blood = Instance.new("Part")
     Blood.Parent = Workspace
     Blood.CanCollide = false
     Blood.Transparency = 0.1
     Blood.TopSurface = "Smooth"
     Blood.BottomSurface = "Smooth"
     Blood.Size = Vector3.new(1, 1, 1)
     Blood.Locked = true
     Blood.BrickColor = BrickColor.new(1004)
     Blood.CFrame = Hit.CFrame * CFrame.new(math.random(-0.5, 0.5), math.random(-0.5, 0.5), math.random(-0.5, 0.5)) * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
     Blood.Velocity = Vector3.new(math.random(-50, 50), math.random(30, 50), math.random(-50, 50))
     BloodMesh = Instance.new("SpecialMesh")
     BloodMesh.Parent = Blood
     BloodMesh.MeshType = "Sphere"
     BloodMesh.Scale = Vector3.new(0.35, 0.35, 0.35)
     Blood:BreakJoints()
     Blood.Velocity = Vector3.new(math.random(-50, 50), math.random(30, 50), math.random(-50, 50))
    end
   end
  end
 end
end
Stuff = Tool:GetChildren()
for i = 1 , #Stuff do
if Stuff[i].className == "Part" then
Stuff[i].Touched:connect(onTouched)
end
end
------------------------------------------------------------>
--[[
?     -->> Gui
--]]
------------------------------------------------------------>
wait(1)
Gui = PlayerGui:findFirstChild("LoadGui")
if Gui ~= nil then
 Gui:Remove()
end
PlayerGui = Me["PlayerGui"]
Gui = PlayerGui:findFirstChild("SwordGui")
if Gui ~= nil then
 Gui:Remove()
end
Gui = Instance.new("ScreenGui")
Gui.Parent = PlayerGui
Gui.Name = "SwordGui"
Background = Instance.new("ImageLabel")
Background.Parent = Gui
Background.Name = "Background"
Background.Size = UDim2.new(0.25, 0, 0.5, 0)
Background.BackgroundTransparency = 0.7
Background.Position = UDim2.new(0.55, 0, 0, 0) 
Background.BackgroundColor = BrickColor.new(1003)
Page1 = Instance.new("ImageLabel")
Page1.Parent = Background
Page1.Name = "Page1"
Page1.Size = UDim2.new(1, 0, 1, 0)
Page1.BackgroundTransparency = 1
Page1.Position = UDim2.new(0, 0, 0, 0)
Reset = Instance.new("TextButton")
Reset.Parent = Page1
Reset.Name = "Swing"
Reset.Size = UDim2.new(0.2, 0, 0.07, 0)
Reset.BackgroundTransparency = 0.1
Reset.Position = UDim2.new(0.02, 0, 0.02, 0)
Reset.BorderSizePixel = 0
Reset.BackgroundColor = BrickColor.new(1004)
Reset.Text = "[ Reset ]" 
Reset.MouseButton1Down:connect(function()
p = game.Workspace:findFirstChild(Me.Name)
if p ~= nil then
 p:BreakJoints()
end
end)
Hint = Instance.new("TextLabel")
Hint.Parent = Background
Hint.Name = "Hint"
Hint.Size = UDim2.new(1, 0, 0.07, 0)
Hint.BackgroundTransparency = 0.1
Hint.Position = UDim2.new(0, 0, -0.07, 0)
Hint.BorderSizePixel = 0
Hint.BackgroundColor = BrickColor.new(1004)
Hint.Text = "[ ]"
Header1 = Instance.new("TextLabel")
Header1.Parent = Page1
Header1.Name = "Header1"
Header1.Size = UDim2.new(0, 0, 0, 0)
Header1.BackgroundTransparency = 1
Header1.Position = UDim2.new(0.5, 0, 0.08, 0)
Header1.Text = "[ Sword Modes ]" 
Swing = Instance.new("TextButton")
Swing.Parent = Page1
Swing.Name = "Swing"
Swing.Size = UDim2.new(0.25, 0, 0.07, 0)
Swing.BackgroundTransparency = 0.1
Swing.Position = UDim2.new(0.05, 0, 0.2, 0)
Swing.BorderSizePixel = 0
Swing.BackgroundColor = BrickColor.new(1004)
Swing.Text = "[ Swing ]" 
Swing.MouseButton1Down:connect(function()
Mode = "Swing"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Swing.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to Slash ]"
 end
end
end)
Spin = Instance.new("TextButton")
Spin.Parent = Page1
Spin.Name = "Spin"
Spin.Size = UDim2.new(0.25, 0, 0.07, 0)
Spin.BackgroundTransparency = 0.1
Spin.Position = UDim2.new(0.05, 0, 0.3, 0)
Spin.BorderSizePixel = 0
Spin.BackgroundColor = BrickColor.new(1004)
Spin.Text = "[ Spin ]" 
Spin.MouseButton1Down:connect(function()
Mode = "Spin"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Spin.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to Spin Slash ]"
 end
end
end)
TripleSlash = Instance.new("TextButton")
TripleSlash.Parent = Page1
TripleSlash.Name = "TripleSlash"
TripleSlash.Size = UDim2.new(0.25, 0, 0.07, 0)
TripleSlash.BackgroundTransparency = 0.1
TripleSlash.Position = UDim2.new(0.05, 0, 0.4, 0)
TripleSlash.BorderSizePixel = 0
TripleSlash.BackgroundColor = BrickColor.new(1004)
TripleSlash.Text = "[ TripleSlash ]" 
TripleSlash.MouseButton1Down:connect(function()
Mode = "TripleSlash"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  TripleSlash.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to slash 3 times quickly ]"
 end
end
end)
ForwardSpin = Instance.new("TextButton")
ForwardSpin.Parent = Page1
ForwardSpin.Name = "Spin"
ForwardSpin.Size = UDim2.new(0.25, 0, 0.07, 0)
ForwardSpin.BackgroundTransparency = 0.1
ForwardSpin.Position = UDim2.new(0.05, 0, 0.5, 0)
ForwardSpin.BorderSizePixel = 0
ForwardSpin.BackgroundColor = BrickColor.new(1004)
ForwardSpin.Text = "[ ForwardSpin ]" 
ForwardSpin.MouseButton1Down:connect(function()
Mode = "ForwardSpin"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  ForwardSpin.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to Spin Slash forward ]"
 end
end
end)
Boomerang = Instance.new("TextButton")
Boomerang.Parent = Page1
Boomerang.Name = "Boomerang"
Boomerang.Size = UDim2.new(0.25, 0, 0.07, 0)
Boomerang.BackgroundTransparency = 0.1
Boomerang.Position = UDim2.new(0.05, 0, 0.6, 0)
Boomerang.BorderSizePixel = 0
Boomerang.BackgroundColor = BrickColor.new(1004)
Boomerang.Text = "[ Boomerang ]" 
Boomerang.MouseButton1Down:connect(function()
Mode = "Boomerang"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Boomerang.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to throw your sword ]"
 end
end
end)
Remover = Instance.new("TextButton")
Remover.Parent = Page1
Remover.Name = "Remover"
Remover.Size = UDim2.new(0.25, 0, 0.07, 0)
Remover.BackgroundTransparency = 0.1
Remover.Position = UDim2.new(0.05, 0, 0.7, 0)
Remover.BorderSizePixel = 0
Remover.BackgroundColor = BrickColor.new(1004)
Remover.Text = "[ Remover ]" 
Remover.MouseButton1Down:connect(function()
Mode = "Remover"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Remover.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to remove anything nearby ]"
 end
end
end)
Alchemy = Instance.new("TextButton")
Alchemy.Parent = Page1
Alchemy.Name = "Alchemy"
Alchemy.Size = UDim2.new(0.25, 0, 0.07, 0)
Alchemy.BackgroundTransparency = 0.1
Alchemy.Position = UDim2.new(0.05, 0, 0.8, 0)
Alchemy.BorderSizePixel = 0
Alchemy.BackgroundColor = BrickColor.new(1004)
Alchemy.Text = "[ Alchemy ]" 
Alchemy.MouseButton1Down:connect(function()
Mode = "Alchemy"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Alchemy.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to use alchemy ]"
 end
end
end)
Lightning = Instance.new("TextButton")
Lightning.Parent = Page1
Lightning.Name = "Lightning"
Lightning.Size = UDim2.new(0.25, 0, 0.07, 0)
Lightning.BackgroundTransparency = 0.1
Lightning.Position = UDim2.new(0.05, 0, 0.9, 0)
Lightning.BorderSizePixel = 0
Lightning.BackgroundColor = BrickColor.new(1004)
Lightning.Text = "[ Lightning ]" 
Lightning.MouseButton1Down:connect(function()
Mode = "Lightning"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Lightning.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to fire a bolt of lightning ]"
 end
end
end)
Fire = Instance.new("TextButton")
Fire.Parent = Page1
Fire.Name = "Fire"
Fire.Size = UDim2.new(0.25, 0, 0.07, 0)
Fire.BackgroundTransparency = 0.1
Fire.Position = UDim2.new(0.375, 0, 0.2, 0)
Fire.BorderSizePixel = 0
Fire.BackgroundColor = BrickColor.new(1004)
Fire.Text = "[ Fire ]" 
Fire.MouseButton1Down:connect(function()
Mode = "Fire"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Fire.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click and hold to shoot fire ]"
 end
end
end)
Slimeball = Instance.new("TextButton")
Slimeball.Parent = Page1
Slimeball.Name = "Slime"
Slimeball.Size = UDim2.new(0.25, 0, 0.07, 0)
Slimeball.BackgroundTransparency = 0.1
Slimeball.Position = UDim2.new(0.375, 0, 0.3, 0)
Slimeball.BorderSizePixel = 0
Slimeball.BackgroundColor = BrickColor.new(1004)
Slimeball.Text = "[ Slime ]" 
Slimeball.MouseButton1Down:connect(function()
Mode = "Slime"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Slimeball.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click and hold to fire a slime ]"
 end
end
end)
Stone = Instance.new("TextButton")
Stone.Parent = Page1
Stone.Name = "Stone"
Stone.Size = UDim2.new(0.25, 0, 0.07, 0)
Stone.BackgroundTransparency = 0.1
Stone.Position = UDim2.new(0.375, 0, 0.4, 0)
Stone.BorderSizePixel = 0
Stone.BackgroundColor = BrickColor.new(1004)
Stone.Text = "[ Stone ]" 
Stone.MouseButton1Down:connect(function()
Mode = "Stone"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Stone.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to hit anybody near you ]"
 end
end
end)
Escape = Instance.new("TextButton")
Escape.Parent = Page1
Escape.Name = "Escape"
Escape.Size = UDim2.new(0.25, 0, 0.07, 0)
Escape.BackgroundTransparency = 0.1
Escape.Position = UDim2.new(0.375, 0, 0.5, 0)
Escape.BorderSizePixel = 0
Escape.BackgroundColor = BrickColor.new(1004)
Escape.Text = "[ Escape ]" 
Escape.MouseButton1Down:connect(function()
Mode = "Escape"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Escape.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to escape when stuck ]"
 end
end
end)
Shield = Instance.new("TextButton")
Shield.Parent = Page1
Shield.Name = "Shield"
Shield.Size = UDim2.new(0.25, 0, 0.07, 0)
Shield.BackgroundTransparency = 0.1
Shield.Position = UDim2.new(0.375, 0, 0.6, 0)
Shield.BorderSizePixel = 0
Shield.BackgroundColor = BrickColor.new(1004)
Shield.Text = "[ Shield ]" 
Shield.MouseButton1Down:connect(function()
Mode = "Shield"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Shield.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click and hold for an invisible shield ]"
 end
end
end)
DarkPulse = Instance.new("TextButton")
DarkPulse.Parent = Page1
DarkPulse.Name = "DarkPulse"
DarkPulse.Size = UDim2.new(0.25, 0, 0.07, 0)
DarkPulse.BackgroundTransparency = 0.1
DarkPulse.Position = UDim2.new(0.375, 0, 0.7, 0)
DarkPulse.BorderSizePixel = 0
DarkPulse.BackgroundColor = BrickColor.new(1004)
DarkPulse.Text = "[ DarkPulse ]" 
DarkPulse.MouseButton1Down:connect(function()
Mode = "DarkPulse"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  DarkPulse.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click and hold to fire a dark wave ]"
 end
end
end)
Snipe = Instance.new("TextButton")
Snipe.Parent = Page1
Snipe.Name = "Snipe"
Snipe.Size = UDim2.new(0.25, 0, 0.07, 0)
Snipe.BackgroundTransparency = 0.1
Snipe.Position = UDim2.new(0.375, 0, 0.8, 0)
Snipe.BorderSizePixel = 0
Snipe.BackgroundColor = BrickColor.new(1004)
Snipe.Text = "[ Snipe ]" 
Snipe.MouseButton1Down:connect(function()
Mode = "Snipe"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Snipe.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click a person to zoom toward him ]"
 end
end
end)
Wave = Instance.new("TextButton")
Wave.Parent = Page1
Wave.Name = "Wave"
Wave.Size = UDim2.new(0.25, 0, 0.07, 0)
Wave.BackgroundTransparency = 0.1
Wave.Position = UDim2.new(0.375, 0, 0.9, 0)
Wave.BorderSizePixel = 0
Wave.BackgroundColor = BrickColor.new(1004)
Wave.Text = "[ Wave ]" 
Wave.MouseButton1Down:connect(function()
Mode = "Wave"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Wave.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to send out a wave to damage ]"
 end
end
end)
Ice = Instance.new("TextButton")
Ice.Parent = Page1
Ice.Name = "Ice"
Ice.Size = UDim2.new(0.25, 0, 0.07, 0)
Ice.BackgroundTransparency = 0.1
Ice.Position = UDim2.new(0.7, 0, 0.2, 0)
Ice.BorderSizePixel = 0
Ice.BackgroundColor = BrickColor.new(1004)
Ice.Text = "[ Ice ]" 
Ice.MouseButton1Down:connect(function()
Mode = "Ice"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Ice.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to send out a beam of ice ]"
 end
end
end)
Tornado = Instance.new("TextButton")
Tornado.Parent = Page1
Tornado.Name = "Tornado"
Tornado.Size = UDim2.new(0.25, 0, 0.07, 0)
Tornado.BackgroundTransparency = 0.1
Tornado.Position = UDim2.new(0.7, 0, 0.3, 0)
Tornado.BorderSizePixel = 0
Tornado.BackgroundColor = BrickColor.new(1004)
Tornado.Text = "[ Tornado ]" 
Tornado.MouseButton1Down:connect(function()
Mode = "Tornado"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Tornado.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to throw people near you ]"
 end
end
end)
Explosion = Instance.new("TextButton")
Explosion.Parent = Page1
Explosion.Name = "BlackHole"
Explosion.Size = UDim2.new(0.25, 0, 0.07, 0)
Explosion.BackgroundTransparency = 0.1
Explosion.Position = UDim2.new(0.7, 0, 0.4, 0)
Explosion.BorderSizePixel = 0
Explosion.BackgroundColor = BrickColor.new(1004)
Explosion.Text = "[ Explosion ]" 
Explosion.MouseButton1Down:connect(function()
Mode = "Explosion"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Explosion.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to summon a huge explosion ]"
 end
end
end)
ExplodeVictim = Instance.new("TextButton")
ExplodeVictim.Parent = Page1
ExplodeVictim.Name = "ExplodeVictim"
ExplodeVictim.Size = UDim2.new(0.25, 0, 0.07, 0)
ExplodeVictim.BackgroundTransparency = 0.1
ExplodeVictim.Position = UDim2.new(0.7, 0, 0.5, 0)
ExplodeVictim.BorderSizePixel = 0
ExplodeVictim.BackgroundColor = BrickColor.new(1004)
ExplodeVictim.Text = "[ ExplodeVictim ]" 
ExplodeVictim.MouseButton1Down:connect(function()
Mode = "ExplodeVictim"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  ExplodeVictim.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click a person to explode him ]"
 end
end
end)
Raise = Instance.new("TextButton")
Raise.Parent = Page1
Raise.Name = "Raise"
Raise.Size = UDim2.new(0.25, 0, 0.07, 0)
Raise.BackgroundTransparency = 0.1
Raise.Position = UDim2.new(0.7, 0, 0.6, 0)
Raise.BorderSizePixel = 0
Raise.BackgroundColor = BrickColor.new(1004)
Raise.Text = "[ Raise ]" 
Raise.MouseButton1Down:connect(function()
Mode = "Raise"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Raise.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click the ground to make a mountain ]"
 end
end
end)
Teleport = Instance.new("TextButton")
Teleport.Parent = Page1
Teleport.Name = "Teleport"
Teleport.Size = UDim2.new(0.25, 0, 0.07, 0)
Teleport.BackgroundTransparency = 0.1
Teleport.Position = UDim2.new(0.7, 0, 0.7, 0)
Teleport.BorderSizePixel = 0
Teleport.BackgroundColor = BrickColor.new(1004)
Teleport.Text = "[ Teleport ]" 
Teleport.MouseButton1Down:connect(function()
Mode = "Teleport"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Teleport.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to teleport and slash ]"
 end
end
end)
DownThrust = Instance.new("TextButton")
DownThrust.Parent = Page1
DownThrust.Name = "DownThrust"
DownThrust.Size = UDim2.new(0.25, 0, 0.07, 0)
DownThrust.BackgroundTransparency = 0.1
DownThrust.Position = UDim2.new(0.7, 0, 0.8, 0)
DownThrust.BorderSizePixel = 0
DownThrust.BackgroundColor = BrickColor.new(1004)
DownThrust.Text = "[ DownThrust ]" 
DownThrust.MouseButton1Down:connect(function()
Mode = "DownThrust"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  DownThrust.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to thurst downward ]"
 end
end
end)
Slashes2 = Instance.new("TextButton")
Slashes2.Parent = Page1
Slashes2.Name = "Slashes"
Slashes2.Size = UDim2.new(0.25, 0, 0.07, 0)
Slashes2.BackgroundTransparency = 0.1
Slashes2.Position = UDim2.new(0.7, 0, 0.9, 0)
Slashes2.BorderSizePixel = 0
Slashes2.BackgroundColor = BrickColor.new(1004)
Slashes2.Text = "[ HeatSlashes ]" 
Slashes2.MouseButton1Down:connect(function()
Mode = "Slashes"
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Slashes2.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to heat slash ]"
 end
end
end)
Page2 = Instance.new("ImageLabel")
Page2.Parent = Background
Page2.Name = "Page2"
Page2.Visible = false
Page2.Size = UDim2.new(1, 0, 1, 0)
Page2.BackgroundTransparency = 1
Page2.Position = UDim2.new(0, 0, 0, 0)
Header2 = Instance.new("TextLabel")
Header2.Parent = Page2
Header2.Name = "Header2"
Header2.Size = UDim2.new(0, 0, 0, 0)
Header2.BackgroundTransparency = 1
Header2.Position = UDim2.new(0.5, 0, 0.08, 0)
Header2.Text = "[ Sword Modes #2 ]"
NextPage1 = Instance.new("TextButton")
NextPage1.Parent = Page1
NextPage1.Name = "NextPage1"
NextPage1.Size = UDim2.new(0.25, 0, 0.07, 0)
NextPage1.BackgroundTransparency = 0.1
NextPage1.Position = UDim2.new(0.7, 0, 0.02, 0)
NextPage1.BorderSizePixel = 0
NextPage1.BackgroundColor = BrickColor.new(1004)
NextPage1.Text = "[ Next ]" 
NextPage1.MouseButton1Down:connect(function()
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
 end
end
Stuff = Page2:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
 end
end
Mode = ""
Page1.Visible = false
Page2.Visible = true
end)
BackPage1 = Instance.new("TextButton")
BackPage1.Parent = Page2
BackPage1.Name = "BackPage1"
BackPage1.Size = UDim2.new(0.25, 0, 0.07, 0)
BackPage1.BackgroundTransparency = 0.1
BackPage1.Position = UDim2.new(0.02, 0, 0.02, 0)
BackPage1.BorderSizePixel = 0
BackPage1.BackgroundColor = BrickColor.new(1004)
BackPage1.Text = "[ Back ]" 
BackPage1.MouseButton1Down:connect(function()
Stuff = Page1:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
 end
end
Stuff = Page2:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
 end
end
Mode = ""
Page1.Visible = true
Page2.Visible = false
end)
Assassinate = Instance.new("TextButton")
Assassinate.Parent = Page2
Assassinate.Name = "Assassinate"
Assassinate.Size = UDim2.new(0.25, 0, 0.07, 0)
Assassinate.BackgroundTransparency = 0.1
Assassinate.Position = UDim2.new(0.05, 0, 0.2, 0)
Assassinate.BorderSizePixel = 0
Assassinate.BackgroundColor = BrickColor.new(1004)
Assassinate.Text = "[ Assassinate ]" 
Assassinate.MouseButton1Down:connect(function()
Mode = "Assassinate"
Stuff = Page2:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Assassinate.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click a player to kill ]"
 end
end
end)
Swing2 = Instance.new("TextButton")
Swing2.Parent = Page2
Swing2.Name = "Swing"
Swing2.Size = UDim2.new(0.25, 0, 0.07, 0)
Swing2.BackgroundTransparency = 0.1
Swing2.Position = UDim2.new(0.05, 0, 0.3, 0)
Swing2.BorderSizePixel = 0
Swing2.BackgroundColor = BrickColor.new(1004)
Swing2.Text = "[ Slow Swing ]" 
Swing2.MouseButton1Down:connect(function()
Mode = "Slow Swing"
Stuff = Page2:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Swing2.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to Slash ]"
 end
end
end)
Lazor = Instance.new("TextButton")
Lazor.Parent = Page2
Lazor.Name = "lazor"
Lazor.Size = UDim2.new(0.25, 0, 0.07, 0)
Lazor.BackgroundTransparency = 0.1
Lazor.Position = UDim2.new(0.05, 0, 0.4, 0)
Lazor.BorderSizePixel = 0
Lazor.BackgroundColor = BrickColor.new(1004)
Lazor.Text = "[ LAZOR ]" 
Lazor.MouseButton1Down:connect(function()
Mode = "Lazor"
Stuff = Page2:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Lazor.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to FIRE LAZOOOOOR!!! ]"
 end
end
end)
Lazor3 = Instance.new("TextButton")
Lazor3.Parent = Page2
Lazor3.Name = "Toss"
Lazor3.Size = UDim2.new(0.25, 0, 0.07, 0)
Lazor3.BackgroundTransparency = 0.1
Lazor3.Position = UDim2.new(0.05, 0, 0.5, 0)
Lazor3.BorderSizePixel = 0
Lazor3.BackgroundColor = BrickColor.new(1004)
Lazor3.Text = "[ Toss ]" 
Lazor3.MouseButton1Down:connect(function()
Mode = "Toss"
Stuff = Page2:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].className == "TextButton" then
  Stuff[i].BackgroundColor = BrickColor.new(1004)
  Lazor3.BackgroundColor = BrickColor.new(1010)
  Hint.Text = "[ Click to toss Sword ]"
 end
end
end)

------------------------------------------------------------>
--[[
?     -->> onDied()
--]]
------------------------------------------------------------>
Me.Character.Humanoid.Died:connect(function()
 f = Instance.new("Explosion")
 f.Parent = Me.Character.Torso
 f.Position = Me.Character.Torso.Position
 f.BlastRadius = 3000
 f.BlastPressure = 500000000
end)
Me.Character.Humanoid.Died:connect(function()
 f = Instance.new("Explosion")
 f.Parent = Me.Character.Head
 f.Position = Me.Character.Head.Position
 f.BlastRadius = 3000
 f.BlastPressure = 500000000
end)

------------------------------------------------------------>
--[[
?     -->> Suit
--]]
------------------------------------------------------------>
Hat = Instance.new("Part")
Hat.Parent = Me.Character
Hat.CanCollide = false
Hat.Locked = true
Hat.Size = Vector3.new(2, 2, 2)
Hat.TopSurface = "Smooth"
Hat.BottomSurface = "Smooth"
Hat.Name = "Hat"
Hat.CFrame = Me.Character.Head.CFrame
HatMesh = Instance.new("SpecialMesh")
HatMesh.Parent = Hat
HatMesh.MeshType = "FileMesh"
HatMesh.MeshId = "http://www.roblox.com/asset/?id=21057410"
HatMesh.Scale = Vector3.new(1.05, 1.05, 1.05)
HatMesh.TextureId = "http://www.roblox.com/asset/?id=21240616"
HatWeld = Instance.new("Weld")
HatWeld.Parent = Me.Character.Head
HatWeld.Part0 = Me.Character.Head
HatWeld.Part1 = Hat
HatWeld.C0 = CFrame.new(0, 0, 0)
Stuff = Me.Character:GetChildren()
for i = 1 , #Stuff do
 if Stuff[i].Name == "Shirt" or Stuff[i].Name == "Pants" then
  Stuff[i]:Remove()
 end
end
Shirt = Instance.new("Shirt")
Shirt.Parent = Me.Character
Shirt.Name = "Shirt"
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=11853187"
Pants = Instance.new("Pants")
Pants.Parent = Me.Character
Pants.Name = "Pants"
Pants.PantsTemplate = "http://www.roblox.com/asset/?id=12215811"
Me.Character:MoveTo(Me.Character.Torso.Position+Vector3.new(0, 2, 0))
------------------------------------------------------------>
--[[
?     -->> Loop
--]]
------------------------------------------------------------>
while true do
 wait()
 Stuff = Workspace:GetChildren()
 for i = 1 , #Stuff do
  Stuff2 = Stuff[i]:GetChildren()
  for i = 1 , #Stuff2 do
   Stuff3 = Stuff2[i]:GetChildren()
   for i = 1 , #Stuff3 do
    if Stuff3[i].className == "ForceField" then
     Stuff3[i]:Remove()
    end
   end
   if Stuff2[i].className == "ForceField" then
    Stuff2[i]:Remove()
   end
  end
 end
 if Flaming == true then
 Flame = Instance.new("Part")
 Flame.Parent = Tool
 Flame.Anchored = true
 Flame.BrickColor = BrickColor.new("Really black")
 Flame.CanCollide = false
 Flame.Name = "Flame"
 Color = math.random(1, 3)
 if Color == 1 then
  Flame.BrickColor = BrickColor.new(21)
  else
  if Color == 2 then
   Flame.BrickColor = BrickColor.new(24)
  end
  if Color == 3 then
   Flame.BrickColor = BrickColor.new(105)
  end
 end
 Flame.Locked = true
 Flame.Shape = "Ball"
 Flame.Transparency = 0.2
 Flame.Size = Vector3.new(1, 1, 1)
 Flame.TopSurface = "Smooth"
 Flame.BottomSurface = "Smooth"
 Flame.CFrame = Me.Character.Torso.CFrame * CFrame.new(math.random(-2, 2), math.random(-2, 2), -(math.random(8, 12)))
 FlameMesh = Instance.new("SpecialMesh")
 FlameMesh.MeshType = "Sphere"
 FlameMesh.Parent = Flame
 FlameMesh.Scale = Vector3.new(1, 1, 1)
 end
 Me.Character.Humanoid.WalkSpeed = 80
 Me.Character.Humanoid.MaxHealth = math.huge
 if Me.Character.Torso.Position.Y <= -20 or Me.Character.Torso.Position.Y >= 10000 then
  Base = Workspace:findFirstChild("Base")
  if Base ~= nil then
   Me.Character:MoveTo(Base.Position)
   else
   Me.Character:MoveTo(Vector3.new(0, 50, 0))
  end
 end
 Stuff = Tool:GetChildren()
 for i = 1 , #Stuff do
  if Stuff[i].className == "Part" then
   if Stuff[i].Name == "Shadow" then
    Stuff[i].Transparency = Stuff[i].Transparency + 0.2
    if Stuff[i].Transparency >= 1 then
     Stuff[i]:Remove()
    end
   end
   if Stuff[i].Name == "Flame" then
    p = Stuff[i].CFrame * CFrame.new(math.random(-1, 1), math.random(-1, 1), math.random(-1, 1))
    Size = math.random(1, 3)
    Stuff[i].Mesh.Scale = Stuff[i].Mesh.Scale + Vector3.new(Size, Size, Size)
    Stuff[i].Transparency = Stuff[i].Transparency + 0.0785
    Stuff[i].CFrame = p
    Stuff[i].CFrame = Stuff[i].CFrame * CFrame.new(0, 0, -(math.random(3, 5)))
    Stuff2 = Workspace:GetChildren()
    for ii = 1 , #Stuff2 do
     if Stuff2[ii].className == "Part" then
      if (Stuff[i].Position-Stuff2[ii].Position).magnitude <= Stuff[i].Mesh.Scale.X then
       if Stuff2[ii].Name ~= "Base" then
        Stuff2[ii].Anchored = false
        Stuff2[ii].BrickColor = BrickColor.new("Really black")
        Stuff2[ii]:BreakJoints()
       end
      end
     end
     if Stuff2[ii].className == "Model" and Stuff2[ii].Name ~= Me.Name then
      Torso = Stuff2[ii]:findFirstChild("Torso")
      Humanoid = Stuff2[ii]:findFirstChild("Humanoid")
      if Torso ~= nil and Humanoid ~= nil then
       if (Stuff[i].Position-Torso.Position).magnitude <= Stuff[i].Mesh.Scale.X then
        Humanoid.MaxHealth = 100
        Humanoid:TakeDamage(Damage)
        Parts = Humanoid.Parent:GetChildren()
        for i = 1 , #Parts do
         if Parts[i].className == "Part" then
          Parts[i].BrickColor = BrickColor.new("Really black")
          if Humanoid.Health <= 0 then
           Parts[i].Anchored = false
           Parts[i]:BreakJoints()
          end
         end
        end
       end
      end
     end
    end
    if Stuff[i].Transparency >= 1 then
     Stuff[i]:Remove()
    end
   end
  end
 end
------------------------------------------------------------>
--[[
?     -->> End of Script It is THE end of the script, NOW WATCH THE DISCO BALL! DUN DUN DUUUUUUUUUUUUUUUUUUN!!!!!!!!!!!!!!
--]]
------------------------------------------------------------>
end