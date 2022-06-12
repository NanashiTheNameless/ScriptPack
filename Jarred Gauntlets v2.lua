local asin = math.asin;

local atan2 = math.atan2;

local rad = math.rad;

local sin = math.sin;

local abs = math.abs;

local ceil = math.ceil;

local pi = math.pi;

local swing=1;

local hitdeb=false;

local deb=false;

local player = game.Players.LocalPlayer;

local pchar = player.Character;

local mouse = player:GetMouse();

local torso=pchar.Torso;

local skate=false;

local legs=true;

local anim=true;

local tsp=0;

local csp=0;

local hover=false;

local dmgs={};

local sworddmg={};

local anim2=false;

local SAmmo=7;

local anglespeed = 1;

local mode='';

local angle = 0;

local animationprts={};

local spawn={};

local cf,ca,v3=CFrame.new,CFrame.Angles,Vector3.new

local tol=Instance.new("HopperBin",player.Backpack)

tol.Name="1069x"

Part = function(x,y,z,color,tr,cc,an,parent)
    local p = Instance.new('Part',parent or Weapon)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(x,y,z)
    p.BrickColor = BrickColor.new(color)
    p.CanCollide = cc
    p.Transparency = tr
    p.Anchored = an
    p.TopSurface,p.BottomSurface = 0,0
    p:BreakJoints()
    return p
end
--brb
wPart = function(x,y,z,color,tr,cc,an,parent)
    local wp = Instance.new('WedgePart',parent or Weapon)
    wp.formFactor = 'Custom'
    wp.Size = Vector3.new(x,y,z)
    wp.BrickColor = BrickColor.new(color)
    wp.CanCollide = cc
    wp.Transparency = tr
    wp.Anchored = an
    wp.TopSurface,wp.BottomSurface = 0,0
    return wp
end
TrailOn = false

local function CFrameFromTopBack(at, top, back)
	local right = top:Cross(back)
	return CFrame.new(at.x, at.y, at.z,
	right.x, top.x, back.x,
	right.y, top.y, back.y,
	right.z, top.z, back.z)
end

function Triangle(a, b, c)
	local edg1 = (c-a):Dot((b-a).unit)
	local edg2 = (a-b):Dot((c-b).unit)
	local edg3 = (b-c):Dot((a-c).unit)
	if edg1 <= (b-a).magnitude and edg1 >= 0 then
		a, b, c = a, b, c
	elseif edg2 <= (c-b).magnitude and edg2 >= 0 then
		a, b, c = b, c, a
	elseif edg3 <= (a-c).magnitude and edg3 >= 0 then
		a, b, c = c, a, b
	else 
		print("unreachable")
	end
	local len1 = (c-a):Dot((b-a).unit)
	local len2 = (b-a).magnitude - len1
	local width = (a + (b-a).unit*len1 - c).magnitude
	local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
	local list = {}
	if len1 > 0.01 then
		local w1 = wPart(0,0,0,'White',0.5,false,true,pchar)
		local sz = v3(0.2, width, len1)
		w1.Size = sz
		local sp = Mesh(w1,2,0,0,0)
		sp.MeshType='Wedge'
		sp.Scale=v3(0,1,1)*sz/w1.Size
		w1:BreakJoints()
		w1.Anchored = true
		w1.Transparency = 0.7
		Spawn(function()
			for i=0,1,0.1 do
				wait()
				w1.Transparency=w1.Transparency+0.03
			end
		end)
		w1.CFrame = maincf*ca(math.pi,0,math.pi/2)*cf(0,width/2,len1/2)
		table.insert(list,w1)
	end
	if len2 > 0.01 then
		local w2 = wPart(0,0,0,'White',0.5,false,true,pchar)
		local sz = v3(0.2, width, len2) 
		w2.Size = sz
		local sp = Mesh(w2,2,0,0,0)
		sp.MeshType='Wedge'
		sp.Scale=v3(0,1,1)*sz/w2.Size
		w2:BreakJoints()
		w2.Anchored = true
		w2.Transparency = 0.7
		Spawn(function()
			for i=0,1,0.1 do
				wait()
				w2.Transparency=w2.Transparency+0.03
			end
		end)
		w2.CFrame = maincf*ca(math.pi,math.pi,-math.pi/2)*cf(0,width/2,-len1 - len2/2)
		table.insert(list,w2)
	end
	return unpack(list)
end

Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end

TWeld = function(p0,p1,x,y,z,rx,ry,rz,par)
    local w = Weld(p0,p1,0,0,0,0,0,0,par)
    table.insert(spawn,w)
	Tween(w,cf(x,y,z)*ca(rx,ry,rz),.05)
    return w
end

Mesh = function(par,num,x,y,z)
    local msh = nil
    if num == 1 then
        msh = Instance.new("CylinderMesh",par)
    elseif num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = 3
    elseif num == 3 then
        msh = Instance.new("BlockMesh",par)
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end
    msh.Scale = Vector3.new(x,y,z)
    return msh
end

function explosion(col1,col2,cfr,sz,rng,dmg)
    local a= Part(1,1,1,col1,.5,false,true,pchar)
    local a2= Part(1,1,1,col2,.5,false,true,pchar)
    local a3= Part(1,1,1,col2,.5,false,true,pchar)
    local v1,v2,v3=sz.x,sz.y,sz.z
    local m= Mesh(a,'http://www.roblox.com/asset/?id=1185246',v1,v2,v3)
    local m2= Mesh(a2,3,v1/3,v2/3,v3/3)
    local m3= Mesh(a3,3,v1/3,v2/3,v3/3)
    a.CFrame=cfr
    a2.CFrame=cfr*ca(math.random(),math.random(),math.random())
    a3.CFrame=cfr*ca(math.random(),math.random(),math.random())
    for i,v in pairs(workspace:children()) do
        if v:IsA("Model") and v:findFirstChild("Humanoid") then
            if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                if (v:findFirstChild("Torso").Position - a.Position).magnitude < rng and v.Name ~= pchar.Name then
                    v.Humanoid.Health=v.Humanoid.Health-dmg
                end
            end
        end
    end
    Spawn(function()
        while wait() do
            if a.Transparency >= 1 then a:Destroy() a2:Destroy() a3:Destroy() break end
            m.Scale=m.Scale+Vector3.new(0.1,0.1,0.1)
            m2.Scale=m2.Scale+Vector3.new(0.1,0.1,0.1)
            m3.Scale=m3.Scale+Vector3.new(0.1,0.1,0.1)
            a.Transparency=a.Transparency+0.05
            a2.Transparency=a2.Transparency+0.05
            a3.Transparency=a3.Transparency+0.05
        end
    end)
end

so = function(id,par,lo,pi)
    s = Instance.new("Sound",par) s.Looped=lo s.Pitch=pi
    s.SoundId = "http://roblox.com/asset/?id="..id s:play()
    return s
