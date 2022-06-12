if script.ClassName == "LocalScript" then
Player = game:GetService("Players").LocalPlayer
else
Player = game:GetService("Players")["mugex"]
end
--Skylle--
-- Player=Workspace.Dummy
if not Player then error("No player found") end
if Player.className == "Model" then
	Char = Player
else
	Char = Player.Character
end
if not Player then error("No character found") end
Torso = Char.Torso
Debris = game:GetService("Debris")
Input = game:GetService("UserInputService")
HumRootPart = Char:FindFirstChild("HumanoidRootPart")
RootJoint = nil
if HumRootPart then
	RootJoint = HumRootPart:FindFirstChild("RootJoint")
end
m={}
m.tau=math.pi*2

PI=math.pi

_V=nil
cfn = CFrame.new
ang = function(rx,ry,rz)return CFrame.Angles(rx or 0,ry or 0,rz or 0)end
md,mr = math.rad,math.random
v3n=function(x,y,z)_V=Vector3.new(x,y,z) return Vector3.new(x,y,z) end
bcol=BrickColor.new

function l(a1,x,y,z,rx,ry,rz)
    local cf
    if tostring(a1):find(',') == nil then
        cf=a1.CFrame
    else cf=a1 end
    return cf*CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(
                        rx or 0,ry or 0,yz or 0)
end

New = {}
_1,_2,_3 = nil,nil,nil

local metatab = {__call = function(t,what)
	    return function(bar)
        local obj=Instance.new(what)
        for arg,val in pairs(bar) do
            if arg == "_P" then
                obj.Parent = val
            else
                if obj[arg] then
                    obj[arg]=val
                end
            end
        end
        return obj
    end end;
}
setmetatable(New,metatab)

pcall(function()Char.Dis:Destroy()end)
Main = Instance.new("Model",Char)
Main.Name="Dis"

Config = {}

Colors = {Main="Black";Eye="Bright red";Ink="Black";}

set_material = nil
default_mat = "Wood"
New.Part = function(size_x,size_y,size_z,color,transparency)
	local partSize = Vector3.new(size_x,size_y,size_z)
	local part = Instance.new("Part")
	part.Size = partSize
	part.Anchored = false
	part.CanCollide = false
	part.Transparency = transparency or 0
	--Quick way to change every surface of part to smooth
	for _,face in next,Enum.NormalId:GetEnumItems() do
		part[face.Name.."Surface"] = "SmoothNoOutlines"
	end
	--Figure out if color is table or string and change color.
	if type(color) == "string" then
		part.BrickColor = BrickColor.new(color)
	elseif type(color) == "table" and #color == 3  then
		part.Color = Color3.new(unpack(color))
	else
		part.BrickColor = BrickColor.new("White")
	end
	part.Parent = Main or Char
	part.Material = set_material or default_mat or "SmoothPlastic"
	_1 = part
	return part
end

New.Weld = function(part0,part1,c0,c1,...) --over-engineered weldfunction which accepts many things
	local ar = {...}
	local cframe0,cframe1
	local function checkf()local res=true
		for i,v in pairs(ar)do
			if type(v) ~= 'number' then
				res=false
			end
		end
		return res
	end
	if type(c0) == 'table' then
		cframe0 = CFrame.new(c0[1] or 0, c0[2] or 0, c0[3] or 0) * CFrame.Angles(
			c0[4] or 0, c0[5] or 0, c0[6] or 0)
	elseif type(c0) == 'userdata' then
		cframe0 = c0
	elseif type(c0) == 'number' and checkf() then
		cframe0 = CFrame.new(c0 or 0,c1 or 0,ar[1] or 0) * CFrame.Angles(ar[2] or 0, ar[3] or 0, ar[4] or 0)
	end
	if type(c1) == 'table' then
		cframe1 = CFrame.new(c1[1] or 0, c1[2] or 0, c1[3] or 0) * CFrame.Angles(
			c1[4] or 0, c1[5] or 0, c1[6] or 0)
	elseif type(c1) == 'userdata' then
		cframe1 = c1
	elseif type(c1) == 'number' and (not c0 or (c0 and type(c0) == 'table')) then
		cframe1 = CFrame.new(c1 or 0, ar[1] or 0, ar[2] or 0) * CFrame.Angles(ar[3] or 0, ar[4] or 0, ar[5] or 0)
	end
	for i,v in pairs(ar)do
		if type(v) == 'table' then
			cframe1 = CFrame.new(v[1] or 0, v[2] or 0, v[3] or 0) * CFrame.new(v[4] or 0, v[5] or 0, v[6] or 0)
		elseif type(v) == 'userdata' then
			cframe1 = v
		end
	end
			
	cframe0,cframe1 = cframe1,cframe0
	
	local weld = Instance.new("Motor")
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = cframe0 or CFrame.new()
	weld.C1 = cframe1 or CFrame.new()
	weld.Parent = part0
	return weld
