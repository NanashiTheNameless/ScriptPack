run = game:GetService("RunService")
local player = game.Players.LocalPlayer
char = player.Character
char.Archivable = true
throwmode = false;runarmsanim = false;throwing = false;shadowblade=false;shieldon=false;combo = "";formercombo = combo;last="j";
keyf=false;mainColor = "Royal purple";color1 = "Really black";color2="Black";clickagain=false;noimpact = false;shadowr=false;
maxmana = 500;mana = maxmana;impact = nil;chargeskill =false;tdown=false;
jumping=false;anim = false;fall = false;runs = false;ready = true;notequi = false;equiping = false;gotDamage1=false;gotDamage2=false;
Damage = 15
lastpoint1 = Vector3.new(0, 0, 0);lastpoint2 = Vector3.new(0, 0, 0);
at = 1
effects = {};swords = {}
--check parts--
hrp = char:findFirstChild("HumanoidRootPart");head = char:findFirstChild("Head");ra = char:findFirstChild("Right Arm");la = char:findFirstChild("Left Arm");t = char:findFirstChild("Torso");humanoid = char:findFirstChild("Humanoid");ll = char:findFirstChild("Left Leg");rl = char:findFirstChild("Right Leg");

local hb = Instance.new("HopperBin", player.Backpack)
hb.Name = "ClawBerserk"
clawe1 = Instance.new("Model");clawe1.Name = "Claw1"
clawe2 =  Instance.new("Model");clawe2.Name = "Claw2"
script.Parent =  hb
function ComputePos(pos1, pos2)
	local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
	return CFrame.new(pos1, pos3)
end


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
	end,
	ingay = function(id, place,por,lop)
		local sound = Instance.new("Sound", place)
		sound.SoundId = id
		sound.Looped  = lop
		sound.Volume = 1;sound.Pitch=1;sound.PlayOnRemove = por;
		return sound
	end,
	part = function(color,size,pos, place, naym,scale, thing,mt,ccd,id,transparent,loool,ff)
		if loool ~= nil then
		balleff = Instance.new(loool, place)
		else
		balleff = Instance.new("Part", place)
		balleff.Material = "SmoothPlastic"
		balleff.TopSurface = "SmoothNoOutlines"
		balleff.BottomSurface = "SmoothNoOutlines"
		balleff.RightSurface = "SmoothNoOutlines"
		balleff.LeftSurface = "SmoothNoOutlines"
		end
		balleff.Name = naym
		balleff.Anchored= true
		balleff.CFrame = pos
		if loool == nil then
		balleff.Shape = thing
		end
		if ff then
			balleff.FormFactor = ff
		end
		balleff.CanCollide = ccd;balleff.Transparency = transparent;
		balleff.TopSurface = 0
		balleff.BottomSurface = 0
		balleff.Size = size
		balleff.BrickColor = BrickColor.new(color)
		mesh = Instance.new("SpecialMesh",balleff)
		mesh.MeshType = mt
		mesh.Scale = scale
		if mt == "FileMesh" then
			mesh.MeshId = id
		end
		balleff.Parent = place
		return balleff
	end,
	BV = function(place,cf)
		bels = Instance.new("BodyVelocity")
		bels.velocity = cf
		bels.maxForce = Vector3.new(math.huge, math.huge, math.huge)
		bels.Parent = place
		return bels
	end
}

--creating the blade------
--c1--
c1handle = Add.part("Really black",Vector3.new(0.2, 0.927, 0.655),CFrame.new(-12.4381819, 2.37272429, 34.2791138, 1, 0, 0, 0, 1, 0, 0, 0, 1),clawe1,"Handle",Vector3.new(0.455, 1, 1),"Block","Brick",false,nil,0,nil,"Custom")
c1b1 = Add.part("White",Vector3.new(0.2, 0.764, 0.2),CFrame.new(-12.5654516, 3.03635716, 34.1518364, 1, 0, 0, 0, 1, 0, 0, 0, 1),clawe1,"Blade",Vector3.new(0.273, 1, 0.909),"Block","Brick",false,nil,0,nil,"Custom")
c1b2 = Add.part("White",Vector3.new(0.2, 0.764, 0.2),CFrame.new(-12.5654554, 3.03637242, 34.4063873, 1, 0, 0, 0, 1, 0, 0, 0, 1),clawe1,"Blade",Vector3.new(0.273, 1, 0.909),"Block","Brick",false,nil,0,nil,"Custom")
c1b3 = Add.part("White",Vector3.new(1, 1.2, 1),CFrame.new(-12.5644522, 3.47271276, 34.1471367, 1, 0, 8.74227766e-008, 0, 1, 0, -8.74227766e-008, 0, 1),clawe1,"Blade",Vector3.new(0.041, 0.091, 0.183),"Block","Wedge",false,nil,0,nil,"Brick")
c1b4 = Add.part("White",Vector3.new(1, 1.2, 1),CFrame.new(-12.5663671, 3.47272801, 34.4068413, -1, 0, -4.37113883e-008, 0, 1, 0, 4.37113883e-008, 0, -1),clawe1,"Blade",Vector3.new(0.041, 0.091, 0.183),"Block","Wedge",false,nil,0,nil,"Brick")
c1ca1 = Add.part("Royal purple",Vector3.new(0.2, 1.2, 0.2),CFrame.new(-12.7645464, 2.82196593, 34.1602974, 1, 0, 0, 0, 1, 0, 0, 0, 1),clawe1,"Canun",Vector3.new(1, 1, 1),"Block","Head",false,nil,1,nil,"Custom")
c1ca2 = Add.part("Royal purple",Vector3.new(0.2, 1.2, 0.2),CFrame.new(-12.7645464, 2.80196548, 34.4103012, 1, 0, 0, 0, 1, 0, 0, 0, 1),clawe1,"Canun",Vector3.new(1, 1, 1),"Block","Head",false,nil,1,nil,"Custom")
c1lever = Add.part("Royal purple",Vector3.new(0.2, 0.745, 0.673),CFrame.new(-12.5472708, 2.3363626, 34.2700233, 1, 0, 0, 0, 1, 0, 0, 0, 1),clawe1,"lever",Vector3.new(0.455, 1, 1),"Block","Brick",false,nil,1,nil,"Custom")
c1p1 = Add.part("Really black",Vector3.new(1, 1.2, 1),CFrame.new(-12.6472731, 2.91817832, 34.0609283, 1, 0, 0, 0, 1, 0, 0, 0, 1),clawe1,"Part",Vector3.new(0.109, 0.136, 0.436),"Block","Wedge",false,nil,0,nil,"Brick")
c1p2 = Add.part("Really black",Vector3.new(0.2, 0.2, 0.855),CFrame.new(-12.4927244, 1.89999163, 34.2882042, 1, 0, 0, 0, 1, 0, 0, 0, 1),clawe1,"Part",Vector3.new(1, 0.091, 1),"Block","Brick",false,nil,0,nil,"Custom")
c1p3 = Add.part("Really black",Vector3.new(0.2, 0.927, 0.2),CFrame.new(-12.4927244, 2.37272429, 34.6609306, 1, 0, 0, 0, 1, 0, 0, 0, 1),clawe1,"Part",Vector3.new(1, 1, 0.545),"Block","Brick",false,nil,0,nil,"Custom")
c1p4 = Add.part("Really black",Vector3.new(0.873, 0.2, 0.945),CFrame.new(-12.6472731, 2.36364532, 34.2791138, 0, -1, 0, 0, 0, 1, -1, 0, -4.37113883e-008),clawe1,"Part",Vector3.new(1, 0.545, 1),"Block","Brick",false,nil,0,nil,"Custom")
c1p5 = Add.part("Really black",Vector3.new(0.2, 0.2, 0.873),CFrame.new(-12.7745466, 2.45455527, 34.27911, 1, -2.38402421e-007, 1.03647017e-012, 2.38402407e-007, 1, 1.82780425e-007, -1.08004545e-012, -1.82780425e-007, 1),clawe1,"Part",Vector3.new(0.727, 0.727, 1),"Block","Brick",false,nil,0,nil,"Custom")
c1p6 = Add.part("Really black",Vector3.new(1, 1.2, 1),CFrame.new(-12.6472731, 2.91817832, 34.4972954, -1, 4.37113918e-008, -4.37113883e-008, 4.37113918e-008, 1, -4.37113847e-008, 4.37113883e-008, -4.37113883e-008, -1),clawe1,"Part",Vector3.new(0.109, 0.136, 0.436),"Block","Wedge",false,nil,0,nil,"Brick")
c1p7 = Add.part("Really black",Vector3.new(1, 1.2, 1),CFrame.new(-12.7745466, 2.13636565, 34.2791138, 0, -0.999999702, 0, 4.37113727e-007, 0, 0.999999821, -0.999999762, 0, -4.80825236e-007),clawe1,"Part",Vector3.new(0.873, 0.121, 0.491),"Block","Wedge",false,nil,0,nil,"Brick")
c1p8 = Add.part("Really black",Vector3.new(1, 1.2, 1),CFrame.new(-12.7745466, 2.68181968, 34.27911, -7.72206249e-007, -2.14576653e-006, 1, -3.71878684e-007, 1, 2.1457663e-006, -1, -3.71877036e-007, -7.72207045e-007),clawe1,"Part",Vector3.new(0.873, 0.258, 0.145),"Block","Wedge",false,nil,0,nil,"Brick")
c1p9 = Add.part("Really black",Vector3.new(0.2, 0.945, 0.2),CFrame.new(-12.4927282, 2.36364532, 33.8972931, 1, 0, 0, 0, 1, 0, 0, 0, 1),clawe1,"Part",Vector3.new(1, 1, 0.545),"Block","Brick",false,nil,0,nil,"Custom")

