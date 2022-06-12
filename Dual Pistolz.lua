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
Tn="Dual-Pistols"
 
pcall(function() Backpack[Tn]:Remove() end)
pcall(function() Cam[Tn]:Remove() end)
pcall(function() thesuit=Char[''] end)
pcall(function() Char.Block:Remove() end)
pcall(function() PlayerGui[Tn]:Remove() end)
 
CModel=qi{'Model',Cam,Name=Tn}
Tool=qi{'HopperBin',Player.Backpack,Name=Tn}
Suit=qi{'Model',Char,Name=''}
Gui=qi{'ScreenGui',PlayerGui,Name=Tn}
 
equip="unequipped"
anim=""
animb=""
animc=""
keys={}
buttons={}
buttons["1"]=0
buttons["2"]=0
Last = 1
coolt=0.2
lastt=0
Gyr0z=false
b1d=false
b2d=false
Prone=false
lastctr=""
 
ids = {}
ids.Slash = 10209645
ids.Slash2 = 46760716
ids.Shoot = 2691586
ids.Shoot2 = 10209842
ids.Ring =  3270017
ids.Crown = 20329976
ids.Icon = 52611635
ids.Flame = 31760113
ids.Spike = 1033714
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
fTorso=pa(Suit,"FTorso","Block",2,2,1,false,false,0,0,Torso.BrickColor.Name)
tw=weld(fTorso,Torso,fTorso,0,0,0,0,0,0) qi{"BlockMesh",fTorso}
fHead=pa(Suit,"FHead","Block",2,1,1,false,false,0,0,Head.BrickColor.Name)
hw=weld(fHead,fTorso,fHead,0,1.5,0,0,0,0) qi{"SpecialMesh",fHead,Scale=v3(1.15,1.15,1.15)}Head.face:Clone().Parent=fHead Head.face.Transparency=1
la=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-1.5,0.5,0),C1=cn(0,0.5,0)}ra=qi{'Weld',fTorso,Part0=fTorso,C0=cn(1.5,0.5,0),C1=cn(0,0.5,0)}
ll=qi{'Weld',fTorso,Part0=fTorso,C0=cn(-0.5,-1,0),C1=cn(0,1,0)}rl=qi{'Weld',fTorso,Part0=fTorso,C0=cn(0.5,-1,0),C1=cn(0,1,0)}
newhats(Char,fHead,Head) ClearClass(Char,"Hat")
 
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
belt=pa(Suit,"","Block",2.1,0.2,1.1,false,false,0,0,"Brown") weld(belt,fTorso,belt,0,-1,0,0,0,0)
pack=pa(Suit,"","Block",0.4,1.35,0.8,false,false,0,0,"Brown") weld(pack,belt,pack,1.15,-1.25/2,0,0,0,0)
pack2=pa(Suit,"","Block",0.2,0,0.8/2+0.8/4,false,false,0,0,"Really black")weld(pack2,pack,pack2,0,1.35/2,0,0,0,0) qi{"BlockMesh",pack2,Scale=v3(1,0.01,1)}
pack2=pa(Suit,"","Block",0.4,1.35,0.8,false,false,0,0,"Brown")weld(pack2,belt,pack2,-1.15,-1.25/2,0,0,0,0)
pack22=pa(Suit,"","Block",0.2,0,0.8/2+0.8/4,false,false,0,0,"Really black")weld(pack22,pack2,pack22,0,1.35/2,0,0,0,0) qi{"BlockMesh",pack22,Scale=v3(1,0.01,1)}
ha=pa(Suit,"","Block",0,0,0,false,false,1,0) haw=weld(ha,pack,ha,0,0.9,0.425,rd(-90),0,0)
hp1=pa(Suit,"","Block",0.2,1,0.4,false,false,0,0) weld(hp1,ha,hp1,0,0,0,rd(-8),0,0) qi{"BlockMesh",hp1}
hp=pa(Suit,"","Block",0.2,0.2,0.4,false,false,0,0) weld(hp,ha,hp,0,-0.5,0.065,0,0,0)qi{"BlockMesh",hp,Scale=v3(1,0.5,1)}
hp=pa(Suit,"","Block",0.21,0.9,0.3,false,false,0,0,"Black") weld(hp,hp1,hp,0,0,0,0,0,0)qi{"BlockMesh",hp}
hp=pa(Suit,"","Block",0.2,0.2,0.4,false,false,0,0) weld(hp,ha,hp,0,0.5,-0.065,0,0,0)qi{"BlockMesh",hp,Scale=v3(1,0.5,1)}
hp=pa(Suit,"","Block",0.2,0.22,0.2,false,false,0,0) weld(hp,hp1,hp,0,0.25,0,0,0,rd(-90))qi{"CylinderMesh",hp,Scale=v3(0.5,1,0.5)}
hp=pa(Suit,"","Block",0.2,0.22,0.2,false,false,0,0) weld(hp,hp1,hp,0,-0.25,0,0,0,rd(-90))qi{"CylinderMesh",hp,Scale=v3(0.5,1,0.5)}
hp=pa(Suit,"","Block",0.2,0.2,1.25,false,false,0,0) weld(hp,ha,hp,0,0.5,-0.625+0.2,0,0,0)qi{"BlockMesh",hp}
hp=pa(Suit,"","Block",0.2,1.25,0.2,false,false,0,0) weld(hp,ha,hp,0,0.4,-0.625+0.2,rd(-90),0,0)qi{"CylinderMesh",hp}
hp=pa(Suit,"","Block",0.25,0.15,1.35,false,false,0,0) weld(hp,ha,hp,0,0.6,-0.625+0.2-0.05,0,0,0)qi{"BlockMesh",hp}
hp=pa(Suit,"","Block",0.2,1,0.25,false,false,0,0) weld(hp,ha,hp,0,0.1,-0.3,0,0,0)qi{"BlockMesh",hp,Scale=v3(0.25,0.04,1)}
hp=pa(Suit,"","Block",0.2,1,0.25,false,false,0,0) weld(hp,ha,hp,0,0.225,-0.425,rd(-100),0,0)qi{"BlockMesh",hp,Scale=v3(0.25,0.04,1)}
hp=pa(Suit,"","Block",0.2,1,0.2,false,false,0,0) weld(hp,ha,hp,0,0.225,-0.325,rd(-100),0,0)qi{"BlockMesh",hp,Scale=v3(0.25,0.04,0.75)}
hp=pa(Suit,"","Block",0.2,0.2,0.2,false,false,0,0) weld(hp,ha,hp,0,0.45,-0.625-0.45,rd(-90),0,0)qi{"CylinderMesh",hp,Scale=v3(0.75,0.75,0.75)}
hp=pa(Suit,"","Block",0.2,0.2,0.2,false,false,0,0) weld(hp,ha,hp,0,0.525,-0.625-0.45,rd(-90),0,0)qi{"BlockMesh",hp,Scale=v3(0.75,0.75,0.75)}
hp=pa(Suit,"","Block",0.25,0.15,1.35,false,false,0,0) weld(hp,ha,hp,0,0.6,-0.625+0.2-0.05,0,0,0)qi{"BlockMesh",hp}
hp=pa(Suit,"","Block",0.25,0.3,0.25,false,false,0,0) weld(hp,ha,hp,0,0.7,0.05,rd(-90),0,0)qi{"CylinderMesh",hp}
b1=pa(Suit,"","Block",0.2,1.4,0.2,false,false,0,0) weld(b1,ha,b1,0,0.7,-0.5,rd(-90),0,0)qi{"CylinderMesh",b1,Scale=v3(0.6,1,0.6)}
hp=pa(Suit,"","Block",0.25,0.2,0.25,false,false,0,0) weld(hp,ha,hp,0,0.7,-1.05,rd(-90),0,0)qi{"CylinderMesh",hp}
hp=pa(Suit,"","Block",0.2,0.2,0.2,false,false,0,0,"Really black") weld(hp,ha,hp,0,0.7,-1.2,rd(-90),0,0)qi{"CylinderMesh",hp,Scale=v3(0.4,0.01,0.4)}
ha2=pa(Suit,"","Block",0,0,0,false,false,1,0) haw2=weld(ha2,pack2,ha2,0,0.9,0.425,rd(-90),0,0)
hp1=pa(Suit,"","Block",0.2,1,0.4,false,false,0,0) weld(hp1,ha2,hp1,0,0,0,rd(-8),0,0) qi{"BlockMesh",hp1}
hp=pa(Suit,"","Block",0.2,0.2,0.4,false,false,0,0) weld(hp,ha2,hp,0,-0.5,0.065,0,0,0)qi{"BlockMesh",hp,Scale=v3(1,0.5,1)}
hp=pa(Suit,"","Block",0.21,0.9,0.3,false,false,0,0,"Black") weld(hp,hp1,hp,0,0,0,0,0,0)qi{"BlockMesh",hp}
hp=pa(Suit,"","Block",0.2,0.2,0.4,false,false,0,0) weld(hp,ha2,hp,0,0.5,-0.065,0,0,0)qi{"BlockMesh",hp,Scale=v3(1,0.5,1)}
hp=pa(Suit,"","Block",0.2,0.22,0.2,false,false,0,0) weld(hp,hp1,hp,0,0.25,0,0,0,rd(-90))qi{"CylinderMesh",hp,Scale=v3(0.5,1,0.5)}
hp=pa(Suit,"","Block",0.2,0.22,0.2,false,false,0,0) weld(hp,hp1,hp,0,-0.25,0,0,0,rd(-90))qi{"CylinderMesh",hp,Scale=v3(0.5,1,0.5)}
hp=pa(Suit,"","Block",0.2,0.2,1.25,false,false,0,0) weld(hp,ha2,hp,0,0.5,-0.625+0.2,0,0,0)qi{"BlockMesh",hp}
hp=pa(Suit,"","Block",0.2,1.25,0.2,false,false,0,0) weld(hp,ha2,hp,0,0.4,-0.625+0.2,rd(-90),0,0)qi{"CylinderMesh",hp}
hp=pa(Suit,"","Block",0.25,0.15,1.35,false,false,0,0) weld(hp,ha2,hp,0,0.6,-0.625+0.2-0.05,0,0,0)qi{"BlockMesh",hp}
hp=pa(Suit,"","Block",0.2,1,0.25,false,false,0,0) weld(hp,ha2,hp,0,0.1,-0.3,0,0,0)qi{"BlockMesh",hp,Scale=v3(0.25,0.04,1)}
hp=pa(Suit,"","Block",0.2,1,0.25,false,false,0,0) weld(hp,ha2,hp,0,0.225,-0.425,rd(-100),0,0)qi{"BlockMesh",hp,Scale=v3(0.25,0.04,1)}
hp=pa(Suit,"","Block",0.2,1,0.2,false,false,0,0) weld(hp,ha2,hp,0,0.225,-0.325,rd(-100),0,0)qi{"BlockMesh",hp,Scale=v3(0.25,0.04,0.75)}
hp=pa(Suit,"","Block",0.2,0.2,0.2,false,false,0,0) weld(hp,ha2,hp,0,0.45,-0.625-0.45,rd(-90),0,0)qi{"CylinderMesh",hp,Scale=v3(0.75,0.75,0.75)}
hp=pa(Suit,"","Block",0.2,0.2,0.2,false,false,0,0) weld(hp,ha2,hp,0,0.525,-0.625-0.45,rd(-90),0,0)qi{"BlockMesh",hp,Scale=v3(0.75,0.75,0.75)}
hp=pa(Suit,"","Block",0.25,0.15,1.35,false,false,0,0) weld(hp,ha2,hp,0,0.6,-0.625+0.2-0.05,0,0,0)qi{"BlockMesh",hp}
hp=pa(Suit,"","Block",0.25,0.3,0.25,false,false,0,0) weld(hp,ha2,hp,0,0.7,0.05,rd(-90),0,0)qi{"CylinderMesh",hp}
b2=pa(Suit,"","Block",0.2,1.4,0.2,false,false,0,0) weld(b2,ha2,b2,0,0.7,-0.5,rd(-90),0,0)qi{"CylinderMesh",b2,Scale=v3(0.6,1,0.6)}
hp=pa(Suit,"","Block",0.25,0.2,0.25,false,false,0,0) weld(hp,ha2,hp,0,0.7,-1.05,rd(-90),0,0)qi{"CylinderMesh",hp}
hp=pa(Suit,"","Block",0.2,0.2,0.2,false,false,0,0,"Really black") weld(hp,ha2,hp,0,0.7,-1.2,rd(-90),0,0)qi{"CylinderMesh",hp,Scale=v3(0.4,0.01,0.4)}
end
 
