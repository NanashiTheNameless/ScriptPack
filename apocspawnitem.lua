local hub = game.CoreGui.skryptec_hub
local apocbottom = hub.ApocBottomFrame
local apocvaluee = apocbottom.ApocValue.Text

AddItem = function(Slot, ID)
game.Lighting.Remote.AddObject:FireServer(Slot, ID)
end
DropItem = function(Slot, oID)
game.Lighting.Remote.DropItem:FireServer(Slot, oID)
end

AddItem(game.Players.LocalPlayer.playerstats.slots.slot4, tonumber(apocvaluee))
game.Players.LocalPlayer.playerstats.slots.slot4:WaitForChild("ObjectID")
DropItem(game.Players.LocalPlayer.playerstats.slots.slot4, game.Players.LocalPlayer.playerstats.slots.slot4.ObjectID)