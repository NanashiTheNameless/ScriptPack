me = game.Players.yfc
char = me.Character

char.Humanoid.Changed:connect(function(prop)
	if prop == "Jump" then
			char.Humanoid.PlatformStand = true
			local pos = char.Torso.CFrame * CFrame.Angles(0,-math.pi/2,0)
			local pos2 = char.Torso.CFrame * CFrame.new(0,25,-18)
			local bav = Instance.new("BodyAngularVelocity",char.Torso)
			bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bav.angularvelocity = pos.lookVector * -6
			local bf = Instance.new("BodyPosition",char.Torso)
			bf.maxForce = Vector3.new(30000,30000,30000)
			bf.position = pos2.p
			coroutine.resume(coroutine.create(function()
				wait(0.2)
				bf:remove()
			end))
			for i=1, 30 do
				wait()
				local p = Instance.new("Part",char)
				p.CanCollide = false
				p.Size = Vector3.new(1,1,1)
				p.Anchored = true
				p.BrickColor = BrickColor.White()
				p.CFrame = CFrame.new(char.Torso.Position) * CFrame.new(0,-4,0)
				local m = Instance.new("SpecialMesh",p)
				m.MeshType = "FileMesh"
				m.MeshId = "http://www.roblox.com/asset/?id=20329976"
				m.Scale = Vector3.new(4,2,4)
				coroutine.resume(coroutine.create(function()
					for i=0.3,1,0.07 do
						p.Transparency = i
						wait()
					end
					p:remove()
				end))
			end
			bav:remove()
			bf:remove()
			char.Humanoid.PlatformStand = false
	end
end)

