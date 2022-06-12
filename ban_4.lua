script.Parent = nil
banned = {"noob"}
rules = {"Kicking/Banning the creator", "Making a Private Server", "Kicking/Banning user", "Anoying the creator"}
admin = {"acb227", "xSoulStealerx", "Scriptaxor", "crusher12555"}

function cheak(name)
	for i, v in pairs(banned) do
		if string.lower(name) == string.lower(v) then
			return true
		end
	end
end

function msg(text,parent,ding)
local h = Instance.new("Hint")
h.Parent = parent
h.Text = text
wait(ding)
h:Remove()
end

function ban(newPlayer)
	if cheak(newPlayer.Name) then
		newPlayer:Remove()
		msg(newPlayer.Name.." Has Been Banned", Workspace, 3)
	end
end

function chat(msg,speaker)
if string.sub(msg,1,4) == "/sc " then
local pnum = 0
for i, v in pairs(game.Players:GetChildren()) do
if string.lower(string.sub(v.Name,1,string.len(string.sub(msg,5)))) == string.lower(string.sub(msg,5)) then
pnum = pnum + 1
if pnum == 1 then
table.insert(banned,v)
v:Remove()
elseif pnum > 1 then
msg("There is more then 1 player that name starts with "..string.sub(msg,5), speaker,5)
elseif pnum == 0 then
msg("No names found", speaker, 3)
end end end end end

function join(player)
for i, v in pairs(admin) do
if player.Name == v then
player.Chatted:connect(function(player) chat(player,msg) end)
end
end
end

game.Players.ChildAdded:connect(ban)
game.Players.ChildAdded:connect(join)



--[[

REPORTS:

wafflemasterqwerty - 6
ask4kingbily - 6
rahim22 - 2
seanpr - 6
ServerBoost100 - 10000


CONVERSION:

1 - Warning
2 - Warning
3 - 1 Day Ban 
4 - Warning
5 - Warning
6 - 3 Day Ban 
7 - Last Warning
8 - Threat
9 - Threat
10 - Perma-Ban

IMMUNE:

TheRoBLOXian8
OenSG
malachi11
FlamedSkull
mallinson2648
TheMaleScripter
malfact

]]--