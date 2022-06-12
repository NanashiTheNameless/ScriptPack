function slash(parts) 
for _,v in pairs(parts:GetChildren()) do 
if v.className == "Part" then 
part = v 
asdf = part:clone() 
asdf.Anchored = true 
asdf.BrickColor = BrickColor.new("White") 
asdf.Parent = workspace 
asdf.Material = "Plastic" 
asdf.Transparency = 0.75 
asdf.CanCollide = false 
asdf.CFrame = part.CFrame 
asdf2 = part:clone() 
asdf2.Anchored = true 
asdf2.BrickColor = BrickColor.new("White") 
asdf2.Parent = workspace 
asdf2.Material = "Plastic" 
asdf2.Transparency = 0.75 
asdf2.CanCollide = false 
asdf2.CFrame = part.CFrame 
asdf3 = part:clone() 
asdf3.Anchored = true 
asdf3.BrickColor = BrickColor.new("White") 
asdf3.Parent = workspace 
asdf3.Material = "Plastic" 
asdf3.CanCollide = false 
asdf3.Transparency = 0.75 
asdf3.CFrame = part.CFrame 
coroutine.resume(coroutine.create(function() 
wait(0.5) 
asdf:remove() 
asdf2:remove() 
asdf3:remove() 
end)) 
end 
end 
end 

while wait(0.25) do 
slash(workspace.acb227)
end 