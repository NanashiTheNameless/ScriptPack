---Made by mugex-----------------------------------------------------
script.Parent = nil
name = 'Begnum'
PLAYERS = game:GetService('Players')
ply = PLAYERS.LocalPlayer
char = ply.Character
pcall(function() char:FindFirstChild("legetdgq"):Remove() end)
m = Instance.new("Model",char) m.Name = "legetdgq"
hop = Instance.new("HopperBin",ply.Backpack)
hop.Name = name
debris = game:GetService("Debris")

cfn,ang,v3n,ud2n,V2 = CFrame.new,CFrame.Angles,Vector3.new,UDim2.new,Vector2.new
floatforce = 196.25

torso,head = char.Torso,char.Head
attacking = false

rs = torso["Right Shoulder"]
ls = torso["Left Shoulder"]
rh = torso["Right Hip"]
lh = torso["Left Hip"]
neck = torso["Neck"]
rw,lw = nil,nil
rhw,lhw = nil,nil
local orgc1 = rs.C1

rarm = char["Right Arm"]
larm = char["Left Arm"]
rleg = char["Right Leg"]
lleg = char["Left Leg"]

normposr = cfn(1.5,.5,0)
normposl = cfn(-1.5,.5,0)
normposl2 = cfn(.5,-1.5,0)
normposr2 = cfn(-.5,-1.5,0)
normposn = CFrame.new(0,1,0,-1,-0,-0,0,0,1,0,1,0)

holdpos = normposr*ang(math.pi/2,0,0)
holdpos2 = normposl*ang(math.pi/2,0,0)

--------UTILITIES START-------
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
		return w
	end
	,
	["BG"] = function(parent)
		local c = Instance.new("BodyGyro",parent)
		c.P = 20e+003
		c.cframe = parent.CFrame
		c.maxTorque = Vector3.new(c.P,c.P,c.P)
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
			mesh = Instance.new("BlockMesh",parent)
			mesh.Scale = Vector3.new(x,y,z)
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
	end,
	["S"] = function(id,pitch,volume,parent)
		cur = nil
		found = false
		if type(id) == 'string' then
			for i,v in pairs(char.Head:children()) do
				if v:IsA("Sound") and v.Name == id and not found then
					cur = v
					if parent then cur = v:Clone() cur.Parent = parent end
					cur.Pitch = pitch
					if volume then cur.Volume = volume end
					cur:Play()
					found = true
					return cur
				end
			end
		elseif type(id) == 'number' then
			local a = char.Head:FindFirstChild('exteo')
			a.SoundId = 'rbxassetid://'..id
			a.Pitch = pitch
			if volume then a.Volume = volume end
			a:Play()
			return a
		end
	end
}
function FindHumanoid(a,b)
	for i,v in pairs(a:children()) do
		if v:IsA('Humanoid') then
			if not b then
				if v.Parent ~= char then return v end
			else return v end
		end
	end
end
function damage(hit,amount,delay) ---- VAHINKO DAMAGE
hum = FindHumanoid(hit)
	if hum then
		if delay then
			local found = CheckTag(hum,'tag')
			if not found then
				local a = AddTag(hum,'tag')
				debris:AddItem(a,delay)
				hum.Health = hum.Health - amount
			end
		else hum.Health = hum.Health - amount
		end
		return hum
	end
end

rtorso = torso