local clawsound1=Add.ingay("http://www.roblox.com/asset?id=92597369",c1b4,false,false)
--c2--
c2handle = Add.part("Really black",Vector3.new(0.2, 0.927, 0.655),CFrame.new(-9.7954483, 2.32275319, 34.3390808, -1, 0, -7.1055146e-015, 0, 1, 0, 7.1055146e-015, 0, -1),clawe2,"Handle",Vector3.new(0.455, 1, 1),"Block","Brick",false,nil,0,nil,"Custom")
c2b1 = Add.part("White",Vector3.new(0.2, 1.013, 0.2),CFrame.new(-9.66817856, 3.11092854, 34.3390808, -1, 0, -7.1055146e-015, 0, 1, 0, 7.1055146e-015, 0, -1),clawe2,"Blade",Vector3.new(0.273, 1, 0.909),"Block","Brick",false,nil,0,nil,"Custom")
c2b2 = Add.part("White",Vector3.new(1, 1.2, 1),CFrame.new(-9.66726875, 3.67092466, 34.292717, 1, 0, 4.37114167e-008, 0, 1, 0, -4.37114167e-008, 0, 1),clawe2,"Blade",Vector3.new(0.055, 0.091, 0.0911),"Block","Wedge",false,nil,0,nil,"Brick")
c2b3 = Add.part("White",Vector3.new(1, 1.2, 1),CFrame.new(-9.66918182, 3.67274046, 34.3833237, -0.99999702, 0, -8.74225989e-008, 0, 1, 0, 8.74225989e-008, 0, -0.99999702),clawe2,"Blade",Vector3.new(0.055, 0.091, 0.091),"Block","Wedge",false,nil,0,nil,"Brick")
c2sb1 = Add.part("Really black",Vector3.new(0.2, 1.41, 0.83),CFrame.new(-9.70180893, 3.49774122, 34.3261185, 1, 0, 0, 0, 1, 0, 0, 0, 1),clawe2,"SB",Vector3.new(1,1,1),"Block","Brick",false,nil,1,nil,"Custom")
c2sb2 = Add.part("Really black",Vector3.new(1, 1.2, 1),CFrame.new(-9.70853043, 4.51036358, 34.5233459, -1, 0, -4.37113883e-008, 0, 1, 0, 4.37113883e-008, 0, -1),clawe2,"SB",Vector3.new(0.2, 0.5, 0.4),"Block","Wedge",false,nil,1,"WedgePart","Brick")
c2sb3 = Add.part("Really black",Vector3.new(1, 1.2, 1),CFrame.new(-9.7048893, 4.51274014, 34.1274414, 1, 0, 0, 0, 1, 0, 0, 0, 1),clawe2,"SB",Vector3.new(0.2, 0.5, 0.4),"Block","Wedge",false,nil,1,"WedgePart","Brick")
lever = Add.part("Royal purple",Vector3.new(0.2, 0.745, 0.673),CFrame.new(-9.68636131, 2.28637624, 34.3481712, -1, 0, -7.1055146e-015, 0, 1, 0, 7.1055146e-015, 0, -1),clawe2,"lever",Vector3.new(0.455, 1, 1),"Block","Brick",false,nil,1,nil,"Custom")
c2p1 = Add.part("Really black",Vector3.new(0.2, 0.2, 0.873),CFrame.new(-9.45909119, 2.40457082, 34.3390808, -1, 2.38408433e-007, 2.71453278e-008, 2.38408433e-007, 1, 1.82775864e-007, -2.71452834e-008, 1.82775864e-007, -1),clawe2,"Part",Vector3.new(0.727, 0.727, 1),"Block","Brick",false,nil,0,nil,"Custom")
c2p2 = Add.part("Institutional white",Vector3.new(0.2, 0.2, 0.764),CFrame.new(-9.3909111, 2.41366506, 34.3572655, 1, 0, 7.1055146e-015, 0, 1, 0, -7.1055146e-015, 0, 1),clawe2,"Part",Vector3.new(0.091, 0.273, 1),"Block","Brick",false,nil,0,nil,"Custom")
c2p3 = Add.part("Really black",Vector3.new(0.873, 0.2, 0.945),CFrame.new(-9.58636189, 2.31365895, 34.3390808, 7.1055146e-015, 1, 0, 0, 0, 1, 1, -7.1055146e-015, 0),clawe2,"Part",Vector3.new(1, 0.545, 1),"Block","Brick",false,nil,0,nil,"Custom")
c2p4 = Add.part("Really black",Vector3.new(1, 1.2, 1),CFrame.new(-9.45909119, 2.08638024, 34.3390808, 7.1055146e-015, 1, -3.10599535e-021, 4.37124612e-007, 0, 1, 1, -7.1055146e-015, -4.37124612e-007),clawe2,"Part",Vector3.new(0.873, 0.121, 0.491),"Block","Wedge",false,nil,0,nil,"Brick")
c2p5 = Add.part("Really black",Vector3.new(1, 1.2, 1),CFrame.new(-9.45909119, 2.63183379, 34.3390808, 7.74864588e-007, 2.08611937e-006, -1, -3.2619127e-007, 1, 2.08611914e-006, 1, 3.2618965e-007, 7.74865271e-007),clawe2,"Part",Vector3.new(0.873, 0.258, 0.145),"Block","Wedge",false,nil,0,nil,"Brick")
c2p6 = Add.part("Really black",Vector3.new(0.2, 0.945, 0.2),CFrame.new(-9.7409029, 2.31365895, 34.72089, -1, 0, -7.1055146e-015, 0, 1, 0, 7.1055146e-015, 0, -1),clawe2,"Part",Vector3.new(1, 1, 0.545),"Block","Brick",false,nil,0,nil,"Custom")
c2p7 = Add.part("Really black",Vector3.new(0.2, 0.2, 0.855),CFrame.new(-9.7409029, 1.85000658, 34.3299866, -1, 0, -7.1055146e-015, 0, 1, 0, 7.1055146e-015, 0, -1),clawe2,"Part",Vector3.new(1, 0.091, 1),"Block","Brick",false,nil,0,nil,"Custom")
c2p8 = Add.part("Really black",Vector3.new(0.2, 0.927, 0.2),CFrame.new(-9.7409029, 2.32275319, 33.9572754, -1, 0, -7.1055146e-015, 0, 1, 0, 7.1055146e-015, 0, -1),clawe2,"Part",Vector3.new(1, 1, 0.545),"Block","Brick",false,nil,0,nil,"Custom")
c2p9 = Add.part("Really black",Vector3.new(1, 1.2, 1),CFrame.new(-9.58636189, 2.8681922, 34.5572586, -1, 0, -7.1055146e-015, 0, 1, 0, 7.1055146e-015, 0, -1),clawe2,"Part",Vector3.new(0.109, 0.136, 0.436),"Block","Wedge",false,nil,0,nil,"Brick")
c2p10 = Add.part("Really black",Vector3.new(1, 1.2, 1),CFrame.new(-9.58636189, 2.8681922, 34.1209106, 1, -4.37124683e-008, 5.96046661e-008, 4.37124719e-008, 1, -4.37103118e-008, -5.9604659e-008, 4.37103154e-008, 1),clawe2,"Part",Vector3.new(0.109, 0.136, 0.436),"Block","Wedge",false,nil,0,nil,"Brick")

local clawsound2 = Add.ingay("http://www.roblox.com/asset?id=92597369",c2b3,false,false)
stuf = clawe1:GetChildren()
for i = 1, #stuf do
	if stuf[i].Name == "Blade" then
		weld = Instance.new("Weld", clawe1.lever)
		weld.Part0 = clawe1.lever
		weld.Part1= stuf[i]
		weld.C0 = clawe1.lever.CFrame:toObjectSpace(stuf[i].CFrame)
		stuf[i].Anchored = false
	end
end
for i = 1, #stuf do
	if stuf[i].Name ~= "Handle" and stuf[i].ClassName ~= "Script" and stuf[i].Name ~= "Blade" then
		weld = Instance.new("Weld", clawe1.Handle)
		weld.Part0 = clawe1.Handle
		weld.Part1= stuf[i]
		weld.C0 = clawe1.Handle.CFrame:toObjectSpace(stuf[i].CFrame)
		if stuf[i].Name == "lever" then
			weld.Name = "Main"
		elseif stuf[i].Name == "Canun" then
			weld.Name = "CWeld"
		end
		stuf[i].Anchored = false
	end
end
clawe1.Handle.Anchored = false
stuf = clawe2:GetChildren()
for i = 1, #stuf do
	if stuf[i].Name == "Blade" then
		weld = Instance.new("Weld", clawe2.lever)
		weld.Part0 = clawe2.lever
		weld.Part1= stuf[i]
		weld.C0 = clawe2.lever.CFrame:toObjectSpace(stuf[i].CFrame)
		stuf[i].Anchored = false
	end
end
for i = 1, #stuf do
	if stuf[i].Name ~= "Handle" and stuf[i].ClassName ~= "Script" and stuf[i].Name ~= "Blade" then
		weld = Instance.new("Weld", clawe2.Handle)
		weld.Part0 = clawe2.Handle
		weld.Part1= stuf[i]
		weld.C0 = clawe2.Handle.CFrame:toObjectSpace(stuf[i].CFrame)
		if stuf[i].Name == "lever" then
			weld.Name = "Main"
		elseif stuf[i].Name == "SB" then
			weld.Name = "SBweld"
		end
		stuf[i].Anchored = false
	end
end
clawe2.Handle.Anchored = false
--end--
claw1 = clawe1
claw2 = clawe2
c1b4.Name = "BladeT"
c2b3.Name = "BladeT"
claw1.Parent = char;claw2.Parent = char;
mainweld1c = claw1.Handle.Main.C0
mainweld2c = claw2.Handle.Main.C0
function resetedges()
	lastpoint1 = claw1.BladeT.CFrame.p;lastpoint2 = claw2.BladeT.CFrame.p;
end
function stable(rw,lw)
	rw.C1 = CFrame.new(0,0.5,0)
	lw.C1 = CFrame.new(0,0.5,0)
end
attacks = {
	function(mouse)
	anim = true
	gotDamage1 = true
	lastpoint1=claw1.BladeT.CFrame.p;lastpoint2=claw2.BladeT.CFrame.p
		claw1.BladeT.Sound:Play()
		for i = 0, 1, 0.5 do
			lineEffect(claw1.BladeT,lastpoint1)
			rw.C0 = CFrame.new(1.5, 0.5, 0)*CFrame.Angles(math.rad(0),0,math.rad(40*i))
			lw.C0 = CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(math.rad(0),0,math.rad(-35*i))
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(0,math.rad(-40*i),0)
			stable(rw,lw)
			hrpw.C0 = co*CFrame.Angles(0,0,math.rad(50*i))
		wait()
		end
		for i = 0, 1, 0.5 do
	lineEffect(claw1.BladeT,lastpoint1)
			rw.C0 = CFrame.new(1.5, 0.5, 0)*CFrame.Angles(math.rad(0),0,math.rad(50+40*i))
			lw.C0 = CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(math.rad(0),0,math.rad(-35))
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(0,math.rad(-40-30*i),0)
			stable(rw,lw)
			hrpw.C0 = co*CFrame.Angles(0,0,math.rad(50+40*i))
		wait()
		end
		wait(0.15)
		for i = 0, 1, 0.2 do
			rw.C0 = CFrame.new(1.5, 0.5, 0)*CFrame.Angles(math.rad(0),0,math.rad(90-90*i))
			lw.C0 = CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(math.rad(0),0,math.rad(-35+35*i))
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(0,math.rad(-70+70*i),0)
			stable(rw,lw)
			hrpw.C0 = co*CFrame.Angles(0,0,math.rad(90-90*i))
		wait()
		end
		gotDamage1 = false
		anim = false
	end,
	----------------------------
	function(mouse)
	anim = true
		claw2.BladeT.Sound.Pitch = .6
		claw2.BladeT.Sound:Play()

		for i = 0, 1, 0.1 do
			rw.C0 = CFrame.new(1.5, 0.5, 0)*CFrame.Angles(math.rad(0),0,math.rad(35*i))
			lw.C0 = CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(45*i),math.rad(-35*i))
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(0,math.rad(-30*i),0)
			stable(rw,lw)
			hrpw.C0 = co*CFrame.Angles(0,0,math.rad(50*i))
		wait()
		end
		wait(0.15)
	resetedges()
	gotDamage2 = true
		for i = 0, 1, 0.2 do
			rw.C0 = CFrame.new(1.5, 0.5, 0)*CFrame.Angles(math.rad(0),0,math.rad(35))
			lw.C0 = CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(45-195*i),math.rad(-35-60*i))
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(0,math.rad(-30+100*i),0)
			stable(rw,lw)
			hrpw.C0 = co*CFrame.Angles(0,0,math.rad(50-140*i))
	lineEffect(claw2.BladeT,lastpoint2)
		wait()
		end
		wait(0.15)
	gotDamage2 = false
		for i = 0, 1, 0.1 do
			rw.C0 = CFrame.new(1.5, 0.5, 0)*CFrame.Angles(math.rad(0),0,math.rad(35-35*i))
			lw.C0 = CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(-150+150*i),math.rad(-95+95*i))
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(0,math.rad(70-70*i),0)
			stable(rw,lw)
			hrpw.C0 = co*CFrame.Angles(0,0,math.rad(-90+90*i))
		wait()
		end
		anim = false
	end,
	--------------------------
	function(mouse)
	local Orig = t.CFrame
	local bp = Add.BP(t)
	bp.position = Orig.p
	lookingCF = head.CFrame.lookVector*3-Vector3.new(0,1.5,0)
	bp.position = t.CFrame.p
	anim = true
		claw2.BladeT.Sound.Pitch = .7
		claw2.BladeT.Sound:Play()
		wait()
		claw1.BladeT.Sound.Pitch = .8
		claw1.BladeT.Sound:Play()
		for i = 0, 1, 0.1 do
			rw.C0 = CFrame.new(1.5, 0.5, 0)*CFrame.Angles(math.rad(25*i),0,math.rad(-25*i))
			lw.C0 = CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(-150*i),math.rad(-85*i))
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(0,math.rad(-50*i),0)
	bp.position = t.CFrame.p+lookingCF
			stable(rw,lw)
			hrpw.C0 = co*CFrame.Angles(0,0,math.rad(-50*i))
		wait()
		end
		wait(0.15)
	resetedges()
	gotDamage2 = true
	gotDamage1 = true
		for i = 0, 1, 0.2 do
			rw.C0 = CFrame.new(1.5, 0.5, 0)*CFrame.Angles(math.rad(25-25*i),0,math.rad(-25+115*i))
			lw.C0 = CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(-150+150*i),math.rad(-85-5*i))
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(0,math.rad(-50+140*i),0)
	bp.position = t.CFrame.p+lookingCF
			stable(rw,lw)
			hrpw.C0 = co*CFrame.Angles(0,0,math.rad(-50+230*i))
	lineEffect(claw2.BladeT,lastpoint2);lineEffect(claw1.BladeT,lastpoint1);
		wait()
		end
		wait(0.15)
	gotDamage1 = false
	gotDamage2 = false
		for i = 0, 1, 0.1 do
			rw.C0 = CFrame.new(1.5, 0.5, 0)*CFrame.Angles(math.rad(0),0,math.rad(35-35*i))
			lw.C0 = CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(-90+90*i))
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(0,math.rad(90-90*i),0)
	bp.position = t.CFrame.p+lookingCF
			stable(rw,lw)
			hrpw.C0 = co*CFrame.Angles(0,0,math.rad(180-180*i))
		wait()
		end
		anim = false
		bp.Parent = nil
	end
}
function checkdel(item,name)
	local lol = item:GetChildren();
	for i = 1, #lol do
		if lol[i].ClassName == name then
			lol[i].Parent = nil
