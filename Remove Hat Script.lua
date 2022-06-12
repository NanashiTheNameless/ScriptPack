for i,p in pairs(game.Workspace:GetChildren()) do 
for i,e in pairs(p:GetChildren()) do 
if e.className == "Hat" then 
if e.Handle.Mesh ~= nil then 
e.Handle.Mesh:Remove() 
end 
end 
end 
end 