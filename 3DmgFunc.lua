wait(0.25)
local q = nil
local e = nil
local a = nil
local b = nil
local ply = game.Players.LocalPlayer
local char = ply.Character
local mouse = ply:GetMouse()
local bp = Instance.new("BodyPosition",char.Torso)
local bg = Instance.new("BodyGyro",char.Torso)
local bgdest = Vector3.new()
local pfvalue = Instance.new("BoolValue",char)
local gas = nil
local numqe = 0
local numq = 0
local nume = 0
local nums = 0
local weightless = nil
bg.maxTorque = Vector3.new(0,0,0)
bp.maxForce = Vector3.new(0,0,0)
bp.P = 1500
mouse.KeyDown:connect(function(key)
	if key == "q" and not q and mouse.Target then
		if (mouse.Hit.p - char.Torso.Position).magnitude < 200 then
			pfvalue.Value = true
			a = mouse.Hit.p
			q = Instance.new("SelectionPointLasso",char)
			q.Color = BrickColor.new("Really black")
			q.Point = mouse.Hit.p
			q.Humanoid = char.Humanoid
			if char.Torso:FindFirstChild("Smoke") then
				game:GetService("Debris"):AddItem(char.Torso.Smoke,0)
			end
			if not weightless then
				weightless = Instance.new("BodyPosition",char.Head)
				weightless.maxForce = Vector3.new(0,10000,0)
				weightless.position = Vector3.new(0,1000,0)
				coroutine.resume(coroutine.create(function()
					local current = weightless
					wait(0.25)
					if current == weightless then
						weightless.maxForce = Vector3.new(0,5000,0)
					end
				end))
			end
		end
	elseif key == "e" and not e and mouse.Target then
		if (mouse.Hit.p - char.Torso.Position).magnitude < 200 then
			pfvalue.Value = true
			b = mouse.Hit.p
			e = Instance.new("SelectionPointLasso",char)
			e.Color = BrickColor.new("Really black")
			e.Point = mouse.Hit.p
			e.Humanoid = char.Humanoid
			if char.Torso:FindFirstChild("Smoke") then
				game:GetService("Debris"):AddItem(char.Torso.Smoke,0)
			end
			if not weightless then
				weightless = Instance.new("BodyPosition",char.Head)
				weightless.maxForce = Vector3.new(0,10000,0)
				weightless.position = Vector3.new(0,1000,0)
				coroutine.resume(coroutine.create(function()
					local current = weightless
					wait(0.25)
					if current == weightless then
						weightless.maxForce = Vector3.new(0,5000,0)
					end
				end))
			end
		end
	elseif key == " " and (q or e) then
		if q then
			game:GetService("Debris"):AddItem(q,0)
		end
		if e then
			game:GetService("Debris"):AddItem(e,0)
		end
		q,e = nil, nil
		bgdest = char.Torso.Position + (char.Torso.CFrame.lookVector * 125)
		gas = Instance.new("Smoke",char.Torso)
		gas.Size = 0.1
		gas.Opacity = 0.25
		if not weightless then
			weightless = Instance.new("BodyPosition",char.Head)
			weightless.maxForce = Vector3.new(0,10000,0)
			weightless.position = Vector3.new(0,1000,0)
			coroutine.resume(coroutine.create(function()
				local current = weightless
				wait(0.25)
				if current == weightless then
					weightless.maxForce = Vector3.new(0,5000,0)
				end
			end))
		end
	end
end)
mouse.KeyUp:connect(function(key)
	if key == "q" and q then
		if not e then
			pfvalue.Value = false
		end
		game:GetService("Debris"):AddItem(q,0)
		q = nil
		a = nil
		if weightless then
			game:GetService("Debris"):AddItem(weightless,0)
			weightless = nil
		end
	elseif key == "e" and e then
		if not q then
			pfvalue.Value = false
		end
		game:GetService("Debris"):AddItem(e,0)
		e = nil
		b = nil
		if weightless then
			game:GetService("Debris"):AddItem(weightless,0)
			weightless = nil
		end
	end
end)
pfvalue.Changed:connect(function()
	if pfvalue.Value == false then
		char.Humanoid.PlatformStand = false
		char["Left Leg"].CanCollide = false
		char["Right Leg"].CanCollide = false
		char["Left Arm"].CanCollide = false
		char["Right Arm"].CanCollide = false
	else
		char.Humanoid.PlatformStand = true
		char["Left Leg"].CanCollide = true
		char["Right Leg"].CanCollide = true
		char["Left Arm"].CanCollide = false
		char["Right Arm"].CanCollide = false
	end
end)
function grapple()
	wait()
	local pos = char.Torso.Position
	if q and e then
		local tab = {a.x,a.y,a.z,b.x,b.y,b.z}
		local x = {}
		numqe = numqe + 1
		local num = numqe
		for i = 1,3 do
			table.insert(x,(tab[i] + tab[i+3])/2)
		end
		bp.position = Vector3.new(unpack(x))
		bp.D = 10
		bp.maxForce = Vector3.new(4500 * (math.abs(pos.x-bgdest.x)/200) + 3000,4500 * (math.abs(pos.y-bgdest.y)/200) + 3000,4500 * (math.abs(pos.z-bgdest.z)/200) + 3000)
		wait(1)
		if num == numqe then
			bp.D = 0
		end
	elseif q then
		numq = numq + 1
		local num = numq
		bp.position = a
		bp.D = 10
		bp.maxForce = Vector3.new(4000 * (math.abs(pos.x-bgdest.x)/200) + 3000,4500 * (math.abs(pos.y-bgdest.y)/200) + 3000,4500 * (math.abs(pos.z-bgdest.z)/200) + 3000)
		bgdest = a
		bg.maxTorque = Vector3.new(5000,5000,5000)
		wait(1)
		if num == numq then
			bp.D = 0
		end
	elseif e then
		nume = nume + 1
		local num = nume
		bp.position = b
		bp.D = 10
		bp.maxForce = Vector3.new(4000 * (math.abs(pos.x-bgdest.x)/200) + 3000,4500 * (math.abs(pos.y-bgdest.y)/200) + 3000,4500 * (math.abs(pos.z-bgdest.z)/200) + 3000)
		bgdest = b
		bg.maxTorque = Vector3.new(5000,5000,5000)
		wait(1)
		if num == nume then
			bp.D = 0
		end
	elseif char.Torso:FindFirstChild("Smoke") then
		nums = nums + 1
		num = nums
		bp.position = bgdest
		bp.D = 10
		bp.maxForce = Vector3.new(4000 * (math.abs(pos.x-bgdest.x)/200) + 2000,4500 * (math.abs(pos.y-bgdest.y)/200) + 2000,4500 * (math.abs(pos.z-bgdest.z)/200) + 2000)
		bg.maxTorque = Vector3.new(6000,6000,6000)
		wait(1)
		if num == nums then
			bp.D = 0
		end
	else
		bp.maxForce = Vector3.new(0,0,0)
		bg.maxTorque = Vector3.new(0,0,0)
	end
end
mouse.KeyDown:connect(grapple)
mouse.KeyUp:connect(grapple)
while wait() do
	bg.cframe = CFrame.new(char.Torso.Position,bgdest)
end		