end

local bl = New.Part(1,1,1,'White')bl.Material="Neon"
New.Weld(bl,Torso)
local bl_msh = New"SpecialMesh"{_P=bl; MeshType = 3}
for i=0,1,.1 do --Morphing anim
	bl_msh.Scale = Vector3.new(10,10,10)*i
	bl.Transparency=1-i
	wait()
end

cp = New.Part(1,1,1)
cw = New.Weld(cp,Torso,0,0,0)
hp = New.Part(.1,.1,.1,'',1)
hw = New.Weld(hp,cp)
p = New.Part(2,1,.1)
New.Weld(p,hp,0,.5,-.55)
pp = New.Part(2,.25,.1)
jaw = New.Weld(pp,hp,0,-.5-.125-.25,-.55)

p2 = New.Part(.25,.75,.1)
p2w1 = New.Weld(p2,pp,{1-.125,_1.Size.y/2+.125,0})
p22 = New.Part(.25,.75,.1)
p2w2 = New.Weld(p22,pp,{-(1-.125),_1.Size.y/2+.125,0})

-- p2 = New.Part(.25,.75,.1)
-- New.Weld(p2,pp,{-(1-.125),p.Size.y/2+p2.Size.y/2,0})

p3Size = 1-.25
p3 = New.Part(2-.5,p3Size,.1,'Black')
mouth=p3
p3.Material = "SmoothPlastic"

function isIn(what,tab)
	local res=false
	for i,v in next,tab do
		if v==what then
			res = true
			break
		end
	end
	return res
end

sndids = {
	gore_snd = 245185986;
	gore_snd2 = 429400881;
	eat_metal = 155427306;
	crunch = 181027147;
	scream = 130801781;
	eat_ice = 260433522;
	eat_glass = 138122923;
}
setmetatable(sndids,{__call = function(t,i) return 'rbxassetid://'..t[i]end})

eat_snd = New"Sound"{_P=Main; SoundId = sndids'gore_snd'}
eat_snd_metal = New"Sound"{_P=Main; SoundId = sndids'eat_metal'}
eat_snd_crunch = New"Sound"{_P=Main; SoundId = sndids'crunch'}
eat_snd_scream = New"Sound"{_P=Main; SoundId = sndids'scream'}
eat_snd_ice = New"Sound"{_P=Main; SoundId=sndids'eat_ice'}
eat_snd_ice2 = New"Sound"{_P=Main;SoundId=sndids'eat_glass'}

prevt=tick()

local con=p3.Touched:connect(function(hit)
	if hit.Parent and not hit:IsDescendantOf(Char) and hit.Name~='Base' then
		local hum = hit.Parent:FindFirstChild"Humanoid"
		
		eat_snd_crunch:Play()
		
		if isIn(hit.Material.Name,{"Diamond plate", "Corroded Metal", 
			"Metal", "Foil"}) then
			eat_snd_metal:Play()
		elseif hit.Material.Name=="Ice" then
			eat_snd_ice:Play()
		else
			if hum and not isIn(hit.Name,{'Head','Torso'}) then
				eat_snd:Play()
				local snd=eat_snd_scream:Clone()
				snd.Parent=hit
				snd.Pitch = 1.15+(math.random(-1,1)*(math.random()*.1))
				snd.PlayOnRemove=true
				-- eat_snd_scream:Play()
			end
		end
		
		for i=1,3 do
			local pp=New.Part(.1,.1,.1,'Cyan',.5)pp.Anchored=true
			x,y,z = hit.Size.x/2,hit.Size.y/2,hit.Size.z/2
			pp.CFrame=hit.CFrame*CFrame.new(math.random(-x,x),math.random(-y,y),math.random(-z,z))
			Spawn(function()
				for i=0,1,.1 do
					pp.Transparency=i wait() end
				pp:Destroy()end)
		end
		
		if hit.className=='Terrain'then
			Workspace.Terrain:FillBlock(mouth.CFrame,Vector3.new(10,8,10),Enum.Material.Air)
		else
			hit:Destroy()
		end
		
	end
end)
-- con:disconnect()

