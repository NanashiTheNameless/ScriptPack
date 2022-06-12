local words = {"kick", "me", "noob", "face", "i'm", "on", "a", "boat", "watermelon", "wall", "poo", "eat", "lol", "eye", "eww", "what", "lulz", "troll", "cool", "trollface"}
local m = Instance.new("Message", Workspace)
while true do
	--game.Players:Chat(
	--print(
	m.Text = (
		(function()
			local r = ""
			for x = 0, math.random(3, 10) do
				r = r.. (r == "" and "" or (math.random(1, 3) == 1 and ", " or " ")) ..(function()
					local r2 = words[math.random(1, #words)]
					local r22 = math.random(1, 3)
					if r22 == 1 then
						r2 = r2:upper()
					elseif r22 == 2 then
						r2 = r2:lower()
					end
					return r2
				end)()
			end
			return r
		end)()
	)
	wait(math.random())
end