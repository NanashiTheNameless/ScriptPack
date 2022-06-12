Name = "xSoulStealerx"
me = game.Players[Name]
char = me.Character
Modelname = "SoulBall"
Dist = 2.5
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
able = true
ball = nil

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
		bg.P = 8000
		return bg
	end
}

function GetNoobs(Pos, Mag)
	local obs = {}
	for i,v in pairs(workspace:children()) do
		if v:IsA("Model") and v ~= char then
			local t, h, j = v:findFirstChild("Torso"), v:findFirstChild("Humanoid"), v:findFirstChild("Hp")
			if t ~= nil and h ~= nil and j ~= nil then
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
					table.insert(obs, {t, h, j})
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
	w.C1 = CFrame.Angles(a,b,c) * CFrame.new(x,y,z)
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

throwsound = Instance.new("Sound")
throwsound.SoundId = "rbxasset://sounds//swordslash.wav"
throwsound.Volume = 0.8
throwsound.Pitch = 1.2
throwsound.Parent = Rarm
hitsound = Instance.new("Sound")
hitsound.SoundId = "http://www.roblox.com/asset/?id=2801263"
hitsound.Volume = 0.55
hitsound.Pitch = 1.8

Mo = Instance.new("Model")
Mo.Name = Modelname

main = Part(Mo, false, false, 0, 0, "Brown", 2, 2, 0.2, true)
Weld(torso, main, 0, 0, -0.6, 0, 0, 0)
Floor = Part(Mo, false, false, 0, 0, "Reddish brown", 1.95, 0.2, 1, true)
Weld(main, Floor, 0, 0.93, -0.4, 0, 0, 0)

for i=-0.9, 1, 1.8 do
	local side = Part(Mo, false, false, 0, 0, "Brown", 0.2, 2, 0.8, true)
	Weld(main, side, i, 0, -0.36, 0, 0, 0)
end

for i = -60, 55, 15 do
	local ba = Part(Mo, false, false, 0, 0, "Brown", 2, 0.44, 0.2, true)
	local wa = Weld(main, ba, 0, 0, 0, 0, 0, 0)
	wa.C0 = CFrame.new(0,-0.1,0.1) * CFrame.Angles(math.rad(i),0,0)
	wa.C1 = CFrame.new(0,0,-1.1)
	for x=-0.9, 1, 1.8 do
		local si = Part(Mo, false, false, 0, 0, "Brown", 0.2, 0.5, 0.7, true)
		Weld(ba, si, x, 0, 0.34, 0, 0, 0)
	end
end

for i = -0.8, 0.85, 1.6 do
	for x = -1, 1.1, 2 do
		local bah = Part(Mo, false, false, 0, 0, "Reddish brown", 0.45, 0.2, 1.1, true)
		Weld(main, bah, i, x, 0.5, 0, 0, 0)
	end
	for x = -20, 20, 5 do
		local p = Part(Mo, false, false, 0, 0, "Reddish brown", 0.45, 0.4, 0.2, true)
		local wa = Weld(main, p, 0, 0, 0, 0, 0, 0)
		wa.C0 = CFrame.new(i,0,1.2) * CFrame.Angles(math.rad(x),0,0)
		wa.C1 = CFrame.new(0,0,2.4)
	end
end

for i = 90, -91, -180 do
	local pock = Part(Mo, false, false, 0, 0, "Reddish brown", 0.7, 0.8, 0.3, true)
	local wa = Weld(main, pock, 0, 0, 0, 0, 0, 0)
	wa.C0 = CFrame.new(0, -0.1, 0.5) * CFrame.Angles(0, math.rad(i), 0)
	wa.C1 = CFrame.new(0, 0, 1)
	local pock2 = Part(Mo, false, false, 0, 0, "Reddish brown", 0.8, 0.4, 0.4, true)
	Weld(pock, pock2, 0, -0.25, 0, 0, 0, 0)
	local shin = Part(Mo, false, false, 0, 0.05, "Bright yellow", 0.4, 0.2, 0.2, true)
	Weld(pock2, shin, 0, -0.06, 0.15, 0, 0, 0)
	Add.Sphere(shin)
end
local lastpart = nil

for i = -120, 0, 20 do
	local p = Part(Mo, false, false, 0, 0, "Reddish brown", 2, 0.47, 0.2, true)
	local wa = Weld(main, p, 0, 0, 0, 0, 0, 0)
	wa.C0 = CFrame.new(0,0.23,0.5) * CFrame.Angles(math.rad(i),0,0)
	wa.C1 = CFrame.new(0,0,-0.9)
	lastpart = p
end

shiny = Part(Mo, false, false, 0, 0.05, "Bright yellow", 0.5, 0.3, 0.2, true)
Weld(lastpart, shiny, 0, 0, -0.07, 0, 0, 0)


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

