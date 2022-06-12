loadstring(_G[" TBLib "])()

Player=game:GetService("Players").LocalPlayer
Char=Player.Character
Backpack=Player.Backpack
PlayerGui=Player.PlayerGui
Torso=Char.Torso
Head=Char.Head
Hum=Char.Humanoid
Cam=workspace.CurrentCamera
Tn="Sniper"

pcall(function() Backpack[Tn]:Remove() end)
pcall(function() Cam[Tn]:Remove() end)
pcall(function() thesuit=Char[''] end)
pcall(function() thesuit[Tn]:Remove() end)
pcall(function() PlayerGui[Tn]:Remove() end)
pcall(function() Char.Block:Remove() end)

CModel=qi{'Model',Cam,Name=Tn}
Tool=qi{'HopperBin',Player.Backpack,Name=Tn}
Suit=qi{'Model',Char,Name=''}
Weapon=qi{'Model',Suit,Name=Tn}
Gui=qi{'ScreenGui',PlayerGui,Name=Tn}
Block=qi{'NumberValue',Char,Name='Block'}

equip="unequipped"
anim=""
keys={}
fmouse=nil
UseGyro=true
LastShot=0
LastAssassination=0
Mode="Normal"
running=false
Timer=0
Combo=0
Clip=1

ids = {}
ids.Diamond = 9756362
ids.Slash = 10209645
ids.Slash2 = 46760716
ids.Slash3 = 10209640
ids.Bullet = 10207677
ids.Crown = 20329976
ids.Crown2 = 1323306
ids.Fire = 10209257
ids.Reload = 10209881
ids.Crack = 49173398
ids.Scream = 89487903
ids.Spike = 1033714
ids.Hit = 10209590
ids.Shine = 48965808
ids.Ring = 3270017 

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


