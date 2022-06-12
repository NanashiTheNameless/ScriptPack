
local Player = "olefson" 

local Character = game:GetService("Players"):findFirstChild(Player).Character 

local Backpack = game:GetService("Players"):findFirstChild(Player).Backpack 

local Primary_Color = "Black" -- Change this to any color you like.

local Secondary_Color = "Bright blue"  -- Secondary color

local Number = 1 

local Face = Character:findFirstChild("Head"):findFirstChild("face") 

for _,Character in pairs(Character:GetChildren()) do 

if (Character.Name == Player.. "'s Omega{Suit}") then 

Character:Remove() 

elseif (Character.className == "Hat") then 

Character:Remove() 

elseif (Character.className == "Part") then 

Character.Transparency = 1 

end 

end 

if (Face ~= nil) then 

Face:Remove() 

end 

local Model = Instance.new("Model") 

Model.Parent = Character 

Model.Name = Player.. "'s Omega{Suit}" 

function createPart(Parent, Name, Position, Size, CFrame, Color, Anchored, CanCollide, Locked, Transparency, Reflectance)

 local Part = Instance.new("Part") 

Part.Parent = Parent 

Part.Name = Name 

Part.Position = Position 

Part.Size = Size 

Part.CFrame = CFrame 

Part.BrickColor = BrickColor.new(Color) 

Part.Anchored = Anchored 

Part.CanCollide = CanCollide 

Part.Locked = Locked 

Part.Transparency = Transparency 

Part.Reflectance = Reflectance 

Part.TopSurface = "Smooth" 

Part.BottomSurface = "Smooth" 

Part:BreakJoints() 

end 

function createWeld(Parent, Part1, CFrameXYZ, CFrame) 

local Weld = Instance.new("Weld") 

Weld.Parent = Parent 

Weld.Part0 = Parent 

Weld.Part1 = Part1 

Weld.C1 = CFrameXYZ * CFrame 

end 

function createMesh(Type, Parent, MeshType, Scale) 

if (Type == "SpecialMesh") then 

local SpecialMesh = Instance.new("SpecialMesh") 

SpecialMesh.Parent = Parent 

SpecialMesh.MeshType = MeshType 

SpecialMesh.Scale = Scale 

elseif (Type == "BlockMesh") then 

local BlockMesh = Instance.new("BlockMesh") 

BlockMesh.Parent = Parent 

BlockMesh.Scale = Scale 

elseif (Type == "CylinderMesh") then 

local CylinderMesh = Instance.new("CylinderMesh") 

CylinderMesh.Parent = Parent 

CylinderMesh.Scale = Scale 

end 

Number = Number + 1 

end 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Arm").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.01, 0.85, 1.01))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Arm").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.01, 0.85, 1.01))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Leg").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Leg"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.01, 0.85, 1.01))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Leg").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Leg"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.01, 0.85, 1.01))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Torso").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Torso"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.01, 0.85, 1.01))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Head").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Head"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0, 0))

 createMesh("SpecialMesh", Model:findFirstChild(Number), "Head", Vector3.new(1.25, 1.01, 1.25))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Arm").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.20, 0.15, 1.20))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Arm").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0.9, 0))

 createMesh("CylinderMesh", Model:findFirstChild(Number), "None", Vector3.new(0.55, 0.15, 0.55))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Arm").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, -0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.20, 0.15, 1.20))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Arm").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, -0.9, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.55, 0.15, 0.55))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Arm").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.3, 0, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.40, 0.52, 1.03))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Arm").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.3, 0, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.40, 0.52, 1.03))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Arm").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.21, 0.05, 1.21))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Arm").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, -0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.21, 0.05, 1.21))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Arm").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 1.1, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.15, 0.50, 0.15))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Arm").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 1.1, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.15, 0.50, 0.15))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Arm").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 1.5, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.55, 0.20, 0.55))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Arm").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Arm"), CFrame.fromEulerAnglesXYZ(1.6, 0, 0), CFrame.new(0, -0.3, -1.5))

 createMesh("CylinderMesh", Model:findFirstChild(Number), "None", Vector3.new(0.20, 0.20, 0.20))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Arm").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.20, 0.15, 1.20))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Arm").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0.9, 0))

 createMesh("CylinderMesh", Model:findFirstChild(Number), "None", Vector3.new(0.55, 0.15, 0.55))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Arm").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, -0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.20, 0.15, 1.20))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Arm").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, -0.9, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.55, 0.15, 0.55))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Arm").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.3, 0, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.40, 0.52, 1.03))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Arm").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.3, 0, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.40, 0.52, 1.03))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Arm").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.21, 0.05, 1.21))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Arm").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, -0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.21, 0.05, 1.21))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Arm").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 1.1, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.15, 0.50, 0.15))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Arm").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 1.1, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.15, 0.50, 0.15))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Arm").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Arm"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 1.5, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.55, 0.20, 0.55))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Arm").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Arm"), CFrame.fromEulerAnglesXYZ(1.6, 0, 0), CFrame.new(0, -0.3, -1.5))

 createMesh("CylinderMesh", Model:findFirstChild(Number), "None", Vector3.new(0.20, 0.20, 0.20))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Leg").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Leg"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.20, 0.15, 1.20))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Leg").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Leg"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, -0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.20, 0.15, 1.20))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Leg").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Leg"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.3, 0, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.40, 0.52, 1.03))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Leg").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Leg"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.3, 0, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.40, 0.52, 1.03))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Leg").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Leg"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.21, 0.05, 1.21))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Left Leg").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Left Leg"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, -0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.21, 0.05, 1.21))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Leg").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Leg"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.20, 0.15, 1.20))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Leg").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Leg"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, -0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.20, 0.15, 1.20))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Leg").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Leg"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(-0.3, 0, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.40, 0.52, 1.03))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Leg").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Leg"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0.3, 0, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.40, 0.52, 1.03))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Leg").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Leg"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.21, 0.05, 1.21))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Right Leg").Size, CFrame.new(0, 5, 0), Primary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Right Leg"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, -0.8, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(1.21, 0.05, 1.21))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Head").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Head"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0.2, -0.5))

 createMesh("SpecialMesh", Model:findFirstChild(Number), "Sphere", Vector3.new(0.40, 0.15, 0.40))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Torso").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Torso"), CFrame.fromEulerAnglesXYZ(0, 0, 1.57), CFrame.new(0, 0, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.15, 0.83, 1.03))

 

