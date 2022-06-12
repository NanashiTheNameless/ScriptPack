local list = {"DragonWarlord101" , "mugex" , "husfer", "acb227"}

for _, v in pairs(game.Players:GetChildren()) do
for _, o in pairs(list) do
print("" ..v.Name.. " died") 
v.Character:BreakJoints() 
else 
print("" ..v.Name.. " lived") 
end 
end 