-- Initial stuff
math.randomseed(tick())


-- Wait for character
repeat wait() until game.Players.LocalPlayer.Character ~= nil


-- Useful shortcuts
local plr = game:GetService("Players").LocalPlayer
local char = plr.Character 
local plrgui = plr.PlayerGui 
local backpack = plr.Backpack 
local torso = char.Torso 
local head = char.Head 
local hum = char.Humanoid
local larm = char["Left Arm"] 
local lleg = char["Left Leg"] 
local rarm = char["Right Arm"] 
local rleg = char["Right Leg"] 
local LS = torso["Left Shoulder"] 
local LH = torso["Left Hip"] 
local RS = torso["Right Shoulder"] 
local RH = torso["Right Hip"] 
local neck = torso.Neck
local it = Instance.new
local vt = Vector3.new
local cf = CFrame.new
local euler = CFrame.fromEulerAnglesXYZ
local angles = CFrame.Angles
local neckC0 = cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local neckC1 = cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local LSC0 = cf(-1.5,.5,0)
local LSC1 = cf(0,.5,0)
local RSC0 = cf(1.5,.5,0)
local RSC1 = cf(0,.5,0)
local LHC0 = cf(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)
local LHC1 = cf(-0.5,1,0,-0,-0,-1,0,1,0,1,0,0)
local RHC0 = cf(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
local RHC1 = cf(0.5,1,0,0,0,1,0,1,0,-1,-0,-0)
local RP = char.HumanoidRootPart
local RJ = RP.RootJoint
local RJC0 = euler(-1.57,0,3.14)


-- Build the weapon
local build = function()
	local model = Instance.new("Model")
	model.Name = "Cane"
	local handle = Instance.new("Part", model)
	handle.FormFactor = Enum.FormFactor.Symmetric
	handle.CanCollide = false
	handle.Size = Vector3.new(1,1,3)
	handle.Name = "Handle"
	local mesh = Instance.new("SpecialMesh",handle)
	mesh.Scale = Vector3.new(1,1,0.69999998807907)
	mesh.MeshId = "http://www.roblox.com/asset/?id=25628815"
	mesh.TextureId = "http://www.roblox.com/asset/?id=25629094"
	mesh.MeshType = Enum.MeshType.FileMesh
	return model
end


-- Wait for mouse
local mouse
while true do
	mouse = plr:GetMouse()
	if mouse then break end
	wait(.1)
end


-- Create welds 
local RW, LW = Instance.new("Weld",torso), Instance.new("Weld",torso)
RW.Name = "Right Weld" LW.Name = "Left Weld"
RW.Part0 = torso LW.Part0 = torso
RW.C0 = RSC0 RW.C1 = RSC1 LW.C0 = LSC0 LW.C1 = LSC1


-- Attach weapon
local canemodel = build()
local cane = canemodel:FindFirstChild("Handle")
canemodel.Parent = char
local caneweld = Instance.new("Weld", rarm)
caneweld.Part0 = rarm
caneweld.Part1 = cane
caneweldC0 = caneweld.C0 * CFrame.new(0,-1,1) * CFrame.Angles(math.rad(180),0,math.rad(90))
caneweld.C0 = caneweldC0


-- Weapon variables
local caneEnd = cf(-.225,0,-1.5)


-- Sound effects
local sounds = {}
sounds.explosion = "http://www.roblox.com/asset/?id=87784452"
sounds.bewm = "http://www.roblox.com/asset/?id=2767090"
sounds.slice = "http://www.roblox.com/asset/?id=161006195"
sounds.charge = "http://roblox.com/asset/?id=2101137"
sounds.sharpblast = "http://roblox.com/asset/?id=2248511"
sounds.woosh = "http://roblox.com/asset/?id=147722227"
sounds.metalhit = "http://roblox.com/asset/?id=153092348"
sounds.mechblast = "http://roblox.com/asset/?id=169380505"
sounds.chargepulse = "http://roblox.com/asset/?id=10209296"
sounds.heal = "http://roblox.com/asset/?id=2101144"
sounds.zap = "http://roblox.com/asset/?id=10756104"
sounds.powernote = "http://roblox.com/asset/?id=192603389"
sounds.swing = "http://roblox.com/asset/?id=10209640"
sounds.hit = "http://roblox.com/asset/?id=10209590"


-- Base functions
local wait = function(t)
    if t ~= nil then
        return wait(t)
    else
        local t = tick()
        game:GetService("RunService").RenderStepped:wait()
        return tick() - t, time()
    end
end
local nolines = function(p)
	p.TopSurface, p.BottomSurface, p.LeftSurface, p.RightSurface, p.FrontSurface, p.BackSurface = 10, 10, 10, 10, 10, 10
end
local part = function(formfactor,parent,reflectance,transparency,brickcolor,name,size)
	local fp = it("Part")
	fp.formFactor = formfactor 
	fp.Parent = parent
	fp.Reflectance = reflectance
	fp.Transparency = transparency
	fp.CanCollide = false 
	fp.Locked = true
	fp.BrickColor = brickcolor
	fp.Name = name
	fp.Size = size
	fp.Position = torso.Position 
	fp.Material = "SmoothPlastic"
	fp:BreakJoints()
	nolines(fp)
	return fp 
end 
local mesh = function(instance,part,meshtype,meshid,offset,scale)
	local mesh = it(instance) 
	mesh.Parent = part
	if instance == "SpecialMesh" then
		mesh.MeshType = meshtype
		if meshid ~= nil then
			mesh.MeshId = "http://www.roblox.com/asset/?id="..meshid
		end
	end
	mesh.Offset=offset
	mesh.Scale=scale
	return mesh
end
local weld = function(parent,part0,part1,c0)
	local weld = it("Weld") 
	weld.Parent = parent
	weld.Part0 = part0 
	weld.Part1 = part1 
	weld.C0 = c0
	return weld
end
local rayCast = function(Pos, Dir, Max, Ignore)  -- Origin Position , Direction, MaxDistance , IgnoreDescendants
	return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore) 
