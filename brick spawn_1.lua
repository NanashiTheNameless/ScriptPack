c = Instance.new("Part")
c.Size = Vector3.new(50, 50, 50)
c.Parent = workspace 
c.Transparency = 0 
c.Name = "AreaKillFire" 
c.Anchored = true 
c.CFrame = CFrame.new(mouse.Hit.x,mouse.Hit.y + 2,mouse.Hit.z) 
mods = workspace:GetChildren() 
for e = 1, #mods do 
if mods[e].className == "Model" then 
if mods[e].Name == bin.Parent.Parent.Name then 
wait() 
else 
if mods[e]:findFirstChild("Torso") ~= nil then 
if (mods[e].Torso.Position - c.Position).magnitude < 10 then 
mods[e]:BreakJoints() 
end 
end 
end 
end 
end 