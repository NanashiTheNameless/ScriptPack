--GOD--

Player = game.Players.LocalPlayer
Char = Player.Character
Torso = Char.Torso
Head = Char.Head
Arms = {Char:FindFirstChild'Right Arm', Char:FindFirstChild'Left Arm'}
Shoulders = {Torso:FindFirstChild'Right Shoulder', Torso:FindFirstChild'Left Shoulder'}
Legs = {Char:FindFirstChild'Right Leg', Char:FindFirstChild'Left Leg'}
HumRoot = Char:FindFirstChild'HumanoidRootPart'
HumRootJ = HumRoot['RootJoint']
Humanoid = Char:FindFirstChild'Humanoid'
Mouse = Player:GetMouse()

local s = Workspace:FindFirstChild('god_script: '..Player.Name,true)
if s then
	local f = s:FindFirstChild'stop'
	if f then
		f:Invoke()
	end
end
s=nil

Debris = game:service'Debris'
RS = game:service'RunService'
Chatserv = game:service'Chat'
Insertserv = game:service'InsertService'

Neck = Torso:FindFirstChild'Neck'

pcall(function() Char.Shirobako:Destroy() end)
Main = Instance.new("Model",Char)
Main.Name = "Shirobako"
script.Parent=Main

cfn=CFrame.new
ang = function(x,y,z) return CFrame.Angles(x or 0,y or 0,z or 0)end
m={tau=math.pi*2;float=196.25}
v3n=Vector3.new
md,mr,PI=math.rad, math.random, math.pi
bcol=BrickColor.new
numkp=NumberSequenceKeypoint.new
colkp=ColorSequenceKeypoint.new

function l(a1,x,y,z,rx,ry,rz)
    local cf
    if tostring(a1):find(',') == nil then
        cf=a1.CFrame
    else cf=a1 end
    return cf*CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(
                        rx or 0,ry or 0,yz or 0)
end

New = function(what)
    return function(bar)
        local obj=Instance.new(what)
        for arg,val in pairs(bar) do
            if arg == "_P" then
                obj.Parent = val
            elseif arg=="_PP" then
				obj.Part0=val[1]
				obj.Part1=val[2]
			else
				if pcall(function()return obj[arg] end) then
                    obj[arg]=val
                end
            end
        end
        return obj
    end
end

Edit = function(what)
	return function(args)
		for ind,obj in next,what do
			for arg,val in next,args do				
				local child,argu = arg:match"(.+)%.(.+)"
				if child and argu then
					if pcall(function()return obj[child][argu] end) then
						-- print'a'
						obj[child][argu]=val
					end					
				else		
					if arg=='_F'then
						val(ind,obj)
					elseif pcall(function()return obj[arg]end) then
						obj[arg]=val
					end
				end
			end
		end
	end
end

_1,_2,_3=nil,nil
set_material = nil
set_color = nil
set_parent = nil
set_anchor = nil
Part = function(x,y,z,col,tr)
	local p = New"Part"{
		_P=set_parent or Main;
		BrickColor = bcol(col or set_color or "White");
		CanCollide = false;
		Transparency = tr or 0;
		Size = Vector3.new(x or 0,y or 0,z or 0);
		Material = set_material or 'SmoothPlastic';
		Anchored = (set_anchor~=nil and set_anchor or false)
	}
	for _,sur in next,Enum.NormalId:GetEnumItems() do
		p[sur.Name..'Surface'] = 10
	end
	_1 = p
	return p
end
Wedge = function(x,y,z,col,tr)
	local p = New"WedgePart"{
		_P=Main;
		BrickColor = bcol(col or "White");
		CanCollide = false;
		Transparency = tr or 0;
		Size = Vector3.new(x or 0,y or 0,z or 0);
		Material = set_material or 'SmoothPlastic';
		Anchored = (set_anchor~=nil and set_anchor or false)
	}
	for _,sur in next,Enum.NormalId:GetEnumItems() do
		p[sur.Name..'Surface'] = 0
	end
	_1 = p
	return p
end
Weld = function(part0,part1,c0,c1,...) --over-engineered welding function which accepts many things
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
	part0.Position=part1.Position
	local weld = Instance.new("Motor")
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = cframe0 or CFrame.new()
	weld.C1 = cframe1 or CFrame.new()
	weld.MaxVelocity = .1
	weld.Parent = part0
	_2=weld
	return weld
end

mesh_ids = {
	spike = "rbxassetid://1033714";
	ring = "rbxassetid://3270017";
	coil = 'rbxassetid://16606212';
	diamond = 'rbxassetid://9756362';
	rock = 'rbxassetid://1290033';
}
mesh_texs = {
	rock = 'rbxassetid://1290030';
}

Mesh = function(parent,id,sx,sy,sz)
	local name = ( (id == 'cyl' and 'CylinderMesh') or (id == 'bl' and 'BlockMesh') or 'SpecialMesh')
	local mesh = Instance.new(name)
	if id == 's' then
		mesh.MeshType = Enum.MeshType.Sphere
	elseif id == 'w' then
		mesh.MeshType = Enum.MeshType.Wedge
	elseif string.find(id,"://") ~= nil then
		mesh.MeshId = id
	end
	mesh.Scale = Vector3.new(sx or 1, sy or 1, sz or 1)
	mesh.Parent = parent
	_3=mesh
	return mesh
