	--[[ UBERIFY! Made By: WafflesAreVeryGood If leaked, thanks a fucking lot.]]--
--[[
	q = Left punch C
	e = Right punch C
	r = Beam C
	t = Double beam C
	y = Pick up then throw C
	p = Play music C
	l = Stop music C
	f = Stop scripts near you Failure.
	h = Barrage C
	j = Enable/Disable UBERIFY! C(maybe)
	k = Backflip C
	z = Inincerate C
	x = Record frame C
	c = Play C
	v = Shield C
	b = EX-U-PLO-SION! C
	n = Dash attack C
	m = Huge jump C
	g = Eye shot C
	shift = Sprint with cool effect and stuff
	
--]]
local plr = game.Players.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()
local torso = char.Torso
local rs = torso["Right Shoulder"]
local ls = torso["Left Shoulder"]
local rh = torso["Right Hip"]
local lh = torso["Left Hip"]
local rj = char.HumanoidRootPart.RootJoint
local neck = torso.Neck
local animpose = "Idle"
local attacking = false
local cananim = true
local rage = false
local shield = nil
local sprint = false
local canrage = true
local legs = false
local bc = char:WaitForChild("Body Colors")
local multiplier = 1
local lac = char["Body Colors"].LeftArmColor
local rac = char["Body Colors"].RightArmColor
local rlc = char["Body Colors"].RightArmColor
local llc = char["Body Colors"].LeftLegColor
local hc = char["Body Colors"].HeadColor
local tc = char["Body Colors"].TorsoColor
local humanoid = char:FindFirstChildOfClass("Humanoid")
local huge = Vector3.new(math.huge,math.huge,math.huge)
local mobs = Instance.new("Sound", char)
mobs.SoundId = "rbxassetid://189224548"
mobs.Looped = true
mobs.Volume = 3
mobs:Play()
local shirt = nil
local pants = nil
local speed = 100
local push = 100
if char:FindFirstChild("Animate") then char.Animate:Destroy() end
if char:FindFirstChildOfClass("Humanoid"):FindFirstChild("Animator") then char:FindFirstChildOfClass("Humanoid").Animator:Destroy() end
local particlecolor = ColorSequence.new(Color3.new(1,1,1))
function swait(t)
	if t == nil or t == 0 then
		game:service('RunService').Stepped:wait(0)
	else
		for i = 0, t do
			game:service('RunService').Stepped:wait(0)
		end
	end
end
function hurt(hit, dmg)
	if hit.Parent then
		if hit.Parent.Name == "box" then print("bocks!11") hit.Parent:Destroy() end
		local hum = hit.Parent:FindFirstChildOfClass("Humanoid")
		if hum then
			if hum.Parent.Name ~= plr.Name then
				if dmg == "Kill" or hum.Health > 100000 then
					hit.Parent:BreakJoints()
					return true
				else
					if math.random(0, 100) == 50 then
						hum.Health = hum.Health - dmg*multiplier*2.5
					else
						hum.Health = hum.Health -dmg*multiplier
					end
					return true
				end
			end
		end
	end
end
function soundeffect(id, volume, speed, parent)
	spawn(function()
	local s = Instance.new("Sound")
	s.SoundId = id
	s.Volume = volume
	s.PlaybackSpeed = speed
	s.Parent = parent
	s:Play()
	repeat wait() until not s.Playing
	s:Destroy()
	end)
end
function gethum(obj)
	if obj.Parent then
		if obj.Parent:FindFirstChild("Humanoid") then
			if obj.Parent.Name ~= plr.Name then
				return obj.Parent:FindFirstChildOfClass("Humanoid")
			end
		end
	end
end
function smooth(obj)
	local sides = {"Left", "Right", "Top", "Bottom", "Front", "Back"}
	for i,v in pairs(sides) do
		obj[v.."Surface"] = "SmoothNoOutlines"
	end
end
function fade(obj, dest, grow)
	spawn(function()
		local oldcf = obj.CFrame
		for i = 0, 10 do
			if grow then
				obj.Size = obj.Size +Vector3.new(1,1,1)
				obj.CFrame = oldcf
			end
			obj.Transparency = obj.Transparency +0.1
			swait()
		end
		if dest then
		obj:Destroy()
		end
	end)
end
local keyamount = 0
mouse.KeyDown:connect(function(key)
	if key == "w" or key == "a" or key == "s" or key == "d" then
		keyamount = keyamount + 1
		if animpose ~= "Falling" then
		if keyamount > 3 then keyamount = 0 end
		animpose = "Walking"
		end
	end
end)
mouse.KeyUp:connect(function(key)
	if key == "w" or key == "a" or key == "s" or key == "d" then
		keyamount = keyamount - 1
		if keyamount < 0 then keyamount = 0 end
		if keyamount == 0 then
			animpose = "Idle"
		end
	end
end)
wait(1)
for i,v in pairs(char:children()) do
	if v:IsA("Accessory") then
		v:Destroy()
	end
