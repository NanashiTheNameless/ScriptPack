--------------------------------------------------Diable JAmble V 0.5------------------------
wait();
local ta1 = 5;
Plrs = game:GetService("Players")

me = Plrs.LocalPlayer
char = me.Character
Modelname = "Edit"
dmgs = {Pdmg = {30, 30, "Punch"}, Kdmg = {20, 25, "Kick"}, K2dmg = {25, 30, "Doublekick"}, Rdmg = {20, 20, "RoundHouse"},
Kardmg = {15, 15, "Karate"}}
dmg = dmgs.Pdmg
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
able = true
Jamble = false
effectOn = false
block = false
breakblock = 10
holdkey = false

Add = {
	Sphere = function(P)
		local m = Instance.new("SpecialMesh",P)
		m.MeshType = "Sphere"
		return m
	end,
	BF = function(P)
		local bf = Instance.new("BodyForce",P)
		bf.force = Vector3.new(0, P:GetMass()*187, 0)
		return bf
	end,
	BP = function(P)
		local bp = Instance.new("BodyPosition",P)
		bp.maxForce = Vector3.new(math.huge, 0, math.huge)
		bp.P = 14000
		return bp
	end,
	BG = function(P)
		local bg = Instance.new("BodyGyro",P)
		bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
		bg.P = 14000
		return bg
	end
}

function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
	local p = Instance.new("Part")
	p.formFactor = "Custom"
	p.Anchored = Anchor
	p.CanCollide = Collide
	p.Transparency = Tran
	p.Reflectance = Ref
	p.BrickColor = BrickColor.new(Color)
	for _, Surf in pairs(Surfaces) do
		p[Surf] = "Smooth"
	end
	p.Size = Vector3.new(X, Y, Z)
	if Break then
		p:BreakJoints()
	else p:MakeJoints() end
	p.Parent = Parent
	return p
end

function Weld(p0, p1, x, y, z, a, b, c)
	local w = Instance.new("Weld")
	w.Parent = p0
	w.Part0 = p0
	w.Part1 = p1
	w.C1 = CFrame.new(x,y,z) * CFrame.Angles(a,b,c)
	return w
end

function ComputePos(pos1, pos2)
	local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
	return CFrame.new(pos1, pos3)
end

function getHumanoid(c)
	local h = nil
	for i,v in pairs(c:children()) do
		if v:IsA("Humanoid") and c ~= char then
			if v.Health > 0 then
				h = v
			end
		end
	end
	return h
end

function getHead(c, pos, m)
	local h = nil
	local n = nil
	t = c:findFirstChild("Torso")
	if t ~= nil then
		n = t:findFirstChild("Neck")
	end
	for i,v in pairs(c:children()) do
		if v.Name == "Head" then
			if (v.Position - pos).magnitude < m then
				h = v
			end
		end
	end
	return h, n
end

for i,v in pairs(char:children()) do
	if v.Name == Modelname then
		v:remove()
	end
end

torso = char.Torso
neck = torso.Neck
hum = char.Humanoid
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rleg = char["Right Leg"]
Lleg = char["Left Leg"]

LastHP = hum.Health

function HpChange(newhp)
	if block and hum.Health > 0.1 then
		local dif = LastHP - newhp
		if dif > 0 then
			local h = LastHP - ((LastHP-newhp)/3)
			hum.Health = h
			wait()
			hum.Health = h
		end
		if dif > breakblock then
			block = false
			local a = Add.BP(torso)
			a.position = torso.Position
			local b = Add.BG(torso)
			b.cframe = CFrame.new(torso.Position, torso.CFrame * CFrame.new(0, 0, -5).p)
			wait(0.6)
			a:remove()
			b:remove()
			able = true
		end
	end
	LastHP = hum.Health
end

hum.HealthChanged:connect(HpChange)

hc = Instance.new("Humanoid")
hc.Health = 0
hc.MaxHealth = 0

slash = Instance.new("Sound")
slash.SoundId = "rbxasset://sounds//swordslash.wav"
slash.Volume = 0.25
slash.Pitch = 1.4
slash.Parent = Rarm

hitsound = Instance.new("Sound")
hitsound.SoundId = "http://www.roblox.com/asset/?id=2801263"
hitsound.Volume = 0.55
hitsound.Pitch = 2.1
hitsound.Parent = torso

Mo = Instance.new("Model")
Mo.Name = Modelname

RABrick = Part(Mo, false, false, 1, 0, "Really Black", 0.1, 0.1, 0.1, true)
LABrick = Part(Mo, false, false, 1, 0, "Really Black", 0.1, 0.1, 0.1, true)
RLBrick = Part(Mo, false, false, 1, 0, "Really Black", 0.1, 0.1, 0.1, true)
LLBrick = Part(Mo, false, false, 1, 0, "Really Black", 0.1, 0.1, 0.1, true)

RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)

RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLW = Weld(RLBrick, nil, 0, 0.8, 0, 0, 0, 0)
LLW = Weld(LLBrick, nil, 0, 0.8, 0, 0, 0, 0)

TBricks = {}

for i, v in pairs({Rarm, Larm, Rleg, Lleg}) do
	local p = Part(Mo, false, false, 1, 0, "Really black", 0.9, 0.9, 0.8, true)
	Weld(v, p, 0, 0.7, 0, 0, 0, 0)
	table.insert(TBricks, {p, hurt = false, able = true})
end

function startEff(part)
	effectOn = true
	local lastPoint = part.Position
	coroutine.resume(coroutine.create(function()
		while effectOn do
			wait()
			local mag = (lastPoint - part.Position).magnitude
			local p = Part(Mo, true, false, 0.2, 0.05, "White", 0.1, 0.1, mag+0.2, true)
			p.CFrame = CFrame.new(lastPoint, part.Position) * CFrame.new(0, 0, -mag/2)
            p.Transparency = 1
			Instance.new("BlockMesh",p)
			lastPoint = part.Position
			coroutine.resume(coroutine.create(function()
				for x=0.2,1,0.2 do
					wait()
					p.Transparency = 1
				end
				p:remove()
			end))
		end
	end))
end

function JambleEff(part)
	effectOn = true
	local lastPoint = part.Position
	coroutine.resume(coroutine.create(function()
		while effectOn do
			wait()
			local mag = (lastPoint - part.Position).magnitude
			local p = Part(Mo, true, false, 0.2, 0.05, "Bright orange", 1.25, 1.25, 1.25, true)
			p.CFrame = CFrame.new(lastPoint, part.Position) * CFrame.new(0, 0, -mag/2)
            p.Transparency = 0
			Instance.new("BlockMesh",p)
			lastPoint = part.Position
			coroutine.resume(coroutine.create(function()
				for x=0.2,1,0.2 do
					wait()
					p.Transparency = x
				end
				p:remove()
			end))
		end
	end))
end

function endEff()
	effectOn = false
end

function ShowDMG(p, d)
	local mo = Instance.new("Model")
	mo.Name = d
	local pa = Part(mo, false, true, 0, 0, "Bright red", 0.8, 0.2, 0.8, true)
	pa.CFrame = CFrame.new(p.Position)
	pa.Name = "Head"
	local hah = hc:clone()
	hah.Parent = mo
	local bp = Add.BP(pa)
	bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
	bp.position = p.Position + Vector3.new(0, 2.5, 0)
	Add.BG(pa)
	coroutine.resume(coroutine.create(function()
		wait(0.2)
		mo.Parent = workspace
		wait(1.5)
		mo:remove()
	end))
