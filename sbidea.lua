math.randomseed(tick())

material = {"iron", "bronze", "wooden", "steel", "golden", "slate", "rock", "earth", "wind", "fire", "water", "death", "cosmic",
"mithril", "darkness", "light", "magic", "rainbow", "plastic", "paper", "wood", "platinum", "silver", "coal",
}

object = {"bow", "sword", "longsword", "scimitar", "long bow", "crossbow", "staff", "stick", "wand", "mech", "plane", "flail", "whip",
"gloves", "shield", "arrow", "powers", "gui", "armour", "suit", "weapon", "dagger", "NPC", "gun", "pistol", "submachine gun", "battleaxe",
"axe", "orb", "blade"
}

local amount = (#material*#object)
local text = amount.." choices in xSoulStealerx's script builder idea generator!"

Hint = Instance.new("Hint",workspace)
Hint.Text = text

function cap(word)
	return word:sub(1,1):upper()..word:sub(2)
end

function makeidea()
	local a = cap(material[math.random(1,#material)].." "..object[math.random(1,#object)])
	return a
end

function chat(msg, p)
	if msg == "idea" then
		local lolz, idea = p.Name.." got a new idea!", makeidea()
		Hint.Text = lolz
		wait(1)
		Hint.Text = "The idea is....."
		wait(0.5)
		Hint.Text = idea.."!"
	end
end
for i,v in pairs(game.Players:GetPlayers()) do
v.Chatted:connect(function(msg) chat(msg, v) end)
end
game.Players.PlayerAdded:connect(function(v)
v.Chatted:connect(function(msg) chat(msg, v) end)
end)

