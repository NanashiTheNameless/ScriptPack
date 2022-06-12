--[[ 
TODO:
GUI
MAKE LESS LAGGY
REMOVE UNNEEDED STUFF
IF CLOSE TO TARGET GRAPPLE PLACE THEN LATCH ONTO
MAKE TITANS, TITAN SHIFT, AOT MAP
VELOCITY CHECKS
]]

--- shortcuts
v3 = Vector3.new
cn = CFrame.new
ca2 = CFrame.Angles
mceil = math.ceil mc = mceil
mran = math.random rn=mran
mrad = math.rad rd=mrad
mdeg = math.deg dg=mdeg
mabs = math.abs abs=mabs
ud = UDim2.new
ca = function(x,y,z) return ca2(mrad(x),mrad(y),mrad(z)) end 
mran2 = function(a,b) return mran(a*1000,b*1000)/1000 end 
bn = BrickColor.new bc=bn
c3 = Color3.new
deb = game:GetService("Debris")
-----
Player = game:service("Players").LocalPlayer
Char = Player.Character
Torso = Char.Torso
Head = Char.Head
Humanoid = Char.Humanoid
RootPart = Char.HumanoidRootPart
Root  = RootPart.RootJoint

LA=Char["Left Arm"]
RA=Char["Right Arm"]
LL=Char["Left Leg"]
RL=Char["Right Leg"]
LAM=Torso["Left Shoulder"]
RAM=Torso["Right Shoulder"]
LLM=Torso["Left Hip"]
RLM=Torso["Right Hip"]
Neck=Torso.Neck
Neck.C0=cn(0,1.5,0)
Neck.C1=cn(0,0,0)

name="3DMG"

pcall(function() Char["Pack"]:Destroy() end)
pcall(function() Player.PlayerGui[name]:Destroy() end)
pcall(function() Char[name]:Destroy() end)
pcall(function() Char.Block:Destroy() end)
pcall(function() Char.Animate:Destroy() end)

script.Name = name

as = {}
so = {"Block","QuickSlash","Slash1","Slash2","Hit","Shoot","Footstep1","Footstep2","Footstep3","Disconnect"}
as.Cone = "1033714"
as.Bevel = "rbxasset://fonts/leftarm.mesh"
as.Block = "rbxasset://sounds\\metal.ogg"
as.QuickSlash = "161006221" -- quick succession
as.Slash1 = "161006195" -- high pitched
as.Slash2 = "161006212" -- low pitched
as.Hit = "10209583"
as.Shoot = "130849509"
as.Footstep1 = "142548001"
as.Footstep2 = "142548009"
as.Footstep3 = "142548015"
as.Disconnect = "10209268"
as.Draw = "130785405"
as.Somersault = "161006221"
as.HealthBar = "35238053" -- decal
as.Wedge = "146643893" -- decal

for i,v in pairs(as) do 
	if type(tonumber(v:sub(1,3)))=="number" then
		as[i]="http://www.roblox.com/asset/?id="..v
		game:GetService("ContentProvider"):Preload(as[i])
	end
end

Slashes = {as.Slash1,as.Slash2}


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
	local v=Instance.new(tab.type or "Part")
	if tab.type~="CornerWedgePart" then v.formFactor="Custom" end
	v.CanCollide=false
	v.TopSurface=10 v.BottomSurface=10 v.RightSurface=10 v.LeftSurface=10 v.FrontSurface=10 v.BackSurface=10
	v.Size=v3(tab[2],tab[3],tab[4])
	--v.Material="SmoothPlastic"
	if tab.co then v.BrickColor=bn(tab.co) end
	if tab.tr then v.Transparency=tab.tr end
	if tab.rf then v.Reflectance=tab.rf end
	if tab.cf then v.CFrame=tab.cf end
	if tab.an then v.Anchored=tab.an end
	if tab.mt then v.Material=tab.mt end
	if tab.ca then v.CanCollide=tab.ca end
	v.Parent=tab[1]
	LastMade=v
	return v
end

function Raycast(Pos,Dir,Dist,tab)
	return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *Dist),tab)
end 

Block=iNew{"NumberValue",Char,Name="Block",Value=0}

Root.C0=cn(0,0,0)
Root.C1=cn(0,0,0)

for _,mesh in pairs(Char:GetChildren()) do if mesh:IsA("CharacterMesh") then mesh:Destroy() end end
for _,force in pairs(Torso:GetChildren()) do if force:IsA("BodyForce") or force:IsA("BodyGyro") or force:IsA("RocketPropulsion") then force:Destroy() end end

pcall(function() Torso.LAW:Remove() Torso.RAW:Remove() Torso.LLW:Remove() Torso.RLW:Remove() end)
LAW=iNew{"Weld",Torso,Name="LAW",Part0=Torso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)}
RAW=iNew{"Weld",Torso,Name="RAW",Part0=Torso,C0=cn( 1.5,0.5,0),C1=cn(0,0.5,0)}
LLW=iNew{"Weld",Torso,Name="LLW",Part0=Torso,C0=cn(-0.5, -1,0),C1=cn(0,  1,0)}
RLW=iNew{"Weld",Torso,Name="RLW",Part0=Torso,C0=cn( 0.5, -1,0),C1=cn(0,  1,0)}

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
    if not weld:FindFirstChild("Angle") then 
        local a = Instance.new("Vector3Value", weld) 
        a.Name = "Angle"
        local x,y,z=weld.C0:toEulerAnglesXYZ()
        a.Value=v3(mdeg(x),mdeg(y),mdeg(z)) 
    end 
    return weld.C0.p,weld.Angle.Value
end 

function ClearWeld(weld)
	if weld:FindFirstChild"Angle" then 
		weld.Angle:Remove() 
	end 
end

function SetWeld(weld,CC,i, loops, origpos,origangle, nextpos,nextangle,smooth) 
    local CO="C"..CC
    smooth = smooth or 1 
    if not weld:FindFirstChild("Angle") then 
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
        tox = -mabs(origangle.x - nextangle.x) *perc 
    else 
        tox = mabs(origangle.x - nextangle.x) *perc 
    end 
    if origangle.y > nextangle.y then 
        toy = -mabs(origangle.y - nextangle.y) *perc 
    else 
        toy = mabs(origangle.y - nextangle.y) *perc 
    end 
    if origangle.z > nextangle.z then 
        toz = -mabs(origangle.z - nextangle.z) *perc 
    else 
        toz = mabs(origangle.z - nextangle.z) *perc 
    end 
 
    local tox2,toy2,toz2 = 0,0,0 
    if origpos.x > nextpos.x then 
        tox2 = -mabs(origpos.x - nextpos.x) *perc 
    else 
        tox2 = mabs(origpos.x - nextpos.x) *perc 
    end 
    if origpos.y > nextpos.y then 
        toy2 = -mabs(origpos.y - nextpos.y) *perc 
    else 
        toy2 = mabs(origpos.y - nextpos.y) *perc 
    end 
    if origpos.z > nextpos.z then 
        toz2 = -mabs(origpos.z - nextpos.z) *perc 
    else 
        toz2 = mabs(origpos.z - nextpos.z) *perc 
    end 
         weld.Angle.Value = v3(origangle.x + tox,origangle.y + toy,origangle.z + toz)
    weld[CO] = cn(origpos.x + tox2,origpos.y + toy2,origpos.z + toz2)*ca(origangle.x + tox,origangle.y + toy,origangle.z + toz) 
end 


function PlaySound(sound,pitch,volume,parent)
	local newSound = iNew{"Sound",parent or Torso,Pitch=pitch,Volume=volume,Name=sound,SoundId=sound}
	newSound:Play()
	deb:AddItem(newSound,6)
	return newSound
end

function MeshEffect(par,cf,x,y,z,inc,col,sha,adj)
	local adj = adj or cn(0,0,0)
	local mp=iPart{par,1,1,1,co=col,tr=0.3,ca=false,an=true} mp.CFrame=cf mp.Name="unray"
	local ms
	if sha:sub(1,4)=="http" then
		ms=iNew{"SpecialMesh",mp,MeshId=sha}
	elseif sha=="Block" then
		ms=iNew{"BlockMesh",mp}
	elseif sha=="Cylinder" then
		ms=iNew{"CylinderMesh",mp}
	elseif sha=="Head" or sha=="Sphere" then
		ms=iNew{"SpecialMesh",mp,MeshType=sha}
	end
	deb:AddItem(mp,0.7)
	Spawn(function()
		for i=0,1,inc do
			mp.Transparency=0.3+(1*i)
			mp.CFrame=mp.CFrame*adj
			ms.Scale=v3(x,y,z)*(0.3+(1*i))
			if i>=1 or mp.Transparency >= 1 then mp:Destroy() end
			wait(0)
		end
	end)
end


Dmg=false
Dmgv={12,18}
HitDebounce={}
Debounce = 0.4
CritChance = 5
Sharpness = 1
Gas = 1
Damage=function(Hum,Mult)
	if not Hum.Parent:findFirstChild("Torso") then return end 
	local HName = Hum.Parent.Name
	if HitDebounce[HName] and HitDebounce[HName]>tick() then return end 
	HitDebounce[HName] = tick()+Debounce
	local Dealt = mceil(((mran(Dmgv[1],Dmgv[2])+(Torso.Velocity.magnitude/4))*Sharpness)*Mult)
	local col = ""
	
	local Crit = false
	local RNG = mran(1,100)
	if RNG<=CritChance then Crit=true Dealt=Dealt*1.75 end

	if Hum.Parent:findFirstChild("Block") and Hum.Parent.Block.Value>0 then 
		Hum.Parent.Block.Value=Hum.Parent.Block.Value-1
		col="Bright blue"
		PlaySound(as.Block,1,1,Torso)
	else
		
		Hum:TakeDamage(Dealt)
		col=not Crit and "Bright red" or "Really red"
		PlaySound(as.Hit,1,1,Torso)
	end
	Sharpness = Sharpness - 0.02
	
	local dmgTxt = iNew{"TextLabel",Gui,Name="dmgText",BackgroundTransparency=1,TextStrokeTransparency=0,Rotation=mran(-35,35)}
	
	if col == "Bright blue" then
		dmgTxt.Text = "Block!"
	elseif col == "Bright red" then
		dmgTxt.Text = Dealt.."!"
	elseif col == "Really red" then
		dmgTxt.Text = Dealt.."!!!"
	end
	dmgTxt.TextColor3 = bn(col).Color
	dmgTxt.TextStrokeColor3 = col == "Really red" and bn("Really red").Color or bn("White").Color
	dmgTxt.FontSize = col == "Bright blue" and "Size24" or col == "Bright red" and "Size36" or col == "Really red" and "Size48"
	dmgTxt.Position = ud(mran(4,6)/10,0,mran(40,60)/100,0)
	dmgTxt:TweenPosition(ud(dmgTxt.Position.X.Scale,0,dmgTxt.Position.Y.Scale,-250),"Out","Quad",1.5,false)
	deb:AddItem(dmgTxt,1.5)
end



-- weapon
Pack = iNew{"Model",Char,Name="Pack"}
p=Pack


