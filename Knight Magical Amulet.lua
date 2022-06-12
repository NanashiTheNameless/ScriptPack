--updated knight yo~

--sorry ppatta ):


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
print'rannering'

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
numkp=NumberSequenceKeypoint.new
colkp=ColorSequenceKeypoint.new
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

function forcePose(hum,lim)
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
	if lim then
	for i,v2 in pairs(limbs)do
		if not isIn(i,lim) and type(v2)=='table' then
			-- print(i)
			v2.w.Part1:Destroy()
			limbs[i]=nil
		end
	end end
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

--Equipment...


--Necklace...
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
--/Necklace

--Bag


bag=Part(1,1,1,'Brown')Mesh(bag,'rbxassetid://25921854',1.5,1.5,1.5)
_3.TextureId='rbxassetid://3525940'
Weld(bag,torso,-1.15,-1.15,-.3,md'-25',0,md'-25')
--/Bag
--/Equipment

--Animation stuff
tokill={}
RS:BindToRenderStep('Anim',2000,function() --Mainloop
	for i,v in pairs(Animations)do --execute animations
		v:Exec()
	end
	for i,v in pairs(tokill)do
		if v.Count>0 then
		pcall(function()v.pl.Character:BreakJoints()v.Count=v.Count-1 end)
		else
		table.remove(tokill,i)end
	end
end)

do
local c0 = {
RightArm = cfn(1,0.5,0),
LeftArm = cfn(-1,0.5,0),
RightLeg = cfn(1,-1,0),
LeftLeg = cfn(-1,-1,0),
RootJoint = cfn(0,0,0),
Neck = cfn(0,1,0)    
}
local c1 = {
RightArm = cfn(-0.5,0.5,0),
LeftArm = cfn(0.5,0.5,0),
RightLeg = cfn(0.5,1,0),
LeftLeg = cfn(-0.5,1,0),
RootJoint = cfn(0,0,0),
Neck = cfn(0,-0.5,0) 
}

Animations={}
Joints={}

Joint={
new=function(name,weld,c0,c1)
	local joint={
		w=weld;
		part1=weld.Part1;
		n_c0=(c0 or weld.C0);
		n_c1=(c1 or weld.C1);
		name=name;
		previous=weld.C0;
		_can_kf=true;		
	}
	joint.keys={};
	function joint:revertToOrig()
		self.w.C0=self.n_c0
		self.w.C1=self.n_c1
	end
	function joint:NewAnim(anim)
		self.keys[anim]={}
	end
	setmetatable(joint,{
		__mul=function(ta,val)
			return ta.n_c0*val
		end;
	})

	getfenv()[name]=joint
	Joints[name]=joint
	return joint
end
}
weld_container=New"Folder"{_P=Main}

Joint.new('rw',New"Weld"{_P = weld_container;_PP={nil;rarm};
	C0=c0.RightArm; C1=c1.RightArm})

function eq()
Joints.rw.w.Part0=torso
end
function uneq()
Joints.rw.w.Part0=nil
end

Styles={
	Linear = function(alpha)
		return alpha
	end;
	easeInSine = function(alpha)
		local alpha = (1-math.cos(alpha*(math.pi/2)))
		return alpha
	end;
	easeOutSine = function(alpha)
		alpha = math.sin(alpha*(math.pi/2))
		return alpha
	end;
	easeInOutSine = function(alpha)
		alpha = alpha*2
		if alpha < 1 then
			return 0.5*Styles["easeInSine"](alpha)
		else
			return 0.5*Styles["easeOutSine"](alpha-1)+.5
		end
	end;
	
	easeInQuadratic = function(alpha)
		alpha = alpha^2
		return alpha
	end;
	easeOutQuadratic = function(alpha)
		_alpha = 1-alpha
		alpha = 1-_alpha*_alpha
		return alpha
	end;
	easeInOutQuadratic = function(alpha)
		alpha = alpha*2
		if alpha < 1 then
			return 0.5*Styles["easeInQuadratic"](alpha)
		else
			return 0.5*Styles["easeOutQuadratic"](alpha-1)+0.5
		end
	end;
	
	easeInCubic = function(alpha)
		alpha = alpha^3
		return alpha
	end;
	easeOutCubic = function(alpha)
		alpha = 1-alpha
		return 1-alpha^3
	end;
	easeInOutCubic = function(alpha)
		alpha = alpha*2
		if alpha < 1 then
			return 0.5*Styles["easeInCubic"](alpha)
		else
			return 0.5*Styles["easeOutCubic"](alpha-1)+.5
		end
	end;
}
function Interpolate(Type,p0,p1)
    local Data = {Style = Styles[Type],PointA = p0,PointB = p1}
    return function(Perc)
        local Perc = Data.Style(Perc)
        return Data.PointA:lerp(Data.PointB,Perc)
    end
