Game.Workspace.acb227.Head.Transparency = 1
Game.Workspace.acb227.Torso.Transparency = 1
Game.Workspace.acb227["Right Leg"].Transparency = 1
Game.Workspace.acb227["Right Arm"].Transparency = 1
Game.Workspace.acb227["Left Arm"].Transparency = 1
Game.Workspace.acb227["Left Leg"].Transparency = 1
Game.Workspace.acb227.Head.face:Remove()
Game.Workspace.acb227["Right Arm"].CanCollide = false
Game.Workspace.acb227["Left Arm"].CanCollide = false
Game.Workspace.acb227.Torso.CanCollide = false

w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = Workspace.acb227.Head 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.5, 0) 

--Torso-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(2,1,2.5) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Reddish brown") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.8, 0.5, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 1.5, 0) 
--Head-- 
local h = Instance.new("Part") 
h.Name = "Head2" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Reddish brown") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("SpecialMesh") 
m.Parent = h 
m.Scale = Vector3.new(1.1, 1, 1.1) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 1, 1) 
--Right Leg-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Reddish brown") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.6, 1, 0.6) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227["Right Leg"] 
w1.Part0 = h 
w1.Part1 = Workspace.acb227["Right Leg"]
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.3, 1) 
--Right Leg-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Reddish brown") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.6, 1, 0.6) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227["Right Leg"] 
w1.Part0 = h 
w1.Part1 = Workspace.acb227["Right Leg"]
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(1, 0.3, -1) 
--Left Leg-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Reddish brown") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.6, 1, 0.6) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227["Left Leg"] 
w1.Part0 = h 
w1.Part1 = Workspace.acb227["Left Leg"]
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.3, 1) 
--Left Leg-- 
local h = Instance.new("Part") 
h.Name = "Handle" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Reddish brown") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("CylinderMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.6, 1, 0.6) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227["Left Leg"] 
w1.Part0 = h 
w1.Part1 = Workspace.acb227["Left Leg"]
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(-1, 0.3, -1) 
--Tail-- 
local h = Instance.new("Part") 
h.Name = "Tail" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Reddish brown") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 0 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.3, 0.8, 0.3) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Torso 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Torso 
w1.C0 = CFrame.fromEulerAnglesXYZ(-0.3, 0, 0) + Vector3.new(0, 0.6, -1.5) 
--Head-- 
local h = Instance.new("Part") 
h.Name = "Toung" 
h.Parent = Workspace.acb227 
h.Size = Vector3.new(1,1,1) 
h.formFactor = "Brick" 
h.BrickColor = BrickColor.new("Bright red") 
h.TopSurface = "Smooth" 
h.BottomSurface = "Smooth" 
h.Transparency = 1 
h.Reflectance = 0 
---------------------mesh 
m = Instance.new("BlockMesh") 
m.Parent = h 
m.Scale = Vector3.new(0.3, 0.1, 0.5) 
-----------------------------------------weldling 
w1 = Instance.new("Weld") 
w1.Parent = Workspace.acb227.Head 
w1.Part0 = h 
w1.Part1 = Workspace.acb227.Head 
w1.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, 0.5, 1.5) 

--Dog Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 600.5, 0, -20) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Poop" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
poop = Instance.new("Part") 
poop.BrickColor = BrickColor.new("Reddish brown") 
poop.Anchored = false 
poop.Locked = false 
poop.Parent = Game.Workspace 
poop.Size = Vector3.new(1, 1, 1) 
poop.Position = Game.Workspace.acb227.Tail.Position
poop.TopSurface = "Smooth" 
poop.BottomSurface = "Smooth" 
poop.formFactor = "Plate"
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removepo" then 
sc:Remove() 
end 
end) 

