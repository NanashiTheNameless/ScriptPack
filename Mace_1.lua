ply = game.Players.LocalPlayer
char = ply.Character
torso = char.Torso
cfn,ang,v3n,ud2n,V2,bcol = CFrame.new,CFrame.Angles,Vector3.new,UDim2.new,Vector2.new,BrickColor.new
mcos,msin,mtan,md,mr = math.cos,math.sin,math.tan,math.rad,math.random
debris = game:service'Debris'
floatforce = 196.25
pcall(function() char.HAWK:Destroy() end)
m = Instance.new("Model",char) m.Name = 'HAWK'
script.Parent = m
local mouse = ply:GetMouse()


rs,ls = torso['Right Shoulder'],torso['Left Shoulder']
rarm = char["Right Arm"]
larm = char["Left Arm"]
rleg = char["Right Leg"]
lleg = char["Left Leg"]

udim = function(a,b) return UDim2.new(a,0,b,0) end
bcol = function(a) return BrickColor.new(a) end

for i = 0,1 do --------UTILITIES START-------
function fade(a,b,c,d)
	if type(a) ~= 'table' then
		for i = b,c,d do
			a.Transparency = i
			wait()
		end
	else
		for i = b,c,d do
			for _,v in pairs(a) do
				v.Transparency = i
			end
			wait()
		end
	end
end

function FilterTab(tab,what)
Result = {}
local function filter2(a)
	if type(a) == 'string' then
		return a
	else
		return a.className
	end
end

for i,v in pairs(tab) do
	if type(what) ~= 'table' then
		if v:IsA(filter2(what)) then
			table.insert(Result,v)
		end
	else
		for i,q in pairs(what) do
			if v:IsA(filter2(q)) then
				table.insert(Result,v)
			end
		end
	end
end
return Result
end


function colorslide(object,targetcolor,bool) 
local function a() 
	if type(object) ~= 'table' then
		rgb1,rgb2 =object.Color, BrickColor.new(targetcolor).Color
		for i = 0,1,.2 do
			object.Color = Color3.new(
				(rgb1.r * (1-i))+(rgb2.r * i),
				(rgb1.g * (1-i))+(rgb2.g * i),
				(rgb1.b * (1-i))+(rgb2.b * i)
			)
		wait()
		end
		object.Color = rgb2
	else
		rgb1,rgb2 = object[1].Color,BrickColor.new(targetcolor).Color
		for i = 0,1,.2 do
			for _,v in pairs(object) do
				v.Color = Color3.new(
					(rgb1.r * (1-i))+(rgb2.r * i),
					(rgb1.g * (1-i))+(rgb2.g * i),
					(rgb1.b * (1-i))+(rgb2.b * i)
				)
			end
			wait()
		end
		for _,v in pairs(object) do v.Color = rgb2 end
	end	
end
if bool then T.C(a) else a() end
end

function l(a,x,y,z,b)
	if b == nil then
		return a.CFrame*cfn(x,y,z)
	else
		return a*cfn(x,y,z)
	end
end
function zeero(mot,a) local oldvelocity = mot.MaxVelocity  mot.MaxVelocity = 1.7E+308
	if a == nil then mot.DesiredAngle = 0
	else mot.DesiredAngle = a
	end
	while mot.DesiredAngle ~= mot.CurrentAngle do wait() end
	mot.MaxVelocity = oldvelocity
end
function ventta(mot)
	while mot.DesiredAngle ~= mot.CurrentAngle do wait() end
end

function genNew(ClassName, Parent, Properties)
        local nObj = Instance.new(ClassName, Parent)
        if Properties["FormFactor"] then
                nObj["FormFactor"] = Properties["FormFactor"]
        end
        for Prop, Value in pairs(Properties) do
                nObj[Prop] = Value
        end
        return nObj
end

