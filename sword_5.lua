script/

----------------------------claw 

t = Instance.new("Tool") 
t.Parent = game.Players.acb227.Backpack 
t.Name = "Sword" 
handlee = Instance.new("Part") 
handlee.Size = Vector3.new(1,1,1) 
handlee.BrickColor = BrickColor.new("Bright Red") 
handlee.Anchored = false 
handlee.Name = "Handle" 
handlee.Parent = t 
handlee.Transparency = 0 
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
h:TakeDamage(35) 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 