--Dog Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 500.5, 0, -20) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Pee" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
poop = Instance.new("Part") 
poop.BrickColor = BrickColor.new("New Yeller") 
poop.Anchored = false 
poop.Locked = false 
poop.Parent = Game.Workspace 
poop.Size = Vector3.new(1, 1, 1) 
poop.Position = Game.Workspace.acb227.Tail.Position + Vector3.new(0, -1, 0)
poop.TopSurface = "Smooth" 
poop.BottomSurface = "Smooth" 
poop.formFactor = "Plate"
poop.Transparency = 0.3
--------------------------------------------------------
h = Instance.new("SpecialMesh") 
h.Parent = poop 
h.Scale = Vector3.new(2, 0.4, 2)
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removepe" then 
sc:Remove() 
end 
end) 

--Dog Gui------------------------------------------------------------------------------------------------------------ 
vip = "acb227" 
plyr = game.Players:findFirstChild(vip) 
pg = plyr:findFirstChild("PlayerGui") 

sc = Instance.new("ScreenGui") 
sc.Name = "unHide" 
sc.Parent = pg 

tx = Instance.new("TextButton") 
tx.BackgroundTransparency = 0.3 
tx.Name = "Text - Reset" 
tx.Parent = sc 
tx.Position = UDim2.new(0, 700.5, 0, -20) 
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Lick" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
Game.Workspace.acb227.Toung.Transparency = 0 
wait(3) 
Game.Workspace.acb227.Toung.Transparency = 1 
end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removel" then 
sc:Remove() 
end 
end) 

----------------------------claw 

t = Instance.new("Tool") 
t.Parent = game.Players.acb227.Backpack 
t.Name = "Bite" 
handlee = Instance.new("Part") 
handlee.Size = Vector3.new(1,1,1) 
handlee.BrickColor = BrickColor.new("Bright Red") 
handlee.Anchored = false 
handlee.Name = "Handle" 
handlee.Parent = t 
handlee.Transparency = 1 
handlee.BottomSurface = 0 
handlee.Material = "Plastic" 
handlee.TopSurface = 0 
handlee.Shape = (0)


---------------------Part 2 
---------------------Part 2 
---------------------Part 2 

r = game:service("RunService") 


local damage = 100000 


local slash_damage = 100000 


sword = handlee 
Tool = t 




Tool.Enabled = true 

function onActivated() 

if not Tool.Enabled then 
return 
end 

Tool.Enabled = false 

local character = Tool.Parent; 
local humanoid = character.Humanoid 
if humanoid == nil then 
print("Humanoid not found") 
return 
end 



attack() 

wait() 

Tool.Enabled = true 
end 


function onEquipped() 

end 


------part 3 
------part 3 
------part 3 
function onTouched(hit) 
h = hit.Parent:findFirstChild("Humanoid") 
if h ~= nil then 
h:TakeDamage(15) 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 

-------------------------------------------tool

t = Instance.new("Tool") 
t.Parent = game.Players.acb227.Backpack 
t.Name = "Heal" 
handlee = Instance.new("Part") 
handlee.Position = Vector3.new(100,0,100) 
handlee.Size = Vector3.new(1,1,1) 
handlee.BrickColor = BrickColor.new(1003) 
handlee.Anchored = false 
handlee.Name = "Handle" 
handlee.Parent = t 
handlee.Transparency = 1 
handlee.BottomSurface = 0 
handlee.Material = "Slate" 
handlee.TopSurface = 0 

---------------------Part 2 
---------------------Part 2 
---------------------Part 2 

r = game:service("RunService") 


local Health = 100 


local slash_damage = 0 


sword = handlee 
Tool = t 




Tool.Enabled = true 

function onActivated() 

if not Tool.Enabled then 
return 
end 

Tool.Enabled = false 

local character = Tool.Parent; 
local humanoid = character.Humanoid 
if humanoid == nil then 
print("Humanoid not found") 
return 
end 



attack() 

wait() 

Tool.Enabled = true 
end 


function onEquipped() 

end 


------part 3 
------part 3 
------part 3 
function onTouched(hit) 
h = hit.Parent:findFirstChild("Humanoid") 
if h ~= nil then 
h:TakeDamage(-15) 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 
