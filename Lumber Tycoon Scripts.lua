---BUY BASIC HATCHET
---EXECUTE SCRIPT
---OPEN BOX

Door = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.Model

Door1 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.ItemName


Door2 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.Price


Door3 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.Description


Door4 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.Box


Door5 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.AssetId


Door6 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.ItemName


Door7 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.ItemImage


Door8 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.AxeClass


Door9 = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet.Type




Door:Remove()


Door1:Remove()


Door2:Remove()


Door3:Remove()


Door4:Remove()


Door5:Remove()


Door6:Remove()


Door7:Remove()


Door8:Remove()


Door9:Remove()


ff = game.ReplicatedStorage.Purchasables.Tools.AllTools.BasicHatchet


tt = game.ReplicatedStorage.Purchasables.Tools.AllTools.GoldAxe


tt.Model:Clone().Parent = ff


tt.ItemName:Clone().Parent = ff


tt.Price:Clone().Parent = ff


tt.Description:Clone().Parent = ff


tt.Box:Clone().Parent = ff


tt.AssetId:Clone().Parent = ff


tt.ItemImage:Clone().Parent = ff


tt.AxeClass:Clone().Parent = ff

tt.Type:Clone().Parent = ff