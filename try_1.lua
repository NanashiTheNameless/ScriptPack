me = game.Players.xSoulStealerx

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
script.Parent = h
end

sp = script.Parent
hold = false

sp.Selected:connect(function(mouse)
	pos = me.Character.Head.Position + Vector3.new(15,0,0)
	mouse.Button1Down:connect(function()
		hold = true
		p = Instance.new("Part",workspace)
		p.Anchored = true
		p.Size = Vector3.new(4,1,5)
		p.TopSurface = 0
		p.BottomSurface = 0
		p.CFrame = CFrame.new(pos, mouse.Hit.p) * CFrame.new(0,0,2.5)
		workspace.CurrentCamera.CameraSubject = p
		mouse.Move:connect(function()
			if hold then
				p.CFrame = CFrame.new(pos, mouse.Hit.p) * CFrame.new(0,0,2)
			end
		end)
	end)
	mouse.Button1Up:connect(function()
		hold = false
	end)
end)
