--- shortcuts
v3 = Vector3.new
cn = CFrame.new
ca2 = CFrame.Angles
mf = math.floor
mran = math.random rn=mran
mrad = math.rad rd=mran
mdeg = math.deg
ca = function(x,y,z) return ca2(mrad(x),mrad(y),mrad(z)) end 
mran2 = function(a,b) return mran(a*1000,b*1000)/1000 end 
ud=UDim2.new
bn = BrickColor.new
c3 = Color3.new
-----
-- Player = game:service'Players'.TigreBlood
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

name='Hook and Cleaver'
Range = 100
pcall(function() Player.Backpack[name]:Remove() end)
pcall(function() Char[name]:Remove() end)
pcall(function() Char.Block:Remove() end)
pcall(function() Root.Parent.BodyGyro:Destroy() end)

as,so={},{'metal','Block','Slash','Slash2','Hit','Kick'}
as.corner='11294911'
as.cone='1033714'
as.ring="3270017"
as.Chakram='47260990'
as.ring2='18430887'
as.blast='20329976'
as.missile='10207677'
as.fire='2693346'
as.boom='3264793'
as.slash='10209645'
as.abscond='2767090'
as.firelaser='13775494'
as.diamond='9756362'
as.metal='rbxasset://sounds\\unsheath.wav'
as.Block = 'rbxasset://sounds\\metal.ogg'
as.Slash = '10209645'
as.Slash2 = '46760716'
as.Hit='10209583'
as.Kick='46153268'
as.cast='2101137'


for i,v in pairs(as) do 
	if type(tonumber(v:sub(1,3)))=="number" then
		as[i]="http://www.roblox.com/asset/?id="..v
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
	v.Material = "SmoothPlastic"
	v.CanCollide=false
	v.TopSurface=10 v.BottomSurface=10 v.RightSurface=10 v.LeftSurface=10 v.BackSurface=10 v.FrontSurface=10
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