lock = {["R"] =
	function(a)
		if a == 1 then
			rabrick = T.P(1,1,1,"White",1,false,false)
			rw = T.W(rabrick,rtorso,1.5,.5,0,0,0,0)
			T.W(rarm,rabrick,0,-.5,0,0,0,0)
		elseif a == 2 then
			rlbrick = T.P(1,1,1,"White",1,false,false)
			rhw = T.W(rlbrick,rtorso,-.5,-1.5,0,0,0,0)
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
			labrick = T.P(1,1,1,"White",1,false,false)
			lw = T.W(labrick,rtorso,-1.5,.5,0,0,0,0)
			T.W(larm,labrick,0,-.5,0,0,0,0)
		elseif a == 2 then
			llbrick = T.P(1,1,1,"White",1,false,false)
			lhw = T.W(llbrick,rtorso,.5,-1.5,0,0,0,0)
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
		pos = position+v3n(M.R(-radius,radius),M.R(-radius,radius),M.R(-radius,radius))
		mag = (position-pos).magnitude

		col = color or 'Toothpaste'
		local laz = T.P(.1,mag,.1,col,0,false,true,mode)

		T.FM(laz,'cylinder',.3,1,.3)
		laz.CFrame = (cfn(position,pos)*cfn(0,0,-mag/2))*ang(math.pi/2,0,0)

		cframe = (laz.CFrame*cfn(0,-mag/2,0)).p
		pos2 = cframe+v3n(M.R(-radius,radius),M.R(-radius,radius),M.R(-radius,radius))
		mag2 = (cframe-pos2).magnitude
		local laz2 = T.P(.1,mag2,.1,col,0,false,true,mode)
		T.FM(laz2,'cylinder',.3,1,.3)
		laz2.CFrame = (cfn(cframe,pos2)*cfn(0,0,-mag2/2))*ang(math.pi/2,0,0)

		previo = laz2
		for i = 1,number do
			cframe = (previo.CFrame*cfn(0,-mag/2,0)).p
			pos2 = cframe+v3n(M.R(-radius,radius),M.R(-radius,radius),M.R(-radius,radius))
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

function lightning(startpos,endpos,times,offse,livetime,col,dmg)
local curpos = startpos
for i = 1,times do
	mag = (startpos-endpos).magnitude offs = {-offse,offse}
	offset = v3n(offs[M.R(1,2)],offs[M.R(1,2)],offs[M.R(1,2)])
	laz = T.P(.1,.1,mag/times,col,0,false,true,m)
	if dmg then laz.Touched:connect(function(hit) damage(hit.Parent,dmg[1],dmg[2]) end) end
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
["duck"] = 9419831,["unicorn"]=84003494,["luatophat"] = 42157240}---some meshids
textureids = {["cone"] = 1082804,["rainbow"] = 28488599,["fish"] = 31221733, ["coffee"] = 24181455,["monster"] = 33366441,["ramen"] = 19380153,
["cheese"] = 1090703} 
soundids = {["bell"] = 20005706,["flintlock"] = 13510352,["falcon"] = 1387390,['sensa'] = 4700455,
['midas'] = 17385513;
['spark'] = 10756118;
['boom'] = 10730819;
['plank'] = 10548112;
['harmonica1'] = 33069371;
['harmonica2'] = 33069412;
['thump'] = 10730819;
['hit'] = 2801263;
['crunch'] = 15047813;
['Piano'] = 11998796;
}


function AddTag(object,tagname)	local tag = Instance.new("BoolValue",object) tag.Name = tagname return tag end
function CheckTag(object,tagname) local found = object:FindFirstChild(tagname) if found then return found else return _ end end
function RemoveTag(object,tagname) local found = CheckTag(object,tagname) if found then found:Remove() end end
for i,v in pairs(soundids) do ---Remove sounds
	for _,q in pairs(char.Head:children()) do
		if q.Name == i then q:Remove() end
	end
end
for i,v in pairs(soundids) do ----Add sounds
sound = Instance.new("Sound")
sound.SoundId = "http://www.roblox.com/asset/?id="..v
sound.Name = i
sound.Parent = char.Head
end
genNew('Sound',char.Head,{
	Name = 'slash';
	SoundId = 'rbxasset://sounds//swordslash.wav'
})

waitbp = function(a,r) while (a.Parent.Position-a.position).magnitude > r do wait() end end

M = {["R"] = function(a,b) return math.random(a,b) end,
["Cos"] = function(a) return math.cos(a) end,
["Sin"] = function(a) return math.sin(a) end,
["D"] = function(a) return math.rad(a) end
}

function findground(position,radius,ignore)
	if ignore then
		ig = ignore table.insert(ig,m)
	else ig = {m}
	end
	local ray = Ray.new(position.p,position.p+(position.p-v3n(0,200,0)).unit*radius)
	local obj,pos2 = Workspace:FindPartOnRayWithIgnoreList(ray,ig)
	if obj and pos2 then return obj,pos2 else return nil end
end

rweld = _
faketorso = _
function faketor()
	if rtorso == torso then 
		torso.Transparency = 1
		faketorso = T.P(2,2,1,torso.BrickColor.Name,0,false,false,char)
		rweld = T.W(faketorso,torso,0,0,0,0,0,0)
		rtorso = faketorso
		for i,v in pairs({lh,ls,rh,rs}) do v.Part0 = rtorso end
	elseif rtorso ~= torso then 
		rtorso = torso 
		for i,v in pairs({lh,ls,rh,rs}) do v.Part0 = rtorso end
		faketorso:Remove()
		rweld:Remove()
		torso.Transparency = 0
	end
	dec.Parent = rtorso
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
        
        for i = 0, 1, Step do
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
list = {}
for i,v in pairs(Workspace:children()) do
	if v:IsA("Model") then
		for _,q in pairs(v:children()) do
			if q:IsA("Humanoid") then
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
return list
end

