me = game.Players.xSoulStealerx

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "Flashbang"
script.Parent = h
end

sp = script.Parent

gren = Instance.new("Part")
gren.Parent = game.Lighting
gren.formFactor = 0
gren.Size = Vector3.new(1,2,1)
gren.Anchored = false
gren:BreakJoints()
mes = Instance.new("SpecialMesh",gren)
mes.MeshType = "FileMesh"
mes.MeshId = "http://www.roblox.com/asset/?id=16975131"
mes.Scale = Vector3.new(0.8,1,0.8)

rs = me.Character.Torso["Right Shoulder"]
th = rs.C0

thrown = false

function sel(mouse)
	gren.Parent = me.Character
	weld = Instance.new("Weld")
	weld.Parent = me.Character["Right Arm"]
	weld.Part0 = weld.Parent
	weld.Part1 = gren
	weld.C1 = CFrame.fromEulerAnglesXYZ(-1.57,0,0) * CFrame.new(0,1,0)
	mouse.Button1Down:connect(function()
		if thrown == true then return end
		thrown = true
		for i=1, 7 do
			rs.C0 = rs.C0 * CFrame.fromEulerAnglesXYZ(0,0,0.6)
			wait()
		end
		wait(0.05)
		for i=1, 2 do
			rs.C0 = rs.C0 * CFrame.fromEulerAnglesXYZ(0,0,-0.6)
			wait()
		end
		gr = gren:clone()
		gr.Parent = workspace
		gr.CFrame = CFrame.new(gren.Position, mouse.Hit.p)
		bf = Instance.new("BodyForce")
		bf.Parent = gr
		bf.force = gr.CFrame.lookVector * 4000
		for i=1, 2 do
			rs.C0 = rs.C0 * CFrame.fromEulerAnglesXYZ(0,0,-0.6)
			wait()
		end
		rs.C0 = th
		bf:remove()
		wait(4)
		local eff = Instance.new("Part")
		eff.Parent = workspace
		eff.Shape = "Ball"
		eff.BrickColor = BrickColor.new("Institutional white")
		eff.Size = Vector3.new(2,2,2)
		eff.Anchored = true
		eff.CFrame = gr.CFrame
		local mgg = Instance.new("SpecialMesh")
		mgg.Parent = eff
		mgg.Scale = Vector3.new(1,1,1)
		mgg.MeshType = "Sphere"
		coroutine.resume(coroutine.create(function()
			for i=1, 15, 0.3 do
				wait()
				mgg.Scale = Vector3.new(i,i,i)
				eff.Transparency = eff.Transparency + 0.03
			end
			gr:remove()
			eff:remove()
		end))
		thrown = false
		plas = game.Players:GetChildren()
		for i = 1, #plas do
			if (gr.Position - plas[i].Character.Torso.Position).magnitude < 60 then
				local sc = Instance.new("ScreenGui")
				sc.Parent = plas[i].PlayerGui
				local fr = Instance.new("Frame")
				fr.Parent = sc
				fr.BackgroundColor3 = Color3.new(1,1,1)
				fr.BorderSizePixel = 0
				fr.Size = UDim2.new(1.2,0,1.2,0)
				fr.Position = UDim2.new(0,-20,0,-30)
				coroutine.resume(coroutine.create(function()
					for i = -4, 1, 0.05 do
						wait(0.04)
						fr.BackgroundTransparency = i
					end
					sc:remove()
				end))
			end
		end
	end)
end

function desel()
	gren.Parent = game.Lighting
end

sp.Selected:connect(sel)
sp.Deselected:connect(desel)