end

cane = Part(.1,4,.1,'Deep blue')Mesh(_1,'cyl')
hw=Weld(cane,Arms[1],0,-1.15,0,-PI/2)

bl = Part(.4,.4,.1)Mesh(_1,'s')
Weld(bl,cane,0,2.25)
bl2 = Part(.3,.3,.1,'Deep orange')Mesh(_1,'s',1,1,1.25)
Weld(bl2,bl)_1.Material='Neon'
set_color='Black'
for i=0,1,1/4 do
	ring = Part(.1,.1,.1)Mesh(_1,mesh_ids.ring,.25-i*(.25*.9),.25-i*(.25*.9),.1)
	Weld(ring,cane,0,-2-i*.25,0,PI/2)
end
set_color='Bright orange'
for a=-PI/2,PI/2,PI/6 do
	arm = Part(.1,.5,.1)Mesh(_1,'bl',.5,1,.5)
	New'Weld'{_P=arm;_PP={arm,bl};
		C1=cfn(0,0,0)*ang(0,0,a);
		C0=cfn(0,-arm.Size.y,0);
	}
	dec = Part(.1,.1,.1,'Bright red')Mesh(_1,'bl',.525,1,.525)_1.Material='Neon'
	Weld(dec,arm,0,.25*.8)
end

arm=Part(.1,.9,.1)Mesh(_1,'bl',.5,1,.5)
New'Weld'{_P=arm;_PP={arm,bl};
	C1=cfn(.1,-.15,0)*ang(0,0,md'25');
	C0=cfn(0,arm.Size.y/2,0);
}

dec = Part(.1,.1,.1,'Bright red')Mesh(_1,'bl',.525,1,.525)_1.Material='Neon'
Weld(dec,arm,0,-.45*.8)
arm=Part(.1,.9,.1)Mesh(_1,'bl',.5,1,.5)

New'Weld'{_P=arm;_PP={arm,bl};
	C1=cfn(-.1,-.15,0)*ang(0,0,md'-25');
	C0=cfn(0,arm.Size.y/2,0);
}
dec = Part(.1,.1,.1,'Bright red')Mesh(_1,'bl',.525,1,.525)_1.Material='Neon'
Weld(dec,arm,0,-.45*.8)

set_color=nil
coil=Part(.1,.1,.1,'New Yeller')Mesh(_1,mesh_ids.coil,.11,.11,1.15)
Weld(coil,cane,0,0,0,PI/2,0,md'15')

disk=Part(.1,.1,.1,'New Yeller')Mesh(_1,'cyl',1.1,1,1.1)
Weld(disk,cane,0,-2+.085)
disk=Part(.1,.1,.1,'New Yeller')Mesh(_1,'cyl',1.1,1,1.1)
Weld(disk,cane,0,2-.085)

rainbow={}
for i=0,1,.1 do
	local p=60/360
	local col=Color3.fromHSV(p+((p*.25)*i),1,1)
	local kp=colkp(i,col)
	table.insert(rainbow,kp)
end
sizes={}
b=false
for i=0,1,1/4 do
	b=not b
	local s=.1+(i/2)
	local s2=s/5
	local kp=numkp(i,(b and s or s2))
	table.insert(sizes,kp)
end
emitter=New"ParticleEmitter"{_P=coil;
	Texture='rbxassetid://98824648';
	Color=ColorSequence.new(rainbow);
	Size=NumberSequence.new(sizes);
	VelocitySpread=180;
	Lifetime=NumberRange.new(3);
	Transparency=NumberSequence.new{numkp(0,1);numkp(.5,.5);numkp(1,1)};
	Speed=NumberRange.new(.25,.75);
	Rotation=NumberRange.new(0,75);
	LockedToPart=true;
	Rate=3;
}

Joints={}

function addJoint(name,weld,c0,c1)
	local t= {}
	t.w=weld
	t.n_c0 = c0 or weld.C0
	t.n_c1 = c1 or weld.C1
	t._desired=weld.C0
	t.spd=.1
	t.l=0
	
	function t:get()
		return setmetatable({},{__newindex=function(t,i,v)
		if i=='d' and self.l == 0 then
			self.d = v
		elseif i == 's' then self.spd=v end end})
	end

	setmetatable(t,{__newindex=function(ta,i,v)
	if i=='d' then
		ta._desired = ta.n_c0 * v
	end end})
	
	Joints[name]=t
	getfenv(0)[name]=Joints[name]
end

--Create Joints--
addJoint('rw',New"Weld"{_P = Torso;Part0=Torso;Part1=Arms[1];
	C0=cfn(1,0.5,0); C1=cfn(-.5,0.5,0)})
addJoint('lw',New"Weld"{_P = Torso;Part0=Torso;Part1=Arms[2];
	C0=cfn(-1,0.5,0); C1=cfn(.5,0.5,0)})
addJoint('rw2',New"Weld"{_P=Torso;_PP={Torso,Legs[1]};
	C0=cfn(1,-1,0);C1=cfn(0.5,1,0)})
