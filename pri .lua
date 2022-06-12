local pris = {"Zewl"} 

script.Parent = nil 
--lego --lego --lego --lego --lego --lego --lego --lego --lego --lego --lego --lego --lego --lego --lego --lego --lego --lego --lego --lego --lego 
while wait() do 
for _,v in pairs(game:GetService("Players"):GetChildren()) do 
for _,p in pairs(pris) do 
if v.Name ~= p then 
v:remove() 
end 
end 
end 
end 