end
local p = Instance.new("Part")
p.CanCollide = false
p.Size = Vector3.new(0.2,0.2,0.2)
smooth(p)
p.Material = "Neon"
p.BrickColor = BrickColor.new("Institutional white")
p.CFrame = char.Head.CFrame
p.Name = "Right Eye"
local m = Instance.new("SpecialMesh", p)
m.MeshType = "Sphere"
m.Scale = Vector3.new(0.7,1.1,0.7)
local p2 = p:Clone()
p2.Name = "Left Eye"
local reye = p
local leye = p2
local reyeweld = w
local leyeweld = w2
reye.Parent = char
leye.Parent = char
local w2 = Instance.new("Weld", p2)
w2.Part0 = p2
w2.Part1 = char.Head
w2.C0 = CFrame.new(0.109999999, -0.25, 0.550000012, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local w = Instance.new("Weld", p)
w.Part0 = p
w.Part1 = char.Head
w.C0 = CFrame.new(-0.109999999, -0.25, 0.550000012, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local p = Instance.new("Part")
p.Size = Vector3.new(0.2,0.2,0.2)
p.CanCollide = false
p.CFrame = char.Head.CFrame
p.Transparency = 1
p.Name = "Effect"
p.Parent = char
local w = Instance.new("Weld", p)
w.Name = "justaweld"
w.Part0 = p
w.Part1 = char.Head
w.C0 = CFrame.new(-0.109999999, -0.25, 0.550000012, 1, 0, 0, 0, 1, 0, 0, 0, 1)
local effect = Instance.new("ParticleEmitter")
effect.Color = ColorSequence.new(Color3.new(250/255,80/255,1/255))
effect.LightEmission = 0.7
effect.Size = NumberSequence.new(0.3)
effect.Texture = "rbxassetid://243664672"
effect.Transparency = NumberSequence.new(0.5)
effect.Lifetime = NumberRange.new(1.5)
effect.Rate = 500
effect.Speed = NumberRange.new(3)
effect.Enabled = false
effect.Parent = p
local effectp = p
mouse.KeyDown:connect(function(key)
	if key == "p" then
		if not char:FindFirstChild("Sound") then
			mobs = Instance.new("Sound", char)
			mobs.SoundId = "rbxassetid://189224548"
			mobs.Looped = true
			mobs.Volume = 3
		end
		mobs:Stop()
		mobs:Play()
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "l" then
		if mobs then
			mobs:Stop()
		end
		a = function(b)
			for i,v in pairs(b:children()) do
				if v:IsA("Sound") and v.Parent ~= char then
					v:Destroy()
				end
				a(v)
			end
		end
		a(workspace)
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "j" and not rage and canrage then
		rage = true
		canrage = false
		local truenumber = 0
		for i = 0, 1 do
			reye.Mesh.Scale = reye.Mesh.Scale:Lerp(Vector3.new(0.7,0,0.7),0.6)
			leye.Mesh.Scale = reye.Mesh.Scale
			wait()
		end
		humanoid.MaxHealth = 100000 humanoid.Name = "yahaha"
                wait()
		humanoid.Health = 100000
		multiplier = 5
		push = 200
		reye.BrickColor = BrickColor.new("Deep orange")
		leye.BrickColor = BrickColor.new("Deep orange")
		wait(0.1)
		mobs.SoundId = "rbxassetid://305355374"
		for i = 0, 1 do
			reye.Mesh.Scale = reye.Mesh.Scale:Lerp(Vector3.new(0.7,1.1,0.7),0.6)
			leye.Mesh.Scale = reye.Mesh.Scale
			wait()
		end
		wait(0.3)
		effect.Enabled = true
		canrage = true
		particlecolor = ColorSequence.new(Color3.new(250/255,80/255,1/255))
		repeat wait()
			truenumber = truenumber+0.05
			local num = math.sin(truenumber)*25
			effectp.justaweld.C0 = CFrame.new(effectp.justaweld.C0.p) *CFrame.Angles(math.rad(0),math.rad(0),math.rad(num))
		until not rage
	end
	if key == "j" and rage and canrage then
		canrage = false
		for i = 0, 1 do
			reye.Mesh.Scale = reye.Mesh.Scale:Lerp(Vector3.new(0.7,0,0.7),0.6)
			leye.Mesh.Scale = reye.Mesh.Scale
			wait()
		end
		rage = false
		reye.BrickColor = BrickColor.new("Institutional white")
		leye.BrickColor = BrickColor.new("Institutional white")
		wait(0.1)
		mobs.SoundId = "rbxassetid://189224548"
		for i = 0, 1 do
			reye.Mesh.Scale = reye.Mesh.Scale:Lerp(Vector3.new(0.7,1.1,0.7),0.6)
			leye.Mesh.Scale = reye.Mesh.Scale
			wait()
		end
		effect.Enabled = false
		canrage = true
		particlecolor = ColorSequence.new(Color3.new(1,1,1))
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "g" and not attacking then
		attacking = true
		local p = Instance.new("Part")
		p.Transparency = 1
		p.Anchored = true
		p.Size = Vector3.new(2,2,2)
		p.CanCollide = false
		local pe = Instance.new("ParticleEmitter", p)
		pe.Color = particlecolor
		pe.LightEmission = 0.7
		pe.Size = NumberSequence.new(2)
		pe.Texture = "rbxassetid://243664672"
		pe.Transparency = NumberSequence.new(0.5)
		pe.Lifetime = NumberRange.new(0.1)
		pe.Rate = 500
		pe.Speed = NumberRange.new(3)
		p.CFrame = reye.CFrame
		p.Parent = workspace
		p.Anchored = false
		local bv = Instance.new("BodyVelocity", p)
		bv.MaxForce = huge
		bv.Velocity = CFrame.new(char.Torso.Position, mouse.Hit.p).lookVector*push
		p.Touched:connect(function(hit)
			hurt(hit, math.random(5,10))
		end)
		game.Debris:AddItem(p, 4)
		attacking = false
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "q" and not attacking then
		attacking = true
		legs = true
		local con = char["Left Arm"].Touched:connect(function(hit)
			if hurt(hit, math.random(15,30)) then
				local bv = Instance.new("BodyVelocity")
				bv.MaxForce = huge
				bv.Velocity = -char["Left Arm"].CFrame.upVector*50
				bv.Parent = hit
				game.Debris:AddItem(bv, 0.5)
			end
		end)
		for i = 0, 0.7, 0.1 do
			ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, -0.0348995551, 0.258661419, -0.965337634, -0.99939239, -0.00903249159, 0.0337103829, 1.15483999e-007, 0.965927243, 0.258819371), 0.8)
			rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, 0, -0.0348994955, 0.999390841, 0, 0.999390841, 0.0348994955, -1, 0, 0), 0.8)
			neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -0.94551903, 0.325568229, 0, 0, 0, 1, 0.325568229, 0.94551903, 0), 0.8)
			rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -0.920505404, -0.390731245, -0, 0, 0, 1, -0.390731245, 0.920505404, 0), 0.8)
			wait()
		end
		con:disconnect()
		wait(0.05)
		attacking = false
		legs = false
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "e" and not attacking then
		attacking = true
		legs = true
		local con = char["Right Arm"].Touched:connect(function(hit)
			if hurt(hit, math.random(15,30)) then
				local bv = Instance.new("BodyVelocity")
				bv.MaxForce = huge
				bv.Velocity = -char["Right Arm"].CFrame.upVector*50
				bv.Parent = hit
				game.Debris:AddItem(bv, 0.5)
			end
		end)
		for i = 0, 0.7, 0.1 do
			ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, 0, 0.0523359589, -0.998629689, 0, 0.998629689, 0.0523359589, 1, 0, 0), 0.8)
			rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, -0.0348783135, 0.00121797505, 0.99939096, 0.998783648, -0.0348783135, 0.034899503, 0.0348993987, 0.999392271, 0), 0.8)
			neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -0.956305265, -0.292371809, 0, 0, 0, 1, -0.292371809, 0.956305265, 0), 0.8)
			rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -0.913546026, 0.406736761, 0, 0, 0, 1, 0.406736761, 0.913546026, 0), 0.8)
			wait()
		end
		con:disconnect()
		wait(0.05)
		attacking = false
		legs = false
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "r" and not attacking then
		legs = true
		attacking = true
		local p = Instance.new("Part")
		p.CanCollide = false
		p.Anchored = true
		smooth(p)
		p.Transparency = 1
		p.Size = Vector3.new(0.2,0.2,0.2)
		local pe = Instance.new("ParticleEmitter", p)
		pe.Color = particlecolor
		pe.LightEmission = 0.7
		pe.Size = NumberSequence.new(2)
		pe.Texture = "rbxassetid://243664672"
		pe.Transparency = NumberSequence.new(0.5)
		pe.Lifetime = NumberRange.new(0.3)
		pe.Rate = 500
		pe.Speed = NumberRange.new(3)
		local p2 = p:Clone()
		p.Parent = char
		p2.Parent = char
		spawn(function()
			local num = 0
			repeat swait()
				num = num + 0.5
				local sin = math.sin(num)*2
				local cos = math.cos(num)*2
				p.CFrame = char["Right Arm"].CFrame *CFrame.new(sin,0,cos) *CFrame.new(0,-2,0)
			until not attacking
			p:Destroy()
			p2:Destroy()
		end)
		for i = 0, 1, 0.1 do
			ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, 0, 0.0523359589, -0.998629689, 0, 0.998629689, 0.0523359589, 1, 0, 0), 0.4)
			rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, -0.0348783135, 0.00121797505, 0.99939096, 0.998783648, -0.0348783135, 0.034899503, 0.0348993987, 0.999392271, 0), 0.4)
			neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -0.956305265, -0.292371809, 0, 0, 0, 1, -0.292371809, 0.956305265, 0), 0.4)
			rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -0.913546026, 0.406736761, 0, 0, 0, 1, 0.406736761, 0.913546026, 0), 0.4)
			wait()
		end
		wait(0.5)
		for i = 0, 50 do
			local p = Instance.new("Part")
			p.Transparency = 1
			p.Size = Vector3.new(5,5,5)
			p.Name = "ignore"
			p.CanCollide = false
			p.CFrame = char["Right Arm"].CFrame
			smooth(p)
			local pe = Instance.new("ParticleEmitter")
			pe.Color = particlecolor
			pe.LightEmission = 0.7
			pe.Size = NumberSequence.new(5)
			pe.Texture = "rbxassetid://243664672"
			pe.Transparency = NumberSequence.new(0.5)
			pe.Lifetime = NumberRange.new(0.3)
			pe.Rate = 500
			pe.Speed = NumberRange.new(3)
			pe.Parent = p
			p.Parent = workspace
			p.Touched:connect(function(hit)
				if hit.Name ~= "ignore" then
					hurt(hit, 50)
				end
			end)
			local bv = Instance.new("BodyVelocity")
			bv.MaxForce = huge
			bv.Velocity = CFrame.new(char["Right Arm"].Position, mouse.Hit.p).lookVector*push
			bv.Parent = p
			game.Debris:AddItem(p, 5)
			swait()
		end
		attacking = false
		legs = false
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "t" and not attacking then
		attacking = true
		legs = true
		for i = 1, 2 do
			local arm = ""
			if i == 1 then arm = "Right Arm" end
			if i == 2 then arm = "Left Arm" end
			local p = Instance.new("Part")
			p.CanCollide = false
			p.Anchored = true
			smooth(p)
			p.Transparency = 1
			p.Size = Vector3.new(0.2,0.2,0.2)
			local pe = Instance.new("ParticleEmitter", p)
			pe.Color = particlecolor
			pe.LightEmission = 0.7
			pe.Size = NumberSequence.new(2)
			pe.Texture = "rbxassetid://243664672"
			pe.Transparency = NumberSequence.new(0.5)
			pe.Lifetime = NumberRange.new(0.3)
			pe.Rate = 500
			pe.Speed = NumberRange.new(3)
			local p2 = p:Clone()
			p.Parent = char
			p2.Parent = char
			spawn(function()
				local num = 0
				repeat swait()
					num = num + 0.5
					local sin = math.sin(num)*2
					local cos = math.cos(num)*2
					p.CFrame = char[arm].CFrame *CFrame.new(sin,0,cos) *CFrame.new(0,-2,0)
				until not attacking
				p:Destroy()
				p2:Destroy()
			end)
		end
		for i = 0, 1, 0.1 do
			ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, -0.0348517336, -0.0018264954, -0.999390841, -0.998022854, -0.0523041189, 0.0348994955, -0.0523358807, 0.998631001, 0), 0.4)
			rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, -0.0348517336, 0.0018264954, 0.999390841, 0.998022854, -0.0523041189, 0.0348994955, 0.0523358211, 0.998630881, 0), 0.4)
			lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, 0, 0.0348994955, -0.999390841, 0, 0.999390841, 0.0348994955, 1, 0, 0), 0.4)
			rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, 0, -0.0348994955, 0.999390841, 0, 0.999390841, 0.0348994955, -1, 0, 0), 0.4)
			neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), 0.4)
			rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), 0.4)
			wait()
		end
		for i = 0, 50 do
			local arm = ""
			if i%2 == 0 then
				arm = "Right Arm"
			else
				arm = "Left Arm"
			end
			local p = Instance.new("Part")
			p.Transparency = 1
			p.Size = Vector3.new(5,5,5)
			p.Name = "ignore"
			p.CanCollide = false
			p.CFrame = char[arm].CFrame
			smooth(p)
			local pe = Instance.new("ParticleEmitter")
			pe.Color = particlecolor
			pe.LightEmission = 0.7
			pe.Size = NumberSequence.new(2)
			pe.Texture = "rbxassetid://243664672"
			pe.Transparency = NumberSequence.new(0.5)
			pe.Lifetime = NumberRange.new(0.2)
			pe.Rate = 500
			pe.Speed = NumberRange.new(3)
			pe.Parent = p
			p.Parent = workspace
			p.Touched:connect(function(hit)
				if hit.Name ~= "ignore" then
					hurt(hit, 10)
				end
			end)
			local bv = Instance.new("BodyVelocity")
			bv.MaxForce = huge
			bv.Velocity = CFrame.new(char[arm].Position, mouse.Hit.p).lookVector*push
			bv.Parent = p
			game.Debris:AddItem(p, 5)
			swait()
		end
		wait(0.5)
		attacking = false
		legs = false
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "y" and not attacking then
		attacking = true
		legs = true
		for i = 0, 0.7, 0.1 do
			ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, 0, 0.0348994955, -0.999390841, 0, 0.999390841, 0.0348994955, 1, 0, 0), 0.7)
			rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, -0.0347083807, -0.321920633, 0.946130574, 0.993917823, -0.110135622, -0.00101229548, 0.104528494, 0.940340519, 0.323785156), 0.7)
			neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -0.984808087, 0.173648223, 0, 0, 0, 1, 0.173648223, 0.984808087, 0), 0.7)
			rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -0.96592617, -0.258819103, -0, 0, 0, 1, -0.258819103, 0.96592617, 0), 0.7)
			wait()
		end
		local w = nil
		scon = char["Right Arm"].Touched:connect(function(hit)
			if gethum(hit) then
				if hit.Parent:FindFirstChild("Head") then
					w = Instance.new("Weld")
					w.Part0 = char["Right Arm"]
					w.Part1 = hit.Parent.Head
					w.C0 = CFrame.new(0,-2,0)
					w.Parent = hit.Parent.Head
					scon:disconnect()
					scon = nil
				end
			end
		end)
		for i = 0, 0.7, 0.1 do
			ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, 0, 0.0348994955, -0.999390841, 0, 0.999390841, 0.0348994955, 1, 0, 0), 0.8)
			rs.C0 = rs.C0:Lerp(CFrame.new(0.779308438, 0.539296746, -0.44693622, -0.0347083807, 0.441383421, 0.896648288, 0.993917823, -0.0785935149, 0.0771619156, 0.104528494, 0.89387244, -0.435970813), 0.8)
			neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -0.984808445, -0.173648283, 0, 0, 0, 1, -0.173648283, 0.984808445, 0), 0.8)
			rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -0.961262584, 0.275637597, 0, 0, 0, 1.00000012, 0.275637567, 0.961262703, 0), 0.8)
			wait()
		end
		local save = char.Torso.CFrame
		for i = 0, 0.4, 0.1 do
			ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, 0, 0.0348994955, -0.999390841, 0, 0.999390841, 0.0348994955, 1, 0, 0), 0.6)
			rs.C0 = rs.C0:Lerp(CFrame.new(1.50524855, 0.565971315, -0.459527433, -0.0347083807, -0.999394238, 0.00364828855, 0.993917823, -0.0348996557, -0.104465209, 0.104528494, 5.77419996e-008, 0.994526088), 0.6)
			neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -0.874620974, 0.484810293, 0, 0, 0, 1, 0.484810293, 0.874620974, 0), 0.6)
			rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -0.798636913, -0.601815939, 0, 0, 0, 1.00000012, -0.601815999, 0.798636913, 0), 0.6)
			wait()
		end
		if w then
			if w.Parent then
				local character = w.Parent.Parent
				character.Head.CanCollide = false
				w:Destroy()
				local bv = Instance.new("BodyVelocity")
				bv.MaxForce = huge
				bv.Velocity = -save.lookVector*push
				bv.Parent = character.Torso
				game.Debris:AddItem(bv, 0.5)
				spawn(function()
					wait(0.25)
					character.Head.CanCollide = true
				end)
				character:FindFirstChildOfClass("Humanoid").PlatformStand = false
			end
		end
		wait(0.1)
		if scon then scon:disconnect() end
		attacking = false
		legs = false
	end
