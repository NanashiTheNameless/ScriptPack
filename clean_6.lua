script.Parent = nil
me = game.Players.LocalPlayer
b = workspace.Base:clone()

me.Chatted:connect(function(msg)
	if msg == "clean" then
		for i,v in pairs(workspace:children()) do
			local nu = 0
			for _,k in pairs(game.Players:GetPlayers()) do
				if v == k.Character then
					nu = nu + 1
				end
				if k.Character then
					for _,o in pairs(k.Character:children()) do
						if o:IsA("Model") or o:IsA("Tool") or o:IsA("HopperBin") then o:remove() end
					end
				end
			end
			if nu == 0 and v ~= script then
				v:remove()
			end
		end
		local o = b:clone()
		o.Parent = workspace
		workspace.PrimaryPart = o
	end
end)
