me = game.Players.xSoulStealerx

model = game:service("InsertService"):LoadAsset(48752420)

me.Chatted:connect(function(msg)
	if string.sub(msg,1,4) == "fig/" then
		local num = tonumber(msg:sub(5))
		if num then
			if num > 15 then num = 15 end
			for i = 1, num do
				local fig = model:clone()
				fig.Parent = workspace
				fig:MakeJoints()
				pcall(function()
				fig:MoveTo(me.Character.Torso.Position + Vector3.new(math.random(-15,15), math.random(2,25), math.random(-15,15)))
				end)
			end
		end
	end
end)
