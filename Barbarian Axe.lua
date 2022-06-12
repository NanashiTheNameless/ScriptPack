--- shortcuts
v3 = Vector3.new
cn = CFrame.new
ca2 = CFrame.Angles
mf = math.floor
mran = math.random rn=mran
mrad = math.rad rd=mrad
mdeg = math.deg dg=mdeg
ca = function(x,y,z) return ca2(mrad(x),mrad(y),mrad(z)) end 
mran2 = function(a,b) return mran(a*1000,b*1000)/1000 end 
ud=UDim2.new
bn = BrickColor.new
c3 = Color3.new
-----
Player = game:service'Players'.LocalPlayer
Char = Player.Character
Torso = Char.Torso
Head = Char.Head
Humanoid = Char.Humanoid
Root=Char.HumanoidRootPart.RootJoint

LA=Char['Left Arm']
RA=Char['Right Arm']
LL=Char['Left Leg']
RL=Char['Right Leg']
LAM=Torso['Left Shoulder']
RAM=Torso['Right Shoulder']
LLM=Torso['Left Hip']
RLM=Torso['Right Hip']
Neck=Torso.Neck
Neck.C0=cn(0,1.5,0)
Neck.C1=cn(0,0,0)

name='Axe'

pcall(function() Player.Backpack[name]:Remove() end)
pcall(function() Char[name]:Remove() end)
pcall(function() Char.Block:Remove() end)
pcall(function() Root.Parent.BodyGyro:Destroy() end)
pcall(function() game:GetService("Lighting").Outlines=false end)

as={}
so={'metal','Block','Slash','Slash2','Hit','Kick','Hit2','Smash','SwordSlash','Hit3','Slash4','FireSlash','CounterHelix','FireSound','Chop1'}
as.corner='11294911'
as.cone='1033714'
as.ring="3270017"
as.Chakram='47260990'
as.ring2='18430887'
as.blast='20329976'
as.missile='10207677'
as.fire='2693346'
as.Cloud='1095708'
as.boom='3264793'
as.abscond='2767090'
as.firelaser='13775494'
as.diamond='9756362'
as.metal='rbxasset://sounds\\unsheath.wav'
as.Block = 'rbxasset://sounds\\metal.ogg'
as.SwordSlash = 'rbxasset://sounds//swordslash.wav'
as.Slash = '10209645'
as.Slash2 = '46760716'
as.Slash4 = '109362710'
as.Hit='10209583'
as.Hit2='10209590'
as.Kick='46153268'
as.cast='2101137'
as.Smash='2692806'
as.Hit3='2801263'
as.FireSlash='159218913'
as.CounterHelix='160069154'
as.FireSound='31760113'
as.Crack='49173398'
as.Chop1='159798328'

for i,v in pairs(as) do 
	if type(tonumber(v:sub(1,3)))=="number" then
		as[i]="http://www.roblox.com/asset/?id="..v
		game:GetService("ContentProvider"):Preload(as[i])
	end
end


iNew=function(tab)
	local v=Instance.new(tab[1])
	for Ind,Val in pairs(tab) do
		if Ind~=1 and Ind~=2 then 
			v[Ind] = Val
		end
	end
	v.Parent=tab[2]==0 and LastMade or tab[2]
	LastMade=v
	return v
end

iPart=function(tab)
	local v=Instance.new(tab.type or 'Part')
	if tab.type~='CornerWedgePart' then v.formFactor='Custom' end
	v.CanCollide=false
	v.TopSurface=0 v.BottomSurface=0
	v.Size=v3(tab[2],tab[3],tab[4])
	if tab.co then v.BrickColor=bn(tab.co) end
	if tab.tr then v.Transparency=tab.tr end
	if tab.rf then v.Reflectance=tab.rf end
	if tab.cf then v.CFrame=tab.cf end
	if tab.an then v.Anchored=tab.an end
	v.Parent=tab[1]
	LastMade=v
	return v
end

Block=iNew{'NumberValue',Char,Name='Block',Value=0}
Gyro=iNew{"BodyGyro",Root.Parent,D=50,P=1500}

Root.C0=cn(0,0,0)
Root.C1=cn(0,0,0)

pcall(function() Torso.LAW:Remove() Torso.RAW:Remove() Torso.LLW:Remove() Torso.RLW:Remove() end)
LAW=iNew{'Weld',Torso,Name='LAW',Part0=Torso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)}
RAW=iNew{'Weld',Torso,Name='RAW',Part0=Torso,C0=cn( 1.5,0.5,0),C1=cn(0,0.5,0)}
LLW=iNew{'Weld',Torso,Name='LLW',Part0=Torso,C0=cn(-0.5, -1,0),C1=cn(0,  1,0)}
RLW=iNew{'Weld',Torso,Name='RLW',Part0=Torso,C0=cn( 0.5, -1,0),C1=cn(0,  1,0)}

function Arms(on)
	LAM.Parent=Torso LAM.Part0=Torso
	RAM.Parent=Torso RAM.Part0=Torso
	LAM.Part1=on and nil or LA
	RAM.Part1=on and nil or RA
	LAW.Part1=on and LA  or nil
	RAW.Part1=on and RA  or nil
end

function Legs(on)
	LLM.Parent=Torso LLM.Part0=Torso
	RLM.Parent=Torso RLM.Part0=Torso
	LLM.Part1=on and nil or LL
	RLM.Part1=on and nil or RL
	LLW.Part1=on and LL  or nil
	RLW.Part1=on and RL  or nil
end

function GetWeld(weld) 
    if not weld:findFirstChild("Angle") then 
        local a = Instance.new("Vector3Value", weld) 
        a.Name = "Angle"
        local x,y,z=weld.C0:toEulerAnglesXYZ()
        a.Value=v3(mdeg(x),mdeg(y),mdeg(z)) 
    end 
    return weld.C0.p,weld.Angle.Value
end 
function ClearWeld(weld)
	if weld:findFirstChild'Angle' then 
		weld.Angle:Remove() 
	end 
