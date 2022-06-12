Players = game:service'Players'
Debris = game:service'Debris'

CF = CFrame.new
CFa = CFrame.Angles
CFA = function(x,y,z) return CFa(MR(x),MR(y),MR(z)) end
V3 = Vector3.new
MR = math.rad
MD = math.deg
MRND = math.random
CFN=CF(0,0,0)
V3N=V3(0,0,0)
V3M=V3(1/0,1/0,1/0)


newI = function(tab)
    local p = Instance.new(tab[1],tab[2])
    for i,v in pairs(tab) do 
        if i=="Debris" then 
            Debris:AddItem(p,v)
        elseif (i~=1 and i~=2) then 
            p[i] = v
        end
    end
    return p
end

------------Assets
assets = {}
--Meshes
assets.Ring = "3270017"
assets.Bullet1 = "10207677"
assets.MuzzleFlash = "25212400"
--MeshTexture

--Decals

--Gui Decals

--Sounds
assets.Minigun1 = "2766581"
assets.Fire1 = "2760979"
--
assetprefix = "http://www.roblox.com/asset/?id="
for i,v in pairs(assets) do 
if v:sub(1,3)~="htt" and v:sub(1,3)~="rbx" then
assets[i]=assetprefix..v
end
end
----------------------------
PlaySound=function(soundId,Parent,Pit,Vol)
local v=newI{"Sound",Parent,SoundId=soundId,Volume=Vol,Pitch=Pit,Looped=false,Debris=5}
v:Play()
end

newPart = function(sizea,sizeb,sizec,parent,cframe,aa,bb,cc,dd,ee,ff)
    local Materials = {}
    for i,v in pairs{
        "Plastic","SmoothPlastic","Wood", "WoodPlanks", 
        "Marble", "Slate","Concrete", "Granite",
        "Brick","Pebble", "Cobblestone","CorrodedMetal",
        "DiamondPlate", "Foil", "Metal","Grass",
        "Sand","Fabric","Ice","Neon"} do 
        Materials[v]=v
    end
    local mat,col
    local part = Instance.new("Part",parent or Model)
    for i,v in pairs{aa,bb,cc,dd,ee,ff} do 
        if Materials[v] then mat=v end
        if BrickColor.new(v).Name==v then col=v end
        if v=="CylinderMesh" or v=="BlockMesh" then local m = Instance.new(v,part) m.Name="Mesh" end
        if v=="Torso" then newI{"SpecialMesh",part,MeshType="Torso"} end
        if v=="Sphere" then newI{"SpecialMesh",part,MeshType="Sphere"} end
        if v=="Wedge" then part:Destroy() part=Instance.new("WedgePart",parent or Model) end
        if v=="Corner" then part:Destroy() part=Instance.new("CornerWedgePart",parent or Model) end
        if v=="Ring" then newI{"SpecialMesh",part,MeshType="FileMesh",MeshId=assets.Ring} end
        if v=="nonCollide" then part.CanCollide=false end
        if v=="Transparent" then part.Transparency=1 end
        if v=="Anchored" then part.Anchored=true end 
        if v=="S0.5" then sizea=sizea/2 sizeb=sizeb/2 sizec=sizec/2 part.Mesh.Scale=part.Mesh.Scale*2 end
    end
    if part.className~="CornerWedgePart" then part.formFactor="Custom" end
    for i,v in pairs{"Top","Bottom","Left","Right","Front","Back"} do 
    part[v.."Surface"]="SmoothNoOutlines"
    end
    part.Size=V3(sizea,sizeb,sizec) or V3(1,1,1)
    part.CFrame=cframe or CF(0,-50,0)
    part.BrickColor=BrickColor.new(col or '')
    part.Material = mat or 'SmoothPlastic'
    part:BreakJoints()
    part.Elasticity = 0
    part.Name="z"
    part.CustomPhysicalProperties = PhysicalProperties.new(2,2,0,2,0)
    return part,cframe
end

newMesh=function(parent,dtype,sx,sy,sz)
local filemesh
local mesh
if dtype=="Block" or dtype=="Cylinder" then 
mesh=INEW(types.."Mesh",parent)
elseif dtype:sub(1,4)=="http" or dtype:sub(1,3)=="rbx" then
mesh=INEW("SpecialMesh",parent)
mesh.MeshType="FileMesh"
mesh.MeshId=dtype
filemesh=true
else
mesh=INEW("SpecialMesh",parent)
mesh.MeshType=dtype
end
if parent.Size.x<=0.2 then parent.CanCollide=false end
local yes=parent.Size.x<0.2001 and 5 or 1
if filemesh then yes=1 end
mesh.Scale=V3(sx or 1,sy or 1,sz or 1)*yes
return mesh
end

newWeld = function(parent,P0,P1,C0,C1)
local weld=Instance.new("Weld",parent or P0)
weld.Part0=P0
weld.Part1=P1
weld.C0=C0 or weld.C0
weld.C1=C1 or weld.C1
return weld
end
newWeld6D = function(parent,P0,P1,C0,C1)
local weld=Instance.new("Motor6D",parent or P0)
weld.Part0=P0
weld.Part1=P1
weld.C0=C0 or weld.C0
weld.C1=C1 or weld.C1
return weld
end

ray = function(Origin,Direction,tab,length) -- ray cast
return workspace:FindPartOnRay(Ray.new(Origin,Direction.unit *(length or 999)),tab) 
end 
addProjectile = function(Origin,Destination,Speed,onHit,extra,noHit)
    local current = CF(Origin,Destination.p)
    local co = 0
    doIn(4,function(i,wkey,step)
        co=co+1
        if co%2==0 then 
            local Speed2 = Speed*step
            local Hit,Pos = ray(current.p,Destination.p-Origin,mech,Speed2)
            if Hit then
                current=current*CF(0,0,-(current.p-Pos).magnitude)
                doInT[wkey] = nil 
                onHit(Hit)
            else
                current=current*CF(0,0,-Speed2)
            end
            extra(current,i*4)
        end
    end,function() 
        if noHit and noHit~=0 then 
            noHit()
        end
    end)
end

checkCF = function(weld)
    local x,y,z = weld.C0:toEulerAnglesXYZ()
    print(weld.Name ..".C0  ",weld.C0.x,weld.C0.y,weld.C0.z,"    ",MD(x),MD(y),MD(z))
    local x,y,z = weld.C1:toEulerAnglesXYZ()
    print(weld.Name ..".C1  ",weld.C1.x,weld.C1.y,weld.C1.z,"    ",MD(x),MD(y),MD(z))
end

GetX = function(Part,Point)
local x,y,z=Part.CFrame:toObjectSpace(CFrame.new(Part.Position,Point)):toEulerAnglesXYZ()
return math.deg(x)
end 
GetY = function(Part,Point)
local x,y,z=Part.CFrame:toObjectSpace(CFrame.new(Part.Position,Point)):toEulerAnglesXYZ()
return math.deg(y)
end

getTriangleValues = function(Points) 
        local G, V = 0
        for S = 1, 3 do
                local L = (Points[1+(S+1)%3]-Points[1+S%3]).magnitude
                G, V = L > G and L or G, L > G and {Points[1+(S-1)%3], Points[1+(S)%3], Points[1+(S+1)%3]} or V
        end
        local D = V[2]+(V[3]-V[2]).unit*((V[3]-V[2]).unit:Dot(V[1]-V[2]))
        local C, B = (D-V[1]).unit, (V[2]-V[3]).unit
        local A = B:Cross(C)
        S1 = V3(0.2, (V[2]-D).magnitude, (V[1]-D).magnitude)/1  --0.2
        S2 = V3(0.2, (V[3]-D).magnitude, (V[1]-D).magnitude)/1  --0.2
        C1 = CF(0,0,0,A.X,B.X,C.X,A.Y,B.Y,C.Y,A.Z,B.Z,C.Z)+(V[1]+V[2])/2
        C2 = CF(0,0,0,-A.X,-B.X,C.X,-A.Y,-B.Y,C.Y,-A.Z,-B.Z,C.Z)+(V[1]+V[3])/2
        return C1, C2, S1, S2
end

fillTriangle = function(...)
    local C1,C2,S1,S2 = getTriangleValues(...)
    local tri1 = newPart(S1.x,S1.y,S1.z,mech,C1,"Wedge")
    local tri2 = newPart(S2.x,S2.y,S2.z,mech,C2,"Wedge")
    --for i=1,3 do 
    --newPart(0.4,0.4,0.4,mech,CF((...)[i]),"nonCollide","Really black","Anchored") 
    --end
    return tri1,tri2
end



n = ""

ThighAngle = -40
LegAngle = 135
FootAngle = -40
ToeAngle = -LegAngle-ThighAngle-FootAngle

ThighAngle = -25
LegAngle = 75
FootAngle = 10
ToeAngle = -LegAngle-ThighAngle-FootAngle

--SCROP     SCROP     SCROP     SCROP     SCROP     SCROP     SCROP     SCROP     SCROP     SCROP     SCROP     
pcall(function() workspace["RM Mech 2"]:Remove() end)
mech = newI{"Model",workspace,Name="RM Mech 2"}

Base = newPart(10,10,8,mech,CF(0,50,0),"nonCollide")
Base.Transparency=1
Torso = newPart(4,4,4,mech,Base.CFrame,"nonCollide","Transparent")
BaseW = newWeld6D(Base,Base,Torso,CF(0,0,0)*CFA(0,0,0))
Torso1 = newPart(4,4,4,mech,Base.CFrame,"nonCollide","Transparent") --for X Turn
Torso1W = newWeld6D(Torso,Torso,Torso1,CF(0,0,0)*CFA(0,0,0))
Torso2 = newPart(4,4,4,mech,Base.CFrame,"nonCollide","Transparent") --for Y Turning Torso
Torso2W = newWeld6D(Torso1,Torso1,Torso2,CF(0,0,0)*CFA(0,0,0))


--[[
Stand = newPart(2,2,2,mech,Base.CFrame,"Transparent") --Stand (motor6d never used)
Stand.Name = "Left Leg"
StandW = newWeld6D(Base,Base,Stand,CF(-4.5,-7-0.172-6,0))
Stand = newPart(2,2,2,mech,Base.CFrame,"Transparent") 
Stand.Name = "Right Leg"
StandW = newWeld6D(Base,Base,Stand,CF( 4.5,-7-0.172-6,0)) --]]

------------------
fillTriangle1Mech = function(...)
    local t1,t2 = fillTriangle(...)
    newWeld(Torso,Torso2,t1,Torso2.CFrame:toObjectSpace(t1.CFrame))
    newWeld(Torso,Torso2,t2,Torso2.CFrame:toObjectSpace(t2.CFrame))
    return t1,t2
end

