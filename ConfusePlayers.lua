for i,v in pairs(game.Players:GetChildren()) do game.Lighting.Remote.SendMessage:FireServer(v, 'White', "You do not have enough stamina to jump") end
for i,v in pairs(game.Players:GetChildren()) do game.Lighting.Remote.SendMessage:FireServer(v, 'White', "You do not have enough stamina to sprint") end
for i,v in pairs(game.Players:GetChildren()) do game.Lighting.Remote.SendMessage:FireServer(v, 'White', "You do not have enough room in your inventory to carry that item") end
