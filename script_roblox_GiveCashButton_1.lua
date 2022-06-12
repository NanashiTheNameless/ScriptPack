amnt = 35
function onTouched(part)
	local h = part.Parent:findFirstChild("Humanoid")
	if (h~=nil) then
		local thisplr = game.Players:findFirstChild(h.Parent.Name)
		if (thisplr~=nil) then
			local stats = thisplr:findFirstChild("leaderstats")
			if (stats~=nil) then
				local score = stats:findFirstChild("Cash")
				if (score~=nil) then
					score.Value = score.Value + amnt
				end
			end
		end
		script.Parent:remove()
	end
end

script.Parent.Touched:connect(onTouched)