end
function SetWeld(weld,CC,i, loops, origpos,origangle, nextpos,nextangle,smooth) 
    local CO='C'..CC
    smooth = smooth or 1 
    if not weld:findFirstChild("Angle") then 
        local a = Instance.new("Vector3Value", weld) 
        a.Name = "Angle"
        local x,y,z=weld.C0:toEulerAnglesXYZ()
        a.Value=v3(mdeg(x),mdeg(y),mdeg(z)) 
    end 
 
    local perc 
    if smooth == 1 then 
        perc = math.sin((math.pi/2)/loops*i) 
    else 
        perc = i/loops 
    end 
 
    local tox,toy,toz = 0,0,0 
    if origangle.x > nextangle.x then 
        tox = -math.abs(origangle.x - nextangle.x) *perc 
    else 
        tox = math.abs(origangle.x - nextangle.x) *perc 
    end 
    if origangle.y > nextangle.y then 
        toy = -math.abs(origangle.y - nextangle.y) *perc 
    else 
        toy = math.abs(origangle.y - nextangle.y) *perc 
    end 
    if origangle.z > nextangle.z then 
        toz = -math.abs(origangle.z - nextangle.z) *perc 
    else 
        toz = math.abs(origangle.z - nextangle.z) *perc 
    end 
 
    local tox2,toy2,toz2 = 0,0,0 
    if origpos.x > nextpos.x then 
        tox2 = -math.abs(origpos.x - nextpos.x) *perc 
    else 
        tox2 = math.abs(origpos.x - nextpos.x) *perc 
    end 
    if origpos.y > nextpos.y then 
        toy2 = -math.abs(origpos.y - nextpos.y) *perc 
    else 
        toy2 = math.abs(origpos.y - nextpos.y) *perc 
    end 
    if origpos.z > nextpos.z then 
        toz2 = -math.abs(origpos.z - nextpos.z) *perc 
    else 
        toz2 = math.abs(origpos.z - nextpos.z) *perc 
    end 
         weld.Angle.Value = Vector3.new(origangle.x + tox,origangle.y + toy,origangle.z + toz)
    weld[CO] = CFrame.new(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)*ca(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 


-- Antiboomz0r's functions -----------------------------------------------------------------
TrailOn = false
local ppart = iPart{nil,0.2,0.2,0.2}
ppart.Material = "SmoothPlastic" 
ppart.TopSurface = "SmoothNoOutlines" 
ppart.BottomSurface = "SmoothNoOutlines" 
ppart.RightSurface = "SmoothNoOutlines"
ppart.LeftSurface = "SmoothNoOutlines"

local function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z,
	right.x, top.x, back.x,
	right.y, top.y, back.y,
	right.z, top.z, back.z)
end

function Triangle(a, b, c)
	local edg1 = (c-a):Dot((b-a).unit)
	local edg2 = (a-b):Dot((c-b).unit)
	local edg3 = (b-c):Dot((a-c).unit)
	if edg1 <= (b-a).magnitude and edg1 >= 0 then
		a, b, c = a, b, c
	elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
		a, b, c = b, c, a
	elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
		a, b, c = c, a, b
	else 
		print("unreachable")
	end
	local len1 = (c-a):Dot((b-a).unit)
	local len2 = (b-a).magnitude - len1
	local width = (a + (b-a).unit*len1 - c).magnitude
	local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
	local list = {}
	if len1 > 0.01 then
		local w1 = iNew{
			"WedgePart",
			Pack,
			FormFactor="Custom",
			BrickColor=ppart.BrickColor,
			Transparency=ppart.Transparency,
			Reflectance=ppart.Reflectance,
			Material=ppart.Material,
			CanCollide=ppart.CanCollide
		}
		local sz = v3(0.2, width, len1)
		w1.Size = sz
		local sp = iNew{"SpecialMesh",w1,MeshType="Wedge",Scale=v3(0,1,1)*sz/w1.Size}
		w1:BreakJoints()
		w1.Anchored = true
		w1.Transparency = 0.7
		Spawn(function()
			for i=0,1,0.1 do
				wait()
				w1.Transparency=w1.Transparency+0.03
			end
		end)
		w1.CFrame = maincf*ca2(math.pi,0,math.pi/2)*cn(0,width/2,len1/2)
		table.insert(list,w1)
	end
	if len2 > 0.01 then
		local w2 = iNew{
			"WedgePart",
			Pack,
			FormFactor="Custom",
			BrickColor=ppart.BrickColor,
			Transparency=ppart.Transparency,
			Reflectance=ppart.Reflectance,
			Material=ppart.Material,
			CanCollide=ppart.CanCollide
		}
		local sz = v3(0.2, width, len2) 
		w2.Size = sz
		local sp = iNew{"SpecialMesh",w2,MeshType="Wedge",Scale=v3(0,1,1)*sz/w2.Size}
		w2:BreakJoints()
		w2.Anchored = true
		w2.Transparency = 0.7
		Spawn(function()
			for i=0,1,0.1 do
				wait()
				w2.Transparency=w2.Transparency+0.03
			end
		end)
		w2.CFrame = maincf*ca2(math.pi,math.pi,-math.pi/2)*cn(0,width/2,-len1 - len2/2)
		table.insert(list,w2)
	end
	return unpack(list)
end
-- Antiboomz0r's functions -----------------------------------------------------------------