addJoint('lw2',New"Weld"{_P=Torso;_PP={Torso,Legs[2]};
	C0=cfn(-1,-1,0);C1=cfn(-0.5,1,0)})
	
addJoint('tw',HumRootJ,cfn(0,0,0,-1,0,0,0,0,1,0,1,-0),
	cfn(0,0,0,-1,-0,-0,0,0,1,0,1,0))
	
addJoint('nw',Neck,cfn(0,1,0,-1,-0,-0,0,0,1,0,1,0),
	cfn(0,-.5,0,-1,-0,-0,0,0,1,0,1,0))
addJoint('hw',hw)

Connections = {}

anim_con = RS.Stepped:connect(function()
	for _,j in next,Joints do
		j.w.C0 = j.w.C0:lerp(j._desired,j.spd)
	end
end)

local pt=tick()
local pm=0
local ppos=Torso.Position
function shadow_effect()
	local ssss={}
	if (tick()-pt)>.075 then
		-- for _,hum in next,findHum(Torso.Position,10)do
			-- hum.Parent:BreakJoints()
		-- end
		Char.archivable=true
		local cl=Char:Clone()cl.Parent=Main
		Char.archivable=false
		for _,obj in next,cl:children() do
			if not obj:IsA'Part' then obj:Destroy()
			elseif obj:IsA'Part'then
				Edit{obj}{Transparency=.5;Reflectance=.1;Anchored=true;CanCollide=false;
				Material='Neon';BrickColro=bcol'New Yeller'}
				local ttt={obj,obj.CFrame}
				table.insert(ssss,ttt)
			end
		end
		
		Spawn(function()
		for i=0,1,.1 do
			for _,v in next,ssss do
				v[1].Transparency=.5+i/2
				v[1].Size=v[1].Size*1.025
				v[1].CFrame=v[2]
				v[1].BrickColor=bcol'New Yeller'
			end
			wait()
		end
		cl:Destroy()end)
		pt=tick()
	end
end
dash=false

function findHum(pos,rad,hum2)
    local hums={}
    function check(a)
        local res=false
        for i,ho in pairs(hums)do
            if a==ho then res=true end
        end
        return res
    end
    for i,v in pairs(Workspace:children())do
        if v:IsA'Model'and v~=Char and v~=(hum2 or Char) then
            for i,q in pairs(v:children())do
            if q:IsA'Humanoid' and q.Parent:FindFirstChild'Torso'and(q.Torso.Position-pos).magnitude < rad then
                    if not check(q)then
                        table.insert(hums,q)
                    end
                end
            end
        end
    end
    return hums
end

-- Head.face.Texture='rbxassetid://321187438'
WalkSpeed=20

do --Idleloop
--IDLES--
	Anim="Idle"
	local sin,cos,abs = math.sin,math.cos,math.abs
	local rw,lw,rw2,lw2,tw = rw:get(),lw:get(),rw2:get(),lw2:get(),tw:get()
	local angle=0
	local a=md'7.5'
	idle_con=RS.Stepped:connect(function()
		
		local walkmag = v3n(HumRoot.Velocity.x,0,HumRoot.Velocity.z).magnitude
		angle=angle%100+1/5
		
		if walkmag > .2 then
			Anim='Walk'
		else
			Anim='Idle'
		end
		Humanoid.WalkSpeed=WalkSpeed
		if Anim == 'Idle' then
			rw.d = cfn(0,sin(angle)*.1,0)*ang(0,0,md'10'+sin(angle)*.075)
			lw.d = cfn(0,sin(angle)*.1,0)*ang(0,0,-md'10'-sin(angle)*.075)
			
			rw2.d = cfn(sin(angle)*.05,abs(sin(angle))*.05,0) * ang(0,0,md'5'-sin(angle)*.1)
			lw2.d = cfn(-sin(angle)*.05,abs(sin(angle))*.05,0) * ang(0,0,-md'5'+sin(angle)*.1)
			
			tw.d = cfn(0,0,sin(angle)*.15)
		elseif Anim == 'Walk' then
			tw.d=cfn(0,0,sin(angle)*.1)*ang(md'5')
			
			rw.d=ang(md'-15',0,a)
			lw.d=ang(md'-15',0,-a)
			rw2.d=ang(md'-15',0,a)
			lw2.d=ang(md'-15',0,-a)
			if dash and WalkSpeed>0 then
				Humanoid.WalkSpeed=130
				shadow_effect()
			end
		end
	end)
end

function ringSFX(cf,p,r,s)
	p.Anchored=true
	p.CFrame=cf
	local t=p.Transparency
	local msh=Mesh(p,mesh_ids.ring)
	Spawn(function()
		for i=0,1,(s or .1) do
			p.Transparency=t+((1-t)*i)
			msh.Scale=v3n(r*i,r*i,1)
			wait()
		end
		p:Destroy()
	end)
end
function sphereSFX(cf,p,r,s)
	p.Anchored=true
	p.CFrame=cf
	local t=p.Transparency
	local msh=Mesh(p,'s')
	Spawn(function()
		for i=0,1,(s or .1) do
			p.Transparency=t+((1-t)*i)
			msh.Scale=v3n(r*i,r*i,r*i)
			wait()
		end
		p:Destroy()
	end)
end

