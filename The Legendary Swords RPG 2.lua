--Stats Script (May want to lower Loot
game.Players.LocalPlayer.RemoteFunctions.UpgradeRemote:FireServer("Health", "One", 999999999, 999999999)
game.Players.LocalPlayer.RemoteFunctions.UpgradeRemote:FireServer("Strength", "One", 999999999, 999999999)
game.Players.LocalPlayer.RemoteFunctions.UpgradeRemote:FireServer("Loot", "One", 500000, 999999999)

--Any Sword Script (Put sword name at ItemName)
game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Buy", "Gold", 0, "ItemName")

--Gold Script (Just use the stats script... whatever)
game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Buy", "Gold", -999999999, "Iron")
game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Sell", "Gold", 0, "Iron")

--Skyshards Script
game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("Buy", "Shards", -999999999, "Thorned Axe")

--Super Sword Script (Must be holding sword you want to superize)
for i = 1,100 do
game.Players.LocalPlayer.RemoteFunctions.SwordSystem:FireServer("UpgradeValue", "0", 0, 0, "0")
end

--Rebirth Script (Change the 50 to how many rebirths you want)
for i = 1,50 do
game.Players.LocalPlayer.RemoteFunctions.RebirthSystem:FireServer()
end

--Mining Level Script
game.Players.LocalPlayer.RemoteFunctions.MiningLvlSystem:FireServer(0)

--Ores Script
local kek = game.Players.LocalPlayer.RemoteFunctions.ArmorUnlock
kek:FireServer("CopperOre", -9999999, 0, "Doom Bringer")
kek:FireServer("BronzeOre", -9999999, 0, "Doom Bringer")
kek:FireServer("IronOre", -9999999, 0, "Doom Bringer")
kek:FireServer("GoldOre", -9999999, 0, "Doom Bringer")
kek:FireServer("DiamondOre", -9999999, 0, "Doom Bringer")
kek:FireServer("DarkOre", -9999999, 0, "Doom Bringer")


--All Armors Script
local armor = game.Players.LocalPlayer.RemoteFunctions.ArmorUnlock
armor:FireServer("CopperOre", 0, 0, "Dark Samurai")
armor:FireServer("CopperOre", 0, 0, "Phoenix Guard")
armor:FireServer("CopperOre", 0, 0, "Dark Overseer")
armor:FireServer("CopperOre", 0, 0, "Orinthian")
armor:FireServer("CopperOre", 0, 0, "Iron")
armor:FireServer("CopperOre", 0, 0, "Fire Forged")
armor:FireServer("CopperOre", 0, 0, "Elite")
armor:FireServer("CopperOre", 0, 0, "Sapphire")
armor:FireServer("CopperOre", 0, 0, "Korblox Ice")
armor:FireServer("CopperOre", 0, 0, "Doom Bringer")