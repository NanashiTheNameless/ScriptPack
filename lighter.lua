t = Instance.new("Tool") 
t.Parent = Game.Players.acb227.Backpack 
t.Name = "Lighter" 
pet = Instance.new("Part") 
pet.Parent = t 
pet.Size = Vector3.new(1,1,1) 
pet.TopSurface = "Smooth" 
pet.BottomSurface = "Smooth" 
pet.Name = "Handle" 


r = game:service("RunService") 


local damage = 0 


local slash_damage = 0 


sword = pet 
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
if hit.Name == "Tinder" or hit.Name == "Burn" then 
hit.BrickColor = BrickColor.new("Really red") 
fire = Instance.new("Fire") 
fire.Parent = hit 
smok = Instance.new("Smoke") 
smok.Parent = hit 
wait(5) 
hit.BrickColor = BrickColor.new("Really black") 
hit.Material = "CorrodedMetal" 
hit.Fire:remove() 
wait(2) 
hit.Smoke:remove() 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 