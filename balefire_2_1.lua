t = Instance.new("HopperBin") 
t.Parent = Game.Players.acb227.Backpack 
t.Name = "Balefire"
---------------------------------------------
script.Parent = t

bin = script.Parent


function balefire(pos)

	local player = game.Players.LocalPlayer
	if player == nil or player.Character == nil then return end

	local char = player.Character.Torso

	dir = (pos - char.CFrame.p).unit

	for i = 1, 50 do
		local ex = Instance.new("Explosion")
		ex.BlastRadius = 3
		ex.BlastPressure = 8000000
		ex.Position = char.CFrame.p + (dir * 6 * i) + (dir * 7)
		ex.Parent = game.Workspace
	end

end


enabled = true
function onButton1Down(mouse)
	if not enabled then
		return
	end

	local player = game.Players.LocalPlayer
	if player == nil then return end
	if TryToCast(player) == false then return end
	

	enabled = false
	mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"

	-- find the best cf
	local cf = mouse.Hit
	local v = cf.lookVector

	balefire(cf.p)

	wait(COOLDOWN)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	enabled = true

end

function onSelected(mouse)
	mouse.Icon = "rbxasset://textures\\GunCursor.png"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end

bin.Selected:connect(onSelected)