end

Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency)
    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}
    for i=1,Times do 
		local li = Instance.new("Part",workspace)
		li.TopSurface =0
		li.BottomSurface = 0
		li.Anchored = true
		li.Transparency = Transparency or 0.4
		li.BrickColor = BrickColor.new(Color)
        li.formFactor = "Custom"
        li.CanCollide = false
        li.Size = Vector3.new(Thickness,Thickness,magz/Times)
        local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
		local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
        if Times == i then 
            local magz2 = (curpos - End).magnitude li.Size = Vector3.new(Thickness,Thickness,magz2)
            li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
        else
            li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p game.Debris:AddItem(li,0.01)
    end
end

function connectsworddmg()
    for i=1,#sworddmg do
        dodmg=sworddmg[i].Touched:connect(function(hit)
            if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= pchar.Name and hitdeb==false then
                hitdeb=true
                hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-10
                wait(.1)
                hitdeb=false
            end
        end)
        table.insert(dmgs,dodmg)
    end
end

function disconnectsworddmg()
    for i=1,#dmgs do
        dmgs[i]:disconnect()
    end
    dmgs={}
end


Tween = function(Weld, Stop, Step,a)
    ypcall(function()
        local func = function()
            local Start = Weld.C1
            local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
            local Stop = Stop
            local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
            Spawn(function()
                for i = 0, 1, Step or .1 do
                    wait()
                    Weld.C1 = cf( (Start.p.X * (1 - i)) + (Stop.p.X * i),(Start.p.Y * (1 - i)) + (Stop.p.Y * i),(Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * ca((X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),(Z1 * (1 - i)) + (Z2 * i) )
                end
                Weld.C1 = Stop
            end)
        end 
        if a then
            coroutine.wrap(func)()
        else
            func()
        end
    end)
end

local function getAngles(cf)
    local sx,sy,sz,m00,m01,m02,m10,m11,m12,m20,m21,m22 = cf:components()
    return atan2(-m12,m22),asin(m02),atan2(-m01,m00)
end

Lerp = {
    Number = function(C1,C2,inc)
        return C1 + (C2 - C1) * inc
    end;
    CFrame = function(a,b,m)
		local c,d={a:components()},{b:components()}
		table.foreach(c,function(a,b)c[a]=c[a]+(d[a]-c[a])*m end)
		return CFrame.new(unpack(c))
	end;
}

local function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end

local Neck = genWeld(pchar.Torso,pchar.Head)

local LeftShoulder = genWeld(pchar.Torso,pchar['Left Arm'])

local RightShoulder = genWeld(pchar.Torso,pchar['Right Arm'])

local LeftHip = genWeld(pchar.Torso,pchar['Left Leg'])
    
local RightHip = genWeld(pchar.Torso,pchar['Right Leg'])

local RootJoint = genWeld(pchar.HumanoidRootPart,pchar.Torso)

Neck.C0 = CFrame.new(0,1,0)

Neck.C1 = CFrame.new(0,-0.5,0)

LeftShoulder.C0 = CFrame.new(-1,0.5,0)

LeftShoulder.C1 = CFrame.new(0.5,0.5,0)

RightShoulder.C0 = CFrame.new(1,0.5,0)

RightShoulder.C1 = CFrame.new(-0.5,0.5,0)

LeftHip.C0 = CFrame.new(-1,-1,0)

LeftHip.C1 = CFrame.new(-0.5,1,0)

RightHip.C0 = CFrame.new(1,-1,0)

RightHip.C1 = CFrame.new(0.5,1,0)

RootJoint.C0 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/2,0,math.pi)

RootJoint.C1 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/2,0,math.pi)

local mo=Instance.new("Model",pchar)

local mpa1= Part(1.1,.3,1.1,'Black',0,false,false,mo)

Mesh(mpa1,'rbxasset://fonts/torso.mesh',.55,.05,1.1)

local mwl1= Weld(mpa1,pchar['Right Arm'],0,-.75,0,0,0,0,mo)

local pa= Part(1.1,.3,1.1,'Black',0,false,false,mo)

Mesh(pa,'rbxasset://fonts/torso.mesh',.55,.05,1.1)

Weld(pa,mpa1,0,.75,0,0,0,0,mo)

local pa= Part(1.1,.3,1.1,'Black',0,false,false,mo)

Mesh(pa,'rbxasset://fonts/torso.mesh',.55,.05,1.2)

Weld(pa,mpa1,0,.375,0,rad(30),0,0,mo)

local pa= Part(1.1,.3,1.1,'Black',0,false,false,mo)

Mesh(pa,'rbxasset://fonts/torso.mesh',.55,.05,1.2)

Weld(pa,mpa1,0,.375,0,-rad(30),0,0,mo)

local pa= Part(1.1,.3,1.1,'Black',0,false,false,mo)

Mesh(pa,'rbxasset://fonts/torso.mesh',.6,.05,1.1)

Weld(pa,mpa1,0,.375,0,0,0,rad(30),mo)

local pa= Part(1.1,.3,1.1,'Black',0,false,false,mo)

Mesh(pa,'rbxasset://fonts/torso.mesh',.6,.05,1.1)

Weld(pa,mpa1,0,.375,0,0,0,-rad(30),mo)

local pa= Part(1,1,1,'',0,false,false,mo)

Mesh(pa,1,.4,.5,.4)

Weld(pa,mpa1,0,.375,-.31,rad(90),0,0,mo)

local pa= Part(1,1,1,'',0,false,false,mo)

Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.4,.4,.4)

Weld(pa,mpa1,0,.375,-.55,0,0,0,mo)

local ball= Part(1,1,1,'White',0,false,false,mo)

Mesh(ball,'http://www.roblox.com/asset/?id=1185246',.5,.5,.5)

local ballweld= Weld(ball,mpa1,0,.375,-.55,0,0,0,mo)

for i=1,5 do
    
    local spk= Part(1,1,1,'White',0,false,false,mo)
    
    Mesh(spk,'http://www.roblox.com/asset/?id=1778999',.2,.25,.2)
    
    local spkw= Weld(spk,ball,0,0,0.25,rad(90),0,0,mo)
    
    table.insert(animationprts,spkw)
    
end


local function newLerpTo(weld)
        return {
                Weld = weld;
                To = weld.C0; 
                Cache = weld.C0; 
                Speed = 0.2; 
        }
end

local function opnbl(v)
    if v=='t' then
        Tween(ballweld,cf(0,.375,-1.2),.1)
        for i=1,#animationprts do
            if i==1 then
                Tween(animationprts[i],cf(0,0,.25)*ca(rad(90),0,0),.1)
            elseif i==2 then
                Tween(animationprts[i],cf(0,.25,0)*ca(0,0,0),.1)
            elseif i==3 then 
                Tween(animationprts[i],cf(0,-.25,0)*ca(-rad(180),0,0),.1)
            elseif i==4 then
                Tween(animationprts[i],cf(.25,0,0)*ca(0,0,-rad(90)),.1)
            elseif i==5 then
                Tween(animationprts[i],cf(-.25,0,0)*ca(0,0,rad(90)),.1)
            end
        end
    elseif v=='f' then
        anim2=false
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(120),0,rad(50)) * CFrame.new(.2,-.5,0)
        wait(.25)
        Spawn(function()
            for i = 0,1,0.1 do wait()
                so('28445431',torso,false,20)
                ballweld.C1=ballweld.C1 *CFrame.Angles(0,0,i*2-0.0005)
            end
        end)
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(40)) * CFrame.new(.2,-.5,0)
        wait(.25)
        anim2=true
        wait(.25)
        Tween(ballweld,cf(0,.375,-.55),.1)
        for i=1,#animationprts do
            Tween(animationprts[i],cf(0,0,.25)*ca(rad(90),0,0),.1)
        end
    end