end

for i, v in pairs(TBricks) do
	v[1].Touched:connect(function(hit)
		local fig = hit.Parent
		H, T = getHumanoid(fig), fig:findFirstChild("Torso")
		if H ~= nil and T ~= nil and v.hurt and v.able then
			hitsound:play()
			v.able = false
			local d = math.random(dmg[1], dmg[2])
			local hed, ne = getHead(fig, v[1].Position, 2.5)
			if dmg[3] == "RoundHouse" and hed ~= nil then
				d = math.random(dmg[1]*1, dmg[2]*1)
				coroutine.resume(coroutine.create(function()
					if ne ~= nil then
					for i=0,60,20 do
						ne.C0 = necko * CFrame.Angles(math.rad(-i), 0, 0)
						wait()
					end
					for i=60,0,-20 do
						ne.C0 = necko * CFrame.Angles(math.rad(-i), 0, 0)
						wait()
					end
					ne.C0 = necko
					end
				end))
			end
			H.Health = H.Health - d
			local xd = CFrame.new(v[1].Position, hit.Position)
			hit.Velocity = xd.lookVector * (d*2.3)
			ShowDMG(v[1], d)
			wait(0.34)
			v.able = true
		end
	end)
end

Mo.Parent = char

RAWBattle = nil
LAWBattle = nil

function nilparts()
	LAW.Part1 = nil
	RAW.Part1 = nil
	RLW.Part1 = nil
	LLW.Part1 = nil
	LAW.C0 = CFrame.new(0, 0, 0)
	RLW.C0 = CFrame.new(0, 0, 0)
	LLW.C0 = CFrame.new(0, 0, 0)
	RAW.C0 = CFrame.new(0, 0, 0)
end

function attach()
	LAW.Part1 = Larm
	RLW.Part1 = Rleg
	LLW.Part1 = Lleg
	RAW.Part1 = Rarm
	LAW.C0 = CFrame.new(0, 0, 0)
	RLW.C0 = CFrame.new(0, 0, 0)
	LLW.C0 = CFrame.new(0, 0, 0)
	RAW.C0 = CFrame.new(0, 0, 0)
end


function Talk(msg)
game:GetService("Chat"):Chat(char.Head, msg, Enum.ChatColor.Red)
end

attacks = {

function(mouse)
Talk("Diable Jamble!")
   attach()
   Gyro = Instance.new("BodyGyro")
   Gyro.Parent = torso
   Gyro.D = 50
   Gyro.maxTorque = Vector3.new(0, 0, 0)
   Gyro.cframe = torso.CFrame
   Velocity = Instance.new("BodyVelocity")
   Velocity.Parent = torso
   Velocity.maxForce = Vector3.new(0, 0, 0)
		neck.C0 = necko * CFrame.Angles(0.78, 0, 0)
		RAW.C0 = CFrame.Angles(3.14, 0, -0.12) * CFrame.new(-0.5, 0.25, 0.3)
		LAW.C0 = CFrame.Angles(3.14, 0, 0.12) * CFrame.new(0.5, 0.25, 0.55)
		LLW.C0 = CFrame.Angles(0, 0, -0.12) * CFrame.new(0, 0.23, -0.55)

local Ball2 = Instance.new("Part")
Ball2.Parent = char
Ball2.Name = "Ball2"
Ball2.CanCollide = false
Ball2.Locked = true
Ball2.TopSurface = "Smooth"
Ball2.BottomSurface = "Smooth"
Ball2.formFactor = "Symmetric"
Ball2.BrickColor = BrickColor.new("Bright orange")
Ball2.CFrame = torso.CFrame
Ball2.Transparency = 0
Ball2.Reflectance = 0.1
Ball2.Size = Vector3.new(1, 1, 1)
b2Weld = Instance.new("Weld")
b2Weld.Parent = torso
b2Weld.Part0 = torso
b2Weld.Part1 = Ball2
b2Weld.C0 = CFrame.new(0, 0, 0)
b2Weld.Name = "TorsoWeld2"
Ball2Mesh = Instance.new("SpecialMesh")
Ball2Mesh.MeshType = "FileMesh"
Ball2Mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
Ball2Mesh.Parent = Ball2
Ball2Mesh.Scale = Vector3.new(1.5, 1.5, 1.5)

m = Instance.new("Fire")
m.Parent = char["Right Leg"]
    Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
    Gyro.cframe = torso.CFrame
      for i = 1, 200 do
	slash:play()
Ball2Mesh.Scale = Ball2Mesh.Scale + Vector3.new(0.06, 0.12, 0.06)
      torso.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 4.5, 0)
      Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 1.4, 0)
       wait()
       end
	wait()
   expl = Instance.new("Explosion")
   expl.Parent = game.Workspace
   expl.BlastPressure = 0
   expl.Position = torso.Position
    Jamble = true
    Gyro:Remove()
    Velocity:Remove()
    Ball2:Remove()
    b2Weld:Remove()
	nilparts()

	neck.C0 = necko
end,

function(mouse)
	dmg = dmgs.Kardmg
        TBricks[4].hurt = true
   attach()
   Velocity = Instance.new("BodyVelocity")
   Velocity.Parent = torso
   Velocity.maxForce = Vector3.new(0, 0, 0)
    torso.Velocity = Vector3.new(0, 90, 0)
		RAW.C0 = CFrame.Angles(3.14, 0, -0.12)
		LAW.C0 = CFrame.Angles(3.14, 0, 0.12)
		LLW.C0 = CFrame.Angles(2.75, 0, 0)
    for i = 1, 1 do
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (torso.Position-t.Position).magnitude <= 10 and h.Sit == false and h.PlatformStand == false then
        if i < 1 then
          t.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 100, 0)
        hitsound:play()
        end
        if i >= 1 then
         if h ~= nil and t ~= nil then
          t.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 100, 0)
         end
        end
       end
      end
     end
    end
   wait()
  end
               wait(1)
        TBricks[4].hurt = false
             Velocity:Remove()
    for i = 1, 10 do
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (torso.Position-t.Position).magnitude <= 10 and char:findFirstChild("Kicked") == nil and h.Sit == false and h.PlatformStand == false  then
        p = Instance.new("StringValue")
        p.Name = "Kicked"
        p.Parent = char
            game.Debris:AddItem(p, 1.5)
        if i < 10 then
        torso.CFrame = t.CFrame * CFrame.new(0, 3, 0)
   Velocity = Instance.new("BodyVelocity")
   Velocity.Parent = torso
   Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            game.Debris:AddItem(Velocity, 1.5)
		LLW.C0 = CFrame.Angles(1.75, 0, 0)
                 wait(0.25)
		LLW.C0 = CFrame.Angles(0.75, 0, 0)
        h.Health = h.Health - 25
         h.Sit = true
          t.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, -100, 0)
        hitsound:play()
        end
        if i >= 10 then
         if h ~= nil and t ~= nil then
        h.PlatformStand = true
          t.Velocity = torso.CFrame.lookVector * 100 + Vector3.new(0, 50, 0)
         end
        end
       end
      end
     end
    end
   wait()
   end
        nilparts()
	neck.C0 = necko