LoopFunctions={}
function DoLoop(times,func)
	LoopFunctions[#LoopFunctions+1]={times,0,func}
end

function PlaySound(sound,pitch,volume)
	local S0und = tostring(sound)
	so[S0und].Pitch=pitch 
	so[S0und].Volume=volume 
	so[S0und]:Play()
	return S0und
end

function Raycast(Pos,Dir,Ign)
	return workspace:FindPartOnRay(Ray.new(Pos,Dir.unit*300),Ign)
end 
 
function FindGround(cf,ig)
	local ax,ay,az = cf:toEulerAnglesXYZ()
	local bhit,bpos=Raycast(cf.p,cf.p-(cf.p+v3(0,200,0)),ig) 
	if bhit and bpos then 
		return bhit,cn(bpos)*ca(ax,ay,az)
	end 
end

function AddBV(str,cfr,par,debt)
	if not par then return end 
	if par:findFirstChild'LibBV' then 
		par.LibBV:Remove() 
	end 
	BodyVelocity = iNew{'BodyVelocity',par,velocity=cfr.lookVector*str,maxForce=v3(1,1,1)/0,Name='LibBV'} 
	game:GetService("Debris"):AddItem(BodyVelocity,debt)
end

function AddBG(str,par,debt)
	if not par then return end 
	if par:findFirstChild'LibBG' then 
		par.LibBG:Remove() 
	end 
	BodyGyro=iNew{'BodyGyro',par,maxTorque=v3(1,1,1)/0,P=100000,cframe=str,Name='LibBG'} 
	game:GetService("Debris"):AddItem(BodyGyro,debt)
end

function MakeCrack(pos,sc,tim,par,ig)
	Spawn(function() 
		if not tim then 
			tim = 5 
		end 
		local bhit,bpos=Raycast(pos,pos-(pos + v3(0,10,0)),ig)
		if bhit and bpos then
			local Crack = iPart{par or workspace,sc,0.2,sc,ca=false,an=true,tr=1,co=bhit.BrickColor.Name} Crack.CFrame=cn(bpos)*ca(0,rn(-360,360),0)
			local Image = iNew({"Decal",Crack,Face="Top",Texture=as.Crack}) game:GetService("Debris"):AddItem(Crack,tim)
		end 
	end)
end

function MeshEffect(par,cf,x,y,z,inc,col,sha,adj)
	local adj = adj or cn(0,0,0)
	local mp=iPart{par,1,1,1,co=col,tr=0.3,ca=false,an=true} mp.CFrame=cf mp.Name="unray"
	local ms
	if sha:sub(1,4)=='http' then
		ms=iNew{'SpecialMesh',mp,MeshId=sha}
	elseif sha=='Block' then
		ms=iNew{'BlockMesh',mp}
	elseif sha=='Cylinder' then
		ms=iNew{'CylinderMesh',mp}
	elseif sha=='Head' or sha=='Sphere' then
		ms=iNew{'SpecialMesh',mp,MeshType=sha}
	end
	Spawn(function()
		for i=0,1,inc do 
			mp.Transparency=0.2+(0.7*i)
			mp.CFrame=mp.CFrame*adj
			ms.Scale=v3(x,y,z)*(0.3+(0.7*i))
			wait(0)
		end
		mp:Destroy()
	end)
end


Dmg=false
Dmgv={17,23}
SpikeDmg=false
HitDebounce={}
Multiplier = 1
Damage=function(Hum,Mult,Sound)
	if not Hum.Parent:findFirstChild'Torso' then return end 
	local HName=Hum.Parent.Name
	if HitDebounce[HName] and HitDebounce[HName]>tick() then return end 
	HitDebounce[HName]=tick()+0.3
	local Mult=Mult or 1
	local Dealt=mran(Dmgv[1],Dmgv[2])*Mult
	local col=''
	if Hum.Parent:findFirstChild'Block' and Hum.Parent.Block.Value>0 then 
		Hum.Parent.Block.Value=Hum.Parent.Block.Value-1
		col='Bright blue'
		if Sound then
			PlaySound("Block",1,1)
			PlaySound("Hit3",0.8,0.4)
		end
	else
		Hum:TakeDamage(Dealt)
		col='Bright red'
		if Sound then
			PlaySound("Hit3",0.8,0.4)
		end
		if Anim == "HEAD SMASH!" and Hum.Parent:FindFirstChild("Head") then
			for i=1,mran(5,9) do
				local blood = iPart{workspace,0.5,0.5,0.5,co="Bright red"}  blood.CanCollide=true
				game:GetService("Debris"):AddItem(blood,2)
				blood.CFrame = Hum.Parent.Head.CFrame
				blood.Velocity = v3(rn(-2,2),rn(-2,2),rn(-2,2))
				blood.RotVelocity = v3(rn(-2,2),rn(-2,2),rn(-2,2))
			end
		end
	end
	local DoH=iNew{'Model',Pack,Name=col=='Bright blue' and 'Block' or Dealt}
	iNew{'Humanoid',DoH,MaxHealth=0,Health=0,Name=''}
	local Doh=iPart{DoH,1,0.2,1,co=col,an=true} 
	Doh.Name='Head' 
	iNew{'BlockMesh',Doh}
	local dofs=Hum.Parent.Torso.CFrame*cn(mran2(-1.5,1.5),2.5,mran2(-1,1)) 
	Doh.CFrame=dofs
	game:GetService("Debris"):AddItem(Doh,1)
end


-- Weapon
len=8
c={"Dark stone grey","Brown","Medium stone grey","Brick yellow","Reddish brown","Really black"}

Pack=iNew{'Model',Char,Name=name}

Axe = iPart{Pack,0.35,len,0.35,co=c[2]} Axe.Material="Wood"
wAxe = iNew{"Weld",Pack,Part0=LA,Part1=Axe,C0=cn(0,-1,0)*ca(-90,0,0)}

Top = iPart{Pack,0.4,1.1,0.4,co=c[1]}
iNew{"Weld",Pack,Part0=Axe,Part1=Top,C0=cn(0,len/2-0.8,0)*ca(0,90,0)}

AxeHitBox = iPart{Pack,1,4,4,tr=1}
iNew{"Weld",Pack,Part0=Top,Part1=AxeHitBox,C0=ca(0,90,0)}

Bottom = iPart{Pack,0.36,1.1,0.36,co=c[1]}
iNew{"Weld",Pack,Part0=Axe,Part1=Bottom,C0=cn(0,-len/2+0.45,0)}

Part = iPart{Pack,0.2,0.2,0.2,co=c[2]} Part.Material="Wood"
iNew{"Weld",Pack,Part0=Bottom,Part1=Part,C0=cn(0,-0.65,0)}

Ring = iPart{Pack,1,1,1,co=c[1]}
iNew{"Weld",Pack,Part0=Part,Part1=Ring,C0=cn(0,-0.4,0)*ca(0,90,0)}
iNew{"SpecialMesh",Ring,MeshId=as.ring,Scale=v3(0.6,0.6,1.3)}

RingHitBox = iPart{Pack,2,2,1,tr=1}
iNew{"Weld",Pack,Part0=Ring,Part1=RingHitBox}

Grip = iPart{Pack,0.37,1.2,0.37,co=c[4]} Grip.Material="Fabric"
iNew{"Weld",Pack,Part0=Axe,Part1=Grip,C0=cn(0,0.5,0)}

for i=-1,1,2 do
gp = iPart{Pack,0.42,1,0.42,co=c[6]} Grip.Material="Plastic"
iNew{"Weld",Pack,Part0=Grip,Part1=gp,C0=cn(0,0.6*i,0)}
iNew{"BlockMesh",gp,Scale=v3(1,0.05,1)}
end

Grip = iPart{Pack,0.37,1.2,0.37,co=c[4]} Grip.Material="Fabric"
iNew{"Weld",Pack,Part0=Axe,Part1=Grip,C0=cn(0,-2.5,0)}

for i=-1,1,2 do
gp = iPart{Pack,0.42,1,0.42,co=c[6]} Grip.Material="Plastic"
iNew{"Weld",Pack,Part0=Grip,Part1=gp,C0=cn(0,0.6*i,0)}
iNew{"BlockMesh",gp,Scale=v3(1,0.05,1)}
end

for i=-1,1,2 do
p1 = iPart{Pack,0.6,0.9,0.2,co=c[1]}
iNew{"Weld",Pack,Part0=Top,Part1=p1,C0=cn(-0.4*i,0,0)}

p2 = iPart{Pack,0.7,2.25,0.2,co=c[1]}
iNew{"Weld",Pack,Part0=p1,Part1=p2,C0=cn(-0.65*i,0,0)}

p3 = iPart{Pack,0.35,0.9,0.2,co=c[1]}
iNew{"Weld",Pack,Part0=p2,Part1=p3,C0=cn(-0.525*i,0,0)}

b = iPart{Pack,1,1,0.9,co=c[3]}
iNew{"Weld",Pack,Part0=p3,Part1=b,C0=cn(-0.2*i,0,0)*ca(90,0,0)*ca(0,0,90)}
iNew{"BlockMesh",b,Scale=v3(0.1,0.05,1)}

p4 = iPart{Pack,0.2,0.675,0.35,co=c[1]}
iNew{"Weld",Pack,Part0=p3,Part1=p4,C0=cn(0,0.7875,0)*ca(0,90*i,0)}
iNew{"SpecialMesh",p4,MeshType="Wedge"}

b = iPart{Pack,1,1,(0.675^2+0.35^2)^0.5,co=c[3]}
iNew{"Weld",Pack,Part0=p4,Part1=b,C0=ca2(-math.atan(0.675/0.35),0,0)*cn(0,0.025,0)}
iNew{"BlockMesh",b,Scale=v3(0.1,0.05,1)}

p5 = iPart{Pack,0.2,0.675,0.35,co=c[1]}
iNew{"Weld",Pack,Part0=p3,Part1=p5,C0=cn(0,-0.7875,0)*ca(180,90*i,0)}
iNew{"SpecialMesh",p5,MeshType="Wedge"}

b = iPart{Pack,1,1,(0.675^2+0.35^2)^0.5,co=c[3]}
iNew{"Weld",Pack,Part0=p5,Part1=b,C0=ca2(-math.atan(0.675/0.35),0,0)*cn(0,0.025,0)}
iNew{"BlockMesh",b,Scale=v3(0.1,0.05,1)}

p6 = iPart{Pack,0.2,0.8,0.7,co=c[1]} -- 
iNew{"Weld",Pack,Part0=p2,Part1=p6,C0=cn(0,1.525,0)*ca(0,90*i,0)}
iNew{"SpecialMesh",p6,MeshType="Wedge"}

b = iPart{Pack,1,1,(0.8^2+0.7^2)^0.5,co=c[3]}
iNew{"Weld",Pack,Part0=p6,Part1=b,C0=ca2(-math.atan(0.8/0.7),0,0)*cn(0,0.025,0)}
iNew{"BlockMesh",b,Scale=v3(0.1,0.05,1)}

p7 = iPart{Pack,0.2,0.8,0.7,co=c[1]}
iNew{"Weld",Pack,Part0=p2,Part1=p7,C0=cn(0,-1.525,0)*ca(180,90*i,0)}
iNew{"SpecialMesh",p7,MeshType="Wedge"}

b = iPart{Pack,1,1,(0.8^2+0.7^2)^0.5,co=c[3]}
iNew{"Weld",Pack,Part0=p7,Part1=b,C0=ca2(-math.atan(0.8/0.7),0,0)*cn(0,0.025,0)}
iNew{"BlockMesh",b,Scale=v3(0.1,0.05,1)}

p8 = iPart{Pack,0.2,0.675,0.6,co=c[1]}
iNew{"Weld",Pack,Part0=p1,Part1=p8,C0=cn(0,0.7875,0)*ca(0,-90*i,0)}
iNew{"SpecialMesh",p8,MeshType="Wedge"}

p9 = iPart{Pack,0.2,0.675,0.6,co=c[1]}
iNew{"Weld",Pack,Part0=p1,Part1=p9,C0=cn(0,-0.7875,0)*ca(180,-90*i,0)}
iNew{"SpecialMesh",p9,MeshType="Wedge"}
end
for i,v in pairs(Pack:GetChildren()) do if v:IsA("BasePart") then v.CanCollide=false v.Name="Ignore" end end


function Touched(hit)
	if not Dmg and not SpikeDmg then return end 
	if hit.Parent==Char then return end 
	if not hit.Parent then return end
	if hit.Parent:findFirstChild'Humanoid' then 
		local Hum=hit.Parent.Humanoid
		Damage(Hum,Multiplier,true)
		local HMT=Hum.Parent:findFirstChild'Torso' 
		if HMT then
			if Anim~="SPIKEZ" then
				AddBV(20,cn(Torso.Position,HMT.Position),HMT,0.15) 
			end
		end
	end
end
AxeHitBox.Touched:connect(Touched)


for i,v in pairs(Torso:children()) do 
	if v:IsA'Sound' then 
		v:Destroy() 
	end
end

for i,n in pairs(so) do 
	local v=iNew{'Sound',Torso,Volume=1,Pitch=1,Looped=false,Name=v,SoundId=as[n]}
	so[n]=v
end

function ReturnPose()
	RePose()
	for i=1,ASpeed do 
		SetWeld(LAW,0,i,ASpeed,wLA,wLA2,PoseLA,PoseLA2,1) 
		SetWeld(RAW,0,i,ASpeed,wRA,wRA2,PoseRA,PoseRA2,1)
		SetWeld(LLW,0,i,ASpeed,wLL,wLL2,PoseLL,PoseLL2,1)
		SetWeld(RLW,0,i,ASpeed,wRL,wRL2,PoseRL,PoseRL2,1)
		SetWeld(Root,0,i,ASpeed,wRT,wRT2,PoseRT,PoseRT2,1) 
		SetWeld(Neck,0,i,ASpeed,wNE,wNE2,PoseNE,PoseNE2,1) 
		SetWeld(wAxe,0,i,ASpeed,wAX,wAX2,PoseAX,PoseAX2,1) 
		wait(0)
	end
end

function RePose()
	local a,b=GetWeld(LAW)
	local c,d=GetWeld(RAW)
	local e,f=GetWeld(LLW)
	local g,h=GetWeld(RLW)
	local i,j=GetWeld(wAxe)
	local k,l=GetWeld(Root)
	local m,n=GetWeld(Neck)
	wLA=a wLA2=b 
	wRA=c wRA2=d
	wLL=e wLL2=f
	wRL=g wRL2=h
	wAX=i wAX2=j
	wRT=k wRT2=l 
	wNE=m wNE2=n
end


Mouse = Player:GetMouse()
keys={}
Combo = 0
ComboTime = 20
Mouse.Button1Down:connect(function()
	if Anim == "" or string.find(Anim,"Combo") then
		local function Break() 
			Combo=-0.5 
			Humanoid.WalkSpeed = 16
			ReturnPose() 
			Anim="" 
			Combo=0 
		end
		if Combo == 0 then
			Combo = 0.5
				Anim = "Combo1"
				wait(0.1)
				RePose()
				for i=1,ASpeed do 
					SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.5,0.5,0),v3(75,-90+190,0),1) 
					SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.4,0.5,0),v3(100,-90+90,-25),1)
					SetWeld(LLW,0,i,ASpeed,wLL,wLL2,v3(-0.5,-1,0),v3(0,0,-10),1) 
					SetWeld(RLW,0,i,ASpeed,wRL,wRL2,v3(0.5,-1,0),v3(0,0,10),1)  
					SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(0,70,0),1) 
					SetWeld(Neck,0,i,ASpeed,wNE,wNE2,v3(0,1.5,0),v3(0,20,0),1) 
					SetWeld(wAxe,0,i,ASpeed,wAX,wAX2,v3(0,-1,-2.5),v3(-90,0,0),1) 
					wait(0)
				end
				Combo = 1
			DoLoop(ComboTime,function(i)
				if i==1 and Combo==1 then
					Break()
				end
				wait()
			end)
		elseif Combo == 1 then
			Combo = 1.5
				Anim="Combo2"
				wait(0.1)
				RePose()
				Dmg=true
				PlaySound("FireSlash",1,1)
				TrailOn = true
				for i=1,ASpeed/1.5 do 
					SetWeld(LAW,0,i,ASpeed/1.5,wLA,wLA2,v3(-1.5,0.5,0),v3(75,-90+190,0),1) 
					SetWeld(RAW,0,i,ASpeed/1.5,wRA,wRA2,v3(1.4,0.5,0),v3(100,-90+90,-25),1)
					SetWeld(LLW,0,i,ASpeed/1.5,wLL,wLL2,v3(-0.5,-1,0),v3(0,0,-10),1) 
					SetWeld(RLW,0,i,ASpeed/1.5,wRL,wRL2,v3(0.5,-1,0),v3(0,0,10),1)  
					SetWeld(Root,0,i,ASpeed/1.5,wRT,wRT2,v3(0,0,0),v3(0,-150,0),1) 
					SetWeld(Neck,0,i,ASpeed/1.5,wNE,wNE2,v3(0,1.5,0),v3(0,30,0),1) 
					SetWeld(wAxe,0,i,ASpeed/1.5,wAX,wAX2,v3(0,-1,-2.5),v3(-90,0,0),1) 
					wait(0)
				end
				Dmg=false
				TrailOn = false
				Combo = 2
			DoLoop(ComboTime,function(i)
				if i==1 and Combo==2 then
					Break()
				end
				wait()
			end)
		end
	end
