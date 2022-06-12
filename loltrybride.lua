me = game.Players.xSoulStealerx

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "lolwut"
script.Parent = h
end

sp = script.Parent

bridges = {}


hold = false
using = false
holdkey = false

polesize = 5

function selected(mouse, key)
	mouse.Button1Down:connect(function()
		if mouse.Target == nil then return end
		if using == true then return end
		using = true
		hold = true
		pos = mouse.Hit.p
		p = Instance.new("Part")
		p.Parent = workspace
		p.formFactor = 0
		p.Size = Vector3.new(5,1,1)
		p.Anchored = true
		p.Transparency = 0.6
		p.TopSurface = 0
		p.BrickColor = BrickColor.new("Brown")
		p.BottomSurface = 0
		p.CFrame = CFrame.new(pos)
		mes = Instance.new("SpecialMesh")
		mes.Parent = p
		mes.MeshType = "Brick"
		mes.Scale = Vector3.new(1,1,1)
		table.insert(bridges, p)
		mouse.Move:connect(function()
			if mouse.Target == nil then return end
			if hold == true then
				local dist = (p.Position - mouse.Hit.p).magnitude
				p.CFrame = CFrame.new((mouse.Hit.p + pos)/2, pos)
				mes.Scale = Vector3.new(1,1,dist*2)
			end
		end)
	end)
	mouse.Button1Up:connect(function()
		hold = false
		local duh = p.CFrame
		p.Size = Vector3.new(5,1,mes.Scale.Z)
		p.CFrame = duh
		mes:remove()
		for i=1, 5 do
			wait()
			p.Transparency = p.Transparency - 0.12
		end
		p.Material = "Wood"
		using = false
	end)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if (key == "r") then
			for i=1, #bridges do
				bridges[i]:remove()
			end
		elseif (key == "q") then
			polesize = polesize - 1
			local ms = Instance.new("Message")
			ms.Parent = me
			ms.Text = "Pole size decreased to "..polesize
			wait(0.4)
			ms:remove()
		elseif (key == "e") then
			polesize = polesize + 1
			local ms = Instance.new("Message")
			ms.Parent = me
			ms.Text = "Pole size increased to "..polesize
			wait(0.4)
			ms:remove()
		elseif (key == "f") then
			if mouse.Target == nil then return end
			if using == true then return end
			using = true
			hold = true
			posl = mouse.Hit.p
			d = Instance.new("Part")
			d.Parent = workspace
			d.formFactor = 0
			d.Size = Vector3.new(5,1,1)
			d.Anchored = true
			d.Transparency = 0.6
			d.TopSurface = 0
			d.BrickColor = BrickColor.new("Brown")
			d.BottomSurface = 0
			d.CFrame = CFrame.new(posl)
			mesj = Instance.new("SpecialMesh")
			mesj.Parent = d
			mesj.MeshType = "Brick"
			mesj.Scale = Vector3.new(1,1,1)
			table.insert(bridges, d)
			mouse.Move:connect(function()
				if mouse.Target == nil then return end
				if hold == true then
					local dist = (d.Position - mouse.Hit.p).magnitude
					mesj.Scale = Vector3.new(1,dist/2,1)
					local lolwut = d.Position.Y
					lolwut = (lolwut + mesj.Scale.Y)/2
					d.CFrame = CFrame.new(posl.X, lolwut, posl.Z, mouse.Hit.p)
					
				end
			end)
		end
	end)
	mouse.KeyUp:connect(function(key)
		key = key:lower()
		if (key == "f") then
			hold = false
			for i=1, 5 do
				wait()
				d.Transparency = d.Transparency - 0.1
			end
			local posi = d.CFrame
			d.Material = "Wood"
			d.Size = mesj.Scale
			d.CFrame = posi
			for i=1, mesj.Scale.Y, 2 do
				u = Instance.new("Part")
				u.Parent = workspace
				u.formFactor = 0
				u.Size = Vector3.new(4,1,1)
				u.TopSurface = 0
				u.BottomSurface = 0
				u.BrickColor = BrickColor.new("Brown")
				u.Material = "Wood"
				u.Anchored = true
				u.CFrame = d.CFrame * CFrame.new(2.5,i,0)
			end
			mesj:remove()
			using = false
		end
	end)
end

function deselected()
end

sp.Selected:connect(selected)
sp.Deselected:connect(deselected)