for i,v in pairs(char:children()) do
	if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Hat") or v:IsA("ShirtGraphic") or v:IsA("BodyColors") then v:Remove() end
end

for i = 1/3,1,1/3 do
shell = T.P(2*i+.001,.5,2*i+.001,'White',0,false,false)
T.W(shell,torso,0,0,-i+1.6,math.pi/2,0,0)
end
p = T.P(1,1,1,'White',0,false,false)
T.W(p,char.Head,0,.7,0,0,0,0)
T.FM(p,'cloud',1,2,2)
dec = T.Dec(torso,'Front','http://www.roblox.com/asset/?id=58535182')

pcall(function() torso:FindFirstChild('roblox'):Remove() end)
Instance.new("Skin",char).SkinColor = BrickColor.new('Pastel Blue')
p = T.P(2.01,.5,1.3,'White',0,false,false)
T.W(p,torso,0,-1,0,0,0,0)

hdl = T.P(.4,1,.4,'Brown',0,false,false)
T.W(hdl,rarm,0,-1.1,0,M.D(60),0,0)

p2 = T.P(.51,.4,.51,'Black',0,false,false)
T.W(p2,hdl,0,-.35,0,M.D(30),0,0)

p3 = T.P(.41,1,.41,'Brown',0,false,false)
T.W(p3,p2,0,0,.5,math.pi/2,0,0)

p4 = T.P(1,1,1,'Deep blue',0,false,false)
T.W(p4,p2,0,.2,0,math.pi/2,math.pi/2,0) T.FM(p4,'ring',.3,.5,.2)

p5 = T.P(.1,.1,.1,'Black',0,false,false) T.FM(p5,'cylinder',1,1,1)
T.W(p5,p3,0,.41,0,0,0,0)

hdl2 = T.P(1.1,1,1.1,'White',0,false,false)
T.W(hdl2,larm,0,-.51,0,0,0,0)

sp1 = T.P(.25,3,.25,'Grime',0,false,false) T.FM(sp1,'spike',.25,3,.25)
T.W(sp1,hdl2,-.25,-1,-.25,math.pi,0,0)
sp1 = T.P(.25,3,.25,'Grime',0,false,false) T.FM(sp1,'spike',.25,3,.25)
T.W(sp1,hdl2,.25,-1,-.25,math.pi,0,0)
bl = T.P(.7,.1,.7,'Magenta',0,false,false) T.FM(bl,'sphere',1,1,1)
T.W(bl,hdl2,0,-.45,.15,0,0,0)


for q = -.5,.5,1 do
r = .25
for i = -90,360-90,120 do
	p = T.P(.1,r*3,.1,'New Yeller',0,false,false)
	T.FM(p,'block',.5,1,1)
	T.W(p,hdl2,M.Cos(M.D(i))*r,M.Sin(M.D(i))*r,q,0,0,math.pi/2-M.D(i*2))
end
r = r/2
for i = 90,360+180-90,120 do
	p = T.P(.1,r*3,.1,'New Yeller',0,false,false)
	T.FM(p,'block',.25,1,1)
	T.W(p,hdl2,0-M.Cos(M.D(i))*r,M.Sin(M.D(i))*r,q,0,0,-math.pi/2+M.D(i*2))
end
end

welds = {}
bl2 = T.P(.7,.1,.7,'Magenta',0,false,false) T.FM(bl2,'sphere',1,1,1)
T.W(bl2,hdl2,-.5,0,0,math.pi/2,0,math.pi/2)
r = .5
for i = 1,360,30 do
	wait()
	p = T.P(.1,.1,.1,'Alder',0,false,false) T.FM(p,'sphere',1,1,1)
	w = T.W(p,bl2,M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r,0,0,0)
	table.insert(welds,w)
end
function lazer(startpos,endpos,color)
	mag = (startpos-endpos).magnitude
	p = T.P(.1,mag,.1,'New Yeller',0,false,true)T.FM(p,'cylinder',1,1,1)
	p.CFrame = cfn(startpos,endpos)*cfn(0,0,-mag/2)*ang(math.pi/2,0,0) debris:AddItem(p,.05)
