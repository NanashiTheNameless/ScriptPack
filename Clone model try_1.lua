me = game.Players.xSoulStealerx

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "Clone model"
script.Parent = h
end

bin = script.Parent

bin.Selected:connect(function(mouse)
	mouse.Button1Down:connect(function()
		local targ = mouse.Target
		if targ.Parent:IsA("Model") then
			local mod = targ.Parent
			local yay = Instance.new("Model",workspace)
			for _,v in pairs(mod:GetChildren()) do
				local a = v:clone()
				a.Parent = yay
				if a:IsA("BasePart") then
					a.Anchored = true
					a.CanCollide = true
				elseif a:IsA("Hat") then
					if a:findFirstChild("Handle") then
						a.Handle.Anchored = true
					end
				end
			end
		end
	end)
end)
