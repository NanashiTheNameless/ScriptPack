loadstring(_G[" TBLib "])()

Player=game:GetService("Players").LocalPlayer
Char=Player.Character
Backpack=Player.Backpack
PlayerGui=Player.PlayerGui
Torso=Char.Torso
Head=Char.Head
Hum=Char.Humanoid
Cam=workspace.CurrentCamera
Tn="Glaive"

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

running=false
equip="unequipped"
anim=""
keys={}
dtap={}
fmouse=nil
UseGyro=true
Combo=0
timer=0
BlockTime=0
Hum.WalkSpeed=18

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

WDesign=function()
	ha=pa(Weapon,"","Block",1,1,1,false,false,1,0) haw=weld(ha,RA,ha,0.5,-0.5,0,rd(30),rd(90),0)
	p=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Black") pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,Scale=v3(0.6,0.6,2),MeshId=ids.Chakram}
	chak=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Bright violet") chakw=weld(chak,ha,chak,0,0,0,0,0,0) qi{"SpecialMesh",chak,Scale=v3(1.2,1.2,2),MeshId=ids.chakram}
	for i=0,360,360/3 do
		p=pa(Weapon,"","Block",0.4,0.6,0.2,false,false,0,0,"Black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"BlockMesh",p} 
		pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(0.7,0,0)
		p=pa(Weapon,"","Block",0.2,0.3,0.3,false,false,0,0,"Black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshType="Wedge",Scale=v3(1,1,1)} 
		pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1,0,0)*ca(0,rd(90),0)*cn(0,0.15,0.05)*ca(rd(90),0,0)
		p=pa(Weapon,"","Block",0.2,0.3,0.3,false,false,0,0,"Black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshType="Wedge",Scale=v3(1,1,1)} 
		pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1,0,0)*ca(0,rd(90),0)*cn(0,-0.15,0.05)*ca(rd(90),0,0)*ca(0,rd(180),0)
		p=pa(Weapon,"","Block",0.4,1,0.2,false,false,0,0,"Black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"BlockMesh",p}
		pw.C0=ca(0,0,rd(30))*cn(0,0,0)*ca(0,0,rd(i))*cn(0,1.25,0)
		p=pa(Weapon,"","Block",0.2,0.4,0.4,false,false,0,0,"Black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshType="Wedge",Scale=v3(1,1,1)} 
		pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1.9,0,0)*ca(0,rd(90),0)*cn(0,0,0.05)*ca(rd(90),0,0)*ca(0,rd(180),0)
		p=pa(Weapon,"","Block",0.2,0.4,0.4,false,false,0,0,"Black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshType="Wedge",Scale=v3(1,1,1)} 
		pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1.9,0,0)*ca(0,rd(90),0)*cn(0,0.4,0.05-0.4)*ca(rd(270),0,0)*ca(0,rd(180),0)
		p=pa(Weapon,"Blade"..tostring(i),"Block",0.2,0.4,1.5,false,false,0,0,"Black") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshType="Wedge",Scale=v3(1,1,1)} 
		pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1.9,0,0)*ca(0,rd(90),0)*cn(0,0.95,0.05)*ca(rd(90),0,0)*ca(0,0,0)
		p=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Bright violet") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshId=ids.Diamond,Scale=v3(0.1,0.3,0.3)} 
		pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1.9,0,0)*ca(0,rd(90),0)*cn(0.1,0.2,0.05-0.2)*ca(0,rd(180),0)*ca(rd(45),0,0)
		p=pa(Weapon,"","Block",1,1,1,false,false,0,0,"Bright violet") local pw=weld(p,ha,p,0,0,0,0,0,0) qi{"SpecialMesh",p,MeshId=ids.Diamond,Scale=v3(0.1,0.3,0.3)} 
		pw.C0=cn(0,0,0)*ca(0,0,rd(i))*cn(1.9,0,0)*ca(0,rd(90),0)*cn(-0.1,0.2,0.05-0.2)*ca(0,rd(180),0)*ca(rd(45),0,0)
	end
	for i,v in pairs(Weapon:GetChildren()) do v.CanCollide=false end
end

WDesign() Arms(false) Legs(false)

Dealt={4,8}
BBD,BBT=0,{}
CritChance = 5
CriticalSeverity=2.25

