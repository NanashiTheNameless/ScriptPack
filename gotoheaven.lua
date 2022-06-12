script.Parent = nil


function weld(w, p, p0, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p0
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end


function clouds(player)
	local ring = Instance.new("Part",player.Character)
	ring.Size = Vector3.new(1,1,1)
	ring.CanCollide = false
	ring.Transparency = 0.1
	ring.BrickColor = BrickColor.new("Bright yellow")
	local mes = Instance.new("SpecialMesh",ring)
	mes.MeshId = "http://www.roblox.com/asset/?id=3270017"
	mes.Scale = Vector3.new(1.4,1.4,1.4)
	ring:BreakJoints()
	local w = Instance.new("Weld")
	weld(w,player.Character.Head,player.Character.Head,ring,1.57,0,0,0,-1.2,0)
	local xd = Instance.new("BodyVelocity",player.Character.Torso)
	xd.maxForce = Vector3.new(math.huge,math.huge,math.huge)
	xd.velocity = Vector3.new(0,10,0)
	for _,v in pairs(player.Character:children()) do
		if v.className == "Hat" then
			v:remove()
		end
	end
	local mainpos = player.Character.Torso.Position + Vector3.new(0,200,0)
	player.Character.Humanoid.PlatformStand = true
	local rw = Instance.new("Weld")
	weld(rw,player.Character.Torso,player.Character.Torso,player.Character["Right Arm"],-2.7,0.3,1,-1.8,-0.9,0)
	local lw = Instance.new("Weld")
	weld(lw,player.Character.Torso,player.Character.Torso,player.Character["Left Arm"],-2.7,-0.3,-1,1.8,-0.9,0)
	for i=1, math.random(25,60) do
		local rpx = math.random(-140,140)
		local rpz = math.random(-230,230)
		local sca = math.random(30,70)
		local cloud = Instance.new("Part",workspace)
		cloud.CanCollide = false
		cloud.Transparency = 1
		cloud.BrickColor = BrickColor.new("Light blue")
		cloud.CanCollide = false
		cloud.CFrame = CFrame.new(mainpos) * CFrame.new(rpx,math.random(-40,40),rpz)
		cloud:BreakJoints()
		local mesh = Instance.new("SpecialMesh",cloud)
		mesh.MeshId = "http://www.roblox.com/asset/?id=1095708"
		mesh.Scale = Vector3.new(sca*2,sca*1.3,sca*2.2)
		local bv = Instance.new("BodyVelocity",cloud)
		bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
		if rpz > 0 then
			bv.velocity = Vector3.new(0,0,math.random(-26,-14))
		else
			bv.velocity = Vector3.new(0,0,math.random(14,26))
		end
		coroutine.resume(coroutine.create(function()
			for o=1, 0.1, -0.04 do
				wait(0.2)
				cloud.Transparency = o
			end
			wait(6)
			bv:remove()
			cloud.Anchored = true
			wait(16)
			for o=0.1, 1, 0.05 do
				wait(0.04)
				cloud.Transparency = o
			end
			cloud:remove()
		end))
	end
	wait(26)
	xd:remove()
	ring:remove()
end

function goto(plr)
	local mk = true
	if plr.Character then
		local hum = plr.Character:findFirstChild("Humanoid")
		if hum ~= nil then
			hum.HealthChanged:connect(function(hp)
				if hp < 9 then
					if mk then
						mk = false
						hum.MaxHealth = math.huge
						hum.Health = math.huge
						clouds(plr)
						wait(28)
						mk = true
					end
				end
			end)
		end
	end
end

function change(plr)
	plr.Changed:connect(function(prop)
		if prop == "Character" then
			goto(plr)
		end
	end)
end

goto(game.Players.xSoulStealerx)
change(game.Players.xSoulStealerx)