end,

function(mouse)
	local Orig = torso.CFrame
	local MousePos = mouse.Hit.p
	local bg = Add.BG(torso)
	local bp = Add.BP(torso)
	bp.position = Orig.p
	local CF = ComputePos(Orig.p, MousePos)
	local CF2 = CF
	bg.cframe = CF2
	attach()
	bp.position = CF * CFrame.new(0, 0, -5).p
	TBricks[4].hurt = true
	startEff(TBricks[4][1])
	slash:play()
	dmg = dmgs.K2dmg
	for i = 0, -100, -100/4 do
		neck.C0 = necko * CFrame.Angles(0.25, 0, 0)
		RLW.C0 = CFrame.Angles(0, 0, 0)
		LLW.C0 = CFrame.Angles(0, 1, 0)
		RAW.C0 = CFrame.Angles(3.14, 0, -0.12) * CFrame.new(-0.5, 0.25, 0.3)
		LAW.C0 = CFrame.Angles(3.14, 0, 0.12) * CFrame.new(0.5, 0.25, 0.55)
		CF2 = CF * CFrame.Angles(0, 0, 0)
		bg.cframe = CF2
		wait()
	end
	wait(0.1)
	bp.position = CF * CFrame.new(0, 0, -5).p
	TBricks[4].hurt = false
	endEff()
	startEff(TBricks[3][1])
	TBricks[3].hurt = true
	local lol1, lol2 = RLW.C0, LLW.C0
	slash:play()
	bp.position = CF * CFrame.new(0, 0, -5).p
	for i = -100, -290, -190/5 do
		RLW.C0 = lol1 * CFrame.Angles(0, 0, 0)
		LLW.C0 = CFrame.Angles(0, 0, -1)
		CF2 = CF * CFrame.Angles(math.rad(100/5), math.rad(i), 0)
		bg.cframe = CF2
		wait()

	TBricks[4].hurt = false
	TBricks[3].hurt = false

	end
	endEff()
	wait()
	nilparts()
	bg:remove()
	bp:remove()
	neck.C0 = necko
end,

function(mouse)
	if mouse ~= nil then
	local Orig = torso.CFrame
	local MousePos = mouse.Hit.p
	local bg = Add.BG(torso)
	local bp = Add.BP(torso)
	bp.position = Orig.p
	local CF = ComputePos(Orig.p, MousePos)
	local CF2 = CF
	bg.cframe = CF2
	startEff(TBricks[3][1])
	attach()
	bp.position = CF * CFrame.new(0, 0, -1).p
	dmg = dmgs.Rdmg
	for i = 0, 180, 180/7 do
		neck.C0 = necko * CFrame.Angles(0, 0, -1.5)
		RLW.C0 = CFrame.Angles(0, 0, 0)
		LLW.C0 = CFrame.Angles(0, 0, 0)
		RAW.C0 = CFrame.Angles(math.rad(i/5), 0, math.rad(i/10))
		LAW.C0 = CFrame.Angles(math.rad(-i/5), 0, math.rad(-i/10))
		CF2 = CF * CFrame.Angles(0, -4.71, 0)
		bg.cframe = CF2
		wait()
	end
	slash:play()
	TBricks[3].hurt = true
    for i = 1, 1 do
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (char["Right Leg"].Position-t.Position).magnitude <= 5 then
        if i < 1 then
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
        hitsound:play()
        end
        if i >= 1 then
         if h ~= nil and t ~= nil then
        h.PlatformStand = true
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
         end
        end
       end
      end
     end
    end
       wait()
       end
	for i = 180, 180+90, 90/4 do
		neck.C0 = necko * CFrame.Angles(0, 0, -1.5)
		RLW.C0 = CFrame.Angles(0, 0, math.rad((i*1.45)-(180*1.45))) * CFrame.new(0, (-i+180)/100, 0)
		LLW.C0 = CFrame.Angles(0, 0, math.rad((-i/3)+(180/3)))
		RAW.C0 = CFrame.Angles(math.rad(i/5), 0, math.rad(i/10))
		LAW.C0 = CFrame.Angles(math.rad(-i/5), 0, math.rad(-i/10))
		CF2 = CF * CFrame.Angles(0, -4.71, 0)
		bg.cframe = CF2
		wait()
	end
    for i = 1, 1 do
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (char["Right Leg"].Position-t.Position).magnitude <= 5 then
        if i < 1 then
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
        hitsound:play()
        end
        if i >= 1 then
         if h ~= nil and t ~= nil then
        h.PlatformStand = true
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
         end
        end
       end
      end
     end
    end
       wait()
       end
	TBricks[3].hurt = false
	wait()
	for i = 270, 360, 90/5 do
		local a = i-270
		neck.C0 = necko * CFrame.Angles(0, 0, -1.5)
		RLW.C0 = CFrame.Angles(0, 0, math.rad((-a*1.1)-(180*1.45))) * CFrame.new(0, (a/100)+((-270+180)/100), 0)
		LLW.C0 = CFrame.Angles(0, 0, math.rad((a/3)-(90/3)))
		RAW.C0 = CFrame.Angles(math.rad(270/5-((a*3)/5)), 0, math.rad(270/10-((a*3)/10)))
		LAW.C0 = CFrame.Angles(math.rad(-270/5+((a*3)/5)), 0, math.rad(-270/10+((a*3)/10)))
		CF2 = CF * CFrame.Angles(math.rad((180/5.8)-((a*2)/5.8)), math.rad(-i), 0)
		bg.cframe = CF2
		wait()
	end
    for i = 1, 1 do
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (char["Right Leg"].Position-t.Position).magnitude <= 5 then
        if i < 1 then
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
        hitsound:play()
        end
        if i >= 1 then
         if h ~= nil and t ~= nil then
        h.PlatformStand = true
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
         end
        end
       end
      end
     end
    end
       wait()
       end
	endEff()
	wait()
	nilparts()
	bg:remove()
	bp:remove()
	neck.C0 = necko
	end
end,
function(mouse)
   Gyro = Instance.new("BodyGyro")
   Gyro.Parent = torso
   Gyro.D = 50
   Gyro.maxTorque = Vector3.new(0, 0, 0)
   Gyro.cframe = torso.CFrame
   Velocity = Instance.new("BodyVelocity")
   Velocity.Parent = torso
   Velocity.maxForce = Vector3.new(0, 0, 0)
	startEff(TBricks[3][1])
	startEff(TBricks[4][1])
	attach()
    torso.CFrame = torso.CFrame * CFrame.new(0, 0.1, 0) * CFrame.Angles(3.14, 0, 0)
		RAW.C0 = CFrame.Angles(3.14, 0, 0)
		LAW.C0 = CFrame.Angles(3.14, 0, 0)
		LLW.C0 = CFrame.Angles(1.5, 0, -1.5) * CFrame.new(0, -1, 0)
		RLW.C0 = CFrame.Angles(1.5, 0, 1.5) * CFrame.new(0, -1, 0)
