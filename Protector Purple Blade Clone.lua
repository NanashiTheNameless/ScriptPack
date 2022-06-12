
local asin, atan2, rad, cos, abs, ceil, pi = math.asin, math.atan2, math.rad, math.cos, math.abs, math.ceil, math.pi
local anglespeed = 1
local v3 = Vector3.new
local cf = CFrame.new
local ca = CFrame.Angles
local protect=game.Players.LocalPlayer.Name
local angle = 0
local Names = {"Protector"}
local Speed = 16
local Health = 300

local attack = false
local combo = 0
Cols={"Black","Really black","Royal purple","Alder","Magenta"}


function stick(x, y)
	weld = Instance.new("Motor") 
	weld.Name='mot'
	weld.Part0 = x
	weld.Part1 = y
	local HitPos = x.Position
	local CJ = CFrame.new(HitPos) 
	local C0 = x.CFrame:inverse() *CJ 
	local C1 = y.CFrame:inverse() * CJ 
	weld.C0 = C0 
	weld.C1 = C1 
	weld.Parent = x
end

do
    local function QuaternionFromCFrame(cf) local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() local trace = m00 + m11 + m22 if trace > 0 then local s = math.sqrt(1 + trace) local recip = 0.5/s return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 else local i = 0 if m11 > m00 then i = 1 end if m22 > (i == 0 and m00 or m11) then i = 2 end if i == 0 then local s = math.sqrt(m00-m11-m22+1) local recip = 0.5/s return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip elseif i == 1 then local s = math.sqrt(m11-m22-m00+1) local recip = 0.5/s return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip elseif i == 2 then local s = math.sqrt(m22-m00-m11+1) local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip end end end
    local function QuaternionToCFrame(px, py, pz, x, y, z, w) local xs, ys, zs = x + x, y + y, z + z local wx, wy, wz = w*xs, w*ys, w*zs local xx = x*xs local xy = x*ys local xz = x*zs local yy = y*ys local yz = y*zs local zz = z*zs return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) end
    local function QuaternionSlerp(a, b, t) local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] local startInterp, finishInterp; if cosTheta >= 0.0001 then if (1 - cosTheta) > 0.0001 then local theta = math.acos(cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((1-t)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta  else startInterp = 1-t finishInterp = t end else if (1+cosTheta) > 0.0001 then local theta = math.acos(-cosTheta) local invSinTheta = 1/math.sin(theta) startInterp = math.sin((t-1)*theta)*invSinTheta finishInterp = math.sin(t*theta)*invSinTheta else startInterp = t-1 finishInterp = t end end return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp        end

    function clerp(a,b,t)
        local qa = {QuaternionFromCFrame(a)}
        local qb = {QuaternionFromCFrame(b)}
        local ax, ay, az = a.x, a.y, a.z
        local bx, by, bz = b.x, b.y, b.z

        local _t = 1-t
        return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t))
    end
end    

Part = function(x,y,z,color,tr,cc,an,parent)
    local p = Instance.new('Part',parent or Weapon)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(x,y,z)
    p.BrickColor = BrickColor.new(color)
    p.CanCollide = cc
    p.Transparency = tr
    p.Anchored = an
    p.TopSurface,p.BottomSurface = 0,0
    p.Locked=true
    p:BreakJoints()
    return p
end

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
        local w1 = wPart(0,0,0,'Really black',0.5,false,true,pchar)
        local sz = Vector3.new(0.2, width, len1)
        w1.Size = sz
        local sp = Mesh(w1,2,0,0,0)
        sp.MeshType='Wedge'
        sp.Scale=Vector3.new(0,1,1)*sz/w1.Size
        w1:BreakJoints()
        w1.Anchored = true
        w1.Transparency = 0.7
        Spawn(function()
            for i=0,1,0.1 do
                wait()
                w1.Transparency=w1.Transparency+0.03
            end
        end)
        w1.CFrame = maincf*CFrame.Angles(math.pi,0,math.pi/2)*CFrame.new(0,width/2,len1/2)
        table.insert(list,w1)
    end
    if len2 > 0.01 then
        local w2 = wPart(0,0,0,'Really black',0.5,false,true,pchar)
        local sz = Vector3.new(0.2, width, len2) 
        w2.Size = sz
        local sp = Mesh(w2,2,0,0,0)
        sp.MeshType='Wedge'
        sp.Scale=Vector3.new(0,1,1)*sz/w2.Size
        w2:BreakJoints()
        w2.Anchored = true
        w2.Transparency = 0.7
        Spawn(function()
            for i=0,1,0.1 do
                wait()
                w2.Transparency=w2.Transparency+0.03
            end
        end)
        w2.CFrame = maincf*CFrame.Angles(math.pi,math.pi,-math.pi/2)*CFrame.new(0,width/2,-len1 - len2/2)
        table.insert(list,w2)
    end
    return unpack(list)
end

function mgblock(pa,cfr,tm,col1,col2,sz,wa)
    local cols={col1,col2}
    Spawn(function()
        for i=1,tm do
            local a= Part(1,1,1,cols[math.random(1,2)],0,false,true,pchar)
            curre=a
            v1,v2,v3=sz.x,sz.y,sz.z
            local m= Mesh(a,3,v1,v2,v3)
            a.CFrame=pa.CFrame*cfr*CFrame.Angles(math.random(),math.random(),math.random())
            Spawn(function()
                while wait() do
                    if a.Transparency >= 1 then a:Destroy() break end
                    m.Scale=m.Scale-Vector3.new(.1,0.1,0.1)
                    a.CFrame=a.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))+Vector3.new(0,0.1,0)
                    a.Transparency=a.Transparency+0.05
                end
            end)
            wait(wa)
        end
    end)
    return curre
end

