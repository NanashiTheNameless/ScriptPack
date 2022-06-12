-- ARE YOU READY FOR A MIRACLE?
-- READY AS I CAN BE
-- ARE YOU READY // READY
-- [made by wulfbug9]
function rand(a)return (math.random()-.5)*2*a end
function q(f,arg)return coroutine.resume(coroutine.create(f),unpack(arg or {}))end
function Part(Name,Parent,Size,CFrame,Color,Trans,Anch,Can,Mat,Ref)
	local p = Instance.new("Part",Parent)p.Name = Name
	p.FormFactor = "Custom"p.Size = Size
	p.Anchored = Anch p.CFrame = CFrame
	p.BrickColor = BrickColor.new(Color)p.Transparency = Trans
	p.TopSurface = 0 p.CanCollide = Can
	p.BottomSurface = 0 p.Material = Mat
	p.Reflectance = Ref or 0;p:BreakJoints()
	p.Locked = true;return p
end
function Mesh(Parent,Type,Scale,ID,TID)
	local m = Instance.new("SpecialMesh",Parent)m.MeshType = Type
	m.Scale = Scale or Vector3.new(1,1,1)
	if ID then m.MeshId = ID end if TID then m.TextureId = TID end
	return m
end
function Weld(p1,p2,c0,c1)
	local w = Instance.new("Weld",p1)w.Part0 = p1;w.Part1 = p2
	w.C0,w.C1 = c0 or CFrame.new(),c1 or CFrame.new()
	return w
end
function cslerp(start,destination,increment)
	local function s(a,b,c)return (1-c)*a+(c*b)end
	local c1 = {start.X,start.Y,start.Z,start:toEulerAnglesXYZ()}
	local c2 = {destination.X,destination.Y,destination.Z,destination:toEulerAnglesXYZ()}
	for i,v in pairs(c1)do c1[i] = s(v,c2[i],increment)end
	return CFrame.new(c1[1],c1[2],c1[3])*CFrame.Angles(c1[4],c1[5],c1[6])
end
----------------------------------------------
Song = "http://www.roblox.com/asset/?id=158635170"
for i=1,4 do game:service("ContentProvider"):Preload(Song)end
step = game:service("RunService").Stepped
Figures = {}
Sound = Instance.new("Sound",script)
Sound.SoundId = Song
Sound.Looped = true
c0ls = CFrame.new(-1,.5,0)
c0rs = CFrame.new(1,.5,0)
c1ls = CFrame.new(0.5,0.5,0)
c1rs = CFrame.new(-0.5,0.5,0)
----------------------------------------------
function NewFigure(Parent,TorCF)
	local M = Instance.new("Model",Parent)
	local T = Part("",M,Vector3.new(2,2,1),TorCF,"Bright red",0,true,true,"Plastic")
	local H = Part("",M,Vector3.new(1,1,1),TorCF*CFrame.new(0,1.5,0),"Brown",0,true,true,"Plastic")
	local HM = Mesh(H,"Head",Vector3.new(1.25,1.25,1.25))
	local LA = Part("",M,Vector3.new(1,2,1),TorCF*CFrame.new(1.5,0,0),"Brown",0,false,true,"Plastic")
	local RA = Part("",M,Vector3.new(1,2,1),TorCF*CFrame.new(-1.5,0,0),"Brown",0,false,true,"Plastic")
	local LL = Part("",M,Vector3.new(1,2,1),TorCF*CFrame.new(.5,-2,0),"Bright red",0,true,true,"Plastic")
	local RL = Part("",M,Vector3.new(1,2,1),TorCF*CFrame.new(-.5,-2,0),"Bright red",0,true,true,"Plastic")
	local LAW = Weld(T,LA,c0ls,c1ls)
	local RAW = Weld(T,RA,c0rs,c1rs)
	LAW.Changed:connect(function()LAW.Part1.CFrame = LAW.Part0.CFrame*LAW.C1*LAW.C0:inverse() end)
	RAW.Changed:connect(function()RAW.Part1.CFrame = RAW.Part0.CFrame*RAW.C1*RAW.C0:inverse() end)
	table.insert(Figures,
		{M,LAW,RAW}
	)
	return M