local Ball2 = Instance.new("Part")
Ball2.Parent = char
Ball2.Name = "Ball2"
Ball2.CanCollide = false
Ball2.Locked = true
Ball2.TopSurface = "Smooth"
Ball2.BottomSurface = "Smooth"
Ball2.formFactor = "Symmetric"
Ball2.BrickColor = BrickColor.new("White")
Ball2.CFrame = torso.CFrame
Ball2.Transparency = 0
Ball2.Reflectance = 0.1
Ball2.Size = Vector3.new(1, 1, 1)
b2Weld = Instance.new("Weld")
b2Weld.Parent = torso
b2Weld.Part0 = torso
b2Weld.Part1 = Ball2
b2Weld.C0 = CFrame.new(0, 0, 0)
b2Weld.Name = "TorsoWeld2"
Ball2Mesh = Instance.new("SpecialMesh")
Ball2Mesh.MeshType = "FileMesh"
Ball2Mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
Ball2Mesh.Parent = Ball2
Ball2Mesh.Scale = Vector3.new(1.5, 3, 1.5)

    Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
    Gyro.cframe = torso.CFrame
      for i = 1, 50 do
	slash:play()
Ball2Mesh.Scale = Ball2Mesh.Scale + Vector3.new(0.5, 0, 0.5)
      torso.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 4.5, 0)
      Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 0.7, 0)
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (torso.Position-t.Position).magnitude <= 1.5+(i/2) then
        if i < 50 then
        h.Health = h.Health - 1
          t.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 0, 0)
        hitsound:play()
        end
        if i >= 50 then
         if h ~= nil and t ~= nil then
        h.PlatformStand = true
          t.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 0, 0)
         end
        end
       end
      end
     end
    end
       wait()
       end
	wait()
    Gyro:Remove()
    Velocity:Remove()
    Ball2:Remove()
    b2Weld:Remove()
	nilparts()
	endEff()

	neck.C0 = necko
       wait(2)
end,

function(mouse)
    attach()
   Velocity = Instance.new("BodyVelocity")
   Velocity.Parent = torso
   Velocity.maxForce = Vector3.new(0, math.huge, 0)
   Gyro = Instance.new("BodyGyro")
   Gyro.Parent = torso
   Gyro.D = 50
   Gyro.maxTorque = Vector3.new(0, 0, 0)
   Gyro.cframe = torso.CFrame
		neck.C0 = necko * CFrame.Angles(0.78, 0, 0)
		RAW.C0 = CFrame.Angles(1.57, 0, 0)
		LAW.C0 = CFrame.Angles(1.57, 0, 0)
		RLW.C0 = CFrame.Angles(1.57, 0, 0)
		LLW.C0 = CFrame.Angles(1.57, 0, 0)
	dmg = dmgs.Kardmg
          torso.Velocity = torso.CFrame.lookVector * 80 + Vector3.new(0, 0, 0)
         char.Humanoid.PlatformStand = true
    Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
    Gyro.cframe = torso.CFrame * CFrame.Angles(1.57, 0, 0)   
        for i = 1, 15 do
     Gyro.cframe = Gyro.cframe * CFrame.fromEulerAnglesXYZ(-0.78, 0, 0)
        wait()
        end
	TBricks[3].hurt = true
	TBricks[4].hurt = true
        nilparts()
    Gyro.cframe = torso.CFrame * CFrame.Angles(-1.25, 1.57, 0)  
        attach()
        for i = 1, 15 do
        attach()
	RLW.C0 = CFrame.Angles(0.75, 0, 0)
        wait() 
        nilparts()
        wait(0.0025)
        attach()
	RLW.C0 = CFrame.Angles(-0.75, 0, 0) 
        wait() 
        nilparts()
       wait(0.0025)  
        end
	wait()
	TBricks[3].hurt = false
	TBricks[4].hurt = false
        Gyro:Remove()
        Velocity:Remove()
        nilparts()
        char.Humanoid.PlatformStand = false
	neck.C0 = necko
end,
function(mouse)
	if mouse ~= nil then
	local Orig = torso.CFrame
	local MousePos = mouse.Hit.p
	local bg = Add.BG(torso)
	local bp = Add.BP(torso)
	bp.position = Orig.p
	local CF = ComputePos(Orig.p, MousePos)
	local CF2 = CF
	bg.cframe = CF2
	JambleEff(TBricks[4][1])
	attach()
	bp.position = CF * CFrame.new(0, 0, -5).p
	dmg = dmgs.Rdmg
	TBricks[4].hurt = true
      wait(0.25)
	for i = 1, 3 do
		neck.C0 = necko * CFrame.Angles(0, 0, 0)
		RLW.C0 = CFrame.Angles(((i/1.25)), 0, 0)
		RAW.C0 = CFrame.Angles(-0.75, 0, -0.12) * CFrame.new(-0.5, 0.25, 0.3)
		LAW.C0 = CFrame.Angles(3.14, 0, 0.12) * CFrame.new(0.5, 0.25, 0.55)
		CF2 = CF * CFrame.Angles(0, 0, 0)
		bg.cframe = CF2
        x = Instance.new("Part")
        x.BrickColor = BrickColor.new("Bright orange")
        x.Transparency = 0.75
        x.Size = Vector3.new(5, 5, 5)
        x.TopSurface = "Smooth"
        x.BottomSurface = "Smooth"
        x.Shape = "Ball"
        x.Name = me.Name
        x.CanCollide = false
        y = Instance.new("BodyVelocity")
        y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        x.Parent = Workspace
        y.Parent = x
        x.CFrame = torso.CFrame*CFrame.new(-1.5, -0.78+i, -5.5) * CFrame.Angles(0, 0, 0)
        y.velocity = torso.CFrame.lookVector*100 + Vector3.new(0, -21+(i*20), 0)
         m = Instance.new("Fire")
         m.Parent = x
            game.Debris:AddItem(x, 2)
            x.Touched:connect(function(shiz)

                 if shiz.Parent ~= nil then

                        if shiz.Parent.Name ~= char.Name then

                            if shiz.Parent:FindFirstChild("Humanoid") ~= nil then
                            
                                if shiz.Parent:findFirstChild("Humanoid") ~= nil then
                                shiz.Parent.Humanoid.Health =  shiz.Parent.Humanoid.Health - 25
                                 shiz.Parent.Torso.Velocity = torso.CFrame.lookVector * 80 + Vector3.new(0, 25, 0)
                                x.Touched:Remove()
                                end

                            end

                        end

                    end

            end)
		wait(0.25)
	end
    TBricks[4].hurt = false
	endEff()
	wait()
	nilparts()
	bg:remove()
	bp:remove()
	neck.C0 = necko
	end
       wait(2)