function Design(c)
	local bm="BlockMesh"
	local sm="SpecialMesh"
	local cm="CylinderMesh"
	ha=pa(Weapon,"","Block",0.4,0.6,1.5,false,false,0,0,c[1]) haw=weld(ha,Torso,ha,0.5,2.5,0.7,rd(270),0,rd(90)) qi{bm,ha} 
	p=pa(Weapon,"","Block",0.4,1.5,0.6,false,false,0,0,c[1]) weld(p,ha,p,0,-0.6,0,rd(-90),0,0) qi{sm,p,MeshType="Wedge"}
	p=pa(Weapon,"","Block",0.4,1.2,0.2,false,false,0,0,c[2]) weld(p,ha,p,0,-0.3,1.6/2,0,0,0) qi{bm,p,Scale=v3(1,1,0.5)}
	p1=pa(Weapon,"","Block",0.41,0.95,0.5,false,false,0,0,c[3]) weld(p1,ha,p1,0,-0.165,0.35,rd(180),0,0) qi{sm,p1,MeshType="Wedge"}
	p1=pa(Weapon,"","Block",0.41,1.5,0.6,false,false,0,0,c[3]) weld(p1,ha,p1,0,-0.36,-0.65,rd(-90),0,0) qi{sm,p1,MeshType="Wedge"}
	p1=pa(Weapon,"","Block",0.41,1.5,0.425,false,false,0,0,c[3]) weld(p1,ha,p1,0,0.11-0.0125,-0.65,rd(-90),0,0) qi{bm,p1} 
	bs=pa(Weapon,"","Block",0.4,0.4,1.5,false,false,0,0,c[1]) weld(bs,ha,bs,0,0.1,-1,0,0,0) qi{bm,bs} 
	b=pa(Weapon,"","Block",0.4,0.8,2,false,false,0,0,c[1]) weld(b,bs,b,0,0.2,-1.75,0,0,0) qi{bm,b} 
	p=pa(Weapon,"","Block",0.4,0.4,0.4,false,false,0,0,c[1]) weld(p,bs,p,0,0.4,-0.55,0,rd(180),0) qi{sm,p,MeshType="Wedge"}
	p=pa(Weapon,"","Block",0.2,0.3,0.2,false,false,0,0,c[4]) weld(p,ha,p,0,-0.6,-0.2,rd(15),0,0) qi{bm,p,Scale=v3(1,1,0.5)}
	p=pa(Weapon,"","Block",0.2,0.5,0.2,false,false,0,0,c[4]) weld(p,ha,p,0,-0.7,-0.445,rd(-75),0,0) qi{bm,p,Scale=v3(1,1,0.5)}
	p=pa(Weapon,"","Block",0.2,0.5,0.2,false,false,0,0,c[4]) weld(p,ha,p,0,-0.7,-0.875,rd(-105),0,0) qi{bm,p,Scale=v3(1,1,0.5)}
	p=pa(Weapon,"","Block",0.2,0.4,0.2,false,false,0,0,c[4]) weld(p,ha,p,0,-0.6,-1.05,rd(15),0,0) qi{bm,p,Scale=v3(1,1,0.5)}
	p=pa(Weapon,"","Block",0.2,0.4,0.2,false,false,0,0,c[4]) weld(p,ha,p,0,-0.25,-1.05,rd(-15),0,0) qi{bm,p,Scale=v3(1,1,0.5)}
	p=pa(Weapon,"","Block",0.2,0.4,0.4,false,false,0,0,c[4]) weld(p,ha,p,0,-0.375,-0.6,rd(-45),0,0) qi{bm,p,Scale=v3(1,1,0.5)}
	p=pa(Weapon,"","Block",0.2,1,0.2,false,false,0,0,c[5]) weld(p,ha,p,0,-0.3125,-1.1,0,0,0) qi{bm,p,Scale=v3(1.01,1,0.5)}
	p=pa(Weapon,"","Block",0.2,1.5,1,false,false,0,0,c[5]) weld(p,ha,p,0,-0.3125,-1.9,rd(-90),0,0) qi{sm,p,Scale=v3(1.01,1,1),MeshType="Wedge"}
	tb=pa(Weapon,"","Block",0.4,2.5,0.4,false,false,0,0.15,c[4]) weld(tb,b,tb,0,0.5,-0.25,rd(90),0,0) qi{cm,tb}
	p=pa(Weapon,"","Block",0,0,0,false,false,0,0,c[4]) weld(p,tb,p,0,1.3,0,rd(180),0,0) qi{sm,p,Scale=v3(0.15,0.4,0.15),MeshId=ids.Spike}
	p=pa(Weapon,"","Block",0,0,0,false,false,0,0,c[4]) weld(p,tb,p,0,1.325,0,0,0,0) qi{sm,p,Scale=v3(0.2,0.2,0.2),MeshId=ids.Spike}
	h0=pa(Weapon,"","Block",0,0,0,false,false,0,0) reloadw=weld(h0,tb,h0,0.2,0.7,0,0,0,rd(-20)) qi{sm,h0,MeshType="Sphere"}
	h1=pa(Weapon,"","Block",0,0,0,false,false,1,0) weld(h1,h0,h1,0,0,0,0,0,rd(-20))
	p=pa(Weapon,"","Block",0.2,0.5,0.2,false,false,0,0,c[4]) weld(p,h1,p,0,0,0,0,0,rd(90)) qi{cm,p}
	h2=pa(Weapon,"","Block",0,0,0,false,false,0,0) weld(h2,p,h2,0,-0.25,0,0,0,rd(40)) qi{sm,h2,MeshType="Sphere"}
	p=pa(Weapon,"","Block",0.2,0.3,0.2,false,false,0,0,c[4]) weld(p,h2,p,-0.15,0,0,0,0,rd(90)) qi{cm,p}
	pp=pa(Weapon,"","Block",0.3,0.3,0.3,false,false,0,0,c[4]) weld(pp,p,pp,0,0.15,0,0,0,0) qi{sm,pp,MeshType="Sphere"}
	p=pa(Weapon,"","Block",0.4,0.8,0.5,false,false,0,0,c[1]) weld(p,b,p,0,0,-1.25,0,0,0) qi{bm,p} 
	p=pa(Weapon,"","Block",0.41,0.81,1.76,false,false,0,0,c[3]) weld(p,b,p,0,0,-1+0.125,0,0,0) qi{bm,p} 
	p=pa(Weapon,"","Block",0.41,1.76,0.41,false,false,0,0,c[3]) weld(p,tb,p,0,-0.75+0.125,0,0,0,0) qi{cm,p} 
	bb=pa(Weapon,"","Block",0.4,1.5,0.4,false,false,0,0,c[4]) weld(bb,tb,bb,0,-1.5,0,0,0,0) qi{cm,bb} 
	sp=pa(Weapon,"","Block",0.5,0.2,0.5,false,false,0,0,c[5]) weld(sp,bb,sp,0,-0.5,0,0,0,0) qi{cm,sp} 
	sp1=pa(Weapon,"","Block",0.3,0.21,0.2,false,false,0,0,c[6]) weld(sp1,sp,sp1,0,0,-0.3,0,0,0) qi{bm,sp1} 
	is=pa(Weapon,"","Block",0,0,0,false,false,0,0,c[5]) weld(is,sp1,is,0,0,-0.3,rd(90),0,0) qi{sm,is,MeshId=ids.Ring,Scale=v3(0.4,0.4,0.4)} 
	is2=pa(Weapon,"","Block",0.2,0.2,0.2,false,false,0,0,c[5]) weld(is2,is,is2,0,0.1,0,0,0,0) qi{bm,is2,Scale=v3(0.25,1,0.25)} 
	sp2=pa(Weapon,"","Block",0,0,0,false,false,0,0,c[4]) weld(sp2,bb,sp2,0,-0.7,0,0,0,0) qi{sm,sp2,MeshId=ids.Spike,Scale=v3(0.3,0.6,0.3)} 
	ho=pa(Weapon,"","Block",0.4,0.2,0.4,false,false,0,0,c[7]) weld(ho,sp2,ho,0,-0.225,0,0,0,0) qi{cm,ho,Scale=v3(1,0.05,1)} 
	p=pa(Weapon,"","Block",0.4,0.8,0.3,false,false,0,0,c[1]) weld(p,b,p,0,0,-1.9,0,0,0) qi{bm,p} 
	p1=pa(Weapon,"","Block",0.2,0.5,0.2,false,false,0,0,c[4]) weld(p1,p,p1,0,-0.1,-0.3,rd(90),0,0) qi{cm,p1} 
	p2=pa(Weapon,"","Block",0.3,0.3,0.3,false,false,0,0,c[4]) weld(p2,p1,p2,0,-0.4,0,0,0,0) qi{cm,p2} 
	for i,v in pairs(Weapon:GetChildren()) do v.CanCollide=false end