end)
local deb = false
mouse.KeyDown:connect(function(key)
	if key == "h" and not deb and not attacking then
		deb = true
		for i = 0, 10 do
			spawn(function()
				local p = Instance.new("Part")
				p.Anchored = true
				p.CanCollide = false
				p.CFrame = char.Torso.CFrame *CFrame.new(math.random(-5,5),-10,math.random(-5,5))
				smooth(p)
				p.BrickColor = BrickColor.DarkGray()
				p.Material = Enum.Material.Slate
				p.Size = Vector3.new(1,1,1)
				p.Transparency = 1
				local pe = Instance.new("ParticleEmitter")
				pe.Color = particlecolor
				pe.LightEmission = 0.7
				pe.Size = NumberSequence.new(1)
				pe.Texture = "rbxassetid://243664672"
				pe.Transparency = NumberSequence.new(0.5)
				pe.Lifetime = NumberRange.new(0.2)
				pe.Rate = 500
				pe.Speed = NumberRange.new(3)
				pe.Parent = p
				p.Parent = workspace
				local endcf = p.CFrame *CFrame.new(0,30,0)
				for i = 0, 20 do
					p.CFrame = p.CFrame:Lerp(endcf, 0.3)
					wait()
				end
				local z = Instance.new("Part")
				z.CFrame = p.CFrame
				z.CFrame = CFrame.new(z.Position, mouse.Hit.p)
				local bv = Instance.new("BodyVelocity", p)
				bv.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
				bv.Velocity = z.CFrame.lookVector*140
				p.Anchored = false
				z:Destroy()
				p.CanCollide = false
				local connection
				spawn(function()
					local angle = CFrame.Angles(math.rad(math.random(-10,10)),math.rad(math.random(-10,10)),math.rad(math.random(-10,10)))
					repeat wait()
						p.CFrame = p.CFrame *angle
					until not p or p.CanCollide
				end)
				connection = p.Touched:connect(function(hit)
					hurt(hit, math.random(5,5))
					if not hit.Anchored and hit.Parent.Name ~= plr.Name and hit.Parent.ClassName ~= "Accessory" then
						p.CanCollide = true
					end
				end)
				game.Debris:AddItem(p, 5)
			end)
			wait()
			deb = false
		end
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "k" and not attacking then
		attacking = true
		for i = 0, 0.7, 0.1 do
			ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, 0, 0.0697564781, -0.997564137, 0, 0.997564137, 0.0697564781, 1, 0, 0), 0.7)
			rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, 0, -0.0697564855, 0.997564256, 0, 0.997564256, 0.0697564855, -1, 0, 0), 0.7)
			lh.C0 = lh.C0:Lerp(CFrame.new(-1, -0.915699959, -0.141025871, 0, 0, -1, 0.838671386, 0.544639707, 0, 0.544639707, -0.838671386, 0), 0.7)
			rh.C0 = rh.C0:Lerp(CFrame.new(1, -0.399999917, -0.700000048, 0, 0, 1, 0.224951148, 0.974370599, 0, -0.974370599, 0.224951148, 0), 0.7)
			neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), 0.7)
			rj.C0 = rj.C0:Lerp(CFrame.new(0, -0.700000048, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), 0.7)
			wait()
		end
		local bv = Instance.new("BodyVelocity")
		bv.MaxForce = huge
		bv.Velocity = -char.Torso.CFrame.lookVector*100
		bv.Velocity = bv.Velocity +Vector3.new(0,100,0)
		bv.Parent = char.Torso
		game.Debris:AddItem(bv, 0.5)
		repeat
			ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, 0, 0.121869355, -0.99254632, 0, 0.99254632, 0.121869355, 1, 0, 0), 0.2)
			rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, 0, -0.13917312, 0.99026823, 0, 0.99026823, 0.13917312, -1, -0, 0), 0.2)
			lh.C0 = lh.C0:Lerp(CFrame.new(-1, -0.599999905, -0.400000006, -0, -0, -1, 0, 1, 0, 1, 0, 0), 0.2)
			rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, 0, 0, 1, -0.529919565, 0.848048747, 0, -0.848048747, -0.529919565, 0), 0.2)
			neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1.00000024, -1.80731718e-009, 4.5061474e-010, 0, 0.241921946, 0.970296025, -1.86264515e-009, 0.970296264, -0.241922006), 0.2)
			rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), 0.2)
			wait()
		until char.HumanoidRootPart.Velocity.Y < 0
		local num2 = 0.5
		local bv = Instance.new("BodyForce")
		bv.Force = -char.Torso.CFrame.lookVector*1000
		bv.Parent = char.Torso
		repeat
			if num2 < 5 then
				num2 = num2+0.5
			end
			ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, -0.0321390443, -0.899457872, -0.435827494, -0.903263509, 0.212814748, -0.37259686, 0.427884579, 0.381691694, -0.819286048), 0.2)
			rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, 0.166612521, 0.861375272, 0.47987023, 0.814885736, 0.153724328, -0.558868229, -0.555161953, 0.484153807, -0.67630893), 0.2)
			lh.C0 = lh.C0:Lerp(CFrame.new(-0.988398254, -0.309396505, -0.610682189, 0.00854844693, 0.0146014411, -0.999856889, 0.498114854, 0.866946518, 0.0169191808, 0.867069304, -0.498188108, 0.00013788142), 0.2)
			rh.C0 = rh.C0:Lerp(CFrame.new(0.988217235, -0.304208815, -0.86811024, 0.00891196821, -0.0143678738, 0.999857128, -0.528013527, 0.849068403, 0.0169073474, -0.849189758, -0.528088629, -1.95365774e-005), 0.2)
			neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0.788011312, 0.615662038, 0, 0.61566186, -0.788011372), 0.2)
			rj.C0 = rj.C0:Lerp(rj.C0 *CFrame.Angles(math.rad(-(10*num2)),0,0), 0.5)
			wait()
		until char.HumanoidRootPart.Velocity.Y >= -3
		bv:Destroy()
		attacking = false
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "z" and not attacking then
		attacking = true
		local p = Instance.new("Part")
		p.Anchored = true
		smooth(p)
		p.Material = "Neon"
		local bc = BrickColor.new("Deep orange")
		if particlecolor == ColorSequence.new(Color3.new(1,1,1)) then
			bc = BrickColor.new("Institutional White")
		end
		p.BrickColor = bc
		local m = Instance.new("SpecialMesh", p)
		m.MeshType = "Sphere"
		p.Size = Vector3.new(1,1,1)
		p.CFrame = char.Torso.CFrame
		p.CanCollide = false
		local pe = Instance.new("ParticleEmitter")
		pe.Color = particlecolor
		pe.LightEmission = 0.7
		pe.Size = NumberSequence.new(3)
		pe.Texture = "rbxassetid://243664672"
		pe.Transparency = NumberSequence.new(0.5)
		pe.Lifetime = NumberRange.new(5)
		pe.Rate = 500
		pe.Speed = NumberRange.new(50)
		pe.VelocitySpread = 360
		pe.Parent = p
		p.Parent = workspace
		local rate = 5
		local oldcf = p.CFrame
		local con = p.Touched:connect(function(hit)
			if hit.Parent then
				if hit.Anchored == false then
					if hit.Parent.Name ~= plr.Name then
						if not hit.Parent:IsA("Accessory") then
							fade(hit, true)
						end
					end
				end
			end
		end)
		attacking = false
		for i = 0, 10*rate do
			p.Size = p.Size +Vector3.new(5,5,5)/rate
			p.Transparency = p.Transparency+0.1/rate
			p.CFrame = oldcf
			swait()
		end
		pe.Enabled = false
		con:disconnect()
		game.Debris:AddItem(p, 5)
	end