end

recharged = false
function Recharge()
	lock.L(1)
	tw(lw,cfn()*ang(math.pi,0,0),.1)
	for i = 1,30 do
		wait()
		lightning(bl.Position+v3n(0,100,0),bl.Position,3,2,.05,'Magenta')
		spaas(bl.Position,1,1,4,'Magenta')
	end
	recharged = true
	T.C(function() while recharged do
	cl = bl2:Clone() cl.Parent = m
	msh = cl.Mesh
	T.W(cl,bl2,0,0,0,0,0,0)
	for i = 1,5,.2 do
		msh.Scale = v3n(i,i,i)
		cl.Transparency = i/5
		wait()
	end
	cl:Remove()
	end
	end)
	tw(lw,cfn(0,0,0),.1)
	lock.L(0)
end

function Shoot()
lock.R(1) rw.C1 = holdpos
holding = true
while holding do
	local ray = Ray.new(p5.Position,p5.Position+(p5.Position-(p5.Position+torso.CFrame.lookVector*1)).unit*-500)
	local obj,pos = Workspace:FindPartOnRay(ray,m)
	T.S('flintlock',1)
	if obj and pos then
		mag = (p5.Position-pos).magnitude
		p = T.P(.1,mag,.1,'New Yeller',0,false,true)T.FM(p,'cylinder',1,1,1)
		p.CFrame = p5.CFrame*cfn(0,mag/2,0) debris:AddItem(p,.05)
		spaas(pos,1,1,1,'New Yeller')
		local hum = damage(obj.Parent,30,.1) if hum then if hum.Torso then spaas(hum.Torso.Position,1,3,3,'New Yeller') end end
	else
		lazer(p5.Position,p5.Position+torso.CFrame.lookVector*50,'New Yeller')
	end
rw.C1 = holdpos*ang(M.D(30),0,0)
wait(.1)
rw.C1 = holdpos
wait()
end
lock.R(0)
end

function Shield(mouse)
p = T.P(1,0,1,'White',.5,false,false)
T.FM(p,'cylinder',1,1,1)
wld = T.W(p,bl2,0,0,0,0,0,0)
for r = .5,2,.25 do
	for i,v in pairs(welds) do
		o = 360/#welds*i
		p.Size = v3n(r*2,0,r*2)
		wld.Parent = m
		wld.Part1 = bl2
		v.C1 = cfn(M.Cos(M.D(o))*r,0,M.Sin(M.D(o))*r)
	end
wait()
end
holding = true
bg = T.BG(torso)
lock.L(1)
while holding do wait() bg.cframe = calcp(torso.Position,mouse.hit.p)*ang(0,-math.pi/2,0) end
bg:Remove()
lock.L(0)
for r = 2,.5,-.25 do
	for i,v in pairs(welds) do
		o = 360/#welds*i
		p.Size = v3n(r*2,0,r*2)
		wld.Parent = m
		wld.Part1 = bl2
		v.C1 = cfn(M.Cos(M.D(o))*r,0,M.Sin(M.D(o))*r)
	end
wait()
end
p:Remove()
end

function Punch()
	once = false
	local con = sp1.Touched:connect(function(hit) hum = damage(hit.Parent,0,.1)
	if hum then
		if recharged and not once then once = true recharged = false
			hum.Sit = true
			local c = T.P(1,1,1,'White',0,false,true)		
			hum.Torso.Velocity = calcp(torso.Position,hum.Torso.Position).lookVector*200+v3n(0,100,0)
			c.CFrame = cfn(hit.Position)
			local msh = T.FM(c,'sphere',1,1,1)
			for i = 0,50,5 do
				msh.Scale = v3n(i,i,i)
				c.Transparency = i/50
				wait()
			end
			c:Remove()
		else hum.Torso.Velocity = calcp(torso.Position,hum.Torso.Position).lookVector*200
	end
	end
	end)
	bg = T.BG(torso)
	lock.L(1) lw.C1 = holdpos2
	cf = torso.CFrame
	for i = 0,1,1/5 do
	--rweld.C1 = cfn()*ang(0,M.D(-70*i),0)
	bg.cframe = cf*ang(0,M.D(-70*i),0)
	wait()
	end
	for i = 1,0,-1/5 do
	--rweld.C1 = cfn()*ang(0,M.D(-70*i),0)
	bg.cframe = cf*ang(0,M.D(-70*i),0)
	wait()
	end
	bg:Remove()
	lock.L(0)
	con:disconnect()