end;end;end;

function blaka(clun,jojo,thin)
		local erm = clun:GetChildren()
			for i = 1, #erm do
				if erm[i] then
				checkdel(erm[i],"Decal")
				if erm[i].ClassName == "Part" or erm[i].ClassName == "WedgePart" then
					erm[i].CanCollide = false
					erm[i].Anchored = true
					erm[i].BrickColor = BrickColor.new(color1)
					erm[i].Transparency = 0.5
					if jojo and erm[i].Name ~= "Torso" then
					erm[i].Anchored = false
					 weldIt(thin.Torso,erm[i],thin.Torso.CFrame:toObjectSpace(erm[i].CFrame),nil,erm[i])
					 end
					erm[i].Parent = clun
					if erm[i].Name == "Boost" or erm[i].Name == "Wind" or erm[i].Name == "Bul" then
						erm[i].Parent = nil
					end
				elseif erm[i].ClassName == "Model" then
					blaka(erm[i],jojo,thin)
				elseif erm[i].ClassName == "Hat" then
					erm[i].Handle.Anchored = true
					erm[i].Handle.Mesh.TextureId = ""
					erm[i].Handle.BrickColor =BrickColor.new(color1)
					erm[i].Handle.Transparency = 0.5
					if jojo then
					erm[i].Handle.Anchored = false
					 weldIt(thin.Torso,erm[i].Handle,thin.Torso.CFrame:toObjectSpace(erm[i].Handle.CFrame),nil,erm[i])
					 end
					erm[i].Handle.Parent = clun
					erm[i].Parent = nil
				else
					erm[i].Parent = nil
				end
				end
			end
end
function derpall(place,item)
	local yomam = item:GetChildren()
	for i = 1, #yomam do
		yomam[i].Parent = place
	end
	item.Parent = nil
end
function darkclone(jojo)
			clon = char:Clone()
			clon.Torso.CFrame = t.CFrame
			derpall(clon,clon.Claw1);derpall(clon,clon.Claw2);
			blaka(clon,jojo,clon)
			if jojo then
			clon.Torso.Anchored = false
			end
			clon.Parent = claw1
			clon.Archivable = false
			return clon
end
function dispear()
	
