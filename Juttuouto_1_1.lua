me = game.Players.ace28545
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "Thing"
script.Parent = h
end

sp = script.Parent
hold = false
function sel(mouse)
	mouse.Button1Down:connect(function()
		hold = true
		local char = me.Character
		local namb = 0
		while hold == true do
			wait()
			local p = Instance.new("Part")
			p.Parent = char
			p.Anchored = true
			p.Size = Vector3.new(10,2,2)
			p.CFrame = char.Torso.CFrame * CFrame.fromEulerAnglesXYZ(0,namb,0.5) * CFrame.new(100,10,0)
			namb = math.random(-100,100)
			coroutine.resume(coroutine.create(function()
				for i=1, 40 do
					wait()
					p.CFrame = p.CFrame * CFrame.new(-2,0,0)
				end
				p:remove()
			end))
		end
	end)
	mouse.Button1Up:connect(function()
		hold = false
	end)
end

sp.Selected:connect(sel)