end
-- Interpolate('easeInSine',CFrame.new(0,0,0),CFrame.new(10,10,10))(.5)
-- error('script end')
function NewLimbAnim(anim)
	for _,v in pairs(Joints)do
		v:NewAnim(anim)
	end
end

function reset()
	local cc=newAnim(.5,false,_,true){
		[.5]=init;
	}cc:Play()cc:Wait()cc:Stop()
	for i,v in pairs(Joints)do v:revertToOrig() end
	-- for i,v in pairs(Animations)do v:Stop()end
end

words={
love={"I love you", "Gimme a hug", "You're gonna love me", "Love is \nall we have"}
}


function wordParticles(part,category,color,size,speed)
	local list=words[category]
	local bbg=New"BillboardGui"{_P=part;Adornee=part;Size=udim'4,4';AlwaysOnTop=true;}
	while wait(speed/4)do
		local tl=New"TextLabel"{_P=bbg;Size=udim(0,0);
			Text=list[#list];Position=udim(mr(),mr());FontSize=12;
			TextColor3=bcol(color).Color;TextTransparency=.6}
		
		tl:TweenSizeAndPosition(udim'0,0',udim(math.random(),math.random()),'Out','Quad',speed,false,function()
			tl:Destroy()end)
	end
end

function newAnim(lenght,loop,style,strange) --Epic wrapper for epic skids
	local t_len=0
	for i,v in pairs(Animations)do t_len=t_len+1 end
	local name='anim_'..tostring(t_len)
	-- NewLimbAnim(name)
	for _,v in pairs(Joints)do
		v:NewAnim(name)
	end
	local Anim={
		Span=lenght;Loop=false;
		Location=name;
		Count=0;stay=true;
		Keyframes={}; --Aliases
		Playing=false;Loop=false;
		reset_on_loop=true;
		Name=name;
	}
	for i,v in pairs(Joints)do
		Anim.Keyframes[i]=v
	end
	function Anim:Play()
		self.Playing=true
		self.Count=0
	end
	function Anim:Remove()
		Animations[self.Name]=nil
	end
	function Anim:Stop()
		self.Playing=false
		self.Count=0
		-- RevertAll()
	end
	local Time=tick()
	function Anim:Add(Time,limb,c0,c1)
		if Time>self.Span then error"one simply does not travel to future..."end
		local Tab={TimeOfAction=Time,Joint=limb,frame={C0=c0 or self.Keyframes[limb].n_c0,C1=c1 or self.Keyframes[limb].n_c1}}
		table.insert(self.Keyframes[limb].keys[self.Location],Tab)
		table.sort(self.Keyframes[limb].keys[self.Location],function(a,b) return a.TimeOfAction < b.TimeOfAction end)
	end
	function Anim:Exec(smooth)
		local DT=tick()-Time
		Time=tick()
		local First,Current,Next
		if self.Playing then --Check if anim can play
			self.Count=self.Count+DT --it goes up
			if self.Loop then --Reset when at end if loop
				if self.Count >= self.Span then
					self.Count=0
					if self.onCycle then
						self.onCycle(self)
					end
				end
			elseif not self.Loop then
				if self.Count >= self.Span then
					self.Count=self.Span
					
					if self.onFinish then
						self.onFinish(self)
					end	
				end
			end
			for i,v in pairs(self.Keyframes) do
				if v._can_kf then
				for i2,v2 in pairs(v.keys[self.Location]) do --cframes are stored in joints. self.Location is the name of animation
					First,Current,Next = v.keys[self.Location][1],v2,v.keys[self.Location][i2+1]
					if Next ~= nil and self.Count >= Current.TimeOfAction and self.Count <= Next.TimeOfAction then
						local Dis = (Next.TimeOfAction-Current.TimeOfAction)
						local Perc = (self.Count-Current.TimeOfAction)/Dis
						v.w.C0 = Interpolate(style or 'Linear',Current.frame.C0,Next.frame.C0)(Perc)
						v.w.C1 = Interpolate(style or 'Linear',Current.frame.C1,Next.frame.C1)(Perc)						
						v.previous = v.w.C0
					end
				end end
			end
		end
	end
	Animations[name]=Anim
	local a=Anim

	if loop~=nil then
		a.Loop=loop
	end
	
	return function(kfs)
		if not kfs[0] then
			local t={}
			for j,v in pairs(Joints) do				
				t[j]=v.previous*(v.n_c0:inverse())
			end
			kfs[0]=t
		end
		a.kfl=kfs
		
		function a:last()
			local n,o=-1,nil
			for i,v in pairs(self.kfl)do
				if i>n then
					n=i o=v
					if type(o)=='number' then
						o=self.kfl[o]
					end
				end
			end
			return o
		end
		function Anim:Wait(num)
			repeat wait()until self.Count>=(num or self.Span)
		end
		if lenght==0 then
			for i,v in pairs(kfs) do
				a.Span=i
			end

		end
		for tim,kf in pairs(kfs) do

			local kk=kf
			if type(kf) =='number'then
				kk=kfs[kf]
			end
			
			for j,v in pairs(kk) do
			if not strange then
				a:Add(tim,j, (v == 0 and Joints[j].n_c0 or (Joints[j].n_c0 * v) ))
			else
				a:Add(tim,j, (v == 0 and Joints[j].n_c0 or v ))
			end
			end
		end
		return Anim
	end
end

end --Animation stuf... END

lazor_snd=New"Sound"{_P=Main;SoundId='rbxassetid://147627083';Pitch=.75;Volume=.8}

found=false
ra=25

function rainbow()
	holding=true
	local kfs={}
	local kfs2={}
	local b=true
	for i=0,1,.1 do
		b=not b
		kfs[#kfs+1]=numkp(i,(b and i*5 or (i*5)/2))
	end
	while holding do
	eye:op"White"
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
					
					local pp=Part(.1,.1,.1,'',1)--_1.Anchored=true
					_1.CFrame=cfn(l(r,0,-mag/2).p)
					
					CJ=cfn(pp.Position)
					New"Weld"{_P=pp;_PP={pp,obj};C0=pp.CFrame:inverse()*CJ;
					C1=obj.CFrame:inverse()*CJ}

					New"ParticleEmitter"{_P=pp;
						Size=NumberSequence.new(kfs);
						Transparency=NumberSequence.new{numkp(0,0);numkp(1,1)};
						Color=ColorSequence.new(r.Color);
						VelocitySpread=180;
						LightEmission=1;
						Lifetime=NumberRange.new(.25,2);
						Speed=NumberRange.new(1,4);
					}
						
						
					DEBRIS:AddItem(pp,1)
					
					local hum=recurseHum(obj)
					if hum then hum:TakeDamage(-5)

					end
					
					DEBRIS:AddItem(r,.1)
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

function laser(st,en,r)
	total_mag=(st-en).magnitude
	prev=cfn(st)
	local mo=New"Model"{_P=Main}
	set_parent=mo
	local pm={-1,1}
	for i=0,1,.1 do
		local pos=cfn(st):lerp(cfn(en),i)
		local pos2=pos*cfn(pm[mr(#pm)]*r,0,pm[mr(#pm)]*r)
		local mag=(prev.p-pos2.p).magnitude
		local laz=Part(.1,mag,.1,'Cyan',.5)_1.Anchored=true _1.Material='Neon'
		Mesh(_1,'bl',.5,1,.5)
		_1.CFrame=(cfn(prev.p,pos2.p)*cfn(0,0,-mag/2))*ang(PI/2)
		if i>.9 then
			_1.CFrame=(cfn(prev.p,pos2.p)*cfn(0,0,-mag/2))*ang(PI/2)
		end
		prev=pos2
	end
	set_parent=nil
	DEBRIS:AddItem(mo,.025)
end

red_snd=New"Sound"{_P=Main;SoundId='rbxassetid://163826750'}
function red()
	eye:op'Really red'
	local bl=Part(1,1,1,'Black',.75)_1.Material='Neon'
	local bl2=Part(1,1,1,'Bright red',.5)_1.Material='Slate'
	Weld(bl,eye.center)
	Weld(bl2,eye.center)
	local msh=Mesh(bl,'s')
	local ra=20
	local msh2=Mesh(bl2,'s')
	red_snd:Play()
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
				elseif v2:IsA'BaseScript' and not isIn(v2.Name,{'Animate','Health','Sound'})then
					v2.Disabled=true
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

blue_snd=New"Sound"{_P=Main;SoundId='rbxassetid://314580397'}

function blue()
	eye:op'Bright blue'
	local poses={}
	
	local ring=Part(1,1,1,'Bright blue')_1.Anchored=true _1.CFrame=l(torso,0,-2,0,PI/2)
	local msh=Mesh(_1,mesh_ids.ring)
	Spawn(function()
		for i=0,1,.05 do
			msh.Scale=v3n(i*40,i*40,1)
			ring.Transparency=i
			wait()
		end
		ring:Destroy()
	end)
	blue_snd:Play()
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

function green()
	local r=4
	eye:op'Lime green'
	holding=true
	orig_ws=character.Humanoid.WalkSpeed
	character.Humanoid.WalkSpeed=80
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

function black()
	for i,v in pairs(findHum(l(torso).p,10))do
	if v.Parent~=character then
		local pl=game.Players:GetPlayerFromCharacter(v.Parent)
		if pl then
			tokill[#tokill+1]={pl=pl;Count=4}
		end
	end
	end
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
	vs.MaxSpeed=7222

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
	
	--Lights...
	kehys=Part(4,2,.1)Weld(_1,cassis,0,.75/2+1,3-.05)
	Part(1,1,.1,'New Yeller')Weld(_1,kehys,-1,0,.1)_1.Material='Neon'
	Part(1,1,.1,'New Yeller')Weld(_1,kehys,1,0,.1)_1.Material='Neon'
	
	
	pil=Part(2,6,.1)Weld(_1,cassis,0,.75/2+_1.Size.y/2,-2)
	roof=Part(5,4,.1)New"Weld"{_P=_1;_PP={_1,pil};C1=cfn(0,pil.Size.y/2,0)*ang(-PI/2);C0=cfn(0,_1.Size.y/2,0)}
	local p=Part(5,4-2,.5)Weld(_1,roof,0,0,roof.Size.z/2+.25)
	roof=p
	local p2=Part(5,p.Size.z,1)Mesh(_1,'w')
	Weld(_1,p,0,p.Size.y/2+p2.Size.z/2,0,PI/2)
	
	local p2=Part(5,p.Size.z,1)Mesh(_1,'w')
	Weld(_1,p,0,-(p.Size.y/2+p2.Size.z/2),0,PI/2,PI)
	local seat=New"Seat"{_P=mod;Size=v3n(1,.2,1);BrickColor=bcol'Black';CanCollide=false}
	
	Weld(seat,roof,0,0,seat.Size.y/2+roof.Size.z/2,-PI/2,0,PI)
	
	Part(.1,6,1.5)Mesh(_1,'w')
	Weld(_1,pil,-1-_1.Size.z/2,0,0,PI,PI/2)
	
	Part(.1,6,_1.Size.z)Mesh(_1,'w')
	Weld(_1,pil,1+_1.Size.z/2,0,0,PI,-PI/2)
	
	p=Part(4,4,.1,'New Yeller',.75)
	New"Weld"{_P=_1;_PP={_1,kehys};C1=cfn(0,1,0)*ang(-md(15));C0=cfn(0,-2,0)}
	
	-- Part(2,2,2)Weld(_1,cassis,0,3)
	
	set_collide=true

	vs.MaxSpeed=80
	mod:MakeJoints()
	set_collide=true
	
	set_parent=nil
	set_collide=false
	
	wait(.24)
	eye:clo()
	repeat wait()until yel_snd.TimePosition>=.37
	eye:op'New Yeller'
	repeat wait() until yel_snd.IsPlaying==false
	eye:clo()
end

poses={
pickup={rw=cfn(0,.75,-.5)*ang(md'30',0,md'-60')*cfn(0,-1,0)};
}

function reset()
for _,v in pairs(Joints)do
	v.beg=v.w.C0
end
for i=0,1,.1 do
	for _,v in pairs(Joints)do
		v.w.C0=v.beg:lerp(v.n_c0,i)
	end
	wait()
end
end

init={rw=0}
heart_snd=New"Sound"{_P=Main;SoundId='rbxassetid://130785805'}
heart_snd2=New"Sound"{_P=Main;SoundId='http://www.roblox.com/Asset/?id=11945266';Pitch=.5}
heart_snd3=New"Sound"{_P=Main;SoundId='rbxassetid://138014729';Name='Hoo'}
function white()
eq()
pickup.Count=0
pickup:Play()
repeat wait() until pickup.Count>=.5
repeat
	local bullet=Part(1,1,1,'White')
	local snd2=heart_snd2:Clone() snd2.Parent=bullet
	local cl=heart_snd:Clone()cl.Parent=Main cl:Play()
	DEBRIS:AddItem(cl,1)
	local msh=Mesh(_1,mesh_ids.heart,.5,.5,.5)
	_1.CFrame=cfn(l(rarm,0,-1.25).p)*(l(torso)-l(torso).p)
	New"BodyVelocity"{_P=_1;velocity=l(torso).lookVector*30}
	DEBRIS:AddItem(_1,2)
	local con
	con = bullet.Touched:connect(function(hit)
		if hit:IsDescendantOf(character)then return end
		
		local hum=recurseHum(hit)
		if hum then
			for _,v in pairs(findHum(l(hum.Torso).p,40))do
				if v ~= hum then					
					v:MoveTo(l(hum.Torso).p)
					if v.Parent~=character then
					local poo=forcePose(v,{'r_arm','l_arm'}){
						l_arm=ang(PI/2);
						r_arm=ang(PI/2);
					}
					Spawn(function()wait(2)poo:revert()end)
					end
					if not v.Torso:FindFirstChild'Hoo'then
						local heart=Part(1,1,1,'White')
						Weld(_1,v.Torso,0,4)local msh=Mesh(_1,mesh_ids.heart,0,0,0)
						local cl=heart_snd3:Clone()cl.Parent=v.Torso
						cl:Play()
						Spawn(function()
						for i=0,1,.1 do
							msh.Scale=v3n(.9*i,.9*i,.9*i)
							wait()
						end
						heart:Destroy()end)
						DEBRIS:AddItem(cl,1)
					end
					
				
				end
			end
		end
		snd2:Play()
		local hearts={}
		con:disconnect()
		for i=1,4 do
			local mini=Part(.1,.1,.1,'White',.5)Mesh(_1,mesh_ids.heart,.25,.25,.25)
			_1.CFrame=l(bullet,mr(-3,3),mr(-3,3),mr(-3,3))
			_1.CFrame=cfn(mini.Position,bullet.Position)
			New"BodyVelocity"{_P=_1;
			-- velocity=(l(_1)*ang(mr(-5,5),mr(-5,5),mr(-5,5))).lookVector*20;
			velocity=cfn(_1.Position,bullet.Position).lookVector*-20;
			}
			table.insert(hearts,mini)
		end
		bullet.Anchored=true
		for i=0,1,.1 do
			Edit(hearts){Transparency=i}
			msh.Scale=v3n(.5,.5,.5)+v3n(i*4,i*4,i*4)
			bullet.Transparency=i
			wait()
		end
		bullet:Destroy()
		for _,v in pairs(hearts)do v:Destroy()end
	end)
	wait(.1)
until pickup.Count>=pickup.Span
pickup:Stop()
for _,v in pairs(Joints)do
	v.beg=v.previous
end
for i=0,1,.1 do
	for _,v in pairs(Joints)do
		v.w.C0=v.beg:lerp(v.n_c0,i)
	end
	wait()
end
uneq()
end

local function doSine(a,b,c)
return math.sin((tick()*a)+b)*c
end

function shake()
	eq()
	-- seq.Count=0
	-- seq:Wait(.5)
	-- local pp=Part(1,1,1)
	-- pp.CFrame=torso.CFrame
	-- _1.Anchored=true
	local stcf=rw.n_c0*ang(md(90))
	local victims=findHum(torso.Position,10,character)
	if #victims>0 then
	local victim=victims[1].Torso
	holding=true
	while holding do
		rw.w.C0=stcf*ang(doSine(20,1,md'45')/2,0,doSine(10,100,md'45')/2)
		local center=cfn(l(rarm,0,-7).p)
		victim.CFrame=center
		wait()
	end
	reset()
	end
	uneq()
end

knife_snd=New"Sound"{_P=Main;SoundId='http://www.roblox.com/asset?id=153647529'}
knife_snd2=New"Sound"{_P=Main;SoundId='http://www.roblox.com/Asset/?id=10756118';Pitch=3}
function sword()
	eq()
	seq:Play()
	seq:Wait(.5)
	local knife=Part(.4,3,.7)Mesh(knife,'rbxassetid://121944778')_3.TextureId='rbxassetid://121944805'
	local kw=Weld(_1,rarm,0,-1.1,-1,-PI/2)
	local cl=New(knife){_P=Main;BrickColor=bcol'New Yeller';
		Transparency=.75;Reflectance=.25}_4.Mesh.Scale=v3n(1.01,1.01,1.01)
	_4.Mesh.TextureId=''_4:BreakJoints()
	Weld(_4,knife)
	local snd=New(knife_snd2){_P=knife;Looped=true}
	Spawn(function() --sparks	
	repeat laser(l(bag).p,knife.Position,1)wait()until knife.Parent==nil	
	end)
	seq:Wait(1.3)
	knife_snd:Play()
	local bv=New"BodyVelocity"{_P=knife;velocity=l(torso).lookVector*50}
	local bg=New"BodyGyro"{_P=knife;maxTorque=v3n(1,1,1)*9e+009;cframe=torso.CFrame*ang(-PI/2)}
	knife.Touched:connect(function(hit)
		if hit:IsDescendantOf(character)then return end
		local r=md'65'
		local hum=recurseHum(hit)
		if hum and hum.Parent~= character then
			Spawn(function()
				snd:Play()
				local tim=tick()
				repeat
					hum.Torso.CFrame=hum.Torso.CFrame*ang(mr(-r,r)*mr(),mr(-r,r)*mr(),mr(-r,r)*mr())		
					wait()
				until (tick()-tim)>3
				snd:Stop()
			end)
		end
		bg:Destroy()bv:Destroy()
		local CJ=cfn(knife.Position)
		New"Weld"{_P=knife;_PP={knife,hit};C0=l(knife):inverse()*CJ;
			C1=l(hit):inverse()*CJ
		}
	end)
	DEBRIS:AddItem(knife,2)
	
	kw:Destroy()
	knife.CFrame=l(torso,1.5,.5,-1.1,-PI/2)
	seq:Wait()
	uneq()
end

pickup=newAnim(1){
	[0]=init;
	[.5]=poses.pickup;
	[1]={rw=cfn(.3,.3,-.5)*ang(md'120',0,md'60')}
}
seq=newAnim(2){
	[0]=init;
	[.5]=poses.pickup;
	[1.25]={rw=ang(md'170',0,0,md'75')};
	[1.3]={rw=ang(md'90')};
	[1.4]={rw=ang(md'-45')};
	[2]=init;
}

klist={
	fq=rainbow;
	q=red;
	e=blue;
	r=yellow;
	g=white;
	t=function()for i,v in pairs(Workspace:children())do if v.Name=='M_CAR'then v:Destroy()end end end;
	cq=green;
	zq=sword;
}
equipped=false
attacking=false

pcall(function()player.Backpack['E.Y.E']:Destroy()end)
Tool=New"Tool"{_P=player.Backpack;Name='E.Y.E';RequiresHandle=false}
Tool.Equipped:connect(function(Mouse)
	-- eq()
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