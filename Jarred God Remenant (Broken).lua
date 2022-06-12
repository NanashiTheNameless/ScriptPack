local asin = math.asin
local atan2 = math.atan2
local rad = math.rad
local sin = math.sin
local abs = math.abs
local ceil = math.ceil
local pi = math.pi
local cf = CFrame.new
local ca = CFrame.Angles
local v3 = Vector3.new
local player = game.Players.LocalPlayer
local pchar = player.Character
local torso = pchar.Torso
local mouse = player:GetMouse()
local anglespeed = 1
local angle = 0
local attack = false
local combo = -1
local smo = true
local pob = nil
local obf = false
local col = 0
local stfobl = nil
local mov = false
--[[ "God's Remnant" ~ Made by jarredbcv credit to Gold_God for amazing sword build. 2/22/2016]]--

if game.ReplicatedStorage:FindFirstChild("Sword") then
    mo = game.ReplicatedStorage['Sword']:Clone()
    game.ReplicatedStorage['Gauntlet']:Clone().Parent=mo
    local a = game.ReplicatedStorage['Gauntlet']:Clone()
    a.Name="Gauntlet2"
    a.Parent=mo
    mo.Parent=pchar
else
   NS([[require(294261453)("U*LxOi3b~FKrgu$N{,}6`6wYT%`2f<06Ut2w")]],workspace)
    print("Please run the script a second time.")
    return
    --[[wait(3)
    mo = game.ReplicatedStorage['Sword']:Clone()
    game.ReplicatedStorage['Gauntlet']:Clone().Parent=mo
    local a = game.ReplicatedStorage['Gauntlet']:Clone()
    a.Name="Gauntlet2"
    a.Parent=mo
    mo.Parent=pchar]]
end

--[[
    ~Librarys
]]

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
        print("unreachable") -- not good
    end
    local len1 = (c-a):Dot((b-a).unit)
    local len2 = (b-a).magnitude - len1
    local width = (a + (b-a).unit*len1 - c).magnitude
    local maincf = CFrameFromTopBack(a, (b-a):Cross(c-b).unit, -(b-a).unit)
    local list = {}
    if len1 > 0.01 then
        local w1 = wPart(0,0,0,'White',0.5,false,true,pchar)
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
        local w2 = wPart(0,0,0,'White',0.5,false,true,pchar)
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

function camshake(waitv,shake,rate,amount)
   --[[ local Camera = game:GetService("Workspace").CurrentCamera
    local CoordinateFrame = Camera.CoordinateFrame
    local Focus = Camera.Focus
    spawn(function()
        for i=1,amount do
            local CameraRotation = Camera.CoordinateFrame - Camera.CoordinateFrame.p
            local CameraScroll = (CoordinateFrame.p - Focus.p).magnitude
            local NewCFrame = CFrame.new(Camera.Focus.p) * CameraRotation * CFrame.fromEulerAnglesXYZ((math.random(-shake, shake) * rate), (math.random(-shake, shake) * rate), 0)
            CoordinateFrame = NewCFrame * CFrame.new(0, 0, CameraScroll)
            Camera.CoordinateFrame = CoordinateFrame
            wait(waitv)
        end
    end)]]
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
                    a.CFrame=a.CFrame*CFrame.Angles(math.rad(2),math.rad(2),math.rad(2))-Vector3.new(0,0.1,0)
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
            game:service'RunService'.RenderStepped:wait()
        end
        scfr=nil
    end)
end

function cloneefx()
    for _,v in pairs(pchar:GetChildren()) do
        if v.ClassName=="Part" then
            local efx=v:Clone()
            efx.CanCollide=true
            efx.Anchored=true
            efx.Parent=workspace
            efx.BrickColor=BrickColor.new("Really black")
            efx:BreakJoints()
            Spawn(function()
                for i=1,10 do wait(.05)
                    efx.Transparency=efx.Transparency+.1
                end
                efx:Destroy()
            end)
        end
    end
end

so = function(id,par,lo,pi,tm)
    Spawn(function()
        local s = Instance.new("Sound",par)
        s.Looped=lo
        s.Pitch=pi
        s.SoundId = "http://roblox.com/asset/?id="..id
        wait() -- tnx anti
        s:play()
        s.Volume=.8
        game.Debris:AddItem(s,tm)
    end)
    return s
end

