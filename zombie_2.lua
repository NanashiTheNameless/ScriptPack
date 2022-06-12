vip = game.Players.acb227 
char = vip.Character 
script.Parent = vip.Character

char.Torso.Transparency = 1 

--Torso-- 
local ht = Instance.new("Part") 
ht.Name = "Handle" 
ht.Parent = char 
ht.Size = Vector3.new(2,2,1) 
ht.formFactor = "Brick" 
ht.BrickColor = BrickColor.new("Brown") 
ht.TopSurface = "Smooth" 
ht.BottomSurface = "Smooth" 
ht.Transparency = 0 
ht.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = ht 
m.Scale = Vector3.new(1, 1, 1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char.Torso 
w1.Part0 = ht 
w1.Part1 = char.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

char.Head.Transparency = 1 

--Torso-- 
local he = Instance.new("Part") 
he.Name = "Handle" 
he.Parent = char 
he.Size = Vector3.new(1,1,1) 
he.formFactor = "Brick" 
he.BrickColor = BrickColor.new("Bright green") 
he.TopSurface = "Smooth" 
he.BottomSurface = "Smooth" 
he.Transparency = 0 
he.Reflectance = 0 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = he 
m.Scale = Vector3.new(1.25, 1.25, 1.25) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char.Head 
w1.Part0 = he 
w1.Part1 = char.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

char["Left Leg"].Transparency = 1 

--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = char 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright green") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1, 1, 1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char["Left Leg"] 
w1.Part0 = h 
w1.Part1 = char["Left Leg"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

char["Left Arm"].Transparency = 1 

--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = char 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright green") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1, 1, 1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char["Left Arm"] 
w1.Part0 = h 
w1.Part1 = char["Left Arm"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

char["Right Arm"].Transparency = 1 

--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = char 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright green") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1, 1, 1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char["Right Arm"] 
w1.Part0 = h 
w1.Part1 = char["Right Arm"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

char["Right Leg"].Transparency = 1 

--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = char 
h.Size = Vector3.new(1,2,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright green") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(1, 1, 1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = char["Right Leg"] 
w1.Part0 = h 
w1.Part1 = char["Right Leg"] 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0, 0) 

local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = char 
guimain2.Adornee = he 
guimain2.Size = UDim2.new(0, 40, 0, 2) 
guimain2.StudsOffset = (Vector3.new(0, 3, 0)) 

T3 = Instance.new("TextLabel") 
T3.Parent = guimain2 
T3.Size = UDim2.new(0, 0, 0, 0) 
T3.Position = UDim2.new(0, 0, 0, 0) 
T3.Text = "Zombie" 
T3.BackgroundTransparency = 1 
T3.BackgroundColor = BrickColor.new(1003) 
T3.TextColor = BrickColor.new("Bright green") 
T3.FontSize = "Size48"
T3.Visible = true

owner = Game.Players.acb227.Character

function OnTouched(hit) 
if hit.Parent:findFirstChild("Humanoid") == nil then return end 
if It == false then return end 
It = false 
game.Players.acb227.Character.Torso.Touched:connect(function(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
if hit.Parent.Name ~= Owner.Name then 
human.Health = 75 
wait(2) 
human.Health = 50 
wait(2) 
human.Health = 25 
wait(2) 
human.Health = 0 
wait(2) 
end 
end 
end) 
w = Instance.new("Weld") 
w.Parent = game.Players.acb227.Character.Torso 
w.Part1 = game.Players.acb227.Character.Torso
w.Part0 = game.Players[hit.Parent.Name].Character.Torso 
w.C0 = CFrame.new(0,-2,-2) * CFrame.fromEulerAnglesXYZ(0, 3, 0) 
end 
game.Workspace.acb227.Torso.Touched:connect(OnTouched) 

