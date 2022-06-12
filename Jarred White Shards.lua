fly=false
sel=false
trail=false
ori=true
spin=false
lig=false
run=false
gho=false
Num=0
prts={}
Colors = {1001,1001}
Modes = {{"None",BrickColor.Gray()},{"Self",BrickColor.new(0,1,0)},{"Fun",BrickColor.new(1031)}}
Mode = "None"
sin=math.sin
rad=math.rad
plr = game.Players.LocalPlayer
char = plr.Character
mos=plr:GetMouse()
tor = char.Torso
hum=char.Humanoid
neck=tor.Neck
mo=Instance.new("Model",char)
function getangles(cframe)
local x,y,z,m00,m01,m02,m10,m11,m12,m20,m21,m22=cframe:components()
local X=math.atan2(-m12,m22)
local Y=math.asin(m02)
local Z=math.atan2(-m01,m00) return X,Y,Z end
so = function(id,par,lo,pi,vo)s = Instance.new("Sound",par) s.Looped=lo s.Pitch=pi
s.SoundId = id s.Volume=vo s:play() end
function cp(parent,color,size,transparency,anchored,cancollide)
local newp=Instance.new("Part",parent)
newp.TopSurface='Smooth'newp.BottomSurface='Smooth'
newp.FormFactor="Custom"newp.BrickColor=BrickColor.new(color)
newp.Size=size newp.Anchored=anchored newp.CanCollide=cancollide
newp.Transparency=transparency newp:BreakJoints()return newp end
function TweenCFrame(part,cframe,speed)
local c0=part.CFrame Spawn(function() for i=-90,90,speed do
local r=((math.sin(math.rad(i))+1)/2)
local a=Vector3.new(getangles(c0)):lerp(Vector3.new(getangles(cframe)),r)
part.CFrame=CFrame.new(c0.p:lerp(cframe.p,r))*CFrame.Angles(a.x,a.y,a.z)wait() end end) end
pl=function(ran,par)po=Instance.new("PointLight",par)
po.Color= BrickColor.new("Bright orange").Color po.Range=ran end
fir = function(hs,fs,parent)fi = Instance.new('Fire',parent or Weapon)
--fi.Color= BrickColor.new("Royal purple").Color
fi.Heat=hs --fi.SecondaryColor= BrickColor.new("Really black").Color
fi.Size=fs return fi end
hum.Changed:connect(function()
hum.MaxHealth = 100
hum.Health = 100
end)
hum.Name="Fork Monger"

for i=1,6 do p=cp(mo,Colors[1],Vector3.new(1.2,.2,.2),0,true,false)
table.insert(prts,p)end
for i=1,6 do p=cp(mo,Colors[2],Vector3.new(1.6,.2,.2),0,true,false)
table.insert(prts,p)end
function origin(spd)
    	for i,v in pairs(prts)do
			if(i<7)then
				TweenCFrame(v,tor.CFrame*CFrame.new(0,0,.7)*CFrame.Angles(0,0,Num+math.rad(360/6)*i)*CFrame.new(0,1,0),spd)
			else
				TweenCFrame(v,tor.CFrame*CFrame.new(0,0,.7)*CFrame.Angles(0,0,-Num+math.rad(360/6)*i)*CFrame.new(0,1.35,0),spd)
			end
    end
end


function cfix()
	for i,v in pairs(prts)do
		if(i<7)then
			v.BrickColor = BrickColor.new(Colors[1])
			else
			v.BrickColor = BrickColor.new(Colors[2])
		end
	end
end

function expl()
	ori = false
	local Pos = mos.Hit.p+Vector3.new(0,1,0)
	for i,v in pairs(prts) do
		TweenCFrame(v,CFrame.new(Pos)*CFrame.Angles(0,math.rad(360/12)*i,0)*CFrame.new(1,0,0),10)
	end
	wait(.7)
	Instance.new("Explosion",workspace).Position = Pos
	wait(.3)
    origin(10)
    wait(.5)
    ori=true
end

function tel()
	if(mos.Target == nil)then  return  end
	ori=false
	local Pos = mos.Hit.p
	for i,v in pairs(prts)do
		TweenCFrame(v,CFrame.new(Pos)*CFrame.Angles(0,math.rad(360/12)*i,0)*CFrame.new(0,0,5),10)
	end
	wait(.7)
	for i=1,5,.5 do
		wait()
		for i2,v in pairs(prts)do
			v.CFrame = CFrame.new(Pos)*CFrame.Angles(0,math.rad(360/12)*i2,0)*CFrame.new(0,0,5-i)
		end
	end
	tor.CFrame = CFrame.new(Pos)*CFrame.new(0,3,0)
	origin(10)
	wait(.5)
	ori=true
end
function plaicl()
	ori = false
	local Pos = mos.Hit.p+Vector3.new(0,1,0)
	for i,v in pairs(prts) do
		TweenCFrame(v,CFrame.new(Pos)*CFrame.Angles(0,math.rad(360/12)*i,0)*CFrame.new(1,0,0),10)
	end
	wait(.7)
    blu=cp(mo,'Royal purple',Vector3.new(1,1,1),1,true,false)
    fir(0,1,blu)
    pl(20,blu)
    blu.CFrame= CFrame.new(Pos)
	wait(.5)
    origin(10)
    wait(.5)
    ori=true
