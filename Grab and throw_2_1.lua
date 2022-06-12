xs = "ace28545"
me = game.Players[xs]
ch = me.Character
to = ch.Torso
myhum = ch.Humanoid

if script.Parent.className ~= "HopperBin" then
	hop = Instance.new("HopperBin")
	hop.Parent = me.Backpack
	hop.Name = "GrabNThrow"
	script.Parent = hop
end

sp = script.Parent

p = Instance.new("Part")
p.Parent = ch
p.formFactor = 0
p.Shape = "Ball"
p.Size = Vector3.new(1,1,1)
p.Anchored = false
p.Transparency = 1
p:BreakJoints()
m = Instance.new("SpecialMesh")
m.Parent = p
m.MeshType = "Sphere"
m.Scale = Vector3.new(1.3,1.3,1.3)
p2 = p:clone()
p2.Parent = ch
p2:BreakJoints()

w = Instance.new("Weld")
w.Parent = to
w.Part0 = w.Parent
w.Part1 = p
w.C1 = CFrame.new(-1.5,-0.5,0)
w2 = Instance.new("Weld")
w2.Parent = to
w2.Part0 = w2.Parent
w2.Part1 = p2
w2.C1 = CFrame.new(1.5,-0.5,0)

larm = ch["Left Arm"]
rarm = ch["Right Arm"]

right = Instance.new("Weld")
right.Parent = p
right.Part0 = nil
right.Part1 = nil
right.C1 = CFrame.new(0,0.5,0)

left = Instance.new("Weld")
left.Parent = p2
left.Part0 = nil
left.Part1 = nil
left.C1 = CFrame.new(0,0.5,0)

origin = CFrame.fromEulerAnglesXYZ(0,0,0) * CFrame.new(0,0,0)

using = false
enabled = true
mode = 0

function toch(hit)
	if enabled == true then return end
	local hum = hit.Parent:findFirstChild("Humanoid")
	if hum ~= nil then
		local torso = hit.Parent:findFirstChild("Torso")
		if torso ~= nil then
			enabled = true
			hum.Sit = true
			local weld = Instance.new("Weld")
			weld.Parent = rarm
			weld.Part0 = weld.Parent
			weld.Part1 = torso
			weld.C1 = CFrame.fromEulerAnglesXYZ(1.57,0,0) * CFrame.new(1.5,1.5,0)
			myhum.WalkSpeed = 0
			to.Anchored = true
			for i=1, 10 do
				wait()
				left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(0.2,0,0)
				right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(0.2,0,0)
			end
			wait(0.5)
			weld:remove()
			local duh = false
			torso.Touched:connect(function(hit)
				if duh == true then return end
				duh = true
				if hit.Parent.Name == xs then return end
				hum.Health = hum.Health - 10
			end)
			torso.Velocity = to.CFrame.lookVector * Vector3.new(100,10,100)
			coroutine.resume(coroutine.create(function()
				for i=1, 20 do
					wait(0.03)
					local pa = torso.Parent:GetChildren()
					for i=1, #pa do
						if pa[i].className == "Part" then
							local k = pa[i]:clone()
							k.Parent = workspace
							k.Anchored = true
							k.CanCollide = false
							k.BrickColor = BrickColor.new("Black")
							k.Transparency = 0.7
							coroutine.resume(coroutine.create(function()
								wait(0.05)
								for i=1, 10 do
									wait()
									k.Transparency = k.Transparency + 0.03
								end
								k:remove()
							end))
						end
					end
				end
			end))
			for i=1, 7 do
				wait()
				left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(-0.5,0,0)
				right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(-0.5,0,0)
			end
			wait(0.02)
			myhum.WalkSpeed = 16
			to.Anchored = false
			wait(0.1)
			using = false
			right.Part0 = nil
			right.Part1 = nil
			left.Part0 = nil
			left.Part1 = nil
			left.C0 = origin
			right.C0 = origin
		end
	end
end

rarm.Touched:connect(toch)
larm.Touched:connect(toch)


function select(mouse)
	mouse.Button1Down:connect(function()
		if using == true then return end
		using = true
		enabled = false
		left.Part0 = left.Parent
		left.Part1 = larm
		right.Part0 = right.Parent
		right.Part1 = rarm
		for i=1, 10 do
			wait()
			left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(0.15,0,0)
			right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(0.15,0,0)
		end
		wait(1)
		if enabled == true then return end
		enabled = true
		for i=1, 10 do
			wait()
			left.C0 = left.C0 * CFrame.fromEulerAnglesXYZ(-0.15,0,0)
			right.C0 = right.C0 * CFrame.fromEulerAnglesXYZ(-0.15,0,0)
		end
		using = false
		right.Part0 = nil
		right.Part1 = nil
		left.Part0 = nil
		left.Part1 = nil
		left.C0 = origin
		right.C0 = origin
	end)
end

sp.Selected:connect(select)

