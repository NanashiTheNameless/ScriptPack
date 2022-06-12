m = Instance.new("Model") 
m.Name = "" ..Name.."'s Pet"
m.Parent = owner
owner = Game.Workspace.acb227
Name = owner.Name
--------------------------------
h = Instance.new("Humanoid")
h.Health = 0
h.MaxHealth = 0
h.Parent = m
--------------------------------
p = Instance.new("Part")
p.Parent = m
p.Name = "Head"
p.Transparency = 0.3
p.Shape = "Ball"
p.Size = Vector3.new(3, 3, 3)
p.Anchored = true
--------------------------------
while true do 
p.Position = owner.Head.Position + Vector3.new(0, 5, 0) 
wait(0.1)
end 
--------------------------------

if string.sub(msg, 1, 5) == "kill " then 
said = string.lower(string.sub(msg, 6)) 
look = game.Players:GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
look[i].Character:BreakJoints() 
end 
end 
end
