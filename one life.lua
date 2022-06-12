script/
while wait() do 
for _,v in pairs(game.Players:GetChildren()) do 
if v.Character ~= nil and v.Character.Humanoid.Health == 0 then 
h = Instance.new("Message", workspace) 
h.Text = "Player: " ..v.Name.. " has been killed!" 
v:remove() 
wait(2.5) 
h:remove() 
end 
end 
end 