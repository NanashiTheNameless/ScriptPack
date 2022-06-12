me = game.Players.xSoulStealerx

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "Rocket"
script.Parent = h
end

sp = script.Parent

hold = false
miss = {}
function selected(mouse, key)
	mouse.Button1Down:connect(function()
		if hold == true then return end
		hold = true
		local missile = Instance.new("Part")
		missile.Parent = workspace
		missile.formFactor = 0
		missile.Size = Vector3.new(1,1,5)
		missile.Anchored = true
		missile.CFrame = CFrame.new(me.Character.Torso.Position, mouse.Hit.p) * CFrame.new(0,0,-7)
		workspace.CurrentCamera.CameraSubject = missile
		table.insert(miss,missile)
		while hold == true do
			wait()
			missile.CFrame = CFrame.new(missile.Position, mouse.Hit.p)
			missile.CFrame = missile.CFrame * CFrame.new(0,0,-1)
		end
	end)
	mouse.Button1Up:connect(function()
		hold = false
		local ex = Instance.new("Explosion")
		ex.Parent = workspace
		ex.Position = miss[1].Position
		ex.BlastRadius = miss[1]:GetMass()
		ex.BlastPressure = 400000
		miss[1]:remove()
		table.remove(miss, 1)
		workspace.CurrentCamera.CameraSubject = me.Character.Humanoid
	end)
end

sp.Selected:connect(selected)


