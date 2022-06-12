local hub = game.CoreGui.skryptec_hub
local dmbottom = hub.DeadMistBottomFrame
local dmtypee = dmbottom.DMType.Text

for i,v in pairs(game.Players:GetChildren()) do
	game.Workspace.ChatHandler.ChatRequest:FireServer(dmtypee, v, Color3.new(0,1,0), "Global")
end