function trail(p,t,h)
    Spawn(function()
        local blcf = p.CFrame
        local scfr = blcf
        for i=1,t do
            local blcf = p.CFrame
            if scfr and (p.Position-scfr.p).magnitude > .1 then
                local a,b = Triangle((scfr*CFrame.new(0,h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p,(blcf*CFrame.new(0,h/2,0)).p)
                if a then game.Debris:AddItem(a,1) end 
                if b then game.Debris:AddItem(b,1) end
                local a,b = Triangle((blcf*CFrame.new(0,h/2,0)).p,(blcf*CFrame.new(0,-h/2,0)).p,(scfr*CFrame.new(0,-h/2,0)).p)
                if a then game.Debris:AddItem(a,1) end 
                if b then game.Debris:AddItem(b,1) end
                scfr = blcf
            elseif not scfr then
                scfr = blcf
            end
            game:service'RunService'.Stepped:wait()
        end
        scfr=nil
    end)
end


so = function(id,par,lo,pi,tm)
    local s = Instance.new("Sound",par)
    s.Looped=lo
    s.Pitch=pi
    s.SoundId = "http://roblox.com/asset/?id="..id
    wait()
    s:play()
    s.Volume=10
    game.Debris:AddItem(s,tm)
    return s
end

function posfix(nom)
    Spawn(function()
        local bg=Instance.new("BodyGyro",pchar.Torso)
        bg.maxTorque=Vector3.new(0,math.huge,0)
        bg.P=5000
        bg.D=100
        bg.cframe=workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(0,nom,0)
        wait(.5)
        bg:Destroy()
    end)
end

Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
    local w = Instance.new('Motor',par or p0)
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
    return w
end

Mesh = function(par,num,x,y,z)
    local msh = _
    if num == 1 then
        msh = Instance.new("CylinderMesh",par)
    elseif num == 2 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = 3
    elseif num == 3 then
        msh = Instance.new("BlockMesh",par)
    elseif num == 4 then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshType = "Torso"
    elseif type(num) == 'string' then
        msh = Instance.new("SpecialMesh",par)
        msh.MeshId = num
    end 
    msh.Scale = Vector3.new(x,y,z)
    return msh
end

anglespeed = 1

angle = 0

local function getAngles(cf)
    local sx,sy,sz,m00,m01,m02,m10,m11,m12,m20,m21,m22 = cf:components()
    return atan2(-m12,m22),asin(m02),atan2(-m01,m00)
end

function explosion(col1,col2,cfr,sz,rng,dmg)
    local a= Part(1,1,1,col1,.5,false,true,pchar)
    local a2= Part(1,1,1,col2,.5,false,true,pchar)
    local a3= Part(1,1,1,col2,.5,false,true,pchar)
    v1,v2,v3=sz.x,sz.y,sz.z
    local m= Mesh(a,'http://www.roblox.com/asset/?id=1185246',v1,v2,v3)
    local m2= Mesh(a2,3,v1/3,v2/3,v3/3)
    local m3= Mesh(a3,3,v1/3,v2/3,v3/3)
    a.CFrame=cfr
    a2.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())
    a3.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())
    for i,v in pairs(workspace:children()) do
        if v:IsA("Model") and v:findFirstChild("Humanoid") then
            if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                if (v:findFirstChild("Torso").Position - a.Position).magnitude < rng and v.Name ~= pchar.Name and v.Name ~= protect  then
                    v.Humanoid.Health=v.Humanoid.Health-dmg
                    v.Torso.Velocity=Vector3.new(math.random(-dmg*2,dmg*2),dmg*3,math.random(-dmg*2,dmg*2))
                end
            end
        end
    end
    Spawn(function()
        while true do
            wait()
            if a.Transparency >= 1 then a:Destroy() a2:Destroy() a3:Destroy() break end
            m.Scale=m.Scale+Vector3.new(.1,0.1,0.1)
            m2.Scale=m2.Scale+Vector3.new(.1,0.1,0.1)
            m3.Scale=m3.Scale+Vector3.new(.1,0.1,0.1)
            a2.CFrame=a2.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))
            a3.CFrame=a3.CFrame*CFrame.Angles(-math.rad(2),-math.rad(2),-math.rad(2))
            a.Transparency=a.Transparency+0.05
            a2.Transparency=a2.Transparency+0.05
            a3.Transparency=a3.Transparency+0.05
        end
    end)
end

