:ls --Epic Staff Gifted by TheRedAngel, Regular Script!

name = 'Epic Staff'
PLAYERS = game:GetService('Players')
ply = PLAYERS.LocalPlayer
char = ply.Character
pcall(function() char:FindFirstChild("legetdgq"):Remove() end)
m = Instance.new("Model",char) m.Name = "steff2k8"
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
["duck"] = 9419831,["unicorn"]=84003494}---some meshids
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
		faketorso = T.P(2,2,1,'White',0,false,false,char)
		rweld = T.W(faketorso,torso,0,0,0,0,0,0)
		rtorso = faketorso hw.Part1 = rtorso
		for i,v in pairs({lh,ls,rh,rs}) do v.Part0 = rtorso end
	elseif rtorso ~= torso then 
		rtorso = torso 
		for i,v in pairs({lh,ls,rh,rs}) do v.Part0 = rtorso end
		hw.Part1 = torso
		faketorso:Remove()
		rweld:Remove()
		torso.Transparency = 0
	end

end

function calcp(a,b) --- Direction CFrame
	return cfn(a,v3n(b.x,a.y,b.z))
end

function weldall(q) 
if q == 1 then a,b = 1,2 else a,b = -1,0 end
for i = a,b do lock.R(i) lock.L(i) end
end
		
function speak(a,b)
game:GetService('Chat'):Chat(p,a,b)
end
function FindPlayers(a,b,c) --- Finds Players near a part
list = {}
for _,v in pairs(Workspace:children()) do
	if v:IsA("Model") then
		for _,child in pairs(v:children()) do
			if child:IsA("Humanoid") then
				if c and child.Parent ~= char then
					if (a-child.Torso.Position).magnitude < b then
					table.insert(list,child.Parent)
					end
				elseif not c then
					if (a-child.Torso.Position).magnitude < b then
					table.insert(list,child.Parent)
					end
				end
			end
		end
	end
end
return list
end
--------UTILITIES END-------
Staff = Instance.new("Model",m)

hdl = T.P(.5,4,.5,'White',0,false,false,Staff)
T.FM(hdl,'cylinder',1,1,1)
hw = T.W(hdl,rtorso,0,0,.75,0,0,M.D(-45))

p = T.P(2,2,2,'Black',0,false,false,Staff) p.Shape = 0
T.W(p,hdl,0,3,0,0,0,0)
p2 = T.P(1,1,1,'White',0,false,false,Staff)
T.FM(p2,'crown',.9,.9,.9)
T.W(p2,hdl,0,2,.2,math.pi,0,0)

hat = T.P(1,1,1,'White',0,false,false,Staff)
T.FM(hat,49927327,1,1,1,'rainbow')
T.W(hat,p,0,1.4,0,0,0,0)
hat = T.P(1,1,1,'White',0,false,false,Staff)
T.FM(hat,22053998,1.2,1,1,'rainbow')

T.W(hat,p,0,.5,-.5,0,0,0)
p2 = T.P(.5,1.5,.4,'White',0,false,false,Staff)
T.FM(p2,'sphere',1,1,1)
T.W(p2,p,0,-1,-.75,0,0,0)
mouth = T.P(.5,.1,.1,'Nougat',0,false,false,Staff)
mouth_mesh = T.FM(mouth,'sphere',1,1,1)
mouth_weld = T.W(mouth,p,0,-.5,-.8,0,0,0) mouth_weld_normal = mouth_weld.C1


equipped = false

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
T.W(crown,hed,-.2,.85,0,0,0,M.D(20))
face = T.Dec(hed,'Front','http://www.roblox.com/asset/?id=65180938')

---DYING---
hum.Died:connect(function() wait(2) hum.Parent:Remove() end)
---DYING---
end
-----------ZOMBIE MAKER FUNCTION------------


