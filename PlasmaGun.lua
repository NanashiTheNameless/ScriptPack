--[[_FALALALALALALALALALALALALALA_]]
-------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
Player = game.Players.LocalPlayer
Character = Player.Character
script.Parent = Character

HColor = "Medium stone grey"
HWidth = 0.5
HBevel = 0.01
HMesh = 0.06

--[[ * Fire Handle * ]]--

pcall(function() Character.Gun:Remove() end)

Gun = Instance.new("Model")
Gun.Name = "Gun"
Gun.Parent = Character

--[[ * Gui * ]]--
--[[
MG = Instance.new("ScreenGui",Player.PlayerGui)

BS = Instance.new("Frame")
BS.Parent = MG
BS.Size = UDim2.new(1,0,1,0)
BS.Position = UDim2.new(0,0,0,0)
BS.BackgroundColor3 = Color3.new(0,0,0)
BS.BorderSizePixel = 0
BS.BackgroundTransparency = 0
wait(0.5)
for i = 1,10 do wait()
BS.BackgroundTransparency = BS.BackgroundTransparency + 0.1
end
]]
--[[ * Arm Weld * ]]--

ArmWeld = Instance.new("Weld") 
ArmWeld.Parent = Character["Torso"]
ArmWeld.Part0 = ArmWeld.Parent
ArmWeld.Part1 = Character["Right Arm"]
ArmWeld.C0 = CFrame.new(1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * Arm Weld * ]]--

ArmWeldR = Instance.new("Weld") 
ArmWeldR.Parent = Character["Torso"]
ArmWeldR.Part0 = ArmWeldR.Parent
ArmWeldR.Part1 = Character["Left Arm"]
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * Neck Weld * ]]--

Neck = Instance.new("Weld") 
Neck.Parent = Character["Torso"]
Neck.Part0 = Neck.Parent
Neck.Part1 = Character["Head"]
Neck.C0 = CFrame.new(0,1.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0)

--[[ * Handle * ]]--

Handle = Instance.new("Part")
Handle.formFactor = "Custom"
Handle.Locked = true
Handle.CanCollide = false
Handle.BrickColor = BrickColor.new("Medium stone grey")
Handle.Anchored = false
Handle.Size = Vector3.new(0.5,1,0.5)
Handle.TopSurface = 0
Handle.BottomSurface = 0
Handle.Parent = Gun
MeshA = Instance.new("BlockMesh",Handle)
MeshA.Bevel = 0.03
WeldA = Instance.new("Weld")
WeldA.Parent = Handle
WeldA.Part0 = Character["Right Arm"]
WeldA.Part1 = Handle
WeldA.C0 = CFrame.new(0,-1.1,-0.1) * CFrame.Angles(math.pi/2-0.2,0,0)

--[[ * Trigger * ]]--

Trigger = Instance.new("Part")
Trigger.formFactor = "Custom"
Trigger.Locked = true
Trigger.CanCollide = false
Trigger.BrickColor = BrickColor.Black()
Trigger.Anchored = false
Trigger.Size = Vector3.new(0.3,0.3,0.6)
Trigger.TopSurface = 0
Trigger.BottomSurface = 0
Trigger.Parent = Gun
MeshB = Instance.new("BlockMesh",Trigger)
MeshB.Bevel = 0.03
WeldB = Instance.new("Weld")
WeldB.Parent = Trigger
WeldB.Part0 = Handle
WeldB.Part1 = Trigger
WeldB.C0 = CFrame.new(0,-0.5,0.4) * CFrame.Angles(0.2,0,0)

--[[ * Barrel * ]]--

Barrel = Instance.new("Part")
Barrel.formFactor = "Custom"
Barrel.Locked = true
Barrel.CanCollide = false
Barrel.BrickColor = BrickColor.new("Medium stone grey")
Barrel.Anchored = false
Barrel.Size = Vector3.new(1.4,2,1.4)
Barrel.TopSurface = 0
Barrel.BottomSurface = 0
Barrel.Parent = Gun
MeshC = Instance.new("CylinderMesh",Barrel)
MeshC.Bevel = 0.03
WeldC = Instance.new("Weld")
WeldC.Parent = Barrel
WeldC.Part0 = Trigger
WeldC.Part1 = Barrel
WeldC.C0 = CFrame.new(0,-0.6,-0.4) * CFrame.Angles(math.pi/2,0,0)

