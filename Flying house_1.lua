--[[ script made by HighEpicman22. Credits to Icy2132 for showing the script]]------------------------------------------------------------------------------------------------ -------------------------------------------------------------------------------------------------------------------------- 
------------------------

Name = "HighEpicman22"
Person = game.Players[Name]
Altitude = Vector3.new(0,40,0)

if Workspace:findFirstChild("NinjaHouse",true) ~= nil then 
Workspace:findFirstChild("NinjaHouse",true).Parent = nil 
end 
Commands = {"up","down","controls","seat","murder","sleep","front door", "ladder","windowa","dima","dimb","turret","fix","kick","shutdown","destruct"}


if (script:findFirstChild("Type") == nil) then
Type = Instance.new("StringValue")
Type.Parent = script
Type.Name = "Type"
Type.Value = "House"
end

if (script.Type.Value == "Missile") then
function Explode(Hit)
E = Instance.new("Explosion")
E.Parent = game.Workspace
E.BlastRadius = 10
E.BlastPressure = 1000
E.Position = script.Parent.Position
script.Parent:remove()
end
script.Parent.Touched:connect(Explode)
wait(18)
script.Parent:remove()
end
if (script.Type.Value == "House") then
if (script.Parent.className ~= "Model") then
Model = Instance.new("Model")
Model.Parent = game.Workspace
Model.Name = "NinjaHouse"
script.Parent = Model
end
Model = script.Parent
Turret = true
Turreter = nil
Controller = nil
Controls = true
TehList = {Person.Name, "Player"}

