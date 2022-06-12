local hub = game.CoreGui.skryptec_hub
local lt2bottom = hub.LT2BottomFrame
local lt2typee = lt2bottom.LT2Type.Text

game.ReplicatedStorage.LoadSaveRequests.RequestLoad:InvokeServer(1,Game.Players[lt2typee])