end
function setfoot(x)
if x then
rh.Parent = nil;lh.Parent = nil;rlw = weldIt(t,rl, CFrame.new(0.5,-1.5,0),nil);llw = weldIt(t,ll, CFrame.new(-0.5,-1.5,0),nil);
else
rh.Parent = t;lh.Parent=t;rlw.Parent=nil;llw.Parent=nil
end
end
skills = {
	function()
		if mana >= 60 and not anim and ready then
			mana = mana-60
			updateGui()
			anim = true
			rh.Parent = nil;lh.Parent = nil;
			rlw = weldIt(t,rl, CFrame.new(0.5,-1.5,0),nil);llw = weldIt(t,ll, CFrame.new(-0.5,-1.5,0),nil);
			for i = 0, 1, 0.2 do
				if ready then
					rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-35*i),0,math.rad(25*i))
					lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-35*i),0,math.rad(-25*i))
					rlw.C0 = CFrame.new(0.5,-1.5,0)*CFrame.Angles(math.rad(-45*i),0,0)
					llw.C0 = CFrame.new(-0.5,-1.5,0.25*i)*CFrame.Angles(math.rad(-15*i),0,0)
					stable(rw,lw)
					wait()
				else
					break
				end
			end
			wait(0.5)
			local clon = darkclone()
			local bul = Add.part(color1,Vector3.new(5.85, 5.85, 5.85),clon.Torso.CFrame,char,"Bul",Vector3.new(1,1,1),"Ball","Sphere",false,nil,0)
			bul.CFrame = clon.Torso.CFrame
		coroutine.resume(coroutine.create(function(ball)
		for i = 0,1,0.05 do
		ball.Mesh.Scale = Vector3.new(1+0.75*i,1+0.75*i,1+0.75*i)
		ball.Transparency = 0.75*i
		wait()
		end
		ball.Parent = nil
		end),bul)
			rh.Parent = t;lh.Parent=t;rlw.Parent = nil;llw.Parent = nil
			humanoid.Jump = false
			bp = Add.BP(t)
			origcf = t.CFrame
			lookingCF = head.CFrame.lookVector*20-Vector3.new(0,1.5,0)
			gotDamage1 = true;gotDamage2 = true
			resetedges()
			for i = 0, 1, 0.2 do
				if ready then
				lineEffect(claw1.BladeT,lastpoint1);lineEffect(claw2.BladeT,lastpoint2)
					rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-35+35*i),math.rad(120*i),math.rad(25+65*i))
					lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-35+35*i),math.rad(-120*i),math.rad(-25-65*i))
					stable(rw,lw)
			bp.position = t.CFrame.p+lookingCF
					wait()
				else
					break
				end
			end
			gotDamage1 = false;gotDamage2 = false;clickagain = false
			for i = 1, 10 do
				if not clickagain then
					wait(0.15)
				else
					break
				end
			end
			bp.Parent = nil
			clon.Parent = nil
			if clickagain then
			rh.Parent = nil;lh.Parent = nil;
			rlw = weldIt(t,rl, CFrame.new(0.5,-1.5,0),nil);llw = weldIt(t,ll, CFrame.new(-0.5,-1.5,0),nil);
			rlw.C0 = CFrame.new(1,-1.5,-0.5)*CFrame.Angles(math.rad(30),0,math.rad(25));llw.C0 = CFrame.new(-1,-1.5,-0.5)*CFrame.Angles(math.rad(30),0,math.rad(-25))
			rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(45),math.rad(0),math.rad(25))
			lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(45),math.rad(0),math.rad(-25))
			stable(rw,lw)
			clon = darkclone()
			local bul = Add.part(color1,Vector3.new(5.85, 5.85, 5.85),clon.Torso.CFrame,char,"Bul",Vector3.new(1,1,1),"Ball","Sphere",false,nil,0)
			bul.CFrame = clon.Torso.CFrame
		coroutine.resume(coroutine.create(function(ball)
		for i = 0,1,0.05 do
		ball.Mesh.Scale = Vector3.new(1+0.75*i,1+0.75*i,1+0.75*i)
		ball.Transparency = 1*i
		wait()
		end
		ball.Parent = nil
		end),bul)
			chargeso = Add.ingay("http://www.roblox.com/asset?id=153613030",clon["Torso"],false,false)
			chargeso:Play()
			rh.Parent=t;lh.Parent=t;rlw.Parent = nil;llw.Parent = nil
			t.CFrame = origcf
			game:GetService("Debris"):AddItem(clon,1.5)
			end
					rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
					lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
					stable(rw,lw)
					wait()
			anim = false
		end
	end,
	--darkspin--
	function()
		if not anim and ready then
			anim = true;
			if not shadowblade and mana >= 80 then
			mana = mana-80
			updateGui()
			bg = Add.BG(t)
			pos = Vector3.new(t.Position)
			bv = Add.BV(t,pos+Vector3.new(0,70,0))
		gotDamage1 = true;gotDamage2 = true;
		resetedges()
		CF = t.CFrame
		chargeso1 = Add.ingay("http://www.roblox.com/asset?id=130839563",t,false,true)
		chargeso1:Play()
		for i = 0, 1, 0.05 do
		lineEffect(claw1.BladeT,lastpoint1);lineEffect(claw2.BladeT,lastpoint2)
		rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(0,0,math.rad(150*i))
		lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(0,0,math.rad(-150*i))
		stable(rw,lw)
		CF2 = t.CFrame * CFrame.Angles(0, math.rad(210*i), 0)
		bg.cframe = CF2
		wait(0.001)
		end
		gotDamage1 = false;gotDamage2 = false;bg.Parent=nil;bv.Parent = nil;
		noimpact = false
		tframe = t.CFrame
		while not noimpact do
		if (t.CFrame.p-tframe.p).magnitude >=4 then
			clon = darkclone()
		coroutine.resume(coroutine.create(function(clone)
		wait(0.25)
		clone.Parent = nil
		end),clon)
		
		end
		chargeso1:Stop();chargeso1.Parent = nil
		chargeso = Add.ingay("http://www.roblox.com/asset?id=134854740",bul2,false,false)
		tframe = t.CFrame
		wait()
		end
		impact2 = impact
		bule = Add.part(color1,Vector3.new(35.85, 2, 35.85),CFrame.new(t.Position.X,impact2.Position.Y+1,t.Position.Z),Workspace,"Shake",Vector3.new(0,0.1,0),"Block","Sphere",false,nil,0)
		bule.CFrame = CFrame.new(t.Position.X,impact2.Position.Y+impact2.Size.Y/2,t.Position.Z)
		bule2 = Add.part(color1,Vector3.new(35.85, 2, 35.85),CFrame.new(t.Position.X,impact2.Position.Y+1,t.Position.Z),Workspace,"Shake2",Vector3.new(0,1,0),"Block","FileMesh",false,"http://www.roblox.com/asset/?id=20329976",0)
		bule2.CFrame = bule.CFrame
		bul = Add.part(color1,Vector3.new(5.85, 5.85, 5.85),bule.CFrame,Workspace,"Bul",Vector3.new(1,1,1),"Ball","Sphere",false,nil,0)
		bul.CFrame = bule.CFrame
		bul2 = Add.part(mainColor,Vector3.new(5.5, 5.5, 5.5),bule.CFrame,Workspace,"Bul",Vector3.new(1,1,1),"Ball","Sphere",false,nil,0)
		bul2.CFrame = bule.CFrame
		
		coroutine.resume(coroutine.create(function(p1,p2,p3,p4)
		for i = 0,1,0.05 do
			p1.Mesh.Scale = Vector3.new(1.45*i, 0.1, 1.45*i)
			p1.Transparency = 0.5*i
			p2.Mesh.Scale = Vector3.new(12.6*i, 1, 12.6*i)
			p2.Transparency = 0.5*i
			p3.Mesh.Scale = Vector3.new(5*i, 5*i, 5*i)
			p3.Transparency = 0.5*i
			p4.Mesh.Scale = Vector3.new(5*i, 5*i, 5*i)
			p4.Transparency = 0.5*i
		wait()
		end
		wait()
		p1.Parent=nil;p2.Parent=nil;p3.Parent=nil;p4.Parent=nil
		end),bule,bule2,bul,bul2)
		
		chargeso = Add.ingay("http://www.roblox.com/asset?id=142070127",bul2,false,false)
		chargeso:Play()
		distanceDamage(bule,20,Damage*1.2)
		bp = Add.BP(t)
		poss = Vector3.new(t.Position.X,impact2.Position.Y+1.5,t.Position.Z)
		bp.position = poss
		rh.Parent = nil;lh.Parent = nil;rlw = weldIt(t,rl, CFrame.new(0.5,-1.5,0),nil);llw = weldIt(t,ll, CFrame.new(-0.5,-1.5,0),nil);

		for i = 0, 1, 0.2 do
		rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-45*i),0,math.rad(150-120*i))
		lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-45*i),0,math.rad(-150+120*i))
		rlw.C0 = CFrame.new(0.5,-1.5+.1*i,-0.1*i)*CFrame.Angles(math.rad(-45*i),0,0)
		llw.C0 = CFrame.new(-0.5,-1.5,0.25*i)*CFrame.Angles(math.rad(-15*i),0,0)
		stable(rw,lw)
		bp.position = poss
		wait(0.001)
		end
		wait(1)
		for i = 0, 1, 0.2 do
		rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-45+45*i),0,math.rad(30-30*i))
		lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-45+45*i),0,math.rad(-30+30*i))
		rlw.C0 = CFrame.new(0.5,-1.4-.1*i,-0.1+0.1*i)*CFrame.Angles(math.rad(-45+45*i),0,0)
		llw.C0 = CFrame.new(-0.5,-1.5,0.25-0.25*i)*CFrame.Angles(math.rad(-15+15*i),0,0)
		bp.position = poss
		stable(rw,lw)
		wait(0.001)
		end
			rh.Parent = t;lh.Parent=t;rlw.Parent = nil;llw.Parent = nil;bp.Parent = nil
		elseif shadowblade and mana >= 140 then--shadowstrike
			pur = Add.part(color1,Vector3.new(1,1,1),t.CFrame-Vector3.new(0,1.75,0)*CFrame.Angles(math.rad(90),math.rad(90),0),claw2,"Ring",Vector3.new(5,5,0.1),"Block","FileMesh",false,"http://www.roblox.com/asset/?id=3270017",0.1)
			pur.Archivable = false;lastman=nil;
			setfoot(true)
			origt = t.CFrame;yoplayers={};lines={};
			rlw =rlw;llw =llw--no time to explain c:
			for i = 0,1,0.05 do
			pur.Mesh.Scale = Vector3.new(5+30*i,5+30*i,5+30*i)
			pur.Transparency = 0.1+0.8*i
			hrpw.C0 = (co-Vector3.new(0,0.5*i,0))*CFrame.Angles(math.rad(25*i),0,0)
			rw.C0  = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-40*i),math.rad(10*i),math.rad(30*i))
			lw.C0  = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-40*i),math.rad(-10*i),math.rad(-30*i))
			rlw.C0 = CFrame.new(0.5,-1.5+.5*i,0-0.15*i)*CFrame.Angles(math.rad(10*i),0,0)
			llw.C0 = CFrame.new(-0.5,-1.5+0.2*i,0+0.1*i)*CFrame.Angles(math.rad(-25*i),0,0)
			wait()
			end
			pur.Parent = nil;clun = darkclone()
			eyx = t.Position
			ws = humanoid.WalkSpeed
			shadowr = true
			for i = 1, 7 do
			yoto = checkdist(lastman,yoplayers)
			if yoto then
			humanoid.WalkSpeed = 0
			mana = mana-20
			updateGui()
			yoto.Humanoid.Health = yoto.Humanoid.Health-Damage*0.9
			t.CFrame = CFrame.new(t.Position,yoto.Torso.Position)
			ey = yoto.Torso.Position+t.CFrame.lookVector*3;concentrate=yoto.Torso.Position+t.CFrame.lookVector*3
			t.Anchored = true
			wait(0.1)
			if znewclon then
			znewclon.Parent = nil
			end
			if i ~= 1 then
				znewclon = darkclone()
				yop = Add.part(color1,Vector3.new(1,1,1),znewclon.Torso.CFrame,znewclon,"derp",Vector3.new(1,1,1),"Block","Sphere",false,nil,0.2)
		coroutine.resume(coroutine.create(function(clone)
		for i = 0, 1, 0.25 do
		clone.Mesh.Scale = Vector3.new(1+4.3*i,1+6.5*i,1+4.3*i)
		clone.Transparency = 0.2+0.25*i
		wait()
		end
		end),yop)
			end
			humanoid.WalkSpeed = 0
			--ey = yoto.Torso.Position-(t.Position-t.CFrame.lookVector*20)/4 --CFrame.new(t.Position,yoto.Torso.Position).lookVector((t.Position-yoto.Torso.Position).magnitude+.5)
			line = Add.part(color1,Vector3.new(1,1,1),CFrame.new(t.Position+(Vector3.new(ey.X,yoto.Torso.Position.Y,ey.Z)-t.Position)/2,t.Position),claw1,"Swoosh",Vector3.new(.25,.25,(Vector3.new(ey.X,yoto.Torso.Position.Y,ey.Z)-t.Position).magnitude),"Block","Brick",false,nil,0.25)
			line2 = Add.part(mainColor,Vector3.new(1,1,1),CFrame.new(t.Position+(Vector3.new(ey.X,yoto.Torso.Position.Y,ey.Z)-t.Position)/2,t.Position),claw1,"Swoosh",Vector3.new(.3,.3,(Vector3.new(ey.X,yoto.Torso.Position.Y,ey.Z)-t.Position).magnitude),"Block","Brick",false,nil,0.5)	
			table.insert(lines,line2);table.insert(lines,line)
			t.CFrame = CFrame.new(ey.X,yoto.Torso.Position.Y,ey.Z)
			eyx = CFrame.new(ey.X,yoto.Torso.Position.Y,ey.Z).p--yoto.Torso.Position.Y
			t.Anchored = false
			wait(0.1)
			lastman=yoto
			else
			break
			end
			end
			shadowr = false
			humanoid.WalkSpeed = ws
			wait(0.75)
			clun.Parent = nil;t.CFrame=origt;if znewclon and znewclon:findFirstChild("derp") then znewclon.derp.Parent = nil end;
			for i = 0,1,0.05 do
			hrpw.C0 = (co-Vector3.new(0,0.5-.5*i,0))*CFrame.Angles(math.rad(25-25*i),0,0)
			rw.C0  = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-40+40*i),math.rad(10-10*i),math.rad(30-30*i))
			lw.C0  = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-40+40*i),math.rad(-10+10*i),math.rad(-30+30*i))
			rlw.C0 = CFrame.new(0.5,-1-.5*i,0-0.15+.15*i)*CFrame.Angles(math.rad(10-10*i),0,0)
			llw.C0 = CFrame.new(-0.5,-1.5+0.2*i,0.1-0.1*i)*CFrame.Angles(math.rad(-25+25*i),0,0)
			wait()
			end
			if znewclon then
			znewclon.Parent = nil
			end
			for i, v in pairs(lines) do
			v.Parent = nil
			end
			for i, v in pairs(yoplayers) do
			table.remove(yoplayers,i)
			end
			setfoot(false)
		end
			updateGui();anim = false
		end
	end,
	function()
		--dthrow--
		if not anim and ready then
			anim = true;
			bg = Add.BG(hrp)
			for i = 0, 1, 0.2 do
			rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(0,0,math.rad(90*i))
			lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-35*i),0,math.rad(-20*i))
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(0,math.rad(-25*i),0)
			stable(rw,lw)
			bg.cframe = t.CFrame * CFrame.Angles(0, math.rad(11.25*i), 0)
			wait(0.001)
			end
			for i = 0, 1, 0.2 do
			rw.C0 = CFrame.new(1.5-.2*i,0.5,0-.1*i)*CFrame.Angles(0,math.rad(140*i),math.rad(90))
			lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-35),0,math.rad(-20))
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(0,math.rad(-25-25*i),0)
			stable(rw,lw)
			cf2 = t.CFrame * CFrame.Angles(0, math.rad(11.25+11.25*i), 0)
			bg.cframe = cf2
			wait(0.001)
			end
			throwmode = true;
			while throwmode do
			if not shieldon then
			bg.cframe = cf2
			else
			bg.cframe = cf2--bg.cframe = cf2*CFrame.Angles(0,-45,0)
			end
				wait()
			end
			for i = 0, 1, 0.1 do
			rw.C0 = CFrame.new(1.3+.2*i,0.5,-0.1+.1*i)*CFrame.Angles(0,math.rad(140-140*i),math.rad(90-90*i))
			lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-35+35*i),0,math.rad(-20+20*i))
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(0,math.rad(-50+50*i),0)
			stable(rw,lw)
			cf2 = t.CFrame * CFrame.Angles(0, math.rad(-25*i), 0)
			bg.cframe = cf2
			wait(0.001)
			end
			anim = false
			bg.Parent = nil;
		end
		
	end,
	function()
	--shuriken stars
	shurikens = {};sweld={};svv={};rshi={};
	if ready and mana>=25 and throwing ==false then
	throwing = true;mana = mana-25;updateGui();
	for i = 1, 5 do
		local sstars1 = Add.part(mainColor,Vector3.new(1.66, 0.2, 1.66),t.CFrame,claw1,"stars",Vector3.new(2, 3, 2),"Block","FileMesh",false,"http://www.roblox.com/asset/?id=11376946",0)
		sstars1.Mesh.TextureId = "http://www.roblox.com/asset/?id=19393241";sstars1.Anchored = false
		local sstars2 = Add.part(mainColor,Vector3.new(0.2, 0.2, 0.2),t.CFrame,claw1,"circle",Vector3.new(0.32, 3, 3),"Block","Cylinder",false,nil,.75)
		sstars2.Anchored = false
		Darkness = Instance.new("PointLight")
		Darkness.Range = 5
		Darkness.Enabled = true
		Darkness.Brightness = 1
		Darkness.Color = Color3.new(99,0,148)
		Darkness.Parent = sstars2
		local starsound1=Add.ingay("http://www.roblox.com/asset?id=92597369",sstars1,false,false)
		starsound1:Play()
		local starsound2=Add.ingay("http://www.roblox.com/asset?id=92597369",sstars2,false,false)
		starsound2:Play()
		sw1=weldIt(ra,sstars1,CFrame.new(0,-1,0.25)*CFrame.Angles(0,0,math.rad(90)),nil)
		sw2=weldIt(sstars1,sstars2,CFrame.new(0,0,0)*CFrame.Angles(math.rad(0),math.rad(0),math.rad(90)),nil)
		table.insert(shurikens,sstars1)
		table.insert(sweld, sw1)
		table.insert(rshi, sstars2)
	end
	for i, v in pairs(sweld) do
	v.Parent = nil
	end
	for i, v in pairs(shurikens) do
	v.Touched:connect(function(hit) projectileDamage(hit,v,Damage*0.6) end)
	deleteTables("afasfasgasgas2131421512516565616",v,"BoolValue")
	sv1 = Add.BV(v,(t.CFrame*CFrame.Angles(0,math.rad(-65-5*i),0)).lookVector*350)
	table.insert(svv,sv1)
	end

		for i = 0, 1, 0.25 do
			rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(0,math.rad(140-140*i),math.rad(90))
			for _, v in pairs(shurikens) do
			v.Mesh.Scale = Vector3.new(2+3*i, 3, 2+3*i)
			end			
			for _, v in pairs(rshi) do
			v.Mesh.Scale = Vector3.new(0.32, 3+3.5*i, 3+3.5*i)
			v.Transparency = .75-0.25*i
			end
			stable(rw,lw)
			wait(0.001)	
		end
		for _, v in pairs(shurikens) do
			v.BodyVelocity.velocity = CFrame.new(v.Position,t.Position).lookVector*175
		end
			for i = 0, 1, 0.25 do
			rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(0,math.rad(140*i),math.rad(90))
			for _, v in pairs(shurikens) do
			v.Mesh.Scale = Vector3.new(5-3*i, 3, 5-3*i)
			end
			for _, v in pairs(rshi) do
			v.Mesh.Scale = Vector3.new(0.32, 6.5-3.5*i, 6.5-3.5*i)
			v.Transparency = 0.5+0.25*i
			end
			stable(rw,lw)
			wait(0.001)
			end
		for _, v in pairs(shurikens) do
			v.Parent = nil
		end
	throwing = false
	end
	end,
	function()
	--shadowblock--
	if not throwing and ready then
		throwing = true;shieldon=true
		for i = 0, 1, 0.25 do
			rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(0,math.rad(140-140*i),math.rad(90))
			stable(rw,lw)
			wait(0.001)	
		end
			rh.Parent = nil;lh.Parent = nil;origtf = t.CFrame
			rlw = weldIt(t,rl, CFrame.new(0.5,-1.5,0),nil);llw = weldIt(t,ll, CFrame.new(-0.5,-1.5,0),nil);
			rlw.C0 = CFrame.new(1,-1.5,0)*CFrame.Angles(math.rad(-30),0,math.rad(25));llw.C0 = CFrame.new(-1,-1.5,0)*CFrame.Angles(math.rad(-30),0,math.rad(-25))
			rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(25))
			lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-45),math.rad(0),math.rad(-25))
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(0,math.rad(0),0)
			stable(rw,lw)
			local clon1 = darkclone(true)
			rh.Parent=t;lh.Parent=t;rlw.Parent = nil;llw.Parent = nil
			rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(0,math.rad(0),math.rad(90))
			lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-35),0,math.rad(-20))
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-20),math.rad(-50),0)
			stable(rw,lw)
			weldIt(ra,clon1.Torso,CFrame.new(0,-2.3,0)*CFrame.Angles(math.rad(-90),math.rad(0),math.rad(-90)),nil)
			t.CFrame = origtf
		while shieldon do
		wait()
		if inf/11 == math.floor(inf/11) then
		yos2 = Add.part(color1,Vector3.new(2,2,1),CFrame.new(0,0,0),claw1,"SHIELD",Vector3.new(5,5,5),"Block","FileMesh",false,"http://www.roblox.com/asset/?id=20329976",.3)
		yos2.CFrame = t.CFrame*CFrame.Angles(0,0,0)*CFrame.Angles(math.rad(-90),0,math.rad(90))
		yos2.Archivable = false
		coroutine.resume(coroutine.create(function(pert,fame)
		for i = 0,1, 0.025 do
		pert.Mesh.Scale = Vector3.new(5-4*i,5-4*i,5-4*i)
		pert.CFrame = fame*CFrame.new(0,2-6*i,0)
		pert.Transparency = 0.3+.5*i
		wait()
		end
		pert.Parent =nil
		end),yos2,yos2.CFrame)
		end
		if inf/5 == math.floor(inf/5) then
		yos = Add.part(color1,Vector3.new(2,2,1),CFrame.new(0,0,0),clon,"SHIELD",Vector3.new(0,0,1),"Block","Sphere",false,nil,0)
		weldIt(clon1.Torso,yos,CFrame.new(0,0,1),nil)
		yos.Anchored = false
		coroutine.resume(coroutine.create(function(part)
		for i = 0, 1,0.05 do
		part.Mesh.Scale = Vector3.new(5.3*i,5.3*i,1)
		part.Transparency = .75*i
		wait()
		end
		if part then
		part.Parent = nil
		end
		end),yos)
		end
		end
		clon.Parent = nil
		for i = 0, 1, 0.25 do
			rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(0,math.rad(140*i),math.rad(90))
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(-20+20*i),math.rad(-50),0)
			stable(rw,lw)
			wait(0.001)	
		end
	throwing = false
	end
	end,
	--the dead chain--
	function(sword,mouse)
	swordclones={}
	for i, v in pairs(swords) do
	if v == sword then
	table.remove(swords,i)
	end
	end
	sco = sword.Weld.C0
	for i = 0, 1, 0.1 do
	wait()
	sword.Weld.C0= (sco+Vector3.new(10*i,0,0))*CFrame.Angles(math.rad(90),0,0)
	end
	sword.Weld.Parent = nil
	bg = Add.BG(sword)
	bg.cframe = CFrame.new(sword.Position,mouse.Hit.p)*CFrame.Angles(math.rad(-90),0,0)
	bv = Add.BV(sword,CFrame.new(sword.Position,mouse.Hit.p).lookVector*100)
	rol = Add.part(color1,Vector3.new(1,1,1),CFrame.new(sword.Position,mouse.Hit.p),claw1,"Bazinga",Vector3.new(2,2,0.1),"Block","FileMesh",false,"http://www.roblox.com/asset/?id=3270017",0.2)
	rol.CFrame = CFrame.new(sword.Position,mouse.Hit.p)*CFrame.Angles(0,math.rad(0),0)
	table.insert(swordclones,rol)
		coroutine.resume(coroutine.create(function(clone)
		for i = 0, 1, 0.1 do
		clone.Mesh.Scale = Vector3.new(2+1.2*i,2+1.2*i,0.1)
		clone.Transparency = 0.2+0.6*i
		wait()
		end
		clone.Parent = nil
		end),rol)
	local touch = true
	sword.Touched:connect(function(hit)
	if touch and hit.Parent ~= char and hit.Parent ~= claw1 and hit.Parent ~= claw2 and hit.Parent.ClassName ~= "Hat" then
	touch = false
	for i, v in pairs(swordclones) do
	if hit == v  then
	return
	end
	end
	cf2 = CFrame.new(sword.Position.X,sword.Position.Y,sword.Position.Z)	--cf2 = CFrame.new(sword.Position.X,hit.Position.Y+hit.Size.Y/2,sword.Position.Z)
	p = Add.part(mainColor,Vector3.new(5,5,5),CFrame.new(sword.Position.X,hit.Position.Y,sword.Position.Z),claw1,"Bazinga",Vector3.new(1,1,1),"Block","Brick",false,nil,0.5)
	p.CFrame = cf2
	p2 = Add.part(color1,Vector3.new(5,5,5),CFrame.new(sword.Position.X,hit.Position.Y,sword.Position.Z),claw1,"Bazinga",Vector3.new(1,1,1),"Block","Brick",false,nil,0.5)
	p2.CFrame = cf2
	p3 = Add.part(mainColor,Vector3.new(5,5,5),CFrame.new(sword.Position.X,hit.Position.Y,sword.Position.Z),claw1,"Bazinga",Vector3.new(1,1,1),"Ball","Sphere",false,nil,0.5)
	p3.CFrame = cf2
	ring = Add.part(mainColor,Vector3.new(1,1,1),CFrame.new(sword.Position.X,hit.Position.Y,sword.Position.Z),claw1,"Bazinga",Vector3.new(5,5,0.1),"Block","FileMesh",false,"http://www.roblox.com/asset/?id=3270017",0.5)
	ring.CFrame = cf2*CFrame.Angles(math.rad(90),0,math.rad(90))
	distanceDamage(p,10,Damage*2.2)
	coroutine.resume(coroutine.create(function(item,item2,b1,r)
	for i = 0, 1, 0.1 do
	item.CFrame = item.CFrame*CFrame.fromEulerAnglesXYZ(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)));item2.CFrame = item.CFrame*CFrame.fromEulerAnglesXYZ(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
	b1.Mesh.Scale = Vector3.new(1+.5*i,1+.5*i,1+.5*i);r.Mesh.Scale = Vector3.new(5+4*i,5+4*i,0.1)
	wait()
	end
	item.Parent=nil;item2.Parent=nil;b1.Parent = nil;r.Parent = nil
	end),p,p2,p3,ring)
	sword.Parent = nil;
	end
	end)
	coroutine.resume(coroutine.create(function(clone)
	--derppoint = Vector3.new(clone.CFrame)
	while clone do
	hey = clone:Clone()
	table.insert(swordclones,hey)
	hey.BodyGyro.Parent = nil
	hey.BodyVelocity.Parent = nil
	hey.Anchored = true
	hey.Parent = claw1
	hey.CFrame = clone.CFrame
	coroutine.resume(coroutine.create(function(s)
	for i = 0, 1, 0.1 do
	s.Transparency = 0.4+0.4*i
	wait()
	end
	s.Parent = nil
	end),hey)
	wait(0.25)
	end
	end),hey)
	coroutine.resume(coroutine.create(function()
	wait(4)
	if sword then
	sword.Parent = nil
	end
	end))
	end,
	--ULTIMATE--
	function(tabl)
	scos = {}
	for i, v in pairs(tabl) do
	table.insert(scos,v.Weld.C0)
	end
	for i = 0, 1, 0.1 do
	for x, v in pairs(tabl) do
	v.Weld.C0 = (((scos[x]+Vector3.new(20*i,0,0)))+(CFrame.new(0,0,0)*CFrame.Angles(math.rad(360*(x/8)),0,math.rad(90))).lookVector*(10))*CFrame.Angles(math.rad(-45),math.rad(-45),math.rad(45))
	v.Mesh.Scale = Vector3.new(0.85+2*i, 0.45+2.4*i, 0.85+2*i)
	end
	wait()
	end
	end
}
while not ra or not la or not t or not humanoid or not head or not ll or not rl or not hrp do
	wait()
