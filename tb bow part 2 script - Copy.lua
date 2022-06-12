loadstring(_G[" TB".."Lib "])()

Player=game:GetService("Players").LocalPlayer
Char=Player.Character
Backpack=Player.Backpack
PlayerGui=Player.PlayerGui
Torso=Char.Torso
Head=Char.Head
Hum=Char.Humanoid
Cam=workspace.CurrentCamera
Tn="Bow"

pcall(function() Backpack[Tn]:Remove() end)
pcall(function() Cam[Tn]:Remove() end)
pcall(function() thesuit=Char[''] end)
pcall(function() thesuit[Tn]:Remove() end)
pcall(function() PlayerGui[Tn]:Remove() end)
pcall(function() Torso['TB_Gyro']:Remove() end)

CModel=qi{'Model',Cam,Name=Tn}
Tool=qi{'HopperBin',Player.Backpack,Name=Tn}
Suit=qi{'Model',Char,Name=''}
Weapon=qi{'Model',Suit,Name=Tn}
Gui=qi{'ScreenGui',PlayerGui,Name=Tn}

equip="unequipped"
anim=""
keys={}
fmouse=nil
Clip=0
Holding=false
ArrowColour="White"
arrow=nil
arroww=nil
ArrowType="Normal"
bb=nil

ids = {}
ids.Crown = 20329976
ids.Spike = 1033714
ids.Hit = 10209590
ids.Flame = 31760113
ids.Arrow = 15887356
ids.ArrowT = 15886781
ids.ArrowHit = 2767090
ids.ArrowShoot = 16211041
ids.ArrowReload = 2697295
ids.Icon = 51902588
ids.Ring =  3270017 

for i,v in pairs(ids) do 
if type(v)=='number' then 
ids[i]='http://www.roblox.com/asset/?id='..v
end
game:GetService("ContentProvider"):Preload(ids[i])
end

Limbs={LS=Torso:findFirstChild'Left Shoulder',RS=Torso:findFirstChild'Right Shoulder',LH=Torso:findFirstChild'Left Hip',RH=Torso:findFirstChild'Right Hip'}
if _G.Limbz then 
Limbs.LS=Limbs.LS or _G.Limbz.LS
Limbs.RS=Limbs.RS or _G.Limbz.RS
Limbs.LH=Limbs.LH or _G.Limbz.LH
Limbs.RH=Limbs.RH or _G.Limbz.RH
end 
_G.Limbz=Limbs
Torso.Neck.C0=cn(0,1.5,0) Torso.Neck.C1=cn(0,0,0)
c2(Torso.Neck,1,3,0,1.5,0,0,0,0)
LS,RS,LH,RH=Limbs.LS,Limbs.RS,Limbs.LH,Limbs.RH
LA,RA,LL,RL=Char['Left Arm'],Char['Right Arm'],Char['Left Leg'],Char['Right Leg']
LS.Part0,RS.Part0,LH.Part0,RH.Part0=Torso,Torso,Torso,Torso
LS.Part1,RS.Part1,LH.Part1,RH.Part1=LA,RA,LL,RL

pcall(function() thesuit:Remove() end)

fTorso=Char.HumanoidRootPart tw=fTorso.RootJoint hw=Torso.Neck c2(tw,1,3,0,0,0,90,180,0)
la=qi{'Weld',Torso,Part0=Torso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)} ra=qi{'Weld',Torso,Part0=Torso,C0=cn(1.5,0.5,0),C1=cn(0,0.5,0)}
ll=qi{'Weld',Torso,Part0=Torso,C0=cn(-0.5,-1,0),C1=cn(0,1,0)} rl=qi{'Weld',Torso,Part0=Torso,C0=cn(0.5,-1,0),C1=cn(0,1,0)}

