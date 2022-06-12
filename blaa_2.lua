me = game.Players.yfc
gui = me.PlayerGui

Sounds = {{"http://www.roblox.com/asset/?id=2767090", "Abscond", 0.8},
	{"http://www.roblox.com/asset/?id=2676305", "Berserk", 1},
	{"http://www.roblox.com/asset/?id=3264793", "Break", 0.75},
	{"http://www.roblox.com/asset/?id=13775494", "Curse", 0.4},
	{"http://www.roblox.com/asset/?id=2101137", "DBC", 0.55},
	{"http://www.roblox.com/asset/?id=2691586", "DBExplode", 0.3},
	{"http://www.roblox.com/asset/?id=2801263", "DCHHit", 0.5},
	{"http://www.roblox.com/asset/?id=2691586", "DS", 0.7},
	{"http://www.roblox.com/asset/?id=2101148", "DSHit", 1.5},
	{"http://www.roblox.com/asset/?id=3264923", "Defile", 1.1},
	{"http://www.roblox.com/asset/?id=2800815", "Electricity", 0.9},
	{"http://www.roblox.com/asset?id=1369158", "Blast1", 0.7},
	{"http://www.roblox.com/asset/?id=2974000", "Blast2", 0.8},
	{"http://www.roblox.com/asset/?id=12222124", "Blast3", 0.2},
	{"http://www.roblox.com/asset/?id=2974249", "Blast4", 0.65},
	{"http://www.roblox.com/asset/?id=2785493", "Imbue", 1},
	{"rbxasset://sounds//unsheath.wav", "UnSheath", 1},
	{"rbxasset://sounds//swordslash.wav", "SlashSound", 1},
	{"http://www.roblox.com/asset/?id=2692844", "Chaingun Charge", 1},
	{"http://www.roblox.com/asset/?id=12222095", "Rocket sound", 0.6},
	{"http://www.roblox.com/asset/?id=2920959", "Fire (lolwut)", 0.7},
	{"http://www.roblox.com/asset/?id=2691591", "Reload", 1},
	{"http://www.roblox.com/asset/?id=2697295", "Bullet rel", 1},
	{"http://www.roblox.com/asset/?id=2801263", "Clunk (?)", 0.5},
	{"http://www.roblox.com/asset/?id=13510737", "EquipSound (?)", 1.6},
	{"http://www.roblox.com/asset/?id=2760979", "Fire", 0.7},
	{"http://www.roblox.com/asset/?id=1868836", "Fire2", 1},
	{"http://www.roblox.com/asset/?id=2761841", "Fire3", 1},
	{"http://www.roblox.com/asset/?id=2692806", "Fire4", 1},
	{"http://www.roblox.com/asset/?id=11900833", "Fire5", 1},
	{"http://www.roblox.com/asset/?id=12222065", "Fire6", 1},
	{"http://www.roblox.com/asset/?id=2767090", "Fire7", 1},
	{"http://www.roblox.com/asset/?id=2693346", "Fire8", 1},
	{"http://www.roblox.com/asset/?id=15933756", "Fire9", 1},
	{"http://www.roblox.com/asset/?id=16976189", "Fire10", 1},
	{"http://www.roblox.com/asset/?id=21433711", "Fire11", 1},
	{"http://www.roblox.com/asset/?id=21433696", "Fire12", 1},
	{"http://www.roblox.com/asset/?id=13510352", "Fire13", 1},
	{"http://www.roblox.com/asset/?version=1&id=2691586", "Gun1", 1},
	{"http://www.roblox.com/asset/?id=2920959", "Gun2", 1},
	{"http://www.roblox.com/asset/?id=2697431", "Gun3", 1},
	{"http://www.roblox.com/asset/?id=2251683", "Machine sound", 2},
	{"http://www.roblox.com/asset/?id=12222076", "Page turn (?)", 1},
	{"http://www.roblox.com/asset/?id=24483366", "Rawr (?)", 0.75},
	{"http://www.roblox.com/asset/?version=1&id=2691591", "Reloadd", 1},
	{"http://www.roblox.com/asset/?id=2697432", "Reloadd2", 1},
	{"http://www.roblox.com/asset/?id=2920960", "Reloadd3", 1},
	{"http://www.roblox.com/asset/?id=2761842", "Reloadd4", 1},
	{"http://www.roblox.com/asset/?id=25299064", "Shot reload", 1},
	{"http://www.roblox.com/asset/?id=2697294", "Shotty (lol?)", 1},
	{"http://www.roblox.com/asset/?id=24902268", "Zombie1", 0.65},
	{"http://www.roblox.com/asset/?id=24902294", "Zombie2", 0.65}
}

sc = Instance.new("ScreenGui")
sc.Name = "Sounds"

pos = UDim2.new(0, 4, 0, 130)

x, y = 0, 0
s = Instance.new("Sound",workspace)
s.Volume = 1
for i,v in pairs(Sounds) do
	local fr = Instance.new("TextButton",sc)
	fr.Size = UDim2.new(0,260,0,15)
	fr.Position = pos + UDim2.new(0,x,0,y)
	local a = string.find(v[1], "id")
	fr.Text = v[2]..", "..v[3]..", "..v[1]
	fr.TextXAlignment = "Left"
	fr.MouseButton1Down:connect(function()
		s.SoundId = v[1]
		s.Pitch = v[3]
		wait()
		s:play()
	end)
	y = y + 16
	if y > 400 then
		y = 0
		x = x + 261
	end
end
sc.Parent = gui