for i=1,6 do
local pew = Instance.new("Model",workspace)
pew.Name = "Trash"
local tr = Instance.new("IntValue",pew)
tr.Value = 1
tr.Name = "Throwable"
local dm = Instance.new("IntValue",tr)
dm.Value = 15
dm.Name = "Dmg"
local bah = Part(pew, false, true, 0, 0, "Brown", 1, 1, 1, true)
bah.Position = Vector3.new(0, 20, 0)
end

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

function grab(targ, mouse)
	if able and targ.Parent:findFirstChild("Throwable") then
		able = false
		local blah = true
		local pos = nil
		mouse.Button1Down:connect(function()
			if blah == true then
				blah = false
			end
		end)
		coroutine.resume(coroutine.create(function()
			wait(4)
			blah = false
		end))
		repeat
			wait()
			pos = CFrame.new(torso.Position, targ.Position)
			pos = pos *  CFrame.new(0,0,-(torso.Position - targ.Position).magnitude + targ.Size.X/2 + 1).p
			hum:MoveTo(pos, targ)
			if blah == false then
				break
			end
		until (torso.Position - pos).magnitude < 5
		hum:MoveTo(torso.Position, torso)
		if blah then
			local bp = Add.BP(torso)
			bp.position = pos
			local cf = ComputePos(torso.Position, pos)
			local bg = Add.BG(torso)
			bg.cframe = cf
			RLW.Part1 = Rleg
			LLW.Part1 = Lleg
			hum.PlatformStand = true
			for i=0, 70, 8 do
				bg.cframe = ComputePos(torso.Position, pos) * CFrame.Angles(math.rad(-i/1.4), 0, 0)
				RLW.C0 = CFrame.Angles(math.rad(i/1.4), 0, math.rad(i/4))
				LLW.C0 = CFrame.Angles(math.rad(i/1.4), 0, math.rad(-i/4))
				RAW.C0 = RAWBattle * CFrame.Angles(math.rad(i*1.3), 0, math.rad(-i/1.7)) * CFrame.new(0, -i/80, 0)
				LAW.C0 = LAWBattle * CFrame.Angles(math.rad(i*1.3), 0, math.rad(i/1.7)) * CFrame.new(0, -i/80, 0)
				wait()
			end
			local w = Weld(Rarm, targ, 0, 1.2, 0, math.random(-15,15)/10, math.random(-15,15)/10, math.random(-15,15)/10)
			ball = {targ, w}
			targ.CanCollide = false
			wait(0.1)
			for i=70, 0, -8 do
				bg.cframe = ComputePos(torso.Position, pos) * CFrame.Angles(math.rad(-i/1.4), 0, 0)
				RLW.C0 = CFrame.Angles(math.rad(i/1.4), 0, math.rad(i/4))
				LLW.C0 = CFrame.Angles(math.rad(i/1.4), 0, math.rad(-i/4))
				RAW.C0 = RAWBattle * CFrame.Angles(math.rad(i*1.3), 0, math.rad(-i/1.7)) * CFrame.new(0, -i/80, 0)
				LAW.C0 = LAWBattle * CFrame.Angles(math.rad(i*1.3), 0, math.rad(i/1.7)) * CFrame.new(0, -i/80, 0)
				wait()
			end
			hum.PlatformStand = false
			LLW.Part1 = nil
			RLW.Part1 = nil
			bp:remove()
			bg:remove()
		end
		able = true
	end
end

