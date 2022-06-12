objects = {"kitten", "pillow", "laser", "dog", "tank", "bomb", "rocket", "water gun", "gun", "kick",
"poo", "dagger", "sword", "clock", "notepad", "medieval", "epic face", "bike", "skateboard",
"umbrella", "computer", "camera", "fox", "wolf", "roblox", "speaker", "human", "robloxian",
"screen", "plate", "fork", "knife", "magnifying glass", "tix", "robux", "card", "phone",
"banana", "apple", "orange", "red vs. Blue", "rubik's cube", "light bulb", "lamp", "jet",
"plane", "tree", "treehouse", "trampoline", "parkour", "poster", "paper", "scissor", "rock",
"desk", "fail", "iron man", "roflcopter", "helicopter", "troll", "cool face", "trollface",
"narbfaic", "noob", "superman", "Donald Duck", "Disney", "pirates vs. walrus", "martian",
"cup", "piano", "bottle", "safecrack", "money", "bed", "closet"
}

gametypes = {"wars", "chase", "tag", "obby", "survival", "roleplay", "race", "arena", "tycoon",
"battle", "ship battle", "build", "live", "mining", "RPG", "defence", "flight", "attack",
"fights", "park", "water park", "draw", "guess", "puzzle", "generator"
}

places = {"on land", "in sky", "in forest", "on desert", "in a lab", "on baseplate", "in heights", "on a hill", "on a lake", "on a sea",
"in ocean", "in space", "in Earth", "in Mars", "in Jupiter", "in a watchtower", "on a bridge", 
"in a house", "on a table", "on a field", "in a casino", "in a ranch", "in a ship", "in a car",
"in organs", "on a piano", "on a bed", "in kitchen"}

Instance.new("Hint",workspace).Text = #objects*#gametypes*#places.." choices in xSoulStealerx's idea generator!"
function cap(word)
	return word:sub(1,1):upper()..word:sub(2)
end

function makeidea()
	local a = cap(objects[math.random(1,#objects)].." "..gametypes[math.random(1,#gametypes)].." "..places[math.random(1,#places)])
	return a
end

function chat(msg, p)
	if msg == "idea" then
		local lolz, idea = p.Name.." got a new idea!", makeidea()
		local hint = Instance.new("Hint",workspace)
		hint.Text = lolz
		wait(1)
		hint.Text = "The idea is....."
		wait(0.5)
		hint.Text = idea.."!"
		wait(7)
		hint:remove()
	end
end
for i,v in pairs(game.Players:GetPlayers()) do
v.Chatted:connect(function(msg) chat(msg, v) end)
end
game.Players.PlayerAdded:connect(function(v)
v.Chatted:connect(function(msg) chat(msg, v) end)
end)