end
	hrpw = hrp:findFirstChild("RootJoint");lh = t:findFirstChild("Left Hip");rh = t:findFirstChild("Right Hip");rs = t:findFirstChild("Right Shoulder");ls = t:findFirstChild("Left Shoulder");neck = t:findFirstChild("Neck");
	while not ls or not rs or not neck or not hrpw do
		wait()
	end
	co = hrpw.C0
---------------
function weldIt(p1,p2,r1,r2,place)
	local w = Instance.new("Weld")
	if place then
		w.Parent = place
	else
		w.Parent = p1
	end
	w.Part0 = p1
	w.Part1 = p2
	w.C0 = r1
	if r2 then
	w.C1 = r2
	end
	return w
end

function run(speed)
	if rw and lw and not anim and ready then
		if speed >0 and (t.Velocity*Vector3.new(1, 0, 1)).magnitude > 2 and not runs then
			runs = true;runarmsanim = false;
			for i = 0, 1, 0.2 do
			if not anim and run and not fall and not jumping then
			rw.C0 = CFrame.new(1.5, 0.5, 0)*CFrame.Angles(math.rad(-40*i),0,math.rad(35*i))
			if not shadowblade then
			lw.C0 = CFrame.new(-1.5+.25*i, 0.5, 0)*CFrame.Angles(math.rad(-40*i),0,math.rad(-35*i))
			else
			lw.C0 = CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(0,math.rad(-140*i),math.rad(-100*i))
			end
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(15*i),0,0)
			hrpw.C0 = co*CFrame.Angles(math.rad(20*i),0,0)
			rw.C1 = CFrame.new(0,0.5,0)
			lw.C1 = CFrame.new(0,0.5,0)
			wait(0.001)
			else
			runs = false
			hrpw.C0 = co
				break
			end
			if not anim and run and not jumping then
			runarmsanim = true;
			end
			end
		elseif runs then
			runs = false
			if not anim then
			rh.Parent = t;lh.Parent =t;
			if rlw and llw then
			rlw.Parent = nil;llw.Parent = nil
			end
			end
			for i = 0, 1, 0.2 do
			if not anim and run and not fall and not jumping then
			rw.C0 = CFrame.new(1.5, 0.5, 0)*CFrame.Angles(math.rad(-40+40*i),0,math.rad(35-35*i))
			if not shadowblade then
			lw.C0 = CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(math.rad(-40+40*i),0,math.rad(-35+35*i))
			else
			lw.C0 = CFrame.new(-1.25-.25*i, 0.5, 0)*CFrame.Angles(0,math.rad(-140+140*i),math.rad(-100+100*i))
			end
			nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(math.rad(15-15*i),0,0)
			hrpw.C0 = co*CFrame.Angles(math.rad(20-20*i),0,0)
			rw.C1 = CFrame.new(0,0.5,0)
			lw.C1 = CFrame.new(0,0.5,0)
			wait(0.001)
			else
			hrpw.C0 = co
				break
			end
			end
		end
		else
		runs = false
	end
end

function jump()
	if rw and lw and not anim then
		jumping = true
			for i = 0, 1, 0.2 do
			if not anim and not fall then
			rw.C0 = CFrame.new(1.5, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(-25*i),math.rad(100*i))
			lw.C0 = CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(25*i),math.rad(-100*i))
			rw.C1 = CFrame.new(0,0.5,0)
			lw.C1 = CFrame.new(0,0.5,0)
			wait(0.001)
			else
				break
			end
			end
	end
end
function fell(hit)
	if rw and lw and not anim and jumping then
	if hit.CanCollide == true and hit.Parent ~= char then
			for i = 0, 1, 0.2 do
			if not anim and not fall then
			rw.C0 = CFrame.new(1.5, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(-25+25*i),math.rad(100-100*i))
			lw.C0 = CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(math.rad(0),math.rad(25-25*i),math.rad(-100+100*i))
			rw.C1 = CFrame.new(0,0.5,0)
			lw.C1 = CFrame.new(0,0.5,0)
			wait(0.001)
			else
				break
			end
			end
			jumping = false
	end
	elseif anim and lw and rw and not noimpact then
	if hit.CanCollide == true and hit.Parent ~= char and hit.Name ~= "Blade" and hit.Name ~= "BladeT" then
		noimpact = true
		impact = hit
	end
	end
