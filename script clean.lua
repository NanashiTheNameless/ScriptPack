for _, v in pairs(Game.Workspace:GetChildren()) do
if v.ClassName == "Script" then 
v:remove() 
end 
end 

--lego