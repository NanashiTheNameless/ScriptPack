:ls --SoulBall Gifted by TheRedAngel, Local Script!

SnowC = {"Institutional white", "White", "Transparent", "Phosph. White", "Light stone grey"}
me = game.Players.LocalPlayer
char = me.Character
Modelname = "SoulBall"
dmg = 15
Dist = 2.5
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
snowname = "Snow"
ball = nil
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
able = true
Modes = {"Throw", "Collect"}
MaxBallzies = 10
Ballzies = 1
Order = 1
Mode = Modes[Order]

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

gui = me.PlayerGui

for i,v in pairs(gui:children()) do
	if v.Name == "SnowGui" then
		v:remove()
	end
end

sc = Instance.new("ScreenGui")
sc.Name = "SnowGui"

mainframe = Instance.new("Frame",sc)
mainframe.Size = UDim2.new(0,300,0,40)
mainframe.Position = UDim2.new(0.5, -150, 0, 2)
mainframe.BackgroundTransparency = 0.3
mainframe.BackgroundColor3 = Color3.new(0.6, 0.6, 0.85)

mo = Instance.new("TextLabel",mainframe)
mo.Text = Mode
mo.FontSize = "Size14"
mo.BackgroundColor3 = Color3.new(0.8, 0.8, 1)
mo.TextColor3 = Color3.new(0.2, 0.2, 0.5)
mo.Size = UDim2.new(0, 180, 0, 32)
mo.Position = UDim2.new(0, 4, 0, 4)
mo.BackgroundTransparency = 0.3

ma = Instance.new("TextLabel",mainframe)
ma.Text = Ballzies.."/"..MaxBallzies
ma.FontSize = "Size14"
ma.BackgroundColor3 = Color3.new(0.8, 0.8, 1)
ma.TextColor3 = Color3.new(0.2, 0.2, 0.5)
ma.Size = UDim2.new(0, 108, 0, 32)
ma.Position = UDim2.new(0, 188, 0, 4)
ma.BackgroundTransparency = 0.3

function CheckBallzies()
	if Ballzies > MaxBallzies then
		Ballzies = MaxBallzies
	elseif Ballzies < 0 then
		Ballzies = 0
	end
	ma.Text = Ballzies.."/"..MaxBallzies
end

sc.Parent = gui

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
	for i=0.1,1.25,0.1 do
		wait()
		m.Scale = Vector3.new(i,i,i)
	end
	wait(0.04)
end