CDesign=function()
ccra=pa(CModel,"Right Arm","Block",0.2,0.2,0.2,false,false,0,0,RA.BrickColor.Name)weld(ccra,RA,ccra,0,0,0,0,0,0) qi{"BlockMesh",ccra,Scale=v3(5,10,5)}
ccla=pa(CModel,"Left Arm","Block",0.2,0.2,0.2,false,false,0,0,LA.BrickColor.Name)weld(ccla,LA,ccla,0,0,0,0,0,0) qi{"BlockMesh",ccla,Scale=v3(5,10,5)}
 
camha=pa(CModel,"","Block",0,0,0,false,false,1,0) weld(camha,ha,camha,0,0,0,0,0,0)
hp1=pa(CModel,"","Block",0.2,1,0.4,false,false,0,0) weld(hp1,camha,hp1,0,0,0,rd(-8),0,0)qi{"BlockMesh",hp1}
hp=pa(CModel,"","Block",0.2,0.2,0.4,false,false,0,0) weld(hp,camha,hp,0,-0.5,0.065,0,0,0)qi{"BlockMesh",hp,Scale=v3(1,0.5,1)}
hp=pa(CModel,"","Block",0.21,0.9,0.3,false,false,0,0,"Black") weld(hp,hp1,hp,0,0,0,0,0,0)qi{"BlockMesh",hp}
hp=pa(CModel,"","Block",0.2,0.2,0.4,false,false,0,0) weld(hp,camha,hp,0,0.5,-0.065,0,0,0)qi{"BlockMesh",hp,Scale=v3(1,0.5,1)}
hp=pa(CModel,"","Block",0.2,0.22,0.2,false,false,0,0) weld(hp,hp1,hp,0,0.25,0,0,0,rd(-90))qi{"CylinderMesh",hp,Scale=v3(0.5,1,0.5)}
hp=pa(CModel,"","Block",0.2,0.22,0.2,false,false,0,0) weld(hp,hp1,hp,0,-0.25,0,0,0,rd(-90))qi{"CylinderMesh",hp,Scale=v3(0.5,1,0.5)}
hp=pa(CModel,"","Block",0.2,0.2,1.25,false,false,0,0) weld(hp,camha,hp,0,0.5,-0.625+0.2,0,0,0)qi{"BlockMesh",hp}
hp=pa(CModel,"","Block",0.2,1.25,0.2,false,false,0,0) weld(hp,camha,hp,0,0.4,-0.625+0.2,rd(-90),0,0)qi{"CylinderMesh",hp}
hp=pa(CModel,"","Block",0.25,0.15,1.35,false,false,0,0) weld(hp,camha,hp,0,0.6,-0.625+0.2-0.05,0,0,0)qi{"BlockMesh",hp}
hp=pa(CModel,"","Block",0.2,1,0.25,false,false,0,0) weld(hp,camha,hp,0,0.1,-0.3,0,0,0)qi{"BlockMesh",hp,Scale=v3(0.25,0.04,1)}
hp=pa(CModel,"","Block",0.2,1,0.25,false,false,0,0) weld(hp,camha,hp,0,0.225,-0.425,rd(-100),0,0)qi{"BlockMesh",hp,Scale=v3(0.25,0.04,1)}
hp=pa(CModel,"","Block",0.2,1,0.2,false,false,0,0) weld(hp,camha,hp,0,0.225,-0.325,rd(-100),0,0)qi{"BlockMesh",hp,Scale=v3(0.25,0.04,0.75)}
hp=pa(CModel,"","Block",0.2,0.2,0.2,false,false,0,0) weld(hp,camha,hp,0,0.45,-0.625-0.45,rd(-90),0,0)qi{"CylinderMesh",hp,Scale=v3(0.75,0.75,0.75)}
hp=pa(CModel,"","Block",0.2,0.2,0.2,false,false,0,0) weld(hp,camha,hp,0,0.525,-0.625-0.45,rd(-90),0,0)qi{"BlockMesh",hp,Scale=v3(0.75,0.75,0.75)}
hp=pa(CModel,"","Block",0.25,0.15,1.35,false,false,0,0) weld(hp,camha,hp,0,0.6,-0.625+0.2-0.05,0,0,0)qi{"BlockMesh",hp}
hp=pa(CModel,"","Block",0.25,0.3,0.25,false,false,0,0) weld(hp,camha,hp,0,0.7,0.05,rd(-90),0,0)qi{"CylinderMesh",hp}
cb1=pa(CModel,"","Block",0.2,1.4,0.2,false,false,0,0) weld(cb1,camha,cb1,0,0.7,-0.5,rd(-90),0,0)qi{"CylinderMesh",cb1,Scale=v3(0.6,1,0.6)}
hp=pa(CModel,"","Block",0.25,0.2,0.25,false,false,0,0) weld(hp,camha,hp,0,0.7,-1.05,rd(-90),0,0)qi{"CylinderMesh",hp}
hp=pa(CModel,"","Block",0.2,0.2,0.2,false,false,0,0,"Really black")weld(hp,camha,hp,0,0.7,-1.2,rd(90),0,0) qi{"CylinderMesh",hp,Scale=v3(0.4,0.01,0.4)}
ccha2=pa(CModel,"","Block",0,0,0,false,false,1,0) weld(ccha2,ha2,ccha2,0,0,0,0,0,0)
hp1=pa(CModel,"","Block",0.2,1,0.4,false,false,0,0) weld(hp1,ccha2,hp1,0,0,0,rd(-8),0,0)qi{"BlockMesh",hp1}
hp=pa(CModel,"","Block",0.2,0.2,0.4,false,false,0,0) weld(hp,ccha2,hp,0,-0.5,0.065,0,0,0)qi{"BlockMesh",hp,Scale=v3(1,0.5,1)}
hp=pa(CModel,"","Block",0.21,0.9,0.3,false,false,0,0,"Black") weld(hp,hp1,hp,0,0,0,0,0,0)qi{"BlockMesh",hp}
hp=pa(CModel,"","Block",0.2,0.2,0.4,false,false,0,0) weld(hp,ccha2,hp,0,0.5,-0.065,0,0,0)qi{"BlockMesh",hp,Scale=v3(1,0.5,1)}
hp=pa(CModel,"","Block",0.2,0.22,0.2,false,false,0,0) weld(hp,hp1,hp,0,0.25,0,0,0,rd(-90))qi{"CylinderMesh",hp,Scale=v3(0.5,1,0.5)}
hp=pa(CModel,"","Block",0.2,0.22,0.2,false,false,0,0) weld(hp,hp1,hp,0,-0.25,0,0,0,rd(-90))qi{"CylinderMesh",hp,Scale=v3(0.5,1,0.5)}
hp=pa(CModel,"","Block",0.2,0.2,1.25,false,false,0,0) weld(hp,ccha2,hp,0,0.5,-0.625+0.2,0,0,0)qi{"BlockMesh",hp}
hp=pa(CModel,"","Block",0.2,1.25,0.2,false,false,0,0) weld(hp,ccha2,hp,0,0.4,-0.625+0.2,rd(-90),0,0)qi{"CylinderMesh",hp}
hp=pa(CModel,"","Block",0.25,0.15,1.35,false,false,0,0) weld(hp,ccha2,hp,0,0.6,-0.625+0.2-0.05,0,0,0)qi{"BlockMesh",hp}
hp=pa(CModel,"","Block",0.2,1,0.25,false,false,0,0) weld(hp,ccha2,hp,0,0.1,-0.3,0,0,0)qi{"BlockMesh",hp,Scale=v3(0.25,0.04,1)}
hp=pa(CModel,"","Block",0.2,1,0.25,false,false,0,0) weld(hp,ccha2,hp,0,0.225,-0.425,rd(-100),0,0)qi{"BlockMesh",hp,Scale=v3(0.25,0.04,1)}
hp=pa(CModel,"","Block",0.2,1,0.2,false,false,0,0) weld(hp,ccha2,hp,0,0.225,-0.325,rd(-100),0,0)qi{"BlockMesh",hp,Scale=v3(0.25,0.04,0.75)}
hp=pa(CModel,"","Block",0.2,0.2,0.2,false,false,0,0) weld(hp,ccha2,hp,0,0.45,-0.625-0.45,rd(-90),0,0)qi{"CylinderMesh",hp,Scale=v3(0.75,0.75,0.75)}
hp=pa(CModel,"","Block",0.2,0.2,0.2,false,false,0,0) weld(hp,ccha2,hp,0,0.525,-0.625-0.45,rd(-90),0,0)qi{"BlockMesh",hp,Scale=v3(0.75,0.75,0.75)}
hp=pa(CModel,"","Block",0.25,0.15,1.35,false,false,0,0) weld(hp,ccha2,hp,0,0.6,-0.625+0.2-0.05,0,0,0)qi{"BlockMesh",hp}
hp=pa(CModel,"","Block",0.25,0.3,0.25,false,false,0,0) weld(hp,ccha2,hp,0,0.7,0.05,rd(-90),0,0)qi{"CylinderMesh",hp}
cb2=pa(CModel,"","Block",0.2,1.4,0.2,false,false,0,0) weld(cb2,ccha2,cb2,0,0.7,-0.5,rd(-90),0,0)qi{"CylinderMesh",cb2,Scale=v3(0.6,1,0.6)}
hp=pa(CModel,"","Block",0.25,0.2,0.25,false,false,0,0) weld(hp,ccha2,hp,0,0.7,-1.05,rd(-90),0,0)qi{"CylinderMesh",hp}
hp=pa(CModel,"","Block",0.2,0.2,0.2,false,false,0,0,"Really black")weld(hp,ccha2,hp,0,0.7,-1.2,rd(-90),0,0) qi{"CylinderMesh",hp,Scale=v3(0.4,0.01,0.4)}
for i,v in pairs(CModel:GetChildren()) do v.CanCollide=false end
end
 