end

local function build(what)
    if what=='Sniper' then
        wep=Instance.new('Model',mo)
        wep.Name='Sniper'
        mpa1= Part(1,.3,.3,'Dark stone grey',0,false,false,wep)
        mwl1= TWeld(mpa1,pchar['Right Arm'],0,-2,-.4,0,-pi/2,pi/2,wep)
        pa= Part(1,.4,.2,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0,-0.35,0,0,0,0,wep)
        pa= Part(.2,.75,.2,'Black',0,false,false,wep)
        Mesh(pa,1,1,1,1)
        TWeld(pa,mpa1,-.75,-0.4,0,0,0,rad(90),wep)
        pa= Part(.2,.75,.2,'Black',0,false,false,wep)
        Mesh(pa,1,1,1,1)
        TWeld(pa,mpa1,-1.3,-.15,0,0,0,rad(40),wep)
        pa= Part(2,.3,.3,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,-.5,0.2,0,0,0,0,wep)
        pa= Part(.3,1.2,.3,'Black',0,false,false,wep)
        Mesh(pa,1,1,1,1)
        TWeld(pa,mpa1,-1.1,0.2,0,0,0,rad(90),wep)
        pa= Part(.1,2,.1,'Black',0,false,false,wep)
        Mesh(pa,1,1,1,1)
        TWeld(pa,mpa1,-2.6,0.2,0,0,0,rad(90),wep)
        brl= Part(.3,.2,.3,'Black',0,false,false,wep)
        Mesh(brl,1,1,.5,1)
        TWeld(brl,mpa1,-3.25,0.2,0,0,0,rad(90),wep)
        pa= Part(1.2,.2,.2,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,-0.2,0.3,0,0,0,0,wep)
        pa= Part(1,1,1,'Black',0,false,false,wep)
        Mesh(pa,1,.1,.2,.1)
        TWeld(pa,mpa1,0,0.45,0,0,0,0,wep)
        pa= Part(1,1,1,'Black',0,false,false,wep)
        Mesh(pa,1,.1,.2,.1)
        TWeld(pa,mpa1,-.4,0.45,0,0,0,0,wep)
        pa= Part(1,1,1,'Black',0,false,false,wep)
        Mesh(pa,1,.2,.75,.2)
        TWeld(pa,mpa1,-.2,0.625,0,0,0,rad(90),wep)
        pa= Part(1,1,1,'Black',0,false,false,wep)
        Mesh(pa,1,.3,.2,.3)
        TWeld(pa,mpa1,.25,0.625,0,0,0,rad(90),wep)
        pa= Part(1,1,1,'Black',0,false,false,wep)
        Mesh(pa,1,.35,.2,.35)
        TWeld(pa,mpa1,-.8,0.625,0,0,0,rad(90),wep)
        pa= Part(1,1,1,'Black',0,false,false,wep)
        Mesh(pa,'http://www.roblox.com/asset/?id=1778999',.26,.2,.26)
        TWeld(pa,mpa1,-.55,0.625,0,0,0,-rad(90),wep)
        pa= Part(1,1,1,'Black',0,false,false,wep)
        Mesh(pa,3,.075,.2,.075)
        TWeld(pa,mpa1,-.875,0.8,0,0,0,0,wep)
        pa= Part(1,1,1,'Black',0,false,false,wep)
        Mesh(pa,3,.075,.2,.075)
        TWeld(pa,mpa1,.325,0.775,0,0,0,0,wep)
        pa= Part(1,1,1,'Black',0,false,false,wep)
        Mesh(pa,1,.35,.05,.35)
        TWeld(pa,mpa1,-.92,0.9,0,0,0,rad(90),wep)
        pa= Part(1,1,1,'Black',0,false,false,wep)
        Mesh(pa,1,.3,.05,.3)
        TWeld(pa,mpa1,.36,0.85,0,0,0,rad(90),wep)
        sld= Part(.1,.5,.1,'Black',0,false,false,wep)
        Mesh(sld,1,1,1,1)
        slider=TWeld(sld,mpa1,.4,0.2,0,0,0,rad(90),wep)
        pa= Part(1,1,1,'Black',0,false,false,wep)
        Mesh(pa,1,.1,.3,.1)
        TWeld(pa,sld,0,-0.18,0.15,rad(90),0,0,wep)
        bulleth= Part(.5,.2,.2,'Black',0,false,false,wep)
        TWeld(bulleth,mpa1,0,0.2,-.1,0,0,0,wep)
        pa= Part(1.5,.2,.3,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,1.2,0,0,0,0,0,wep)
        pa= Part(1,.2,.2,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0.65,-.45,0,0,0,0,wep)
        pa= Part(.85,.2,.3,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,1.04,-0.34,0,0,0,-rad(60),wep)
        pa= Part(.3,.2,.2,'Black',0,false,false,wep)
        Mesh(pa,3,1,.5,.5)
        TWeld(pa,mpa1,.8,-.2,0,0,0,rad(60),wep)
        pa= Part(.75,.2,.3,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,1.55,-.7,0,0,0,0,wep)
        pa= Part(.2,.9,.3,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,2,-.35,0,0,0,0,wep)
        clip= Part(.5,.5,.2,'Black',0,false,false,wep)
        Mesh(clip,3,1,1,.5)
        TWeld(clip,mpa1,0,-0.5,0,0,0,0,wep)
        byp= Part(.2,.4,.2,'Black',0,false,false,wep)
        Mesh(byp,1,.5,1,.5)
        TWeld(byp,mpa1,-1.5,0,0,rad(90),0,0,wep)
        pa= Part(.2,.2,.2,'Black',0,false,false,wep)
        Mesh(pa,1,1,.5,1)
        TWeld(pa,byp,0,0.15,0,0,0,0,wep)
        pa= Part(.2,.2,.2,'Black',0,false,false,wep)
        Mesh(pa,1,1,.5,1)
        TWeld(pa,byp,0,-0.15,0,0,0,0,wep)
        mv1= Part(.2,1,.2,'Black',0,false,false,wep)
        Mesh(mv1,1,.5,1,.5)
        TWeld(mv1,byp,-.55,-0.15,0.1,-rad(50),0,rad(100),wep)
        mv2= Part(.2,1,.2,'Black',0,false,false,wep)
        Mesh(mv2,1,.5,1,.5)
        TWeld(mv2,byp,-.55,0.15,0.1,rad(50),0,-rad(100),wep)
        pa= Part(.2,.2,.2,'Black',0,false,false,wep)
        Mesh(pa,1,.75,.4,.75)
        TWeld(pa,mv1,0,-0.1,0,0,0,0,wep)
        pa= Part(.2,.2,.2,'Black',0,false,false,wep)
        Mesh(pa,1,.75,.75,.75)
        TWeld(pa,mv1,0,0.1,0,0,0,0,wep)
        pa= Part(.2,.2,.2,'Black',0,false,false,wep)
        Mesh(pa,1,.9,.5,.9)
        TWeld(pa,mv1,0,0.5,0,0,0,0,wep)
        pa= Part(.2,.2,.2,'Black',0,false,false,wep)
        Mesh(pa,1,.75,.4,.75)
        TWeld(pa,mv2,0,0.1,0,0,0,0,wep)
        pa= Part(.2,.2,.2,'Black',0,false,false,wep)
        Mesh(pa,1,.75,.75,.75)
        TWeld(pa,mv2,0,-0.1,0,0,0,0,wep)
        pa= Part(.2,.2,.2,'Black',0,false,false,wep)
        Mesh(pa,1,.9,.5,.9)
        TWeld(pa,mv2,0,-0.5,0,0,0,0,wep)
    elseif what=='Sword' then
        wep=Instance.new('Model',mo)
        wep.Name='Sword'
        mpa1= Part(.25,1.2,.25,'Dark stone grey',0,false,false,wep)
        Mesh(mpa1,1,1,1,1)
        mwl1= TWeld(mpa1,pchar['Right Arm'],0,-1.2,-0.2,-pi/2,rad(53),0,wep)
        pa= Part(1,.4,.2,'Black',0,false,false,wep)
        Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.6,.3,.4)
        TWeld(pa,mpa1,0,-0.27,0,rad(90),rad(70),0,wep)
        pa= Part(1,.4,.2,'Black',0,false,false,wep)
        Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.6,.3,.4)
        TWeld(pa,mpa1,0,-0.27,0,rad(90),-rad(70),0,wep)
        pa= Part(1,.4,.2,'Black',0,false,false,wep)
        Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.3,.6,.4)
        TWeld(pa,mpa1,0,-0.27,0,rad(30),0,0,wep)
        pa= Part(1,.4,.2,'Black',0,false,false,wep)
        Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.3,.6,.4)
        TWeld(pa,mpa1,0,-0.27,0,-rad(30),0,0,wep)
        pa= Part(1,.4,.2,'Black',0,false,false,wep)
        Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.6,.3,.4)
        TWeld(pa,mpa1,0,0.27,0,rad(90),rad(70),0,wep)
        pa= Part(1,.4,.2,'Black',0,false,false,wep)
        Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.6,.3,.4)
        TWeld(pa,mpa1,0,0.27,0,rad(90),-rad(70),0,wep)
        pa= Part(1,.4,.2,'Black',0,false,false,wep)
        Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.3,.6,.4)
        TWeld(pa,mpa1,0,0.27,0,rad(30),0,0,wep)
        pa= Part(1,.4,.2,'Black',0,false,false,wep)
        Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.3,.6,.4)
        TWeld(pa,mpa1,0,0.27,0,-rad(30),0,0,wep)
        blade1= Part(.5,1.75,.2,'Dark stone grey',0,false,false,wep)
        Mesh(blade1,3,1,1,.5)
        TWeld(blade1,mpa1,0,1.5,0,0,0,0,wep)
        blade2= Part(.3,.75,.2,'Dark stone grey',0,false,false,wep)
        Mesh(blade2,3,1,1,.5)
        TWeld(blade2,mpa1,0,2.75,0,0,0,0,wep)
        blade3= Part(.435,.75,.2,'Dark stone grey',0,false,false,wep)
        Mesh(blade3,3,1,1,.5)
        TWeld(blade3,mpa1,0,3.5,0,0,0,0,wep)
        table.insert(sworddmg,blade1)
        table.insert(sworddmg,blade2)
        table.insert(sworddmg,blade3)
        pa= Part(.2,1.75,.2,'Black',0,false,false,wep)
        Mesh(pa,3,.5,1,.5)
        TWeld(pa,mpa1,.25,1.5,0,0,rad(45),0,wep)
        pa= Part(.2,1.75,.2,'Black',0,false,false,wep)
        Mesh(pa,3,.5,1,.5)
        TWeld(pa,mpa1,-.25,1.5,0,0,-rad(45),0,wep)
        pa= Part(.2,.75,.2,'Black',0,false,false,wep)
        Mesh(pa,3,.5,1,.5)
        TWeld(pa,mpa1,.15,2.75,0,0,rad(45),0,wep)
        pa= Part(.2,.75,.2,'Black',0,false,false,wep)
        Mesh(pa,3,.5,1,.5)
        TWeld(pa,mpa1,-.15,2.75,0,0,-rad(45),0,wep)
        pa= Part(.2,.75,.2,'Black',0,false,false,wep)
        Mesh(pa,3,.5,1,.5)
        TWeld(pa,mpa1,0.2175,3.5,0,0,rad(45),0,wep)
        pa= Part(.2,.75,.2,'Black',0,false,false,wep)
        Mesh(pa,3,.5,1,.5)
        TWeld(pa,mpa1,-0.2175,3.5,0,0,-rad(45),0,wep)
        pa= Part(.2,.75,.2,'Black',0,false,false,wep)
        Mesh(pa,3,1,1,1)
        TWeld(pa,mpa1,.2,.75,.1,0,rad(45),-rad(30),wep)
        pa= Part(.2,.75,.2,'Black',0,false,false,wep)
        Mesh(pa,3,1,1,1)
        TWeld(pa,mpa1,.2,.75,-.1,0,-rad(45),-rad(30),wep)
        pa= Part(.2,.75,.2,'Black',0,false,false,wep)
        Mesh(pa,3,1,1,1)
        TWeld(pa,mpa1,-.2,.75,.1,0,-rad(45),rad(30),wep)
        pa= Part(.2,.75,.2,'Black',0,false,false,wep)
        Mesh(pa,3,1,1,1)
        TWeld(pa,mpa1,-.2,.75,-.1,0,rad(45),rad(30),wep)
        pa= Part(.2,.75,.2,'Black',0,false,false,wep)
        Mesh(pa,'http://www.roblox.com/Asset/?id=9756362',.4,1,.15)
        TWeld(pa,mpa1,0,3.85,0,0,0,0,wep)
    elseif what=='HBoard' then
        wep=Instance.new('Model',mo)
        wep.Name='Sword'
        mpa1= Part(.25,1.2,.25,'Black',0,false,false,wep)
        Mesh(mpa1,1,1,1,1)
        mwl1= TWeld(mpa1,pchar['Right Arm'],0,-1,0,pi/2,0,0,wep) 
        pa= Part(.25,1.2,.6,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0,1,0,0,0,0,wep) 
        pa= Part(.25,1.2,.6,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0,-1,0,0,0,0,wep) 
        pa= wPart(.25,1.2,.3,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0,-1,-.45,0,0,0,wep) 
        pa= wPart(.25,1.2,.3,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0,-1,.45,0,pi,0,wep) 
        pa= wPart(.25,1.2,.3,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0,1,-.45,0,0,pi,wep) 
        pa= wPart(.25,1.2,.3,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0,1,.45,0,pi,pi,wep)
        pa= Part(.25,.8,.2,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0,2,.5,0,0,0,wep)
        pa= Part(.25,.8,.2,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0,2,-.5,0,0,0,wep) 
        pa= Part(.25,.8,.2,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0,-2,.5,0,0,0,wep)
        pa= Part(.25,.8,.2,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0,-2,-.5,0,0,0,wep) 
        pa= wPart(.25,.6,.2,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0,2.5,.3,pi/2,0,0,wep)
        pa= wPart(.25,.6,.2,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0,2.5,-.3,-pi/2,pi,0,wep)
        pa= wPart(.25,.6,.2,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0,-2.5,.3,pi/2,pi,0,wep)
        pa= wPart(.25,.6,.2,'Dark stone grey',0,false,false,wep)
        TWeld(pa,mpa1,0,-2.5,-.3,-pi/2,0,0,wep)
        pa= wPart(.2,1.18,.3,'Black',0,false,false,wep)
        TWeld(pa,mpa1,0,-1,-.46,0,0,0,wep) 
        pa= wPart(.2,1.18,.3,'Black',0,false,false,wep)
        TWeld(pa,mpa1,0,-1,.46,0,pi,0,wep)
        pa= wPart(.2,1.18,.3,'Black',0,false,false,wep)
        TWeld(pa,mpa1,0,1,-.46,0,0,pi,wep) 
        pa= wPart(.2,1.18,.3,'Black',0,false,false,wep)
        TWeld(pa,mpa1,0,1,.46,0,pi,pi,wep) 
        pa= Part(.2,1.2,.6,'Black',0,false,false,wep)
        TWeld(pa,mpa1,0,.99,0,0,0,0,wep) 
        pa= Part(.2,1.2,.6,'Black',0,false,false,wep)
        TWeld(pa,mpa1,0,-.99,0,0,0,0,wep) 
        pa= Part(.2,.8,.2,'Black',0,false,false,wep)
        TWeld(pa,mpa1,0,2,.51,0,0,0,wep)
        pa= Part(.2,.8,.2,'Black',0,false,false,wep)
        TWeld(pa,mpa1,0,2,-.51,0,0,0,wep)
        pa= Part(.2,.8,.2,'Black',0,false,false,wep)
        TWeld(pa,mpa1,0,-2,.51,0,0,0,wep)
        pa= Part(.2,.8,.2,'Black',0,false,false,wep)
        TWeld(pa,mpa1,0,-2,-.51,0,0,0,wep)
        pa= wPart(.2,.6,.2,'Black',0,false,false,wep)
        TWeld(pa,mpa1,0,2.51,.3,pi/2,0,0,wep)
        pa= wPart(.2,.6,.2,'Black',0,false,false,wep)
        TWeld(pa,mpa1,0,2.51,-.3,-pi/2,pi,0,wep)
        pa= wPart(.2,.6,.2,'Black',0,false,false,wep)
        TWeld(pa,mpa1,0,-2.51,.3,pi/2,pi,0,wep)
        pa= wPart(.2,.6,.2,'Black',0,false,false,wep)
        TWeld(pa,mpa1,0,-2.51,-.3,-pi/2,0,0,wep)
        whel1= Part(.2,.7,.2,'Dark stone grey',0,false,false,wep)
        Mesh(whel1,3,.5,1,.5)
        whel1w=TWeld(whel1,mpa1,0,-2,0,0,0,0,wep) 
        whel2= Part(.2,.7,.2,'Dark stone grey',0,false,false,wep)
        Mesh(whel2,3,.5,1,.5)
        whel2w=TWeld(whel2,mpa1,0,2,0,0,0,0,wep)
        pa= Part(.2,.2,.2,'Black',0,false,false,wep)
        Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.75,.75,1)
        TWeld(pa,whel1,0,0,0,0,pi/2,0,wep)
        pa= Part(.2,.2,.2,'Black',0,false,false,wep)
        Mesh(pa,'http://www.roblox.com/asset/?id=3270017',.75,.75,1)
        TWeld(pa,whel2,0,0,0,0,pi/2,0,wep)
    end