end,
function(mouse)
	dmg = dmgs.Kardmg
      TBricks[3].hurt = true
      TBricks[4].hurt = true
   Gyro = Instance.new("BodyGyro")
   Gyro.Parent = torso
   Gyro.D = 50
   Gyro.maxTorque = Vector3.new(0, 0, 0)
   Gyro.cframe = torso.CFrame
   Velocity = Instance.new("BodyVelocity")
   Velocity.Parent = torso
   Velocity.maxForce = Vector3.new(0, 0, 0)
	JambleEff(TBricks[3][1])
	JambleEff(TBricks[4][1])
	attach()
    torso.CFrame = torso.CFrame * CFrame.new(0, 0.1, 0) * CFrame.Angles(3.14, 0, 0)
		RAW.C0 = CFrame.Angles(3.14, 0, 0)
		LAW.C0 = CFrame.Angles(3.14, 0, 0)
		LLW.C0 = CFrame.Angles(1.5, 0, -1.5) * CFrame.new(0, -1, 0)
		RLW.C0 = CFrame.Angles(1.5, 0, 1.5) * CFrame.new(0, -1, 0)
local Ball2 = Instance.new("Part")
Ball2.Parent = char
Ball2.Name = "Ball2"
Ball2.CanCollide = false
Ball2.Locked = true
Ball2.TopSurface = "Smooth"
Ball2.BottomSurface = "Smooth"
Ball2.formFactor = "Symmetric"
Ball2.BrickColor = BrickColor.new("Bright orange")
Ball2.CFrame = torso.CFrame
Ball2.Transparency = 0
Ball2.Reflectance = 0.1
Ball2.Size = Vector3.new(1, 1, 1)
b2Weld = Instance.new("Weld")
b2Weld.Parent = torso
b2Weld.Part0 = torso
b2Weld.Part1 = Ball2
b2Weld.C0 = CFrame.new(0, 0, 0)
b2Weld.Name = "TorsoWeld2"
Ball2Mesh = Instance.new("SpecialMesh")
Ball2Mesh.MeshType = "FileMesh"
Ball2Mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
Ball2Mesh.Parent = Ball2
Ball2Mesh.Scale = Vector3.new(1.5, 3, 1.5)

m = Instance.new("Fire")
m.Parent = char["Left Leg"]
    Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
    Gyro.cframe = torso.CFrame
      for i = 1, 50 do
	slash:play()
Ball2Mesh.Scale = Ball2Mesh.Scale + Vector3.new(1, 0, 1)
      torso.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 4.5, 0)
      Gyro.cframe = Gyro.cframe * CFrame.Angles(0, 1.4, 0)
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (torso.Position-t.Position).magnitude <= 1.5+i then
        if i < 50 then
        h.Health = h.Health - 2
          t.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 0, 0)
        hitsound:play()
        end
        if i >= 50 then
         if h ~= nil and t ~= nil then
        h.PlatformStand = true
          t.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 0, 0)
         end
        end
       end
      end
     end
    end
       wait()
       end
	wait()
    m:Remove()
      TBricks[3].hurt = false
      TBricks[4].hurt = false
    Gyro:Remove()
    Velocity:Remove()
    Ball2:Remove()
    b2Weld:Remove()
	nilparts()
	endEff()

	neck.C0 = necko
       wait(4)
end,

function(mouse)
	dmg = dmgs.Kardmg
        TBricks[3].hurt = true
	JambleEff(TBricks[3][1])
   attach()
   Velocity = Instance.new("BodyVelocity")
   Velocity.Parent = torso
   Velocity.maxForce = Vector3.new(0, 0, 0)
    torso.Velocity = Vector3.new(0, 110, 0)
		RAW.C0 = CFrame.Angles(3.14, 0, -0.12)
		LAW.C0 = CFrame.Angles(3.14, 0, 0.12)
		LLW.C0 = CFrame.Angles(2.75, 0, 0)
        wait(0.5)
        x = Instance.new("Part")
        x.BrickColor = BrickColor.new("Bright orange")
        x.Transparency = 0.75
        x.Size = Vector3.new(5, 5, 5)
        x.TopSurface = "Smooth"
        x.BottomSurface = "Smooth"
        x.Shape = "Ball"
        x.Name = me.Name
        x.CanCollide = false
        y = Instance.new("BodyVelocity")
        y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        x.Parent = Workspace
        y.Parent = x
        x.CFrame = torso.CFrame*CFrame.new(1.5, 1, -5.5) * CFrame.Angles(0, 0, 0)
        y.velocity = torso.CFrame.lookVector*100 + Vector3.new(0, 100, 0)
         m = Instance.new("Fire")
         m.Parent = x
            game.Debris:AddItem(x, 1)
            x.Touched:connect(function(shiz)

                 if shiz.Parent ~= nil then

                        if shiz.Parent.Name ~= char.Name then

                            if shiz.Parent:FindFirstChild("Humanoid") ~= nil then
                            
                                if shiz.Parent:findFirstChild("Humanoid") ~= nil then
                                shiz.Parent.Humanoid.Health =  shiz.Parent.Humanoid.Health - 25
                                 shiz.Parent.Torso.Velocity = torso.CFrame.lookVector * 80 + Vector3.new(0, 25, 0)
                                x.Touched:Remove()
                                end

                            end

                        end

                    end

            end)

        x = Instance.new("Part")
        x.BrickColor = BrickColor.new("Bright orange")
        x.Transparency = 0.75
        x.Size = Vector3.new(5, 5, 5)
        x.TopSurface = "Smooth"
        x.BottomSurface = "Smooth"
        x.Shape = "Ball"
        x.Name = me.Name
        x.CanCollide = false
        y = Instance.new("BodyVelocity")
        y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        x.Parent = Workspace
        y.Parent = x
        x.CFrame = torso.CFrame*CFrame.new(1.5, 1, -5.5) * CFrame.Angles(0, 0, 0)
        y.velocity = torso.CFrame.lookVector*100 + Vector3.new(0, 0, 0)
         m = Instance.new("Fire")
         m.Parent = x
            game.Debris:AddItem(x, 1)
            x.Touched:connect(function(shiz)

                 if shiz.Parent ~= nil then

                        if shiz.Parent.Name ~= char.Name then

                            if shiz.Parent:FindFirstChild("Humanoid") ~= nil then
                            
                                if shiz.Parent:findFirstChild("Humanoid") ~= nil then
                                shiz.Parent.Humanoid.Health =  shiz.Parent.Humanoid.Health - 25
                                 shiz.Parent.Torso.Velocity = torso.CFrame.lookVector * 80 + Vector3.new(0, 25, 0)
                                x.Touched:Remove()
                                end

                            end

                        end

                    end

            end)

        x = Instance.new("Part")
        x.BrickColor = BrickColor.new("Bright orange")
        x.Transparency = 0.75
        x.Size = Vector3.new(5, 5, 5)
        x.TopSurface = "Smooth"
        x.BottomSurface = "Smooth"
        x.Shape = "Ball"
        x.Name = me.Name
        x.CanCollide = false
        y = Instance.new("BodyVelocity")
        y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        x.Parent = Workspace
        y.Parent = x
        x.CFrame = torso.CFrame*CFrame.new(1.5, 1, -5.5) * CFrame.Angles(0, 0, 0)
        y.velocity = torso.CFrame.lookVector*100 + Vector3.new(0, -100, 0)
         m = Instance.new("Fire")
         m.Parent = x
            game.Debris:AddItem(x, 1)
            x.Touched:connect(function(shiz)

                 if shiz.Parent ~= nil then

                        if shiz.Parent.Name ~= char.Name then

                            if shiz.Parent:FindFirstChild("Humanoid") ~= nil then
                            
                                if shiz.Parent:findFirstChild("Humanoid") ~= nil then
                                shiz.Parent.Humanoid.Health =  shiz.Parent.Humanoid.Health - 25
                                 shiz.Parent.Torso.Velocity = torso.CFrame.lookVector * 80 + Vector3.new(0, 25, 0)
                                x.Touched:Remove()
                                end

                            end

                        end

                    end

            end)
    for i = 1, 1 do
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (torso.Position-t.Position).magnitude <= 10 and h.Sit == false and h.PlatformStand == false then
        if i < 1 then
          t.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 100, 0)
        hitsound:play()
        end
        if i >= 1 then
         if h ~= nil and t ~= nil then
          t.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 100, 0)
         end
        end
       end
      end
     end
    end
   wait()
  end
               wait(1)
             Velocity:Remove()
        TBricks[3].hurt = false
    for i = 1, 10 do
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (torso.Position-t.Position).magnitude <= 10 and char:findFirstChild("Kicked") == nil and h.Sit == false and h.PlatformStand == false  then
        p = Instance.new("StringValue")
        p.Name = "Kicked"
        p.Parent = char
            game.Debris:AddItem(p, 1.5)
        if i < 10 then
        torso.CFrame = t.CFrame * CFrame.new(0, 3, 0)
   Velocity = Instance.new("BodyVelocity")
   Velocity.Parent = torso
   Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            game.Debris:AddItem(Velocity, 1.5)
		LLW.C0 = CFrame.Angles(1.75, 0, 0)
                 wait(0.25)
		LLW.C0 = CFrame.Angles(0.75, 0, 0)
        h.Health = h.Health - 25
         h.Sit = true
          t.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, -100, 0)
        hitsound:play()
        end
        if i >= 10 then
         if h ~= nil and t ~= nil then
        h.PlatformStand = true
          t.Velocity = torso.CFrame.lookVector * 100 + Vector3.new(0, 50, 0)
         end
        end
       end
      end
     end
    end
   wait()
   end
        endEff()
        nilparts()
	neck.C0 = necko
       wait(2)
