local hub = game.CoreGui.skryptec_hub
local apocskin = hub.ApocSkinFrame
local apocbottom = hub.ApocBottomFrame
local apocvaluee1 = apocskin.ApocSColor.Text
local apocvaluee2 = apocskin.ApocSColor2.Text
local apocvaluee3 = apocskin.ApocSMaterial.Text
local apocvaluee4 = apocskin.ApocSMaterial2.Text
local apocvaluee5 = apocbottom.ApocValue.Text
local apoctypee = apocbottom.ApocType.Text

skincolorprimary = tonumber(apocvaluee1)
skinmaterialprimary = tonumber(apocvaluee3)
skincolorsecondary = tonumber(apocvaluee2)
skinmaterialsecondary = tonumber(apocvaluee4)
skinslot = apocvaluee5
daplayer = apoctypee

local tbl = getrenv()["_G"]

tbl.ChangeValue(game.Players[daplayer].playerstats.skins[skinslot],skincolorprimary)
tbl.ChangeValue(game.Players[daplayer].playerstats.skins[skinslot].material,skinmaterialprimary)
tbl.ChangeValue(game.Players[daplayer].playerstats.skins[skinslot].secondary,skincolorsecondary)
tbl.ChangeValue(game.Players[daplayer].playerstats.skins[skinslot].secondary.material,skinmaterialsecondary)
wait(1)
c = game.Lighting.LootDrops.CrateLow:Clone()
c.Parent = game.Workspace
c:MoveTo(game.Players[daplayer].Character.Torso.Position)