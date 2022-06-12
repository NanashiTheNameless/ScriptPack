for i,v in pairs(game.ReplicatedStorage.ShopData:GetChildren()) do
for i,c in pairs(v:GetChildren()) do
c.Cost.Value = 1
end
end