function tmdmg(tm,pa,dmg,rng)
        Spawn(function()
        for i=1,tm do wait()
            for i,v in pairs(workspace:children()) do
                if v:IsA("Model") and v:findFirstChild("Humanoid") then
                    if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                        if (v:findFirstChild("Torso").Position - pa.Position).magnitude < rng and v.Name ~= pchar.Name and v.Name ~= protect then
                            v.Humanoid.Health=v.Humanoid.Health-dmg
                        end
                    end
                end
            end
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
function build()
    local SelectedName = Names[math.random(#Names)]
    workspace[protect].Archivable=true
    pchar = workspace[protect]:Clone() --Create("Model",{Parent=workspace})
    pchar.Parent=workspace[protect]
    torso=pchar.Torso
    hum=pchar.Humanoid
    pchar.Name=SelectedName
    pl=pchar
    hum.MaxHealth=Health
    wait()
    hum.Health=Health
    hum.WalkSpeed=Speed
    local mainp=Part(2.01,2.01,1.01,'White',1,false,false,pl)
    Weld(pl.Torso,mainp,0,0,0,0,0,0,mainp)
    local p=Part(2.02,1.2,1.02,'Really black',0,false,false,pl)
    Weld(mainp,p,0,.41,0,0,0,0,p)
    local p=Part(2.02,2.03,.5,'Really black',0,false,false,pl)
    Weld(mainp,p,0,0,-0.26,0,0,0,p)
    local p=Part(.5,1,1.02,'Really black',0,false,false,pl)
    Weld(mainp,p,-0.2,-0.65,0,0,0,rad(30),p)
    local p=Part(.5,1,1.02,'Really black',0,false,false,pl)
    Weld(mainp,p,0.2,-0.65,0,0,0,-rad(30),p)
    local p=Part(.5,1,1.02,'Really black',0,false,false,pl)
    Weld(mainp,p,.76,-0.51,0,0,0,0,p)
    local p=Part(.5,1,1.02,'Really black',0,false,false,pl)
    Weld(mainp,p,-.76,-0.51,0,0,0,0,p)
    local p=Part(.65,.95,1.01,'White',0,false,false,pl)
    Weld(mainp,p,-0.15,-0.65,0,0,0,rad(30),p)
    local p=Part(.65,.95,1.01,'White',0,false,false,pl)
    Weld(mainp,p,0.15,-0.65,0,0,0,-rad(30),p)
    local p=Part(.2,1.2,.2,'Black',0,false,false,pl)
    Weld(mainp,p,0,.35,.45,0,0,0,p)
    local p=Part(.2,.2,.2,'Lavender',0,false,false,pl)
    Mesh(p,1,.5,.5,.5)
    Weld(mainp,p,0,-.51,.05,pi/2,0,0,p)
    local p=Part(.2,.2,.2,'Lavender',0,false,false,pl)
    Mesh(p,1,.5,.5,.5)
    Weld(mainp,p,0,-.51,.2,pi/2,0,0,p)
    local p=Part(2.11,.2,1.11,'Royal purple',0,false,false,pl)
    Weld(mainp,p,0,.5,0,0,0,0,p)
    local p=Part(2.13,.2,1.13,'Black',0,false,false,pl)
    Weld(mainp,p,0,.5,0,0,0,0,p)
    Mesh(p,3,1,.75,1)
    local p=Part(.2,.6,.2,'Lavender',0,false,false,pl)
    Weld(mainp,p,0.3,.65,0.5,0,0,0,p)
    Mesh(p,3,.75,1,.75)
    local p=Part(.2,.6,.2,'Lavender',0,false,false,pl)
    Weld(mainp,p,-0.3,.65,0.5,0,0,0,p)
    Mesh(p,3,.75,1,.75)
    local p=Part(.6,.2,.2,'Lavender',0,false,false,pl)
    Weld(mainp,p,0,.425,0.5,0,0,0,p)
    Mesh(p,3,1,.75,.75)
    local p=Part(.6,.2,.2,'Lavender',0,false,false,pl)
    Weld(mainp,p,0,.875,0.5,0,0,0,p)
    Mesh(p,3,1,.75,.75)
    local p=Part(.2,.6,.2,'Lavender',0,false,false,pl)
    Weld(mainp,p,0.1,.65,0.5,0,0,-rad(20),p)
    Mesh(p,3,.5,1,.75)
    local p=Part(.2,.6,.2,'Lavender',0,false,false,pl)
    Weld(mainp,p,-0.1,.65,0.5,0,0,rad(20),p)
    Mesh(p,3,.5,1,.75)
    local p=Part(.2,.25,.2,'Lavender',0,false,false,pl)
    Weld(mainp,p,-0.7,.5,0.5,0,0,0,p)
    Mesh(p,3,.5,1,.75)
    local p=Part(.2,.25,.2,'Lavender',0,false,false,pl)
    Weld(mainp,p,0.7,.5,0.5,0,0,0,p)
    Mesh(p,3,.5,1,.75)
    p=Part(2.11,.2,1.11,'Royal purple',0,false,false,pl)
    Weld(mainp,p,0,.75,0,0,0,0,p)
    local p=Part(1.01,2.01,1.01,'Really black',0,false,false,pl)
    Weld(pl['Right Leg'],p,0,0,0,0,0,0,p)
    local p=Part(1.01,2.01,1.01,'Really black',0,false,false,pl)
    Weld(pl['Left Leg'],p,0,0,0,0,0,0,p)
    local p=Part(1.01,2.01,1.01,'Really black',0,false,false,pl)
    Weld(pl['Right Arm'],p,0,0,0,0,0,0,p)
    local p=Part(1.01,2.01,1.01,'Really black',0,false,false,pl)
    Weld(pl['Left Arm'],p,0,0,0,0,0,0,p)
    local p=Part(1.02,1,1.02,'Black',0,false,false,pl)
    Weld(pl['Right Arm'],p,0,0.41,0,0,0,0,p)
    local p=Part(1.02,1,1.02,'Black',0,false,false,pl)
    Weld(pl['Left Arm'],p,0,0.41,0,0,0,0,p)
    local p=Part(1.1,.3,1.1,'Black',0,false,false,pl)
    Weld(pl['Right Arm'],p,0,-0.4,0,0,0,0,p)
    local p=Part(1.1,.3,1.1,'Black',0,false,false,pl)
    Weld(pl['Left Arm'],p,0,-0.4,0,0,0,0,p)
    local p=Part(.51,.2,1.11,'Royal purple',0,false,false,pl)
    Weld(pl['Right Arm'],p,-0.3,-0.4,0,0,0,0,p)
    local p=Part(.51,.2,1.11,'Royal purple',0,false,false,pl)
    Weld(pl['Left Arm'],p,0.3,-0.4,0,0,0,0,p)
    local p=Part(.2,1.11,.2,'Dark stone grey',0,false,false,pl)
    Mesh(p,1,1,1,1)
    Weld(pl['Right Arm'],p,0.3,0,-.4,rad(90),0,0,p)
    local p=Part(.2,1.11,.2,'Dark stone grey',0,false,false,pl)
    Mesh(p,1,1,1,1)
    Weld(pl['Left Arm'],p,-0.3,0,-.4,rad(90),0,0,p)
    local p=Part(1.03,.2,1.03,'Medium stone grey',0,false,false,pl)
    Weld(pl['Left Arm'],p,0,0,0,0,0,0,p)
    local p=Part(1.1,.2,1.03,'Medium stone grey',0,false,false,pl)
    Weld(pl['Left Arm'],p,-0.2,0.25,0,0,0,rad(40),p)
    local p=Part(1.1,.2,1.03,'Medium stone grey',0,false,false,pl)
    Weld(pl['Left Arm'],p,0.2,0.25,0,0,0,-rad(40),p)
    
	New = function(Object, Parent, Name, Data)
		local Object = Instance.new(Object)
		for Index, Value in pairs(Data or {}) do
			Object[Index] = Value
		end
		Object.Parent = Parent
		Object.Name = Name
		return Object
	end
		
	m = New("Model",nil,"Model",{})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Royal purple"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 0.400000006),CFrame = CFrame.new(-6.19765997, 2.3154006, -20.1852283, -0.459659487, -0.844636917, -0.274245769, 0.868429303, -0.36309287, -0.337406158, 0.185414284, -0.393307269, 0.900434256),Anchored = true,CanCollide = false,Color = Color3.new(0.384314, 0.145098, 0.819608),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.0900000036, 1.5, 0.200000003),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Really black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 0.200000003),CFrame = CFrame.new(-10.2849026, 0.47093609, -21.6759739, 0.459599137, 0.274224967, 0.844680846, -0.868458629, 0.337394416, 0.363040775, -0.185440272, -0.90044713, 0.393271238),Anchored = true,CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.100000001, 0.25999999, 0.100000001),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Royal purple"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 0.400000006),CFrame = CFrame.new(-10.2849197, 0.470925152, -21.6759644, 0.820387483, 0.274235934, 0.501713693, -0.570611954, 0.337407678, 0.748654962, 0.0360371731, -0.900483251, 0.433310956),Anchored = true,CanCollide = false,Color = Color3.new(0.384314, 0.145098, 0.819608),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.100000001, 0.25999999, 0.100000001),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Royal purple"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.400000006),CFrame = CFrame.new(-10.0655117, 0.740833163, -22.3963528, 0.92226541, 0.274225026, 0.272291988, -0.357383519, 0.337394148, 0.870802283, 0.146959186, -0.900447249, 0.409210235),Anchored = true,CanCollide = false,Color = Color3.new(0.384314, 0.145098, 0.819608),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.100000001, 0.25999999, 0.100000001),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Really black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 0.200000003),CFrame = CFrame.new(-10.0655212, 0.740832984, -22.3963718, 0.459617496, 0.274235934, 0.844692051, -0.868493438, 0.337407887, 0.363045663, -0.185447723, -0.900483131, 0.393276483),Anchored = true,CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.100000001, 0.25999999, 0.100000001),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Royal purple"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.600000143, 1),CFrame = CFrame.new(-10.5975561, 0.424365997, -22.2327957, 0.459635943, 0.844703317, -0.274246991, -0.868528426, 0.36305055, -0.337421417, -0.185455203, 0.393281788, 0.900519311),Anchored = true,CanCollide = false,Color = Color3.new(0.384314, 0.145098, 0.819608),})
	Mesh1 = New("CylinderMesh",Part1,"Mesh",{Scale = Vector3.new(1, 1.5, 0.100000001),})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Royal purple"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-11.1043253, 0.206570342, -22.4687767, 0.274225235, 0.844680905, 0.459599048, 0.337394118, 0.363040715, -0.868458927, -0.900447369, 0.393271297, -0.185439944),Anchored = true,CanCollide = false,Color = Color3.new(0.384314, 0.145098, 0.819608),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.280000001, 0.280000001, 0.5),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.80000037, 0.200000003),CFrame = CFrame.new(-5.86756945, 2.44408679, -19.9689026, -0.459599227, 0.844680905, 0.274225056, 0.868458807, 0.363040775, 0.337394476, 0.185440302, 0.393271297, -0.900447309),Anchored = true,CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.400000006, 1, 0.600000024),MeshType = Enum.MeshType.Wedge,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.600000024, 0.200000003),CFrame = CFrame.new(-9.75292015, 0.787398696, -21.8395786, 0.459599227, 0.844680905, -0.274225056, -0.868458807, 0.363040775, -0.337394476, -0.185440302, 0.393271297, 0.900447309),Anchored = true,CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	Mesh1 = New("BlockMesh",Part1,"Mesh",{Scale = Vector3.new(0.449999988, 1.10000002, 0.150000006),})
	handl = New("Part",m,"handle",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.600000024, 0.200000003),CFrame = CFrame.new(-10.5975342, 0.424375206, -22.2327862, 0.459603816, 0.844683707, -0.274227798, -0.86846751, 0.363041997, -0.337397844, -0.185442165, 0.393272609, 0.900456309),Anchored = true,CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	Mesh1 = New("BlockMesh",handl,"Mesh",{Scale = Vector3.new(0.5, 1.5, 0.150000006),})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.400000006, 0.200000003, 0.200000003),CFrame = CFrame.new(-10.1752129, 0.605890632, -22.0361595, -0.844603121, 0.459629774, -0.274413377, -0.362855345, -0.868378639, -0.337799579, -0.393609494, -0.185738698, 0.900237918),Anchored = true,CanCollide = false,BottomSurface = Enum.SurfaceType.Smooth,TopSurface = Enum.SurfaceType.Smooth,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.0500000007, 0.0599999987, 0.219999999),MeshId = "http://www.roblox.com/asset/?id=16606212",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Royal purple"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.600000024, 0.400000036, 0.400000006),CFrame = CFrame.new(-10.4286127, 0.496973038, -22.1541042, 0.274230719, 0.459608227, -0.844686568, 0.337400854, -0.868476331, -0.363043159, -0.900465369, -0.185443684, -0.39327392),Anchored = true,CanCollide = false,Color = Color3.new(0.384314, 0.145098, 0.819608),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.200000003, 0.200000003, 0.400000006),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.79999995, 0.200000003),CFrame = CFrame.new(-8.23247528, 1.44083679, -21.1316605, 0.459617585, 0.844692111, -0.274236023, -0.868493617, 0.363045663, -0.337407947, -0.185447752, 0.393276542, 0.90048331),Anchored = true,CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	Mesh1 = New("BlockMesh",Part1,"Mesh",{Scale = Vector3.new(0.400000006, 2.70000005, 1.25),})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Royal purple"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.800000012, 0.200000003),CFrame = CFrame.new(-10.1752262, 0.605885088, -22.0361652, 0.459617496, 0.274235934, 0.844692051, -0.868493438, 0.337407887, 0.363045663, -0.185447723, -0.900483131, 0.393276483),Anchored = true,CanCollide = false,Color = Color3.new(0.384314, 0.145098, 0.819608),})
	Mesh1 = New("CylinderMesh",Part1,"Mesh",{Scale = Vector3.new(1, 0.860000014, 0.349999994),})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Royal purple"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 0.200000003),CFrame = CFrame.new(-10.3441544, 0.53327328, -22.1147881, 0.274225235, 0.459599048, -0.844680965, 0.337394118, -0.868458927, -0.363040715, -0.900447369, -0.185439959, -0.393271297),Anchored = true,CanCollide = false,Color = Color3.new(0.384314, 0.145098, 0.819608),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.200000003, 0.200000003, 0.400000006),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Royal purple"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(1, 0.200000003, 0.400000036),CFrame = CFrame.new(-10.1752262, 0.605885088, -22.0361652, 0.274241686, -0.459626645, 0.844697714, 0.337414324, 0.86851114, 0.363048106, -0.90050137, 0.185451105, 0.393279165),Anchored = true,CanCollide = false,Color = Color3.new(0.384314, 0.145098, 0.819608),})
	Mesh1 = New("CylinderMesh",Part1,"Mesh",{Scale = Vector3.new(1, 0.899999976, 0.899999976),})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Royal purple"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000033, 0.200000003, 0.400000006),CFrame = CFrame.new(-10.1752129, 0.605890632, -22.0361595, 0.274224788, -0.459598899, 0.844681144, 0.337392837, 0.868459284, 0.363041222, -0.900448024, 0.185438991, 0.393270314),Anchored = true,CanCollide = false,Color = Color3.new(0.384314, 0.145098, 0.819608),})
	Mesh1 = New("CylinderMesh",Part1,"Mesh",{Scale = Vector3.new(1, 1.10000002, 0.25),})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.600000024, 0.200000003, 0.400000006),CFrame = CFrame.new(-10.1752129, 0.605890632, -22.0361595, 0.274230719, -0.459608287, 0.844686508, 0.337400854, 0.868476331, 0.363043219, -0.900465369, 0.185443655, 0.39327392),Anchored = true,CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	Mesh1 = New("CylinderMesh",Part1,"Mesh",{Scale = Vector3.new(1, 1, 0.5),})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.80000037, 0.200000003),CFrame = CFrame.new(-5.83461905, 2.48459363, -20.0769348, 0.459617555, 0.844692111, -0.274236083, -0.868493617, 0.363045603, -0.337407947, -0.185447752, 0.393276602, 0.90048331),Anchored = true,CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.400000006, 1, 0.600000024),MeshType = Enum.MeshType.Wedge,})
	blade = New("Part",m,"blade",{BrickColor = BrickColor.new("Royal purple"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 1.79999995, 0.200000003),CFrame = CFrame.new(-8.23247528, 1.44083679, -21.1316605, 0.459617585, 0.844692111, -0.274236023, -0.868493617, 0.363045663, -0.337407947, -0.185447752, 0.393276542, 0.90048331),Anchored = true,CanCollide = false,Color = Color3.new(0.384314, 0.145098, 0.819608),})
	Mesh1 = New("BlockMesh",blade,"Mesh",{Scale = Vector3.new(0.419999987, 2.70000005, 0.5),})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Royal purple"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-10.3096189, 0.440624267, -21.594902, 0.274241686, 0.844697714, 0.459626615, 0.337414354, 0.363048047, -0.86851114, -0.90050137, 0.393279165, -0.185451165),Anchored = true,CanCollide = false,Color = Color3.new(0.384314, 0.145098, 0.819608),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.280000001, 0.280000001, 0.5),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-10.1113911, 0.576328218, -21.73909, 0.274236202, 0.844692111, 0.459617436, 0.337407619, 0.363045603, -0.868493736, -0.90048337, 0.393276542, -0.18544744),Anchored = true,CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.280000001, 0.280000001, 0.5),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-10.3732338, 0.463769555, -21.8610172, 0.274236202, 0.844692111, 0.459617436, 0.337407619, 0.363045603, -0.868493736, -0.90048337, 0.393276542, -0.18544744),Anchored = true,CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.280000001, 0.280000001, 0.5),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Really black"),FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.400000006, 0.400000006),CFrame = CFrame.new(-8.28543091, 1.41672218, -21.1517391, -0.459677845, -0.844648123, -0.274256736, 0.868464112, -0.363097757, -0.337419629, 0.185421735, -0.393312514, 0.900470257),Anchored = true,CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.100000001, 1.5, 0.100000001),MeshId = "http://www.roblox.com/Asset/?id=9756362",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-9.9687748, 0.751787782, -22.2073421, -0.274281591, 0.844617963, -0.459726632, -0.337427109, 0.363139778, 0.868446827, 0.90046227, 0.393348873, 0.185396582),Anchored = true,CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.280000001, 0.280000001, 0.5),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Royal purple"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-10.0408382, 0.771299124, -22.4773846, -0.274281591, 0.844617963, -0.459726632, -0.337427109, 0.363139778, 0.868446827, 0.90046227, 0.393348873, 0.185396582),Anchored = true,CanCollide = false,Color = Color3.new(0.384314, 0.145098, 0.819608),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.280000001, 0.280000001, 0.5),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-10.2306175, 0.639229178, -22.3292694, -0.274281591, 0.844617963, -0.459726632, -0.337427109, 0.363139778, 0.868446827, 0.90046227, 0.393348873, 0.185396582),Anchored = true,CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.280000001, 0.280000001, 0.5),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
	Part1 = New("Part",m,"Part",{BrickColor = BrickColor.new("Really black"),Material = Enum.Material.SmoothPlastic,FormFactor = Enum.FormFactor.Custom,Size = Vector3.new(0.200000003, 0.200000003, 0.200000003),CFrame = CFrame.new(-9.9687748, 0.751787782, -22.2073421, -0.274281591, 0.844617963, -0.459726632, -0.337427109, 0.363139778, 0.868446827, 0.90046227, 0.393348873, 0.185396582),Anchored = true,CanCollide = false,Color = Color3.new(0.0666667, 0.0666667, 0.0666667),})
	Mesh1 = New("SpecialMesh",Part1,"Mesh",{Scale = Vector3.new(0.280000001, 0.280000001, 0.5),MeshId = "http://www.roblox.com/asset/?id=3270017",MeshType = Enum.MeshType.FileMesh,})
    c = m:children()
    for n = 1, #c do
    	if (c[n].className == "Part") then
    		if (c[n].Name ~= "handle") then
    			stick(c[n], m.handle)
    			wait()
    			c[n].Anchored = false
    		end
    	end
    end
    handl.Anchored=false
    mwl= Weld(handl,pchar.Torso,-1,0,-1,rad(120),0,0,m)
    m.Parent = pchar
    
    local function genWeld(a,b)
        local w = Instance.new("Weld",a)
        w.Part0 = a
        w.Part1 = b
        return w
    end
    
    local Neck = genWeld(pchar.Torso,pchar.Head)
    Neck.C0 = CFrame.new(0,1,0)
    Neck.C1 = CFrame.new(0,-0.5,0)
    local LeftShoulder = genWeld(pchar.Torso,pchar['Left Arm'])
    LeftShoulder.C0 = CFrame.new(-1,0.5,0)
    LeftShoulder.C1 = CFrame.new(0.5,0.5,0)
    local RightShoulder = genWeld(pchar.Torso,pchar['Right Arm'])
    RightShoulder.C0 = CFrame.new(1,0.5,0)
    RightShoulder.C1 = CFrame.new(-0.5,0.5,0)
    local LeftHip = genWeld(pchar.Torso,pchar['Left Leg'])
    LeftHip.C0 = CFrame.new(-1,-1,0)
    LeftHip.C1 = CFrame.new(-0.5,1,0)
    local RightHip = genWeld(pchar.Torso,pchar['Right Leg'])
    RightHip.C0 = CFrame.new(1,-1,0)
    RightHip.C1 = CFrame.new(0.5,1,0)
    local RootJoint = genWeld(pchar.HumanoidRootPart,pchar.Torso)
    RootJoint.C0 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/2,0,math.pi)
    RootJoint.C1 = CFrame.new(0,0,0) * CFrame.Angles(-math.pi/2,0,math.pi)
    
    for i=1,4 do wait()
        pchar:MoveTo(workspace[protect].Torso.Position+Vector3.new(5,0,0))
    end
    local function newLerpTo(weld)
        return {
                Weld = weld;
                To = weld.C0; 
                Cache = weld.C0; 
                Speed = 0.2; 
        }
    end
    LerpTo = {
        Neck = newLerpTo(Neck);
        LeftArm = newLerpTo(LeftShoulder);
        RightArm = newLerpTo(RightShoulder);
        LeftLeg = newLerpTo(LeftHip);
        RightLeg = newLerpTo(RightHip);
        RootJoint = newLerpTo(RootJoint);
        hndl = newLerpTo(mwl);
    }
    LerpTo.hndl.Cache=CFrame.new(0,-0.3,0)*CFrame.Angles(0,0,rad(90))