Arms = function(on)
	if on then
		LS.Part1=nil RS.Part1=nil
		la.Part0=Torso ra.Part0=Torso
		la.Part1=LA ra.Part1=RA 
		la.C0,la.C1=cn(-1.5,0.5,0),cn(0,0.5,0) 
		ra.C0,ra.C1=cn(1.5,0.5,0),cn(0,0.5,0)
	else
		LS.Parent,RS.Parent=Torso,Torso 
		LS.Part0=Torso 
		RS.Part0=Torso 
		LS.Part1=LA 
		RS.Part1=RA
		la.Part1=nil ra.Part1=nil
	end
end

Legs = function(on)
	if on then
		LH.Part1=nil RH.Part1=nil
		ll.Part0=Torso rl.Part0=Torso
		ll.Part1=LL rl.Part1=RL 
		ll.C0,ll.C1=cn(-0.5,-1,0),cn(0,1,0) 
		rl.C0,rl.C1=cn(0.5,-1,0),cn(0,1,0)
	else
		LH.Parent,RH.Parent=Torso,Torso 
		LH.Part0=Torso 
		RH.Part0=Torso 
		LH.Part1=LL 
		RH.Part1=RL
		ll.Part1=nil rl.Part1=nil
	end
end

WDesign=function(c)
ha=pa(Weapon,"","Block",0.35,1.5,0.35,false,false,0,0,c[1]) haw=weld(ha,Torso,ha,-0.4,0,0.65,0,rd(90),0) qi{"CylinderMesh",ha}
p1=pa(Weapon,"","Block",0.7,0.2,1,false,false,0,0,c[1]) weld(p1,ha,p1,0,0.75,0,0,0,0)
p2=pa(Weapon,"","Block",0.35,1.5,0.35,false,false,0,0,c[1]) weld(p2,ha,p2,0,1.25,-0.3,rd(-30),0,0) qi{"CylinderMesh",p2}
p3=pa(Weapon,"","Block",0.4,0.4,0.4,false,false,0,0,c[2]) weld(p3,p2,p3,0,0.75,0,rd(-90+30),0,0) qi{"SpecialMesh",p3,MeshType="Sphere"}
p4=pa(Weapon,"","Block",1,1,1,false,false,0,0,c[2]) weld(p4,p3,p4,0,0.6,0,0,0,0) qi{"SpecialMesh",p4,MeshId=ids.Spike,Scale=v3(0.18,1.5,0.18)}
p5=pa(Weapon,"","Block",0.4,0.4,0.4,false,false,0,0,c[2]) weld(p5,p3,p5,0,0,0,rd(90+50),0,0) qi{"SpecialMesh",p5,MeshType="Sphere"}
p6=pa(Weapon,"","Block",0.35,1.5,0.35,false,false,0,0,c[1]) weld(p6,p5,p6,0,0.75,0,0,0,0) qi{"CylinderMesh",p6}
p7=pa(Weapon,"","Block",0.4,0.4,0.4,false,false,0,0,c[2]) weld(p7,p6,p7,0,0.75,0,rd(-90),0,0) qi{"SpecialMesh",p7,MeshType="Sphere"}
p8=pa(Weapon,"","Block",1,1,1,false,false,0,0,c[2]) weld(p8,p7,p8,0,0.6,0,0,0,0) qi{"SpecialMesh",p8,MeshId=ids.Spike,Scale=v3(0.18,1.5,0.18)}
p9=pa(Weapon,"","Block",0.4,0.4,0.4,false,false,0,0,c[2]) weld(p9,p7,p9,0,0,0,rd(150),0,0) qi{"SpecialMesh",p9,MeshType="Sphere"}
p10=pa(Weapon,"","Block",0.35,1.5,0.35,false,false,0,0,c[1]) weld(p10,p9,p10,0,0.75,0,0,0,0) qi{"CylinderMesh",p10}
p11=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(p11,p10,p11,0,0.75,0,0,0,0) qi{"CylinderMesh",p11,Scale=v3(0.5,0.1,0.5)}
s1=pa(Weapon,"","Block",0,0,0,false,false,1,0) 
rope1=weld(s1,p11,s1,0,0,0,rd(70),0,0)
p12=pa(Weapon,"","Block",0,2.35,0,false,false,0,0,c[4]) weld(p12,s1,p12,0,p12.Size.Y/2,0,0,0,0) qi{"CylinderMesh",p12,Scale=v3(0.25,1,0.25)}
p13=pa(Weapon,"","Block",0.7,0.2,1,false,false,0,0,c[1]) weld(p13,ha,p13,0,-0.75,0,0,0,0)
p14=pa(Weapon,"","Block",0.35,1.5,0.35,false,false,0,0,c[1]) weld(p14,ha,p14,0,-1.25,-0.3,rd(30),0,0) qi{"CylinderMesh",p14}
p15=pa(Weapon,"","Block",0.4,0.4,0.4,false,false,0,0,c[2]) weld(p15,p14,p15,0,-0.75,0,rd(-90-30),0,0) qi{"SpecialMesh",p15,MeshType="Sphere"}
p16=pa(Weapon,"","Block",1,1,1,false,false,0,0,c[2]) weld(p16,p15,p16,0,0.6,0,0,0,0) qi{"SpecialMesh",p16,MeshId=ids.Spike,Scale=v3(0.18,1.5,0.18)}
p17=pa(Weapon,"","Block",0.4,0.4,0.4,false,false,0,0,c[2]) weld(p17,p15,p17,0,0,0,rd(-90-50),0,0) qi{"SpecialMesh",p17,MeshType="Sphere"}
p18=pa(Weapon,"","Block",0.35,1.5,0.35,false,false,0,0,c[1]) weld(p18,p17,p18,0,0.75,0,0,0,0) qi{"CylinderMesh",p18}
p19=pa(Weapon,"","Block",0.4,0.4,0.4,false,false,0,0,c[2]) weld(p19,p18,p19,0,0.75,0,rd(90),0,0) qi{"SpecialMesh",p19,MeshType="Sphere"}
p20=pa(Weapon,"","Block",1,1,1,false,false,0,0,c[2]) weld(p20,p19,p20,0,0.6,0,0,0,0) qi{"SpecialMesh",p20,MeshId=ids.Spike,Scale=v3(0.18,1.5,0.18)}
p21=pa(Weapon,"","Block",0.4,0.4,0.4,false,false,0,0,c[2]) weld(p21,p19,p21,0,0,0,rd(-150),0,0) qi{"SpecialMesh",p21,MeshType="Sphere"}
p22=pa(Weapon,"","Block",0.35,1.5,0.35,false,false,0,0,c[1]) weld(p22,p21,p22,0,0.75,0,0,0,0) qi{"CylinderMesh",p22}
p23=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[3]) weld(p23,p22,p23,0,0.75,0,0,0,0) qi{"CylinderMesh",p23,Scale=v3(0.5,0.1,0.5)}
s2=pa(Weapon,"","Block",0,0,0,false,false,1,0) 
rope2=weld(s2,p23,s2,0,0,0,rd(-70),0,0)
p24=pa(Weapon,"","Block",0,2.35,0,false,false,0,0,c[4]) weld(p24,s2,p24,0,p24.Size.Y/2,0,0,0,0) qi{"CylinderMesh",p24,Scale=v3(0.25,1,0.25)}
quiv=pa(Weapon,"","Block",1,1,1,false,false,0,0,c[1]) qw=weld(quiv,Torso,quiv,0,0,0,0,0,0) qw.C0=cn(0,-0.5,0.8)*ca(0,rd(90),0)*ca(rd(-10),0,0) qi{"SpecialMesh",quiv,MeshId=ids.Ring,Scale=v3(0.8,0.8,18)}
p25=pa(Weapon,"","Block",0.78,0.2,0.78,false,false,0,0,c[1]) weld(p25,quiv,p25,0,0,-1.4,rd(90),0,0) qi{"CylinderMesh",p25}
for i=1,10 do
arp=pa(Weapon,"","Block",0.2,3,0.2,false,false,0,0,c[5]) 
local arpw=weld(arp,p25,arp,0,0,0,0,0,0) arpw.C0=cn(rn(-2,2)/10,2.1,rn(-2,2)/10)*ca(0,rn(-5,5),0)*ca(rd(90),0,0)
qi{"SpecialMesh",arp,MeshId=ids.Arrow,TextureId=ids.ArrowT,Scale=v3(1.5,1.5,2.1)} 
end
for i=0,360,360/8 do 
local s1=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[4]) local s1w=weld(s1,p25,s1,0,0,0,0,0,0) qi{"BlockMesh",s1,Scale=v3(0.6,1,0.5)}
s1w.C0=cn(0,-0.01,0)*ca(0,rd(i),0)*cn(0.3,0,0)
end
s2=pa(Weapon,"","Block",0.5,0.2,0.5,false,false,0,0,c[4]) weld(s2,p25,s2,0,-0.01,0,0,0,0) qi{"CylinderMesh",s2}
s3=pa(Weapon,"","Block",0.2,0.2,0.35,false,false,0,0,c[1]) weld(s3,s2,s3,0,-0.01,0.05,0,0,0) qi{"BlockMesh",s3,Scale=v3(0.5,1,1)}
s4=pa(Weapon,"","Block",0.3,0.2,0.2,false,false,0,0,c[1]) weld(s4,s3,s4,0,0,-0.15,0,0,0) qi{"BlockMesh",s4,Scale=v3(1,1,0.5)}
for i,v in pairs(Weapon:GetChildren()) do v.CanCollide=false v.Name="Ignore" end
end

