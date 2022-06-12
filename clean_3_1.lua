nameo = "acb227" 

for _, v in pairs(Game.Workspace:GetChildren()) do 
if v:IsA("Model") or v:IsA("Part") then 
if v.Name ~= "Base" then 
v:remove()
end 
end 
end --lego
wait() 