Instance.new("BlockMesh",p3).Scale=Vector3.new(1,1,.5)
p3w = New.Weld(p3,p,0,-p.Size.y/2-p3.Size.y/2,.05)

size = p3.Size.x/5
set_material = "Marble"
for i=-p3.Size.x/2+size/2,p3.Size.x/2,size do
	New.Part(size,p3.Size.y/2,0,'New Yeller')
	Instance.new("BlockMesh",_1).Scale=Vector3.new(.5,1,1)
	New.Weld(_1,p,{0,-p.Size.y/2-p3.Size.y/2/2,-.05},{i})

	New.Part(size,p3.Size.y/2,0,'New Yeller')
	Instance.new("BlockMesh",_1).Scale=Vector3.new(.5,1,1)
	New.Weld(_1,pp,{-size/2,_1.Size.y/2+pp.Size.y/2,-.05},{i})
end _1:Destroy()
set_material = "Neon"

eye = New.Part(.5,.25,.1,'New Yeller')
New.Weld(eye,p,.5,.125,-.1)
eye = New.Part(.5,.25,.1,'New Yeller')
New.Weld(eye,p,-.5,.125,-.1)
set_material = nil

st_size = p2.Size
st_size2 = p3.Size
-- st_cf =p2w1.C1
function loop(i)
	p2.Size = st_size + Vector3.new(0,i*p3Size/2,0)
	p22.Size = p2.Size
	p3.Size = st_size2 + Vector3.new(0,i*p3Size/2,0)

	
	p2w1.Part0,p2w2.Part0 = p2,p22
	p2w1.Part1,p2w2.Part1 = pp,pp
	p3w.Parent,p3w.Part0 = p3,p3
	
	p2w1.Parent = p2
	p2w2.Parent = p22
	
	p2w1.C1 = CFrame.new(1-.125,p2.Size.y/2+.125,0)
	p2w2.C1 = CFrame.new(-(1-.125),p2.Size.y/2+.125,0)
	jaw.C0 = CFrame.new(0,i*p3Size/2,0)
	p3w.C1 = CFrame.new(0,-p.Size.y/2-p3.Size.y/2,.05)
end

wing = New.Part(1.25,1.25,2)
New.Weld(wing,cp,0,0,1.25/2)

emitp = New.Part(.5,.5,.5)emitp.Transparency=1
New.Weld(emitp,wing,0,0,1,math.pi/2)

wlds = {}
wlds2 = {}
---TENTACLES BUILD---
for i=0,10 do
	local t={}
	table.insert(wlds,t)
end
local cnt=0
for i = 0,math.pi*2,math.pi*2/10 do cnt=cnt+1
	local pp=New.Part(.25,.1,.1)
	New.Weld(_1,wing,{0,0,1,0,0,i},{.75})
	prev = pp
	local tt={}
	for o = 1,10 do
		local pp2=New.Part(.1,.1,.1)
		w=New.Weld(_1,prev,{-.05,0,0,-math.pi/2},{prev.Size.x/2,0,0,-math.pi/2})
		w.MaxVelocity=.025
		-- w.DesiredAngle=math.rad(15)
		prev = pp2
		table.insert(tt,w)
		table.insert(wlds[cnt],w)
	end
	table.insert(wlds2,tt)