end

LerpTo = {
        Neck = newLerpTo(Neck);
        LeftArm = newLerpTo(LeftShoulder);
        RightArm = newLerpTo(RightShoulder);
        LeftLeg = newLerpTo(LeftHip);
        RightLeg = newLerpTo(RightHip);
        RootJoint = newLerpTo(RootJoint);
}
function onKeyDown(key)
	key = key:lower()
	if deb==true then return end
	if key == "z" then
	    z= not z
	    if z then
	        mode='Sniper'
	        opnbl('f')
	        build('Sniper')
	        anim2=false
	        wait(.3)
	        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(-rad(30),rad(60),0)
	        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))
	        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,-rad(50)) * CFrame.new(.2,-.5,0)
	        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(80)) * CFrame.new(.2,-.5,0)
        else
            mode=''
	        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
            anim2=true
            for i=1,#spawn do
                Tween(spawn[i],cf(0,0,0),.05)
            end
            wait(.8)
            spawn={}
            wep:Destroy()
            opnbl('t')
        end
    elseif key == "x" then
	    x= not x
	    if x then
	        mode='Sword'
	        opnbl('f')
	        build('Sword')
	        anim2=false
	        wait(.3)
            anim3=true
        else
            mode=''
            anim3=false
            anim2=true
            sworddmg={}
            for i=1,#spawn do
                Tween(spawn[i],cf(0,0,0),.05)
            end
            wait(.8)
            spawn={}
            wep:Destroy()
            opnbl('t')
        end
    elseif key == "c" then
	    c= not c
	    if c then
	        mode='HBoard'
	        opnbl('f')
	        build('HBoard')
	        anim2=true
        else
            mode=''
            --anim3=false
            anim2=true
            sworddmg={}
            for i=1,#spawn do
                Tween(spawn[i],cf(0,0,0),.05)
            end
            wait(.8)
            spawn={}
            wep:Destroy()
            opnbl('t')
        end
	elseif key == "r" then
	    if mode=='Sniper' then
            if SAmmo==0 then
                deb=true
                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(30),0)
    	        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))
    	        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,0) * CFrame.new(.2,-.5,0)
    	        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(50)) * CFrame.new(.2,-.5,0)
    	        wait(.3)
    	        so('2697295',torso,false,.4)
    	        newc=clip:Clone()
    	        newc.Parent=workspace
    	        newc.CFrame=clip.CFrame
    	        newc:BreakJoints()
    	        newc.CanCollide=true
    	        game.Debris:AddItem(newc,math.random(7,15))
    	        clip.Transparency=1
    	        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(60),0,0) * CFrame.new(.2,-.5,0)
    	        wait(.2)
    	        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(-rad(20),0,rad(20)) * CFrame.new(.2,-.5,0)
    	        wait(.1)
    	        newc= Part(.5,.5,.2,'Black',0,false,false,mo)
                Mesh(newc,3,1,1,.5)
                Weld(newc,pchar['Left Arm'],0,-1,-0.5,rad(90),0,0,mo)
                wait(.1)
                LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(60),0,0) * CFrame.new(.2,-.5,0)
                wait(.2)
                LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,0) * CFrame.new(.2,-.5,0)
                wait(.05)
                so('2697295',torso,false,.5)
                newc:Destroy()
                clip.Transparency=0
                wait(.2)
                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(-rad(30),rad(60),0)
    	        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))
    	        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,-rad(50)) * CFrame.new(.2,-.5,0)
    	        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(80)) * CFrame.new(.2,-.5,0)
    	        SAmmo=7
    	        wait(.4)
    	        deb=false
            end
        elseif mode=='Sword' then
            connectsworddmg()
            deb=true
            anim3=false
            spn=0
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(0,0,rad(220)),.2)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(40))* CFrame.new(-.2,-.25,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(40))* CFrame.new(.2,-.25,0)
            wait(.2)
            Spawn(function()
                for i=1,3 do
                    so('161006212',torso,false,1)
                    wait(.5)
                end
            end)
            TrailOn=true
            for i=1,36 do
                spn=spn+30
                wait()
                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(spn))
            end
            TrailOn=false
            legs=false
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,-rad(10)) * CFrame.new(0,.5,0)
    	    LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(10)) * CFrame.new(0,.5,0)
    	    LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,0,-.5)
    	    so('10209645',torso,false,.3)
    	    wait(.2)
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(-pi/2,-rad(35),0),1)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(120),0,-rad(40))* CFrame.new(-.2,-.25,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(120),0,rad(40))* CFrame.new(.2,-.25,0)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,-rad(30))
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(30))
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,0,7)
            wait(.4)    
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(-pi/2-rad(180),-rad(35),0),1)
            wait(.1)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(40))* CFrame.new(-.2,-.25,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(40))* CFrame.new(.2,-.25,0)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,0,-1)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,1,-1)
    	    LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-rad(50),0,0) * CFrame.new(0,0.5,0)
            wait(.2)
            so('138210320',torso,false,1)
            explosion('Black','White',torso.CFrame,v3(20,20,20),10,30)
            wait(.4)
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(-pi/2,rad(53),0),.2)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,0,0)
            disconnectsworddmg()
            TrailOn=false
            anim3=true
            legs=true
            deb=false
        elseif mode == 'HBoard' then
            if skate == true then
            end
        end
    elseif key == 'w' then
        if skate then
            foward=true
            Spawn(function()repeat wait()csp = math.min(50,csp+(10*(1/30)))until foward==false end)
            end
    elseif key == 'a' then
        if skate then
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,rad(10),-rad(90))*cf(0,0,.3)
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(90),rad(10))
            left=true
            Spawn(function()repeat wait()tsp= math.min(8,tsp+(.5)) until left==false end)
            end
    elseif key == 's' then
        if skate then
            back=true
            Spawn(function()repeat wait()csp = math.max(-50,csp-(10*(1/30)))until back==false end)
            end
    elseif key == 'd' then
        if skate then
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,-rad(10),-rad(90))*cf(0,0,.3)
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(90),-rad(10))
            right=true
            Spawn(function()repeat wait()tsp= math.max(-8,tsp-(.5)) until right==false end)
        end
	elseif key == "f" then
	    if mode=='Sword' then
            connectsworddmg()
            deb=true
            anim3=false
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(rad(90),-rad(13),rad(90)),.2)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,rad(20))* CFrame.new(0,0,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(40))* CFrame.new(0,0,0)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(60),0)
            wait(.4)
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(rad(90),rad(50),rad(90)),.75)
            so('160069154',torso,false,1)
            wait(.05)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(50))* CFrame.new(0,0,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,-rad(20))* CFrame.new(0,0,0)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(60),0)
            wait()
            Spawn(function()
                for i=1,3 do
                    local efx= Part(1,1,1,'Black',.5,false,true,wep)
                    local m= Mesh(efx,'http://www.roblox.com/asset/?id=20329976',3,1,3)
                    efx.CFrame=torso.CFrame*ca(pi/2,0,-pi/2)
                    Spawn(function()
                        for i=1,7 do wait()
                            m.Scale=m.Scale+Vector3.new(1,.1,1)
                        end
                        efx:Destroy()
                    end)
                    wait(.1)
                end
            end)
            cfm=torso.CFrame*ca(0,pi/2,0)
            goto=cfm.lookVector*60
            local v = Instance.new("BodyVelocity",torso)
            v.maxForce = Vector3.new(1,1,1)*9e9
            v.P = 2000
            v.velocity = goto
            wait(.25)
            v:Destroy()
            --LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(90))
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(40),0,rad(50))* CFrame.new(0,0,0)
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(pi/1,0,0),.3)
            wait(.2)
            so('161006212',torso,false,.5)
            TrailOn=true
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,rad(90))* CFrame.new(-0.5,-0.5,0)
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(80),0)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(80))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(30))
            wait(.3)
            TrailOn=false
            legs=false
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(pi/1,rad(90),0),.3)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),-rad(30),rad(90))* CFrame.new(-0.5,-0.5,0)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(80)) * CFrame.new(0,0,-1)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,1,-1)
    	    LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-rad(50),0,0) * CFrame.new(0,0.5,0)
    	    wait(.2)
    	    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),rad(30),rad(90))* CFrame.new(-0.5,-0.5,0)
    	    for i=1,4 do wait()
    	        so('182765513',torso,false,1.2)
        	    local bm= Part(1,1,1,'Black',0.2,false,true,pchar)
                local bmm=Mesh(bm,'http://www.roblox.com/asset/?id=1778999',0,0,0)
                bm.CFrame=torso.CFrame*cf(3+i*8,0,0)*ca(math.random(-50,50)/100,0,math.random(-50,50)/100)
                for i,v in pairs(workspace:children()) do
                    if v:IsA("Model") and v:findFirstChild("Humanoid") then
                        if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                            if (v:findFirstChild("Torso").Position - bm.Position).magnitude < 10 and v.Name ~= pchar.Name then
                                Spawn(function()
                                    v.Humanoid:TakeDamage(40)
                                    local cur= v.Torso
                                    cur.Anchored=true
                                    for i=1,4 do 
                                        local new= Part(1,1,1,'Black',0.2,false,true,mo)
                                        local newm=Mesh(new,'http://www.roblox.com/asset/?id=1778999',1,3,1)
                                        new.CFrame=cur.CFrame*CFrame.new(0,-2.5,0)*CFrame.Angles(math.random(-100,100)/100,0,math.random(-100,100)/100)
                                        game.Debris:AddItem(new,3)
                                    end
                                    wait(3)
                                    so('87015121',cur,false,1)
                                    cur.Anchored=false
                                end)
                            end
                        end
                    end
                end
                Spawn(function()
                    for i=1,10 do wait()bmm.Scale=bmm.Scale+Vector3.new(.5,1,.5) end
                    wait(.5)
                    for i=1,10 do wait()bmm.Scale=bmm.Scale-Vector3.new(.5,1,.5) end
                    bm:Destroy()
                end)
            end
            wait(.2)
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(-pi/2,rad(53),0),.2)
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,0,0)
            disconnectsworddmg()
            TrailOn=false
            anim3=true
            legs=true
            deb=false
        elseif mode == 'HBoard' then
            f= not f
	        if f then
                legs=false
                anim2=false
                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(40))* CFrame.new(-.2,-.25,0)
                LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(40))* CFrame.new(.2,-.25,0)
                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,0,-1)
                LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,1,-1)
        	    LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-rad(50),0,0) * CFrame.new(0,0.5,0)
        	    wait(.3)
        	    LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,-rad(10))
        	    LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,rad(10))
                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))*cf(0,0,1)
                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(90),0)
                LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(20))
                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),-rad(30),rad(90))* CFrame.new(-0.5,-0.5,0)
                wait(.1)
                Tween(mwl1,cf(0,-1,2)*ca(0,pi/2,pi/2),.5)
                Tween(whel1w,cf(0,-2,0)*ca(0,pi/2,0),.5)
                Tween(whel2w,cf(0,2,0)*ca(0,pi/2,0),.5)
                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),-rad(70),rad(90))* CFrame.new(-0.5,-1,0)
                wait(.12)
                mwl1.Part1=torso
                mwl1.C1=cf(0,-3,0)*ca(0,0,pi/2)
                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))*cf(0,0,.3)
                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(90),0)
                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(0,0,rad(20))
                ROF=Instance.new('BodyAngularVelocity',torso)
                ROF.maxTorque = v3(0, math.huge, 0)
    			ROF.angularvelocity = v3(0, 0, 0)
    			BV=Instance.new('BodyVelocity',torso)
    			BV.maxForce = v3(math.huge,0,math.huge)
    			BV.velocity = v3(0,0,0)
                skateso=so('22917014',torso,true,0)
                skateso.Volume=100
                skate=true
                pchar.Humanoid.WalkSpeed=0
            else
                skate=false
                csp=0
                tsp=0
                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
                skateso:Destroy()
                BV:Destroy()
                ROF:Destroy()
                pchar.Humanoid.WalkSpeed=16
                mwl1.Part1=pchar['Right Arm']
                Tween(whel1w,cf(0,-2,0)*ca(0,0,0),.5)
                Tween(whel2w,cf(0,2,0)*ca(0,0,0),.5)
                Tween(mwl1,cf(0,-1,0)*ca(pi/2,0,0),.5)
                anim2=true
                legs=true
            end
        end
	end 