WDesign() CDesign() Arms(false) Legs(false)
 
a,b,c=haw.C0:toEulerAnglesXYZ() a,b,c=rd(a),rd(b),rd(c)
HFS={haw.C0.x,haw.C0.y,haw.C0.z,a,b,c}
a,b,c=haw2.C0:toEulerAnglesXYZ() a,b,c=rd(a),rd(b),rd(c)
HFS2={haw2.C0.x,haw2.C0.y,haw2.C0.z,a,b,c}
 
function Stance(speed)
c2(ra,speed,3,1.5,0.5,0,-90,45,0)
c2(la,speed,3,-0.5,0.5,-0.75,-90,45,0)
c2(ll,speed,3,-0.5,-1,0,0,0,0)
c2(rl,speed,3,0.5,-1,0,0,0,0)
c2(hw,speed,3,0,1.5,0,0,45,0)
c2(tw,speed,3,0,0,0,0,-45,0)
c2(Torso.Neck,speed,3,0,1.5,0,0,0,0)
qAni(haw,0,-1.1,0,-90,0,0,0,speed/2,1)
Ani(haw2,0,-1.1,0,-90,0,0,0,speed/2,1)
end
 
ShowDmg=function(Dmg,Type,cf)
local fakeM=it("Model",workspace)
if Type=="Headshot" then fakeM.Name="Headshot!" elseif Type=="Normal" then fakeM.Name=tostring(Dmg) end
local fakeH=it("Humanoid",fakeM) fakeH.MaxHealth=0 fakeH.Health=0
local effect=pa(fakeM,"Head","Block",1.25,0.4,1.25,true,true,0,0,"Really red")qi{"CylinderMesh",effect,Scale=v3(1,1,1)}
if Type=="Headshot" then effect.Size=v3(1.25,0.4,1.25) elseif Type=="Normal" theneffect.Size=v3(1,0.2,1) end
effect.CFrame=cf
game:GetService("Debris"):AddItem(fakeM,2)
end
 