function hideAllParts(wut,an)
	local parts={}
	local function hide(object,anchor)
		if object:IsA("BasePart") or object:IsA("Decal") then
			local tr=object.Transparency
			local t={o=object,t=tr}
			object.Transparency = 1
			if object:IsA'BasePart' then
				t.a=object.Anchored
				
				if anchor==nil then
					object.Anchored=true
				else
					if anchor == 1 then
						object.Anchored=true
					else
						object.Anchored=false
					end
				end
				
				t.c=object.CanCollide
				object.CanCollide=false
			end
			
			table.insert(parts,t)
		end
		for _, child in ipairs(object:GetChildren()) do
			hide(child,an)
		end
	end
	hide(wut,an)
	-- for i,v in pairs(Char:children())do
	-- pcall(function()print(v.Anchored)end)end
	return function()
		for i,v in ipairs(parts) do
			v.o.Transparency = v.t
			if v.o:IsA'BasePart'then
				if v.a~=nil then
					v.o.Anchored=v.a
				end
				if v.c~=nil then
					v.o.CanCollide=v.c
				end
			end
		end
	end
end

-- unh=hideAllParts(Char)wait()
-- unh()

do --Main part of the script

function slash(mouse)
	rw.l=1
	rw.d=ang(PI/2,0,-PI/4/2)*ang(0,PI/2)
	hw.d=cfn(0,-.85,0)*ang(0,PI/2)
	wait'.5'
	local p=Part(4,4,1,'New Yeller',.5)
	p.Anchored=true
	local stp,enp=l(Torso,-5,0,-3).p,l(Torso,5,0,-3).p
	p.CFrame=cfn(stp,enp)
	local mag=(stp-enp).magnitude
	local sx,sz=p.Size.x,p.Size.y
	
	for _,hum in next,findHum(l(Torso,0,0,-3).p,5) do
		ringSFX(l(hum.Torso),Part(1,1,1,'New Yeller',.5),10)
		ringSFX(l(hum.Torso)*ang(PI/2),Part(1,1,1,'New Yeller',.5),10)
		ringSFX(l(hum.Torso)*ang(PI/2,PI/2),Part(1,1,1,'New Yeller',.5),10)
		
		local bl=Part(1,1,1,'New Yeller')bl.Anchored=true bl.Material='Neon'
		local msh=Mesh(_1,'s')
		bl.CFrame=hum.Torso.CFrame
		msh.Scale=hum.Parent:GetExtentsSize()
		local lol=math.max(msh.Scale.x,msh.Scale.y,msh.Scale.z)
		
		local scale=v3n(lol,lol,lol)*1.25
		local pos=hum.Torso.Position
		
		---Shrink ball, teleball with trail, enlarge and unhide---
		Spawn(function()
			local unhide=hideAllParts(hum.Parent)
			for i=1,.1,-.05 do
				msh.Scale=scale*i
				wait()
			end
			
			bl.CFrame=cfn(mouse.hit.p)
			local mag=(pos-l(bl).p).magnitude
			local laz=Part(1,1,mag,'New Yeller',.5) laz.Anchored=true
			laz.CFrame=cfn(l(bl).p,pos)*cfn(0,0,-mag/2)
			Spawn(function()
				for i=0,1,.1 do laz.Transparency=i wait()end laz:Destroy()end)
			for i=.1,1,.1 do
				msh.Scale=scale*i
				wait()
			end
			hum.Parent:MoveTo(bl.Position)
			-- repeat wait() until (l(hum.Torso).p-l(bl,0,2).p).magnitude<3
			unhide()

			bl:Destroy()
		end)
		
	end
	Spawn(function()
	for i=0,1,.25 do
		p.Size=v3n(sx,sz,i*mag)
		p.CFrame=cfn(stp,enp)*cfn(0,0,-(i*(mag/2)))
		
		wait()
	end
	for i=.5,1,.1 do
		p.Transparency=i
		wait()
	end p:Destroy()
	end)
	rw.spd=.3
	rw.d=ang(PI/2,0,md'130')*ang(0,PI/2)
	wait'.5'
	rw.l=0
	hw.d=cfn()
end

