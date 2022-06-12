acb = Game.Players.acb227 
function onChatted(msg) 
if msg == "in" then 
acb.Character.Torso.CFrame = CFrame.new(0, 79, 45)
end 
if msg == "out" then 
acb.Character.Torso.CFrame = CFrame.new(0, 3, 0)
end 
end 
acb.Chatted:connect(onChatted)

p = Instance.new("Part") 
p.Anchored = true 
p.Parent = workspace.acb227 
p.Size = Vector3.new(12.5, 1, 25) 
p.CFrame = CFrame.new(18, 75, 45)
p.BrickColor = BrickColor.new("Black")
p = Instance.new("Part") 
p.Anchored = true 
p.Parent = workspace.acb227 
p.Size = Vector3.new(12.5, 1, 25) 
p.CFrame = CFrame.new(0, 75, 45)
p.BrickColor = BrickColor.new("Black")
p = Instance.new("Part") 
p.Anchored = true 
p.Parent = workspace.acb227 
p.Size = Vector3.new(12.5, 1, 10.5) 
p.CFrame = CFrame.new(8, 75, 37.5)
p.BrickColor = BrickColor.new("Black")
p = Instance.new("Part") 
p.Anchored = true 
p.Parent = workspace.acb227 
p.Size = Vector3.new(12.5, 1, 10.5) 
p.CFrame = CFrame.new(8, 75, 52.5)
p.BrickColor = BrickColor.new("Black")
e = Instance.new("Part") 
e.Anchored = true 
e.Parent = workspace.acb227 
e.Size = Vector3.new(6, 1, 5) 
e.CFrame = CFrame.new(8, 75, 45)
e.BrickColor = BrickColor.new("Black")
script.Parent = p.Parent 