WDesign({"Navy blue","Really black","Really black","White","Brown"}) 
Arms(false) Legs(false)

BBD,BBT=0,{}
Dealt={20,40}

Fire = function(speed,sc,cff) 
q(function()
local bb = pa(workspace,"bullet","Block",0.2*sc,2*sc,0.2*sc,false,true,0,0,"Brown") 
bb.CanCollide=false 
qi{"SpecialMesh",bb,MeshId=ids.Arrow,TextureId=ids.ArrowT,Scale=v3(1.5,1.5,2.1)} 
bb.CFrame = cn(cff.p,fmouse.Hit.p)*ca(rd(180),0,0)

if ArrowType=="Fire" then
qi{"Fire",bb}
end
so(ids.ArrowShoot,ha,1,2)
for i=1,100 do 
Trail(1,bb,0,ArrowColour,0.2,cn(0,0,-1.5))
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,0,-0.5)).p)
if bhit and bhit.Name ~= "bullethole" and bhit.Name~="trail" and bhit.Name~="glowmesh" and bpos and (bpos - bb.Position).magnitude < speed then break end
if ArrowType=="Directional" then
bb.CFrame = cn(bb.Position,fmouse.Hit.p)*ca(rd(180),0,0)
bb.CFrame=bb.CFrame*cn(0,0,speed)
else
bb.CFrame=bb.CFrame*cn(0,0,speed)*ca(rd(-0.4),0,0)
end
wait()
end 
BBD=2
local Surface = DetectSurface(bpos,bhit)
local C = cn(bpos) * ca(bhit.CFrame:toEulerAnglesXYZ()) * Surface[2]
if Surface[1] == "Anything" then C = Surface[2] end
GlowMesh(false,ids.Crown,Weapon,v3(1.5,1,1.5),"Bright yellow",C*cn(0,0.3,0),0.25,1,0.06)
so(ids.ArrowHit,bb,1,15)
so(ids.Hit,bb,1,1)
deb:AddItem(bb,5)

