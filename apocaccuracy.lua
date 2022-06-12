local hub = game.CoreGui.skryptec_hub
local apocbottom = hub.ApocBottomFrame
local apoctypee = apocbottom.ApocType.Text

weapon = apoctypee

local plr = game.Players.LocalPlayer.Backpack[weapon]

plr.Stats.Recoil.Value = 0
plr.Stats.Accuracy.Value = 0
plr.Stats.Offset.Value = 0