--[[ * Fluid * ]]--

Fluid = Instance.new("Part")
Fluid.formFactor = "Custom"
Fluid.Locked = true
Fluid.CanCollide = false
Fluid.BrickColor = BrickColor.new(104)
Fluid.Anchored = false
Fluid.Transparency = 0
Fluid.Reflectance = 0.25
Fluid.Size = Vector3.new(1,1,1)
Fluid.TopSurface = 0
Fluid.BottomSurface = 0
Fluid.Parent = Gun
MeshD = Instance.new("CylinderMesh",Fluid)
MeshD.Bevel = 0.03
WeldD = Instance.new("Weld")
WeldD.Parent = Fluid
WeldD.Part0 = Barrel
WeldD.Part1 = Fluid
WeldD.C0 = CFrame.new(0,-1,0) * CFrame.Angles(0,0,0)

--[[ * CTrigger * ]]--

CTrigger = Instance.new("Part")
CTrigger.formFactor = "Custom"
CTrigger.Locked = true
CTrigger.CanCollide = false
CTrigger.BrickColor = BrickColor.new("Medium stone grey")
CTrigger.Anchored = false
CTrigger.Size = Vector3.new(1.25,0.5,1.25)
CTrigger.TopSurface = 0
CTrigger.BottomSurface = 0
CTrigger.Parent = Gun
MeshE = Instance.new("CylinderMesh",CTrigger)
MeshE.Bevel = 0.03
WeldE = Instance.new("Weld")
WeldE.Parent = CTrigger
WeldE.Part0 = Fluid
WeldE.Part1 = CTrigger
WeldE.C0 = CFrame.new(0,-0.5,0) * CFrame.Angles(0,0,0)

--[[ * BCap * ]]--

BCap = Instance.new("Part")
BCap.formFactor = "Custom"
BCap.Locked = true
BCap.CanCollide = false
BCap.BrickColor = BrickColor.new("Medium stone grey")
BCap.Anchored = false
BCap.Size = Vector3.new(1.25,0.5,1.25)
BCap.TopSurface = 0
BCap.BottomSurface = 0
BCap.Parent = Gun
MeshF = Instance.new("CylinderMesh",BCap)
MeshF.Bevel = 0.03
WeldF = Instance.new("Weld")
WeldF.Parent = BCap
WeldF.Part0 = Fluid
WeldF.Part1 = BCap
WeldF.C0 = CFrame.new(0,0.5,0) * CFrame.Angles(0,0,0)

--[[ * Hole * ]]--

Hole = Instance.new("Part")
Hole.formFactor = "Custom"
Hole.Locked = true
Hole.CanCollide = false
Hole.BrickColor = BrickColor.new("Really black")
Hole.Anchored = false
Hole.Size = Vector3.new(0.7,1,0.7)
Hole.TopSurface = 0
Hole.BottomSurface = 0
Hole.Parent = Gun
MeshG = Instance.new("CylinderMesh",Hole)
MeshG.Bevel = 0.03
WeldG = Instance.new("Weld")
WeldG.Parent = Hole
WeldG.Part0 = Barrel
WeldG.Part1 = Hole
WeldG.C0 = CFrame.new(0,0.51,0) * CFrame.Angles(0,0,0)

--[[ * JointA * ]]--

JointA = Instance.new("Part")
JointA.formFactor = "Custom"
JointA.Locked = true
JointA.CanCollide = false
JointA.BrickColor = BrickColor.new(HColor)
JointA.Anchored = false
JointA.Size = Vector3.new(HWidth,1,0.2)
JointA.TopSurface = 0
JointA.BottomSurface = 0
JointA.Parent = Gun
MeshH = Instance.new("BlockMesh",JointA)
MeshH.Bevel = HBevel
WeldH = Instance.new("Weld")
WeldH.Parent = JointA
WeldH.Part0 = Hole
WeldH.Part1 = JointA
WeldH.C0 = CFrame.new(0,0.5,0.5) * CFrame.Angles(0,0,0)

--[[ * JointB * ]]--