function throw(Mousepos)
	if able then
		able = false
		local torsopos = torso.CFrame
		local bgcf = ComputePos(torsopos.p, Mousepos)
		local bg = Add.BG(torso)
		
		local bp = Add.BP(torso)
		bp.position = torsopos.p
		
		RLW.Part1 = Rleg
		LLW.Part1 = Lleg
		for i=0,-90,-90/4 do
			bg.cframe = bgcf * CFrame.Angles(0,math.rad(i),0)
			RAW.C0 = RAWBattle * CFrame.Angles(0,0,math.rad(-i/1.7))
			LAW.C0 = LAWBattle * CFrame.Angles(0,0,math.rad(i/1.9))
			neck.C0 = necko * CFrame.Angles(0,0,math.rad(-i))
			RLW.C0 = CFrame.Angles(0,0,math.rad(-i/4.5))
			LLW.C0 = CFrame.Angles(0,0,math.rad(i/4.5))
			wait()
		end
		wait(0.08)
		for i = 0, 90, 90/3 do
			bg.cframe = bgcf * CFrame.Angles(0,math.rad(i-90),0)
			RAW.C0 = RAWBattle * CFrame.Angles(0,0,math.rad(i-(-90/1.7)))
			neck.C0 = necko * CFrame.Angles(0,0,math.rad(-i+90))
			RLW.C0 = CFrame.Angles(0,0,math.rad(-(i/4.5)-(-90/4.5)))
			LLW.C0 = CFrame.Angles(0,0,math.rad((i/4.5)-(90/4.5)))
			wait()
		end
		throwsound:play()
		coroutine.resume(coroutine.create(function()
			local ta = ball
			ta[1].Parent.Parent = workspace
			ta[2]:remove()
			local c = CFrame.new(ball[1].Position, Mousepos) * CFrame.Angles(math.pi/8.5,0,0)
			local mag = (torsopos.p - Mousepos).magnitude
			mag = mag-(mag/5)
			if mag > 50 then mag = 50 end
			local kert = (40+(mag*2))
			ta[1].Velocity = c.lookVector * kert
			wait()
			ta[1].Velocity = c.lookVector * kert
			ta[1].CanCollide = true
			local abletohit = true
			ta[1].Touched:connect(function(hit)
				if hit.Parent ~= char and hit.Parent.Parent ~= char and abletohit then
					abletohit = false
					local pz = ta[1].Position
					local bla = Part(workspace, true, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
					bla.CFrame = CFrame.new(pz)
					local saa = hitsound:clone()
					saa.Parent = bla
					saa:play()
					local toz = GetNoobs(pz, Dist)
					for i,v in pairs(toz) do
						if ta[1].Throwable:findFirstChild("Dmg") ~= nil then
							v[3].Value = v[3].Value - ta[1].Throwable.Dmg.Value
						end
						local caa = CFrame.new(pz, v[1].Position)
						v[1].Velocity = caa.lookVector * 25
					end
					coroutine.resume(coroutine.create(function()
					wait(0.5)
					bla:remove()
					end))
				end
			end)
		end))
		for i = 90, 180, 90/3 do
			bg.cframe = bgcf * CFrame.Angles(0,math.rad(i-90),0)
			RAW.C0 = RAWBattle * CFrame.Angles(0,0,math.rad(-i-(180/1.7)))
			neck.C0 = necko * CFrame.Angles(0,0,math.rad(-i+90))
			RLW.C0 = CFrame.Angles(0,0,math.rad((i/4.5)+(-90/4.5)))
			LLW.C0 = CFrame.Angles(0,0,math.rad(-(i/4.5)+(90/4.5)))
			wait()
		end
		wait(0.16)
		for i = 180, 90, -90/6 do
			bg.cframe = bgcf * CFrame.Angles(0,math.rad(i-90),0)
			RAW.C0 = RAWBattle * CFrame.Angles(0,0,math.rad(i-90))
			neck.C0 = necko * CFrame.Angles(0,0,math.rad(-i+90))
			LAW.C0 = LAWBattle * CFrame.Angles(0,0,math.rad(-i/1.9+(90/1.9)))
			RLW.C0 = CFrame.Angles(0,0,math.rad((i/4.5)+(-90/4.5)))
			LLW.C0 = CFrame.Angles(0,0,math.rad(-(i/4.5)+(90/4.5)))
			wait()
		end
		wait(0.06)
		bg:remove()
		bp:remove()
		RLW.Part1 = nil
		LLW.Part1 = nil
		RAW.C0 = RAWBattle
		LAW.C0 = LAWBattle
		neck.C0 = necko
		ball = nil
		able = true
	end
end

function Select(mouse)
	SelectAnim()
	mouse.Button1Down:connect(function()
		if ball ~= nil then
			throw(mouse.Hit.p)
		else
			if mouse.Target ~= nil then
				grab(mouse.Target, mouse)
			end
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

function givhp(cha)
	local hp = Instance.new("IntValue")
	hp.Value = 80
	hp.Name = "Hp"
	hp.Parent = cha
	local atc = true
	hp.Changed:connect(function()
		print(hp.Value)
		if hp.Value <= 0 and atc then
			atc = false
			hp.Value = 0
			local h, t = cha:findFirstChild("Humanoid"), cha:findFirstChild("Torso")
			local bp = nil
			local bg = nil
			if h ~= nil then
				h.PlatformStand = true
			end
			if t ~= nil then
				bp = Add.BP(t)
				bp.position = t.Position
				bg = Add.BG(t)
				bg.cframe = CFrame.new(Vector3.new(0, 20, 0), Vector3.new(0, 10, 0))
			end
			wait(11)
			hp.Value = 80
			if bp ~= nil then
				bp:remove()
				bg:remove()
			end
			if h ~= nil then
				h.PlatformStand = false
			end
			atc = true
		end
	end)
end

for i,v in pairs(game.Players:GetPlayers()) do
	if v.Character then
		givhp(v.Character)
		v.CharacterAdded:connect(function(c)
			givhp(c)
		end)
	end
end
game.Players.PlayerAdded:connect(function(p)
	p.CharacterAdded:connect(function(c)
		givhp(c)
	end)
end)
