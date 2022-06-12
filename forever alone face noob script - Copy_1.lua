--mediafire
script:ClearAllChildren()
 
Player = Game:GetService("Players").LocalPlayer
Character = Player.Character
 
function FindNearestTorso(Position)
Distance = math.huge
People = Workspace:GetChildren()
for Child = 1, #People do
if People[Child]:FindFirstChild("Zombie") == nil then
Template2 = People[Child]
if ( Template2:IsA("Model") ) then
Template = Template2:findFirstChild("Torso")
Human = false
for i, v in pairs(Template2:GetChildren()) do
if v:IsA("Humanoid") then
if v.Health > 0 then
Human = true
end
end
end
if ( Template ~= nil ) and ( Human == true ) then
if ( Template.Position - Position ).magnitude < Distance then
Torso = Template
Distance = ( Template.Position - Position ).magnitude
end
end
end
end
end
return Torso
end
 
function RayCast(Start, End, Ignore)
NewRay = Ray.new(Start, End)
return Workspace:findPartOnRay(NewRay, Ignore)
end
 
function MakeModel(Parent, Name)
Model = Instance.new("Model", Parent)
Model.Name = Name
return Model
end
 
function MakePart(Parent, Name, BrickColor, Anchored, Size, Position, CFrame, CanCollide)
Part = Instance.new("Part", Parent)
Part.Name = Name
Part.FormFactor = "Custom"
Part.BrickColor = BrickColor
--Part.TopSurface = "Smooth"
--Part.BottomSurface = "Smooth"
Part.Anchored = Anchored
Part.Size = Size
Part.Position = Position
Part.CFrame = CFrame
Part.CanCollide = CanCollide
return Part
end
 
function MakeWeld(Parent, Name, Part0, Part1, C0, C1)
Weld = Instance.new("Weld", Parent)
Weld.Name = Name
Weld.Part0 = Part0
Weld.Part1 = Part1
Weld.C0 = C0
Weld.C1 = C1
return Weld
end
 
function MakeMesh(Parent, MeshType, Scale)
Mesh = Instance.new("SpecialMesh", Parent)
Mesh.MeshType = MeshType
Mesh.Scale = Scale
return Mesh
end
 
function MakeMesh2(Parent, Scale)
Mesh = Instance.new("BlockMesh", Parent)
Mesh.Scale = Scale
return Mesh
end
 
function MakeMesh3(Parent, Scale)
Mesh = Instance.new("CylinderMesh", Parent)
Mesh.Scale = Scale
return Mesh
end
 
function MakeHumanoid(Parent, MaxHealth, Health, WalkSpeed)
Humanoid = Instance.new("Humanoid", Parent)
Humanoid.MaxHealth = MaxHealth
Humanoid.Health = Health
Humanoid.WalkSpeed = WalkSpeed
return Humanoid
end
 
function MakeTroll(Parent, Position)
Troll = MakeModel(Workspace, "Noob")
Torso = MakePart(Troll, "Torso", BrickColor.new("Bright blue"), false, Vector3.new(2, 2, 1), Vector3.new(), CFrame.new())
Head = MakePart(Troll, "Head", BrickColor.new("Bright yellow"), false, Vector3.new(2, 1, 1), Vector3.new(), CFrame.new())
 
Billboard = Instance.new("BillboardGui", Troll)
Billboard.Adornee = Head
Billboard.Size = UDim2.new(2, 0, 2, 0)
Billboard.StudsOffset = Vector3.new(0, 0, 0)
Billboard.AlwaysOnTop = true
 
Face = Instance.new("ImageLabel", Billboard)
Face.Image = "http://www.roblox.com/asset?id=106577668"
Face.Size = UDim2.new(1, 0, 1, 0)
Face.BackgroundTransparency = 1
 
Neck = MakeWeld(Torso, "Neck", Head, Torso, CFrame.new(0, -1.5, 0), CFrame.new())
HeadMesh = MakeMesh(Head, "Head", Vector3.new(1.25, 1.25, 1.25))
Humanoid = MakeHumanoid(Troll, 100, 100, 16)
Right_Arm = MakePart(Troll, "Right Arm", BrickColor.new("Bright yellow"), false, Vector3.new(1, 2, 1), Vector3.new(), CFrame.new())
Right_Shoulder = MakeWeld(Torso, "Right Shoulder", Right_Arm, Torso, CFrame.new(-1.5, 0, 0), CFrame.new())
Left_Arm = MakePart(Troll, "Left Arm", BrickColor.new("Bright yellow"), false, Vector3.new(1, 2, 1), Vector3.new(), CFrame.new())
Left_Shoulder = MakeWeld(Torso, "Left Shoulder", Left_Arm, Torso, CFrame.new(1.5, 0, 0), CFrame.new())
Right_Leg = MakePart(Troll, "Right Leg", BrickColor.new("Br. yellowish green"), false, Vector3.new(1, 2, 1), Vector3.new(), CFrame.new())
Right_Hip = MakeWeld(Torso, "Right Hip", Right_Leg, Torso, CFrame.new(-0.5, 2, 0), CFrame.new())
Left_Leg = MakePart(Troll, "Left Leg", BrickColor.new("Br. yellowish green"), false, Vector3.new(1, 2, 1), Vector3.new(), CFrame.new())
Left_Hip = MakeWeld(Torso, "Left Hip", Left_Leg, Torso, CFrame.new(0.5, 2, 0), CFrame.new())
 
Troll:MoveTo(Position)
Troll:MakeJoints()
 
return Troll
end
 
Troll = MakeTroll(Workspace, Vector3.new(0, 10, 0))
 
Humanoid = Troll.Humanoid
Torso = Troll.Torso
 
while true do
wait()
Humanoid:MoveTo(Character.Torso.Position, Workspace.Base)
end