------------------
LThigh = newPart(3,3,3,mech,Torso.CFrame,"nonCollide","Transparent")
LThighW = newWeld6D(Torso,Torso,LThigh,CF(-4.5+1.5,0,0),CF( 1.5,0.5,0)*CFA(ThighAngle,0,0))
RThigh = newPart(3,3,3,mech,Torso.CFrame,"nonCollide","Transparent")
RThighW = newWeld6D(Torso,Torso,RThigh,CF( 4.5-1.5,0,0),CF(-1.5,0.5,0)*CFA(ThighAngle,0,0))
for i,v in pairs{[-1]=LThigh,[1]=RThigh} do 
    newWeld(Torso,v,newPart(2.2,0.4,2.2,mech,nil,"CylinderMesh","nonCollide","Dark stone grey"),CF(1.41*i,0.5,0)*CFA(0,0,90))
    newWeld(Torso,v,newPart(1.8,0.41,1.8,mech,nil,"CylinderMesh","nonCollide","Black"),CF(1.41*i,0.5,0)*CFA(0,0,90))
    newWeld(Torso,v,newPart(1.75,0.2,1.75,mech,nil,"CylinderMesh","nonCollide","Really black"),CF(1.41*-i,0.5,0)*CFA(0,0,90))
    
    newWeld(Torso,v,newPart(1.4,3.2,1.4,mech,nil,"CylinderMesh","nonCollide","Dark stone grey"),CF(0,-5,0)*CFA(0,0,90))
    newWeld(Torso,v,newPart(1.1,3.3,1.1,mech,nil,"CylinderMesh","nonCollide","Black"),CF(0,-5,0)*CFA(0,0,90))
    newWeld(Torso,v,newPart(1.6,0.2,1.2,mech,nil),CF(0,-3.9,-0.1))
    
    local newp = newPart(1.6,math.sqrt(1+5.5*5.5)+0.05,0.2,mech,nil)
    local newpw =  newWeld(Torso,v,newp,CF(0,-1.25,1.4-0.52)*CFA(math.deg(math.tan(1/5.5)),0,0))
    if i==-1 then
        LThighPad = newp
        LThighPadW = newpw
    else
        RThighPad = newp
        RThighPadW = newpw
    end
    local newp = newPart(1.6,math.sqrt(0.2^2+5.5^2)+0.05,0.2,mech,nil)
    local newpw =  newWeld(Torso,v,newp,CF(0,-1.25,-1.4+0.3)*CFA(-math.deg(math.tan(0.6/5.5)),0,0)*CF(0,2.7725,0),CF(0,2.7725,0)*CFA(0,0,0))
    if i==-1 then
        LThighPad2 = newp
        LThighPad2W = newpw
    else
        RThighPad2 = newp
        RThighPad2W = newpw
    end
    
    newWeld(Torso,v,newPart(3,1.2,0.8,mech,nil,"Wedge"),CF(0,2.1,-1.5+0.4)*CFA(0,0,0))
    newWeld(Torso,v,newPart(3,1.2,0.6,mech,nil),CF(0,2.1,-1.5+1.1))
    newWeld(Torso,v,newPart(3,1.2,1.6,mech,nil,"Wedge"),CF(0,2.1, 1.5-0.8)*CFA(0,180,0))
    for i=-1,1,2 do 
        newWeld(Torso,v,newPart(0.7,7.5,1.6,mech,nil),CF(-1.15*i,-2.25,0))
        newWeld(Torso,v,newPart(0.7,0.8,0.5,mech,nil,"Wedge"),CF(1.15*i,-6.25,-0.4)*CFA(-90,0,0))
        newWeld(Torso,v,newPart(0.7,0.8,0.5,mech,nil,"Wedge"),CF(1.15*i,-6.25, 0.4)*CFA(-90,0,180))
        newWeld(Torso,v,newPart(0.7,0.7,7.5,mech,nil,"Wedge"),CF(1.15*i,-2.25,-0.8-0.35)*CFA(-90,0,0))
        newWeld(Torso,v,newPart(0.7,0.7,7.5,mech,nil,"Wedge"),CF(1.15*i,-2.25, 0.8+0.35)*CFA(-90,0,180))
    end
end
LLeg = newPart(2,2,2,mech,Torso.CFrame,"Transparent","nonCollide")
LLegW = newWeld6D(LThigh,LThigh,LLeg,CF(0,-5,0),CF(0,0,0)*CFA(LegAngle,0,0))
RLeg = newPart(2,2,2,mech,Torso.CFrame,"Transparent","nonCollide")
RLegW = newWeld6D(RThigh,RThigh,RLeg,CF(0,-5,0),CF(0,0,0)*CFA(LegAngle,0,0))
for i,v in pairs{LLeg,RLeg} do 
    newWeld(Torso,v,newPart(2,1.6,2,mech,nil,"CylinderMesh"),CF(0,0,0)*CFA(0,0,90))
    newWeld(Torso,v,newPart(1,1,1,mech,nil,"CylinderMesh"),CF(0,-6,0)*CFA(0,0,90))
    newWeld(Torso,v,newPart(1.599,2,1,mech,nil),CFA(4,0,0)*CF(0,-1,-0.49))
    newWeld(Torso,v,newPart(1.599,2,1,mech,nil,"Wedge"),CFA(4,0,0)*CF(0,-1,0.5)*CFA(180,0,0))
    newWeld(Torso,v,newPart(1.6,3.2,1,mech,nil,"Torso"),CFA(4,0,0)*CF(0,-2-0.8,-0.355)*CFA(165+5,0,0)*CF(0,0.7,0))
    newWeld(Torso,v,newPart(1,1.15,1,mech,nil),CF(0,-6,0)*CFA(-17,0,0)*CF(0,0.575,0))
    for i=-1,1,2 do 
        local baa = newPart(0.5,0.4,0.5,mech,nil,"CylinderMesh","Dark stone grey")
        newWeld(Torso,v,baa,CF(-0.25*i,-5.5,0.5)*CFA(-5,0,2.2*i))
        newWeld(Torso,baa,newPart(0.4,5,0.4,mech,nil,"CylinderMesh","Black"),CF(0,2.5,0))
        newWeld(Torso,baa,newPart(0.5,0.5,0.5,mech,nil,"Sphere","Dark stone grey"),CF(0,-0.15,0))
        newWeld(Torso,baa,newPart(0.7,1.8,0.7,mech,nil,"CylinderMesh","Dark stone grey"),CF(0,4.1-0.4,0))
    end
end
LFoot = newPart(2,2,2,mech,nil,"Transparent","nonCollide")
LFootW = newWeld6D(LLeg,LLeg,LFoot,CF(0,-6,0),CF(0,0,0)*CFA(FootAngle,0,0))
RFoot = newPart(2,2,2,mech,nil,"Transparent","nonCollide")
RFootW = newWeld6D(RLeg,RLeg,RFoot,CF(0,-6,0),CF(0,0,0)*CFA(FootAngle,0,0))
for i,v in pairs{LFoot,RFoot} do 
    newWeld(Torso,v,newPart(0.8,2.8,0.8,mech,nil,"CylinderMesh","nonCollide","S0.5","Dark stone grey"),CF(0,-1,-5)*CFA(0,0,90))
    newWeld(Torso,v,newPart(0.6,2.81,0.6,mech,nil,"CylinderMesh","nonCollide","S0.5","Black"),CF(0,-1,-5)*CFA(0,0,90))
    newWeld(Torso,v,newPart(1,0.5,1,mech,nil,"CylinderMesh","nonCollide","S0.5"),CF(0,-1,-5)*CFA(0,-1,90))
    newWeld(Torso,v,newPart(1,0.25,1,mech,nil,"CylinderMesh","nonCollide","S0.5"),CF(-0.125-0.65-0.4,-1,-5)*CFA(0,0,90))
    newWeld(Torso,v,newPart(1,0.25,1,mech,nil,"CylinderMesh","nonCollide","S0.5"),CF(0.125+0.65+0.4,-1,-5)*CFA(0,0,90))
    newWeld(Torso,v,newPart(0.501,1,1,mech,nil,"nonCollide"),CF(0,-1,-4.5))
    newWeld(Torso,v,newPart(0.251,1,1,mech,nil,"nonCollide"),CF(-0.125-0.65-0.4,-1,-4.5))
    newWeld(Torso,v,newPart(0.251,1,1,mech,nil,"nonCollide"),CF( 0.125+0.65+0.4,-1,-4.5))
    newWeld(Torso,v,newPart(1,0.5,5.5,mech,nil,"Wedge"),CF(-0.9-0.15,-1,-1.25)*CFA(0,180,-90))
    newWeld(Torso,v,newPart(1,0.5,5.5,mech,nil,"Wedge"),CF( 0.9+0.15,-1,-1.25)*CFA(0,180, 90))
    newWeld(Torso,v,newPart(1.6,1,5.5,mech,nil),CF(0,-1,-1.25)) --asd
    newWeld(Torso,v,newPart(0.8,1.7,0.8,mech,nil,"CylinderMesh","nonCollide","Dark stone grey"),CF(0,0,0)*CFA(0,0,90))
    newWeld(Torso,v,newPart(0.6,1.71,0.6,mech,nil,"CylinderMesh","nonCollide","Black"),CF(0,0,0)*CFA(0,0,90))
    for i=-1,1,2 do 
        newWeld(Torso,v,newPart(0.6,1,1,mech,nil,"Wedge"),CF(0.5*i,-1,2)*CFA(0,180,180)) --heel
        newWeld(Torso,v,newPart(0.3,0.5,0.8,mech,nil),CF(0.65*i, 0.25,0)*CFA(0,0,0)) 
        newWeld(Torso,v,newPart(0.3,0.5,1.6,mech,nil),CF(0.65*i,-0.25,0)*CFA(0,0,0)) 
        newWeld(Torso,v,newPart(0.3,0.5,0.4,mech,nil,"Wedge"),CF(0.65*i,0.25,-0.6)*CFA(0,  0,0)) 
        newWeld(Torso,v,newPart(0.3,0.5,0.4,mech,nil,"Wedge"),CF(0.65*i,0.25, 0.6)*CFA(0,180,0)) 
        newWeld(Torso,v,newPart(0.3,0.5,0.2,mech,nil,"Wedge"),CF(0.65*i,-0.25,-0.9)*CFA(0,  0,0)) 
        newWeld(Torso,v,newPart(0.3,0.5,0.2,mech,nil,"Wedge"),CF(0.65*i,-0.25, 0.9)*CFA(0,180,0)) 
    end
end
LToe = newPart(3,1,1,mech,nil,"Dark stone grey","Transparent")
LToeW = newWeld6D(LFoot,LFoot,LToe,CF(0,-1,-5),CF(0,0,0)*CFA(ToeAngle,0,0))
RToe = newPart(3,1,1,mech,nil,"Dark stone grey","Transparent")
RToeW = newWeld6D(RFoot,RFoot,RToe,CF(0,-1,-5),CF(0,0,0)*CFA(ToeAngle,0,0))
for i,v in pairs{LToe,RToe} do 
    local part = newPart(0.8,1,3,mech,nil,"Wedge","Dark stone grey")
    newWeld(Torso,v,part,CF(-0.65,0,-1.75))
    local part = newPart(0.8,1,3,mech,nil,"Wedge","Dark stone grey")
    newWeld(Torso,v,part,CF(0.65,0,-1.75))
    local part = newPart(0.8,1,1,mech,nil,"Wedge","Dark stone grey")
    newWeld(Torso,v,part,CF(-0.65,0,0.25)*CFA(180,0,0))
    local part = newPart(0.8,1,1,mech,nil,"Wedge","Dark stone grey")
    newWeld(Torso,v,part,CF( 0.65,0,0.25)*CFA(180,0,0))
    newWeld(Torso,v,newPart(4,3,5,mech,nil,"Transparent"),CF(0,1,-1.5))
end


---------------TORSO1 LOWER (NOT Y TURN)
newWeld(Torso,Torso1,newPart(5,3,3,mech,nil,"Torso"),CF(0,-0.5,0)*CFA(180,90,0)) --lowest torso
newWeld(Torso,Torso1,newPart(1.6,3.4,1.6,mech,nil,"CylinderMesh","nonCollide","Dark stone grey"),CF(0,-0.8,-0.55)*CFA(0,0,90))
for i=-1,1,2 do 
    newWeld(Torso,Torso1,newPart(1.5,1.5,1.5,mech,nil,"Sphere","nonCollide"),CF(3*i,0,0))
    newWeld(Torso,Torso1,newPart(1.2,2.4,1.2,mech,nil,"CylinderMesh","nonCollide"),CF(3*i,0,0)*CFA(-55,55*i,0)*CF(0,0,-1.2)*CFA(90,0,0))
end
--Tail
newWeld(Torso,Torso1,newPart(2.5,1.5,2.5,mech,nil,"CylinderMesh"),CF(0,-0.5,2)*CFA(90,0,0)*CF(0,0.5-0.25,0))
newWeld(Torso,Torso1,newPart(2.3,0.2,2.3,mech,nil,"CylinderMesh","Dark stone grey"),CF(0,-0.5,2)*CFA(90,0,0)*CF(0,1-0.09,0))
newWeld(Torso,Torso1,newPart(2,0.5,0.2,mech,nil,"Black"),CF(0,-0.5,2+1-0.08)*CFA(0,0,0))




CockpitGlass = {}
---------------------TORSO2 UPPER
newWeld(Torso,Torso2,newPart(2.9,0.2,2.9,mech,nil,"CylinderMesh","nonCollide","Really black"),CF(0,1-0.09,0))
newWeld(Torso,Torso2,newPart(2.9,0.2,2.9,mech,nil,"CylinderMesh","nonCollide","Really black"),CF(0,1+2+0.09,0))
newWeld(Torso,Torso2,newPart(2.6,2,2.6,mech,nil,"CylinderMesh","Dark stone grey"),CF(0,1+1,0))

for i=0.2,1.8,0.4 do 
    newWeld(Torso,Torso2,newPart(3.1+i/3,0.2,3.1+i/3,mech,nil,"CylinderMesh","nonCollide"),CF(0,1+i,0))
end
newWeld(Torso,Torso2,newPart(8,5,4,mech,nil,"Torso"),CF(0,1+2+2.5,0)*CFA(180,90,0)) -- upper 

Ceiling = newPart(4,0.2,6,mech,nil)
newWeld(Torso,Torso2,Ceiling,CF(0,16.9,0))

