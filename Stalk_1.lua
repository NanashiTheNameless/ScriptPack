me = game.Players.xSoulStealerx

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "PL thing"
script.Parent = h
end

sp = script.Parent
enabled = false

sp.Selected:connect(function(mouse)
	mouse.Button1Down:connect(function()
		if enabled == false then
			bg = Instance.new("BodyGyro")
			bg.Parent = me.Character.Torso
			bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bg.P = 8000
			if mouse.Target ~= nil then
				enabled = true
				targ = mouse.Target
				bg.cframe = CFrame.new(me.Character.Torso.Position, targ.Position)
				while enabled do
					bg.cframe = CFrame.new(me.Character.Torso.Position, targ.Position)
					wait()
				end
			else
				enabled = true
				bg.cframe = CFrame.new(me.Character.Torso.Position, mouse.Hit.p)
				while enabled do
					bg.cframe = CFrame.new(me.Character.Torso.Position, mouse.Hit.p)
					wait()
				end
			end
		else
			enabled = false
			bg:remove()
		end
	end)
end)