T = {["P"] = function(x,y,z,color,transparency,cancollide,anchored,parent,typee)
		if typee == 'wedge' then
			c = Instance.new("WedgePart",m)
			elseif typee == 'seat' then
				c = Instance.new("Seat",m)
			elseif typee == 'vseat' then
				c = Instance.new("VehicleSeat",m)
			else
				c = Instance.new("Part",m)
		end
		c.TopSurface,c.BottomSurface = 0,0
		c.Locked = true
		c.formFactor = "Custom"
		c.Size = Vector3.new(x,y,z)
		if color ~= "random" then
			c.BrickColor = BrickColor.new(color)
			else c.BrickColor = BrickColor:random()
		end
		c.Transparency = transparency
		c.CanCollide = cancollide
		if anchored ~= nil then c.Anchored = anchored end
		if parent ~= nil then c.Parent = parent end
		return c
	end
	,
	["C"] = function(func) coroutine.resume(coroutine.create(func)) end
	,
	["W"] = function(part0,part1,x,y,z,rx,ry,rz,parent)
		w = Instance.new("Motor",m)
		if parent ~= nil then w.Parent = parent end
		w.Part0,w.Part1 = part0,part1
		w.C1 = CFrame.new(x,y,z) * CFrame.Angles(rx,ry,rz)
		w.MaxVelocity = .1
		return w
	end
	,
	["BG"] = function(parent)
		local c = Instance.new("BodyGyro",parent)
		c.P = 20e+003
		c.cframe = parent.CFrame
		c.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
		return c
		end
	,
	["BP"] = function(parent,position)
		local bp = Instance.new("BodyPosition",parent)
		bp.maxForce = Vector3.new()*math.huge
		bp.position = position
		return bp
	end
	,
	["F"] = function(parent,size,heat,color,secondcolor,enabled)
		f = Instance.new("Fire",parent)
		f.Size = size
		f.Heat = heat
		if enabled ~= nil then f.Enabled = enabled end
		if color ~= nil then f.Color = BrickColor.new(color).Color end
		if secondcolor ~= nil then f.SecondaryColor = BrickColor.new(secondcolor).Color end
		return f
	end
	,

	["FM"] = function(parent,meshid,x,y,z,meshtexture)
		if meshid == "cylinder" then
			mesh = Instance.new("CylinderMesh",parent)
			mesh.Scale = Vector3.new(x,y,z)
			return mesh
		elseif meshid == 'block' then
			mesh = Instance.new("SpecialMesh",parent)
			mesh.MeshId = 'rbxassetid://9856898'
			mesh.Scale = v3n(x*parent.Size.x,y*parent.Size.y,z*parent.Size.z)*2
			if meshtexture then mesh.TextureId = 'rbxassetid://'..textureids[meshtexture] end
			return mesh
		end
		mesh = Instance.new("SpecialMesh",parent)

		if meshid == 'wedge' then
			mesh.MeshType = 'Wedge'
		elseif meshid == 'sphere' then
			mesh.MeshType = 3
		elseif type(meshid) == "number" then
			mesh.MeshId = "rbxassetid://"..meshid
		else
			mesh.MeshId = "rbxassetid://"..meshids[meshid]
		end
		mesh.Scale = Vector3.new(x,y,z)
		if meshtexture then
			if type(meshtexture) == "number" then mesh.TextureId = "rbxassetid://"..meshtexture else
			mesh.TextureId = "rbxassetid://"..textureids[meshtexture] end
		end
		return mesh
	end,

	["Dec"] = function(parent,face,id,transparency)
		c = Instance.new("Decal",parent)
		c.Face = face
		c.Texture = id
		if transparency then c.Transparency = transparency end
		return c
	end
}

function FindHumanoid(a,b)
local hum
	for i,v in pairs(a:children()) do
		if v:IsA'Humanoid' then
			if not b then
				if v.Parent ~= char then hum = v break end
			else hum = v break  end
		end
	end
	return hum
end
function damage(hit,amount,delay,color) ---- VAHINKO DAMAGE
hum = FindHumanoid(hit)
	if hum then
		if delay then
			local found = CheckTag(hum,'tag')
			if not found then
				local tag = AddTag(hum,'tag')
				debris:AddItem(tag,delay)
				hum.Health = hum.Health - amount
				local hed = hum.Parent.Head
				local bbg = genNew('BillboardGui',hed,{
					Adornee = hed;
					Size = udim(3,3);
					StudsOffset = v3n(mr(-2,2),mr(3,5),mr(-2,2));
				})
				
				local img = genNew('TextLabel',bbg,{
					Text = amount;
					TextScaled = true;
					TextColor = bcol(color or 'White');
					Size = UDim2.new(3,0,3,0);
					BackgroundTransparency = 1;
				}) 
				T.C(function() wait(.1) for i = 3,.1,-.1 do bbg.Size = udim(i,i) wait() end bbg:Destroy() end)
				
			end
		else hum.Health = hum.Health - amount
		end
		
		return hum
	end
