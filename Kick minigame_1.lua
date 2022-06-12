script.Parent = nil
words = {"i like boys", "haider", "im epic fail", "gorilla", "monkey", "l33t", "im stupid", "hey nuubz", "pancaiks ftl", "caik is a lie", "poopies", "puppies are cute", "i like stuff", "epic sauce", "wallet", "free willie", "xsoul ftw", "you lose", "lolwutpie", "ilikesaucewhichisntsauce", "naoob", "epicsuaceisntepicbutitsprettycoolsaucexdxd", "everyone fails except me!"}
ct = {"Good work, boi.", "Congrats >_>", "                VIRUSED =D                 Well anyways congrats.            ", "You're epic sauceeee", "Trolled nuub!1!!", "You won. IM IMPRESSED!", "          more virus, gz.", "indiana jones to the rescue."}
fail = {"Bye noob. U cant spell.", "Epic fail.", "YOU FAIL TROLOLOLO", "Teehee, u better think faster.", "Better luck next time!", "in soviet russia, noobs lose points.", "Why always noobs lose points?"}

games = math.random(4,7)
lolga = games

function leader(player)
	local stats = Instance.new("IntValue")
	stats.Name = "leaderstats"
	local points = Instance.new("IntValue")
	points.Name = "Points"
	points.Value = 0
	local losts = Instance.new("IntValue")
	losts.Name = "Lost"
	losts.Value = 0
	points.Parent = stats
	losts.Parent = stats
	stats.Parent = player
end
for _,v in pairs(game.Players:GetPlayers()) do
	leader(v)
end
game.Players.PlayerAdded:connect(leader)

for k=1, games do
local plyrs = game.Players:GetPlayers()
local msg = Instance.new("Message",workspace)
msg.Text = "Chatting minigame starting... "..lolga.." game(s) left."
lolga = lolga - 1
wait(1.5)
player = nil
for i=1, math.random(15,35) do
	wait()
	player = plyrs[math.random(1,#plyrs)]
	msg.Text = "Player chosen: "..player.Name
end
wait(2)
word = words[math.random(1,#words)]
time = math.random(10,15)
timenao = time
msg.Text = player.Name..", you have to say: '"..word.."' in "..time.." seconds, or YOU LOSE"
local lolwut = true
player.Chatted:connect(function(mes)
	if lolwut == true then
		if string.find(string.lower(mes),string.lower(word)) then
			lolwut = false
			msg.Text = ct[math.random(1,#ct)]
			local vic = Instance.new("Sound",workspace)
			vic.SoundId = "rbxasset://sounds/victory.wav"
			vic.Volume = 0.4
			vic.Pitch = math.random(9,10)/10
			vic:play()
			local stat = player:findFirstChild("leaderstats")
			if stat ~= nil then
				stat.Points.Value = stat.Points.Value + (timenao*2)
			end
			wait(0.3)
			vic:remove()
		end
	end
end)
for fd=time, 0, -1 do
	if lolwut == true then
		timenao = fd
		msg.Text = player.Name..", you have to say: '"..word.."' in "..fd.." seconds or YOU LOSE"
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
	if player ~= nil then
		local stat = player:findFirstChild("leaderstats")
		if stat ~= nil then
			stat.Lost.Value = stat.Lost.Value + 1
			stat.Points.Value = stat.Points.Value/2
		end
	end
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

--lego
