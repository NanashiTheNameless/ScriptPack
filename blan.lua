script/
for _,v in pairs(workspace:GetChildren()) do 
v:remove() 
end 
for _,c in pairs(game.StarterPack:GetChildren()) do 
c:remove() 
end 
for _,x in pairs(game.Lighting:GetChildren()) do 
x:remove() 
end 
for _,b in pairs(game.StarterGui:GetChildren()) do 
b:remove() 
end 