LoopFunctions={}
function DoLoop(times,func)
	LoopFunctions[#LoopFunctions+1]={times,0,func}
end

Combo = 0
HookHit = false
Dmg=false
Dmg2=false
Dmgv={17,23}
HitDebounce={}

Damage=function(Hum,Mult,Sound)
	if not Hum.Parent:findFirstChild'Torso' then return end 
	local HName=Hum.Parent.Name
	if HitDebounce[HName] and HitDebounce[HName]>tick() then return end 
	HitDebounce[HName]=tick()+0.5
	local Mult=Mult or 1
	local Dealt=mran(Dmgv[1],Dmgv[2])*Mult
	local col=''
	if Hum.Parent:findFirstChild'Block' and Hum.Parent.Block.Value>0 then 
		Hum.Parent.Block.Value=Hum.Parent.Block.Value-1
		col='Bright blue'
	else
		Hum.Health=Hum.Health-Dealt
		col='Bright red'
	end
	if Sound then 
		so[col=='Bright blue' and 'Block' or 'Hit']:Play() 
	end
	local DoH=iNew{'Model',Pack,Name=col=='Bright blue' and 'Block' or Dealt}
	iNew{'Humanoid',DoH,MaxHealth=0,Health=0,Name=''}
	local Doh=iPart{DoH,1,0.2,1,co=col,an=true} 
	Doh.Name='Head' 
	iNew{'BlockMesh',Doh}
	local dofs=Hum.Parent.Torso.CFrame*cn(mran2(-1.5,1.5),2.5,mran2(-1,1)) 
	Doh.CFrame=dofs
	DoLoop(40,function(i) 
		Doh.CFrame=dofs*cn(0,i*2,0) Doh.Transparency=i-0.5 
		if i==1 then 
			DoH:Remove() 
		end 
	end)
end

Trails={}
TrailPack={}
Traili={}
function Trail(obj,ofs,col)
	Trails[obj]=true
	Traili[#Traili+1]={obj,ofs,col,obj.CFrame*ofs}
end


Gyro=iNew{"BodyGyro",Root.Parent,D=50,P=1500}

c={'Dark stone grey','Reddish brown','Light stone grey'}
Tool=iNew{'HopperBin',Player.Backpack,Name=name}
Pack=iNew{'Model',Char,Name=name}

-- hook
Hook = iPart{Pack,0.25,1,0.25,co=c[1]}
wHook= iNew{"Weld",Pack,Part0=RL,Part1=Hook,C0=cn(0.625,1,0)*ca(210,0,0)} iNew{"CylinderMesh",Hook}

hpb = iPart{Pack,0.2,0.2,0.2,co=c[1]}
iNew{"Weld",Pack,Part0=Hook,Part1=hpb,C0=cn(0,-0.55,0)} 
iNew{"CylinderMesh",hpb,Scale=v3(0.5,0.5,0.5)}

hpr = iPart{Pack,1,1,1,co=c[1]}
iNew{"Weld",Pack,Part0=hpb,Part1=hpr,C0=cn(0,-0.25,0)*ca(0,90,0)}
iNew{"SpecialMesh",hpr,MeshId=as.ring,Scale=v3(0.4,0.4,0.6)}

hpr = iPart{Pack,0,0,0,tr=1}
iNew{"Weld",Pack,Part0=hpb,Part1=hpr,C0=cn(0,-0.45,0)}

hb = iPart{Pack,0.25,0.25,0.25,co=c[1]}
iNew{"Weld",Pack,Part0=Hook,Part1=hb,C0=cn(0,0.5,0)} iNew{"SpecialMesh",hb,MeshType="Sphere"}

h1 = iPart{Pack,0.25,0.5,0.25,co=c[1]}
iNew{"Weld",Pack,Part0=hb,Part1=h1,C0=ca(60,0,0)*cn(0,0.25,0)} iNew{"CylinderMesh",h1}

h1b = iPart{Pack,0.25,0.25,0.25,co=c[1]} h1b.Name="Ball1"
iNew{"Weld",Pack,Part0=h1,Part1=h1b,C0=cn(0,0.25,0)} iNew{"SpecialMesh",h1b,MeshType="Sphere"}

for i=1,4 do
	hpart = iPart{Pack,0.25,0.5,0.25,co=c[1]} iNew{"CylinderMesh",hpart}
	iNew{"Weld",Pack,Part0=Pack["Ball"..i],Part1=hpart,C0=ca(-45,0,0)*cn(0,0.25,0)}
	hball = iPart{Pack,0.25,0.25,0.25,co=c[1]} hball.Name="Ball"..(i+1) iNew{"SpecialMesh",hball,MeshType="Sphere"}
	if hball.Name ~= "Ball5" then
		iNew{"Weld",Pack,Part0=hpart,Part1=hball,C0=cn(0,0.25,0)}
	else
		iNew{"Weld",Pack,Part0=hpart,Part1=hball,C0=cn(0,0.25,0)*ca(-45,0,0)}
	end
end

spi = iPart{Pack,0.25,0.5,0.25,co=c[1]}
iNew{"Weld",Pack,Part0=Pack["Ball5"],Part1=spi,C0=cn(0,0.3,0)} iNew{"SpecialMesh",spi,MeshId=as.cone,Scale=v3(0.125,0.7,0.125)}

HookHitBox = iPart{Pack,0.4,1.25,1.25,tr=1}
iNew{"Weld",Pack,Part0=Hook,Part1=HookHitBox,C0=cn(0,1.2,0)}

-- cleaver
Cleaver = iPart{Pack,0.25,1,0.25,co=c[2]} 
wCleaver = iNew{"Weld",Pack,Part0=LL,Part1=Cleaver,C0=cn(-0.625,1,0)*ca(210,0,0)} Cleaver.Material="Wood"

hpb = iPart{Pack,0.2,0.2,0.2,co=c[1]}
iNew{"Weld",Pack,Part0=Cleaver,Part1=hpb,C0=cn(0,-0.55,0)}
iNew{"CylinderMesh",hpb,Scale=v3(0.5,0.5,0.5)}

cpr=iPart{Pack,0.3,0.3,0.3,co=c[1]}
iNew{"Weld",Pack,Part0=hpb,Part1=cpr,C0=cn(0,-0.25,0)}
iNew{"SpecialMesh",cpr,MeshId=as.ring,Scale=v3(0.4,0.4,0.6)}

hs1=iPart{Pack,1,1,1,co=c[3]}
iNew{"Weld",Pack,Part0=Cleaver,Part1=hs1,C0=cn(0,-0.4,0)*ca(0,0,90)}
iNew{"CylinderMesh",hs1,Scale=v3(0.1,0.3,0.1)}

hs2=iPart{Pack,1,1,1,co=c[3]}
iNew{"Weld",Pack,Part0=Cleaver,Part1=hs2,C0=cn(0,0.4,0)*ca(0,0,90)}
iNew{"CylinderMesh",hs2,Scale=v3(0.1,0.3,0.1)}

bl=iPart{Pack,1,1.5,0.6,co=c[1]}
iNew{"Weld",Pack,Part0=Cleaver,Part1=bl,C0=cn(0,1.15,-0.3+0.135)}
iNew{"BlockMesh",bl,Scale=v3(0.12,1,1)}

for i=-1,1,2 do
	bw=iPart{Pack,1.5,0.2,1,co=c[3]}
	iNew{"Weld",Pack,Part0=bl,Part1=bw,C0=cn(0.03*i,0,-0.4)*ca(0,-90*i,90*i)}
	iNew{"SpecialMesh",bw,MeshType="Wedge",Scale=v3(1,1,0.06)}
end

for i=0,360,360/8 do
	prop = iPart{Pack,1,1,1,co=c[1]}
	iNew{"Weld",Pack,Part0=bl,Part1=prop,C0=cn(0,0.6,0.375)*ca(i,0,0)*cn(0,0,0.1)}
	iNew{"BlockMesh",prop,Scale=v3(0.12,0.12,0.075)}
end

prop = iPart{Pack,1,1,0.25,co=c[1]}
iNew{"Weld",Pack,Part0=bl,Part1=prop,C0=cn(0,0.72,0.425)}
iNew{"BlockMesh",prop,Scale=v3(0.12,0.06,1)}

prop = iPart{Pack,1,0.25,1,co=c[1]}
iNew{"Weld",Pack,Part0=bl,Part1=prop,C0=cn(0,0.6,0.52)}
iNew{"BlockMesh",prop,Scale=v3(0.12,1,0.06)}

prop = iPart{Pack,1,0.2,0.75,co=c[1]}
iNew{"Weld",Pack,Part0=bl,Part1=prop,C0=cn(0,0.125,0.45)*ca(90,180,0)}
iNew{"SpecialMesh",prop,Scale=v3(0.12,1,1),MeshType="Wedge"}

propl = iPart{Pack,1,1,0.75,co=c[1]}
iNew{"Weld",Pack,Part0=bl,Part1=propl,C0=cn(0,0.125,0.325)*ca(90,180,0)}
iNew{"BlockMesh",propl,Scale=v3(0.12,0.05,1)}

prop = iPart{Pack,1,1,0.5,co=c[1]}
iNew{"Weld",Pack,Part0=propl,Part1=prop,C0=cn(0,0,-1.25/2)}
iNew{"SpecialMesh",prop,Scale=v3(0.12,0.05,1),MeshType="Wedge"}

CleaverHitBox = iPart{Pack,0.4,1.6,1.25,tr=1}
iNew{"Weld",Pack,Part0=Cleaver,Part1=CleaverHitBox,C0=cn(0,1.15,-0.2)}

for i,v in pairs(Pack:GetChildren()) do if v:IsA("BasePart") then v.CanCollide=false v.Name="Ignore" end end

hTW=nil
HookHitBox.Touched:connect(function(hit)
	if Anim == "Throwing Hook" and not HookHit then
		if hit.Parent~=Char and hit.Parent:FindFirstChild("Humanoid") then
			HookHit = true
			local hHum = hit.Parent:FindFirstChild("Humanoid")
			hHum.PlatformStand=true
			DoLoop(20,function(i)
				wait()
				if i==1 then
					hHum.PlatformStand=false
				end
			end)
			Spawn(function()
				while HookHit do
					hit.Parent.Torso.CFrame = HookHitBox.CFrame*ca(0,0,90)*ca(0,90,0)
					wait()
				end
			end)
		end
	end
	if not Dmg then return end 
	if hit.Parent==Char then return end 
	if hit.Parent:findFirstChild'Humanoid' then 
		local h=hit.Parent.Humanoid
		Damage(h,1,true)
	end
end)

CleaverHitBox.Touched:connect(function(hit)
	if not Dmg2 then return end 
	if hit.Parent==Char then return end 
	if hit.Parent:findFirstChild'Humanoid' then 
		local h=hit.Parent.Humanoid
		Damage(h,1,true)
	end
end)

for i,v in pairs(Torso:children()) do 
	if v:IsA'Sound' then 
		v:Remove() 
	end
end
for i,n in pairs(so) do 
	local v=iNew{'Sound',Torso,Volume=1,Pitch=1,Looped=false,Name=v,SoundId=as[n]}
	so[n]=v
end

function RePose()
	local a,b=GetWeld(LAW)
	local c,d=GetWeld(RAW)
	local e,f=GetWeld(wHook)
	local g,h=GetWeld(wCleaver)
	local i,j=GetWeld(Root)
	local k,l=GetWeld(Neck)
	oPoseLA=a oPoseLA2=b 
	oPoseRA=c oPoseRA2=d
	oPoseHook=e oPoseHook2=f
	oPoseCleaver=g oPoseCleaver2=h
	oPoseRT=i oPoseRT2=j 
	oPoseNE=k oPoseNE2=l
end

function ReturnPose()
	local wLA,wLA2=GetWeld(LAW)
	local wRA,wRA2=GetWeld(RAW)
	local wRT,wRT2=GetWeld(Root)
	local AA,AA2=GetWeld(wHook)
	local BB,BB2=GetWeld(wCleaver) 
	local wNE,wNE2=GetWeld(Neck) 
	for i=1,ASpeed do 
		SetWeld(LAW,0,i,ASpeed,wLA,wLA2,PoseLA,PoseLA2,1) 
		SetWeld(RAW,0,i,ASpeed,wRA,wRA2,PoseRA,PoseRA2,1) 
		SetWeld(wHook,0,i,ASpeed,AA,AA2,PoseHook,PoseHook2,1) 
		SetWeld(wCleaver,0,i,ASpeed,BB,BB2,PoseCleaver,PoseCleaver2,1) 
		SetWeld(Root,0,i,ASpeed,wRT,wRT2,PoseRT,PoseRT2,1) 
		SetWeld(Neck,0,i,ASpeed,wNE,wNE2,PoseNE,PoseNE2,1) 
		wait()
	end
end
function TorsoROT(i,rot,spid)
	SetWeld(Root,0,i,spid,oPoseRT,oPoseRT2,PoseRT,v3(0,rot,0),1) 
	SetWeld(Neck,0,i,spid,oPoseNE,oPoseNE2,PoseNE,v3(0,-rot,0),1) 
end

Block=iNew{'NumberValue',Char,Name='Block',Value=0}


key={}
Tool.Selected:connect(function(mouse)
print'Selected'
Mouse=mouse
	if Anim=='None' then 
		Anim='Equipping'
        Arms(0)
		for i=1,ASpeed do 
			SetWeld(LAW,0,i,ASpeed,OrigLA,OrigLA2,OrigLA,v3(-25,0,5),1) 
			SetWeld(RAW,0,i,ASpeed,OrigRA,OrigRA2,OrigRA,v3(-25,0,-5),1) 
			wait()
		end
		local ofs = RA.CFrame:toObjectSpace(Hook.CFrame)
		wHook.Part0=RA wHook.C0=ofs ClearWeld(wHook)
		local AA,AA2=GetWeld(wHook)
		local ofs = LA.CFrame:toObjectSpace(Cleaver.CFrame)
		wCleaver.Part0=LA wCleaver.C0=ofs ClearWeld(wCleaver)
		local BB,BB2=GetWeld(wCleaver)
		for i=1,ASpeed do 
			SetWeld(wHook,0,i,ASpeed,AA,AA2,PoseHook,PoseHook2,1) 
			SetWeld(wCleaver,0,i,ASpeed,BB,BB2,PoseCleaver,PoseCleaver2,1) 
			wait() 
		end
        ReturnPose()
        Anim='Equipped'
	end

	Mouse.KeyDown:connect(function(k)
		key[k]=true
		if k=="q" and Anim == "Equipped" and Combo == 0 then
			Anim = "Cleaver Slash"
			RePose()
			for i=1,ASpeed do 
				so['Slash']:Play()
				SetWeld(LAW,0,i,ASpeed,PoseLA,PoseLA2,PoseLA,v3(200,0,-35),1)
				SetWeld(Neck,0,i,ASpeed,oPoseNE,oPoseNE2,PoseNE,v3(15,15,0),1)
				wait()
			end
			Trail(Cleaver,cn(0,1.75,-0.75),'White')
			Dmg2=true
			for i=1,ASpeed/2 do 
				SetWeld(LAW,0,i,ASpeed/2,PoseLA,v3(200,0,-35),PoseLA,v3(20,0,20),1) 
				SetWeld(Neck,0,i,ASpeed/2,oPoseNE,v3(15,15,0),PoseNE,v3(-5,-5,0),1)
				wait()
			end
			Trails[Cleaver]=false
			Dmg2=false
			ReturnPose()
			Anim="Equipped"
		elseif k=="e" and Anim=="Equipped" and Combo == 0 then
			Anim = "Hook Slash"
			RePose()
			for i=1,ASpeed do 
				so['Slash']:Play()
				SetWeld(RAW,0,i,ASpeed,PoseRA,PoseRA2,PoseRA,v3(200,0,35),1) 
				SetWeld(Neck,0,i,ASpeed,oPoseNE,oPoseNE2,PoseNE,v3(15,-15,0),1)
				wait()
			end
			Trail(Hook,cn(0,1,-0.75),'White')
			Dmg=true
			for i=1,ASpeed/2 do 
				SetWeld(RAW,0,i,ASpeed/2,PoseRA,v3(200,0,35),PoseRA,v3(20,0,-20),1) 
				SetWeld(Neck,0,i,ASpeed/2,oPoseNE,v3(15,-15,0),PoseNE,v3(-5,5,0),1)
				wait()
			end
			Trails[Hook]=false
			Dmg=false
			ReturnPose()
			Anim="Equipped"
		elseif k=="r" and Anim=="Equipped" then
			Anim = "Combo"
			local function Break() Combo=-0.5 ReturnPose() Anim="Equipped" Combo=0 end
			if Combo==0 then
					Combo=0.5
					Anim="Slash 1"
					RePose()
					for i=1,ASpeed do
						SetWeld(LAW,0,i,ASpeed,PoseLA,PoseRA2,v3(-1.2,0.5,0),v3(180,0,-10),1) 
						SetWeld(RAW,0,i,ASpeed,PoseRA,PoseRA2,v3(1.2,0.5,0),v3(180,0,10),1) 
						SetWeld(Neck,0,i,ASpeed,oPoseNE,oPoseNE2,PoseNE,v3(40,0,0),1)
						wait()
					end
					Anim="Equipped"
					Combo=1
				DoLoop(5,function(i)
					if i==1 and Combo==1 then
						Break()
					end
					wait()
				end)
			elseif Combo==1 then
					Combo=1.5
					anim="Slash 1"
					Dmg=true Dmg2=true
					so['Slash']:Play()
					Trail(Hook,cn(0,1,-0.75),'White')
					Trail(Cleaver,cn(0,1.75,-0.75),'White')
					RePose()
					local wLA,wLA2=GetWeld(LAW)
					local wRA,wRA2=GetWeld(RAW)
					local wNE,wNE2=GetWeld(Neck)
					for i=1,ASpeed/2 do
						SetWeld(LAW,0,i,ASpeed/2,wLA,wLA2,PoseLA,v3(-15,0,0),1) 
						SetWeld(RAW,0,i,ASpeed/2,wRA,wRA2,PoseRA,v3(-15,0,0),1) 
						SetWeld(Neck,0,i,ASpeed/2,wNE,wNE2,PoseNE,v3(-20,0,0),1)
						wait()
					end
					Dmg=false Dmg2=false
					Trails[Hook]=false Trails[Cleaver]=false
					Anim="Equipped"
					Combo=2
				DoLoop(5,function(i)
					if i==1 and Combo==2 then
						Break()
					end
					wait()
				end)
			elseif Combo==2 then
					Combo=2.5
					Anim="Slash 2"
					local wLA,wLA2=GetWeld(LAW)
					local wRA,wRA2=GetWeld(RAW)
					local wNE,wNE2=GetWeld(Neck)
					for i=1,ASpeed do
						SetWeld(LAW,0,i,ASpeed,wLA,wRA2,v3(-1.2,0.5,0),v3(110,0,30),1) 
						SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.2,0.5,0),v3(110,0,-30),1) 
						SetWeld(Neck,0,i,ASpeed,wNE,wNE2,PoseNE,v3(40,0,0),1)
						wait()
					end
					Anim="Equipped"
					Combo=3
				DoLoop(5,function(i)
					if i==1 and Combo==3 then
						Break()
					end
					wait()
				end)
			elseif Combo==3 then
					Combo=3.5
					Anim="Slash 2"
					Dmg=true Dmg2=true
					so['Slash']:Play()
					Trail(Hook,cn(0,1,-0.75),'White')
					Trail(Cleaver,cn(0,1.75,-0.75),'White')
					local wLA,wLA2=GetWeld(LAW)
					local wRA,wRA2=GetWeld(RAW)
					local wNE,wNE2=GetWeld(Neck)
					for i=1,ASpeed/2 do
						SetWeld(LAW,0,i,ASpeed/2,wLA,wLA2,PoseLA,v3(-40,0,-30),1) 
						SetWeld(RAW,0,i,ASpeed/2,wRA,wRA2,PoseRA,v3(-40,0,30),1) 
						SetWeld(Neck,0,i,ASpeed/2,wNE,wNE2,PoseNE,v3(-20,0,0),1)
						wait()
					end
					Dmg=false Dmg2=false
					Trails[Hook]=false Trails[Cleaver]=false
					Anim="Equipped"
					Combo=4
				DoLoop(5,function(i)
					if i==1 and Combo==4 then
						Break()
					end
					wait()
				end)
			end
		end
	end)--keys
	
	Mouse.KeyUp:connect(function(k)
		key[k]=false
	end)
	
	Mouse.Button1Down:connect(function()
		if Anim == "Equipped" and Combo == 0 then
			local Dist = nil
			Anim = "Getting Ready"
			Humanoid.WalkSpeed = 4
			RePose()
			for i=1,ASpeed do 
				TorsoROT(i,80,ASpeed)
				SetWeld(RAW,0,i,ASpeed,PoseRA,PoseRA2,PoseRA,v3(0,190,-90),1) 
				SetWeld(wHook,0,i,ASpeed,PoseHook,PoseHook2,v3(0,-2,0),v3(-180,0,0),1)
				wait()
			end
			Anim = "Throwing Hook"
			so['Slash']:Play()
			Rope=iPart{Pack,0.2,1,0.2,co="Reddish brown",an=true}
			iNew{"CylinderMesh",Rope}
			Dmg=true
			for i=1,ASpeed*3 do
				if HookHit then break end
				SetWeld(wHook,0,i,ASpeed*3,v3(0,-2,0),v3(-180,0,0),v3(0,-2-(Range),0),v3(-180,0,0),1)
				wait()
			end
			Dist = wHook.C0.Y
			Anim = "Retrieving Hook"
			Humanoid.WalkSpeed=16
			Dmg=false
			for i=1,ASpeed*(-Dist/20) do
				SetWeld(Root,0,i,ASpeed*(-Dist/20),oPoseRT,v3(0,80,0),PoseRT,v3(0,-60,0),1) 
				SetWeld(Neck,0,i,ASpeed*(-Dist/20),oPoseNE,v3(0,-80,0),PoseNE,v3(0,60,0),1) 
				SetWeld(RAW,0,i,ASpeed*(-Dist/20),PoseRA,v3(0,190,-90),PoseRA,v3(0,190+150,-90),1) 
				SetWeld(wHook,0,i,ASpeed*(-Dist/20),v3(0,Dist,0),v3(-180,0,0),v3(0,-2,0),v3(-180,0,0),1)
				wait()
			end
			pcall(function() hTW:Destroy() end)
			HookHit=false
			ReturnPose()
			Anim = "Equipped"
		end
	end)
end) -- select

