------------
--MEDIAFIRE-
------------
 
--CFrame.Angles(math.rad(-90) + math.deg((Torso.Position - Mouse.Hit.p).unit.y),0,0)
--c2(ra, 1, 3, 1.25, 0.5, -0.25, -75 + math.deg((Torso.Position-Mouse.Hit.p).unit.y),-65,0)
 
Players = Game:GetService("Players")
Debris = Game:GetService("Debris")
 
Player = Players.LocalPlayer
Mouse = Player:GetMouse()
Character = Player.Character
Humanoid = Character:FindFirstChild("Humanoid")
Humanoid.MaxHealth = math.huge
Torso = Character:FindFirstChild("Torso")
Head = Character:FindFirstChild("Head")
Neck = Torso:FindFirstChild("Neck")
RightArm = Character:FindFirstChild("Right Arm")
LeftArm = Character:FindFirstChild("Left Arm")
RightShoulder = Torso:FindFirstChild("Right Shoulder")
LeftShoulder = Torso:FindFirstChild("Left Shoulder")
RightLeg = Character:FindFirstChild("Right Leg")
LeftLeg = Character:FindFirstChild("Left Leg")
RightHip = Torso:FindFirstChild("Right Hip")
LeftHip = Torso:FindFirstChild("Left Hip")
 
BladeColor = BrickColor.new("Light stone grey")
HandleColor = BrickColor.new("Really black")
OtherColor = BrickColor.new("Really black")
 
pcall(function () 
Head:FindFirstChild("face"):Destroy()
end)
 
function RayCast(Start, End, Ignore)
NewRay = Ray.new(Start, End)
return Workspace:findPartOnRay(NewRay, Ignore)
end
 
