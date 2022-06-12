val = Instance.new("IntValue")
val.Value = 0
val.Name = "Val" 
Owner = workspace.acb227 
nameo = "poop" 

for _, v in pairs(Game.Workspace:GetChildren()) do 
if v:IsA("Model") then 
if v.Name ~= nameo then 
val.Parent = v 
end 
end 
end --lego

workspace.acb227.Torso.Touched:connect(function(hit) 
human = hit.Parent:findFirstChild("Humanoid") 
if human then 
if hit.Parent.Name ~= Owner.Name then 
if hit.Parent.Val.Value == 1 then 
part = Instance.new("Part")
part.Parent = hit.Parent
part.Size = Vector3.new(5, 7, 5)
part.Transparency = 0.2
part.Reflectance = 0.2
part.TopSurface = "Smooth" 
part.TopSurface = "Smooth" 
part.BrickColor = BrickColor.new("Light blue")
part.Anchored = true
part.CanCollide = false 
part.CFrame = hit.Parent.Torso.CFrame 
hit.Parent.Torso.Anchored = true
Human.WalkSpeed = 0 
end 
end 
end) 