script.Parent = nil
words = {"i like boys", "haider", "im epic fail", "gorilla", "monkey", "l33t", "im stupid", "hey nuubz", "pancaiks ftl", "caik is a lie", "poopies", "puppies are cute", "i like stuff", "epic sauce", "wallet", "free willie", "xsoul ftw", "you lose", "lolwutpie", "ilikesaucewhichisntsauce", "naoob", "epicsuaceisntepicbutitsprettycoolsaucexdxd", "everyone fails except me!"}
ct = {"Good work, boi.", "Congrats >_>", "                VIRUSED =D                 Well anyways congrats.            ", "You're epic sauceeee", "Trolled nuub!1!!", "You won. IM IMPRESSED!", "          more virus, gz."}
fail = {"UMMGGG EVRY1 LOST", "Epic fail, na00bs", "YOU FAIL NOOBS TROLOLOLO", "Teehee, u guys better think faster.", "Better luck next time!", "in soviet russia, noobs lose points.", "Why always noobs fail?"}

games = math.random(15,20)
lolga = games
xdlol = true

function leader(player)
	local stats = Instance.new("IntValue")
	stats.Name = "leaderstats"
	local points = Instance.new("IntValue")
	points.Name = "Points"
	points.Value = 0
	local losts = Instance.new("IntValue")
	losts.Name = "Wins"
	losts.Value = 0
	points.Parent = stats
	losts.Parent = stats
	stats.Parent = player
end
for _,v in pairs(game.Players:GetPlayers()) do
	leader(v)
end
game.Players.PlayerAdded:connect(function(plah)
	if xdlol == true then
		leader(plah)
	end
end)

for k=1, games do
local plyrs = game.Players:GetPlayers()
local msg = Instance.new("Message",workspace)
msg.Text = "Chatting minigame starting... "..lolga.." game(s) left."
lolga = lolga - 1
wait(2)
word = words[math.random(1,#words)]
time = math.random(10,15)
timenao = time
msg.Text = "Everyone, You have to say: '"..word.."' in "..time.." seconds, or the fastest."
local lolwut = true
for _,v in pairs(game.Players:GetPlayers()) do
v.Chatted:connect(function(mes)
	if lolwut == true then
		if string.find(mes,word) then
			lolwut = false
			msg.Text = ct[math.random(1,#ct)]
			local vic = Instance.new("Sound",workspace)
			vic.SoundId = "rbxasset://sounds/victory.wav"
			vic.Volume = 0.4
			vic.Pitch = math.random(9,10)/10
			vic:play()
			local stat = v:findFirstChild("leaderstats")
			if stat ~= nil then
				stat.Points.Value = stat.Points.Value + (timenao*2)
				stat.Wins.Value = stat.Wins.Value + 1
			end
			wait(0.3)
			vic:remove()
		end
	end
end)
end
for fd=time, 0, -1 do
	if lolwut == true then
		timenao = fd
		msg.Text = "Everyone, You have to say: '"..word.."' in "..fd.." seconds, or the fastest."
		wait(1)
	end
end
if lolwut == true then
	lolwut = false
	msg.Text = fail[math.random(1,#fail)]
	local lose = Instance.new("Sound",workspace)
	lose.SoundId = "http://www.roblox.com/asset/?id=26596436"
	lose.Volume = 0.5
	lose.Pitch = math.random(8,10)/10
	lose:play()
	wait(0.3)
	lose:remove()
	wait(1.2)
	msg:remove()
else
	lolwut = false
	wait(4)
	msg:remove()
end
end

local playahs = game.Players:GetPlayers()
values = {}
plars = {}
for i=1, #playahs do
	local val = playahs[i].leaderstats.Points.Value
	table.insert(values,val)
	table.insert(plars, playahs[i].Name)
end
local winmsg = Instance.new("Message",workspace)
winmsg.Text = "Aaannnnd, the winner iiiiiss....."
wait(3)
winvalue = math.max(unpack(values))
winner = ""
for i=1, #playahs do
	if playahs[i].leaderstats.Points.Value == winvalue then
		winner = playahs[i].Name
	end
end
winmsg.Text = winner..", with "..winvalue.." points!! GZ!!"
wait(3)
winmsg:remove()
for i=1, #playahs do
	local o = playahs[i]:GetChildren()
	for u=1, #o do
		if o[u].className == "IntValue" then
			o[u]:remove()
		end
	end
end


--lego
