local function Chat(Message)
	game:GetService("Players"):Chat(Message)
end
for i = 1, 6 do
	Chat("")
end
wait(1)
Chat("------ Battle Report ------")
wait(1)
if math.random(1, 2) == 1 then
	SoundToServer("1", "http://www.roblox.com/Asset/?id=10209129", 1, 1, false, Workspace)
	Chat("Prepare to attack the enemy's control points!")
else
	SoundToServer("1", "http://www.roblox.com/Asset/?id=10209136", 1, 1, false, Workspace)
	Chat("Prepare to capture the enemy's intelligence!")
end
wait(3)
SoundToServer("2", "http://www.roblox.com/Asset/?id=10209104", 1, 1, false, Workspace)
game:GetService("Players"):Chat("Begin!")
wait(3)
local Winner = math.random(1, 3)
for i = 1, 3 do
	Chat("Team " ..i.. "...")
	wait(1)
	if i == Winner then
		SoundToServer("3 " ..i, "http://www.roblox.com/Asset/?id=10209137", 1, 1, false, Workspace)
		game:GetService("Players"):Chat("You've won! Victory!")
	else
		SoundToServer("3 " ..i, "http://www.roblox.com/Asset/?id=10209146", 1, 1, false, Workspace)
		game:GetService("Players"):Chat("You failed!")
	end
	wait(3)
end