script/admin = "acb227" 


local p = Instance.new("Part") 
p.Parent = Workspace 
p.Size = Vector3.new(1,1,1) 
p.formFactor = 0 
p.BrickColor = BrickColor.new("Bright red") 
p.Anchored = true 
p.Locked = true 


if script.Parent.className ~= "HopperBin" then 
local h = Instance.new("HopperBin") 
h.Parent = game.Players[admin].Backpack 
h.Name = "Lazor" 
script.Parent = h 
end 
hold = false 
tool = script.Parent 

tool.Selected:connect(function(mouse) 

mouse.Button1Up:connect(function() hold = false 
p.Parent = nil 
end) 

mouse.Button1Down:connect(function() 
if mouse.Target == nil then return end 
p.Parent = Workspace 
hold = true 
while hold == true do 
wait() 

To = mouse.Hit.p 
From = Workspace[admin]["Right Arm"] 


p.CFrame = CFrame.new((To+From.Position)/2, From.Position)*CFrame.Angles((math.pi/2),0,0) 
local c = Instance.new("CylinderMesh") 
c.Parent = p 
c.Scale = Vector3.new(.15,(To-From.Position).magnitude,.15) 
h = mouse.Target.Parent:findFirstChild("Humanoid") 
if h ~= nil then 
while true do
h:TakeDamage(15) 
end 

end 
end) 
end) 


f = Instance.new("ForceField")
f.Parent = Game.Workspace[admin]