end
local rad = function(x,y,z)
	return euler(math.rad(x or 0),math.rad(y or 0),math.rad(z or 0))
end
local random = function(a, b)
	local num = math.random(a*100, b*100)
	return num/100
end
local randomRot = function()
	return rad(random(0,360),random(0,360),random(0,360))
end
local sound = function(id, par, vol, pit) 
	coroutine.resume(coroutine.create(function()
		local sou = Instance.new("Sound", par or workspace)
		sou.Volume = vol
		sou.Pitch = pit or 1
		sou.SoundId = id
		wait() 
		sou:play() 
		game:GetService("Debris"):AddItem(sou, 6)
	end))
end
local damage = function(hit, minim, maxim, knockback, Type, Property, Delay, KnockbackType, incstun, stagger, staghit, ranged)
	-- Fen's nasty and messy damage function
	if hit.Parent == nil then
		return
	end
	local h = hit.Parent:FindFirstChild("Humanoid")
	for _, v in pairs(hit.Parent:children()) do
		if v:IsA("Humanoid") then
			h = v
		end
	end
	if hit.Parent.Parent:FindFirstChild("Torso") ~= nil then
		h = hit.Parent.Parent:FindFirstChild("Humanoid")
	end
	if hit.Parent.className == "Hat" then
		hit = hit.Parent.Parent:findFirstChild("Head")
	end
	if h ~= nil and hit.Parent.Name ~= char.Name and hit.Parent:FindFirstChild("Torso") ~= nil then
		if hit.Parent:findFirstChild("DebounceHit") ~= nil then
			if hit.Parent.DebounceHit.Value == true then
				return
			end
		end
		local c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = game:service("Players").LocalPlayer
		c.Parent = h
		game:GetService("Debris"):AddItem(c, .5)
		local Damage = random(minim, maxim)
		local blocked = false
		local enblock = nil
		local Stats = hit.Parent:findFirstChild("Stats")
		if Stats ~= nil then
			enblock = Stats:findFirstChild("Block")
			if Stats:findFirstChild("Defense") ~= nil then
				Damage = Damage / Stats.Defense.Value
			end
			if Stats:findFirstChild("Stun") ~= nil then
				Stats.Stun.Value = Stats.Stun.Value + incstun
			end
			if Stats:findFirstChild("Stagger") ~= nil then
				if stagger == true then
					Stats.Stagger.Value = true
				end
			end
		end
		if enblock ~= nil then
			if enblock.Value == true then
				blocked = true
			end
		end
		if blocked == true then
			if ranged ~= true then
				enblock.Value = false
			end
		else
			Damage = math.floor(Damage)
			print("dam"..Damage)
			sound(sounds.hit, hit, 1, 1)
			h.Health = h.Health - Damage
			if Type == "Knockdown" then
				local hum = hit.Parent.Humanoid
				hum.PlatformStand = true
				coroutine.resume(coroutine.create(function(HHumanoid)
					wait()
					HHumanoid.PlatformStand = false
				end), hum)
				local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
				local bodvol = Instance.new("BodyVelocity")
				bodvol.velocity = angle * knockback
				bodvol.P = 5000
				bodvol.maxForce = Vector3.new(8e+003, 8e+003, 8e+003)
				bodvol.Parent = hit
				local rl = Instance.new("BodyAngularVelocity")
				rl.P = 3000
				rl.maxTorque = Vector3.new(500000, 500000, 500000) * 50000000000000
				rl.angularvelocity = Vector3.new(random(-10, 10), random(-10, 10), random(-10, 10))
				rl.Parent = hit
				game:GetService("Debris"):AddItem(bodvol, .5)
				game:GetService("Debris"):AddItem(rl, .5)
			elseif Type == "Knockdown2" then
				local hum = hit.Parent.Humanoid
				local angle = (hit.Position - (Property.Position + Vector3.new(0, 0, 0))).unit
				local bodvol = Instance.new("BodyVelocity")
				bodvol.velocity = angle * knockback
				bodvol.P = 5000
				bodvol.maxForce = Vector3.new(8e+003, 8e+003, 8e+003)
				bodvol.Parent = hit
				game:GetService("Debris"):AddItem(bodvol, .5)
			elseif Type == "Normal" or Type == "NormalDecreaseMvmt1" then
				local vp = Instance.new("BodyVelocity")
				vp.P = 500
				vp.maxForce = Vector3.new(math.huge, 0, math.huge)
				if KnockbackType == 1 then
					vp.velocity = Property.CFrame.lookVector * knockback + Property.Velocity / 1.05
				elseif KnockbackType == 2 then
					vp.velocity = Property.CFrame.lookVector * knockback
				end
				game:GetService("Debris"):AddItem(vp, .5)
				if knockback > 0 then
					vp.Parent = hit.Parent.Torso
				end
			end
		end
		local debounce = Instance.new("BoolValue")
		debounce.Name = "DebounceHit"
		debounce.Parent = hit.Parent
		debounce.Value = true
		game:GetService("Debris"):AddItem(debounce, Delay)
		c = Instance.new("ObjectValue")
		c.Name = "creator"
		c.Value = plr
		c.Parent = h
		game:GetService("Debris"):AddItem(c, .5)
	end
