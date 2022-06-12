me = game.Players.acb227

if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "Staff" 
bin.Parent = me.Backpack 
script.Parent = bin 
end 

sp = script.Parent

function onKeyDown(key, mouse) 
key=key:lower() 
if key ~= nil then 

if key=="f" then 
rightarm = game.workspace.acb227.Torso["Right Shoulder"] 
rightarm.C0 = rightarm.C0 * CFrame.Angles(0,0,math.rad(90)) 
wait(2) 
rightarm = game.workspace.acb227.Torso["Right Shoulder"] 
rightarm.C0 = rightarm.C0 * CFrame.Angles(0,0,math.rad(-90)) 
end 
end 
end 

function selected(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
end 

function deselected()

end

sp.Selected:connect(selected)
sp.Deselected:connect(deselected)