function Equip()
	if not equipped then
		equipped = true
		hw.Part1 = rarm
		speak('At your service','Blue')
		hw.C1 = cfn(0,-1,0)*ang(-math.pi/2,0,0)
	elseif equipped then
		equipped = false
		hw.Part1 = rtorso
		hw.C1 = cfn(0,0,.75)*ang(0,0,M.D(-45))
	end
	normh = hw.C1
end
function Fly(mouse)
	bp = T.BP(torso,torso.Position)
	bg = T.BG(torso)
	holding = true
	lock.R(1) lock.L(1) 	lock.R(2) lock.L(2)
	rw.C1 = normposr*ang(0,0,M.D(30))
	lw.C1 = normposl*ang(0,0,M.D(-30))
	rhw.C1 = normposr2*ang(0,0,M.D(-30))*cfn(-.4,.1,0)
	lhw.C1 = normposl2*ang(0,0,M.D(30))*cfn(.4,.1,0)
	while holding do
		unit = (torso.Position-mouse.hit.p).unit
		bp.position = bp.position+unit*-5
		bg.cframe = cfn(torso.Position,mouse.hit.p)*ang(-math.pi/2,0,0)
		wait()
	end
	for i = -1,0 do lock.R(i) lock.L(i) end
	bp:Remove()
	bg:Remove()
end

function earthdragon(mouse)
local ground,_ = findground(torso.CFrame,10,{char})
local mag = (torso.Position-mouse.hit.p).magnitude
	if ground then
	T.C(function()
	local dragon = Instance.new("Model",m)
	local main = T.P(1,1,1,'White',1,false,true)
	local old = main
	s = 10
	T.C(function()
	while wait() do
		wait()
		if #dragon:children() > 0 then
			
			old.CFrame = cfn(main.Position,old.Position)
			for i,v in pairs(dragon:children()) do
				if i == #dragon:children() then
				old = v
				v.CFrame = cfn(old.Position,v.Position)*cfn(0,0,-s)
				else
				v.CFrame = cfn(old.Position,v.Position)*cfn(0,0,-s)
				end
				old = v
			end
		end
	end
	end)
	
		for i = 1,mag/10 do
			local cube = genNew('Part',dragon,{
				BrickColor = ground.BrickColor;
				Size = v3n(s,s,s);
				Anchored = true;
				TopSurface = ground.TopSurface;
				BottomSurface = ground.BottomSurface;
				CanCollide = false;
				Material = ground.Material;
				})
			cube.CFrame = p.CFrame
		end
		local r = mag/2
		holding = true
		
		local cf = cfn(torso.Position,mouse.hit.p)*cfn(0,0,-r)*ang(0,-math.pi/2,0)
		for i = 0,360-s,3 do
			wait()
			main.CFrame = cf*cfn(M.Cos(M.D(i))*r,M.Sin(M.D(i))*r,0)
		end
		dragon:Remove()
		end)
	end
end

neck2 = _
function necko(a) if a == 1 then neck2 = T.W(char.Head,faketorso,0,1.5,0,0,0,0) normposn2 = neck2.C0 elseif a == 0 then neck2:Remove() end end

ef = function(a)
	T.C(function()
		local p = T.P(1,1,1,'White',0,false,true)
		p.CFrame = a
		local msh = T.FM(p,'ring',1,1,1)
		for i,v in pairs(FindPlayers(p.Position,5)) do damage(v,5,.1) end
		for i = 1,5 do
			msh.Scale = v3n(i,i,1)
			p.Transparency = i/5
			wait()
		end
		p:Remove()
	end)
end
	
