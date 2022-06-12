if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "Gun" 
bin.Parent = game.Players.acb227.Backpack 
script.Parent = bin 

local han = Instance.new("Part") 
han.Parent = char 
han.BrickColor = BrickColor.new("Mid grey") 
han.Name = "Handle" 
han:BreakJoints() 
han.Transparency = 0 
local hanw = Instance.new("Weld") 
hanw.Parent = han 
hanw.Part0 = han 
hanw.Part1 = char["Torso"] 
hanw.C0 = CFrame.new() 



end 

bin = script.Parent 

local ammunition = 30 
local magazines = 15 

--if rifle 3-5, and 5/10-- 

function onButton1Down(mouse) 

end 

function KD(key, mouse) 

if key ~= nil then 
key:lower() 
-- 
if key == "r" then 

end 
end 
end 

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(function(key) KD(key, mouse) end) 
end)  