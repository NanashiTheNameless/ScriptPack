PI,TAU=math.pi,math.pi*2
md,mr,cfn,v3n,bcol=math.rad,math.random,CFrame.new,Vector3.new,BrickColor.new
ang=function(x,y,z)return CFrame.Angles(x or 0,y or 0,z or 0)end
player=game:service'Players'.LocalPlayer
mouse=player:GetMouse()
char=player.Character
torso=(char:FindFirstChild'Torso' or char:FindFirstChild'HumanoidRootPart')
numkp=NumberSequenceKeypoint.new
colkp=ColorSequenceKeypoint.new

DEBRIS=game:service'Debris'

udim=function(a,b,c,d)
if type(a)=='string'then
x,y=tostring(a):match('([%+%d%.%-%/%*]+),([%+%d%.%-%/%*]+)')
return UDim2.new(x or 0,x2 or 0,y or 0,y2 or 0)
else
return UDim2.new(a or 0,c or 0,b or 0,d or 0)
end end

pcall(function()char.Pat:Destroy()end)
m=Instance.new("Model",char)m.Name='Pat'

for i=0,10 do --quickuses
getfenv(0)['_'..i] = nil
end

colors={base=bcol'White'.Color;
second=bcol'Black'.Color;
ear=bcol'Pink'.Color;
tentacle=bcol'New Yeller'.Color}

Part = setmetatable({
	material = 'Plastic';
	cancollide = false;
	anchored = false;
	parent = m;
	color = "White"
},{
	__call = function(prefs,x,y,z,col,tr,an,cc,par)
		local part = Instance.new("Part")
		part.CanCollide = cc or prefs.cancollide
		part.Transparency = tr or 0
		part.Size = Vector3.new(x or 0, y or 0, z or 0)
		part.Anchored = an or prefs.anchored
		if col and typeof(col) == 'Color3' then
			part.Color = col
		else
			part.BrickColor = BrickColor.new(col or prefs.color)
		end
		for i,v in pairs(Enum.NormalId:GetEnumItems())do	
			part[v.Name..'Surface'] = 10
		end
		part.Parent = par or prefs.parent
		_1 = part
		return part
	end;
})

Mesh = function(parent,mesh_id,scale_x,scale_y,scale_z)
	local instance_name = (mesh_id == 'cyl' and 'CylinderMesh') or (mesh_id == 'bl' and 'BlockMesh') or 'SpecialMesh'	
	local mesh = Instance.new(instance_name)
	if instance_name == 'SpecialMesh' then
		if mesh_id:match('//') then
			mesh.MeshId = mesh_id
		else
			if mesh_id == 'sph' then
				mesh.MeshType = 3
			end
		end
	end
	mesh.Scale = Vector3.new(scale_x or 1,scale_y or 1, scale_z or 1)
	mesh.Parent = parent or nil
	_2 = mesh
	return mesh
end


C = function(a1,a2,...)
	local aa={...}
	local cf1=CFrame.new(a2 or 0,aa[1] or 0, aa[2] or 0) * CFrame.Angles(aa[3] or 0, aa[4] or 0, aa[5] or 0)
	if typeof(a1) == "Instance" then
		return a1.CFrame * cf1
	elseif typeof(a1) == "CFrame" then
		return a1 * cf1
	elseif typeof(a1) == "number" then
		return CFrame.new(a1 or 0,a2 or 0,aa[1] or 0) * CFrame.Angles(aa[2] or 0,aa[3] or 0,aa[4] or 0)
	else
		return CFrame.new(a1,a2,unpack(aa))
	end
end


Weld = function(p0,p1,c1,c0)
	if p0.Name~='Torso' then p0.Position=p1.Position end
	local weld=Instance.new("Motor")
	weld.Part0,weld.Part1,weld.C0,weld.C1 = p0,p1,c0 or CFrame.new(),c1 or CFrame.new()
	weld.Parent=p0
	weld.MaxVelocity=.1
	return weld
end
New = function(what)
	local obj,par
	if typeof(what) == 'Instance' then
		obj=what:Clone()
		par = what.Parent
	else
		obj=Instance.new(what)
	end
	if what=='Weld' then obj.Name='mujoint'end
	return function(bar)
		if bar and type(bar)=='table' then
			for arg,val in pairs(bar) do
				if arg=="_PP" then
					obj.Part0=val[1]
					obj.Part1=val[2]
				elseif arg=='_F'then
					val(obj)
				else
					if pcall(function()return obj[arg] end) then
						obj[arg]=val
					end
				end
			end 
			
			obj.Parent = par or (bar._P or nil)
		end		
		_4=obj
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

