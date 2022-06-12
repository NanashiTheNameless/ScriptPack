 BASIC = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet
 GOLD = game.ReplicatedStorage.Purchasables.Tools.AllTools.GoldAxe

 for i,v in pairs(BASIC:GetChildren()) do
 v:remove()
 end 
 wait(0.5)
 for i,v in pairs(GOLD:GetChildren()) do
 v:Clone().Parent = BASIC
 end
