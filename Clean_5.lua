for i,v in next,game:service("Workspace"):children() do 
v.archivable = true 
end 
for i,v in next,game:service("Workspace"):children() do 
if v.Name == "Base" then 
v.archivable = false 
end 
if v:IsA("Scirpt") or v:IsA("Camera") then 
v.archivable = false 
end 
for i,v in next,game:service("Players"):players() do 
v.Character.archivable = false 
end 
if v.archivable == true then 
v:remove() 
end 
end 