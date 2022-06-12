function handle(err)
	return err
end

function f()
	local a = nil
	return a+1
end

me = game.Players.xSoulStealerx
me.Chatted:connect(function(msg)
	if string.sub(msg, 1, 3) == "ba/" then
		local a, b = xpcall(loadstring(msg:sub(4)),handle)
		if a == false then
			print(b)
		end
	end
end)