end

rtorso = torso

function scale(msh,str,a,b,c,bool)
local amount
local dims = {x=0,y=0,z=0}
local func = function()
	for word in str:gmatch('%d+') do
		amount = word
	end
	amount = not amount and 1 or amount
	for word in str:gmatch('%w') do
		if word == 'x' or word == 'y' or word == 'z' then
			dims[word] = amount
		end
	end
	if type(mesh) ~= 'table' then
		for i = a,b,c or .01 do
			msh.Scale = v3n(dims.x*i,dims.y*i,dims.z*i)
			wait()
		end
	else
		for i = a,b,c or .01 do
			for _,v in pairs(mesh) do
				v.Scale = v3n(dims.x*i,dims.y*i,dims.z*i)
			end
			wait()
		end
	end
end
if bool then T.C(func) else func() end
end


lock = {["R"] =
	function(a)
		if a == 1 then
			rabrick = T.P(1.1,1.1,1.1,"Dark stone grey",1,false,false)
			rw = T.W(rabrick,rtorso,1.5,.5,0,0,0,0)
			T.W(rarm,rabrick,0,-.5,0,0,0,0)
		elseif a == 2 then
			rlbrick = T.P(1,1,1,"Dark stone grey",1,false,false)
			rhw = T.W(rlbrick,rtorso,.5,-1.5,0,0,0,0)
			T.W(rleg,rlbrick,0,-.5,0,0,0,0)
		elseif a == 0 then
			rs.Parent = rtorso
			rw.Parent = nil
			rabrick:Destroy() rabrick = nil
		elseif a == -1 then
			rhw.Parent = nil
			rh.Parent = rtorso
			rlbrick:Destroy() rlbrick = nil
		end
	end
	, ["L"] = function(a)
		if a == 1 then
			labrick = T.P(1,1,1,"Dark stone grey",1,false,false)
			lw = T.W(labrick,rtorso,-1.5,.5,0,0,0,0)
			T.W(larm,labrick,0,-.5,0,0,0,0)
		elseif a == 2 then
			llbrick = T.P(1,1,1,"Dark stone grey",1,false,false)
			lhw = T.W(llbrick,rtorso,-.5,-1.5,0,0,0,0)
			T.W(lleg,llbrick,0,-.5,0,0,0,0)
		elseif a == 0 then
			ls.Parent = rtorso
			lw.Parent = nil
			labrick:Destroy() labrick = nil
		elseif a == -1 then
			lhw.Parent = nil
			lh.Parent = rtorso
			llbrick:Destroy() llbrick = nil
		end
	end
}

cfn,ang = CFrame.new,CFrame.Angles
function spaas(position,radius,number,number2,color)
	mode = Instance.new("Model",m)

	for i = 1,number2 do
		local pos = position+v3n(mr(-radius,radius),mr(-radius,radius),mr(-radius,radius))
		local mag = (position-pos).magnitude

		local col = color or 'Toothpaste'
		local laz = T.P(.1,mag,.1,col,0,false,true,mode)

		T.FM(laz,'cylinder',.3,1,.3)
		laz.CFrame = (cfn(position,pos)*cfn(0,0,-mag/2))*ang(math.pi/2,0,0)

		cframe = (laz.CFrame*cfn(0,-mag/2,0)).p
		pos2 = cframe+v3n(mr(-radius,radius),mr(-radius,radius),mr(-radius,radius))
		mag2 = (cframe-pos2).magnitude
		local laz2 = T.P(.1,mag2,.1,col,0,false,true,mode)
		T.FM(laz2,'cylinder',.3,1,.3)
		laz2.CFrame = (cfn(cframe,pos2)*cfn(0,0,-mag2/2))*ang(math.pi/2,0,0)

		previo = laz2
		for i = 1,number do
			cframe = (previo.CFrame*cfn(0,-mag/2,0)).p
			pos2 = cframe+v3n(mr(-radius,radius),mr(-radius,radius),mr(-radius,radius))
			mag2 = (cframe-pos2).magnitude

			local laz2 = T.P(.1,mag2,.1,col,0,false,true,mode)
			T.FM(laz2,'cylinder',.3,1,.3)
			laz2.CFrame = (cfn(cframe,pos2)*cfn(0,0,-mag2/2))*ang(math.pi/2,0,0)

			previo = laz2
		end

	end
	debris:AddItem(mode,.1)
	return mode
