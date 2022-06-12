
if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "build" 
bin.Parent = game.Players.acb227.Backpack 
script.Parent = bin 
end 

bin = script.Parent 

local mo = Instance.new("Model") 
mo.Parent = workspace 
mo.Name = "Bob371" 
local hum = Instance.new("Humanoid") 
hum.Parent = mo 
hum.Health = 0 
hum.MaxHealth = 0 

function onButton1Down(mouse) 
end 

function KD(key, mouse) 

if key ~= nil then 
key:lower() 
-- 
if key == "r" then 
local mo = Instance.new("Model") 
mo.Parent = workspace 
mo.Name = "Bob371" 
local hum = Instance.new("Humanoid") 
hum.Parent = mo 
hum.Health = 0 
hum.MaxHealth = 0 
mouse.Target.Anchored = true 
mouse.Target.Parent = mo 
end 
end 
end 

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(function(key) KD(key, mouse) end) 
end)  