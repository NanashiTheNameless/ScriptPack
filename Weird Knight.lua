--Logged from PPA2A or something along the lines of that name

Services = setmetatable({},{__index=function(s,r) return game:service(r) end})
Player = Services.Players.LocalPlayer
wait()script.Parent=nil
BodyParts={}
abs = function(int)
	if int < 0 then return -int else return int end
end
rad = function(deg)
	return deg * math.pi / 180
end
deg = function(rad)
	return rad * 180 / math.pi
end
dist = function(p1,p2)
	r,e = ypcall(function()
		p1 = p1.Position
	end)
	if not r then p1 = p1 end
	r,e = ypcall(function()
		p2 = p2.Position
	end)
	if not r then p1 = p1 end
	return math.sqrt( (p2.X-p1.X)^2 + (p2.Y-p1.Y)^2 + (p2.Z-p1.Z)^2 ) 
end

function GetChar()
	return Player.Character
end
function GetHum()
	for i,v in pairs(GetChar():children'') do
		if v.ClassName == 'Humanoid' then
			return v
		end
	end
end

function Died()
	for i,v in pairs(GetChar():children'') do
		if v.ClassName == 'Part' then
			table.insert(BodyParts,{v.CFrame,v})
		elseif v.ClassName == 'Hat' then
			v.Parent=workspace
			table.insert(BodyParts,{v.Handle.CFrame,v.Handle,1})
		end
	end
	
	wait(3)
	for i,v in pairs(BodyParts) do 
		v[2].Anchored=true 
		if v[2].Name == 'Torso' then pos = v[1] end
	end
	
	for i,v in pairs(BodyParts) do
		coroutine.resume(coroutine.create(function()
			repeat Services.RunService.Heartbeat:wait()
				v[2].CFrame = v[2].CFrame:lerp(v[1],.1)
			until dist(v[2],v[1]) < .05
			v[2].CFrame=v[1]
		end))
	end
end

Player.CharacterAdded:connect(function(char)
	char:WaitForChild('Torso')
	for i,v in pairs(BodyParts) do
		if v[3] then
			v[2]:Remove()
		end
	end
	BodyParts={}
	char.Torso.CFrame=pos or CFrame.new(0,12,0)
	GetHum().Died:connect(Died)
end)
GetHum().Died:connect(Died)
print'PPATTA Was Here.'

r2 = "Cyan"

--declarations
PI=math.pi
TAU=PI*2
DEBRIS=game:service'Debris'
mr,md=math.random,math.rad
cfn,v3n=CFrame.new,Vector3.new
_A=nil
ang=function(x,y,z)local a=CFrame.Angles(x or 0,y or 0,z or 0)_A=a return a end
RS=game:service'RunService'
bcol=BrickColor.new

RS:UnbindFromRenderStep('Anim')

--player specific...
player = game:service'Players'.LocalPlayer
character = player.Character
torso = character.Torso
head = character.Head
rarm = character['Right Arm']
larm = character['Left Arm']
rleg = character['Right Leg']
rleg = character['Left Leg']
human = character.Humanoid

--Utilities... who needs them?

function recurseHum(what)
	local res
	local p=what
	if what:IsA'Humanoid'then
		res=what
	else
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
	end
	return res
end
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

function checkY(p1,p2,range,range2)
	local function checko()
		return ( (l(p1).X>l(p2).X-range2 and l(p1).X<l(p2).X+range2) and (l(p1).Z>l(p2).Z-range2 and l(p1).Z<l(p2).Z+range2) )
	end
	if range2 then
		return (l(p1).Y > l(p2).Y-range and l(p2).Y < l(p2).Y+range) and checko()
	else
		return (l(p1).Y > l(p2).Y-range and l(p2).Y < l(p2).Y+range)
	end
end

udim=function(a,b,c,d)
if type(a)=='string'then
x,y=tostring(a):match('([%+%d%.%-%/%*]+),([%+%d%.%-%/%*]+)')
return UDim2.new(x or 0,x2 or 0,y or 0,y2 or 0)
else
return UDim2.new(a or 0,c or 0,b or 0,d or 0)
end end