end

Design({"Brown","Black","Br. yellowish green","Mid grey","Dark stone grey","Bright red","Really black"})
Arms(false) Legs(false)

BBD,BBT,Dealt,DmgMult=0,{},{15,25},1

function Stance(speed)
	c2(ra,speed,3,1.25,0.5,-0.25,-75,-65,0)
	c2(la,speed,3,-1.25,0.5,-0.25,-70,-20,0)
	c2(ll,speed,3,-0.5,-1,0,0,0,0)
	c2(rl,speed,3,0.5,-1,0,0,0,0)
	c2(hw,speed,3,0,1.5,0,0,-65,0)
	c2(tw,speed,3,0,0,0,90,180,65)
	c2(reloadw,speed,3,0.2,0.7,0,0,0,-20)
	Ani(haw,0,-0.2,0,-75,0,0,0,speed/2,1)
end

function Reset(speed)
	c2(ra,speed,3,1.5,0.5,0,0,0,0)
	c2(la,speed,3,-1.5,0.5,0,0,0,0)
	c2(ll,speed,3,-0.5,-1,0,0,0,0)
	c2(rl,speed,3,0.5,-1,0,0,0,0)
	c2(hw,speed,3,0,1.5,0,0,0,0)
	c2(tw,speed,3,0,0,0,90,180,0)
	c2(reloadw,speed,3,0.2,0.7,0,0,0,-20)
	Ani(haw,0.5,2.5,0.7,270,0,90,0,speed,1)
