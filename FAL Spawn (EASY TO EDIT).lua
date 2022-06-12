remote = game.Lighting.Remote

ao = remote.AddObject

slots = game.Players.LocalPlayer.playerstats.slots

cp = remote.ChangeProperty

di = remote.DropItem

item1 = 4016

slot1 = slots.slotbackpack --Millibag

ao:FireServer(slot1, item1)

wait(0.2)

item2 = 1029

slot2 = slots.slotprimary --FAL

ao:FireServer(slot2, item2)

wait(0.2)

item3 = 64

slot3 = slots.slot5 --50 ROUNDS FOR FAL

ao:FireServer(slot3, item3)

wait(0.2)

item4 = 64

slot4 = slots.slot6

ao:FireServer(slot4, item4) --50 ROUNDS FOR FAL

wait(0.2)

item5 = 64

slot5 = slots.slot7

ao:FireServer(slot5, item5) --50 ROUNDS FOR FAL

wait(0.2)

item6 = 9013

slot6 = slots.slot8 

ao:FireServer(slot6, item6) -- ACOG FOR FAL

wait(0.2)

item7 = 9005

slot7 = slots.slot9 
ao:FireServer(slot7, item7) -- GRIP FOR FAL