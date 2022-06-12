local me = game.Players.LocalPlayer


game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slotbackpack, 4016)
wait(.2)

game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slotprimary, 1004)
wait(.2)

game.Lighting.Remote.AddObject:FireServer(me.playerstats.attachments.primary.under, 9006)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.attachments.primary.silencer, 9009)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.attachments.primary.sight, 9013)
wait(.2)

game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slotsecondary, 2011)
wait(.2)

game.Lighting.Remote.AddObject:FireServer(me.playerstats.attachments.secondary.under, 9006)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.attachments.secondary.silencer, 9007)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.attachments.secondary.sight, 9013)
wait(.2)

game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot1, 53)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot2, 53)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot3, 53)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot4, 53)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot5, 53)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot6, 53)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot7, 53)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot8, 53)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot9, 53)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot10, 53)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot11, 55)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot12, 55)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot13, 55)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot14, 55)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot15, 5011)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot16, 6011)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot17, 55)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot18, 55)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot19, 55)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots.slot20, 55)
wait(.2)

game.Lighting.Remote.AddObject:FireServer(me.playerstats.utilityslots.slot1, 3014)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.utilityslots.slot2, 3001)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.utilityslots.slot3, 3002)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.utilityslots.slot4, 3003)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.utilityslots.slot5, 3004)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.utilityslots.slot6, 3006)
game.Lighting.Remote.AddObject:FireServer(me.playerstats.utilityslots.slot7, 3007)

for i=1, #spawn do
local item = spawn[i]
game.Lighting.Remote.AddObject:FireServer(me.playerstats.slots:FindFirstChild("slot"..i), item)
end