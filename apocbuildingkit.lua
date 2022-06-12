local hub = game.CoreGui.skryptec_hub
local apocbottom = hub.ApocBottomFrame
local apoctypee = apocbottom.ApocType.Text

GetPlayer = apoctypee

remote = game.Lighting.Remote

ao = remote.AddObject

slots = game.Players[GetPlayer].playerstats.slots

cp = remote.ChangeProperty

di = remote.DropItem

item1 = 4016

slot1 = slots.slotbackpack --Millibag

ao:FireServer(slot1, item1)

wait(0.2)

item2 = 1032

slot2 = slots.slotprimary --G36K

ao:FireServer(slot2, item2)

wait(0.2)

item3 = 3004

slot3 = slots.slot5 --100 ROUNDS FOR G36K

ao:FireServer(slot3, item3)

wait(0.2)

item4 = 35

slot4 = slots.slot6

ao:FireServer(slot4, item4) --100 ROUNDS FOR G36K

wait(0.2)

item5 = 35

slot5 = slots.slot7

ao:FireServer(slot5, item5) --100 ROUNDS FOR G36K

wait(0.2)

item6 = 35

slot6 = slots.slot8 

ao:FireServer(slot6, item6) -- GRIP FOR G36K

wait(0.2)

item7 = 35
slot7 = slots.slot9 
ao:FireServer(slot7, item7) -- GRIP FOR G36K