Fire = function(speed,sc,dmg,cff,dest,side) q(function()
local bb = pa(workspace,"bullet","Block",0.2*sc,4*sc,0.2*sc,false,true,0,0.1,"Bright yellow")game:GetService("Debris"):AddItem(bb,5) qi{"CylinderMesh",bb} bb.CanCollide=false
bb.CFrame = cn(cff.p,dest)*ca(rd(-90),0,0)
local muzzle=pa(workspace,"muzzle","Block",0,0,0,false,false,0.5,0,"Bright yellow")qi{"SpecialMesh",muzzle,MeshId=ids.Crown,Scale=v3(0.2,0.3,0.2)} muzzle.CanCollide=false
weld(muzzle,side,muzzle,0,0.7,0,0,0,0) so(ids.Shoot,side,1.1,1.1) wait()game:GetService("Debris"):AddItem(muzzle,0.1)
for i=1,100 do
bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,-2,0)).p)
if bhit and bhit.Name ~= "bullet" and bhit.Name ~= "bullethole" and bhit.Name~="muzzle" and bpos and(bpos - bb.Position).magnitude < speed and bhit~=Suit and bhit.Parent.Name~=Player.Name then break end
bb.CFrame=bb.CFrame*cn(0,speed,0)
wait()
end
game:GetService("Debris"):AddItem(bb,0.1) if bhit.Parent:FindFirstChild("Humanoid")==nil andbhit.Parent.Parent:FindFirstChild("Humanoid")==nil then BulletHole(bpos,bhit,sc) end
local aihu,aito,aibl=GetHum(bhit)
local aihu2,aito2,aibl2=GetHum(bhit.Parent)
if aihu and aito and bhit.Name=="Head" then
so(ids.Hit,bb,0.6,1)
bhit:BreakJoints() ShowDmg(1/0,"Headshot",aito.CFrame*cn(rn(-5,5),5,rn(-5,5)))
elseif aihu2 and aito2 and bhit.Parent:IsA("Hat") then
so(ids.Hit,bb,0.6,1)
aito2:BreakJoints() ShowDmg(1/0,"Headshot",aito2.CFrame*cn(rn(-5,5),5,rn(-5,5)))
elseif aihu2 and aito2 and bhit.Name=="Hat" then
so(ids.Hit,bb,0.6,1)
aito2:BreakJoints() ShowDmg(1/0,"Headshot",aito2.CFrame*cn(rn(-5,5),5,rn(-5,5)))
elseif aihu and bhit.Name~="Head" then
so(ids.Hit,bb,0.6,1)
aihu.Health=aihu.Health-dmg ShowDmg(dmg,"Normal",aito.CFrame*cn(rn(-5,5),5,rn(-5,5)))
end
bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)
end) end
 