bb.CFrame=bb.CFrame*cn(0,0,(bpos-bb.Position).magnitude)
if not bhit.Anchored then
bb.Anchored=false
stick(bb,bhit)
end

if GetHum(bhit) then
local vHum=GetHum(bhit)
if not vHum or BBD==0 or BBT[vHum.Parent] then return end
BBT[vHum.Parent]=1
Dmg(vHum,rn(Dealt[1],Dealt[2]))
if ArrowType=="Slow" then
q(function()
vHum.WalkSpeed=16*0.6
wait(5)
vHum.WalkSpeed=16
end)
end
if ArrowType=="Fire" then
local fiyah=qi{"Fire",bhit}
local fs=qi{'Sound',bb,SoundId=ids.Flame,Looped=true}
q(function()
fs:play()
for i=1,7 do
wait(1.5)
Dmg(vHum,rn(2,5))
end
fs:stop()
fs:remove()
fiyah:Destroy()
end)
end
local HMT=vHum.Parent:findFirstChild'Torso' 
if ArrowType=="Poison" then
q(function()
for i=1,15 do
wait(1)
Dmg(vHum,rn(2,3))
GlowMesh(false,"block",HMT,v3(1,1,1),"Alder",HMT.CFrame*cn(rn(-3,3),rn(1,3),rn(-3,3))*ca(rn(-5,5),rn(-5,5),rn(-5,5)),0,1,0.04)
end
end)
end
if ArrowType=="Frost" then
q(function()
local frostlol=pa(HMT.Parent,"Ice","Block",5,7,5,true,false,0.4,0,"Light blue") 
frostlol.CFrame=HMT.CFrame
weld(HMT,frostlol,HMT,0,0,0,0,0,0) 
vHum.WalkSpeed=0
wait(3)
vHum.WalkSpeed=16
frostlol:Destroy()
end)
end
if BBD==2 and HMT then 
if ArrowType~="Knockback" then
AddBV(10,cn(bb.Position,HMT.Position),HMT,0.15) 
else
AddBV(100,cn(bb.Position,HMT.Position),HMT,0.15) 
end
end
BBT[vHum.Parent]=nil