end)
local timetravel = false
local recording = false
local frames = 0
local objects = 0
local data = {
	["Objects"] = {
		
	}
}
function animate()
	a = function(b)
		for i,v in pairs(b:children()) do
			if v:IsA("BasePart") then
				if v.Anchored == false then
					local val = Instance.new("StringValue", v)
					val.Name = "Anchoredz"
					v.Anchored = true
				end
			end
			a(v)
		end
	end
	a(workspace)
end
function unanimate()
	a = function(b)
		for i,v in pairs(b:children()) do
			if v:IsA("BasePart") then
				if v:FindFirstChild("Anchoredz") then
					v.Anchoredz:Destroy()
					v.Anchored = false
				end
			end
			a(v)
		end
	end
	a(workspace)
end
mouse.KeyDown:connect(function(key)
	if key == "c" and not timetravel then
		timetravel = true
		local currentframe = frames+1
		animate(true)
		for i = 1, frames do
			currentframe = currentframe - 1
			local currentobj = 0
			for i = 1, objects do
				currentobj = currentobj + 1
				obj = data["Objects"]["obj"..currentobj]
				if obj["Object"] then
					if obj["Frame"..currentframe] then
						obj["Object"].CFrame = obj["Frame"..currentframe]["CFrame"]
					end
				end
			end
			wait()
		end
		unanimate()
		timetravel = false
		objects = 0
		frames = 0
		data = {
			["Objects"] = {
				
			}
		}
		
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "x" and not recording and not timetravel then
		recording = true
		if not timetravel and recording then
			frames = frames+1
			local num = 0
			a = function(b)
				for i,v in pairs(b:children()) do
					if v:IsA("BasePart") then
						num = num + 1
						if not data["Objects"]["obj"..num] then
							data["Objects"]["obj"..num] = {
								["Object"] = nil
								
							}
							data["Objects"]["obj"..num]["Object"] = v
							objects = objects + 1
						end
						data["Objects"]["obj"..num]["Frame"..frames] = {}
						data["Objects"]["obj"..num]["Frame"..frames]["Size"] = v.Size
						data["Objects"]["obj"..num]["Frame"..frames]["CFrame"] = v.CFrame
					end
					a(v)
				end
			end
			a(workspace)
		end
		recording = false
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "v" and not attacking then
		attacking = true
		shielding = true
		local p = Instance.new("Part")
		p.Anchored = true
		smooth(p)
		shield = p
		local bc = BrickColor.Random()
		if ragetype == "???" and rage then bc = BrickColor.new("Really black") end
		p.BrickColor = bc
		p.Size = Vector3.new(30,30,0)
		p.Material = "Neon"
		local m = Instance.new("SpecialMesh", p)
		m.MeshType = "Sphere"
		p.CFrame = char.HumanoidRootPart.CFrame *CFrame.new(0,0,-4)
		local num2 = -0.5
		for i = 0, 10 do
			if shielding then
				local p = Instance.new("Part")
				p.Size = Vector3.new(0.2,0.2,0.2)
				p.CanCollide = false
				p.Anchored = true
				p.Transparency = 1
				local pe = Instance.new("ParticleEmitter")
				pe.Color = particlecolor
				pe.LightEmission = 0.7
				pe.Size = NumberSequence.new(1)
				pe.Texture = "rbxassetid://243664672"
				pe.Transparency = NumberSequence.new(0.5)
				pe.Lifetime = NumberRange.new(0.2)
				pe.Rate = 500
				pe.Speed = NumberRange.new(3)
				pe.Parent = p
				p.Parent = shield
				num2 = num2 + 1
				local num = num2
				local neg = false
				spawn(function()
					repeat wait()
						num = num + 0.1
						local sin = math.sin(num)*15
						local cos = math.cos(num)*15
						if shield then
							p.CFrame = shield.CFrame *CFrame.new(sin,cos,0)
						end
					until not shielding
				end)
			else
				break
			end
		end
		p.Transparency = 1
		p.Parent = workspace
		p.Touched:connect(function(hit)
			if hurt(hit, math.random(50, 100)) then
				fade(hit)
			elseif hit.Anchored == false and hit.Parent.Name ~= plr.Name and hit.Parent.ClassName ~= "Accessory" then
				fade(hit, true)
			end
		end)
		char:FindFirstChildOfClass("Humanoid").WalkSpeed = 0
		for i = 0, 1, 0.1 do
			if attacking or shielding then
			ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, 0, 0.0523359552, -0.99862957, 0, 0.99862957, 0.0523359552, 1, 0, 0), 0.6)
			rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, 0.0173860267, -0.69564718, 0.71817416, 0.996044099, -0.0505616963, -0.0730885938, 0.087155737, 0.716603398, 0.692016065), 0.6)
			lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, 0, 0.0348994955, -0.999390841, 0, 0.999390841, 0.0348994955, 1, 0, 0), 0.6)
			rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, 0, -0.0348994955, 0.999390841, 0, 0.999390841, 0.0348994955, -1, 0, 0), 0.6)
			neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -0.777146578, -0.629320741, -0, 0, 0, 1, -0.629320741, 0.777146578, 0), 0.6)
			rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -0.694658995, 0.719340265, 0, 0, 0, 1, 0.719340265, 0.694658995, 0), 0.6)
			wait()
			else
			break
			end
		end
	end