end,

function(mouse)

	if mouse ~= nil then
	local Orig = torso.CFrame
	local MousePos = mouse.Hit.p
	local bg = Add.BG(torso)
	local bp = Add.BP(torso)
	bp.position = Orig.p
	local CF = ComputePos(Orig.p, MousePos)
	local CF2 = CF
	bg.cframe = CF2
	JambleEff(TBricks[3][1])
	JambleEff(TBricks[4][1])
	attach()
	bp.position = CF * CFrame.new(0, 0, -1).p

        bg:Remove()
        bp:Remove()

   Velocity = Instance.new("BodyVelocity")
   Velocity.Parent = torso
   Velocity.maxForce = Vector3.new(0, 0, 0)
   Gyro = Instance.new("BodyGyro")
   Gyro.Parent = torso
   Gyro.D = 50
   Gyro.maxTorque = Vector3.new(0, 0, 0)
   Gyro.cframe = torso.CFrame

		RAW.C0 = CFrame.Angles(3.14, 0, 0)
		LAW.C0 = CFrame.Angles(3.14, 0, 0)
	dmg = dmgs.Kardmg
          torso.Velocity = torso.CFrame.lookVector * 80
   Velocity.maxForce = Vector3.new(0, math.huge, 0)
         char.Humanoid.PlatformStand = true
    Gyro.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
    Gyro.cframe = torso.CFrame * CFrame.Angles(1.57, 0, 0)   
	TBricks[3].hurt = true
	TBricks[4].hurt = true
        for i = 1, 30 do
     Gyro.cframe = Gyro.cframe * CFrame.fromEulerAnglesXYZ(0, 0.7, 0)
        wait()
        end
	wait()
	TBricks[3].hurt = false
	TBricks[4].hurt = false
         char.Humanoid.PlatformStand = false
        Gyro:Remove()
        Velocity:Remove()
	endEff()
	wait()
	nilparts()
	neck.C0 = necko
 end
       wait(3)
end,

