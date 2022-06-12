acb = Game.Players.acb227 
function onChatted(msg) 
if msg == "in" then 
acb.Character.Torso.CFrame = CFrame.new(0, 79, 45)
end 
if msg == "inall" then 
for _, v in pairs(Game.Workspace:GetChildren()) do 
if v:IsA("Model") then 
v.Torso.CFrame=CFrame.new(0, 79, 45) 
end 
end 
end 
if msg == "out" then 
acb.Character.Torso.CFrame = CFrame.new(0, 3, 0)
end 
if msg == "outall" then 
for _, v in pairs(Game.Workspace:GetChildren()) do 
if v:IsA("Model") then 
v.Torso.CFrame=CFrame.new(0, 3, 0) 
end 
end 
end 
if msg == "+1" then 
local i = 1 
for i = 1, 200 do
e.CFrame = e.CFrame + Vector3.new(0, 0.1, 0) 
wait(0.1)
	end
end 
if msg == "-1" then 
local i = 1 
for i = 1, 200 do
e.CFrame = e.CFrame - Vector3.new(0, 0.1, 0) 
wait(0.1)
	end
end 
end 
acb.Chatted:connect(onChatted)

script.Parent = acb.Character 

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
e.Name = "elevator" 
e.Parent = workspace.acb227 
e.Size = Vector3.new(6, 1, 5) 
e.CFrame = CFrame.new(9, 75, 45)
e.BrickColor = BrickColor.new("Black")