end

build()

Used={Head=false,RightArm=false,LeftArm=false,RightLeg=false,LeftLeg=false,Torso=false}

function SetAnimData(IF_DATA_IS_USED)
    Used = IF_DATA_IS_USED
end

function CheckAnimData(ANIM_TAB,DO_ANIM)
    anglespeed=Anims[ANIM_TAB][DO_ANIM].speed or 1
    if Used.Head == true then
        LerpTo.Neck.To = LerpTo.Neck.Cache * Anims[ANIM_TAB][DO_ANIM].Head
    end
    if Used.RightArm == true then
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * Anims[ANIM_TAB][DO_ANIM].RightArm
    end
    if Used.LeftArm == true then
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * Anims[ANIM_TAB][DO_ANIM].LeftArm
    end
    if Used.RightLeg == true then
        LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * Anims[ANIM_TAB][DO_ANIM].RightLeg
    end
    if Used.LeftLeg == true then
        LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * Anims[ANIM_TAB][DO_ANIM].LeftLeg
    end
    if Used.Torso == true then
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * Anims[ANIM_TAB][DO_ANIM].Torso
    end
end

function UpdateAnims()
    Anims = {
        ["Idle"] = {
            ["Stance"] = {
                speed=.25,
                Head = CFrame.Angles(cos(angle)*0.01,0,0),
                RightArm = CFrame.Angles(cos(angle)*0.1,0,0),
                LeftArm = CFrame.Angles(-cos(angle)*0.1,0,0),
                RightLeg = CFrame.Angles(cos(angle)*0.1,0,0),
                LeftLeg = CFrame.Angles(-cos(angle)*0.1,0,0),
                Torso = CFrame.Angles(0,0,0)
                },
            ["Walk"] = {
                speed=2,
                Head = CFrame.Angles(0,0,cos(angle)*0.05),
                RightArm = CFrame.Angles(-cos(angle)*1,0,0),
                LeftArm = CFrame.Angles(cos(angle)*1,0,0),
                RightLeg = CFrame.Angles(cos(angle)*1,0,0),
                LeftLeg = CFrame.Angles(-cos(angle)*1,0,0),
                Torso = CFrame.Angles(0,0,0)
                },
            ["Jump"] = {
                speed=2,
                Head = CFrame.Angles(0,0,0),
                RightArm = CFrame.Angles(rad(-20),0,0),
                LeftArm = CFrame.Angles(rad(-20),0,0),
                RightLeg = CFrame.new(0,.5,-.5)*CFrame.Angles(rad(-20),0,0),
                LeftLeg = CFrame.Angles(0,0,0), 
                Torso = CFrame.Angles(rad(10),0,0)
                }
            },
        ["Holding"] = {
            ["Stance"] = {
                speed=.25,
                Head = CFrame.Angles(cos(angle)*0.01,0,0),
                RightArm = CFrame.Angles(cos(angle)*0.1,0,rad(10)),
                LeftArm = CFrame.Angles(-cos(angle)*0.1,0,-rad(10)),
                RightLeg = CFrame.Angles(cos(angle)*0.1,0,0),
                LeftLeg = CFrame.Angles(-cos(angle)*0.1,0,0),
                Torso = CFrame.Angles(0,0,0)
                },
            ["Walk"] = {
                speed=2,
                Head = CFrame.Angles(0,0,cos(angle)*0.05),
                RightArm = CFrame.Angles(-cos(angle)*.3,0,rad(10)),
                LeftArm = CFrame.Angles(cos(angle)*.3,0,-rad(10)),
                RightLeg = CFrame.Angles(cos(angle)*1,0,0),
                LeftLeg = CFrame.Angles(-cos(angle)*1,0,0),
                Torso = CFrame.Angles(0,0,0)
                },
            ["Jump"] = {
                speed=2,
                Head = CFrame.Angles(0,0,0),
                RightArm = CFrame.Angles(rad(-20),0,0),
                LeftArm = CFrame.Angles(rad(-20),0,0),
                RightLeg = CFrame.new(0,.5,-.5)*CFrame.Angles(rad(-20),0,0),
                LeftLeg = CFrame.Angles(0,0,0), 
                Torso = CFrame.Angles(rad(10),0,0)
                }
            }
        }
