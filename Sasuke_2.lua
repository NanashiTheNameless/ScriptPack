Say create/sasuke/local


Then use script



wait(0.1)
ModelName = "Sasuke"
SkinColor = BrickColor.new("Pastel brown")
HairColor =BrickColor.new("Black")
ShirtColor = BrickColor.new("Medium stone grey")
SymbolColor = BrickColor.new("Bright red")
SymbolColor2 = BrickColor.new("White")
PantsColor = BrickColor.new(Color3.new(0.4,0.4,1))
PantsColor2 = BrickColor.new("Black")
BeltColor = BrickColor.new(Color3.new(0.6,0.4,1))
BladeColor = BrickColor.new("White")
Sharingan = "http://www.roblox.com/asset/?id=64386509"
MangekyouSharinan = "http://www.roblox.com/asset/?id=66933293"
function CreatePart(Part,Color,Size,Name,Parent)
Part.BrickColor = Color
Part.FormFactor = "Custom"
Part.Size = Size
Part.CanCollide = false
Part.TopSurface = 0
Part.BottomSurface = 0
Part.CFrame = CFrame.new(0,10,0)
Part.Name = Name
Part.Parent = Parent
end
function Block(Scale,Parent)
Mesh = Instance.new("BlockMesh")
Mesh.Scale = Scale
Mesh.Parent = Parent
end
function Cylinder(Scale,Parent)
Mesh = Instance.new("CylinderMesh")
Mesh.Scale = Scale
Mesh.Parent = Parent
end
function Sphere(Scale,Parent)
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Sphere"
Mesh.Scale = Scale
Mesh.Parent = Parent
end
function Wedge(Scale,Parent)
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Wedge"
Mesh.Scale = Scale
Mesh.Parent = Parent
end
function CreateTorso(Scale,Parent)
Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Torso"
Mesh.Scale = Scale
Mesh.Parent = Parent
end
function Glue(Part0,Part1,C0)
Weld = Instance.new("Weld")
Weld.Part0 = Part0
Weld.Part1 = Part1
Weld.C0 = C0
Weld.Parent = Part1
end
function CreateHead(Scale,Parent)
Mesh = Instance.new("SpecialMesh")
Mesh.Scale = Scale
Mesh.Parent = Parent
end
function Sharp(Scale,Parent)
Mesh = Instance.new("SpecialMesh")
Mesh.MeshId = "http://www.roblox.com/asset/?id=1033714"
Mesh.Scale = Scale
Mesh.Parent = Parent
end
function SpecialMesh(MeshId,Scale,Parent)
Mesh = Instance.new("SpecialMesh")
Mesh.MeshId = MeshId
Mesh.Scale = Scale
Mesh.Parent = Parent
end
Camera = workspace.Camera
Camera.CameraType = "Follow"
Player = game.Players.LocalPlayer
Char = Player.Character
for i, v in pairs(Char:GetChildren()) do
if v.Name == ModelName then
v:remove()
elseif v:IsA("Hat") then
v.Handle.Transparency = 1
elseif v:IsA("Part") then
v.Transparency = 1
end
end
Humanoid = Char.Humanoid
Head = Char.Head
Camera.CameraSubject = Head
for i, v in pairs(Head:GetChildren()) do
if v:IsA("Decal") then
v:remove()
end
end
Torso = Char.Torso
RightArm = Char["Right Arm"]
LeftArm = Char["Left Arm"]
RightLeg = Char["Right Leg"]
LeftLeg = Char["Left Leg"]
Weapon = Instance.new("Model")
Weapon.Name = ModelName
Weapon.Parent = Char
Stomach = Instance.new("Part")
CreatePart(Stomach,SkinColor,Vector3.new(0.4,0.4,0.4),"Stomach",Weapon)
Block(Vector3.new(3.6,4,2.5),Stomach)
Stomach.Mesh.Bevel = 0.3
Glue(Torso,Stomach,CFrame.new(0,0.3,0))
Shirt = Instance.new("Part")
CreatePart(Shirt,ShirtColor,Vector3.new(0.4,0.4,0.4),"Shirt",Weapon)
Block(Vector3.new(3.7,4.1,2.6),Shirt)
Shirt.Mesh.Bevel = 0.3
Glue(Stomach,Shirt,CFrame.new(0,0,0))
Shirt = Instance.new("Part")
CreatePart(Shirt,PantsColor,Vector3.new(0.4,0.4,0.4),"Shirt",Weapon)
Block(Vector3.new(3.8,2,2.7),Shirt)
Shirt.Mesh.Bevel = 0.3
Glue(Stomach,Shirt,CFrame.new(0,0,0))
Pants = Instance.new("Part")
CreatePart(Pants,PantsColor,Vector3.new(0.4,0.4,0.4),"Pants",Weapon)
Block(Vector3.new(3,4,2),Pants)
Pants.Mesh.Bevel = 0.3
Glue(Stomach,Pants,CFrame.new(0.5,-0.8,-0.4) * CFrame.Angles(math.rad(25),0,0))
Belt = Instance.new("Part")
CreatePart(Belt,BeltColor,Vector3.new(0.4,0.4,0.4),"Belt",Weapon)
Sphere(Vector3.new(3,2,1),Belt)
Glue(Pants,Belt,CFrame.new(0,0.4,-0.4))
Pants = Instance.new("Part")
CreatePart(Pants,PantsColor,Vector3.new(0.4,0.4,0.4),"Pants",Weapon)
Block(Vector3.new(3,4,2),Pants)
Pants.Mesh.Bevel = 0.3
Glue(Stomach,Pants,CFrame.new(0,-0.8,-0.35) * CFrame.Angles(math.rad(25),math.rad(15),0))
Belt = Instance.new("Part")
CreatePart(Belt,BeltColor,Vector3.new(0.4,0.4,0.4),"Belt",Weapon)
Sphere(Vector3.new(3,2,1),Belt)
Glue(Pants,Belt,CFrame.new(0,0.4,-0.4))
Pants = Instance.new("Part")
CreatePart(Pants,PantsColor,Vector3.new(0.4,0.4,0.4),"Pants",Weapon)
Block(Vector3.new(3,4,2),Pants)
Pants.Mesh.Bevel = 0.3
Glue(Stomach,Pants,CFrame.new(-0.5,-0.8,-0.2) * CFrame.Angles(math.rad(25),math.rad(30),0))
Belt = Instance.new("Part")
CreatePart(Belt,BeltColor,Vector3.new(0.4,0.4,0.4),"Belt",Weapon)
Sphere(Vector3.new(3,2,1),Belt)
Glue(Pants,Belt,CFrame.new(0,0.4,-0.4))
Pants = Instance.new("Part")
CreatePart(Pants,PantsColor,Vector3.new(0.4,0.4,0.4),"Pants",Weapon)
Block(Vector3.new(3,4,2),Pants)
Pants.Mesh.Bevel = 0.3
Glue(Stomach,Pants,CFrame.new(0.5,-0.8,0.4) * CFrame.Angles(math.rad(-25),math.rad(15),0))
Belt = Instance.new("Part")
CreatePart(Belt,BeltColor,Vector3.new(0.4,0.4,0.4),"Belt",Weapon)
Sphere(Vector3.new(3,2,1),Belt)
Glue(Pants,Belt,CFrame.new(0,0.4,0.4))
Pants = Instance.new("Part")
CreatePart(Pants,PantsColor,Vector3.new(0.4,0.4,0.4),"Pants",Weapon)
Block(Vector3.new(3,4,2),Pants)
Pants.Mesh.Bevel = 0.3
Glue(Stomach,Pants,CFrame.new(0,-0.8,0.45) * CFrame.Angles(math.rad(-25),math.rad(-15),0))
Belt = Instance.new("Part")
CreatePart(Belt,BeltColor,Vector3.new(0.4,0.4,0.4),"Belt",Weapon)
Sphere(Vector3.new(3,2,1),Belt)
Glue(Pants,Belt,CFrame.new(0,0.4,0.4))
Pants = Instance.new("Part")
CreatePart(Pants,PantsColor,Vector3.new(0.4,0.4,0.4),"Pants",Weapon)
Block(Vector3.new(3,4,2),Pants)
Pants.Mesh.Bevel = 0.3
Glue(Stomach,Pants,CFrame.new(-0.5,-0.8,0.2) * CFrame.Angles(math.rad(-25),math.rad(-20),0))
Belt = Instance.new("Part")
CreatePart(Belt,BeltColor,Vector3.new(0.4,0.4,0.4),"Belt",Weapon)
Sphere(Vector3.new(3,2,1),Belt)
Glue(Pants,Belt,CFrame.new(0,0.4,0.4))
Body = Instance.new("Part")
CreatePart(Body,SkinColor,Vector3.new(0.4,0.4,0.4),"Body",Weapon)
Block(Vector3.new(4.6,4,3),Body)
Body.Mesh.Bevel = 0.3
Glue(Stomach,Body,CFrame.new(0,1,-0.1))
Shirt = Instance.new("Part")
CreatePart(Shirt,ShirtColor,Vector3.new(0.4,0.4,0.4),"Shirt",Weapon)
Block(Vector3.new(4.7,4.15,3.1),Shirt)
Shirt.Mesh.Bevel = 0.3
Glue(Body,Shirt,CFrame.new(0,0,0.1))
Shirt = Instance.new("Part")
CreatePart(Shirt,ShirtColor,Vector3.new(0.4,0.4,0.4),"Shirt",Weapon)
Block(Vector3.new(2.4,4.1,3.3),Shirt)
Shirt.Mesh.Bevel = 0.3
Glue(Body,Shirt,CFrame.new(0.5,0,0))
Shirt = Instance.new("Part")
CreatePart(Shirt,ShirtColor,Vector3.new(0.4,0.4,0.4),"Shirt",Weapon)
Block(Vector3.new(2.6,4.1,3.2),Shirt)
Shirt.Mesh.Bevel = 0.3
Glue(Body,Shirt,CFrame.new(0.25,0,0) * CFrame.Angles(0,0,math.rad(-25)))
Shirt = Instance.new("Part")
CreatePart(Shirt,ShirtColor,Vector3.new(0.4,0.4,0.4),"Shirt",Weapon)
Block(Vector3.new(2.4,4.1,3.3),Shirt)
Shirt.Mesh.Bevel = 0.3
Glue(Body,Shirt,CFrame.new(-0.5,0,0))
Shirt = Instance.new("Part")
CreatePart(Shirt,ShirtColor,Vector3.new(0.4,0.4,0.4),"Shirt",Weapon)
Block(Vector3.new(2.6,4.1,3.2),Shirt)
Shirt.Mesh.Bevel = 0.3
Glue(Body,Shirt,CFrame.new(-0.25,0,0) * CFrame.Angles(0,0,math.rad(25)))
Symbol = Instance.new("Part")
CreatePart(Symbol,SymbolColor,Vector3.new(0.4,0.4,0.4),"Symbol",Weapon)
Cylinder(Vector3.new(1.8,1,1.8),Symbol)
Glue(Body,Symbol,CFrame.new(0,0.2,0.55) * CFrame.Angles(math.rad(90),0,0))
Symbol = Instance.new("Part")
CreatePart(Symbol,SymbolColor2,Vector3.new(0.4,0.4,0.4),"Symbol",Weapon)
Cylinder(Vector3.new(1.4,1.01,1.4),Symbol)
Glue(Body,Symbol,CFrame.new(0,0,0.55) * CFrame.Angles(math.rad(90),0,0))
Symbol = Instance.new("Part")
CreatePart(Symbol,SymbolColor2,Vector3.new(0.4,0.4,0.4),"Symbol",Weapon)
Block(Vector3.new(1,1.01,1),Symbol)
Glue(Body,Symbol,CFrame.new(0,-0.15,0.55) * CFrame.Angles(math.rad(90),0,0))
Sheath = Instance.new("Part")
CreatePart(Sheath,PantsColor2,Vector3.new(0.4,0.4,0.4),"Sheath",Weapon)
Block(Vector3.new(1.4,10,1),Sheath)
Sheath.Mesh.Bevel = 0.1
Glue(Body,Sheath,CFrame.new(1,-0.6,0.9) * CFrame.Angles(0,0,math.rad(45)))
Handle = Instance.new("Part")
CreatePart(Handle,PantsColor2,Vector3.new(0.4,0.4,0.4),"Handle",Weapon)
Block(Vector3.new(1.4,3,1.1),Handle)
Handle.Mesh.Bevel = 0.1
Glue(Body,Handle,CFrame.new(-0.8,1.2,0.9) * CFrame.Angles(0,0,math.rad(45)))
Blade = Instance.new("Part")
CreatePart(Blade,BladeColor,Vector3.new(0.4,3.4,0.4),"Blade",Weapon)
Blade.CanCollide = true
Block(Vector3.new(1,1,0.4),Blade)
Glue(Handle,Blade,CFrame.new(0,-2,0))
Edge = Instance.new("Part")
CreatePart(Edge,BladeColor,Vector3.new(0.4,0.4,0.4),"Edge",Weapon)
Edge.CanCollide = true
Wedge(Vector3.new(0.4,1,1.1),Edge)
Glue(Blade,Edge,CFrame.new(0,-1.9,0) * CFrame.Angles(math.rad(180),math.rad(90),0))
Neck = Instance.new("Part")
CreatePart(Neck,SkinColor,Vector3.new(0.4,0.4,0.4),"Neck",Weapon)
Cylinder(Vector3.new(1.6,2,1.6),Neck)
Glue(Body,Neck,CFrame.new(0,1,0))
Head = Instance.new("Part")
CreatePart(Head,SkinColor,Vector3.new(2,1,1),"Head",Weapon)
CreateHead(Vector3.new(1.25,1.25,1.25),Head)
Glue(Neck,Head,CFrame.new(0,0.6,-0.1))
Face = Instance.new("Part")
CreatePart(Face,SkinColor,Vector3.new(1.4,1,0.4),"Face",Weapon)
Face.Transparency = 1
Decal = Instance.new("Decal")
Decal.Texture = Sharingan
Decal.Parent = Face
Glue(Head,Face,CFrame.new(0,-0.1,-0.45))
Hair = Instance.new("Part")
CreatePart(Hair,HairColor,Vector3.new(0.4,0.4,0.4),"Hair",Weapon)
SpecialMesh("http://www.roblox.com/asset/?id=62246019",Vector3.new(1.2,1.2,1.2),Hair)
Glue(Head,Hair,CFrame.new(0,0.2,0.2))
Hair = Instance.new("Part")
CreatePart(Hair,HairColor,Vector3.new(0.4,0.4,0.4),"Hair",Weapon)
SpecialMesh("http://www.roblox.com/asset/?id=16627529",Vector3.new(1.1,1.1,1.1),Hair)
Glue(Head,Hair,CFrame.new(0,0.4,0))
RArm = Instance.new("Part")
CreatePart(RArm,SkinColor,Vector3.new(0.4,0.4,0.4),"RArm",Weapon)
Block(Vector3.new(1.8,4,1.8),RArm)
RArm.Mesh.Bevel = 0.3
Glue(Body,RArm,CFrame.new(1,-0.2,0))
Sleeve = Instance.new("Part")
CreatePart(Sleeve,ShirtColor,Vector3.new(0.4,0.4,0.4),"Sleeve",Weapon)
Block(Vector3.new(1.9,4.1,1.9),Sleeve)
Sleeve.Mesh.Bevel = 0.3
Glue(RArm,Sleeve,CFrame.new(0,0,0))
RArm2 = Instance.new("Part")
CreatePart(RArm2,SkinColor,Vector3.new(0.4,0.4,0.4),"RArm2",Weapon)
Block(Vector3.new(1.8,3.5,1.8),RArm2)
RArm2.Mesh.Bevel = 0.3
Glue(RArm,RArm2,CFrame.new(0,-1,0))
Hand = Instance.new("Part")
CreatePart(Hand,SkinColor,Vector3.new(0.4,0.4,0.4),"Hand",Weapon)
Block(Vector3.new(2,2.4,2),Hand)
Hand.Mesh.Bevel = 0.3
Glue(RArm2,Hand,CFrame.new(0,-0.6,0))
Sleeve = Instance.new("Part")
CreatePart(Sleeve,PantsColor2,Vector3.new(0.4,0.4,0.4),"Sleeve",Weapon)
Block(Vector3.new(1.9,3,1.9),Sleeve)
Sleeve.Mesh.Bevel = 0.3
Glue(RArm2,Sleeve,CFrame.new(0,-0.1,0))
LArm = Instance.new("Part")
CreatePart(LArm,SkinColor,Vector3.new(0.4,0.4,0.4),"LArm",Weapon)
Block(Vector3.new(1.8,4,1.8),LArm)
LArm.Mesh.Bevel = 0.3
Glue(Body,LArm,CFrame.new(-1,-0.2,0))
Sleeve = Instance.new("Part")
CreatePart(Sleeve,ShirtColor,Vector3.new(0.4,0.4,0.4),"Sleeve",Weapon)
Block(Vector3.new(1.9,4.1,1.9),Sleeve)
Sleeve.Mesh.Bevel = 0.3
Glue(LArm,Sleeve,CFrame.new(0,0,0))
LArm2 = Instance.new("Part")
CreatePart(LArm2,SkinColor,Vector3.new(0.4,0.4,0.4),"LArm2",Weapon)
Block(Vector3.new(1.8,3.5,1.8),LArm2)
LArm2.Mesh.Bevel = 0.3
Glue(LArm,LArm2,CFrame.new(0,-1,0))
Sleeve = Instance.new("Part")
CreatePart(Sleeve,PantsColor2,Vector3.new(0.4,0.4,0.4),"Sleeve",Weapon)
Block(Vector3.new(1.9,3,1.9),Sleeve)
Sleeve.Mesh.Bevel = 0.3
Glue(LArm2,Sleeve,CFrame.new(0,-0.1,0))
Hand2 = Instance.new("Part")
CreatePart(Hand2,SkinColor,Vector3.new(0.4,0.4,0.4),"Hand",Weapon)
Block(Vector3.new(2,2.4,2),Hand2)
Hand2.Mesh.Bevel = 0.3
Glue(LArm2,Hand2,CFrame.new(0,-0.6,0))
RLeg = Instance.new("Part")
CreatePart(RLeg,SkinColor,Vector3.new(0.4,0.4,0.4),"RLeg",Weapon)
Block(Vector3.new(2,4,2),RLeg)
RLeg.Mesh.Bevel = 0.3
Glue(Stomach,RLeg,CFrame.new(0.5,-1.2,0))
Pants = Instance.new("Part")
CreatePart(Pants,PantsColor2,Vector3.new(0.4,0.4,0.4),"Pants",Weapon)
Block(Vector3.new(2.1,4.1,2.1),Pants)
Pants.Mesh.Bevel = 0.3
Glue(RLeg,Pants,CFrame.new(0,0,0))
RLeg2 = Instance.new("Part")
CreatePart(RLeg2,SkinColor,Vector3.new(0.4,0.4,0.4),"RLeg2",Weapon)
Block(Vector3.new(1.6,4,1.6),RLeg2)
RLeg2.Mesh.Bevel = 0.3
Glue(RLeg,RLeg2,CFrame.new(0,-1.2,0))
Pants = Instance.new("Part")
CreatePart(Pants,PantsColor2,Vector3.new(0.4,0.4,0.4),"Pants",Weapon)
Block(Vector3.new(2.1,4.1,2.1),Pants)
Pants.Mesh.Bevel = 0.3
Glue(RLeg2,Pants,CFrame.new(0,0,0))
Foot = Instance.new("Part")
CreatePart(Foot,SkinColor,Vector3.new(0.4,0.4,0.4),"Foot",Weapon)
Block(Vector3.new(1.6,1,3.4),Foot)
Foot.Mesh.Bevel = 0.2
Glue(RLeg2,Foot,CFrame.new(0,-0.6,-0.4))
Sole = Instance.new("Part")
CreatePart(Sole,PantsColor2,Vector3.new(0.4,0.4,0.4),"Sole",Weapon)
Block(Vector3.new(1.7,0.8,3.5),Sole)
Sole.Mesh.Bevel = 0.2
Glue(Foot,Sole,CFrame.new(0,-0.1,0))
Shoe = Instance.new("Part")
CreatePart(Shoe,PantsColor2,Vector3.new(0.4,0.4,0.4),"Shoe",Weapon)
Block(Vector3.new(1.7,1.1,3),Shoe)
Shoe.Mesh.Bevel = 0.2
Glue(Foot,Shoe,CFrame.new(0,0,0))
LLeg = Instance.new("Part")
CreatePart(LLeg,SkinColor,Vector3.new(0.4,0.4,0.4),"LLeg",Weapon)
Block(Vector3.new(2,4,2),LLeg)
LLeg.Mesh.Bevel = 0.3
Glue(Stomach,LLeg,CFrame.new(-0.5,-1.2,0))
Pants = Instance.new("Part")
CreatePart(Pants,PantsColor2,Vector3.new(0.4,0.4,0.4),"Pants",Weapon)
Block(Vector3.new(2.1,4.1,2.1),Pants)
Pants.Mesh.Bevel = 0.3
Glue(LLeg,Pants,CFrame.new(0,0,0))
LLeg2 = Instance.new("Part")
CreatePart(LLeg2,SkinColor,Vector3.new(0.4,0.4,0.4),"LLeg2",Weapon)
Block(Vector3.new(1.6,4,1.6),LLeg2)
LLeg2.Mesh.Bevel = 0.3
Glue(LLeg,LLeg2,CFrame.new(0,-1.2,0))
Pants = Instance.new("Part")
CreatePart(Pants,PantsColor2,Vector3.new(0.4,0.4,0.4),"Pants",Weapon)
Block(Vector3.new(2.1,4.1,2.1),Pants)
Pants.Mesh.Bevel = 0.3
Glue(LLeg2,Pants,CFrame.new(0,0,0))
Foot2 = Instance.new("Part")
CreatePart(Foot2,SkinColor,Vector3.new(0.4,0.4,0.4),"Foot",Weapon)
Block(Vector3.new(1.6,1,3.4),Foot2)
Foot2.Mesh.Bevel = 0.2
Glue(LLeg2,Foot2,CFrame.new(0,-0.6,-0.4))
Sole = Instance.new("Part")
CreatePart(Sole,PantsColor2,Vector3.new(0.4,0.4,0.4),"Sole",Weapon)
Block(Vector3.new(1.7,0.8,3.5),Sole)
Sole.Mesh.Bevel = 0.2
Glue(Foot2,Sole,CFrame.new(0,-0.1,0))
Shoe = Instance.new("Part")
CreatePart(Shoe,PantsColor2,Vector3.new(0.4,0.4,0.4),"Shoe",Weapon)
Block(Vector3.new(1.7,1.1,3),Shoe)
Shoe.Mesh.Bevel = 0.2
Glue(Foot2,Shoe,CFrame.new(0,0,0))
Spot = Instance.new("Part")
Backpack = Player.Backpack
for i, v in pairs(Backpack:GetChildren()) do
if v.Name == ModelName then
v:remove()
end
end
HopperBin = Instance.new("HopperBin")
HopperBin.Name = ModelName
HopperBin.Parent = Backpack
Damage = Instance.new("IntValue")
Damage.Value = 5
Damage.Name = "Damage"
Damage.Parent = HopperBin
script.Parent = HopperBin
PlayerGui = Player.PlayerGui
for i, v in pairs(PlayerGui:GetChildren()) do
v:remove()
end
Gui = Instance.new("ScreenGui")
Gui.Name = "Gui"
Gui.Parent = PlayerGui
MaxChakra = Instance.new("IntValue")
MaxChakra.Value = 500
MaxChakra.Name = "MaxChakra"
MaxChakra.Parent = Gui
Chakra = Instance.new("IntValue")
Chakra.Value = MaxChakra.Value
Chakra.Name = "Chakra"
Chakra.Parent = Gui
Image = Instance.new("ImageLabel")
Image.BackgroundColor = BrickColor.new("White")
Image.BackgroundTransparency = 1
Image.Image = "http://www.roblox.com/thumbs/avatar.ashx?x=352&y=352&format=png&username="..Player.Name
Image.Image = "http://www.roblox.com/asset/?id=62272965"
Image.Size = UDim2.new(0.1,0,0.1,0)
Image.Position = UDim2.new(0.02,0,0.46,0)
Image.Name = "Image"
Image.Parent = Gui
Circle = Instance.new("ImageLabel")
Circle.BackgroundColor = BrickColor.new("White")
Circle.BackgroundTransparency = 1
Circle.Image = "http://www.roblox.com/asset/?id=55585187"
Circle.Size = UDim2.new(0.15,0,0.15,0)
Circle.Position = UDim2.new(0,0,0.43,0)
Circle.Parent = Gui
Bar = Instance.new("ImageLabel")
Bar.BackgroundColor = BrickColor.new("White")
Bar.Image = "http://www.roblox.com/asset/?id=67599350"
Bar.Size = UDim2.new(0.25,0,0.02,0)
Bar.Position = UDim2.new(0.13,0,0.52,0)
Bar.Name = "Bar"
Bar.Parent = Gui
BarTracking = Instance.new("ImageLabel")
BarTracking.BackgroundColor = BrickColor.new("Bright blue")
BarTracking.Image = "http://www.roblox.com/asset/?id=48819326"
BarTracking.Size = UDim2.new(0.4,0,1,0)
BarTracking.Name = "BarTracking"
BarTracking.Parent = Bar
Bar2 = Instance.new("ImageLabel")
Bar2.BackgroundColor = BrickColor.new("Bright red")
Bar2.Image = "http://www.roblox.com/asset/?id=67599364"
Bar2.Size = UDim2.new(0.26,0,0.02,0)
Bar2.Position = UDim2.new(0.13,0,0.5,0)
Bar2.Name = "Bar"
Bar2.Parent = Gui
BarTracking2 = Instance.new("ImageLabel")
BarTracking2.BackgroundColor = BrickColor.new("Bright green")
BarTracking2.Image = "http://www.roblox.com/asset/?id=67599373"
BarTracking2.Size = UDim2.new(0.65,0,1,0)
BarTracking2.Name = "BarTracking"
BarTracking2.Parent = Bar2
Pose = "Standing"
Action = "Flip"
Flipping = false
Time = 0
Combo = true
Combo2 = false
Combo3 = false
Attack = false
Use = false
Streaming = false
ChidoriAttack = false
Awakening = false
Ready = false
Sword = Sheathed
function ShurikenThrow()
if Attack == false and Awakening == false then
Attack = true
RArm.Weld.C0 = CFrame.new(1,0.2,0) * CFrame.Angles(math.rad(90),0,math.rad(135))
RArm2.Weld.C0 = CFrame.new(0,-1,0) * CFrame.Angles(0,0,math.rad(-10))
Shuriken = Instance.new("Part")
CreatePart(Shuriken,BrickColor.new("Black"),Vector3.new(1,1,1),"Shuriken",Weapon)
SpecialMesh("http://www.roblox.com/asset/?id=11376946",Vector3.new(2,2,2),Shuriken)
Glue(Hand,Shuriken,CFrame.new(0,-0.8,0) * CFrame.Angles(0,math.rad(90),math.rad(90)))
game.Debris:AddItem(Shuriken,4)
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and hit.Parent.Name ~= Player.Name then
Human:TakeDamage(2)
end
end
Shuriken.Touched:connect(onTouched)
function onTouched(hit)
if hit.Name == "Wall" or hit.Name == "Shuriken" then
Shuriken.CanCollide = true
Shuriken.Anchored = true
Blast = Instance.new("Part")
CreatePart(Blast,BrickColor.new("New Yeller"),Vector3.new(0.4,0.4,0.4),"Blast",Shuriken)
Blast.Transparency = 0.4
Blast.Anchored = true
Blast.CFrame = Shuriken.CFrame
Sphere(Vector3.new(1,1,1),Blast)
game.Debris:AddItem(Blast,1)
for i=1, 10 do
wait(0.0001)
Blast.Mesh.Scale = Blast.Mesh.Scale + Vector3.new(0.1,0.1,0.1)
end
Shuriken.Anchored = false
Shuriken.BodyPosition:remove()
end
end
Shuriken.Touched:connect(onTouched)
for i=1, 10 do
wait(0.0001)
RArm.Weld.C0 = RArm.Weld.C0 * CFrame.Angles(0,0,math.rad(-12.5))
end
Spot.CFrame = Hand.CFrame * CFrame.new(0,-1000,0)
Shuriken.Weld:remove()
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bp.P = 120
Bp.position = Spot.Position
Bp.Parent = Shuriken
Bg = Instance.new("BodyGyro")
Bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
Bg.cframe = Shuriken.CFrame
Bg.Parent = Shuriken
wait(0.4)
Attack = false
elseif Attack == false and Awakening == true and Chakra.Value >= 200 then
Attack = true
for i=1, 5 do
wait(0.0001)
Chakra.Value = Chakra.Value - 40
end
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bp.position = Torso.Position
Bp.Parent = Torso
game.Debris:AddItem(Bp,2)
Bg = Instance.new("BodyGyro")
Bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
Bg.cframe = Torso.CFrame
Bg.Parent = Torso
game.Debris:AddItem(Bg,2)
RArm.Weld.C0 = CFrame.new(1,0.2,0) * CFrame.Angles(math.rad(135),0,0)
RArm2.Weld.C0 = CFrame.new(0,-1,0)
LArm.Weld.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(math.rad(135),0,0)
LArm2.Weld.C0 = CFrame.new(0,-1,0)
Shuriken = Instance.new("Part")
CreatePart(Shuriken,BrickColor.new("Black"),Vector3.new(4,2,4),"Shuriken",Weapon)
Shuriken.CanCollide = true
Shuriken.CFrame = RArm.CFrame * CFrame.new(0,-100,0) * CFrame.Angles(0,0,math.rad(90))
SpecialMesh("http://www.roblox.com/asset/?id=11376946",Vector3.new(8,4,8),Shuriken)
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bp.position = Shuriken.Position
Bp.Parent = Shuriken
Bg = Instance.new("BodyGyro")
Bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
Bg.cframe = Torso.CFrame * CFrame.Angles(0,0,math.rad(90))
Bg.Parent = Shuriken
game.Debris:AddItem(Shuriken,2)
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and hit.Parent.Name ~= Char.Name then
Human:TakeDamage(3)
Faint = Instance.new("IntValue")
Faint.Name = "Faint"
Faint.Parent = Human
game.Debris:AddItem(Faint,1)
Bp.position = hit.Position
end
end
Shuriken.Touched:connect(onTouched)
Shuriken2 = Instance.new("Part")
CreatePart(Shuriken2,BrickColor.new("Black"),Vector3.new(4,2,4),"Shuriken",Weapon)
Shuriken2.CanCollide = true
Shuriken2.CFrame = LArm.CFrame * CFrame.new(0,-100,0) * CFrame.Angles(0,0,math.rad(90))
SpecialMesh("http://www.roblox.com/asset/?id=11376946",Vector3.new(8,4,8),Shuriken2)
Bp2 = Instance.new("BodyPosition")
Bp2.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bp2.position = Shuriken2.Position
Bp2.Parent = Shuriken2
Bg2 = Instance.new("BodyGyro")
Bg2.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
Bg2.cframe = Torso.CFrame * CFrame.Angles(0,0,math.rad(90))
Bg2.Parent = Shuriken2
game.Debris:AddItem(Shuriken2,2)
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and hit.Parent.Name ~= Char.Name then
Human:TakeDamage(3)
Faint = Instance.new("IntValue")
Faint.Name = "Faint"
Faint.Parent = Human
game.Debris:AddItem(Faint,1)
Bp2.position = hit.Position
end
end
Shuriken2.Touched:connect(onTouched)
wait(0.0001)
RArm.Weld.C0 = CFrame.new(1,0.2,0) * CFrame.Angles(math.rad(90),0,0)
LArm.Weld.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(math.rad(90),0,0)
Shuriken.CFrame = RArm.CFrame * CFrame.new(0,-80,0)
Bp.position = Shuriken.Position
Shuriken2.CFrame = LArm.CFrame * CFrame.new(0,-80,0)
Bp2.position = Shuriken2.Position
wait(0.0001)
RArm.Weld.C0 = CFrame.new(1,0.2,0) * CFrame.Angles(math.rad(45),0,0)
LArm.Weld.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(math.rad(45),0,0)
Shuriken.CFrame = RArm.CFrame * CFrame.new(0,0,-20)
Bp.position = Shuriken.Position
Shuriken2.CFrame = LArm.CFrame * CFrame.new(0,0,-20)
Bp2.position = Shuriken2.Position
wait(0.0001)
RArm.Weld.C0 = CFrame.new(1,0.2,0) * CFrame.Angles(math.rad(25),0,0)
LArm.Weld.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(math.rad(25),0,0)
Shuriken.CFrame = RArm.CFrame * CFrame.new(0,0,-10)
Bp.position = Shuriken.Position + Vector3.new(0,-12,0)
Shuriken2.CFrame = LArm.CFrame * CFrame.new(0,0,-10)
Bp2.position = Shuriken2.Position + Vector3.new(0,-12,0)
wait(2)
Attack = false
end
end
function Slash()
if Attack == false and Combo == true and Handle:FindFirstChild("Weld") ~= nil then
Attack = true
Combo = false
Time = 0
LArm.Weld.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(math.rad(-45),0,math.rad(-45))
LArm2.Weld.C0 = CFrame.new(0,-1,0.2) * CFrame.Angles(math.rad(-45),0,0)
wait(0.05)
LArm.Weld.C0 = CFrame.new(-1,0.2,0.2) * CFrame.Angles(math.rad(-90),0,math.rad(-45))
LArm2.Weld.C0 = CFrame.new(0,-1,0.2) * CFrame.Angles(math.rad(-65),0,0)
wait(0.05)
LArm.Weld.C0 = CFrame.new(-1,0.2,0.4) * CFrame.Angles(math.rad(-135),0,math.rad(-45))
LArm2.Weld.C0 = CFrame.new(0,-1,0.2) * CFrame.Angles(math.rad(-25),0,0)
wait(0.05)
LArm.Weld.C0 = CFrame.new(-1,0.2,0.4) * CFrame.Angles(math.rad(-155),0,math.rad(-25))
LArm2.Weld.C0 = CFrame.new(0,-1,0.2) * CFrame.Angles(math.rad(-25),0,0)
Handle.Weld.Part0 = Hand2
Handle.Weld.C0 = CFrame.new(0,-0.4,0) * CFrame.Angles(math.rad(135),0,math.rad(90))
LArm.Weld.C0 = CFrame.new(-1,-0.2,0) * CFrame.Angles(math.rad(90),0,math.rad(-45))
Attack = false
Combo2 = true
elseif Attack == false and Combo2 == true and Time <= 1 and Handle:FindFirstChild("Weld") ~= nil then
Attack = true
Combo2 = false
Time = 0
Handle.Weld.C0 = CFrame.new(0,-0.4,0) * CFrame.Angles(math.rad(90),math.rad(90),0)
LArm.Weld.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(-45))
wait(0.0001)
LArm.Weld.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(math.rad(80),math.rad(-90),math.rad(-35))
wait(0.0001)
LArm.Weld.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(math.rad(60),math.rad(-90),math.rad(-25))
wait(0.0001)
LArm.Weld.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(math.rad(50),math.rad(-90),math.rad(-15))
Attack = false
Combo3 = true
elseif Attack == false and Combo3 == true and Time <= 1 and Handle:FindFirstChild("Weld") ~= nil then
Attack = true
Combo3 = false
Time = 0
Humanoid.Jump = true
Body.Weld.C0 = CFrame.new(0,1,-0.4) * CFrame.Angles(math.rad(-25),0,0)
RArm.Weld.C0 = CFrame.new(1.6,0.2,0) * CFrame.Angles(0,math.rad(-25),math.rad(90))
RArm2.Weld.C0 = CFrame.new(0,-1,0)
LArm.Weld.C0 = CFrame.new(-1.6,0.2,0) * CFrame.Angles(0,math.rad(25),math.rad(-90))
LArm2.Weld.C0 = CFrame.new(0,-1,-0)
RLeg.Weld.C0 = CFrame.new(0.5,-1.2,-0.4) * CFrame.Angles(math.rad(45),0,0)
RLeg2.Weld.C0 = CFrame.new(0,-1,0.6) * CFrame.Angles(math.rad(-65),0,0)
LLeg.Weld.C0 = CFrame.new(-0.5,-1.2,-0.4) * CFrame.Angles(math.rad(65),0,0)
LLeg2.Weld.C0 = CFrame.new(0,-1,0.6) * CFrame.Angles(math.rad(-45),0,0)
for i=1, 7 do
wait(0.0001)
LArm.Weld.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(-15))
Stomach.Weld.C0 = Stomach.Weld.C0 * CFrame.new(0,1,-0.4) CFrame.Angles(math.rad(-20),0,0)
Torso.CFrame = Torso.CFrame * CFrame.new(0,0,-1)
if Bp ~= nil then
Bp.position = Bp.position + Vector3.new(0,10,0)
end
end
for i=1, 7 do
wait(0.0001)
LArm.Weld.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(math.rad(90),math.rad(-90),math.rad(-15))
Stomach.Weld.C0 = Stomach.Weld.C0 * CFrame.new(0,-1,-0.4) CFrame.Angles(math.rad(-20),0,0)
Torso.CFrame = Torso.CFrame * CFrame.new(0,0,-1)
if Bp ~= nil then
Bp.position = Bp.position + Vector3.new(0,10,0)
end
end
Stomach.Weld.C0 = CFrame.new(0,0.2,0)
Attack = false
Combo = true
end
end
function ChakraRestore()
if Attack == false then
Attack = true
Hold = true
for i=1, 100 do
wait()
if Hold == true then
Chakra.Value = Chakra.Value + 1
Humanoid.WalkSpeed = 0
Sparkles = Instance.new("Sparkles")
Sparkles.Parent = Torso
game.Debris:AddItem(Sparkles,0.2)
RArm.Weld.C0 = CFrame.new(1,0.2,-0.4) * CFrame.Angles(math.rad(90),0,math.rad(-22.5))
RArm2.Weld.C0 = CFrame.new(-0.2,-1,0) * CFrame.Angles(0,0,math.rad(-22.5))
LArm.Weld.C0 = CFrame.new(-1,0.2,-0.4) * CFrame.Angles(math.rad(90),0,math.rad(22.5))
LArm2.Weld.C0 = CFrame.new(0.2,-1,0) * CFrame.Angles(0,0,math.rad(22.5))
else
Attack = false
end
end
Attack = false
end
end
function Chidori()
if Attack == false and ChidoriAttack == false and Awakening == false and Chakra.Value >= 300 then
Attack = true
Use = false
ChidoriAttack = true
Humanoid.WalkSpeed = 0
for i=1, 5 do
wait(0.0001)
Chakra.Value = Chakra.Value - 60
end
RArm.Weld.C0 = CFrame.new(1,0.2,-0.2) * CFrame.Angles(math.rad(45),0,math.rad(-25))
RArm2.Weld.C0 = CFrame.new(0,-1,0)
LArm.Weld.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(math.rad(45),0,math.rad(45))
Lightning = Instance.new("Part")
CreatePart(Lightning,PantsColor,Vector3.new(2,2,2),"Chidori",Weapon)
Lightning.Transparency = 1
Sphere(Vector3.new(0,0,0),Lightning)
Glue(Hand,Lightning,CFrame.new(0,-1,0))
game.Debris:AddItem(Lightning,10)
Sparkles = Instance.new("Sparkles")
Sparkles.Color = PantsColor.Color
Sparkles.Parent = Lightning
Sparkles = Instance.new("Fire")
Sparkles.Color = PantsColor.Color
Sparkles.SecondaryColor = Sparkles.Color
Sparkles.Parent = Lightning
for i=1, 10 do
wait(0.0001)
Lightning.Mesh.Scale = Lightning.Mesh.Scale + Vector3.new(0.1,0.1,0.1)
end
RArm.Weld.C0 = CFrame.new(1,0.2,-0.2) * CFrame.Angles(math.rad(45),0,math.rad(-25))
RArm2.Weld.C0 = CFrame.new(0,-1,-0.2) * CFrame.Angles(math.rad(45),0,0)
Humanoid.WalkSpeed = 100
function onTouched(hit)
Human = hit.Parent.Parent:FindFirstChild("Humanoid")
if Human ~= nil and Use == false and hit.Parent.Parent.Name ~= Char.Name and hit.className ~= "Hat" then
Use = true
Human:TakeDamage(40)
Lightning.Weld.Part0 = hit.Parent.Torso
Spot.CFrame = Torso.CFrame * CFrame.new(0,0,-100)
game.Debris:AddItem(Lightning,0.1)
end
end
Lightning.Touched:connect(onTouched)
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil then
Flung = Instance.new("IntValue")
Flung.Name = "Flung"
Flung.Parent = Human
game.Debris:AddItem(Flung,1)
Faint = Instance.new("IntValue")
Faint.Name = "Faint"
Faint.Parent = Human
game.Debris:AddItem(Faint,1)
end
end
Lightning.Touched:connect(onTouched)
function onTouched(hit)
if hit.Name == "Rasengan" then
Ball = Instance.new("Part")
CreatePart(Ball,HairColor,Vector3.new(0.4,0.4,0.4),"Ball",Weapon)
Ball.Anchored = true
Ball.CFrame = hit.CFrame
Sphere(Vector3.new(30,30,30),Ball)
game.Debris:AddItem(Ball,2)
for i=1, 10 do
wait(0.2)
Ball.Transparency = Ball.Transparency + 0.1
Ball.Mesh.Scale = Ball.Mesh.Scale + Vector3.new(2,2,2)
end
end
end
Lightning.Touched:connect(onTouched)
for i=1, 100 do
wait(0.0001)
if Lightning ~= nil then
Lightning.CFrame = Hand.CFrame * CFrame.new(0,-1,0)
RArm.Weld.C0 = CFrame.new(1,0.2,-0.2) * CFrame.Angles(math.rad(45),0,math.rad(-25))
RArm2.Weld.C0 = CFrame.new(0,-1,-0.2) * CFrame.Angles(math.rad(45),0,0)
Spark = Instance.new("Part")
CreatePart(Spark,PantsColor,Vector3.new(0.4,0.4,0.4),"Chidori",Weapon)
Spark.Transparency = 1
Glue(Lightning,Spark,CFrame.new(math.random(-1,1),math.random(-1,1),math.random(-1,1)))
game.Debris:AddItem(Spark,1)
Sparkles = Instance.new("Sparkles")
Sparkles.Color = PantsColor.Color
Sparkles.Parent = Spark
end
end
for i, v in pairs(Weapon:GetChildren()) do
if v.Name == "Chidori" then
v:remove()
end
end
Humanoid.WalkSpeed = 16
Attack = false
wait(8)
ChidoriAttack = false
elseif Attack == false and ChidoriAttack == false and Awakening == true and Chakra.Value >= 125 then
Attack = true
Use = false
ChidoriAttack = true
Humanoid.WalkSpeed = 0
for i=1, 5 do
wait(0.0001)
Chakra.Value = Chakra.Value - 25
end
RArm.Weld.C0 = CFrame.new(1,0.2,-0.2) * CFrame.Angles(math.rad(45),0,math.rad(-25))
RArm2.Weld.C0 = CFrame.new(0,-1,0)
LArm.Weld.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(math.rad(45),0,math.rad(45))
Lightning = Instance.new("Part")
CreatePart(Lightning,BrickColor.new("Black"),Vector3.new(4,4,4),"Chidori",Weapon)
Lightning.Transparency = 0.6
Sphere(Vector3.new(0,0,0),Lightning)
Glue(Hand,Lightning,CFrame.new(0,-1,0))
game.Debris:AddItem(Lightning,10)
Sparkles = Instance.new("Sparkles")
Sparkles.Color = BrickColor.new("Black").Color
Sparkles.Parent = Lightning
Sparkles = Instance.new("Fire")
Sparkles.Color = BrickColor.new("Black").Color
Sparkles.SecondaryColor = Sparkles.Color
Sparkles.Parent = Lightning
for i=1, 10 do
wait(0.0001)
Lightning.Mesh.Scale = Lightning.Mesh.Scale + Vector3.new(0.05,0.05,0.05)
end
RArm.Weld.C0 = CFrame.new(1,0.2,-0.2) * CFrame.Angles(math.rad(45),0,math.rad(-25))
RArm2.Weld.C0 = CFrame.new(0,-1,-0.2) * CFrame.Angles(math.rad(45),0,0)
Humanoid.WalkSpeed = 100
function onTouched(hit)
Human = hit.Parent.Parent:FindFirstChild("Humanoid")
if Human ~= nil and Use == false and hit.Parent.Parent.Name ~= Char.Name and hit.className ~= "Hat" then
Use = true
Human:TakeDamage(50)
Lightning.Weld.Part0 = hit.Parent.Torso
Spot.CFrame = Torso.CFrame * CFrame.new(0,0,-100)
game.Debris:AddItem(Lightning,0.1)
end
end
Lightning.Touched:connect(onTouched)
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil then
Flung = Instance.new("IntValue")
Flung.Name = "Flung"
Flung.Parent = Human
game.Debris:AddItem(Flung,1)
Faint = Instance.new("IntValue")
Faint.Name = "Faint"
Faint.Parent = Human
game.Debris:AddItem(Faint,1)
end
end
Lightning.Touched:connect(onTouched)
function onTouched(hit)
if hit.Name == "Rasengan" then
Ball = Instance.new("Part")
CreatePart(Ball,HairColor,Vector3.new(0.4,0.4,0.4),"Ball",Weapon)
Ball.Anchored = true
Ball.CFrame = hit.CFrame
Sphere(Vector3.new(30,30,30),Ball)
game.Debris:AddItem(Ball,2)
for i=1, 10 do
wait(0.2)
Ball.Transparency = Ball.Transparency + 0.1
Ball.Mesh.Scale = Ball.Mesh.Scale + Vector3.new(2,2,2)
end
end
end
Lightning.Touched:connect(onTouched)
Spawn(function()
for i=1, 100 do
wait(0.0001)
if Lightning ~= nil then
RArm.Weld.C0 = CFrame.new(1,0.2,0) * CFrame.Angles(math.rad(180),0,0)
RArm2.Weld.C0 = CFrame.new(0,-1,0)
LArm.Weld.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(math.rad(180),0,math.rad(45))
Spark = Instance.new("Part")
CreatePart(Spark,PantsColor,Vector3.new(0.4,0.4,0.4),"Chidori",Weapon)
Spark.Transparency = 1
Glue(Lightning,Spark,CFrame.new(math.random(-1,1),math.random(-1,1),math.random(-1,1)))
game.Debris:AddItem(Spark,1)
Sparkles = Instance.new("Sparkles")
Sparkles.Color = BrickColor.new("Black").Color
Sparkles.Parent = Spark
end
end
end)
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bp.position = Torso.Position
Bp.Parent = Torso
Bg = Instance.new("BodyGyro")
Bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
Bg.cframe = Torso.CFrame
Bg.Parent = Torso
for i=1, 20 do
wait(0.0001)
Bp.position = Bp.position + Vector3.new(0,1,0)
end
for i=1, 12 do
wait(0.0001)
Stomach.Weld.C0 = Stomach.Weld.C0 * CFrame.Angles(math.rad(-10),0,0)
end
Spot.CFrame = Torso.CFrame
for i=1, 5 do
wait(0.0001)
Spot.CFrame = Spot.CFrame * CFrame.new(0,-6.2,-4)
Bp.position = Spot.Position
end
for i=1, 5 do
wait(0.0001)
Spot.CFrame = Spot.CFrame * CFrame.new(0,0,-4)
Bp.position = Spot.Position
end
for i=1, 5 do
wait(0.0001)
Stomach.Weld.C0 = Stomach.Weld.C0 * CFrame.Angles(math.rad(25),0,0)
Spot.CFrame = Spot.CFrame * CFrame.new(0,6.2,-4)
Bp.position = Spot.Position
end
for i, v in pairs(Weapon:GetChildren()) do
if v.Name == "Chidori" or v:IsA("BodyPosition") or v:IsA("BodyGyro") then
v:remove()
end
end
Stomach.Weld.C0 = CFrame.new(0,0.2,0)
Bp:remove()
Bg:remove()
Humanoid.WalkSpeed = 16
Attack = false
wait(8)
ChidoriAttack = false
end
end
function FireBall()
if Attack == false and Awakening == false and Chakra.Value >= 50 then
Attack = true
Chakra.Value = Chakra.Value - 80
Body.Weld.C0 = CFrame.new(0,1,0.2) * CFrame.Angles(math.rad(5),0,0)
RArm.Weld.C0 = CFrame.new(1,0.2,-0.4) * CFrame.Angles(math.rad(90),0,math.rad(-22.5))
RArm2.Weld.C0 = CFrame.new(-0.2,-1,0) * CFrame.Angles(0,0,math.rad(-22.5))
wait(0.0001)
Body.Weld.C0 = CFrame.new(0,1,0.2) * CFrame.Angles(math.rad(10),0,0)
RArm2.Weld.C0 = CFrame.new(-0.2,-1,-0.1) * CFrame.Angles(math.rad(5),0,math.rad(-22.5))
wait(0.0001)
RArm2.Weld.C0 = CFrame.new(-0.2,-1,-0.1) * CFrame.Angles(math.rad(10),0,math.rad(-22.5))
Body.Weld.C0 = CFrame.new(0,1,0.2) * CFrame.Angles(math.rad(15),0,0)
wait(0.0001)
RArm2.Weld.C0 = CFrame.new(-0.2,-1,-0.1) * CFrame.Angles(math.rad(15),0,math.rad(-22.5))
Body.Weld.C0 = CFrame.new(0,1,0.2) * CFrame.Angles(math.rad(20),0,0)
wait(0.0001)
RArm2.Weld.C0 = CFrame.new(-0.2,-1,-0.1) * CFrame.Angles(math.rad(25),0,math.rad(-22.5))
Body.Weld.C0 = CFrame.new(0,1,0.2) * CFrame.Angles(math.rad(25),0,0)
wait(0.5)
RArm2.Weld.C0 = CFrame.new(-0.2,-1,-0.1) * CFrame.Angles(math.rad(30),0,math.rad(-22.5))
Body.Weld.C0 = CFrame.new(0,1,0.2) * CFrame.Angles(math.rad(20),0,0)
wait(0.0001)
Body.Weld.C0 = CFrame.new(0,1,0.2) * CFrame.Angles(math.rad(15),0,0)
wait(0.0001)
Body.Weld.C0 = CFrame.new(0,1,0.1) * CFrame.Angles(math.rad(10),0,0)
wait(0.0001)
Body.Weld.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(5),0,0)
wait(0.0001)
Body.Weld.C0 = CFrame.new(0,1,-0.1) * CFrame.Angles(math.rad(0),0,0)
wait(0.0001)
Body.Weld.C0 = CFrame.new(0,1,-0.1) * CFrame.Angles(math.rad(-5),0,0)
wait(0.0001)
Body.Weld.C0 = CFrame.new(0,1,-0.1) * CFrame.Angles(math.rad(-10),0,0)
Spot.CFrame = Torso.CFrame * CFrame.new(0,0,-100)
Fire = Instance.new("Part")
CreatePart(Fire,BrickColor.new("Bright yellow"),Vector3.new(8,8,12),"Fire",Weapon)
Fire.Transparency = 0.4
Fire.CFrame = Head.CFrame * CFrame.new(0,0,math.random(-2,2))
Sphere(Vector3.new(1,1,1),Fire)
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bp.P = 1000
Bp.position = Spot.Position
Bp.Parent = Fire
game.Debris:AddItem(Fire,2)
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and hit.Parent.Name ~= Player.Name and hit.Parent.Parent.Name ~= Player.Name then
Human:TakeDamage(1)
Flame = Instance.new("Fire")
Flame.Parent = hit
game.Debris:AddItem(Flame,4)
Faint = Instance.new("IntValue")
Faint.Name = "Faint"
Faint.Parent = Human
game.Debris:AddItem(Faint,1)
end
end
Fire.Touched:connect(onTouched)
Ball = Instance.new("Part")
CreatePart(Ball,BrickColor.new("Bright red"),Fire.Size + Vector3.new(0.4,0.4,0.4),"Ball",Weapon)
Ball.Transparency = 0.4
Ball.CFrame = Fire.CFrame
Sphere(Vector3.new(1,1,1),Ball)
Glue(Fire,Ball,CFrame.new(0,0,0))
game.Debris:AddItem(Ball,2)
Attack = false
elseif Attack == false and Awakening == true and Chakra.Value >= 50 then
Attack = true
Chakra.Value = Chakra.Value - 80
Body.Weld.C0 = CFrame.new(0,1,0.2) * CFrame.Angles(math.rad(5),0,0)
RArm.Weld.C0 = CFrame.new(1,0.2,-0.4) * CFrame.Angles(math.rad(90),0,math.rad(-22.5))
RArm2.Weld.C0 = CFrame.new(-0.2,-1,0) * CFrame.Angles(0,0,math.rad(-22.5))
wait(0.0001)
Body.Weld.C0 = CFrame.new(0,1,0.2) * CFrame.Angles(math.rad(10),0,0)
RArm2.Weld.C0 = CFrame.new(-0.2,-1,-0.1) * CFrame.Angles(math.rad(5),0,math.rad(-22.5))
wait(0.0001)
RArm2.Weld.C0 = CFrame.new(-0.2,-1,-0.1) * CFrame.Angles(math.rad(10),0,math.rad(-22.5))
Body.Weld.C0 = CFrame.new(0,1,0.2) * CFrame.Angles(math.rad(15),0,0)
wait(0.0001)
RArm2.Weld.C0 = CFrame.new(-0.2,-1,-0.1) * CFrame.Angles(math.rad(15),0,math.rad(-22.5))
Body.Weld.C0 = CFrame.new(0,1,0.2) * CFrame.Angles(math.rad(20),0,0)
wait(0.0001)
RArm2.Weld.C0 = CFrame.new(-0.2,-1,-0.1) * CFrame.Angles(math.rad(25),0,math.rad(-22.5))
Body.Weld.C0 = CFrame.new(0,1,0.2) * CFrame.Angles(math.rad(25),0,0)
wait(0.5)
RArm2.Weld.C0 = CFrame.new(-0.2,-1,-0.1) * CFrame.Angles(math.rad(30),0,math.rad(-22.5))
Body.Weld.C0 = CFrame.new(0,1,0.2) * CFrame.Angles(math.rad(20),0,0)
wait(0.0001)
Body.Weld.C0 = CFrame.new(0,1,0.2) * CFrame.Angles(math.rad(15),0,0)
wait(0.0001)
Body.Weld.C0 = CFrame.new(0,1,0.1) * CFrame.Angles(math.rad(10),0,0)
wait(0.0001)
Body.Weld.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(5),0,0)
wait(0.0001)
Body.Weld.C0 = CFrame.new(0,1,-0.1) * CFrame.Angles(math.rad(0),0,0)
wait(0.0001)
Body.Weld.C0 = CFrame.new(0,1,-0.1) * CFrame.Angles(math.rad(-5),0,0)
wait(0.0001)
Body.Weld.C0 = CFrame.new(0,1,-0.1) * CFrame.Angles(math.rad(-10),0,0)
Spot.CFrame = Torso.CFrame * CFrame.new(0,0,-100)
Fire = Instance.new("Part")
CreatePart(Fire,BrickColor.new("Bright yellow"),Vector3.new(20,20,20),"Fire",Weapon)
Fire.Transparency = 0.4
Fire.CFrame = Head.CFrame * CFrame.new(0,0,math.random(-2,2))
Sphere(Vector3.new(1,1,1),Fire)
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bp.P = 1000
Bp.position = Spot.Position
Bp.Parent = Fire
game.Debris:AddItem(Fire,2)
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and hit.Parent.Name ~= Player.Name and hit.Parent.Parent.Name ~= Player.Name then
Human:TakeDamage(2)
Flame = Instance.new("Fire")
Flame.Color = BrickColor.new("Bright red").Color
Flame.SecondaryColor = Flame.Color
Flame.Parent = hit
game.Debris:AddItem(Flame,4)
Faint = Instance.new("IntValue")
Faint.Name = "Faint"
Faint.Parent = Human
game.Debris:AddItem(Faint,1)
end
end
Fire.Touched:connect(onTouched)
Ball = Instance.new("Part")
CreatePart(Ball,BrickColor.new("Bright red"),Fire.Size + Vector3.new(4,4,4),"Ball",Weapon)
Ball.Transparency = 0.4
Ball.CFrame = Fire.CFrame
Sphere(Vector3.new(1,1,1),Ball)
Glue(Fire,Ball,CFrame.new(0,0,0))
game.Debris:AddItem(Ball,2)
Spawn(function()
for i=1, 10 do
wait(0.0001)
for i=1, 4 do
wait(0.0001)
for i, v in pairs(Weapon:GetChildren()) do
if v.Name == "Fire" or v.Name == "Ball" then
v.Transparency = v.Transparency + 0.1
end
end
end
for i=1, 4 do
wait(0.0001)
for i, v in pairs(Weapon:GetChildren()) do
if v.Name == "Fire" or v.Name == "Ball" then
v.Transparency = v.Transparency - 0.1
end
end
end
end
end)
Attack = false
end
end
function Kirin()
if Attack == false and Chakra.Value >= 500 then
Attack = true
Use = false
for i=1, 5 do
wait(0.0001)
Chakra.Value = Chakra.Value - 100
end
Humanoid.WalkSpeed = 0
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bp.position = Torso.Position
Bp.Parent = Torso
game.Debris:AddItem(Bp,2)
Bg = Instance.new("BodyGyro")
Bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
Bg.cframe = Torso.CFrame
Bg.Parent = Torso
game.Debris:AddItem(Bg,2)
Spot.Position = Torso.Position + Vector3.new(0,200,0)
Cloud = Instance.new("Part")
CreatePart(Cloud,BladeColor,Vector3.new(0.4,0.4,0.4),"Cloud",Weapon)
Cloud.Anchored = true
Cloud.CFrame = Spot.CFrame
SpecialMesh("http://www.roblox.com/asset/?id=1095708",Vector3.new(1000,200,1000),Cloud)
game.Debris:AddItem(Cloud,4)
Spot.CFrame = Torso.CFrame * CFrame.new(0,0,-4)
game.Lighting.Brightness = 1
Camera.CameraType = "Attach"
Camera.CameraSubject = Spot
for i=1, 10 do
wait()
game.Lighting.Brightness = game.Lighting.Brightness - 0.1
end
for i=1, 10 do
wait()
Spot.CFrame = Torso.CFrame * CFrame.new(0,0,-i) * CFrame.Angles(0,math.rad(180),0)
end
for i=1, 10 do
wait()
Spot.CFrame = Spot.CFrame * CFrame.new(0,10,0)
end
for i=1, 10 do
wait()
Spot.CFrame = Spot.CFrame * CFrame.new(0,-10,0)
end
game:GetService("Chat"):Chat(Head,"Lol, prepare for doom")
Lightning = Instance.new("Part")
CreatePart(Lightning,PantsColor,Vector3.new(0.4,0.4,0.4),"Lightning",Weapon)
Lightning.Transparency = 1
Glue(Hand,Lightning,CFrame.new(0,-1,0))
game.Debris:AddItem(Lightning,10)
Sparkles = Instance.new("Sparkles")
Sparkles.Color = PantsColor.Color
Sparkles.Parent = Lightning
Sparkles = Instance.new("Fire")
Sparkles.Color = PantsColor.Color
Sparkles.SecondaryColor = Sparkles.Color
Sparkles.Parent = Lightning
game.Debris:AddItem(Lightning,1)
Spawn(function()
for i=1, 100 do
wait()
RArm.Weld.C0 = CFrame.new(1,0.2,-0.4) * CFrame.Angles(math.rad(90),0,0)
end
end)
Spot.CFrame = Torso.CFrame * CFrame.new(0,10,10)
game:GetService("Chat"):Chat(Head,"AWOOOOOOOOOOOOO!!!!!")
Dragon = Instance.new("Part")
CreatePart(Dragon,PantsColor,Vector3.new(120,120,120),"Kirin",Weapon)
Dragon.Transparency = 0.4
Dragon.CFrame = Torso.CFrame * CFrame.new(0,160,-100)
SpecialMesh("http://www.roblox.com/asset?id=45918598",Vector3.new(60,60,200),Dragon)
Spot.CFrame = Torso.CFrame * CFrame.new(0,0,-100)
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bp.position = Spot.Position
Bp.Parent = Dragon
Bg = Instance.new("BodyGyro")
Bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
Bg.cframe = Torso.CFrame * CFrame.Angles(math.rad(90),0,0)
Bg.Parent = Dragon
game.Debris:AddItem(Dragon,1)
Spot.CFrame = Torso.CFrame * CFrame.new(0,10,-20)
Beam = Instance.new("Part")
CreatePart(Beam,PantsColor,Vector3.new(0.4,0.4,0.4),"Beam",Weapon)
Beam.Transparency = 0.4
Beam.Anchored = true
Beam.CFrame = Torso.CFrame * CFrame.new(0,0,-40)
Cylinder(Vector3.new(100,99999,100),Beam)
game.Debris:AddItem(Beam,2)
Blast = Instance.new("Part")
CreatePart(Blast,PantsColor,Vector3.new(0.4,0.4,0.4),"Blast",Weapon)
Blast.Transparency = 0.4
Blast.Anchored = true
Blast.CFrame = Beam.CFrame
SpecialMesh("http://www.roblox.com/asset/?id=20329976",Vector3.new(20,20,20),Blast)
game.Debris:AddItem(Blast,2)
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and hit.Parent.Name ~= Player.Name and Use == false then
Use = true
Faint = Instance.new("IntValue")
Faint.Name = "Faint"
Faint.Parent = Human
game.Debris:AddItem(Faint,1)
Human:TakeDamage(1000)
end
end
Dragon.Touched:connect(onTouched)
for i=1, 20 do
wait()
Beam.Mesh.Scale = Beam.Mesh.Scale + Vector3.new(1,1,1)
Blast.Mesh.Scale = Blast.Mesh.Scale + Vector3.new(1,1,1)
end
game.Lighting.Brightness = 1
Humanoid.WalkSpeed = 16
Camera.CameraType = "Track"
Camera.CameraSubject = Head
Attack = false
end
end
function ChidoriStream()
if Attack == false and Streaming == false and Awakening == false and Chakra.Value >= 100 then
Attack = true
Streaming = true
Head.Anchored = true
for i=1, 5 do
wait(0.0001)
Chakra.Value = Chakra.Value - 20
end
Stream = Instance.new("Part")
CreatePart(Stream,BrickColor.new("Deep blue"),Vector3.new(40,40,40),"Stream",Weapon)
Stream.Transparency = 0.2
Stream.Anchored = true
Stream.CFrame = Torso.CFrame
Sphere(Vector3.new(1,1,1),Stream)
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and hit.Parent.Name ~= Player.Name then
Faint = Instance.new("IntValue")
Faint.Name = "Faint"
Faint.Parent = Human
game.Debris:AddItem(Faint,1)
Human:TakeDamage(5)
end
end
Stream.Touched:connect(onTouched)
wait(4)
Head.Anchored = false
Stream:remove()
Attack = false
wait(8)
Streaming = false
elseif Attack == false and Streaming == false and Awakening == true and Chakra.Value >= 50 then
Attack = true
Streaming = true
Head.Anchored = true
for i=1, 5 do
wait(0.0001)
Chakra.Value = Chakra.Value - 10
end
Stream = Instance.new("Part")
CreatePart(Stream,BrickColor.new("Deep blue"),Vector3.new(40,40,40),"Stream",Weapon)
Stream.Transparency = 0.2
Stream.Anchored = true
Stream.CFrame = Torso.CFrame
Sphere(Vector3.new(1,1,1),Stream)
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and hit.Parent.Name ~= Player.Name then
Faint = Instance.new("IntValue")
Faint.Name = "Faint"
Faint.Parent = Human
game.Debris:AddItem(Faint,1)
Human:TakeDamage(1000)
end
end
Stream.Touched:connect(onTouched)
wait(4)
Head.Anchored = false
Stream:remove()
Attack = false
wait(8)
Streaming = false
end
end
function Awaken()
if Attack == false and Awakening == false and Ready == false and Chakra.Value >= MaxChakra.Value and Humanoid.Health <= 100 then
Attack = true
Ready = true
Awakening = true
Handle.Weld.Part0 = Stomach
Sheath.Weld.Part0 = Stomach
for i, v in pairs(Weapon:GetChildren()) do
if v.Name == "Shirt" or v.Name == "Sleeve" or v.Name == "Symbol" then
v.Transparency = 1
end
end
SkinColor = BrickColor.new("Dark stone grey")
for i, v in pairs(Weapon:GetChildren()) do
if v.BrickColor == BrickColor.new("Pastel brown") then
v.BrickColor = SkinColor
end
end
for i=1, 30 do
wait(0.0001)
HairColor = BrickColor.new(Color3.new(0,0,i/25))
for i, v in pairs(Weapon:GetChildren()) do
if v.Name == "Hair" then
v.BrickColor = HairColor
v.Mesh.Scale = v.Mesh.Scale + Vector3.new(0,0.016,0.0006)
v.Weld.C0 = v.Weld.C0 * CFrame.new(0,-0.005,0.0025)
end
end
end
Blade.BrickColor = BrickColor.new("Bright blue")
Edge.BrickColor = BrickColor.new("Bright blue")
Damage.Value = 10
Wing = Instance.new("Part")
CreatePart(Wing,SkinColor,Vector3.new(0.4,0.4,0.4),"Wing",Weapon)
Block(Vector3.new(1.4,3,1.4),Wing)
Wing.Mesh.Bevel = 0.3
Glue(Body,Wing,CFrame.new(0.8,0.4,0.6) * CFrame.Angles(math.rad(-135),0,math.rad(45)))
Hand = Instance.new("Part")
CreatePart(Hand,SkinColor,Vector3.new(0.4,0.4,0.4),"Hand",Weapon)
Block(Vector3.new(8,7,2),Hand)
Hand.Mesh.Bevel = 0.3
Glue(Wing,Hand,CFrame.new(1.6,-0.6,0) * CFrame.Angles(math.rad(-65),0,math.rad(45)))
Finger = Instance.new("Part")
CreatePart(Finger,SkinColor,Vector3.new(0.4,0.4,0.4),"Finger",Weapon)
Block(Vector3.new(2,10,2),Finger)
Finger.Mesh.Bevel = 0.3
Glue(Hand,Finger,CFrame.new(0,-2,0))
Finger = Instance.new("Part")
CreatePart(Finger,SkinColor,Vector3.new(0.4,0.4,0.4),"Finger",Weapon)
Block(Vector3.new(2,10,2),Finger)
Finger.Mesh.Bevel = 0.3
Glue(Hand,Finger,CFrame.new(0,-2,0))
Finger = Instance.new("Part")
CreatePart(Finger,SkinColor,Vector3.new(0.4,0.4,0.4),"Finger",Weapon)
Block(Vector3.new(2,6,2),Finger)
Finger.Mesh.Bevel = 0.3
Glue(Hand,Finger,CFrame.new(2,-1,0) * CFrame.Angles(0,0,math.rad(50)))
Finger = Instance.new("Part")
CreatePart(Finger,SkinColor,Vector3.new(0.4,0.4,0.4),"Finger",Weapon)
Block(Vector3.new(2,8,2),Finger)
Finger.Mesh.Bevel = 0.3
Glue(Hand,Finger,CFrame.new(-1,-2,0) * CFrame.Angles(0,0,math.rad(-25)))
Finger = Instance.new("Part")
CreatePart(Finger,SkinColor,Vector3.new(0.4,0.4,0.4),"Finger",Weapon)
Block(Vector3.new(2,6,2),Finger)
Finger.Mesh.Bevel = 0.3
Glue(Hand,Finger,CFrame.new(-2,-1,0) * CFrame.Angles(0,0,math.rad(-80)))
Finger = Instance.new("Part")
CreatePart(Finger,SkinColor,Vector3.new(0.4,0.4,0.4),"Finger",Weapon)
Block(Vector3.new(2,6,2),Finger)
Finger.Mesh.Bevel = 0.3
Glue(Hand,Finger,CFrame.new(1,-2,0) * CFrame.Angles(0,0,math.rad(25)))
Wing = Instance.new("Part")
CreatePart(Wing,SkinColor,Vector3.new(0.4,0.4,0.4),"Wing",Weapon)
Block(Vector3.new(1.4,3,1.4),Wing)
Wing.Mesh.Bevel = 0.3
Glue(Body,Wing,CFrame.new(-0.8,0.4,0.6) * CFrame.Angles(math.rad(-135),0,math.rad(-45)))
Hand = Instance.new("Part")
CreatePart(Hand,SkinColor,Vector3.new(0.4,0.4,0.4),"Hand",Weapon)
Block(Vector3.new(8,7,2),Hand)
Hand.Mesh.Bevel = 0.3
Glue(Wing,Hand,CFrame.new(-1.6,-0.6,0) * CFrame.Angles(math.rad(-65),0,math.rad(-45)))
Finger = Instance.new("Part")
CreatePart(Finger,SkinColor,Vector3.new(0.4,0.4,0.4),"Finger",Weapon)
Block(Vector3.new(2,10,2),Finger)
Finger.Mesh.Bevel = 0.3
Glue(Hand,Finger,CFrame.new(0,-2,0))
Finger = Instance.new("Part")
CreatePart(Finger,SkinColor,Vector3.new(0.4,0.4,0.4),"Finger",Weapon)
Block(Vector3.new(2,10,2),Finger)
Finger.Mesh.Bevel = 0.3
Glue(Hand,Finger,CFrame.new(0,-2,0))
Finger = Instance.new("Part")
CreatePart(Finger,SkinColor,Vector3.new(0.4,0.4,0.4),"Finger",Weapon)
Block(Vector3.new(2,6,2),Finger)
Finger.Mesh.Bevel = 0.3
Glue(Hand,Finger,CFrame.new(2,-1,0) * CFrame.Angles(0,0,math.rad(50)))
Finger = Instance.new("Part")
CreatePart(Finger,SkinColor,Vector3.new(0.4,0.4,0.4),"Finger",Weapon)
Block(Vector3.new(2,8,2),Finger)
Finger.Mesh.Bevel = 0.3
Glue(Hand,Finger,CFrame.new(-1,-2,0) * CFrame.Angles(0,0,math.rad(-25)))
Finger = Instance.new("Part")
CreatePart(Finger,SkinColor,Vector3.new(0.4,0.4,0.4),"Finger",Weapon)
Block(Vector3.new(2,6,2),Finger)
Finger.Mesh.Bevel = 0.3
Glue(Hand,Finger,CFrame.new(-2,-1,0) * CFrame.Angles(0,0,math.rad(-80)))
Finger = Instance.new("Part")
CreatePart(Finger,SkinColor,Vector3.new(0.4,0.4,0.4),"Finger",Weapon)
Block(Vector3.new(2,6,2),Finger)
Finger.Mesh.Bevel = 0.3
Glue(Hand,Finger,CFrame.new(1,-2,0) * CFrame.Angles(0,0,math.rad(25)))
Attack = false
wait(999999)
Awakening = false
for i, v in pairs(Weapon:GetChildren()) do
if v.Name == "Shirt" or v.Name == "Sleeve" or v.Name == "Symbol" then
v.Transparency = 0
end
end
for i, v in pairs(Weapon:GetChildren()) do
if v.Name == "Wing" or v.Name == "Finger" then
v:remove()
end
end
SkinColor = BrickColor.new("Pastel brown")
for i, v in pairs(Weapon:GetChildren()) do
if v.BrickColor == BrickColor.new("Dark stone grey") then
v.BrickColor = SkinColor
end
end
for i=1, 30 do
wait(0.0001)
HairColor = BrickColor.new("Black")
for i, v in pairs(Weapon:GetChildren()) do
if v.Name == "Hair" then
v.BrickColor = HairColor
v.Mesh.Scale = v.Mesh.Scale + Vector3.new(0,-0.016,-0.0006)
v.Weld.C0 = v.Weld.C0 * CFrame.new(0,0.005,-0.0025)
end
end
end
for i, v in pairs(Torso:GetChildren()) do
if v:IsA("BodyPosition") then
v:remove()
end
end
Blade.BrickColor = BrickColor.new("White")
Edge.BrickColor = BrickColor.new("White")
Damage.Value = 5
wait(999999)
Ready = false
end
end
function Toggle()
if Attack == false and Sword == Sheathed then
Attack = true
Sword = Drawn
LArm.Weld.C0 = CFrame.new(-1,0.2,0) * CFrame.Angles(math.rad(-45),0,math.rad(-45))
LArm2.Weld.C0 = CFrame.new(0,-1,0.2) * CFrame.Angles(math.rad(-45),0,0)
wait(0.05)
LArm.Weld.C0 = CFrame.new(-1,0.2,0.2) * CFrame.Angles(math.rad(-90),0,math.rad(-45))
LArm2.Weld.C0 = CFrame.new(0,-1,0.2) * CFrame.Angles(math.rad(-65),0,0)
wait(0.05)
LArm.Weld.C0 = CFrame.new(-1,0.2,0.4) * CFrame.Angles(math.rad(-135),0,math.rad(-45))
LArm2.Weld.C0 = CFrame.new(0,-1,0.2) * CFrame.Angles(math.rad(-25),0,0)
wait(0.05)
LArm.Weld.C0 = CFrame.new(-1,0.2,0.4) * CFrame.Angles(math.rad(-155),0,math.rad(-25))
LArm2.Weld.C0 = CFrame.new(0,-1,0.2) * CFrame.Angles(math.rad(-25),0,0)
Handle.Weld.Part0 = Hand2
Handle.Weld.C0 = CFrame.new(0,-0.4,0) * CFrame.Angles(math.rad(135),0,math.rad(90))
LArm.Weld.C0 = CFrame.new(-1,-0.2,0) * CFrame.Angles(math.rad(90),0,math.rad(-45))
wait(0.05)
Handle.Weld.C0 = CFrame.new(0,-0.4,0) * CFrame.Angles(math.rad(135),math.rad(-90),math.rad(90))
wait(0.05)
Handle.Weld.C0 = CFrame.new(0,-0.4,0) * CFrame.Angles(math.rad(45),math.rad(-90),math.rad(90))
wait(1)
Handle.Weld:remove()
Handle.Anchored = true
Attack = false
end
end
function onKeyDown(key)
key:lower()
if key == "q" then
ShurikenThrow()
elseif key == "e" then
Slash()
elseif key == "0" then
ChakraRestore()
elseif key == "v" then
Chidori()
elseif key == "f" then
FireBall()
elseif key == "g" then
Kirin()
elseif key == "t" then
ChidoriStream()
elseif key == "b" then
Awaken()
elseif key == "r" then
Toggle()
end
end
function onKeyUp(key)
key:lower()
if key == "0" then
Hold = false
Humanoid.WalkSpeed = 16
elseif key == "f" then
Hold = false
Humanoid.WalkSpeed = 16
end
end
function onButton1Down(mouse)
if Attack == false and Awakening == false then
Attack = true
for i=1, 20 do
wait(0.1)
if Chakra.Value >= 1 then
Chakra.Value = Chakra.Value - 1
Humanoid.WalkSpeed = 40
Sparkles = Instance.new("Sparkles")
Sparkles.Parent = Torso
game.Debris:AddItem(Sparkles,0.2)
else
Attack = false
Humanoid.WalkSpeed = 16
end
end
Humanoid.WalkSpeed = 16
Attack = false
elseif Attack == false and Awakening == true then
Attack = true
Action = ""
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bp.P = 1000
Bp.position = Torso.Position
Bp.Parent = Torso
Stomach.Weld.C0 = CFrame.new(0,0.2,0) * CFrame.Angles(math.rad(-90),0,0)
for i=1, 40 do
wait(0.0001)
if (mouse.Hit.p - Spot.Position).magnitude <= 200 then
Spot.CFrame = CFrame.new(mouse.Hit.p,Torso.Position)
Bp.position = Spot.Position + Vector3.new(0,20,0)
Torso.CFrame = CFrame.new(Torso.Position,mouse.Hit.p)
else
end
end
for i, v in pairs(Torso:GetChildren()) do
if v:IsA("BodyPosition") then
v:remove()
end
end
Stomach.Weld.C0 = CFrame.new(0,0.2,0)
Attack = false
Action = "Flipping"
end
end
function onSelected(mouse)
mouse.KeyDown:connect(onKeyDown)
mouse.KeyUp:connect(onKeyUp)
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
script.Parent = Char
HopperBin:remove()
end
script.Parent.Selected:connect(onSelected)
function onRunning(speed)
if speed >= 0.1 then
Pose = "Running"
else
Pose = "Standing"
end
end
function onJumping()
Pose = "Jumping"
for i=1, 5 do
wait(0.1)
if Attack == false then
Body.Weld.C0 = CFrame.new(0,1,-0.4) * CFrame.Angles(math.rad(-25),0,0)
RArm.Weld.C0 = CFrame.new(1.6,0.2,0) * CFrame.Angles(0,math.rad(-25),math.rad(90))
RArm2.Weld.C0 = CFrame.new(0,-1,0)
LArm.Weld.C0 = CFrame.new(-1.6,0.2,0) * CFrame.Angles(0,math.rad(25),math.rad(-90))
LArm2.Weld.C0 = CFrame.new(0,-1,-0)
RLeg.Weld.C0 = CFrame.new(0.5,-1.2,-0.4) * CFrame.Angles(math.rad(45),0,0)
RLeg2.Weld.C0 = CFrame.new(0,-1,0.6) * CFrame.Angles(math.rad(-65),0,0)
LLeg.Weld.C0 = CFrame.new(-0.5,-1.2,-0.4) * CFrame.Angles(math.rad(65),0,0)
LLeg2.Weld.C0 = CFrame.new(0,-1,0.6) * CFrame.Angles(math.rad(-45),0,0)
end
end
end
Humanoid.Running:connect(onRunning)
Humanoid.Jumping:connect(onJumping)
function onJumping()
Pose = "Jumping"
for i=1, 5 do
wait(0.1)
if Attck == false then
Body.Weld.C0 = CFrame.new(0,1,-0.4) * CFrame.Angles(math.rad(-25),0,0)
RArm.Weld.C0 = CFrame.new(1.6,0.2,0) * CFrame.Angles(0,math.rad(-25),math.rad(90))
RArm2.Weld.C0 = CFrame.new(0,-1,0)
LArm.Weld.C0 = CFrame.new(-1.6,0.2,0) * CFrame.Angles(0,math.rad(25),math.rad(-90))
LArm2.Weld.C0 = CFrame.new(0,-1,-0)
RLeg.Weld.C0 = CFrame.new(0.5,-1.2,-0.4) * CFrame.Angles(math.rad(45),0,0)
RLeg2.Weld.C0 = CFrame.new(0,-1,0.6) * CFrame.Angles(math.rad(-65),0,0)
LLeg.Weld.C0 = CFrame.new(-0.5,-1.2,-0.4) * CFrame.Angles(math.rad(65),0,0)
LLeg2.Weld.C0 = CFrame.new(0,-1,0.6) * CFrame.Angles(math.rad(-45),0,0)
end
end
end
Humanoid.Died:connect(onDied)
Humanoid.Running:connect(onRunning)
Humanoid.Jumping:connect(onJumping)
Spawn(function()
while true do
wait()
if Pose == "Running" and Attack == false then
Body.Weld.C0 = CFrame.new(0,1,-0.1) * CFrame.Angles(math.rad(-15),0,0)
RArm.Weld.C0 = CFrame.new(1,0,0.4) * CFrame.Angles(math.rad(-90),0,0)
LArm.Weld.C0 = CFrame.new(-1,0,0.4) * CFrame.Angles(math.rad(-90),0,0)
RLeg.Weld.C0 = CFrame.new(0.5,-1.2,0)
RLeg2.Weld.C0 = CFrame.new(0,-1.2,0)
LLeg.Weld.C0 = CFrame.new(-0.5,-1.2,0)
LLeg2.Weld.C0 = CFrame.new(0,-1.2,0)
for i=1, 4 do
wait(0.01)
if Pose == "Running" and Attack == false then
RArm.Weld.C0 = RArm.Weld.C0 * CFrame.Angles(math.rad(2),0,0)
RArm2.Weld.C0 = RArm2.Weld.C0 * CFrame.Angles(math.rad(2),0,0)
LArm.Weld.C0 = LArm.Weld.C0 * CFrame.Angles(math.rad(-2),0,0)
LArm2.Weld.C0 = LArm2.Weld.C0 * CFrame.Angles(math.rad(-2),0,0)
else
end
end
RLeg.Weld.C0 = CFrame.new(0.5,-1.2,0) * CFrame.Angles(math.rad(45),0,0)
RLeg2.Weld.C0 = CFrame.new(0,-1.2,0) * CFrame.Angles(math.rad(-15),0,0)
LLeg.Weld.C0 = CFrame.new(-0.5,-1.2,0) * CFrame.Angles(math.rad(-45),0,0)
LLeg2.Weld.C0 = CFrame.new(0,-1.2,0) * CFrame.Angles(math.rad(-15),0,0)
for i=1, 4 do
wait(0.01)
if Pose == "Running" and Attack == false then
RArm.Weld.C0 = RArm.Weld.C0 * CFrame.Angles(math.rad(-4),0,0)
RArm2.Weld.C0 = RArm2.Weld.C0 * CFrame.Angles(math.rad(-4),0,0)
LArm.Weld.C0 = LArm.Weld.C0 * CFrame.Angles(math.rad(4),0,0)
LArm2.Weld.C0 = LArm2.Weld.C0 * CFrame.Angles(math.rad(4),0,0)
else
end
end
RLeg.Weld.C0 = CFrame.new(0.5,-1.2,0) * CFrame.Angles(math.rad(-45),0,0)
RLeg2.Weld.C0 = CFrame.new(0,-1.2,0) * CFrame.Angles(math.rad(-15),0,0)
LLeg.Weld.C0 = CFrame.new(-0.5,-1.2,0) * CFrame.Angles(math.rad(45),0,0)
LLeg2.Weld.C0 = CFrame.new(0,-1.2,0) * CFrame.Angles(math.rad(-15),0,0)
for i=1, 4 do
wait(0.01)
if Pose == "Running" and Attack == false then
RArm.Weld.C0 = RArm.Weld.C0 * CFrame.Angles(math.rad(2),0,0)
RArm2.Weld.C0 = RArm2.Weld.C0 * CFrame.Angles(math.rad(2),0,0)
LArm.Weld.C0 = LArm.Weld.C0 * CFrame.Angles(math.rad(-2),0,0)
LArm2.Weld.C0 = LArm2.Weld.C0 * CFrame.Angles(math.rad(-2),0,0)
else
end
end
RArm.Weld.C0 = CFrame.new(1,-0.2,0)
RArm2.Weld.C0 = CFrame.new(0,-1,0)
LArm.Weld.C0 = CFrame.new(-1,-0.2,0)
LArm2.Weld.C0 = CFrame.new(0,-1,0)
RLeg.Weld.C0 = CFrame.new(0.5,-1.2,0)
RLeg2.Weld.C0 = CFrame.new(0,-1.2,0)
LLeg.Weld.C0 = CFrame.new(-0.5,-1.2,0)
LLeg2.Weld.C0 = CFrame.new(0,-1.2,0)
end
end
end)
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and hit.Parent.Name == Char.Name and hit.Name == "Torso" then
Glue(Handle,Body,CFrame.new(0,0,0))
Handle.Anchored = false
Sword = Sheathed
end
end
Handle.Touched:connect(onTouched)
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and Combo2 == true or Combo3 == true and Attack == true then
Human:TakeDamage(Damage.Value)
end
end
Blade.Touched:connect(onTouched)
function onTouched(hit)
Human = hit.Parent:FindFirstChild("Humanoid")
if Human ~= nil and Combo2 == true or Combo3 == true and Attack == true then
Human:TakeDamage(Damage.Value)
end
end
Edge.Touched:connect(onTouched)
function onTouched(hit)
if hit.Name == "Wall" and Flipping == false and Action == "Flip" then
Flipping = true
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bp.P = 1000
Bp.position = Torso.Position
Bp.Parent = Torso
Bg = Instance.new("BodyGyro")
Bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
Bg.P = 69999999
Bg.cframe = Torso.CFrame
Bg.Parent = Torso
Spot.CFrame = Torso.CFrame * CFrame.new(0,20,10)
Bp.position = Spot.Position
for i=1, 18 do
wait(0.0001)
Spot.CFrame = Spot.CFrame * CFrame.new(0,-0.4,1)
Bp.position = Spot.Position
Stomach.Weld.C0 = Stomach.Weld.C0 * CFrame.Angles(math.rad(20),0,0)
Body.Weld.C0 = CFrame.new(0,1,-0.4) * CFrame.Angles(math.rad(-25),0,0)
if Attack == false then
RArm.Weld.C0 = CFrame.new(1.6,0.2,0) * CFrame.Angles(0,math.rad(-25),math.rad(90))
RArm2.Weld.C0 = CFrame.new(0,-1,0)
LArm.Weld.C0 = CFrame.new(-1.6,0.2,0) * CFrame.Angles(0,math.rad(25),math.rad(-90))
LArm2.Weld.C0 = CFrame.new(0,-1,-0)
RLeg.Weld.C0 = CFrame.new(0.5,-1.2,-0.4) * CFrame.Angles(math.rad(45),0,0)
RLeg2.Weld.C0 = CFrame.new(0,-1,0.6) * CFrame.Angles(math.rad(-65),0,0)
LLeg.Weld.C0 = CFrame.new(-0.5,-1.2,-0.4) * CFrame.Angles(math.rad(65),0,0)
LLeg2.Weld.C0 = CFrame.new(0,-1,0.6) * CFrame.Angles(math.rad(-45),0,0)
end
end
Stomach.Weld.C0 = CFrame.new(0,0.2,0)
Bp:remove()
Bg:remove()
Flipping = false
end
end
RLeg2.Touched:connect(onTouched)
Spawn(function()
while true do
wait()
if Pose == "Standing" and Attack == false then
Body.Weld.C0 = CFrame.new(0,1,0)
RArm.Weld.C0 = CFrame.new(1,-0.2,0)
RArm2.Weld.C0 = CFrame.new(0,-1,0)
LArm.Weld.C0 = CFrame.new(-1,-0.2,0)
LArm2.Weld.C0 = CFrame.new(0,-1.2,0)
RLeg.Weld.C0 = CFrame.new(0.5,-1.2,0)
RLeg2.Weld.C0 = CFrame.new(0,-1.2,0)
LLeg.Weld.C0 = CFrame.new(-0.5,-1.2,0)
LLeg2.Weld.C0 = CFrame.new(0,-1.2,0)
wait(1)
if Pose == "Standing" and Attack == false then
Body.Weld.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-5),0,0)
RArm.Weld.C0 = CFrame.new(1,-0.2,0) * CFrame.Angles(math.rad(5),0,0)
RArm2.Weld.C0 = CFrame.new(0,-1,0) * CFrame.Angles(math.rad(5),0,0)
LArm.Weld.C0 = CFrame.new(-1,-0.2,0) * CFrame.Angles(math.rad(-5),0,0)
LArm2.Weld.C0 = CFrame.new(0,-1.2,0) * CFrame.Angles(math.rad(-5),0,0)
RLeg.Weld.C0 = CFrame.new(0.5,-1.2,0) * CFrame.Angles(math.rad(5),0,0)
RLeg2.Weld.C0 = CFrame.new(0,-1.2,0) * CFrame.Angles(math.rad(5),0,0)
LLeg.Weld.C0 = CFrame.new(-0.5,-1.2,0) * CFrame.Angles(math.rad(-5),0,0)
LLeg2.Weld.C0 = CFrame.new(0,-1.2,0) * CFrame.Angles(math.rad(-5),0,0)
wait(1)
if Pose == "Standing" and Attack == false then
Body.Weld.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-10),0,0)
RArm.Weld.C0 = CFrame.new(1,-0.2,0) * CFrame.Angles(math.rad(-5),0,0)
RArm2.Weld.C0 = CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-5),0,0)
LArm.Weld.C0 = CFrame.new(-1,-0.2,0) * CFrame.Angles(math.rad(5),0,0)
LArm2.Weld.C0 = CFrame.new(0,-1.2,0) * CFrame.Angles(math.rad(5),0,0)
RLeg.Weld.C0 = CFrame.new(0.5,-1.2,0) * CFrame.Angles(math.rad(-5),0,0)
RLeg2.Weld.C0 = CFrame.new(0,-1.2,0) * CFrame.Angles(math.rad(-5),0,0)
LLeg.Weld.C0 = CFrame.new(-0.5,-1.2,0) * CFrame.Angles(math.rad(5),0,0)
LLeg2.Weld.C0 = CFrame.new(0,-1.2,0) * CFrame.Angles(math.rad(5),0,0)
wait(1)
if Pose == "Standing" and Attack == false then
Body.Weld.C0 = CFrame.new(0,1,0) * CFrame.Angles(math.rad(-15),0,0)
RArm.Weld.C0 = CFrame.new(1,-0.2,0) * CFrame.Angles(math.rad(-10),0,0)
RArm2.Weld.C0 = CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-10),0,0)
LArm.Weld.C0 = CFrame.new(-1,-0.2,0) * CFrame.Angles(math.rad(10),0,0)
LArm2.Weld.C0 = CFrame.new(0,-1.2,0) * CFrame.Angles(math.rad(10),0,0)
RLeg.Weld.C0 = CFrame.new(0.5,-1.2,0) * CFrame.Angles(math.rad(-10),0,0)
RLeg2.Weld.C0 = CFrame.new(0,-1.2,0) * CFrame.Angles(math.rad(-10),0,0)
LLeg.Weld.C0 = CFrame.new(-0.5,-1.2,0) * CFrame.Angles(math.rad(10),0,0)
LLeg2.Weld.C0 = CFrame.new(0,-1.2,0) * CFrame.Angles(math.rad(10),0,0)
end
end
end
end
end
end)
Spawn(function()
while true do
wait()
if Awakening == true then
for i=1, 4 do
wait(0.1)
for i, v in pairs(Weapon:GetChildren()) do
if v.Name == "Wing" then
v.Weld.C0 = v.Weld.C0 * CFrame.Angles(math.rad(10),0,0)
end
end
end
for i=1, 4 do
wait(0.1)
for i, v in pairs(Weapon:GetChildren()) do
if v.Name == "Wing" then
v.Weld.C0 = v.Weld.C0 * CFrame.Angles(math.rad(-10),0,0)
end
end
end
end
end
end)
Spawn(function()
while true do
wait()
if Humanoid.Health <= 1 then
Attack = true
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(0,math.huge,0)
Bp.position = workspace.Base.Position + Vector3.new(0,1,0)
Bp.Parent = Torso
Bg = Instance.new("BodyGyro")
Bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
Bg.cframe = CFrame.Angles(math.rad(90),0,0)
Bg.Parent = Torso
for i=1, 100 do
wait(0.01)
Bp.position = Bp.position + Vector3.new(math.random(-0.01,0.01),0,math.random(-0.01,0.01))
RArm.Weld.C0 = CFrame.new(1.6,0.2,0) * CFrame.Angles(0,math.rad(-25),math.rad(90))
RArm2.Weld.C0 = CFrame.new(0,-1,0)
LArm.Weld.C0 = CFrame.new(-1.6,0.2,0) * CFrame.Angles(0,math.rad(25),math.rad(-90))
LArm2.Weld.C0 = CFrame.new(0,-1,-0)
RLeg.Weld.C0 = CFrame.new(0.6,-1.2,0) * CFrame.Angles(0,0,math.rad(45))
RLeg2.Weld.C0 = CFrame.new(0,-1.2,0)
LLeg.Weld.C0 = CFrame.new(-0.6,-1.2,0) * CFrame.Angles(0,0,math.rad(-45))
LLeg2.Weld.C0 = CFrame.new(0,-1.2,0)
end
Model = Instance.new("Model")
Model.Parent = workspace
Torso = Instance.new("Part")
Torso.Name = "Torso"
Torso.Anchored = true
Torso.Transparency = 1
Torso.CanCollide = false
Torso.Position = Vector3.new(0,100000,0)
Human = Instance.new("Humanoid")
Human.Parent = Model
Human.Torso = Torso
Player.Character = Model
end
end
end)
Spawn(function()
while true do
wait()
if Humanoid:FindFirstChild("Faint") ~= nil then
Attack = true
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(0,math.huge,0)
Bp.position = workspace.Base.Position + Vector3.new(0,1,0)
Bp.Parent = Torso
game.Debris:AddItem(Bp,8)
Bg = Instance.new("BodyGyro")
Bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
Bg.cframe = CFrame.Angles(math.rad(90),0,0)
Bg.Parent = Torso
game.Debris:AddItem(Bg,8)
for i=1, 80 do
wait(0.1)
Bp.position = Bp.position + Vector3.new(math.random(-0.01,0.01),0,math.random(-0.01,0.01))
RArm.Weld.C0 = CFrame.new(1.6,0.2,0) * CFrame.Angles(0,math.rad(-25),math.rad(90))
RArm2.Weld.C0 = CFrame.new(0,-1,0)
LArm.Weld.C0 = CFrame.new(-1.6,0.2,0) * CFrame.Angles(0,math.rad(25),math.rad(-90))
LArm2.Weld.C0 = CFrame.new(0,-1,-0)
RLeg.Weld.C0 = CFrame.new(0.6,-1.2,0) * CFrame.Angles(0,0,math.rad(45))
RLeg2.Weld.C0 = CFrame.new(0,-1.2,0)
LLeg.Weld.C0 = CFrame.new(-0.6,-1.2,0) * CFrame.Angles(0,0,math.rad(-45))
LLeg2.Weld.C0 = CFrame.new(0,-1.2,0)
end
Humanoid.Jump = true
Attack = false
end
end
end)
Spawn(function()
while true do
wait()
Flung = Humanoid:FindFirstChild("Flung")
if Flung ~= nil then
Attack = true
Spot.CFrame = Torso.CFrame * CFrame.new(0,0,100)
Bp = Instance.new("BodyPosition")
Bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bp.P = 10000
Bp.position = Spot.Position
Bp.Parent = Torso
game.Debris:AddItem(Bp,1)
Bg = Instance.new("BodyGyro")
Bg.maxForce = Vector3.new(math.huge,math.huge,math.huge)
Bg.cframe = Torso.CFrame
Bg.Parent = Torso
game.Debris:AddItem(Bg,1)
for i=1, 30 do
wait(0.01)
Bg.cframe = Bg.cframe * CFrame.Angles(0,0,math.rad(10))
RArm.Weld.C0 = CFrame.new(1.6,0.2,0) * CFrame.Angles(0,math.rad(-25),math.rad(90))
RArm2.Weld.C0 = CFrame.new(0,-1,0)
LArm.Weld.C0 = CFrame.new(-1.6,0.2,0) * CFrame.Angles(0,math.rad(25),math.rad(-90))
LArm2.Weld.C0 = CFrame.new(0,-1,-0)
RLeg.Weld.C0 = CFrame.new(0.6,-1.2,0) * CFrame.Angles(0,0,math.rad(45))
RLeg2.Weld.C0 = CFrame.new(0,-1.2,0)
LLeg.Weld.C0 = CFrame.new(-0.6,-1.2,0) * CFrame.Angles(0,0,math.rad(-45))
LLeg2.Weld.C0 = CFrame.new(0,-1.2,0)
end
Attack = false
end
end
end)
Spawn(function()
while true do
wait()
BarTracking.Size = UDim2.new(Chakra.Value/MaxChakra.Value,0,1,0)
BarTracking2.Size = UDim2.new(Humanoid.Health/Humanoid.MaxHealth,0,1,0)
end
end)
Spawn(function()
while true do
wait()
if Chakra.Value >= MaxChakra.Value then
Chakra.Value = MaxChakra.Value
end
end
end)
Spawn(function()
while true do
wait()
if Humanoid.Health <= 1 then
Humanoid.Health = 1
end
end
end)
Spawn(function()
while true do
for i=1, 2 do
Circle.Image = "http://www.roblox.com/asset/?id=55585187"
wait(0.1)
Circle.Image = "http://www.roblox.com/asset/?id=67713329"
wait(0.1)
end
for i=1, 2 do
Circle.Image = "http://www.roblox.com/asset/?id=55585187"
wait(0.1)
Circle.Image = "http://www.roblox.com/asset/?id=67713329"
wait(0.1)
end
end
end)
Spawn(function()
while true do
wait(0.1)
if Attack == false then
Time = Time + 0.1
end
end
end)
Spawn(function()
while true do
wait()
if Time >= 1 and Attack == false and Awakening == false and Handle:FindFirstChild("Weld") ~= nil then
Combo = true
Combo2 = false
Combo3 = false
Handle.Weld.Part0 = Body
Handle.Weld.C0 = CFrame.new(-0.8,1.2,0.9) * CFrame.Angles(0,0,math.rad(45))
Sheath.Weld.Part0 = Body
Sheath.Weld.C0 = CFrame.new(1,-0.6,0.9) * CFrame.Angles(0,0,math.rad(45))
elseif Time >= 1 and Attack == false and Awakening == true and Handle:FindFirstChild("Weld") ~= nil then
Combo = true
Combo2 = false
Combo3 = false
Handle.Weld.Part0 = Stomach
Handle.Weld.C0 = CFrame.new(-1.4,1.2,0.9) * CFrame.Angles(0,0,math.rad(45))
Sheath.Weld.C0 = CFrame.new(0.4,-0.6,0.9) * CFrame.Angles(0,0,math.rad(45))
end
end
end)