end 

function onKeyUp(key)
    key = key:lower()
    if key == 'w' then
        if skate then
            foward=false
        end
    elseif key == 'a' then
        if skate then
            left=false
            if skate then 
                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))*cf(0,0,.3)
            else
                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))*cf(0,0,2)
            end
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(90),0)
            wait()
            tsp=0
        end
    elseif key == 's' then
        if skate then
            back=false
        end
    elseif key == 'd' then
        if skate then
            if skate then 
                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))*cf(0,0,.3)
            else
                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))*cf(0,0,2)
            end
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(90),0)
            right=false
            wait()
            tsp=0
        end
    end
end

function onClicked(mouse)
    if deb==true then return end
    if mode=='Sniper' then
        if SAmmo > 0 then
            deb=true
            SAmmo=SAmmo-1
            so('10209859',torso,false,.5)
            local ray = Ray.new(brl.CFrame.p,(mouse.hit.p - brl.CFrame.p).unit*1200)
            local hit,position = game.Workspace:FindPartOnRay(ray,pchar)
            local humanoid = hit and hit.Parent and hit.Parent:findFirstChild("Humanoid")
            function part(par,colr)
                local prt=Instance.new("Part",par)
                prt.FormFactor=3
                prt.TopSurface=0
                prt.BottomSurface=0
                prt.Transparency=1
                prt.CanCollide=false
                local item=Instance.new('BillboardGui',prt)
                item.Adornee=prt
                item.Size=UDim2.new(math.random(5,10)/10, 0, math.random(5,10)/10, 0)
                local frm=Instance.new('Frame',item)
                frm.Size=UDim2.new(1,0,1,0)
                frm.BorderSizePixel=0
                frm.BackgroundTransparency=math.random(2,6)/10
                if colr then
                    frm.BackgroundColor3=BrickColor.new(colr).Color
                end
                return prt
            end
            ypcall(function()
                if not humanoid then
                    if hit.Name=='Handle' then
                        hit:BreakJoints()
                        hit.Velocity=Vector3.new(math.random(-20,20),math.random(30,60),math.random(-20,20))
                    end
                else
                    if humanoid.Parent.Name ~= pchar.Name then 
                        if hit.Name=='Head' then
                            humanoid.Health=0
                            for i=1,10 do
                                local noob1=part(workspace,'Bright red')
                                noob1.CFrame=humanoid.Torso.CFrame*CFrame.new(math.random(-3.5,3.5),0,math.random(-3.5,3.5))
                                noob1.Velocity=Vector3.new(math.random(-20,20),math.random(20,40),math.random(-20,20))
                            end
                        else
                            humanoid.Health=humanoid.Health-30
                            for i=1,10 do
                                local noob1=part(workspace,'Bright red')
                                noob1.CFrame=humanoid.Torso.CFrame*CFrame.new(math.random(-3.5,3.5),0,math.random(-3.5,3.5))
                                noob1.Velocity=Vector3.new(math.random(-20,20),math.random(20,40),math.random(-20,20))
                            end
                        end
                    end
                end
            end)
            local distance = (position - brl.CFrame.p).magnitude	
            local ray= Part(1,1,1,'White',0,false,true,mo)
            local raym=Mesh(ray,1,.2,distance,.2)
            ray.CFrame = cf(position, brl.CFrame.p) *cf(0,0,-distance/2)*ca(rad(90),0,0)
            local bult= Part(.2,.5,.2,'Bright yellow',0,true,false,mo)
            Mesh(bult,1,1,1,1)
            bult.CFrame=bulleth.CFrame*ca(0,0,rad(90))
            bult.Velocity=bult.CFrame.lookVector*20
            game.Debris:AddItem(bult,math.random(7,15))
            local cols={'Bright orange','Bright red'}
            local dcf=brl.CFrame*ca(pi/2,0,0)
            local goto=dcf.lookVector*.5
            Spawn(function()
                for i=1,math.random(3,6) do wait()
                    local a= Part(1,1,1,cols[math.random(1,2)],0,false,true,mo)
                    local m= Mesh(a,3,1,1,1)
                    a.CFrame=dcf*ca(math.random(),math.random(),math.random())
                    Spawn(function()
                        while wait() do
                            if a.Transparency >= 1 then a:Destroy() break end
                            m.Scale=m.Scale-Vector3.new(0.1,0.1,0.1)
                            a.CFrame=a.CFrame+goto
                            a.Transparency=a.Transparency+0.05
                        end
                    end)
                end
            end)
            Spawn(function()
                repeat wait() raym.Scale=raym.Scale-Vector3.new(0.01,0,0.01) until raym.Scale.x < 0
            end)
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(60),0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(120),-rad(30),-rad(50)) * CFrame.new(.2,-.5,0)
    	    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(100),-rad(30),-rad(80)) * CFrame.new(.2,-.5,0)
            Tween(slider,cf(.6,0.2,0)*ca(0,0,rad(90)),.5)
            wait(.15)
            Tween(slider,cf(.4,0.2,0)*ca(0,0,rad(90)),.05)
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(-rad(30),rad(60),0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,-rad(50)) * CFrame.new(.2,-.5,0)
    	    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(80)) * CFrame.new(.2,-.5,0)
    	    wait(.6)
    	    deb=false
        end
    elseif mode=='Sword' then
        anim3=false
        deb=true
        if swing==1 then
            so('161006212',torso,false,math.random(5,11)/10)
            connectsworddmg()
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(0,0,rad(220)),.2)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(40))* CFrame.new(-.2,-.25,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(40))* CFrame.new(.2,-.25,0)
            wait(.15)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(60))
            TrailOn=true
            wait(.3)
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(-pi/2,rad(53),0),.2)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
            disconnectsworddmg()
            TrailOn=false
            anim3=true
            swing=2
            wait(.4)
            deb=false
            return
        elseif swing==2 then
            so('161006212',torso,false,math.random(5,11)/10)
            connectsworddmg()
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(0,rad(180),rad(150)),.2)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(40))* CFrame.new(-.2,-.25,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(40))* CFrame.new(.2,-.25,0)
            wait(.15)
            TrailOn=true
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(60))
            wait(.3)
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(-pi/2,rad(53),0),.2)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
            disconnectsworddmg()
            TrailOn=false
            anim3=true
            swing=3
            wait(.4)
            deb=false
            return
        elseif swing==3 then
            connectsworddmg()
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(-pi/2-rad(20),rad(55),-rad(50)),.2)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(120),0,-rad(40))* CFrame.new(-.2,-.25,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(120),0,rad(40))* CFrame.new(.2,-.25,0)
            wait(.4)
            so('161006212',torso,false,math.random(5,11)/10)
            TrailOn=true
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(-pi/2-rad(45),rad(55),-rad(60)),.2)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(50),0,-rad(40))* CFrame.new(-.2,-.25,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(50),0,rad(40))* CFrame.new(.2,-.25,0)
            wait(.4)
            Tween(mwl1,cf(0,-1.2,-0.2)*ca(-pi/2,rad(53),0),.2)
            disconnectsworddmg()
            TrailOn=false
            anim3=true
            swing=1
            wait(.4)
            deb=false
            return
        end
    end
