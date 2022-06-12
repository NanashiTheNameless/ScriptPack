
if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "build" 
bin.Parent = game.Players.acb227.Backpack 
script.Parent = bin 
end 

bin = script.Parent 

size = 25 

function onButton1Down(mouse) 
part = Instance.new("Explosion")
part.Parent = workspace 
part.BlastRadius = size
part.Position = Vector3.new(mouse.Hit.x,mouse.Hit.y,mouse.Hit.z) 
end 

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(function(key) KD(key, mouse) end) 
end)  