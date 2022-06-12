me = game.Players.xSoulStealerx

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "Pointless Fire"
script.Parent = h
end

sp = script.Parent
eq = false

bricka = Instance.new("Part",me.Character)
bricka.formFactor = 0
bricka.Size = Vector3.new(1,1,1)
bricka.CanCollide = false
bricka:BreakJoints()
weld = Instance.new("Weld",me.Character.Torso)
weld.Part0 = weld.Parent
weld.Part1 = bricka
weld.C1 = CFrame.new(-1.5,-0.5,0)

rarm = Instance.new("Weld",bricka)
rarm.Part0 = nil
rarm.Part1 = nil
rarm.C1 = CFrame.new(0,0.5,0)


sp.Selected:connect(function(mouse)
	rarm.Part0 = rarm.Parent
	rarm.Part1 = me.Character["Right Arm"]
	eq = true
	coroutine.resume(coroutine.create(function()
		while true do
			wait()
			rarm.C1 = CFrame.fromEulerAnglesXYZ(mouse.Hit.p)
		end
	end))
	mouse.Button1Down:connect(function()
		local pos = me.Character.Torso.Position
		local pos2 = mouse.Hit.p
		for i=10, 300, 10 do
			local o = Instance.new("Part",workspace)
			o.Size = Vector3.new(1,1,1)
			o.Transparency = 1
			o.Anchored = true
			o.CFrame = CFrame.new(pos, pos2) * CFrame.new(0,0,-i)
			o.CanCollide = false
			o:BreakJoints()
			local f = Instance.new("Fire",o)
			f.Size = 24
			f.Heat = 7
			local pl = game.Players:GetChildren()
			for _,v in pairs(pl) do
				if (o.Position - v.Character.Torso.Position).magnitude <= 8 then
					if v.Character then
						v.Character.Humanoid.Health = 0
						local d = v.Character:GetChildren()
						for i=1, #d do
							if d[i].className == "Part" then
								d[i].Velocity = Vector3.new(math.random(-70,70),math.random(-70,70),math.random(-70,70))
								d[i].RotVelocity = Vector3.new(math.random(-70,70),math.random(-70,70),math.random(-70,70))	
							end
						end
					end
				end
			end		
			coroutine.resume(coroutine.create(function()
				wait(0.2)
				f.Enabled = false
				wait(0.9)
				o:remove()
			end))
		end
	end)
end)

sp.Deselected:connect(function()
	rarm.Part0 = nil
	rarm.Part1 = nil
	eq = false
end)