function posfix(nom)
    Spawn(function()
        local bg=Instance.new("BodyGyro",pchar.Torso)
        bg.maxTorque=Vector3.new(0,math.huge,0)
        bg.P=10000
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
                if (v:findFirstChild("Torso").Position - a.Position).magnitude < rng and v.Name ~= pchar.Name then
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
                        if (v:findFirstChild("Torso").Position - pa.Position).magnitude < rng and v.Name ~= pchar.Name then
                            v.Humanoid.Health=v.Humanoid.Health-dmg
                            so("201858024",v.Torso,false,math.random(7,11)/10,4)
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
        return a:lerp(b,m) -- i srs dnt kno u could do this (tnx anti)
    end;
}



local function genWeld(a,b)
    local w = Instance.new("Weld",a)
    w.Part0 = a
    w.Part1 = b
    return w
end

local function newLerpTo(weld)
        return {
                Weld = weld;
                To = weld.C0; 
                Cache = weld.C0; 
                Speed = 0.2; 
        }
end

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
    if Used.Handle == true then
        LerpTo.hnd.To = LerpTo.hnd.Cache * Anims[ANIM_TAB][DO_ANIM].hnd
    end
end

Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency)
    local magz = (Start - End).magnitude
    local curpos = Start
    local trz = {-Offset,Offset}
    Spawn(function()
        for i=1,Times do
            local li = Instance.new("Part",pchar)
            li.TopSurface =0
            li.BottomSurface = 0
            li.Anchored = true
            li.Transparency = Transparency or 0.4
            li.BrickColor = Color
            li.formFactor = "Custom"
            li.Material="Neon"
            li.CanCollide = false
            li.Size = Vector3.new(1,1,1)
            Instance.new('BlockMesh',li).Scale = Vector3.new(Thickness,Thickness,magz/Times)
            local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
            local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
            if Times == i then 
                local magz2 = (curpos - End).magnitude
                li.Mesh.Scale = Vector3.new(Thickness,Thickness,magz2)
                li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
            else
                li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
            end
            curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p
            Spawn(function() for i=1,10 do
                li.Transparency = li.Transparency+.1
                wait()
                end li:Destroy() end)
            wait()
        end
    end)
end

function UpdateAnims()
    Anims = {
        ["Idle"] = {
            ["Stance"] = {
                speed=.25,
                Head = CFrame.Angles(sin(angle)*0.01,0,0),
                RightArm = CFrame.Angles(sin(angle)*0.1,0,0),
                LeftArm = CFrame.Angles(-sin(angle)*0.1,0,0),
                RightLeg = CFrame.Angles(sin(angle)*0.1,0,0),
                LeftLeg = CFrame.Angles(-sin(angle)*0.1,0,0),
                Torso = CFrame.Angles(0,0,0),
                hnd = CFrame.Angles(0,0,0)
                },
            ["Walk"] = {
                speed=2,
                Head = CFrame.Angles(0,0,sin(angle)*0.05),
                RightArm = CFrame.Angles(-sin(angle)*1,0,0),
                LeftArm = CFrame.Angles(sin(angle)*1,0,0),
                RightLeg = CFrame.Angles(sin(angle)*1,0,0),
                LeftLeg = CFrame.Angles(-sin(angle)*1,0,0),
                Torso = CFrame.Angles(0,0,0),
                hnd = CFrame.Angles(0,0,0)
                },
            ["Jump"] = {
                speed=2,
                Head = CFrame.Angles(0,0,0),
                RightArm = CFrame.Angles(rad(-20),0,0),
                LeftArm = CFrame.Angles(rad(-20),0,0),
                RightLeg = CFrame.new(0,.5,-.5)*CFrame.Angles(rad(-20),0,0),
                LeftLeg = CFrame.Angles(0,0,0), 
                Torso = CFrame.Angles(rad(10),0,0),
                hnd = CFrame.Angles(0,0,0)
                }
            },
        ["Holding"] = {
            ["Stance"] = {
                speed=.25,
                Head = CFrame.Angles(sin(angle)*0.01,-rad(60)-abs(sin(angle))*0.05,0),
                RightArm = CFrame.Angles(rad(30)-sin(angle)*0.05,rad(80),0)*CFrame.new(-.5,-.2,.4),
                LeftArm = CFrame.Angles(sin(angle)*0.05,0,-rad(10)-abs(sin(angle))*0.05),
                RightLeg = CFrame.Angles(sin(angle)*0.05,0,0),
                LeftLeg = CFrame.Angles(-sin(angle)*0.05,0,0),
                Torso = CFrame.Angles(0,0,rad(60))*CFrame.new(0,-abs(sin(angle))*0.05,0),
                hnd = CFrame.Angles(0,0,0)
                },
            ["Walk"] = {
                speed=2.1,
                Head = CFrame.Angles(0,0,0),
                RightArm = CFrame.Angles(rad(50)-sin(angle)*0.05,rad(10),-rad(10)),
                LeftArm = CFrame.Angles(sin(angle)*1,0,0),
                RightLeg = CFrame.Angles(sin(angle)*1,0,0),
                LeftLeg = CFrame.Angles(-sin(angle)*1,0,0),
                Torso = CFrame.Angles(0,0,0),
                hnd = CFrame.Angles(-rad(60),0,0)*CFrame.new(0.5,0,0)
                },
            ["Jump"] = {
                speed=2,
                Head = CFrame.Angles(0,0,0),
                RightArm = CFrame.Angles(0,0,0),
                LeftArm = CFrame.Angles(rad(-20),0,0),
                RightLeg = CFrame.new(0,.5,-.5)*CFrame.Angles(rad(-20),0,0),
                LeftLeg = CFrame.Angles(0,0,0), 
                Torso = CFrame.Angles(rad(10),0,0),
                hnd = CFrame.Angles(0,0,0)
                }
            }
        }
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
local mainp = mo.Handle
local mwl = Weld(mainp,pchar['Right Arm'],0,-1,0,-pi/2,0,0,mo)
local g1 = Weld(mo.Gauntlet.Arm,pchar['Right Arm'],0,0,0,0,0,0,mo)
local g2 = Weld(mo.Gauntlet2.Arm,pchar['Left Arm'],0,0,0,0,0,0,mo)
local blade = mo.blade


