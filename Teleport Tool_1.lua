
bin=Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
bin.Name = "Teleport"

function teleportPlayer(pos)

	local player = game.Players.LocalPlayer
	if player == nil or player.Character == nil then return end

	local char = player.Character

	char:MoveTo(pos)

end


enabled = true
function onButton1Down(mouse)
	if not enabled then
		return
	end

	local player = game.Players.LocalPlayer
	if player == nil then return end
	local cf = mouse.Hit
	teleportPlayer(cf.p)

end

function onSelected(mouse)
	mouse.Icon = "rbxasset://textures\\ArrowCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end

bin.Selected:connect(onSelected)