function laser(mouse)
	rw.l=1
	lw.l=1
	rw.d=ang(md'100',0,md'-55')
	lw.d=ang(md'100',0,md'55')
	hw.d=ang(md'7.5',md'45')
	cp=Part(.1,.1,.1)
	local laz=Part(3,0,3,'New Yeller')laz.Material='Neon'
	Mesh(laz,'bl').Name='m'
	laz.Anchored=true
	local t={}
	for i=0,m.tau,m.tau/6 do
		local p=Part(.1,.1,.1)
		local w=Weld(p,bl,{0,0,-.25,PI/2,i,0},{0,0,1})
		Edit{w}{C0=w.C0*ang(PI/2),C1=w.C1*ang(PI/2)}
		Mesh(_1,mesh_ids.diamond,.3,.3,.3)
		w.DesiredAngle=9e+009
		table.insert(t,p)
	end
	aura=Part(1,1,1,'New Yeller',.5)Weld(aura,bl)
	local msh=Mesh(aura,'s',0,0,0)
	for i=0,1,.1 do msh.Scale=v3n(2,2,2)*i wait()end
	holding=true
	local tr=0
	local li={}
	local r=1.5
	local pt=tick()
	local function ran()return l(bl,mr(-r,r),mr(-r,r),mr(-r,r),mr(-PI,PI),mr(-PI,PI),mr(-PI,PI))end
	for i=1,6 do
		local pp=Part(.1,.1,.1,'New Yeller',.5)_1.Anchored=true _1.Material='Neon'
		pp.CFrame=ran()
		table.insert(li,pp)
	end
	---Make aura glow
	Spawn(function()
	
	while wait()do
		for i=0,.5,.1 do aura.Transparency=.5+i/2
		for _,v in next,li do v.CFrame=ran() end
		wait()end
		for i=.5,0,-.1 do aura.Transparency=.5+i/2
		for _,v in next,li do v.CFrame=ran() end
		wait()end
	end end)
	
	while holding do
		---Positioning laser---
		local mag=(l(bl).p-mouse.hit.p).magnitude
		laz.Size=v3n(.1,mag,.1)
		laz.CFrame = (cfn(l(bl).p,mouse.hit.p)*cfn(0,0,-mag/2))*ang(PI/2)
		
		---Damaging---
		for _,hum in next,findHum(mouse.hit.p,3) do
			-- hum:TakeDamage(1)
			-- if not hum.Torso:FindFirstChild'Umpalumpa'then
			
			--Turn them to androids and anchor em still--
			local android=hum.Torso:FindFirstChild'android'
			
			if not android  then
			
			
				local pp=Part(1,1,1,'New Yeller',.5)Weld(pp,hum.Torso,0,0,0,0,PI)
				_1.Name='android'				
				local ring = Part(1,1,1,'',1)ring.Parent=pp
				local ring2 = Part(1,1,1,'New Yeller',.5)ring.Parent=pp
				ring2.Parent=ring								
				local sx,sy,sz=6,2,6
				Mesh(ring,'cyl',sx+.25,sy,sz+.25)
				Mesh(ring2,mesh_ids.ring,sx,sz,sy*6)
				Weld(ring,pp,ang(PI/2),ang(PI/2)).DesiredAngle=9e+009
				Weld(ring2,ring,ang(PI/2))
				for _,face in next,Enum.NormalId:GetEnumItems() do
					if face.Name~="Top"and face.Name~="Bottom" then
						
						New"Texture"{_P=ring;Face=face;Texture='rbxassetid://33092505';}
					end
				end
				pp.Parent=hum.Torso
				Mesh(pp,'s',5,7,5)
				local cnt=New"NumberValue"{_P=pp;Name='cnt'}
				local huhu=hum
				local cf=huhu.Torso.CFrame
				local o1,o2=huhu.WalkSpeed,huhu.JumpPower
				huhu.WalkSpeed=0
				huhu.JumpPower=0
				local bp=New"BodyPosition"{_P=hum.Torso;MaxForce=v3n(1,1,1)*9e+009;
				position=hum.Torso.Position;Name='Umpalumpa'}
				Spawn(function()
					repeat
						-- pcall(function()huhu.Torso.Anchored=true end)
						-- pp.CFrame=cf
						pcall(function()pp.Parent.Anchored=false end)
						cnt.Value=cnt.Value-1
						wait'.5'
					until cnt.Value <= 0
					huhu.WalkSpeed,huhu.JumpPower=o1,o2
					pcall(function()bp:Destroy() end)					
					for i=.5,1,.1 do
						pp.Transparency=i						
						ring2.Transparency=i
						wait()
					end pp:Destroy()
				end)
				Debris:AddItem(pp,7)
			else
				android.cnt.Value=.5
			end
			
			---Backup stucking---
			
			-- Debris:AddItem(bp,.25) --end
		end
		-- 'rbxassetid://430059354'
		---Cross effect---
		local bl=Part(1,1,1,nil,.5)Mesh(_1,'s')
		local bl2=Part(1,1,1,nil,.5)Mesh(_1,'s')
		Edit{bl,bl2}{Anchored=true;BrickColor=bcol'New Yeller'}
		
		bl.CFrame=cfn(mouse.hit.p,l(Torso).p)*ang(0,PI/2)
		bl2.CFrame=l(bl,0,0,0,PI/2)
		-- bl3.CFrame=l(bl2,0,0,0,0,PI/2)
		
		Spawn(function()
		for i=0,1,.1 do
			for _,v in next,{bl,bl2}do
				pcall(function()v.Mesh.Scale=v3n(1,10,1)*i end)
				v.Transparency=i
			end wait()
		end bl:Destroy()bl2:Destroy() end)
		
		---Ring efect beneath you
		local gr,gr_pos=Workspace:FindPartOnRay(Ray.new(l(Torso).p,v3n(0,-10)),Char)	
		if (tick()-pt)>.1 then	
			if gr and gr_pos then
				Part(.1,.1,.1,'New Yeller',.5)
				ringSFX(cfn(gr_pos)*ang(PI/2),_1,20)
			end
			---"Grow" effect on laser---
			Spawn(function()
				local cl=laz:Clone()cl.Parent=Main
				local msh=cl.m
				for i=0,1,.25 do
					msh.Scale=v3n(1+i*10,1,1+i*10)
					cl.Transparency=i
					wait()
				end
				cl:Destroy()
			end)
			
			pt=tick()
		end
		wait()
	end
	---Clearing up---
	for i,v in pairs(t)do v:Destroy()end
	for i,v in pairs(li)do v:Destroy()end
	laz:Destroy()
	for i=1,0,-.1 do msh.Scale=v3n(2,2,2)*i wait()end
	aura:Destroy()
	hw.d=cfn()
	rw.l=0 lw.l=0