Tool.Deselected:connect(function(mouse)
	print'Deselected'
	Mouse=nil
	if Anim=='Equipped' and Combo == 0 then 
		Anim='Unequipping'
        RePose()
		for i=1,ASpeed do 
			SetWeld(LAW,0,i,ASpeed,PoseLA,PoseLA2,OrigLA,v3(-25,0,5),1) 
			SetWeld(RAW,0,i,ASpeed,PoseRA,PoseRA2,OrigRA,v3(-25,0,-5),1) 
			wait()
		end
		local ofs = RL.CFrame:toObjectSpace(Hook.CFrame)
        wHook.Part0=RL wHook.C0=ofs ClearWeld(wHook)
        local AA,AA2=GetWeld(wHook)
        local ofs = LL.CFrame:toObjectSpace(Cleaver.CFrame)
        wCleaver.Part0=LL wCleaver.C0=ofs ClearWeld(wCleaver)
        local BB,BB2=GetWeld(wCleaver) 
		for i=1,ASpeed do 
			SetWeld(wHook,0,i,ASpeed,AA,AA2,v3(0.625,1,0),v3(210,0,0),1) 
			SetWeld(wCleaver,0,i,ASpeed,BB,BB2,v3(-0.625,1,0),v3(210,0,0),1) 
			wait() 
		end
		for i=1,ASpeed do 
			SetWeld(LAW,0,i,ASpeed,PoseLA,v3(-25,0,5),OrigLA,OrigLA2,1) 
			SetWeld(RAW,0,i,ASpeed,PoseRA,v3(-25,0,-5),OrigRA,OrigRA2,1) 
			wait()
		end
        Arms()
        Anim='None'
	end
end) --deselect