end
----------------------------------------------
pcall(function()workspace:FindFirstChild("AreYouReadyForAMiracle    "):Destroy()end)
script.Name = "AreYouReadyForAMiracle    "
Main = Instance.new("Model",script)
Main.Name = "AreYouReadyForAMiracle    "
Set1 = Instance.new("Model",Main)
Set1.Name = "Set_One"
Set1CFrame = CFrame.new(-50,1,0)
do
	pbase = Part("",Set1,Vector3.new(25,0,50),Set1CFrame,"Dark stone grey",0,true,true,"Brick")
	proof = Part("",Set1,Vector3.new(25,0,50),Set1CFrame*CFrame.new(0,25,0),"Dark stone grey",0,true,true,"Brick")
	p1 = Part("",Set1,Vector3.new(0,25,50),Set1CFrame*CFrame.new(-12.5,12.5,0),"Dark stone grey",0,true,true,"Brick")
	p2 = Part("",Set1,Vector3.new(25,25,0),Set1CFrame*CFrame.new(0,12.5,-25),"Dark stone grey",0,true,true,"Brick")
	p3 = Part("",Set1,Vector3.new(25,25,0),Set1CFrame*CFrame.new(0,12.5,25),"Dark stone grey",0,true,true,"Brick")
	f = Part("",Set1,Vector3.new(20,0.5,40),Set1CFrame,"Brown",0,true,true,"Wood")
	local x = 0
	for i=1,9 do
		p = Part("",Set1,Vector3.new(2.5,(i%2==0 and i-2)or i,40),Set1CFrame*CFrame.new(10-x,0,0),"Brown",0,true,true,"Wood")
		if i%2==0 then 
			for z=1,20,2 do NewFigure(Set1,p.CFrame*CFrame.new(0,p.Size.y/2+3,-20+z*2)*CFrame.Angles(0,math.pi/2,0))end
		end
		x = x + 2.5
	end
	lightp1 = Part("",Set1,Vector3.new(5,2,5),proof.CFrame*CFrame.new(0,-1,-10),"Black",0,true,true,"Plastic")
	lightp1m = Instance.new("CylinderMesh",lightp1)
	lightp2 = Part("",Set1,Vector3.new(4,2,4),proof.CFrame*CFrame.new(0,-1.1,-10),"Bright yellow",0,true,true,"Plastic")
	lightp2m = Instance.new("CylinderMesh",lightp2)
	light2p1 = Part("",Set1,Vector3.new(5,2,5),proof.CFrame*CFrame.new(0,-1,10),"Black",0,true,true,"Plastic")
	light2p1m = Instance.new("CylinderMesh",light2p1)
	light2p2 = Part("",Set1,Vector3.new(4,2,4),proof.CFrame*CFrame.new(0,-1.1,10),"Bright yellow",0,true,true,"Plastic")
	light2p2m = Instance.new("CylinderMesh",light2p2)
	light1 = Instance.new("SpotLight",lightp1)
	light1.Color = BrickColor.new("Bright yellow").Color
	light1.Face = "Bottom"
	light1.Angle = 270
	light1.Brightness = 20
	light2 = light1:Clone()
	light2.Parent = light2p1
