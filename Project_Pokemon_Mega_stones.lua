Parent = "Evolution" -- The parent can be "Recover", "Pokeball", "Evolution" and "Competitive"
Item = "Rare Candy"
Amount = 0
b=game.Players.LocalPlayer.Bag
r=game.ReplicatedStorage.REvents
if b[Parent]:FindFirstChild(Item)then
r.Internal.funcItem:InvokeServer(b[Parent][Item],Amount)
else r.Pokemon.fze:InvokeServer(Item,b[Parent],Amount)end
Amount = 50000 -- How much to add on every item
b=game.Players.LocalPlayer.Bag
r=game.ReplicatedStorage.REvents
Items = {
Recover = {},
Pokeball = {},
Evolution = {"Aggronite","Altarianite","Alakazamite","Ampharosite","Audinite","Absolite","Beedrillite","Blastoisinite","Blazikenite","Banettite","Charizardite X","Charizardite Y","Cameruptite","Gengarite","Glalitite","Gyaradosite","Galladite","Gardevoirite","Garchompite","Heracronite","Houndoomite","Lopunnite","Lucarionite","Latiosite","Latiasite","Medichamite","Metagrossite","Manectite","Mawilite","Pidgeotite","Pinsirite","Sharpedonite","Slowbronite","Steelixite","Swampertite","Salamencite","Sablenite","Sceptilite","Scizorite","Tyranitarite","Venusaurite"},
Competitive = {},
}
for n,t in next,Items do
for _,i in next,t do
if b[n]:FindFirstChild(i)then
r.Internal.funcItem:InvokeServer(b[n][i],Amount)
else r.Pokemon.fze:InvokeServer(i,b[n],Amount)
end end end



while wait(.1) do 
game.ReplicatedStorage.REvents.Internal.jxbf:InvokeServer() 
end

local rekt = getrenv()["_G"].PlayingCheckers


