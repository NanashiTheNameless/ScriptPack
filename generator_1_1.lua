color = "Bright green" 
color2 = "Bright blue" 
color3 = "Reddish brown" 
trans = 0.4 


for x = 33,15, 1 do 
for z = 33,15, 1 do 
wait(0.05) 
y=math.abs(math.cos(x)+math.cos(z))^.5 

p = Instance.new("Part") 
p.CFrame = CFrame.new(Vector3.new(5*x, 7*y, 5*z)) 
p.Size = Vector3.new(5,5,5) 
p.Anchored = true 
p.BottomSurface = "Smooth" 
p.TopSurface = "Smooth" 
p.Parent = workspace 
if p.CFrame.Y < 5.9 then 
p.BrickColor = BrickColor.new(color2) 
p.Transparency = trans 
p.CanCollide = false 
end 
if p.CFrame.Y == 6 then 
p.BrickColor = BrickColor.new(color3) 
end 
if p.CFrame.Y > 6 then 
p.BrickColor = BrickColor.new(color) 
end 
end 
function touch(hit) 
hit.BrickColor = BrickColor.new("Really black") 
end 
p.Touched:connect(touch)
end 