end
-----------ZOMBIE MAKER FUNCTION------------
function Exorcism()
pos = torso.Position+torso.CFrame.lookVector*3+v3n(0,-3,0)

person = Instance.new("Model",Workspace)
person.Name = 'Zombie'

----PARTS-------
local hed = T.P(1,1,1,'White',0,true,false,person) hed.Name = 'Head'
Instance.new("SpecialMesh",hed).Scale = v3n(1.25,1.25,1.25)
local tor = T.P(2,2,1,'White',0,true,false,person) tor.Name = 'Torso'
local ar = T.P(1,2,1,'White',0,true,false,person) ar.Name = 'Left Arm'
q = T.W(ar,tor,-.5,0.5,0,0,math.pi/2,0,tor)
q.C0 = cfn(1,0.5,0)*ang(0,math.pi/2,0)
local ar = T.P(1,2,1,'White',0,true,false,person) ar.Name = 'Right Arm'
q2 = T.W(ar,tor,.5,0.5,0,0,math.pi/2,0,tor)
q2.C0 = cfn(-1,0.5,0)*ang(0,math.pi/2,0)

local ar = T.P(1,2,1,'White',0,true,false,person) ar.Name = 'Right Leg'
T.W(ar,tor,-.5,-2,0,0,0,0,tor) 
local ar = T.P(1,2,1,'White',0,true,false,person) ar.Name = 'Left Leg'
T.W(ar,tor,.5,-2,0,0,0,0,tor)

T.W(hed,tor,0,1.5,0,0,0,0,tor)

----PARTS-------

q.MaxVelocity = .1
q.DesiredAngle = math.pi/2
q2.MaxVelocity = .1
q2.DesiredAngle = math.pi/2

local hum = Instance.new("Humanoid",person)
Instance.new("Skin",person).SkinColor = BrickColor.new('Earth green')
tor.CFrame = calcp(torso.Position+torso.CFrame.lookVector*5,torso.Position)

shirt = Instance.new('Shirt',person)
shirt.ShirtTemplate = 'http://www.roblox.com/asset/?id=79001892'

pants = Instance.new('Pants',person)
pants.PantsTemplate = 'http://www.roblox.com/asset/?id=79001892'
crown = T.P(1,1,1,'White',0,false,false)
T.FM(crown,1031410,1,1,1,1031417)
T.W(crown,hed,-.2,.85,0,0,0,M.D(20),person)
face = T.Dec(hed,'Front','http://www.roblox.com/asset/?id=65180938')

---DYING---
hum.Died:connect(function() wait(2) hum.Parent:Remove() end)
---DYING---
end
-----------ZOMBIE MAKER FUNCTION------------

function triforce(mouse)
r = 10
local pp = mouse.hit
for i = 1,360,120 do
	p = T.P(r*3.5,.1,1,'New Yeller',0,false,true)
	p.CFrame = cfn(mouse.hit.p)*cfn(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)
	p.CFrame = cfn(p.Position,mouse.hit.p)
end
r = r/2
for i = 180,360+180,120 do
	p = T.P(r*3.5,.1,1,'New Yeller',0,false,true)
	p.CFrame = cfn(mouse.hit.p)*cfn(M.Cos(M.D(i))*r,0,M.Sin(M.D(i))*r)
	p.CFrame = cfn(p.Position,mouse.hit.p)
end
lock.R(1)
lock.L(1)
tw(lw,cfn()*ang(-M.D(150),0,M.D(30)),.1,'')
tw(rw,cfn()*ang(-M.D(150),0,M.D(-30)),.1)
wait(.5)
local obj,pos = findground(pp*cfn(0,3,0),200)
if pos then
r = 10
model = Instance.new("Model",m)
for i = 1,10 do
	o = 360/10*i
			local p = obj:Clone()
			p.Parent = model
			p.Anchored = false
			p.Size = v3n(M.R(10,30),1,M.R(10,30))
			p.CFrame = calcp(pos+v3n(M.Cos(M.D(o))*r,0,M.Sin(M.D(o))*r),pos)*ang(M.D(M.R(-10,10)),M.D(M.R(-10,10)),M.D(M.R(-10,10)))
			p:BreakJoints()
			p.Velocity = calcp(p.Position,pos).lookVector*-300+v3n(0,200,0)