JointB = Instance.new("Part")
JointB.formFactor = "Custom"
JointB.Locked = true
JointB.CanCollide = false
JointB.BrickColor = BrickColor.new(HColor)
JointB.Anchored = false
JointB.Size = Vector3.new(HWidth,1,0.2)
JointB.TopSurface = 0
JointB.BottomSurface = 0
JointB.Parent = Gun
MeshI = Instance.new("BlockMesh",JointB)
MeshI.Bevel = HBevel
WeldI = Instance.new("Weld")
WeldI.Parent = JointB
WeldI.Part0 = Hole
WeldI.Part1 = JointB
WeldI.C0 = CFrame.new(0,0.5,-0.5) * CFrame.Angles(0,math.pi,0)

--[[ * JointC * ]]--

JointC = Instance.new("Part")
JointC.formFactor = "Custom"
JointC.Locked = true
JointC.CanCollide = false
JointC.BrickColor = BrickColor.new(HColor)
JointC.Anchored = false
JointC.Size = Vector3.new(HWidth,1,0.2)
JointC.TopSurface = 0
JointC.BottomSurface = 0
JointC.Parent = Gun
MeshJ = Instance.new("BlockMesh",JointC)
MeshJ.Bevel = HBevel
WeldJ = Instance.new("Weld")
WeldJ.Parent = JointC
WeldJ.Part0 = Hole
WeldJ.Part1 = JointC
WeldJ.C0 = CFrame.new(0.5,0.5,0) * CFrame.Angles(0,math.pi/2,0)

--[[ * JointD * ]]--

JointD = Instance.new("Part")
JointD.formFactor = "Custom"
JointD.Locked = true
JointD.CanCollide = false
JointD.BrickColor = BrickColor.new(HColor)
JointD.Anchored = false
JointD.Size = Vector3.new(HWidth,1,0.2)
JointD.TopSurface = 0
JointD.BottomSurface = 0
JointD.Parent = Gun
MeshK = Instance.new("BlockMesh",JointD)
MeshK.Bevel = HBevel
WeldK = Instance.new("Weld")
WeldK.Parent = JointD
WeldK.Part0 = Hole
WeldK.Part1 = JointD
WeldK.C0 = CFrame.new(-0.5,0.5,0) * CFrame.Angles(0,-math.pi/2,0)

--[[ * JointE * ]]--

JointE = Instance.new("Part")
JointE.formFactor = "Custom"
JointE.Locked = true
JointE.CanCollide = false
JointE.BrickColor = BrickColor.new(HColor)
JointE.Anchored = false
JointE.Size = Vector3.new(HWidth,1,0.2)
JointE.TopSurface = 0
JointE.BottomSurface = 0
JointE.Parent = Gun
MeshL = Instance.new("BlockMesh",JointE)
MeshL.Bevel = HBevel
WeldL = Instance.new("Weld")
WeldL.Parent = JointE
WeldL.Part0 = Hole
WeldL.Part1 = JointE
WeldL.C0 = CFrame.new(-0.35,0.5,0.35) * CFrame.Angles(0,-math.pi/2/2,0)

--[[ * JointF * ]]--

JointF = Instance.new("Part")
JointF.formFactor = "Custom"
JointF.Locked = true
JointF.CanCollide = false
JointF.BrickColor = BrickColor.new(HColor)
JointF.Anchored = false
JointF.Size = Vector3.new(HWidth,1,0.2)
JointF.TopSurface = 0
JointF.BottomSurface = 0
JointF.Parent = Gun
MeshM = Instance.new("BlockMesh",JointF)
MeshM.Bevel = HBevel
WeldM = Instance.new("Weld")
WeldM.Parent = JointF
WeldM.Part0 = Hole
WeldM.Part1 = JointF
WeldM.C0 = CFrame.new(0.35,0.5,0.35) * CFrame.Angles(0,math.pi/2/2,0)

--[[ * JointG * ]]--

JointG = Instance.new("Part")
JointG.formFactor = "Custom"
JointG.Locked = true
JointG.CanCollide = false
JointG.BrickColor = BrickColor.new(HColor)
JointG.Anchored = false
JointG.Size = Vector3.new(HWidth,1,0.2)
JointG.TopSurface = 0
JointG.BottomSurface = 0
JointG.Parent = Gun
MeshN = Instance.new("BlockMesh",JointG)
MeshN.Bevel = HBevel
WeldN = Instance.new("Weld")
WeldN.Parent = JointG
WeldN.Part0 = Hole
WeldN.Part1 = JointG
WeldN.C0 = CFrame.new(-0.35,0.5,-0.35) * CFrame.Angles(0,math.pi/2/2,0)

--[[ * JointH * ]]--