end

UpdateAnims()
equi=false
jumpt=false
walked=false

SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})

CurrentActiveAnim="Idle"

function jump()
    if attack == true or jumpt==true then return end
    jumpt=true
    attack=true
	Spawn(function()
		for i=1,3 do wait()
			local efx= Part(1,1,1,'Really black',.5,false,true,m)
		    local m= Mesh(efx,'http://www.roblox.com/asset/?id=20329976',3,1,3)
		    efx.CFrame=torso.CFrame
		    Spawn(function()
				for i=1,7 do wait()
					m.Scale=m.Scale+Vector3.new(1,.2,1)
					efx.Transparency=efx.Transparency+.12
				end
				efx:Destroy()
			end)
		end
	end)
	local vs = Instance.new("BodyVelocity",pchar.Torso)
	vs.maxForce = Vector3.new(1,1,1)*9e9
	vs.P = 2000
	vs.velocity = pchar.Torso.CFrame.lookVector*60+Vector3.new(0,150,0)
	wait(.025)
	vs:Destroy()
	trail(blade,35,5)
	so('160069154',torso,false,.8)
    SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=false})
    LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
	LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(40))*CFrame.new(0,-.5,0)
	LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(40))*CFrame.new(0,-.5,0)
	LerpTo.hndl.To = CFrame.new(0,-0.3,0)*CFrame.Angles(0,rad(90),0)*CFrame.Angles(rad(130),0,0)
	local spn=0
	for i=1,14 do
		spn=spn+30
		wait(i/1000)
		LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(rad(spn),0,0)
	end
	SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=false,LeftLeg=false,Torso=false})
	LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(40))* CFrame.new(-.2,-.25,0)
	LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(40))* CFrame.new(.2,-.25,0)
	LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,0,-1)
	LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,1,-1)
	LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-rad(50),0,0) * CFrame.new(0,0.5,0)
	LerpTo.hndl.To = CFrame.new(0,-0.3,0)*CFrame.Angles(0,0,-rad(90))*CFrame.Angles(-rad(130),0,0)
	hitted=false
	local hp=blade.Touched:connect(function(hit)
	if hitted == true or hit.Parent.Name==pchar.Name then return end
	    so('157878578',torso,false,1)
		hitted=true
		explosion('Really black','Royal purple',torso.CFrame,Vector3.new(40,40,40),30,40)
		for i=1, 30 do
		    local p= Part(math.random(2,7),math.random(2,7),math.random(2,7),workspace.Base.BrickColor.Color,0,false,false,pchar)
		    p.Material=workspace.Base.Material
			p.CFrame=CFrame.new(torso.CFrame.x+math.random(-i,i),0,torso.CFrame.z+math.random(-i,i))*CFrame.Angles(math.random(-10,10)/30,math.random(-10,10)/30,math.random(-10,10)/30)*CFrame.Angles(pi/2,0,0)
			p.Velocity=Vector3.new(math.random(-100,100),math.random(30,100),math.random(-100,100))
	        game.Debris:AddItem(p,2)
			Spawn(function()
			for i=1,10 do wait(.01)
				p.Transparency=p.Transparency+.1
			end
			end)
		end
	end)
	repeat wait() until hitted
	hp:disconnect()
	wait(.5)
	SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
	LerpTo.hndl.To = LerpTo.hndl.Cache
	attack=false
	SetAnimData({Head=true,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=true})
	LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(70),rad(20),-rad(70))*CFrame.new(0,-1,0)
	LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(30))
	wait(.01)
	mwl.Part1=pchar['Right Arm']
	mwl.C1=CFrame.new(0,-1,0)*CFrame.Angles(-rad(90),0,rad(90))
	wait(.2)
	CurrentActiveAnim="Holding"
	LerpTo.hndl.To = LerpTo.hndl.Cache
	SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
	Spawn(function()
    	wait(math.random(10,20))
    	jumpt=false
	end)
