print("Low Gravity Script Running")

function makeLowGrav(torso)
	print("Low grav", torso)
	local b = Instance.new("BodyForce")
	b.Name = "LowGrav"
	b.force = Vector3.new(0,2500,0)
	b.Parent = torso
end

function onPlayerRespawn(property, player)
	-- need to connect to new humanoid
	
	if property == "Character" and player.Character ~= nil then
		makeLowGrav(player.Character.Torso)		
	end
end

function onPlayerEntered(newPlayer)
		-- VERY UGLY HACK
		-- Will this leak threads?
		-- Is the problem even what I think it is (player arrived before character)?
		while true do
			if newPlayer.Character ~= nil then break end
			wait(5)
		end

		-- start to listen for new humanoid
		newPlayer.Changed:connect(function(property) onPlayerRespawn(property, newPlayer) end )

		makeLowGrav(newPlayer.Character.Torso)	
end


game.Players.ChildAdded:connect(onPlayerEntered)

