-------------------[~=~acb227's Wand he (I) is making~=~]---------------------------------------------------------------------------------------------------------------------------
Tool = Instance.new("Tool") 
Tool.Parent = Game.Players.acb227.Backpack 
Tool.Name = "Wand" 

han = Instance.new("Part") 
han.Parent = Tool 
han.Name = "Handle" 
han.Size = Vector3.new(1, 1, 1) 
han.BrickColor = BrickColor.new("Really black") 
mhan = Instance.new("CylinderMesh") 
mhan.Parent = han 
mhan.Scale = Vector3.new(0.2, 0.8, 0.2) 
mhan.Offset = Vector3.new(0, 0, -0.1)

r = game:service("RunService") 


local damage = 10 


local slash_damage = 20 


sword = han 
Tool = Tool 

function attack1() 
local anim = Instance.new("StringValue") 
anim.Name = "toolanim" 
anim.Value = "Slash" 
anim.Parent = Tool 
end 

function attack2() 
damage = slash_damage 
local anim = Instance.new("StringValue") 
anim.Name = "toolanim" 
anim.Value = "Lunge" 
anim.Parent = Tool 
damage = 10 
end 

function attack3() 
damage = slash_damage 
local anim = Instance.new("StringValue") 
anim.Name = "toolanim" 
anim.Value = "Slash" 
anim.Parent = Tool 
swordOut() 
wait(0.5) 
swordUp() 
wait(0.5) 
swordOut() 
wait(0.5) 
swordUp() 
damage = 10 
end 


function swordUp() 
Tool.GripForward = Vector3.new(-1,0,0) 
Tool.GripRight = Vector3.new(0,0,0) 
Tool.GripUp = Vector3.new(0,0,1) 
end 

function swordOut() 
Tool.GripForward = Vector3.new(0,1,0) 
Tool.GripRight = Vector3.new(0,0,0) 
Tool.GripUp = Vector3.new(0,1,0) 
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

m = math.random(1, 3) 
if m == 1 then 
attack1() 
elseif m == 2 then 
attack2() 
elseif m == 3 then 
attack3() 
end 

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
h:TakeDamage(damage) 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 