end

function recurseHum(what)
	local res
	local p=what
	repeat
		p=p.Parent
		if p then
			local hum=p:FindFirstChild'Humanoid'
			if hum then
				res=hum
				break
			end
		end
	until p==nil
	return res
end

function galaxy()

	local function getAllParts(radius)
		local min,max = math.min,math.max
		local list={}
		local pos1,pos2=l(Torso,-15,-2,-15).p,l(Torso,15,2,15).p
		local reg=Region3.new(v3n(min(pos1.x,pos2.x),min(pos1.y,pos2.y),min(pos1.z,pos2.z)),
							v3n(max(pos1.x,pos2.x),max(pos1.y,pos2.y),max(pos1.z,pos2.z)))
		for i,v in pairs(Workspace:FindPartsInRegion3WithIgnoreList(reg,{Char})) do
			if (v.Position-Torso.Position).magnitude<radius and v.Name~='Base' then
				table.insert(list,v)
			end
		end
		return list
	end

	local orig_ws=Humanoid.WalkSpeed
	WalkSpeed=0
	Edit{rw,lw,rw2,lw2,tw}{l=1}
	tw.d=ang(md'-45')
	-- rw.d=ang(md'-45',0,md'25')
	rw.d=ang(md'50',0,md'25')*ang(0,md'15')
	lw.d=ang(md'-45',0,md'-25')
	-- hw.d=ang(0,0,md'15')
	hw.d=cfn(0,.05,0)
	rw2.d=ang(PI/4,0,md'15')
	lw2.d=ang(PI/4,0,-md'15')
	Humanoid.HipHeight=-1.5
	local linese={}
	local spinners={}
	
	---Rings---
	for a=-90,90,45 do
		local cyl=Part(1,1,1,'',1)Mesh(cyl,'cyl',10,1,10)
		local ww=Weld(cyl,HumRoot,0,0,0,md(a))
		table.insert(spinners,ww)
		table.insert(linese,cyl)
	end
	for a=-90,90,45 do
		local cyl=Part(1,1,1,'',1)Mesh(cyl,'cyl',10,1,10)
		local ww=Weld(cyl,HumRoot,0,0,0,0,0,md(a))
		table.insert(spinners,ww)
		table.insert(linese,cyl)
	end
	for i,v in pairs(linese)do
	for _,face in next,Enum.NormalId:GetEnumItems() do
		if face.Name~='Top'and face.Name~='Bottom' then
			New"Texture"{_P=v;Texture='rbxassetid://'..180728579-1;Face=face;Transparency=0;
			StudsPreTileU=1;}
		end
	end end
	
	---Spheres---
	for i=0,1,1/6 do
		local p=Part(1,1,1,'New Yeller',.9)p.Material='Neon'
		Mesh(p,'s',i*9,i*9,i*9)
		table.insert(spinners,Weld(p,Torso))
		for _,face in next,Enum.NormalId:GetEnumItems() do
			New"Decal"{_P=p;Face=face;Texture='rbxassetid://'..124291850-1;Transparency=.5}
		end
	end
	base_spd = .025
	deviation = 1
	local ptick=tick()
	holding=true
	---Mainloop---
	while holding do
		---Spin---
		for o,weld in next,spinners do
			weld.C1 = weld.C1 * ang(0,(o%2==0 and -1 or 1)*base_spd)
		end
		
		--Move parts away from you---
		for _,part in next,getAllParts(7) do
				
			local hum=recurseHum(part)
			if hum and (hum.Torso.Position-Torso.Position).magnitude <= 10 then
				local rot=l(hum.Torso)-l(hum.Torso).p
				hum.Torso.CFrame=cfn((cfn(hum.Torso.CFrame.p,Torso.CFrame.p)*cfn(0,0,5)).p)*rot
				break
			else
				local rot=l(part)-l(part).p
				part.CFrame=cfn((cfn(part.CFrame.p,Torso.CFrame.p)*cfn(0,0,5)).p)*rot
			end
		end
		
		---Heal others---
		if (tick()-ptick)>.25 then
			
			for _,hum in next,findHum(Torso.Position,20) do
				hum:TakeDamage(-5)
				local mag=(l(hum.Torso).p-l(Torso).p).magnitude
				local bl=Part(.1,mag,.1,'Lime green',.75)bl.Material='Neon'
				bl.Anchored=true
				local msh=Mesh(_1,'s')
				bl.CFrame=l(cfn(l(Torso).p,l(hum.Torso).p),0,0,-mag/2)*ang(PI/2)
				local momo=godly(hum.Parent,'Lime green',.9)
				Spawn(function() ---Fade out beam---
				local scales={}
				for _,v in pairs(momo:children())do table.insert(scales,v.Mesh.Scale) end
				for i=0,1,.05 do
					for i2,v in pairs(momo:children())do
						v.Mesh.Scale=scales[i2]+(v3n(.05,.05,.05)*i)
						v.Transparency=.9+(.1*i)
					end
					bl.Transparency=.75+i*(1-.75)
					msh.Scale=v3n(1+i*5,1,1+i*.5)
					wait()
				end
				momo:Destroy()
				bl:Destroy()end)
			end
			ptick=tick()
		end
		---Heal yourself---
		Humanoid:TakeDamage(-5)
		wait()
	end
	for _,v in pairs(spinners)do v.Parent:Destroy()end
	Humanoid.HipHeight=0
	hw.d=cfn()
	WalkSpeed=orig_ws
	Edit{rw,lw,rw2,lw2,tw}{l=0}