-- blade func
function newBlade(part0,c0,wName,half)
	local Blade = iPart{p,0.2,3.3,0.2,co="Dark stone grey"} Blade.Name = "Blade"..wName
	local wBlade = iNew{"Weld",p,Part0=part0,Part1=Blade,C0=c0,Name = wName}
	iNew{"BlockMesh",Blade,Scale=v3(0.25,1,1)}

	local bpx = iPart{p,0.2,3.5,0.2} bpx.Name = "Blade"..wName
	iNew{"Weld",p,Part0=Blade,Part1=bpx,C0=cn(0,0.1,-0.15)}
	iNew{"BlockMesh",bpx,Scale=v3(0.25,1,0.5)}
	
	if not half then
		local bp = iPart{p,0.2,0.2,0.2,co="Dark stone grey"} bp.Name = "Blade"..wName
		iNew{"Weld",p,Part0=Blade,Part1=bp,C0=cn(0,3.5/2,0)*ca(0,180,0)}
		iNew{"SpecialMesh",bp,MeshType="Wedge",Scale=v3(0.25,1,1)}

		local tp = iPart{p,0.2,0.2,0.2} bp.Name = "Blade"..wName
		iNew{"Weld",p,Part0=bpx,Part1=tp,C0=cn(0,3.6/2,0)*ca(0,180,0)}
		iNew{"SpecialMesh",tp,MeshType="Wedge",Scale=v3(0.25,0.5,0.5)}

		for i=1,5 do
			local bp = iPart{p,0.2,1,0.45,co="Really black"} bp.Name = "Blade"..wName
			iNew{"Weld",p,Part0=Blade,Part1=bp,C0=cn(0,-3.7/2+0.6*i,-0.05)*ca(45,0,0)}
			iNew{"BlockMesh",bp,Scale=v3(0.3,0.02,1)}
		end
	end
	
	for i=-1,1,2 do
		local ba = iPart{p,0.2,0.2,0.2,co="Dark stone grey"} ba.Name="Blade"..wName
		iNew{"Weld",p,Part0=Blade,Part1=ba,C0=cn(0,-3.5/2,-0.05-0.075*i)}
		iNew{"BlockMesh",ba,Scale=v3(0.25,1,0.25)}
	end
	return Blade,wBlade,tp
end

--belt
belt = iPart{p,2.1,0.2,1.05,co="Black"}
iNew{"Weld",p,Part0=Torso,Part1=belt,C0=cn(0,-0.65,0)}
--[[bp = iPart{p,0.4,0.2,1,co="Dark stone grey"} -- idk why i do this with the unneccessary details :Q
iNew{"Weld",p,Part0=belt,Part1=bp,C0=cn(0,0,-1.05/2)}
iNew{"BlockMesh",bp,Scale=v3(1,1,0.01)}
bp = iPart{p,1,1,1,co="Black"}
iNew{"Weld",p,Part0=belt,Part1=bp,C0=cn(0,0,-1.06/2)}
iNew{"BlockMesh",bp,Scale=v3(0.35,0.15,0.01)}
bp = iPart{p,0.2,0.2,1,co="Dark stone grey"}
iNew{"Weld",p,Part0=belt,Part1=bp,C0=cn(0.425,0,-1.05/2)}
iNew{"BlockMesh",bp,Scale=v3(1,1,0.01)}
bp = iPart{p,1,1,1,co="Black"}
iNew{"Weld",p,Part0=belt,Part1=bp,C0=cn(0.425,0,-1.06/2)}
iNew{"BlockMesh",bp,Scale=v3(0.15,0.15,0.01)}
bp = iPart{p,0.2,0.2,1,co="Dark stone grey"}
iNew{"Weld",p,Part0=belt,Part1=bp,C0=cn(-0.425,0,-1.05/2)}
iNew{"BlockMesh",bp,Scale=v3(1,1,0.01)}
bp = iPart{p,1,1,1,co="Black"}
iNew{"Weld",p,Part0=belt,Part1=bp,C0=cn(-0.425,0,-1.06/2)}
iNew{"BlockMesh",bp,Scale=v3(0.15,0.15,0.01)}]]

qBarrel = iPart{p,0.3,1.5,0.3}
iNew{"Weld",p,Part0=belt,Part1=qBarrel,C0=cn(-1.15,0.1,0)*ca(100,0,0)}
iNew{"CylinderMesh",qBarrel}
bb = iPart{p,0.3,1.5,0.3}
iNew{"Weld",p,Part0=qBarrel,Part1=bb,C0=cn(0,0,0.15)}
qbb = iPart{p,0.2,1,0.2,co="Really black"}
iNew{"Weld",p,Part0=qBarrel,Part1=qbb,C0=cn(0,-0.75,0)}
iNew{"CylinderMesh",qbb,Scale=v3(1,0.01,1)}

eBarrel = iPart{p,0.3,1.5,0.3}
iNew{"Weld",p,Part0=belt,Part1=eBarrel,C0=cn(1.15,0.1,0)*ca(100,0,0)}
iNew{"CylinderMesh",eBarrel}
bb = iPart{p,0.3,1.5,0.3}
iNew{"Weld",p,Part0=eBarrel,Part1=bb,C0=cn(0,0,0.15)}
ebb = iPart{p,0.2,1,0.2,co="Really black"}
iNew{"Weld",p,Part0=eBarrel,Part1=ebb,C0=cn(0,-0.75,0)}
iNew{"CylinderMesh",ebb,Scale=v3(1,0.01,1)}

-- leg bandages
for i=0,1 do
	lb = iPart{p,1,1,1,co="Black"}
	iNew{"Weld",p,Part0=LL,Part1=lb,C0=cn(0,0.5+0.125*i,0)}
	iNew{"SpecialMesh",lb,MeshId=as.Bevel,Scale=v3(1.1,0.03,1.1)}
end
for i=0,1 do
	lb = iPart{p,1,1,1,co="Black"}
	iNew{"Weld",p,Part0=RL,Part1=lb,C0=cn(0,0.5+0.125*i,0)}
	iNew{"SpecialMesh",lb,MeshId=as.Bevel,Scale=v3(1.1,0.03,1.1)}
end

-- left sheath
qSheath = iPart{p,0,0,0,tr=0}
wqSheath = iNew{"Weld",p,Part0=LL,Part1=qSheath,C0=cn(-0.5,0.4,0)*ca(10,0,0)}
qBody = iPart{p,0.45,0.7,3.5,co="Brown",mt="Wood"}
iNew{"Weld",p,Part0=qSheath,Part1=qBody,C0=cn(-qBody.Size.X/2,0,0.75)}
for i=1,7,2 do
	sp = iPart{p,1,0.6,1,co="Really black"}
	iNew{"Weld",p,Part0=qBody,Part1=sp,C0=cn(-qBody.Size.X/2+(qBody.Size.X/9)/2+((qBody.Size.X/9)*i),0,-1.75)}
	iNew{"BlockMesh",sp,Scale=v3((qBody.Size.X/9),1,0.01)}
	newBlade(sp,cn(0,0,1.5)*ca(90,0,0),"LeftBlade"..i,false) -- blade is 1
end
tank = iPart{p,0.4,2.8,0.4}
iNew{"Weld",p,Part0=qBody,Part1=tank,C0=cn(0,0.55,0.15)*ca(-90,0,0)}
iNew{"CylinderMesh",tank}
for i=0,2,1 do
	sp = iPart{p,qBody.Size.X*1.1,1.1*1.1,0.3,co="Dark stone grey"}
	iNew{"Weld",p,Part0=qBody,Part1=sp,C0=cn(0,0.2,3.5/2-0.5-i)}
end
for i=-1,1,2 do
	bl = iPart{p,0.4,0.4,0.4}
	iNew{"Weld",p,Part0=tank,Part1=bl,C0=cn(0,1.4*i,0)}
	iNew{"SpecialMesh",bl,MeshType="Sphere"}
end
blp = iPart{p,0.2,0.3,0.2}
iNew{"Weld",p,Part0=bl,Part1=blp,C0=cn(0,0.2,0)}
iNew{"CylinderMesh",blp}
blap = iPart{p,0.25,0.5,0.25,co="Black"}
iNew{"Weld",p,Part0=blp,Part1=blap,C0=cn(0,0.2,0)*ca(0,0,90)}
iNew{"CylinderMesh",blap}
blp = iPart{p,0.3,0.2,0.3}
iNew{"Weld",p,Part0=blap,Part1=blp}
iNew{"CylinderMesh",blp}

-- right sheath
eSheath = iPart{p,0,0,0,tr=0}
weSheath = iNew{"Weld",p,Part0=RL,Part1=eSheath,C0=cn(0.5,0.4,0)*ca(10,0,0)}
eBody = iPart{p,0.45,0.7,3.5,co="Brown",mt="Wood"}
iNew{"Weld",p,Part0=eSheath,Part1=eBody,C0=cn(eBody.Size.X/2,0,0.75)}
for i=1,7,2 do
	sp = iPart{p,1,0.6,1,co="Really black"}
	iNew{"Weld",p,Part0=eBody,Part1=sp,C0=cn(-eBody.Size.X/2+(eBody.Size.X/9)/2+((eBody.Size.X/9)*i),0,-1.75)}
	iNew{"BlockMesh",sp,Scale=v3((eBody.Size.X/9),1,0.01)}
	newBlade(sp,cn(0,0,1.5)*ca(90,0,0),"RightBlade"..i,false) -- blade is 7
end
tank = iPart{p,0.4,2.8,0.4}
iNew{"Weld",p,Part0=eBody,Part1=tank,C0=cn(0,0.55,0.15)*ca(-90,0,0)}
iNew{"CylinderMesh",tank}
for i=0,2,1 do
	sp = iPart{p,eBody.Size.X*1.1,1.1*1.1,0.3,co="Dark stone grey"}
	iNew{"Weld",p,Part0=eBody,Part1=sp,C0=cn(0,0.2,3.5/2-0.5-i)}
end
for i=-1,1,2 do
	bl = iPart{p,0.4,0.4,0.4}
	iNew{"Weld",p,Part0=tank,Part1=bl,C0=cn(0,1.4*i,0)}
	iNew{"SpecialMesh",bl,MeshType="Sphere"}
end
blp = iPart{p,0.2,0.3,0.2}
iNew{"Weld",p,Part0=bl,Part1=blp,C0=cn(0,0.2,0)}
iNew{"CylinderMesh",blp}
blap = iPart{p,0.25,0.5,0.25,co="Black"}
iNew{"Weld",p,Part0=blp,Part1=blap,C0=cn(0,0.2,0)*ca(0,0,90)}
iNew{"CylinderMesh",blap}
blp = iPart{p,0.3,0.2,0.3}
iNew{"Weld",p,Part0=blap,Part1=blp}
iNew{"CylinderMesh",blp}

-- air compression
hpart = iPart{p,0.8,0.4,0.8}
iNew{"Weld",p,Part0=belt,Part1=hpart,C0=cn(0,-0.1,0.9)*ca(15,0,0)}
iNew{"CylinderMesh",hpart}
hp = iPart{p,0.3,0.2,0.4}
iNew{"Weld",p,Part0=hpart,Part1=hp,C0=cn(0,-0.1,0.6)}
for i=-1,1,2 do
	wp = iPart{p,0.2,0.2,0.8}
	iNew{"Weld",p,Part0=hp,Part1=wp,C0=cn(0.25*i,0,-0.2)*ca(0,180,90*i)}
	iNew{"SpecialMesh",wp,MeshType="Wedge"}
end
hp2 = iPart{p,0.3,0.2,0.3}
iNew{"Weld",p,Part0=hpart,Part1=hp2,C0=cn(0,0.1,0.5)}
iNew{"BlockMesh",hp2,Scale=v3(0.5,0.5,1)}
for i=-1,1,2 do
	wp = iPart{p,0.2,0.2,0.8}
	iNew{"Weld",p,Part0=hp2,Part1=wp,C0=cn(0.175*i,0,-0.25)*ca(0,180,90*i)}
	iNew{"SpecialMesh",wp,MeshType="Wedge",Scale=v3(0.5,1,1)}