end

function lightning(startpos,endpos,times,offse,livetime,col)
local curpos = startpos
for i = 1,times do
	mag = (startpos-endpos).magnitude offs = {-offse,offse}
	offset = v3n(offs[mr(1,2)],offs[mr(1,2)],offs[mr(1,2)])
	laz = T.P(.1,.1,mag/times,col,0,false,true,m)
	apos = (cfn(curpos,endpos)*cfn(0,0,-mag/times)).p+offset
	if times == i then
		mag2 = (curpos-endpos).magnitude
		laz.Size = v3n(.1,.1,mag2)
		laz.CFrame = cfn(curpos,endpos)*cfn(0,0,-mag2/2)
	else
		laz.CFrame = cfn(curpos,apos)*cfn(0,0,-mag/times/2)
	end
	curpos = laz.CFrame*cfn(0,0,-mag/times/2).p debris:AddItem(laz,livetime)
end
end

------MESHIDS---
meshids = {["penguin"] = 15853464, ["ring"] = 3270017,
["spike"] = 1033714,["cone"] = 1082802,["crown"] = 20329976,["crossbow"] = 15886761,
["cloud"] = 1095708,["mjolnir"] = 1279013,["diamond"] = 9756362, ["hand"] = 37241605,
["fist"] = 65322375,["skull"] = 36869983,["totem"] = 35624068,["spikeb"] = 9982590,["dragon"] = 58430372,["fish"] = 31221717, ["coffee"] = 15929962,["spiral"] = 1051557,
["ramen"] = 19380188,["lightning"] = 72583597,["bullet"]=2697549,['cheese'] = 1090700,["pan"] = 24342877,["ketchup"] = 29690481,
["duck"] = 9419831,["unicorn"]=84003494,["luatophat"] = 42157240,["rooster"] = 24101267}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,["monster"] = 33366441,["ramen"] = 19380153,
["cheese"] = 1090703,['rooster'] = 24258160} 


function AddTag(object,tagname)	local tag = Instance.new("BoolValue",object) tag.Name = tagname return tag end
function CheckTag(object,tagname) local found = object:FindFirstChild(tagname) if found then return found else return _ end end
function RemoveTag(object,tagname) local found = CheckTag(object,tagname) if found then found:Remove() end end

waitbp = function(a,r) while (a.Parent.Position-a.position).magnitude > r do wait() end end

function FindGround(position,radius,ignore)
	if ignore then
		ig = ignore table.insert(ig,m)
	else ig = {m}
	end
	local ray = Ray.new(position,Vector3.FromNormalId(Enum.NormalId.Bottom)*radius)
	local obj,pos2 = Workspace:FindPartOnRayWithIgnoreList(ray,ig)
	if obj and pos2 then return obj,pos2 else return nil end
end

function calcp(a,b) --- Direction CFrame
	return cfn(a,v3n(b.x,a.y,b.z))
end

