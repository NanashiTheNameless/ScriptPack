me = game.Players.acb227

if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "Staff" 
bin.Parent = me.Backpack 
script.Parent = bin 
end 

sp = script.Parent

function onButton1Down(mouse) 
print(me) 
end 

function onButton1Up(mouse) 
print("hi") 
end 

function onKeyDown(key, mouse) 
key=key:lower() 
if key ~= nil then 

if key=="q" then 
fire = Instance.new("Fire")
fire.Heat = 0 
fire.Size = 0
fire.Parent = mouse.Target 
wait(1) 
fire.Parent:BreakJoints() 
fire:Remove() 
end 
if key=="e" then 
fire = Instance.new("Fire")
fire.Heat = 5 
fire.Size = 0
fire.Parent = mouse.Target 
wait(1) 
fire.Parent.Transparency = 1 
fire:Remove() 
end 
if key=="f" then 
fire = Instance.new("Fire")
fire.Heat = 5 
fire.Size = 0
fire.Color = Color3.new(5, 5, 5)
fire.Parent = mouse.Target 
wait(1) 
fire.Parent:remove() 
fire:Remove() 
end 
if key=="j" then 
--[[ part = Instance.new("Part") 
part.Parent = workspace 
part.Anchored = true 
part.Size = Vector3.new(1, 1, 1) 
part.Position = mouse.hit.p ]]
rightarm = game.workspace.acb227.Torso["Right Shoulder"] 
rightarm.C0 = rightarm.C0 * CFrame.Angles(0,0,math.rad(90)) 
end 
if key=="z" then 
--[[ part = Instance.new("Part") 
part.Parent = workspace 
part.Anchored = true 
part.Size = Vector3.new(1, 1, 1) 
part.Position = mouse.hit.p ]]
rightarm = game.workspace.acb227.Torso["Right Shoulder"] 
rightarm.C0 = rightarm.C0 * CFrame.Angles(0,0,math.rad(0)) 
end 
if key=="f" then 
fire = Instance.new("Fire")
fire.Heat = 5 
fire.Size = 0
fire.Color = Color3.new(5, 5, 5)
fire.Parent = mouse.Target 
wait(1) 
fire.Parent:remove() 
fire:Remove() 
end 
if key=="t" then 
fire = Instance.new("Fire")
fire.Heat = 5 
fire.Size = 5
fire.Color = Color3.new(5, 5, 5)
fire.Parent = mouse.Target 
wait(1) 
fire:Remove() 
end 
end 
end 


function onSelected(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
end 

sp.Selected:connect(onSelected) 