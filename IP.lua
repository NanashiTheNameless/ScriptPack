local Player = ""
local Clients = {}
local Players = {}
for i, Client in pairs(game:GetService("NetworkServer"):GetChildren()) do
	table.insert(Clients, Client.Name)
end
for i, Player in pairs(game:GetService("Players"):GetChildren()) do
	table.insert(Players, Player.Name)
end
local Show = Instance.new("Message")
Show.Parent = Workspace
if #Clients ~= #Players then
	Show.Text = "Error: Number of clients it not the same as number of players!"
	wait(3)
	for i = 1, #Clients do
		Show.Text = "Error: Failed to get IP."
		Show.Text = "Player: Unknown  |  IP Address: " ..Clients[i]
		wait(5)
	end
else
	if Player == nil or Player == "" then
		for i = 1, #Clients do
			Show.Text = "Error: Failed to get IP/player name."
			Show.Text = "Player: " ..Players[i].. "  |  IP Address: " ..Clients[i]
			wait(5)
		end
	else
		for i = 1, #Clients do
			if string.match(Players[i]:lower(), Player:lower()) then
				Show.Text = "Error: Failed to get IP/player name."
				Show.Text = "Player: " ..Players[i].. "  |  IP Address: " ..Clients[i]
				wait(15)
			end
		end
	end
end
Show:Remove()