--------ANIMATING FUNCTION--------
tw = function(Weld, Stop, Step,a)
local func = function()
        local Start = Weld.C0
        local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
        local Stop = Stop
        local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
        
        for i = 0, 1, Step or .1 do
                Weld.C0 = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
                                (Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
                                (Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                                (X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
                                (Z1 * (1 - i)) + (Z2 * i) )
                wait()
        end
        
        Weld.C0 = Stop
end
if a then T.C(function() func() end) else func() end
end
------------------------------------

function weldall(q) 
if q == 1 then a,b = 1,2 else a,b = -1,0 end
for i = a,b do lock.R(i) lock.L(i) end
end
function FindPlayers(a,b,c) --- Finds Players near a part
local list = {}
for i,v in pairs(Workspace:children()) do
	if v:IsA("Model") then
		for _,q in pairs(v:children()) do
			if q:IsA("Humanoid") then
			if q.Health > -1 then
				if c and q.Parent ~= char then
					if (q.Torso.Position-a).magnitude < b then
						table.insert(list,v)
					end
				elseif not c then
					if (q.Torso.Position-a).magnitude < b then
						table.insert(list,v)
					end
				end
			end
			end
		end
	end
end
return list
end
end
hdl = T.P(.5,4,.5,'Navy blue',0,false,false)
hw = T.W(hdl,rarm,0,-1,-.5,-math.pi/2,0,0)

tip = T.P(1,1,1,'White',0,false,false)
T.W(tip,hdl,0,2.45,0,0,0,0)

p2 = T.P(1.5,1,1.5,'Black',0,false,false)
mot = T.W(p2,tip,0,1,0,-math.pi/2,0,0)
mot.C0 = cfn()*ang(-math.pi/2,0,0)

cyl = T.P(1.2,.1,1.2,'Bright red',0,false,false)
T.W(cyl,p2,0,.55,0,0,0,0)

lock.R(1)

tw(rw,cfn()*ang(md(-80),md(-40),0)) np = rw.C0

Sound = {}
for i,v in pairs(FilterTab(char.Head:children(),'Sound')) do
	if v.Name == "Mugex's Weapon Sound" then v:Destroy() end
end
Sound.new = function(id,pitch)
local obj = Instance.new("Sound",char.Head)
obj.Name = "Mugex's Weapon Sound"
obj.SoundId = id
obj.Pitch = pitch or 1
return obj
end

slash_snd = Sound.new("http://www.roblox.com/Asset/?id=10209640",.5)
shoot_snd = Sound.new("http://www.roblox.com/Asset/?id=10209897")
notar_snd = Sound.new("http://www.roblox.com/Asset/?id=10209771")
elec_snd = Sound.new("http://www.roblox.com/Asset/?id=11998777")

function att()
con = tip.Touched:connect(function(hit) local hum = damage(hit.Parent,5,.05,'Bright red')
if hum then elec_snd:Play() spaas(hum.Torso.Position,3,2,2,'Bright red') end
end)

tw(rw,cfn()*ang(md(-140),md(20),0))
slash_snd:Play()
tw(rw,cfn()*ang(md(40),0,0),.2)
tw(rw,np)
con:disconnect()
end

function spiker() r = 1
tw(rw,cfn()*ang(md(-90),0,0),.1,'')
tw(hw,cfn(0,-1,0)*ang(math.pi/2,0,0))
local count = 0
spikes = Instance.new('Model',m)
	for i = 1,360,30 do
		sp = T.P(.4,.4,.4,'Magenta',1,false,false,spikes) local msh = T.FM(sp,'spike',.4,2,.4)
		local w = T.W(sp,p2,mcos(md(i))*r,0,msin(md(i))*r,math.pi/2,0,math.pi/2+md(i))
		w.C0 = cfn()*ang(math.pi,0,0)
	end
	fade(spikes:children(),1,0,-.1)
	shooting = true
	bg = T.BG(torso)
	T.C(function() while shooting do wait()  bg.cframe = calcp(torso.Position,mouse.hit.p) end end)
	T.C(function()
	while shooting do 
		local p = T.P(1,1,1,'White',0,true,false) T.FM(p,'skull',1,1,1,7920311)
		p.CFrame = cyl.CFrame*cfn(0,1,0)
		p.Touched:connect(function(hit) local h = damage(hit.Parent,3,.1,'Deep blue') if h then fade(p,0,1,.1) p:Destroy() end end)
		Instance.new("BodyForce",p).force = torso.CFrame.lookVector*30+v3n(0,p:GetMass()*floatforce,0)
		debris:AddItem(p,2) shoot_snd:Play() wait(.2)
	end end)
	
	for i = 1,3 do
		mot.DesiredAngle = md(360)
		ventta(mot)
		zeero(mot,0)
	end
	notar_snd:Play()
	shooting = false bg:Destroy()
	fade(spikes:GetChildren(),0,1,.1) spikes:Destroy()
	tw(rw,np,.1,'')
	tw(hw,cfn())
end

wing1 = T.P(5,3.5,1,'White',.3,false,false) T.FM(wing1,90821133,2,2,2,90782359)
w1 = T.W(wing1,torso,0,1,.5,-math.pi/2,0,0) 
w1.C0 = cfn(2.5,0,0)*ang(-math.pi/2,0,0)
w1.DesiredAngle = .5

wing1 = T.P(5,3.5,1,'White',.3,false,false) T.FM(wing1,90821193 or 92135556,2,2,2,90782359)
w2 = T.W(wing1,torso,0,1,.5,-math.pi/2,0,0) 
w2.C0 = cfn(-2.5,0,0)*ang(-math.pi/2,0,0)
w2.DesiredAngle = -.5

fly_bp = _
flap = Sound.new('http://www.roblox.com/asset/?id=90820031')
function hover()
if not fly_bp then
fly_bp = T.BP(torso,torso.Position)
T.C(function()
	while fly_bp do
		w1.DesiredAngle = 1
		w2.DesiredAngle = -1
		ventta(w1)
		flap:Play()
		w1.DesiredAngle = .5
		w2.DesiredAngle = -.5
		ventta(w1)
	end
end)
else fly_bp:Destroy() fly_bp = _
end
end

function fly()
	if fly_bp then
		fly_bg = T.BG(torso)
		holding = true
		while holding do wait() unit = (torso.Position-mouse.hit.p).unit
			fly_bg.cframe = calcp(torso.Position,mouse.hit.p) 
			fly_bp.position = fly_bp.position+unit*-5
		end
		fly_bg:Destroy()
	end
end
cork = Sound.new("http://www.roblox.com/asset/?id=18426149")
function tablets() local r = 10
	local tabs = Instance.new("Model",Workspace)
	for i = 36,360,360/30 do
		p = T.P(2.5,5,.5,'Deep blue',.5,false,true,tabs)
		p.Name = 'MugTable' 
		p.Touched:connect(function(hit) damage(hit.Parent,10,1,'New Yeller') end)
		pos = l(torso,mcos(md(i))*r,0,msin(md(i))*r).p
		p.CFrame = calcp(pos,torso.Position)
	end
	local box = Instance.new("SelectionBox",m) holding = true
	
	local all = tabs:children()
	
	T.C(function()
		while holding do
			for i,v in pairs(all) do
				a = 360/#all*i
				local pos = l(torso,mcos(md(a))*r,0,msin(md(a))*r).p
				v.CFrame = calcp(pos,torso.Position)
			end
			wait()
		end
	end)

	while holding do
		if mouse.Target.Name == 'MugTable' then 
			box.Adornee = mouse.Target
		end
		wait()
	end
	cork:Play()
	local selected = box.Adornee or _
	if not selected then tabs:Destroy() return end
	selected.Anchored = false box:Destroy()
	for i,v in pairs(all) do if v ~= selected then v:Destroy() end end
	vel = Instance.new("BodyVelocity",selected)
	vel.maxForce = v3n(1,0,1)*math.huge
	vel.velocity = selected.CFrame.lookVector*-60
	debris:AddItem(tabs,4)
end

function dive()
	if fly_bp then
		unit = (torso.Position-mouse.hit.p).unit
		fly_bp.Parent = _
		torso.Anchored = true
		oldp = torso.Position
		torso.CFrame = cfn((torso.Position + unit*-100),oldp)*ang(0,math.pi,0)
		mag = (oldp-torso.Position).magnitude
		local laz = T.P(1,mag,2,'Cyan',0,false,true)
		laz.CFrame = cfn(oldp,torso.Position)*cfn(0,0,-mag/2)*ang(math.pi/2,0,0)
		T.C(function() fade(laz,0,1,.1) laz:Destroy() end)
		torso.Anchored = false
		fly_bp.Parent = torso fly_bp.position = torso.Position
	end
end

klist = {
{'f',function() att() end};
{'q',function() spiker() end};
{'r',function() fly() end,''};
{'e',function() hover() end};
{'c',function() tablets() end,''};
{'t',function() dive() end};
}

mouse.Button1Up:connect(function() holding = false end)
mouse.KeyUp:connect(function(a) for i,v in pairs(klist) do if a == v[1] and v[3] ~= nil then holding = false end end end)
mouse.KeyDown:connect(function(key)
	if attacking then return end
	for i,v in pairs(klist) do
		if key == v[1] then attacking = true v[2](mouse) attacking = false end
	end
end)
--mediafire