end 

tol.Selected:connect(function(mouse)
	mouse.Button1Down:connect(function() onClicked(mouse) end)
	mouse.KeyDown:connect(onKeyDown)
	mouse.KeyUp:connect(onKeyUp)
    anim=false
    anim2=true
    wait(.2)
    opnbl('t')
end)

tol.Deselected:connect(function(mouse)
    anim2=false
    anim=true
    Tween(ballweld,cf(0,.375,-.55),.1)
    for i=1,#animationprts do
        Tween(animationprts[i],cf(0,0,.25)*ca(rad(90),0,0),.1)
    end
end)




local function updateanims()
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
            anglespeed = 1/2
            if anim==true then
                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(sin(angle)*0.05,0,0)
                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(sin(angle)*0.1,0,0)
                LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(sin(angle)*0.1,0,0)
            end
            if legs==true then
                LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(0,0,abs(sin(angle))*0.1)
                LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,-abs(sin(angle))*0.1) 
            end
        end
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
            anglespeed = 4
            if anim==true then
                LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,math.sin(angle)*0.05)
                LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(-sin(angle)*.8,0,rad(10))
                LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(sin(angle)*.8,0,-rad(10))
            end
            if legs==true then
                LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(sin(angle)*.8,0,0)
                LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(-sin(angle)*.8,0,0)
            end
        end
    if anim2==true then
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(60),0,-rad(20))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(sin(angle)*0.1,0,0)
        end
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(60),rad(20),-rad(50))
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(sin(angle)*.8,0,-rad(10))
        end
    end
    if anim3==true then
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(60)+sin(angle)*.05,0,-rad(40))* CFrame.new(-.2,-.25,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(60)+sin(angle)*.05,0,rad(40))* CFrame.new(.2,-.25,0)
        end
        if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(60)+sin(angle)*.1,0,-rad(40))* CFrame.new(-.2,-.25,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(60)+sin(angle)*.1,0,rad(40))* CFrame.new(.2,-.25,0)
        end
    end
