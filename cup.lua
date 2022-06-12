local i = 0 
for i = 1, 1000, 1 do 
local p = Instance.new("Part") 
p.Parent = game.Workspace 
p.Name = "Brick" 
p.Size = Vector3.new(1,10,1) 
p.BrickColor = BrickColor.new("Mid grey") 
p.Anchored = true 
p.CFrame = CFrame.new(5*math.cos(math.rad(i)),0*math.sin(math.rad(i))+0 ,5*math.cos(math.rad(i))) * CFrame.Angles(0, 0,math.rad(i)) 
wait() 
end  