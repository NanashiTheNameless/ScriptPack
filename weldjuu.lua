me = game.Players.xSoulStealerx

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin")
h.Parent = me.Backpack
h.Name = "lolwut"
script.Parent = h
end

sp = script.Parent

polesize = 5

function selected(mouse, key)
	mouse.Button1Down:connect(function()
		local p = Instance.new("Part")
		p.Parent = workspace
		p.Shape = "Ball"
		p.Size = Vector3.new(7,7,7)
		p.TopSurface = 0
		p.BottomSurface = 0
		p.BrickColor = BrickColor.new(26)
		p.CanCollide = false
		p.Transparency = 0.25
		p.CFrame = CFrame.new(me.Character.Torso.Position, mouse.Hit.p) * CFrame.new(0,0,-5)
		p:BreakJoints()
		mesh = Instance.new("SpecialMesh")
		mesh.Parent = p
		mesh.MeshType = "Sphere"
		mesh.Scale = Vector3.new(1.2,1.2,1.2)
		local bv = Instance.new("BodyVelocity")
		bv.Parent = p
		bv.velocity = p.CFrame.lookVector * 120
		bv.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		coroutine.resume(coroutine.create(function()
			while true do
				wait(0.1)
				for _,v in pairs(game.Players:GetChildren()) do
					if (v.Character.Torso.Position - p.Position).magnitude <= 780 then
						v.Character.Humanoid.PlatformStand = true
						local we = Instance.new("Weld")
						we.Parent = p
						we.Part0 = we.Parent
						we.Part1 = v.Character.Torso
						we.C1 = CFrame.new(math.random(-3,3),math.random(-3,3),math.random(-3,3)) * CFrame.fromEulerAnglesXYZ(math.random(-3.2,3.2),math.random(-3.2,3.2),math.random(-3.2,3.2))
					end
				end
			end
		end))
		wait(4)
		p:remove()
	end)
end

sp.Selected:connect(selected)