function Punches()
	faketor()
	lock.R(1) lock.L(1)
	hw.Part1 = torso
	o = 1*.95
	for _ = 1,5 do
	speak('One','Red')
	T.S('hit',2)
	for i = 0,1,o do
	wait()
	rweld.C1 = cfn()*ang(0,M.D(40*i),0)
	rw.C1 = normposr*ang(M.D(90*i),0,M.D(40*i))
	lw.C1 = normposl*ang(M.D(90*i),0,M.D(40*i))
	end
	
	ef(rarm.CFrame*cfn(0,-1,0)*ang(math.pi/2,0,0))
	for i = 1,0,-o do
	wait()
	rweld.C1 = cfn()*ang(0,M.D(40*i),0)
	rw.C1 = normposr*ang(M.D(90*i),0,M.D(40*i))
	lw.C1 = normposl*ang(M.D(90*i),0,M.D(40*i))
	end
	speak('Two','Red')
	T.S('hit',2)
	for i = 0,1,o do
	wait()
	rweld.C1 = cfn()*ang(0,M.D(-40*i),0)
	rw.C1 = normposr*ang(M.D(90*i),0,M.D(-40*i))
	lw.C1 = normposl*ang(M.D(90*i),0,M.D(-40*i))
	end
	ef(larm.CFrame*cfn(0,-1,0)*ang(math.pi/2,0,0))
	for i = 1,0,-o do
	wait()
	rweld.C1 = cfn()*ang(0,M.D(-40*i),0)
	rw.C1 = normposr*ang(M.D(90*i),0,M.D(-40*i))
	lw.C1 = normposl*ang(M.D(90*i),0,M.D(-40*i))
	end
	end
	replics = {'Even my granny punches harder!';'You Weakling!';'Do it H-A-R-D-E-R!';'U gotta do better!';'That wuldnt hurt a fly!';'YOU CANT BE SERIOUS!';'That was WAY TOO SLOW!';'You totally MISSED!';}
	speak(replics[math.random(#replics)],'Red')
	rweld.C1 = cfn()
	faketor()
	lock.R(0) lock.L(0)
end

function Kick()
faketor()
necko(1)
weldall(1)
local con = lleg.Touched:connect(function(hit) hum = damage(hit.Parent,30,.5) if hum then
hum.Sit = true
hum.Torso.Velocity = calcp(torso.Position,hum.Torso.Position).lookVector*100+v3n(0,100,0)
end
end)
o = 1/5
for i = 0,1,o do
lhw.C1 = normposl2*ang(M.D(-90*i),0,0)
rhw.C1 = normposr2*ang(M.D(45*i),0,0)
rw.C1 = normposr*ang(M.D(160*i),0,0)
lw.C1 = normposl*ang(M.D(160*i),0,0)
rweld.C1 = cfn()*ang(M.D(-20*i),0,0)
neck2.C0 = normposn2*ang(M.D(20*i),0,0)*cfn(0,0,.3*i)
wait()
end
for i = 1,0,-o do
lhw.C1 = normposl2*ang(M.D(-90*i),0,0)
rhw.C1 = normposr2*ang(M.D(45*i),0,0)
rw.C1 = normposr*ang(M.D(160*i),0,0)
lw.C1 = normposl*ang(M.D(160*i),0,0)
rweld.C1 = cfn()*ang(M.D(-20*i),0,0)
neck2.C0 = normposn2*ang(M.D(20*i),0,0)*cfn(0,0,.3*i)
wait()
end

for i = 0,1,o do
rhw.C1 = normposr2*ang(M.D(-45*i),0,0)*cfn(0,0,.4*i)
lhw.C1 = normposl2*ang(M.D(80*i),0,0)*cfn(0,-.3*i,-.2*i)
rw.C1 = normposr*ang(M.D(-60*i),0,0)
lw.C1 = normposl*ang(M.D(-60*i),0,0)
rweld.C1 = cfn()*ang(M.D(30*i),0,0)
neck2.C0 = normposn2*ang(M.D(-20*i),0,0)*cfn(0,0,-.2*i)
wait()
end
for i = 1,0,-o do
rhw.C1 = normposr2*ang(M.D(-45*i),0,0)*cfn(0,0,.4*i)
lhw.C1 = normposl2*ang(M.D(80*i),0,0)*cfn(0,-.3*i,-.2*i)
rw.C1 = normposr*ang(M.D(-60*i),0,0)
lw.C1 = normposl*ang(M.D(-60*i),0,0)
rweld.C1 = cfn()*ang(M.D(30*i),0,0)
neck2.C0 = normposn2*ang(M.D(-20*i),0,0)*cfn(0,0,-.2*i)
wait()
end
faketor() con:disconnect()
weldall(0)
end

sword = _

function SwordOut()
	lock.R(1)
	if not sword then
		speak('Time for sword training','Blue')
		for i = 0,1,.1 do
			rw.C1 = normposr*ang(M.D(90*i),0,0)
			wait()
		end
		for i = 0,1,.2 do
			rw.C1 = holdpos*ang(M.D(40*i),0,M.D(10*i))
			mouth_mesh.Scale = v3n(1,2*i,1)
			mouth_weld.C1 = mouth_weld_normal*cfn(0,.2*i,-.1*i)
			wait()
		end
		sword = Instance.new("Model",m)
		sword_hdl = T.P(.1,2,.1,'White',0,false,false,sword) T.FM(sword_hdl,'cylinder',1,1,1)
		sword_tip = T.P(.3,1,.3,'New Yeller',0,false,false,sword)
		
		sword_hdl_wld = T.W(sword_hdl,mouth,0,0,0,math.pi/2,0,0)
		sword_tip_wld = T.W(sword_tip,sword_hdl,0,-2.5,0,0,0,0)
		for i = 0,1,.2 do
			sword_tip.Size = v3n(.3,5*i,.3)
			sword_tip_wld.Parent,sword_tip_wld.Part1 = m,sword_hdl
			sword_tip_wld.C1 = cfn(0,3*i,0)
			sword_hdl_wld.C1 = cfn(0,0,-1.25*i)*ang(-math.pi/2+M.D(90*i),0,M.D(45*i))
			wait()
		end
		sword_hdl_wld.Part1 = rarm
		sword_hdl_wld.C1 = cfn(0,-1,0)*ang(-math.pi/2,0,0) npos = sword_hdl_wld.C1
		for i = 1,0,-.2 do
			rw.C1 = holdpos*ang(M.D(40*i),0,M.D(10*i))
			mouth_mesh.Scale = v3n(1,(2*i)+1,1)
			mouth_weld.C1 = mouth_weld_normal*cfn(0,.2*i,-.1*i)
			wait()
		end
		rw.C1 = holdpos
		lock.R(0)
	else sword:Remove() sword = nil lock.R(0)
	end
end
function Slash()
	local con = sword_tip.Touched:connect(function(hit) damage(hit.Parent,10,.1) end)
	lock.R(1) T.S('slash',1)
	for i = 0,1,1/3 do
	rw.C1 = holdpos*ang( M.D(30*i),M.D(60*i),M.D(-40*i) )
	wait()
	end
	old = rw.C1
	for i = 0,1,1/3 do
	rw.C1 = old*ang(M.D(-120*i),0,0)
	wait()
	end
	for i = 1,0,-1/3 do
	rw.C1 = old*ang(M.D(-120*i),0,0)
	wait()
	end
	for i = 1,0,-1/3 do
	rw.C1 = holdpos*ang( M.D(30*i),M.D(60*i),M.D(-40*i) )
	wait()
	end
	lock.R(0)
	con:disconnect()
end

function Grab() 
if not huma then
	found = _
	for i,v in pairs(FindPlayers(torso.Position,10,'')) do
		if not found then
			found = v
		end
	end
	if found then huma = found.Humanoid
	lock.R(1)
	huma_wld = T.W(huma.Torso,torso,0,.1,-1.1,0,0,0)
	rw.C1 = holdpos*ang(M.D(30),0,M.D(30))
	sword_hdl_wld.C1 = npos*ang(0,0,M.D(90))
	huma.PlatformStand = true
	huma_con = huma.Changed:connect(function(prop) if prop == 'PlatformStand' then huma.PlatformStand = true end end)
	end
else
	speak('Muahahahaa!','Blue')
	f = T.F(p,5,3,'Magenta')
	wait(2)
	f.Parent = huma.Torso
	huma.Health = 0
	huma = _
	huma_wld:Remove()
	sword_hdl_wld.C1 = npos
	lock.R(0)
end
end
function Release()
	if huma then
		huma_wld:Remove()
		huma_con:disconnect()
		huma.PlatformStand = false
		huma = nil
		sword_hdl_wld.C1 = npos
		lock.R(0)
	end
end

function Dance()
	faketor()
	weldall(1)
	for _,v in pairs({{0,1,.2},{1,0,-.2}}) do
	for i = v[1],v[2],v[3] do
		rweld.C1 = cfn()*ang(0,M.D(90*i),0)
		rw.C1 = normposr*cfn(-.3*i,.4*i,0)*ang(0,0,M.D(120*i))
		lw.C1 = normposl*cfn(.3*i,0,0)*ang(0,0,M.D(-50*i))
		wait()
	end
	end
	for _,v in pairs({{0,1,.2},{1,0,-.2}}) do
	for i = v[1],v[2],v[3] do
		rweld.C1 = cfn()*ang(0,M.D(-90*i),0)
		lw.C1 = normposl*cfn(.3*i,0,0)*ang(0,0,M.D(-120*i))
		rw.C1 = normposr*cfn(-.3*i,.4*i,0)*ang(0,0,M.D(50*i))
		wait()
	end
	end
	faketor()
	weldall(0)
end
charge = 0
function Rasengan()
lock.R(1) lock.L(1)
	for i = 0,1,.1 do
		rw.C1 = normposr*cfn(-.2*i,0,-.3*i)*ang(M.D(90*i),0,M.D(-40*i))
		lw.C1 = normposl*cfn(.2*i,0,-.3*i)*ang(M.D(90*i),0,M.D(40*i))
		wait()
	end
	local brick = T.P(1,1,1,'Deep blue',.5,false,false)
	local wld = T.W(brick,larm,0,-1.5,0,0,0,0)
	local msh = T.FM(brick,'sphere',1,1,1)
	holding = true
	T.C(function() while holding do spaas(brick.Position,1,3,5,'New Yeller')  wait(.3) end end)
	while holding do
		if charge < 5 then
			charge = charge+1
			msh.Scale = v3n(charge,charge,charge)
		else break
		end
		wait(.5)
	end
	for i = 1,-.5,-.1 do
		rw.C1 = normposr*cfn(-.2*i,0,-.3*i)*ang(M.D(90*i),0,M.D(-40*i))
		lw.C1 = normposl*cfn(.2*i,0,-.3*i)*ang(M.D(90*i),0,M.D(40*i))
		wait()
	end
	char.Humanoid.WalkSpeed = 100
	wait(1)
	for i = -.5,0,1/5 do
		rw.C1 = normposr*cfn(-.2*i,0,-.3*i)*ang(M.D(90*i),0,M.D(-40*i))
		lw.C1 = normposl*cfn(.2*i,0,-.3*i)*ang(M.D(90*i),0,M.D(40*i))
		wait()
	end
	for i = 0,1,1/5 do
		lw.C1 = normposl*ang(M.D(90*i),0,0)
		wait()
	end
	char.Humanoid.WalkSpeed = 16
	wld:Remove()
	brick.Anchored = true
	msh.MeshId = "rbxassetid://"..meshids['spikeb']
	local cha = charge
	T.C(function()
	for i = 0,70,2 do
		msh.Scale = v3n(cha+i/2,cha+i/2,cha+i/2)
		brick.Transparency = i/70
		wait()
	end
	brick:Remove()
	end)
	charge = 0
	lock.R(0) lock.L(0)
end

---GUIS---
udim = function(a,b) return UDim2.new(a,0,b,0) end

beans,bar = 3,0
pcall(function() ply.PlayerGui.lol:Remove() end)
gui = Instance.new("ScreenGui",ply.PlayerGui)
gui.Name = 'lol'
mainframe = genNew('Frame',gui,{
	Size = udim(.1,.1);
	Position = udim(0,.5);})
sensuframe = genNew('Frame',mainframe,{
	Size = udim(.7,1);
	Position = udim(0,0);})
refillframe = genNew('Frame',mainframe,{
	Size = udim(.3,1);
	Position = udim(.7,0);})

function update(a) fr,huh,o = _,_,_
if a == 'Beans' then o = 1/3 image = 'http://www.roblox.com/asset/?id=84570235' fr = sensuframe color = 'White' huh = beans tran = 1
elseif a == 'Bar' then o = 1/5 image = '' fr = refillframe color = 'New Yeller' huh = bar tran = 0 end
	fr:ClearAllChildren()
	for i = 1-tran,huh do 
	but = genNew('ImageLabel',fr,{
		Size = udim(o,1);
		Position = udim(o*(-1+i),0);
		Image = image;
		BackgroundTransparency = tran;
		BackgroundColor = BrickColor.new(color);
	})
end
end
update('Beans')
-----------
sitbp = nil
function sit()
if not sitbp then
lock.R(2) lock.L(2)
sitbp = T.BP(torso,torso.Position)
for i = 0,1,.1 do
wait()
rhw.C1 = normposr2*ang(M.D(90*i),0,M.D(-30*i))
lhw.C1 = normposl2*ang(M.D(90*i),0,M.D(30*i))
sitbp.position = torso.Position - v3n(0,.9*i,0)
end
elseif sitbp then
for i = 1,0,-.1 do
wait()
rhw.C1 = normposr2*ang(M.D(90*i),0,M.D(-30*i))
lhw.C1 = normposl2*ang(M.D(90*i),0,M.D(30*i))
sitbp.position = torso.Position - v3n(0,.9*i,0)
end
lock.R(-1) lock.L(-1)
sitbp:Remove() sitbp = nil
end
end

function Eat()
if beans > 0 then
lock.R(1)
	for i = 0,1,.1 do
		rw.C1 = normposr*ang(M.D(120*i),0,M.D(-40*i))
		wait()
	end
	T.S('crunch',1)
	beans = beans-1 update('Beans')
	hum = FindHumanoid(char,'')
	hum.Health = hum.MaxHealth
	for i = 1,0,-.1 do
		rw.C1 = normposr*ang(M.D(120*i),0,M.D(-40*i))
		wait()
	end
	lock.R(0)
else
	sit()
	speak('Refilling','Green')
	while beans < 3 do for i = 1,5 do bar = i update('Bar') wait(1) end beans=beans+1 update('Beans') bar = 0 end
	bar = 0 refillframe:ClearAllChildren()
	sit()
end
end

klist = {
	{'r',function() if sword then Release() else Equip() end end};
	{'t',function(a) earthdragon(a) end,''};
	{'q',function() Punches() end};
	{'e',function() Kick() end};
	{'f',function() SwordOut() end};
	{'c',function() Rasengan() end,''};
	{'z',function() Eat() end};
	{'g',function() if sword then Grab() else Dance() end end};
	{'j',function() Exorcism() end};
}

onButton1Down = function(mouse)
	if sword then
		Slash()
	else
		Fly(mouse)
	end
end

hop.Deselected:connect(function() lock.R(0) lock.L(0) end)
hop.Selected:connect(function(mouse)
	mouse.Button1Up:connect(function() holding = false end)
	mouse.KeyUp:connect(function(a) for i,v in pairs(klist) do if a == v[1] and v[3] ~= nil then holding = false end end end)
	mouse.KeyDown:connect(function(key)
		if attacking then return end
		for i,v in pairs(klist) do
			if key == v[1] then attacking = true v[2](mouse) attacking = false end
		end
	end)
	mouse.Button1Down:connect(function() if attacking then return end attacking = true onButton1Down(mouse) attacking = false end)
end)
--mediafire