end
function lower(wat,em,wee)
	yos = wat:GetChildren()
	enr = wat.Parent:GetChildren()
	for x = 0, 1, 0.1 do
	for i = 1, #yos do
		if yos[i].Name == "Main" then
			if em == true then
			yos[i].C0 = wee-Vector3.new(0, 0.25*x,0)
			else
			yos[i].C0 = wee+Vector3.new(0, 0.25*x,0)
			end
			
		end
	end 
	for b = 1, #enr do
		if enr[b].Name == "Blade" or enr[b].Name == "BladeT" then
			if em == true then
				enr[b].Transparency = 1*x
			else
				enr[b].Transparency = 1-1*x
			end
		end
	end
	wait(0.001)
	end
end

function lowerBlade(em)
	lower(claw1.Handle,em,mainweld1c)
	lower(claw2.Handle,em,mainweld2c)
end


function click(mouse)
	if ready then
		if not anim then
		rh.Parent = t;lh.Parent =t;
		if rlw and llw then
		rlw.Parent = nil;llw.Parent = nil
		end
		fixtorso()
		nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(0,0,0)
		end
fixtorso()
if at == 1 and mouse and not anim then 
	attacks[1](mouse)
	at = 2
elseif at == 2 and mouse and not anim then
	attacks[2](mouse)
	at = 3
elseif at == 3 and mouse and not anim then
	attacks[3](mouse)
	at = 1
end
end
end
function fixtorso()
	if not anim then
		hrpw.C0 = co
	end
end
function checkcombo(combo)
	if string.len(combo) <= 4 then
	if combo == "wadd" and not anim and ready and not shadowblade then
	anim = true;shadowblade=true;
	for i = 0, 1, 0.25 do
	rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(25*i),math.rad(-140*i),math.rad(-55*i))
	lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(35*i),math.rad(130*i),math.rad(55*i))
	stable(rw,lw);Adde()
	wait()
	end
	blok = Add.part(color1,Vector3.new(1,1,1),claw2.BladeT.CFrame,claw2,"blok",Vector3.new(1,1,1),"Block","Brick",false,nil,0)
	blok.Anchored = false
	leb = weldIt(claw2.BladeT,blok,CFrame.new(0,-1,0),nil)
	blok3 = Add.part(color1,Vector3.new(1,1,1),claw2.BladeT.CFrame,claw2,"blok",Vector3.new(2,2,2),"Block","Brick",false,nil,0.4)
	blok3.Anchored = false
	leb3 = weldIt(claw2.BladeT,blok3,CFrame.new(0,-1,0),nil)
	blok2 = Add.part(color1,Vector3.new(1,1,1),claw2.BladeT.CFrame,claw2,"ENERGY",Vector3.new(2,3.2,2),"Block","Sphere",false,nil,0.4)
	blok2.Anchored = false
	leb2 = weldIt(claw2.BladeT,blok2,CFrame.new(0,-1,0),nil)
	for i = 1, 255 do
	if i%3 == 0 then
	Adde()
	end
	if i/10 == math.floor(i/10) then
	rando = Add.part(color1,Vector3.new(1,1,1),claw2.BladeT.CFrame,claw2,"ENERGY",Vector3.new(0,0,0),"Block","Sphere",false,nil,0.4)
	hitit =claw2.BladeT.CFrame+Vector3.new(math.random(-100,100)/(35/(1+((1/175)*i))),math.random(-100,100)/(35/(1+((1/175)*i))),math.random(-100,100)/(35/(1+((1/175)*i))))
	cf = CFrame.new(hitit.p,claw2.BladeT.CFrame.p)
	rando.Anchored = false
	ler = weldIt(claw2.BladeT,rando,claw2.BladeT.CFrame:toObjectSpace(cf),nil)
		coroutine.resume(coroutine.create(function(p,w,cf,num)
		for i = 0, 1, 0.1 do
	xf = CFrame.new(cf.p,claw2.BladeT.CFrame.p)
	derp = claw2.BladeT.CFrame.p-xf.p
		p.Mesh.Scale = Vector3.new(.8*i,.8*i,.9+(num/(num/5))*i)
		w.C0 = claw2.BladeT.CFrame:toObjectSpace(xf+derp*i)
		wait()
		end
		p.Parent = nil
		end),rando,ler,hitit,i)
	end
	leb.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
	leb3.C0 = CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
	wait()
	end
	blok.Parent = nil;blok2.Parent = nil;blok3.Parent = nil
	for i = 0,1,0.1 do
	Adde()
	local eyo = claw2:GetChildren()
	for x = 1, #eyo do
	if eyo[x].Name == "SB" then
	eyo[x].Transparency = 0.5*i
	end
	end
	wait()
	end
	for i = 0, 1, 0.25 do
	Adde()
	rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(25-25*i),math.rad(-140+140*i),math.rad(-55+55*i))
	lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(35-35*i),math.rad(130-130*i),math.rad(55-55*i))
	stable(rw,lw)
	wait()
	end
	anim = false
	elseif shadowblade and combo == "wadd" and not anim and ready then
	anim = true
	for i = 0,1,0.1 do
	Adde()
	local eyo = claw2:GetChildren()
	for x = 1, #eyo do
	if eyo[x].Name == "SB" then
	eyo[x].Transparency = 0.5+0.5*i
	end
	end
	wait()
	end
	anim = false;shadowblade = false;
	end
	else
	combo = ""
	end
end
function keys(key,mouse)
	key = key:lower()
	if key == "f" or key == "z" or key == "x" or key == "g" then
		if not anim then
		rh.Parent = t;lh.Parent =t;
		if rlw and llw then
		rlw.Parent = nil;llw.Parent = nil
		end
		fixtorso()
		nw.C0 = CFrame.new(0, 1.5, 0)*CFrame.Angles(0,0,0)
		end
	end
	if key == "f" and not keyf then
		keyf = true
		charge(mouse)
	elseif key == "t" and keyf then
		tdown = true;
	elseif key == "e" and keyf then
		edown =true;
	elseif key == "q" and keyf then
		qdown = true;
	elseif key == "z" then
		if not throwmode then
		clickagain = true
		skills[1]()
		elseif not throwing then
		skills[4]()
		end
	elseif key == "x" then
		if not throwmode then
		skills[2]()
		elseif not throwing then
		skills[5]()
		end
	elseif key == "g" then
		if not throwmode then
		skills[3]()
		elseif not throwing then
			throwmode = false
		end
		end
	if key == "w" then
		if last == "" then
		combo = combo.."w"
		last = "w"
		else
		last = ""
		combo = ""
		end
	elseif key == "a" then
		if last == "w" then
		combo = combo.."a"
		last = "a"
		else
		last = ""
		combo = ""
		end
	elseif key == "d" then
	if last == "a" or last == "d" then
		combo = combo.."d"
		last = "d"
	else
		last = ""
		combo = ""
	end
	else
	last = ""
	combo = ""
	end
	checkcombo(combo)
end
function keyd(key)
	key = key:lower()
	if key == "f" and keyf and not chargeskill then
		keyf= false
	elseif key == "x" and throwmode then
		shieldon = false
	end
end
function sel(mouse)
	while equiping or notequi do
		wait()
	end
	if not ready then
	fallit()
	coroutine.resume(coroutine.create(function()
	equiping = true
	lowerBlade(false)
	equiping = false;
	end))
	rs.Parent = nil;ls.Parent = nil;neck.Parent = nil;
	rw = weldIt(t,ra,CFrame.new(1.5, 0, 0))
	lw = weldIt(t,la,CFrame.new(-1.5,0,0))
	nw = weldIt(t,head,CFrame.new(0, 1.5, 0))
	ready = true;
	end
	mouse.Button1Down:connect(function() click(mouse) end)
	mouse.KeyDown:connect(function(k) keys(k,mouse) end)
	mouse.KeyUp:connect(keyd)
end

function reset()
	rs.Parent = t
	ls.Parent = t
	neck.Parent = t
	rh.Parent = t
	lh.Parent = t
	if rw then
	rw.Parent = nil
	end
	if lw then
	lw.Parent = nil
	end
	if nw then
	nw.Parent = nil
	end
	if rlw then
		rlw.Parent = nil
	end
	if llw then
		llw.Parent = nil
	end
	hrpw.C0 = co
end
function deSel(mouse)
	while equiping or notequi or anim do
		wait()
	end
	if ready then
		notequi = true
	lowerBlade(true)
	notequi = false
	ready = false
	reset()
	end
end

function wepcharge()
	num = 8
	swords = {}
tframelol = nil
	local circle = Add.part(color1,Vector3.new(1, 6, 6),t.CFrame,claw1,"Circle",Vector3.new(1, 1, 1),"Block","Cylinder",false,nil,0.4)
	circle.Anchored = false
	local cweld = weldIt(t,circle,CFrame.new(0,-3,0)*CFrame.Angles(0,0,math.rad(90)),nil,circle)
	tframelol = t.CFrame
		coroutine.resume(coroutine.create(function()
	for i = 0,1,(1/num) do
	if mana<maxmana and keyf and ready and not chargeskill then
	sword = Add.part(mainColor,Vector3.new(1, 2.4, 2),circle.CFrame,claw1,"FlySword",Vector3.new(0.85, 0.45, 0.85),"Block","FileMesh",false,"http://www.roblox.com/asset/?id=94840342",1)
	sword.Anchored = false
	swordWeld = weldIt(circle,sword,(CFrame.new((CFrame.new(0,0,0)*CFrame.Angles(math.rad(360*i),0,math.rad(90))).lookVector*-2.5)*CFrame.Angles(math.rad(360*i)-math.rad(90),0,math.rad(90)))+Vector3.new(1,0,0),nil,sword)
	table.insert(swords,sword)
		coroutine.resume(coroutine.create(function(s)
		for i = 0, 1, 0.1 do
		if s then
		s.Transparency = 1-0.6*i
		wait()
		else
		break
		end;end;end),sword)
	wait(1)
	elseif tplay then
	i = i-(1/num)
	while tplay do
	wait()
	end
	else
	break
	end
	end
		end))
	return circle
end