end
function godly(tar,color,tr)
	local function getM(a)
		local res=nil
		for i,v in pairs(a:children())do
			if v.className:match'Mesh' then
				res=v
			end
		end return res
	end
	local godo=New"Model"{_P=Main}
	set_parent=godo
	local trlist={}
	for i,v in next,(tar and tar:children() or Char:children()) do
		if v:IsA'Part' and v.Name~='HumanoidRootPart' then
			if v.Name =='Head'then
				local pp=Part(1,1,1,color or 'New Yeller',tr or .9)pp.Material='Neon'
				pp.Size=v.Size
				Weld(pp,v)
				local mesh=v.Mesh:Clone()mesh.Parent=pp
				mesh.Scale=mesh.Scale*1.1
				table.insert(trlist,mesh.Scale)
			else
				local pp=Part(1,1,1,color or 'New Yeller',tr or .9)_1.Material='Neon'
				pp.Size=v.Size Weld(pp,v)
				local msh=Mesh(pp,'bl')
				msh.Scale=msh.Scale*1.1
				table.insert(trlist,msh.Scale)
			end
		elseif v:IsA'Hat'then
			local pp=Part(.1,.1,.1,color or 'New Yeller',tr or .9)_1.Material='Neon'
			Weld(pp,v.Handle)
			local mesh=getM(v.Handle):Clone()
			mesh.TextureId=''
			mesh.Scale=mesh.Scale+(mesh.Scale*.01)
			mesh.Parent=pp
			table.insert(trlist,mesh.Scale)
		end
	end
	set_parent=nil
	return godo,trlist
end

main_aura,main_aura_tr=godly()

function hammer(mouse)
	Edit{rw,lw,rw2,lw2,tw}{l=1}
	tw.d=cfn()*ang(md'25')
	Humanoid.HipHeight=.25
	rw2.d=cfn(0,-.05,0)*ang(md'25')
	lw2.d=ang(md'-25')
	rw.d=cfn(0,0,-.25)*ang(PI/2+md'25',0,md'-45')
	lw.d=cfn(0,0,-.25)*ang(PI/2+md'25',0,md'45')
	hw.d=cfn(0,-1,0)*ang(PI/2,md'45')
	wait(1)
	local ppos=l(HumRoot,0,0,-5).p
	for _,hum in next,findHum(ppos,30) do
		Spawn(function()hum.PlatformStand=true wait'.1'hum.PlatformStand=false end)
		hum.Torso.Velocity=v3n(0,100,0)
	end
	
	rw.d=cfn(0,0,-.25)*ang(PI/2+md'45',0,md'-45')
	lw.d=cfn(0,0,-.25)*ang(PI/2+md'45',0,md'45')
	tw.d=ang(md'-45')
	lw2.d=ang(md'-55')
	local bv=New"BodyVelocity"{_P=Torso,velocity=HumRoot.CFrame.lookVector*-30}
	
	local gr,gr_p=Workspace:FindPartOnRay(Ray.new(ppos,v3n(0,-10,0)),Char)
	-- ge,ge_p=nil,nil

	if not gr or not gr_p then
		hw.d=cfn()
		Edit{rw,lw,rw2,lw2,tw}{l=0}
	return end
	
	local volcano=Part(1,1,1,'Crimson')volcano.Anchored=true
	volcano.CFrame=cfn(gr_p)		
	local cf =volcano.CFrame
	local r=100
	Spawn(function()
		for i=1,5 do
			local pp=Part(3,3,3,'White')pp.Material='Slate'
			local msh=Mesh(pp,mesh_ids.rock)msh.Scale=v3n(.6,.6,.6)*pp.Size
			msh.TextureId = mesh_texs.rock
			msh.VertexColor=v3n(1,0,0)
			pp.CanCollide=true
			New"Fire"{_P=pp;Size=4.5;Heat=0}
			pp.CFrame=l(cf,0,0,0,mr(-md'15',md'15'),0,mr(-md'15',md'15'))*cfn(0,0,1)
			pp:BreakJoints()
			pp.Velocity=l(cf,0,0,0,mr(-4,4),mr(-4,4),mr(-4,4)).lookVector*40+v3n(0,50,0)
			New"BodyForce"{_P=pp;Name='F';Force=v3n(0,(m.float*pp:GetMass())*.75,0)}
			New"BodyAngularVelocity"{_P=pp;angularvelocity=v3n(4,4,4)*PI*4}
			Delay(1,function()
				for i=1,3 do
					local p=pp:Clone()
					p.Size=v3n(1,1,1)
					p.Parent=Main
					p.F.Force=v3n(0,p:GetMass()*m.float*1.25,0)
					p.Velocity=cfn(p.Position,mouse.hit.p).lookVector*200
					p.Touched:connect(function(hit)
					if hit:IsDescendantOf(Char) then return end
						local e=Instance.new("Explosion",Workspace)
						e.BlastPressure=0
						e.BlastRadius = 7
						e.Position=p.Position
						e.Hit:connect(function(hit)
						local hum=hit.Parent:FindFirstChild'Humanoid'
						if hum and hum.Parent~=Char then
							hum:TakeDamage(2)
						end end)
						p:Destroy()
					end)
						
					Debris:AddItem(p,2)
				end
				pp:Destroy()
			end)
			wait()
		end
	end)
	
	ringSFX(l(volcano,0,0,0,PI/2),volcano,40,.025)
	wait(1)
	bv:Destroy()
	
	hw.d=cfn()
	Edit{rw,lw,rw2,lw2,tw}{l=0}
