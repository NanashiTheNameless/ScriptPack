tool = Instance.new("Tool") 
tool.Parent = Game.Players.yfc.Backpack 
tool.Name = "Punch" 

han = Instance.new("Part") 
han.Parent = tool 
han.BrickColor = BrickColor.new("Really red") 
han.Size = Vector3.new(2, 2, 2) 
han.Shape = "Ball" 
han.Name = "Handle" 
mesh = Instance.new("SpecialMesh") 
mesh.Parent = han 
mesh.Scale = Vector3.new(1, 1, 1) 
mesh.MeshType = "Sphere" 

---------------------Part 2 
---------------------Part 2 

r = game:service("RunService") 


local damage = 5 

local slash_damage = 100000 


sword = han 
Tool = tool 

function attack() 
local anim = Instance.new("StringValue") 
anim.Name = "toolanim" 
anim.Value = "Lunge" 
anim.Parent = Tool 
end 


function swordUp() 
Tool.GripForward = Vector3.new(-1,0,0) 
Tool.GripRight = Vector3.new(0,1,0) 
Tool.GripUp = Vector3.new(0,0,1) 
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

function calc() 
m = math.random(1, 3) 
if m == 1 then 
damage = 5 
elseif m == 2 then 
damage = 10 
elseif m == 3 then 
damage = 15 
end 
end 

m = math.random(1,3) 
if m == 1 then
attack() 
calc() 
end 
if m == 2 then 
damage = 0 
end 
if m == 3 then
damage = 0 
end 


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
h:TakeDamage(damage) 
local guimain2 = Instance.new("BillboardGui") 
guimain2.Parent = hit
guimain2.Adornee = hit 
guimain2.Size = UDim2.new(0, 80, 0, 4) 
guimain2.StudsOffset = (Vector3.new(0, 2, 0)) 

T3 = Instance.new("TextLabel") 
T3.Parent = guimain2 
T3.Size = UDim2.new(75, 0, 0, 75) 
T3.Position = UDim2.new(0, 0, 0, 0) 
T3.Text = " " ..damage.. " "  
T3.BackgroundTransparency = 1
T3.BackgroundColor = BrickColor.new(1003)
T3.TextColor = BrickColor.new(1003) 
T3.FontSize = "Size16" 
wait(2) 
guimain2:remove() 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 