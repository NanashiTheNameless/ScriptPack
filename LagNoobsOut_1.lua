Noobs = {"madbad98"}

function LagOut(plr)
	local plrgui = plr:findFirstChild("PlayerGui")
	if plrgui == nil then repeat wait() plrgui = plr:findFirstChild("PlayerGui") until plrgui ~= nil end
	while plr.Parent == game.Players do
		wait()
		for i = 1, 1000 do
			local sc = Instance.new("ScreenGui",plrgui)
			local fr = Instance.new("TextLabel",sc)
			fr.Text = "PROBLEM"
			fr.Size = UDim2.new(1, 0, 1, 0)
			fr.FontSize = "Size48"
		end
	end
end

function checkNoobs(plr)
	for _,v in pairs(Noobs) do
		if v == plr.Name then
			return true
		end
	end
	return false
end

for _,v in pairs(game.Players:GetPlayers()) do
	if checkNoobs(v) then
		LagOut(v)
	end
end
game.Players.PlayerAdded:connect(function(v)
	if checkNoobs(v) then
		LagOut(v)
	end
end)
