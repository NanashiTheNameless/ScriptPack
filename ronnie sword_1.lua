script/ 

t = Instance.new("Tool") 
t.Parent = game.Players.acb227.Backpack 
t.Name = "Sword" 
handlee = Instance.new("Part") 
handlee.Position = Vector3.new(100,0,100) 
handlee.Size = Vector3.new(1,2,1) 
handlee.BrickColor = BrickColor.new(1003) 
handlee.Anchored = false 
handlee.formFactor = "Plate" 
handlee.Name = "Handle" 
handlee.Parent = t 
handlee.BottomSurface = 0 
handlee.Material = "Plastic" 
handlee.TopSurface = 0 
script.Parent = t.Parent 

local h2 = Instance.new("Part") 
h2.Name = "Handle" 
h2.Parent = t 
h2.Size = Vector3.new(0.01,5.8,0.01) 
h2.formFactor = "Brick" 
h2.BrickColor = BrickColor.new("Really black") 
h2.TopSurface = "Smooth" 
h2.BottomSurface = "Smooth" 
h2.formFactor = "Plate" 
h2.Transparency = 0 
h2.Reflectance = 0 
m = Instance.new("CylinderMesh") 
m.Parent = h2 
m.Scale = Vector3.new(0.1, 2, 0.1) 


local h3 = Instance.new("Part") 
h3.Name = "Handle" 
h3.Parent = t 
h3.Size = Vector3.new(0.01,1,0.01) 
h3.formFactor = "Brick" 
h3.BrickColor = BrickColor.new("Institutional white") 
h3.TopSurface = "Smooth" 
h3.BottomSurface = "Smooth" 
h3.formFactor = "Plate" 
h3.Transparency = 0 
h3.Reflectance = 0 
m = Instance.new("CylinderMesh") 
m.Parent = h3 
m.Scale = Vector3.new(1, 0.2, 1) 

--Gui------------------------------------------------------------------------------------------------------------ 
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
tx.Position = UDim2.new(0, 200, 0, 125)
tx.Size = UDim2.new(0, 99, 0, 20) 
tx.Text = "Shoot" 

tx.MouseButton1Click:connect(function() 
human = plyr.Character:findFirstChild("Humanoid") 
if human ~= nil then 
bullet = Instance.new("Part")
bullet.Parent = game.Workspace
bullet.Size = Vector3.new(1, 1, 1)
bullet.CFrame = handlee.CFrame*CFrame.new(Vector3.new(0, 0, 0.1))
bullet.Name = "OING"
a = Instance.new("SpecialMesh")
a.Parent = bullet
a.MeshType = "Brick"
a.Scale = Vector3.new(0.2, 0.3, 0.7)
bullet.Locked = true
bullet.TopSurface = "Smooth"
bullet.BottomSurface = "Smooth"
bullet.Anchored = false
bullet:BreakJoints()

b = Instance.new("BodyVelocity")
b.Parent = bullet
b.maxForce = Vector3.new(math.huge, math.huge, math.huge)
b.velocity = handlee.CFrame.lookVector * 50 + Vector3.new(math.random(-1, 1)/30, math.random(-1, 1)/30, math.random(-1, 1)/30)

end 
end) 

plyr.Chatted:connect(function(msg) 
if msg == "removed" then 
sc:Remove() 
end 
end) 

---------------------Part 2 
---------------------Part 2 
---------------------Part 2 

r = game:service("RunService") 


local damage = 38 


local slash_damage = 38 


sword = h2 
Tool = t 



function attack() 
local anim = Instance.new("StringValue") 
anim.Name = "toolanim" 
anim.Value = "Slash" 
anim.Parent = Tool 
end 


function swordUp() 
Tool.GripForward = Vector3.new(-1,0,0) 
Tool.GripRight = Vector3.new(0,1,0) 
Tool.GripUp = Vector3.new(0,0,5) 
end 

function swordOut() 
Tool.GripForward = Vector3.new(0,0,1) 
Tool.GripRight = Vector3.new(0,-1,0) 
Tool.GripUp = Vector3.new(-1,0,0) 
end 



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



function onTouched(hit) 
h = hit.Parent:findFirstChild("Humanoid") 
if h ~= nil then 
h:TakeDamage(38) 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 

m = Instance.new("CylinderMesh") 
m.Parent = handlee 
m.Scale = Vector3.new(0.3, 1, 0.3) 

w2 = Instance.new("Weld") 
w2.Parent = handlee 
w2.Part0 = h2 
w2.Part1 = handlee 
w2.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -2.8, 0) 
w3 = Instance.new("Weld") 
w3.Parent = handlee 
w3.Part0 = h3 
w3.Part1 = handlee 
w3.C0 = CFrame.fromEulerAnglesXYZ(0, 0, 0) + Vector3.new(0, -.5, 0) 