function TweenWeld(Weld, Stop, Step)
local Function = function ()
local Start = Weld.C0
local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
local Stop = Stop
local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
for i = 0, 1, Step or 0.1 do
Weld.C0 = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
(Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
(Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
(X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
(Z1 * (1 - i)) + (Z2 * i))
wait()
end
Weld.C0 = Stop
end
Function()
end
 
function MakePart(Parent, Name, BrickColor, Anchored, Size, Position, CFrame, CanCollide)
Part = Instance.new("Part", Parent)
Part.Name = Name
Part.FormFactor = "Custom"
Part.BrickColor = BrickColor
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.Anchored = Anchored
Part.Size = Size
Part.Position = Position
Part.CFrame = CFrame
Part.CanCollide = CanCollide
return Part
end
 
function MakeWeld(Parent, Name, Part0, Part1, C0, C1)
Weld = Instance.new("Weld", Parent)
Weld.Name = "Name"
Weld.Part0 = Part0
Weld.Part1 = Part1
Weld.C0 = C0
Weld.C1 = C1
return Weld
end
 
function MakeMesh(Parent, Name, MeshType, Scale)
Mesh = Instance.new("SpecialMesh", Parent)
Mesh.Name = Name
Mesh.MeshType = MeshType
Mesh.Scale = Scale
return Mesh
end
 
function MakeMesh2(Parent, Name, Scale)
Mesh = Instance.new("BlockMesh", Parent)
Mesh.Name = Name
Mesh.Scale = Scale
return Mesh
end
 
function MakeMesh3(Parent, Name, Scale)
Mesh = Instance.new("CylinderMesh", Parent)
Mesh.Name = Name
Mesh.Scale = Scale
return Mesh
end
 
pcall(function () 
Character:FindFirstChild("Spear"):Destroy()
end)
 
Spear = Instance.new("Model", Character)
Spear.Name = "Spear"
 
Handle = MakePart(Spear, "Handle", HandleColor, false, Vector3.new(1, 1, 1), Vector3.new(), CFrame.new(), false)
HandleMesh = MakeMesh3(Handle, "Mesh", Vector3.new(0.2, 3.2, 0.2))
HandleWeld = MakeWeld(Handle, "Weld", Torso, Handle, CFrame.new(1, 1.5, 0.7), CFrame.Angles(0, math.rad(90), math.rad(215)))
 
for Number = 1, 10 do
Handle2 = MakePart(Spear, "Handle 2", OtherColor, false, Vector3.new(1, 1, 1), Vector3.new(), CFrame.new(), false)
Handle2Mesh = MakeMesh2(Handle2, "Mesh", Vector3.new(0.1, 0.16, 0.1))
Handle2Weld = MakeWeld(Handle2, "Weld", Handle2, Handle, CFrame.Angles(math.rad(Number * 36), 0, 0) * CFrame.new(0, 1.8 + (0.2 * math.sin(math.rad(Number * 36))), 0.2 * math.cos(math.rad(Number * 36))), CFrame.new())
end
 
Guard = MakePart(Spear, "Guard", HandleColor, false, Vector3.new(1, 1, 1), Vector3.new(), CFrame.new(), false)
GuardMesh = MakeMesh3(Guard, "Mesh", Vector3.new(0.4, 0.1, 0.4))
GuardWeld = MakeWeld(Guard, "Weld", Guard, Handle, CFrame.new(0, -1.6, 0) * CFrame.Angles(0, 0, 0), CFrame.new())
 
Guard2 = MakePart(Spear, "Guard 2", BladeColor, false, Vector3.new(1, 1, 1), Vector3.new(), CFrame.new(), false)
Guard2.Reflectance = 0.5
Guard2Mesh = MakeMesh2(Guard2, "Mesh", Vector3.new(0.075, 0.2, 0.25))
Guard2Weld = MakeWeld(Guard2, "Weld", Guard2, Handle, CFrame.new(0, -1.7, 0) * CFrame.Angles(0, 0, 0), CFrame.new())
 
Blade = MakePart(Spear, "Blade", BladeColor, false, Vector3.new(1, 2.8, 1), Vector3.new(), CFrame.new(), false)
Blade.Reflectance = 0.5
BladeMesh = MakeMesh2(Blade, "Mesh", Vector3.new(0.025, 1, 0.2))
BladeWeld = MakeWeld(Blade, "Weld", Blade, Handle, CFrame.new(0, -3, 0) * CFrame.Angles(0, 0, 0), CFrame.new())
 
Blade2 = MakePart(Spear, "Blade 2", BladeColor, false, Vector3.new(1, 1, 1), Vector3.new(), CFrame.new(), false)
Blade2.Reflectance = 0.5
Blade2Mesh = MakeMesh(Blade2, "Mesh", "Wedge", Vector3.new(0.025, 1, 0.3), "")
Blade2Weld = MakeWeld(Blade2, "Weld", Blade2, Blade, CFrame.new(0, -1.9, -0.05) * CFrame.Angles(0, 0, 0), CFrame.new())
 
Blade3 = MakePart(Spear, "Blade 3", BladeColor, false, Vector3.new(1, 1, 1), Vector3.new(), CFrame.new(), false)
Blade3.Reflectance = 0.5
Blade3Mesh = MakeMesh(Blade3, "Mesh", "Wedge", Vector3.new(0.025, 1, 0.3), "")
Blade3Weld = MakeWeld(Blade3, "Weld", Blade3, Blade, CFrame.new(0, 0.9, 0.05) * CFrame.Angles(math.rad(180), 0, 0), CFrame.new())
 
Blade4 = MakePart(Spear, "Blade 4", BladeColor, false, Vector3.new(1, 1, 1), Vector3.new(), CFrame.new(), false)
Blade4.Reflectance = 0.5
Blade4Mesh = MakeMesh(Blade4, "Mesh", "Wedge", Vector3.new(0.025, 1, 0.3), "")
Blade4Weld = MakeWeld(Blade4, "Weld", Blade4, Blade, CFrame.new(0, -0.75, -0.05) * CFrame.Angles(0, 0, 0), CFrame.new())
 
Blade5 = MakePart(Spear, "Blade 5", BladeColor, false, Vector3.new(1, 1, 1), Vector3.new(), CFrame.new(), false)
Blade5.Reflectance = 0.5
Blade5Mesh = MakeMesh(Blade5, "Mesh", "Wedge", Vector3.new(0.025, 1, 0.3), "")
Blade5Weld = MakeWeld(Blade5, "Weld", Blade5, Blade, CFrame.new(0, -0.25, 0.05) * CFrame.Angles(math.rad(180), 0, 0), CFrame.new())
 
Selected = false
Enabled = false
 
function KeyDown(Key)
if Key == "q" then
if Selected == false and Enabled == false then
 
Selected = true
 
Gyro = Instance.new("BodyGyro")
Gyro.Parent = Torso
Gyro.Name = "Pos"
Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
Gyro.P = 100000
Gyro.D = 1000
 
function Look()
while Selected == true do
wait()
Torso:FindFirstChild("Pos").cframe = CFrame.new(Torso.Position, Vector3.new(Mouse.Hit.p.X, Torso.Position.Y, Mouse.Hit.p.Z))
end
end
 
Stare = coroutine.create(Look)
coroutine.resume(Stare)
 
RightShoulder.Part1 = nil
LeftShoulder.Part1 = nil
FakeRightShoulder = MakeWeld(Torso, "Fake Right Shoulder", RightArm, Torso, CFrame.new(-1.5, 0.5, 0), CFrame.new(0, 0.5, 0))
FakeLeftShoulder = MakeWeld(Torso, "Fake Left Shoulder", LeftArm, Torso, CFrame.new(1.5, 0.5, 0), CFrame.new(0, 0.5, 0))
 
for Number = 1, 10 do
wait()
FakeRightShoulder["C0"] = FakeRightShoulder["C0"] * CFrame.new() * CFrame.Angles(math.rad(-215/10), 0, 0)
end
 
local OFS = RightArm["CFrame"]:toObjectSpace(Handle["CFrame"])
HandleWeld["Part0"] = RightArm
HandleWeld["C0"] = OFS
HandleWeld["C1"] = CFrame.new()
 
coroutine.resume(coroutine.create(function () 
TweenWeld(HandleWeld, CFrame.new(0, -1, -1) * CFrame.Angles(math.rad(-90), 0, 0), 0.1)
end))
 
for Number = 1, 10 do
wait()
FakeRightShoulder["C0"] = FakeRightShoulder["C0"] * CFrame.new() * CFrame.Angles(math.rad(90/10), 0, 0)
end
 
coroutine.resume(coroutine.create(function () 
TweenWeld(HandleWeld, CFrame.new(-1.5, -1, 0) * CFrame.Angles(math.rad(-90), 0, math.rad(90)), 0.1)
end))
 
coroutine.resume(coroutine.create(function () 
for Number = 1, 10 do
wait()
FakeLeftShoulder["C0"] = FakeLeftShoulder["C0"] * CFrame.new() * CFrame.Angles(math.rad(-30/10), 0, 0)
end
end))
 
for Number = 1, 10 do
wait()
FakeRightShoulder["C0"] = FakeRightShoulder["C0"] * CFrame.new() * CFrame.Angles(math.rad(90/10), 0, 0)
end
 
local OFS = LeftArm["CFrame"]:toObjectSpace(Handle["CFrame"])
FakeLeftShoulder["Part1"] = Handle
FakeLeftShoulder["C0"] = OFS
FakeLeftShoulder["C1"] = CFrame.new()
 
Enabled = true
 
while Selected == true do
wait()
local pos1 = Mouse.Hit.p 
local pos2 = (Torso.CFrame * CFrame.new(0,1,0)).p
local unitz = (pos2 - pos1).unit 
local angul = pos2 + (unitz*60) 
local diff = (angul.y - pos2.y) - 90
 
print(diff) 
FakeRightShoulder["C0"] = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(diff),0,0)
end
 
elseif Selected == true and Enabled == true then
 
Selected = false
Enabled = false
 
end
end
end
 
function Button1Down(Mouse)
if Selected == true and Enabled == true then
Enabled = false
for Number = 1, 10 do
wait()
FakeRightShoulder["C0"] = FakeRightShoulder["C0"] * CFrame.new() * CFrame.Angles(math.rad(-45/10), 0, 0)
end
wait(0.5)
for Number = 1, 10 do
wait()
FakeRightShoulder["C0"] = FakeRightShoulder["C0"] * CFrame.new() * CFrame.Angles(math.rad(15/10), 0, 0)
end
Enabled = true
end
end
 
Mouse["KeyDown"]:connect(function (Key) KeyDown(Key) end)
Mouse["Button1Down"]:connect(function (Mouse) Button1Down(Mouse) end)
 