elseif GetHum(bhit.Parent) then
local vHum=GetHum(bhit.Parent)
if not vHum or BBD==0 or BBT[vHum.Parent] then return end
BBT[vHum.Parent]=1
Dmg(vHum,rn(Dealt[1],Dealt[2]))
if ArrowType=="Slow" then
q(function()
vHum.WalkSpeed=4
wait(3)
vHum.WalkSpeed=16
end)
end
if ArrowType=="Fire" then
local fiyah=qi{"Fire",bhit}
local fs=qi{'Sound',bb,SoundId=ids.Flame,Looped=true}
q(function()
fs:play()
for i=1,7 do
wait(1.5)
Dmg(vHum,rn(2,5))
end
fs:stop()
fs:remove()
fiyah:Destroy()
end)
end
local HMT=vHum.Parent:findFirstChild'Torso' 
if ArrowType=="Poison" then
q(function()
for i=1,15 do
wait(1)
Dmg(vHum,rn(2,3))
GlowMesh(false,"block",HMT,v3(1,1,1),"Alder",HMT.CFrame*cn(rn(-3,3),rn(1,3),rn(-3,3))*ca(rn(-5,5),rn(-5,5),rn(-5,5)),0,1,0.04)
end
end)
end
if ArrowType=="Frost" then
q(function()
local frostlol=pa(HMT.Parent,"Ice","Block",5,7,5,true,false,0.4,0,"Light blue") 
frostlol.CFrame=HMT.CFrame
weld(HMT,frostlol,HMT,0,0,0,0,0,0) 
vHum.WalkSpeed=0
wait(3)
vHum.WalkSpeed=16
frostlol:Destroy()
end)
end
if BBD==2 and HMT then 
if ArrowType~="Knockback" then
AddBV(10,cn(bb.Position,HMT.Position),HMT,0.15) 
else
AddBV(100,cn(bb.Position,HMT.Position),HMT,0.15) 
end 
end
BBT[vHum.Parent]=nil

