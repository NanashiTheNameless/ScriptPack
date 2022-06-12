script:ClearAllChildren()


loadstring(_G[" rmdx "])()




Player=game:GetService("Players").LocalPlayer


Char=Player.Character


Backpack=Player.Backpack


PlayerGui=Player.PlayerGui


Torso=Char.Torso


Head=Char.Head


Hum=Char.Humanoid


Cam=workspace.CurrentCamera


Tn="Enma-S"




pcall(function() Backpack[Tn]:Remove() end)


pcall(function() Cam[Tn]:Remove() end)


pcall(function() thesuit=Char[''] end)


pcall(function() thesuit[Tn]:Remove() end)


pcall(function() Char.Block:Remove() end)


pcall(function() PlayerGui[Tn]:Remove() end)




CModel=qi{'Model',Cam,Name=Tn}


Tool=qi{'HopperBin',Player.Backpack,Name=Tn}


Suit=qi{'Model',Char,Name=''}


Weapon=qi{'Model',Suit,Name=Tn}


Gui=qi{'ScreenGui',PlayerGui,Name=Tn}


Block=qi{'NumberValue',Char,Name='Block',Value=0}




equip="unequipped"


anim=""


keys={}


dtap={}


fmouse=nil


Gyr0z=false


Combo=0




ids = {}


ids.Chakram = 18430887


ids.chakram = 47260990


ids.Diamond = 9756362


ids.Slash = 10209645


ids.Slash2 = 46760716


ids.Slash3 = 10209640


ids.Shoot = 2691586


ids.Shoot2 = 10209842


ids.Ring =  3270017 


ids.Crown = 20329976


ids.Icon = 52611635


ids.Flame = 31760113


ids.Spike = 1033714


ids.Block = 'rbxasset://sounds\\metal.ogg'


ids.Hit = 10209590




for i,v in pairs(ids) do 


if type(v)=='number' then 


ids[i]='http://www.roblox.com/asset/?id='..v


end


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




Head.face.Transparency=0 


Head.Transparency=1 Torso.Transparency=1


fTorso=pa(Suit,"FTorso","Block",2,2,1,false,false,0,0,Torso.BrickColor.Name) neck=Torso.Neck


tw=weld(fTorso,Torso,fTorso,0,0,0,0,0,0) qi{"BlockMesh",fTorso}


fHead=pa(Suit,"FHead","Block",2,1,1,false,false,0,0,Head.BrickColor.Name)


hw=weld(fHead,fTorso,fHead,0,1.5,0,0,0,0) qi{"SpecialMesh",fHead,Scale=v3(1.15,1.15,1.15)} Head.face:Clone().Parent=fHead Head.face.Transparency=1


la=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)} ra=qi{'Weld',fTorso,Part0=fTorso,C0=cn(1.5,0.5,0),C1=cn(0,0.5,0)}


ll=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-0.5,-1,0),C1=cn(0,1,0)} rl=qi{'Weld',fTorso,Part0=fTorso,C0=cn(0.5,-1,0),C1=cn(0,1,0)}


newhats(Char,fHead,Head) ClearClass(Char,"Hat") Hum.WalkSpeed=20




Armz=false


Legz=false


Arms = function(on) Armz=on


if on then


LS.Part1=nil RS.Part1=nil


la.Part0=fTorso ra.Part0=fTorso


la.Part1=LA ra.Part1=RA 


la.C0,la.C1=cn(-1.5,0.5,0),cn(0,0.5,0) 


ra.C0,ra.C1=cn(1.5,0.5,0),cn(0,0.5,0)


else


LS.Parent,RS.Parent=fTorso,fTorso LS.Part0=fTorso RS.Part0=fTorso LS.Part1=LA RS.Part1=RA


la.Part1=nil ra.Part1=nil


end


end




Legs = function(on) Legz=on


if on then


LH.Part1=nil RH.Part1=nil


ll.Part0=fTorso rl.Part0=fTorso


ll.Part1=LL rl.Part1=RL 


ll.C0,ll.C1=cn(-0.5,-1,0),cn(0,1,0) 


