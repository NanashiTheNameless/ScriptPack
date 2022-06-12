Give Item:
game.Workspace.Functions.EditSupply:FireServer("DontMakeMeActuallyPatchThis", Workspace.Tycoon#, "ITEM", AMOUNT)

Sell Tile for Money: 
for i,v in pairs(Workspace.Tycoon3.Tiles.TileModel:GetChildren()) do
Workspace.Functions:FindFirstChild("Remove"):FireServer(v, 1000000)
end