function charge(mouse)
	if mana < maxmana and not anim and ready then
		anim = true
		updateGui()
		if not shadowblade then
		b1 = Add.part(mainColor,Vector3.new(1,1,1),CFrame.new(claw1.BladeT.Position),claw1,"orb",Vector3.new(1,1,1),"Ball","Sphere",false,nil,0.25)
		b2 = b1:Clone();b2.Parent=claw1;b2.CFrame = claw2.BladeT.CFrame;
		b1f = Add.part(color1,Vector3.new(1,1,1),CFrame.new(b1.Position),claw1,"orb",Vector3.new(1.25,1.25,1.25),"Ball","Sphere",false,nil,0.65)
		b2f = b1f:Clone();b2f.Parent=claw1;b2f.CFrame=b2.CFrame;b1f2=b1f:Clone();b1f2.Parent=claw1;b1f2.Mesh.Scale=Vector3.new(1.35,1.35,1.35);b2f2=b2f:Clone();b2f2.Parent=claw1;b2f2.Mesh.Scale=Vector3.new(1.3,1.3,1.3);
		b1w = weldIt(claw1.BladeT,b1,CFrame.new(0,0,0),nil);b2w = weldIt(claw2.BladeT,b2,CFrame.new(0,0,0),nil);
		b1fw = weldIt(b1,b1f,CFrame.new(0,0,0),nil);b2fw=weldIt(b2,b2f,CFrame.new(0,0,0),nil);
		weldIt(b1f,b1f2,CFrame.new(0,0,0),nil);weldIt(b2f,b2f2,CFrame.new(0,0,0),nil)
		b1.Anchored = false;b2.Anchored = false;b1f.Anchored=false;b2f.Anchored = false;b1f2.Anchored=false;b2f2.Anchored=false;
		else
		b1 = Add.part(color1,Vector3.new(1,1,1),t.CFrame,claw2,"DarkMatter",Vector3.new(1,1,1),"Block","Brick",false,nil,0)
		b2 = Add.part(color2,Vector3.new(1,1,1),t.CFrame,claw2,"DarkMatter",Vector3.new(1.6,1.6,1.6),"Block","Brick",false,nil,0.5)
		b1.Anchored = false;b2.Anchored = false;
		b1w = weldIt(claw2.BladeT,b1,CFrame.new(0,1.5,0),nil);b2w=weldIt(b1,b2,CFrame.new(0,0,0),nil);
		end
		for i = 0, 1, 0.1 do
		if not shadowblade then
		rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(65*i),0,math.rad(25*i))
		lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(65*i),0,math.rad(-25*i))
		b1.Mesh.Scale=Vector3.new(1*i,1*i,1*i);b2.Mesh.Scale=Vector3.new(1*i,1*i,1*i);b1f.Mesh.Scale=Vector3.new(1.25*i,1.25*i,1.25*i);b2f.Mesh.Scale=Vector3.new(1.25*i,1.25*i,1.25*i);b1f2.Mesh.Scale=Vector3.new(1.3*i,1.3*i,1.3*i);b2f2.Mesh.Scale=Vector3.new(1.3*i,1.3*i,1.3*i)
		Darkness = Instance.new("PointLight")
		Darkness.Range = 10
		Darkness.Enabled = true
		Darkness.Brightness = 1
		Darkness.Color = BrickColor.new(mainColor).Color
		Darkness.Parent = b1
		else
		rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-25*i),0,math.rad(-25*i))
		lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),0,math.rad(-90*i))
		nw.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(0,math.rad(70*i),0)
		hrpw.C0 = co*CFrame.Angles(0,0,math.rad(-90*i))
		end
		stable(rw,lw)
		wait()
		end
		humanoid.WalkSpeed = humanoid.WalkSpeed-6
		if not shadowblade then
		chargeso = Add.ingay("http://www.roblox.com/asset?id=153092334",t,false,true)
		chargeso.Looped = true
		chargeso:Play()
		derm = {};derpy=0;moe = false;
		cucle = wepcharge()
		end
		tdown = false
		while mana<maxmana and keyf and ready do
		--skills--
		if tdown and #swords > 0 and not chargeskill then
		chargeskill = true;keyf = true;tdown=false;
		coroutine.resume(coroutine.create(function()
		skills[6](swords[#swords],mouse)
		tdown = false;chargeskill=false
		end))
		end
		if edown and qdown and #swords == 8 and not chargeskill then
		chargeskill = true;keyf = true;edown=false;qdown=false
		coroutine.resume(coroutine.create(function()
		skills[7](swords)
		tdown = false;chargeskill=false
		end))
		end
		--
		anim = true
		updateGui()
		b1w.C0 = b1w.C0*CFrame.fromEulerAnglesXYZ(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)));b2w.C0 = b2w.C0*CFrame.fromEulerAnglesXYZ(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)));
		if not shadowblade then
		b1fw.C0 = b1fw.C0*CFrame.fromEulerAnglesXYZ(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)));b2fw.C0 = b2fw.C0*CFrame.fromEulerAnglesXYZ(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)));
		cucle.Weld.C0 = cucle.Weld.C0*CFrame.Angles(math.rad(2),0,0)
		end
		if (mana)+.75<=maxmana and not chargeskill then
		mana = mana+.75
		elseif (mana)+.75>maxmana and not chargeskill then
		mana = maxmana
		end
		if not shadowblade then
		lp = claw1.BladeT.CFrame.p
		for yos = 1, 3 do
		for i = 0, 5 do
			movesz = claw2.BladeT.Position+((claw1.BladeT.Position-claw2.BladeT.Position)*(i/5))+Vector3.new(math.random(-1,1)/math.random(2,4),math.random(-1,1)/math.random(2,4),0)
			if moe == false then
			if yos < 3 then
				lcolor = "Really black"
			else
				lcolor = "Royal purple"
			end
			lning = createLightning(movesz,lp,lcolor,false,nil)
			lp = movesz
			else
			lning = createLightning(movesz,lp,"Really black",true,derm[derpy])
			derpy = derpy+1
			lp = movesz
			end
		end
		end
		derpy = 1
		moe = true
		else
		if inf/3 == math.floor(inf/3) then
		lepart=Add.part(color1,Vector3.new(1,1,1),claw2.BladeT.CFrame+Vector3.new(math.random(-100,100)/35,math.random(-100,100)/35,math.random(-100,100)/35),claw2,"DarkMatter",Vector3.new(0.5,0.5,0.5),"Block","Brick",false,nil,0)
		coroutine.resume(coroutine.create(function(p1,p2,w)
		for i = 0, 1, 0.025 do
		p1.CFrame = (p1.CFrame+Vector3.new(0,0.05,0))*CFrame.fromEulerAnglesXYZ(math.rad(math.random(-360,360)),math.rad(math.random(-360,360)),math.rad(math.random(-360,360)))
		wait()
		end
		p1.Parent = nil
		end),lepart)
		end
		end
		wait()
		end
		for _, v in pairs(swords) do
			v.Parent = nil
		end
		if not shadowblade then
		cucle.Parent = nil
		deleteTables("Lightning",claw1)
		deleteTables("Lightning",claw1)
		chargeso:Stop()
		chargeso.Parent = nil
		end
		humanoid.WalkSpeed = humanoid.WalkSpeed+6
		updateGui()
		if shadowblade then
				b1.Parent = nil;b2.Parent = nil;
		end
				
		for i = 0, 1, 0.1 do
		if not shadowblade then
		b1.Mesh.Scale=Vector3.new(1-1*i,1-1*i,1-1*i);b2.Mesh.Scale=Vector3.new(1-1*i,1-1*i,1-1*i);b1f.Mesh.Scale=Vector3.new(1.25-1.25*i,1.25-1.25*i,1.25-1.25*i);b2f.Mesh.Scale=Vector3.new(1.25-1.25*i,1.25-1.25*i,1.25-1.25*i);b1f2.Mesh.Scale=Vector3.new(1.3-1.3*i,1.3-1.3*i,1.3-1.3*i);b2f2.Mesh.Scale=Vector3.new(1.3-1.3*i,1.3-1.3*i,1.3-1.3*i)
		rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(65-65*i),0,math.rad(25-25*i))
		lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(65-65*i),0,math.rad(-25+25*i))
		else
		rw.C0 = CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-25+25*i),0,math.rad(-25+25*i))
		lw.C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(0),0,math.rad(-90+90*i))
		nw.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(0,math.rad(70-70*i),0)
		hrpw.C0 = co*CFrame.Angles(0,0,math.rad(-90+90*i))
		end
		stable(rw,lw)
		wait()
		end
		if not shadowblade then
		b1f.Parent = nil;b2f.Parent = nil;b1f2.Parent = nil;b2f2.Parent = nil;b1.Parent = nil;b2.Parent = nil;
		end
		anim = false
	end
end
lightnings = {}
function createLightning(tip,lastpoint,colur,yoyoyo, jim)
		point = tip
		unit = (lastpoint - point).unit
		mag = (lastpoint - point).magnitude
			middle = lastpoint-(unit*(mag/2))
			cf = CFrame.new(middle, point)
			if not yoyoyo and not jim then
			l = Instance.new("Part")
			l.Material = "SmoothPlastic"
			l.Name = "Lightning"
			l.Anchored = true
			l.Transparency = 0.15
			l.CanCollide = false
			l.Size = Vector3.new(1, 1, mag)
			l.BrickColor = BrickColor.new(colur)
			l.TopSurface = "SmoothNoOutlines"
			l.BottomSurface = "SmoothNoOutlines"
			l.RightSurface = "SmoothNoOutlines"
			l.LeftSurface = "SmoothNoOutlines"
			local m = Instance.new("SpecialMesh",l)
			m.Name = "Mesh"
			m.MeshType = "Brick"
			m.Scale = Vector3.new(.135, .135, mag)/l.Size
			l.CFrame = cf
			local w = weldIt(t,l,t.CFrame:toObjectSpace(l.CFrame),nil,l)
			l.Anchored = false
			l.Parent = claw1
			table.insert(derm, l)
			table.insert(lightnings, l)
			return l
			elseif jim then
			jim.Mesh.Scale = Vector3.new(.135, .135, mag)/jim.Size
			if jim:findFirstChild("Weld") then
			jim.Weld.C0 = t.CFrame:toObjectSpace(cf)
			end
			end
end
function deleteTables(tabl, tem, clas)
charstaf = tem:GetChildren()
for i = 1, #charstaf do
	if charstaf[i].Name == tabl then
		charstaf[i].Parent = nil;
	end
	if clas then
	if charstaf[i].ClassName == clas then
		print("Deleting: "..charstaf[i].Name)
		charstaf[i].Parent = nil;
	end
	end
end
end

function clearTable(tabl)
	for i, v in pairs(tabl) do
		table.remove(tabl,i)
	end
end
function lineEffect(tip,lastpoint)
	if tip~= nil then
		off = (tip.Mesh.Scale.z/tip.Size.z)/2
		point = (tip.CFrame*CFrame.new(0, 0, -off)).p
		unit = (lastpoint - point).unit
		mag = (lastpoint - point).magnitude
		if mag>1 then
			middle = lastpoint-(unit*(mag/2))
			cf = CFrame.new(middle, point)
			l = Instance.new("Part")
			l.Material = "SmoothPlastic"
			l.Name = "Wind"
			l.Anchored = true
			l.CanCollide = false
			l.Size = Vector3.new(1, 1, mag)
			l.BrickColor = BrickColor.new("Black")
			l.TopSurface = "SmoothNoOutlines"
			l.BottomSurface = "SmoothNoOutlines"
			l.RightSurface = "SmoothNoOutlines"
			l.LeftSurface = "SmoothNoOutlines"
			local m=  Instance.new("SpecialMesh")
			m.Name = "Mesh"
			m.MeshType = "Brick"
			if shadowblades and tip == claw2.BladeT then
			m.Scale = Vector3.new(1, .025, mag)/l.Size
			l.Transparency = 0.8
			else
			m.Scale = Vector3.new(.215, .215, mag)/l.Size
			end
			m.Parent = l
			l.Parent = claw1
			l.CFrame = cf
			if lastpoint == lastpoint1 then
			lastpoint1 = point
			elseif lastpoint == lastpoint2 then
			lastpoint2 = point
			else
			print("Hello")
			end
		coroutine.resume(coroutine.create(function(lo,mog)
		for i = 0 , 1 , 0.1 do
		wait()
		if shadowblades and tip == claw2.BladeT then
		lo.Mesh.Scale = (Vector3.new(1.5/(lo.Size.X+(1.5-.025)), .025/lo.Size.Y, mog/lo.Size.Z))-Vector3.new(0, 0, 0)*i
		else
		lo.Transparency = 1*i
		lo.Mesh.Scale = (Vector3.new(.215, .215, mog)/lo.Size)-Vector3.new(.215, .215, 0)*i
		end
		end
		lo.Parent = nil;
		end),l,mag)
			return l
		end
	end
end

function fade()
	for i, v in pairs(effects) do
		if v~= nil then
				mesh = v:findFirstChild("Mesh")
				if mesh then
			if v.Name == "Wind" then
				mesh = v:findFirstChild("Mesh")
					mesh.Scale = mesh.Scale-Vector3.new(0.0125, 0.0125, 0)
			elseif v.Name == "Bul" then
					mesh.Scale = mesh.Scale+Vector3.new(0.15, 0.15, 0.15)
			elseif v.Name == "Shake" then
					mesh.Scale = mesh.Scale+Vector3.new(0.05, 0, 0.05)
					v.Transparency = v.Transparency+.05
			elseif v.Name == "Shake2" then
					mesh.Scale = mesh.Scale+Vector3.new(0.5*3, 0.05*1.5, 0.5*3)
					v.Transparency = v.Transparency+.025
			end
				end
			if v.Name ~= "Shake" and v.Name ~= char.Name then
			v.Transparency = v.Transparency+.04
			end
			if v.Name ~= char.Name and v.Transparency>1 then
				v.Parent = nil
			elseif v.Name == char.Name then
				if v:findFirstChild("ls") then
				if v.ls.Value >= 10 then
					v.Parent = nil
				else
					v.ls.Value = v.ls.Value +1
				end
				else
					v.Parent = nil
				end
			end
		end
	end
end

function fallit()
	fall = true
	fall = false
end


function damageIt1(hit)
	Ehumanoid = hit.Parent:findFirstChild("Humanoid")
	if Ehumanoid and anim and gotDamage1 and Ehumanoid ~= humanoid then
		Ehumanoid.Health = Ehumanoid.Health-(math.random(Damage-10, Damage+10))
		gotDamage1 = false
	end