print(#Pack:children())
Root.C0=cn(0,0,0)*ca(0,0,0)
Root.C1=cn(0,0,0)*ca(0,0,0)
Arms()
Legs()

WalkAnim=0
Walking=false
Humanoid.Running:connect(function(Walk)
	Walking=Walk>0 and true or false
end)

Anim='None'
ASpeed=10
OrigLA=v3(-1.5,0.5,0) OrigLA2=v3(0,0,0)
OrigRA=v3( 1.5,0.5,0) OrigRA2=v3(0,0,0)
--Pose
PoseLA=v3(-1.5,0.5,0) PoseLA2=v3(0,0,-10)
PoseRA=v3( 1.5,0.5,0) PoseRA2=v3(0,0,10)
PoseHook=v3(0,-1,0) PoseHook2=v3(-90,0,0)
PoseCleaver=v3(0,-1,0) PoseCleaver2=v3(-90,0,0)
PoseRT=v3(0,0,0) PoseRT2=v3(0,0,0)
PoseNE=v3(0,1.5,0) PoseNE2=v3(0,0,0)

while Pack.Parent do
	-- Rope
	if Anim == "Throwing Hook" or Anim == "Retrieving Hook" then
		Mag=(RA.Position-hpr.Position).magnitude
		Rope.Size=v3(0.2,Mag,0.2)
		Rope.CFrame=RA.CFrame*cn(0,-Mag/2,0)
	else
		pcall(function()
			Rope:Destroy()
		end)
	end
	
	--Trailing Package
	for i,v in pairs(Traili) do 
		if Trails[v[1]] then
			local obj,ofs,col,lastofs=v[1],v[2],v[3],v[4]
			local length=(obj.CFrame*ofs.p-lastofs.p).magnitude
			local ob=iPart{Pack,0.4,length,0.4,co=col,tr=0.5,an=true,cf=CFrame.new(obj.CFrame*ofs.p,lastofs.p)}
			iNew{'CylinderMesh',ob}
			Traili[i][4]=ob.CFrame
			ob.CFrame=ob.CFrame*cn(0,0,-length/2)*ca(90,0,0)
			TrailPack[#TrailPack+1]={ob,1,-0.1}
		else
			Traili[i]=nil
		end
	end
	for i,v in pairs(TrailPack) do 
		v[2]=v[2]+v[3]
		if v[2]<=0 then 
			v[1]:Remove()
			TrailPack[i]=nil 
		else
			v[1].Transparency=0.5+(0.45-0.45*v[2])
			v[1].Mesh.Scale=v3(v[2],1,v[2])
		end
	end	
	--DoLoop Package
	for i,v in pairs(LoopFunctions) do 
		v[2]=v[2]+1
		v[3](v[2]/v[1])
		if v[1]<=v[2] then 
			LoopFunctions[i]=nil 
		end 
	end
	--[[
	HookHitBox.CFrame=Hook.CFrame*cn(0,1.2,0)
	HookHitBox.Velocity=v3(0,0,0) HookHitBox.RotVelocity=v3(0,0,0)
	CleaverHitBox.CFrame=Cleaver.CFrame*cn(0,1.15,-0.2)
	CleaverHitBox.Velocity=v3(0,0,0) CleaverHitBox.RotVelocity=v3(0,0,0)
	]]
	-- Gyro
	if Anim~="None" then
		Gyro.maxTorque=v3(1,1,1)/0
		Gyro.cframe = cn(Root.Parent.Position,v3(workspace.CurrentCamera.CoordinateFrame.p.x,Root.Parent.Position.y,workspace.CurrentCamera.CoordinateFrame.p.z))*ca(0,180,0)
	else 
		Gyro.maxTorque = v3(0,0,0) 
	end 
	wait()
end