BladeHit=function(hit)
	local Hum=GetHum(hit)
	if not Hum or BBD==0 or BBT[Hum.Parent] then return end
	BBT[Hum.Parent]=1
	if rn(1,100)<=CritChance then
		Dmg(Hum,rn(Dealt[1],Dealt[2])*CriticalSeverity,true)
	else
		Dmg(Hum,rn(Dealt[1],Dealt[2]),false)
	end	
	local HMT=Hum.Parent:findFirstChild'Torso' 
	if BBD==2 and HMT then 
		AddBV(10,cn(Torso.Position,HMT.Position),HMT,0.15) 
	end
	so(ids.Hit,HMT,1,1)
	wait(0.07)
	BBT[Hum.Parent]=nil
end

for i,v in pairs(Weapon:GetChildren()) do v.Touched:connect(BladeHit) end

function Stance(speed)
	c2(ra,speed,3,1.5,0.5,0,20,0,-20)
	c2(la,speed,3,-1.5,0.5,0,-20,0,20)
	c2(ll,speed,3,-0.5,-1,0,0,0,0)
	c2(rl,speed,3,0.5,-1,0,0,0,0)
	c2(hw,speed,3,0,1.5,0,0,30,0)
	c2(tw,speed,3,0,0,0,90,180,-30)
	Ani(haw,0,-1.3,0,0,90,30,0,speed/2,1)
end

function Reset(speed)
	c2(ra,speed,3,1.5,0.5,0,0,0,0)
	c2(la,speed,3,-1.5,0.5,0,0,0,0)
	c2(ll,speed,3,-0.5,-1,0,0,0,0)
	c2(rl,speed,3,0.5,-1,0,0,0,0)
	c2(hw,speed,3,0,1.5,0,0,0,0)
	c2(tw,speed,3,0,0,0,90,180,0)
	Ani(haw,0.5,-0.5,0,30,90,0,0,speed/2,1)
end

function Combo1()
	Combo=0.5
	anim="Melee"
	c2(la,0.1,3,-1.5,0.7,-0.2,-135,0,-45)
	c1(hw,0.1,3,0,1.5,0,-25,-30,0)
	anim=""
	Combo=1
end

function Combo2()
	Combo=1.5
	anim="Melee"
	BBD=2
	so(ids.Slash3,ha,1,1.1)
	c2(la,0.3,3,-1,0.7,-0.3,-45,0,-45)
	c1(hw,0.3,3,0,1.5,0,15,10,0)
	BBD=0
	anim=""
	Combo=2
end

function Combo3()
	Combo=2.5
	anim="Melee"
	c2(hw,0.1,3,0,1.5,0,0,0,0) 
	c1(la,0.1,3,-0.5,0.5,-1,0,180,-90)
	wait(0.08)
	Combo=3
	anim=""
end

function Combo4()
	Combo=3.5
	anim="Melee"
	BBD=2
	so(ids.Slash3,ha,1,1.1)
	c2(la,0.25,3,-1.5,0.5,-0.2,160,180,-90)
	c1(hw,0.25,3,0,1.5,0,0,-60,0)
	BBD=0
	anim=""
	Combo=4
end

function Break()
	UseGyro=true
	Combo=-0.5
	Stance(0.1)
	anim=""
	Combo=0
end

