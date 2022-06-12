--[[
	TODO::
		--ethereal blade in left hand
		--dagger in right han
		dagon on top of power
		anims
		rockets
			rocketpropulsion
		
		legacy keys
			e for laser
			t for rockets
			etc.
		
		smoke pipe
			smoke
			
		mana
			charge mana
			lightning between handheld buttons
			
	::
	Reese123 was here
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
Root = RootPart.RootJoint
Neck = Torso.Neck
Mouse = Player:GetMouse()
LA = Char["Left Arm"]
RA = Char["Right Arm"]
LL = Char["Left Leg"]
RL = Char["Right Leg"]
LAM = Torso["Left Shoulder"]
RAM = Torso["Right Shoulder"]
LLM = Torso["Left Hip"]
RLM = Torso["Right Hip"]

Neck.C0=cn(0,1.5,0)
Neck.C1=cn(0,0,0)
Root.C0=cn(0,0,0)
Root.C1=cn(0,0,0)

name="Tinker"

pcall(function() Char["Pack"]:Destroy() end)
pcall(function() Char.Block:Destroy() end)
pcall(function() Torso.BodyGyro:Destroy() end)
pcall(function() Torso.BodyVelocity:Destroy() end)
pcall(function() Torso.BodyPosition:Destroy() end)


script.Name = name

as = {}
as.Cone = "http://www.roblox.com/asset/?id=1033714"
as.Bevel = "rbxasset://fonts/leftarm.mesh"
as.Block = "rbxasset://sounds\\metal.ogg"
as.Hit = "http://www.roblox.com/asset/?id=10209583"
as.QSphere = "http://www.roblox.com/asset/?id=9944765"
as.Headphones = "http://www.roblox.com/asset/?id=1051545"
as.Ring = "http://www.roblox.com/asset/?id=3270017"
as.Rock = "http://www.roblox.com/asset/?id=1290033"
as.RockT = "http://www.roblox.com/asset/?id=1290030"
as.LWing = "http://www.roblox.com/asset/?id=90821133"
as.RWing = "http://www.roblox.com/asset/?id=90821193"
as.WingT = "http://www.roblox.com/asset/?id=92189351"
as.HeatSeekingMissile = "http://www.roblox.com/asset/?id=137991337"
as.TimbaLaugh = "http://www.roblox.com/asset/?id=181368017"

for i,v in pairs(as) do 
	game:GetService("ContentProvider"):Preload(as[i])
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
	local v=Instance.new(tab.type or "Part")
	if tab.type~="CornerWedgePart" then v.formFactor="Custom" end
	v.CanCollide=false
	v.TopSurface=10 v.BottomSurface=10 v.RightSurface=10 v.LeftSurface=10 v.FrontSurface=10 v.BackSurface=10
	v.Size=v3(tab[2],tab[3],tab[4])
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

function GetNormal(part,position) 
	local obj = part.CFrame:pointToObjectSpace(position) 
	local siz = part.Size/2 
	for i,v in pairs(Enum.NormalId:GetEnumItems()) do 
		local vec = Vector3.FromNormalId(v) 
		local wvec = part.CFrame:vectorToWorldSpace(vec) 
		local vz = (obj)/(siz*vec) 
		if (mabs(vz.X-1) < 0.01 or mabs(vz.Y-1) < 0.01 or mabs(vz.Z-1) < 0.01) then
			return wvec,vec 
		end 
	end 
	if part.className == "WedgePart" then 
		local wy = part.Size.y^0.5
		local wz = part.Size.z^0.5
		return part.CFrame:vectorToWorldSpace(Vector3.new(0,wz,-wy)), Vector3.new(0,wz,-wy) 
	end 
end


Block=iNew{"NumberValue",Char,Name="Block",Value=0}


pcall(function() Torso.LAW:Remove() end) 
pcall(function() Torso.RAW:Remove() end)
pcall(function() Torso.LLW:Remove() end)
pcall(function() Torso.RLW:Remove() end)
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

Trails={}
TrailPack={}
Traili={}
function Trail(obj,ofs,col)
	Trails[obj]=true
	Traili[#Traili+1]={obj,ofs,col,obj.CFrame*ofs}
end

function GetHuman(model)
	local foundHum
	local foundTorso
	local foundHead
	if #model:GetChildren()==0 then return end
	for i,v in pairs(model:GetChildren()) do
		if v:IsA("Humanoid") then
			foundHum = v
		elseif v.Name == "Torso" then
			foundTorso = v
		elseif v.Name == "Head" then
			foundHead = v
		end
	end
	return foundHum,foundTorso,foundHead
end


Pack = iNew{"Model",Char,Name="Pack"} p=Pack
cc = {"Bright blue","Bright yellow","Bright orange","Brown","Reddish brown","","Dark stone grey","Black","White","Really black","Brick yellow","Bright green","Br. yellowish green"}

-- BACKPACK
Main = iPart{p,1.25,0.5,1.25,co=cc[2]}
iNew{"Weld",p,Part0=Torso,Part1=Main,C0=cn(0,0,0.75)*ca(90,0,0)}
iNew{"CylinderMesh",Main}

Bolt = iPart{p,0.75,0.2,0.75,co=cc[6]}
iNew{"Weld",p,Part0=Main,Part1=Bolt,C0=cn(0,0.3,0)}
iNew{"CylinderMesh",Bolt}

Boltp = iPart{p,0.75,0.2,0.2,co=cc[7]}
iNew{"Weld",p,Part0=Bolt,Part1=Boltp,C0=cn(0,0.05,0)*ca(0,-30,0)}

Start = iPart{p,1.25,0.5,1.25,co=cc[2]}
iNew{"Weld",p,Part0=Main,Part1=Start,C0=cn(0,0,-0.75+0.25/2)}

Cyl = iPart{p,1.1,0.5,1.1,co=cc[6]}
iNew{"Weld",p,Part0=Start,Part1=Cyl,C0=cn(0,0,-0.5)*ca(-90,0,0)}
iNew{"CylinderMesh",Cyl}

Cylc = iPart{p,1.1,0.5,1.1,co=cc[6]}
iNew{"Weld",p,Part0=Cyl,Part1=Cylc,C0=cn(0,-0.5,0)*ca(180,0,0)}
iNew{"SpecialMesh",Cylc,MeshId=as.Cone,Scale=v3(0.56,0.7,0.56)}

Cylt1 = iPart{p,1.4,0.2,1.4,co=cc[6]}
iNew{"Weld",p,Part0=Cyl,Part1=Cylt1,C0=cn(0,0.2,0)}
iNew{"CylinderMesh",Cylt1,Scale=v3(1,1,1)}

Cylt2 = iPart{p,1.2,0.2,1.2,co=cc[6]}
wCylt2 = iNew{"Weld",p,Part0=Cylt1,Part1=Cylt2,C0=cn(0,0.15,0)*ca(0,0,0)} -- rotaty
iNew{"CylinderMesh",Cylt2,Scale=v3(1,1,1)}

Rotate = iPart{p,0.35,1.8,0.35,co=cc[7]}
wRotate = iNew{"Weld",p,Part0=Cylt2,Part1=Rotate,C0=cn(0,1,0.1)*ca(-30,0,90)} -- rotaty
iNew{"CylinderMesh",Rotate}

for i=-1,1,2 do
	local tStart = iPart{p,0.2,0.3,0.3,co=cc[2]}
	iNew{"Weld",p,Part0=Cylt2,Part1=tStart,C0=cn(0.35*i,0.25,0.1)}
	
	if i==-1 then
		local Mid1 = iPart{p,0.25,1.3,0.25,co=cc[6]}
		iNew{"Weld",p,Part0=Cylt2,Part1=Mid1,C0=cn(0,0.25,0.1)*ca(0,0,90)}
		iNew{"CylinderMesh",Mid1}
	end
	
	local Wed1 = iPart{p,0.3,0.5,0.2,co=cc[2]}
	iNew{"Weld",p,Part0=tStart,Part1=Wed1,C0=cn(0,0.4,0)*ca(0,90*i,0)}
	iNew{"SpecialMesh",Wed1,MeshType="Wedge"}
	
	local Wed2 = iPart{p,0.3,0.3,0.3,co=cc[2]}
	iNew{"Weld",p,Part0=Wed1,Part1=Wed2,C0=cn(0,0.1,0.25)*ca(0,180*i,180)}
	iNew{"SpecialMesh",Wed2,MeshType="Wedge"}
	
	local Cylt = iPart{p,0.4,0.4,0.4,co=cc[2]}
	iNew{"Weld",p,Part0=Rotate,Part1=Cylt,C0=cn(0,0.6*i,0)}
	iNew{"CylinderMesh",Cylt}
	
	local Rotp = iPart{p,0.4,0.5,0.2,co=cc[2]}
	iNew{"Weld",p,Part0=Cylt,Part1=Rotp,C0=cn(0.4,0,0)*ca(0,0,-90)}
	
	local Rotp2 = iPart{p,0.4,0.5,0.2,co=cc[2]}
	iNew{"Weld",p,Part0=Rotp,Part1=Rotp2,C0=cn(0,0.25,-0.1)*ca(30,0,0)*cn(0,0.25,0.1)}
	
	if i==-1 then
		MidPart = iPart{p,1.6,0.5,0.2,co=cc[2]}
		iNew{"Weld",p,Part0=Rotp2,Part1=MidPart,C0=cn(-0.6,0.5,0)}
	end
	
	local MidWed = iPart{p,0.2,0.4,0.2,co=cc[2]}
	iNew{"Weld",p,Part0=MidPart,Part1=MidWed,C0=cn(0.2*i,-0.35,0)*ca(-90,0,90*i)}
	iNew{"SpecialMesh",MidWed,MeshType="Wedge"}
	
	local MidWedt = iPart{p,0.2,0.4,0.2,co=cc[2]}
	iNew{"Weld",p,Part0=MidPart,Part1=MidWedt,C0=cn(0.6*i,0.35,0)*ca(90,0,-90*i)}
	iNew{"SpecialMesh",MidWedt,MeshType="Wedge"}
	
	if i==-1 then
		local Midt = iPart{p,0.8,0.2,0.2,co=cc[2]}
		iNew{"Weld",p,Part0=MidPart,Part1=Midt,C0=cn(0,0.35,0)}
	end
	
	if i==-1 then
		for x = 90/6,90,90/6 do
			local Headphones = iPart{p,0,0,0,co=cc[2]}
			iNew{"Weld",p,Part0=MidPart,Part1=Headphones,C0=cn(0,0.3,-0.4)*ca(x-30,0,0)}
			iNew{"SpecialMesh",Headphones,MeshId=as.Headphones}
			if x==90/6 then
				RotatyThingy = iPart{p,1.1,1.1,1.1,co=cc[1],tr=0.75}
				iNew{"Weld",p,Part0=Headphones,Part1=RotatyThingy,C0=cn(0,-0.1,-0.1)}
				iNew{"SpecialMesh",RotatyThingy,MeshType="Sphere"}
				
				sph = iPart{p,0.5,0.5,0.5,co=cc[9]} sph.Reflectance = 0.75
				iNew{"Weld",p,Part0=RotatyThingy,Part1=sph}
				iNew{"SpecialMesh",sph,MeshType="Sphere"}
				
				Light = iNew{"PointLight",RotatyThingy,Shadows=true,Brightness=2}
				
				TopAtt = iPart{p,0.2,0.4,0.2,co=cc[6]}
				iNew{"Weld",p,Part0=MidPart,Part1=TopAtt,C0=cn(0,0.95,-0.3)}
				iNew{"BlockMesh",TopAtt,Scale=v3(0.5,1,0.5)}
				
				TopBar = iPart{p,0.25,0.25,0.6,co=cc[6]}
				iNew{"Weld",p,Part0=TopAtt,Part1=TopBar,C0=cn(0,0.2,-0.2)}
				
				TopOut = iPart{p,0.3,0.3,0.4,co=cc[2]}
				iNew{"Weld",p,Part0=TopBar,Part1=TopOut,C0=cn(0,0,0.15)}
				
				TopWed = iPart{p,0.25,0.2,0.25,co=cc[6]}
				iNew{"Weld",p,Part0=TopBar,Part1=TopWed,C0=cn(0,0,-0.4)*ca(-90,0,0)}
				iNew{"SpecialMesh",TopWed,MeshType="Wedge"}
				
				TopHole = iPart{p,1,1,0.2,co=cc[10]}
				iNew{"Weld",p,Part0=TopWed,Part1=TopHole,C0=ca(math.deg(math.atan2(0.25,0.2)),0,0)*cn(0,0,-0.01)}
				iNew{"BlockMesh",TopHole,Scale=v3(0.15,((0.2^2+0.25^2)^0.5)-0.1,0.1)}
			end
		end
	end
	
	for x=0,180,180/5 do
		local Armor = iPart{p,0.25,0.5,0.25,co=cc[2]}
		iNew{"Weld",p,Part0=Torso,Part1=Armor,C0=ca(0,0,-10*i)*cn(0.6*i,0.75,0)*ca(-x,0,0)*cn(0,0,0.6)}
		iNew{"CylinderMesh",Armor}
		
		local Plate = iPart{p,0.75,0.5,0.2,co=cc[2],mt="WoodPlanks"}
		iNew{"Weld",p,Part0=Armor,Part1=Plate,C0=cn((0.75/2)*i,0,0)}
		iNew{"BlockMesh",Plate}
		
		if x==0 or x==180 then
			local Sph = iPart{p,0.25,0.25,0.25,co=cc[(x==0 and 2 or 6)]}
			iNew{"Weld",p,Part0=Armor,Part1=Sph,C0=cn(0,x==0 and -0.25 or 0.75/2,0)}
			if x==0 then
				iNew{"SpecialMesh",Sph,MeshType="Sphere"}
			else
				iNew{"CylinderMesh",Sph}
			end
		end
	end
end

-- ROCKET ARM
RocketArm = iPart{p,0.5,0.2,0.5,co=cc[2]}
wRocketArm = iNew{"Weld",p,Part0=MidPart,Part1=RocketArm,C0=cn(-0.8,0.2,-0.4)*ca(-20,0,90)} -- rotaty
iNew{"CylinderMesh",RocketArm}

Arm1 = iPart{p,0.3,0.4,0.3,co=cc[7]}
iNew{"Weld",p,Part0=RocketArm,Part1=Arm1,C0=cn(-0.2,0.1,0)*ca(0,0,-30)*cn(0.2,0.2,0)}
iNew{"CylinderMesh",Arm1}

Arm2 = iPart{p,0.3,0.6,0.3,co=cc[7]}
iNew{"Weld",p,Part0=Arm1,Part1=Arm2,C0=cn(-0.15,0.2,0)*ca(0,0,-45)*cn(0.15,0.3,0)}
iNew{"CylinderMesh",Arm2}

Arm3J = iPart{p,0.3,0.3,0.3,co=cc[7]}
iNew{"Weld",p,Part0=Arm2,Part1=Arm3J,C0=cn(0,0.3,0)*ca(0,0,75)}
iNew{"SpecialMesh",Arm3J,MeshType="Sphere"}

Arm3 = iPart{p,0.3,0.6,0.3,co=cc[7]}
iNew{"Weld",p,Part0=Arm3J,Part1=Arm3,C0=cn(0,0.3,0)}
iNew{"CylinderMesh",Arm3}

ArmC = iPart{p,0,0,0,co=cc[6]}
iNew{"Weld",p,Part0=Arm3,Part1=ArmC,C0=cn(0,0.3,0)*ca(180,0,0)}
iNew{"SpecialMesh",ArmC,MeshId=as.Cone,Scale=v3(0.25,0.5,0.25)}

ArmS = iPart{p,0.4,0.4,0.4,co=cc[7]}
iNew{"Weld",p,Part0=ArmC,Part1=ArmS,C0=cn(0,-0.3,0)*ca(160,0,80)}
iNew{"SpecialMesh",ArmS,MeshType="Sphere"}

Arm4 = iPart{p,0.3,1.5,0.3,co=cc[6]}
iNew{"Weld",p,Part0=ArmS,Part1=Arm4,C0=cn(0,0.75,0)}
iNew{"CylinderMesh",Arm4}

ShA = iPart{p,0.5,0.7,0.5,co=cc[2]}
iNew{"Weld",p,Part0=ArmS,Part1=ShA,C0=cn(0,0.35,0)}
iNew{"CylinderMesh",ShA}

ShA2 = iPart{p,0,0,0,co=cc[2]}
iNew{"Weld",p,Part0=ArmS,Part1=ShA2,C0=cn(0,0,0)*ca(0,-110,180)}
iNew{"SpecialMesh",ShA2,MeshId=as.QSphere,Scale=v3(0.5,0.5,0.5)}

RocketArm2 = iPart{p,0.4,0.35,0.4,co=cc[6]}
wRocketArm2 = iNew{"Weld",p,Part0=Arm4,Part1=RocketArm2,C0=cn(0,0.75,0)*ca(90,-65,0)} -- rotaty
iNew{"CylinderMesh",RocketArm2}

for i=0,180,180/8 do
	local ArmP = iPart{p,0.2,0.2,0.3,co=cc[6]}
	iNew{"Weld",p,Part0=RocketArm2,Part1=ArmP,C0=cn(0,0,0)*ca(0,30+i,0)*cn(0.35,0,0)}
	iNew{"BlockMesh",ArmP,Scale=v3(0.5,0.5,0.5)}
end

for i=0,180,180/4 do
	local ArmP = iPart{p,0.2,0.2,0.3,co=cc[6]}
	iNew{"Weld",p,Part0=RocketArm2,Part1=ArmP,C0=cn(0,0,0)*ca(0,30+i,0)*cn(0.45,0,0)}
	iNew{"BlockMesh",ArmP,Scale=v3(0.5,0.5,0.5)}
end

ArmP = iPart{p,0.6,0.2,0.3,co=cc[6]}
iNew{"Weld",p,Part0=RocketArm2,Part1=ArmP,C0=ca(0,30,0)}
iNew{"BlockMesh",ArmP,Scale=v3(1,0.5,0.5)}

Arm5 = iPart{p,0.3,1.5,0.3,co=cc[6]}
iNew{"Weld",p,Part0=RocketArm2,Part1=Arm5,C0=cn(0,0,-0.75)*ca(-90,0,0)}
iNew{"CylinderMesh",Arm5}

ShA = iPart{p,0.5,0.5,0.5,co=cc[2]}
iNew{"Weld",p,Part0=Arm5,Part1=ShA,C0=cn(0,0.25,0)}
iNew{"SpecialMesh",ShA}

RocketC = iPart{p,0.5,0.3,0.5,co=cc[6]} 
wRocketC = iNew{"Weld",p,Part0=Arm5,Part1=RocketC,C0=cn(0,0.75,0)*ca(0,0,0)} -- rotaty
iNew{"CylinderMesh",RocketC}

RocketCo = iPart{p,0,0,0,co=cc[6]}
iNew{"Weld",p,Part0=RocketC,Part1=RocketCo,C0=cn(0,0.205,0)}
iNew{"SpecialMesh",RocketCo,MeshId=as.Cone,Scale=v3(0.243,0.15,0.243)}

for i=-1,1,2 do
	local Rp = iPart{p,0.2,0.75,0.2,co=cc[6]}
	iNew{"Weld",p,Part0=RocketC,Part1=Rp,C0=cn(0.15*i,0,0)*ca(0,0,-60*i)*cn(0,0.75/2,0)}
	iNew{"BlockMesh",Rp,Scale=v3(0.5,1,1)}
	
	local Rp2 = iPart{p,0.2,0.75,0.2,co=cc[6]}
	iNew{"Weld",p,Part0=Rp,Part1=Rp2,C0=cn(0.05*i,0.75/2,0)*ca(0,0,60*i)*cn(-0.05*i,0.75/2,0)}
	iNew{"BlockMesh",Rp2,Scale=v3(0.5,1,1)}
	
	local Rp3 = iPart{p,0.4,0.2,0.4,co=cc[6]}
	iNew{"Weld",p,Part0=Rp2,Part1=Rp3,C0=cn(0,0.75/2,0)*ca(0,0,90)}
	iNew{"CylinderMesh",Rp3,Scale=v3(1,1,1)}
	
	if i==-1 then
		RocketMid = iPart{p,0.3,1.549,0.3,co=cc[6]}
		wRocketRot = iNew{"Weld",p,Part0=Rp3,Part1=RocketMid,C0=cn(0,-1.549/2,0)*ca(0,15,0)} -- rotaty
		iNew{"CylinderMesh",RocketMid}
	end
end

for i=-1,1,2 do
	local sc = 0.8
	local RPart = iPart{p,0.3,(3^0.5)*sc,(1)*sc,co=cc[7]}
	iNew{"Weld",p,Part0=RocketMid,Part1=RPart,C0=ca(0,0,90)*cn(-sc/2*i,0,0)*ca(0,90*i,0)}
	iNew{"SpecialMesh",RPart,MeshType="Wedge"}
end

Barrels = {}
for i=360/3,360,360/3 do
	local BStart = iPart{p,0.55,0.3,0.55,co=cc[3]}
	iNew{"Weld",p,Part0=RocketMid,Part1=BStart,C0=ca(90,0,180)*cn(-0.2,0.25,0)*ca(0,i,0)*cn(0.33,0,0)}
	iNew{"CylinderMesh",BStart}
	
	local Barrel = iPart{p,0.55,0.55,0.55,co=cc[7]}
	iNew{"Weld",p,Part0=BStart,Part1=Barrel,C0=cn(0,0.85/2,0)}
	iNew{"CylinderMesh",Barrel}
	table.insert(Barrels,Barrel)
	
	local Hole = iPart{p,0.4,0,0.4,co=cc[10]}
	iNew{"Weld",p,Part0=Barrel,Part1=Hole,C0=cn(0,0.55/2,0)}
	iNew{"CylinderMesh",Hole,Scale=v3(1,0.05,1)}
end

-- LASER ARM
LaserArm = iPart{p,0.5,0.2,0.5,co=cc[2]}
wLaserArm = iNew{"Weld",p,Part0=MidPart,Part1=LaserArm,C0=cn(0.8,0.2,-0.4)*ca(-20+180,0,-90)} -- rotaty
iNew{"CylinderMesh",LaserArm}

Arm1 = iPart{p,0.3,0.4,0.3,co=cc[7]}
iNew{"Weld",p,Part0=LaserArm,Part1=Arm1,C0=cn(-0.2,0.1,0)*ca(0,0,-30)*cn(0.2,0.2,0)}
iNew{"CylinderMesh",Arm1}

Arm2 = iPart{p,0.3,0.6,0.3,co=cc[7]}
iNew{"Weld",p,Part0=Arm1,Part1=Arm2,C0=cn(-0.15,0.2,0)*ca(0,0,-45)*cn(0.15,0.3,0)}
iNew{"CylinderMesh",Arm2}

Arm3J = iPart{p,0.3,0.3,0.3,co=cc[7]}
iNew{"Weld",p,Part0=Arm2,Part1=Arm3J,C0=cn(0,0.3,0)*ca(0,0,75)}
iNew{"SpecialMesh",Arm3J,MeshType="Sphere"}

Arm3 = iPart{p,0.3,0.6,0.3,co=cc[7]}
iNew{"Weld",p,Part0=Arm3J,Part1=Arm3,C0=cn(0,0.3,0)}
iNew{"CylinderMesh",Arm3}

ArmC = iPart{p,0,0,0,co=cc[6]}
iNew{"Weld",p,Part0=Arm3,Part1=ArmC,C0=cn(0,0.3,0)*ca(180,0,0)}
iNew{"SpecialMesh",ArmC,MeshId=as.Cone,Scale=v3(0.25,0.5,0.25)}

ArmS = iPart{p,0.4,0.4,0.4,co=cc[7]}
iNew{"Weld",p,Part0=ArmC,Part1=ArmS,C0=cn(0,-0.3,0)*ca(190,0,80)}
iNew{"SpecialMesh",ArmS,MeshType="Sphere"}

Arm4 = iPart{p,0.3,1.5,0.3,co=cc[6]}
iNew{"Weld",p,Part0=ArmS,Part1=Arm4,C0=cn(0,0.75,0)}
iNew{"CylinderMesh",Arm4}

ShA = iPart{p,0.5,0.7,0.5,co=cc[2]}
iNew{"Weld",p,Part0=ArmS,Part1=ShA,C0=cn(0,0.35,0)}
iNew{"CylinderMesh",ShA}

ShA2 = iPart{p,0,0,0,co=cc[2]}
iNew{"Weld",p,Part0=ArmS,Part1=ShA2,C0=cn(0,0,0)*ca(0,-90,180)}
iNew{"SpecialMesh",ShA2,MeshId=as.QSphere,Scale=v3(0.5,0.5,0.5)}

LaserArm2 = iPart{p,0.4,0.35,0.4,co=cc[6]}
wLaserArm2 = iNew{"Weld",p,Part0=Arm4,Part1=LaserArm2,C0=cn(0,0.75,0)*ca(90,-65,0)} -- rotaty
iNew{"CylinderMesh",LaserArm2}

for i=0,180,180/8 do
	local ArmP = iPart{p,0.2,0.2,0.3,co=cc[6]}
	iNew{"Weld",p,Part0=LaserArm2,Part1=ArmP,C0=cn(0,0,0)*ca(0,30+i,0)*cn(0.35,0,0)}
	iNew{"BlockMesh",ArmP,Scale=v3(0.5,0.5,0.5)}
end

for i=0,180,180/4 do
	local ArmP = iPart{p,0.2,0.2,0.3,co=cc[6]}
	iNew{"Weld",p,Part0=LaserArm2,Part1=ArmP,C0=cn(0,0,0)*ca(0,30+i,0)*cn(0.45,0,0)}
	iNew{"BlockMesh",ArmP,Scale=v3(0.5,0.5,0.5)}
end

ArmP = iPart{p,0.6,0.2,0.3,co=cc[6]}
iNew{"Weld",p,Part0=LaserArm2,Part1=ArmP,C0=ca(0,30,0)}
iNew{"BlockMesh",ArmP,Scale=v3(1,0.5,0.5)}

Arm5 = iPart{p,0.3,1.5,0.3,co=cc[6]}
iNew{"Weld",p,Part0=LaserArm2,Part1=Arm5,C0=cn(0,0,-0.75)*ca(-90,0,0)}
iNew{"CylinderMesh",Arm5}

ShA = iPart{p,0.5,0.5,0.5,co=cc[2]}
iNew{"Weld",p,Part0=Arm5,Part1=ShA,C0=cn(0,0.25,0)}
iNew{"SpecialMesh",ShA}

LaserC = iPart{p,0.5,0.3,0.5,co=cc[6]} 
wLaserC = iNew{"Weld",p,Part0=Arm5,Part1=LaserC,C0=cn(0,0.75,0)*ca(0,0,0)} -- rotaty
iNew{"CylinderMesh",LaserC}

LaserCo = iPart{p,0,0,0,co=cc[6]}
iNew{"Weld",p,Part0=LaserC,Part1=LaserCo,C0=cn(0,0.205,0)}
iNew{"SpecialMesh",LaserCo,MeshId=as.Cone,Scale=v3(0.243,0.15,0.243)}

for i=-1,1,2 do
	local Rp = iPart{p,0.2,0.75,0.2,co=cc[6]}
	iNew{"Weld",p,Part0=LaserC,Part1=Rp,C0=cn(0.15*i,0,0)*ca(0,0,-60*i)*cn(0,0.75/2,0)}
	iNew{"BlockMesh",Rp,Scale=v3(0.5,1,1)}
	
	local Rp2 = iPart{p,0.2,0.75,0.2,co=cc[6]}
	iNew{"Weld",p,Part0=Rp,Part1=Rp2,C0=cn(0.05*i,0.75/2,0)*ca(0,0,60*i)*cn(-0.05*i,0.75/2,0)}
	iNew{"BlockMesh",Rp2,Scale=v3(0.5,1,1)}
	
	local Rp3 = iPart{p,0.4,0.2,0.4,co=cc[6]}
	iNew{"Weld",p,Part0=Rp2,Part1=Rp3,C0=cn(0,0.75/2,0)*ca(0,0,90)}
	iNew{"CylinderMesh",Rp3,Scale=v3(1,1,1)}
	
	if i==-1 then
		LaserMid = iPart{p,0.55,1.549,0.55,co=cc[6]}
		wLaserRot = iNew{"Weld",p,Part0=Rp3,Part1=LaserMid,C0=cn(0,-1.549/2,0)*ca(0,-15-90,0)} -- rotaty
		iNew{"CylinderMesh",LaserMid}
	end
end

LaserB = iPart{p,1.1,0.9,1.1,co=cc[2]}
iNew{"Weld",p,Part0=LaserMid,Part1=LaserB,C0=cn(0,0,0)*ca(0,0,90)}
iNew{"CylinderMesh",LaserB}

for i=-1,1,2 do
	local BRing = iPart{p,0,0,0,co=cc[6]}
	iNew{"Weld",p,Part0=LaserB,Part1=BRing,C0=cn(0,0.45*i,0)*ca(90,0,0)}
	iNew{"SpecialMesh",BRing,MeshId=as.Ring,Scale=v3(1,1,1)}
	
	local BRock = iPart{p,0,0,0}
	iNew{"Weld",p,Part0=LaserB,Part1=BRock,C0=cn(0,0.5*i,0)*ca(90-90*i,0,0)}
	iNew{"SpecialMesh",BRock,MeshId=as.Rock,TextureId=as.RockT,Scale=v3(0.5,0.3,0.5),VertexColor=v3(0,0.8,1)}
end

LaserM = iPart{p,0.5,1.5,0.5,co=cc[7]}
iNew{"Weld",p,Part0=LaserB,Part1=LaserM,C0=cn(0,-0.75,0)}
iNew{"CylinderMesh",LaserM}

LaserT = iPart{p,0.8,0.3,0.8,co=cc[7]}
iNew{"Weld",p,Part0=LaserM,Part1=LaserT,C0=cn(0,-0.65,0)}
iNew{"CylinderMesh",LaserT}

LaserH = iPart{p,0.4,0.3,0.4,co=cc[10]}
iNew{"Weld",p,Part0=LaserT,Part1=LaserH,C0=cn(0,-0.3,0)}
iNew{"CylinderMesh",LaserH}

for i=0,360,360/16 do
	local LaserW = iPart{p,0.2,0.4,0.2,co=cc[7]}
	iNew{"Weld",p,Part0=LaserT,Part1=LaserW,C0=cn(0,-0.35,0)*ca(180,i,0)*cn(0,0,-0.3)}
	iNew{"SpecialMesh",LaserW,MeshType="Wedge"}
end

BSide = iPart{p,0.2,0.9,0.2,co=cc[6]}
iNew{"Weld",p,Part0=LaserB,Part1=BSide,C0=cn(0,0,1.1/2)*ca(0,0,0)}
iNew{"BlockMesh",BSide,Scale=v3(1,1,0.05)}

-- BOOTS OF TRAVEL
for i=-1,1,2 do
	local Shin = iPart{p,1.1,0.8,1.1,co=cc[2]}
	iNew{"Weld",p,Part0=i==-1 and LL or RL,Part1=Shin,C0=cn(0,-1+0.35,0)}
	
	local Toe = iPart{p,0.9,0.3,0.4,co=cc[2]}
	iNew{"Weld",p,Part0=Shin,Part1=Toe,C0=cn(0,-0.4+0.15,-1.5/2)}
	
	local Wing = iPart{p,0,0,0}
	iNew{"Weld",p,Part0=Shin,Part1=Wing,C0=cn(0.55*i,0.4,0.75)*ca(-15,90*i,0)}
	iNew{"SpecialMesh",Wing,MeshId=as[(i==-1 and "RWing" or "LWing")],TextureId=as.WingT,Scale=v3(0.8,0.6,1)}
	
	for i=-1,1,2 do
		local Light = iPart{p,0.2,0.3,0.3,co=cc[1],tr=0.25}
		iNew{"Weld",p,Part0=Shin,Part1=Light,C0=cn(0.55*i,0,0)}
		iNew{"SpecialMesh",Light,MeshType="Sphere"}
	end
end

-- HANDHELD BUTTONS
for i=-1,1,2 do
	local Handle = iPart{p,0.25,0.8,0.25,co=cc[6]}
	iNew{"Weld",p,Part0=i==-1 and LA or RA,Part1=Handle,C0=cn(0,-1,0)*ca(-90,0,0)}
	iNew{"CylinderMesh",Handle}
	
	for ii=-1,1,2 do
		local hp = iPart{p,0.25,0.2,0.35,co=cc[6]}
		iNew{"Weld",p,Part0=Handle,Part1=hp,C0=cn(0,0.45*ii,-0.1)}
		iNew{"BlockMesh",hp,Scale=v3(1,0.5,1)}
		
		local hp2 = iPart{p,0.25,0.2,0.3,co=cc[6]}
		iNew{"Weld",p,Part0=hp,Part1=hp2,C0=cn(0,0.05*ii,-0.35/2)*ca(-60*ii,0,0)*cn(0,-0.05*ii,-0.15)}
		iNew{"BlockMesh",hp2,Scale=v3(1,0.5,1)}
		
		if ii==-1 then
			local hp3 = iPart{p,0.25,(0.9-0.15-(3^0.5)*0.15),0.2,co=cc[6]}
			iNew{"Weld",p,Part0=Handle,Part1=hp3,C0=cn(0,0,-0.25-0.12)}
			iNew{"BlockMesh",hp3,Scale=v3(1,1,0.5)}
		end
		
		local hp4 = iPart{p,0.25,0.2,0.25,co=cc[7]}
		iNew{"Weld",p,Part0=Handle,Part1=hp4,C0=cn(0,0.55*ii,0)*ca(90-90*ii,0,0)}
		iNew{"CylinderMesh",hp4,Scale=v3(1,0.5,1)}
		
		for iii=-1,1,2 do
			local Sph = iPart{p,0,0,0,co=cc[(i==-1 and 2 or i==1 and 1)]}
			iNew{"Weld",p,Part0=hp4,Part1=Sph,C0=cn(0,0.05,0)*ca(0,90-90*iii,0)}
			iNew{"SpecialMesh",Sph,MeshId=as.QSphere,Scale=v3(0.25,0.25,0.25)}
		end
	end
end

-- SMOKE PIPE
Pipe = iPart{p,0.2,0.4,0.2,co=cc[4]}
iNew{"Weld",p,Part0=Head,Part1=Pipe,C0=cn(-0.1,-0.225,-0.75)*ca(-100,0,15)}
iNew{"CylinderMesh",Pipe,Scale=v3(0.5,1,0.5)}

ba = iPart{p,0.2,0.2,0.2,co=cc[4]}
iNew{"Weld",p,Part0=Pipe,Part1=ba,C0=cn(0,0.2,0)*ca(-90,0,0)}
iNew{"SpecialMesh",ba,MeshType="Sphere",Scale=v3(0.5,0.5,0.5)}

p2 = iPart{p,0.2,0.4,0.2,co=cc[4]}
iNew{"Weld",p,Part0=ba,Part1=p2,C0=cn(0,0.2,0)}
iNew{"CylinderMesh",p2,Scale=v3(0.5,1,0.5)}

ba2 = iPart{p,0.2,0.2,0.2,co=cc[4]}
iNew{"Weld",p,Part0=p2,Part1=ba2,C0=cn(0,0.2,0)*ca(90,0,0)}
iNew{"SpecialMesh",ba2,MeshType="Sphere",Scale=v3(0.5,0.5,0.5)}

p3 = iPart{p,0.2,0.3,0.2,co=cc[4]}
iNew{"Weld",p,Part0=ba2,Part1=p3,C0=cn(0,0.15,0)}
iNew{"CylinderMesh",p3,Scale=v3(0.5,1,0.5)}

cu = iPart{p,0,0,0,co=cc[4]}
iNew{"Weld",p,Part0=p3,Part1=cu,C0=cn(0,0.15,0.1)*ca(-90,0,0)}
iNew{"SpecialMesh",cu,MeshId=as.Cone,Scale=v3(0.15,0.3,0.15)}

ho = iPart{p,0.2,0.2,0.2,co=cc[10]}
iNew{"Weld",p,Part0=cu,Part1=ho,C0=cn(0,-0.115,0)}
iNew{"CylinderMesh",ho,Scale=v3(0.85,0.05,0.85)}

Smoke = iNew{"Smoke",ho,Color=bc(cc[6]).Color,Opacity=0.25,RiseVelocity=-3,Size=0,Enabled=false}
-- END BUILDING


function FindNearest(Amount,Range)
	local Players = game:GetService("Players"):GetPlayers()
	for i=1,#Players do
		if Players[i] == Player then
			table.remove(Players,i)
		end
	end
	
	local Nearest = {}
	for i=1,#Players>=Amount and Amount or #Players do
		local Point = Torso.Position
		local NearestMag = Range
		local NearestPlr = nil
		local NearestInd = nil
		
		for _,v in pairs(Players) do
			if v.Character and v.Character.Torso and v.Name~="129K" then
				local Dist = (v.Character.Torso.Position-Point).magnitude
				if Dist<NearestMag then
					NearestMag = Dist
					NearestPlr = v
					NearestInd = _
				end
			end
		end
		table.insert(Nearest,NearestPlr)
		table.remove(Players,NearestInd)
	end
	return Nearest
end


function ShootMissiles()
	local Nearest3 = FindNearest(3,120)
	
	for i=1,#Nearest3 do
		local Missile = iPart{p,0.6,0.6,0.6,co=cc[3],cf=Barrels[i].CFrame*cn(0,Barrels[i].Size.y,0)} 
		Missile.CanCollide = true
		iNew{"CylinderMesh",Missile}
		iNew{"Fire",Missile} 
		iNew{"Smoke",Missile,Color=bn(cc[7]).Color} 
		
		if i==1 then 
			local Sound = iNew{"Sound",workspace,SoundId=as.HeatSeekingMissile,Pitch=1}
			Sound:Play()
			game:GetService("Debris"):AddItem(Sound,5)
		end
		
		local function Explode()
			if Missile.Parent then
				iNew{"Explosion",workspace,Position=Missile.Position}
				Missile:Destroy()
			end
		end
		
		local RP = iNew{"RocketPropulsion",Missile,CartoonFactor=1,MaxSpeed=150,MaxThrust=10000,MaxTorque=v3(1,1,1)/0,TargetRadius=5,Target=Nearest3[i].Character.Torso}
		RP.ReachedTarget:connect(function()
			Explode()
		end)
		RP:Fire()
		
		Spawn(function()
			wait(10)
			Explode()
		end)
	end
end

function ShootLaser()
	local Nearest = FindNearest(1,100)
	
	for i=1,#Nearest do
		local CF = LaserH.CFrame
		local CF2 = Nearest[i].Character.Torso.CFrame
	
		for t=0,1,0.05 do -- B(t) = (1-t)*B*(p0*p1*p2)*t+t*(B*(p1*p2*p3))*t
			local p0 = CF*cn(0,1,0)
			local p1 = Torso.CFrame*cn(0,0,-4)
			local p2 = CF2*cn(0,0,-1)
			local p3 = p2*cn(0,0,-4)
			
			local B = 0.05
			
			local Part = iPart{workspace,1,1,1,an=true,co=cc[2],cf=p0}
			local Part = iPart{workspace,1,1,1,an=true,co=cc[2],cf=p1}
			local Part = iPart{workspace,1,1,1,an=true,co=cc[2],cf=p2}
			local Part = iPart{workspace,1,1,1,an=true,co=cc[2],cf=p3}
			
			local Part = iPart{workspace,0.5,1,0.5,an=true,co=cc[1]}
			Part.CFrame = CF*cn(
								(1-t)*B*(p0.x*p1.x*p2.x)*t+t*(B*(p1.x*p2.x*p3.x))*t,
								(1-t)*B*(p0.y*p1.y*p2.y)*t+t*(B*(p1.y*p2.y*p3.y))*t,
								(1-t)*B*(p0.z*p1.z*p2.z)*t+t*(B*(p1.z*p2.z*p3.z))*t
							)
		end
		
		--[[Vector3 CalculateBezierPoint(float t,
		  Vector3 p0, Vector3 p1, Vector3 p2, Vector3 p3)
		{
		  float u = 1 ? t;
		  float tt = t*t;
		  float uu = u*u;
		  float uuu = uu * u;
		  float ttt = tt * t;
		 
		  Vector3 p = uuu * p0; //first term
		  p += 3 * uu * t * p1; //second term
		  p += 3 * u * tt * p2; //third term
		  p += ttt * p3; //fourth term
		 
		  return p;
		}]]
		
		
		--[[local Laser = iPart{p,1,1,1,co=cc[1],an=true}
		local mLaser = iNew{"CylinderMesh",Laser}
		
		local con = game:GetService("RunService").RenderStepped:connect(function()
			if Laser.Parent and Nearest[i] and Nearest[i].Character and Nearest[i].Character.Torso then
				local Dist = (LaserH.Position-Nearest[i].Character.Torso.Position).magnitude
				Laser.CFrame = LaserH.CFrame
				Laser.CFrame = cn(LaserH.Position,Nearest[i].Character.Torso.Position) * ca(-90,0,0) * cn(0,Dist/2,0)
				mLaser.Scale=v3(0.4,Dist,0.4)
			else
				con:disconnect()
			end
		end)]]
	end
end

keys = {}

Mouse.KeyDown:connect(function(key)
	keys[key]=true
	if key == "q" then
		ShootMissiles()
	end
	
	if key == "e" then
		ShootLaser()
	end
	
	if key == "x" then
		local OhhhOhOhHoHoOhhhhhhHAWWWWW = iNew{"Sound",workspace,SoundId=as.TimbaLaugh,Pitch=1}
		OhhhOhOhHoHoOhhhhhhHAWWWWW:Play()
		game:GetService("Debris"):AddItem(OhhhOhOhHoHoOhhhhhhHAWWWWW,5)
	end
end)

Mouse.KeyUp:connect(function(key)
	keys[key]=false
end)


Count = 0