




p= game.Workspace:GetChildren() 
for i= 1, #p do 
if p[i].className == "Part" then
if p[i].Name ~= "Shane" then 
p[i]:remove() 
end 
end
end