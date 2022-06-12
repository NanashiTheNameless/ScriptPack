script.Parent = nil
Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
TineID = "1033714" 
Make = Instance.new 
InkColor = "Navy blue" 
 
Character.Humanoid.MaxHealth = math.huge
Pen = Make("Model", Character)
Pen.Name = "Pen"
 
MakePart = function(ID, Color, Ref, MeshType, Size, Scale, Name, WeldedTo, C0, C1)
local Pen_Part = Make("Part", Pen)
Pen_Part.Name = Name
Pen_Part.BrickColor = BrickColor.new(Color)
Pen_Part.Size = Size
Pen_Part.Locked = true
Pen_Part.Reflectance = Ref
Pen_Part.TopSurface = "Smooth"
Pen_Part.BottomSurface = "Smooth"
local Pen_Mesh = Make("SpecialMesh", Pen_Part)
Pen_Mesh.MeshId = "http://www.roblox.com/asset/?id="..ID
Pen_Mesh.Scale = Scale
Pen_Mesh.MeshType = MeshType
local Weld = Make("Weld", Pen_Part)
Weld.Part0 = Pen_Part
Weld.Part1 = WeldedTo
Weld.C0 = Weld.C0 * C0
Weld.C1 = Weld.C1 * C1
end 
 
local Pen_Base = Make("Part", Pen) 
Pen_Base.BrickColor = BrickColor.new("Bright blue")
Pen_Base.Name = "Pen Base"
Pen_Base.Size = Vector3.new(3,15,3)
Pen_Base.Locked = true
Pen_Base_Mesh = Make("CylinderMesh", Pen_Base)
Pen_6D = Make("BodyGyro", Pen_Base)
Pen_6D.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
Pen_Move = Make("BodyPosition", Pen_Base)
Pen_Move.maxForce = Vector3.new(math.huge, math.huge, math.huge)
function Face(Object)
Pen_Move.position = (Object).CFrame:toWorldSpace(CFrame.new(0,20,5)).p
end
Tine = MakePart(TineID, "Medium stone grey", 0.3, "FileMesh", Vector3.new(3,4,3), Vector3.new(1.5,4,1.5), "Tine", Pen_Base, CFrame.new(0,-8.7,0), CFrame.new(0,0,0))
Ink_Top = MakePart(TineID, InkColor, 0, "FileMesh",  Vector3.new(1,1,1), Vector3.new(0.3,1,0.3), "Ink Top", Pen_Base, CFrame.new(0,-10.2,0), CFrame.new(0,0,0))
Clip = MakePart("", "Bright bluish green", 0.1, "Sphere", Vector3.new(1,7,1), Vector3.new(1,1,1), "Clip", Pen_Base, CFrame.new(1.7,-1,0), CFrame.new(0,0,0))
Pen:MoveTo(Vector3.new(0,100,0))
Face(Character.Torso)
 
function ChangeColor(Color)
while true do
wait()
InkColor = Color
end
end
Box = Make("SelectionBox", Player.PlayerGui)
Pen_6D.cframe = CFrame.Angles(0,0,math.rad(-135))
local Control = Make("HopperBin", Player.Backpack)
Control.Name = "Pen"
Control.Selected:connect(function(mouse)
Box.Name = "Pen Selection"
pcall(function()Box.Adornee = mouse.Target end)
mouse.Button1Down:connect(function()
local Clicked = mouse.Target
local Laser = Make("FloorWire", Workspace)
Laser.Color = BrickColor.new(InkColor)
Laser.To = Clicked
Laser.Name = "Pen Ink Laser"
Laser.From = Pen["Ink Top"]
wait(0.5)
for i,v in pairs(Workspace:GetChildren())do
if v.Name == "Pen Ink Laser" then
v:remove()
end
end
pcall(function()Clicked.Parent.Shirt:remove() end)
pcall(function()Clicked.Parent.Pants:remove() end)
pcall(function()Clicked.Parent.ShirtGraphic:remove() end)
pcall(function()Clicked.Parent.Torso.roblox:remove() end)
pcall(function()Clicked.BrickColor = BrickColor.new(InkColor)end)
end)
mouse.KeyDown:connect(function(Key)
key = Key:lower()
if key == "r" then ChangeColor("Navy blue")
elseif key == "t" then ChangeColor("Bright green")
elseif key == "y" then ChangeColor("Bright blue")
elseif key == "u" then ChangeColor("Really red")
elseif key == "f" then ChangeColor("New Yeller")
elseif key == "g" then ChangeColor("Bright blue")
elseif key == "h" then ChangeColor("Really black")
elseif key == "j" then ChangeColor("Medium stone grey")
elseif key == "z" then ChangeColor("Sand blue")
elseif key == "x" then ChangeColor("Camo")
elseif key == "c" then ChangeColor("Dusty Rose")
elseif key == "v" then ChangeColor("Neon orange")
elseif key == "b" then ChangeColor("Pastel green")
elseif key == "n" then ChangeColor("Lime green")
elseif key == "m" then ChangeColor("Hot pink")
end
end)
while true do
wait()
Box.Adornee = mouse.Target
Pen_6D.cframe = mouse.Hit:toWorldSpace(CFrame.Angles(math.rad(-100),0,0))
Box.Color = BrickColor.new(InkColor)
end
end)
Control.Deselected:connect(function()
Pen_6D.cframe = CFrame.Angles(0,0,math.rad(-135))
pcall(function()Player.PlayerGui["Pen Selection"]:remove() end)
end)
 
 
while true do
wait()
Face(Character.Torso)
Pen["Ink Top"].BrickColor = BrickColor.new(InkColor)
pcall(function()Player.PlayerGui["Pen Selection"].Color = BrickColor.new(InkColor) end)
end 
print("Loaded Pen By LuaModelMaker")
 