rl.C0,rl.C1=cn(0.5,-1,0),cn(0,1,0)


else


LH.Parent,RH.Parent=fTorso,fTorso LH.Part0=fTorso RH.Part0=fTorso LH.Part1=LL RH.Part1=RL


ll.Part1=nil rl.Part1=nil


end


end


Arms'' Legs''




WDesign=function()


ha=pa(Weapon,"","Block",1,1,1,false,false,1,0) haw=weld(ha,RA,ha,0.5,-0.5,0,rd(30),rd(90),0)


p=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Really black") pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,Scale=v3(0.6,0.6,2),MeshId=ids.Chakram}


chak=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Alder") chakw=weld(chak,ha,chak,0,0,0,0,0,0) qi{"SpecialMesh",chak,Scale=v3(1,1,2),MeshId=ids.chakram}


for i=0,360,360/3 do


p=pa(Weapon,"","Block",0.4,0.6,0.2,false,false,0,0,"Really black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"BlockMesh",p} 


pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(0.7,0,0)




p=pa(Weapon,"","Block",0.2,0.3,0.3,false,false,0,0,"Really black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshType="Wedge",Scale=v3(1,1,1)} 


pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1,0,0)*ca(0,rd(90),0)*cn(0,0.15,0.05)*ca(rd(90),0,0)




p=pa(Weapon,"","Block",0.2,0.3,0.3,false,false,0,0,"Really black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshType="Wedge",Scale=v3(1,1,1)} 


pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1,0,0)*ca(0,rd(90),0)*cn(0,-0.15,0.05)*ca(rd(90),0,0)*ca(0,rd(180),0)




p=pa(Weapon,"","Block",0.4,1,0.2,false,false,0,0,"Really black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"BlockMesh",p}


pw.C0=ca(0,0,rd(30))*cn(0,0,0)*ca(0,0,rd(i))*cn(0,1.25,0)




p=pa(Weapon,"","Block",0.2,0.4,0.4,false,false,0,0,"Really black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshType="Wedge",Scale=v3(1,1,1)} 


pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1.9,0,0)*ca(0,rd(90),0)*cn(0,0,0.05)*ca(rd(90),0,0)*ca(0,rd(180),0)




p=pa(Weapon,"","Block",0.2,0.4,0.4,false,false,0,0,"Really black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshType="Wedge",Scale=v3(1,1,1)} 


pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1.9,0,0)*ca(0,rd(90),0)*cn(0,0.4,0.05-0.4)*ca(rd(270),0,0)*ca(0,rd(180),0)




p=pa(Weapon,"Blade"..tostring(i),"Block",0.2,0.4,1.5,false,false,0,0,"Really black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshType="Wedge",Scale=v3(1,1,1)} 


pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1.9,0,0)*ca(0,rd(90),0)*cn(0,0.95,0.05)*ca(rd(90),0,0)*ca(0,0,0)




p=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Alder") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshId=ids.Diamond,Scale=v3(0.1,0.3,0.3)} 


pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1.9,0,0)*ca(0,rd(90),0)*cn(0.1,0.2,0.05-0.2)*ca(0,rd(180),0)*ca(rd(45),0,0)




p=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Alder") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshId=ids.Diamond,Scale=v3(0.1,0.3,0.3)} 


pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1.9,0,0)*ca(0,rd(90),0)*cn(-0.1,0.2,0.05-0.2)*ca(0,rd(180),0)*ca(rd(45),0,0)


end


for i,v in pairs(Weapon:GetChildren()) do v.CanCollide=false end


end




WDesign() Arms(false) Legs(false)




Dealt={4,11}


BBD,BBT=0,{}


DealtMul=1




BladeHit=function(hit)


local Hum=GetHum(hit)


if not Hum or BBD==0 or BBT[Hum.Parent] then return end


BBT[Hum.Parent]=1


Dmg(Hum,rn(Dealt[1],Dealt[2])*DealtMul)


local HMT=Hum.Parent:findFirstChild'Torso' 


if BBD==2 and HMT then AddBV(25,cn(Torso.Position,HMT.Position),HMT,0.15) end


so(ids.Hit,HMT,1,1)


