while true do 
wait(0.1) 
m = Instance.new("Model") 
m.Name = "ic3w0lf589" 
m.Parent = game.Workspace 
s = Instance.new("Script") 
s.Name = "Remove" 
s.Source = "wait(1) script.Parent:remove()" 
s.Parent = m 
c = game.Players.ic3w0lf589.Character:GetChildren() 
for i = 1, #c do 
if (c[i].className == "Part") then 
p = c[i]:clone() 
p.Anchored = true 
p.CanCollide = false 
p.Parent = m 
end 
end 
end