end

function swing()
	if attack == true then return end 
	if combo==0 then
	   attack=true
       tmdmg(10,blade,5,3)
	   SetAnimData({Head=false,RightArm=false,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=false})
	   LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(120),rad(40),-rad(50))*CFrame.new(0,-.5,0)
	   LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(30))
	   LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(30),0)
	   wait(.1)
	   trail(blade,10,5)
	   so('161006212',torso,false,1)
	   LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(0,0,rad(50))*CFrame.new(0,-.5,0)
	   LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(30))
	   LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(30),0)
	   wait(.2)
	   attack=false
	   combo=1
	elseif combo==1 then
	   attack=true
       tmdmg(10,blade,5,3)
	   SetAnimData({Head=false,RightArm=false,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=false})
	   LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(150),0,rad(120))*CFrame.new(-.5,0,0)
	   LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(30))
	   LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(30),0)
	   wait(.1)
	   trail(blade,10,5)
	   so('161006212',torso,false,.8)
	   LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(70),0,-rad(50))*CFrame.new(.5,0,-0.5)*CFrame.Angles(0,-rad(90),0)
	   LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(70))
	   LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(70),0)
	   wait(.2)
	   attack=false
	   combo=2
	elseif combo==2 then
	   attack=true
	   trail(blade,35,5)
       tmdmg(10,blade,5,3)
	   so('160069154',torso,false,1)
	   SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=false})
	   LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
	   LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(40))*CFrame.new(0,-.5,0)
	   LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(40))*CFrame.new(0,-.5,0)
	   LerpTo.hndl.To = CFrame.new(0,-0.3,0)*CFrame.Angles(rad(90),0,0)
	   local spn=0
	   for i=1,15 do
	      spn=spn+30
	      wait(i/1000)
	      LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(spn)+rad(70))
	   end
	   attack=false
	   combo=3
	end
	Spawn(function()
	    wait(0.6)
	    if attack==false then
	        attack=true
	       	SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
        	LerpTo.hndl.To = LerpTo.hndl.Cache
	        wait(.2)
	        attack=false
	       	combo=0
	    end
	end)