end
local fade = function(prt, t) 
	coroutine.resume(coroutine.create(function()
		for i = 0, 1, t do
			wait(0)
			prt.Transparency = i
		end
		wait(0)
		prt:destroy()
	end))
end
local block1 = function(prt, delay, x, y, z, msh)
	coroutine.resume(coroutine.create(function()
		for i = 0, 1, delay do
			wait(0)
			prt.CFrame = prt.CFrame * euler(random(-50, 50), random(-50, 50), random(-50, 50))
			local Mesh = msh
			Mesh.Scale = Mesh.Scale + vt(x, y, z)
			prt.Transparency = i
		end
		wait(0)
		prt:destroy()
	end))
end
local block2 = function(prt, delay, x, y, z, msh)
	coroutine.resume(coroutine.create(function()
		for i = 0, 1, delay do
			wait(0)
			local Mesh = msh
			Mesh.Scale = Mesh.Scale + vt(x, y, z)
			prt.Transparency = i
		end
		wait(0)
		prt:destroy()
	end))
end
local cyleffect = function(prt, delay, x, y, z, msh)
	coroutine.resume(coroutine.create(function()
		for i = 0, 1, delay do
			wait(0)
			local Mesh = msh
			Mesh.Scale = Mesh.Scale + vt(x, y, z)
			prt.Transparency = i
		end
		wait(0)
		prt:destroy()
	end))
end
local CFrameFromTopBack = function(at, top, back)
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z,
		right.x, top.x, back.x,
		right.y, top.y, back.y,
		right.z, top.z, back.z)