end
----------------------------------------------
count = 0
angle = 0
counttime = 25
countspeed = .75
speed = .3
SongTime = 0
SongTick = tick()
Sound:Play()
step:connect(function()
	count = (count%counttime)+countspeed
	angle = math.pi*math.sin((math.pi*2)/counttime*count)
	if (tick()-SongTick)>=1 then SongTime = SongTime + 1 SongTick = tick() end
	if SongTime == 113 then print("Restarting!") Sound:Stop()SongTime = 0 SongTick = tick() Sound:Play() end
	for i,v in pairs(Figures)do
		local la = v[2]
		local ra = v[3]
		if SongTime < 10 then
			counttime = 25
			countspeed = 1.25
			la.C0 = cslerp(la.C0,c0ls*CFrame.new(.25,0.5,0)*CFrame.Angles(math.pi,0,angle*speed*.4),speed)
			ra.C0 = cslerp(ra.C0,c0rs*CFrame.new(-.25,0.5,0)*CFrame.Angles(math.pi,0,-angle*speed*.4),speed)
		elseif SongTime >= 10 and SongTime < 23 then
			counttime = 25
			countspeed = .75
			la.C0 = cslerp(la.C0,c0ls*CFrame.Angles(math.pi/2+angle*speed*.4,0,0),speed)
			ra.C0 = cslerp(ra.C0,c0rs*CFrame.Angles(-angle*speed*.2,0,0),speed)
		elseif SongTime >= 23 and SongTime < 27 then
			counttime = 25
			countspeed = .75
			la.C0 = cslerp(la.C0,c0ls*CFrame.Angles(math.pi+angle*speed*.4,0,0),speed)
			ra.C0 = cslerp(ra.C0,c0rs*CFrame.Angles(math.pi-angle*speed*.4,0,0),speed)
		elseif SongTime >= 27 and SongTime < 40 then
			counttime = 25
			countspeed = .75
			la.C0 = cslerp(la.C0,c0ls*CFrame.Angles(-angle*speed*.2,0,0),speed)
			ra.C0 = cslerp(ra.C0,c0rs*CFrame.Angles(math.pi/2+angle*speed*.4,0,0),speed)
		elseif SongTime >= 40 and SongTime < 44 then
			counttime = 25
			countspeed = .75
			la.C0 = cslerp(la.C0,c0ls*CFrame.Angles(math.pi+angle*speed*.4,0,0),speed)
			ra.C0 = cslerp(ra.C0,c0rs*CFrame.Angles(math.pi-angle*speed*.4,0,0),speed)
		elseif SongTime >= 44 and SongTime < 62 then
			counttime = 25
			countspeed = 1.25
			la.C0 = cslerp(la.C0,c0ls*CFrame.new(.25,0.5,0)*CFrame.Angles(math.pi,0,angle*speed*.4),speed)
			ra.C0 = cslerp(ra.C0,c0rs*CFrame.new(-.25,0.5,0)*CFrame.Angles(math.pi,0,-angle*speed*.4),speed)
		elseif SongTime >= 62 and SongTime < 70 then
			counttime = 25
			countspeed = .75
			la.C0 = cslerp(la.C0,c0ls*CFrame.Angles(math.pi/2+angle*speed*.4,0,0),speed)
			ra.C0 = cslerp(ra.C0,c0rs*CFrame.Angles(-angle*speed*.2,0,0),speed)
		elseif SongTime >= 70 and SongTime < 75 then
			counttime = 25
			countspeed = .75
			la.C0 = cslerp(la.C0,c0ls*CFrame.Angles(math.pi/2+angle*speed*.4,0,0),speed)
			ra.C0 = cslerp(ra.C0,c0rs*CFrame.Angles(math.pi/2+angle*speed*.2,0,0),speed)
		elseif SongTime >= 75 and SongTime < 96 then
			counttime = 25
			countspeed = 1.25
			la.C0 = cslerp(la.C0,c0ls*CFrame.new(.25,0.5,0)*CFrame.Angles(math.pi,0,angle*speed*.4),speed)
			ra.C0 = cslerp(ra.C0,c0rs*CFrame.new(-.25,0.5,0)*CFrame.Angles(math.pi,0,-angle*speed*.4),speed)
		elseif SongTime >= 96 and SongTime < 102 then
			counttime = 25
			countspeed = 1.25
			la.C0 = cslerp(la.C0,c0ls*CFrame.new(.25,0.5,0)*CFrame.Angles(math.pi,angle*speed*.4,0),speed)
			ra.C0 = cslerp(ra.C0,c0rs*CFrame.new(-.25,0.5,0)*CFrame.Angles(math.pi,-angle*speed*.4,0),speed)
		elseif SongTime >= 102 and SongTime < 113 then
			counttime = 25
			countspeed = 1.25
			la.C0 = cslerp(la.C0,c0ls*CFrame.new(.25,0.5,0)*CFrame.Angles(math.pi,0,angle*speed*.4),speed)
			ra.C0 = cslerp(ra.C0,c0rs*CFrame.new(-.25,0.5,0)*CFrame.Angles(math.pi,0,-angle*speed*.4),speed)
		end
	end
end)