end)

Mouse.KeyDown:connect(function(key)
	keys[key]=true
	if keys["q"] then
		if Anim == "" and Combo==0 then
			Anim = "Frontal Ground Smash"
			wait(0.1)
			Legs(0)
			RePose()
			Humanoid.WalkSpeed = 2
			for i=1,ASpeed do 
				SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.2,0,0.2),v3(75,-90+60,20),1) 
				SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.5,0.5,-0.7),v3(120,-80+30,-25),1)
				SetWeld(LLW,0,i,ASpeed,wLL,wLL2,v3(-0.5,-1,0),v3(-20,0,-10),1) 
				SetWeld(RLW,0,i,ASpeed,wRL,wRL2,v3(0.5,0,-1),v3(0,0,10),1)  
				SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(20,0,0),1) 
				SetWeld(Neck,0,i,ASpeed,wNE,wNE2,v3(0,1.5,0),v3(30,0,0),1) 
				SetWeld(wAxe,0,i,ASpeed,wAX,wAX2,PoseAX,v3(-90,45,0),1) 
				wait(0)
			end
			wait(0.15)
			PlaySound("FireSlash",1.2,1)
			Dmg=true
			Multiplier = 2
			RePose()
			TrailOn = true
			for i=1,ASpeed/2 do 
				SetWeld(LAW,0,i,ASpeed/2,wLA,wLA2,v3(-1.3,0.5,0.2),v3(-10,-90+80,0),1) 
				SetWeld(RAW,0,i,ASpeed/2,wRA,wRA2,v3(1.5,0.5,-0.7),v3(40,-80+30,-40),1)
				SetWeld(LLW,0,i,ASpeed/2,wLL,wLL2,v3(-0.5,-1,0),v3(0,0,-10),1) 
				SetWeld(RLW,0,i,ASpeed/2,wRL,wRL2,v3(0.5,-1,0),v3(0,0,10),1)  
				SetWeld(Root,0,i,ASpeed/2,wRT,wRT2,v3(0,0,0),v3(0,0,0),1) 
				SetWeld(Neck,0,i,ASpeed/2,wNE,wNE2,v3(0,1.5,0),v3(-15,8,0),1) 
				SetWeld(wAxe,0,i,ASpeed/2,wAX,wAX2,PoseAX,v3(-90,0,0),1) 
				wait(0)
			end
			PlaySound("Smash",0.35,1)
			Dmg=false
			Multiplier = 1
			TrailOn = false
			ReturnPose()
			Humanoid.WalkSpeed = 16
			Legs(Walking and nil or 0)
			Anim=""
		end
	elseif keys["e"] then
		if Anim == "" and Combo==0 then
			Anim = "Counter Helix"
			wait(0.1)
			RePose()
			for i=1,ASpeed do 
				SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.5,0.5,0),v3(75,-90+190,0),1) 
				SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.4,0.5,0),v3(100,-90+90,-25),1)
				SetWeld(LLW,0,i,ASpeed,wLL,wLL2,v3(-0.5,-1,0),v3(0,0,-10),1) 
				SetWeld(RLW,0,i,ASpeed,wRL,wRL2,v3(0.5,-1,0),v3(0,0,10),1)  
				SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(0,70,0),1) 
				SetWeld(Neck,0,i,ASpeed,wNE,wNE2,v3(0,1.5,0),v3(0,20,0),1) 
				SetWeld(wAxe,0,i,ASpeed,wAX,wAX2,v3(0,-1,-2.5),v3(-90,0,0),1) 
				wait(0)
			end
			PlaySound("CounterHelix",1,1)
			Dmg=true
			RePose()
			TrailOn = true
			Spawn(function()
				for i=1,ASpeed/1.5 do 
					SetWeld(LAW,0,i,ASpeed/1.5,wLA,wLA2,v3(-1.5,0.5,0),v3(75,-90+190,0),1) 
					SetWeld(RAW,0,i,ASpeed/1.5,wRA,wRA2,v3(1.4,0.5,0),v3(100,-90+90,-25),1)
					SetWeld(LLW,0,i,ASpeed/1.5,wLL,wLL2,v3(-0.5,-1,0),v3(0,0,-10),1) 
					SetWeld(RLW,0,i,ASpeed/1.5,wRL,wRL2,v3(0.5,-1,0),v3(0,0,10),1)  
					SetWeld(Neck,0,i,ASpeed/1.5,wNE,wNE2,v3(0,1.5,0),v3(0,30,0),1) 
					SetWeld(wAxe,0,i,ASpeed/1.5,wAX,wAX2,v3(0,-1,-2.5),v3(-90,0,0),1) 
					wait(0)
				end
			end)
			local lolrandom=rn(60,90)
			for i=1,ASpeed*2 do
				SetWeld(Root,0,i,ASpeed*2,wRT,wRT2,v3(0,0,0),v3(0,-360-lolrandom,0),1)
				wait()
				if i==(ASpeed*2) then
					ClearWeld(Root)
					for i=1,1 do
						SetWeld(Root,0,i,1,v3(0,0,0),v3(0,0,0),v3(0,0,0),v3(0,-lolrandom,0),1)
					end
				end
			end
			TrailOn = false
			Dmg=false
			ReturnPose()
			Legs(Walking and nil or 0)
			Anim=""
		end
	elseif keys["r"] then
		if Anim == "" and Combo == 0 then
			Anim = "Spike Upheaval"
			wait(0.1)
			RePose()
			Legs(0)
			for i=1,ASpeed do 
				SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.2,0.8,0),v3(180,-90+90,45),1) 
				SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.2,0.8,0),v3(180,-90+90,-45),1)
				SetWeld(LLW,0,i,ASpeed,wLL,wLL2,v3(-0.5,-1,0),v3(-30,0,-10),1) 
				SetWeld(RLW,0,i,ASpeed,wRL,wRL2,v3(0.5,-1,0),v3(-30,0,10),1)  
				SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(30,0,0),1)
				SetWeld(Neck,0,i,ASpeed,wNE,wNE2,v3(0,1,-0.5),v3(-60,0,0),1) 
				SetWeld(wAxe,0,i,ASpeed,wAX,wAX2,v3(0,-1,-2.5),v3(-90,45,0),1) 
				wait(0)
			end
			wait(0.1)
			Dmg=true
			RePose()
			TrailOn = true
			for i=1,ASpeed/1.3 do 
				SetWeld(LAW,0,i,ASpeed/1.3,wLA,wLA2,v3(-1.2,0.8,0),v3(30,-90+90,35),1) 
				SetWeld(RAW,0,i,ASpeed/1.3,wRA,wRA2,v3(1.2,0.8,0),v3(30,-90+90,-35),1)
				SetWeld(LLW,0,i,ASpeed/1.3,wLL,wLL2,v3(-0.5,-1,0),v3(40,0,-10),1) 
				SetWeld(RLW,0,i,ASpeed/1.3,wRL,wRL2,v3(0.5,-1,0),v3(40,0,10),1)  
				SetWeld(Root,0,i,ASpeed/1.3,wRT,wRT2,v3(0,0,0),v3(-40,0,0),1)
				SetWeld(Neck,0,i,ASpeed/1.3,wNE,wNE2,v3(0,1.5,0),v3(20,0,0),1) 
				SetWeld(wAxe,0,i,ASpeed/1.3,wAX,wAX2,v3(0,-1,-2.5),v3(-90,45,0),1) 
				wait(0)
			end
			TrailOn = false
			Dmg=false
			Anim = "SPIKEZ"
			Spawn(function()
				local BHit,BPos=FindGround(cn(Top.CFrame.p),Char) 
				if BHit then 
					MeshEffect(Pack,BPos*cn(0,1,0),6,4,6,0.1,BHit.BrickColor.Name,as.blast,cn(0,0,0))
				end
				SpikeDmg=true
				local RootCF = Root.Parent.CFrame
				for i=1,7 do
					local Spike = iPart{nil,3,5,3,an=true,ca=true} Spike.Name="Spike"
					game:GetService("Debris"):AddItem(Spike,2)
					Spike.Touched:connect(Touched)
					local BHit,BPos=FindGround(RootCF*cn(0,0,-i*6.5),Char) 
					if BHit then 
						Spike.BrickColor=BHit.BrickColor 
						MakeCrack(BPos.p+v3(0,10,0),6,2,Pack,Char)
						MeshEffect(Pack,cn(BPos.X,BPos.Y,BPos.Z),6,1,6,0.1,BHit.BrickColor.Name,"Sphere",cn(0,0,0))
					end
					iNew{"SpecialMesh",Spike,MeshId=as.cone,Scale=v3(1,8,1)}
					Spawn(function()
						local LOL3,LOL4=mran(-10,10),mran(-10,10)
						for x=-1,1,2 do
							local LOL,LOL2
							if x==-1 then LOL=1 LOL2=8 elseif x==1 then LOL=8 LOL2=1 end
							for i = LOL,LOL2,(x*-0.5) do
								if not BPos then break end
								if x==-1 and i==(LOL+1) then
									PlaySound("Hit3",0.8,0.2)
								end
								Spike.Parent=workspace
								Spike.CFrame = BPos*ca(LOL3,0,LOL4)*cn(0,-5.5+i,0)
								wait(0)
							end
							wait(0.7)
						end
					end)
					wait(0.07)
				end
				repeat wait(0.5) until not workspace:FindFirstChild("Spike")
				SpikeDmg=false
			end)
			wait(0.5)
			ReturnPose()
			Legs()
			Anim = ""
		end
	elseif keys["t"] then
		if Anim == "" and Combo == 0 then
			local Bashing = false
			local FoundChar = nil
			local connection = nil
			Anim = "Bash"
			wait(0.1)
			RePose()
			for i=1,ASpeed do 
				SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.3,0.3,-0.2),v3(45,12,20),1) 
				SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.5,0.6,0.5),v3(70,20,15),1)
				SetWeld(Root,0,i,ASpeed,wRT,wRT2,PoseRT,v3(0,-70,0),1)
				SetWeld(Neck,0,i,ASpeed,wNE,wNE2,PoseNE,v3(0,40,0),1) 
				SetWeld(wAxe,0,i,ASpeed,wAX,wAX2,v3(2.5,-1,0),v3(-90,0,-90),1) 
				wait(0)
			end
			wait(0.1)
			RePose()
			local AnimSpeed = ASpeed/0.8
			for i=1,AnimSpeed do 
				SetWeld(LAW,0,i,AnimSpeed,wLA,wLA2,v3(-1.3,0.3,-0.4),v3(45,12,30),1) 
				SetWeld(RAW,0,i,AnimSpeed,wRA,wRA2,v3(1.5,0.6,0.7),v3(100,20,25),1)
				SetWeld(Root,0,i,AnimSpeed,wRT,wRT2,v3(0,0,1),v3(0,-100,0),1)
				SetWeld(Neck,0,i,AnimSpeed,wNE,wNE2,PoseNE,v3(0,40,0),1) 
				SetWeld(wAxe,0,i,AnimSpeed,wAX,wAX2,v3(3,-1,0),v3(-90,0,-90),1) 
				wait(0)
			end
			wait(0.1)
			Bashing = true
			local function RingTouched(hit)
				if not Bashing then return end
				if hit.Parent==Char then return end 
				if not hit.Parent then return end
				if hit.Parent:findFirstChild'Humanoid' then 
					local Hum=hit.Parent.Humanoid
					local HMT=Hum.Parent:findFirstChild'Torso' 
					local HMH=Hum.Parent:findFirstChild'Head'
					if not HMT or not HMH then return end
					AddBV(10,cn(Torso.Position,HMT.Position),HMT,0.15) 
					PlaySound("Hit3",0.8,0.4)
					Bashing = false 
					FoundChar = Hum.Parent
					MeshEffect(Pack,RingHitBox.CFrame,3,3,3,0.07,"Black",as.blast,cn(0,0,0))
					MeshEffect(Pack,RingHitBox.CFrame*ca(90,0,0),7,7,3,0.07,"Black",as.ring,cn(0,0,0))
					Hum.PlatformStand=true
					repeat wait(0) until Anim == "Ready to HEAD SMASH!"
					Anim = "HEAD SMASH!"
					Humanoid.WalkSpeed = 0
					RePose()
					Legs(0)
					UseGyro = false
					Spawn(function()
						while Anim == "HEAD SMASH!" do
							if FoundChar and FoundChar.Torso and Anim == "HEAD SMASH!" then
								wait(0)
								Hum.PlatformStand=true
								Gyro.maxTorque = v3(1,1,1)/0
								pcall(function()
									Gyro.cframe = cn(Root.Parent.Position,v3(FoundChar.Torso.Position.x,Torso.Position.y,FoundChar.Torso.Position.z))
								end)
							else
								break
							end
						end
						UseGyro = true
					end)
					for i=1,ASpeed do 
						SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.2,0.8,0),v3(180,-90+90,45),1) 
						SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.2,0.8,0),v3(180,-90+90,-45),1)
						SetWeld(LLW,0,i,ASpeed,wLL,wLL2,v3(-0.5,-1,0),v3(-30,0,-10),1) 
						SetWeld(RLW,0,i,ASpeed,wRL,wRL2,v3(0.5,-1,0),v3(-30,0,10),1)  
						SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(30,0,0),1)
						SetWeld(Neck,0,i,ASpeed,wNE,wNE2,v3(0,1,-0.5),v3(-60,0,0),1) 
						SetWeld(wAxe,0,i,ASpeed,wAX,wAX2,v3(0,-1,-2.5),v3(-90,45,0),1) 
						wait(0)
					end
					wait(0.1)
					Dmg=true
					Multiplier = 999
					RePose()
					TrailOn = true
					PlaySound("FireSlash",1.2,1)
					for i=1,ASpeed/1.3 do 
						SetWeld(LAW,0,i,ASpeed/1.3,wLA,wLA2,v3(-1.2,0.8,0),v3(30,-90+90,35),1) 
						SetWeld(RAW,0,i,ASpeed/1.3,wRA,wRA2,v3(1.2,0.8,0),v3(30,-90+90,-35),1)
						SetWeld(LLW,0,i,ASpeed/1.3,wLL,wLL2,v3(-0.5,-1,0),v3(40,0,-10),1) 
						SetWeld(RLW,0,i,ASpeed/1.3,wRL,wRL2,v3(0.5,-1,0),v3(40,0,10),1)  
						SetWeld(Root,0,i,ASpeed/1.3,wRT,wRT2,v3(0,0,0),v3(-40,0,0),1)
						SetWeld(Neck,0,i,ASpeed/1.3,wNE,wNE2,v3(0,1.5,0),v3(20,0,0),1) 
						SetWeld(wAxe,0,i,ASpeed/1.3,wAX,wAX2,v3(0,-1,-2.5),v3(-90,45,0),1) 
						wait(0)
					end
					local BHit,BPos=FindGround(cn(Top.CFrame.p),Char) 
					if BHit and BPos then 
						MeshEffect(Pack,BPos*cn(0,1,0),5,3,5,0.1,BHit.BrickColor.Name,as.blast,cn(0,0,0))
					end
					TrailOn = false
					Multiplier = 1
					Dmg=false
					Humanoid.WalkSpeed = 16
					ReturnPose()
					Legs()
					connection:disconnect()
					Anim = ""
					FoundChar = nil
				end
			end
			connection = RingHitBox.Touched:connect(RingTouched)
			RePose()
			PlaySound("Slash",1,1)
			local AnimSpeed = ASpeed/1.4
			for i=1,AnimSpeed do 
				SetWeld(LAW,0,i,AnimSpeed,wLA,wLA2,v3(-1.3,0.3,-0.2),v3(45,12,-20),1) 
				SetWeld(RAW,0,i,AnimSpeed,wRA,wRA2,v3(1.5,0.6,0.5),v3(70,20,-15),1)
				SetWeld(Root,0,i,AnimSpeed,wRT,wRT2,PoseRT,v3(0,0,0),1)
				SetWeld(Neck,0,i,AnimSpeed,wNE,wNE2,PoseNE,v3(0,60,0),1) 
				SetWeld(wAxe,0,i,AnimSpeed,wAX,wAX2,v3(2.3,-1,0),v3(-90,0,-90),1) 
				wait(0)
			end
			if FoundChar then Humanoid.WalkSpeed = 0 end
			ReturnPose()
			Anim = FoundChar and "Ready to HEAD SMASH!" or ""
			if Anim == "" then Bashing = false FoundChar = nil connection = nil end
		end
	end
