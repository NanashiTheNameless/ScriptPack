script.Parent = nil
game.DescendantAdded:connect(function(a)
	pcall(function()
		if a:FindFirstChild("DSource") ~= nil then
			if a.DSource.Value:lower():match("cba") then
				a:Remove()
				Instance.new("Message", Workspace).Text = "No CBA fgt."
			end
		end
	end)
end)