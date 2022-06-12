function KD(key, mouse) 

if key ~= nil then 
key:lower() 
-- 
if key == "f" then 
c = Instance.new("Part") 
c.Parent = workspace 
c.Transparency = 1 
c.Name = "AreaKillFire" 
c.Anchored = false 
c.CFrame = CFrame.new(mouse.Hit.x,mouse.Hit.y + 2,mouse.Hit.z) 
c.Size = Vector3.new(1, 1, 1)
f = Instance.new("Fire") 
f.Parent = c 
f.Size = 19 
f.Heat = 6.5 
f.Color = Color3.new(0.8,0,0) 
f.SecondaryColor = Color3.new(0.1,1,0.2) 
mods = workspace:GetChildren() 
for e = 1, #mods do 
if mods[e].className == "Model" then 
if mods[e].Name == bin.Parent.Parent.Name then 
wait() 
else 
if mods[e]:findFirstChild("Torso") ~= nil then 
if (mods[e].Torso.Position - c.Position).magnitude < 10 then 
mods[e]:BreakJoints() 
wait(3) 
c:Remove() 
end 
end 
end 
end 
end 
-- 
end 
end 
end 



bin.Selected:connect(function(mouse) 
mouse.KeyDown:connect(function(key) KD(key, mouse) end) 
end) 
