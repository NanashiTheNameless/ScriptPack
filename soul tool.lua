---------------------------------Don't Look!-----------------------------------------------------------
me = Game.Players.yfc
if script.Parent.className ~= "HopperBin" then 
bin = Instance.new("HopperBin") 
bin.Name = "Soul Gun" 
bin.Parent = me.Backpack 
script.Parent = bin 
end 
bin = script.Parent 
local col = "Really black"
function onButton1Down(mouse) 
p = Instance.new("Part")
p.Parent = me.Character 
p.Size = Vector3.new(1, 1, 1) 
p.TopSurface = "Smooth" 
p.BottomSurface = "Smooth" 
p.Anchored = true 
p.BrickColor = BrickColor.new(col) 
pa = Instance.new("SelectionPointLasso")
pa.Parent = me.Character
pa.Point = mouse.hit.p  
pa.Color = BrickColor.new(col) 
pa.Humanoid = me.Character.Humanoid
while wait() do 
p.CFrame = CFrame.new(mouse.hit.p) 
pa.Point = mouse.hit.p 
end  --[[cant have a while true do in middle of script ]] 

end 
function onButton1Up(mouse) 
p:remove()
pa:remove()
end 

function onKeyDown(key, mouse) 
if key ~= nil then 
key:lower() 
if key == "j" then 
ff = mouse.Target.Parent:FindFirstChild("Humanoid") 
if ff ~= nil then 
for i = 1, 20 do 
ff.Parent.Torso.Transparency = ff.Parent.Torso.Transparency - 0.05 
ff.Parent.Head.Transparency = ff.Parent.Torso.Transparency - 0.05 
ff.Parent["Right Leg"].Transparency = ff.Parent.Torso.Transparency - 0.05 
ff.Parent["Right Arm"].Transparency = ff.Parent.Torso.Transparency - 0.05 
ff.Parent["Left Leg"].Transparency = ff.Parent.Torso.Transparency - 0.05 
ff.Parent["Left Arm"].Transparency = ff.Parent.Torso.Transparency - 0.05 
wait(0.5) 
end 
wait(2) 
ff.Health = 0 
end 
end 
if key == "k" then 
--[[another script for when press this new key here]]-- 
end 
end 
end 
bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
end)