end)
	
	
Mouse.KeyUp:connect(function(key)
	keys[key]=false
end)


Anim = ""
ASpeed=12

PoseLA=v3(-1.5,0.5,0) PoseLA2=v3(45,-90+12,0)
PoseRA=v3(1.5,0.5,0) PoseRA2=v3(70,-80,0)
PoseLL=v3(-0.5,-1,0) PoseLL2=v3(0,0,0)
PoseRL=v3(0.5,-1,0) PoseRL2=v3(0,0,0)
PoseRT=v3(0,0,0) PoseRT2=v3(0,0,0)
PoseNE=v3(0,1.5,0) PoseNE2=v3(0,0,0)
PoseAX=v3(0,-1,-2.5) PoseAX2=v3(-90,0,0)
Arms(0) Legs()
ReturnPose()

Walking=false
Humanoid.Running:connect(function(Walk)
	Walking=Walk>0 and true or false
end)


Spawn(function()
	while wait(0) do
		if Anim=="" and Combo==0 then
			if Torso.Velocity.magnitude < 1 then -- IDLE ANIMS
				wait()
				Legs(0)
				RePose()
				for i=1,ASpeed*6.5 do 
					if Torso.Velocity.magnitude>1 or Anim~="" then break end
					SetWeld(LAW,0,i,ASpeed*6.5,wLA,wLA2,v3(-1.5,0.5,0),v3(60,-90+15,0),1) 
					SetWeld(RAW,0,i,ASpeed*6.5,wRA,wRA2,v3(1.5,0.5,0),v3(90,-80+5,0),1)
					SetWeld(LLW,0,i,ASpeed*6.5,wLL,wLL2,v3(-0.5,-1,0),v3(0,0,-15),1) 
					SetWeld(RLW,0,i,ASpeed*6.5,wRL,wRL2,v3(0.5,-1,0),v3(0,0,15),1)  
					SetWeld(Root,0,i,ASpeed*6.5,wRT,wRT2,v3(0,0,0),v3(0,0,0),1) 
					SetWeld(Neck,0,i,ASpeed*6.5,wNE,wNE2,v3(0,1.5,0),v3(3,0,0),1) 
					SetWeld(wAxe,0,i,ASpeed*6.5,wAX,wAX2,PoseAX,PoseAX2,1) 
					if Torso.Velocity.magnitude>1 or Anim~="" then break end
					wait(0)
				end
				wait()
				RePose()
				for i=1,ASpeed*5 do 
					if Torso.Velocity.magnitude>1 or Anim~="" then break end
					SetWeld(LAW,0,i,ASpeed*5,wLA,wLA2,v3(-1.5,0.5,0),v3(55,-90+5,0),1) 
					SetWeld(RAW,0,i,ASpeed*5,wRA,wRA2,v3(1.5,0.5,0),v3(60,-80-5,0),1)
					SetWeld(LLW,0,i,ASpeed*5,wLL,wLL2,v3(-0.5,-1,0),v3(0,0,-8),1) 
					SetWeld(RLW,0,i,ASpeed*5,wRL,wRL2,v3(0.5,-1,0),v3(0,0,8),1)  
					SetWeld(Root,0,i,ASpeed*5,wRT,wRT2,v3(0,0,0),v3(0,0,0),1)
					SetWeld(Neck,0,i,ASpeed*5,wNE,wNE2,v3(0,1.5,0),v3(-8,0,0),1) 
					SetWeld(wAxe,0,i,ASpeed*5,wAX,wAX2,PoseAX,PoseAX2,1) 
					if Torso.Velocity.magnitude>1 or Anim~="" then break end
					wait(0)
				end
				wait()
			else -- RUN ANIMS
				Legs()
				RePose()
				num = 0.5
				for i=1,ASpeed*num do 
					if Torso.Velocity.magnitude<1 or Anim~="" then break end
					SetWeld(LAW,0,i,ASpeed*num,wLA,wLA2,v3(-1.5+0.25,0.5,0),v3(60,-90+15,0),0) 
					SetWeld(RAW,0,i,ASpeed*num,wRA,wRA2,v3(1.5+0.25,0.5,0),v3(90,-80+5,0),0)
					SetWeld(LLW,0,i,ASpeed*num,wLL,wLL2,v3(-0.5,-1,0),v3(0,0,-15),0) 
					SetWeld(RLW,0,i,ASpeed*num,wRL,wRL2,v3(0.5,-1,0),v3(0,0,15),0)  
					SetWeld(Root,0,i,ASpeed*num,wRT,wRT2,v3(0,0,0),v3(0,0,0),0) 
					SetWeld(Neck,0,i,ASpeed*num,wNE,wNE2,v3(0,1.5,0),v3(0,0,0),0) 
					SetWeld(wAxe,0,i,ASpeed*num,wAX,wAX2,PoseAX,PoseAX2,0) 
					if Torso.Velocity.magnitude<1 or Anim~="" then break end
					wait(0)
				end
				wait()
				RePose()
				for i=1,ASpeed*num do 
					if Torso.Velocity.magnitude<1 or Anim~="" then break end
					SetWeld(LAW,0,i,ASpeed*num,wLA,wLA2,v3(-1.5,0.5,0),v3(55,-90+5,0),0) 
					SetWeld(RAW,0,i,ASpeed*num,wRA,wRA2,v3(1.5,0.5,0),v3(60,-80-5,0),0)
					SetWeld(LLW,0,i,ASpeed*num,wLL,wLL2,v3(-0.5,-1,0),v3(0,0,-8),0) 
					SetWeld(RLW,0,i,ASpeed*num,wRL,wRL2,v3(0.5,-1,0),v3(0,0,8),0)  
					SetWeld(Root,0,i,ASpeed*num,wRT,wRT2,v3(0,0,0),v3(0,0,0),0)
					SetWeld(Neck,0,i,ASpeed*num,wNE,wNE2,v3(0,1.5,0),v3(0,0,0),0) 
					SetWeld(wAxe,0,i,ASpeed*num,wAX,wAX2,PoseAX,PoseAX2,1) 
					if Torso.Velocity.magnitude<1 or Anim~="" then break end
					wait(0)
				end
				wait()
			end
		end
	end
end)