LerpTo = {
        Neck = newLerpTo(Neck);
        LeftArm = newLerpTo(LeftShoulder);
        RightArm = newLerpTo(RightShoulder);
        LeftLeg = newLerpTo(LeftHip);
        RightLeg = newLerpTo(RightHip);
        RootJoint = newLerpTo(RootJoint);
        hnd = newLerpTo(mwl);
}

mwl.Part1=pchar['Torso']
mwl.C1=CFrame.new(-1,.5,-2)*CFrame.Angles(rad(130),-pi/1,0)
mouse.KeyDown:connect(function(ke)
    if attack==true then return end
    key=ke:lower()
    if key=="f" and obf==false then 
        eq = not eq
        if eq then
            SetAnimData({Head=true,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=true})
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(70),-rad(20),-rad(70))*CFrame.new(0,-1,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(30))
            wait(.01)
            mwl.C1 =CFrame.new(0,-1,0)*CFrame.Angles(-pi/2,0,rad(120))
            mwl.Part1=pchar['Right Arm']
            wait(.2)
            Spawn(function()
                wait(.025)
                mwl.C1 =CFrame.new(0,-1,0)*CFrame.Angles(-pi/2,0,rad(90))
                wait(.025)
                mwl.C1 =CFrame.new(0,-1,0)*CFrame.Angles(-pi/2,0,rad(60))
                wait(.025)
                mwl.C1 =CFrame.new(0,-1,0)*CFrame.Angles(-pi/2,0,rad(30))
                wait(.025)
                mwl.C1 =CFrame.new(0,-1,0)*CFrame.Angles(-pi/2,0,0)
            end)
            CurrentActiveAnim="Holding"
            LerpTo.hnd.To = LerpTo.hnd.Cache
            SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true,Handle=true})
            blade.Material="Neon"
            for i=1,5 do wait()
                blade.Transparency = .5-i/10
            end
        else
            SetAnimData({Head=true,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=true})
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(70),-rad(20),-rad(70))*CFrame.new(0,-1,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(30))
            wait(.01)
            LerpTo.hnd.To = LerpTo.hnd.Cache
            mwl.Part1=pchar['Torso']
            mwl.C1=CFrame.new(-1,.5,-2)*CFrame.Angles(rad(130),-pi/1,0)
            wait(.2)
            CurrentActiveAnim="Idle"
            SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
            for i=1,5 do wait()
                blade.Transparency = 0+i/10
            end
            blade.Material="Plastic"
        end
    elseif key=="c" and obf then
        attack=true
        for _,v in pairs(mo:GetChildren()) do if v.ClassName=="Part" or v.ClassName=="UnionOperation" then v.Transparency=v.Transparency+1 end end
        for _,v in pairs(mo.Gauntlet:GetChildren()) do if v.ClassName=="Part" or v.ClassName=="UnionOperation" then v.Transparency=v.Transparency+1 end end
        for _,v in pairs(mo.Gauntlet2:GetChildren()) do if v.ClassName=="Part" or v.ClassName=="UnionOperation" then v.Transparency=v.Transparency+1 end end
        for _,v in pairs(pchar:GetChildren()) do if v.ClassName=="Hat" then v.Handle.Transparency=v.Handle.Transparency+1 end end
        pchar.Torso.Transparency=1
        pchar["Right Arm"].Transparency=1
        pchar["Left Arm"].Transparency=1
        pchar["Right Leg"].Transparency=1
        pchar["Left Leg"].Transparency=1
        pchar.Head.Transparency=1
        so('153092334',pchar.Torso,false,1)
        Lightning(pchar.Torso.Position+Vector3.new(0,.5,0),pob.Position,math.random(5,10),math.random(-2.5,2.5),BrickColor.new'Bright yellow',.1)
        wait(.3)
        pchar.Torso.CFrame=pob.CFrame*CFrame.new(math.random(5,7),-3,math.random(5,7))
        for _,v in pairs(mo:GetChildren()) do if v.ClassName=="Part" or v.ClassName=="UnionOperation" then v.Transparency=v.Transparency-1 end end
        for _,v in pairs(mo.Gauntlet:GetChildren()) do if v.ClassName=="Part" or v.ClassName=="UnionOperation" then v.Transparency=v.Transparency-1 end end
        for _,v in pairs(mo.Gauntlet2:GetChildren()) do if v.ClassName=="Part" or v.ClassName=="UnionOperation" then v.Transparency=v.Transparency-1 end end
        for _,v in pairs(pchar:GetChildren()) do if v.ClassName=="Hat" then v.Handle.Transparency=v.Handle.Transparency-1 end end
        pchar.Torso.Transparency=0
        pchar["Right Arm"].Transparency=0
        pchar["Left Arm"].Transparency=0
        pchar["Right Leg"].Transparency=0
        pchar["Left Leg"].Transparency=0
        pchar.Head.Transparency=0
        so('161006033',pchar.Torso,false,.9)
        local a= Part(.2,.2,.2,"White",0.5,false,true,pchar)
        a.CFrame=pchar.Torso.CFrame*CFrame.new(0,-2,0)
        local m= Mesh(a,'http://www.roblox.com/asset/?id=20329976',3,1,3)
        Spawn(function() for i=1,12 do wait()m.Scale=m.Scale+Vector3.new(.2,0,.2)  a.CFrame=a.CFrame*CFrame.Angles(0,rad(i+i*2),0) a.Transparency=a.Transparency+.04 end a:Destroy() end)
        for i=1, 10 do
            local p= Part(math.random(2,7)/4,math.random(2,7)/4,math.random(2,7)/4,"White",0,false,false,mo)
            p.CFrame=CFrame.new(torso.CFrame.x+math.random(-3,3),torso.CFrame.y-1,torso.CFrame.z+math.random(-3,3))*CFrame.Angles(math.random(-10,10)/30,math.random(-10,10)/30,math.random(-10,10)/30)*CFrame.Angles(pi/2,0,0)
            p.Velocity=Vector3.new(math.random(-20,20),math.random(5,30),math.random(-20,20))
            game.Debris:AddItem(p,2)
            Spawn(function()
                for i=1,10 do wait(.01)
                    p.Transparency=p.Transparency+.1
                end
            end)
        end
        attack=false
    elseif key=="x" and obf then
        attack=true
        so('228343252',pchar.Torso,false,1)
        SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=false,Handle=false})
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(80),0,-rad(40))
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(80),0,rad(40))
        LerpTo.Neck.To = LerpTo.Neck.Cache
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache
        bg = Instance.new("BodyGyro",torso)
        bg.P = 20e+003
        bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
        bg.cframe = CFrame.new(torso.Position,Vector3.new(mouse.Hit.p.x,torso.CFrame.p.y,mouse.Hit.p.z))
        mov=true
    elseif key=="z" then
        if obf then
        attack=true
        SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=false,Handle=false})
        local bgs = Instance.new("BodyGyro",torso)
        bgs.P = 20e+003
        bgs.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
        bgs.cframe = CFrame.new(torso.Position,Vector3.new(pob.CFrame.p.x,torso.CFrame.p.y,pob.CFrame.p.z))
        game.Debris:AddItem(bgs,.2)
        so('235097661',pchar.Torso,false,1)
        mgblock(pchar["Left Arm"],CFrame.new(0,-1.5,0),5,"Bright yellow","White",Vector3.new(1.5,1.5,1.5),.1)
        mgblock(pchar["Right Arm"],CFrame.new(0,-1.5,0),5,"Bright yellow","White",Vector3.new(1.5,1.5,1.5),.1)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(70),0,0)
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(70),0,0)
        wait(.2)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(100),0,rad(30))
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(100),0,-rad(30))
        wait(.2)
        obf = false
        so('231917744',pchar.Torso,false,1)
        explosion("Bright yellow","Really black",pob.CFrame,Vector3.new(20,20,20),25,30)
        Spawn(function()
            for i=1,3 do
                for i=1,3 do
                    mgblock(pob,CFrame.new(math.random(-3,3),math.random(-3,3),math.random(-3,3)),2,'Bright yellow','Really black',Vector3.new(1,1,1),0)
                end
                local pa= Part(1,1,1,'Bright yellow',0,false,true,pchar)
                pa.Reflectance=1
                pa.CFrame=pob.CFrame*CFrame.Angles(math.random(),math.random(),math.random())
                local ms=Mesh(pa,'http://www.roblox.com/asset/?id=3270017',5,5,.02)
                Spawn(function()
                    for i=1,20 do wait()
                        pa.Reflectance=pa.Reflectance-.05
                        pa.Transparency=pa.Transparency+.05
                        ms.Scale=ms.Scale+Vector3.new(1,1,0)
                    end
                    pa:Destroy()
                end)
            end
            pob.Parent:Destroy()
            pob = nil
        end)
        SetAnimData({Head=true,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=true})
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(70),-rad(20),-rad(70))*CFrame.new(0,-1,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(30))
            wait(.01)
            mwl.C1 =CFrame.new(0,-1,0)*CFrame.Angles(-pi/2,0,rad(120))
            mwl.Part1=pchar['Right Arm']
            wait(.2)
            Spawn(function()
                wait(.025)
                mwl.C1 =CFrame.new(0,-1,0)*CFrame.Angles(-pi/2,0,rad(90))
                wait(.025)
                mwl.C1 =CFrame.new(0,-1,0)*CFrame.Angles(-pi/2,0,rad(60))
                wait(.025)
                mwl.C1 =CFrame.new(0,-1,0)*CFrame.Angles(-pi/2,0,rad(30))
                wait(.025)
                mwl.C1 =CFrame.new(0,-1,0)*CFrame.Angles(-pi/2,0,0)
            end)
            CurrentActiveAnim="Holding"
            LerpTo.hnd.To = LerpTo.hnd.Cache
            SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true,Handle=true})
            blade.Material="Neon"
            for i=1,5 do wait()
                blade.Transparency = .5-i/10
            end
            attack=false
        elseif eq then
            attack=true
            SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=false,LeftLeg=false,Torso=false,Handle=false})
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(45))
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(10))
            LerpTo.hnd.To = CFrame.new(0,-1,0)*CFrame.Angles(0,0,-rad(90))
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,0,-1)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,1,-1)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-rad(50),0,0) * CFrame.new(0,0.5,0)
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
            so('2767090',pchar.Torso,false,.7)
            wait(.2)
            SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=false,Handle=false})
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(60),0,rad(45))
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(10))
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
            LerpTo.hnd.To = CFrame.new(0,-1,0)*CFrame.Angles(0,0,-rad(120))
            so('160069154',pchar.Torso,false,1.2)
            trail(blade,30,4)
            Spawn(function()
                for i=1,3 do wait()
                    local efx= Part(1,1,1,'White',.5,false,true,pchar)
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
            vs.velocity = Vector3.new(0,50,0)
            local spn = 0 
            for i=1,13 do
                spn=spn+30
                wait(i/1000)
                LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(spn))
            end
            vs:Destroy()
            LerpTo.hnd.To = LerpTo.hnd.Cache * CFrame.Angles(rad(20),rad(40),0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(120),0,rad(40))*CFrame.new(.2,-.3,0)
            LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(120),0,-rad(40))*CFrame.new(-.2,-.3,0)
            wait(.3)
            trail(blade,10,4)
            so('231917871',pchar.Torso,false,1.2)
            SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=false,LeftLeg=false,Torso=false})
            LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(20),0,-rad(40))* CFrame.new(-.2,-.25,0)
            LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(20),0,rad(40))* CFrame.new(.2,-.25,0)
            LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,0,-1)
            LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,1,-1)
            LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-rad(50),0,0) * CFrame.new(0,0.5,0)
            wait(.15)
            hitted=false
            local hp=pchar["Right Leg"].Touched:connect(function(hit)
                if hitted == true or hit.Parent.Name==pchar.Name then return end
                so('157878578',torso,false,1)
                hitted=true
                explosion('Really black','Bright yellow',torso.CFrame,Vector3.new(40,40,40),30,40)
                for i=1, 30 do
                    local p= Part(math.random(2,7),math.random(2,7),math.random(2,7),hit.BrickColor.Color,0,false,false,workspace)
                    p.Material=hit.Material
                    p.CFrame=CFrame.new(torso.CFrame.x+math.random(-i,i),torso.CFrame.y-1,torso.CFrame.z+math.random(-i,i))*CFrame.Angles(math.random(-10,10)/30,math.random(-10,10)/30,math.random(-10,10)/30)*CFrame.Angles(pi/2,0,0)
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
            SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true,Handle=true})
            attack=false
        end
    elseif key=="e" and eq and obf == false then
        attack=true
        SetAnimData({Head=true,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=true})
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(70),-rad(20),-rad(70))*CFrame.new(0,-1,0)
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(0,0,-rad(30))
        wait(.01)
        LerpTo.hnd.To = LerpTo.hnd.Cache
        mwl.Part1=pchar['Torso']
        mwl.C1=CFrame.new(-1,.5,-2)*CFrame.Angles(rad(130),-pi/1,0)
        wait(.2)
        CurrentActiveAnim="Idle"
        SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
        Spawn(function()
            for i=1,5 do wait()
                blade.Transparency = 0+i/10
            end
            blade.Material="Plastic"
        end)
        so('233091183',pchar.Torso,false,.9)
        wait(.1)
        pchar.Humanoid.WalkSpeed=0
        SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=false,LeftLeg=false,Torso=false})
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(30),0,rad(10))
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(30),0,-rad(10))
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,0,-1)
        LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,1,-1)
        LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-rad(50),0,0) * CFrame.new(0,0.5,0)
        wait(.1)
        local obli = game.ReplicatedStorage.obli:Clone()
        pob=obli.mainp
        obli.Parent=pchar
        obli.mainp.Anchored=true
        obli.mainp.CFrame=pchar.Torso.CFrame*CFrame.new(0,-3,-4)
        local a= Part(.2,.2,.2,"White",0.5,false,true,pchar)
        a.CFrame=pchar.Torso.CFrame*CFrame.new(0,-2,-4)
        local m= Mesh(a,'http://www.roblox.com/asset/?id=20329976',3,1,3)
        Spawn(function() for i=1,12 do wait()obli.mainp.CFrame=obli.mainp.CFrame+Vector3.new(0,0.5,0) m.Scale=m.Scale+Vector3.new(.2,0,.2)  a.CFrame=a.CFrame*CFrame.Angles(0,rad(i+i*2),0) a.Transparency=a.Transparency+.04 end stfobl = pob.CFrame a:Destroy() obf=true end)
        for i,v in pairs(workspace:children()) do
            if v:IsA("Model") and v:findFirstChild("Humanoid") then
                if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                    if (v:findFirstChild("Torso").Position - pchar['Left Arm'].Position).magnitude < 10 and v.Name ~= pchar.Name then
                        v.Humanoid.PlatformStand=true
                        v.Torso.Velocity=Vector3.new(math.random(-50,50),20,math.random(-50,50))
                        v.Humanoid:TakeDamage(20)
                        Spawn(function()wait(.5) v.Humanoid.PlatformStand=false end)
                    end
                end
            end
        end 
        wait(.1)
        pchar.Humanoid.WalkSpeed=16
        SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=true})
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(120),0,rad(10))
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(120),0,-rad(10))
        wait(.4)
        SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true,Handle=true})
        attack=false
    end