end
function damageIt2(hit)
	Ehumanoid = hit.Parent:findFirstChild("Humanoid")
	if Ehumanoid and anim and gotDamage2 and Ehumanoid ~= humanoid then
		Ehumanoid.Health = Ehumanoid.Health-(math.random(Damage-10, Damage+10))
		gotDamage2 = false
	end
end
function imf(item)
	allStuffs = item:GetChildren()
	for i = 1, #allStuffs do
		if allStuffs[i].Name == "Blade" or allStuffs[i].Name == "BladeT" then
			if item == claw1 then
			allStuffs[i].Touched:connect(damageIt1)
			else
			allStuffs[i].Touched:connect(damageIt2)
			end
		end
	end
end
humans = {}
function findHum(yo)
	clearTable(humans)
	local all = yo:GetChildren()
	if #all > 0 then
	for po = 1, #all do
		if all[po] then
		if all[po]:findFirstChild("Humanoid") then
		player1 = game.Players:GetPlayerFromCharacter(all[po])
		if player1 and player1.Name ~= player.Name then
		table.insert(humans,all[po])
		elseif not player1 then
		table.insert(humans,all[po])
		end
		else
		jerp = all[po]:GetChildren()
		if #jerp >0 then
		findHum(all[po])
		end
		end
		end
	end
	end
end
function distanceDamage(item,dist,dmg)
	print("sup")
	--[[findHum(Workspace)
	for i, v in pairs(humans) do
		hea = v:findFirstChild("Head")
		if hea then
			if (hea.Position-item.Position).magnitude <= dist then
				v["Humanoid"]:TakeDamage(dmg)
			end
		end
	end]]
    local c = game.Workspace:GetChildren();
    for i = 1, #c do
	   local hum = c[i]:findFirstChild("Humanoid")
        if hum ~= nil and hum.Health ~= 0 then
        local head = c[i]:findFirstChild("Head");
        if head ~= nil then
        local targ = head.Position - item.Position;
        local mag = targ.magnitude;
        if mag <= dist and c[i].Name ~= player.Name then 
		hum.Health = hum.Health-(math.random(Damage-10, Damage+10))
end
end
	end
end
end

function projectileDamage(hit,s,dmg)
	hum = hit.Parent:findFirstChild("Humanoid")
	if hum and not s:findFirstChild(hit.Parent.Name) and hit.Parent ~= char then
		bval = Instance.new("BoolValue",s);bval.Name = hit.Parent.Name
		hum.Health = hum.Health-(dmg)
	end
end
function checkifintable(tabl,yo)
for i, v in pairs(tabl) do
if v ==yo then
return true
end
end
return false
end
function checkdist(ge,tebl)
				eym = nil;eym2 = nil
				local c = Workspace:GetChildren()
				for i = 1, #c do
				hum = c[i]:findFirstChild("Humanoid")
				if hum and hum.Health ~= 0 and c[i] ~= char then
				toso = c[i]:findFirstChild("Torso")
					if toso then
						if (toso.Position-t.Position).magnitude <= 20 then
						if checkifintable(tebl,c[i]) == false then
						table.insert(tebl,c[i])
						return c[i]
						else
						if ge == c[i] then
						eym = c[i]
						else
						eym = c[i];eym2=c[i];
						end
						end
						end
					end
				end
				end
				if ge == eym then
				if eym2 ~= nil then
				return eym2
				else
				return eym
				end
				else
				return eym
				end
end
main1 = weldIt(ra,claw1["Handle"],CFrame.new(0.5, -0.5, 0)*CFrame.Angles(math.rad(180),math.rad(180),math.rad(0)))
main2 = weldIt(la,claw2["Handle"],CFrame.new(-0.5, -0.5, 0)*CFrame.Angles(math.rad(180),0,0))
imf(claw1);imf(claw2);




---{GUI}---
ScreenGui = Instance.new("ScreenGui", player:findFirstChild("PlayerGui"))
backgroundLabel = Instance.new("TextLabel", ScreenGui)
backgroundLabel.Text = ""
backgroundLabel.Position = UDim2.new(0,0,0,150)
backgroundLabel.Size = UDim2.new(0,275,0,10)
backgroundLabel.Name = "Background"
backgroundLabel.BackgroundColor3 = Color3.new(0,0,0)
EnergyGui = backgroundLabel:Clone()
EnergyGui.Parent = ScreenGui
EnergyGui.Size = UDim2.new(0,275*(mana/maxmana),0,10)
EnergyGui.Name = "Energy"
EnergyGui.BackgroundColor3 = BrickColor.new(color1).Color
CGui = EnergyGui:Clone()
CGui.Parent = ScreenGui
CGui.Name = "Enough"
CGui.BackgroundTransparency = 1
CGui.TextColor3 = EnergyGui.BackgroundColor3
CGui.Position = UDim2.new(0,0,0,160)
CGui.Text = "Energy: "..mana.."/"..maxmana
------------
function updateGui()
	EnergyGui.Size = UDim2.new(0,275*(mana/maxmana),0,10)
CGui.Text = "Energy: "..math.floor(mana).."/"..maxmana
end
formerhealth = humanoid.MaxHealth
function hchange()
if humanoid.Health ~= formerhealth and shieldon and humanoid.Health < formerhealth then
humanoid.Health = humanoid.Health+25
formerhealth = humanoid.Health
end
if shadowr then
humanoid.Jump = false
end
end
lowerBlade(true)
ready = false
humanoid.Running:connect(run)
humanoid.Jumping:connect(jump)
rl.Touched:connect(fell);ll.Touched:connect(fell);
humanoid.FreeFalling:connect(fallit)
humanoid.Changed:connect(hchange)
hb.Selected:connect(sel)
hb.Deselected:connect(deSel)
inf = 0
coroutine.resume(coroutine.create(function()
while true do
for i = 1, 10 do
if combo == formercombo then
wait(0.1)
else
break
end
end
if combo==formercombo then
combo = ""
end
formercombo = combo
wait()
end
end))
coroutine.resume(coroutine.create(function()
		while true do
		if shadowblade then
		prt = Add.part(color1,Vector3.new(1,1,1),claw2.BladeT.CFrame,claw2,"shadow",Vector3.new(0.2,1,0),"Block","Sphere",false,nil,0.2)
		prt.Anchored = false
		yoweld = weldIt(claw2.BladeT,prt,CFrame.new(0,0,0),nil)
		coroutine.resume(coroutine.create(function(part)
		for i = 0, 1,0.1 do
		prt.Mesh.Scale = Vector3.new(0.2,1+1.5*i,1.5*i)
		prt.Transparency = 0.2+0.6*i
		wait()
		end
		part.Parent = nil
		end),prt)
		end
		wait(0.5)
		end
end))
local partey = {} 
function Adde() 
local p = Instance.new("Part",claw1) 
p.Anchored = true 
p.formFactor = "Custom" 
p.Size = Vector3.new(0.8,0.8,0.8) 
p.TopSurface = 0 
p.BottomSurface = 0 
p.BrickColor = BrickColor.new(color1) 
p.CanCollide = false 
p.CFrame = t.CFrame * CFrame.new(math.random(-30,30)/10,math.random(-10,10)/10,math.random(-30,30)/10) 
coroutine.resume(coroutine.create(function(a,b,c)
for i = 1, 30 do
local perc2 = (1-math.cos(math.pi/2*b)) -- cosine going from 0 to 1 depending on percentage
b = b + 0.03 > 1 and 1 or b + 0.03 -- percentage rising until 1
a.Size = Vector3.new(0.3 + 0.6*(1-perc2),0.3 + 0.6*(1-perc2),0.3 + 0.6*(1-perc2)) -- size scaling down based on cosine percentage (1 to 0 though)
a.CFrame = c * CFrame.new(0,5*perc2,0) * CFrame.Angles(math.pi*math.random(0,200)/100,math.pi*math.random(0,200)/100,math.pi*math.random(0,200)/100) -- positioning the part to core position + 5*cosine percentage, then giving random angles
a.Transparency = perc2 -- setting transparency to fade out based on cosine percentage
if b >= 1 then 
a.Parent = nil
end 
wait()
end
end),p,0.12,p.CFrame)
end 

while true do
		if runs and not anim and ready then
			if not rlw or not llw then
			boomchakalaka = false
			inf = 0
			rh.Parent=nil;lh.Parent=nil;rlw = weldIt(t,rl, CFrame.new(0.5,-1.5,0),nil);llw = weldIt(t,ll, CFrame.new(-0.5,-1.5,0),nil);
			elseif rlw.Parent ~= t or rlw.Parent ~= t then
			inf = 0
			rh.Parent=nil;lh.Parent=nil;rlw = weldIt(t,rl, CFrame.new(0.5,-1.5,0),nil);llw = weldIt(t,ll, CFrame.new(-0.5,-1.5,0),nil);
			end
			rlw.C0 = CFrame.new(0.5,-1.7+.35*math.cos(inf/2),0-0.35*math.cos(inf/2))*CFrame.Angles(math.rad(-15),0,0)
			llw.C0 = CFrame.new(-0.5,-1.7-.35*math.cos(inf/2),0+0.35*math.cos(inf/2))*CFrame.Angles(math.rad(-15),0,0)
			if runarmsanim then
			rw.C0 = CFrame.new(1.5, 0.5, 0)*CFrame.Angles(math.rad(-40+10*math.cos(inf/5)),0,math.rad(35))--+5*math.cos(inf/2.5)
			if not shadowblade then
			lw.C0 = CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(math.rad(-40+10*math.cos(inf/5)),0,math.rad(-35))
			end
			end
			elseif not runs and not anim and ready and (t.Velocity*Vector3.new(1, 0, 1)).magnitude <= 2 and (t.Velocity*Vector3.new(0, 1, 0)).magnitude <= 2 and (t.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
			if not rlw or not llw or rlw.Parent ~= t then
			inf = 0;
			rh.Parent=nil;lh.Parent=nil;rlw = weldIt(t,rl, CFrame.new(0.5,-1.5,0),nil);llw = weldIt(t,ll, CFrame.new(-0.5,-1.5,0),nil);
			for i = 0, 1, 0.1 do
			if not runs and not anim and ready and (t.Velocity*Vector3.new(1, 0, 1)).magnitude <= 2 and (t.Velocity*Vector3.new(0, 1, 0)).magnitude <= 2 and (t.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
			rw.C0 = CFrame.new(1.5,0.5+.25*i,0)*CFrame.Angles(0,math.rad(10*i),math.rad(22*i))
			lw.C0 = CFrame.new(-1.5,0.5+.25*i,0)*CFrame.Angles(0,math.rad(-10*i),math.rad(-22*i))
			rlw.C0 = CFrame.new(0.5+.175*i,-1.5-.3*i,0)*CFrame.Angles(math.rad(0),0,math.rad(17*i))
			llw.C0 = CFrame.new(-0.5-.175*i,-1.5-.3*i,0)*CFrame.Angles(math.rad(0),0,math.rad(-17*i))
			nw.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(5*i),math.rad(20*i),0)
			hrpw.C0 = co*CFrame.Angles(0,0,math.rad(-20*i)) 
			stable(rw,lw)
			wait()
			else
			break
			end
			end
			end

			--rlw.C0 = CFrame.new(0.65,-1.75,0)*CFrame.Angles(math.rad(0),0,math.rad(15+2*math.cos(inf/11)))
			--llw.C0 = CFrame.new(-0.65,-1.75,0)*CFrame.Angles(math.rad(0),0,math.rad(-15-2*math.cos(inf/11)))
			rw.C0 = CFrame.new(1.5,0.65+0.1*math.cos(inf/14),0)*CFrame.Angles(math.rad(0),math.rad(10),math.rad(20+2*math.cos(inf/14)))
			lw.C0 = CFrame.new(-1.5,0.65+0.1*math.cos(inf/14),0)*CFrame.Angles(math.rad(0),math.rad(-10),math.rad(-20-2*math.cos(inf/14)))
			stable(rw,lw)
			nw.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(5*math.cos(inf/14)),math.rad(20),0)
		elseif anim then
		boomchakalaka = false
		end

	--lineEffect(claw1.BladeT,lastpoint1)
	--lineEffect(claw2.BladeT,lastpoint2)
	wait(.004)
	fade()
	inf = inf+1
end