JointH = Instance.new("Part")
JointH.formFactor = "Custom"
JointH.Locked = true
JointH.CanCollide = false
JointH.BrickColor = BrickColor.new(HColor)
JointH.Anchored = false
JointH.Size = Vector3.new(HWidth,1,0.2)
JointH.TopSurface = 0
JointH.BottomSurface = 0
JointH.Parent = Gun
MeshO = Instance.new("BlockMesh",JointH)
MeshO.Bevel = HBevel
WeldO = Instance.new("Weld")
WeldO.Parent = JointH
WeldO.Part0 = Hole
WeldO.Part1 = JointH
WeldO.C0 = CFrame.new(0.35,0.5,-0.35) * CFrame.Angles(0,-math.pi/2/2,0)

--[[ * PartX * ]]--

PartX = Instance.new("Part")
PartX.formFactor = "Custom"
PartX.Locked = true
PartX.CanCollide = false
PartX.BrickColor = BrickColor.new(HColor)
PartX.Anchored = false
PartX.Size = Vector3.new(HWidth,0.2,0.5)
PartX.TopSurface = 0
PartX.BottomSurface = 0
PartX.Parent = Gun
MeshX1 = Instance.new("BlockMesh",PartX)
MeshX1.Bevel = HBevel
WeldX = Instance.new("Weld")
WeldX.Parent = PartX
WeldX.Part0 = JointA
WeldX.Part1 = PartX
WeldX.C0 = CFrame.new(0,0.4,-0.2) * CFrame.Angles(0,0,0)

--[[ * PartX * ]]--

PartX = Instance.new("Part")
PartX.formFactor = "Custom"
PartX.Locked = true
PartX.CanCollide = false
PartX.BrickColor = BrickColor.new(HColor)
PartX.Anchored = false
PartX.Size = Vector3.new(HWidth,0.2,0.5)
PartX.TopSurface = 0
PartX.BottomSurface = 0
PartX.Parent = Gun
MeshX2 = Instance.new("BlockMesh",PartX)
MeshX2.Bevel = HBevel
WeldX = Instance.new("Weld")
WeldX.Parent = PartX
WeldX.Part0 = JointB
WeldX.Part1 = PartX
WeldX.C0 = CFrame.new(0,0.4,-0.2) * CFrame.Angles(0,0,0)

--[[ * PartX * ]]--

PartX = Instance.new("Part")
PartX.formFactor = "Custom"
PartX.Locked = true
PartX.CanCollide = false
PartX.BrickColor = BrickColor.new(HColor)
PartX.Anchored = false
PartX.Size = Vector3.new(HWidth,0.2,0.5)
PartX.TopSurface = 0
PartX.BottomSurface = 0
PartX.Parent = Gun
MeshX3 = Instance.new("BlockMesh",PartX)
MeshX3.Bevel = HBevel
WeldX = Instance.new("Weld")
WeldX.Parent = PartX
WeldX.Part0 = JointC
WeldX.Part1 = PartX
WeldX.C0 = CFrame.new(0,0.4,-0.2) * CFrame.Angles(0,0,0)

--[[ * PartX * ]]--

PartX = Instance.new("Part")
PartX.formFactor = "Custom"
PartX.Locked = true
PartX.CanCollide = false
PartX.BrickColor = BrickColor.new(HColor)
PartX.Anchored = false
PartX.Size = Vector3.new(HWidth,0.2,0.5)
PartX.TopSurface = 0
PartX.BottomSurface = 0
PartX.Parent = Gun
MeshX4 = Instance.new("BlockMesh",PartX)
MeshX4.Bevel = HBevel
WeldX = Instance.new("Weld")
WeldX.Parent = PartX
WeldX.Part0 = JointD
WeldX.Part1 = PartX
WeldX.C0 = CFrame.new(0,0.4,-0.2) * CFrame.Angles(0,0,0)

--[[ * PartX * ]]--

PartX = Instance.new("Part")
PartX.formFactor = "Custom"
PartX.Locked = true
PartX.CanCollide = false
PartX.BrickColor = BrickColor.new(HColor)
PartX.Anchored = false
PartX.Size = Vector3.new(HWidth,0.2,0.5)
PartX.TopSurface = 0
PartX.BottomSurface = 0
PartX.Parent = Gun
MeshX5 = Instance.new("BlockMesh",PartX)
MeshX5.Bevel = HBevel
WeldX = Instance.new("Weld")
WeldX.Parent = PartX
WeldX.Part0 = JointE
WeldX.Part1 = PartX
WeldX.C0 = CFrame.new(0,0.4,-0.2) * CFrame.Angles(0,0,0)