Tool.Selected:connect(function(mouse)
Gyr0z=true
fmouse=mouse
mouse.Icon=ids.Icon
if equip=="unequipped" and anim=="" then
equip="equipping" Arms(true)
local ofs = RA.CFrame:toObjectSpace(ha.CFrame)
haw.Part0=RA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw) qAni(haw,0,-1.1,0,-90,0,0,0,0.1,1)
local ofs2 = LA.CFrame:toObjectSpace(ha2.CFrame)
haw2.Part0=LA haw2.C0=ofs2 haw2.C1=cn(0,0,0) rAni(haw2) Ani(haw2,0,-1.1,0,-90,0,0,0,0.1,1)
Stance(0.2) equip="equipped"
end
mouse.Button1Down:connect(function()
b1d=true
q(function()
while b1d and wait(0.1) do
buttons["1"]=buttons["1"]+0.1
end
end)
if (tick()-lastt)>=coolt then lastt=tick()
if Last==1 then Last=2 anim="shooting"
Fire(20,1,rn(15,34),b1.CFrame*cn(0,2,0),mouse.Hit.p,b1)
if animb~="prone" then
c1(ra,0.4,3,1.5,0.5,0,-120+math.deg((Torso.Position-mouse.Hit.p).unit.y),45,0)c1(ra,0.4,3,1.5,0.5,0,-90+math.deg((Torso.Position-mouse.Hit.p).unit.y),45,0)
elseif animb=="prone" then
c1(ra,0.4,3,1.5,0.9,0,-210+math.deg((Torso.Position-mouse.Hit.p).unit.y),0,0)c1(ra,0.4,3,1.5,0.9,0,-180+math.deg((Torso.Position-mouse.Hit.p).unit.y),0,0)
end anim=""
elseif Last==2 then Last=1 anim="shooting"
Fire(20,1,rn(15,34),b2.CFrame*cn(0,2,0),mouse.Hit.p,b2)
if animb~="prone" then
c1(la,0.4,3,-0.5,0.5,-0.75,-120+math.deg((Torso.Position-fmouse.hit.p).unit.y),45,0)c1(la,0.4,3,-0.5,0.5,-0.75,-90+math.deg((Torso.Position-fmouse.hit.p).unit.y),45,0)
elseif animb=="prone" then
c1(la,0.4,3,-1.5,0.9,0,-210+math.deg((Torso.Position-mouse.Hit.p).unit.y),0,0)c1(la,0.4,3,-1.5,0.9,0,-180+math.deg((Torso.Position-mouse.Hit.p).unit.y),0,0)
end anim=""
end
end
end)
mouse.Button1Up:connect(function()
b1d=false
buttons["1"]=0
end)
mouse.Button2Down:connect(function()
b2d=true
q(function()
while b2d and wait(0.1) do
buttons["2"]=buttons["2"]+0.1
end
end)
q(function() while b2d and wait(0.1) do
if buttons["2"]>=1 then animc="zooming"
for i=70,20,-3 do Cam.FieldOfView=i wait() end break
end
end end)
end)
mouse.Button2Up:connect(function()
b2d=false
if buttons["2"]>=1 and animc=="zooming" then local lolcamfov=Cam.FieldOfView
q(function() for i=lolcamfov,70.1,6 do Cam.FieldOfView=i wait() end Cam.FieldOfView=70 animc="" end)
end
buttons["2"]=0
end)
mouse.KeyDown:connect(function(key) key=key:lower()
keys[key]="down"
if key:byte()==50 and animb=="" and lastctr=="" then
animb="crouching" Legs(true) Hum.WalkSpeed=8 lastctr=""
c2(rl,0.1,3,0.5,-1.5,-0.5,90,0,0) c2(ll,0.1,3,-0.5,0,-1,0,0,0) c2(tw,0.1,3,0,-1,0,0,-45,0)c1(Torso.Neck,0.1,3,0,0.5,0,rd(-90),0,0) animb="crouch"
elseif key:byte()==50 and animb=="crouch" and lastctr=="" then
animb="proning" Legs(true) Hum.WalkSpeed=4 lastctr="crouch" anim="stopteharms" Prone=true
c2(tw,0.1,3,0,-2.5,0,90,0,0) c2(hw,0.1,3,0,1.5,0,-90,0,0) c2(ra,0.1,3,1.5,0.9,0,-180,0,0)c2(la,0.1,3,-1.5,0.9,0,-180,0,0) c1(Torso.Neck,0.1,3,0,-2.5,-1.5,0,0,0)  animb="prone"
anim=""
elseif key:byte()==50 and animb=="prone" and lastctr=="crouch" then
animb="crouching" Legs(true) Hum.WalkSpeed=8 lastctr="prone" Prone=false
c2(rl,0.1,3,0.5,-1.5,-0.5,90,0,0) c2(ll,0.1,3,-0.5,0,-1,0,0,0) c2(tw,0.1,3,0,-1,0,0,-45,0)c2(ra,speed,3,1.5,0.5,0,-90,45,0) c2(la,speed,3,-0.5,0.5,-0.75,-90,45,0) c2(hw,speed,3,0,1.5,0,0,45,0)
c1(Torso.Neck,0.1,3,0,0.5,0,rd(-90),0,0) animb="crouch" anim=""
elseif key:byte()==50 and animb=="crouch" and lastctr=="prone" then
anim="returning" c2(Torso.Neck,0.1,3,0,1.5,0,rd(-90),0,0) Legs(true) lastctr=""
Stance(0.1) Legs(false) anim="" animb="" Hum.WalkSpeed=16
end
 
if key==";" then if Gyr0z then Gyr0z=false elseif not Gyr0z then Gyr0z=true end end
end)
mouse.KeyUp:connect(function(key) key=key:lower()
keys[key]="up"
end)
end)
 