end
local triangle = function(a, b, c)
	local edg1 = (c - a):Dot((b - a).unit)
	local edg2 = (a - b):Dot((c - b).unit)
	local edg3 = (b - c):Dot((a - c).unit)
	if edg1 <= (b - a).magnitude and edg1 >= 0 then
		a, b, c = a, b, c
	elseif edg2 <= (c - b).magnitude and edg2 >= 0 then
		a, b, c = b, c, a
	elseif edg3 <= (a - c).magnitude and edg3 >= 0 then
		a, b, c = c, a, b
	else 
		assert(false, "unreachable")
	end
	local len1 = (c - a):Dot((b - a).unit)
	local len2 = (b - a).magnitude - len1
	local width = (a + (b - a).unit * len1 - c).magnitude
	local maincf = CFrameFromTopBack(a, (b - a):Cross(c - b).unit, -(b - a).unit)
	local list = {}
	if len1 > 0.01 then
		local w1 = Instance.new('WedgePart', m)
		game:GetService("Debris"):AddItem(w1, 5)
		w1.Material = "SmoothPlastic"
		w1.FormFactor = 'Custom'
		w1.BrickColor = BrickColor.new("Bright red")
		w1.Transparency = 0
		w1.Reflectance = 0
		w1.Material = "SmoothPlastic"
		w1.CanCollide = false
		nolines(w1)
		local sz = Vector3.new(0.2, width, len1)
		w1.Size = sz
		local sp = Instance.new("SpecialMesh", w1)
		sp.MeshType = "Wedge"
		sp.Scale = Vector3.new(0, 1, 1) * sz / w1.Size
		w1:BreakJoints()
		w1.Anchored = true
		w1.Parent = workspace
		w1.Transparency = 0.7
		fade(w1)
		w1.CFrame = maincf * CFrame.Angles(math.pi, 0, math.pi / 2) * CFrame.new(0, width / 2, len1 / 2)
		table.insert(list, w1)
	end
	if len2 > 0.01 then
		local w2 = Instance.new('WedgePart', m)
		game:GetService("Debris"):AddItem(w2, 5)
		w2.Material = "SmoothPlastic"
		w2.FormFactor = 'Custom'
		w2.BrickColor = BrickColor.new("Bright red")
		w2.Transparency = 0
		w2.Reflectance = 0
		w2.Material = "SmoothPlastic"
		w2.CanCollide = false
		nolines(w2)
		local sz = Vector3.new(0.2, width, len2)
		w2.Size = sz
		local sp = Instance.new("SpecialMesh", w2)
		sp.MeshType = "Wedge"
		sp.Scale = Vector3.new(0, 1, 1) * sz / w2.Size
		w2:BreakJoints()
		w2.Anchored = true
		w2.Parent = workspace
		w2.Transparency = 0.7
		fade(w2)
		w2.CFrame = maincf * CFrame.Angles(math.pi, math.pi, -math.pi / 2) * CFrame.new(0, width / 2, -len1 - len2 / 2)
		table.insert(list, w2)
	end
	return unpack(list)
end


-- Magic effects
local magic = {}
magic.stravant = function(brickcolor, cframe, x, y, z, x1, y1, z1, delay)
	local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * cf(x, y, z)
	local msh = mesh("SpecialMesh", prt, "FileMesh", "rbxassetid://168892363", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	coroutine.resume(coroutine.create(function(Part, Mesh, ex, why, zee) 
		local num = random()
		local num2 = random(-3, 2) + random()
		local numm = 0
		for i = 0, 1, delay * 2 do
			wait()
			Part.CFrame = cframe * euler(0, numm * num * 10, 0) * cf(ex, why, zee) * cf(-i * 10, num2, 0)
			Part.Transparency = i
			numm = numm + 0.01
		end
		Part.Parent = nil
		Mesh.Parent = nil
	end), prt, msh, x, y, z)
end
magic.block = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, par)
	local prt = part(3, par or workspace, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	if Type == 1 or Type == nil then
		block1(prt, delay, x3, y3, z3, msh)
	elseif Type == 2 then
		block2(prt, delay, x3, y3, z3, msh)
	end
end
magic.circle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, par)
	local prt = part(3, par or workspace, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "Sphere", nil, vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	cyleffect(prt, delay, x3, y3, z3, msh)
end
magic.cylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	cyleffect(prt, delay, x3, y3, z3, msh)
end
magic.head = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "Head", nil, vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	cyleffect(prt, delay, x3, y3, z3, msh)
end
magic.wave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay)
	local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "http://www.roblox.com/asset/?id=20329976", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 5)
	cyleffect(prt, delay, x3, y3, z3, msh)