function l(a1,x,y,z,rx,ry,rz)
    local cf
    if tostring(a1):find(',') == nil then
        cf=a1.CFrame
    else cf=a1 end
    return cf*CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(
                        rx or 0,ry or 0,yz or 0)
end
function f(a) --turns thigns in to function returning the thing... f(l)(torso,0,2,0)
	return function(...)
		local args={...}
		return function() return a(unpack(args)) end
	end
end

function isIn(what,tab) --returns true if what is in tab. isIn("Troll", {"Tomato", "Troll", "Strawberry") --> true
	local res=false
	for i,v in next,tab do
		if v==what then
			res = true
			break
		end
	end
	return res
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
	local weld = Instance.new("Weld")
	weld.Part0 = part0
	weld.Part1 = part1
	weld.C0 = cframe0 or CFrame.new()
	weld.C1 = cframe1 or CFrame.new()
	if weld:IsA'Motor'then weld.MaxVelocity = set_maxvel or .1 end
	weld.Parent = part0
	_2=weld
	return weld
end

mesh_ids = {
	spikeball = "rbxassetid://24388358";
	spike = "rbxassetid://1033714";
	ring = "rbxassetid://3270017";
	coil = 'rbxassetid://16606212';
	diamond = 'rbxassetid://9756362';
	rock = 'rbxassetid://1290033';
	gear = 'rbxassetid://156292343';
	crown = 'rbxassetid://20329976';
	orb = 'rbxassetid://34795798';
	heart = 'rbxassetid://431221914';
	dragon = 'rbxassetid://24478215';
	half_sphere = 'rbxassetid://475668276'
}
mesh_texs = {
	rock = 'rbxassetid://1290030';
	dragon = 'rbxassetid://25665033';
}
mesh_scales={
	diamond = v3n(0.75, 0.75, 0.75);
	spikeball = v3n(1.05, 1.05, 1.05);
	spike = v3n(0.5, 1.5, 0.5);
	gear = v3n(1.25,1.25,18);
	ring = v3n(1, 1, 6);
	coil = v3n(0.5, 0.5, 0.3);
	crown = v3n(0.6, 0.6, 0.6);
	orb = v3n(1, 1, 1);
	heart = v3n(0.25, 0.25, 0.4);
	dragon = v3n(0.4, 0.5, 0.4);
	half_sphere= v3n(0.005, 0.01, 0.005)
}
mesh_offsets={
	crown = v3n(0,.15,0);
}

function bindMesh(mesh,Size)
	local mesh_name
	local size=Size or mesh.Parent.Size
	for name,id in next,mesh_ids do
		if mesh.MeshId==id then
			mesh_name=name
		end
	end

	if not mesh_name then return end
	local mesh=mesh
	local con
	con=mesh.Parent.Changed:connect(function()
		local siz=mesh.Parent.Size
		mesh.Scale=siz*mesh_scales[mesh_name]
		if mesh_offsets[mesh_name] then
			mesh.Offset=siz*mesh_offsets[mesh_name]
		end
	end)
	return con
end
Mesh = function(parent,id,sx,sy,sz)
	local name = ( (id == 'cyl' and 'CylinderMesh') or (id == 'bl' and 'BlockMesh') or 'SpecialMesh')
	local mesh = Instance.new(name)
	if id == 's' then
		mesh.MeshType = Enum.MeshType.Sphere
	elseif id == 'w' then
		mesh.MeshType = Enum.MeshType.Wedge
	elseif id == 'h' then
		mesh.MeshType = Enum.MeshType.Head
	elseif string.find(id,"://") ~= nil then
		mesh.MeshId = id
	end
	mesh.Scale = Vector3.new(sx or 1, sy or 1, sz or 1)
	mesh.Parent = parent
	_3=mesh
	return mesh
end

Edit = function(what)
	return function(args)
		for ind,obj in next,what do
			for arg,val in next,args do				
				local child,argu = arg:match"(.+)%.(.+)"
				if child and argu then
					if pcall(function()return obj[child][argu] end) then
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
New = function(what) --Synthetic caffeine for Instance.new 
	local obj
	if type(what) ~= 'string' then
		obj=what:Clone()
	else
		obj=Instance.new(what)
	end
	if what=='Weld' then obj.Name='mujoint'end
	return function(bar)
		for arg,val in pairs(bar) do
			if arg == "_P" then
				obj.Parent = val
			elseif arg=="_PP" then
				obj.Part0=val[1]
				obj.Part1=val[2]
			elseif arg=='_F'then
				val(obj)
			else
				if pcall(function()return obj[arg] end) then
					obj[arg]=val
				end
			end
		end _4=obj
		return obj
	end
end

set_parent,set_material=nil,nil
set_maxvel,set_anchor=nil,nil
set_collide=false

pcall(function() character['Knight']:Destroy() end) --removes old model.
Main = New"Model"{_P=character;Name = 'Knight'}

_1,_2,_3,_4,_5,_6,_7,_8 = nil,nil,nil,nil,nil,nil,nil
Part = function(x,y,z,col,tr)
	local p = New"Part"{
		_P=set_parent or ears or Main;
		BrickColor = BrickColor.new(col or set_color or "White");
		CanCollide = set_collide;
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

function platefy(part)
	local x,z=part.Size.x,part.Size.z
	local y=part.Size.y
	local list={}
	--Cylinders...
	local p2=Part(y,x,y)Mesh(_1,'cyl') table.insert(list,_1)
	Weld(p2,p,0,0,-z/2,PI/2,0,PI/2)

	local p2=Part(y,x,y)Mesh(_1,'cyl') table.insert(list,_1)
	Weld(p2,p,0,0,z/2,PI/2,0,PI/2)

	local p2=Part(y,z,y)Mesh(_1,'cyl') table.insert(list,_1)
	Weld(p2,p,x/2,0,0,PI/2)

	local p2=Part(y,z,y)Mesh(_1,'cyl') table.insert(list,_1)
	Weld(p2,p,-x/2,0,0,PI/2)

	--Balls...
	local p2=Part(y,y,y)Mesh(p2,'s') table.insert(list,_1)
	Weld(p2,p,-x/2,0,-z/2)

	local p2=Part(y,y,y)Mesh(p2,'s') table.insert(list,_1)
	Weld(p2,p,-x/2,0,z/2)

	local p2=Part(y,y,y)Mesh(p2,'s') table.insert(list,_1)
	Weld(p2,p,x/2,0,-z/2)

	local p2=Part(y,y,y)Mesh(p2,'s') table.insert(list,_1)
	Weld(p2,p,x/2,0,z/2)
	
	part.Changed:connect(function(prop)
		Edit(list){Material=part.Material;Color=part.Color}
	end)
end

-- p=Part(2,.25,2)
-- Weld(p,torso,0,0,-1,-PI/2)
-- platefy(p)

cp=Part(.5,.1,.5,'Black')Mesh(_1,'cyl')
Weld(cp,torso,0,0,-.55,-PI/2)

e_parts={}
for i=0,TAU,TAU/10 do
	Part(.1,.1,.1,'Black')Mesh(_1,'bl',.25,.5,.5)
	New"Weld"{_P=_1;_PP={_1,cp};C1=cfn(0,.11,0)*ang(0,i);C0=cfn(.15,0,0)}
	table.insert(e_parts,_1)
end

p=Part(1,.1,.1)Mesh(_1,'bl',1,.5,.5)
New"Weld"{_P=_1;_PP={p;cp};C1=ang(0,md'90'-md'35');C0=cfn(_1.Size.x/2+.25,0,0)}

p2=Part(1,.1,.1)Mesh(_1,'bl',1,.5,.5)
New"Weld"{_P=_1;_PP={_1;p};C1=cfn(-.5,0,0)*ang(md'-5',0,PI/2);C0=cfn(.5,0,0)}



p=Part(1,.1,.1)Mesh(_1,'bl',1,.5,.5)
New"Weld"{_P=_1;_PP={p;cp};C1=ang(0,md'90'+md'35');C0=cfn(_1.Size.x/2+.25,0,0)}

p2=Part(1,.1,.1)Mesh(_1,'bl',1,.5,.5)
New"Weld"{_P=_1;_PP={_1;p};C1=cfn(-.5,0,0)*ang(md'5',0,PI/2);C0=cfn(.5,0,0)}

pp=Part(.25,.1,.1)Weld(pp,torso,0,.75,.515)Mesh(_1,'bl',1,.5,.5)

pp2=Part(.7,.1,.1)New(_3){_P=pp2}
New"Weld"{_P=pp2;_PP={_1,pp};C1=cfn(.125-.2,0,0)*ang(md'-5',0,md'-30');C0=cfn(_1.Size.x/2,0,0)}

pp2=Part(.7,.1,.1)New(_3){_P=pp2}
New"Weld"{_P=pp2;_PP={_1,pp};C1=cfn(-.125+.2,0,0)*ang(md'-5',0,md'30');C0=cfn(-_1.Size.x/2,0,0)}


eye={parts=e_parts;center=cp;op=function(self,col)Edit(self.parts){Material='Neon';BrickColor=bcol(col or 'Bright red')}end;
clo=function(self)Edit(self.parts){BrickColor=bcol'Black';Material='SmoothPlastic'}end}

ra=25

lazor_snd=New"Sound"{_P=Main;SoundId='rbxassetid://147627083';Pitch=.75;Volume=.8}

found=false
function lazor()
	holding=true
	while holding do
	eye:op'White'
	for o=1,3 do
		angle=ang(md(mr(-ra,ra)),md(mr(-ra,ra)))
		stp=l(eye.center)*ang(PI/2)
		enp=l(stp*angle,0,0,-20)
		local obj,pos=Workspace:FindPartOnRay(Ray.new(stp.p,enp.lookVector*20),character)
		if (obj and pos) then
			if obj.Parent.Name~='M_CAR' then
				local siz_x,siz_y,siz_z=obj.Size.x,obj.Size.y,obj.Size.z
				if (siz_x+siz_y+siz_z)/3 < 50 then
					local mag=(stp.p-pos).magnitude
					local r=Part(1,mag,1,'',.5)_1.Anchored=true _1.Color=eye.parts[1].Color
					_1.Material='Neon'
					_1.CFrame=(cfn(stp.p,pos)*cfn(0,0,-mag/2))*ang(PI/2)
					
					local hum=recurseHum(obj)
					if hum then hum:TakeDamage(-5)

					end
					
					DEBRIS:AddItem(_1,.1)
					found=true
				end
			end
		end
	end
	wait()
	if found then found=false
		if not lazor_snd.IsPlaying then lazor_snd:Play()
		elseif not found and not lazor_snd.IsPlaying then lazor_snd:Stop()
		end
	end
	end
	lazor_snd:Stop()
	eye:clo()
end

function findAllParts(pos,radius)
	local min,max = math.min,math.max
	local list={}
	local pos1,pos2=l(cfn(pos),-radius*3,-radius*3,-radius*3).p,l(cfn(pos),radius*3,radius*3,radius*3).p
	local reg=Region3.new(v3n(min(pos1.x,pos2.x),min(pos1.y,pos2.y),min(pos1.z,pos2.z)),
						v3n(max(pos1.x,pos2.x),max(pos1.y,pos2.y),max(pos1.z,pos2.z)))
	for i,v in pairs(Workspace:FindPartsInRegion3WithIgnoreList(reg,{character})) do
		if (v.Position-pos).magnitude<radius and v.Name~='Base' then
			table.insert(list,v)
		end
	end
	return list
end

function forcePose(hum)
	local t=hum.Torso
	local limb_names={'r_leg','l_leg','r_arm','l_arm'}
	if not t then return end
	--Right hip
	local limbs={huma=hum;torso=t;
		revert=function(self)
			for i,v in pairs(self)do 
				if isIn(i,limb_names) then
					v.w:Destroy()
				end
			end
			self.huma.HipHeight=0
			self.huma:Move(v3n(0,0,0))
			if self['bg'] then
				self['bg']:Destroy()
			end
		end;
	}
	if t.Parent:FindFirstChild'Right Leg' then
		local invp=Part(1,1,1,'',1)_1.Anchored=false _1.Name='Hourai'_1.Parent=Main
		New"Weld"{_P=invp;_PP={invp,t};C1=cfn(.5,-1.5,0);} --Welded to torso
		local ww=New"Weld"{_P=invp;_PP={t.Parent['Right Leg'],invp};
			C0=cfn(0,.5,0);} --Right leg welded to invisible part
		-- ww.C0=cfn(-.05,0,0)*ang(0,0,md'-90')
		limbs.r_leg={w=ww;n_c0=ww.C0;n_c1=ww.C1}
	end
	--Left hip
	if t.Parent:FindFirstChild'Left Leg' then
		local invp=Part(1,1,1,'',1)_1.Anchored=false _1.Name='Hourai'_1.Parent=Main
		New"Weld"{_P=invp;_PP={invp,t}; C1=cfn(-.5,-1.5,0);}--Welded to torso
		local ww=New"Weld"{_P=invp;_PP={t.Parent['Left Leg'],invp};
			C0=cfn(0,.5,0);} --Right leg welded to invisible part
		-- ww.C0=cfn(.5,0,0)*ang(0,0,md'45')
		limbs.l_leg={w=ww;n_c0=ww.C0;n_c1=ww.C1}
	end
	--Right shoulder
	if t.Parent:FindFirstChild'Right Arm' then
		local invp=Part(1,1,1,'',1)_1.Anchored=false _1.Name='Hourai'_1.Parent=Main
		New"Weld"{_P=invp;_PP={invp,t};C1=cfn(1.5,.5,0)}
		local ww=New"Weld"{_P=invp;_PP={t.Parent['Right Arm'],invp};C0=cfn(0,.5,0)}
		-- ww.C0=cfn(-.15,0,-.5)*ang(md'45',0,md'-35')
		limbs.r_arm={w=ww;n_c0=ww.C0;n_c1=ww.C1}
	end
	--Left shoulder
	if t.Parent:FindFirstChild'Left Arm' then
		local invp=Part(1,1,1,'',1)_1.Anchored=false _1.Name='Hourai'_1.Parent=Main
		New"Weld"{_P=invp;_PP={invp,t};C1=cfn(-1.5,.5,0)}
		local ww=New"Weld"{_P=invp;_PP={t.Parent['Left Arm'],invp};C0=cfn(0,.5,0)}
		-- ww.C0=cfn(.15,0,-.5)*ang(md'45',0,md'35')
		limbs.l_arm={w=ww;n_c0=ww.C0;n_c1=ww.C1}
	end

	return function(tab)
		for i,v in pairs(tab)do
			if i=='hipheight'then limbs['huma'].HipHeight=v end
			if limbs[i] and i ~='hipheight' then
				limbs[i].w.C0=limbs[i].n_c0*(v:inverse())
			end
		end
		return limbs
	end
	
end

function red()
	eye:op'Really red'
	local bl=Part(1,1,1,'Black',.75)_1.Material='Neon'
	local bl2=Part(1,1,1,'Bright red',.5)_1.Material='Slate'
	Weld(bl,eye.center)
	Weld(bl2,eye.center)
	local msh=Mesh(bl,'s')
	local ra=20
	local msh2=Mesh(bl2,'s')
	for i=0,1,.1 do
		msh.Scale=v3n(ra,ra,ra)*i
		msh2.Scale=v3n(ra-1,ra-1,ra-1)*i
		wait()
	end
	
	local ign=nil
	
	local humlist={}
	for o=0,3 do
		for i,v in pairs(findHum(torso.Position,ra))do
			if v.Parent~=character then
			for _,v2 in pairs(v.Parent:children())do
				if v2:IsA'Model'then v2:Destroy()
				elseif v2:IsA'Part' and v2.Name~='HumanoidRootPart'then
					v2.Transparency=0
				end
			end
			-- v.Health=v.Health-5
			v.Torso.Velocity=cfn(torso.Position,v.Torso.Position).lookVector*100
			Spawn(function()v.PlatformStand=true wait()v.PlatformStand=false end)
			v:UnequipTools()
			local pl=game.Players:GetPlayerFromCharacter(v.Parent)
			ign=v.Parent
			-- pacify(v.Parent)
			if pl then
				-- pl:ClearCharacterAppearance()
				for i,v in pairs(pl.Backpack:children()) do
					if v:IsA'BackpackItem' then					
						v:Destroy()
					end
				end
			end end
			
		end
	end
	for i=1,0,-.1	do
		msh.Scale=v3n(ra,ra,ra)*i
		msh2.Scale=v3n(ra-1,ra-1,ra-1)*i
		wait()
	end
	bl:Destroy()bl2:Destroy()
	eye:clo()
end

bag=Part(2,2,2)Mesh(bag,'rbxassetid://25921854')
Weld(bag,torso,1.15,-1.15,0,md'-25',0,md'25')

--500657388
function blue()
	eye:op'Bright blue'
	local poses={}
	for i,v in pairs(findHum(l(torso).p,30)) do
	if v.Parent~=character then
		local pose=forcePose(v){
			r_arm=cfn(-.4,0,-.5)*ang(md'45',0,md'-45');
			l_arm=cfn(.4,0,-.5)*ang(md'45',0,md'45');
			r_leg=ang(md'-80',0,md'25');
			l_leg=ang(md'-80',0,md'-25');
			hipheight=-.5;
		}
		pose.bg=New"BodyGyro"{_P=v.Torso;maxTorque=v3n(1,1,1)*9e+009;P=900000;cframe=cfn(l(v.Torso).p,l(torso).p)}
		table.insert(poses,pose)
	end end
	local ti=tick()
	if #poses>0 then
	repeat
		for i,v in pairs(poses)do
			if v.bg then
				v.bg.cframe=cfn(v.torso.Position,torso.Position)
				local vec=(torso.Position-v.torso.Position)
				if vec.magnitude>5 then
				v.huma:MoveTo((cfn(torso.Position,v.torso.Position)*cfn(0,0,-5)).p)
				else
				v.huma:Move(v3n(0,0,0))
				end
			end
		end wait()
	until (tick()-ti)>3
	for i,v in pairs(poses)do v:revert() end
	else
		wait'.1'
	end
	eye:clo()
end

yel_snd=New"Sound"{_P=Main;SoundId='rbxassetid://138111999'}

function yellow()
	eye:op'New Yeller'
	yel_snd:Play()
	local mod=New"Model"{_P=Workspace;Name='M_CAR'}
	set_parent=mod
	set_collide=true
	cassis=Part(4,.75,6)_1.TopSurface='Weld'
	_1.CFrame=l(torso,0,5,-7)
	
	vs=New"VehicleSeat"{_P=mod;Size=v3n(2,1,2);CFrame=l(cassis,0,.75/2+.5,0,0,PI);BottomSurface='Weld';
	BrickColor=bcol'Black'}vs.CanCollide=false
	vs.MaxSpeed=70

	wheel=Part(5,5,5)_1.Shape=0
	_1.RightSurface='Hinge'
	_1.CFrame=l(cassis,-4.5,0,-3)

	wheel2=Part(5,5,5)_1.Shape=0
	_1.RightSurface='Hinge'
	_1.CFrame=l(cassis,4.5,-.25,-3,0,PI)

	
	wheel3=Part(5,5,5)_1.Shape=0
	_1.RightSurface='Hinge'
	_1.CFrame=l(cassis,-4.5,0,3)

	
	wheel4=Part(5,5,5)_1.Shape=0
	_1.RightSurface='Hinge'
	_1.CFrame=l(cassis,4.5,-.25,3,0,PI)
	
	set_collide=false
	for i,v in pairs{wheel,wheel2,wheel3,wheel4}do
		v.Transparency=.9
		v.Material='Neon'
		Part(4,4,4,'New Yeller')
		Mesh(_1,'s')
		Weld(_1,v)
	end
	
	kehys=Part(4,2,.1)Weld(_1,cassis,0,.75/2+1,3-.05)
	Part(1,1,.1,'New Yeller')Weld(_1,kehys,-1,0,.1)_1.Material='Neon'
	Part(1,1,.1,'New Yeller')Weld(_1,kehys,1,0,.1)_1.Material='Neon'
	
	pil=Part(2,6,.1)Weld(_1,cassis,0,.75/2+_1.Size.y/2,-2)
	_1=Part(5,4,.1)New"Weld"{_P=_1;_PP={_1,pil};C1=cfn(0,pil.Size.y/2,0)*ang(-PI/2);C0=cfn(0,_1.Size.y/2,0)}
	
	Part(.1,6,1.5)Mesh(_1,'w')
	Weld(_1,pil,-1-_1.Size.z/2,0,0,PI,PI/2)
	Part(.1,6,_1.Size.z)Mesh(_1,'w')
	Weld(_1,pil,1+_1.Size.z/2,0,0,PI,-PI/2)
	
	p=Part(4,4,.1,'New Yeller',.75)
	New"Weld"{_P=_1;_PP={_1,kehys};C1=cfn(0,1,0)*ang(-md(15));C0=cfn(0,-2,0)}
	
	-- Part(2,2,2)Weld(_1,cassis,0,3)
	
	vs.MaxSpeed=200
	cassis:MakeJoints()
	-- mod:Destroy()
	wait(.24)
	eye:clo()
	repeat wait()until yel_snd.TimePosition>=.37
	eye:op'New Yeller'
	repeat wait() until yel_snd.IsPlaying==false
	eye:clo()
end
--Creating tool...

function green()
	local r=4
	eye:op'Lime green'
	holding=true
	orig_ws=character.Humanoid.WalkSpeed
	character.Humanoid.WalkSpeed=70
	while holding do
		for i=1,3 do
			local p=Part(.1,.1,.1,'Lime green',.5)_1.Material='Neon'
			_1.Anchored=true
			_1.CFrame=l(torso,mr(-r,r),mr(-2,r),mr(-r,r),mr(-4,4),mr(-4,4),mr(-4,4))
			DEBRIS:AddItem(_1,.1)
		end
		wait()
	end
	character.Humanoid.WalkSpeed=orig_ws
	eye:clo()
end

klist={
	fq=lazor;
	q=red;
	e=blue;
	r=yellow;
	t=function()for i,v in pairs(Workspace:children())do if v.Name=='M_CAR'then v:Destroy()end end end;
	cq=green;
	
}
equipped=false
attacking=false

pcall(function()player.Backpack['E.Y.E']:Destroy()end)
Tool=New"Tool"{_P=player.Backpack;Name='E.Y.E';RequiresHandle=false}
Tool.Equipped:connect(function(Mouse)
	equipped=true
	Mouse.KeyUp:connect(function(key)
		for i,v in pairs(klist)do
			if key == i:sub(1,1) and i:sub(2,2) == 'q' then
				holding=false
			end
		end
	end)
	Mouse.KeyDown:connect(function(key)
		if attacking then return end
		attacking=true
		for i,v in pairs(klist)do
			if key==i:sub(1,1) then
				v(Mouse)
			end
		end
		attacking=false
	end)
end)
Tool.Unequipped:connect(function()equipped=false end)
script.Name='riimu'