createPart(Model, Number, Vector3.new(0, 0, 0), Character:findFirstChild("Torso").Size, CFrame.new(0, 5, 0), Secondary_Color, false, false, true, 0, 0)

 createWeld(Model:findFirstChild(Number), Character:findFirstChild("Torso"), CFrame.fromEulerAnglesXYZ(0, 0, 0), CFrame.new(0, 0, 0))

 createMesh("BlockMesh", Model:findFirstChild(Number), "None", Vector3.new(0.15, 0.83, 1.03))

 

if (script.Parent.className ~= "HopperBin") then 

HopperBin = Instance.new("HopperBin") 

HopperBin.Parent = Backpack 

HopperBin.Name = "Lasers" 

script.Parent = HopperBin 

end 

HopperBin = script.Parent 

function onButton1Down(Mouse) 

local partC = Model:findFirstChild("18") 

local Place0 = CFrame.new(partC.CFrame.x, partC.CFrame.y, partC.CFrame.z) 

local Place1 = Mouse.Hit.p 

local partC2 = Model:findFirstChild("30") 

local Place2 = CFrame.new(partC2.CFrame.x, partC2.CFrame.y, partC2.CFrame.z) 

local Part1 = Instance.new("Part") 

Part1.Parent = Model 

Part1.Name = "Laser 1" 

Part1.Position = Vector3.new(0, 0, 0) 

Part1.Size = Vector3.new(math.random(0.5,1.31),math.random(0.5,1.31),math.random(0.5,1.31)) 

Part1.CFrame = CFrame.new((Place0.p + Place1) / 2, Place0.p) 

Part1.BrickColor = BrickColor.new(Secondary_Color) -- Leave this be, or change it to a color available on ROBLOX.

Part1.Locked = true 

Part1.Anchored = true 

Part1.CanCollide = false 

Part1.BottomSurface = "Smooth" 

Part1.TopSurface = "Smooth" 

local Part2 = Instance.new("Part") 

Part2.Parent = Model 

Part2.Name = "Laser 2" 

Part2.Position = Vector3.new(0, 0, 0) 

Part2.Size = Vector3.new(math.random(0.5,1.31),math.random(0.5,1.31),math.random(0.5,1.31)) 

Part2.CFrame = CFrame.new((Place2.p + Place1) / 2, Place2.p) 

Part2.BrickColor = BrickColor.new(Secondary_Color)  -- Leave this be, or change it to a color available on ROBLOX.

Part2.Locked = true 

Part2.Anchored = true 

Part2.CanCollide = false 

Part2.BottomSurface = "Smooth" 

Part2.TopSurface = "Smooth" 

local BlockMesh = Instance.new("BlockMesh") 

BlockMesh.Parent = Part1 

BlockMesh.Scale = Vector3.new(0.08, 0.08, (Place0.p - Place1).magnitude) 

local BlockMesh = Instance.new("BlockMesh") 

BlockMesh.Parent = Part2 

BlockMesh.Scale = Vector3.new(0.08, 0.08, (Place2.p - Place1).magnitude) 

if (Mouse.Target ~= nil) then 

Humanoid = Mouse.Target.Parent:findFirstChild("Humanoid") 

if (Humanoid ~= nil) then 

game.Workspace.Lollypop647.Humanoid.Health=Humanoid.Health + 0

Humanoid.Health=Humanoid.Health - 100

end 

end 

while true do 

Place0 = CFrame.new(partC.CFrame.x, partC.CFrame.y, partC.CFrame.z) 

Place2 = CFrame.new(partC2.CFrame.x, partC2.CFrame.y, partC2.CFrame.z) 

Part1.Transparency = Part1.Transparency + 0.086 

Part2.Transparency = Part2.Transparency + 0.086 

Part1.CFrame = CFrame.new((Place0.p + Place1) / 2, Place0.p) 

Part2.CFrame = CFrame.new((Place2.p + Place1) / 2, Place2.p) 

BlockMesh.Scale = Vector3.new(0.06, 0.06, (Place0.p - Place1).magnitude) 

BlockMesh.Scale = Vector3.new(0.06, 0.06, (Place2.p - Place1).magnitude) 

if (Part1.Transparency > 1) then 

Part1:Remove() 

Part2:Remove() 

break 

end 

wait() 

end 

end 

function onHopperBinSelected(Mouse) 

Mouse.Button1Down:connect(function() onButton1Down(Mouse) end) 

end 

HopperBin.Selected:connect(onHopperBinSelected)