end
for i,v in pairs(wlds[#wlds]) do v:Destroy() end
---//---


numkp = NumberSequenceKeypoint.new
emitter = New"ParticleEmitter"{_P = emitp;
	Size = NumberSequence.new{numkp(0,.8);numkp(.05,1.25);numkp(1,.45)};
	Lifetime = NumberRange.new(.5,.75);
	Acceleration = Vector3.new(0,.5,0);
	Transparency = NumberSequence.new{numkp(0,.25);numkp(.5,.75);numkp(1,1)};
	VelocitySpread = 45;
	EmissionDirection = Enum.NormalId.Top;
	LightEmission=.1;
	LockedToPart = true;
	Speed=NumberRange.new(5,6);
	-- VelocityInheritance = .15;
	-- Speed = NumberRange.new(2,2.5);
	Rotation = NumberRange.new(-45,45);
	RotSpeed = NumberRange.new(10,50);
	Texture = "rbxassetid://31884718";
	Rate = 30;
}

-- emitter.Enabled = false

for i = 0,1,.1 do
	loop(i)
	wait()
end

for i,v in next,Char:children() do
	if v:IsA'Part'then
		v.Transparency=1
	elseif v:IsA'Hat' and v:FindFirstChild"Handle" ~= nil then
		v.Handle.Transparency=1
	end
end
if Char.Head:FindFirstChild'face' then Char.Head.face.Transparency=1 end

Spawn(function() --Morphing Anim
for i=1,0,-.1 do
bl_msh.Scale = Vector3.new(10,10,10)*i
bl.Transparency = i wait()
end bl:Destroy() end)

bbg = New"BillboardGui"{_P=Main;Adornee=Char.Head;ExtentsOffset=Vector3.new(0,10,0)}
fr = New"Frame"{_P=bbg;Size=UDim2.new(1,0,1,0);BackgroundTransparency=.5;}
tb = New"TextLabel"{_P=fr;Size=UDim2.new(1,0,1,0);Text="Monsrar";TextScaled=true}

Cur_Pose = ""

joints={}
joints.torso = setmetatable({w=cw, _desired = CFrame.new(0,0,0), n_c0 = CFrame.new(0,0,0)},{
	__newindex = function(t,i,v) if i == "desired" then t._desired = t.n_c0 * v end end
})
joints.head = setmetatable({w=hw, _desired = CFrame.new(0,0,0), n_c0 = CFrame.new(0,0,0)},{
	__newindex = function(t,i,v) if i == "desired" then t._desired = t.n_c0 * v end end
})

Anim = "Idle"
angle=0
pulsate_speed = .2

change_tentacle_speed = function(A)
	for _,v in pairs(wlds)do
		for _,q in pairs(v) do
			q.MaxVelocity = A
		end
	end
end
normal_loop = true
Spawn(function() --ANIMLOOP
	while true do
		game:service("RunService").Heartbeat:wait()
		walk_mag=Vector3.new(HumRootPart.Velocity.X,0,HumRootPart.Velocity.Z).magnitude
		angle = (angle%100)+3/10
		
		if walk_mag > 2 then
			Anim = "Walking"
		else
			Anim = "Idle"
		end
		
		if Anim == "Idle" then
			joints.torso.desired = CFrame.new(0,0,2+math.sin(angle)*.5)*CFrame.Angles(-math.pi/2,0,0)
			pulsate_speed = .1
			change_tentacle_speed(.025*.45)
			joints.head.desired = CFrame.new(0,-.65,.175)*CFrame.Angles(math.rad(75),math.sin(angle)*.15,0)
			
		elseif Anim == "Walking" then
			joints.torso.desired = CFrame.new(0,.25-math.sin(angle)*.65,0)*CFrame.Angles(math.cos(angle)*.25,0,0)
			pulsate_speed = .2
			change_tentacle_speed(.025)		
			joints.head.desired = CFrame.new(0,-.65+math.sin(angle)*.25,0)*CFrame.Angles(math.rad(-5),0,0)
		-- elseif Anim == "Jump" then
		end

		for i,v in pairs(joints) do --UPDATE EM!
			v.w.C0 = v.w.C0:lerp(v._desired,v.spd or .1)
		end
	end
end)

swords = {}
doing=false

shotgun_snd = New"Sound"{_P=Main;SoundId='rbxassetid://185044507';Pitch=2}
function portal(mouse)
	doing=true
	offset=CFrame.new(0,.26,-2.6) --Shotguin's offset
	Spawn(function() --CFRameing loop
		while doing do
			for _,v in next,swords do
				if type(v.d) == "function" then
					v.p.CFrame = v.p.CFrame:lerp(v.d()*(v.o or cfn()),.25)
				else
					v.p.CFrame = v.p.CFrame:lerp(v.d*(v.o or cfn()),.25)
				end
			end
			wait()
		end
	end)
	for i=PI/5,m.tau-PI/5,PI/5 do --Creation
		local sword ={}
		sword.p = New.Part(1,1,1)_1.Anchored=true
		sword.p.CFrame=l(Torso,0,0,-4)
		sword.s =shotgun_snd:Clone()
		sword.s.Parent=sword.p
		sword.i = i
		local msh=New"SpecialMesh"{_P=_1;MeshId="http://www.roblox.com/asset/?id=3835506"}
		sword.d = function()
			local cf=l(Torso,-math.cos(i)*7,0,-math.sin(i)*7)
			return cfn(l(Torso,-math.cos(i)*4,0,-math.sin(i)*4).p,cf.p)
		end
		
		table.insert(swords,sword)
	end wait(.15)
	
	for i,v in pairs(swords) do ---second pose
		local old=v.d()
		v.d=function()return
		cfn(l(Torso,-math.cos(i*PI/10)*2,4,-math.sin(i*PI/10)*2).p,mouse.hit.p) end
	end wait'.25'
	
	for i,v in pairs(swords)do --second shootings
		local offsetted=(v.d()*offset)
		local obj,pos = Workspace:FindPartOnRay(
		Ray.new(offsetted.p,cfn(offsetted.p,mouse.hit.p).lookVector*50),
		char)
		Spawn(function()v.o=ang(md'25')wait(.1)v.o=nil end) --Nudege weapon
		if obj and pos then
			local hum=obj.Parent:FindFirstChild'Humanoid'
			if hum then hum:TakeDamage(30) end
			local mag = (offsetted.p-pos).magnitude
			local pp=New.Part(.1,.1,mag,'Black')pp.Anchored=true
			local msh = New"SpecialMesh"{_P=pp;MeshType=Enum.MeshType.Brick}
			pp.CFrame=cfn(offsetted.p,pos)*cfn(0,0,-mag/2)
			Spawn(function() --fadeout
				for i=0,1,.1 do
					pp.Transparency=i
					msh.Scale = Vector3.new(1-i,1-i,1)
					wait()
				end
				pp:Destroy()
			end)
		end
		v.s:Play()
		wait()
	end
	
	wait'.5'
	---FADE OUT----
	for i=0,1,.1 do
		for _,v in pairs(swords)do
			v.p.Transparency=i
		end
		wait()
	end
	for _,v in pairs(swords) do
		v.p:Destroy()
	end
	-------------
	swords={}
	doing=false
end


function tele(mouse)
	local grenade = New.Part(1.5,1.5,1.5,'Earth green')--grenade.Anchored=true
	grenade.Material='Plastic'grenade.CanCollide=true
	grenade.Shape=0
	New"SpecialMesh"{_P=grenade;MeshId = 'http://www.roblox.com/asset/?id=166887416';
	Scale = Vector3.new(2,2,2)}
	local orig=Torso.CFrame
	Torso.CFrame=cfn(orig.p,Vector3.new(mouse.hit.X,orig.Y,mouse.hit.Z))*cfn(0,0,-10)
	grenade.CFrame=orig
	local origCol=grenade.Color
	
	local bleep = New"Sound"{_P=grenade;SoundId='rbxassetid://138081500'}
	local boom = New"Sound"{_P=grenade;SoundId='rbxassetid://138210320';Pitch=.95;
	PlayOnRemove=true}
	local g=New"BillboardGui"{_P=grenade;Adornee=grenade;Size=UDim2.new(0,1,0,1);
		StudsOffset=Vector3.new(0,2,0)}
	local f=New"TextLabel"{_P=g;Size=UDim2.new(1,0,1,0);TextScaled=true;Text='3';
	FontSize=10;}
	for i=5,0,-1 do	
		f.Text=i
		bleep:Play()
		wait(.25)
	end
	e=New"Explosion"{_P=Workspace;Position=l(grenade).p}
	boom:Play()
	grenade:Destroy()
end

function test()
	local p=New.Part(2,2,2)p.Anchored=true
	p.CFrame=l(Torso,0,0,-10)
	New"SpecialMesh"{_P=p;MeshType=3}
	local p2=New.Part(2,2,2,'Black',.25)p2.Anchored=true
	p2.CFrame = l(p)
	New"SpecialMesh"{_P=p2;MeshType=3;Scale=v3n(-1.05,-1.05,-1.05)}
end

function tabs()
	list={}
	doing=true
	cencf = l(Torso,0,2,-5)
	local Sword = Instance.new("Model",Main)Sword.Name="Hammer"
	local new=function(size,pos,col)
		local obj={}
		obj.p=New.Part(1,1,1,col or "White")
		obj.p.Material="Plastic"
		obj.p.Anchored=true
		obj.p.Parent=Sword
		obj.c=pos
		obj.s=size or Vector3.new(1,1,1)
		table.insert(list,obj)
		return obj
	end
	r,r2=2,6
	hdl=new(v3n(1,7,1),cfn(0,0,0))
	New"CylinderMesh"{_P=hdl.p}
	hdl.p.Name='C' cen=hdl
	
	
	midp=new(v3n(1.25,.5,1.25),l(hdl.c,0,3.5+.05),'New Yeller')
	New"CylinderMesh"{_P=midp.p}
	midp=new(v3n(1.25,.5,1.25),l(hdl.c,0,-3.5-.05),'New Yeller')
	New"CylinderMesh"{_P=midp.p}
	tip=new(v3n(3,5,3),l(hdl.c,0,3.5+1.5,0,PI/2))
	
	star=new(v3n(1,1,1),l(tip.c,-1.5)*ang(md'45',PI/2,PI/2),'New Yeller')
	New"SpecialMesh"{_P=star.p;MeshId='http://www.roblox.com/asset/?id=120647846';
	Scale = v3n(2,2,1)}
	star=new(v3n(1,1,1),l(tip.c,1.5)*ang(md'-45',PI/2,PI/2),'New Yeller')
	New"SpecialMesh"{_P=star.p;MeshId='http://www.roblox.com/asset/?id=120647846';
	Scale = v3n(2,2,1)}
	
	rim=new(v3n(3,.25,3),l(tip.c,0,2.5-.12),'Black')
	New"SpecialMesh"{_P=rim.p;MeshType=Enum.MeshType.Brick;Scale=v3n(1.1,1,1.1)}
	rim=new(v3n(3,.25,3),l(tip.c,0,-2.5+.12),'Black')
	New"SpecialMesh"{_P=rim.p;MeshType=Enum.MeshType.Brick;Scale=v3n(1.1,1,1.1)}
	
	for r=.5,1.25,.25 do
	for i=r,m.tau+r,m.tau/8 do
		local pp=new(v3n(.1,.1,.1),l(tip.c,math.cos(i)*r,2.5,math.sin(i)*r),'New Yeller')
		pp.c=cfn(pp.c.p,l(tip.c,0,2.5,0).p)
		local pp=new(_V,l(tip.c,math.cos(i)*r,-2.5,math.sin(i)*r),'New Yeller')
		pp.c=cfn(pp.c.p,l(tip.c,0,-2.5,0).p)
	end
	end

	for _,v in next,list do
		fnd=v.p:FindFirstChild'Mesh'
		if fnd and fnd.className=="SpecialMesh"  and fnd.MeshId~='' then
			v.m=fnd
			v.ms=fnd.Scale
		end
	end
	
	for i=0,1,.1 do
		for _,v in next,list do
			v.p.Size=v.s*i
			v.c2 = cfn((v.c.p)*i)*(v.c-v.c.p)
			v.p.CFrame=cencf*v.c2*(v.cc or cfn())
			if v.m then 
				v.m.Scale = v.ms*i
			end
		end
		wait()
	end
	cen.p.CanCollide=true
	cen.p.Anchored=false
	for _,v in pairs(list)do
		if v.p.Name~='C' then
			v.p.Anchored=false
			v.p.CanCollide=true
			w= Instance.new("Motor")
			w.Part0 = v.p
			w.Part1 = cen.p
			w.C0 = cfn()
			w.C1 = cen.p.CFrame:toObjectSpace(v.p.CFrame)
			w.Parent = v.p
		end
	end
	hdl=hdl.p
end

function throw(mouse)
	nearest=nil
	near_mag=100
	for i,v in next,Main:children() do
		if v.Name=='Hammer'then 
			local mp=v:FindFirstChild'C'
			if mp then
				local mag = (mp.Position-Torso.Position).magnitude
				if mag < near_mag then
					nearest = mp
					near_mag = mag
				end
			end
		end
	end
	local bp=New"BodyPosition"{_P=nearest;position=l(Torso,0,5).p;
		MaxForce=v3n(1,1,1)*9e+006};
	local bg=New"BodyGyro"{_P=nearest;cframe=cfn();MaxTorque = v3n(1,1,1)*9e+005;
	P=9e+004;}
	holding=true
	local con
	con = Input.InputEnded:connect(function(input)
		if input.KeyCode == Enum.KeyCode.R then
			holding=false
			con:disconnect()
		end
	end)
	local con2
	while holding do
		local mag=(Torso.Position-mouse.hit.p).magnitude
		mag = (mag>12 and 12 or mag)
		local vec=v3n(mouse.hit.X,bp.position.y,mouse.hit.Z)
		bp.position=l(Torso,0,5).p + (l(Torso,0,5).p-mouse.hit.p).unit*-mag
		if not busy then
		bg.cframe=cfn(bp.position,mouse.hit.p+v3n(0,bp.position.y,0))
		end
		wait()
	end
	bp:Destroy()bg:Destroy()
	if not nearest then return end
	local hdl=nearest
	hdl.Anchored=true
	local stcf=hdl.CFrame
	for i=0,1,.1 do
		hdl.CFrame=stcf:lerp(l(stcf,0,0,0,md'45'),i)
		wait()
	end
	stcf=hdl.CFrame
	local encf=mouse.hit
	local c1 = cfn(stcf.p,encf.p)*ang(-PI/2)
	local a1 = c1-c1.p
	for i=0,1,.1 do
		hdl.CFrame=stcf:lerp(cfn(encf.p+v3n(0,3.25,0))*a1,i)
		wait()
	end
	-- local gr,gr_p=Workspace:FindPartOnRay(Ray.new(l(hdl).p,v3n(0,-300,0)),Char)
	-- if gr and gr_p then
		-- hdl.CFrame=cfn(gr_p+v3n(0,nearest.Parent:GetExtentsSize()/2,0))
	-- end
	hdl.Anchored=false
	
end

Keybindings = {
	f=portal;
	q=tele;
	e=tabs;
	r=throw;
}

local mouse = Player:GetMouse()

attacking=false
mouse.KeyDown:connect(function(key)
	if attacking then return end
	attacking=true
	for i,v in pairs(Keybindings) do
		if key == i then
			v(mouse)
		end
	end
	attacking=false
end)


while true do ---Tentacles and mouth
	if normal_loop then
		for _,v in pairs(wlds) do --tentacles intrude
			for o=1,3 do
			v[o].DesiredAngle = math.rad(90/3)
			end
			for o=4,#wlds-1 do
				-- print(v[o])
				v[o].DesiredAngle = math.rad(90/(#wlds-5))
			end
		end

		for i = 1,-.5,-pulsate_speed do --jaw open
			loop(i)
			wait()
		end
		
		for _,v in pairs(wlds) do --tentacles extrude
			for o=1,4 do
			v[o].DesiredAngle = math.rad(170/4)
			end
			for o=4,#wlds-1 do
				-- print(v[o])
				v[o].DesiredAngle = math.rad(-45/(#wlds-5))
			end
		end

		for i,v in next,Workspace:GetChildren() do --force push
			local h = v:FindFirstChild'Humanoid'
			if h and h.Parent ~= Char and h.Torso and (h.Torso.Position-emitp.Position).magnitude < 5 then
				Spawn(function()
					h.PlatformStand = true wait() h.PlatformStand = false
				end)
				h.Torso.Velocity = Torso.Velocity * -3
			end
		end

		for i = -.5,1,pulsate_speed do --jaw close
			loop(i)
			wait()
		end
	end
end
--Fuck you Chameleon