end

Spawn(function()
    while wait()do
        angle = (angle % 100) + anglespeed/10 -- no matter whut it has to be in a loop or its on exticy
    end 
end)
game:service'RunService'.RenderStepped:connect(function()
    if skate then
        if csp < 0 then
            it = tonumber(tostring(csp):sub(2))
            skateso.Pitch=it/20
        else
            skateso.Pitch=csp/20
        end
        ROF.angularvelocity = Vector3.new(0, tsp, 0)
        local direction = torso.CFrame * ca(0,pi/2,-pi/2)
        direction = direction.lookVector
		direction = Vector3.new(direction.x,0,direction.z).unit
		BV.velocity = direction*(csp)
		whel1w.C1=whel1w.C1*ca(-csp/90,0,0)
		whel2w.C1=whel2w.C1*ca(-csp/90,0,0)
    end
    pchar.Humanoid.CameraOffset = (pchar.HumanoidRootPart.CFrame:toObjectSpace(pchar.Head.CFrame)).p - Vector3.new(0, 1.25, 0)
	if blade2 then
		local blcf = blade2.CFrame*cf(0,-.5,0)
		if TrailOn then
			if scfr and (blade2.Position-scfr.p).magnitude > .1 then
				local h = 3.8
				local a,b = Triangle((scfr*cf(0,h/2,0)).p,(scfr*cf(0,-h/2,0)).p,(blcf*cf(0,h/2,0)).p)
				if a then game.Debris:AddItem(a,1) end 
				if b then game.Debris:AddItem(b,1) end
				local a,b = Triangle((blcf*cf(0,h/2,0)).p,(blcf*cf(0,-h/2,0)).p,(scfr*cf(0,-h/2,0)).p)
				if a then game.Debris:AddItem(a,1) end 
				if b then game.Debris:AddItem(b,1) end
				scfr = blcf
			elseif not scfr then
				scfr = blcf
			end
		elseif not TrailsOn then
			scfr = nil
		end
	end
    for _,v in pairs(LerpTo) do
        v.Weld.C0 = Lerp.CFrame(v.Weld.C0,v.To,v.Speed)
    end
    updateanims()
end)