UseGyro = true
Count = 0
game:GetService("RunService").RenderStepped:connect(function()
	Count = Count + 1
	if Pack.Parent then
		-- Hitbox ---------------------------------------------------------------------------------
		AxeHitBox.Transparency=1
		RingHitBox.Transparency=1
		-- Trails ---------------------------------------------------------------------------------
		local blcf = AxeHitBox.CFrame*cn(0,0,-0.5)
		if TrailOn then
			if scfr and (AxeHitBox.Position-scfr.p).magnitude > .1 then
				local h = 3.8
				local a,b = Triangle((scfr*cn(0,h/2,0)).p,(scfr*cn(0,-h/2,0)).p,(blcf*cn(0,h/2,0)).p)
				if a then game.Debris:AddItem(a,1) end 
				if b then game.Debris:AddItem(b,1) end
				local a,b = Triangle((blcf*cn(0,h/2,0)).p,(blcf*cn(0,-h/2,0)).p,(scfr*cn(0,-h/2,0)).p)
				if a then game.Debris:AddItem(a,1) end 
				if b then game.Debris:AddItem(b,1) end
				scfr = blcf
			elseif not scfr then
				scfr = blcf
			end
		elseif not TrailsOn then
			scfr = nil
		end
		-- DoLoop Package ---------------------------------------------------------------------------------
		for i,v in pairs(LoopFunctions) do 
			v[2]=v[2]+1
			v[3](v[2]/v[1])
			if v[1]<=v[2] then 
				LoopFunctions[i]=nil 
			end 
		end
		-- Gyro ---------------------------------------------------------------------------------
		if UseGyro then
			Gyro.maxTorque=v3(1,1,1)/0
			Gyro.cframe = cn(Root.Parent.Position,v3(workspace.CurrentCamera.CoordinateFrame.p.x,Torso.Position.y,workspace.CurrentCamera.CoordinateFrame.p.z))*ca(0,180,0)
		else 
			Gyro.maxTorque = v3(0,0,0) 
		end 
		---------------------------------------------------------------------------------
	end
end)