me = game.Players.yfc

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "lolwut"
script.Parent = h
end

sp = script.Parent
material = "Wood" 
shape = "Brick" 
mesh = "SpecialMesh" 
shape2 = "Head" 
hold = false
function selected(mouse)
	mouse.Button1Down:connect(function()
		if mouse.Target == nil then return end
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
		mes.MeshType = shape 
		mes.Scale = Vector3.new(1,1,1)

--[[		pan = Instance.new("Part")
		pan.Parent = workspace
		pan.formFactor = 0
		pan.Size = Vector3.new(1,4,1)
		pan.Anchored = true
		pan.Transparency = 0.6
		pan.TopSurface = 0
		pan.BrickColor = BrickColor.new("Brown")
		pan.BottomSurface = 0
		pan.CFrame = p.CFrame * CFrame.new(1.5, -2.5, 0)
		mels = Instance.new("SpecialMesh")
		mels.Parent = pan
		mels.MeshType = shape2 
		mels.Scale = Vector3.new(1,1,1)

		pa = Instance.new("Part")
		pa.Parent = workspace
		pa.formFactor = 0
		pa.Size = Vector3.new(1,4,1)
		pa.Anchored = true
		pa.Transparency = 0.6
		pa.TopSurface = 0
		pa.BrickColor = BrickColor.new("Brown")
		pa.BottomSurface = 0
		pa.CFrame = p.CFrame * CFrame.new(-1.5, -2.5, 0)
		mel = Instance.new("SpecialMesh")
		mel.Parent = pa
		mel.MeshType = shape2 
		mel.Scale = Vector3.new(1,1,1) ]]-- 

		mouse.Move:connect(function()
			if mouse.Target == nil then return end
			if hold == true then
				local dist = (p.Position - mouse.Hit.p).magnitude
				p.CFrame = CFrame.new((mouse.Hit.p + pos)/2, pos)
				--pa.CFrame = p.CFrame * CFrame.new(-1.5, -2.5, 0)--
				--pan.CFrame = p.CFrame * CFrame.new(1.5, -2.5, 0)--
				mes.Scale = Vector3.new(1,1,dist*2)
				--mels.Scale = Vector3.new(1,1,dist*2)--
				--mel.Scale = Vector3.new(1,1,dist*2) --
			end
		end)
	end)

	mouse.Button1Up:connect(function()
		hold = false
		local duh = p.CFrame
		p.Size = Vector3.new(5,1,mes.Scale.Z) 
		p.CFrame = duh
		mes:remove()
		--mels:remove()--
		--mel:remove()--
		for i=1, 10 do
			wait()
			p.Transparency = p.Transparency - 0.06  --[[ pa.Transparency = p.Transparency - 0.06  pan.Transparency = p.Transparency - 0.06 ]]
		end
		p.Material = material 
	end)
end

function deselected()

end

sp.Selected:connect(selected)
sp.Deselected:connect(deselected)
