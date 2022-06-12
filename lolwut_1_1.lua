me = game.Players.xSoulStealerx

me.Chatted:connect(function(msg)
	if string.sub(msg,1,7) == "search/" then
		local str = string.sub(msg,8)..":GetChildren()"
		local items = loadstring(str)
		for i,v in pairs(items) do
			print(tostring(v))
			wait(0.5)
		end
	end
end)
