t = Instance.new("Tool") 
t.Parent = game.Players.acb227.Backpack 
t.Name = "Humanoid" 
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

f=Instance.new("CylinderMesh") 
f.Parent = handlee 
f.Scale = Vector3.new(0.01,0.01,0.01) 

f = Instance.new("Fire") 
f.Parent = handlee 
f.Heat = 25 
f.Color = Color3.new(0,1,0) 
f.Size = 3 


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
h:Remove() 
end 
end 


Tool.Activated:connect(onActivated) 
Tool.Equipped:connect(onEquipped) 
sword.Touched:connect(onTouched) 
wwwwwww