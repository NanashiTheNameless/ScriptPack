local admin = game.Players.acb227 
function onChatted(msg) 
if string.sub(msg, 1, 5) == "beam/" then 
said = string.sub(msg, 6) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Humanoid.WalkSpeed = 0 
part = Instance.new("Part") 
part.Parent = workspace 
part.Size = Vector3.new(1, 1, 1) 
part.CanCollide = false 
part.Anchored = true 
part.Transparency = 1 
part.BrickColor = BrickColor.new("White") 
part.CFrame = look[i].Character.Torso.CFrame 
look[i].Character.Torso.CFrame = part.CFrame 
mesh = Instance.new("CylinderMesh") 
mesh.Parent = part 
mesh.Scale = Vector3.new(5, 4, 5)
for i = 1, 15 do 
wait(0.1) 
part.Transparency = part.Transparency - 0.03 
part.CFrame = look[i].Character.Torso.CFrame 
end 
wait(0.5) 
look[i].Character.Torso.CFrame = workspace.Base.CFrame + Vector3.new(0, 5, 0) 
part.CFrame = look[i].Character.Torso.CFrame 
wait(0.5) 
for i = 1, 15 do 
wait(0.1) 
part.Transparency = part.Transparency + 0.03 
part.CFrame = look[i].Character.Torso.CFrame 
end 
look[i].Character.Humanoid.WalkSpeed = 16 
part:remove() 
end 
end 
end 
if string.sub(msg, 1, 5) == "send/" then 
said = string.sub(msg, 6) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character.Torso.CFrame = CFrame.new(5, 3, 0) 
end 
end 
end 
end 

admin.Chatted:connect(onChatted)