--[[ * PartX * ]]--

PartX = Instance.new("Part")
PartX.formFactor = "Custom"
PartX.Locked = true
PartX.CanCollide = false
PartX.BrickColor = BrickColor.new(HColor)
PartX.Anchored = false
PartX.Size = Vector3.new(HWidth,0.2,0.5)
PartX.TopSurface = 0
PartX.BottomSurface = 0
PartX.Parent = Gun
MeshX6 = Instance.new("BlockMesh",PartX)
MeshX6.Bevel = HBevel
WeldX = Instance.new("Weld")
WeldX.Parent = PartX
WeldX.Part0 = JointF
WeldX.Part1 = PartX
WeldX.C0 = CFrame.new(0,0.4,-0.2) * CFrame.Angles(0,0,0)

--[[ * PartX * ]]--

PartX = Instance.new("Part")
PartX.formFactor = "Custom"
PartX.Locked = true
PartX.CanCollide = false
PartX.BrickColor = BrickColor.new(HColor)
PartX.Anchored = false
PartX.Size = Vector3.new(HWidth,0.2,0.5)
PartX.TopSurface = 0
PartX.BottomSurface = 0
PartX.Parent = Gun
MeshX7 = Instance.new("BlockMesh",PartX)
MeshX7.Bevel = HBevel
WeldX = Instance.new("Weld")
WeldX.Parent = PartX
WeldX.Part0 = JointG
WeldX.Part1 = PartX
WeldX.C0 = CFrame.new(0,0.4,0.2) * CFrame.Angles(0,0,0)

--[[ * PartX * ]]--

PartX = Instance.new("Part")
PartX.formFactor = "Custom"
PartX.Locked = true
PartX.CanCollide = false
PartX.BrickColor = BrickColor.new(HColor)
PartX.Anchored = false
PartX.Size = Vector3.new(HWidth,0.2,0.5)
PartX.TopSurface = 0
PartX.BottomSurface = 0
PartX.Parent = Gun
MeshX8 = Instance.new("BlockMesh",PartX)
MeshX8.Bevel = HBevel
WeldX = Instance.new("Weld")
WeldX.Parent = PartX
WeldX.Part0 = JointH
WeldX.Part1 = PartX
WeldX.C0 = CFrame.new(0,0.4,0.2) * CFrame.Angles(0,0,0)

for i = 1,7 do
WeldD.C0 = WeldD.C0 - Vector3.new(0,0.1*i,0)
end
for i = 1,7 do wait()
WeldD.C0 = WeldD.C0 + Vector3.new(0,0.1*i,0)
end

function ShootOn()

for i = 1,7 do wait()
WeldD.C0 = WeldD.C0 - Vector3.new(0,0.01*i,0)
WeldA.C0 = WeldA.C0 + Vector3.new(0,0.01*i,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,0,0.01*i/2)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,0,0.02*i/2)
WeldH.C0 = WeldH.C0 * CFrame.Angles(0.1*i/3,0,0)
WeldI.C0 = WeldI.C0 * CFrame.Angles(0.1*i/3,0,0)
WeldJ.C0 = WeldJ.C0 * CFrame.Angles(0.1*i/3,0,0)
WeldK.C0 = WeldK.C0 * CFrame.Angles(0.1*i/3,0,0)
WeldL.C0 = WeldL.C0 * CFrame.Angles(0.1*i/3,0,0)
WeldM.C0 = WeldM.C0 * CFrame.Angles(0.1*i/3,0,0)
WeldN.C0 = WeldN.C0 * CFrame.Angles(-0.1*i/3,0,0)
WeldO.C0 = WeldO.C0 * CFrame.Angles(-0.1*i/3,0,0)
MeshH.Scale = MeshH.Scale + Vector3.new(HMesh,0,0)
MeshI.Scale = MeshI.Scale + Vector3.new(HMesh,0,0)
MeshJ.Scale = MeshJ.Scale + Vector3.new(HMesh,0,0)
MeshK.Scale = MeshK.Scale + Vector3.new(HMesh,0,0)
MeshL.Scale = MeshL.Scale + Vector3.new(HMesh,0,0)
MeshM.Scale = MeshM.Scale + Vector3.new(HMesh,0,0)
MeshN.Scale = MeshN.Scale + Vector3.new(HMesh,0,0)
MeshO.Scale = MeshO.Scale + Vector3.new(HMesh,0,0)
MeshX1.Scale = MeshX1.Scale + Vector3.new(HMesh,0,0)
MeshX2.Scale = MeshX1.Scale
MeshX3.Scale = MeshX1.Scale
MeshX4.Scale = MeshX1.Scale
MeshX5.Scale = MeshX1.Scale
MeshX6.Scale = MeshX1.Scale
MeshX7.Scale = MeshX1.Scale
MeshX8.Scale = MeshX1.Scale
end
end