function(mouse)
	if mouse ~= nil then
	local Orig = torso.CFrame
	local MousePos = mouse.Hit.p
	local bg = Add.BG(torso)
	local bp = Add.BP(torso)
	bp.position = Orig.p
	local CF = ComputePos(Orig.p, MousePos)
	local CF2 = CF
	bg.cframe = CF2
	JambleEff(TBricks[3][1])
	attach()
	bp.position = CF * CFrame.new(0, 0, -10).p
	dmg = dmgs.Pdmg
	for i = 0, 180, 180/7 do
		neck.C0 = necko * CFrame.Angles(0, 0, math.rad(i/2))
		RLW.C0 = CFrame.Angles(0, 0, 0)
		LLW.C0 = CFrame.Angles(0, 0, 0)
		RAW.C0 = CFrame.Angles(math.rad(i/5), 0, math.rad(i/10))
		LAW.C0 = CFrame.Angles(math.rad(-i/5), 0, math.rad(-i/10))
		CF2 = CF * CFrame.Angles(math.rad(i/5.8), math.rad(-i), 0)
		bg.cframe = CF2
		wait()
	end
    for i = 1, 1 do
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (char["Right Leg"].Position-t.Position).magnitude <= 5 then
        if i < 1 then
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
        hitsound:play()
        end
        if i >= 1 then
         if h ~= nil and t ~= nil then
        h.PlatformStand = true
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
         end
        end
       end
      end
     end
    end
       wait()
       end
	slash:play()
	TBricks[3].hurt = true
	for i = 180, 180+90, 90/4 do
		neck.C0 = necko * CFrame.Angles(0, 0, math.rad((-i*2-180)-90))
		RLW.C0 = CFrame.Angles(0, 0, math.rad((i*1.45)-(180*1.45))) * CFrame.new(0, (-i+180)/100, 0)
		LLW.C0 = CFrame.Angles(0, 0, math.rad((-i/3)+(180/3)))
		RAW.C0 = CFrame.Angles(math.rad(i/5), 0, math.rad(i/10))
		LAW.C0 = CFrame.Angles(math.rad(-i/5), 0, math.rad(-i/10))
		CF2 = CF * CFrame.Angles(math.rad(180/5.8), math.rad(-i), 0)
		bg.cframe = CF2
		wait()
	end
    for i = 1, 1 do
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (char["Right Leg"].Position-t.Position).magnitude <= 5 then
        if i < 1 then
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
        hitsound:play()
        end
        if i >= 1 then
         if h ~= nil and t ~= nil then
        h.PlatformStand = true
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
         end
        end
       end
      end
     end
    end
       wait()
       end
	TBricks[3].hurt = false
	wait()
	for i = 270, 360, 90/5 do
		local a = i-270
		neck.C0 = necko * CFrame.Angles(0, 0, math.rad(i))
		RLW.C0 = CFrame.Angles(0, 0, math.rad((-a*1.1)-(180*1.45))) * CFrame.new(0, (a/100)+((-270+180)/100), 0)
		LLW.C0 = CFrame.Angles(0, 0, math.rad((a/3)-(90/3)))
		RAW.C0 = CFrame.Angles(math.rad(270/5-((a*3)/5)), 0, math.rad(270/10-((a*3)/10)))
		LAW.C0 = CFrame.Angles(math.rad(-270/5+((a*3)/5)), 0, math.rad(-270/10+((a*3)/10)))
		CF2 = CF * CFrame.Angles(math.rad((180/5.8)-((a*2)/5.8)), math.rad(-i), 0)
		bg.cframe = CF2
		wait()
	end
    for i = 1, 1 do
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (char["Right Leg"].Position-t.Position).magnitude <= 5 then
        if i < 1 then
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
        hitsound:play()
        end
        if i >= 1 then
         if h ~= nil and t ~= nil then
        h.PlatformStand = true
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
         end
        end
       end
      end
     end
    end
       wait()
       end
	bp.position = CF * CFrame.new(0, 0, -10).p
	for i = 0, 180, 180/7 do
		neck.C0 = necko * CFrame.Angles(0, 0, math.rad(i/2))
		RLW.C0 = CFrame.Angles(0, 0, 0)
		LLW.C0 = CFrame.Angles(0, 0, 0)
		RAW.C0 = CFrame.Angles(math.rad(i/5), 0, math.rad(i/10))
		LAW.C0 = CFrame.Angles(math.rad(-i/5), 0, math.rad(-i/10))
		CF2 = CF * CFrame.Angles(math.rad(i/5.8), math.rad(-i), 0)
		bg.cframe = CF2
		wait()
	end
    for i = 1, 1 do
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (char["Right Leg"].Position-t.Position).magnitude <= 5 then
        if i < 1 then
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
        hitsound:play()
        end
        if i >= 1 then
         if h ~= nil and t ~= nil then
        h.PlatformStand = true
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
         end
        end
       end
      end
     end
    end
       wait()
       end
	slash:play()
	TBricks[3].hurt = true
	for i = 180, 180+90, 90/4 do
		neck.C0 = necko * CFrame.Angles(0, 0, math.rad((-i*2-180)-90))
		RLW.C0 = CFrame.Angles(0, 0, math.rad((i*1.45)-(180*1.45))) * CFrame.new(0, (-i+180)/100, 0)
		LLW.C0 = CFrame.Angles(0, 0, math.rad((-i/3)+(180/3)))
		RAW.C0 = CFrame.Angles(math.rad(i/5), 0, math.rad(i/10))
		LAW.C0 = CFrame.Angles(math.rad(-i/5), 0, math.rad(-i/10))
		CF2 = CF * CFrame.Angles(math.rad(180/5.8), math.rad(-i), 0)
		bg.cframe = CF2
		wait()
	end
    for i = 1, 1 do
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (char["Right Leg"].Position-t.Position).magnitude <= 5 then
        if i < 1 then
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
        hitsound:play()
        end
        if i >= 1 then
         if h ~= nil and t ~= nil then
        h.PlatformStand = true
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
         end
        end
       end
      end
     end
    end
       wait()
       end
	TBricks[3].hurt = false
	wait()
	for i = 270, 360, 90/5 do
		local a = i-270
		neck.C0 = necko * CFrame.Angles(0, 0, math.rad(i))
		RLW.C0 = CFrame.Angles(0, 0, math.rad((-a*1.1)-(180*1.45))) * CFrame.new(0, (a/100)+((-270+180)/100), 0)
		LLW.C0 = CFrame.Angles(0, 0, math.rad((a/3)-(90/3)))
		RAW.C0 = CFrame.Angles(math.rad(270/5-((a*3)/5)), 0, math.rad(270/10-((a*3)/10)))
		LAW.C0 = CFrame.Angles(math.rad(-270/5+((a*3)/5)), 0, math.rad(-270/10+((a*3)/10)))
		CF2 = CF * CFrame.Angles(math.rad((180/5.8)-((a*2)/5.8)), math.rad(-i), 0)
		bg.cframe = CF2
		wait()
	end
    for i = 1, 1 do
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (char["Right Leg"].Position-t.Position).magnitude <= 5 then
        if i < 1 then
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
        hitsound:play()
        end
        if i >= 1 then
         if h ~= nil and t ~= nil then
        h.PlatformStand = true
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 0, 0)
         end
        end
       end
      end
     end
    end
       wait()
       end
	endEff()
	wait()
	nilparts()
	bg:remove()
	bp:remove()
	neck.C0 = necko
	end
end,

function(mouse)
   Velocity = Instance.new("BodyVelocity")
   Velocity.Parent = torso
   Velocity.maxForce = Vector3.new(0, 0, 0)
   Gyro = Instance.new("BodyGyro")
   Gyro.Parent = torso
   Gyro.D = 50
   Gyro.maxTorque = Vector3.new(0, 0, 0)
   Gyro.cframe = torso.CFrame
	JambleEff(TBricks[3][1])
	JambleEff(TBricks[4][1])
   for i = 1, 20 do
   torso.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 50, 0)
   wait()
   end
   Velocity:Remove()
   Velocity = Instance.new("BodyVelocity")
   Velocity.Parent = torso
   Velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		neck.C0 = necko * CFrame.Angles(0.78, 0, 0)
    for i = 1, 100 do

    char["Right Leg"].Transparency = 0.75
    char["Left Leg"].Transparency = 0.75
        attach()
	RLW.C0 = CFrame.Angles(0.75, 0, 0)
        wait() 
        nilparts()
        wait(0.0025)
        attach()
	RLW.C0 = CFrame.Angles(-0.75, 0, 0) 
        wait() 
        x = Instance.new("Part")
        x.BrickColor = BrickColor.new("Bright orange")
        x.Transparency = 0.75
        x.Size = Vector3.new(3, 75, 3)
        x.Shape = "Block"
        x.Name = me.Name
        x.Anchored = true
        x.CanCollide = true
        x.Parent = Workspace
        local omg = math.random(1, 10)
        if omg == 1 then
        x.CFrame = torso.CFrame*CFrame.new(0, -40, 0) * CFrame.Angles(0.75, 0, 0.75)
        end
        if omg == 2 then
        x.CFrame = torso.CFrame*CFrame.new(0, -40, 0) * CFrame.Angles(0.75, 0, -0.75)
        end
        if omg == 3 then
        x.CFrame = torso.CFrame*CFrame.new(0, -40, 0) * CFrame.Angles(-0.75, 0, 0.75)
        end
        if omg == 4 then
        x.CFrame = torso.CFrame*CFrame.new(0, -40, 0) * CFrame.Angles(-0.75, 0, -0.75)
        end
        if omg == 5 then
        x.CFrame = torso.CFrame*CFrame.new(0, -40, 0) * CFrame.Angles(0.5, 0, 0.5)
        end
        if omg == 6 then
        x.CFrame = torso.CFrame*CFrame.new(0, -40, 0) * CFrame.Angles(0.5, 0, -0.5)
        end
        if omg == 7 then
        x.CFrame = torso.CFrame*CFrame.new(0, -40, 0) * CFrame.Angles(-0.5, 0, 0.5)
        end
        if omg == 8 then
        x.CFrame = torso.CFrame*CFrame.new(0, -40, 0) * CFrame.Angles(-0.5, 0, -0.5)
        end
        if omg == 9 then
        x.CFrame = torso.CFrame*CFrame.new(0, -40, 0) * CFrame.Angles(0, 0, 0)
        end
        if omg == 10 then
        x.CFrame = torso.CFrame*CFrame.new(0, -40, 0) * CFrame.Angles(0, 0, 0)
        end
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (torso.Position-t.Position).magnitude <= 50 then
        if i < 100 then
        h.Health = h.Health - 1
          t.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 0, 0)
        hitsound:play()
        end
        if i >= 100 then
         if h ~= nil and t ~= nil then
        h.PlatformStand = true
          t.Velocity = torso.CFrame.lookVector * 0 + Vector3.new(0, 0, 0)
         end
        end
       end
      end
     end
    end
        m = Instance.new("Fire")
         m.Parent = x
            game.Debris:AddItem(x, 0.5)
            x.Touched:connect(function(shiz)

                 if shiz.Parent ~= nil then

                        if shiz.Parent.Name ~= char.Name then

                            if shiz.Parent:FindFirstChild("Humanoid") ~= nil then
                            
                                if shiz.Parent:findFirstChild("Humanoid") ~= nil then
                                shiz.Parent.Humanoid.Health =  shiz.Parent.Humanoid.Health - 25
                                 shiz.Parent.Torso.Velocity = torso.CFrame.lookVector * 80 + Vector3.new(0, 25, 0)
                                x.Touched:Remove()
                                end

                            end

                        end

                    end

            end)
      wait(0.005)
     nilparts()
    char["Right Leg"].Transparency = 0
    char["Left Leg"].Transparency = 0
   wait()
   end
    char["Right Leg"].Transparency = 0
    char["Left Leg"].Transparency = 0
          char["Right Leg"]:findFirstChild("Fire"):Remove()
         Jamble = false
       Velocity:Remove()
       Gyro:Remove()
	neck.C0 = necko
        nilparts()
      endEff()