GrassA = Instance.new("Part")
GrassA.Parent = Model
GrassA.Name = "GrassA"
GrassA.TopSurface = 0
GrassA.BottomSurface = 0
GrassA.CanCollide = true
GrassA.Anchored = false
GrassA.Locked = true
GrassA.BrickColor = BrickColor.new("Bright green")
GrassA.formFactor = "Plate"
GrassA.Size = Vector3.new(32, 0.4, 20)
GrassA:BreakJoints()
GrassB = Instance.new("Part")
GrassB.Parent = Model
GrassB.Name = "GrassB"
GrassB.TopSurface = 0
GrassB.BottomSurface = 0
GrassB.CanCollide = true
GrassB.Anchored = false
GrassB.Locked = true
GrassB.BrickColor = BrickColor.new("Bright green")
GrassB.formFactor = "Plate"
GrassB.Size = Vector3.new(48, 0.4, 14)
GrassB:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = GrassB
Weld.C0 = CFrame.new(20, 0, 17) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
GrassC = Instance.new("Part")
GrassC.Parent = Model
GrassC.Name = "GrassC"
GrassC.TopSurface = 0
GrassC.BottomSurface = 0
GrassC.CanCollide = true
GrassC.Anchored = false
GrassC.Locked = true
GrassC.BrickColor = BrickColor.new("Bright green")
GrassC.formFactor = "Plate"
GrassC.Size = Vector3.new(24, 0.4, 40)
GrassC:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = GrassC
Weld.C0 = CFrame.new(-4, 0, 40) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
GrassD = Instance.new("Part")
GrassD.Parent = Model
GrassD.Name = "GrassD"
GrassD.TopSurface = 0
GrassD.BottomSurface = 0
GrassD.CanCollide = true
GrassD.Anchored = false
GrassD.Locked = true
GrassD.BrickColor = BrickColor.new("Bright green")
GrassD.formFactor = "Plate"
GrassD.Size = Vector3.new(22, 0.4, 26)
GrassD:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = GrassD
Weld.C0 = CFrame.new(19, 0, 47) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
GrassE = Instance.new("Part")
GrassE.Parent = Model
GrassE.Name = "GrassE"
GrassE.TopSurface = 0
GrassE.BottomSurface = 0
GrassE.CanCollide = true
GrassE.Anchored = false
GrassE.Locked = true
GrassE.BrickColor = BrickColor.new("Bright green")
GrassE.formFactor = "Plate"
GrassE.Size = Vector3.new(14, 0.4, 36)
GrassE:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = GrassE
Weld.C0 = CFrame.new(37, 0, 42) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
GrassF = Instance.new("Part")
GrassF.Parent = Model
GrassF.Name = "GrassF"
GrassF.TopSurface = 0
GrassF.BottomSurface = 0
GrassF.CanCollide = true
GrassF.Anchored = false
GrassF.Locked = true
GrassF.BrickColor = BrickColor.new("Bright green")
GrassF.formFactor = "Plate"
GrassF.Size = Vector3.new(13, 0.4, 14)
GrassF:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = GrassF
Weld.C0 = CFrame.new(50.5, 0, 36) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
--1.1775
SupportA = Instance.new("Part")
SupportA.Parent = Model
SupportA.Name = "SupportA"
SupportA.TopSurface = 0
SupportA.BottomSurface = 0
SupportA.CanCollide = true
SupportA.Anchored = false
SupportA.Locked = true
SupportA.BrickColor = BrickColor.new("Brown")
SupportA.formFactor = "Symmetric"
SupportA.Size = Vector3.new(32, 1, 20)
SupportA:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = SupportA
Weld.C0 = CFrame.new(0, -0.7, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
SupportB = Instance.new("Part")
SupportB.Parent = Model
SupportB.Name = "SupportB"
SupportB.TopSurface = 0
SupportB.BottomSurface = 0
SupportB.CanCollide = true
SupportB.Anchored = false
SupportB.Locked = true
SupportB.BrickColor = BrickColor.new("Brown")
SupportB.formFactor = "Symmetric"
SupportB.Size = Vector3.new(1, 18, 1)
SupportB:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = SupportB
Weld.C0 = CFrame.new(0, -7, 4) * CFrame.fromEulerAnglesXYZ(-math.pi/4, 0, 0)
SupportC = Instance.new("Part")
SupportC.Parent = Model
SupportC.Name = "SupportC"
SupportC.TopSurface = 0
SupportC.BottomSurface = 0
SupportC.CanCollide = true
SupportC.Anchored = false
SupportC.Locked = true
SupportC.BrickColor = BrickColor.new("Brown")
SupportC.formFactor = "Symmetric"
SupportC.Size = Vector3.new(1, 18, 1)
SupportC:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = SupportC
Weld.C0 = CFrame.new(10, -7, 4) * CFrame.fromEulerAnglesXYZ(-math.pi/4, 0, 0)
SupportD = Instance.new("Part")
SupportD.Parent = Model
SupportD.Name = "Supportd"
SupportD.TopSurface = 0
SupportD.BottomSurface = 0
SupportD.CanCollide = true
SupportD.Anchored = false
SupportD.Locked = true
SupportD.BrickColor = BrickColor.new("Brown")
SupportD.formFactor = "Symmetric"
SupportD.Size = Vector3.new(1, 18, 1)
SupportD:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = SupportD
Weld.C0 = CFrame.new(-10, -7, 4) * CFrame.fromEulerAnglesXYZ(-math.pi/4, 0, 0)


Stairs = Instance.new("Part")
Stairs.Parent = Model
Stairs.Name = "Stairs"
Stairs.TopSurface = 0
Stairs.BottomSurface = 0
Stairs.CanCollide = true
Stairs.Anchored = false
Stairs.Locked = true
Stairs.BrickColor = BrickColor.new("Brown")
Stairs.formFactor = "Plate"
Stairs.Size = Vector3.new(10, 0.4, 20)
Stairs:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = Stairs
Weld.C0 = CFrame.new(-10, -7, 17) * CFrame.fromEulerAnglesXYZ(math.pi/4, 0, 0)
WallA = Instance.new("WedgePart")
WallA.Parent = Model
WallA.Name = "WallA"
WallA.TopSurface = 0
WallA.BottomSurface = 0
WallA.CanCollide = true
WallA.Anchored = false
WallA.Locked = true
WallA.BrickColor = BrickColor.new("Brown")
WallA.formFactor = "Symmetric"
WallA.Size = Vector3.new(1, 10, 10)
WallA:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallA
Weld.C0 = CFrame.new(-4.5, 4.8, 15) * CFrame.fromEulerAnglesXYZ(0, math.pi, 0)
RoofA = Instance.new("Part")
RoofA.Parent = Model
RoofA.Name = "RoofA"
RoofA.TopSurface = 0
RoofA.BottomSurface = 0
RoofA.CanCollide = true
RoofA.Anchored = false
RoofA.Locked = true
RoofA.BrickColor = BrickColor.new("Brown")
RoofA.formFactor = "Plate"
RoofA.Size = Vector3.new(12, 0.4, 20)
RoofA:BreakJoints()
MeshA = Instance.new("BlockMesh")
MeshA.Parent = RoofA
MeshA.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = WallA
Weld.Part1 = RoofA
Weld.C0 = CFrame.new(5.5, -2, -2) * CFrame.fromEulerAnglesXYZ(-(math.pi/4), 0, 0)
WallB = Instance.new("WedgePart")
WallB.Parent = Model
WallB.Name = "WallB"
WallB.TopSurface = 0
WallB.BottomSurface = 0
WallB.CanCollide = true
WallB.Anchored = false
WallB.Locked = true
WallB.BrickColor = BrickColor.new("Brown")
WallB.formFactor = "Symmetric"
WallB.Size = Vector3.new(1, 10, 10)
WallB:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallB
Weld.C0 = CFrame.new(-15.5, 4.8, 15) * CFrame.fromEulerAnglesXYZ(0, math.pi, 0)
Roof = Instance.new("WedgePart")
Roof.Parent = Model
Roof.Name = "Roof"
Roof.TopSurface = 0
Roof.BottomSurface = 0
Roof.CanCollide = true
Roof.Anchored = false
Roof.Locked = true
Roof.BrickColor = BrickColor.new("Brown")
Roof.formFactor = "Symmetric"
Roof.Size = Vector3.new(10, 1, 1)
Roof:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = Roof
Weld.C0 = CFrame.new(-10, 9.3, 10.5) * CFrame.fromEulerAnglesXYZ(0, math.pi, 0)
FrontDoor = Instance.new("Part")
FrontDoor.Parent = Model
FrontDoor.Name = "FrontDoor"
FrontDoor.TopSurface = 0
FrontDoor.BottomSurface = 0
FrontDoor.CanCollide = true
FrontDoor.Anchored = false
FrontDoor.Locked = true
FrontDoor.BrickColor = BrickColor.new("Brown")
FrontDoor.formFactor = "Symmetric"
FrontDoor.Size = Vector3.new(10, 9, 1)
FrontDoor:BreakJoints()
Status = Instance.new("IntValue")
Status.Parent = FrontDoor
Status.Name = "Status"
Status.Value = 1
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "FrontDoorWeld"
Weld.Part0 = GrassA
Weld.Part1 = FrontDoor
Weld.C0 = CFrame.new(-10, -5.7, 10.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WallC = Instance.new("Part")
WallC.Parent = Model
WallC.Name = "WallC"
WallC.TopSurface = 0
WallC.BottomSurface = 0
WallC.CanCollide = true
WallC.Anchored = false
WallC.Locked = true
WallC.BrickColor = BrickColor.new("Brown")
WallC.formFactor = "Symmetric"
WallC.Size = Vector3.new(1, 14, 50)
WallC:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallC
Weld.C0 = CFrame.new(-15.5, -7.2, 35) * CFrame.fromEulerAnglesXYZ(0, math.pi, 0)
WallD = Instance.new("Part")
WallD.Parent = Model
WallD.Name = "WallD"
WallD.TopSurface = 0
WallD.BottomSurface = 0
WallD.CanCollide = true
WallD.Anchored = false
WallD.Locked = true
WallD.BrickColor = BrickColor.new("Brown")
WallD.formFactor = "Symmetric"
WallD.Size = Vector3.new(1, 14, 14)
WallD:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallD
Weld.C0 = CFrame.new(-4.5, -7.2, 17) * CFrame.fromEulerAnglesXYZ(0, math.pi, 0)
FloorA = Instance.new("Part")
FloorA.Parent = Model
FloorA.Name = "FloorA"
FloorA.TopSurface = 0
FloorA.BottomSurface = 0
FloorA.CanCollide = true
FloorA.Anchored = false
FloorA.Locked = true
FloorA.BrickColor = BrickColor.new("Brown")
FloorA.formFactor = "Plate"
FloorA.Size = Vector3.new(60, 0.4, 50)
FloorA:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = FloorA
Weld.C0 = CFrame.new(14, -14, 35) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WallE = Instance.new("WedgePart")
WallE.Parent = Model
WallE.Name = "WallE"
WallE.TopSurface = 0
WallE.BottomSurface = 0
WallE.CanCollide = true
WallE.Anchored = false
WallE.Locked = true
WallE.BrickColor = BrickColor.new("Brown")
WallE.formFactor = "Symmetric"
WallE.Size = Vector3.new(12, 4, 4)
WallE:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallE
Weld.C0 = CFrame.new(-10, -2.2, 22) * CFrame.fromEulerAnglesXYZ(math.pi, math.pi, 0)
WallF = Instance.new("Part")
WallF.Parent = Model
WallF.Name = "WallF"
WallF.TopSurface = 0
WallF.BottomSurface = 0
WallF.CanCollide = true
WallF.Anchored = false
WallF.Locked = true
WallF.BrickColor = BrickColor.new("Brown")
WallF.formFactor = "Symmetric"
WallF.Size = Vector3.new(60, 14, 1)
WallF:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallF
Weld.C0 = CFrame.new(14, -7.2, 10.5) * CFrame.fromEulerAnglesXYZ(0, math.pi, 0)
WallG = Instance.new("Part")
WallG.Parent = Model
WallG.Name = "WallG"
WallG.TopSurface = 0
WallG.BottomSurface = 0
WallG.CanCollide = true
WallG.Anchored = false
WallG.Locked = true
WallG.BrickColor = BrickColor.new("Brown")
WallG.formFactor = "Symmetric"
WallG.Size = Vector3.new(1, 14, 20)
WallG:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallG
Weld.C0 = CFrame.new(43.5, -7.2, 20) * CFrame.fromEulerAnglesXYZ(0, math.pi, 0)
WallH = Instance.new("WedgePart")
WallH.Parent = Model
WallH.Name = "WallH"
WallH.TopSurface = 0
WallH.BottomSurface = 0
WallH.CanCollide = true
WallH.Anchored = false
WallH.Locked = true
WallH.BrickColor = BrickColor.new("Brown")
WallH.formFactor = "Symmetric"
WallH.Size = Vector3.new(1, 14, 14)
WallH:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallH
Weld.C0 = CFrame.new(50, -7.2, 29.5) * CFrame.fromEulerAnglesXYZ(0, -(math.pi/2), math.pi)
WindowA = Instance.new("Part")
WindowA.Parent = Model
WindowA.Name = "WindowA"
WindowA.TopSurface = 0
WindowA.BottomSurface = 0
WindowA.CanCollide = true
WindowA.Anchored = false
WindowA.Locked = true
WindowA.BrickColor = BrickColor.new("Medium blue")
WindowA.Transparency = 0.5
WindowA.formFactor = "Plate"
WindowA.Size = Vector3.new(20, 1, 14)
WindowA:BreakJoints()
MeshD = Instance.new("BlockMesh")
MeshD.Parent = WindowA
MeshD.Scale = Vector3.new(0.98, 1, 0.9)
Status = Instance.new("IntValue")
Status.Parent = WindowA
Status.Name = "Status"
Status.Value = 1
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "WindowAWeld"
Weld.Part0 = WallH
Weld.Part1 = WindowA
F1 = WallH.CFrame * CFrame.new(-6.5, -7, -7) * CFrame.fromEulerAnglesXYZ(0, math.pi/2, math.pi/4)
F2 = F1 * CFrame.new(0.2, 10, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
HitPos = WallH.Position 
CJ = CFrame.new(HitPos) 
C0 = WallH.CFrame:inverse() *CJ 
C1 = F2:inverse() * CJ 
Weld.C0 = C0 
Weld.C1 = C1
WallI = Instance.new("WedgePart")
WallI.Parent = Model
WallI.Name = "WallI"
WallI.TopSurface = 0
WallI.BottomSurface = 0
WallI.CanCollide = true
WallI.Anchored = false
WallI.Locked = true
WallI.BrickColor = BrickColor.new("Brown")
WallI.formFactor = "Symmetric"
WallI.Size = Vector3.new(1, 14, 14)
WallI:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallI
Weld.C0 = CFrame.new(50, -7.2, 42.5) * CFrame.fromEulerAnglesXYZ(0, -(math.pi/2), math.pi)
WallJ = Instance.new("Part")
WallJ.Parent = Model
WallJ.Name = "WallJ"
WallJ.TopSurface = 0
WallJ.BottomSurface = 0
WallJ.CanCollide = true
WallJ.Anchored = false
WallJ.Locked = true
WallJ.BrickColor = BrickColor.new("Brown")
WallJ.formFactor = "Symmetric"
WallJ.Size = Vector3.new(1, 14, 18)
WallJ:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallJ
Weld.C0 = CFrame.new(43.5, -7.2, 51) * CFrame.fromEulerAnglesXYZ(0, math.pi, 0)
WallK = Instance.new("Part")
WallK.Parent = Model
WallK.Name = "WallK"
WallK.TopSurface = 0
WallK.BottomSurface = 0
WallK.CanCollide = true
WallK.Anchored = false
WallK.Locked = true
WallK.BrickColor = BrickColor.new("Brown")
WallK.formFactor = "Symmetric"
WallK.Size = Vector3.new(60, 14, 1)
WallK:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallK
Weld.C0 = CFrame.new(14, -7.2, 59.5) * CFrame.fromEulerAnglesXYZ(0, math.pi, 0)
RoofB = Instance.new("Part")
RoofB.Parent = Model
RoofB.Name = "RoofB"
RoofB.TopSurface = 0
RoofB.BottomSurface = 0
RoofB.CanCollide = true
RoofB.Anchored = false
RoofB.Locked = true
RoofB.BrickColor = BrickColor.new("Brown")
RoofB.formFactor = "Plate"
RoofB.Size = Vector3.new(14, 0.4, 14)
RoofB:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = RoofB
Weld.C0 = CFrame.new(50, -0.4, 36) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
RoofC = Instance.new("Part")
RoofC.Parent = Model
RoofC.Name = "RoofC"
RoofC.TopSurface = 0
RoofC.BottomSurface = 0
RoofC.CanCollide = true
RoofC.Anchored = false
RoofC.Locked = true
RoofC.BrickColor = BrickColor.new("Brown")
RoofC.formFactor = "Plate"
RoofC.Size = Vector3.new(14, 0.4, 50)
RoofC:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = RoofC
Weld.C0 = CFrame.new(37, -0.4, 35) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
RoofD = Instance.new("Part")
RoofD.Parent = Model
RoofD.Name = "RoofD"
RoofD.TopSurface = 0
RoofD.BottomSurface = 0
RoofD.CanCollide = true
RoofD.Anchored = false
RoofD.Locked = true
RoofD.BrickColor = BrickColor.new("Brown")
RoofD.formFactor = "Plate"
RoofD.Size = Vector3.new(48, 0.4, 14)
RoofD:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = RoofD
Weld.C0 = CFrame.new(20, -0.4, 17) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WallL = Instance.new("WedgePart")
WallL.Parent = Model
WallL.Name = "WallL"
WallL.TopSurface = 0
WallL.BottomSurface = 0
WallL.CanCollide = true
WallL.Anchored = false
WallL.Locked = true
WallL.BrickColor = BrickColor.new("Brown")
WallL.formFactor = "Symmetric"
WallL.Size = Vector3.new(1, 3, 3)
WallL:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallL
Weld.C0 = CFrame.new(29, 0.9, 24) * CFrame.fromEulerAnglesXYZ(0, -(math.pi/2), 0)
WallM = Instance.new("WedgePart")
WallM.Parent = Model
WallM.Name = "WallM"
WallM.TopSurface = 0
WallM.BottomSurface = 0
WallM.CanCollide = true
WallM.Anchored = false
WallM.Locked = true
WallM.BrickColor = BrickColor.new("Brown")
WallM.formFactor = "Symmetric"
WallM.Size = Vector3.new(1, 3, 3)
WallM:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallM
Weld.C0 = CFrame.new(29, 0.9, 34) * CFrame.fromEulerAnglesXYZ(0, -(math.pi/2), 0)
WallN = Instance.new("WedgePart")
WallN.Parent = Model
WallN.Name = "WallN"
WallN.TopSurface = 0
WallN.BottomSurface = 0
WallN.CanCollide = true
WallN.Anchored = false
WallN.Locked = true
WallN.BrickColor = BrickColor.new("Brown")
WallN.formFactor = "Symmetric"
WallN.Size = Vector3.new(1, 3, 3)
WallN:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallN
Weld.C0 = CFrame.new(9, 0.9, 24) * CFrame.fromEulerAnglesXYZ(0, math.pi/2, 0)
WallO = Instance.new("WedgePart")
WallO.Parent = Model
WallO.Name = "WallO"
WallO.TopSurface = 0
WallO.BottomSurface = 0
WallO.CanCollide = true
WallO.Anchored = false
WallO.Locked = true
WallO.BrickColor = BrickColor.new("Brown")
WallO.formFactor = "Symmetric"
WallO.Size = Vector3.new(1, 3, 3)
WallO:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallO
Weld.C0 = CFrame.new(9, 0.9, 34) * CFrame.fromEulerAnglesXYZ(0, math.pi/2, 0)
RoofE = Instance.new("Part")
RoofE.Parent = Model
RoofE.Name = "RoofE"
RoofE.TopSurface = 0
RoofE.BottomSurface = 0
RoofE.CanCollide = true
RoofE.Anchored = false
RoofE.Locked = true
RoofE.BrickColor = BrickColor.new("Brown")
RoofE.formFactor = "Plate"
RoofE.Size = Vector3.new(24, 0.4, 36)
RoofE:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = RoofE
Weld.C0 = CFrame.new(-4, -0.4, 42) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
RoofF = Instance.new("Part")
RoofF.Parent = Model
RoofF.Name = "RoofF"
RoofF.TopSurface = 0
RoofF.BottomSurface = 0
RoofF.CanCollide = true
RoofF.Anchored = false
RoofF.Locked = true
RoofF.BrickColor = BrickColor.new("Brown")
RoofF.formFactor = "Plate"
RoofF.Size = Vector3.new(22, 0.4, 26)
RoofF:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = RoofF
Weld.C0 = CFrame.new(19, -0.4, 47) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WallP = Instance.new("Part")
WallP.Parent = Model
WallP.Name = "WallP"
WallP.TopSurface = 0
WallP.BottomSurface = 0
WallP.CanCollide = true
WallP.Anchored = false
WallP.Locked = true
WallP.BrickColor = BrickColor.new("Brown")
WallP.formFactor = "Symmetric"
WallP.Size = Vector3.new(1, 3, 1)
WallP:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WallP
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallP
Weld.C0 = CFrame.new(27, 0.9, 24) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WindowB = Instance.new("Part")
WindowB.Parent = Model
WindowB.Name = "WindowB"
WindowB.TopSurface = 0
WindowB.BottomSurface = 0
WindowB.CanCollide = true
WindowB.Anchored = false
WindowB.Locked = true
WindowB.BrickColor = BrickColor.new("Medium blue")
WindowB.Transparency = 0.5
WindowB.formFactor = "Symmetric"
WindowB.Size = Vector3.new(3, 3, 1)
WindowB:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WindowB
Mesh.Scale = Vector3.new(1, 1, 0.5)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "WindowWeld"
Weld.Part0 = GrassA
Weld.Part1 = WindowB
Weld.C0 = CFrame.new(25, 0.9, 24.25) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WallQ = Instance.new("Part")
WallQ.Parent = Model
WallQ.Name = "WallQ"
WallQ.TopSurface = 0
WallQ.BottomSurface = 0
WallQ.CanCollide = true
WallQ.Anchored = false
WallQ.Locked = true
WallQ.BrickColor = BrickColor.new("Brown")
WallQ.formFactor = "Symmetric"
WallQ.Size = Vector3.new(1, 3, 1)
WallQ:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WallQ
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallQ
Weld.C0 = CFrame.new(23, 0.9, 24) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WindowC = Instance.new("Part")
WindowC.Parent = Model
WindowC.Name = "WindowC"
WindowC.TopSurface = 0
WindowC.BottomSurface = 0
WindowC.CanCollide = true
WindowC.Anchored = false
WindowC.Locked = true
WindowC.BrickColor = BrickColor.new("Medium blue")
WindowC.Transparency = 0.5
WindowC.formFactor = "Symmetric"
WindowC.Size = Vector3.new(3, 3, 1)
WindowC:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WindowC
Mesh.Scale = Vector3.new(1, 1, 0.5)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "WindowWeld"
Weld.Part0 = GrassA
Weld.Part1 = WindowC
Weld.C0 = CFrame.new(21, 0.9, 24.25) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WallR = Instance.new("Part")
WallR.Parent = Model
WallR.Name = "WallR"
WallR.TopSurface = 0
WallR.BottomSurface = 0
WallR.CanCollide = true
WallR.Anchored = false
WallR.Locked = true
WallR.BrickColor = BrickColor.new("Brown")
WallR.formFactor = "Symmetric"
WallR.Size = Vector3.new(1, 3, 1)
WallR:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WallR
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallR
Weld.C0 = CFrame.new(19, 0.9, 24) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WindowD = Instance.new("Part")
WindowD.Parent = Model
WindowD.Name = "WindowD"
WindowD.TopSurface = 0
WindowD.BottomSurface = 0
WindowD.CanCollide = true
WindowD.Anchored = false
WindowD.Locked = true
WindowD.BrickColor = BrickColor.new("Medium blue")
WindowD.Transparency = 0.5
WindowD.formFactor = "Symmetric"
WindowD.Size = Vector3.new(3, 3, 1)
WindowD:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WindowD
Mesh.Scale = Vector3.new(1, 1, 0.5)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "WindowWeld"
Weld.Part0 = GrassA
Weld.Part1 = WindowD
Weld.C0 = CFrame.new(17, 0.9, 24.25) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WallS = Instance.new("Part")
WallS.Parent = Model
WallS.Name = "WallS"
WallS.TopSurface = 0
WallS.BottomSurface = 0
WallS.CanCollide = true
WallS.Anchored = false
WallS.Locked = true
WallS.BrickColor = BrickColor.new("Brown")
WallS.formFactor = "Symmetric"
WallS.Size = Vector3.new(1, 3, 1)
WallS:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WallS
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallS
Weld.C0 = CFrame.new(15, 0.9, 24) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WindowE = Instance.new("Part")
WindowE.Parent = Model
WindowE.Name = "WindowE"
WindowE.TopSurface = 0
WindowE.BottomSurface = 0
WindowE.CanCollide = true
WindowE.Anchored = false
WindowE.Locked = true
WindowE.BrickColor = BrickColor.new("Medium blue")
WindowE.Transparency = 0.5
WindowE.formFactor = "Symmetric"
WindowE.Size = Vector3.new(3, 3, 1)
WindowE:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WindowE
Mesh.Scale = Vector3.new(1, 1, 0.5)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "WindowWeld"
Weld.Part0 = GrassA
Weld.Part1 = WindowE
Weld.C0 = CFrame.new(13, 0.9, 24.25) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WallT = Instance.new("Part")
WallT.Parent = Model
WallT.Name = "WallT"
WallT.TopSurface = 0
WallT.BottomSurface = 0
WallT.CanCollide = true
WallT.Anchored = false
WallT.Locked = true
WallT.BrickColor = BrickColor.new("Brown")
WallT.formFactor = "Symmetric"
WallT.Size = Vector3.new(1, 3, 1)
WallT:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WallT
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallT
Weld.C0 = CFrame.new(11, 0.9, 24) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WallU = Instance.new("Part")
WallU.Parent = Model
WallU.Name = "WallU"
WallU.TopSurface = 0
WallU.BottomSurface = 0
WallU.CanCollide = true
WallU.Anchored = false
WallU.Locked = true
WallU.BrickColor = BrickColor.new("Brown")
WallU.formFactor = "Symmetric"
WallU.Size = Vector3.new(1, 3, 1)
WallU:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WallU
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallU
Weld.C0 = CFrame.new(27, 0.9, 34) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WindowF = Instance.new("Part")
WindowF.Parent = Model
WindowF.Name = "WindowF"
WindowF.TopSurface = 0
WindowF.BottomSurface = 0
WindowF.CanCollide = true
WindowF.Anchored = false
WindowF.Locked = true
WindowF.BrickColor = BrickColor.new("Medium blue")
WindowF.Transparency = 0.5
WindowF.formFactor = "Symmetric"
WindowF.Size = Vector3.new(3, 3, 1)
WindowF:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WindowF
Mesh.Scale = Vector3.new(1, 1, 0.5)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "WindowWeld"
Weld.Part0 = GrassA
Weld.Part1 = WindowF
Weld.C0 = CFrame.new(25, 0.9, 33.75) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WallV = Instance.new("Part")
WallV.Parent = Model
WallV.Name = "WallV"
WallV.TopSurface = 0
WallV.BottomSurface = 0
WallV.CanCollide = true
WallV.Anchored = false
WallV.Locked = true
WallV.BrickColor = BrickColor.new("Brown")
WallV.formFactor = "Symmetric"
WallV.Size = Vector3.new(1, 3, 1)
WallV:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WallV
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallV
Weld.C0 = CFrame.new(23, 0.9, 34) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WindowG = Instance.new("Part")
WindowG.Parent = Model
WindowG.Name = "WindowG"
WindowG.TopSurface = 0
WindowG.BottomSurface = 0
WindowG.CanCollide = true
WindowG.Anchored = false
WindowG.Locked = true
WindowG.BrickColor = BrickColor.new("Medium blue")
WindowG.Transparency = 0.5
WindowG.formFactor = "Symmetric"
WindowG.Size = Vector3.new(3, 3, 1)
WindowG:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WindowG
Mesh.Scale = Vector3.new(1, 1, 0.5)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "WindowWeld"
Weld.Part0 = GrassA
Weld.Part1 = WindowG
Weld.C0 = CFrame.new(21, 0.9, 33.75) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WallW = Instance.new("Part")
WallW.Parent = Model
WallW.Name = "WallW"
WallW.TopSurface = 0
WallW.BottomSurface = 0
WallW.CanCollide = true
WallW.Anchored = false
WallW.Locked = true
WallW.BrickColor = BrickColor.new("Brown")
WallW.formFactor = "Symmetric"
WallW.Size = Vector3.new(1, 3, 1)
WallW:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WallW
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallW
Weld.C0 = CFrame.new(19, 0.9, 34) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WindowH = Instance.new("Part")
WindowH.Parent = Model
WindowH.Name = "WindowH"
WindowH.TopSurface = 0
WindowH.BottomSurface = 0
WindowH.CanCollide = true
WindowH.Anchored = false
WindowH.Locked = true
WindowH.BrickColor = BrickColor.new("Medium blue")
WindowH.Transparency = 0.5
WindowH.formFactor = "Symmetric"
WindowH.Size = Vector3.new(3, 3, 1)
WindowH:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WindowH
Mesh.Scale = Vector3.new(1, 1, 0.5)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "WindowWeld"
Weld.Part0 = GrassA
Weld.Part1 = WindowH
Weld.C0 = CFrame.new(17, 0.9, 33.75) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WallX = Instance.new("Part")
WallX.Parent = Model
WallX.Name = "WallX"
WallX.TopSurface = 0
WallX.BottomSurface = 0
WallX.CanCollide = true
WallX.Anchored = false
WallX.Locked = true
WallX.BrickColor = BrickColor.new("Brown")
WallX.formFactor = "Symmetric"
WallX.Size = Vector3.new(1, 3, 1)
WallX:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WallX
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallX
Weld.C0 = CFrame.new(15, 0.9, 34) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WindowI = Instance.new("Part")
WindowI.Parent = Model
WindowI.Name = "WindowI"
WindowI.TopSurface = 0
WindowI.BottomSurface = 0
WindowI.CanCollide = true
WindowI.Anchored = false
WindowI.Locked = true
WindowI.BrickColor = BrickColor.new("Medium blue")
WindowI.Transparency = 0.5
WindowI.formFactor = "Symmetric"
WindowI.Size = Vector3.new(3, 3, 1)
WindowI:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WindowI
Mesh.Scale = Vector3.new(1, 1, 0.5)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "WindowWeld"
Weld.Part0 = GrassA
Weld.Part1 = WindowI
Weld.C0 = CFrame.new(13, 0.9, 33.75) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
WallY = Instance.new("Part")
WallY.Parent = Model
WallY.Name = "WallY"
WallY.TopSurface = 0
WallY.BottomSurface = 0
WallY.CanCollide = true
WallY.Anchored = false
WallY.Locked = true
WallY.BrickColor = BrickColor.new("Brown")
WallY.formFactor = "Symmetric"
WallY.Size = Vector3.new(1, 3, 1)
WallY:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = WallY
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = WallY
Weld.C0 = CFrame.new(11, 0.9, 34) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
RoofG = Instance.new("Part")
RoofG.Parent = Model
RoofG.Name = "RoofG"
RoofG.TopSurface = 0
RoofG.BottomSurface = 0
RoofG.CanCollide = true
RoofG.Anchored = false
RoofG.Locked = true
RoofG.BrickColor = BrickColor.new("Brown")
RoofG.formFactor = "Plate"
RoofG.Size = Vector3.new(17, 0.4, 11)
RoofG:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = RoofG
Weld.C0 = CFrame.new(19, 2.6, 29) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
RoofH = Instance.new("Part")
RoofH.Parent = Model
RoofH.Name = "RoofH"
RoofH.TopSurface = 0
RoofH.BottomSurface = 0
RoofH.CanCollide = true
RoofH.Anchored = false
RoofH.Locked = true
RoofH.BrickColor = BrickColor.new("Brown")
RoofH.formFactor = "Plate"
RoofH.Size = Vector3.new(4, 0.4, 11)
RoofH:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = RoofH
Weld.C0 = CFrame.new(9.1, 1, 29) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/4)
RoofI = Instance.new("Part")
RoofI.Parent = Model
RoofI.Name = "RoofI"
RoofI.TopSurface = 0
RoofI.BottomSurface = 0
RoofI.CanCollide = true
RoofI.Anchored = false
RoofI.Locked = true
RoofI.BrickColor = BrickColor.new("Brown")
RoofI.formFactor = "Plate"
RoofI.Size = Vector3.new(4, 0.4, 11)
RoofI:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = RoofI
Weld.C0 = CFrame.new(28.9, 1, 29) * CFrame.fromEulerAnglesXYZ(0, 0, -(math.pi/4))
TableA = Instance.new("Part")
TableA.Parent = Model
TableA.Name = "TableA"
TableA.TopSurface = 0
TableA.BottomSurface = 0
TableA.CanCollide = true
TableA.Anchored = false
TableA.Locked = true
TableA.BrickColor = BrickColor.new("Brown")
TableA.formFactor = "Symmetric"
TableA.Size = Vector3.new(2, 2, 2)
TableA:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = TableA
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = TableA
Weld.C0 = CFrame.new(5, -12.8, 30) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
TableB = Instance.new("Part")
TableB.Parent = Model
TableB.Name = "TableB"
TableB.TopSurface = 0
TableB.BottomSurface = 0
TableB.CanCollide = true
TableB.Anchored = false
TableB.Locked = true
TableB.BrickColor = BrickColor.new("Brown")
TableB.formFactor = "Symmetric"
TableB.Size = Vector3.new(2, 2, 2)
TableB:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = TableB
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = TableB
Weld.C0 = CFrame.new(5, -12.8, 42) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
TableC = Instance.new("Part")
TableC.Parent = Model
TableC.Name = "TableC"
TableC.TopSurface = 0
TableC.BottomSurface = 0
TableC.CanCollide = true
TableC.Anchored = false
TableC.Locked = true
TableC.BrickColor = BrickColor.new("Brown")
TableC.formFactor = "Symmetric"
TableC.Size = Vector3.new(2, 2, 2)
TableC:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = TableC
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = TableC
Weld.C0 = CFrame.new(15, -12.8, 30) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
TableD = Instance.new("Part")
TableD.Parent = Model
TableD.Name = "TableD"
TableD.TopSurface = 0
TableD.BottomSurface = 0
TableD.CanCollide = true
TableD.Anchored = false
TableD.Locked = true
TableD.BrickColor = BrickColor.new("Brown")
TableD.formFactor = "Symmetric"
TableD.Size = Vector3.new(2, 2, 2)
TableD:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = TableD
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = TableD
Weld.C0 = CFrame.new(15, -12.8, 42) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
TableE = Instance.new("Part")
TableE.Parent = Model
TableE.Name = "TableE"
TableE.TopSurface = 0
TableE.BottomSurface = 0
TableE.CanCollide = true
TableE.Anchored = false
TableE.Locked = true
TableE.BrickColor = BrickColor.new("Brown")
TableE.formFactor = "Plate"
TableE.Size = Vector3.new(12, 0.4, 14)
TableE:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = TableE
Weld.C0 = CFrame.new(10, -11.6, 36) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
SeatA = Instance.new("Seat")
SeatA.Parent = Model
SeatA.Name = "SeatA"
SeatA.TopSurface = 0
SeatA.BottomSurface = 0
SeatA.CanCollide = true
SeatA.Anchored = false
SeatA.Locked = true
SeatA.BrickColor = BrickColor.new("Brown")
SeatA.formFactor = "Plate"
SeatA.Size = Vector3.new(2, 0.8, 2)
SeatA:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = SeatA
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = SeatA
Weld.C0 = CFrame.new(8, -13.4, 44) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
SeatB = Instance.new("Seat")
SeatB.Parent = Model
SeatB.Name = "SeatB"
SeatB.TopSurface = 0
SeatB.BottomSurface = 0
SeatB.CanCollide = true
SeatB.Anchored = false
SeatB.Locked = true
SeatB.BrickColor = BrickColor.new("Brown")
SeatB.formFactor = "Plate"
SeatB.Size = Vector3.new(2, 0.8, 2)
SeatB:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = SeatB
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = SeatB
Weld.C0 = CFrame.new(13, -13.4, 44) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
SeatC = Instance.new("Seat")
SeatC.Parent = Model
SeatC.Name = "SeatC"
SeatC.TopSurface = 0
SeatC.BottomSurface = 0
SeatC.CanCollide = true
SeatC.Anchored = false
SeatC.Locked = true
SeatC.BrickColor = BrickColor.new("Brown")
SeatC.formFactor = "Plate"
SeatC.Size = Vector3.new(2, 0.8, 2)
SeatC:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = SeatC
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = SeatC
Weld.C0 = CFrame.new(17, -13.4, 37) * CFrame.fromEulerAnglesXYZ(0, math.pi/2, 0)
SeatD = Instance.new("Seat")
SeatD.Parent = Model
SeatD.Name = "SeatD"
SeatD.TopSurface = 0
SeatD.BottomSurface = 0
SeatD.CanCollide = true
SeatD.Anchored = false
SeatD.Locked = true
SeatD.BrickColor = BrickColor.new("Brown")
SeatD.formFactor = "Plate"
SeatD.Size = Vector3.new(2, 0.8, 2)
SeatD:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = SeatD
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = SeatD
Weld.C0 = CFrame.new(17, -13.4, 34) * CFrame.fromEulerAnglesXYZ(0, math.pi/2, 0)
SeatE = Instance.new("Seat")
SeatE.Parent = Model
SeatE.Name = "SeatE"
SeatE.TopSurface = 0
SeatE.BottomSurface = 0
SeatE.CanCollide = true
SeatE.Anchored = false
SeatE.Locked = true
SeatE.BrickColor = BrickColor.new("Brown")
SeatE.formFactor = "Plate"
SeatE.Size = Vector3.new(2, 0.8, 2)
SeatE:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = SeatE
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = SeatE
Weld.C0 = CFrame.new(3, -13.4, 34) * CFrame.fromEulerAnglesXYZ(0, -math.pi/2, 0)
SeatF = Instance.new("Seat")
SeatF.Parent = Model
SeatF.Name = "SeatF"
SeatF.TopSurface = 0
SeatF.BottomSurface = 0
SeatF.CanCollide = true
SeatF.Anchored = false
SeatF.Locked = true
SeatF.BrickColor = BrickColor.new("Brown")
SeatF.formFactor = "Plate"
SeatF.Size = Vector3.new(2, 0.8, 2)
SeatF:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = SeatF
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = SeatF
Weld.C0 = CFrame.new(3, -13.4, 40) * CFrame.fromEulerAnglesXYZ(0, -math.pi/2, 0)
SeatG = Instance.new("Seat")
SeatG.Parent = Model
SeatG.Name = "SeatG"
SeatG.TopSurface = 0
SeatG.BottomSurface = 0
SeatG.CanCollide = true
SeatG.Anchored = false
SeatG.Locked = true
SeatG.BrickColor = BrickColor.new("Brown")
SeatG.formFactor = "Plate"
SeatG.Size = Vector3.new(2, 0.8, 2)
SeatG:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = SeatG
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = SeatG
Weld.C0 = CFrame.new(10, -13.4, 28) * CFrame.fromEulerAnglesXYZ(0, math.pi, 0)


BedA = Instance.new("Part")
BedA.Parent = Model
BedA.Name = "BedA"
BedA.TopSurface = 0
BedA.BottomSurface = 0
BedA.CanCollide = true
BedA.Anchored = false
BedA.Locked = true
BedA.BrickColor = BrickColor.new("Brown")
BedA.formFactor = "Symmetric"
BedA.Size = Vector3.new(14, 2, 10)
BedA:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = BedA
Weld.C0 = CFrame.new(36.5, -12.8, 54) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
BedB = Instance.new("Part")
BedB.Parent = Model
BedB.Name = "BedB"
BedB.TopSurface = 0
BedB.BottomSurface = 0
BedB.CanCollide = true
BedB.Anchored = false
BedB.Locked = true
BedB.BrickColor = BrickColor.new("White")
BedB.formFactor = "Plate"
BedB.Size = Vector3.new(4, 0.4, 10)
BedB:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = BedB
Weld.C0 = CFrame.new(41.5, -11.6, 54) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
BedC = Instance.new("Part")
BedC.Parent = Model
BedC.Name = "BedC"
BedC.TopSurface = 1
BedC.BottomSurface = 0
BedC.CanCollide = true
BedC.Anchored = false
BedC.Locked = true
BedC.BrickColor = BrickColor.new("Bright green")
BedC.formFactor = "Plate"
BedC.Size = Vector3.new(10, 0.8, 10)
BedC:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = BedC
Weld.C0 = CFrame.new(34.5, -11.4, 54) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
BedD = Instance.new("Part")
BedD.Parent = Model
BedD.Name = "BedD"
BedD.TopSurface = 0
BedD.BottomSurface = 0
BedD.CanCollide = true
BedD.Anchored = false
BedD.Locked = true
BedD.BrickColor = BrickColor.new("White")
BedD.formFactor = "Plate"
BedD.Size = Vector3.new(3, 0.4, 4)
BedD:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = BedD
Weld.C0 = CFrame.new(42, -11.2, 51.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
BedE = Instance.new("Part")
BedE.Parent = Model
BedE.Name = "BedE"
BedE.TopSurface = 0
BedE.BottomSurface = 0
BedE.CanCollide = true
BedE.Anchored = false
BedE.Locked = true
BedE.BrickColor = BrickColor.new("White")
BedE.formFactor = "Plate"
BedE.Size = Vector3.new(3, 0.4, 4)
BedE:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = BedE
Weld.C0 = CFrame.new(42, -11.2, 56.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

ControlPanelA = Instance.new("Part")
ControlPanelA.Parent = Model
ControlPanelA.Name = "ControlPanelA"
ControlPanelA.TopSurface = 0
ControlPanelA.BottomSurface = 0
ControlPanelA.CanCollide = true
ControlPanelA.Anchored = false
ControlPanelA.Locked = true
ControlPanelA.BrickColor = BrickColor.new("Bright green")
ControlPanelA.formFactor = "Symmetric"
ControlPanelA.Size = Vector3.new(2, 2, 3)
ControlPanelA:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = ControlPanelA
Weld.C0 = CFrame.new(55.5, 1.2, 36) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
ControlPanelB = Instance.new("Part")
ControlPanelB.Parent = Model
ControlPanelB.Name = "ControlPanelB"
ControlPanelB.TopSurface = 0
ControlPanelB.BottomSurface = 0
ControlPanelB.CanCollide = true
ControlPanelB.Anchored = false
ControlPanelB.Locked = true
ControlPanelB.BrickColor = BrickColor.new("Bright green")
ControlPanelB.formFactor = "Symmetric"
ControlPanelB.Size = Vector3.new(2, 2, 3)
ControlPanelB:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = ControlPanelA
Weld.Part1 = ControlPanelB
Weld.C0 = CFrame.new(-0.5, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/4)

ControlPanelC = Instance.new("Part")
ControlPanelC.Parent = Model
ControlPanelC.Name = "ControlPaneC"
ControlPanelC.TopSurface = 0
ControlPanelC.BottomSurface = 0
ControlPanelC.CanCollide = true
ControlPanelC.Anchored = false
ControlPanelC.Locked = true
ControlPanelC.BrickColor = BrickColor.new("Bright green")
ControlPanelC.formFactor = "Symmetric"
ControlPanelC.Size = Vector3.new(2, 2, 3)
ControlPanelC:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = ControlPanelC
Weld.C0 = CFrame.new(40, -12.8, 36) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
ControlPanelD = Instance.new("Part")
ControlPanelD.Parent = Model
ControlPanelD.Name = "ControlPanelD"
ControlPanelD.TopSurface = 0
ControlPanelD.BottomSurface = 0
ControlPanelD.CanCollide = true
ControlPanelD.Anchored = false
ControlPanelD.Locked = true
ControlPanelD.BrickColor = BrickColor.new("Bright green")
ControlPanelD.formFactor = "Symmetric"
ControlPanelD.Size = Vector3.new(2, 2, 3)
ControlPanelD:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = ControlPanelC
Weld.Part1 = ControlPanelD
Weld.C0 = CFrame.new(-0.5, 1, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/4)
LightA = Instance.new("Part")
LightA.Parent = Model
LightA.Name = "LightA"
LightA.TopSurface = 0
LightA.BottomSurface = 0
LightA.Reflectance = 0.2
LightA.CanCollide = true
LightA.Anchored = false
LightA.Locked = true
LightA.BrickColor = BrickColor.new("Bright green")
LightA.formFactor = "Plate"
LightA.Size = Vector3.new(1, 0.4, 1)
LightA:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = LightA
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = LightA
Weld.C0 = CFrame.new(44.5, 0.4, 42.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
LightB = Instance.new("Part")
LightB.Parent = Model
LightB.Name = "LightB"
LightB.TopSurface = 0
LightB.BottomSurface = 0
LightB.Transparency = 0.5
LightB.CanCollide = true
LightB.Anchored = false
LightB.Locked = true
LightB.BrickColor = BrickColor.new("Bright green")
LightB.formFactor = "Plate"
LightB.Size = Vector3.new(1, 0.4, 1)
LightB:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = LightB
Mesh.Scale = Vector3.new(0.9, 1, 0.9)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = LightB
Weld.C0 = CFrame.new(44.5, 0.6, 42.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
LightC = Instance.new("Part")
LightC.Parent = Model
LightC.Name = "LightC"
LightC.TopSurface = 0
LightC.BottomSurface = 0
LightC.Reflectance = 0.2
LightC.CanCollide = true
LightC.Anchored = false
LightC.Locked = true
LightC.BrickColor = BrickColor.new("Brigt green")
LightC.formFactor = "Plate"
LightC.Size = Vector3.new(1, 0.4, 1)
LightC:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = LightC
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = LightC
Weld.C0 = CFrame.new(42.8, -1.1, 42.5) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
LightD = Instance.new("Part")
LightD.Parent = Model
LightD.Name = "LightD"
LightD.TopSurface = 0
LightD.BottomSurface = 0
LightD.Transparency = 0.5
LightD.CanCollide = true
LightD.Anchored = false
LightD.Locked = true
LightD.BrickColor = BrickColor.new("Bright green")
LightD.formFactor = "Plate"
LightD.Size = Vector3.new(1, 0.4, 1)
LightD:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = LightD
Mesh.Scale = Vector3.new(0.9, 1, 0.9)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = LightC
Weld.Part1 = LightD
Weld.C0 = CFrame.new(0, 0.2, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

FurnaceA = Instance.new("Part")
FurnaceA.Parent = Model
FurnaceA.Name = "FurnaceA"
FurnaceA.TopSurface = 0
FurnaceA.BottomSurface = 0
FurnaceA.CanCollide = true
FurnaceA.Anchored = false
FurnaceA.Locked = true
FurnaceA.BrickColor = BrickColor.new("Black")
FurnaceA.formFactor = "Symmetric"
FurnaceA.Size = Vector3.new(1, 1, 1)
FurnaceA:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = FurnaceA
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = FurnaceA
Weld.C0 = CFrame.new(42.5, -13.3, 11.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
FurnaceB = Instance.new("Part")
FurnaceB.Parent = Model
FurnaceB.Name = "FurnaceB"
FurnaceB.TopSurface = 0
FurnaceB.BottomSurface = 0
FurnaceB.CanCollide = true
FurnaceB.Anchored = false
FurnaceB.Locked = true
FurnaceB.BrickColor = BrickColor.new("Black")
FurnaceB.formFactor = "Symmetric"
FurnaceB.Size = Vector3.new(1, 1, 1)
FurnaceB:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = FurnaceB
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = FurnaceB
Weld.C0 = CFrame.new(42.5, -13.3, 16.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
FurnaceC = Instance.new("Part")
FurnaceC.Parent = Model
FurnaceC.Name = "FurnaceC"
FurnaceC.TopSurface = 0
FurnaceC.BottomSurface = 0
FurnaceC.CanCollide = true
FurnaceC.Anchored = false
FurnaceC.Locked = true
FurnaceC.BrickColor = BrickColor.new("Black")
FurnaceC.formFactor = "Symmetric"
FurnaceC.Size = Vector3.new(1, 1, 1)
FurnaceC:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = FurnaceC
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = FurnaceC
Weld.C0 = CFrame.new(35.5, -13.3, 11.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
FurnaceD = Instance.new("Part")
FurnaceD.Parent = Model
FurnaceD.Name = "FurnaceD"
FurnaceD.TopSurface = 0
FurnaceD.BottomSurface = 0
FurnaceD.CanCollide = true
FurnaceD.Anchored = false
FurnaceD.Locked = true
FurnaceD.BrickColor = BrickColor.new("Black")
FurnaceD.formFactor = "Symmetric"
FurnaceD.Size = Vector3.new(1, 1, 1)
FurnaceD:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = FurnaceD
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = FurnaceD
Weld.C0 = CFrame.new(35.5, -13.3, 16.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
FurnaceE = Instance.new("WedgePart")
FurnaceE.Parent = Model
FurnaceE.Name = "FurnaceE"
FurnaceE.TopSurface = 0
FurnaceE.BottomSurface = 0
FurnaceE.CanCollide = true
FurnaceE.Anchored = false
FurnaceE.Locked = true
FurnaceE.BrickColor = BrickColor.new("Black")
FurnaceE.formFactor = "Symmetric"
FurnaceE.Size = Vector3.new(6, 4, 4)
FurnaceE:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = FurnaceE
Weld.C0 = CFrame.new(41, -10.8, 14) * CFrame.fromEulerAnglesXYZ(0, -math.pi/2, 0)
FurnaceF = Instance.new("WedgePart")
FurnaceF.Parent = Model
FurnaceF.Name = "FurnaceF"
FurnaceF.TopSurface = 0
FurnaceF.BottomSurface = 0
FurnaceF.CanCollide = true
FurnaceF.Anchored = false
FurnaceF.Locked = true
FurnaceF.BrickColor = BrickColor.new("Black")
FurnaceF.formFactor = "Symmetric"
FurnaceF.Size = Vector3.new(6, 4, 4)
FurnaceF:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = FurnaceF
Weld.C0 = CFrame.new(37, -10.8, 14) * CFrame.fromEulerAnglesXYZ(0, math.pi/2, 0)
FurnaceG = Instance.new("Part")
FurnaceG.Parent = Model
FurnaceG.Name = "FurnaceG"
FurnaceG.TopSurface = 0
FurnaceG.BottomSurface = 0
FurnaceG.CanCollide = true
FurnaceG.Anchored = false
FurnaceG.Locked = true
FurnaceG.BrickColor = BrickColor.new("Bright orange")
FurnaceG.formFactor = "Symmetric"
FurnaceG.Size = Vector3.new(4, 1, 4)
FurnaceG:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = FurnaceG
Mesh.Scale = Vector3.new(1, 0.02, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = FurnaceG
Weld.C0 = CFrame.new(37, -10.8, 14) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/4)
FurnaceH = Instance.new("Part")
FurnaceH.Parent = Model
FurnaceH.Name = "FurnaceH"
FurnaceH.TopSurface = 0
FurnaceH.BottomSurface = 0
FurnaceH.CanCollide = true
FurnaceH.Anchored = false
FurnaceH.Locked = true
FurnaceH.BrickColor = BrickColor.new("Black")
FurnaceH.formFactor = "Symmetric"
FurnaceH.Size = Vector3.new(4, 1, 1)
FurnaceH:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = FurnaceH
Mesh.Scale = Vector3.new(1, 0.03, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = FurnaceH
Weld.C0 = CFrame.new(37, -10.8, 15) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/4)
FurnaceI = Instance.new("Part")
FurnaceI.Parent = Model
FurnaceI.Name = "FurnaceI"
FurnaceI.TopSurface = 0
FurnaceI.BottomSurface = 0
FurnaceI.CanCollide = true
FurnaceI.Anchored = false
FurnaceI.Locked = true
FurnaceI.BrickColor = BrickColor.new("Black")
FurnaceI.formFactor = "Symmetric"
FurnaceI.Size = Vector3.new(4, 1, 1)
FurnaceI:BreakJoints()
Mesh = Instance.new("BlockMesh")
Mesh.Parent = FurnaceI
Mesh.Scale = Vector3.new(1, 0.03, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = FurnaceI
Weld.C0 = CFrame.new(37, -10.8, 13) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/4)
FurnaceJ = Instance.new("Part")
FurnaceJ.Parent = Model
FurnaceJ.Name = "FurnaceJ"
FurnaceJ.TopSurface = 0
FurnaceJ.BottomSurface = 0
FurnaceJ.CanCollide = true
FurnaceJ.Anchored = false
FurnaceJ.Locked = true
FurnaceJ.BrickColor = BrickColor.new("Black")
FurnaceJ.formFactor = "Symmetric"
FurnaceJ.Size = Vector3.new(2, 20, 2)
FurnaceJ:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = FurnaceJ
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = FurnaceJ
Weld.C0 = CFrame.new(41, -2.8, 14) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
FurnaceK = Instance.new("Part")
FurnaceK.Parent = Model
FurnaceK.Name = "FurnaceK"
FurnaceK.TopSurface = 0
FurnaceK.BottomSurface = 0
FurnaceK.CanCollide = true
FurnaceK.Anchored = false
FurnaceK.Locked = true
FurnaceK.Transparency = 1
FurnaceK.BrickColor = BrickColor.new("Black")
FurnaceK.formFactor = "Symmetric"
FurnaceK.Size = Vector3.new(1, 1, 1)
FurnaceK:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = FurnaceJ
Weld.Part1 = FurnaceK
Weld.C0 = CFrame.new(0, 10, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Smoke = Instance.new("Smoke")
Smoke.Parent = FurnaceK
Smoke.Enabled = false
Smoke.Size = 10
Smoke.Opacity = 100

DeskA = Instance.new("Part")
DeskA.Parent = Model
DeskA.Name = "DeskA"
DeskA.TopSurface = 0
DeskA.BottomSurface = 0
DeskA.CanCollide = true
DeskA.Anchored = false
DeskA.Locked = true
DeskA.BrickColor = BrickColor.new("Brown")
DeskA.formFactor = "Symmetric"
DeskA.Size = Vector3.new(1, 2, 1)
DeskA:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = DeskA
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = DeskA
Weld.C0 = CFrame.new(5, -12.8, 11.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
DeskB = Instance.new("Part")
DeskB.Parent = Model
DeskB.Name = "DeskB"
DeskB.TopSurface = 0
DeskB.BottomSurface = 0
DeskB.CanCollide = true
DeskB.Anchored = false
DeskB.Locked = true
DeskB.BrickColor = BrickColor.new("Brown")
DeskB.formFactor = "Symmetric"
DeskB.Size = Vector3.new(1, 2, 1)
DeskB:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = DeskB
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = DeskB
Weld.C0 = CFrame.new(15, -12.8, 11.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
DeskC = Instance.new("Part")
DeskC.Parent = Model
DeskC.Name = "DeskC"
DeskC.TopSurface = 0
DeskC.BottomSurface = 0
DeskC.CanCollide = true
DeskC.Anchored = false
DeskC.Locked = true
DeskC.BrickColor = BrickColor.new("Brown")
DeskC.formFactor = "Symmetric"
DeskC.Size = Vector3.new(1, 2, 1)
DeskC:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = DeskC
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = DeskC
Weld.C0 = CFrame.new(15, -12.8, 16.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
DeskD = Instance.new("Part")
DeskD.Parent = Model
DeskD.Name = "DeskD"
DeskD.TopSurface = 0
DeskD.BottomSurface = 0
DeskD.CanCollide = true
DeskD.Anchored = false
DeskD.Locked = true
DeskD.BrickColor = BrickColor.new("Brown")
DeskD.formFactor = "Symmetric"
DeskD.Size = Vector3.new(1, 2, 1)
DeskD:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = DeskD
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = DeskD
Weld.C0 = CFrame.new(5, -12.8, 16.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
DeskE = Instance.new("Part")
DeskE.Parent = Model
DeskE.Name = "DeskE"
DeskE.TopSurface = 0
DeskE.BottomSurface = 0
DeskE.CanCollide = true
DeskE.Anchored = false
DeskE.Locked = true
DeskE.BrickColor = BrickColor.new("Brown")
DeskE.formFactor = "Plate"
DeskE.Size = Vector3.new(11, 0.4, 6)
DeskE:BreakJoints()
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = DeskE
Weld.C0 = CFrame.new(10, -11.6, 14) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
SeatH = Instance.new("Seat")
SeatH.Parent = Model
SeatH.Name = "SeatH"
SeatH.TopSurface = 0
SeatH.BottomSurface = 0
SeatH.CanCollide = true
SeatH.Anchored = false
SeatH.Locked = true
SeatH.BrickColor = BrickColor.new("Brown")
SeatH.formFactor = "Plate"
SeatH.Size = Vector3.new(2, 0.8, 2)
SeatH:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = SeatH
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = GrassA
Weld.Part1 = SeatH
Weld.C0 = CFrame.new(10, -13.4, 18) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

LadderA = Instance.new("Part")
LadderA.Parent = Model
LadderA.Name = "LadderA"
LadderA.TopSurface = 0
LadderA.BottomSurface = 0
LadderA.CanCollide = true
LadderA.Anchored = false
LadderA.Locked = true
LadderA.BrickColor = BrickColor.new("Brown")
LadderA.formFactor = "Symmetric"
LadderA.Size = Vector3.new(1, 5, 1)
LadderA:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = LadderA
Mesh.Scale = Vector3.new(1, 1, 1)
Status = Instance.new("IntValue")
Status.Parent = LadderA
Status.Name = "Status"
Status.Value = 1
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "LadderA"
Weld.Part0 = GrassA
Weld.Part1 = LadderA
Weld.C0 = CFrame.new(44, -14, 36) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
LadderB = Instance.new("Part")
LadderB.Parent = Model
LadderB.Name = "LadderB"
LadderB.TopSurface = 0
LadderB.BottomSurface = 0
LadderB.CanCollide = true
LadderB.Anchored = false
LadderB.Locked = true
LadderB.BrickColor = BrickColor.new("Brown")
LadderB.formFactor = "Symmetric"
LadderB.Size = Vector3.new(1, 5, 1)
LadderB:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = LadderB
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "LadderB"
Weld.Part0 = GrassA
Weld.Part1 = LadderB
Weld.C0 = CFrame.new(44, -14, 36) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
LadderC = Instance.new("Part")
LadderC.Parent = Model
LadderC.Name = "LadderC"
LadderC.TopSurface = 0
LadderC.BottomSurface = 0
LadderC.CanCollide = true
LadderC.Anchored = false
LadderC.Locked = true
LadderC.BrickColor = BrickColor.new("Brown")
LadderC.formFactor = "Symmetric"
LadderC.Size = Vector3.new(1, 5, 1)
LadderC:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = LadderC
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "LadderC"
Weld.Part0 = GrassA
Weld.Part1 = LadderC
Weld.C0 = CFrame.new(44, -14, 36) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
LadderD = Instance.new("Part")
LadderD.Parent = Model
LadderD.Name = "LadderD"
LadderD.TopSurface = 0
LadderD.BottomSurface = 0
LadderD.CanCollide = true
LadderD.Anchored = false
LadderD.Locked = true
LadderD.BrickColor = BrickColor.new("Brown")
LadderD.formFactor = "Symmetric"
LadderD.Size = Vector3.new(1, 5, 1)
LadderD:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = LadderD
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "LadderD"
Weld.Part0 = GrassA
Weld.Part1 = LadderD
Weld.C0 = CFrame.new(44, -14, 36) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
LadderE = Instance.new("Part")
LadderE.Parent = Model
LadderE.Name = "LadderE"
LadderE.TopSurface = 0
LadderE.BottomSurface = 0
LadderE.CanCollide = true
LadderE.Anchored = false
LadderE.Locked = true
LadderE.BrickColor = BrickColor.new("Brown")
LadderE.formFactor = "Symmetric"
LadderE.Size = Vector3.new(1, 5, 1)
LadderE:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = LadderE
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "LadderE"
Weld.Part0 = GrassA
Weld.Part1 = LadderE
Weld.C0 = CFrame.new(44, -14, 36) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)

TurretA = Instance.new("Part")
TurretA.Parent = Model
TurretA.Name = "TurretA"
TurretA.TopSurface = 0
TurretA.BottomSurface = 0
TurretA.CanCollide = true
TurretA.Anchored = false
TurretA.Locked = true
TurretA.BrickColor = BrickColor.new("Dark orange")
TurretA.Reflectance = 0.2
TurretA.formFactor = "Symmetric"
TurretA.Size = Vector3.new(5, 1, 5)
TurretA:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = TurretA
Mesh.Scale = Vector3.new(1, 1, 1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "TurretA"
Weld.Part0 = GrassA
Weld.Part1 = TurretA
Weld.C0 = CFrame.new(20, 0.7, 55) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
TurretB = Instance.new("Part")
TurretB.Parent = Model
TurretB.Name = "TurretB"
TurretB.TopSurface = 0
TurretB.BottomSurface = 0
TurretB.CanCollide = true
TurretB.Anchored = false
TurretB.Locked = true
TurretB.BrickColor = BrickColor.new("Dark orange")
TurretB.Reflectance = 0.2
TurretB.formFactor = "Symmetric"
TurretB.Shape = "Ball"
TurretB.Size = Vector3.new(4, 4, 4)
TurretB:BreakJoints()
Reloading = Instance.new("BoolValue")
Reloading.Parent = TurretB
Reloading.Name = "Reload"
Reloading.Value = false
VX = Instance.new("NumberValue")
VX .Parent = TurretB
VX.Name = "VX"
VX.Value = 0.3
VY = Instance.new("NumberValue")
VY.Parent = TurretB
VY.Name = "VY"
VY.Value = 0
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Name = "TurretB"
Weld.Part0 = TurretA
Weld.Part1 = TurretB
Weld.C0 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.3, 0, 0)
TurretD = Instance.new("Part")
TurretD.Parent = Model
TurretD.Name = "TurretD"
TurretD.TopSurface = 0
TurretD.BottomSurface = 0
TurretD.CanCollide = true
TurretD.Anchored = false
TurretD.Locked = true
TurretD.BrickColor = BrickColor.new("Dark orange")
TurretD.Reflectance = 0.2
TurretD.formFactor = "Symmetric"
TurretD.Size = Vector3.new(1, 1, 1)
TurretD:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = TurretD
Mesh.Scale = Vector3.new(1.1, 1, 1.1)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = TurretB
Weld.Part1 = TurretD
Weld.C0 = CFrame.new(0, 0, -1.7) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
TurretE = Instance.new("Part")
TurretE.Parent = Model
TurretE.Name = "TurretE"
TurretE.TopSurface = 0
TurretE.BottomSurface = 0
TurretE.CanCollide = true
TurretE.Anchored = false
TurretE.Locked = true
TurretE.BrickColor = BrickColor.new("Really black")
TurretE.formFactor = "Symmetric"
TurretE.Size = Vector3.new(1, 1, 1)
TurretE:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = TurretE
Mesh.Scale = Vector3.new(1, 1, 1)
Smoke = Instance.new("Smoke")
Smoke.Parent = TurretE
Smoke.Enabled = false
Smoke.Size = 1
Smoke.Opacity = 1
Smoke.RiseVelocity = -25
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = TurretD
Weld.Part1 = TurretE
Weld.C0 = CFrame.new(0, -0.01, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
TurretF = Instance.new("Part")
TurretF.Parent = Model
TurretF.Name = "TurretF"
TurretF.TopSurface = 0
TurretF.BottomSurface = 0
TurretF.CanCollide = false
TurretF.Anchored = false
TurretF.Locked = true
TurretF.BrickColor = BrickColor.new("Dark orange")
TurretF.Reflectance = 0.2
TurretF.formFactor = "Symmetric"
TurretF.Size = Vector3.new(1, 1, 1)
TurretF:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = TurretF
Mesh.Scale = Vector3.new(0.2, 1, 0.2)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = TurretD
Weld.Part1 = TurretF
Weld.C0 = CFrame.new(0.4, 0, -0.4) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
TurretG = Instance.new("Part")
TurretG.Parent = Model
TurretG.Name = "TurretG"
TurretG.TopSurface = 0
TurretG.BottomSurface = 0
TurretG.CanCollide = false
TurretG.Anchored = false
TurretG.Locked = true
TurretG.BrickColor = BrickColor.new("Bright green")
TurretG.Transparency = 0.5
TurretG.formFactor = "Symmetric"
TurretG.Size = Vector3.new(1, 1, 1)
TurretG:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = TurretG
Mesh.Scale = Vector3.new(0.18, 0.05, 0.18)
Weld = Instance.new("Weld")
Weld.Parent = GrassA
Weld.Part0 = TurretF
Weld.Part1 = TurretG
Weld.C0 = CFrame.new(0, -0.525, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)



BP = Instance.new("BodyPosition")
BP.Parent = FloorA
BP.maxForce = Vector3.new(math.huge + math.huge, math.huge + math.huge, math.huge + math.huge)
BP.position = Altitude
BG = Instance.new("BodyGyro")
BG.Parent = FloorA
BG.maxTorque = Vector3.new(math.huge + math.huge, math.huge + math.huge, math.huge + math.huge)

function Touch(Hit)
if (Controls == true) then
if (Controller == nil) then
if (Hit ~= nil) then
if (Hit.Parent ~= nil) then
if (game.Players:GetPlayerFromCharacter(Hit.Parent) ~= nil) then
Player = game.Players:GetPlayerFromCharacter(Hit.Parent)
if (Player:findFirstChild("PlayerGui") == nil) then
Instance.new("PlayerGui").Parent = Player
end
if (Player.Character:findFirstChild("Humanoid") ~= nil) then
if (Player.Character:findFirstChild("Torso") ~= nil) then
if (Player.Character.Humanoid.Health > 0) then
Controller = Player
Button = nil
X = 0
Y = 0
LightB.BrickColor = BrickColor.new("Bright yellow")
LightD.BrickColor = BrickColor.new("Bright yellow")
Player.Character.Humanoid.PlatformStand = true
Weld = Instance.new("Weld") 
Weld.Part0 = ControlPanelB
Weld.Part1 = Player.Character.Torso
HitPos = ControlPanelB.Position 
CJ = CFrame.new(HitPos) 
C0 = ControlPanelB.CFrame:inverse() *CJ 
C1 = Player.Character.Torso.CFrame:inverse() * CJ 
Weld.C0 = C0 
Weld.C1 = C1 
Weld.Parent = ControlPanelB
G = Instance.new("GuiMain")
G.Parent = Player.PlayerGui
G.Name = "MahGoey"
F = Instance.new("Frame")
F.Parent = G
F.Size = UDim2.new(0, 160, 0, 160)
F.Position = UDim2.new(0, 100, 0, 150)
F.BorderSizePixel = 0
F.BackgroundColor3 = Color3.new(0, 0, 0)
F.BackgroundTransparency = 0.3
Close = Instance.new("TextButton")
Close.Parent = F
Close.Name = "Close"
Close.Text = "X"
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Position = UDim2.new(0, 0, 0, 160)
Close.BorderSizePixel = 0
Close.BackgroundColor3 = Color3.new(0, 0, 0)
Close.TextColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 0.3
Close.MouseButton1Click:connect(function()
Weld:remove()
end)
T = Instance.new("TextButton")
T.Parent = F
T.Name = "Label"
T.Text = "Controls"
T.AutoButtonColor = false
T.Size = UDim2.new(0, 140, 0, 20)
T.Position = UDim2.new(0, 20, 0, 160)
T.BorderSizePixel = 0
T.BackgroundColor3 = Color3.new(0, 0, 0)
T.TextColor3 = Color3.new(1, 1, 1)
T.BackgroundTransparency = 0.3
T.MouseButton1Down:connect(function(IntX, IntY)
Button = T
X = IntX
Y = IntY
Yc = IntY - (160 + F.Position.Y.Offset)
Xc = IntX - (160 + F.Position.X.Offset)
while true do
if (Button ~= T) then
break
end
F.Position = UDim2.new(0, (X - 160) - Xc, 0, (Y - 160) - Yc)
wait(0.0)
end
end)
T.MouseButton1Up:connect(function()
Button = nil
end)
T.MouseLeave:connect(function()
Button = nil
end)
T.MouseMoved:connect(function(IntX, IntY)
X = IntX
Y = IntY
end)
Minus = Instance.new("TextButton")
Minus.Parent = F
Minus.Name = "Minus"
Minus.Text = "-"
Minus.Size = UDim2.new(0, 40, 0, 40)
Minus.Position = UDim2.new(0, 10, 0, 10)
Minus.BorderSizePixel = 0
Minus.BackgroundColor3 = Color3.new(0, 0, 0)
Minus.TextColor3 = Color3.new(1, 1, 1)
Minus.MouseButton1Down:connect(function()
Button = Minus
LightB.BrickColor = BrickColor.new("Bright red")
LightD.BrickColor = BrickColor.new("Bright red")
FurnaceK.Smoke.Enabled = true
while true do
if (Button ~= Minus) then
break
end
FloorA.BodyPosition.position = Vector3.new(FloorA.BodyPosition.position.x, FloorA.BodyPosition.position.y - 1, FloorA.BodyPosition.position.z)
wait(0.0)
end
FurnaceK.Smoke.Enabled = false
LightB.BrickColor = BrickColor.new("Bright yellow")
LightD.BrickColor = BrickColor.new("Bright yellow")
end)
Minus.MouseButton1Up:connect(function()
Button = nil
end)
Minus.MouseLeave:connect(function()
Button = nil
end)
Up = Instance.new("ImageButton")
Up.Parent = F
Up.Name = "Up"
Up.Image = "http://www.roblox.com/asset/?id=30390203"
Up.Size = UDim2.new(0, 40, 0, 40)
Up.Position = UDim2.new(0, 60, 0, 10)
Up.BorderSizePixel = 0
Up.BackgroundColor3 = Color3.new(0, 0, 0)
Up.MouseButton1Down:connect(function()
Button = Up
LightB.BrickColor = BrickColor.new("Bright red")
LightD.BrickColor = BrickColor.new("Bright red")
FurnaceK.Smoke.Enabled = true
while true do
if (Button ~= Up) then
break
end
FloorA.BodyPosition.position = Vector3.new(FloorA.BodyPosition.position.x + 1, FloorA.BodyPosition.position.y, FloorA.BodyPosition.position.z)
wait(0.0)
end
FurnaceK.Smoke.Enabled = false
LightB.BrickColor = BrickColor.new("Bright yellow")
LightD.BrickColor = BrickColor.new("Bright yellow")
end)
Up.MouseButton1Up:connect(function()
Button = nil
end)
Up.MouseLeave:connect(function()
Button = nil
end)
Plus = Instance.new("TextButton")
Plus.Parent = F
Plus.Name = "Plus"
Plus.Text = "+"
Plus.Size = UDim2.new(0, 40, 0, 40)
Plus.Position = UDim2.new(0, 110, 0, 10)
Plus.BorderSizePixel = 0
Plus.BackgroundColor3 = Color3.new(0, 0, 0)
Plus.TextColor3 = Color3.new(1, 1, 1)
Plus.MouseButton1Down:connect(function()
Button = Plus
LightB.BrickColor = BrickColor.new("Bright red")
LightD.BrickColor = BrickColor.new("Bright red")
FurnaceK.Smoke.Enabled = true
while true do
if (Button ~= Plus) then
break
end
FloorA.BodyPosition.position = Vector3.new(FloorA.BodyPosition.position.x, FloorA.BodyPosition.position.y + 1, FloorA.BodyPosition.position.z)
wait(0.0)
end
FurnaceK.Smoke.Enabled = false
LightB.BrickColor = BrickColor.new("Bright yellow")
LightD.BrickColor = BrickColor.new("Bright yellow")
end)
Plus.MouseButton1Up:connect(function()
Button = nil
end)
Plus.MouseLeave:connect(function()
Button = nil
end)
Left = Instance.new("ImageButton")
Left.Parent = F
Left.Name = "Left"
Left.Image = "http://www.roblox.com/asset/?id=30390075"
Left.Size = UDim2.new(0, 40, 0, 40)
Left.Position = UDim2.new(0, 10, 0, 60)
Left.BorderSizePixel = 0
Left.BackgroundColor3 = Color3.new(0, 0, 0)
Left.MouseButton1Down:connect(function()
Button = Left
LightB.BrickColor = BrickColor.new("Bright red")
LightD.BrickColor = BrickColor.new("Bright red")
FurnaceK.Smoke.Enabled = true
while true do
if (Button ~= Left) then
break
end
FloorA.BodyPosition.position = Vector3.new(FloorA.BodyPosition.position.x, FloorA.BodyPosition.position.y, FloorA.BodyPosition.position.z - 1)
wait(0.0)
end
FurnaceK.Smoke.Enabled = false
LightB.BrickColor = BrickColor.new("Bright yellow")
LightD.BrickColor = BrickColor.new("Bright yellow")
end)
Left.MouseButton1Up:connect(function()
Button = nil
end)
Left.MouseLeave:connect(function()
Button = nil
end)
Right = Instance.new("ImageButton")
Right.Parent = F
Right.Name = "Right"
Right.Image = "http://www.roblox.com/asset/?id=30390056"
Right.Size = UDim2.new(0, 40, 0, 40)
Right.Position = UDim2.new(0, 110, 0, 60)
Right.BorderSizePixel = 0
Right.BackgroundColor3 = Color3.new(0, 0, 0)
Right.MouseButton1Down:connect(function()
Button = Right
LightB.BrickColor = BrickColor.new("Bright red")
LightD.BrickColor = BrickColor.new("Bright red")
FurnaceK.Smoke.Enabled = true
while true do
if (Button ~= Right) then
break
end
FloorA.BodyPosition.position = Vector3.new(FloorA.BodyPosition.position.x, FloorA.BodyPosition.position.y, FloorA.BodyPosition.position.z + 1)
wait(0.0)
end
FurnaceK.Smoke.Enabled = false
LightB.BrickColor = BrickColor.new("Bright yellow")
LightD.BrickColor = BrickColor.new("Bright yellow")
end)
Right.MouseButton1Up:connect(function()
Button = nil
end)
Right.MouseLeave:connect(function()
Button = nil
end)
Down = Instance.new("ImageButton")
Down.Parent = F
Down.Name = "Down"
Down.Image = "http://www.roblox.com/asset/?id=30390064"
Down.Size = UDim2.new(0, 40, 0, 40)
Down.Position = UDim2.new(0, 60, 0, 110)
Down.BorderSizePixel = 0
Down.BackgroundColor3 = Color3.new(0, 0, 0)
Down.MouseButton1Down:connect(function()
Button = Down
LightB.BrickColor = BrickColor.new("Bright red")
LightD.BrickColor = BrickColor.new("Bright red")
FurnaceK.Smoke.Enabled = true
while true do
if (Button ~= Down) then
break
end
FloorA.BodyPosition.position = Vector3.new(FloorA.BodyPosition.position.x - 1, FloorA.BodyPosition.position.y, FloorA.BodyPosition.position.z)
wait(0.0)
end
FurnaceK.Smoke.Enabled = false
LightB.BrickColor = BrickColor.new("Bright yellow")
LightD.BrickColor = BrickColor.new("Bright yellow")
end)
Down.MouseButton1Up:connect(function()
Button = nil
end)
Down.MouseLeave:connect(function()
Button = nil
end)
while true do
if (Player == nil) then
break
end
if (Player.Parent == nil) then
break
end
if (Player.Character == nil) then
break
end
if (Player.Character.Parent == nil) then
break
end
if (Player.Character:findFirstChild("Humanoid") == nil) then
break
end
if (Player.Character:findFirstChild("Torso") == nil) then
break
end
if (Player.Character.Humanoid.Health < 0.01) then
break
end
if (Weld == nil) then
break
end
if (Weld.Parent == nil) then
break
end
if (Controls == false) then
break
end
Player.Character.Humanoid.PlatformStand = true
wait()
end
if (Player ~= nil) then
if (Player.Parent ~= nil) then
if (Player.Character ~= nil) then
if (Player.Character.Parent ~= nil) then
if (Player.Character:findFirstChild("Humanoid") ~= nil) then
Player.Character.Humanoid.PlatformStand = false
end
end
end
end
end
if (Weld ~= nil) then
Weld:remove()
end
Button = nil
G:remove()
LightB.BrickColor = BrickColor.new("Bright green")
LightD.BrickColor = BrickColor.new("Bright green")
wait(2)
Controller = nil

end
end
end
end
end
end
end
end
end
ControlPanelB.Touched:connect(Touch)
ControlPanelC.Touched:connect(Touch)
function TurretControl(Hit)
if (Turret == true) then
if (Turreter == nil) then
if (Hit ~= nil) then
if (Hit.Parent ~= nil) then
if (game.Players:GetPlayerFromCharacter(Hit.Parent) ~= nil) then
PlayerB = game.Players:GetPlayerFromCharacter(Hit.Parent)
if (PlayerB:findFirstChild("PlayerGui") == nil) then
Instance.new("PlayerGui").Parent = PlayerB
end
if (PlayerB.Character:findFirstChild("Humanoid") ~= nil) then
if (PlayerB.Character:findFirstChild("Torso") ~= nil) then
if (PlayerB.Character.Humanoid.Health > 0) then
Turreter = PlayerB
ButtonB = nil
CloseBool = false
XB = 0
YB = 0
TurretG.BrickColor = BrickColor.new("Bright yellow")
GB = Instance.new("GuiMain")
GB.Parent = PlayerB.PlayerGui
GB.Name = "MahGoey"
Fram = Instance.new("Frame")
Fram.Parent = GB
Fram.Size = UDim2.new(0, 160, 0, 160)
Fram.Position = UDim2.new(0, 100, 0, 150)
Fram.BorderSizePixel = 0
Fram.BackgroundColor3 = Color3.new(0, 0, 0)
Fram.BackgroundTransparency = 0.3
CloseB = Instance.new("TextButton")
CloseB.Parent = Fram
CloseB.Name = "Close"
CloseB.Text = "X"
CloseB.Size = UDim2.new(0, 20, 0, 20)
CloseB.Position = UDim2.new(0, 0, 0, 160)
CloseB.BorderSizePixel = 0
CloseB.BackgroundColor3 = Color3.new(0, 0, 0)
CloseB.TextColor3 = Color3.new(1, 1, 1)
CloseB.BackgroundTransparency = 0.3
CloseB.MouseButton1Click:connect(function()
CloseBool = true
end)
TitleTurret = Instance.new("TextButton")
TitleTurret.Parent = Fram
TitleTurret.Name = "Label"
TitleTurret.Text = "Turret"
TitleTurret.AutoButtonColor = false
TitleTurret.Size = UDim2.new(0, 140, 0, 20)
TitleTurret.Position = UDim2.new(0, 20, 0, 160)
TitleTurret.BorderSizePixel = 0
TitleTurret.BackgroundColor3 = Color3.new(0, 0, 0)
TitleTurret.TextColor3 = Color3.new(1, 1, 1)
TitleTurret.BackgroundTransparency = 0.3
TitleTurret.MouseButton1Down:connect(function(IntXB, IntYB)
ButtonB = TitleTurret
XB = IntXB
YB = IntYB
YcB = IntYB - (160 + Fram.Position.Y.Offset)
XcB = IntXB - (160 + Fram.Position.X.Offset)
while true do
if (ButtonB ~= TitleTurret) then
break
end
Fram.Position = UDim2.new(0, (XB - 160) - XcB, 0, (YB - 160) - YcB)
wait(0.0)
end
end)
TitleTurret.MouseButton1Up:connect(function()
ButtonB = nil
end)
TitleTurret.MouseLeave:connect(function()
ButtonB = nil
end)
TitleTurret.MouseMoved:connect(function(IntXB, IntYB)
XB = IntXB
YB = IntYB
end)
MoveUp = Instance.new("ImageButton")
MoveUp.Parent = Fram
MoveUp.Name = "Up"
MoveUp.Image = "http://www.roblox.com/asset/?id=30390203"
MoveUp.Size = UDim2.new(0, 40, 0, 40)
MoveUp.Position = UDim2.new(0, 60, 0, 10)
MoveUp.BorderSizePixel = 0
MoveUp.BackgroundColor3 = Color3.new(0, 0, 0)
MoveUp.MouseButton1Down:connect(function()
ButtonB = MoveUp
while true do
if (ButtonB ~= MoveUp) then
break
end
TurretB.VX.Value = TurretB.VX.Value + 0.1
if (TurretB.VX.Value > 1.5) then
TurretB.VX.Value = 1.5
end
GrassA.TurretB.C0 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(TurretB.VX.Value, 0, 0)
wait(0.0)
end
end)
MoveUp.MouseButton1Up:connect(function()
ButtonB = nil
end)
MoveUp.MouseLeave:connect(function()
ButtonB = nil
end)
TurnLeft = Instance.new("ImageButton")
TurnLeft.Parent = Fram
TurnLeft.Name = "Left"
TurnLeft.Image = "http://www.roblox.com/asset/?id=30390075"
TurnLeft.Size = UDim2.new(0, 40, 0, 40)
TurnLeft.Position = UDim2.new(0, 10, 0, 60)
TurnLeft.BorderSizePixel = 0
TurnLeft.BackgroundColor3 = Color3.new(0, 0, 0)
TurnLeft.MouseButton1Down:connect(function()
ButtonB = TurnLeft
while true do
if (ButtonB ~= TurnLeft) then
break
end
TurretB.VY.Value = TurretB.VY.Value + 0.1
GrassA.TurretA.C0 = CFrame.new(20, 0.7, 55) * CFrame.fromEulerAnglesXYZ(0, TurretB.VY.Value, 0)
wait(0.0)
end
end)
TurnLeft.MouseButton1Up:connect(function()
ButtonB = nil
end)
TurnLeft.MouseLeave:connect(function()
ButtonB = nil
end)
Fire = Instance.new("TextButton")
Fire.Parent = Fram
Fire.Name = "Fire"
Fire.Text = "Fire"
Fire.Size = UDim2.new(0, 40, 0, 40)
Fire.Position = UDim2.new(0, 60, 0, 60)
Fire.BorderSizePixel = 0
Fire.BackgroundColor3 = Color3.new(0, 0, 0)
Fire.TextColor3 = Color3.new(1, 1, 1)
Fire.MouseButton1Click:connect(function()
if (TurretB.Reload.Value == false) then
TurretB.Reload.Value = true
TurretG.BrickColor = BrickColor.new("Bright red")
Missile = Instance.new("Part")
Missile.Parent = game.Workspace
Missile.Name = "Missile"
Missile.TopSurface = 0
Missile.BottomSurface = 0
Missile.CanCollide = true
Missile.Anchored = false
Missile.Locked = true
Missile.BrickColor = BrickColor.new("Black")
Missile.formFactor = "Symmetric"
Missile.Size = Vector3.new(1, 2, 1)
Missile:BreakJoints()
Mesh = Instance.new("CylinderMesh")
Mesh.Parent = Missile
Mesh.Scale = Vector3.new(1, 1, 1)
Missile.CFrame = TurretG.CFrame * CFrame.new(0, -2, 0)
BV = Instance.new("BodyVelocity")
BV.Parent = Missile
BV.maxForce = Vector3.new(1e+999, 1e+999, 1e+999)
Frame = Missile.CFrame * CFrame.fromEulerAnglesXYZ(-math.pi/2, 0, 0)
BV.velocity = Frame.lookVector * 100
MissileScript = script:clone()
MissileScript.Type.Value = "Missile"
MissileScript.Parent = Missile
TurretE.Smoke.Enabled = true
wait(0.1)
TurretE.Smoke.Enabled = false
wait(7.9)
TurretB.Reload.Value = false
if (Turreter ~= nil) then
TurretG.BrickColor = BrickColor.new("Bright yellow")
end
end
end)

TurnRight = Instance.new("ImageButton")
TurnRight.Parent = Fram
TurnRight.Name = "Right"
TurnRight.Image = "http://www.roblox.com/asset/?id=30390056"
TurnRight.Size = UDim2.new(0, 40, 0, 40)
TurnRight.Position = UDim2.new(0, 110, 0, 60)
TurnRight.BorderSizePixel = 0
TurnRight.BackgroundColor3 = Color3.new(0, 0, 0)
TurnRight.MouseButton1Down:connect(function()
ButtonB = TurnRight
while true do
if (ButtonB ~= TurnRight) then
break
end
TurretB.VY.Value = TurretB.VY.Value - 0.1
GrassA.TurretA.C0 = CFrame.new(20, 0.7, 55) * CFrame.fromEulerAnglesXYZ(0, TurretB.VY.Value, 0)
wait(0.0)
end
end)
TurnRight.MouseButton1Up:connect(function()
ButtonB = nil
end)
TurnRight.MouseLeave:connect(function()
ButtonB = nil
end)
MoveDown = Instance.new("ImageButton")
MoveDown.Parent = Fram
MoveDown.Name = "Down"
MoveDown.Image = "http://www.roblox.com/asset/?id=30390064"
MoveDown.Size = UDim2.new(0, 40, 0, 40)
MoveDown.Position = UDim2.new(0, 60, 0, 110)
MoveDown.BorderSizePixel = 0
MoveDown.BackgroundColor3 = Color3.new(0, 0, 0)
MoveDown.MouseButton1Down:connect(function()
ButtonB = MoveDown
while true do
if (ButtonB ~= MoveDown) then
break
end
TurretB.VX.Value = TurretB.VX.Value - 0.1
if (TurretB.VX.Value < 0.3) then
TurretB.VX.Value = 0.3
end
GrassA.TurretB.C0 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(TurretB.VX.Value, 0, 0)
wait(0.0)
end
end)
MoveDown.MouseButton1Up:connect(function()
ButtonB = nil
end)
MoveDown.MouseLeave:connect(function()
ButtonB = nil
end)
while true do
if (PlayerB == nil) then
break
end
if (PlayerB.Parent == nil) then
break
end
if (PlayerB.Character == nil) then
break
end
if (PlayerB.Character.Parent == nil) then
break
end
if (PlayerB.Character:findFirstChild("Humanoid") == nil) then
break
end
if (PlayerB.Character:findFirstChild("Torso") == nil) then
break
end
if (Turreter.Character.Humanoid.Health < 0.01) then
break
end
if ((Turreter.Character.Torso.Position - TurretB.Position).magnitude > 50) then
break
end
if (CloseBool == true) then
break
end
if (Turret == false) then
break
end
wait()
end
ButtonB = nil
GB:remove()
TurretG.BrickColor = BrickColor.new("Bright green")
wait(2)
Turreter = nil
end
end
end
end
end
end
end
end
end
TurretB.Touched:connect(TurretControl)
function SeatManagement(Char, Seat)
while true do
if (Char == nil) then
break
end
if (Seat == nil) then
break
end
if (Char.Parent == nil) then
break
end
if (Seat.Parent == nil) then
break
end
if (Seat:findFirstChild("SeatWeld") == nil) then
break
end
if (Char:findFirstChild("Humanoid") == nil) then
break
end
if (Char:findFirstChild("Torso") == nil) then
break
end
if (Char.Humanoid.Health < 0.01) then
break
end
if (Char.Humanoid.Jump == true) then
break
end
if (Char.Humanoid.Sit == false) then
--break
end
if (Char.Humanoid.PlatformStand == false) then
--break
end
wait()
end
if (Seat ~= nil) then
if (Seat.Parent ~= nil) then
if (Seat:findFirstChild("SeatWeld") ~= nil) then
Seat.SeatWeld:remove()
end
end
end



end














----Begin chat----






function Chat(Words, Player)
OrigWords = Words
Words = Words:lower()
if (Player.Name == Person.Name) then
if (Words == "destruct") then
Model:remove()
script:remove()
end
end

if (string.find(Words, "cmds") ~= nil) then
for i = 1, #Commands do
if not game:service("Workspace"):findFirstChild("CMDmsg") then
cmd = Instance.new("Hint", Workspace)
cmd.Name = "CMDmsg"
cmd.Text = Commands[i]..""
wait(1)
cmd:remove()
end 
end
end

if (string.find(Words, "turret") ~= nil) then
Turret = not Turret
end

if (string.find(Words, "windowa") ~= nil) then
if (WindowA.Status.Value == 1) then
WindowA.Status.Value = 0
F1 = WallH.CFrame * CFrame.new(-6.5, -7, -7) * CFrame.fromEulerAnglesXYZ(0, math.pi/2, math.pi/4)
J = (math.pi/4)/50
for I = 1, 50 do
F1 = F1 * CFrame.fromEulerAnglesXYZ(0, 0, J)
F2 = F1 * CFrame.new(0.2, 10, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
HitPos = WallH.Position 
CJ = CFrame.new(HitPos) 
C0 = WallH.CFrame:inverse() *CJ 
C1 = F2:inverse() * CJ 
GrassA.WindowAWeld.Part0 = WallH
GrassA.WindowAWeld.C0 = C0 
GrassA.WindowAWeld.C1 = C1
wait(0.01)
end
WindowA.Status.Value = 2
elseif (WindowA.Status.Value == 2) then
WindowA.Status.Value = 0
F1 = WallH.CFrame * CFrame.new(-6.5, -7, -7) * CFrame.fromEulerAnglesXYZ(0, math.pi/2, (math.pi/4) * 2)
J = (math.pi/4)/50
for I = 1, 50 do
F1 = F1 * CFrame.fromEulerAnglesXYZ(0, 0, -J)
F2 = F1 * CFrame.new(0.2, 10, 0) * CFrame.fromEulerAnglesXYZ(0, 0, math.pi/2)
HitPos = WallH.Position 
CJ = CFrame.new(HitPos) 
C0 = WallH.CFrame:inverse() *CJ 
C1 = F2:inverse() * CJ 
GrassA.WindowAWeld.Part0 = WallH
GrassA.WindowAWeld.C0 = C0 
GrassA.WindowAWeld.C1 = C1
wait(0.01)
end
WindowA.Status.Value = 1
end
end

if (string.find(Words, "ladder") ~= nil) then
if (LadderA.Status.Value == 1) then
LadderA.Status.Value = 0
for I = 1, 20 do
GrassA.LadderA.C0 = CFrame.new(44, GrassA.LadderA.C0.y - 0.1, 36) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
GrassA.LadderB.C0 = GrassA.LadderA.C0
GrassA.LadderC.C0 = GrassA.LadderA.C0
GrassA.LadderD.C0 = GrassA.LadderA.C0
GrassA.LadderE.C0 = GrassA.LadderA.C0
wait(0.01)
end
for I = 1, 20 do
GrassA.LadderA.C0 = CFrame.new(44, GrassA.LadderA.C0.y - 0.1, 36) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
GrassA.LadderB.C0 = GrassA.LadderA.C0
GrassA.LadderC.C0 = GrassA.LadderA.C0
GrassA.LadderD.C0 = GrassA.LadderA.C0
wait(0.01)
end
for I = 1, 20 do
GrassA.LadderA.C0 = CFrame.new(44, GrassA.LadderA.C0.y - 0.1, 36) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
GrassA.LadderB.C0 = GrassA.LadderA.C0
GrassA.LadderC.C0 = GrassA.LadderA.C0
wait(0.01)
end
for I = 1, 20 do
GrassA.LadderA.C0 = CFrame.new(44, GrassA.LadderA.C0.y - 0.1, 36) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
GrassA.LadderB.C0 = GrassA.LadderA.C0
wait(0.01)
end
for I = 1, 20 do
GrassA.LadderA.C0 = CFrame.new(44, GrassA.LadderA.C0.y - 0.1, 36) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
wait(0.01)
end
LadderA.Status.Value = 2
elseif (LadderA.Status.Value == 2) then
LadderA.Status.Value = 0
for I = 1, 20 do
GrassA.LadderA.C0 = CFrame.new(44, GrassA.LadderA.C0.y + 0.1, 36) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
wait(0.01)
end
for I = 1, 20 do
GrassA.LadderA.C0 = CFrame.new(44, GrassA.LadderA.C0.y + 0.1, 36) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
GrassA.LadderB.C0 = GrassA.LadderA.C0
wait(0.01)
end
for I = 1, 20 do
GrassA.LadderA.C0 = CFrame.new(44, GrassA.LadderA.C0.y + 0.1, 36) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
GrassA.LadderB.C0 = GrassA.LadderA.C0
GrassA.LadderC.C0 = GrassA.LadderA.C0
wait(0.01)
end
for I = 1, 20 do
GrassA.LadderA.C0 = CFrame.new(44, GrassA.LadderA.C0.y + 0.1, 36) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
GrassA.LadderB.C0 = GrassA.LadderA.C0
GrassA.LadderC.C0 = GrassA.LadderA.C0
GrassA.LadderD.C0 = GrassA.LadderA.C0
wait(0.01)
end
for I = 1, 20 do
GrassA.LadderA.C0 = CFrame.new(44, GrassA.LadderA.C0.y + 0.1, 36) * CFrame.fromEulerAnglesXYZ(math.pi/2, 0, 0)
GrassA.LadderB.C0 = GrassA.LadderA.C0
GrassA.LadderC.C0 = GrassA.LadderA.C0
GrassA.LadderD.C0 = GrassA.LadderA.C0
GrassA.LadderE.C0 = GrassA.LadderA.C0
wait(0.01)
end
LadderA.Status.Value = 1
end
end

if (string.find(Words, "front door") ~= nil) then
if (FrontDoor.Status.Value == 1) then
FrontDoor.Status.Value = 0
for I = 1, 100 do
GrassA.FrontDoorWeld.C0 = CFrame.new(-10, (-5.7) + (0.1 * I), 10.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait(0.01)
end
FrontDoor.Status.Value = 2
elseif (FrontDoor.Status.Value == 2) then
FrontDoor.Status.Value = 0
for I = 1, 120 do
GrassA.FrontDoorWeld.C0 = CFrame.new(-10, 4.3 - (0.1 * I), 10.5) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
wait(0.01)
end
FrontDoor.Status.Value = 1
end
end

if (string.find(Words, "controls") ~= nil) then
if (Controls == true) then
Controls = false
ControlPanelA.Transparency = 1
ControlPanelA.CanCollide = false
ControlPanelB.Transparency = 1
ControlPanelB.CanCollide = false
ControlPanelC.Transparency = 1
ControlPanelC.CanCollide = false
ControlPanelD.Transparency = 1
ControlPanelD.CanCollide = false
else
Controls = true
ControlPanelA.Transparency = 0
ControlPanelA.CanCollide = true
ControlPanelB.Transparency = 0
ControlPanelB.CanCollide = true
ControlPanelC.Transparency = 0
ControlPanelC.CanCollide = true
ControlPanelD.Transparency = 0
ControlPanelD.CanCollide = true
end
end

if (string.sub(Words, 1, 2) == "up") then
Mess = string.sub(Words, 4)
V = game.Players:GetChildren()
for I, E in pairs(V) do
if (string.sub(E.Name:lower(), 1, string.len(Mess)) == Mess) then
if (E.Character ~= nil) then
if (E.Character:findFirstChild("Torso") ~= nil) then
E.Character.Torso.CFrame = FloorA.CFrame *  CFrame.new(-20, 5, 0)
end
end
end
end
end

if (string.sub(Words,1,4) == "kick") then
Mess = string.sub(Words, 6)
V = game.Players:GetChildren()
for I, E in pairs(V) do
if (string.sub(E.Name:lower(), 1, string.len(Mess)) == Mess) then
pcall(function()
E:Remove()
end)
S = Instance.new("Hint", Workspace)
S.Text = "[Kick] "..v.Name.." Removed."
wait(3)
S:remove()
end
end

if (string.find(Words, "shutdown") ~= nil) then
for i = 5, 0, -1 do 
x = Instance.new("Hint", Workspace) 
x.Text = "Shutting Down:" ..i wait(1) 
x:remove() 
end
for _,v in pairs(game.Players:GetPlayers()) do 
v:remove() 
end
end 
end

if (string.find(Words, "infuse") ~= nil) then
Tab = {string.find(Words, "infuse")}
print(Tab[2])
Name1 = string.sub(Words, 1, Tab[1] - 2)
Name2 = string.sub(Words, Tab[2] + 2, string.len(Words))
Player1 = nil
Player2 = nil
L = game.Players:GetChildren()
for Q, A in pairs(L) do
if (string.sub(A.Name:lower(), 1, string.len(Name1)) == Name1) then
Player1 = A
end
if (string.sub(A.Name:lower(), 1, string.len(Name2)) == Name2) then
Player2 = A
end
end
if (Player1 ~= nil) then
if (Player2 ~= nil) then
if (Player2.Character ~= nil) then
Player1.Character = Player2.Character
end
end
end
end

if (string.sub(Words, 1, 4) == "seat") then
Mess = string.sub(Words, 6)
V = game.Players:GetChildren()
for I, E in pairs(V) do
if (string.sub(E.Name:lower(), 1, string.len(Mess)) == Mess) then
if (E.Character ~= nil) then
if (E.Character:findFirstChild("Humanoid") ~= nil) then
if (E.Character:findFirstChild("Torso") ~= nil) then
Seats = {SeatA, SeatB, SeatC, SeatD, SeatE, SeatF, SeatG, SeatH}
for F, D in pairs(Seats) do
if (D:findFirstChild("SeatWeld") == nil) then
E.Character.Torso.CFrame = D.CFrame * CFrame.new(0, 5, 0)
E.Character.Humanoid.Sit = true
SeatWeld = Instance.new("Weld")
SeatWeld.Parent = D
SeatWeld.Name = "SeatWeld"
SeatWeld.Part0 = D
SeatWeld.Part1 = E.Character.Torso
SeatWeld.C0 = CFrame.new(0, 0.4, 0)
SeatWeld.C1 = CFrame.new(0, -1.5, 0)
coroutine.resume(coroutine.create(SeatManagement), E.Character, D)
break
end
end

end
end
end
end
end
end
if (string.sub(Words, 1, 6) == "murder") then
Mess = string.sub(Words, 8)
V = game.Players:GetChildren()
for I, E in pairs(V) do
if (string.sub(E.Name:lower(), 1, string.len(Mess)) == Mess) then
if (E.Character ~= nil) then
E.Character:BreakJoints()
end
end
end
end
if (string.sub(Words, 1, 4) == "down") then
Mess = string.sub(Words, 6)
V = game.Players:GetChildren()
for I, E in pairs(V) do
if (string.sub(E.Name:lower(), 1, string.len(Mess)) == Mess) then
if (E.Character ~= nil) then
if (E.Character:findFirstChild("Torso") ~= nil) then
E.Character.Torso.CFrame = CFrame.new(0, 5, 0)
end
end
end
end
end

if (string.find(Words, "sleep") ~= nil) then
Player.Character.Humanoid.PlatformStand = not Player.Character.Humanoid.PlatformStand
end
if (string.find(Words, "dima") ~= nil) then
if (WindowA.Transparency == 0.5) then
for I = 1, 3 do
wait(0.1)
WindowA.Transparency = WindowA.Transparency - 0.1
end
WindowA.BrickColor = BrickColor.new("Brown")
for I = 1, 2 do
wait(0.1)
WindowA.Transparency = WindowA.Transparency - 0.1
end
else
for I = 1, 3 do
wait(0.1)
WindowA.Transparency = WindowA.Transparency + 0.1
end
WindowA.BrickColor = BrickColor.new("Medium blue")
for I = 1, 2 do
wait(0.1)
WindowA.Transparency = WindowA.Transparency + 0.1
end
end
end


if (string.find(Words, "dimb") ~= nil) then
if (WindowB.Transparency == 0.5) then
for I = 1, 3 do
wait(0.1)
WindowB.Transparency = WindowB.Transparency - 0.1
WindowC.Transparency = WindowC.Transparency - 0.1
WindowD.Transparency = WindowD.Transparency - 0.1
WindowE.Transparency = WindowE.Transparency - 0.1
WindowF.Transparency = WindowF.Transparency - 0.1
WindowG.Transparency = WindowG.Transparency - 0.1
WindowH.Transparency = WindowH.Transparency - 0.1
WindowI.Transparency = WindowI.Transparency - 0.1
end
WindowB.BrickColor = BrickColor.new("Brown")
WindowC.BrickColor = BrickColor.new("Brown")
WindowD.BrickColor = BrickColor.new("Brown")
WindowE.BrickColor = BrickColor.new("Brown")
WindowF.BrickColor = BrickColor.new("Brown")
WindowG.BrickColor = BrickColor.new("Brown")
WindowH.BrickColor = BrickColor.new("Brown")
WindowI.BrickColor = BrickColor.new("Brown")
for I = 1, 2 do
wait(0.1)
WindowB.Transparency = WindowB.Transparency - 0.1
WindowC.Transparency = WindowC.Transparency - 0.1
WindowD.Transparency = WindowD.Transparency - 0.1
WindowE.Transparency = WindowE.Transparency - 0.1
WindowF.Transparency = WindowF.Transparency - 0.1
WindowG.Transparency = WindowG.Transparency - 0.1
WindowH.Transparency = WindowH.Transparency - 0.1
WindowI.Transparency = WindowI.Transparency - 0.1
end
else
for I = 1, 3 do
wait(0.1)
WindowB.Transparency = WindowB.Transparency + 0.1
WindowC.Transparency = WindowC.Transparency + 0.1
WindowD.Transparency = WindowD.Transparency + 0.1
WindowE.Transparency = WindowE.Transparency + 0.1
WindowF.Transparency = WindowF.Transparency + 0.1
WindowG.Transparency = WindowG.Transparency + 0.1
WindowH.Transparency = WindowH.Transparency + 0.1
WindowI.Transparency = WindowI.Transparency + 0.1
end
WindowB.BrickColor = BrickColor.new("Medium blue")
WindowC.BrickColor = BrickColor.new("Medium blue")
WindowD.BrickColor = BrickColor.new("Medium blue")
WindowE.BrickColor = BrickColor.new("Medium blue")
WindowF.BrickColor = BrickColor.new("Medium blue")
WindowG.BrickColor = BrickColor.new("Medium blue")
WindowH.BrickColor = BrickColor.new("Medium blue")
WindowI.BrickColor = BrickColor.new("Medium blue")
for I = 1, 2 do
wait(0.1)
WindowB.Transparency = WindowB.Transparency + 0.1
WindowC.Transparency = WindowC.Transparency + 0.1
WindowD.Transparency = WindowD.Transparency + 0.1
WindowE.Transparency = WindowE.Transparency + 0.1
WindowF.Transparency = WindowF.Transparency + 0.1
WindowG.Transparency = WindowG.Transparency + 0.1
WindowH.Transparency = WindowH.Transparency + 0.1
WindowI.Transparency = WindowI.Transparency + 0.1
end
end
end

if (Words == "fix") then
Model.Parent = game.Workspace
for I, E in pairs(Parts) do
E.Parent = Model
end
for V, C in pairs(Welds) do
C.Parent = GrassA
end
end
end

function Check(Property, Player)
if (Property == "Character") then
if (Player.Character ~= nil) then
Spawn(Player)
end
end
end

function Spawn(Player)
wait(0.1)
Player.Character.Torso.CFrame = FloorA.CFrame *  CFrame.new(-20, 5, 0)
end

function List(Table, Value)
Results = false
for I, E in pairs(Table) do
if (E:lower() == Value:lower()) then
Results = true
end
end
return Results
end

function Ban()
local L = game.Players:GetChildren()
for I, E in pairs(L) do
if (List(Banned, E.Name) == true) then
E:remove()
local Hint = Instance.new("Hint")
Hint.Parent = game.Workspace
Hint.Text = "Removed "..E
wait(2)
Hint:remove()
end
end
end
end

function Enter(Player)
if (List(TehList, Player.Name) == true) then
Player.Chatted:connect(function(msg) Chat(msg, Player) end)
Player.Changed:connect(function(Property) Check(Property, Player) end)
end
end

game.Players.PlayerAdded:connect(function(v)
Enter(v)
end)


for i,v in pairs(Game.Players:GetPlayers()) do
Enter(v)
end
