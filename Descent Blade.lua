-- Config stuff
local wspeed = 100


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
local bc = BrickColor.new
local it = Instance.new
local vt = Vector3.new
local cf = CFrame.new
local euler = CFrame.fromEulerAnglesXYZ
local angles = CFrame.Angles
local RP = char.HumanoidRootPart
local RJ = RP.RootJoint
local RJC0 = cf(0,0,0)*euler(-1.57,0,3.14)


-- Wait for mouse
local mouse
while true do
	mouse = plr:GetMouse()
	if mouse then break end
	wait(.1)
end


-- Welds 
local LAW, RAW, LLW, RLW, HW = Instance.new("Weld",torso), Instance.new("Weld",torso), Instance.new("Weld",torso), Instance.new("Weld",torso), Instance.new("Weld",torso)
LAW.Name = "Left Weld" RAW.Name = "Right Weld" LLW.Name = "Left Leg Weld" RLW.Name = "Right Leg Weld" HW.Name = "Head Weld"
LAW.Part0 = torso RAW.Part0 = torso LLW.Part0 = torso RLW.Part0 = torso HW.Part0 = torso


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
--[[local wait = function(t)
    if t ~= nil then
        return wait(t)
    else
        local t = tick()
        game:GetService("RunService").RenderStepped:wait()
        return tick() - t, time()
    end
end]]
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
	if a then
		if not b then a = 1 b = a end
		local num = math.random(a*100, b*100)
		return num/100
	else
		return math.random()
	end
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
			h.Health = h.Health - Damage - 1000
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
local triangle = function(a, b, c, col)
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
		local w1 = Instance.new('WedgePart')
		game:GetService("Debris"):AddItem(w1, 5)
		w1.Material = "SmoothPlastic"
		w1.FormFactor = 'Custom'
		w1.BrickColor = col
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
		w2.BrickColor = col
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
magic.grid = function(cff,x,y,z,col)
	local prt = part(3, workspace, 0, 0, col, "Part", vt(1, 1, 1))
	prt.Anchored = true
	local xval = math.random()
	local yval = math.random()
	local zval = math.random()
	local msh = mesh("BlockMesh", prt, "", "", vt(0, 0, 0), vt(xval, yval, zval))
	coroutine.resume(coroutine.create(function(Part, Mesh, Frame, xvaal, yvaal, zvaal)
		Part.CFrame = Frame * cf(math.random(-x, x), math.random(-y, y), math.random(-z, z))
		for i = 1, 8 do
			wait()
			xvaal = xvaal - 0.1
			yvaal = yvaal - 0.1
			zvaal = zvaal - 0.1
			Mesh.Scale = vt(xvaal, yvaal, zvaal)
			Part.Transparency = Part.Transparency + 0.09
		end
		Part.Parent = nil
	end), prt, msh, cff, xval, yval, zval)