function ShootOff()
for i = 1,7 do wait()
WeldD.C0 = WeldD.C0 + Vector3.new(0,0.01*i,0)
WeldA.C0 = WeldA.C0 - Vector3.new(0,0.01*i,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0,0.01*i/2)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,0,0.02*i/2)
WeldH.C0 = WeldH.C0 * CFrame.Angles(-0.1*i/3,0,0)
WeldI.C0 = WeldI.C0 * CFrame.Angles(-0.1*i/3,0,0)
WeldJ.C0 = WeldJ.C0 * CFrame.Angles(-0.1*i/3,0,0)
WeldK.C0 = WeldK.C0 * CFrame.Angles(-0.1*i/3,0,0)
WeldL.C0 = WeldL.C0 * CFrame.Angles(-0.1*i/3,0,0)
WeldM.C0 = WeldM.C0 * CFrame.Angles(-0.1*i/3,0,0)
WeldN.C0 = WeldN.C0 * CFrame.Angles(0.1*i/3,0,0)
WeldO.C0 = WeldO.C0 * CFrame.Angles(0.1*i/3,0,0)
MeshH.Scale = MeshH.Scale - Vector3.new(HMesh,0,0)
MeshI.Scale = MeshI.Scale - Vector3.new(HMesh,0,0)
MeshJ.Scale = MeshJ.Scale - Vector3.new(HMesh,0,0)
MeshK.Scale = MeshK.Scale - Vector3.new(HMesh,0,0)
MeshL.Scale = MeshL.Scale - Vector3.new(HMesh,0,0)
MeshM.Scale = MeshM.Scale - Vector3.new(HMesh,0,0)
MeshN.Scale = MeshN.Scale - Vector3.new(HMesh,0,0)
MeshO.Scale = MeshO.Scale - Vector3.new(HMesh,0,0)
MeshX1.Scale = MeshX1.Scale - Vector3.new(HMesh,0,0)
MeshX2.Scale = MeshX1.Scale
MeshX3.Scale = MeshX1.Scale
MeshX4.Scale = MeshX1.Scale
MeshX5.Scale = MeshX1.Scale
MeshX6.Scale = MeshX1.Scale
MeshX7.Scale = MeshX1.Scale
MeshX8.Scale = MeshX1.Scale
end
end

ReloadT = false

function Reload()
if EndBlah == false and ReloadT == true then
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-0.1,0,0.1)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.04,-0.05,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0.04,0,0)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0.11,0.02,0)
end
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0.04,0,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0.05,-0.04,0)
WeldD.C0 = WeldD.C0 - Vector3.new(0,0.1,0)
end
WeldD.Part0 = Character["Left Arm"]
WeldD.C0 = CFrame.new(0.3,-0.65,0.85) * CFrame.Angles(math.pi/2-0.3,0,-0.2)
for i = 1,10 do wait()--
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0.04,0,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0.05,-0.04,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,0.05,-0.1)
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,-0.031,0)
end
for i = 1,10 do wait() --
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-0.1,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.03,0.01,-0.05)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-0.1,-0.1,-0.05)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0.1,0.06,0.03)
end
for i = 1,10 do wait() --
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,0,0)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0,0.1,-0.1)
end
for i = 1,10 do wait() --
Fluid.Transparency = Fluid.Transparency - 0.1
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2/2/2/2,0,math.pi/10/2/2/2)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.01,0.01,0)
end
Fluid.Transparency = 0
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.01,0.01,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2/2/2/2,0,-math.pi/10/2/2/2)
end
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0,0.1,-0.1)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,0,0)
end
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0.1,0.06,0.03)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(0.1,0.1,0.05)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0.03,0.01,-0.05)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.1,0,0)
end
for i = 1,10 do wait()
WeldA.C0 = WeldA.C0 * CFrame.Angles(0,0.031,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0,-0.05,0.1)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0.05,-0.04,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-0.04,0,0)
end
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(0.05,-0.04,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-0.04,0,0)
WeldD.C0 = WeldD.C0 * CFrame.Angles(0.05,0,0)
WeldD.C0 = WeldD.C0 + Vector3.new(0,-0.04,0.07)
end
WeldD.Part0 = Barrel
WeldD.C0 = CFrame.new(0,-1,0) * CFrame.Angles(0,0,0)
for i = 1,10 do wait()
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(0.11,0.02,0)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-0.04,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0.04,-0.05,0)
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(0.1,0,-0.1)
end
ArmWeld.C0 = CFrame.new(1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
for i = 1,10 do
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0,0.05)
end
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
for i = 1,10 do
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(-0.04,0.06,0.03)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,-0.05,0.1)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.12,-0.05,0.05)
end
ReloadT = false
end
end