end
magic.lightning = function(p0, p1, tym, ofs, col, th, tra, last, par)
	local magz = (p0 - p1).magnitude
	local curpos = p0
	local trz = {
		-ofs,
		ofs
	}
	for i = 1, tym do 
		local li = Instance.new("Part", par or workspace)
		li.TopSurface = 0
		li.BottomSurface = 0
		li.Anchored = true
		li.Transparency = tra or 0.4
		li.BrickColor = BrickColor.new(col)
		li.Material = "Neon"
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(th, th, magz / tym)
		local ofz = Vector3.new(random(trz[1],trz[2]), random(trz[1],trz[2]), random(trz[1],trz[2])) 
		local trolpos = CFrame.new(curpos, p1) * CFrame.new(0, 0, magz / tym).p + ofz
		if tym == i then 
			local magz2 = (curpos - p1).magnitude
			li.Size = Vector3.new(th, th, magz2)
			li.CFrame = CFrame.new(curpos, p1) * CFrame.new(0, 0, -magz2 / 2)
		else
			li.CFrame = CFrame.new(curpos, trolpos) * CFrame.new(0, 0, magz / tym / 2)
		end
		curpos = li.CFrame * CFrame.new(0, 0, magz / tym / 2).p
		game.Debris:AddItem(li, last)
	end
end


-- Logic variables
local equipped = false
local attacking = false

-- Effect handling
local charfx = Instance.new("Model", char)
charfx.Name = "Effects"
local toggles = {
	snow = false;
	lmagic = false;
	rmagic = false;
	canemagic = false;
}
local snowTick = 0
local lmagicTick = 0
local rmagicTick = 0
local canemagicTick = 0
local snowMeshes = {
	"http://www.roblox.com/asset?id=187687161";
	"http://www.roblox.com/asset?id=187687175";
	"http://www.roblox.com/asset?id=187687193";
	
}

-- Pose system
local poses = {
	none = {
		larm = euler(0, 0, 0);
		rarm = euler(0, 0, 0);
		lleg = euler(0, 0, 0);
		rleg = euler(0, 0, 0);
		torso = euler(0, 0, 0);
		head = euler(0, 0, 0);
		cane = euler(0, 0, 0);
	}
}
local pose = "none"
local posespeed = .1
local newpose = function(name, larm, rarm, torso, head, lleg, rleg, cane)
	poses[name] = {
		larm = larm or rad();
		rarm = rarm or rad();
		lleg = lleg or rad();
		rleg = rleg or rad();
		torso = torso or rad();
		head = head or rad();
		cane = cane or rad();
	}
end
local setpose = function(name, speed)
	posespeed = speed or 1
	pose = name or "none"