end)

mouse.KeyUp:connect(function(ke)
    key=ke:lower()
    if key=="x" then
        stfobl=CFrame.new(mouse.Hit.p)*CFrame.new(0,5,0)
        mov=false
        so('200633455',pchar.Torso,false,.7)
        bg:Destroy()
        SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true})
        attack=false
    end
end)

mouse.Button1Down:connect(function()
    if not eq or attack == true or obf then return end 
    smo=false
    if combo==-1 then
        attack = true
        SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=false,Handle=false})
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(120),0,rad(45))
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,-rad(10))
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(90))
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(20),0)
        LerpTo.hnd.To = CFrame.new(0,-1,0)*CFrame.Angles(0,0,-rad(60))
        wait(.3)
        tmdmg(10,blade,5,4)
        so('231917871',pchar.Torso,false,1)
        camshake(0.05,50,0.001,5)
        trail(blade,10,4)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(90),0,rad(10))
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(30))
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(0))
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(0),0)
        LerpTo.hnd.To = CFrame.new(0,-1,0)*CFrame.Angles(rad(80),0,-rad(90))
        wait(.1)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(70))
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(70),0)
        wait(.2)
        attack=false
        combo=0
    elseif combo==0 then
        attack=true
        SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=true,LeftLeg=true,Torso=false,Handle=false})
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(45))
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(120),0,-rad(50))
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(180))
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(90),0)
        LerpTo.hnd.To = CFrame.new(0,-1,0)*CFrame.Angles(0,0,rad(70))
        wait(.3)
        tmdmg(10,blade,5,4)
        so('231917871',pchar.Torso,false,.9)
        camshake(0.05,50,0.001,5)
        trail(blade,10,4)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(80),0,-rad(50))
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(30))
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(30),0)
        LerpTo.hnd.To = CFrame.new(0,-1,0)*CFrame.Angles(rad(80),0,rad(90))
        wait(.1)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(30))
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(30),0)
        wait(.2)
        attack=false
        combo=1
    elseif combo==1 then
        attack=true
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(90),0)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(90))
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,rad(50))
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(80),0,-rad(45))
        LerpTo.hnd.To = CFrame.new(0,-1,0)*CFrame.Angles(rad(50),0,-rad(60))
        wait(.2)
        tmdmg(10,blade,5,4)
        so('231917871',pchar.Torso,false,.8)
        camshake(0.05,50,0.001,5)
        trail(blade,10,4)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(80),0,rad(50))
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,rad(30))
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,-rad(30),0)
        LerpTo.hnd.To = CFrame.new(0,-1,0)*CFrame.Angles(rad(80),0,-rad(90))
        wait(.1)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(30))
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(30),0)
        wait(.2)
        attack=false
        combo=2
    elseif combo==2 then
        attack=true
        so('231917871',pchar.Torso,false,.7)
        so('228343249',pchar.Torso,false,.8)
        LerpTo.hnd.To = LerpTo.hnd.Cache
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(90),0,-rad(90))* CFrame.new(0.5,-0.5,0)
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,rad(90),0)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,-rad(90))
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(0,0,rad(30))
        posfix(-rad(90))
        for i,v in pairs(workspace:children()) do
            if v:IsA("Model") and v:findFirstChild("Humanoid") then
                if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                    if (v:findFirstChild("Torso").Position - pchar['Left Arm'].Position).magnitude < 27 and v.Name ~= pchar.Name then
                        local goto=v.Torso.Position+Vector3.new(math.random(-1,1),math.random(-1,1),math.random(-1,1))
                        Lightning(pchar['Left Arm'].Position,goto,math.random(5,10),math.random(-2.5,2.5),BrickColor.new'Bright yellow',.1)
                        Lightning(pchar['Left Arm'].Position,goto,math.random(5,10),math.random(-2.5,2.5),BrickColor.new'Bright yellow',.1)
                        Lightning(pchar['Left Arm'].Position,goto,math.random(5,10),math.random(-2.5,2.5),BrickColor.new'Bright yellow',.1)
                        local bpos=Instance.new("BodyPosition",v.Torso)
                        bpos.maxForce=Vector3.new(1e1000,1e1000,1e1000)
                        bpos.position=pchar.Torso.Position
                        game.Debris:AddItem(bpos,.3)
                        Spawn(function()
                        for i=1,2 do
                            local oldpos=v.Torso.CFrame.p wait(.2)
                            local newpos=v.Torso.CFrame.p
                            local mag = (oldpos-newpos).magnitude
                            local a= Part(.2,.2,.2,"Black",0.5,false,true,pchar)
                            a.CFrame=CFrame.new(oldpos,newpos)*CFrame.new(0,0,-mag/2)*CFrame.Angles(0,pi/2,pi/2)
                            local m= Mesh(a,'http://www.roblox.com/asset/?id=20329976',3,1,3)
                            Spawn(function() for i=1,5 do wait() m.Scale=m.Scale+Vector3.new(1,.2,1) a.Transparency=a.Transparency+.1 end a:Destroy() end)
                            end
                        end)
                    end
                end
            end
        end 
        wait(.3)
        combo=3
        attack=false
    elseif combo==3 then
        attack=true
        so('233856140',pchar.Torso,false,1.2)
        LerpTo.hnd.To = LerpTo.hnd.Cache * CFrame.Angles(rad(20),rad(40),0)
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(120),0,rad(40))*CFrame.new(.2,-.3,0)
        LerpTo.Neck.To = LerpTo.Neck.Cache * CFrame.Angles(0,0,0)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0)
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(120),0,-rad(40))*CFrame.new(-.2,-.3,0)
        wait(.3)
        so('231917871',pchar.Torso,false,.6)
        SetAnimData({Head=false,RightArm=false,LeftArm=false,RightLeg=false,LeftLeg=false,Torso=false})
        LerpTo.RightArm.To = LerpTo.RightArm.Cache * CFrame.Angles(rad(20),0,-rad(40))* CFrame.new(-.2,-.25,0)
        LerpTo.LeftArm.To = LerpTo.LeftArm.Cache * CFrame.Angles(rad(20),0,rad(40))* CFrame.new(.2,-.25,0)
        LerpTo.RootJoint.To = LerpTo.RootJoint.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,0,-1)
        LerpTo.LeftLeg.To = LerpTo.LeftLeg.Cache * CFrame.Angles(0,0,0) * CFrame.new(0,1,-1)
        LerpTo.RightLeg.To = LerpTo.RightLeg.Cache * CFrame.Angles(-rad(50),0,0) * CFrame.new(0,0.5,0)
        wait(.15)
        so('231917806',pchar.Torso,false,1.25)
        local a= Part(.2,.2,.2,"White",0.5,false,true,pchar)
        a.CFrame=pchar.Torso.CFrame*CFrame.new(0,-.2,0)
        local m= Mesh(a,'http://www.roblox.com/asset/?id=20329976',3,1,3)
        Spawn(function() for i=1,12 do wait() m.Scale=m.Scale+Vector3.new(1,0,1)  a.CFrame=a.CFrame*CFrame.Angles(0,rad(i+i*2),0) a.Transparency=a.Transparency+.04 end a:Destroy() end)
        for i,v in pairs(workspace:children()) do
            if v:IsA("Model") and v:findFirstChild("Humanoid") then
                if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                    if (v:findFirstChild("Torso").Position - pchar['Left Arm'].Position).magnitude < 27 and v.Name ~= pchar.Name then
                        v.Humanoid.PlatformStand=true
                        v.Torso.Velocity=Vector3.new(math.random(-100,100),20,math.random(-100,100))
                        v.Humanoid:TakeDamage(20)
                        Spawn(function()wait(.5) v.Humanoid.PlatformStand=false end)
                    end
                end
            end
        end 
        wait(.2)
        combo=4
        attack=false
    end
    Spawn(function()
        wait(0.6)
        if attack==false then
            attack=true
            SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true,Handle=true})
            smo=true
            wait(.2)
            attack=false
            combo=-1
        end
    end)
