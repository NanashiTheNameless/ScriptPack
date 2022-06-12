-------------------------------
--Water Dragon Tool/Suit Thing-
-------------------------------
 
Being_Dragon = "rigletto"
Riders = {"Person"}
Joints = 30
BrickColor = BrickColor.new("Bright blue")  
Transparency = 0
Reflectance = 0
Speed = 2
Gap = 0
Away = 2
Length = 4
Distance = Length/2
Size = Vector3.new(2, 1, Length)
 
Players = Game:GetService("Players")
Workspace = Game:GetService("Workspace")
Debris = Game:GetService("Debris")
 
Player = Players:FindFirstChild(Being_Dragon)
Character = Player["Character"]
 
pcall(function ()
Character:FindFirstChild("Dragon"):Destroy()
end)
 
Dragon = Instance.new("Model", Character)
Dragon.Name = "Dragon"
 
Tail = Instance.new("Model", Dragon)
Tail.Name = "Tail"
 
Tail_2 = Instance.new("Model", Dragon)
Tail_2.Name = "Tail 2"
 
Main_Joint = Instance.new("Part", Tail_2)
Main_Joint.Name = "Main_Joint"
Main_Joint.FormFactor = "Symmetric"
Main_Joint.BrickColor = BrickColor
Main_Joint.CanCollide = true
Main_Joint.Elasticity = 0
Main_Joint.Friction = 1
Main_Joint.Reflectance = Reflectance
Main_Joint.Transparency = Transparency
Main_Joint.TopSurface = 0
Main_Joint.BottomSurface = 0
Main_Joint.RightSurface = 0
Main_Joint.LeftSurface = 0
Main_Joint.FrontSurface = 0
Main_Joint.BackSurface = 0
 
Main_Joint.Size = Size
Main_Joint.CFrame = CFrame.new(0, 10, Size.Z/1.25 * 1) * CFrame.Angles(0, 0, 0)
Main_Joint.Anchored = true
Main_Joint.Locked = true
 
Main_Joint_Mesh = Instance.new("SpecialMesh", Main_Joint)
Main_Joint_Mesh.Name = "Main_Joint_Mesh"
Main_Joint_Mesh.MeshType = "Brick"
Main_Joint_Mesh.Scale = Vector3.new(1.25, 1, 1)
 
for i = 1, Joints-1 do
 
Joint = Instance.new("Part", Tail)
Joint.Name = "Joint "..i..""
Joint.FormFactor = "Symmetric"
Joint.BrickColor = BrickColor
Joint.CanCollide = true
Joint.Elasticity = 0
Joint.Friction = 1
Joint.Reflectance = Reflectance
Joint.Transparency = Transparency
Joint.TopSurface = 0
Joint.BottomSurface = 0
Joint.RightSurface = 0
Joint.LeftSurface = 0
Joint.FrontSurface = 0
Joint.BackSurface = 0
 
Joint.Size = Size
Joint.CFrame = CFrame.new(0, 10, Size.Z/1.25 * i) * CFrame.Angles(0, 0, 0)
Joint.Anchored = true
Joint.Locked = true
 
Joint_Mesh = Instance.new("SpecialMesh", Joint)
Joint_Mesh.Name = "Joint_Mesh"
Joint_Mesh.MeshType = "Brick"
 
if i <= Joints - 3 then
Joint_Mesh.Scale = Vector3.new(1.25, 1, 1)
else
if i == Joints - 2 then
Joint_Mesh.Scale = Vector3.new(1, 0.75, 1)
else
if i == Joints - 1 then
Joint_Mesh.Scale = Vector3.new(0.75, 0.50, 1)
end
end
end
 
end
 
function Resize(X, Y, Z)
 
Length = Z
Distance = Length/2
 
for i, v in pairs(Tail:GetChildren()) do
v.Size = Vector3.new(X, Y, Z)
end
 
end
 
Backpack = Player:FindFirstChild("Backpack")
 
if script.Parent.className ~= "HopperBin" then
 
HopperBin = Instance.new("HopperBin", Backpack)
HopperBin.Name = "Water Dragon"
 
script.Parent = HopperBin
 
end
 
MouseDown = false
 
function Button1Down(Mouse)
MouseDown = true
end
 
function Button1Up(Mouse)
MouseDown = false
end
 
function selected(Mouse)
 
Mouse.Button1Down:connect(function () Button1Down(Mouse) end)
Mouse.Button1Up:connect(function () Button1Up(Mouse) end)
 
while MouseDown == true do
 
wait()
print ("BAGEL")
 
Distance = Length/2
 
if ( Main_Joint.Position - Mouse.Hit.p ).magnitude > Speed then
Interval = ( Main_Joint.Position - Mouse.Hit.p ).unit * Speed
else
Interval = ( Main_Joint.Position - Mouse.Hit.p ).unit * 1
end
 
Start = ( Main_Joint.Position - Interval )
Main_Joint.CFrame = CFrame.new(Start.X, Start.Y, Start.Z)
 
 
Before = Main_Joint
Parts = Tail:GetChildren()
 
for Number = 1, #Parts do
 
Pos = Part.Position
 
if Number == 1 then
 
local Start_Pos = ( Start - Pos ).unit
local Spread = Start_Pos * ( Distance + Away )
 
Part.Anchored = false
Part.CFrame = CFrame.new(Start-Spread, Start)
Part.Anchored = true
 
else
 
CFrame_Before = Before.CFrame
Position_1 = Before.Position - ( CFrame_Before.lookVector * Distance )
Position_2 = Parts[Number].Position
Position_3 = ( Position_1 - Position_2 ).unit
Spread_Joint = Position_3 * ( Distance + Gap )
 
Part.Anchored = false
Parts[Number].CFrame = CFrame.new(Position_1 - Spread_Joint, Position_1)
Part.Anchored = true
 
end
 
Before = Parts[Number]
 
end
 
end
 
end
 
script.Parent.Selected:connect(selected)
 