end
for i=-1,1,2 do
	cy = iPart{p,0.2,0.2,0.2}
	iNew{"Weld",p,Part0=hpart,Part1=cy,C0=cn(-0.35*i,-0.075,0.175)*ca(0,0,-90*i)*ca(-25,0,-30*i)}
	iNew{"CylinderMesh",cy}
	spi = iPart{p,0,0,0}
	iNew{"Weld",p,Part0=cy,Part1=spi,C0=cn(0,-0.2,0)}
	iNew{"SpecialMesh",spi,MeshId=as.Cone,Scale=v3(0.3,0.5,0.3)}
	cyl = iPart{p,0.7,0.2,0.7}
	iNew{"Weld",p,Part0=spi,Part1=cyl,C0=cn(0,-0.3,0)}
	iNew{"CylinderMesh",cyl}
	for i=-1,1,2 do
		cylp = iPart{p,0.75,1,0.75,co="Dark stone grey"}
		iNew{"Weld",p,Part0=cyl,Part1=cylp,C0=cn(0,0.1*i,0)}
		iNew{"CylinderMesh",cylp,Scale=v3(1,0.01,1)}
	end
	for i=360/10,360,360/10 do
		cylp = iPart{p,1,0.2,1,co="Dark stone grey"}
		iNew{"Weld",p,Part0=cyl,Part1=cylp,C0=ca(0,i,0)*cn(0,0,-0.35)}
		iNew{"BlockMesh",cylp,Scale=v3(0.025,1,0.05)}
	end
end

-- right sword
RSword = iPart{p,0.2,0.5,0.35,co="Dark stone grey"}
wRSword = iNew{"Weld",p,Part0=RA,Part1=RSword,C0=cn(0,-0.95,-0.25)*ca(-90,0,0)}
iNew{"BlockMesh",RSword,Scale=v3(0.5,1,1)}
sp = iPart{p,0.2,0.5,0.35,co="Dark stone grey"}
iNew{"Weld",p,Part0=RSword,Part1=sp,C0=cn(0,-0.25,-0.35/2)*ca(-10,0,0)*cn(0,-0.25,0.35/2)}
iNew{"BlockMesh",sp,Scale=v3(0.5,1,1)}
sp2 = iPart{p,0.2,0.2,0.35,co="Dark stone grey"}
iNew{"Weld",p,Part0=sp,Part1=sp2,C0=cn(0,-0.35,0)}
iNew{"BlockMesh",sp2,Scale=v3(1,1,1)}
sp3 = iPart{p,0.2,0.5,0.3,co="Reddish brown"}
iNew{"Weld",p,Part0=RSword,Part1=sp3,C0=cn(0,0,0)}
iNew{"BlockMesh",sp3,Scale=v3(0.75,1,1)}
sp4 = iPart{p,0.2,0.5,0.3,co="Reddish brown"}
iNew{"Weld",p,Part0=sp,Part1=sp4,C0=cn(0,0,0)}
iNew{"BlockMesh",sp4,Scale=v3(0.75,1,1)}
sp5 = iPart{p,0.2,0.2,0.6,co="Dark stone grey"}
iNew{"Weld",p,Part0=RSword,Part1=sp5,C0=cn(0,0.35,-0.3+0.35/2)}
trg = iPart{p,0.2,1,0.2,co="Dark stone grey"}
iNew{"Weld",p,Part0=RSword,Part1=trg,C0=cn(0,0.05,-0.35/2-0.1)}
iNew{"BlockMesh",trg,Scale=v3(0.5,0.05,1)}
trg2 = iPart{p,0.2,1,0.2,co="Dark stone grey"}
iNew{"Weld",p,Part0=trg,Part1=trg2,C0=cn(0,0.1,-0.1+0.025)*ca(-90,0,0)}
iNew{"BlockMesh",trg2,Scale=v3(0.5,0.05,1)}
trg3 = iPart{p,0.2,1,1,co="Dark stone grey"}
iNew{"Weld",p,Part0=RSword,Part1=trg3,C0=cn(0,-0.15,-0.35/2-0.09)}
iNew{"BlockMesh",trg3,Scale=v3(0.5,0.05,0.18)}
trg4 = iPart{p,0.2,1,0.2,co="Dark stone grey"}
iNew{"Weld",p,Part0=trg3,Part1=trg4,C0=cn(0,0.1,-0.09+0.025)*ca(-90,0,0)}
iNew{"BlockMesh",trg4,Scale=v3(0.5,0.05,1)}
sp6 = iPart{p,0.2,0.3,0.2,co="Dark stone grey"}
iNew{"Weld",p,Part0=sp5,Part1=sp6,C0=cn(0,0,0.45)*ca(90,180,0)}
iNew{"SpecialMesh",sp6,MeshType="Wedge",Scale=v3(1,1,1)}
sp7 = iPart{p,0.2,0.2,0.2,co="Dark stone grey"}
iNew{"Weld",p,Part0=sp5,Part1=sp7,C0=cn(0,0,-0.4)}
iNew{"SpecialMesh",sp7,MeshType="Wedge",Scale=v3(1,1,1)}
sp8 = iPart{p,0.2,0.5,0.2,co="Dark stone grey"}
iNew{"Weld",p,Part0=sp7,Part1=sp8,C0=cn(0,-0.1,-0.1)*ca(-5,0,0)*cn(0,-0.25,0.05)}
iNew{"BlockMesh",sp8,Scale=v3(1,1,0.5)}
sp9 = iPart{p,0.2,0.7,0.2,co="Dark stone grey"}
iNew{"Weld",p,Part0=sp8,Part1=sp9,C0=cn(0,-0.3,-0.1)*ca(-10,0,0)*cn(0,-0.3,0.1)*ca(0,0,180)}
iNew{"SpecialMesh",sp9,MeshType="Wedge",Scale=v3(1,1,0.5)}
RConnect = iPart{p,0.2,0.2,0.3,co="Dark stone grey"} RConnect.Name="RConnect"
iNew{"Weld",p,Part0=sp5,Part1=RConnect,C0=cn(0,0.2,0.1)}
iNew{"BlockMesh",RConnect,Scale=v3(0.75,1,1)}

-- left sword
LSword = iPart{p,0.2,0.5,0.35,co="Dark stone grey"}
wLSword = iNew{"Weld",p,Part0=LA,Part1=LSword,C0=cn(0,-0.95,-0.25)*ca(-90,0,0)}
iNew{"BlockMesh",LSword,Scale=v3(0.5,1,1)}
sp = iPart{p,0.2,0.5,0.35,co="Dark stone grey"}
iNew{"Weld",p,Part0=LSword,Part1=sp,C0=cn(0,-0.25,-0.35/2)*ca(-10,0,0)*cn(0,-0.25,0.35/2)}
iNew{"BlockMesh",sp,Scale=v3(0.5,1,1)}
sp2 = iPart{p,0.2,0.2,0.35,co="Dark stone grey"}
iNew{"Weld",p,Part0=sp,Part1=sp2,C0=cn(0,-0.35,0)}
iNew{"BlockMesh",sp2,Scale=v3(1,1,1)}
sp3 = iPart{p,0.2,0.5,0.3,co="Reddish brown"}
iNew{"Weld",p,Part0=LSword,Part1=sp3,C0=cn(0,0,0)}
iNew{"BlockMesh",sp3,Scale=v3(0.75,1,1)}
sp4 = iPart{p,0.2,0.5,0.3,co="Reddish brown"}
iNew{"Weld",p,Part0=sp,Part1=sp4,C0=cn(0,0,0)}
iNew{"BlockMesh",sp4,Scale=v3(0.75,1,1)}
sp5 = iPart{p,0.2,0.2,0.6,co="Dark stone grey"}
iNew{"Weld",p,Part0=LSword,Part1=sp5,C0=cn(0,0.35,-0.3+0.35/2)}
trg = iPart{p,0.2,1,0.2,co="Dark stone grey"}
iNew{"Weld",p,Part0=LSword,Part1=trg,C0=cn(0,0.05,-0.35/2-0.1)}
iNew{"BlockMesh",trg,Scale=v3(0.5,0.05,1)}
trg2 = iPart{p,0.2,1,0.2,co="Dark stone grey"}
iNew{"Weld",p,Part0=trg,Part1=trg2,C0=cn(0,0.1,-0.1+0.025)*ca(-90,0,0)}
iNew{"BlockMesh",trg2,Scale=v3(0.5,0.05,1)}
trg3 = iPart{p,0.2,1,1,co="Dark stone grey"}
iNew{"Weld",p,Part0=LSword,Part1=trg3,C0=cn(0,-0.15,-0.35/2-0.09)}
iNew{"BlockMesh",trg3,Scale=v3(0.5,0.05,0.18)}
trg4 = iPart{p,0.2,1,0.2,co="Dark stone grey"}
iNew{"Weld",p,Part0=trg3,Part1=trg4,C0=cn(0,0.1,-0.09+0.025)*ca(-90,0,0)}
iNew{"BlockMesh",trg4,Scale=v3(0.5,0.05,1)}
sp6 = iPart{p,0.2,0.3,0.2,co="Dark stone grey"}
iNew{"Weld",p,Part0=sp5,Part1=sp6,C0=cn(0,0,0.45)*ca(90,180,0)}
iNew{"SpecialMesh",sp6,MeshType="Wedge",Scale=v3(1,1,1)}
sp7 = iPart{p,0.2,0.2,0.2,co="Dark stone grey"}
iNew{"Weld",p,Part0=sp5,Part1=sp7,C0=cn(0,0,-0.4)}
iNew{"SpecialMesh",sp7,MeshType="Wedge",Scale=v3(1,1,1)}
sp8 = iPart{p,0.2,0.5,0.2,co="Dark stone grey"}
iNew{"Weld",p,Part0=sp7,Part1=sp8,C0=cn(0,-0.1,-0.1)*ca(-5,0,0)*cn(0,-0.25,0.05)}
iNew{"BlockMesh",sp8,Scale=v3(1,1,0.5)}
sp9 = iPart{p,0.2,0.7,0.2,co="Dark stone grey"}
iNew{"Weld",p,Part0=sp8,Part1=sp9,C0=cn(0,-0.3,-0.1)*ca(-10,0,0)*cn(0,-0.3,0.1)*ca(0,0,180)}
iNew{"SpecialMesh",sp9,MeshType="Wedge",Scale=v3(1,1,0.5)}
LConnect = iPart{p,0.2,0.2,0.3,co="Dark stone grey"} LConnect.Name="LConnect"
iNew{"Weld",p,Part0=sp5,Part1=LConnect,C0=cn(0,0.2,0.1)}
iNew{"BlockMesh",LConnect,Scale=v3(0.75,1,1)}

-- gui
Gui = iNew{"ScreenGui",Player.PlayerGui,Name=name}
SwordFrame = iNew{"Frame",Gui,BackgroundColor3=bn("Really black").Color,BorderColor3=bn("Really black").Color,Size=ud(0,170,0,18),Position=ud(0.5,85+8,1,-22),ClipsDescendants=true,Name="SwordFrame"}
SwordBar = iNew{"ImageLabel",SwordFrame,Image=as.HealthBar,BackgroundTransparency=1,Size=ud(1,0,1,0),Name="SwordBar"}
SwordLabel = iNew{"TextLabel",SwordFrame,BackgroundTransparency=1,Text="Sharpness ",Size=ud(1,0,1,0),Font="SourceSansBold",FontSize="Size14",TextColor3=bn("White").Color,TextStrokeColor3=bn("Really black").Color,TextStrokeTransparency=0,TextXAlignment="Right",Name="SwordLabel"}