elseif GetHum(bhit.Parent.Parent) then
local vHum=GetHum(bhit.Parent.Parent)
if not vHum or BBD==0 or BBT[vHum.Parent] then return end
BBT[vHum.Parent]=1
Dmg(vHum,rn(Dealt[1],Dealt[2]))
if ArrowType=="Slow" then
q(function()
vHum.WalkSpeed=4
wait(3)
vHum.WalkSpeed=16
end)
end
if ArrowType=="Fire" then
local fiyah=qi{"Fire",bhit}
local fs=qi{'Sound',bb,SoundId=ids.Flame,Looped=true}
q(function()
fs:play()
for i=1,7 do
wait(1.5)
Dmg(vHum,rn(2,5))
end
fs:stop()
fs:remove()
fiyah:Destroy()
end)
end
local HMT=vHum.Parent:findFirstChild'Torso' 
if ArrowType=="Poison" then
q(function()
for i=1,15 do
wait(1)
Dmg(vHum,rn(2,3))
GlowMesh(false,"block",HMT,v3(1,1,1),"Alder",HMT.CFrame*cn(rn(-3,3),rn(1,3),rn(-3,3))*ca(rn(-5,5),rn(-5,5),rn(-5,5)),0,1,0.04)
end
end)
end
if ArrowType=="Frost" then
q(function()
local frostlol=pa(HMT.Parent,"Ice","Block",5,7,5,true,false,0.4,0,"Light blue") 
frostlol.CFrame=HMT.CFrame
weld(HMT,frostlol,HMT,0,0,0,0,0,0) 
vHum.WalkSpeed=0
wait(3)
vHum.WalkSpeed=16
frostlol:Destroy()
end)
end
if BBD==2 and HMT then 
if ArrowType~="Knockback" then
AddBV(10,cn(bb.Position,HMT.Position),HMT,0.15) 
else
AddBV(100,cn(bb.Position,HMT.Position),HMT,0.15) 
end 
end
BBT[vHum.Parent]=nil
end
end) 
end 

function Trail(Loops,Part,Time,Color,Thickness,Offset) 
	q(function() 
		local oldpos=(Part.CFrame *Offset).p 
		local lopz2=0
		local function loltr() 
			local obp=(Part.CFrame *Offset).p 
			lopz2=lopz2 + 1
			local mag=(oldpos - obp).magnitude 
			local tr=pa(Part,"trail","Block",0,0,0,false,true,0,0,Color) 
			tr.CanCollide=false
			tr.CFrame=cn(oldpos,obp) 
			tr.CFrame=tr.CFrame + tr.CFrame.lookVector*(mag/2)
			local trm=qi{'CylinderMesh',tr,Scale=v3(5*Thickness,mag*5,5*Thickness)}
			q(function() 
				for i=5*Thickness,0,-5*Thickness/10 do 
					trm.Scale=v3(i,mag*5,i) 
					w() 
				end 
				tr:Remove'' 
			end)
			tr.CFrame=tr.CFrame*ca(rd(90),0,0) 
			oldpos=obp 
		end 
		repeat 
			loltr()
			wait(Time) 
		until lopz2 == Loops 
		loltr() 
	end) 
end

function Stance(speed)
c2(ra,speed,3,1.5,0.5,0,10,0,-15)
c2(la,speed,3,-1.5,0.5,0,-10,0,15)
c2(ll,speed,3,-0.5,-1,0,0,0,0)
c2(rl,speed,3,0.5,-1,0,0,0,0)
c2(hw,speed,3,0,1.5,0,0,-60,0)
c2(tw,speed,3,0,0,0,90,180,60)
c2(rope1,speed*5,3,0,0,0,0,0,0)
c2(rope2,speed*5,3,0,0,0,0,0,0)
Ani(haw,0,-0.9,0,-90,0,0,0,speed/2,1)
end

