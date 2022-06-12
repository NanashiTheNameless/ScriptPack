function onPlayerRespawned(newPlayer)
	local b = script:GetChildren()

	local t = newPlayer.Character.Torso
	local h = newPlayer.Character.Head
	local lleg=newPlayer.Character:findFirstChild("Left Leg")
	local rleg=newPlayer.Character:findFirstChild("Right Leg") 
	local larm=newPlayer.Character:findFirstChild("Left Arm")
	local rarm=newPlayer.Character:findFirstChild("Right Arm") 

	local parts = {t,h,lleg,rleg,larm,rarm}

	for i = 1,#parts do
		b[1]:clone().Parent = parts[i]
	end
end

function onPlayerEntered(newPlayer)
	newPlayer.Changed:connect(function (property)
		if (property == "Character") then
			onPlayerRespawned(newPlayer)
		end
	end)
end

game.Players.PlayerAdded:connect(onPlayerEntered)