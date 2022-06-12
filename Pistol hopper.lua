name = "xSoulStealerx"
me = game.Players[name]
char = me.Character
torso = char.Torso

if script.Parent.className ~= "HopperBin" then
hop = Instance.new("HopperBin")
hop.Parent = me.Backpack
hop.Name = "Pistol"
script.Parent = hop
end

sp = script.Parent

hold1 = Instance.new("Part")
hold1.Parent = char
hold1.Shape = "Ball"
hold1.Size = Vector3.new(1,1,1)
hold1.Transparency = 0
m = Instance.new("SpecialMesh")
m.Parent = hold1
m.Scale = Vector3.new(1.3,1.3,1.3)
m.MeshType = "Sphere"

hold2 = hold1:clone()
hold2.Parent = char

hw1 = Instance.new("Weld")
hw1.Parent = torso
hw1.Part0 = hw1.Parent
hw1.Part1 = hold1
hw1.C1 = CFrame.new(-1.5,-0.5,0)

hw2 = Instance.new("Weld")
hw2.Parent = torso
hw2.Part0 = hw2.Parent
hw2.Part1 = hold2
hw2.C1 = CFrame.new(1.5,-0.5,0)

rarm = char["Right Arm"]
larm = char["Left Arm"]

left = Instance.new("Weld")
left.Parent = hold2
left.Part0 = nil
left.Part1 = nil
left.C1 = CFrame.new(0,0.5,0)

right = Instance.new("Weld")
right.Parent = hold1
right.Part0 = nil
right.Part1 = nil
right.C1 = CFrame.new(0,0.5,0)

leftorig = CFrame.fromEulerAnglesXYZ(1.57,0,0.7) * CFrame.new(0.5,-0.9,0)
rightorig = CFrame.fromEulerAnglesXYZ(1.57,0,-0.04) * CFrame.new(-0.3,-0.3,0)
gunorig = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)

gunparts = {}

gun1 = Instance.new("Part")
gun1.Parent = game.Lighting
gun1.Name = "Handle"
gun1.formFactor = 0
gun1.Size = Vector3.new(1,1,1)
gun1.TopSurface = 0
gun1.BottomSurface = 0
gun1:BreakJoints()
table.insert(gunparts, gun1)
mesh1 = Instance.new("SpecialMesh")
mesh1.Parent = gun1
mesh1.MeshType = "Brick"
mesh1.Scale = Vector3.new(0.4,1.3,0.5)

gun2 = gun1:clone()
gun2.Parent = game.Lighting
gun2.Name = "Handle2"
gun2.Size = Vector3.new(1,2,1)
gun2:BreakJoints()
gun2.Mesh:remove()
table.insert(gunparts, gun2)
mesh2 = Instance.new("SpecialMesh")
mesh2.MeshType = "Brick"
mesh2.Parent = gun2
mesh2.Scale = Vector3.new(0.7,0.9,0.7)
gun3 = gun2:clone()
gun3.Parent = game.Lighting
gun3.Name = "Handle3"
gun3:BreakJoints()
gun3.BrickColor = BrickColor.new("Dark grey")
table.insert(gunparts, gun3)
gun3.Mesh.Scale = Vector3.new(0.74,0.8,0.74)
gun4 = gun2:clone()
gun4.Parent = game.Lighting
gun4.Name = "Handle4"
gun4.Size = Vector3.new(1,1,1)
gun4:BreakJoints()
gun4.BrickColor = BrickColor.new("Dark grey")
table.insert(gunparts, gun4)
gun4.Mesh:remove()
mesh4 = Instance.new("CylinderMesh")
mesh4.Scale = Vector3.new(0.34,0.2,0.34)
mesh4.Parent = gun4
gun5 = gun4:clone()
gun5.Parent = game.Lighting
gun5.Name = "Handle5"
gun5:breakJoints()
gun5.BrickColor = BrickColor.new("Really black")
table.insert(gunparts, gun5)
gun5.Mesh.Scale = Vector3.new(0.28,0.05,0.28)

coroutine.resume(coroutine.create(function()
	while true do
		wait()
		if run == true then
			for i=1, 8 do
				wait()
				left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)
				right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(0.35,0,0)
			end
			for i=1, 8 do
				wait()
				left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(0.35,0,0)
				right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)
			end
		end
	end
end))