end
game:GetService("RunService").RenderStepped:connect(function()
	local vel = (RP.Velocity*Vector3.new(1,0,1)).magnitude
	local yvel = RP.Velocity.y
	local hitfloor,posfloor=rayCast(RP.Position,(CFrame.new(RP.Position,RP.Position - Vector3.new(0,1,0))).lookVector,4,char)
	if yvel > 1 and hitfloor == nil and equipped and not attacking then 
		setpose("jumping",.2)
	elseif yvel < -1 and hitfloor == nil and equipped and not attacking then
		setpose ("falling",.075)
	elseif vel < 1 and hitfloor ~= nil and equipped and not attacking then
		setpose("idle",.1)
	elseif vel > 2 and vel < 22 and hitfloor ~= nil and equipped and not attacking then
		setpose("walking",.1)
	end
	if poses[pose] ~= nil then
		local pose = poses[pose]
		LW.C0 = LW.C0:lerp(LSC0 * pose.larm, posespeed)
		RW.C0 = RW.C0:lerp(RSC0 * pose.rarm, posespeed)
		LH.C0 = LH.C0:lerp(LHC0 * pose.lleg, posespeed)
		RH.C0 = RH.C0:lerp(RHC0 * pose.rleg, posespeed)
		RJ.C0 = RJ.C0:lerp(RJC0 * pose.torso, posespeed)
		neck.C0 = neck.C0:lerp(neckC0 * pose.head, posespeed)
		caneweld.C0 = caneweld.C0:lerp(caneweldC0 * pose.cane, posespeed)
	end
	if toggles.snow == true then
		if snowTick % 15 == 0 then
			local p = Instance.new("Part")
			local m = Instance.new("SpecialMesh", p)
			m.MeshId = snowMeshes[math.random(1, #snowMeshes)]
			m.Scale = Vector3.new(2,2,2)
		    local q = Instance.new("BodyVelocity")
			p.BrickColor = BrickColor.new("White")
			p.Parent = charfx
			p.Shape = 1
			p.Size = Vector3.new(.5, .5, .5)
			p.Transparency = .3
			p.Locked = true
			p.Anchored = false
			p.CanCollide = false
			p.formFactor = "Plate"
			p.CFrame = torso.CFrame * cf(Vector3.new((random(-75, 75)),50,(random(-75,75)))) * randomRot()
		    q.velocity = Vector3.new(0, -10, 0)
		    q.Parent = p
			p.Touched:connect(function()
				p:destroy()
			end)
		end
		snowTick = snowTick + 1
	end
	if toggles.lmagic then
		if lmagicTick % 15 == 0 then
			magic.block(BrickColor.new("Institutional white"),larm.CFrame*cf(0,-1,0),1,1,1,.5,.5,.5,.065,nil,charfx)
		end
		lmagicTick = lmagicTick + 1
	end
	if toggles.rmagic then
		if rmagicTick % 15 == 0 then
			magic.block(BrickColor.new("Institutional white"),rarm.CFrame*cf(0,-1,0),1,1,1,.5,.5,.5,.065,nil,charfx)
		end
		rmagicTick = rmagicTick + 1
	end
	if toggles.canemagic then
		if canemagicTick % 15 == 0 then
			magic.block(BrickColor.new("Institutional white"),cane.CFrame*caneEnd,1,1,1,.5,.5,.5,.065,nil,charfx)
		end
		canemagicTick = canemagicTick + 1
	end
end)


-- Weapon setup
local bin = Instance.new("HopperBin",backpack)
bin.Name = "Cane"
script.Parent = bin

-- Weapon poses
newpose("idle", rad(-5,5,0), rad(0,0,50), rad(0,-2,-15), rad(0,-3,15), rad(0,15,0), rad(0,15,0), rad(90,-45,170)*CFrame.new(0,-1,-1.5))
newpose("jumping", rad(-20, 0, -10), rad(-20, 0, 10), rad(-10, 0, 0), rad(0, 0, 0), rad(0, 0, 15), rad(0, 0, 0)*CFrame.new(.35,.35,0))
newpose("falling", rad(0, 0, -50), rad(0, 0, 50), rad(0, 0, 0), rad(20, 0, 0), rad(0, 0, 0), rad(0, 0, 0)*CFrame.new(.15,.15,0))
newpose("walking", rad(-5,5,-15), rad(-20,0,20), rad(5,0,0), rad(0,0,0), rad(0,0,0), rad(0,0,0))

-- Attack poses
newpose("larmcharge", rad(0,-15,-135), rad(0,0,50), rad(0,-2,-15), rad(-15,-15,50), rad(0,15,0), rad(0,15,0), rad(90,-45,170)*CFrame.new(0,-1,-1.5))
newpose("canecharge", rad(45,0,30), rad(0,0,150), rad(0,0,-35), rad(-20,0,0), rad(0,35,0), rad(0,35,0), rad(90,-135,170)*CFrame.new(0,-1,-1.5))
newpose("clickattack1_1", rad(20,0,15), rad(0,-15,125), rad(0,-2,-35), rad(0,-3,35), rad(0,35,0), rad(0,35,0), rad(90,-165,180)*CFrame.new(0,-1,-1.5))
newpose("clickattack1_2", rad(-20,0,-15), rad(0,100,65), rad(0,-2,45), rad(10,-10,-25), rad(0,-45,0), rad(0,-45,0), rad(90,-110,180)*CFrame.new(0,-1,-1.5))
newpose("clickattack2_1", rad(-45,0,-45), rad(0,150,65), rad(0,-2,65), rad(10,-10,-45), rad(0,-65,0), rad(0,-65,0), rad(90,-135,180)*CFrame.new(0,-1,-1.5))
newpose("clickattack2_2", rad(-15,0,-60), rad(0,-15,70), rad(0,-2,-35), rad(0,-3,35), rad(0,35,0), rad(0,35,0), rad(90,-110,180)*CFrame.new(0,-1,-1.5))
newpose("clickattack3_1", rad(-15,0,-60), rad(0,-15,125), rad(0,-2,-45), rad(0,-3,45), rad(0,45,0), rad(0,45,0), rad(90,-165,180)*CFrame.new(0,-1,-1.5))
newpose("clickattack3_2", rad(-20,0,-75), rad(-90,0,110), rad(0,0,75), rad(10,-10,-60), rad(0,-80,30), rad(0,-80,0), rad(90,-90,180)*CFrame.new(0,-1,-1.5))
newpose("clickattack4_1", rad(0,0,-90), rad(0,0,125), rad(0,0,-90), rad(0,0,90), rad(0,35,0), rad(0,35,0), rad(90,-165,180)*CFrame.new(0,-1,-1.5))
newpose("clickattack4_2", rad(0,0,-135), rad(0,0,125), rad(0,0,-90), rad(0,0,90), rad(0,35,0), rad(0,35,0), rad(90,-165,180)*CFrame.new(0,-1,-1.5))

-- Weapon usage (edit to liking)
local equip = function()
	equipped = true
	if attacking then
		repeat
			wait()
		until not attacking
	end
	attacking = true
	if not equipped then
		attacking = false
		return
	end
	LW.Part1 = larm
	RW.Part1 = rarm
	LS.Part1 = nil
	RS.Part1 = nil
	attacking = false
	setpose("idle", .085)
end
local unequip = function()
	equipped = false
	if attacking then
		repeat
			wait()
		until not attacking
	end
	if equipped then
		return
	end
	setpose("none", .1)
	wait(.65)
	if equipped then
		return
	end
	LS.Part1 = larm
	RS.Part1 = rarm
	LW.Part1 = nil
	RW.Part1 = nil
end
local keypress = function(key)
	if attacking or not equipped then return end
	if key == "q" then
		attacking = true
		print("q")
		hum.WalkSpeed = 0
		setpose("larmcharge", .1)
		wait(.3)
		toggles.lmagic = true
		sound(sounds.chargepulse, larm, .75, .8) 
		wait(1.5)
		toggles.lmagic = false
		magic.circle(BrickColor.new("Institutional white"), larm.CFrame*CFrame.new(0,-1,0), 1, 1, 1, 1.2, 1.2, 1.2, .04, charfx)
		sound(sounds.bewm, cane, .9, .6) 
		toggles.snow = not toggles.snow
		print("snow "..(toggles.snow and "yes" or "no"))
		wait(.5)
		hum.WalkSpeed = 16
		attacking = false
	elseif key == "x" then
		attacking = true
		print("x")
		hum.WalkSpeed = 12
		toggles.canemagic = true
		setpose("canecharge", .1)
		sound(sounds.charge,char.Torso,.5,1.1)
		wait(.5)
		setpose("clickattack3_2", .175)
		wait(.3)
		magic.circle(BrickColor.new("Institutional white"), cane.CFrame*caneEnd, .2, .2, .3, 6, 6, 0, .075)
		hum.WalkSpeed = 0
		sound(sounds.sharpblast,cane,1,.35)
		print("pewwwwwww")
		for i = 1, 50 do
			local prt,hit = rayCast(cane.CFrame*caneEnd.p,((cane.CFrame*caneEnd).p - (cane.CFrame*(caneEnd*CFrame.new(0,0,1))).p).unit, 100, char)
			magic.lightning((cane.CFrame*caneEnd).p, hit, 20, 1, "Institutional white", .1, .2, .15, charfx)
			sound(sounds.zap,cane,random(.75,1),random(.75,1.25))
			if prt and prt.Parent:FindFirstChild("Humanoid") then
				damage(prt, 35, 50, 2, "Knockdown", RP, .5, 1, random(3, 10), nil, true)
				sound(sounds.zap,prt,random(.75,1),random(.75,1.25))
				sound(sounds.sharpblast,prt,.3,.5)
				sound(sounds.bewm,prt,1,.75)
			end
			wait(.02)
		end
		toggles.canemagic = false
		hum.WalkSpeed = 16
		attacking = false
	end
end
local combo = 0
local clicked = function(hit)
	if attacking or not equipped then return end
	if combo == 0 then
		attacking = true
		combo = combo + 1
		print("swing"..combo)
		setpose("clickattack1_1", .165)
		wait(.125)
		local dam1 = cane.Touched:connect(function(hit)
			if hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= char then
				damage(hit, 10, 15, .25, "Normal", RP, .5, 1, random(3, 10), nil, true)
			end
		end)
		local dam2 = rarm.Touched:connect(function(hit)
			if hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= char then
				damage(hit, 10, 15, .25, "Normal", RP, .5, 1, random(3, 10), nil, true)
			end
		end)
		setpose("clickattack1_2", .185)
		sound(sounds.swing,cane,.5,random(1,1.5))
		wait(.35)
		dam1:disconnect()
		dam2:disconnect()
		attacking = false
		wait(1)
		if combo == 1 then
			combo = 0
			print("ded")
		end
	elseif combo == 1 then
		attacking = true
		combo = combo + 1
		print("swing"..combo)
		setpose("clickattack2_1", .15)
		wait(.125)
		local dam1 = cane.Touched:connect(function(hit)
			if hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= char then
				damage(hit, 10, 15, .25, "Normal", RP, .5, 1, random(3, 10), nil, true)
			end
		end)
		local dam2 = rarm.Touched:connect(function(hit)
			if hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= char then
				damage(hit, 10, 15, .25, "Normal", RP, .5, 1, random(3, 10), nil, true)
			end
		end)
		setpose("clickattack2_2", .14)
		sound(sounds.swing,cane,.5,random(1,1.5))
		for i = 1, 5 do
			torso.Velocity = RP.CFrame.lookVector * 45
			wait()
		end
		wait(.25)
		dam1:disconnect()
		dam2:disconnect()
		attacking = false
		wait(1)
		if combo == 2 then
			combo = 0
			print("ded")
		end
	elseif combo == 2 then
		attacking = true
		combo = combo + 1
		print("swing"..combo)
		setpose("clickattack3_1", .15)
		wait(.2)
		local dam1 = cane.Touched:connect(function(hit)
			if hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= char then
				damage(hit, 10, 15, .25, "Normal", RP, .5, 1, random(3, 10), nil, true)
			end
		end)
		local dam2 = rarm.Touched:connect(function(hit)
			if hit.Parent:FindFirstChild("Humanoid") and hit.Parent ~= char then
				damage(hit, 10, 15, .25, "Normal", RP, .5, 1, random(3, 10), nil, true)
			end
		end)
		setpose("clickattack3_2", .2)
		sound(sounds.swing,cane,.5,random(.5,1))
		for i = 1, 5 do
			torso.Velocity = RP.CFrame.lookVector * 55
			wait()
		end
		wait(.3)
		dam1:disconnect()
		dam2:disconnect()
		attacking = false
		wait(.5)
		if combo == 3 then
			combo = 0
			print("ded")
		end
	elseif combo == 3 then
		attacking = true
		combo = combo + 1
		print("swing"..combo)
		setpose("clickattack4_1", .18)
		sound(sounds.swing,cane,.5,random(1,1.5))
		wait(.3)
		local bewmcf = larm.CFrame*cf(0,-3,0)
		local bewmrange = 7.5
		for i = 1, 2 do
			magic.block(BrickColor.new("Institutional white"), bewmcf, 1, 1, 1, 2, 2, 2, .075)
		end
		for _,v in pairs(game.Workspace:GetChildren()) do
			if v:FindFirstChild("Torso") and v.Torso:IsA("Part") then
				local vtor = v.Torso
				local dist = (bewmcf.p - vtor.Position).magnitude
				if dist <= bewmrange then
					damage(vtor, 20, 30, .5, "Normal", RP, .5, 1, random(3, 10), nil, true)
				end
			end
		end
		sound(sounds.bewm,rarm,1,random(1,2))
		print("bewm")
		setpose("clickattack4_2", .165)
		wait(.175)
		attacking = false
		--wait(.5)
		if combo == 4 then
			combo = 0
			print("ded")
		end
	end
end
bin.Selected:connect(equip)
bin.Deselected:connect(unequip)
mouse.Button1Down:connect(clicked)
mouse.KeyDown:connect(keypress)