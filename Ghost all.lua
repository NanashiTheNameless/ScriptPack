c= game.Players:GetChildren() 
for i= 1, #c do 
p= c[i].Character:GetChildren() 
for i= 1, #p do 
if p[i].className == "Part" then
p[i].Transparency = 0.5
end
end
end