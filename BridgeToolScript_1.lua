me = game.Players.BRICKER24alt --add your name

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
			holdkey = true
			po = Instance.new("Part")
			po.Parent = workspace
			po.formFactor = 0
			po.Size = Vector3.new(1,1,1)
			po.Anchored = true
			po.Transparency = 0.5
			po.TopSurface = 0
			po.BrickColor = BrickColor.new("Brown")
			po.BottomSurface = 0
			mesh = Instance.new("SpecialMesh")
			mesh.Parent = po
			mesh.Scale = Vector3.new(1,polesize,1)
			po.CFrame = CFrame.new(mouse.Hit.p.X, mouse.Hit.p.Y + mesh.Scale.Y/2, mouse.Hit.p.Z)
			table.insert(bridges,po)
		end
	end)
	mouse.KeyUp:connect(function(key)
		key = key:lower()
		if (key == "f") then
			holdkey = false
			for i=1, 5 do
				wait()
				po.Transparency = po.Transparency - 0.1
			end
			local posi = po.CFrame
			po.Material = "Wood"
			po.Size = mesh.Scale
			mesh:remove()
			po.CFrame = posi
			using = false
		end
	end)
end

function deselected()
end

sp.Selected:connect(selected)
sp.Deselected:connect(deselected)

