player=game.Players:FindFirstChild("LocalPlayer") --<------PUT THE PLAYER U WANT TO HACK THERE
gunpa=player.OwnedGuns
cloth=gunpa.Clothing

--[[ --if player is playing to the end then include this bit
player.Money.Value = 2100000000
player.Gold.Value = 2100000000
player.PrimarySlot.Value="NAMEOFGUN"
player.SecondarySlot.Value="NAMEOFGUN"
--]]

player.Shots.Value=117565 --set to how many shots u want them to have (uses intvalues so max is 2000000000)
player.TotalDamage.Value=11623750 --set to how much damage u want them to have (uses intvalues so max is 2000000000)
player.TotalKills.Value=9656 --set to how to much kills u want them to have (uses intvalues so max is 2000000000)

for i,v in pairs(gunpa:GetChildren()) do
if v.ClassName=="BoolValue" then
v.Value=true
else
end
end

cloth.Face:FindFirstChild("Eyes of Azurewrath").Value=true
cloth.Face:FindFirstChild("Prankster").Value=true
cloth.Face:FindFirstChild("Stuck Up").Value=true

cloth.Head:FindFirstChild("Military Helmet").Value=true
cloth.Head:FindFirstChild("Special Ops").Value=true

cloth.Legs:FindFirstChild("Military Pants").Value=true

cloth.Torso:FindFirstChild("Military Vest").Value=true

for i,v in pairs(gunpa.PlayerUpgrades:GetChildren()) do
v.Value=true
end

--[[ -- REMOVE THE DASHES IF U WANT THEM TO HAVE MAX LEVELS (may make the game boring)
for i,v in pairs(player.Perks:GetChildren()) do
if v.ClassName=="IntValue" then
v.Value=6
else
end
end--]]