end)
mouse.KeyUp:connect(function(key)
	if key == "v" and attacking then
		if shield then
			fade(shield, true)
			attacking = false
			shielding = false
			char:FindFirstChildOfClass("Humanoid").WalkSpeed = 16
		end
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "b" and not attacking then
		attacking = true
		local p = Instance.new("Part")
		p.Anchored = true
		smooth(p)
		p.Material = "Neon"
		local bc = BrickColor.new("Deep orange")
		if particlecolor == ColorSequence.new(Color3.new(1,1,1)) then
			bc = BrickColor.new("Institutional White")
		end
		p.BrickColor = bc
		local m = Instance.new("SpecialMesh", p)
		m.MeshType = "Sphere"
		p.Size = Vector3.new(1,1,1)
		p.CFrame = char.Torso.CFrame
		p.CanCollide = false
		local pe = Instance.new("ParticleEmitter")
		pe.Color = particlecolor
		pe.LightEmission = 0.7
		pe.Size = NumberSequence.new(10)
		pe.Texture = "rbxassetid://243664672"
		pe.Transparency = NumberSequence.new(0.5)
		pe.Lifetime = NumberRange.new(5)
		pe.Rate = 500
		pe.Speed = NumberRange.new(50)
		pe.VelocitySpread = 360
		pe.Parent = p
		p.Parent = workspace
		local rate = 20
		local oldcf = p.CFrame
		local con = p.Touched:connect(function(hit)
			if hit.Parent then
				if hit.Anchored == false then
					if hit.Parent.Name ~= plr.Name then
						if not hit.Parent:IsA("Accessory") then
							fade(hit, true)
						end
					end
				end
			end
		end)
		attacking = false
		for i = 0, 10*rate do
			p.Size = p.Size +Vector3.new(20,20,20)/rate
			p.Transparency = p.Transparency+0.1/rate
			p.CFrame = oldcf
			swait()
		end
		pe.Enabled = false
		con:disconnect()
		game.Debris:AddItem(p, 5)
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "n" and not attacking then
		attacking = true
		local bv = Instance.new("BodyVelocity")
		bv.MaxForce = huge
		bv.Velocity = char.HumanoidRootPart.CFrame.lookVector*push/1.5
		bv.Parent = char.Torso
		game.Debris:AddItem(bv, 0.5)
		local con = char["Right Arm"].Touched:connect(function(hit)
			if hurt(hit, math.random(30,50)) then
				local bv = Instance.new("BodyVelocity")
				bv.MaxForce = huge
				bv.Velocity = char.HumanoidRootPart.CFrame.lookVector*char.HumanoidRootPart.Velocity.Z*(push/1)
				bv.Parent = hit
				game.Debris:AddItem(bv, 0.5)
			end
		end)
		for i = 0, 1, 0.1 do
			ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, 0, 0.207911745, -0.978147984, 0, 0.978147984, 0.207911745, 1, 0, 0), 0.6)
			rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, 0, 0.325568229, 0.94551903, 0.999849021, 0.0165017936, -0.00568202185, -0.0174526293, 0.945375919, -0.325519055), 0.6)
			lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, 0, 0.0523359552, -0.99862957, 0, 0.99862957, 0.0523359552, 1, 0, 0), 0.6)
			rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, 0, -0.0523359552, 0.99862957, 0, 0.99862957, 0.0523359552, -1, 0, 0), 0.6)
			neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -0.224951565, -0.974371314, 0, 0, 0, 1, -0.974371314, 0.224951565, 0), 0.6)
			rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -0.156434745, 0.987689376, 0, 0, 0, 1, 0.987689376, 0.156434745, 0), 0.6)
			wait()
		end
		wait(0.5)
		con:disconnect()
		attacking = false
	end
