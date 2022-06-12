function onPlayerEntered(newPlayer)
if newPlayer.SuperSafeChat then
	if newPlayer.Character ~= nil then
		local p = newPlayer.Character:GetChildren()
		for a = 1, #p do
		if p[a].className == "Part" then
			p[a].Anchored = true
			end
		end
		msg = Instance.new("Hint")
		msg.Parent = newPlayer
		msg.Text = "Disabling Super Safe Chat..."
		wait(3)
		newPlayer.SuperSafeChat = false
		msg:remove()
		for i = 1, #p do
		if p[i].className == "Part" then
			p[i].Anchored = false
			end
		end
		end
	end
end
game.Players.ChildAdded:connect(onPlayerEntered)