end

deb=false
function eq()
    if attack == true then return end
    if deb==true then return end
    deb=true
    SetAnimData({Head=true,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=true})
    LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(70),rad(20),-rad(70))*CFrame.new(0,-1,0)
    LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(30))
    wait(.01)
    mwl.Part1=pchar['Right Arm']
    mwl.C1=CFrame.new(0,-1,0)*CFrame.Angles(-rad(90),0,rad(90))
    wait(.2)
    CurrentActiveAnim="Holding"
    LerpTo.hndl.To = LerpTo.hndl.Cache
    SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
    deb=false
    equi=true
end
function deq()
    if attack == true then return end
    if deb==true then return end
    deb=true
    wait(2)
    SetAnimData({Head=true,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=true})
	LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(70),rad(20),-rad(70))*CFrame.new(0,-1,0)
	LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(30))
	LerpTo.hndl.To = CFrame.new(0,-0.3,0)*CFrame.Angles(0,0,0)
	wait(.1)
	mwl.Part1=pchar.Torso
	mwl.C1=CFrame.new(-1,0,-1)*CFrame.Angles(rad(120),0,0)
	wait(.1)
	CurrentActiveAnim="Idle"
	SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
	deb=false
	equi=false
end
chardeb=false
game:service'RunService'.Stepped:connect(function()
    if pchar.Humanoid.Health<1 then if chardeb==false then chardeb=true wait(5) pchar:Destroy() build() chardeb=false end end
    closer={}
    for _,x in pairs(workspace:GetChildren()) do
        if x.ClassName=="Model" and x:findFirstChild("Humanoid")~=nil and x:findFirstChild("Torso")~=nil then
            dist = (x.Torso.Position - torso.Position).magnitude
            if dist <= 40 and x.Name ~= workspace[protect].Name then
                table.insert(closer,x.Name)
            end
        end
    end
    if #closer > 0 then
        if equi==false then eq() end
        for _,x in pairs(workspace:GetChildren()) do
            if x.ClassName=="Model" and x:findFirstChild("Humanoid")~=nil and x:findFirstChild("Torso")~=nil then
                dist = (x.Torso.Position - torso.Position).magnitude
                if dist <= 20 and x.Name ~= workspace[protect].Name then
                   if equi==true then hum:MoveTo(workspace[closer[1]].Torso.Position)
                    jump()
                    swing()
                    end
                end
            end
        end
    else
        if equi==true then deq() end
         Spawn(function()
            if walked==false then
                walked=true
                hum:MoveTo(workspace[protect].Torso.Position+Vector3.new(math.random(-10,10),0,math.random(-10,10)))
                wait(7)
                walked=false
            end
        end)
    end
    UpdateAnims(angle)
    for _,v in pairs(LerpTo) do
        v.Weld.C0 = Lerp.CFrame(v.Weld.C0,v.To,v.Speed)
    end
    angle = (angle % 100) + anglespeed/10
    if Vector3.new(0, torso.Velocity.y, 0).magnitude > 2 then
        CheckAnimData(CurrentActiveAnim,"Jump")
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
        CheckAnimData(CurrentActiveAnim,"Stance")
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
        CheckAnimData(CurrentActiveAnim,"Walk")
    end
end)