function Shoot(a)
local p = Instance.new("Part")
p.Locked = true
p.CanCollide = false
p.Anchored = false
p.formFactor = "Custom"
p.Shape = "Ball"
p.TopSurface = 0
p.BottomSurface = 0
p.BrickColor = BrickColor.new(104)
p.Size = Vector3.new(0.8,0.8,0.8)
p.Reflectance = 0.25
local s = Instance.new("Sparkles")
s.Parent = p
local g = Instance.new("BodyGyro")
g.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
g.Parent = p
local b = Instance.new("BodyVelocity")
b.maxForce = Vector3.new(math.huge,math.huge,math.huge)
b.Parent = p
p.Parent = game.Workspace
p.CFrame = Hole.CFrame
g.cframe = CFrame.new(Hole.Position,a)
b.velocity = g.cframe.lookVector * 50
p.Touched:connect(function(h)
if h.Parent.Name ~= "Gun" and h.Parent.Name ~= "bob371" then
local e = Instance.new("Explosion")
e.BlastRadius = 20
e.Position = p.Position
e.Parent = game.Workspace
end
end)
end

--[[ * Tool * ]]--

if script.Parent.Name == Player.Name then
Hopper = Instance.new("HopperBin")
Hopper.Name = "Plasma Cannon"
Hopper.Parent = Player.Backpack
end

Blah = true
EndBlah = true

function Clicked(Mouse)
if Blah == true and EndBlah == false then
Blah = false
if Fluid.Transparency <= 0.9 then
ShootOn()
Shoot(Mouse.Hit.p)
Fluid.Transparency = Fluid.Transparency + 0.1
ShootOff()
else
ReloadT = true
end
Blah = true
end
end

function onKeyDown(key)
if Blah == true then
Blah = false

if key == "p" then
if EndBlah == true then
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(0,0,0.05)
end
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(math.pi/10/2/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(-0.04,0.06,0.03)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(math.pi/10/2,-0.05,0.1)
ArmWeldR.C0 = ArmWeldR.C0 - Vector3.new(-0.12,-0.05,0.05)
end
EndBlah = false
elseif EndBlah == false then
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2/2,0,0)
ArmWeld.C0 = ArmWeld.C0 - Vector3.new(-0.04,0.06,0.03)
ArmWeldR.C0 = ArmWeldR.C0 * CFrame.Angles(-math.pi/10/2,0.05,-0.1)
ArmWeldR.C0 = ArmWeldR.C0 + Vector3.new(-0.12,-0.05,0.05)
end
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
for i = 1,10 do wait()
ArmWeld.C0 = ArmWeld.C0 * CFrame.Angles(-math.pi/10/2/2,0,0)
ArmWeld.C0 = ArmWeld.C0 + Vector3.new(0,0,0.05)
end
EndBlah = true
end
end

if key == "r" then
Reload()
end

Blah = true
return
end
end


function Selected(Mouse) 
	Mouse.Icon = "rbxasset://textures\\GunCursor.png"
	Mouse.KeyDown:connect(onKeyDown)
	Mouse.Button1Down:connect(function()Clicked(Mouse)end) 
end 

function Deselected(Mouse)
end

function Dead()
end

Character.Humanoid.Died:connect(Dead)
Hopper.Selected:connect(Selected)
Hopper.Deselected:connect(Deselected) 