end

function Reload()
	anim="Reload"
	Stance(0.2)
	local ofs = LA.CFrame:toObjectSpace(ha.CFrame) 
	haw.Part0=LA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
	c1(ra,0.15,3,-0.3,0.5,-1.1,-110,-50,0)
	so(ids.Reload,ha,1,1)
	c2(ra,0.15,3,0,0.5,-1,-110,-50,0)
	c1(reloadw,0.1,3,0.2,0.7,0,0,0,-80)
	c2(ra,0.15,3,-0.3,0.5,-1.1,-110,-50,0)
	c1(reloadw,0.14,3,0.2,0.7,0,0,0,-20)
	Clip=Clip+1
	c2(ra,0.16,3,1.25,0.5,-0.25,-75,-65,0)
	wait(0.5)
	local ofs = RA.CFrame:toObjectSpace(ha.CFrame) 
	haw.Part0=RA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
	Ani(haw,0,-0.2,0,-75,0,0,0,0.1,1)
	anim=""
end

function Trail(Loops,Part,Time,Color,Thickness,Offset) 
	q(function() 
		local oldpos=(Part.CFrame *Offset).p 
		local lopz2=0
		local function loltr() 
			local obp=(Part.CFrame *Offset).p 
			lopz2=lopz2 + 1
			local mag=(oldpos - obp).magnitude 
			local tr=pa(Part,"trail","Block",0,0,0,false,true,0.5,0,Color) 
			tr.CanCollide=false
			tr.CFrame=cn(oldpos,obp) 
			tr.CFrame=tr.CFrame + tr.CFrame.lookVector*(mag/2)
			local trm=qi{'CylinderMesh',tr,Scale=v3(5*Thickness,mag*5,5*Thickness)}
			q(function() 
				for i=5*Thickness,0,-5*Thickness/10 do 
					trm.Scale=v3(i,mag*5,i) w() 
				end 
				tr:Remove'' 
			end)
			tr.CFrame=tr.CFrame*ca(rd(90),0,0) oldpos=obp 
			repeat loltr() wait(Time) until lopz2 == Loops 
			loltr() 
		end
	end)
end

