if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "name" 
bin.Parent = game.Players.pianoman112233.Backpack 
script.Parent = bin 
end 

bin = script.Parent 

function onButton1Down(mouse) 

b = Instance.new("Part") 
b.Parent = game.Workspace 
b.Position = Vector3.new(mouse.Hit.x,mouse.Hit.y,mouse.Hit.z) 

end 



bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
end)  