end)
mouse.KeyDown:connect(function(key)
	if key == "m" and not attacking and animpose ~= "Falling" then
		attacking = true
		char:FindFirstChildOfClass("Humanoid").JumpPower = 500
		char:FindFirstChildOfClass("Humanoid").Jump = true
		wait()
		char:FindFirstChildOfClass("Humanoid").JumpPower = 100
		repeat wait() until char.HumanoidRootPart.Velocity.Y < 0
		local num = 0.5
		local num2 = 0.5
		repeat wait()
			num = num + 0.5
			if num2 < 10 then
				num2 = num2+0.5
			end
			if num%3 == 0 then soundeffect("rbxassetid://541909814", 2, 1, char.Torso) end
			ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, -0.0321390443, -0.899457872, -0.435827494, -0.903263509, 0.212814748, -0.37259686, 0.427884579, 0.381691694, -0.819286048), 0.2)
			rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, 0.166612521, 0.861375272, 0.47987023, 0.814885736, 0.153724328, -0.558868229, -0.555161953, 0.484153807, -0.67630893), 0.2)
			lh.C0 = lh.C0:Lerp(CFrame.new(-0.988398254, -0.309396505, -0.610682189, 0.00854844693, 0.0146014411, -0.999856889, 0.498114854, 0.866946518, 0.0169191808, 0.867069304, -0.498188108, 0.00013788142), 0.2)
			rh.C0 = rh.C0:Lerp(CFrame.new(0.988217235, -0.304208815, -0.86811024, 0.00891196821, -0.0143678738, 0.999857128, -0.528013527, 0.849068403, 0.0169073474, -0.849189758, -0.528088629, -1.95365774e-005), 0.2)
			neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, 0, 0, 0, 0.788011312, 0.615662038, 0, 0.61566186, -0.788011372), 0.2)
			rj.C0 = rj.C0:Lerp(rj.C0 *CFrame.Angles(math.rad((10*num2)),0,0), 0.5)
		until char.HumanoidRootPart.Velocity.Y > -1
		soundeffect("rbxassetid://165969964", 3, 1, char.Torso)
		for i = 0, 1.3, 0.1 do
			if i == 0.6 then
				local ring = Instance.new("Part")
				ring.Size = Vector3.new(1.16, 1.16, 0.16)
				local bc = BrickColor.new("Institutional white")
				if rage then
					bc = BrickColor.new("Deep orange")
				end
				ring.BrickColor = bc
				ring.Anchored = true
				ring.CFrame = char.Torso.CFrame *CFrame.new(0,-2.5,0)
				ring.CFrame = ring.CFrame *CFrame.Angles(math.rad(90),0,0)
				local m = Instance.new("SpecialMesh", ring)
				m.MeshId = "rbxassetid://3270017"
				ring.Parent = workspace
				local thing = Instance.new("Part")
				thing.Size = Vector3.new(1.866, 1.421, 2.155)
				thing.BrickColor = bc
				thing.Anchored = true
				thing.CFrame = char.Torso.CFrame *CFrame.new(0,-2.5,0)
				local m2 = Instance.new("SpecialMesh", thing)
				m2.MeshId = "rbxassetid://20329976"
				thing.Parent = workspace
				local oldcf2 = thing.CFrame
				local multiplier2 = Vector3.new(1.866, 1.421, 2.155)*3
				local oldcf = ring.CFrame
				local multiplier = Vector3.new(1.16, 1.16, 0.16)*3
				thing.Touched:connect(function(hit)
					hurt(hit, math.random(30,35))
				end)
				ring.Touched:connect(function(hit)
					if hurt(hit, math.random(10,15)) then
						hit.Parent:FindFirstChildOfClass("Humanoid").PlatformStand = true
					end
				end)
				spawn(function()
					for i = 0, 20 do
						ring.Size = multiplier*i
						m.Scale = m.Scale +Vector3.new(3,3,3)
						ring.CFrame = oldcf
						ring.Transparency = ring.Transparency +0.05
						thing.Size = multiplier*i
						m2.Scale = m2.Scale +Vector3.new(3,3,3)
						thing.CFrame = oldcf2
						thing.Transparency = thing.Transparency +0.05
						wait(0.01)
					end
					thing:Destroy()
					ring:Destroy()
				end)
			end
			ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, 0, 0.13917312, -0.99026823, 0, 0.99026823, 0.13917312, 1, 0, 0), 0.7)
			rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, 0, -0.190809026, 0.981627405, 0, 0.981627405, 0.190809026, -1, 0, 0), 0.7)
			lh.C0 = lh.C0:Lerp(CFrame.new(-1, -0.297612011, -0.327801049, 0, 0, -1, 0.374606699, 0.927184403, 0, 0.927184403, -0.374606699, 0), 0.7)
			rh.C0 = rh.C0:Lerp(CFrame.new(1, -0.399999917, -0.5, 0, 0, 1, 0.121869355, 0.99254632, 0, -0.99254632, 0.121869355, 0), 0.7)
			neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), 0.7)
			rj.C0 = rj.C0:Lerp(CFrame.new(0, -0.800000072, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), 0.7)
			wait()
		end
		attacking = false
		
	end