meshes={
	spike = {id="rbxassetid://1033714";scale=v3n(0.5, 1.5, 0.5)};
	diamond = {id='rbxassetid://9756362';scale=v3n(0.75, 0.75, 0.75)};
	squid = {id='rbxassetid://118262597'};
	ring = {id='rbxassetid://3270017'};
}

groups={}

--BUILD SQUID--
mp=Part(3.5,3,3.5)Mesh(_1,'cyl')_1.Anchored=true
New'Decal'{_P=mp;Texture='rbxassetid://119577774'}
_1.CFrame=C(20,10,0)
head=Part(3.5,2,3.5)Mesh(_1,'sph')
Weld(_1,mp,C(0,1.5))

horn=Part(1,1.5,1,'Pink')
Mesh(_1,meshes.spike.id)_2.Scale=_1.Size*meshes.spike.scale
Weld(_1,head,ang(0,0,md'60'),C(0,-1-horn.Size.y/2))
horn2=New(horn){}
-- Mesh(_1,meshes.spike.id)_2.Scale=_1.Size*meshes.spike.scale
Weld(horn2,head,ang(0,0,md'-60'),C(0,-1-horn.Size.y/2))

eye=Part(.1,.3,.1,'Cyan')Mesh(_1,'sph',1.5,1.7)_1.Material='Neon'
Weld(_1,mp,C(0,.65,0,0,md'10'),C(0,0,3.5/2))
eye2=New(eye){}
Weld(eye2,mp,C(0,.65,0,0,md'-10'),C(0,0,3.5/2))

bottom=Part(3.5,1,3.5,'Black')Mesh(_1,'cyl')
local a=ang(PI/2)
local b_m=Weld(bottom,mp,C(0,-1.5-.5)*a,a)
-- b_m.DesiredAngle=9e+009
b_cent=Part(1,1,1,'',1)Weld(b_cent,bottom)

for o=0,TAU,TAU/6 do
	local di=Part(.5,.5,.5)
	Mesh(_1,meshes.diamond.id) _2.Scale=meshes.diamond.scale*_1.Size
	Weld(_1,bottom,ang(0,o),C(0,0,3.5/2))
end

start_cf=mp.CFrame

rings={}
columns={}
groups.tentacle = {}

for i=1,20 do
	rings[i]={}