newWeld(Torso,Torso2,newPart(4,1,1,mech,nil),CF(0,8-0.5,-4.5)) --floor front
--front glass part
newWeld(Torso,Torso2,newPart(4.4,1,0.2,mech,nil),CF(0,8,-4.9)*CFA(-30,0,0)*CF(0,0.5,0)) 
newWeld(Torso,Torso2,newPart(0.25,4.4,0.25,mech,nil,"CylinderMesh"),CF(0,8,-4.9)*CFA(-30,0,0)*CF(0,1,0)*CFA(0,0,90)) --glass metal
CockpitGlass[#CockpitGlass+1] = newWeld(Torso,Torso2,newPart(4.4,2+0.1,0.2,mech,nil),CF(0,8,-4.9)*CFA(-30,0,0)*CF(0,1+1,0)).Part1
newWeld(Torso,Torso2,newPart(0.25,4.4,0.25,mech,nil,"CylinderMesh"),CF(0,8,-4.9)*CFA(-30,0,0)*CF(0,1+2,0)*CFA(0,0,90)) --glass metal
CockpitGlass[#CockpitGlass+1] = newWeld(Torso,Torso2,newPart(4.4,1+3.35,0.2,mech,nil),CF(0,8,-4.9)*CFA(-30,0,0)*CF(0,1+2,0)*CFA(30+19.8,0,0)*CF(0,0.5+1.675,0)).Part1
newWeld(Torso,Torso2,newPart(4.4,3,0.2,mech,nil),CF(0,17,-3)*CFA(-135-5,0,0)*CF(0,1.5,0)) --upper ceiling
newWeld(Torso,Torso2,newPart(0.25,4.4,0.25,mech,nil,"CylinderMesh"),CF(0,8,-4.9)*CFA(-30,0,0)*CF(0,1+2,0)*CFA(30+19.8,0,0)*CF(0,1+3.35,0)*CFA(0,0,90)) --glass metal


for i=-1,1,2 do 
    newWeld(Torso,Torso2,newPart(6.2,3,2,mech,nil,"Torso"),CF(3*i,1+2+3.5,0)*CFA(180,90,0)) --side torsos
    newWeld(Torso,Torso2,newPart(3,1,3,mech,nil,"CylinderMesh"),CF(2.5*i,5,0)*CFA(0,0,90)) -- hipgun

    newWeld(Torso,Torso2,newPart(1,2,2,mech,nil,"Wedge"),CF(3*i,8-0.5,-4)*CFA(0,-90*i,90*i)) --floorwedge
    newWeld(Torso,Torso2,newPart(1,1,2,mech,nil,"Wedge"),CF(3*i,8-0.5, 3.5)*CFA(0,-90*i,90*-i)) 

    newWeld(Torso,Torso2,newPart(0.2,  6,6.2,mech,nil),CF(4*i,8,-0.1)*CFA(0,0,-10*i)*CF(-0.1*i,3,0)) --sidewalls
    newWeld(Torso,Torso2,newPart(0.2,4.3,6.2,mech,nil),CF(4*i,8,-0.1)*CFA(0,0,-10*i)*CF(0,6,0)*CFA(0,0,55*i)*CF(0,2.15,0)) --sidewall upper
    newWeld(Torso,Torso2,newPart(0.2,1,math.sqrt(2*2+2*2)+0.1,mech,nil),CF(-2.9*i,8,-4)*CFA(0,-45*i,25*i)*CF(0,0.5,0.05)) --side front
    
    --metal glasses
    newWeld(Torso,Torso2,newPart(0.25,4,0.25,mech,nil,"CylinderMesh"),CF(2.2*i,8,-4.9)*CFA(-30,0,0)*CF(0,1+1-1,0)) 
    newWeld(Torso,Torso2,newPart(0.25,4.4,0.25,mech,nil,"CylinderMesh"),CF(2.2*i,8,-4.9)*CFA(-30,0,0)*CF(0,1+2,0)*CFA(30+19.8,0,0)*CF(0,0.5+1.675,0)) 
    newWeld(Torso,Torso2,newPart(0.25,0.25,0.25,mech,nil,"Sphere"),CF(2.2*i,8,-4.9)*CFA(-30,0,0)*CF(0,1+2,0)) 
    newWeld(Torso,Torso2,newPart(0.25,0.25,0.25,mech,nil,"Sphere"),CF(2.2*i,8,-4.9)*CFA(-30,0,0)*CF(0,1+2,0)*CFA(30+19.8,0,0)*CF(0,1+3.35,0))
    local p1 = (Torso2.CFrame*CF(2.2*i,17,-3)*CFA(-135-5,0,0)*CF(0,3,0)).p
    local p2 = (Torso2.CFrame*CF(4*i,8,-3.2)*CFA(0,0,-10*i)*CF(0,6,0)).p
    local len = (p1-p2).magnitude
    local cf = CF(p1,p2)*CF(0,0,-len/2)*CFA(-90,0,0)
    newWeld(Torso,Torso2,newPart(0.25,len,0.25,mech,nil,"CylinderMesh"),Torso2.CFrame:toObjectSpace(cf)) 
    newWeld(Torso,Torso2,newPart(0.25,0.25,0.25,mech,nil,"Sphere"),Torso2.CFrame:toObjectSpace(cf*CF(0,len/2,0))) 
    p1 = (Torso2.CFrame*CF(2.2*i,8,-4.9)*CFA(-30,0,0)*CF(0,1+2,0)).p
    len = (p1-p2).magnitude
    cf = CF(p1,p2)*CF(0,0,-len/2)*CFA(-90,0,0)
    newWeld(Torso,Torso2,newPart(0.25,len,0.25,mech,nil,"CylinderMesh"),Torso2.CFrame:toObjectSpace(cf)) 
    p1 = (Torso2.CFrame*CF(4*i,8,-3.2)*CFA(0,0,-10*i)*CF(-0.1*i,2,0)).p
    len = (p1-p2).magnitude
    cf = CF(p1,p2)*CF(0,0,-len/2)*CFA(-90,0,0)
    newWeld(Torso,Torso2,newPart(0.25,len,0.25,mech,nil,"CylinderMesh"),Torso2.CFrame:toObjectSpace(cf)) 
    newWeld(Torso,Torso2,newPart(0.25,0.25,0.25,mech,nil,"Sphere"),Torso2.CFrame:toObjectSpace(cf*CF(0,-len/2,0))) 
    p2 = (Torso2.CFrame*CF(2.2*i,8,-4.9)*CFA(-30,0,0)*CF(0,1,0)).p
    len = (p1-p2).magnitude
    cf = CF(p1,p2)*CF(0,0,-len/2)*CFA(-90,0,0)
    newWeld(Torso,Torso2,newPart(0.25,len,0.25,mech,nil,"CylinderMesh"),Torso2.CFrame:toObjectSpace(cf)) 

    local t1,t2 = fillTriangle1Mech{ --upper glass
        (Torso2.CFrame*CF(2.2*i,8,-4.9)*CFA(-30,0,0)*CF(0,1+2,0)).p;
        (Torso2.CFrame*CF(2.2*i,17,-3)*CFA(-135-5,0,0)*CF(0,3,0)).p;
        (Torso2.CFrame*CF(4*i,8,-3.2)*CFA(0,0,-10*i)*CF(0,6,0)).p;}
    CockpitGlass[#CockpitGlass+1] = t1 newI{"SpecialMesh",t1,MeshType="Wedge",Scale=V3(0,1,1)}
    CockpitGlass[#CockpitGlass+1] = t2 newI{"SpecialMesh",t2,MeshType="Wedge",Scale=V3(0,1,1)}
    local t1,t2 = fillTriangle1Mech{ --mid glass
        (Torso2.CFrame*CF(2.2*i,8,-4.9)*CFA(-30,0,0)*CF(0,1+2,0)).p;
        (Torso2.CFrame*CF(2.2*i,8,-4.9)*CFA(-30,0,0)*CF(0,1,0)).p;
        (Torso2.CFrame*CF(4*i,8,-3.2)*CFA(0,0,-10*i)*CF(-0.1*i,2,0)).p;}
    CockpitGlass[#CockpitGlass+1] = t1 newI{"SpecialMesh",t1,MeshType="Wedge",Scale=V3(0,1,1)}
    CockpitGlass[#CockpitGlass+1] = t2 newI{"SpecialMesh",t2,MeshType="Wedge",Scale=V3(0,1,1)}
    local t1,t2 = fillTriangle1Mech{ --lower glass
        (Torso2.CFrame*CF(2.2*i,8,-4.9)*CFA(-30,0,0)*CF(0,1+2,0)).p;
        (Torso2.CFrame*CF(4*i,8,-3.2)*CFA(0,0,-10*i)*CF(0,6,0)).p;
        (Torso2.CFrame*CF(4*i,8,-3.2)*CFA(0,0,-10*i)*CF(-0.1*i,2,0)).p;}
    CockpitGlass[#CockpitGlass+1] = t1 newI{"SpecialMesh",t1,MeshType="Wedge",Scale=V3(0,1,1)}
    CockpitGlass[#CockpitGlass+1] = t2 newI{"SpecialMesh",t2,MeshType="Wedge",Scale=V3(0,1,1)}

    fillTriangle1Mech{ --sidewall upper front
        (Torso2.CFrame*CF(2.2*i,17,-3)).p;
        (Torso2.CFrame*CF(2.2*i,17,-3)*CFA(-135-5,0,0)*CF(0,3,0)).p;
        (Torso2.CFrame*CF(4*i,8,-3.2)*CFA(0,0,-10*i)*CF(0,6,0)).p;}

    fillTriangle1Mech{ --sidewall lower front
        (Torso2.CFrame*CF(2.2*i,8,-4.9)*CFA(-30,0,0)*CF(0,1,0)).p;
        (Torso2.CFrame*CF(2.9*i,8,-4)*CFA(0,45*i,-25*i)*CF(0,1,math.sqrt(2*2+2*2)/2+0.1)).p;
        (Torso2.CFrame*CF(4*i,8,-3.2)*CFA(0,0,-10*i)*CF(-0.1*i,2,0)).p;}
    
    fillTriangle1Mech{ --sides and back ceiling
        (Torso2.CFrame*CF(2*i,8,4)).p;
        (Torso2.CFrame*CF(2*i,8,4)*CFA(20,0,0)*CF(0,6,0)).p;
        (Torso2.CFrame*CF(4*i,8,3)).p;}
    fillTriangle1Mech{
        (Torso2.CFrame*CF(4*i,8,3)*CFA(0,0,-10*i)*CF(0,6,0)).p;
        (Torso2.CFrame*CF(2*i,8,4)*CFA(20,0,0)*CF(0,6,0)).p;
        (Torso2.CFrame*CF(4*i,8,3)).p;}
    fillTriangle1Mech{
        (Torso2.CFrame*CF(4*i,8,3)*CFA(0,0,-10*i)*CF(0,6,0)).p;
        (Torso2.CFrame*CF(2*i,8,4)*CFA(20,0,0)*CF(0,6,0)).p;
        (Torso2.CFrame*CF(2*i,16.5+0.5,3)).p;}




end

--roof designs
newWeld(Torso,Torso2,newPart(9,1,1,mech,nil,"Wedge"),CF(0,17.5,-1.5))
newWeld(Torso,Torso2,newPart(4.4,1,2,mech,nil,"Wedge"),CF(0,17.5,-2))
newWeld(Torso,Torso2,newPart(4.4,1,4,mech,nil,"Wedge"),CF(0,18.5, 1))
newWeld(Torso,Torso2,newPart(4.4,2,3,mech,nil,"Wedge"),CF(0,18, 4.5)*CFA(0,180,0))
newWeld(Torso,Torso2,newPart(9,1,4,mech,nil),CF(0,17.5, 1))
newWeld(Torso,Torso2,newPart(4.4,3,3.3,mech,nil,"Wedge"),CF(0,17-1.65, 4.5)*CFA(-90,0,0))

LShoulder = newPart(2.6,2.6,2.6,mech,nil,"Dark stone grey","Sphere")
LShoulderW = newWeld6D(Torso2,Torso2,LShoulder,CF(-8,16,0),CF(0,0,0)*CFA(30,0,8))
RShoulder = newPart(2.6,2.6,2.6,mech,nil,"Dark stone grey","Sphere")
RShoulderW = newWeld6D(Torso2,Torso2,RShoulder,CF( 8,16,0),CF(0,0,0)*CFA(30,0,-8))

BackBooster = {}
for i=-1,1,2 do --back torso design
local v = newPart(4,4,4,mech,nil,"CylinderMesh")
newWeld(Torso,Torso2,v,CF(4.5*i,15.5,3.75)*CFA(-15,0,5*i))
newWeld(Torso,v,newPart(3.65,2,3.65,mech,nil,"CylinderMesh"),CF(0,-2,0)*CFA(2,0,0)*CF(0,0,0))
newWeld(Torso,v,newPart(3.2,3,3.2,mech,nil,"CylinderMesh"),CF(0,-2,0)*CFA(4,0,0)*CF(0,-1.5,0.1))
local backboost = newPart(2.4,0.2,2.4,mech,nil,"CylinderMesh","Really black","Neon")
newWeld(Torso,v,backboost,CF(0,-2,0)*CFA(4,0,0)*CF(0,-2.91,0.1))
BackBooster[i] = newI{"ParticleEmitter",backboost
,Lifetime = NumberRange.new(0.8,1)
,LightEmission=1
,Color = ColorSequence.new(Color3.new(178/255,248/255,255/255),Color3.new(0/255,0/255,255/255))
,Texture = assetprefix.."346519018" 
,LockedToPart=true
,EmissionDirection="Bottom"
,Rate=600
,Speed = NumberRange.new(6,6)
,Rotation = NumberRange.new(-180,-180)
,RotSpeed = NumberRange.new(-90,-90)
,VelocitySpread=0
,Acceleration=V3(0,-15,0)
,Enabled=false
}
    for y=1,6 do 
        newWeld(Torso,v,newPart(1,1,0.4,mech,nil,"Wedge"),CF(0,-2,0)*CFA(4,0,0)*CF(0,-3-0.5,0.1)*CFA(0,y*60,0)*CF(0,0,1.5-0.2)*CFA(180,0,0))
    end
end


for i,v in pairs{[-1]=LShoulder,[1]=RShoulder} do 
    newWeld(Torso,v,newPart(3,0.75,3,mech,nil,"CylinderMesh"),CFA(0,0, 50)) --x
    newWeld(Torso,v,newPart(3,0.75,3,mech,nil,"CylinderMesh"),CFA(0,0,-50)) --x
    newWeld(Torso,Torso2,newPart(6,2.5,2,mech,nil,"Torso"),CF(-5.5*i,17-0.25,0)*CFA(0,90,0)) --shoulder
    newWeld(Torso,Torso2,newPart(4.5,2.5,3,mech,nil,"Torso"),CF(-8*i,17+0.5,0)*CFA(0,90,0))

    newWeld(Torso,Torso2,newPart(1.6,2,2,mech,nil,"Wedge"),CF(-5.5*i,14.5, 1.5)*CFA(180,90*i,0))
    newWeld(Torso,Torso2,newPart(1.6,2,2,mech,nil,"Wedge"),CF(-5.5*i,14.5,-1.5)*CFA(180,90*i,0))
    newWeld(Torso,Torso2,newPart(5,3,2.5,mech,nil,"Wedge"),CF(-3.5*i,15.5,0.5)*CFA(180,-90*i,0))

    newWeld(Torso,Torso2,newPart(4.3,2.5,3,mech,nil,"Wedge"),CF(-4.35*i,16.75,3.5)*CFA(180,0,0))


    newWeld(Torso,v,newPart(3,1,3,mech,nil,"Wedge"),CF(0,-11.5,  1)*CFA(180,0,  0))
    newWeld(Torso,v,newPart(3,2,1,mech,nil,"Wedge"),CF(0,-11  , -1)*CFA(  0,0,180))
    newWeld(Torso,v,newPart(3,1,3,mech,nil,"Wedge"),CF(0,-10.5,  1)*CFA(  0,180,0))

    newWeld(Torso,v,newPart(2.8,1,2.2,mech,nil,"Wedge"),CF(0,-2.5,0.6)*CFA(180,0,  0))
    newWeld(Torso,v,newPart(2.8,2,1,mech,nil,"Wedge"),CF(0,-2  , -1)*CFA( 180,180,180))
    newWeld(Torso,v,newPart(2.8,1,2.2,mech,nil,"Wedge"),CF(0,-1.5,0.6)*CFA(  0,180,0))
    newWeld(Torso,v,newPart(0.8,1.7,0.8,mech,nil,"CylinderMesh","Dark stone grey"),CF(-0.6,-1.3,0.9)*CFA(-15,0,-7))
    newWeld(Torso,v,newPart(0.8,1.7,0.8,mech,nil,"CylinderMesh","Dark stone grey"),CF( 0.6,-1.3,0.9)*CFA(-15,0,7))

    newWeld(Torso,v,newPart(4,1.42,4,mech,nil,"CylinderMesh","Dark stone grey"),CF(-0.7*i,-4,2)*CFA(0,0,90))--cylinder upper shoulder
    newWeld(Torso,v,newPart(3,0.2,3,mech,nil,"CylinderMesh"),CF(-1.5*i,-4,2)*CFA(0,0,90)) 
    newWeld(Torso,v,newPart(4,1.41,4,mech,nil,"CylinderMesh"),CF(-0.7*i,-4-0.25,1.5-0.5)*CFA(0,0,90))
    newWeld(Torso,v,newPart(2.05,3.19,2.05,mech,nil,"CylinderMesh","Dark stone grey"),CF(-0.1*i,-4,2)*CFA(0,0,90))
    newWeld(Torso,v,newPart(1.5,1.6,1.5,mech,nil,"CylinderMesh","Black"),CF(0.7*i,-4,2)*CFA(0,0,90))
    newWeld(Torso,v,newPart(1.4,5,2,mech,nil,"Dark stone grey"),CF(0.69*i,-4,2)*CFA(12.5,0,0)*CF(0,-2.5,0))
    newWeld(Torso,v,newPart(1.4,2.8,2,mech,nil,"Dark stone grey"),CF(0.69*i,-4,2)*CFA(129,0,0)*CF(0,-1.4,0))
    for x=50,110,30 do 
    newWeld(Torso,v,newPart(1.3,1.6,1.3,mech,nil,"CylinderMesh","Dark stone grey"),CF(-0.7*i,-4-0.25,1.5-0.5)*CFA(x,0,0)*CF(0,2+0.8,0))
    newWeld(Torso,v,newPart(1,0.2,1,mech,nil,"CylinderMesh"),CF(-0.7*i,-4-0.25,1.5-0.5)*CFA(x,0,0)*CF(0,2+1.6-0.09,0))
    end
    newWeld(Torso,v,newPart(1.4,6.6,1.4,mech,nil,"CylinderMesh"),CF(-0.7*i,-4-0.25,1+2)*CFA(  5,0,0)*CF(0,-3.3,-0.7))
    newWeld(Torso,v,newPart(1.4,6,1.4,mech,nil,"CylinderMesh"),CF(-0.7*i,-4-0.25,1-2)*CFA(-2,0,0)*CF(0,-3, 0.7))
    newWeld(Torso,v,newPart(1.4,6,2.3,mech,nil),CF(-0.7*i,-7,0.8))

    newWeld(Torso,v,newPart(4.2,2,3,mech,nil,"Torso"),CF(0,-9.55,0.75)*CFA(14,90,0))

end

LElbow = newPart(1,1,1,mech,nil)
LElbowW = newWeld6D(LShoulder,LShoulder,LElbow,CF(0,-12,0),CF(0,0,0)*CFA(-90,0,0))
RElbow = newPart(1,1,1,mech,nil)
RElbowW = newWeld6D(RShoulder,RShoulder,RElbow,CF(0,-12,0),CF(0,0,0)*CFA(-90-10,0,0))

for i,v in pairs{[-1]=LElbow,[1]=RElbow} do 
    newWeld(Torso,v,newPart(2.4,3.5,2.4,mech,nil,"CylinderMesh","Dark stone grey"),CF(0,0,0)*CFA(0,0,90)) 
    newWeld(Torso,v,newPart(1.7,3.8,1.7,mech,nil,"CylinderMesh","Black"),CF(0,0,0)*CFA(0,0,90)) 
    newWeld(Torso,v,newPart(3,0.6,3,mech,nil,"CylinderMesh","Really black"),CF(0,0,0)*CFA(0,0,90)) 
    if i == -1 then 
    newWeld(Torso,v,newPart(2.2,2,2.5,mech,nil,"Torso"),CF(0,-0.5,1.3)*CFA(90,90,0)) --z y x --y z x
    newWeld(Torso,v,newPart(1.4,2,1,mech,nil,"Dark stone grey"),CF(0,-1,0))

    newWeld(Torso,v,newPart(0.75,2.4,0.75,mech,nil,"CylinderMesh","Dark stone grey"),CF(-0.6,-1.6,1.3)*CFA(30,0,0)) 
    newWeld(Torso,v,newPart(0.75,2.4,0.75,mech,nil,"CylinderMesh","Dark stone grey"),CF( 0.6,-1.6,1.3)*CFA(30,0,0)) 

    newWeld(Torso,v,newPart(2,2.2,2,mech,nil,"Wedge"),CF(0,-1.9,-1.5))
    newWeld(Torso,v,newPart(3,1,2,mech,nil),CF(0,-2.5,0))

    end
end

--Left Arm
newWeld(Torso,LElbow,newPart(3,3.5,4,mech,nil,"Wedge"),CF(0,-3-2,-0.75)*CFA(-90,0,0)) 
newWeld(Torso,LElbow,newPart(5,4,5,mech,nil,"CylinderMesh","Dark stone grey"),CF(0,-3-2.5,0)*CFA(0,0,90))
newWeld(Torso,LElbow,newPart(2.4,5,2.4,mech,nil,"CylinderMesh","Dark stone grey"),CF(0,-3-2.5,0)*CFA(0,0,90)) 
newWeld(Torso,LElbow,newPart(4,1.2,4,mech,nil,"CylinderMesh","Black"),CF(0,-3-2.5+1,-1)*CFA(0,0,90))
--newWeld(Torso,LElbow,newPart(4.99,2.3,1.1,mech,nil,"Dark stone grey"),CF(0,-3-2.5-0.5,0)) 
for i=-1,1,2 do 
    newWeld(Torso,LElbow,newPart(1,4,4,mech,nil,"Sphere"),CF(2*i,-3-2.5,0)*CFA(0,0,0)) 
    newWeld(Torso,LElbow,newPart(0.7,5,0.7,mech,nil,"CylinderMesh","Dark stone grey"),CF(0.6*i,-3-5+1+1.2+0.5,1.3+1.8-0.45)*CFA(-10,0,0)*CF(0,2.5,0))
end
newWeld(Torso,LElbow,newPart(2.6,6,2.6,mech,nil),CF(0,-3-5-1,0)) --
newWeld(Torso,LElbow,newPart(3.5,6,1.1,mech,nil,"Dark stone grey"),CF(0,-3-5-1,0)) 
newWeld(Torso,LElbow,newPart(2.6,3,1.8,mech,nil,"Wedge"),CF(0,-3-5+1,1.3+0.9)*CFA(180,0,0))
newWeld(Torso,LElbow,newPart(1,2.6,1,mech,nil,"CylinderMesh"),CF(0,-3-5+1+1.2+0.5,1.3+1.8-0.45)*CFA(0,0,90))
newWeld(Torso,LElbow,newPart(1,1.4,1,mech,nil,"CylinderMesh","Dark stone grey"),CF(0,-3-5-3.5,1.3)*CFA(0,0,90)) 
newWeld(Torso,LElbow,newPart(1.4,4,1,mech,nil,"Dark stone grey"),CF(0,-3-5-3.5+2,1.3)) 
newWeld(Torso,LElbow,newPart(1.5,6,1.5,mech,nil,"Dark stone grey","CylinderMesh"),CF(0,-3-5-3.5+2.5,-2.2+1)) 
newWeld(Torso,LElbow,newPart(2,3,2,mech,nil,"Dark stone grey","CylinderMesh"),CF(0,-3-5,-2.2+1)) 
newWeld(Torso,LElbow,newPart(2.5,3,2.5,mech,nil,"Dark stone grey","CylinderMesh"),CF(0,-3-3.5,-2.2+1)) 
newWeld(Torso,LElbow,newPart(2.6,1,1,mech,nil,"Wedge"),CF(0,-3-2.5+1,-2.5-0.5+0.2)*CFA(0,180,0))
newWeld(Torso,LElbow,newPart(2.6,1,1,mech,nil),CF(0,-3-2.5,-2.5-0.5+0.2))
newWeld(Torso,LElbow,newPart(2.6,2,2,mech,nil,"Wedge"),CF(0,-3-2.5-1-0.5,-2.5+0.2)*CFA(0,0,180))

LeftGunUse = false
LeftGun = newPart(4,1,4,mech,nil,"CylinderMesh","Dark stone grey")
LeftGunW = newWeld(Torso,LElbow,LeftGun,CF(0,-3-5-4.5,0)*CFA(0,0,0)) 
newWeld(Torso,LeftGun,newPart(1.6,1,1.6,mech,nil,"Dark stone grey"),CF(0,-1,0))
LeftGunSmoke = newI{"Smoke",LeftGun,Color=Color3.new(20/255,20/255,20/255),Opacity=0.5,Enabled=false,RiseVelocity=-10,Size=2}
for i=120,360,120 do 
newWeld(Torso,LeftGun,newPart(1.6,1,1.6,mech,nil,"Dark stone grey"),CF(0,-1,0)*CFA(0,i,0)*CF(0,0,-2+0.8))
newWeld(Torso,LeftGun,newPart(1,1,1,mech,nil,"Ring","Dark stone grey"),CF(0,-1.5-2,0)*CFA(0,i,0)*CF(0,0,-2+0.85)*CFA(90,0,0)).Part1.Mesh.Scale=V3(1.6,1.6,25)
newWeld(Torso,LeftGun,newPart(2.66,1,1,mech,nil,"Dark stone grey"),CF(0,-1,0)*CFA(0,i+60,0)*CF(0,0,-2+0.81))
local ghole = newPart(1.75,0.5,1.75,mech,nil,"Really black","Sphere","Neon")
newWeld(Torso,LeftGun,ghole,CF(0,-1.5-2-0.5,0)*CFA(0,i,0)*CF(0,0,-2+0.85)) -- gun hole
end

--Right Arm
local of1 = 2
local of2 = -5.2
newWeld(Torso,RElbow,newPart(3.5,3,2.4,mech,nil,"Dark stone grey"),CFA(-55,0,0)*CF( 0,-1.5,0))
newWeld(Torso,RElbow,newPart(3,4,3,mech,nil,"CylinderMesh","Dark stone grey"),CF( 0,of2+3.5,of1)*CFA(0,0,90))
newWeld(Torso,RElbow,newPart(7,1,2,mech,nil,"Torso"),CF( 0,of2-1,of1-1.5-1.5)*CFA(-90,90,0))
newWeld(Torso,RElbow,newPart(5,0.5,1,mech,nil,"Torso"),CF( 0,of2-5,of1-1.5-1.25)*CFA(-90,90,0))
newWeld(Torso,RElbow,newPart(6,0.8,1.4,mech,nil,"Torso"),CF( 0,of2-1,of1+1.5+1.4)*CFA( 90,90,0))
newWeld(Torso,RElbow,newPart(2,18,1,mech,nil),CF(0,of2-3-3,of1-1.5-0.5)) --upper long
newWeld(Torso,RElbow,newPart(2,18,1,mech,nil),CF(-0.535,of2-3-3,of1-1.5-0.825)*CFA(0, 70,0)*CF(-1,0,0))
newWeld(Torso,RElbow,newPart(2,18,1,mech,nil),CF( 0.535,of2-3-3,of1-1.5-0.825)*CFA(0,-70,0)*CF( 1,0,0))
newWeld(Torso,RElbow,newPart(2,18,1,mech,nil),CF(0,of2-3-3,of1+1.5+0.5)) --lower long
newWeld(Torso,RElbow,newPart(2,18,1,mech,nil),CF(-0.535,of2-3-3,of1+1.5+0.825)*CFA(0,-70,0)*CF(-1,0,0))
newWeld(Torso,RElbow,newPart(2,18,1,mech,nil),CF( 0.535,of2-3-3,of1+1.5+0.825)*CFA(0, 70,0)*CF( 1,0,0))
newWeld(Torso,RElbow,newPart(3.4,2,4,mech,nil,"Wedge"),CF( 0,of2+1,of1-1.5)*CFA(-90,0,180))
newWeld(Torso,RElbow,newPart(3.4,4,2,mech,nil,"Wedge"),CF( 0,of2+1,of1+1.5)*CFA(  0,0,180))
newWeld(Torso,RElbow,newPart(1.7,2,1.7,mech,nil,"CylinderMesh","Dark stone grey"),CF( 0,of2+2,of1)*CFA(  0,0,180))
newWeld(Torso,RElbow,newPart(1.3,2.01,1.3,mech,nil,"CylinderMesh","Really black"),CF( 0,of2+2,of1)*CFA(  0,0,180))


newWeld(Torso,RElbow,newPart(3.4,1,5,mech,nil),CF( 0,of2+3.5,of1)*CFA(  0,0,180))
newWeld(Torso,RElbow,newPart(3.4,1,5,mech,nil,"Wedge"),CF( 0,of2+1.5,of1+3)*CFA(-90,0,180))
newWeld(Torso,RElbow,newPart(3.4,2,2,mech,nil,"Wedge"),CF( 0,of2+5,of1-1.5)*CFA(0,0,0))
newWeld(Torso,RElbow,newPart(3.4,2,4,mech,nil,"Wedge"),CF( 0,of2+5,of1+1.5)*CFA(0,180,0))

newWeld(Torso,RElbow,newPart(2.6,1,3,mech,nil,"Dark stone grey"),CF( 0,of2+5.25,of1+1.5+0.5)*CFA(27,0,0))
for x=60,360,60 do 
    newWeld(Torso,RElbow,newPart(5,1,3.45,mech,nil),CF( 0,of2+4.5,of1+1.5+0.25)*CFA(27,0,0)*CF(0,1+3,0)*CFA(x,0,0)*CF(0,2.5,0))
end
newWeld(Torso,RElbow,newPart(5.5,4,5.5,mech,nil,"Dark stone grey","CylinderMesh"),CF( 0,of2+4.5,of1+1.5+0.25)*CFA(27,0,0)*CF(0,1+3,0)*CFA(0,0,90))
for i=-1,1,2 do 
    newWeld(Torso,RElbow,newPart(0.6,0.25,1.6,mech,nil,"Black"),CF(1.2*i,of2-14,of1))
    for ii=1,10 do 
        newWeld(Torso,RElbow,newPart(0.6,0.25,2,mech,nil,"Black"),CF(1.2*i,of2-14.75+ii*1.7,of1)*CFA(ii%2==0 and 56 or -56,0,0))
    end
end


Hatch = newPart(4,6,0.2,mech,nil)
HatchW = newWeld6D(Torso2,Torso2,Hatch,CF(0,11-3,4),CF(0,-3,-0.1)*CFA(-20,0,0)) -- x is -20
newWeld(Torso,Torso2,newPart(4,4.5,0.2,mech,nil),CF(0,8,4)*CFA(20,0,0)*CF(0,6,0)*CFA(-20-42,0,0)*CF(0,2.25,0))

Seat = newI{"Seat",mech,Name="Seat",formFactor="Symmetric",Size=V3(2,1,2),TopSurface="SmoothNoOutlines"}
SeatW = newWeld6D(Torso2,Torso2,Seat,CF(0,8.5,0))
newWeld(Torso,Seat,newPart(2,1,1,mech,nil,"Wedge"),CF(0,0,-1.5))
newWeld(Torso,Seat,newPart(2,2.6,0.8,mech,nil),CF(0,0.5+1.15,0.8)*CFA(10,0,0))
newWeld(Torso,Seat,newPart(2,1.2,0.8,mech,nil),CF(0,0.5+2.9,1)*CFA(0,0,0))


Head = newPart(1,1,1,mech,nil,"nonCollide","Transparent")
Head.Name="Head"
HeadW = newWeld(Torso,Torso,Head,CF(0,2,0))

for i,v in pairs(CockpitGlass) do 
    v.Transparency = 0.6
end
CockpitGlassD = false
for i,v in pairs(mech:children()) do 
    if v:IsA'BasePart' and v.Material==Enum.Material.SmoothPlastic and v.Transparency==0 then 
        v.Material="Metal"
    end
end

Base.Name="HumanoidRootPart" BaseW.Name = "Root Hip"
Torso.Name="Torso"
Torso1.Name = "LowerTorso" Torso1W.Name = "Lower Hip"
Torso2.Name = "UpperTorso" Torso2W.Name = "Upper Hip"
LThigh.Name =  "LeftThigh" LThighW.Name = "LThigh"
RThigh.Name = "RightThigh" RThighW.Name = "RThigh"
LLeg.Name   =    "LeftLeg" LLegW.Name   = "LLeg"
RLeg.Name   =   "RightLeg" RLegW.Name   = "RLeg"
LFoot.Name  =   "LeftFoot" LFootW.Name  = "LFoot"
RFoot.Name  =  "RightFoot" RFootW.Name  = "RFoot"
LToe.Name   =    "LeftToe" LToeW.Name   = "LToe"
RToe.Name   =   "RightToe" RToeW.Name   = "RToe"
LShoulder.Name =  "LeftShoulder" LShoulderW.Name = "LShoulder"
RShoulder.Name = "RightShoulder" RShoulderW.Name = "RShoulder"
LElbow.Name =  "LeftElbow" LElbowW.Name = "LElbow"
RElbow.Name = "RightElbow" RElbowW.Name = "RElbow"
Hatch.Name  =       "Hatch" HatchW.Name  = "Hatch"
SeatW.Name="Seat"


----
checkGroundTouch = function()
local Hit1,Pos1 = ray(LToe.Position,LToe.CFrame*CF(0,-1,0).p-LToe.Position,mech,3)
local Hit2,Pos2 = ray(RToe.Position,RToe.CFrame*CF(0,-1,0).p-RToe.Position,mech,3)
if Hit1 or Hit2 then return 1 end
return 0
end
----

doAfterT = {}
doAfter = function(t,f)
    local key = (MRND(-100,100)*MRND(-100,100)).."a"..MRND(-999999,999999)
    doAfterT[key] = {Time=t,Func=f,Current=0}
    return key
end
doInT = {}
doIn = function(t,f,f2)
    local key = (MRND(-100,100)*MRND(-100,100)).."a"..MRND(-999999,999999)
    doInT[key] = {Time=t,Func=f,FuncEnd=f2,Current=0}
    return key
end


Motors = {["BaseW"]=BaseW,["Torso1W"]=Torso1W,["Torso2W"]=Torso2W,["LThighW"]=LThighW,["RThighW"]=RThighW,["LLegW"]=LLegW,["RLegW"]=RLegW,["LFootW"]=LFootW,["RFootW"]=RFootW,["LToeW"]=LToeW,["RToeW"]=RToeW,
          ["LShoulderW"]=LShoulderW,["RShoulderW"]=RShoulderW,["LElbowW"]=LElbowW,["RElbowW"]=RElbowW,["HatchW"]=HatchW,["SeatW"]=SeatW}

print(#mech:getChildren().." Parts")
_G.mech = mech
_G.RMM2 = getfenv()
_G.m = _G.RMM2

gw = function()
    print(" ")
    for i,weldn in pairs{"LThighW","LLegW","LFootW","LToeW","RThighW","RLegW","RFootW","RToeW","LShoulderW","LElbowW","RShoulderW","RElbowW","BaseW","Torso1W","Torso2W","HatchW","SeatW"} do 
        weld = getfenv()[weldn]
        local a,b,c = weld.C0:toEulerAnglesXYZ()
        local d,e,f = weld.C1:toEulerAnglesXYZ()
        inde = function(n)
            n = math.floor(n*1000+0.5)/1000
            return string.rep(" ",5-#(""..n))..n
        end
        --print(weldn..".C0 = CF("..inde(weld.C0.x)..","..inde(weld.C0.y)..","..inde(weld.C0.z)..")*CFA("..inde(MD(a))..","..inde(MD(b))..","..inde(MD(c))..")")
        print("    addAnim("..weldn..string.rep(" ",10-#weldn)..",1,t,nil,{"..inde(weld.C1.x)..","..inde(weld.C1.y)..","..inde(weld.C1.z)..","..inde(MD(d))..","..inde(MD(e))..","..inde(MD(f)).."})")
    end
    print(" ")
end
gwBool = newI{"BoolValue",mech,Name="GetWelds"}
gwBool.Changed:connect(function()
    if not gwBool.Value then return end 
    gwBool.Value=false
    gw()
end)
gw2 = function() 
    print(" ")
    for i,weldn in pairs{"LS","RS","LH","RH"} do 
        weld = getfenv()[weldn]
        local a,b,c = weld.C0:toEulerAnglesXYZ()
        local d,e,f = weld.C1:toEulerAnglesXYZ()
        inde = function(n)
            n = math.floor(n*1000+0.5)/1000
            return string.rep(" ",5-#(""..n))..n
        end
        print("    addAnim("..weldn..string.rep(" ",10-#weldn)..",0,t,nil,{"..inde(weld.C0.x)..","..inde(weld.C0.y)..","..inde(weld.C0.z)..","..inde(MD(a))..","..inde(MD(b))..","..inde(MD(c)).."})")
        print("    addAnim("..weldn..string.rep(" ",10-#weldn)..",1,t,nil,{"..inde(weld.C1.x)..","..inde(weld.C1.y)..","..inde(weld.C1.z)..","..inde(MD(d))..","..inde(MD(e))..","..inde(MD(f)).."})")
    end
    print(" ")
end
------
Anims = {} -- {WELD,C0or1,Time,CFStart,CFEnd,Current}
addAnim = function(weld,C0or1,Time,CFStart,CFEnd)
    if not weld then return end 
    local CC = "C"..C0or1
    if not CFStart then 
        local a,b,c = weld[CC]:toEulerAnglesXYZ()
        CFStart = {weld[CC].x,weld[CC].y,weld[CC].z,MD(a),MD(b),MD(c)}
    end
    if not CFEnd[1] and not CFEnd[2] and not CFEnd[3] then 
        CFEnd[1] = weld[CC].x
        CFEnd[2] = weld[CC].y
        CFEnd[3] = weld[CC].z
    end
    Anims[weld.Name..CC] = {weld=weld,CC="C"..C0or1,CFStart=CFStart,CFEnd=CFEnd,Time=Time,Current=0}
end
--
WalkKey = {}
loadAnim = {} _G.la = loadAnim
--
ClearWalk = function()
    for i,v in pairs(WalkKey) do 
        doAfterT[i] = nil
        WalkKey[i] = nil
    end
end
--
loadAnim.Open = function(a,t)
    t = t or 1.5
    addAnim(LThighW   ,1,t,nil,{nil,nil,nil, -75,   0,   0})
    addAnim(LLegW     ,1,t,nil,{nil,nil,nil, 155,   0,   0})
    addAnim(LFootW    ,1,t,nil,{nil,nil,nil, -80,   0,   0})
    addAnim(LToeW     ,1,t,nil,{nil,nil,nil,   0,   0,   0})
    addAnim(RThighW   ,1,t,nil,{nil,nil,nil, -75,   0,   0})
    addAnim(RLegW     ,1,t,nil,{nil,nil,nil, 155,   0,   0})
    addAnim(RFootW    ,1,t,nil,{nil,nil,nil, -80,   0,   0})
    addAnim(RToeW     ,1,t,nil,{nil,nil,nil,   0,   0,   0})
    addAnim(LShoulderW,1,t,nil,{nil,nil,nil,  20,   0,   8})
    addAnim(LElbowW   ,1,t,nil,{nil,nil,nil, -90,   0,   0})
    addAnim(RShoulderW,1,t,nil,{nil,nil,nil, -20,   0,  -8})
    addAnim(RElbowW   ,1,t,nil,{nil,nil,nil, -60,   0,   0})
    addAnim(BaseW     ,1,t,nil,{  0,10.2-10.2, 0,   0,   0,   0})
    addAnim(Torso1W   ,1,t,nil,{nil,nil,nil,   0,   0,   0})
    addAnim(Torso2W   ,1,t,nil,{nil,nil,nil,   0,   0,   0})
    addAnim(HatchW    ,1,t,nil,{nil,nil,nil,-180,   0,   0})
    addAnim(SeatW     ,0,t,nil,{-0.6,8.5, 5,  0,  180,   0})
    doAfter(t,function() addAnim(SeatW     ,0,t*0.5,nil,{    0,    -1,    5.3,    0,    180,    0}) end)
end
loadAnim.Close = function(a,t)
    addAnim(SeatW     ,0,t*0.5,nil,{    -0.6,    8.5,    5,    0,    180,    0})
    doAfter(t*0.5,function() loadAnim:Standing(1) end)
end
loadAnim.Standing = function(a,t)
    t = t or 1
    addAnim(LThighW   ,1,t,nil,{  1.5,  0.5,    0,  -25,    0,    0})
    addAnim(LLegW     ,1,t,nil,{    0,    0,    0,   75,    0,    0})
    addAnim(LFootW    ,1,t,nil,{    0,    0,    0,   10,    0,    0})
    addAnim(LToeW     ,1,t,nil,{    0,    0,    0,  -60,    0,    0})
    addAnim(RThighW   ,1,t,nil,{ -1.5,  0.5,    0,  -25,    0,    0})
    addAnim(RLegW     ,1,t,nil,{    0,    0,    0,   75,    0,    0})
    addAnim(RFootW    ,1,t,nil,{    0,    0,    0,   10,    0,    0})
    addAnim(RToeW     ,1,t,nil,{    0,    0,    0,  -60,    0,    0})
    addAnim(LShoulderW,1,t,nil,{    0,    0,    0,   30,    0,    8})
    addAnim(LElbowW   ,1,t,nil,{    0,    0,    0,  -90,    0,    0})
    addAnim(RShoulderW,1,t,nil,{    0,    0,    0,   30,    0,   -8})
    addAnim(RElbowW   ,1,t,nil,{    0,    0,    0, -100,    0,    0})
    addAnim(BaseW     ,1,t,nil,{    0,    0,    0,    0,    0,    0})
    addAnim(Torso1W   ,1,t,nil,{    0,    0,    0,    0,    0,    0})
    addAnim(Torso2W   ,1,t,nil,{    0,    0,    0,    0,    0,    0})
    addAnim(HatchW    ,1,t,nil,{    0,   -3, -0.1,  -20,    0,    0})
    addAnim(SeatW     ,0,t,nil,{    0,  8.5,    0,    0,    0,    0})
end
loadAnim.ReturnLeg = function(a,t)
    t = t or 0.5
    addAnim(LThighW   ,1,t,nil,{  1.5,  0.5,    0,  -25,    0,    0})
    addAnim(LLegW     ,1,t,nil,{    0,    0,    0,   75,    0,    0})
    addAnim(LFootW    ,1,t,nil,{    0,    0,    0,   10,    0,    0})
    addAnim(LToeW     ,1,t,nil,{    0,    0,    0,  -60,    0,    0})
    addAnim(RThighW   ,1,t,nil,{ -1.5,  0.5,    0,  -25,    0,    0})
    addAnim(RLegW     ,1,t,nil,{    0,    0,    0,   75,    0,    0})
    addAnim(RFootW    ,1,t,nil,{    0,    0,    0,   10,    0,    0})
    addAnim(RToeW     ,1,t,nil,{    0,    0,    0,  -60,    0,    0})
end
loadAnim.ReturnArm = function(a,t)
    t = t or 0.5
    addAnim(LShoulderW,1,t,nil,{    0,    0,    0,   30,    0,    8})
    addAnim(LElbowW   ,1,t,nil,{    0,    0,    0,  -90,    0,    0})
    addAnim(RShoulderW,1,t,nil,{    0,    0,    0,   30,    0,   -8})
    addAnim(RElbowW   ,1,t,nil,{    0,    0,    0, -100,    0,    0})
end
loadAnim.WalkL = function(a,t)
    local WalkSpeed = 0.3
    local tu = Turn==0 and 0 or (Turn<0 and 45 or -45)
    addAnim(LThighW   ,1,WalkSpeed  ,nil,{ nil,   nil,  nil,  -65,   tu,    0})
    addAnim(LLegW     ,1,WalkSpeed  ,nil,{    0,    0,    0,  115,    0,    0})
    addAnim(LFootW    ,1,WalkSpeed  ,nil,{    0,    0,    0,  -20,    0,    0})
    addAnim(LToeW     ,1,WalkSpeed  ,nil,{    0,    0,    0,  -30,    0,    0})
    addAnim(RThighW   ,1,WalkSpeed*2,nil,{ nil,   nil,  nil,   15,   tu,    0})
    addAnim(RLegW     ,1,WalkSpeed*2,nil,{    0,    0,    0,   35,    0,    0})
    addAnim(RFootW    ,1,WalkSpeed*2,nil,{    0,    0,    0,   30,    0,    0})
    addAnim(RToeW     ,1,WalkSpeed*2,nil,{    0,    0,    0,  -80,    0,    0})
    wkey = doAfter(WalkSpeed,function()
    addAnim(LThighW   ,1,WalkSpeed,nil,{ nil,   nil,  nil,  -45,   tu,    0})
    addAnim(LLegW     ,1,WalkSpeed,nil,{    0,    0,    0,   35,    0,    0})
    addAnim(LFootW    ,1,WalkSpeed,nil,{    0,    0,    0,   60,    0,    0})
    addAnim(LToeW     ,1,WalkSpeed,nil,{    0,    0,    0,  -50,    0,    0})
    end)
    WalkKey[wkey] = true
    wkey = doAfter(WalkSpeed*2,function()
    addAnim(LThighW   ,1,WalkSpeed,nil,{ nil,   nil,  nil,  -20,   tu,    0})
    addAnim(LLegW     ,1,WalkSpeed,nil,{    0,    0,    0,   65,    0,    0})
    addAnim(LFootW    ,1,WalkSpeed,nil,{    0,    0,    0,   10,    0,    0})
    addAnim(LToeW     ,1,WalkSpeed,nil,{    0,    0,    0,  -50,    0,    0})
    addAnim(RThighW   ,1,WalkSpeed,nil,{ nil,   nil,  nil,  -35,   tu,    0})
    addAnim(RLegW     ,1,WalkSpeed,nil,{    0,    0,    0,  105,    0,    0})
    addAnim(RFootW    ,1,WalkSpeed,nil,{    0,    0,    0,   40,    0,    0})
    addAnim(RToeW     ,1,WalkSpeed,nil,{    0,    0,    0,  -40,    0,    0})
    end)
    WalkKey[wkey] = true
end
loadAnim.WalkR = function(a,t)
    local WalkSpeed = 0.3
    local tu = Turn==0 and 0 or (Turn<0 and 45 or -45)
    addAnim(LThighW   ,1,WalkSpeed*2,nil,{ nil,   nil,  nil,   15,   tu,    0})
    addAnim(LLegW     ,1,WalkSpeed*2,nil,{    0,    0,    0,   35,    0,    0})
    addAnim(LFootW    ,1,WalkSpeed*2,nil,{    0,    0,    0,   30,    0,    0})
    addAnim(LToeW     ,1,WalkSpeed*2,nil,{    0,    0,    0,  -80,    0,    0})
    addAnim(RThighW   ,1,WalkSpeed  ,nil,{ nil,   nil,  nil,  -65,   tu,    0})
    addAnim(RLegW     ,1,WalkSpeed  ,nil,{    0,    0,    0,  115,    0,    0})
    addAnim(RFootW    ,1,WalkSpeed  ,nil,{    0,    0,    0,  -20,    0,    0})
    addAnim(RToeW     ,1,WalkSpeed  ,nil,{    0,    0,    0,  -30,    0,    0})
    wkey = doAfter(WalkSpeed,function()
    addAnim(RThighW   ,1,WalkSpeed,nil,{ nil,   nil,  nil,  -45,   tu,    0})
    addAnim(RLegW     ,1,WalkSpeed,nil,{    0,    0,    0,   35,    0,    0})
    addAnim(RFootW    ,1,WalkSpeed,nil,{    0,    0,    0,   60,    0,    0})
    addAnim(RToeW     ,1,WalkSpeed,nil,{    0,    0,    0,  -50,    0,    0})
    end)
    WalkKey[wkey] = true
    wkey = doAfter(WalkSpeed*2,function()
    addAnim(LThighW   ,1,WalkSpeed,nil,{ nil,   nil,  nil,  -35,   tu,    0})
    addAnim(LLegW     ,1,WalkSpeed,nil,{    0,    0,    0,  105,    0,    0})
    addAnim(LFootW    ,1,WalkSpeed,nil,{    0,    0,    0,   40,    0,    0})
    addAnim(LToeW     ,1,WalkSpeed,nil,{    0,    0,    0,  -40,    0,    0})
    addAnim(RThighW   ,1,WalkSpeed,nil,{ nil,   nil,  nil,  -20,   tu,    0})
    addAnim(RLegW     ,1,WalkSpeed,nil,{    0,    0,    0,   65,    0,    0})
    addAnim(RFootW    ,1,WalkSpeed,nil,{    0,    0,    0,   10,    0,    0})
    addAnim(RToeW     ,1,WalkSpeed,nil,{    0,    0,    0,  -50,    0,    0})
    end)
    WalkKey[wkey] = true
end
loadAnim.Walk2L = function(a,t)
    local WalkSpeed = 0.4
    local tu = Turn==0 and 0 or (Turn<0 and 45 or -45)
    addAnim(LThighW   ,1,WalkSpeed  ,nil,{  nil,  nil,  nil,  -15,    tu,    0})
    addAnim(LLegW     ,1,WalkSpeed  ,nil,{    0,    0,    0,  105,    0,    0})
    addAnim(LFootW    ,1,WalkSpeed  ,nil,{    0,    0,    0,24.286,    0,    0})
    addAnim(LToeW     ,1,WalkSpeed  ,nil,{    0,    0,    0,-74.286,    0,    0})
    addAnim(RThighW   ,1,WalkSpeed*2,nil,{  nil,  nil,  nil,  -45,    tu,    0})
    addAnim(RLegW     ,1,WalkSpeed*2,nil,{    0,    0,    0,   45,    0,    0})
    addAnim(RFootW    ,1,WalkSpeed*2,nil,{    0,    0,    0,   50,    0,    0})
    addAnim(RToeW     ,1,WalkSpeed*2,nil,{    0,    0,    0,  -50,    0,    0})
    wkey = doAfter(WalkSpeed,function()
    addAnim(LThighW   ,1,WalkSpeed,nil,{  nil,  nil,  nil,   15,    tu,    0})
    addAnim(LLegW     ,1,WalkSpeed,nil,{    0,    0,    0,   35,    0,    0})
    addAnim(LFootW    ,1,WalkSpeed,nil,{    0,    0,    0,   30,    0,    0})
    addAnim(LToeW     ,1,WalkSpeed,nil,{    0,    0,    0,  -80,    0,    0})
    end)
    WalkKey[wkey] = true
end
loadAnim.Walk2R = function(a,t)
    local WalkSpeed = 0.4
    local tu = Turn==0 and 0 or (Turn<0 and 45 or -45)
    addAnim(LThighW   ,1,WalkSpeed*2,nil,{  nil,  nil,  nil,  -45,    tu,    0})
    addAnim(LLegW     ,1,WalkSpeed*2,nil,{    0,    0,    0,   45,    0,    0})
    addAnim(LFootW    ,1,WalkSpeed*2,nil,{    0,    0,    0,   50,    0,    0})
    addAnim(LToeW     ,1,WalkSpeed*2,nil,{    0,    0,    0,  -50,    0,    0})
    addAnim(RThighW   ,1,WalkSpeed  ,nil,{  nil,  nil,  nil,  -15,    tu,    0})
    addAnim(RLegW     ,1,WalkSpeed  ,nil,{    0,    0,    0,  105,    0,    0})
    addAnim(RFootW    ,1,WalkSpeed  ,nil,{    0,    0,    0,24.286,    0,    0})
    addAnim(RToeW     ,1,WalkSpeed  ,nil,{    0,    0,    0,-74.286,    0,    0})
    wkey = doAfter(WalkSpeed,function()
    addAnim(RThighW   ,1,WalkSpeed,nil,{  nil,  nil,  nil,   15,    tu,    0})
    addAnim(RLegW     ,1,WalkSpeed,nil,{    0,    0,    0,   35,    0,    0})
    addAnim(RFootW    ,1,WalkSpeed,nil,{    0,    0,    0,   30,    0,    0})
    addAnim(RToeW     ,1,WalkSpeed,nil,{    0,    0,    0,  -80,    0,    0})
    end)
    WalkKey[wkey] = true
end
loadAnim.RunL = function(a,t)
    local WalkSpeed = 0.24
    addAnim(LThighW   ,1,WalkSpeed  ,nil,{  nil,  nil,  nil, -105,    0,    0})
    addAnim(LLegW     ,1,WalkSpeed  ,nil,{    0,    0,    0,  115,    0,    0})
    addAnim(LFootW    ,1,WalkSpeed  ,nil,{    0,    0,    0,   10,    0,    0})
    addAnim(LToeW     ,1,WalkSpeed  ,nil,{    0,    0,    0,  -40,    0,    0})
    addAnim(RThighW   ,1,WalkSpeed*1.5,nil,{  nil,  nil,  nil,   50,    0,    0})
    addAnim(RLegW     ,1,WalkSpeed*1.5,nil,{    0,    0,    0,    5,    0,    0})
    addAnim(RFootW    ,1,WalkSpeed*1.5,nil,{    0,    0,    0,   10,    0,    0})
    addAnim(RToeW     ,1,WalkSpeed*1.5,nil,{    0,    0,    0,  -65,    0,    0})
    wkey = doAfter(WalkSpeed,function()
    WalkSpeed = 0.12
    addAnim(LThighW   ,1,WalkSpeed,nil,{  nil,  nil,  nil,  -75,    0,    0})
    addAnim(LLegW     ,1,WalkSpeed,nil,{    0,    0,    0,   75,    0,    0})
    addAnim(LFootW    ,1,WalkSpeed,nil,{    0,    0,    0,   40,    0,    0})
    addAnim(LToeW     ,1,WalkSpeed,nil,{    0,    0,    0,  -40,    0,    0})
    end)
    WalkKey[wkey] = true
end
loadAnim.RunR = function(a,t)
    local WalkSpeed = 0.24
    addAnim(LThighW   ,1,WalkSpeed*1.5,nil,{  nil,  nil,  nil,   50,    0,    0})
    addAnim(LLegW     ,1,WalkSpeed*1.5,nil,{    0,    0,    0,    5,    0,    0})
    addAnim(LFootW    ,1,WalkSpeed*1.5,nil,{    0,    0,    0,   10,    0,    0})
    addAnim(LToeW     ,1,WalkSpeed*1.5,nil,{    0,    0,    0,  -65,    0,    0})
    addAnim(RThighW   ,1,WalkSpeed  ,nil,{  nil,  nil,  nil, -105,    0,    0})
    addAnim(RLegW     ,1,WalkSpeed  ,nil,{    0,    0,    0,  115,    0,    0})
    addAnim(RFootW    ,1,WalkSpeed  ,nil,{    0,    0,    0,   10,    0,    0})
    addAnim(RToeW     ,1,WalkSpeed  ,nil,{    0,    0,    0,  -30,    0,    0})
    wkey = doAfter(WalkSpeed,function()
    WalkSpeed = 0.12
    addAnim(RThighW   ,1,WalkSpeed,nil,{  nil,  nil,  nil,  -75,    0,    0})
    addAnim(RLegW     ,1,WalkSpeed,nil,{    0,    0,    0,   75,    0,    0})
    addAnim(RFootW    ,1,WalkSpeed,nil,{    0,    0,    0,   40,    0,    0})
    addAnim(RToeW     ,1,WalkSpeed,nil,{    0,    0,    0,  -30,    0,    0})
    end)
    WalkKey[wkey] = true
end
loadAnim.Jump = function(a,t)
    local t = 0.4
    addAnim(LThighW   ,1,t,nil,{  1.5,  0.5,    0,-74.779,-9.656,2.613})
    addAnim(LLegW     ,1,t,nil,{    0,    0,    0,  155,    0,    0})
    addAnim(LFootW    ,1,t,nil,{    0,    0,    0,  -80,    0,    0})
    addAnim(LToeW     ,1,t,nil,{    0,    0,    0,    0,    0,    0})
    addAnim(RThighW   ,1,t,nil,{ -1.5,  0.5,    0,-84.923,9.962,-0.88})
    addAnim(RLegW     ,1,t,nil,{    0,    0,    0,  155,    0,    0})
    addAnim(RFootW    ,1,t,nil,{    0,    0,    0,  -70,    0,    0})
    addAnim(RToeW     ,1,t,nil,{    0,    0,    0,    0,    0,    0})
    addAnim(LShoulderW,1,t,nil,{    0,    0,    0,   10,    0,    8})
    addAnim(LElbowW   ,1,t,nil,{    0,    0,    0, -110,    0,    0})
    addAnim(RShoulderW,1,t,nil,{    0,    0,    0,   30,    0,   -8})
    addAnim(RElbowW   ,1,t,nil,{    0,    0,    0, -130,    0,    0})
    addAnim(Torso1W   ,1,t,nil,{    0,    0,    0,   20,    0,    0})
    doAfter(t,function()
    local t = 0.2
    addAnim(LThighW   ,1,t,nil,{  1.5,  0.5,    0,-15.455,-19.312,-0.077})
    addAnim(LLegW     ,1,t,nil,{    0,    0,    0,   85,    0,    0})
    addAnim(LFootW    ,1,t,nil,{    0,    0,    0,  -10,    0,    0})
    addAnim(LToeW     ,1,t,nil,{    0,    0,    0,  -30,    0,    0})
    addAnim(RThighW   ,1,t,nil,{ -1.5,  0.5,    0,-14.923,9.962,-0.88})
    addAnim(RLegW     ,1,t,nil,{    0,    0,    0,   85,    0,    0})
    addAnim(RFootW    ,1,t,nil,{    0,    0,    0,  -10,    0,    0})
    addAnim(RToeW     ,1,t,nil,{    0,    0,    0,  -30,    0,    0})
    addAnim(Torso1W   ,1,t,nil,{    0,    0,    0,    0,    0,    0})
    end)
end
Base.CanCollide=false
--------------------------------------------------------------------------
Player = Players.LocalPlayer
if not Player then print'not found' mech:MoveTo(V3(0,0,0)) return end 
Hum = newI{"Humanoid",mech} Hum.PlatformStand=true
Char = Player.Character
CTorso = Char.Torso
CHRP = Char.HumanoidRootPart
LS = CTorso:findFirstChild'Left Shoulder'
RS = CTorso:findFirstChild'Right Shoulder'
LH = CTorso:findFirstChild'Left Hip'
RH = CTorso:findFirstChild'Right Hip'

if Char:findFirstChild(mech.Name) then Char[mech.Name]:Destroy() end 
mech.Parent = Char
Base.Name="HRP"
------
Pilot = nil
Anim = "Opening"
AnimLegs = true --use leg pose
AnimArms = true --use arm pose
AnimTorso = true --use torso pose
WalkDir = 0
------
SeatWeld = nil
Seat.ChildAdded:connect(function(weld)
    SeatWeld = weld
    Pilot = weld.Part1==CHRP and CHRP or nil
    pcall(function()
    weld.C1 = CF(0,-1.5,0.25)*CFA(-95,0,0)
    LS2 = weld.Part1.Parent.Torso:findFirstChild'Left Shoulder' LS2.Parent = nil
    RS2 = weld.Part1.Parent.Torso:findFirstChild'Right Shoulder' RS2.Parent = nil
    LH2 = weld.Part1.Parent.Torso:findFirstChild'Left Hip' LH2.Parent = nil
    RH2 = weld.Part1.Parent.Torso:findFirstChild'Right Hip' RH2.Parent = nil
    LS1 = newI{"Weld",weld.Part1.Parent.Torso,Part0=weld.Part1.Parent.Torso,Part1=weld.Part1.Parent:findFirstChild'Left Arm' ,Name="RM1"}
    RS1 = newI{"Weld",weld.Part1.Parent.Torso,Part0=weld.Part1.Parent.Torso,Part1=weld.Part1.Parent:findFirstChild'Right Arm',Name="RM2"}
    LH1 = newI{"Weld",weld.Part1.Parent.Torso,Part0=weld.Part1.Parent.Torso,Part1=weld.Part1.Parent:findFirstChild'Left Leg' ,Name="RM3"}
    RH1 = newI{"Weld",weld.Part1.Parent.Torso,Part0=weld.Part1.Parent.Torso,Part1=weld.Part1.Parent:findFirstChild'Right Leg',Name="RM4"}
    LS1.C0 = CF(-1.2,0.5,-0.5)*CFA(0,0,0)
    LS1.C1 = CF(   0,0.5,0)*CFA(-80,-10,10)
    RS1.C0 = CF( 1.2,0.5,-0.5)*CFA(0,0,0)
    RS1.C1 = CF(   0,0.5,0)*CFA(-80, 10,-10)
    LH1.C0 = CF(-0.5, -1,-0.3)*CFA(0,0,0)
    LH1.C1 = CF(   0,  1,0)*CFA(-45,0, 5)
    RH1.C0 = CF( 0.5, -1,-0.3)*CFA(0,0,0)
    RH1.C1 = CF(   0,  1,0)*CFA(-45,0,-5)
    end)
end)
Seat.ChildRemoved:connect(function(weld)
    pcall(function()
        local mm = weld.Part1.Parent
        for i=1,4 do 
            mm.Torso["RM"..i]:Destroy()
        end
        LS2.Parent = mm.Torso
        LS2.Part0 = mm.Torso
        LS2.Part1 = mm["Left Arm"]
        RS2.Parent = mm.Torso
        RS2.Part0 = mm.Torso
        RS2.Part1 = mm["Right Arm"]
        LH2.Parent = mm.Torso
        LH2.Part0 = mm.Torso
        LH2.Part1 = mm["Left Leg"]
        RH2.Parent = mm.Torso
        RH2.Part0 = mm.Torso
        RH2.Part1 = mm["Right Leg"]
    end)
    Pilot = nil 
end)
------
Gyro = newI{"BodyGyro",Base,cframe=Base.CFrame,maxTorque=V3(5000000,5000000,5000000),P=15000}
WeightForce = newI{"BodyForce",Base,Force=V3(0,-1000000,0)}
Turn = 0
Velo = newI{"BodyVelocity",Base,maxForce=V3N}
veloym = 0
veloy = 0
------
Mouse = Player:GetMouse()
Key = {}
--[[
X Open/Close 
C Jump
WASD Movement
P Cockpit glass
--]]
WalkingSpeed = 16
onKeyDown = function(k)
    if k=="a" then 
        Turn = 10
    elseif k=="d" then 
        Turn = -10
    end
    --
    if k=="x" and Anim=="Opened" then
        Anim="Closing"
        AnimLegs,AnimArms,AnimTorso,Movement=false,false,false,false
        loadAnim:Close(2)
        wait(2)
        Anim="None"
        AnimLegs,AnimArms,AnimTorso,Movement=true,true,true,true
    elseif k=="x" and Anim=="None" then
        Anim="Opening"
        ClearWalk()
        AnimLegs,AnimArms,AnimTorso,Movement=false,false,false,false
        loadAnim:Open(2)
        wait(3)
        Anim="Opened"
    elseif (k=="w" or k=="a" or k=="d") and not Key.s and Movement and Pilot and WalkDir~=1 and AnimLegs then 
        WalkDir=1
        ClearWalk()
        local whichLeg = -1
        while (Key.w or Key.a or Key.d) and not Key.s and Movement and Pilot do 
        loadAnim[(Key["0"] and "Run" or "Walk")..(whichLeg==-1 and "L" or "R")]()
        WalkingSpeed = Key["0"] and 18*4.5 or 18
        whichLeg = whichLeg*-1
        if not AnimLegs then repeat wait() until AnimLegs end 
        local duration = (Key["0"] and 0.36 or 0.9)
        for i=duration/8,duration,duration/8 do wait(duration/8) if (Key.w or Key.a or Key.d) and not Key.s and Movement and Pilot then else break end end
        if not AnimLegs then repeat wait() until AnimLegs end 
        end 
        WalkDir=0
        ClearWalk()
        if Movement and Anim=="None" then
            loadAnim:Standing(0.5)
        end
    elseif k=="s" and not Key.w and Movement and Pilot and AnimLegs then 
        WalkDir=-1
        ClearWalk()
        local whichLeg = -1
        while Key.s and not Key.w and Movement and Pilot do 
        loadAnim["Walk2"..(whichLeg==-1 and "L" or "R")]()
        whichLeg = whichLeg*-1
        if not AnimLegs then repeat wait() until AnimLegs end 
        for i=0.1,0.8,0.1 do wait(0.1) if Key.s and not Key.w and Movement and Pilot then else break end end
        if not AnimLegs then repeat wait() until AnimLegs end 
        end 
        WalkDir=0
        ClearWalk()
        if Movement and Anim=="None" then
            loadAnim:Standing(0.5)
        end
    elseif k=="c" and Movement and Pilot and AnimLegs and AnimTorso and checkGroundTouch()>0 then
        AnimLegs,AnimArms,AnimTorso=false,false,false
        ClearWalk()
        loadAnim:Jump()
        wait(0.5)
        AnimTorso=true
        AnimArms=true
        veloym = 10000000
        loadAnim:ReturnArm(0.3)
        if Key.c then BackBooster[-1].Enabled = true BackBooster[1].Enabled = true veloy = 100 wait(1) else veloy = 75 wait(0.5) end
        BackBooster[-1].Enabled = false BackBooster[1].Enabled = false
        veloym = 0
        veloy = 0
        AnimLegs=true
        if WalkDir==0 then loadAnim:ReturnLeg() end 
    elseif k=="p" and not CockpitGlassD and Pilot then 
        CockpitGlassD = true 
        if CockpitGlass[1].Transparency==0 then 
            doIn(0.7,function(i) 
                for x,v in pairs(CockpitGlass) do 
                    v.Transparency = 0.6*i
                end
            end)
        else
            doIn(0.7,function(i) 
                for x,v in pairs(CockpitGlass) do 
                    v.Transparency = 0.6-0.6*i
                end
            end)
        end
        wait(0.8)
        CockpitGlassD = false
    elseif k =="q" and not LeftGunUse then 
        LeftGunUse=true
        if not spinSpeed then spinSpeed=0 end
        for i=1,50 do 
            if spinSpeed>40 then spinSpeed=40 end 
            LeftGunW.C1=LeftGunW.C1*CFA(0,spinSpeed,0)
            spinSpeed=spinSpeed+0.7
            if i%2==0 then PlaySound(assets.Minigun1,LeftGun,0.4+0.8*spinSpeed/40,1) end
            wait()
        end
        local co=0
        LeftGunSmoke.Enabled=true
        local muzzleFlash = newPart(1,1,1,mech,nil,"Transparent","New Yeller")
        newI{"SpecialMesh",muzzleFlash,MeshType="FileMesh",MeshId=assets.MuzzleFlash,Scale=V3(0.8,3,0.8)}
        local muzzleW = newWeld(LeftGun,LeftGun,muzzleFlash,CF(0,0,0)) 
        repeat
            co=co+1
            LeftGunW.C1=LeftGunW.C1*CFA(0,spinSpeed,0)
            if co%2==0 then PlaySound(assets.Minigun1,LeftGun,1.2,1) end
            if co%2==0 then 
                muzzleFlash.Transparency = 0.5
                PlaySound(assets.Fire1,LeftGun,MRND(600,950)/1000,0.4)
                local bullet = newI{"Part",mech,Name="Bullet",Anchored=true,CanCollide=false,formFactor="Custom",Size=V3(0.5,2,0.5),Debris=10,TopSurface='Smooth',BottomSurface='Smooth'}
                newI{"CylinderMesh",bullet}
                local rotRand = MRND(1,3)*120
                bullet.CFrame=LeftGun.CFrame*CF(0,-6+2,0)*CFA(0,rotRand,0)*CF(0,0,-2+0.85)
                addProjectile(bullet.Position,bullet.CFrame*CF(0,-1,0),800,function() print'boom' end,function(cf) bullet.CFrame=cf*CF(0,0,1)*CFA(90,0,0) end,function() bullet:Destroy() end)
                muzzleW.C0 = CF(0,-6-2,0)*CFA(0,rotRand,0)*CF(0,0,-2+0.85)*CFA(180,0,0)
            else
                muzzleFlash.Transparency=1
            end
            wait()
        until not Key.q
        muzzleFlash:Destroy()
        LeftGunSmoke.Enabled=false
        LeftGunUse=false
        for i=50,1,-0.5 do 
            if LeftGunUse then break end 
            if spinSpeed<0 then spinSpeed=0 end 
            LeftGunW.C1=LeftGunW.C1*CFA(0,spinSpeed,0)
            spinSpeed=spinSpeed-0.35
            if i%2==0 then PlaySound(assets.Minigun1,LeftGun,0.4+0.8*spinSpeed/40,1) end
            wait()
        end
    elseif k=="]" then 
        Pilot = Char.Torso
        Char.Humanoid.Sit = true
    elseif k=="0" then 
    end
end
------
onKeyUp = function(k)
    if k=="a" and not Key.d then
        Turn = 0
    elseif k=="d" and not Key.a then
        Turn = 0
    end
end
------
onButton1Down = function(k)
end
------
onButton1Up = function(k)
end
------
Mouse.KeyDown:connect(function(k)
Key[k]=true
onKeyDown(k)
end)
-------------------------
Mouse.KeyUp:connect(function(k)
Key[k]=false
onKeyUp(k)
end)
Mouse.Button1Down:connect(function()
Button1=true
onButton1Down()
end)
Mouse.Button1Up:connect(function()
Button1=false
onButton1Up()
end)

doAfter(1,function() Base.CanCollide=false end)
runcount = 0
game:getService'RunService'.Stepped:connect(function(aa,step)
    runcount = runcount+1
    --
    if runcount%10==0 and AnimTorso and Movement and Pilot then 
        local y=GetY(Base,Mouse.Hit.p)
        addAnim(Torso2W   ,1,1,nil,{    0,    0,    0,    0, -y,    0})
    end
    --
    if AnimArms and Movement and Pilot  then 
        local x=GetX(Torso2,Mouse.Hit.p)
        if x>40 then x = 40 end 
        if x<-120 then x = -120 end 
        addAnim(LElbowW   ,1,0.5,nil,{  nil,    0,  nil,    -120-x, 0,    0})
        if x<-60 then x = -60 end 
         addAnim(RElbowW   ,1,0.5,nil,{  nil,    0,  nil,    -120-x, 0,    0})
    end
    --
    if runcount%5==0 and Turn~=0 and Movement and Pilot then 
        local turntarg = Base.CFrame*CFA(0,Turn,0)*CF(0,0,-1)
        Gyro.cframe = CF(V3(Base.Position.x,0,Base.Position.z),V3(turntarg.x,0,turntarg.z))
    end
    --
    if Key.w and not Key.s and Movement and Pilot and WalkDir==1 then 
        Velo.maxForce = V3(10000000,veloym,10000000)
        local velo = Base.CFrame.lookVector*WalkingSpeed
        Velo.Velocity = V3(velo.x,veloy,velo.z)
    elseif Key.s and not Key.w and Movement and Pilot and WalkDir==-1 then 
        Velo.maxForce = V3(10000000,veloym,10000000)
        local velo = Base.CFrame.lookVector*-12
        Velo.Velocity = V3(velo.x,veloy,velo.z)
    else
        Velo.maxForce = V3(10000000,veloym,10000000)
        Velo.Velocity = V3(0,veloy,0)
    end
    --
    for i,anim in pairs(Anims) do 
        anim.Current = anim.Current + step
        local CFStart = CF(anim.CFStart[1],anim.CFStart[2],anim.CFStart[3])*CFA(anim.CFStart[4],anim.CFStart[5],anim.CFStart[6])
        local CFEnd   = CF(  anim.CFEnd[1],  anim.CFEnd[2],  anim.CFEnd[3])*CFA(  anim.CFEnd[4],  anim.CFEnd[5],  anim.CFEnd[6])
        anim.weld[anim.CC] = CFStart:lerp(CFEnd,anim.Current/anim.Time)
        --print(anim.Current)
        if anim.Current>=anim.Time then 
            anim.weld[anim.CC] = CFEnd -- 100% 
            Anims[i]=nil 
        end
    end
    --
    for i,v in pairs(doAfterT) do 
        v.Current = v.Current + step
        if v.Current>=v.Time then 
            v.Func()
            doAfterT[i] = nil
        end
    end
    --
    for i,v in pairs(doInT) do 
        v.Current = v.Current + step
        if v.Current>v.Time then v.Current = v.Time end -- sometimes exceeds
        v.Func(v.Current/v.Time,i,step)
        if doInT[i] and v.Current>=v.Time then 
            if v.FuncEnd then v.FuncEnd() end 
            doInT[i] = nil
        end
    end
    --
end)
loadAnim:Open(0.2)
Anim = "Opened"
mech:MoveTo((CTorso.CFrame*CF(0,0,-30)).p)

--(CTorso.CFrame*CF(0,0,-16)).p)
-- hl/https://preview.c9users.io/jaspher/rbx_stoof/RMMech.lua   
-- l/_G.m.addAnim(_G.m.BaseW     ,1,1,nil,{    0,    0,    0,    90,    0,    0})
-- l/_G.m.addAnim(_G.m.LThighW,1,1,nil,{1.5,0.5,0,-25,0,45})
-- l/_G.la:Open()  l/_G.la:Standing()
-- c/for i,v in pairs(workspace.notrmdx["RM Mech 2"]:children()) do if v:IsA'BasePart' then v:SetNetworkOwner(game.Players.notrmdx) end end -- jew