Fire = function(speed,cff,dest) 
	q(function()
		local bb = pa(workspace,"bullet","Block",1,1,1,false,true,0.5,0,"White") bb.CanCollide=false qi{"SpecialMesh",bb,MeshType="Sphere",Scale=v3(0.25,15,0.25)} 
		bb.CFrame = cn(cff.p,dest)*ca(rd(90),0,0)
		local m=pa(workspace,"muzzle","Block",0,0,0,false,false,0,0,"Bright orange") qi{"SpecialMesh",m,MeshId=ids.Crown,Scale=v3(0.5,0.5,0.5)}  weld(m,ho,m,0,-0.3,0,rd(180),0,0) fade(m,0.2)
		local m=pa(workspace,"muzzle","Block",0,0,0,false,false,0,0,"Bright orange") qi{"SpecialMesh",m,MeshId=ids.Crown2,Scale=v3(0.4,0.7,0.4)} weld(m,ho,m,0,-0.65,0,rd(180),0,0) fade(m,0.2)
		for i=1,300 do 
			bhit,bpos=ray(bb.Position,bb.Position - (bb.CFrame *cn(0,1,0)).p)
			if bhit and bhit.Name ~= "bullet" and bhit.Name~="muzzle" and bhit.Parent~=Char and bhit.Parent.Parent~=Char and bhit.Parent.Parent.Parent~=Char and bpos and (bpos - bb.Position).magnitude < speed then break end
			bb.CFrame=bb.CFrame*cn(0,-speed,0)
			if Mode=="Heatseek" then
				pcall(function()
					bb.CFrame = cn(cff.p,fmouse.Hit.Parent:findFirstChild("Torso").Position)*ca(rd(90),0,0)
				end)
			end
			wait()
		end 
		so(ids.Hit,bb,1,0.4)
		if anim=="Assassinate" then
			DmgMult=3
		else
			DmgMult=1
		end
		bb.CFrame=bb.CFrame*cn(0,(bpos-bb.Position).magnitude,0)
		BBD=2
		deb:AddItem(bb,0.05)
		if GetHum(bhit) then
			local vHum=GetHum(bhit)
			if not vHum or BBD==0 or BBT[vHum.Parent] then return end
			BBT[vHum.Parent]=1
			Dmg(vHum,rn(Dealt[1],Dealt[2])*DmgMult)
			so(ids.Hit,bhit,1,1)
			HMT=vHum.Parent:findFirstChild("Torso")
			if HMT and BBD==2 then
				AddBV(50,cn(bb.Position,HMT.Position),HMT,0.15) 
			end
			BBT[vHum.Parent]=nil
		elseif GetHum(bhit.Parent) then
			local vHum=GetHum(bhit.Parent)
			if not vHum or BBD==0 or BBT[vHum.Parent] then return end
			BBT[vHum.Parent]=1
			Dmg(vHum,rn(Dealt[1],Dealt[2])*DmgMult)
			so(ids.Hit,bhit,1,1)
			HMT=vHum.Parent:findFirstChild("Torso")
			if HMT and BBD==2 then
				AddBV(50,cn(bb.Position,HMT.Position),HMT,0.15) 
			end
			BBT[vHum.Parent]=nil

		elseif GetHum(bhit.Parent.Parent) then
			local vHum=GetHum(bhit.Parent.Parent)
			if not vHum or BBD==0 or BBT[vHum.Parent] then return end
			BBT[vHum.Parent]=1
			Dmg(vHum,rn(Dealt[1],Dealt[2])*DmgMult)
			so(ids.Hit,bhit,1,1)
			HMT=vHum.Parent:findFirstChild("Torso")
			BBT[vHum.Parent]=nil
		end
		BBD=0
		DmgMult=1
	end) 
end 

function Button1Down()
	if anim=="" and equip=="equipped" and Clip==1 then
		Clip=Clip-1
		so(ids.Fire,ha,1,0.4)
		Fire(13,ho.CFrame*cn(0,-0.5,0),fmouse.Hit.p)
	elseif anim=="" and equip=="equipped" and Clip==0 then
		Reload()
	end
end

