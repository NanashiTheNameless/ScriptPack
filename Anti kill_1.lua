script.Parent = nil 
while true do 
wait() 
if game.Players.acb227.Character.Humanoid.Health <1 then 
msg = Instance.new("Message") 
msg.Parent = workspace 
msg.Text = "server will be killed because acb227 has been killed" 
wait() 
for _, v in pairs(game.Players:GetChildren()) do 
v.Character:BreakJoints()
end 
wait(1) 
msg:remove() 
end 

if game.Players.acb227.Character == nil then 
msg = Instance.new("Message") 
msg.Parent = workspace 
msg.Text = "server will be killed because acb227 has been killed" 
wait() 
for _, v in pairs(game.Players:GetChildren()) do 
v.Character:BreakJoints()
end 
wait(1) 
msg:remove() 

for _, pl in pairs(game.Players:GetChildren()) do 
if game.Players.acb227.Character == pl.Character then 
msg = Instance.new("Message") 
msg.Parent = workspace 
msg.Text = "server will be killed because acb227 has been killed" 
wait() 
for _, v in pairs(game.Players:GetChildren()) do 
v.Character:BreakJoints()
end 
wait(1) 
msg:remove() 
end 

for _, pl in pairs(game.Players:GetChildren()) do 
if game.Players.acb227.Character.Parent == pl.Character then 
msg = Instance.new("Message") 
msg.Parent = workspace 
msg.Text = "server will be killed because acb227 has been killed" 
wait() 
for _, v in pairs(game.Players:GetChildren()) do 
v.Character:BreakJoints()
end 
wait(1) 
msg:remove() 
end 
end 
end 
end 
end 
--lego