end
magic.stravant = function(brickcolor, cframe, x, y, z, x1, y1, z1, delay)
	local prt = part(3, workspace, 0, 0, brickcolor, "Effect", vt(0.5, 0.5, 0.5))
	prt.Anchored = true
	prt.CFrame = cframe * cf(x, y, z)
	local msh = mesh("SpecialMesh", prt, "FileMesh", "168892363", vt(0, 0, 0), vt(x1, y1, z1))
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
magic.block = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, Type, parent)
	local prt = part(3, parent or workspace, 0, 0, brickcolor, "Effect", vt())
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
magic.circle = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, parent)
	local prt = part(3, parent or workspace, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "Sphere", nil, vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	cyleffect(prt, delay, x3, y3, z3, msh)
end
magic.cylinder = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, parent)
	local prt = part(3, parent or workspace, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("CylinderMesh", prt, "", "", vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	cyleffect(prt, delay, x3, y3, z3, msh)
end
magic.head = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, parent)
	local prt = part(3, parent or workspace, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "Head", nil, vt(0, 0, 0), vt(x1, y1, z1))
	game:GetService("Debris"):AddItem(prt, 2)
	cyleffect(prt, delay, x3, y3, z3, msh)
end
magic.wave = function(brickcolor, cframe, x1, y1, z1, x3, y3, z3, delay, parent)
	local prt = part(3, parent or workspace, 0, 0, brickcolor, "Effect", vt())
	prt.Anchored = true
	prt.CFrame = cframe
	local msh = mesh("SpecialMesh", prt, "FileMesh", "20329976", vt(0, 0, 0), vt(x1, y1, z1))
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
		li.BrickColor = col
		li.formFactor = "Custom"
		li.CanCollide = false
		li.Size = Vector3.new(th, th, magz / tym)
		local ofz = Vector3.new(trz[random(1, 2)], trz[random(1, 2)], trz[random(1, 2)]) 
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


-- M2S build
local sword, SW do
	local char = game:GetService("Players").LocalPlayer.Character
	local spawnCF = char.Torso.CFrame * CFrame.new(30,5,0)
	
	local newPart = function (class,name,mat,color,size,relcf,parent,t,r,mesh)
		local p = Instance.new(class)
		if (class ~= "CornerWedgePart" and class ~= "VehicleSeat") then p.FormFactor = Enum.FormFactor.Custom end
		p.Material = mat
		p.BrickColor = BrickColor.new(color)
		p.Size = size
		p.CFrame = relcf
		p.Name = name
		p.Transparency = t
		p.Reflectance = r
		p.Parent = parent
		
		p.FrontSurface = "SmoothNoOutlines"
		p.BackSurface = "SmoothNoOutlines"
		p.TopSurface = "SmoothNoOutlines"
		p.BottomSurface = "SmoothNoOutlines"
		p.LeftSurface = "SmoothNoOutlines"
		p.RightSurface = "SmoothNoOutlines"
		
		if (mesh) then mesh.Parent = p end
		
		if (name ~= "MainPart") then
			p.CFrame = parent.MainPart.CFrame * relcf
			local w = Instance.new("Weld")
			w.C0 = relcf
			w.Part0 = parent.MainPart
			w.Part1 = p
			w.Parent = parent.MainPart
		else
			p.CFrame = spawnCF
		end
		
		return p
	end
	
	function newBlockMesh(name,scale,offset)
		local m = Instance.new("BlockMesh")
		m.Name = name
		m.Scale = scale
		m.Offset = offset
		return m
	end
	
	function newCylinderMesh(name,scale,offset)
		local m = Instance.new("CylinderMesh")
		m.Name = name
		m.Scale = scale
		m.Offset = offset
		return m
	end
	
	function newSpecialMesh(name,scale,offset,vcol,mtype,meshid,texid)
		local m = Instance.new("SpecialMesh")
		m.Name = name
		m.Scale = scale
		m.Offset = offset
		m.VertexColor = vcol
		m.MeshType = mtype
		m.MeshId = meshid
		m.TextureId = texid
		return m
	end
	
	local MainGroup = Instance.new("Model")
	MainGroup.Name = "MainGroup"
	MainGroup.Parent = char
	sword = newPart("Part","MainPart",Enum.Material.Plastic,"Really black",Vector3.new(1, 1, 6),CFrame.new(0,0,0),MainGroup,0,0,newSpecialMesh("Mesh",Vector3.new(1.5, 1.5, 1.5),Vector3.new(0, 0, 0),Vector3.new(1, 1, 1),Enum.MeshType.FileMesh,"http://www.roblox.com/asset/?id=75347685","http://www.roblox.com/asset/?id=134368360"))
	sword.CanCollide = false
	
	SW = Instance.new("Weld", torso)
	SW.Part0 = torso
	SW.Part1 = sword
	SW.C0 = cf(0.236126542, 0.208195135, 0.530502319, -0.778834879, 0, 0.627229035, 0.627229035, 0, 0.778834879, 0, 1, 0)
end


-- Logic variables
local equipped = false
local using = false

-- Pose system
local poses = {}
local pose = "none"
local posespeed = .1
local newpose = function(name, walk, torso, larm, rarm, head, lleg, rleg, sword)
	poses[name] = {
		walk = walk;
		torso = torso or rad();
		larm = rarm;
		rarm = larm;
		lleg = lleg;
		rleg = rleg;
		head = head;
		sword = sword;
	}
end
newpose("none",true,rad(),cf(-1.49987555, -0, -0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),cf(1.50018597, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),cf(0, 1.49998784, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),cf(-0.499814987, -2.00000238, -0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),cf(0.500123978, -2.00000238, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),cf(0.236126542, 0.208195135, 0.530502319, -0.778834879, 0, 0.627229035, 0.627229035, 0, 0.778834879, 0, 1, 0))
local getpose = function(name)
	return poses[name]
end
local setpose = function(name, speed)
	posespeed = speed or 1
	pose = name or "none"
end
local walktick = 1
local walkswitch = false
local heartbeat = game:GetService("RunService").Heartbeat:connect(function(dt)
	local vel = (RP.Velocity*Vector3.new(1,0,1)).magnitude
	local yvel = RP.Velocity.y
	local hitfloor,posfloor=rayCast(RP.Position,(CFrame.new(RP.Position,RP.Position - Vector3.new(0,1,0))).lookVector,4,char)
	local walking = false
	if yvel > 1 and hitfloor == nil and equipped and not using then 
		setpose("jumping",.15)
	elseif yvel < -1 and hitfloor == nil and equipped and not using then
		setpose ("falling",.15)
	elseif vel < 1 and hitfloor ~= nil and equipped and not using then
		setpose("idle",.1)
	elseif vel > 2 and vel < 22 and hitfloor ~= nil and equipped then
		if not using then
			setpose("walking",.085)
		end
		if poses[pose].walk then
			walking = true
		end
	end
	walktick = walktick + (dt*60)
	if walktick >= 20 then
		walktick = 0
		walkswitch = not walkswitch
		walktick = 1
	end
	if poses[pose] ~= nil then
		local lerpInc = dt*75
		
		local pose = poses[pose]
		local newlleg = pose.lleg * (walkswitch and cf(0,0,-1.15)*euler(64,0,0) or cf(0,0,1.15)*euler(-64,0,0))
		local newrleg = pose.rleg * (walkswitch and cf(0,0,1.15)*euler(-64,0,0) or cf(0,0,-1.15)*euler(64,0,0))
		RJ.C0 = RJ.C0:lerp(RJC0 * pose.torso, posespeed*lerpInc)
		
		--LAW.C0 = LAW.C0:lerp(pose.larm, posespeed*lerpInc)
		--RAW.C0 = RAW.C0:lerp(pose.rarm, posespeed*lerpInc)
		LAW.C0 = LAW.C0:lerp(pose.rarm, posespeed*lerpInc)
		RAW.C0 = RAW.C0:lerp(pose.larm, posespeed*lerpInc)
		-- Why? I don't know, and I can't be bothered to figure it out!
		
		LLW.C0 = LLW.C0:lerp((walking and newlleg or pose.lleg), posespeed*lerpInc)
		RLW.C0 = RLW.C0:lerp((walking and newrleg or pose.rleg), posespeed*lerpInc)
		HW.C0 = HW.C0:lerp(pose.head, posespeed*lerpInc)
		SW.C0 = SW.C0:lerp(pose.sword, posespeed*lerpInc)
	end
end)


-- Weapon setup
local bin = Instance.new("HopperBin",backpack)
bin.Name = "Descent"
script.Parent = bin


--[[
	
	Pose making
	
	USAGE
	newpose(nameOfPose, enableWalkingAnim leftArmRotation, rightArmRotation, torsoRotation, headRotation, leftLegRotation, rightLegRotation swordRotation)
	setpose(nameOfPose, speed)
	
	NOTES
	speed is lerp alpha, must be between 0 and 1
	anything higher than .2 starts to get way too fast

]]

-- Weapon poses
newpose("equipping",true,rad(),cf(-1.64987671, -2.85121672e-007, 6.28829002e-006, 0.983557284, 0.178399742, -0.0280837137, -0.17847012, 0.98394537, -1.00781517e-006, 0.0276326574, 0.00501309615, 0.999605596),cf(1.59018254, 0.77999872, 0.400001705, -0.956045926, -0.217928261, -0.196168616, 0.274051368, -0.902024806, -0.333533794, -0.10426265, -0.372634739, 0.922102571),cf(2.08616257e-007, 1.49998772, -8.64267349e-007, 0.922784925, -0.043397408, -0.382863909, 1.06278307e-007, 0.993637085, -0.112627991, 0.385315657, 0.103931367, 0.91691339),cf(-0.499814987, -2.00000238, -0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),cf(0.500123978, -2.00000238, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1),cf(0.236126542, 0.208195135, 0.530502319, -0.778834879, 0, 0.627229035, 0.627229035, 0, 0.778834879, 0, 1, 0))
newpose("idle",true,rad(),cf(-0.756638229, 0.0599996597, -0.65332669, 0.994853199, -0.0165869668, -0.0999603048, -0.0847867355, 0.403909385, -0.910861373, 0.0554833338, 0.914648652, 0.400424123),cf(0.453012466, 0.0399968475, -1.11585271, 0.664649546, 0.652857542, 0.36334303, 0.0236363281, 0.467685938, -0.883578718, -0.746781409, 0.595858216, 0.295416057),cf(1.68383121e-006, 1.49998808, -0.00999847054, 0.990724266, -0.0563919544, 0.123634346, 0.0384039208, 0.988930166, 0.14332597, -0.130348161, -0.137248456, 0.981922805),cf(-0.56342864, -2.00000286, 0.343433022, 0.997149706, 0.0485906191, 0.0577187128, -0.0557807721, 0.989901781, 0.130318925, -0.0508035831, -0.133167073, 0.989790618),cf(0.503640592, -2.00000286, -0.273655891, 0.999014914, -0.0372821577, 0.024070533, 0.0351201855, 0.995785117, 0.0847271904, -0.0271278918, -0.0837983638, 0.99611342),cf(-0.737918079, 1.03819513, -2.30186415, 0.37132141, -0.91125077, 0.17816402, 0.519117236, 0.0446528532, -0.853535831, 0.76982969, 0.409424126, 0.489626527))
newpose("jumping",true,rad(-5,0,0),cf(-0.946639121, 0.0299969912, -0.653327823, 0.994324327, -0.0883254707, -0.0593115017, 0.0300430115, 0.767891884, -0.639874518, 0.102062039, 0.634460866, 0.766187131),cf(0.403011978, -0.0600040704, -0.895852208, 0.493396819, 0.629597247, 0.600139141, -0.0772109702, 0.718949199, -0.690760911, -0.866370678, 0.294481933, 0.403338999),cf(-1.24564394e-007, 1.49998474, 0.0299979448, 0.999961138, 0.00797112565, -0.00378393754, -0.0085750008, 0.978978217, -0.203784525, 0.00208000024, 0.203809038, 0.979008496),cf(-0.443426937, -2.00000429, 0.153407246, 0.998627484, -0.0213356148, 0.0478327721, 0.00566600263, 0.951916099, 0.306306511, -0.0520680249, -0.305615067, 0.950730443),cf(0.503641069, -1.68000412, -0.213666171, 0.999014854, -0.0403042547, 0.0185717344, 0.0351199955, 0.973880887, 0.224327207, -0.0271279961, -0.223453969, 0.974336922),cf(-1.82791996, -0.0718066096, -2.14186811, -0.307601988, -0.331120163, 0.892042875, 0.304724991, -0.922402322, -0.237311438, 0.901400983, 0.198830277, 0.384633362))
newpose("falling",true,rad(10,0,0),cf(-0.666639209, 0.0599967986, -0.563327968, 0.985662341, -0.118955307, -0.119664162, -0.0245540086, 0.600531936, -0.799223661, 0.166934058, 0.79070282, 0.589000881),cf(0.403012127, -0.0600042567, -0.895852089, 0.493396819, 0.679638982, 0.542817235, -0.0772109702, 0.655826986, -0.750952363, -0.866370678, 0.328606069, 0.376058459),cf(-1.48160325e-007, 1.49998534, -0.1100021, 0.999961138, 0.00880661979, -0.000548160984, -0.0085750008, 0.98454833, 0.174903557, 0.00208000024, -0.174892053, 0.984585464),cf(-0.443426996, -2.00000429, -0.326593041, 0.998627484, 0.0118473442, 0.051017873, 0.00566600263, 0.943927228, -0.330105036, -0.0520680249, 0.329941064, 0.942564547),cf(0.503641129, -1.71000409, -0.0836663842, 0.999014854, -0.0407369211, 0.0176024325, 0.0351199955, 0.968236864, 0.247556016, -0.0271279961, -0.246693969, 0.968713641),cf(-1.20792031, 0.678192794, -1.93186831, 0.145138994, -0.795116782, 0.588832796, 0.398281008, -0.49783498, -0.770410657, 0.905708015, 0.346337527, 0.244424611))
newpose("walking",true,rad(15,0,0),cf(-0.946638227, 0.0299995244, -0.65332818, 0.993961215, -0.0423426107, -0.101233616, -0.0573373511, 0.586183429, -0.808146954, 0.0935605168, 0.809071183, 0.580215752),cf(0.403011918, -0.0600015298, -1.1158483, 0.435567051, 0.778061748, 0.452660352, -0.119193166, 0.548292816, -0.827748835, -0.892230093, 0.306586057, 0.3315579),cf(-4.93840162e-007, 1.49998796, -0.0800009891, 0.999961138, 0.00868245587, -0.00157543737, -0.00857548602, 0.998251975, 0.0584768988, 0.00208040653, -0.058461111, 0.998287559),cf(-0.443427354, -2.00000334, 0.0234032478, 0.998627484, -0.0061187488, 0.0520171858, 0.00566584058, 0.999944866, 0.00884989742, -0.0520684645, -0.00854302943, 0.99860698),cf(0.50364089, -2.00000381, 0.0463338569, 0.999014914, -0.0362941064, 0.0255364571, 0.0351201631, 0.998369157, 0.0450083017, -0.0271283463, -0.0440671183, 0.998660207),cf(-1.82791972, 0.54819423, -2.14186907, -0.0421415642, -0.671723962, 0.73960191, 0.458628416, -0.670665264, -0.582982063, 0.887628317, 0.314634681, 0.336334616))

-- Attack poses
newpose("clickattack1_1",true,rad(0,0,45),cf(-0.94663918, 0.340000004, -0.763327897, 0.994315445, 0.0909560397, -0.0553537421, -0.0529500246, -0.0286330078, -0.998186588, -0.0923760459, 0.995443225, -0.0236541145),cf(0.143012077, 0.280000031, -1.11585188, 0.428441077, 0.892365396, -0.141853005, -0.124199033, -0.0973410457, -0.987471223, -0.894993246, 0.440691203, 0.0691260174),cf(7.4505806e-009, 1.49998653, -0.130001888, 0.837803185, 0.00882007554, -0.545901239, 0.108222023, 0.977347136, 0.181880966, 0.535139143, -0.211458981, 0.817869961),cf(-0.443427026, -2.00000048, 0.0234071016, 0.990320146, -0.00611765496, -0.138667256, 0.0072430009, 0.999944866, 0.00761226891, 0.138613015, -0.00854295027, 0.990309834),cf(0.50364095, -2, 0.0463339239, 0.892211854, -0.0362951159, -0.450156212, 0.0522359908, 0.998369098, 0.0230356771, 0.448585927, -0.0440670587, 0.89265269),cf(-1.74792004, 1.48819625, -1.01186812, 0.198280096, -0.761572957, 0.617002189, -0.6179533, -0.585759163, -0.52442348, 0.760801375, -0.277295828, -0.586760819))
newpose("clickattack1_2",true,rad(),cf(-0.0566394739, 0.339999884, -1.01332808, 0.595662236, -0.8013255, -0.0553532578, -0.052028019, 0.0302770287, -0.998186529, 0.801548302, 0.597461998, -0.0236564931),cf(1.62301266, 0.28000012, -0.835852087, 0.541691124, -0.828521013, -0.141858652, -0.0189870037, 0.15666002, -0.98747015, 0.840363204, 0.537597239, 0.0691302046),cf(2.98023224e-008, 1.49998617, -0.270001799, 0.981241643, 0.0142296506, -0.192256331, 0.0802309737, 0.876662135, 0.474369645, 0.175293937, -0.480896115, 0.859075725),cf(-0.443427056, -2, 0.023407124, 0.99495101, -0.00611682702, 0.100175783, 0.00522999978, 0.999944866, 0.00911294669, -0.100226, -0.00854301639, 0.994928002),cf(0.50364095, -2, 0.0463340282, 0.989129663, -0.0832518339, 0.121209346, 0.0296009891, 0.920151889, 0.390441149, -0.14403595, -0.38260898, 0.912613869),cf(3.262079, 0.148196459, -2.15186763, -0.834534585, -0.012126239, -0.550822139, -0.0781299621, -0.987049758, 0.140102118, -0.545387745, 0.159955785, 0.822779655))
newpose("clickattack2_1",true,rad(0,0,90),cf(-1.76663959, 0.0300002098, 0.286672145, 0.413701922, 0.900140464, -0.13637431, -0.58393085, 0.377275139, 0.71881026, 0.698480844, -0.217740059, 0.681699157),cf(1.91301227, 0.279999882, 0.0141478404, 0.0494749881, -0.988649666, -0.141859591, 0.0626789853, 0.144826919, -0.987469792, 0.996806741, 0.0399634428, 0.0691328645),cf(9.87201929e-008, 1.49998629, 0.129998043, -0.0508020073, 0.0242319945, -0.998414814, 0.0368390046, 0.999070764, 0.0223734509, 0.998029113, -0.0356439911, -0.0516474806),cf(-0.443427086, -2.00000024, 0.0234070867, 0.902443111, -0.00611780258, -0.430765867, 0.00920100044, 0.999944866, 0.00507447962, 0.430711061, -0.00854290463, 0.902449489),cf(0.503641129, -2, -0.123666018, 0.733109653, 0.107207075, -0.671607673, 0.041144982, 0.978698015, 0.201139957, 0.678864717, -0.175090924, 0.713081956),cf(4.19207954, 0.0381964743, -0.191868365, 0.0566840172, -0.0928049609, -0.994069576, 0.99066937, -0.118373886, 0.0675413609, -0.123940043, -0.988622665, 0.085229136))
newpose("clickattack2_2",true,rad(0,0,90),cf(-1.86663961, 0.0700006559, 0.0666723996, 0.698318958, 0.71342653, 0.0580799505, -0.713955939, 0.70003581, -0.0147246355, -0.0511629917, -0.0311840307, 0.998203337),cf(1.72301257, 0.549999893, 0.0141478181, 0.0331249982, -0.454647064, 0.890055478, 0.0650660023, -0.887674093, -0.455852121, 0.997331023, 0.0730124563, 0.000177863083),cf(-2.98023224e-008, 1.49998581, 0.00999807473, 0.0432000011, 0.226003945, -0.973168015, 0.0345759988, 0.973155618, 0.227535948, 0.998467982, -0.0434778035, 0.0342260115),cf(-1.11342716, -1.82000005, 0.0234071054, 0.195758089, 0.435832828, -0.878480792, 0.011703006, 0.894710779, 0.446492672, 0.980582476, -0.0976854116, 0.170046285),cf(0.50364095, -2.00000024, -0.123665966, 0.0461530052, -0.0240169745, -0.998645604, 0.036588002, 0.999080777, -0.0223365016, 0.998264134, -0.0355075523, 0.0469893068),cf(3.23208094, -0.311803937, -0.191868246, 0.851349711, -0.148348719, -0.503186226, 0.505451798, -0.0248128437, 0.862498045, -0.140435949, -0.988623798, 0.0538587123))

-- Ability poses
newpose("skyward",true,rad(0,0,0),cf(-1.78663909, 0.199999273, -0.0333281085, 0.886879444, 0.45126012, -0.0990417823, -0.460134208, 0.882012665, -0.10163781, 0.0414910167, 0.135712981, 0.989879072),cf(1.36301219, 1.219998, -0.325852513, 0.995975733, 0.0823964253, -0.0352603458, 0.0617309846, -0.91590631, -0.396616906, -0.064974986, 0.392844111, -0.9173069),cf(-4.21423465e-008, 1.49998474, 0.13999784, 0.999961138, 0.00636417232, -0.00611181976, -0.0085750008, 0.864189684, -0.503093064, 0.00208000024, 0.503125846, 0.864210665),cf(-0.733426809, -2.00000095, 0.0234069452, 0.980584145, 0.189074591, 0.0520153716, -0.189776033, 0.981787503, 0.00884856097, -0.0493950062, -0.0185480267, 0.998607099),cf(0.663641095, -2.00000167, 0.0463340357, 0.985348225, -0.168632373, 0.0255379006, 0.167383045, 0.984864175, 0.0450070426, -0.0327410065, -0.0400729999, 0.998660207),cf(1.30208063, 3.04819703, -0.341867983, -0.0297929998, -0.999109626, 0.0298743155, -0.258697003, -0.0211619101, -0.965726674, 0.965498984, -0.03650029, -0.257836163))
newpose("forward",true,rad(0,0,52),cf(-1.55663896, 0.199998945, 0.286672145, 0.855996132, 0.509136617, 0.0897251144, -0.51542908, 0.827029824, 0.22439824, 0.0400440022, -0.23833093, 0.970358193),cf(1.58301163, 0.469996452, -0.765852094, 0.657042027, -0.753853858, -0.000418484764, 0.0695260018, 0.061150033, -0.995704174, 0.750640988, 0.654190361, 0.0925905854),cf(7.07805157e-008, 1.49998522, 0.139998019, 0.690484822, -0.0170700457, -0.723145425, -0.0346029922, 0.997797549, -0.0565934367, 0.722518802, 0.0640999079, 0.688373327),cf(-0.733426988, -2.00000143, 0.353406817, 0.969849885, 0.207619444, -0.127614543, -0.183750987, 0.966961205, 0.176696703, 0.160083979, -0.147919968, 0.975957394),cf(0.663641036, -2.00000119, 0.0463339537, 0.589267015, -0.168631271, -0.790144205, 0.133318007, 0.984864414, -0.110763341, 0.796863019, -0.0400712751, 0.602829695),cf(3.12208652, 0.508194387, -2.15186763, -0.0138110016, -0.663701713, -0.747869849, 0.999798119, -0.0200850219, -0.000638812606, -0.0145970015, -0.747727633, 0.663845122))
newpose("praying",true,rad(),cf(-0.606637776, 0.029999882, -0.973328352, 0.877891243, -0.468036532, -0.101236679, 0.20180504, 0.553326726, -0.808148742, 0.4342601, 0.689036548, 0.580212831),cf(0.613015056, -0.0400024205, -1.0258534, 0.791316688, 0.564337909, 0.235246092, -0.0998699591, 0.49890101, -0.860885501, -0.603194773, 0.657739043, 0.451149046),cf(5.18397428e-007, 1.49998343, -0.230001897, 0.999961138, 0.0084068235, 0.00268076966, -0.0085750008, 0.854174197, 0.519916356, 0.00208100025, -0.519919097, 0.854212999),cf(-0.443426222, -2.00000429, 0.0234068967, 0.998627484, -0.0061187488, 0.0520171858, 0.00566584058, 0.999944866, 0.00884989742, -0.0520684645, -0.00854302943, 0.99860698),cf(0.503642797, -2.00000405, 0.0463329852, 0.999014914, -0.0362941064, 0.0255364571, 0.0351201631, 0.998369157, 0.0450083017, -0.0271283463, -0.0440671183, 0.998660207),cf(-0.00791849662, 0.828193307, -1.68186915, -0.999248743, 0.0366873257, -0.012494361, 0.011835997, -0.0181079991, -0.999765992, -0.0369049907, -0.999162734, 0.0176601633))

-- Breathing animation
--[[coroutine.resume(coroutine.create(function()
	newpose("idlebreath", rad(0,0,0), rad(0,0,0), rad(0,0,0), rad(0,0,0), rad(0,0,0), rad(0,0,0))
	local speed = .0075
	local state1 = getpose("idle")
	local state2 = getpose("idlebreath")
	while true do
		for i = 0, 1, speed do
			newpose("idle",
				state1.larm:lerp(state2.larm, i),
				state1.rarm:lerp(state2.rarm, i),
				state1.torso:lerp(state2.torso, i),
				state1.head:lerp(state2.head, i),
				state1.lleg:lerp(state2.lleg, i),
				state1.rleg:lerp(state2.rleg, i)
			)
			wait()
		end
		for i = 0, 1, speed do
			newpose("idle",
				state2.larm:lerp(state1.larm, i),
				state2.rarm:lerp(state1.rarm, i),
				state2.torso:lerp(state1.torso, i),
				state2.head:lerp(state1.head, i),
				state2.lleg:lerp(state1.lleg, i),
				state2.rleg:lerp(state1.rleg, i)
			)
			wait()
		end
	end
end))]]

-- Weapon usage (edit to liking)
local equip = function()
	equipped = true
	if using then
		repeat
			wait()
		until not using
	end
	using = true
	if not equipped then
		using = false
		return
	end
	LS.Part1 = nil
	LAW.Part1 = larm
	RS.Part1 = nil
	RAW.Part1 = rarm
	LH.Part1 = nil
	LLW.Part1 = lleg
	RH.Part1 = nil
	RLW.Part1 = rleg
	neck.Part1 = nil
	HW.Part1 = head
	setpose("equipping", .125)
	wait(.3)
	if not equipped then
		using = false
		return
	end
	setpose("idle", .085)
	using = false
end
local unequip = function()
	equipped = false
	if using then
		repeat
			wait()
		until not using
	end
	if equipped then
		return
	end
	setpose("none", .1)
	wait(.65)
	if equipped then
		return
	end
	LAW.Part1 = nil
	LS.Part1 = larm
	RAW.Part1 = nil
	RS.Part1 = rarm
	LLW.Part1 = nil
	LH.Part1 = lleg
	RLW.Part1 = nil
	RH.Part1 = rleg
	HW.Part1 = nil
	neck.Part1 = head
end
local combo = 0
local clicked = function(hit)
	if using or not equipped then
		return
	end
	if combo == 0 then
		using = true
		combo = combo + 1
		setpose("clickattack1_1", .075)
		wait(.5)
		local dam = sword.Touched:connect(function(hit)
			damage(hit, 30, 90, random(2, 5), "Normal", RP, .5, 1, random(3, 10), nil, true)
		end)
		setpose("clickattack1_2", .14)
		sound(sounds.slice,torso,.7,.5)
		wait(.4)
		dam:disconnect()
		using = false
		wait(.3)
		if combo == 1 then
			combo = 0
		end
	end
end
local pressed = function(key)
	if using or not equipped then
		return
	end
	if key == "z" then
		using = true
		setpose("clickattack1_1",.15)
		wait(.15)
		local dam = sword.Touched:connect(function(hit)
			damage(hit, 10, 40, random(2, 5), "Normal", RP, .5, 1, random(3, 10), nil, true)
		end)
		setpose("clickattack2_1", .15)
		sound(sounds.slice,torso,1,1)
		wait(.35)
		dam:disconnect()
		using = false
	elseif key == "x" then
		using = true
		hum.WalkSpeed = 0
		local dam = sword.Touched:connect(function(hit)
			damage(hit, 10, 40, random(2, 5), "Normal", RP, .5, 1, random(3, 10), nil, true)
		end)
		setpose("clickattack2_1", .1)
		sound(sounds.metalhit,torso,.75,1)
		wait(.4)
		dam:disconnect()
		setpose("clickattack2_2", .14)
		sound(sounds.metalhit,torso,.75,.8)
		for i = 1, 2 do
			magic.block(BrickColor.new("Really black"), rarm.CFrame*cf(0,-1,0), 1, 2, 1, .5, 1, .5, .065)
			wait(.1)
		end
		coroutine.resume(coroutine.create(function()
			local bewmcf = torso.CFrame*cf(4.5,-2.5,0)
			for i = 1, 3 do
				for _,v in next,game.Workspace:GetChildren() do
					if v:FindFirstChild("Torso") and v.Torso:IsA("BasePart") then
						if (v.Torso.Position - bewmcf.p).magnitude <= 5 then
							damage(v.Torso,15,30, random(2, 5), "Normal", RP, .5, 1, random(3, 10), nil, true)
						end
					end
				end
				for i = 1, 3 do
					magic.block(BrickColor.new("Really black"), bewmcf, 3, 3, 3, 2, 2, 2, .075)
				end
				sound(sounds.bewm,torso,.75,.8)
				bewmcf = bewmcf*cf(5,0,0)
				wait(.3)
			end
		end))
		for i = 1, 2 do
			magic.block(BrickColor.new("Really black"), rarm.CFrame*cf(0,-1,0), 1, 2, 1, .5, 1, .5, .065)
			wait(.1)
		end
		hum.WalkSpeed = wspeed
		using = false
	elseif key == "c" then
		using = true
		hum.WalkSpeed = 0
		setpose("praying",.1)
		sound(sounds.heal,torso,.5,.8)
		for i = 1, 20 do
			wait(.1)
			local randpos = CFrame.new(torso.CFrame.p + Vector3.new(math.random(-2,2),-3,math.random(-2,2)))
			magic.circle(BrickColor.new("Really black"), randpos, 4, .5, 4, 0, 8, 0, .15)
            for i = 1, 2 do
                magic.block(BrickColor.new("Really black"), sword.CFrame*cf(0,0,-4), 1, 2, 1, .5, 1, .5, .075)
            end
			hum.Health = hum.Health + 1
		end
		hum.WalkSpeed = wspeed
		using = false
	elseif key == "v" then
		using = true
		hum.WalkSpeed = 0
		setpose("skyward", .1)
		sound(sounds.chargepulse,torso,.8,.75)
		for i = 1, 10 do
            for i = 1, 2 do
                magic.block(BrickColor.new("Really black"), sword.CFrame*cf(0,0,-4), 1, 2, 1, .5, 1, .5, .065)
            end
			for i = 1, 3 do
				magic.grid(torso.CFrame,5,5,5,BrickColor.new("Really black"))
			end
			wait(.1)
		end
		setpose("forward",.155)
		for i = 1, 5 do
			for i = 1, 3 do
				magic.block(BrickColor.new("Really black"), sword.CFrame*cf(0,0,-4), 1, 2, 1, .5, 1, .5, .065)
			end
			wait(.055)
		end
		local bewmcf = sword.CFrame*cf(0,0,-4)
		sound(sounds.explosion,torso,1,1)
		coroutine.resume(coroutine.create(function()
			for i = 1, 20 do
				for _,v in next,game.Workspace:GetChildren() do
					if v:FindFirstChild("Torso") and v.Torso:IsA("BasePart") then
						if (v.Torso.Position - bewmcf.p).magnitude <= 7.5 then
							damage(v.Torso,30,90, random(2, 5), "Normal", RP, .5, 1, random(3, 10), nil, true)
						end
					end
				end
				for i = 1, 2 do
					magic.block(BrickColor.new("Really black"), bewmcf, 2, 2, 2, 3, 3, 3, .075)
				end
				sound(sounds.bewm,torso,.5,.5)
				bewmcf = bewmcf*cf(0,0,-5)
				wait(.1)
			end
		end))
		wait(.75)
		hum.WalkSpeed = wspeed
		using = false
	end
end
hum.WalkSpeed = wspeed
local selected = bin.Selected:connect(equip)
local deselected = bin.Deselected:connect(unequip)
local button1down = mouse.Button1Down:connect(clicked)
local keydown = mouse.KeyDown:connect(pressed)
char.Changed:connect(function(prop, val)
    if prop == "Parent" and val == nil then
        heartbeat:disconnect()
        selected:disconnect()
        deselected:disconnect()
        button1down:disconnect()
        keydown:disconnect()
    end
end)