wait(0.05)


BBT[Hum.Parent]=nil


end




for i,v in pairs(Weapon:GetChildren()) do v.Touched:connect(BladeHit) end




a,b,c=haw.C0:toEulerAnglesXYZ() a,b,c=rd(a),rd(b),rd(c)


HFS={haw.C0.x,haw.C0.y,haw.C0.z,a,b,c}




function Stance(speed)


c2(ra,speed,3,1.5,0.5,0,20,0,-20)


c2(la,speed,3,-1.5,0.5,0,-20,0,20)


c2(ll,speed,3,-0.5,-1,0,0,0,0)


c2(rl,speed,3,0.5,-1,0,0,0,0)


c2(hw,speed,3,0,1.5,0,0,30,0)


c2(tw,speed,3,0,0,0,0,-30,0)


c2(neck,speed,3,0,1.5,0,0,0,0)


Ani(haw,0,-1.3,0,0,90,30,0,speed/2,1)


end




function Reset(speed)


c2(ra,speed,3,1.5,0.5,0,0,0,0)


c2(la,speed,3,-1.5,0.5,0,0,0,0)


c2(ll,speed,3,-0.5,-1,0,0,0,0)


c2(rl,speed,3,0.5,-1,0,0,0,0)


c2(hw,speed,3,0,1.5,0,0,0,0)


c2(tw,speed,3,0,0,0,0,0,0)


c2(neck,speed,3,0,1.5,0,0,0,0)


Ani(haw,0.5,-0.5,0,30,90,0,0,speed/2,1)


end




function Combo1()


Combo=0.5


anim="Melee"


c2(la,0.1,3,-1.5,0.7,-0.2,-135,0,-45)


c1(hw,0.1,3,0,1.5,0,-25,-30,0)


wait(0.07)


BBD=2


so(ids.Slash3,ha,1,1.1)


c2(la,0.3,3,-1,0.7,-0.3,-45,0,-45)


c1(hw,0.3,3,0,1.5,0,15,10,0)


c2(hw,0.1,3,0,1.5,0,0,0,0) BBD=0


anim=""


Combo=1


end




function Combo2()


Combo=1.5


anim="Melee"


c1(la,0.1,3,-0.5,0.5,-1,0,180,-90)


wait(0.08)


BBD=2


so(ids.Slash3,ha,1,1.1)


c2(la,0.25,3,-1.5,0.5,-0.2,160,180,-90)


c1(hw,0.25,3,0,1.5,0,0,-60,0)


BBD=0


anim=""


Combo=2


end




function Break()


Combo=-0.5


Stance(0.1)


anim=""


Combo=0


end




function Button1Down()


if equip=="equipped" and anim=="" and Combo==0 then


anim="Throw"


local lolunit=math.deg((Torso.Position-fmouse.Hit.p).unit.y)


c2(tw,0.1,3,0,0,0,0,-50,0)


c2(hw,0.1,3,0,1.5,0,lolunit,50,0)


c1(la,0.1,3,-1.5,0.5,0.25,30,0,90+lolunit)


wait(0.25)


c2(tw,0.25,3,0,0,0,0,50,0)


c2(hw,0.25,3,0,1.5,0,lolunit,-50,0)


c1(la,0.25,3,-1.5,0.5,-0.5,-40,0,90-lolunit)


BBD=2 


for i,v in pairs(Weapon:GetChildren()) do


if v.Name=="Blade" then 


Trail2(10,v,0.03,tostring(v.BrickColor),0.1,cn(0,0.5,0))


end


end


q(function() for i=1,8 do so(ids.Slash3,ha,1,1.5) wait(0.05) end end)


Ani(haw,0,-rn(15,30),0,0,90,1080,0,0.07,1)


Ani(haw,0,-1.3,0,0,90,30,0,0.11,1)


BBD=0


Stance(0.1)


anim="" 


end


end




function KeyDown(key)


key=key:lower()


keys[key]=true


local oldtap=dtap[key] or 0


dtap[key]=tick()


if key=="f" and equip=="equipped" and anim=="" then 


anim="Blocking" Block.Value=3 Hum.WalkSpeed=8