end)
mouse.KeyDown:connect(function(key)
	if key:byte() == 48 and not shielding then
		sprint = true
		char:FindFirstChildOfClass("Humanoid").WalkSpeed = speed
		local mod = Instance.new("Model", workspace)
		mod.Name = "MobModel"
		for i,v in pairs(char:children()) do
			if v:IsA("Accessory") and not rage then
				if v:FindFirstChild("Handle") then
					v.Handle.Transparency = 1
				end
			end
			if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" and v.Name ~= "Percent" then
				v.Transparency = 1
			end
		end
		if char.Head:FindFirstChild("face") then
			char.Head.face.Transparency = 1
		end
		repeat wait()
			if not workspace:FindFirstChild("MobModel") then
				mod = Instance.new("Model", workspace)
				mod.Name = "MobModel"
			end
			for i,v in pairs(char:children()) do
				if v:IsA("Part") and v.Name ~= "HumanoidRootPart" and v.Name ~= "Percent" then
					local new = v:Clone()
					smooth(new)
					new.Transparency = 0
					new.Anchored = true
					new.CanCollide = false
					new.Material = "Neon"
					for i,v in pairs(new:children()) do if not v:IsA("SpecialMesh") then v:Destroy() end end
					new.Parent = mod
					fade(new, true)
				end
			end
		until not sprint
		if mod then
			spawn(function()
			repeat wait() until not mod or #mod:children() == 0
			mod:Destroy()
			end)
		end
		char:FindFirstChildOfClass("Humanoid").WalkSpeed = 16
	end
end)
mouse.KeyUp:connect(function(key)
	if key:byte() == 48 then
		sprint = false
		for i,v in pairs(char:children()) do
			if v:IsA("Accessory") and not rage then
				if v:FindFirstChild("Handle") then
					v.Handle.Transparency = 0
				end
			end
			if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" and v.Name ~= "Percent" and not v:FindFirstChildOfClass("ParticleEmitter") then
				v.Transparency = 0
			end
		end
		if char.Head:FindFirstChild("face") then
			char.Head.face.Transparency = 0
		end
	end
end)


