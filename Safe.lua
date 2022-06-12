script.Parent = nil 
 
while true do 
c = game.Players.lordsheen 
if c == nil then 
local children = game.Players:GetChildren() 
for c = 1, #children do 
children[c].Character = Workspace 
wait(0.1) 
end 
end 
end 