end

stealthed=false
re=nil

function ballSFX(cf,part,scale,from,to,dir)
	part.Anchored=true
	part.CFrame=cf
	local msh=Mesh(part,'s',0,0,0)
	for i=from,to,dir do
		msh.Scale=v3n(scale,scale,scale)*i
		wait()
	end
end

function stealth()
	stealthed=not stealthed
	local tt=main_aura_tr
	if stealthed then
		re = hideAllParts(Char,0)
		emitter.Enabled=false
		---Shrink---
		for i=0,1,.1 do
			Edit(main_aura:children()){
				Transparency=.9+(i*.1);
				['Mesh.Scale'] = v3n(1,1,1)*(1-i);
			}
			wait()
		end		
	else		
		---Expand---
		for i=0,1,.1 do
			Edit(main_aura:children()){
				Transparency=1-(.1*i);
				-- ['Mesh.Scale']=(v3n(1.1,1.1,1.1)*i);
			}
			for o,v in pairs(main_aura:children())do
				v.Mesh.Scale=tt[o]*i
			end
			wait()
		end
		re()
		emitter.Enabled=true
	end
end

function conjure()
	c_cf=l(Torso,0,0,-5)
	set_anchor = true
	mp = Part(.15,1,.15)
	mp.CFrame=c_cf
	blade = Part(1,4,.25)
	_1.CFrame=l(mp,0,.5+2)
	Mesh(_1,'bl',1,1,.5)
	cp = Part(.8,3.8,.25,'White')
	New"Texture"{_P=cp;Face='Back';Texture='rbxassetid://33092538'}
	New"Texture"{_P=cp;Face='Front';Texture='rbxassetid://33092538'}
	cp.CFrame=l(blade)
	Mesh(_1,'bl',1,1,.55)
	
	tip1=Wedge(.25,1,.5)
	_1.CFrame=l(blade,.25,2+_1.Size.y/2,0,0,-PI/2)
	Mesh(_1,'w',.5,1,1)
	tip2=Wedge(.25,1,.5)
	_1.CFrame=l(blade,-.25,2+_1.Size.y/2,0,0,PI/2)
	Mesh(_1,'w',.5,1,1)
	set_anchor = nil
end
-- conjure()


holding=false
attacking=false
klist={
	f=slash;
	qq=laser;
	cq=galaxy;
	r=hammer;
	z=stealth;
	x=conjure;
}

Humanoid.Died:connect(function()
	local bl=Part(10,10,10)bl.Anchored=true
	bl.CFrame=l(Torso)
	for _,v in pairs(Char:children())do
		if v:IsA'BasePart'then
			v.Touched:connect(function(a)
				local h=recurseHum(a)
				if h and h.Parent~=Char then h.Health=0 end
			end)
		end
	end
	for i,v in pairs(findHum(Torso.Position,10))do
		v.Parent:BreakJoints()
	end
	Mesh(bl,'s')
	Spawn(function()
		for i=0,1,.1 do
			Edit{bl}{Transparency=i}
			wait()
		end
	end)
end)

-- rbxassetid://430066606 mesh
-- rbxassetid://430066609 tex

-- New"FileMesh"{_P=character.Head;MeshId='rbxassetid://430066606'}

holding=false
Mouse.KeyUp:connect(function(key)
	if key=='0' then dash=false else
		for i,v in pairs(klist)do
			if key == i:sub(1,1) and i:sub(2,2) == 'q' then
				holding=false
			end
		end
	end
end)
Mouse.KeyDown:connect(function(key)
	if attacking then return end
	attacking=true
	if key=='0' then dash=true else
		for i,v in pairs(klist)do
			if key==i:sub(1,1) then
				v(Mouse)
			end
		end
	end
	attacking=false
end)

for i,v in next,getfenv(0) do
	if i:match('_con') then
		table.insert(Connections,v)
	end
end
New"BindableFunction"{_P=script;Name='stop'}.OnInvoke=function()for i,v in pairs(Connections)do v:disconnect()end end

script.Name='god_script: '..Player.Name
end