local idlesine = 0
while wait() do
	if animpose == "Walking" and cananim and not attacking and not legs then
		for i = 0, 0.7, 0.1 do
			if animpose == "Walking" and cananim and not attacking and not legs then
				ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, 0.0475738533, 0.051016707, -0.997564137, 0.680338025, 0.72957325, 0.0697564781, 0.731354535, -0.681998909, 0), 0.4)
				rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, -0.0626967475, -0.0305792596, 0.997564137, 0.896606028, 0.43730399, 0.0697564781, -0.438371748, 0.898795009, -1.29931566e-010), 0.4)
				lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, -0.0219629817, 0.02712203, -0.999390841, -0.628937364, 0.776673257, 0.0348994955, 0.777146697, 0.6293208, 0), 0.4)
				rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, 0.0238014236, -0.0255239103, 0.999390841, -0.681583524, 0.73090899, 0.0348994955, -0.731354535, -0.681998909, 0), 0.4)
				neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), 0.4)
				rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), 0.4)
				wait()
			else
				break
			end
		end
		for i = 0, 0.7, 0.1 do
			if animpose == "Walking" and cananim and not attacking and not legs then
				ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, -0.0585028417, 0.0379922055, -0.997564137, -0.836630702, 0.543314457, 0.0697564781, 0.544640183, 0.838672042, 0), 0.4)
				rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, 0.0475739017, -0.051016774, 0.997564137, -0.680339456, 0.729574919, 0.0697564781, -0.731355429, -0.681999743, -1.29931566e-010), 0.4)
				lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, 0.0205134545, 0.0282343514, -0.999390841, 0.587428331, 0.808525503, 0.0348994955, 0.809018135, -0.587786257, 0), 0.4)
				rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, -0.0224330258, -0.0267346334, 0.999390841, 0.642397523, 0.765579402, 0.0348994955, -0.76604569, 0.642788768, 0), 0.4)
				neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), 0.4)
				rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), 0.4)
				wait()
			else
				break
			end
		end
	end
	if animpose == "Walking" and cananim and legs then
		for i = 0, 0.7, 0.1 do
			if animpose == "Walking" and cananim and legs then
				lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, -0.0219629817, 0.02712203, -0.999390841, -0.628937364, 0.776673257, 0.0348994955, 0.777146697, 0.6293208, 0), 0.4)
				rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, 0.0238014236, -0.0255239103, 0.999390841, -0.681583524, 0.73090899, 0.0348994955, -0.731354535, -0.681998909, 0), 0.4)
				wait()
			else
				break
			end
		end
		for i = 0, 0.7, 0.1 do
			if animpose == "Walking" and cananim and legs then
				lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, 0.0205134545, 0.0282343514, -0.999390841, 0.587428331, 0.808525503, 0.0348994955, 0.809018135, -0.587786257, 0), 0.4)
				rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, -0.0224330258, -0.0267346334, 0.999390841, 0.642397523, 0.765579402, 0.0348994955, -0.76604569, 0.642788768, 0), 0.4)
				wait()
			else
				break
			end
		end
	end
	if animpose == "Idle" and cananim and legs then
		lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, 0, 0.0348994955, -0.999390841, 0, 0.999390841, 0.0348994955, 1, 0, 0), 0.5)
		rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, 0, -0.0348994955, 0.999390841, 0, 0.999390841, 0.0348994955, -1, 0, 0), 0.5)
	end
	if animpose ~= "Idle" and not legs then idlesine = 0 end
	if animpose == "Idle" and cananim and not attacking and not legs then
		idlesine = idlesine + 0.01
		local sin = math.sin(idlesine)*2.5
		ls.C0 = ls.C0:Lerp(CFrame.new(-1, 0.5, 0, 0, 0.0697564781, -0.997564137, 0, 0.997564137, 0.0697564781, 1, 0, 0)*CFrame.Angles(math.rad(sin),0,0), 0.5)
		rs.C0 = rs.C0:Lerp(CFrame.new(1, 0.5, 0, 0, -0.0697564781, 0.997564137, -1.86264515e-009, 0.997564256, 0.0697564781, -1.00000012, -1.858108e-009, -1.29931566e-010)*CFrame.Angles(math.rad(sin),0,0), 0.5)
		lh.C0 = lh.C0:Lerp(CFrame.new(-1, -1, 0, 0, 0.0348994955, -0.999390841, 0, 0.999390841, 0.0348994955, 1, 0, 0), 0.5)
		rh.C0 = rh.C0:Lerp(CFrame.new(1, -1, 0, 0, -0.0348994955, 0.999390841, 0, 0.999390841, 0.0348994955, -1, 0, 0), 0.5)
		neck.C0 = neck.C0:Lerp(CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), 0.5)
		rj.C0 = rj.C0:Lerp(CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0), 0.5)
	end
end

