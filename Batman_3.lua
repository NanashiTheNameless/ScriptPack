
me = game.Players.yfc
h = Instance.new("HopperBin",me.Backpack)
h.Name = "Batman"
script.Parent = h

bin = script.Parent
hold = false

deb = false

torso = me.Character.Torso
rarm = torso["Right Shoulder"]
larm = torso["Left Shoulder"]
leftnorm = larm.C0
rightnorm = rarm.C0

part = Instance.new("Part",me.Character)
part.Size = Vector3.new(1,1,1)
part.Position = Vector3.new(0,10,0)
part.CanCollide = false
part.Transparency = 1

weld = Instance.new("Weld",torso)
weld.Part0 = torso
weld.Part1 = part
weld.C1 = CFrame.fromEulerAnglesXYZ(-1.57,0,0) * CFrame.new(0,0,0)

wings = part:clone()
wings.Parent = me.Character
wings.Transparency = 0

mesh = Instance.new("SpecialMesh",wings)
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=19367744"
mesh.TextureId = "http://www.roblox.com/asset/?id=19367734"
mesh.Scale = Vector3.new(2,2,2)

w2 = Instance.new("Weld",torso)
w2.Part0 = w2.Parent
w2.Part1 = wings
w2.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.2,-2)

brick = part:clone()
brick.Parent = me.Character

wah = Instance.new("Weld",torso)
wah.Part0 = torso
wah.Part1 = brick
wah.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(-1.2,-0.5,0)

rw = Instance.new("Weld",brick)
rw.Part0 = nil
rw.Part1 = nil
rw.C1 = CFrame.fromEulerAnglesXYZ(-0.6,-0.1,-0.2) * CFrame.new(0,0.5,0.3)

star = Instance.new("Part",game.Lighting)
star.formFactor = "Plate"
star.Size = Vector3.new(1,0.4,1)
star.CanCollide = false
star:BreakJoints()

starmesh = Instance.new("SpecialMesh",star)
starmesh.MeshType = "FileMesh"
starmesh.MeshId = "http://www.roblox.com/asset/?id=11376946"
starmesh.TextureId = "http://www.roblox.com/asset/?id=11376931"
starmesh.Scale = Vector3.new(3,3,3)

speed = 0
maxspeed = 100

bin.Selected:connect(function(mouse)
	speed = 0
	rw.Part0 = brick
	rw.Part1 = me.Character["Right Arm"]
	star.Parent = me.Character
	wepweld = Instance.new("Weld",me.Character["Right Arm"])
	wepweld.Part0 = wepweld.Parent
	wepweld.Part1 = star
	wepweld.C1 = CFrame.fromEulerAnglesXYZ(1.57,1,0) * CFrame.new(0,1.4,0)
	mouse.Button1Down:connect(function()
		if deb then return end
		deb = true
		hold = true
		me.Character.Humanoid.PlatformStand = true
		bg = Instance.new("BodyGyro",part)
		bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
		bv = Instance.new("BodyVelocity",part)
		bv.maxForce = Vector3.new(math.huge,math.huge,math.huge)
		bg.cframe = CFrame.new(part.Position, mouse.Hit.p)
		bv.velocity = part.CFrame.lookVector * speed
		while hold do
			wait()
			speed = speed + 2
			if speed >= maxspeed then
				speed = maxspeed
			end
			bg.cframe = CFrame.new(part.Position, mouse.Hit.p) 
			bv.velocity = part.CFrame.lookVector * speed
		end
	end)
	mouse.Button1Up:connect(function()
		hold = false
		me.Character.Humanoid.PlatformStand = false
		for i = speed, 0, -8 do
			wait()
			speed = i
			bv.velocity = part.CFrame.lookVector * speed
		end
		bg:remove()
		bv:remove()
		deb = false
	end)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if key == "q" then
			local bav = Instance.new("BodyAngularVelocity",torso)
			bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bav.angularvelocity = torso.CFrame.lookVector * -10
			wait(0.6)
			bav:remove()
		elseif key == "e" then
			local bav = Instance.new("BodyAngularVelocity",torso)
			bav.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bav.angularvelocity = torso.CFrame.lookVector * 10
			wait(0.6)
			bav:remove()
		elseif key == "f" then
			for i=1, 4 do
				rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(0.1,0.05,-0.3)
				wait()
			end
			for i=1, 3 do
				rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.05,0.1,0.4)
				wait()
			end
			local throw = star:clone()
			throw.Parent = workspace
			throw.CanCollide = true
			throw.CFrame = star.CFrame * CFrame.new(0,0,-2)
			throw.CFrame = CFrame.new(throw.Position, mouse.Hit.p)
			throw.Velocity = throw.CFrame.lookVector * 230
			for i=1, 3 do
				rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.05,0.1,0.4)
				wait()
			end
			for i=1, 4 do
				rw.C0 = rw.C0 * CFrame.fromEulerAnglesXYZ(-0.1,-0.1,-0.3)
				wait()
			end
			rw.C0 = CFrame.new(0,0,0)
		end
	end)
end)

bin.Deselected:connect(function()
	rw.Part0 = nil
	rw.Part1 = nil
	star.Parent = game.Lighting
	speed = 0
end)