end
function selt()
	if(sel == false)then
		ori = false
		sel = true
		Mode="None"
		for i,v in pairs(prts)do
			TweenCFrame(v,tor.CFrame*CFrame.Angles(0,math.rad(360/12)*i,0)*CFrame.new(3,0,0),10)
			if(Modes[i] ~= nil)then  v.BrickColor = Modes[i][2]  end
		end
    else
        mo.Parent=workspace
        local ray = Ray.new(tor.CFrame.p,(mos.Hit.p - tor.CFrame.p).unit * 500) 
        local hit, pos = Workspace:FindPartOnRay(ray)
		if(hit.Parent ~= mo)then  print(hit)mo.Parent=char return  end mo.Parent=char
		for i,v in pairs(prts) do
            if hit.BrickColor==BrickColor.Gray()then Mode="None"origin(10)wait(.5)cfix()sel = false ori = true end
            if hit.BrickColor==BrickColor.new(0,1,0)then Mode="Self"origin(10)wait(.5)cfix()sel = false ori = true end
            if hit.BrickColor==BrickColor.new(1031)then Mode="Fun"origin(10)wait(.5)cfix()sel = false ori = true end
		end
        print(Mode)
    end
end
game:getService("RunService").Stepped:connect(function()
     Num = Num + 0.01
    --Game:GetService('StarterGui'):SetCoreGuiEnabled(4, true)
    if lig==true then
    for i,v in pairs(prts)do
            li.CFrame=tor.CFrame+Vector3.new(0,5,0)
			if(i<7)then
				v.CFrame = CFrame.new(tor.CFrame.p)*CFrame.new(0,5,0)*CFrame.Angles(Num,Num,Num+math.rad(360/6)*i)*CFrame.new(1.5,0,0)
			else
				v.CFrame = CFrame.new(tor.CFrame.p)*CFrame.new(0,5,0)*CFrame.Angles(Num+1.55,Num,Num+math.rad(360/6)*i)*CFrame.new(1.85,0,0)
			end
	    end
    end
    if run==true then
    for i,v in pairs(prts)do
			v.CFrame = CFrame.new(tor.CFrame.p)*CFrame.new(0,-3,0)*CFrame.Angles(0,Num+math.rad(360/12)*i,0)*CFrame.new(3,0,0)*CFrame.Angles(1.55,0,0)
		end end
		if gho==true then plat.CFrame= tor.CFrame* CFrame.new(0, -3.6, 0)
        for i,v in pairs(prts)do
			if(i<7)then 
				v.CFrame = CFrame.new(tor.CFrame.p)*CFrame.new(0,-math.sin(Num)*3,0)*CFrame.Angles(0,1.55+Num+math.rad(360/6)*i,0)*CFrame.new(3,0,0)
			else
				v.CFrame = CFrame.new(tor.CFrame.p)*CFrame.new(0,math.sin(Num)*3,0)*CFrame.Angles(0,-Num+math.rad(360/6)*i,0)*CFrame.new(3,0,0)
			end
	    end
    end
    if ori==true then
        for i,v in pairs(prts)do
			if(i<7)then
				v.CFrame = tor.CFrame*CFrame.new(0,0,.7)*CFrame.Angles(0,0,Num+math.rad(360/6)*i)*CFrame.new(0,1,0)
			else
				v.CFrame = tor.CFrame*CFrame.new(0,0,.7)*CFrame.Angles(0,0,-Num+math.rad(360/6)*i)*CFrame.new(0,1.35,0)
			end
        end
    end
    if fly==true then
        Direction = CFrame.new(tor.Position,mos.Hit.p)
	    bg.cframe = Direction*CFrame.Angles(-1.55,0,0)
	    bv.velocity = mos.Hit.lookVector*100
        for i,v in pairs(prts)do
			if(i<7)then
				v.CFrame = tor.CFrame*CFrame.new(0,-3,0)*CFrame.Angles(0,Num+math.rad(360/6)*i,0)*CFrame.new(0,0,1)
			else
				v.CFrame = tor.CFrame*CFrame.new(0,3,0)*CFrame.Angles(0,-Num+math.rad(360/6)*i,0)*CFrame.new(0,0,1.35)
			end
	    end
end
end)

mos.KeyDown:connect(function(key)
    if(key == "q")then
        Mode="None"
        selt()
    end
    if(key == "p")then
        tor.CFrame=CFrame.new(0,30,0)
    end
    if(Mode ==  "Fun")then
    if(key == "r")then
        plaicl()
    end
    if(key == "e")then led = not led
        if led == true then
        ori=false
        bg=Instance.new("BodyGyro",tor)
        bv=Instance.new("BodyVelocity",tor)
        bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
	    bv.maxForce = Vector3.new(99e3,99e3,99e3)
	    if(hum.Sit ~= true)then hum.PlatformStand = true end
	    fly=true
    else
        fly=false
        bg:Destroy()
        bv:Destroy()
        hum.PlatformStand = false
        origin(20)
        wait(.3)
        ori=true
        end
    end
    if(key == "t")then
        expl()
    end
    if(key == "f")then leg = not leg
        if leg == true then
        ori=false
        plat=cp(mo,'Royal purple',Vector3.new(3,1,3),1,true,true)
        gho=true
    else
        gho=false
        plat:Destroy()
        origin(20)
        wait(.3)
        ori=true
        end
        end
    end
    if(Mode ==  "Self")then
    if(key == "e")then
        tel()
    end
    if(key == "r")then lef = not lef
        if lef == true then
        ori=false
        hum.WalkSpeed=100
        run=true
    else
        run=false
        hum.WalkSpeed=16
        origin(10)
        wait(.5)
        ori=true
    end
    end
    if(key == "t")then lea = not lea
        if lea == true then
        ori=false
        li=cp(mo,'Royal purple',Vector3.new(1,1,1),1,true,false)
        fir(0,3,li)
        pl(60,li)
        lig=true
    else
        li:Destroy()
        lig=false
        origin(10)
        wait(.5)
        ori=true
    end
    end
    end
end)