function Reset(speed)
c2(ra,speed,3,1.5,0.5,0,0,0,0)
c2(la,speed,3,-1.5,0.5,0,0,0,0)
c2(ll,speed,3,-0.5,-1,0,0,0,0)
c2(rl,speed,3,0.5,-1,0,0,0,0)
c2(hw,speed,3,0,1.5,0,0,0,0)
c2(tw,speed,3,0,0,0,90,180,0)
c2(rope1,speed*5,3,0,0,0,0,0,0)
c2(rope2,speed*5,3,0,0,0,0,0,0)
Ani(haw,-0.4,0,0.65,0,90,0,0,speed/2,1)
end

function Button1Down()
Holding=true
if Clip==1 and equip=="equipped" and anim=="" then
anim="AlmostPulling"
c2(tw,0.15,3,0,0,0,90,180,90)
c2(hw,0.15,3,0,1.5,0,0,-90,0)
c2(ra,0.15,3,0.5,0.5,-1,0,0,90)
qAni(arroww,0,-2.6,0,90,0,0,0,0.1,1)
qAni(haw,0,-0.9,0,-120,0,90,0,0.125/1.3,1)
c1(la,0.15,3,-1.5,0.5,-0.2,-30,0,90)
c2(rope1,0.25,3,0,0,0,25,0,0)
c2(rope2,0.25,3,0,0,0,-25,0,0)
c1(ra,0.2,3,1.5,0.5,-1,0,0,90)
anim="Pulling"
Hum.WalkSpeed=8
repeat wait() until not Holding
elseif Clip==0 and equip=="equipped" and anim=="" then
anim="Reloading"
Clip=Clip+1
c1(ra,0.1,3,1.5,0.5,0,35,0,15)
arrow=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Brown") 
qi{"SpecialMesh",arrow,MeshId=ids.Arrow,TextureId=ids.ArrowT,Scale=v3(1.5,1.5,2.1)} 
arroww=weld(arrow,p25,arrow,0,2.3,0,rd(90),0,0)
local ofs = RA.CFrame:toObjectSpace(arrow.CFrame) 
arroww.Part0=RA arroww.C0=ofs arroww.C1=cn(0,0,0) rAni(arroww)
qAni(arroww,0,-1,0,180,0,0,0,0.12,1)
c1(ra,0.15,3,1.5,0.5,0,10,0,-15)
anim=""
end
end

function Button1Up()
Holding=false
if anim=="Pulling" and equip=="equipped" then
anim="Firing"
Clip=Clip-1
pcall(function() arrow:remove() end)
Fire(5,1,ha.CFrame*cn(0,0,-3))
Hum.WalkSpeed=16
c2(ra,0.35,3,1.6,0.5,-1,0,0,150)
c2(rope1,0.35,3,0,0,0,0,0,0)
c1(rope2,0.35,3,0,0,0,0,0,0)
Stance(0.2)
anim=""
end
end

function KeyDown(key)
key=key:lower()
keys[key]=true
if key=="q" and anim=="" then
if ArrowType=="Normal" then
ArrowType="Fire"
ArrowColour="Bright red"
Dealt={20,30}
elseif ArrowType=="Fire" then
ArrowType="Poison"
ArrowColour="Alder"
Dealt={15,35}
elseif ArrowType=="Poison" then
ArrowType="Knockback"
ArrowColour="Bright yellow"
Dealt={15,25}
elseif ArrowType=="Knockback" then
ArrowType="Slow"
ArrowColour="Really black"
Dealt={10,15}
elseif ArrowType=="Slow" then
ArrowType="Frost"
ArrowColour="Light blue"
Dealt={5,10}
elseif ArrowType=="Frost" then
ArrowType="Directional"
ArrowColour="Bright violet"
Dealt={20,25}
elseif ArrowType=="Directional" then
ArrowType="Normal"
ArrowColour="White"
Dealt={20,40}
end