end
fist = T.P(2,4,2,'Olive',0,false,true)
fist.Reflectance = .4
fist.CFrame = cfn(pos+v3n(0,10,0))*ang(math.pi,0,0)

for i,v in pairs(FindPlayers(fist.Position,30)) do damage(v,30,.1) end

T.FM(fist,'fist',30,30,30)
T.C(function() for i = 0,1,.05 do wait() fist.Transparency = i end fist:Remove() end)

tw(lw,cfn(),.1,'')
tw(rw,cfn(),.1)
lock.R(0) lock.L(0)
end	
end
neck2 = _
function necko(a) if a == 1 then neck2 = T.W(char.Head,faketorso,0,1.5,0,0,0,0) normposn2 = neck2.C0 elseif a == 0 then neck2:Remove() end end

function Kick()
faketor()
necko(1)
weldall(1)
local con = lleg.Touched:connect(function(hit) hum = damage(hit.Parent,30,.5) if hum then
hum.Sit = true
hum.Torso.Velocity = calcp(torso.Position,hum.Torso.Position).lookVector*400+v3n(0,80,0)
end
end)
o = 1/5
for _,v in pairs({ {0,1,o},{1,0,-o}}) do
for i = v[1],v[2],v[3] do
lhw.C1 = normposl2*ang(M.D(-90*i),0,0)
rhw.C1 = normposr2*ang(M.D(45*i),0,0)
rw.C1 = normposr*ang(M.D(160*i),0,0)
lw.C1 = normposl*ang(M.D(160*i),0,0)
rweld.C1 = cfn()*ang(M.D(-20*i),0,0)
neck2.C0 = normposn2*ang(M.D(20*i),0,0)*cfn(0,0,.3*i)
wait()
end
end
T.S('hit',.5)
for _,v in pairs({ {0,1,o},{1,0,-o}}) do
for i = v[1],v[2],v[3] do
rhw.C1 = normposr2*ang(M.D(-45*i),0,0)*cfn(0,0,.4*i)
lhw.C1 = normposl2*ang(M.D(80*i),0,0)*cfn(0,-.3*i,-.2*i)
rw.C1 = normposr*ang(M.D(-60*i),0,0)
lw.C1 = normposl*ang(M.D(-60*i),0,0)
rweld.C1 = cfn()*ang(M.D(30*i),0,0)
neck2.C0 = normposn2*ang(M.D(-20*i),0,0)*cfn(0,0,-.2*i)
wait()
end
end
faketor() con:disconnect()
weldall(0)
end

function clawshot(mouse)
old = _
startpos = cfn(bl2.Position).p
size = 2
col = 'New Yeller'
pos = mouse.hit.p
local mag = (startpos-pos).magnitude
local chai = Instance.new("Model",m)
bg = T.BG(torso)
lock.L(1)
lw.C1 = holdpos2
bg.cframe = calcp(torso.Position,mouse.hit.p)
for i = 1,mag,size-.25 do
wait()
local new = T.P(size,size,size,col,0,false,true,chai)
T.FM(new,"ring",2,2,2)

new.CFrame = (cfn(startpos,pos) * cfn(0,0,-i/2*size/2))*ang(math.pi/2,0,0)

if old ~= nil then
new.CFrame = (old.CFrame * CFrame.new(0,-(size-.25),0)) * ang(0,math.pi/2,0)
end
old = new
end
torso.Anchored = true
for i,v in pairs(chai:GetChildren()) do
wait()
torso.CFrame = v.CFrame*cfn(0,2,0)
v:Remove()
end
torso.Anchored = false
bg:Remove()
chai:Remove()
lock.L(0)
end

klist = {
{'f',function() Recharge() end};
{'r',function() Punch() end};
{'t',function() Exorcism() end};
{string.char(48),function(a) Shield(a) end,''};
{'e',function(a) Kick(a) end};
{'c',function(a) clawshot(a) end};
{'q',function(a) triforce(a) end};
}

hop.Selected:connect(function(mouse)
	mouse.Button1Up:connect(function() holding = false end)
	mouse.KeyUp:connect(function(a) for i,v in pairs(klist) do if a == v[1] and v[3] ~= nil then holding = false end end end)
	mouse.KeyDown:connect(function(key)
		if attacking then return end
		for i,v in pairs(klist) do
			if key == v[1] then attacking = true v[2](mouse) attacking = false end
		end
	end)
	mouse.Button1Down:connect(function() if attacking then return end attacking = true Shoot(mouse) attacking = false end)
end)
--mediafire