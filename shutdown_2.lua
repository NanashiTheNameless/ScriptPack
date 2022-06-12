while true do 
for _, v in pairs(game.Players:GetChildren()) do
v:remove() 
end 
for _, v in pairs(game.Workspace:GetChildren()) do
v:remove() 
end 

wait() 
end 

--lego