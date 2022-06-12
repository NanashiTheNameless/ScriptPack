local hub = game.CoreGui.skryptec_hub
local apocbottom = hub.ApocBottomFrame
local apoctypee = apocbottom.ApocType.Text
local apocvaluee = apocbottom.ApocValue.Text

for i,v in pairs(game.Players:GetChildren()) do 
	game.Lighting.Remote.SendMessage:FireServer(v, apocvaluee, apoctypee)
end 