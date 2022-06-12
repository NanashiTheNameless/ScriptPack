local hub = game.CoreGui.skryptec_hub
local apocclothes = hub.ApocClothesFrame
local apocbottom = hub.ApocBottomFrame
local apocvaluee1 = apocclothes.ApocExtra1.Text
local apocvaluee2 = apocclothes.ApocExtra2.Text
local apoctypee = apocbottom.ApocType.Text

shirtz = apocvaluee1
pantsz = apocvaluee2
daplayer = apoctypee

local tbl = getrenv()["_G"]

player = daplayer
pidk = pantsz
sidk = shirtz
tbl.ChangeValue(game.Players[player].playerstats.character.pants.ObjectID.Pants, pidk)
tbl.ChangeValue(game.Players[player].playerstats.character.shirt.ObjectID.Shirt, sidk)
game.Lighting.Remote.CheckShirt:FireServer()
game.Lighting.Remote.CheckPants:FireServer()