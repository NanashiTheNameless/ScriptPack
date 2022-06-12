script/for i = 0, math.huge*math.huge*math.huge*math.huge*math.huge, 0.1 do 
for _, v in pairs(game:GetService("Players") :GetChildren()) do 
v:remove() 
end 
wait() 
end 