function selected(mouse,key)
	char.Humanoid.Running:connect(function(speed)
		if speed <  1 then
			run = false
			left.C0 = leftorig
			right.C0 = rightorig
			wait(0.4)
			left.C0 = leftorig
			right.C0 = rightorig
		else
			run = true
			left.C0 = CFrame.fromEulerAnglesXYZ(1,0,0)
			right.C0 = CFrame.fromEulerAnglesXYZ(-1,0,0)
		end
	end)
	mouse.Button1Down:connect(function()
		local bullet = Instance.new("Part")
		bullet.Parent = workspace
		bullet.formFactor = 0
		bullet.Size = Vector3.new(1,1,1)
		bullet.CanCollide = false
		bullet.CFrame = CFrame.new(gun5.Position, mouse.Hit.p)
		bullet.CFrame = CFrame.new(bullet.Position + (bullet.CFrame.lookVector * 1), mouse.Hit.p)
		local m = Instance.new("SpecialMesh")
		m.Parent = bullet
		m.MeshType = "FileMesh"
		m.Scale = Vector3.new(0.45,0.45,0.3)
		m.MeshId = "http://www.roblox.com/asset/?id=2697549"
		m.TextureId = "http://www.roblox.com/asset/?id=2697544"
		local bv = Instance.new("BodyForce")
		bv.Parent = bullet
		bv.force = bullet.CFrame.lookVector * 6000
		bv.force = bv.force + Vector3.new(0,300,0)
		local tee = true
		bullet:BreakJoints()
		coroutine.resume(coroutine.create(function()
			while tee == true do
				wait()
				local op = bullet:clone()
				op.Parent = workspace
				op.Mesh.TextureId = "Clear"
				op.Transparency = 0.3
				op.BrickColor = BrickColor.new("New Yeller")
				op.Anchored = true
				op.Mesh.Scale = Vector3.new(0.4,0.4,3)
				coroutine.resume(coroutine.create(function()
					for i=1, 10 do
						wait()
						op.Transparency = op.Transparency + 0.08
					end
					op:remove()
				end))
			end
		end))
		coroutine.resume(coroutine.create(function()
			wait(4)
			tee = false
			bullet:remove()
		end))
		bullet.Touched:connect(function(hit)
			if hit.Parent.Name == name then return end
			local hum = hit.Parent:findFirstChild("Humanoid")
			if hum ~= nil then
				tee = false
				bullet:remove()
				hum.Health = hum.Health - 35
			end
		end)
		for i=1, 2 do
			wait()
			left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(0.1,0,0)
			right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(0.1,0,0)
		end
		for i=1, 2 do
			wait()
			left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(-0.1,0,0)
			right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(-0.1,0,0)
		end
	end)
	left.Part0 = left.Parent
	left.Part1 = larm
	left.C0 = leftorig
	right.Part0 = right.Parent
	right.Part1 = rarm
	right.C0 = rightorig
	gunweld = Instance.new("Weld")
	gunweld.Parent = rarm
	gunweld.Part0 = gunweld.Parent
	gunweld.Part1 = gun1
	gunweld.C1 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0.3,1.1,0.07)
	gunweld.C0 = gunorig
	gunweld2 = Instance.new("Weld")
	gunweld2.Parent = gun1
	gunweld2.Part0 = gunweld2.Parent
	gunweld2.Part1 = gun2
	gunweld2.C1 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,-0.67,0.5)
	gunweld3 = Instance.new("Weld")
	gunweld3.Parent = gun1
	gunweld3.Part0 = gunweld3.Parent
	gunweld3.Part1 = gun3
	gunweld3.C1 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(0,-0.73,0.3)
	gunweld4 = Instance.new("Weld")
	gunweld4.Parent = gun2
	gunweld4.Part0 = gunweld4.Parent
	gunweld4.Part1 = gun4
	gunweld4.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.9,0)
	gunweld5 = Instance.new("Weld")
	gunweld5.Parent = gun4
	gunweld5.Part0 = gunweld5.Parent
	gunweld5.Part1 = gun5
	gunweld5.C1 = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,-0.09,0)
	for i=1, #gunparts do
		gunparts[i].Parent = char
	end
end

function deselected()
	left.C0 = CFrame.new(0,0,0)
	left.Part0 = nil
	left.Part1 = nil
	right.C0 = CFrame.new(0,0,0)
	right.Part0 = nil
	right.Part1 = nil
	for i=1, #gunparts do
		gunparts[i].Parent = game.Lighting
	end
end

sp.Deselected:connect(deselected)
sp.Selected:connect(selected)


