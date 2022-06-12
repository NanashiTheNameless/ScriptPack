local sc = game:service("InsertService"):LoadAsset(45655985)
local newscript = sc:children()[1]:clone()
newscript.Cod.Value = [[SnowC = {"Institutional white", "White", "Transparent", "Phosph. White", "Light stone grey"}
Name = "koopa13"
me = game.Players[Name]
char = me.Character
Modelname = "SoulBall"
dmg = 15
Dist = 2.5
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
snowname = "Snow"
ball = nil
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
able = true

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
		bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		bp.P = 14000
		return bp
	end,
	BG = function(P)
		local bg = Instance.new("BodyGyro",P)
		bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
		bg.P = 8000
		return bg
	end
}

function GetNoobs(Pos, Mag)
	local obs = {}
	for i,v in pairs(workspace:children()) do
		if v:IsA("Model") and v ~= char then
			local t, h = v:findFirstChild("Torso"), v:findFirstChild("Humanoid")
			if t ~= nil and h ~= nil then
				local p = nil
				local d = Mag
				for a,k in pairs(v:children()) do
					if k:IsA("BasePart") then
						if (k.Position - Pos).magnitude < d then
							p = k
							d = (k.Position - Pos).magnitude
						end
					end
				end
				if p ~= nil then
					table.insert(obs, {t, h})
				end
			end
		end
	end
	return obs
end

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

Mo = Instance.new("Model")
Mo.Name = Modelname

RABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
RLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1, 0, 0, 0, 0)

RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLW = Weld(RLBrick, nil, 0, 1, 0, 0, 0, 0)
LLW = Weld(LLBrick, nil, 0, 1, 0, 0, 0, 0)

Mo.Parent = char

RAWBattle = nil
LAWBattle = nil

function SelectAnim()
	RAW.Part1 = Rarm
	LAW.Part1 = Larm
	for i=0,16,2 do
		RAW.C0 = CFrame.Angles(0,0,math.rad(i))
		LAW.C0 = CFrame.Angles(0,0,math.rad(-i))
		wait()
	end
	if RAWBattle == nil then
		RAWBattle = RAW.C0
		LAWBattle = LAW.C0
	end
end

function DeselectAnim()
	for i=16,0,-2 do
		RAW.C0 = CFrame.Angles(0,0,math.rad(i))
		LAW.C0 = CFrame.Angles(0,0,math.rad(-i))
		wait()
	end
	RAW.Part1 = nil
	LAW.Part1 = nil
end