Tool.Deselected:connect(function()
Gyr0z=false
fmouse=nil
if equip=="equipped" and anim=="" then
equip="unequipping"
c2(tw,0.1,3,0,0,0,0,0,0) Torso.Neck.C1=cn() Torso.Neck.C0=cn(0,1.5,0) c2(Torso.Neck,0.1,3,0,1.5,0,0,0,0)c2(hw,0.1,3,0,1.5,0,0,0,0) c2(ra,0.1,3,1.5,0.5,0,0,0,0) c1(la,0.1,3,-1.5,0.5,0,0,0,0)
local ofs = pack.CFrame:toObjectSpace(ha.CFrame)
haw.Part0=pack haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
qAni(haw,0,0.9,0.425,-90,0,0,0,0.1/1.3,1)
local ofs2 = pack2.CFrame:toObjectSpace(ha2.CFrame)
haw2.Part0=pack2 haw2.C0=ofs2 haw2.C1=cn(0,0,0) rAni(haw2)
qAni(haw2,0,0.9,0.425,-90,0,0,0,0.1/1.3,1)
Arms(false) Legs(false) equip="unequipped" Hum.WalkSpeed=16 Prone=false lastctr="" animb="" anim=""
end
end)
 
Gyro=qi{"BodyGyro",Torso,D=50,P=1500}
game:GetService("RunService").Stepped:connect(function()
if equip=="equipped" and anim=="" and not Prone then
c2(ra,1,3,1.5,0.5,0,-90+math.deg((Torso.Position-fmouse.Hit.p).unit.y),45,0)
c2(la,1,3,-0.5,0.5,-0.75,-90+math.deg((Torso.Position-fmouse.Hit.p).unit.y),45,0)
c2(hw,1,3,0,1.5,0,math.deg((Torso.Position-fmouse.Hit.p).unit.y),45,0)
elseif equip=="equipped" and anim=="" and Prone then
c2(ra,1,3,1.5,0.9,0,-180+math.deg((Torso.Position-fmouse.Hit.p).unit.y),0,0)
c2(la,1,3,-1.5,0.9,0,-180+math.deg((Torso.Position-fmouse.Hit.p).unit.y),0,0)
c2(hw,1,3,0,1.5,0,-90+math.deg((Torso.Position-fmouse.Hit.p).unit.y),0,0)
end
if Gyr0z==true then  
Gyro.maxTorque=v3(1/0,1/0,1/0)
Gyro.cframe = cn(Torso.Position,v3(fmouse.hit.p.x,Torso.Position.y,fmouse.hit.p.z))
else
Gyro.maxTorque = v3(0,0,0)
end
if (Cam.CoordinateFrame.p-Head.Position).magnitude>3 then
for i,v in pairs(CModel:GetChildren()) do v.Transparency=1 end
elseif (Cam.CoordinateFrame.p-Head.Position).magnitude<3 then
for i,v in pairs(CModel:GetChildren()) do v.Transparency=0 end
end
end)