GasFrame = iNew{"Frame",Gui,BackgroundColor3=bn("Really black").Color,BorderColor3=bn("Really black").Color,Size=ud(0,170,0,18),Position=ud(0.5,85*3+16,1,-22),ClipsDescendants=true,Name="GasFrame"}
GasBar = iNew{"ImageLabel",GasFrame,Image=as.HealthBar,BackgroundTransparency=1,Size=ud(1,0,1,0),Name="GasBar"}
GasLabel = iNew{"TextLabel",GasFrame,BackgroundTransparency=1,Text="Gas ",Size=ud(1,0,1,0),Font="SourceSansBold",FontSize="Size14",TextColor3=bn("White").Color,TextStrokeColor3=bn("Really black").Color,TextStrokeTransparency=0,TextXAlignment="Right",Name="GasLabel"}

function Touched(hit)
	if not Dmg then return end 
	if hit.Parent:IsDescendantOf(Char) then return end 
	if not hit.Parent then return end
	if not hit.Parent:findFirstChild("Torso") then return end
	if not CurrentBlades[1] and not CurrentBlades[2] then return end
	if hit.Parent:findFirstChild("Humanoid") then 
		local Hum=hit.Parent.Humanoid
		Damage(Hum,1)
		local HMT=Hum.Parent:findFirstChild("Torso") 
		if HMT then
			local bodyVelo = iNew{"BodyVelocity",HMT,P=1250,maxForce=v3(1,1,1)/0,velocity=RootPart.CFrame.lookVector*Torso.Velocity.magnitude}
			deb:AddItem(bodyVelo,0.15)
		end
	end
end

for i,v in pairs(Pack:GetChildren()) do
	if v:IsA("BasePart") and v.Name:find("Blade") then
		v.Touched:connect(Touched)
	end
end

for i,v in pairs(Torso:children()) do 
	if v:IsA("Sound") then 
		v:Destroy() 
	end
end
for i,v in pairs(Head:children()) do 
	if v:IsA("Sound") then 
		v:Destroy() 
	end
end



function ReturnPose(legs)
	RePose()
	for i=1,ASpeed do 
		SetWeld(LAW,0,i,ASpeed,wLA,wLA2,PoseLA,PoseLA2,1) 
		SetWeld(RAW,0,i,ASpeed,wRA,wRA2,PoseRA,PoseRA2,1)
		if legs then
			SetWeld(LLW,0,i,ASpeed,wLL,wLL2,PoseLL,PoseLL2,1)
			SetWeld(RLW,0,i,ASpeed,wRL,wRL2,PoseRL,PoseRL2,1)
		end
		SetWeld(Root,0,i,ASpeed,wRT,wRT2,PoseRT,PoseRT2,1) 
		SetWeld(Neck,0,i,ASpeed,wNE,wNE2,PoseNE,PoseNE2,1) 
		SetWeld(wLSword,0,i,ASpeed,wLS,wLS2,PoseLS,PoseLS2,1) 
		SetWeld(wRSword,0,i,ASpeed,wRS,wRS2,PoseRS,PoseRS2,1) 
		wait(0)
	end
end

function RePose()
	local a,b=GetWeld(LAW)
	local c,d=GetWeld(RAW)
	local e,f=GetWeld(LLW)
	local g,h=GetWeld(RLW)
	local i,j=GetWeld(Root)
	local k,l=GetWeld(Neck)
	local m,n=GetWeld(wLSword)
	local o,p=GetWeld(wRSword)
	wLA=a wLA2=b 
	wRA=c wRA2=d
	wLL=e wLL2=f
	wRL=g wRL2=h
	wRT=i wRT2=j
	wNE=k wNE2=l 
	wLS=m wLS2=n
	wRS=o wRS2=p
end



Force = iNew{"BodyForce",Torso} -- force
keys={}

WalkMode = "Walk"

CanGrapple = true

qProp=nil
qPart=nil
qRope=nil
qOffset=nil
qHit = nil
qLastGrapple = tick()

eProp=nil
ePart=nil
eRope=nil
eOffset=nil
eHit=nil
eLastGrapple = tick()

qePart=nil
qeProp=nil

function GrappleStance()
	Humanoid.PlatformStand=true
	SetWeld(LLW,0,1,1,v3(0,0,0),v3(0,0,0),v3(-0.5,-1,-1),v3(-25,12,-12),0) 
	SetWeld(RLW,0,1,1,v3(0,0,0),v3(0,0,0),v3(0.5,-1,-1),v3(-25,-12,12),0)
end

MaxSpeed = 300
ThrustP = 5
MaxThrust1 = 16000
MaxThrust2 = 21000
function AddRP(target,name,maxThrust)
	local newProp = iNew{"RocketPropulsion",RootPart}
	newProp.Name = target.Name:gsub("Part","Prop")
	newProp.Target = target
	newProp.CartoonFactor = 0.5
	newProp.MaxSpeed = MaxSpeed
	newProp.MaxThrust = maxThrust
	newProp.MaxTorque = v3(1/0,1/0,1/0)
	newProp.TurnD = 0
	newProp.TurnP = 0
	newProp.ThrustD = 0.001
	newProp.ThrustP = ThrustP
	newProp.TargetRadius = 8
	newProp.ReachedTarget:connect(function()
	end)
	return newProp
end

function UpdatePropulsions()
	for i,v in pairs(RootPart:GetChildren()) do
		if v:IsA("RocketPropulsion") then
			v.MaxSpeed = MaxSpeed
			v.ThrustP = ThrustP
		end
	end
end

function Grapple(side,to,spd)
	if not CanGrapple then return end

	PlaySound(as.Shoot,mran2(4.5,5.5),1,Torso)
	local MouseCF = to
	local hit,hitpos
	local Drop = 0.1
	
	if side == "q" then
		if qPart then qPart:Destroy() qPart=nil end
		if qProp then qProp:Destroy() qProp=nil end
		
		qPart = iPart{Pack,1,2,1,an=true,co="Black",cf=cn(qbb.CFrame.p,MouseCF.p)*ca(-90,0,0)} qPart.Name = "qPart"
		iNew{"SpecialMesh",qPart,MeshId=as.Cone,Scale=v3(0.4,2,0.4)}
		qRope = iPart{qPart,1,1,1,an=true,co="Black"}
		iNew{"CylinderMesh",qRope}
		
		for i=1,10000 do
			if not qPart then return end
			hit,hitpos = Raycast(qPart.Position,qPart.Position - (qPart.CFrame *cn(0,-1,0)).p,spd,Char)
			qPart.CFrame=qPart.CFrame*cn(0,spd,0)*ca(-Drop,0,0)
			if hit and hitpos and hit.Name~="unray" then
				PlaySound(as.Block,1,1,Torso)
				local pa,pb,pc=qPart.CFrame:toEulerAnglesXYZ()
				qPart.CFrame=cn(hitpos)*ca2(pa,pb,pc)
				qHit = hit
				qOffset = hit.CFrame:toObjectSpace(qPart.CFrame)
				if ePart and eHit then
					if qePart then qePart:Destroy() qePart=nil end
					if eProp then eProp:Destroy() eProp=nil end
					if qProp then qProp:Destroy() qProp=nil end
					if qeProp then qeProp:Destroy() qeProp=nil end
					qePart=iPart{Pack,1,1,1,tr=1,an=true,cf=cn(qPart.CFrame.p:Lerp(ePart.CFrame.p,0.5))}
					qeProp = AddRP(qePart,"qeProp",MaxThrust2)
					qeProp:Fire()
				elseif (ePart or not ePart) and not eHit then -- fixed glitch where trying to grapple and firing one 
					qProp=AddRP(qPart,"qProp",MaxThrust1)
					qProp:Fire()
				end
			end
			if hit and hitpos then break end
			wait(0)
		end
		
	elseif side == "e" then
		if ePart then ePart:Destroy() ePart=nil end
		if eProp then eProp:Destroy() eProp=nil end
		
		ePart = iPart{Pack,1,2,1,an=true,co="Black",cf=cn(ebb.CFrame.p,MouseCF.p)*ca(-90,0,0)} ePart.Name = "ePart"
		iNew{"SpecialMesh",ePart,MeshId=as.Cone,Scale=v3(0.4,2,0.4)}
		eRope = iPart{ePart,1,1,1,an=true,co="Black"}
		iNew{"CylinderMesh",eRope}
		
		for i=1,10000 do
			if not ePart then return end
			hit,hitpos = Raycast(ePart.Position,ePart.Position - (ePart.CFrame *cn(0,-1,0)).p,spd,Char)
			ePart.CFrame=ePart.CFrame*cn(0,spd,0)*ca(-Drop,0,0)
			if hit and hitpos and hit.Name~="unray" then
				PlaySound(as.Block,1,1,Torso,Torso)
				local pa,pb,pc=ePart.CFrame:toEulerAnglesXYZ()
				ePart.CFrame=cn(hitpos)*ca2(pa,pb,pc)
				eHit = hit
				eOffset = hit.CFrame:toObjectSpace(ePart.CFrame)
				if qPart and qHit then
					if qePart then qePart:Destroy() qePart=nil end
					if eProp then eProp:Destroy() eProp=nil end
					if qProp then qProp:Destroy() qProp=nil end
					if qeProp then qeProp:Destroy() qeProp=nil end
					qePart=iPart{Pack,1,1,1,tr=1,an=true,cf=cn(ePart.CFrame.p:Lerp(qPart.CFrame.p,0.5))}
					qeProp = AddRP(qePart,"qeProp",MaxThrust2)
					qeProp:Fire()
				elseif (qPart or not qPart) and not qHit then
					eProp=AddRP(ePart,"eProp",MaxThrust1)
					eProp:Fire()
				end
			end
			if hit and hitpos then break end
			wait(0)
		end
	end
	Humanoid.Jump=true
	Grappling=true
	ReturnPose()
	GrappleStance()
end

function ThrowBlade(index)
	local pos = Mouse.Hit.p
	local weld = CurrentBlades[index]
	local sword = weld.Part1
	local hitted = false
	local dist = (sword.Position-pos).magnitude
	local dir = cn(sword.Position,pos)
	
	local hit,hitpos = Raycast(sword.CFrame.p,(pos-sword.CFrame.p),999,Char)
	bodyPart = iPart{Pack,1,1,1,tr=1,an=true,ca=false,cf=not hit and dir*cn(0,0,-200) or cn(hitpos)}		
	
	PlaySound(as.Disconnect,1,0.5,Torso)
	PlaySound(as.QuickSlash,1,1,Torso)
	sword.CanCollide = true
	CurrentBlades[index].Part0 = nil
	CurrentBlades[index] = nil
	
	local bodyPos = iNew{"BodyPosition",sword,maxForce=v3(1,1,1)/0,D=15*(sword.Position-bodyPart.Position).magnitude,P=3500}
	local bodyGyro = iNew{"BodyGyro",sword,cframe=dir*ca(-90,0,0),D=15,maxTorque=v3(1,1,1)/0}
	bodyPos.position=bodyPart.CFrame.p
	
	sword.Touched:connect(function(hit)
		if not hit:IsDescendantOf(Char) and not hitted then
			hitted = true
			if bodyPos then bodyPos:Destroy() end
			if bodyGyro then bodyGyro:Destroy() end
			local hum = hit.Parent:FindFirstChild("Humanoid")
			if hum then
				Damage(hum,2)
			end
		end
	end)
	Spawn(function()
		times = 0
		repeat wait(0) times = times+1 until (sword.Position-Mouse.Hit.p).magnitude<8 or times>=200 or hitted
		if bodyPos then bodyPos:Destroy() end
		if bodyGyro then bodyGyro:Destroy() end
		for i,v in pairs(Pack:GetChildren()) do
			if v.Name == "Blade"..weld.Name then
				deb:AddItem(v,3)
			end
		end
	end)
end


