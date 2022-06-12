local Me = "yfc" 
local Player = game:GetService("Players")[Me] 
local BP = Player.Backpack 
for _, v in pairs(BP:GetChildren()) do 
if v.Name == "Limb Stealer" then 
v.Name = "FAKE!!!" 
end 
end 

local Tool = Instance.new("HopperBin", BP) 
Tool.Name = "Limb Stealer" 
script.Parent = Tool 

local Hold = false 
function onSelected(mouse) 
print(1) 
mouse.Button1Down:connect(function() 
print(2) 
Hold = false 
end) 
mouse.Button1Up:connect(function() 
print(3) 
Hold = true 
end) 
while Hold do 
local Part = mouse.Target 
if Part then 
print(4) 
Part.Parent = Workspace 
Part.CFrame = CFrame.new(Part.CFrame, mouse.Hit.p) 
end 
wait(0.1) 
end 
end 

script.Parent.Selected:connect(onSelected)  