end
ps={}
for o=1,TAU,TAU/5 do
	local column={}
	local prev=Part(.25,.25,.25,'New Yeller')
	Weld(_1,bottom,C(0,-.5)*ang(0,o),C(1.25))
	for i=1,20 do
		local pp=Part(.25,.25,.25,'New Yeller')
		
		local m=Weld(_1,prev,C(0,-.125),C(0,.125))
		m.MaxVelocity=.025
		table.insert(rings[i],m)
		table.insert(column,m)
		prev=pp
		-- if i%20==0 then wait()end
	end
	columns[#columns+1] = column
	
end


--------------------
------FUNCTIONS----

function changecolors(what,new)
	local function iter(a)
		if a:IsA'Part' and a.Color==what then 
			a.Color=new
		end
		for i,v in pairs(a:children())do
			iter(v)
		end
	end
	iter(m)
end

function movering2(r2,r,a,int)
	if typeof(r) == 'table'then
		for i=r[1],r[2] do
			columns[r2][i].DesiredAngle=int and (a/(r[2]-r[1])) or a
		end
	else
		columns[r2][r].DesiredAngle=a		
	end
end

function movering(r,a,int)
	if typeof(r) == 'table'then
	for i=r[1],r[2] do
		for _,v in pairs(rings[i])do
			v.DesiredAngle=int and (a/(r[2]-r[1])) or a
		end
	end
	else
		for _,v in pairs(rings[r])do
			v.DesiredAngle=a
		end
	end
end

local keypoints={}
for i=0,1,.1 do
	local color=Color3.fromHSV(i,1,1)
	local kp=colkp(i,color)
	table.insert(keypoints,kp)
end

bubble_tex='http://www.roblox.com/asset/?id=171794095'

emitter=New"ParticleEmitter"{_P=b_cent;
	EmissionDirection='Bottom';
	Lifetime=NumberRange.new(.5,.6);
	-- Texture=bubble_tex;
	Speed=NumberRange.new(15);
	Color=ColorSequence.new(keypoints);
	VelocitySpread=15;
	Rate=100;
	Enabled=false;
	Size=NumberSequence.new{numkp(0,.5);numkp(1,0)};
}
play_bubble=false

function up()
	emitter.Enabled=false
	sound:Stop()
	movering({1,20},md'-180',1)
end
function down()
	emitter.Enabled=true
	if play_bubble then sound:Play() end
	movering({1,5},md'45',1)
	movering({5,20},-md'75',1)
	movering({17,20},md'25',1)
end
prev=0
state='up'

-- local curcam=Workspace.CurrentCamera

b_m.DesiredAngle=9e+009
b_m.MaxVelocity=0
--Faces--
faces={}
faces.happy="[[2, 1], [7, 1], [2, 2], [7, 2], [2, 3], [7, 3], [1, 6], [8, 6], [1, 7], [2, 7], [7, 7], [8, 7], [2, 8], [3, 8], [4, 8], [5, 8], [6, 8], [7, 8]]"
faces.sad="[[2, 1], [7, 1], [2, 2], [7, 2], [2, 3], [7, 3], [2, 6], [3, 6], [4, 6], [5, 6], [6, 6], [7, 6], [1, 7], [2, 7], [7, 7], [8, 7], [1, 8], [8, 8]]"
faces.xD="[[1, 1], [2, 1], [7, 1], [8, 1], [2, 2], [3, 2], [4, 2], [6, 2], [7, 2], [4, 3], [5, 3], [6, 3], [3, 4], [4, 4], [6, 4], [7, 4], [2, 5], [3, 5], [7, 5], [8, 5], [1, 7], [2, 7], [3, 7], [4, 7], [5, 7], [6, 7], [7, 7], [8, 7], [1, 8], [8, 8], [2, 9], [3, 9], [4, 9], [5, 9], [6, 9], [7, 9]]"
faces.angry="[[2, 1], [7, 1], [2, 2], [3, 2], [6, 2], [7, 2], [3, 3], [7, 3], [2, 4], [3, 4], [6, 4], [7, 4], [2, 8], [3, 8], [4, 8], [5, 8], [6, 8], [7, 8]]"
faces.bored="[[1, 1], [2, 1], [3, 1], [6, 1], [7, 1], [8, 1], [2, 2], [7, 2], [2, 3], [7, 3], [2, 4], [7, 4], [2, 7], [3, 7], [4, 7], [5, 7], [6, 7], [7, 7], [1, 8], [2, 8], [7, 8], [8, 8]]"
faces.normal="[[2, 1], [7, 1], [2, 2], [7, 2], [2, 3], [7, 3], [2, 8], [3, 8], [4, 8], [5, 8], [6, 8], [7, 8]]"
faces.heart="[[2, 1], [7, 1], [1, 2], [2, 2], [3, 2], [6, 2], [7, 2], [8, 2], [0, 3], [1, 3], [2, 3], [3, 3], [4, 3], [5, 3], [6, 3], [7, 3], [8, 3], [9, 3], [0, 4], [1, 4], [2, 4], [3, 4], [4, 4], [5, 4], [6, 4], [7, 4], [8, 4], [9, 4], [1, 5], [2, 5], [3, 5], [4, 5], [5, 5], [6, 5], [7, 5], [8, 5], [2, 6], [3, 6], [4, 6], [5, 6], [6, 6], [7, 6], [3, 7], [4, 7], [5, 7], [6, 7], [4, 8], [5, 8]]"

Debounces={
	Float = true;
	Updown=true;
	Motor=true;
}

bbg=New"BillboardGui"{_P=head;Adornee=head;Size=udim'5,5';StudsOffset=v3n(0,5,0)}
fr=New"Frame"{_P=bbg;Size=udim'1,1';BackgroundTransparency=1}

function changeFace(face)
	local bitmap=game:service'HttpService':JSONDecode(faces[face])
	fr:ClearAllChildren()
	for y=1,10 do
	for x=1,10 do
		-- print(x,y)
		local f=New"Frame"{_P=fr;Size=udim(1/10,1/10);Position=udim( (-1+x)*1/10,(-1+y)*1/10 );
			BackgroundColor=bcol'Pink';BackgroundTransparency=1;
		}
		for _,v in pairs(bitmap) do
			if v[1] and v[2] then
				if x-1==v[1] and y-1==v[2] then
					f.BackgroundTransparency=0
				end
			end
		end
	end
	end
	prevface=faces[face]
end

changeFace('normal')
-- m:Destroy()

--Music
local music=New"Sound"{_P=head;SoundId='rbxassetid://171794095';Volume=0.7;Looped=true}

sound=New"Sound"{_P=b_cent;SoundId='rbxassetid://399946420';Looped=true;Volume=.2;MaxDistance=30}
-- music:Play()

prevt=tick()
elaps=0

bpm=148

bps=bpm/60

-- movering({1,20},md'-90',1)

pcall(function()player.Backpack.control:Destroy()end)
pcall(function()char.control:Destroy()end)
local tool=New"Tool"{_P=player.Backpack;Name='control';RequiresHandle=false}

local laser_snd=New"Sound"{_P=mp;SoundId='rbxassetid://396350585';Looped=true;Volume=.4;Pitch=3}

-- Part(1,1,1)_1.Anchored=true _1.CFrame=C(torso,0,5,0)Mesh(_1,'rbxassetid://118262597')
function lazer()
	changeFace'happy'
	holding=true
	local laz=Part(.1,.1,.1,'Cyan',.5)_1.Anchored=true _1.Material='Neon'Mesh(_1,'cyl')
	local laz2=New(laz){}
	local sparkpart=Part(.1,.1,.1,'',1)_1.Anchored=true
	New"ParticleEmitter"{_P=sparkpart;
		Color=ColorSequence.new(bcol'Cyan'.Color);
		Lifetime=NumberRange.new(.05,.1);
		Rate=100;
		Speed=NumberRange.new(70);
		LightEmission=1;
		VelocitySpread=180;
		Size=NumberSequence.new{numkp(0,4);numkp(1,0)};	
		Transparency=NumberSequence.new{numkp(0,1);numkp(1,0)};
	}
	laser_snd:Play()
	mode='aim'
	while holding do

		--eye effect
		Spawn(function()
			local ef=Part(1,1,1,'Cyan')
			local ef2=Part(1,1,1,'Cyan')
			local msh=Mesh(ef,'sph',.5,0,.5)ef.Material='Neon'
			local msh2=Mesh(ef2,'sph',.5,0,.5)ef2.Material='Neon'
			Weld(ef,eye,C(0,0,-.1)*ang(-PI/2),ang(mr(-1,1),mr(-1,1),mr(-1,1)))
			Weld(ef2,eye2,C(0,0,-.1)*ang(-PI/2),ang(mr(-1,1),mr(-1,1),mr(-1,1)))
			
			local leng=mr(.25,1)
			for i=0,1,.25 do
				msh.Scale=v3n(.5*(1-i),leng*i,.5*(1-i))
				msh.Offset=v3n(0,i*leng/2,0)
				msh2.Scale=msh.Scale
				msh2.Offset=msh.Offset
				wait()
			end
			ef:Destroy()ef2:Destroy()
		end)
		local pos1,pos2=C(eye).p,C(eye2).p
		local pos3=pos1:lerp(pos2,.5)
		local epos=mouse.hit.p
		local mag,mag2=(pos1-epos).magnitude,(pos2-epos).magnitude
		sparkpart.CFrame=cfn(epos)
		laz.Size=v3n(.1,mag,.1)
		laz.CFrame=C(C(pos1,epos),0,0,-mag/2)*ang(PI/2)
		laz2.Size=v3n(.1,mag2,.1)
		laz2.CFrame=C(C(pos2,epos),0,0,-mag/2)*ang(PI/2)
		if laser_snd.TimePosition>1 then
			laser_snd.TimePosition=0
		end
		
		local prev=nil
		--Sparks
		for i=0,1,.25 do
			local pos=pos3:lerp(epos,i)+v3n(mr(-2,2),mr(-2,2),mr(-2,2))
			if i==1 then
				pos=epos
			end
			local mag=(pos-(prev or pos1)).magnitude
			local l=Part(.1,.1,mag,'New Yeller',.75)_1.Anchored=true
			DEBRIS:AddItem(l,.01)
			l.CFrame=C(C(prev or pos3,pos),0,0,-mag/2)
			prev=pos
		end
		--do magic---		
		if mouse.Target and (not mouse.Target:IsDescendantOf(char)) then		
			local hum=mouse.Target.Parent:FindFirstChild"Humanoid"
			-- print(hum)
			if hum then
				if not hum:FindFirstChild'taggo'then							
					local tag=New"Folder"{_P=hum;Name='taggo'}
					local invp=Part(1,1,1)
					local sm=Mesh(_1,'rbxassetid://118262597',13,10,13)
					_2.TextureId='rbxassetid://118262690'
					_1.Parent=tag
					local w=Weld(invp,hum.Parent.Head)
					Spawn(function()
						local ws=hum.WalkSpeed
						hum.WalkSpeed=0
						local b=false
						repeat							
							b=not b
							if hum then hum:TakeDamage(.2) end
							sm.Scale=v3n(13,10,13)*(b and 1 or .9)
							wait()
						until tag.Parent==nil
						hum.WalkSpeed=ws
					end)
					DEBRIS:AddItem(tag,3)
				end
			end
		end
		wait()
	end
	laser_snd:Stop()
	mode='normal'
	laz:Destroy()laz2:Destroy()sparkpart:Destroy()
	changeFace'normal'
end
--
local list={'happy','angry','xD','sad','bored','normal','heart'}
local beatc=0
mode='normal'
-- music:Play()


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

function findhums(pos2,r)
	pos = (typeof(pos2)=='CFrame'and pos2 or cfn(pos2))
	local c1,c2=pos*cfn(-r*5,0,-r*5),pos*cfn(r*5,0,r*5)
	local region=Region3.new(
		v3n(math.min(c1.X,c2.X),math.min(c1.Y,c2.Y),math.min(c1.Z,c2.Z)),
		v3n(math.max(c1.X,c2.X),math.max(c1.Y,c2.Y),math.max(c1.Z,c2.Z))
	)
	local parts = Workspace:FindPartsInRegion3(region,char)
	local pls={}
	for _,v in pairs(parts)do
		local hum=v.Parent:FindFirstChildOfClass"Humanoid"
		if hum and not isIn(hum,pls) then
			-- print(hum)
			local torso=hum.Torso
			if torso and (torso.Position-pos.p).magnitude<=r then
				pls[#pls+1]=hum
			end
		end
	end
	return pls
end

function rest()
	Debounces.Updown=false
	Debounces.Motor=false
	b_m.MaxVelocity=0
	movering({1,20},-PI-PI/4,1)
	floatp=function()return C(torso,0,5):lerp(mp.CFrame,.4)end
end
	

tool.Deactivated:connect(function()holding=false end)
tool.Activated:connect(lazer)
tool.Unequipped:connect(function()holding=false end)

floatp=nil

while true do --Main Loop
	local _,t=wait()
	local mult=bps
	local delta=tick()-prevt
	elaps = elaps+delta
	beatc=beatc+1
	if elaps > 1/bps then
		-- changeFace(list[mr(#list)])
		elaps=elaps-1/bps
	end
	
	--music
	local scale=4+((music.PlaybackLoudness/512)*5)
	bbg.Size=udim(scale,scale)
	
	-- bp.position=C(start_cf,0,sine).p
	--Calcucate waves
	local sine=math.sin(t*mult)*2.5	
	local n=sine-prev

	local mousecf=C(C(mp).p,mouse.hit.p)
	local lookatcf = mode=='normal' and (C(torso)-C(torso).p) or (mousecf-mousecf.p)
	
	start_cf=(C(cfn(C(torso).p+C(torso).lookVector*-6),0,15)*lookatcf):lerp(mp.CFrame,.5)	
	
	local si,co=math.sin(t*5),math.cos(t*5)
	
	if Debounces.Float then --do the action
		if Debounces.Motor then
			b_m.MaxVelocity=(-1+math.sin(t*mult))*.1
		end
		local fl=nil
		if floatp then
			if typeof(floatp)=='function' then
				fl = floatp()
			else
				fl = floatp()
			end
		end		
		mp.CFrame=(fl or C(start_cf,0,sine))
	
		--Up and down movement
		if Debounces.Updown then
		if n>0 then
			if state=='up'then
				-- b_m.DesiredAngle=9e+009*-1
				down()
				state='down'
			end
		else
			if state=='down'then
				state='up'
				-- b_m.DesiredAngle=9e+009*1
				-- sound2:Play()
				up()
			end
		end
		end
	end
	sound.Pitch=.75+(mr(-1,1)*(mr()*.5))
	prev=sine
end