elseif key=="x" and equip=="equipped" and anim=="" then
local currentarrow=ArrowType
local currentcolour=ArrowColour
local currentdmg=Dealt
anim="BurstFire"
ArrowType="Burst"
ArrowColour="Navy blue"
Dealt={15,30}
repeat 
if Clip<=0 then
Clip=Clip+1
c1(ra,0.15,3,1.5,0.5,0,35,0,15)
arrow=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Brown") 
qi{"SpecialMesh",arrow,MeshId=ids.Arrow,TextureId=ids.ArrowT,Scale=v3(1.5,1.5,2.1)} 
arroww=weld(arrow,p25,arrow,0,2.3,0,rd(90),0,0)
local ofs = RA.CFrame:toObjectSpace(arrow.CFrame) 
arroww.Part0=RA arroww.C0=ofs arroww.C1=cn(0,0,0) rAni(arroww)
qAni(arroww,0,-1,0,180,0,0,0,0.15,1)
c1(ra,0.2,3,1.5,0.5,0,10,0,-15)
end

c2(tw,0.25,3,0,0,0,90,180,90)
c2(hw,0.25,3,0,1.5,0,0,-90,0)
c2(ra,0.25,3,0.5,0.5,-1,0,0,90)
qAni(arroww,0,-2.6,0,90,0,0,0,0.15,1)
qAni(haw,0,-0.9,0,-120,0,90,0,0.125,1)
c1(la,0.2,3,-1.5,0.5,-0.2,-30,0,90)
c2(rope1,0.25,3,0,0,0,25,0,0)
c2(rope2,0.25,3,0,0,0,-25,0,0)
c1(ra,0.25,3,1.5,0.5,-1,0,0,90)

Clip=Clip-1
pcall(function() arrow:remove() end)
Fire(5,1,ha.CFrame*cn(0,0,-3))
c2(ra,0.35,3,1.6,0.5,-1,0,0,150)
c2(rope1,0.35,3,0,0,0,0,0,0)
c1(rope2,0.35,3,0,0,0,0,0,0)
until keys.x==false
Stance(0.2)
anim=""
ArrowType=currentarrow
ArrowColour=currentcolour
Dealt=currentdmg
end
end

function KeyUp(key)
key=key:lower()
keys[key]=false
end

Tool.Selected:connect(function(mouse)
fmouse=mouse mouse.Icon=ids.Icon
if equip=="unequipped" and anim=="" then
equip="equipping" Arms(true) c1(la,0.1,3,-1.2,0.5,0,25,0,-40)
local ofs = LA.CFrame:toObjectSpace(ha.CFrame) 
haw.Part0=LA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
Stance(0.2) equip="equipped"
end
mouse.Button1Down:connect(Button1Down)
mouse.Button1Up:connect(Button1Up)
mouse.KeyDown:connect(KeyDown)
mouse.KeyUp:connect(KeyUp)
end)

Tool.Deselected:connect(function()
fmouse=nil
if equip=="equipped" and anim=="" then
equip="unequipping" 
local ofs = Torso.CFrame:toObjectSpace(ha.CFrame)
haw.Part0=Torso haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)  c2(la,0.1,3,-1.2,0.5,0,25,0,-40) Ani(haw,-0.4,0,0.65,0,90,0,0,0.05,1)
Reset(0.1)
Arms(false) Legs(false) equip="unequipped"
end
end)

tbtext=qi{
"TextLabel",
Gui,
Size=ud(0.16,0,0.05,0),
Position=ud(0.5-0.08,0,0.05,0),
BackgroundColor3=bc("Navy blue").Color,
BorderColor3=bc("Really black").Color,
TextStrokeTransparency=0,
FontSize="Size18",
TextColor3=bc("White").Color
}

Gyro=qi{"BodyGyro",fTorso,D=50,P=1500,Name="TB_Gyro"}
game:GetService("RunService").Stepped:connect(function()
tbtext.Text="Mode: "..ArrowType.." arrow"
if fmouse~=nil then  
Gyro.maxTorque=v3(1/0,1/0,1/0)
Gyro.cframe = cn(fTorso.Position,v3(fmouse.hit.p.x,fTorso.Position.y,fmouse.hit.p.z)) 
else
Gyro.maxTorque = v3(0,0,0) 
end 
end)