do
	Mouse=Player:GetMouse()
	Mouse.KeyDown:connect(function(key)
		keys[key]=true
		if Mouse and Mouse.Hit then
			-- Grapple
			if key == "q" then
				if not keys["g"] then
					Grapple("q",Mouse.Hit,18)
				end
			end
			if key == "e" then
				if not keys["g"] then
					Grapple("e",Mouse.Hit,18)
				end
			end
			
			-- Jump
			if key == " " then
				Humanoid.PlatformStand=false
				Grappling=false
				if qPart then qPart:Destroy() qPart=nil qRope=nil qHit=nil end
				if ePart then ePart:Destroy() ePart=nil eRope=nil eHit=nil end
				if qePart then qePart:Destroy() qePart=nil end
				if qProp then qProp:Destroy() qProp=nil end
				if eProp then eProp:Destroy() eProp=nil end
				if qeProp then qeProp:Destroy() qeProp=nil end
			end
			
			-- Toggle Walk/Run
			if key == "0" then
				if WalkMode == "Walk" then
					WalkMode = "Run"
				elseif WalkMode == "Run" then
					WalkMode = "Walk"
				end
			end
			
			-- Blade Reload
			if key == "r" then
				if Anim == "" and not Grappling and not Humanoid.PlatformStand and not Humanoid.Jump and WalkMode == "Walk" then
					Anim = "Blade Switch"
					CanGrapple = false
					Humanoid.WalkSpeed = 0
					if not CurrentBlades[1] and not CurrentBlades[2] then
						local newRBlade,newLBlade
						if Pack["RightBlade1"].Part0 and Pack["LeftBlade7"].Part0 then
							newRBlade = Pack["RightBlade1"]
							newLBlade = Pack["LeftBlade7"]
						elseif Pack["RightBlade3"].Part0 and Pack["LeftBlade5"].Part0 then
							newRBlade = Pack["RightBlade3"]
							newLBlade = Pack["LeftBlade5"]
						elseif Pack["RightBlade5"].Part0 and Pack["LeftBlade3"].Part0 then
							newRBlade = Pack["RightBlade5"]
							newLBlade = Pack["LeftBlade3"]
						elseif Pack["RightBlade7"].Part0 and Pack["LeftBlade1"].Part0 then
							newRBlade = Pack["RightBlade7"]
							newLBlade = Pack["LeftBlade1"]
						else
							print("No more Blades in stock")
							CanGrapple = true
							Anim = ""
							return
						end
						Sharpness = 1
						-- anims
						local num = 3
						RePose()
						for i=1,ASpeed*num do 
							SetWeld(LAW,0,i,ASpeed*num,wLA,wLA2,v3(0,-0.5,-0.8),v3(0,-180,-60),1) 
							SetWeld(RAW,0,i,ASpeed*num,wRA,wRA2,v3(0,-0.5,-0.8),v3(15,180,60),1) 
							SetWeld(Neck,0,i,ASpeed*num,wNE,wNE2,v3(0,1.5,-0.2),v3(-30,0,0),1) 
							SetWeld(Root,0,i,ASpeed*num,wRT,wRT2,v3(0,-0.2,0),v3(-15,0,0),1) 
							SetWeld(LLW,0,i,ASpeed*num,wLL,wLL2,v3(-0.5,-0.8,0),v3(15,0,-5),1)
							SetWeld(RLW,0,i,ASpeed*num,wRL,wRL2,v3(0.5,-0.8,0),v3(15,0,5),1)
							SetWeld(wLSword,0,i,ASpeed*num,wLS,wLS2,v3(0,-0.95,0),v3(-90,-60,0),1) 
							SetWeld(wRSword,0,i,ASpeed*num,wRS,wRS2,v3(0,-0.95,0),v3(-90,60,0),1) 
							wait(0)
						end
						
						newRBlade.Part0 = RConnect
						newRBlade.C0 = cn(0,3.5/2,0.05)
						CurrentBlades[1] = newRBlade
						
						newLBlade.Part0 = LConnect
						newLBlade.C0 = cn(0,3.5/2,0.05)
						CurrentBlades[2] = newLBlade
						
						PlaySound(as.Draw,1,1,Torso)
						local num = 1.5
						RePose()
						for i=1,ASpeed*num do 
							SetWeld(LAW,0,i,ASpeed*num,wLA,wLA2,v3(0,0.1,-1.5),v3(70,-180,-60),1) 
							SetWeld(RAW,0,i,ASpeed*num,wRA,wRA2,v3(0,0.1,-1.5),v3(85,180,60),1) 
							SetWeld(Neck,0,i,ASpeed*num,wNE,wNE2,v3(0,1.5,0),v3(15,0,0),1) 
							SetWeld(Root,0,i,ASpeed*num,wRT,wRT2,v3(0,0,0),v3(0,0,0),1)
							SetWeld(LLW,0,i,ASpeed*num,wLL,wLL2,PoseLL,PoseLL2,1)
							SetWeld(RLW,0,i,ASpeed*num,wRL,wRL2,PoseRL,PoseRL2,1)
							SetWeld(wLSword,0,i,ASpeed*num,wLS,wLS2,v3(0,-0.95,0),v3(-90,-60,0),1) 
								SetWeld(wLSword,1,i,ASpeed*num,v3(0,0,0),v3(0,0,0),v3(0,0,0),v3(-50,0,0),1) 
							SetWeld(wRSword,0,i,ASpeed*num,wRS,wRS2,v3(0,-0.95,0),v3(-90,60,0),1) 
								SetWeld(wRSword,1,i,ASpeed*num,v3(0,0,0),v3(0,0,0),v3(0,0,0),v3(-50,0,0),1) 
							wait(0)
						end
						RePose()
						for i=1,ASpeed*num do 
							SetWeld(LAW,0,i,ASpeed*num,wLA,wLA2,PoseLA,PoseLA2,1) 
							SetWeld(RAW,0,i,ASpeed*num,wRA,wRA2,PoseRA,PoseRA2,1) 
							SetWeld(Neck,0,i,ASpeed*num,wNE,wNE2,PoseNE,PoseNE2,1) 
							SetWeld(wLSword,0,i,ASpeed*num,wLS,wLS2,PoseLS,PoseLS2,1) 
								SetWeld(wLSword,1,i,ASpeed*num,v3(0,0,0),v3(0,0,0),v3(0,0,0),v3(0,0,0),1) 
							SetWeld(wRSword,0,i,ASpeed*num,wRS,wRS2,PoseRS,PoseRS2,1) 
								SetWeld(wRSword,1,i,ASpeed*num,v3(0,0,0),v3(0,0,0),v3(0,0,0),v3(0,0,0),1) 
							wait(0)
						end
						Anim = ""
						CanGrapple = true
						
					elseif CurrentBlades[1] and CurrentBlades[2] then
						PlaySound(as.Disconnect,1,1,Torso)
						CurrentBlades[1].Part0 = nil
						CurrentBlades[1].Part1.CanCollide = true
						CurrentBlades[1] = nil
						
						CurrentBlades[2].Part0 = nil
						CurrentBlades[2].Part1.CanCollide = true
						CurrentBlades[2] = nil
					end
					Anim = ""
					CanGrapple = true
					Humanoid.WalkSpeed = WalkMode == "Walk" and 10 or WalkMode == "Run" and 28
				end
			end
			
			-- Spin Attack
			if key == "t" then 
				if not CurrentBlades[1] and not CurrentBlades[2] then return end
				if Anim == "" then
					Anim = "Spin"
					RePose()
					for i=1,ASpeed do 
						SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.5,0.5,0),v3(180,0,-90),1) 
						SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.5,0.5,0),v3(0,0,90),1)
						SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(0,80,5),1) 
						SetWeld(Neck,0,i,ASpeed,wNE,wNE2,v3(0,1.5,0),v3(0,0,0),1) 
						SetWeld(wLSword,0,i,ASpeed,wLS,wLS2,v3(0,-0.95,0),v3(-180,0,0),1) 
						SetWeld(wRSword,0,i,ASpeed,wRS,wRS2,v3(0,-0.95,0),v3(-180,0,0),1) 
						wait(0)
					end
					Dmg=true
					RePose()
					local num = 2
					PlaySound(as.QuickSlash,0.95,1,Torso)
					for i=1,ASpeed*num do 
						if i%4==0 then 
							MeshEffect(Pack,Torso.CFrame*cn(0,0.5,0),16,0.5,16,0.07,"Dark grey","Cylinder") 
						end
						SetWeld(Root,0,i,ASpeed*num,wRT,wRT2,v3(0,0,0),v3(-15,-360-270,0),1) 
						SetWeld(LAW,0,i,ASpeed*num,wLA,wLA2,v3(-1.5,0.5,0),v3(180,0,-90),1) 
						SetWeld(RAW,0,i,ASpeed*num,wRA,wRA2,v3(1.5,0.5,0),v3(0,0,90),1)
						SetWeld(wLSword,0,i,ASpeed*num,wLS,wLS2,v3(0,-0.95,0),v3(-180,0,0),1) 
						SetWeld(wRSword,0,i,ASpeed*num,wRS,wRS2,v3(0,-0.95,0),v3(-180,0,0),1) 
						wait(0)
					end
					Dmg=false
					ClearWeld(Root)
					ReturnPose()
					Anim=""
				end
			end
			
			-- Block
			if key == "f" then
				if WalkMode == "Run" then return end
				if not CurrentBlades[1] and not CurrentBlades[2] then return end
				if Anim == "" then
					Anim = "Blocking"
					Block.Value = 1
					RePose()
					for i=1,ASpeed do 
						SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.5,0.5,0),v3(73,-45,0),1) 
						SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.5,0.5,0),v3(65,38,0),1)
						SetWeld(wLSword,0,i,ASpeed,wLS,wLS2,v3(0,-0.95,0),v3(-90,0,0),1) 
						SetWeld(wRSword,0,i,ASpeed,wRS,wRS2,v3(0,-0.95,0),v3(-90,0,0),1) 
						wait(0)
					end
					PlaySound(as.Block,1,1,Torso)
					Anim = "Block"
					repeat wait() until Block.Value<=0 or not keys["f"] or Anim ~= "Block"
					if Anim == "Block" then
						Anim = "Unblocking"
						Block.Value = 0
						ReturnPose(not Walking)
						Anim = ""
					end
				end
			end
			
			-- Double Grapple
			if key == "g" then
				if not keys["q"] and not keys["e"] then
					Spawn(function() Grapple("q",Mouse.Hit*cn(-(RootPart.Position-Mouse.Hit.p).magnitude/5,0,0),18) end)
					Spawn(function() Grapple("e",Mouse.Hit*cn((RootPart.Position-Mouse.Hit.p).magnitude/5,0,0),18) end)
				end
			end
			
			-- Choke Kill
			if key == "z" then
				if not CurrentBlades[1] and not CurrentBlades[2] then return end
				if Anim == "" and not Grappling and not Humanoid.PlatformStand and WalkMode == "Walk" then
					hit,hitpos = Raycast(RootPart.Position-v3(0,1,0),RootPart.Position-v3(0,1,0) - (RootPart.CFrame *cn(0,0,5)).p,10,Char)
					
					if not hit or not hitpos then return end
					if not hit.Parent:findFirstChild("Humanoid") and not hit.Parent.Parent:findFirstChild("Humanoid") then return end
					if not hit.Parent:findFirstChild("Torso") and not hit.Parent.Parent:findFirstChild("Torso") then return end
					
					hitHum = not hit.Parent:findFirstChild("Humanoid") and (not hit.Parent.Parent:findFirstChild("Humanoid")and nil or hit.Parent.Parent:findFirstChild("Humanoid")) or hit.Parent:findFirstChild("Humanoid")
					hitTorso = not hit.Parent:findFirstChild("Torso") and (not hit.Parent.Parent:findFirstChild("Torso") and nil or hit.Parent.Parent:findFirstChild("Torso")) or hit.Parent:findFirstChild("Torso")
					
					-- Check for titans
					if hitTorso:GetMass() > 4 then print("OMG U TRIED TO CHOKE A TITAN") return end
					
					if hitHum and hitTorso then
						Anim = "Choke"
						hitHum.PlatformStand=false
						RootPart.CFrame=hitTorso.CFrame*cn(0,0,1)
						wHitTorso = iNew{"Weld",Pack,Part0=RootPart,Part1=hitTorso,C0=cn(0,-0.2,-1)*ca(-10,0,0)}
						RePose()
						for i=1,ASpeed do
							SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.5,0.5,0),v3(0,-75,-100),1) 
							SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.5,0.5,0),v3(0,75,100),1)
							wait(0)
						end
					end
					
					local prevSpeed = Humanoid.WalkSpeed
					repeat wait(0.3)
						if hitHum then 
							Humanoid.WalkSpeed = prevSpeed / 5
							pcall(function()
								hitHum.PlatformStand=true
							end)
						end
					until not keys["z"] or not hitHum or not hitTorso or hitHum.Health <= 0 or Grappling or Humanoid.PlatformStand or Humanoid.Sit or WalkMode~="Walk" or Humanoid.Jump or Anim~="Choke"
					if Anim == "Choke" then
						Humanoid.WalkSpeed=prevSpeed
						pcall(function() wHitTorso:Destroy() end)
						ReturnPose()
						Anim = ""
					else
						PlaySound(Slashes.Slash2,1,1,Torso)
						RePose()
						for i=1,ASpeed do
							SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.5,0.5,0),v3(0,-25,-100),1) 
							SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.5,0.5,0),v3(0,25,100),1)
							SetWeld(wLSword,0,i,ASpeed,wLS,wLS2,v3(0,-0.95,0),v3(-90+50,0,0),1) 
							SetWeld(wRSword,0,i,ASpeed,wRS,wRS2,v3(0,-0.95,0),v3(-90+50,0,0),1) 
							wait(0)
						end
						pcall(function() wHitTorso:Destroy() end)
						pcall(function() Damage(hitHum,3) end)
						wait(0.3)
						Humanoid.WalkSpeed=prevSpeed
						ReturnPose()
						Anim = ""
					end
				end
			end
			
			-- Flip Slash
			if key == "x" then
				if not CurrentBlades[1] and not CurrentBlades[2] then return end
				if Anim == "" then
					Anim = "Flip Slash"
					if not Humanoid.PlatformStand then Force.force = v3(0,16000,0) end
					Legs(0)
					RePose()
					for i=1,ASpeed do 
						SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.5,0.5,0),v3(210,0,20),1) 
						SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.5,0.5,0),v3(210,0,-20),1)
						SetWeld(LLW,0,i,ASpeed,wLL,wLL2,v3(-0.5,-1,0),v3(-60,0,-15),0) 
						SetWeld(RLW,0,i,ASpeed,wRL,wRL2,v3(0.5,-1,0),v3(-60,0,15),0)  
						SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(55,0,0),1) 
						SetWeld(Neck,0,i,ASpeed,wNE,wNE2,v3(0,1.5,0),v3(30,0,0),1) 
						wait(0)
					end
					Force.force = v3(0,0,0)
					PlaySound(as.QuickSlash,1,1,Torso)
					Dmg=true
					RePose()
					Spawn(function()
						for i=1,ASpeed/1.2 do 
							SetWeld(LLW,0,i,ASpeed/1.2,wLL,wLL2,v3(-0.5,-1,0),v3(-15,0,-15),0) 
							SetWeld(RLW,0,i,ASpeed/1.2,wRL,wRL2,v3(0.5,-1,0),v3(-15,0,15),0)  
							SetWeld(Neck,0,i,ASpeed/1.2,wNE,wNE2,v3(0,1.5,0),v3(30,0,0),1) 
							SetWeld(wLSword,0,i,ASpeed/1.2,wLS,wLS2,PoseLS,v3(-130,0,0),1) 
							SetWeld(wRSword,0,i,ASpeed/1.2,wRS,wRS2,PoseRS,v3(-130,0,0),1) 
							wait(0)
						end
					end)
					for i=1,ASpeed/0.6 do
						SetWeld(LAW,0,i,ASpeed/0.6,wLA,wLA2,v3(-1.5,0.5,0),v3(20,0,20),1) 
						SetWeld(RAW,0,i,ASpeed/0.6,wRA,wRA2,v3(1.5,0.5,0),v3(20,0,-20),1)
						SetWeld(Root,0,i,ASpeed/0.6,wRT,wRT2,v3(0,0,0),v3(-360-30,0,0),1) 
						wait(0)
					end
					RePose()
					ClearWeld(Root)
					SetWeld(Root,0,1,1,wRT,wRT2,v3(0,0,0),v3(-30,0,0),0)
					Dmg=false
					ReturnPose()
					Anim = ""
				end
			end
			
			-- Blade Throw
			if key == "c" then
				if Anim == "" and CurrentBlades[1] and CurrentBlades[2] then
					Anim = "Blade Throw"
					RePose()
					for i=1,ASpeed do 
						SetWeld(LAW,0,i,ASpeed,wLA,wLA2,PoseLA,PoseLA2,1) 
						SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.5,0.5,0),v3(200,-15,20),1)
						SetWeld(Neck,0,i,ASpeed,wNE,wNE,v3(0,1.5,0),v3(15,-20,0),1) 
						SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(0,-15,0),1) 
						wait(0)
					end
					ThrowBlade(1)
					RePose()
					for i=1,ASpeed do 
						SetWeld(LAW,0,i,ASpeed,wLA,wLA2,PoseLA,PoseLA2,1) 
						SetWeld(RAW,0,i,ASpeed,wRA,wRA2,PoseRA,PoseRA2,1)
						SetWeld(Neck,0,i,ASpeed,wNE,wNE,v3(0,1.5,0),v3(5,0,0),1) 
						SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(0,0,0),1) 
						wait(0)
					end

					
					RePose()
					for i=1,ASpeed do 
						SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.5,0.5,0),v3(200,15,-20),1) 
						SetWeld(RAW,0,i,ASpeed,wRA,wRA2,PoseRA,PoseRA2,1)
						SetWeld(Neck,0,i,ASpeed,wNE,wNE,v3(0,1.5,0),v3(15,20,0),1) 
						SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(0,15,0),1) 
						wait(0)
					end
					ThrowBlade(2)
					RePose()
					for i=1,ASpeed do 
						SetWeld(LAW,0,i,ASpeed,wLA,wLA2,PoseLA,PoseLA2,1) 
						SetWeld(RAW,0,i,ASpeed,wRA,wRA2,PoseRA,PoseRA2,1)
						SetWeld(Neck,0,i,ASpeed,wNE,wNE,v3(0,1.5,0),v3(5,0,0),1) 
						SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(0,0,0),1) 
						wait(0)
					end
					Anim = ""
				end
			end
		end
	end)
	
	Mouse.KeyUp:connect(function(key)
		keys[key]=false
		if key == "q" then
			if keys["g"] then return end
			if not keys["e"] then Grappling=false end
			if qPart then qPart:Destroy() qPart=nil qRope = nil qHit=nil end
			if qePart then qePart:Destroy() qePart=nil end
			if qProp then qProp:Destroy() qProp=nil end
			if qeProp then qeProp:Destroy() qeProp=nil end
			
			if keys["e"] then
				if ePart and not eProp and eHit then
					eProp=AddRP(ePart,"eProp",MaxThrust1)
					eProp:Fire()
				end
			end
		end
		if key == "e" then
			if keys["g"] then return end
			if not keys["q"] then Grappling=false end
			if ePart then ePart:Destroy() ePart=nil eRope = nil eHit=nil end
			if qePart then qePart:Destroy() qePart=nil end
			if eProp then eProp:Destroy() eProp=nil end
			if qeProp then qeProp:Destroy() qeProp=nil end
			
			if keys["q"] then
				if qPart and not qProp and qHit then
					qProp=AddRP(qPart,"qProp",MaxThrust1)
					qProp:Fire()
				end
			end
		end
		if key == "g" then
			if keys["q"] or keys["e"] then return end
			Grappling=false
			if qPart then qPart:Destroy() qPart=nil qRope = nil qHit=nil end
			if ePart then ePart:Destroy() ePart=nil eRope = nil eHit=nil end
			if qePart then qePart:Destroy() qePart=nil end
			if qProp then qProp:Destroy() qProp=nil end
			if eProp then eProp:Destroy() eProp=nil end
			if qeProp then qeProp:Destroy() qeProp=nil end
		end
	end)
	
	Mouse.Button1Down:connect(function()
		if Anim == "" then
			if not CurrentBlades[1] and not CurrentBlades[2] then return end
			if Attack == 1 then
				Anim = "Attack1"
				RePose()
				local torsoA,torsoB,torsoC = Root.C0:toEulerAnglesXYZ()
				for i=1,ASpeed do 
					SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.3,0.5,-0.25),v3(90,0,20),1) 
					SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.3,0.5,-0.25),v3(90,0,20),1)
					SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(math.deg(torsoA),50,0),1) 
					SetWeld(Neck,0,i,ASpeed,wNE,wNE2,v3(0,1.5,0),v3(0,0,0),1) 
					SetWeld(wLSword,0,i,ASpeed,wLS,wLS2,PoseLS,v3(-90,0,90),1) 
					SetWeld(wRSword,0,i,ASpeed,wRS,wRS2,PoseRS,v3(-90,0,90),1) 
					wait(0)
				end
				Dmg=true
				PlaySound(Slashes[mran(1,#Slashes)],1,1,Torso)
				RePose()
				for i=1,ASpeed/1.3 do 
					SetWeld(LAW,0,i,ASpeed/1.3,wLA,wLA2,v3(-1.3,0.5,-0.25),v3(90,0,70),1) 
					SetWeld(RAW,0,i,ASpeed/1.3,wRA,wRA2,v3(1.3,0.5,-0.25),v3(90,0,70),1)
					SetWeld(Root,0,i,ASpeed/1.3,wRT,wRT2,v3(0,0,0),v3(math.deg(torsoA),-70,0),1) 
					SetWeld(Neck,0,i,ASpeed/1.3,wNE,wNE2,v3(0,1.5,0),v3(0,0,0),1) 
					SetWeld(wLSword,0,i,ASpeed/1.3,wLS,wLS2,PoseLS,v3(-90,-60,90),1) 
					SetWeld(wRSword,0,i,ASpeed/1.3,wRS,wRS2,PoseRS,v3(-90,-60,90),1) 
					wait(0)
				end
				Dmg=false
				ReturnPose(not Walking)
				Anim = ""
				Attack = 2
			elseif Attack == 2 then
				Anim = "Attack2"
				RePose()
				local torsoA,torsoB,torsoC = Root.C0:toEulerAnglesXYZ()
				for i=1,ASpeed do 
					SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.3,0.5,-0.25),v3(90,0,-20),1) 
					SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.3,0.5,-0.25),v3(90,0,-20),1)
					SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(math.deg(torsoA),-50,0),1) 
					SetWeld(Neck,0,i,ASpeed,wNE,wNE2,v3(0,1.5,0),v3(0,0,0),1) 
					SetWeld(wLSword,0,i,ASpeed,wLS,wLS2,PoseLS,v3(-90,0,-90),1) 
					SetWeld(wRSword,0,i,ASpeed,wRS,wRS2,PoseRS,v3(-90,0,-90),1) 
					wait(0)
				end
				Dmg=true
				PlaySound(Slashes[mran(1,#Slashes)],1,1,Torso)
				RePose()
				for i=1,ASpeed/1.3 do 
					SetWeld(LAW,0,i,ASpeed/1.3,wLA,wLA2,v3(-1.3,0.5,-0.25),v3(90,0,-70),1) 
					SetWeld(RAW,0,i,ASpeed/1.3,wRA,wRA2,v3(1.3,0.5,-0.25),v3(90,0,-70),1)
					SetWeld(Root,0,i,ASpeed/1.3,wRT,wRT2,v3(0,0,0),v3(math.deg(torsoA),70,0),1) 
					SetWeld(Neck,0,i,ASpeed/1.3,wNE,wNE2,v3(0,1.5,0),v3(0,0,0),1) 
					SetWeld(wLSword,0,i,ASpeed/1.3,wLS,wLS2,PoseLS,v3(-90,60,-90),1) 
					SetWeld(wRSword,0,i,ASpeed/1.3,wRS,wRS2,PoseRS,v3(-90,60,-90),1) 
					wait(0)
				end
				Dmg=false
				ReturnPose(not Walking)
				Anim = ""
				Attack = 3
			
			elseif Attack == 3 then
				if not CurrentBlades[1] and not CurrentBlades[2] then return end
				if Anim == "" then
					Anim = "Dual Plunge"
					RePose()
					for i=1,ASpeed do 
						SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.4,0.5,0),v3(0,-105,-75),1) 
						SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.4,0.5,0),v3(0,105,75),1)
						SetWeld(Neck,0,i,ASpeed,wNE,wNE2,v3(0,1.5,0),v3(-15,0,0),1) 
						SetWeld(wLSword,0,i,ASpeed,wLS,wLS2,v3(0,-0.95,0),v3(-180,0,0),1) 
						SetWeld(wRSword,0,i,ASpeed,wRS,wRS2,v3(0,-0.95,0),v3(-180,0,0),1) 
						wait(0)
					end
					Dmg=true
					wait(0.1)
					PlaySound(Slashes[mran(1,#Slashes)],1,1,Torso)
					RePose()
					for i=1,ASpeed/1.3 do 
						SetWeld(LAW,0,i,ASpeed/1.3,wLA,wLA2,v3(-1.4,0.5,0),v3(0,25,-75),1) 
						SetWeld(RAW,0,i,ASpeed/1.3,wRA,wRA2,v3(1.4,0.5,0),v3(0,-25,75),1)
						SetWeld(Neck,0,i,ASpeed/1.3,wNE,wNE2,v3(0,1.5,0),v3(-15,0,0),1) 
						SetWeld(wLSword,0,i,ASpeed/1.3,wLS,wLS2,v3(0,-0.95,0),v3(-180,0,0),1) 
						SetWeld(wRSword,0,i,ASpeed/1.3,wRS,wRS2,v3(0,-0.95,0),v3(-180,0,0),1) 
						wait(0)
					end
					Dmg=false
					ReturnPose()
					Anim=""
				end
				Attack = 1
			end
		end
		
		if Anim == "Block" and keys["f"] then
			if not CurrentBlades[1] and not CurrentBlades[2] then return end
			Anim = "Block Counter"
			Block.Value = 0
			RePose()
			for i=1,ASpeed do 
				SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.5,0.5,0),v3(103,-40,15),1) 
				SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.5,0.5,0),v3(95,40,-15),1)
				SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(0,0,0),1) 
				SetWeld(Neck,0,i,ASpeed,wNE,wNE2,v3(0,1.5,0),v3(5,0,0),1) 
				SetWeld(wLSword,0,i,ASpeed,wLS,wLS2,v3(0,-0.95,0),v3(-90,0,0),1) 
				SetWeld(wRSword,0,i,ASpeed,wRS,wRS2,v3(0,-0.95,0),v3(-90,0,0),1) 
				wait(0)
			end
			PlaySound(Slashes[mran(1,#Slashes)],1,1,Torso)
			Dmg = true
			RePose()
			for i=1,ASpeed/1.3 do 
				SetWeld(LAW,0,i,ASpeed/1.3,wLA,wLA2,v3(-1.5,0.5,0),v3(-88,-25,-40),1) 
				SetWeld(RAW,0,i,ASpeed/1.3,wRA,wRA2,v3(1.5,0.5,0),v3(-80,25,40),1)
				SetWeld(Root,0,i,ASpeed/1.3,wRT,wRT2,v3(0,0,0),v3(0,0,0),1) 
				SetWeld(Neck,0,i,ASpeed/1.3,wNE,wNE2,v3(0,1.5,0),v3(-20,0,0),1) 
				SetWeld(wLSword,0,i,ASpeed/1.3,wLS,wLS2,v3(0,-0.95,0),v3(-130,0,0),1) 
				SetWeld(wRSword,0,i,ASpeed/1.3,wRS,wRS2,v3(0,-0.95,0),v3(-130,0,0),1) 
				wait(0)
			end
			Dmg = false
			ReturnPose(not Walking)
			Anim = ""
		end
		
		if Anim == "Choke" and keys["z"] then
			if not CurrentBlades[1] and not CurrentBlades[2] then return end
			Anim = "Assassinate"
		end
	end)
end


Anim = ""
Footsteps = {as.Footstep1,as.Footstep2,as.Footstep3}
Grappling = false
ASpeed = 9
Attack = 1
CurrentBlades = {nil,nil}

PoseLA=v3(-1.5,0.5,0) PoseLA2=v3(-10,15,-20)
PoseRA=v3(1.5,0.5,0) PoseRA2=v3(-10,-15,20)
PoseLL=v3(-0.5,-1,0) PoseLL2=v3(0,12,-12)
PoseRL=v3(0.5,-1,0) PoseRL2=v3(0,-12,12)
PoseRT=v3(0,0,0) PoseRT2=v3(0,0,0)
PoseNE=v3(0,1.5,0) PoseNE2=v3(0,0,0)
PoseLS=v3(0,-0.95,-0.25) PoseLS2=v3(-90,0,0)
PoseRS=v3(0,-0.95,-0.25) PoseRS2=v3(-90,0,0)
Arms() Legs()
ReturnPose()
Arms(0) Legs(0)


Walking=false
Humanoid.Running:connect(function(Walk) Walking=Walk>0 and true or false end)
Humanoid.Changed:connect(function() if Anim ~= "" then Humanoid.Jump = false end end)
Humanoid.Jumping:connect(function()
	if Anim == "" then
		if WalkMode == "Run" then
			if not qPart and not ePart then
				Anim = "Jump"
				local torsoVector = RootPart.CFrame.lookVector
				local forz = v3(torsoVector.x,0,torsoVector.z)
				RePose()
				Force.force=forz*12000
				CanGrapple = false
				for i=1,ASpeed do 
					SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.5,0.5,0),v3(205,-15,15),0) 
					SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.5,0.5,0),v3(205,15,-15),0)
					SetWeld(LLW,0,i,ASpeed,wLL,wLL2,v3(-0.5,-1,0),v3(15,0,-5),0) 
					SetWeld(RLW,0,i,ASpeed,wRL,wRL2,v3(0.5,-1,0),v3(15,0,5),0)  
					SetWeld(Neck,0,i,ASpeed,wNE,wNE2,v3(0,1.5,0),v3(10,0,0),0)
					SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(-65,0,0),0)
					SetWeld(wLSword,0,i,ASpeed,wLS,wLS2,v3(0,-0.95,0),v3(-270,40,0),0) 
					SetWeld(wRSword,0,i,ASpeed,wRS,wRS2,v3(0,-0.95,0),v3(-270,-40,0),0) 
					wait(0)
				end
				Dmg=true
				RePose()
				for i=1,ASpeed*1.8 do 
					SetWeld(LAW,0,i,ASpeed*1.8,wLA,wLA2,v3(-1.5,0.5,0),v3(155,-15,15),1) 
					SetWeld(RAW,0,i,ASpeed*1.8,wRA,wRA2,v3(1.5,0.5,0),v3(155,15,-15),1)
					SetWeld(Neck,0,i,ASpeed*1.8,wNE,wNE2,v3(0,1.5,0),v3(10,0,0),1)
					SetWeld(Root,0,i,ASpeed*1.8,wRT,wRT2,v3(0,-1.5,0),v3(-360-75,0,0),1)
					wait(0)
				end
				RePose()
				ClearWeld(Root)
				SetWeld(Root,0,1,1,wRT,wRT2,v3(0,-1.5,0),v3(-75,0,0),0)
				Humanoid.WalkSpeed = 0
				
				repeat wait(0)
					hit,hitpos = Raycast(Torso.Position,Torso.Position - (Torso.CFrame*cn(0,0,1)).p,6,Char)
				until (hit and hitpos) or Grappling
				Force.force=v3(0,0,0)
				wait(0.2)
				Dmg=false
				ReturnPose()
				CanGrapple = true
				Humanoid.WalkSpeed = 28
				Anim = ""
			end
		
		elseif WalkMode == "Walk" then
			if not qPart and not ePart then
				Anim = "Jump"
				RePose()
				for i=1,ASpeed do 
					SetWeld(LAW,0,i,ASpeed,wLA,wLA2,v3(-1.5,0.5,0),v3(135,-15,-15),1) 
					SetWeld(RAW,0,i,ASpeed,wRA,wRA2,v3(1.5,0.5,0),v3(135,15,15),1)
					SetWeld(LLW,0,i,ASpeed,wLL,wLL2,v3(-0.5,-1,0),v3(-15,0,-5),1) 
					SetWeld(RLW,0,i,ASpeed,wRL,wRL2,v3(0.5,-1,0),v3(-15,0,5),1)  
					SetWeld(Neck,0,i,ASpeed,wNE,wNE2,v3(0,1.5,0),v3(-5,0,0),1)
					SetWeld(Root,0,i,ASpeed,wRT,wRT2,v3(0,0,0),v3(-15,0,0),1)
					wait(0)
				end
				
				repeat wait()
					hit,hitpos = Raycast(Torso.Position,Torso.Position - (Torso.CFrame*cn(0,3,0)).p,6,Char)
				until hit and hitpos
				PlaySound(Footsteps[mran(1,#Footsteps)],1,1,Torso)
				ReturnPose()
				Anim = ""
			end
		end
	end
end)

Humanoid.Died:connect(function() Pack:Destroy() script:Destroy() end)


-- Walk / Run / Idle animations
Idling = true
Spawn(function()
	while wait(0) do
		if not Grappling and not Humanoid.PlatformStand and not Humanoid.Sit then
			if Torso.Velocity.magnitude > 2 then
				Idling = false
				Arms(0)
				Legs(0)
				if WalkMode == "Walk" then -- walk anims
					local num=1
					if not Humanoid.Jump and Anim ~= "Flip Slash" and Anim ~= "Jump" then
						PlaySound(Footsteps[mran(1,#Footsteps)],1,1,Torso)
					end
					RePose()
					for i=1,ASpeed*num do 
						if Anim ~= "Flip Slash" and Anim ~= "Jump" then
							SetWeld(LLW,0,i,ASpeed*num,wLL,wLL2,v3(-0.5,-1,0),v3(-20,0,-3),0) 
							SetWeld(RLW,0,i,ASpeed*num,wRL,wRL2,v3(0.5,-1,0),v3(20,0,3),0)  
						end
						if Anim == "" then
							SetWeld(LAW,0,i,ASpeed*num,wLA,wLA2,v3(-1.5,0.5,0),v3(20,-8,-10),0) 
							SetWeld(RAW,0,i,ASpeed*num,wRA,wRA2,v3(1.5,0.5,0),v3(-20,8,10),0)
							SetWeld(Root,0,i,ASpeed*num,wRT,wRT2,v3(0,0,0),v3(0,0,0),0) 
							SetWeld(Neck,0,i,ASpeed*num,wNE,wNE2,v3(0,1.5,0),v3(-5,0,0),0) 
							
						end
						wait(0)
						if Torso.Velocity.magnitude<2 or Grappling then -- break
							if Anim=="" then 
								Anim="Return" 
								ReturnPose() 
								Anim="" 
							end 
							break 
						end
					end
					if not Humanoid.Jump and Anim ~= "Flip Slash" and Anim ~= "Jump" then 
						PlaySound(Footsteps[mran(1,#Footsteps)],1,1,Torso)
					end
					RePose()
					for i=1,ASpeed*num do
						if Anim ~= "Flip Slash" and Anim ~= "Jump" then
							SetWeld(LLW,0,i,ASpeed*num,wLL,wLL2,v3(-0.5,-1,0),v3(20,0,-3),0) 
							SetWeld(RLW,0,i,ASpeed*num,wRL,wRL2,v3(0.5,-1,0),v3(-20,0,3),0) 
						end
						if Anim == "" then
							SetWeld(LAW,0,i,ASpeed*num,wLA,wLA2,v3(-1.5,0.5,0),v3(-20,-8,-10),0) 
							SetWeld(RAW,0,i,ASpeed*num,wRA,wRA2,v3(1.5,0.5,0),v3(20,8,10),0)
							SetWeld(Root,0,i,ASpeed*num,wRT,wRT2,v3(0,0,0),v3(0,0,0),0) 							
							SetWeld(Neck,0,i,ASpeed*num,wNE,wNE2,v3(0,1.5,0),v3(-5,0,0),0) 
						end
						wait(0)
						if Torso.Velocity.magnitude<2 or Grappling or WalkMode~="Walk" then -- break
							if Anim=="" then 
								Anim="Return" 
								ReturnPose() 
								Anim="" 
							end 
							break 
						end
					end
				elseif WalkMode == "Run" then -- run anims
					local num = 0.8
					local ang = 50
					if not Humanoid.Jump and Anim ~= "Flip Slash" and Anim ~= "Jump" then
						PlaySound(Footsteps[mran(1,#Footsteps)],1,1,Torso)
					end
					RePose()
					for i=1,ASpeed*num do 
						if Anim ~= "Flip Slash" and Anim ~= "Jump" then
							SetWeld(LLW,0,i,ASpeed*num,wLL,wLL2,v3(-0.5,-1,0),v3(-ang,0,-3),0) 
							SetWeld(RLW,0,i,ASpeed*num,wRL,wRL2,v3(0.5,-1,0),v3(ang,0,3),0)  
						end
						if Anim == "" then
							SetWeld(LAW,0,i,ASpeed*num,wLA,wLA2,v3(-1.5,0.5,0),v3(-90+15,90,0),0) 
							SetWeld(RAW,0,i,ASpeed*num,wRA,wRA2,v3(1.5,0.5,0),v3(-90+15,-90,0),0)
							SetWeld(Root,0,i,ASpeed*num,wRT,wRT2,v3(0,0,0),v3(-15,0,0),0) 
							SetWeld(Neck,0,i,ASpeed*num,wNE,wNE2,v3(0,1.5,-0.2),v3(-15,0,0),0) 
						end
						wait(0)
						if Torso.Velocity.magnitude<2 or Grappling or WalkMode~="Run" then -- break
							if Anim=="" then 
								Anim="Return" 
								ReturnPose() 
								Anim="" 
							end 
							break 
						end
					end
					if not Humanoid.Jump and Anim ~= "Flip Slash" and Anim ~= "Jump" then
						PlaySound(Footsteps[mran(1,#Footsteps)],1,1,Torso)
					end
					RePose()
					for i=1,ASpeed*num do 
						if Anim ~= "Flip Slash" and Anim ~= "Jump" then
							SetWeld(LLW,0,i,ASpeed*num,wLL,wLL2,v3(-0.5,-1,0),v3(ang,0,-3),0) 
							SetWeld(RLW,0,i,ASpeed*num,wRL,wRL2,v3(0.5,-1,0),v3(-ang,0,-3),0)  
						end
						if Anim == "" then
							SetWeld(LAW,0,i,ASpeed*num,wLA,wLA2,v3(-1.5,0.5,0),v3(-90+25,90,0),0) 
							SetWeld(RAW,0,i,ASpeed*num,wRA,wRA2,v3(1.5,0.5,0),v3(-90+25,-90,0),0)
							SetWeld(Root,0,i,ASpeed*num,wRT,wRT2,v3(0,0,0),v3(-25,0,0),0) 
							SetWeld(Neck,0,i,ASpeed*num,wNE,wNE2,v3(0,1.5,-0.2),v3(-25,0,0),0) 
						end
						wait(0)
						if Torso.Velocity.magnitude<2 or Grappling or WalkMode~="Run" then -- break
							if Anim=="" then 
								Anim="Return" 
								ReturnPose() 
								Anim="" 
							end 
							break 
						end
					end
				end
			elseif Torso.Velocity.magnitude < 2 then -- idle anims
				Idling = true
				if Anim == "" then
					--ReturnPose()
					local num=WalkMode=="Walk" and 6.5 or 5
					RePose()
					for i=1,ASpeed*num do 
						SetWeld(LAW,0,i,ASpeed*num,wLA,wLA2,v3(-1.5,0.5,0),v3(0,15,-20),1) 
						SetWeld(RAW,0,i,ASpeed*num,wRA,wRA2,v3(1.5,0.5,0),v3(0,-15,20),1)
						SetWeld(LLW,0,i,ASpeed*num,wLL,wLL2,v3(-0.5,-1,0),v3(0,12,-12),1) 
						SetWeld(RLW,0,i,ASpeed*num,wRL,wRL2,v3(0.5,-1,0),v3(0,-12,12),1)  
						SetWeld(Root,0,i,ASpeed*num,wRT,wRT2,v3(0,0,0),v3(0,0,0),1) 
						SetWeld(Neck,0,i,ASpeed*num,wNE,wNE2,v3(0,1.5,-0.1),v3(3,0,0),1) 
						if Torso.Velocity.magnitude>2 or Anim~="" or Grappling then -- break
							break 
						end
						wait(0)
					end
					RePose()
					for i=1,ASpeed*(num-1.5) do 
						SetWeld(LAW,0,i,ASpeed*(num-1.5),wLA,wLA2,v3(-1.5,0.5,0),v3(0,-4,-15),1) 
						SetWeld(RAW,0,i,ASpeed*(num-1.5),wRA,wRA2,v3(1.5,0.5,0),v3(0,4,15),1)
						SetWeld(LLW,0,i,ASpeed*(num-1.5),wLL,wLL2,v3(-0.5,-1,0),v3(0,4,-4),1) 
						SetWeld(RLW,0,i,ASpeed*(num-1.5),wRL,wRL2,v3(0.5,-1,0),v3(0,-4,4),1)  
						SetWeld(Root,0,i,ASpeed*(num-1.5),wRT,wRT2,v3(0,0,0),v3(0,0,0),1)
						SetWeld(Neck,0,i,ASpeed*(num-1.5),wNE,wNE2,v3(0,1.5,-0.1),v3(-8,0,0),1) 
						if Torso.Velocity.magnitude>2 or Anim~="" or Grappling then -- break
							break 
						end
						wait(0)
					end
				end
			end
		end
	end
end)


-- Main loop
Count = 0
game:GetService("RunService").RenderStepped:connect(function()
	Count = Count + 1
	if Pack.Parent then	
		-- Grapple sticking
		if qOffset and qHit and qPart then
			qPart.CFrame = qHit.CFrame * qOffset
		end
		if eOffset and eHit and ePart then
			ePart.CFrame = eHit.CFrame * eOffset
		end
		if qPart and ePart and qePart then
			qePart.CFrame = cn(qPart.CFrame.p,ePart.CFrame.p)*cn(0,0,-(qPart.CFrame.p-ePart.CFrame.p).magnitude/2)
		end
		-- Rope
		if qRope then
			qRope.Mesh.Scale = v3(0.25,(qbb.CFrame.p-qPart.CFrame.p).magnitude,0.25)
			qRope.CFrame = cn(qbb.CFrame.p,qPart.CFrame.p)*ca(-90,0,0)*cn(0,(qbb.CFrame.p-qPart.CFrame.p).magnitude/2,0)
		end
		if eRope then
			eRope.Mesh.Scale = v3(0.25,(ebb.CFrame.p-ePart.CFrame.p).magnitude,0.25)
			eRope.CFrame = cn(ebb.CFrame.p,ePart.CFrame.p)*ca(-90,0,0)*cn(0,(ebb.CFrame.p-ePart.CFrame.p).magnitude/2,0)
		end
		-- Mouse gyro, force, and boosting
		if (qHit and qProp) or (eHit and eProp) or (qePart and qeProp) then
			if qProp then qProp:Fire() end
			if eProp then eProp:Fire() end
			if qeProp then qeProp:Fire() end
			RootPart.CFrame = cn(RootPart.CFrame.p,Mouse.Hit.p)
			if keys["4"] and Gas>0 then
				if Count%10==0 then
					iNew{"Smoke",hp2,Color=bc("Medium stone grey").Color,Opacity=0.5,RiseVelocity=7,Size=2}		
					deb:AddItem(LastMade,1)
					Gas = Gas - 0.005
				end
				Force.force=RootPart.CFrame.lookVector*3000
				MaxSpeed = 400
				ThrustP = 5
				UpdatePropulsions()
			elseif not keys["4"] then
				Force.force=RootPart.CFrame.lookVector*0
				MaxSpeed = 300
				ThrustP = 5
				UpdatePropulsions()
			end
		elseif not qProp and not eProp and not qeProp then
			if not Anim == "Jump" and not Anim == "Flip Slash" then
				Force.force = v3(0,0,0)
			end
		end
		-- Walkspeed
		if WalkMode == "Walk" and Anim == "" then
			Humanoid.WalkSpeed = 10
		elseif WalkMode == "Run" and Anim == "" then
			Humanoid.WalkSpeed = 28
		end
		-- PlatformStand
		if Grappling and not Humanoid.PlatformStand then
			GrappleStance()
		end
		-- Sharpness and Gas
		if Sharpness <= 0 then 
			Sharpness = 0 
			if CurrentBlades[1] and CurrentBlades[2] then
				PlaySound(as.Disconnect,1,1,Torso)
				CurrentBlades[1].Part0 = nil
				CurrentBlades[1].Part1.CanCollide = true
				CurrentBlades[1] = nil
				
				CurrentBlades[2].Part0 = nil
				CurrentBlades[2].Part1.CanCollide = true
				CurrentBlades[2] = nil
			end
		end
		if Gas <= 0 then 
			Gas = 0 
		end
		if Gui then
			SwordBar.Size = ud(Sharpness,0,1,0)
			GasBar.Size = ud(Gas,0,1,0)
		end
	end
end)
--[[
-- props (only really useful for when there is no map)
for _,prop in pairs(workspace:GetChildren()) do
	if prop.Name=="prop" and prop:IsA("BasePart") then
		prop:Destroy()
	end
end
tp=iPart{workspace,80,5,700,cf=cn(0,200,600)*ca(15,0,0),an=true,ca=true} tp.Name="prop"
for i=1,10 do
	local sizeY = mran(25,250)
	tp=iPart{workspace,15,sizeY,15,cf=cn(mran(-300,300),sizeY/2.5,mran(-300,300))*ca(mran(-15,15),0,mran(-15,15)),an=true,ca=true} tp.Name="prop"
end
for i=1,100 do
	local tp = iPart{workspace,i==100 and 80 or mran(40,60),6,i==100 and 80 or mran(15,30),an=true,ca=true,co=i==100 and "Black" or "Medium stone grey",
		cf=cn(mran(-150,150),250+(i*mran(80,120)),mran(-100,100))*ca(mran(-15,15),mran(-360,360),mran(-15,15))
	} 
	tp.Name="prop"
end]]