c2(la,0.1,3,-1.25,0.5,0,-55,0,-55) c1(ra,0.1,3,1,0.5,-0.5,50,-180,45)


local ofs = RA.CFrame:toObjectSpace(ha.CFrame)


haw.Part0=RA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)


qAni(haw,0.5,-0.5,0,30,90,0,0,0.1/1.3,1)


c2(la,0.07,3,-1.5,0.5,0,-20,0,20)


c2(tw,0.07,3,0,0,0,0,-70,0)


c2(hw,0.07,3,0,1.5,0,0,70,0)


c1(ra,0.07,3,1.5,0.4,-0.2,-170,0,10)


anim="Block" 


so(ids.Block,ha,1,1)


repeat wait() until Block.Value<=0


if anim=="Block" then


anim="Unblocking" Block.Value=0 Hum.WalkSpeed=20


c2(la,0.1,3,-1.25,0.5,0,-55,0,-55) c1(ra,0.1,3,1,0.5,-0.5,50,-180,45)


local ofs = LA.CFrame:toObjectSpace(ha.CFrame) 


haw.Part0=LA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw) qAni(haw,0,-1.3,0,0,90,30,0,0.1,1)


Stance(0.2) anim="" 


end




elseif key=="e" and equip=="equipped" and anim=="" then


if Combo==0 then


Combo1()


q(function()


wait(0.5)


if Combo==1 then


Break()


end


end)


elseif Combo==1 then


Combo2()


q(function()


wait(0.5)


if Combo==2 then


Break()


end


end)


end


end


end




function KeyUp(key)


key=key:lower()


keys[key]=false


if key=="f" and equip=="equipped" and anim=="Block" then


anim="Unblocking" Block.Value=0 Hum.WalkSpeed=20


c2(la,0.1,3,-1.25,0.5,0,-55,0,-55) c1(ra,0.1,3,1,0.5,-0.5,50,-180,45)


local ofs = LA.CFrame:toObjectSpace(ha.CFrame) 


haw.Part0=LA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw) qAni(haw,0,-1.3,0,0,90,30,0,0.1,1)


Stance(0.2) anim=""


end


end




Tool.Selected:connect(function(mouse)


fmouse=mouse Gyr0z=true


if equip=="unequipped" and anim=="" then


equip="equipping" Arms(true) c2(la,0.1,3,-1.25,0.5,0,-55,0,-55) c1(ra,0.1,3,1,0.5,-0.5,50,-180,45)


local ofs = LA.CFrame:toObjectSpace(ha.CFrame) 


haw.Part0=LA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw) qAni(haw,0,-1.3,0,0,90,30,0,0.1,1)


Stance(0.2) equip="equipped"


end


mouse.Button1Down:connect(Button1Down)


mouse.KeyDown:connect(KeyDown)


mouse.KeyUp:connect(KeyUp)


end)




Tool.Deselected:connect(function()


fmouse=nil Gyr0z=false


if equip=="equipped" and anim=="" then


equip="unequipping" c2(la,0.1,3,-1.25,0.5,0,-55,0,-55) c1(ra,0.1,3,1,0.5,-0.5,50,-180,45)


local ofs = RA.CFrame:toObjectSpace(ha.CFrame)


haw.Part0=RA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)


qAni(haw,0.5,-0.5,0,30,90,0,0,0.1/1.3,1) Reset(0.1)


Arms(false) Legs(false) equip="unequipped"


end


end)




Gyro=qi{"BodyGyro",Torso,D=50,P=1500}


i=0 


game:GetService("RunService").Stepped:connect(function()


if Gyr0z==true then  


Gyro.maxTorque=v3(1/0,1/0,1/0)


Gyro.cframe = cn(Torso.Position,v3(fmouse.hit.p.x,Torso.Position.y,fmouse.hit.p.z)) 


else 


Gyro.maxTorque = v3(0,0,0) 


end 


i=i+3


chakw.C0=ca(0,0,rd(i))


if anim=="Block" then


haw.C0=cn(0.5,-0.5,0)*ca(0,rd(90),rd(i*10))


end


end)