function KeyDown(key)
	key=key:lower()
	keys[key]=true
	if key=="x" and equip=="equipped" and anim=="" and (tick()-LastAssassination>=1) then
		if not fmouse.Target or not fmouse.Hit then return end
		if GetHum(fmouse.Target) or GetHum(fmouse.Target.Parent) or GetHum(fmouse.Target.Parent.Parent) or GetHum(fmouse.Target.Parent.Parent.Parent) then
			if Clip==1 then
				local ft=nil
				if GetHum(fmouse.Target) then
					ft=GetHum(fmouse.Target)
				elseif GetHum(fmouse.Target.Parent) then
					ft=GetHum(fmouse.Target.Parent) 
				elseif GetHum(fmouse.Target.Parent.Parent) then
					ft=GetHum(fmouse.Target.Parent.Parent) 
				elseif GetHum(fmouse.Target.Parent.Parent.Parent) then
					ft=GetHum(fmouse.Target.Parent.Parent.Parent) 
				end
				LastAssassination=tick()
				Hum.WalkSpeed=0
				anim="Assassinate"
				Legs(true)
				so(ids.Reload,ha,1,1)
				c2(hw,0.08,3,0.15,1.5,0,math.deg((Torso.Position-fmouse.Hit.p).unit.y),0,20)
				c2(ra,0.08,3,1.25,0.5,1,-75+math.deg((Torso.Position-fmouse.Hit.p).unit.y)/2,-10,0)
				c2(la,0.08,3,-0.5,0.5,-1,-70+math.deg((Torso.Position-fmouse.Hit.p).unit.y),55,0)
				c2(tw,0.08,3,0,-1,0,90,180,0)
				c2(ll,0.08,3,-0.5,0,-1,0,0,0)
				c2(rl,0.08,3,0.5,-1.5,-0.5,90,0,0)
				Ani(haw,0,-0.2,0.3,-75,0,0,0,0.05,1)
				wait(1)
				Clip=Clip-1
				Fire(7,ho.CFrame*cn(0,-0.5,0),ft.Parent.Torso.Position)
				so(ids.Fire,ha,1,0.4)
				wait(1.5)
			else
				Reload()
			end
			Stance(0.1)
			Legs(false)
			anim=""
			Hum.WalkSpeed=16
		else
			return
		end
		
	elseif key=="w" and equip=="equipped" and anim=="" then
		if Combo==0 then
			Combo=1
			q(function()
				wait(0.1)
				if Combo==0 then
					Combo=-0.5
					Stance(0.2)
					Hum.WalkSpeed=16
					anim=""
					Timer=0
					Combo=0
				end
			end)
		elseif Combo==1 then
			Combo=1.5
			anim="AlmostRunning"
			Hum.WalkSpeed=24
			UseGyro=false
			c2(ra,0.2,3,1.25,0.5,-0.25,-75,-65,0)
			c2(la,0.2,3,-1.25,0.5,-0.25,-65,-30,0)
			c2(tw,0.2,3,0,0,0,90,180,0)
			c1(hw,0.2,3,0,1.5,0,0,0,0)
			anim="Running"
			Combo=2
			repeat wait() Timer=Timer+0.05 until Timer>=5 or not keys[key] or not running
			Stance(0.2)
			Hum.WalkSpeed=16
			UseGyro=true
			anim=""
			Timer=0
		end

	elseif key=="r" and equip=="equipped" and anim=="" then
		if Clip==0 then
			Reload()
		end
	end
end

function KeyUp(key)
key=key:lower()
keys[key]=false
end

Tool.Selected:connect(function(mouse)
fmouse=mouse
if equip=="unequipped" and anim=="" then
equip="equipping" Arms(true) c2(la,0.1,3,-1.5,0.5,0,0,0,20) c1(ra,0.1,3,1.5,0.5,0,120,0,-70)
local ofs = RA.CFrame:toObjectSpace(ha.CFrame) 
haw.Part0=RA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
Stance(0.2) equip="equipped"
end
mouse.Button1Down:connect(Button1Down)
mouse.KeyDown:connect(KeyDown)
mouse.KeyUp:connect(KeyUp)
end)

Tool.Deselected:connect(function()
fmouse=nil
if equip=="equipped" and anim=="" then
equip="unequipping"  c2(la,0.1,3,-1.5,0.5,0,0,0,0) c1(ra,0.1,3,1.5,0.5,0,120,0,-70)
local ofs = Torso.CFrame:toObjectSpace(ha.CFrame)
haw.Part0=Torso haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
Reset(0.1)
Arms(false) Legs(false) equip="unequipped"
end
end)

Gyro=qi{"BodyGyro",fTorso,D=50,P=1500}
game:GetService("RunService").Stepped:connect(function()
if fmouse~=nil and UseGyro then  
Gyro.maxTorque=v3(1/0,1/0,1/0)
Gyro.cframe = cn(fTorso.Position,v3(fmouse.hit.p.x,fTorso.Position.y,fmouse.hit.p.z)) 
else
Gyro.maxTorque = v3(0,0,0) 
end
if equip=="equipped" and anim=="" and fmouse~=nil then
c2(ra,1,3,1.25,0.5,-0.25,-75+math.deg((Torso.Position-fmouse.Hit.p).unit.y)/2,-65,0)
c2(la,1,3,-1.25,0.5,-0.25,-70+math.deg((Torso.Position-fmouse.Hit.p).unit.y),-20,0)
c2(hw,1,3,0,1.5,0,math.deg((Torso.Position-fmouse.Hit.p).unit.y),-65,0)end
end)

Hum.Running:connect(function(spd) running=spd>0 and true or false end)