function Button1Down()
	if equip=="equipped" and anim=="" and Combo==0 then
		anim="Throw"
		local lolunit=math.deg((Torso.Position-fmouse.Hit.p).unit.y)
		c2(tw,0.1,3,0,0,0,90,180,-50)
		c2(hw,0.1,3,0,1.5,0,lolunit,50,0)
		c1(la,0.1,3,-1.5,0.5,0.25,30,0,90+lolunit)
		wait(0.25)
		c2(tw,0.25,3,0,0,0,90,180,50)
		c2(hw,0.25,3,0,1.5,0,lolunit,-50,0)
		c1(la,0.25,3,-1.5,0.5,-0.5,-40,0,90-lolunit)
		BBD=2 
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
	print(key:byte())
	local oldtap=dtap[key] or 0
	dtap[key]=tick()
	if key=="f" and equip=="equipped" and anim=="" then 
		anim="Blocking" Block.Value=3 Hum.WalkSpeed=12
		c2(la,0.1,3,-1.25,0.5,0,-55,0,-55) c1(ra,0.1,3,1,0.5,-0.5,50,-180,45)
		local ofs = RA.CFrame:toObjectSpace(ha.CFrame)
		haw.Part0=RA haw.C0=ofs haw.C1=cn(0,0,0) rAni(haw)
		qAni(haw,0.5,-0.5,0,30,90,0,0,0.1/1.3,1)
		c2(la,0.07,3,-1.5,0.5,0,-20,0,20)
		c2(tw,0.07,3,0,0,0,90,180,-70)
		c2(hw,0.07,3,0,1.5,0,0,70,0)
		c1(ra,0.07,3,1.5,0.4,-0.2,-170,0,10)
		anim="Block" 
		so(ids.Block,ha,1,1)
		repeat wait(0.1) BlockTime=BlockTime+0.1 until Block.Value<=0 or not keys[key] or BlockTime>10
		if anim=="Block" then
			anim="Unblocking" Block.Value=0 Hum.WalkSpeed=18
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
		elseif Combo==2 then
			Combo3()
			q(function() 
				wait(0.5)
				if Combo==3 then
					Break()
				end
			end)
		elseif Combo==3 then
			Combo4()
			q(function()
				wait(0.5)
				if Combo==4 then
					Break()
				end
			end)
		end
	elseif key==" " and anim=="" and equip=="equipped" then
		if Combo==0 then
			UseGyro=false
			Combo=1
			q(function()
				wait(0.3)
				if Combo==1 then
					Break()
				end
			end)
		elseif Combo==1 then
			UseGyro=false
			Combo=1.5
			anim='Flip'
			Legs''
			Hum.Jump=true
			AddBV(60,fTorso.CFrame*ca(rd(25),0,0),fTorso,0.4)
			c2(ra,0.2,3,1.5,0.5,0,-10,0,15)
			c2(la,0.2,3,-1.5,0.5,0,-10,0,-15)
			c2(rl,0.2,3,0.5,-0.25,-0.8,20,0,0)
			c2(ll,0.2,3,-0.5,-0.25,-0.8,20,0,0)
			c2(hw,0.2,3,0,1.5,-0.25,40,0,0)
			c1(tw,0.1,3,0,0,0,90+360,180,0)
			c1(tw,1,3,0,0,0,90,180,0)
			Stance(0.15)
			Legs()
			anim=''
			wait(0.1)
			Break()
		end		
	elseif key:byte()==48 and anim=="" and equip=="equipped" and running then
		anim="Running" Hum.WalkSpeed=24 UseGyro=false
		q(function()
			for i=70,80,2 do
				Cam.FieldOfView=i
				wait()
			end
		end)
		c2(tw,0.15,3,0,0,0,90+15,180,0)
		c2(hw,0.15,3,0,1.5,0,-15,0,0)
		c2(ra,0.15,3,1.5,0.5,0,20,0,-20)
		c1(la,0.15,3,-1.5,0.5,0,20,0,20)
		repeat wait(0.1) timer=timer+0.1 until not running or not keys[key] or timer>=2.5
		q(function()
			for i=80,70,-2 do
				Cam.FieldOfView=i
				wait()
			end
		end)
		timer=0
		Stance(0.2)
		Hum.WalkSpeed=18
		anim=""
	end
end

function KeyUp(key)
	key=key:lower()
	keys[key]=false
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

i=0 
Gyro=qi{"BodyGyro",fTorso,D=50,P=1500}
game:GetService("RunService").Stepped:connect(function() 
	if fmouse ~= nil and UseGyro then
		Gyro.maxTorque=v3(1/0,1/0,1/0)
		Gyro.cframe = cn(fTorso.Position,v3(fmouse.Hit.p.x,fTorso.Position.y,fmouse.Hit.p.z))
	else 
		Gyro.maxTorque = v3(0,0,0) 
	end 
	i=i+3
	chakw.C0=ca(0,0,rd(i))
	if anim=="Block" then
		haw.C0=cn(0.5,-0.5,0)*ca(0,rd(90),rd(i*10))
	end
end)

Hum.Running:connect(function(spd) running=spd>0 and true or false end)