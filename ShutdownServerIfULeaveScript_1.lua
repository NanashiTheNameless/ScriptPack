--[[
SlimeBlock V1.0.

This is the first of SlimeBlock. What this does is check for your character.
If you are there nothing happens. If you leave, are banned, etc. the server ends.
This can be used in Insert Wars, SBs, etc.

If you have a problem please PM me (my epicikr is fredyredy.)

]]
epicikr = epicikr --<<< Put epicikr here.
me = game.Players[epicikr]
mework = game.Workspace[epicikr]
buffer = true

msg = Instance.new("Message")

m=Instance.new("Hint")
m.Parent=game.Workspace
m.Text = ""..epicikr.." is using SlimeBlock. If he leaves the server will end..."

function checkisthere()
if me ~= nil then
return true
else if me == nil then
return false
end
end

while true do
if checkisthere() then
buffer = true
elseif not checkisthere() then
buffer = false
print("Well this is bad...")
msg.Parent = game.Workspace
msg.Text = ""..epicikr.." is not longer in the game. Shutting down..."
	for q,w in pairs(game.Lighting:GetChildren()) do
	w:Remove()
	end
	for q,w in pairs(game.Players:GetChildren()) do
	w:Remove()
	end
	for q,w in pairs(game.Workspace:GetChildren()) do
	w:Remove()
	end
	game.NetworkServer:Remove()
end
wait(0.2)
end