end)
ftimer=0
SetAnimData({Head=true,RightArm=true,LeftArm=true,RightLeg=true,LeftLeg=true,Torso=true,Handle=false})
CurrentActiveAnim="Idle"
game:service'RunService'.Stepped:connect(function()wait()
    ftimer=ftimer+.1
    Spawn(function()
        if obf and ftimer > 1 then
            mgblock(pob,CFrame.new(0,-3,0),2,"White","White",Vector3.new(0,0,0),.1)
            ftimer=0
            if mov then
                so('200633455',pob,false,1.2)
                Lightning(pchar.Torso.Position+Vector3.new(0,.5,0),pob.Position,math.random(5,10),math.random(-2.5,2.5),BrickColor.new'Bright yellow',.1)
            end
        end
    end)
    if mov then
        bg.cframe = CFrame.new(torso.Position,Vector3.new(mouse.Hit.p.x,torso.CFrame.p.y,mouse.Hit.p.z))
    end
    col = col + 1.1
    if obf then
        if mov then
            pob.CFrame=clerp(pob.CFrame,CFrame.new(mouse.Hit.p)*CFrame.Angles(math.rad(math.sin((tick())*2)*10),math.rad(col),0)*CFrame.new(0,5+math.sin((tick())*1),0),.1)
        else
            pob.CFrame=clerp(pob.CFrame,stfobl*CFrame.Angles(math.rad(math.sin((tick())*2)*10),math.rad(col),0)*CFrame.new(0,1+math.sin((tick())*1),0),.1)
        end
    end
    UpdateAnims()
    for _,v in pairs(LerpTo) do
        v.Weld.C0 = Lerp.CFrame(v.Weld.C0,v.To,v.Speed)
    end
    angle = (angle % 100) + anglespeed/10
    if Vector3.new(0, torso.Velocity.y, 0).magnitude > 4 then
        CheckAnimData(CurrentActiveAnim,"Jump")
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
        CheckAnimData(CurrentActiveAnim,"Stance")
    elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then
        CheckAnimData(CurrentActiveAnim,"Walk")
    end
end)