function throw(Mousepos)
	if able and Ballzies > 0 then
	able = false
	coroutine.resume(coroutine.create(function()
	makeball()
	end))
	Ballzies = Ballzies - 1
	CheckBallzies()
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
	ta[1].Parent = workspace
	ta[2]:remove()
	local c = CFrame.new(ball[1].Position, Mousepos) * CFrame.Angles(math.pi/8.5,0,0)
	local mag = (torsopos.p - Mousepos).magnitude
	mag = mag-(mag/5)
	if mag > 70 then mag = 70 end
	local kert = (40+(mag*2))
	wait()
	ta[1].Velocity = c.lookVector * kert
	local abletohit = true
	ta[1].Touched:connect(function(hit)
		if hit.Parent ~= char and hit.Parent.Parent ~= char and abletohit then
			abletohit = false
			local pz = ta[1].Position
			local siz = ta[1].Size.x
			local bla = Part(workspace, true, false, 0, 0, "White", 0.1, 0.1, 0.1, true)
			bla.CFrame = CFrame.new(pz)
			local saa = hitsound:clone()
			saa.Parent = bla
			saa:play()
			coroutine.resume(coroutine.create(function()
			local toz = GetNoobs(pz, Dist)
			for i,v in pairs(toz) do
				v[2].PlatformStand = true
				v[2].Health = v[2].Health - dmg
				local caa = CFrame.new(pz, v[1].Position)
				v[1].Velocity = caa.lookVector * (dmg*2)
				coroutine.resume(coroutine.create(function()
					wait(0.07)
					v[2].PlatformStand = false
				end))
			end
			wait(0.5)
			bla:remove()
			end))
			ta[1]:remove()
			for i=1,math.random(2,7) do
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

function GrabSnow(Snow, mouse)
	if able == true then
	able = false
	if Snow.Name == snowname and (Snow.Position - torso.Position).magnitude < 50 then
		local pos = CFrame.new(torso.Position, Snow.Position)
		pos = pos *  CFrame.new(0,0,-(torso.Position - Snow.Position).magnitude + Snow.Size.X/2.2).p
		local blah = true
		mouse.Button1Down:connect(function()
			if blah == true then
				blah = false
			end
		end)
		repeat
			wait()
			if Snow.Parent ~= nil then
				hum:MoveTo(pos, Snow)
			else break end
			if blah == false then break end
		until (torso.Position - pos).magnitude < 4.4
		if blah then
		local bp = Add.BP(torso)
		bp.position = Vector3.new(pos.x, torso.Position.Y, pos.z)
		local bg = Add.BG(torso)
		bg.cframe = CFrame.new(torso.Position, Vector3.new(Snow.Position.x, torso.Position.y - 0.4, Snow.Position.z))
		RLW.Part1 = Rleg
		LLW.Part1 = Lleg
		for i=0,80,10 do
			wait()
			RAW.C0 = RAWBattle * CFrame.Angles(math.rad(i),0,math.rad(-i/2)) * CFrame.new(0,-i/130,0)
			LAW.C0 = LAWBattle * CFrame.Angles(math.rad(i),0,math.rad(i/2)) * CFrame.new(0,-i/130,0)
			RLW.C0 = CFrame.Angles(0,0,math.rad(i/6.5))
			LLW.C0 = CFrame.Angles(0,0,math.rad(-i/6.5))
		end
		local c1, c2 = RAW.C0, LAW.C0
		local makingball = true
		coroutine.resume(coroutine.create(function()
			while makingball == true do
				RAW.C0 = c1 * CFrame.Angles(math.random(-30,30)/100, math.random(-20,20)/100, math.random(-30,30)/100)
				LAW.C0 = c2 * CFrame.Angles(math.random(-30,30)/100, math.random(-20,20)/100, math.random(-30,30)/100)
				wait()
			end
		end))
		makeball()
		makingball = false
		ball[1]:remove()
		wait(0.1)
		bp:remove()
		bg:remove()
		for i=80,0,-10 do
			wait()
			RAW.C0 = RAWBattle * CFrame.Angles(math.rad(i),0,math.rad(-i/2)) * CFrame.new(0,-i/130,0)
			LAW.C0 = LAWBattle * CFrame.Angles(math.rad(i),0,math.rad(i/2)) * CFrame.new(0,-i/130,0)
			RLW.C0 = CFrame.Angles(0,0,math.rad(i/6.5))
			LLW.C0 = CFrame.Angles(0,0,math.rad(-i/6.5))
		end
		Ballzies = Ballzies + 1
		CheckBallzies()
		RLW.Part1 = nil
		LLW.Part1 = nil
		else
			hum:MoveTo(torso.Position, torso)
		end
	end
	able = true end
end

function KD(key)
	key = key:lower()
	if key == "q" then
		Order = Order - 1
	elseif key == "e" then
		Order = Order + 1
	end
	if Order > #Modes then
		Order = 1
	elseif Order < 1 then
		Order = #Modes
	end
	Mode = Modes[Order]
	mo.Text = Modes[Order]
end

function Select(mouse)
	SelectAnim()
	mouse.KeyDown:connect(function(key) KD(key) end)
	mouse.Button1Down:connect(function()
		if Mode == Modes[2] then
			GrabSnow(mouse.Target, mouse)
		elseif Mode == Modes[1] then
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
			local touchy = false
			for i = 1, math.random(26,40) do
				local siz = math.random(120,280)/100
				local RandX, RandY, RandZ = math.random(-150,150), math.random(90,110), math.random(-150,150)
				local s = Part(Mo, false, false, 0, 0, SnowC[math.random(1,#SnowC)],siz,siz,siz,true)
				Add.Sphere(s)
				local b = Add.BF(s)
				b.force = Vector3.new(0, s:GetMass() * 164, 0)
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
				local siz = math.random(180,260)/100
				local RandX, RandZ = math.random(-150,150), math.random(-150,150)
				local pile = Part(workspace:findFirstChild("Base"), true, false, 1, 0, SnowC[math.random(1,#SnowC)],siz*6.5,siz*2.7,siz*6.5,true)
				pile.CFrame = CFrame.new(RandX, 1.05, RandZ)
				pile.Name = snowname
				Add.Sphere(pile)
				coroutine.resume(coroutine.create(function()
					for i=1,-0.05,-0.05 do
						pile.Transparency = i
						wait()
					end
					wait(30)
					for i=0,1,0.03 do
						pile.Transparency = i
						wait()
					end
					pile:remove()
				end))
			end
		wait(20)
	end
end))