end,

function(mouse)
if char:findFirstChild("AirWalk") == nil then
local Ball2 = Instance.new("Part")
Ball2.Parent = char
Ball2.Name = "AirWalk"
Ball2.CanCollide = false
Ball2.Locked = true
Ball2.TopSurface = "Smooth"
Ball2.BottomSurface = "Smooth"
Ball2.formFactor = "Symmetric"
Ball2.BrickColor = BrickColor.new("Bright orange")
Ball2.CFrame = torso.CFrame
Ball2.Transparency = 1
Ball2.Reflectance = 0.1
Ball2.Size = Vector3.new(1, 1, 1)
b2Weld = Instance.new("Weld")
b2Weld.Parent = torso
b2Weld.Part0 = torso
b2Weld.Part1 = Ball2
b2Weld.C0 = CFrame.new(0, 0, 0)
b2Weld.Name = "TorsoWeld2"
Ball2Mesh = Instance.new("SpecialMesh")
Ball2Mesh.MeshType = "FileMesh"
Ball2Mesh.MeshId = "http://www.roblox.com/asset/?id=1051557"
Ball2Mesh.Parent = Ball2
Ball2Mesh.Scale = Vector3.new(1.5, 3, 1.5)
            game.Debris:AddItem(Ball2, 10)
   torso.Velocity = Vector3.new(0, 100, 0)
   wait(0.25)

        y = Instance.new("BodyVelocity")
        y.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        y.Parent = Ball2   

end
end,

function(mouse)
if char:findFirstChild("AirWalk") ~= nil then
char.AirWalk:Remove()
end
end
}

bloc = function(mouse)
	local hold = true
	local bg = Add.BG(nil)
	attach()
	slash:play()
	local duh = true
	block = true
	mouse.KeyUp:connect(function(k)
		k = k:lower()
		if duh == true and k == "x" then
			block = false
			duh = false
			hold = false
		end
	end)
	coroutine.resume(coroutine.create(function()
	for i = 0, 90, 90/7 do
               hp = char.Humanoid.Health
		RAW.C0 = CFrame.Angles(3.14, 0, -0.12) * CFrame.new(-0.5, 0.25, 0.3)
		LAW.C0 = CFrame.Angles(3.14, 0, 0.12) * CFrame.new(0.5, 0.25, 0.55)
		LLW.C0 = CFrame.Angles(0, 0, -0.12) * CFrame.new(0, 0.23, -0.55)
		wait()
	end
	end))
	bg.Parent = torso
	while block and hold do
		wait()
		bg.cframe = ComputePos(torso.Position, mouse.Hit.p)
	end
	for i = 90, 0, -90/7  do
		RAW.C0 = CFrame.Angles(3.14, 0, -0.12) * CFrame.new(-0.5, 0.25, 0.3)
		LAW.C0 = CFrame.Angles(3.14, 0, 0.12) * CFrame.new(0.5, 0.25, 0.55)
		LLW.C0 = CFrame.Angles(2.5, 0, -0.12)
		wait()
	end
        for i = 1, 10 do
       char.Humanoid.Health = hp
    for u, c in pairs(workspace:GetChildren()) do
     if c.Name ~= me.Name then
      h = c:findFirstChild("Humanoid")
      t = c:findFirstChild("Torso")
      if h ~= nil and t ~= nil then
       if (char["Left Leg"].Position-t.Position).magnitude <= 7.5 then
        if i < 10 then
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 75, 0)
        hitsound:play()
        end
        if i >= 1 then
         if h ~= nil and t ~= nil then
          t.Velocity = t.CFrame.lookVector * -75 + Vector3.new(0, 75, 0)
         end
        end
       end
      end
     end
    end
   wait()
   end
	nilparts()
	bg:remove()
	neck.C0 = necko
end

function select(mouse)
	mouse.KeyDown:connect(function(key)
		key = key:lower()
		if able then
			if key == "b" and Jamble == false then
				able = false
				attacks[1](mouse)
				able = true
			elseif key == "q" and Jamble == false then
				able = false
				attacks[2](mouse)
				able = true
			elseif key == "r" and Jamble == false then
				able = false
				attacks[3](mouse)
				able = true
			elseif key == "f" and Jamble == false then
				able = false
				attacks[4](mouse)
				able = true
			elseif key == "g" and Jamble == false then
				able = false
				attacks[5](mouse)
				able = true
			elseif key == "e" and Jamble == false then
				able = false
				attacks[6](mouse)
				able = true
			elseif key == "f" and Jamble == true then
				able = false
				attacks[7](mouse)
				able = true
			elseif key == "g" and Jamble == true then
				able = false
				attacks[8](mouse)
				able = true
			elseif key == "q" and Jamble == true then
				able = false
				attacks[9](mouse)
				able = true
			elseif key == "e" and Jamble == true then
				able = false
				attacks[10](mouse)
				able = true
			elseif key == "r" and Jamble == true then
				able = false
				attacks[11](mouse)
				able = true
			elseif key == "b" and Jamble == true then
				able = false
				attacks[12](mouse)
				able = true
			elseif key == "t" then
				able = false
				attacks[13](mouse)
				able = true
			elseif key == "y" then
				able = false
				attacks[14](mouse)
				able = true
			elseif key == "x" then
				able = false
				bloc(mouse)
				able = true
			end
		end
	end)
end

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "Close Quarters Combat"
script.Parent = h
end

bin = script.Parent

bin.Selected:connect(select)