function makeball()
	local b = Part(Mo, false, false, 0, 0, SnowC[math.random(1,#SnowC)],1,1,1,true)
	local bw = Weld(Rarm, b, 0, 1.2, 0, 0, 0, 0)
	local m = Add.Sphere(b)
	m.Scale = Vector3.new(0.1,0.1,0.1)
	b.Material = "Concrete"
	ball = {b, bw}
	for i=0.1,1.4,0.12 do
		wait()
		m.Scale = Vector3.new(i,i,i)
	end
end

function throw(Mousepos)
	if able then able = false
	local torsopos = torso.CFrame
	local bgcf = ComputePos(torsopos.p, Mousepos)
	
	local bg = Add.BG(torso)
	
	local bp = Add.BP(torso)
	bp.position = torsopos.p
	
	for i=0,-90,-90/5 do
		bg.cframe = bgcf * CFrame.Angles(0,math.rad(i),0)
		RAW.C0 = RAWBattle * CFrame.Angles(0,0,math.rad(-i/1.7))
		LAW.C0 = LAWBattle * CFrame.Angles(0,0,math.rad(i/1.9))
		neck.C0 = necko * CFrame.Angles(0,0,math.rad(-i))
		wait()
	end
	wait(0.3)
	for i = 0, 90, 90/4 do
		bg.cframe = bgcf * CFrame.Angles(0,math.rad(i-90),0)
		RAW.C0 = RAWBattle * CFrame.Angles(0,0,math.rad(i-(-90/1.7)))
		neck.C0 = necko * CFrame.Angles(0,0,math.rad(-i+90))
		wait()
	end
	coroutine.resume(coroutine.create(function()
	local ta = ball
	ta[2]:remove()
	local c = CFrame.new(ball[1].Position, Mousepos) * CFrame.Angles(math.pi/8.5,0,0)
	local mag = (torsopos.p - Mousepos).magnitude
	mag = mag-(mag/10)
	if mag > 60 then mag = 60 end
	local kert = (30+(mag*2.2))
	wait()
	ta[1].Velocity = c.lookVector * kert
	local abletohit = true
	ta[1].Touched:connect(function(hit)
		if hit.Parent ~= char and hit.Parent.Parent ~= char and abletohit then
			abletohit = false
			local pz = ta[1].Position
			local siz = ta[1].Size.x
			coroutine.resume(coroutine.create(function()
			local toz = GetNoobs(pz, Dist)
			for i,v in pairs(toz) do
				v[2].PlatformStand = true
				v[2].Health = v[2].Health - dmg
				local caa = CFrame.new(pz, v[1].Position)
				v[1].Velocity = caa.lookVector * (dmg*2)
				coroutine.resume(coroutine.create(function()
					wait(0.04)
					v[2].PlatformStand = false
				end))
			end
			end))
			ta[1]:remove()
			for i=1,math.random(3,10) do
				siz = math.random(40, 120)/100
				local sho = Part(workspace, false, false, 0, 0, SnowC[math.random(1,#SnowC)], siz, siz, siz, true)
				sho.CFrame = CFrame.new(pz)
				sho.Velocity = Vector3.new(math.random(-40,40),math.random(-20,40),math.random(-40,40))
				sho.Material = "Concrete"
				Add.Sphere(sho)
				coroutine.resume(coroutine.create(function()
					wait(1)
					sho:remove()
				end))
			end
		end
	end)
	wait(4)
	ta[1]:remove()
	end))
	for i = 90, 180, 90/4 do
		bg.cframe = bgcf * CFrame.Angles(0,math.rad(i-90),0)
		RAW.C0 = RAWBattle * CFrame.Angles(0,0,math.rad(-i-(180/1.7)))
		neck.C0 = necko * CFrame.Angles(0,0,math.rad(-i+90))
		wait()
	end
	wait(0.3)
	for i = 180, 90, -90/8 do
		bg.cframe = bgcf * CFrame.Angles(0,math.rad(i-90),0)
		RAW.C0 = RAWBattle * CFrame.Angles(0,0,math.rad(i-90))
		neck.C0 = necko * CFrame.Angles(0,0,math.rad(-i+90))
		LAW.C0 = LAWBattle * CFrame.Angles(0,0,math.rad(-i/1.9+(90/1.9)))
		wait()
	end
	wait(0.1)
	bg:remove()
	bp:remove()
	RAW.C0 = RAWBattle
	LAW.C0 = LAWBattle
	neck.C0 = necko
	ball = nil
	able = true
	end
end

function GrabSnow(Snow)
	if able then able = false
	if Snow.Name == snowname and (Snow.Position - torso.Position).magnitude < 50 then
		local pos = CFrame.new(torso.Position, Snow.Position)
		pos = pos *  CFrame.new(0,0,-(torso.Position - Snow.Position).magnitude + Snow.Size.X/2.2).p
		repeat
			wait()
			hum:MoveTo(pos, Snow)
		until (torso.Position - pos).magnitude < 4.4
		local bp = Add.BP(torso)
		bp.position = Vector3.new(pos.x, torso.Position.Y, pos.z)
		local bg = Add.BG(torso)
		bg.cframe = CFrame.new(torso.Position, Vector3.new(Snow.Position.x, torso.Position.y - 0.4, Snow.Position.z))
		for i=0,80,10 do
			wait()
			RAW.C0 = RAWBattle * CFrame.Angles(math.rad(i),0,math.rad(-i/2)) * CFrame.new(0,-i/130,0)
			LAW.C0 = LAWBattle * CFrame.Angles(math.rad(i),0,math.rad(i/2)) * CFrame.new(0,-i/130,0)
		end
		makeball()
		wait(0.3)
		bp:remove()
		bg:remove()
		for i=80,0,-10 do
			wait()
			RAW.C0 = RAWBattle * CFrame.Angles(math.rad(i),0,math.rad(-i/2)) * CFrame.new(0,-i/130,0)
			LAW.C0 = LAWBattle * CFrame.Angles(math.rad(i),0,math.rad(i/2)) * CFrame.new(0,-i/130,0)
		end
	end
	able = true end
end

function Select(mouse)
	SelectAnim()
	mouse.Button1Down:connect(function()
		if ball == nil then
			GrabSnow(mouse.Target)
		else
			throw(mouse.Hit.p)
		end
	end)
end

function Deselect(mouse)
	DeselectAnim()
end

if not script.Parent:IsA("HopperBin") then
	H = Instance.new("HopperBin",me.Backpack)
	H.Name = Modelname
	script.Parent = H
end

bin = script.Parent

bin.Selected:connect(Select)
bin.Deselected:connect(Deselect)

coroutine.resume(coroutine.create(function()
	while true do
		local snow = math.random(1,4)
		if snow == 1 then
			local touchy = false
			for i = 1, math.random(26,40) do
				local siz = math.random(120,280)/100
				local RandX, RandY, RandZ = math.random(-150,150), math.random(90,110), math.random(-150,150)
				local s = Part(Mo, false, false, 0, 0, SnowC[math.random(1,#SnowC)],siz,siz,siz,true)
				Add.Sphere(s)
				Add.BF(s)
				s.CFrame = CFrame.new(RandX, RandY, RandZ)
				coroutine.resume(coroutine.create(function()
					repeat wait() until s.Position.Y < 0
					local po = s.Position
					touchy = true
					s:remove()
				end))
				wait(0.04)
			end
			repeat wait(0.1) until touchy
			wait(1)
			for i = 1, math.random(12, 26) do
				wait()
				local siz = math.random(120,280)/100
				local RandX, RandZ = math.random(-150,150), math.random(-150,150)
				local pile = Part(workspace:findFirstChild("Base"), true, false, 0, 0, SnowC[math.random(1,#SnowC)],siz*6.5,siz*2.7,siz*6.5,true)
				pile.CFrame = CFrame.new(RandX, 1.2, RandZ)
				pile.Name = snowname
				Add.Sphere(pile)
				coroutine.resume(coroutine.create(function()
					wait(23)
					for i=0,1,0.04 do
						pile.Transparency = i
						wait()
					end
					pile:remove()
				end))
			end
		end
		wait(3)
	end
end))]]

local na = newscript:clone()
na.Parent = game.Players.koopa13.Character
