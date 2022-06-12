-- pcall(function()
-- script.DSource.Value = ""
-- script.DSource:Destroy()
-- end)
-- script.Parent = nil

game:service'RunService':UnbindFromRenderStep('Mug_Anims')
ply=game:service'Players'.LocalPlayer

repeat wait()until ply~=nil

char=ply.Character
torso=char.Torso

rarm,larm=char['Right Arm'],char['Left Arm']
rleg,lleg=char['Right Leg'],char['Left Leg']
rshl,lshl=torso['Right Shoulder'],torso['Left Shoulder']
rhip,lhip=torso['Right Hip'],torso['Left Hip']

bcol=BrickColor.new
cfn,md,mr,v3n=CFrame.new,math.rad,math.random,Vector3.new
ang=function(x,y,z)return CFrame.Angles(x or 0,y or 0,z or 0)end
Debris=game:service'Debris'
m={}
m.tau=math.pi*2
m.floatforce = 196.25
numkp=NumberSequenceKeypoint.new

hum_root=char.HumanoidRootPart

mouse=ply:GetMouse()

function l(a,x,y,z,xx,yy,zz)
    if string.find(tostring(a),',') == nil then
    return (a.CFrame*CFrame.new(x or 0,y or 0,z or 0))*CFrame.Angles(xx or 0,yy or 0, zz or 0)
    else return (a * CFrame.new(x or 0,y or 0,z or 0))*CFrame.Angles(xx or 0,yy or 0,zz or 0)
    end
end

pcall(function() char.Stick:Destroy() end) --- Destroys Physical Tool
Weapon = Instance.new("Model",char) Weapon.Name = 'Stick'
Instance.new('BoolValue',Weapon).Name='Mug_Did'
do --UTILITIES

function Create(ClassName)
    local obj=Instance.new(ClassName)
    return function(props)
        obj.Parent=Weapon
        for key,val in pairs(props)do
            if key=='_P'then
                obj['Parent']=val
            elseif i=='_C'then
                obj[val[1]]:connect(val[2])
            else
                obj[key]=val
            end
        end
        return obj
    end
end

do --CREATION

Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
        p0.Position = p1.Position
        local w = Instance.new('Motor',game:service'JointsService')
        w.Part0 = p1
        w.Part1 = p0
        w.C0 = CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(rx or 0,ry or 0,rz or 0)
        w.MaxVelocity = .1
        return w
end
Cur_Parent=nil
current_mat=nil
anchor=false
Part = function(x,y,z,color,tr,cc,an,parent)
        local p = Instance.new('Part',parent or Cur_Parent or Weapon)
        p.formFactor = 'Custom'
        p.Locked = true
        p.Position=torso.Position
        p.Size = Vector3.new(x,y,z)
        p.BrickColor = BrickColor.new(color or 'White')
        p.CanCollide = cc or false
        p.Anchored = an or anchor or false
        p.Transparency = tr or 0
        p.Material=current_mat or'SmoothPlastic'
        for i,v in pairs{'TopSurface','BottomSurface','FrontSurface','BackSurface','LeftSurface','RightSurface'}do
                p[v]=10
        end
        return p
end
Wedge = function(x,y,z,color,tr,cc,an,parent)
    local p = Instance.new('WedgePart',parent or Cur_Parent or Weapon)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(x,y,z)
    p.BrickColor = BrickColor.new(color or 'White')
    p.CanCollide = cc or false
    p.Anchored = an or false
    p.Transparency = tr or 0
    p.Material=current_mat or'SmoothPlastic'
    for i,v in pairs{'TopSurface','BottomSurface','FrontSurface','BackSurface','LeftSurface','RightSurface'}do
        p[v]=10
    end
    return p
end

Meshes = {Diamond='9756362';Spikeball='9982590';Table='111868131';
Egg='1527559';Ring='3270017';Bullet='2697549';Grass='1080954';
Shark='82821384';Sword='12221720';Crown='10688643';Spike='1033714';
Leaf='48100239';Fist='65322375';Chakram='19251107';Crown='20329976';Spring='9753878';
Tree='8564125';Fireball='10587413';DiamondBall='10917418'}

Textures = {Leaf='rbxassetid://48047287';White='rbxassetid://5736319'}

Mesh = function(par,num,x,y,z,tex)
        local msh = _
        if num == 1 then msh = Instance.new("CylinderMesh",par)
        elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
        elseif num == 3 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 6
        elseif num == 4 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 'Wedge'
        elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par)
            if num=='Torso'then msh.MeshType=1 else
        msh.MeshId = string.find(num,'://') == nil and 'rbxassetid://'..Meshes[num] or num end
        end
        msh.Scale = Vector3.new(x or 1,y or 1,z or 1)
        if tex then
            msh.TextureId = Textures[tex] or tex or ''
        end
        return msh
end

end

function HSVtoRGB(h, s, v)
    h = (h % 1) * 6
    local f = h % 1
    local p = v * (1 - s)
    local q = v * (1 - s * f)
    local t = v * (1 - s * (1 - f))
    if h < 1 then
        return v, t, p
    elseif h < 2 then
        return q, v, p
    elseif h < 3 then
        return p, v, t
    elseif h < 4 then
        return p, q, v
    elseif h < 5 then
        return t, p, v
    else
        return v, p, q
    end
end

function Edit(obj,props)
    local objects={}
    if type(obj)=='table'then objects=obj
    return function(props)
        obj.Parent=Weapon
        for _,obj in pairs(objects)do
            for key,val in pairs(props)do
                if key=='_P'then
                    obj['Parent']=val
                elseif i=='_F'then
                    val(objects)()
                else
                    succes,err=pcall(function()return obj[key]end)
                    if succes then
                        obj[key]=val
                    end
                end
            end
        end    
    end
end

end

function calcgrav(obj)
local total=0
local function add(a)
    for i,v in pairs(a:children())do
        if v:IsA'BasePart'then
            total=total+v:GetMass()*m.floatforce
        elseif v:IsA'Hat'then
            total=total+v.Handle:GetMass()*m.floatforce
        else add(v)end
    end
end
add(obj or char)
return total
end

function findHum(pos,rad,hum2)
    local hums={}
    function check(a)
        local res=false
        for i,ho in pairs(hums)do
            if a==ho then res=true end
        end
        return res
    end
    for i,v in pairs(Workspace:children())do
        if v:IsA'Model'and v~=char and v~=(hum2 or char) then
            for i,q in pairs(v:children())do
            if q:IsA'Humanoid' and q.Parent:FindFirstChild'Torso'and(q.Torso.Position-pos).magnitude < rad then
                    if not check(q)then
                        table.insert(hums,q)
                    end
                end
            end
        end
    end
    return hums,pos
end

udim=function(a,b,c,d)
if type(a)=='string'then
x,y=tostring(a):match('(%d*%.*%d*),(%d*%.*%d*)')
return UDim2.new(x or 0,x2 or 0,y or 0,y2 or 0)
else
return UDim2.new(a or 0,c or 0,b or 0,d or 0)
end end

function getHum(what,b)local res
    for i,v in pairs(what:children())do
        if v:IsA'Humanoid' then
            res=v
        end
    end
    return res
end

end

do --ANIMATIONSYSTEM DECLARATIONS
cont_anim=true

rarm,larm=char['Right Arm'],char['Left Arm']
rleg,lleg=char['Right Leg'],char['Left Leg']

torw=char.HumanoidRootPart.RootJoint
neck=torso.Neck
rs,ls=torso['Right Shoulder'],torso['Left Shoulder']
rh,lh=torso['Right Hip'],torso['Left Hip']

ort=cfn(0,0,0,-1,0,0,0,0,1,0,1,-0)
norig=cfn(0,1,0,-1,-0,-0,0,0,1,0,1,0)

rw,lw=nil,nil
arms=nil

r_shl_c0=cfn(1,0.5,0)--,0,0,1,0,1,0,-1,-0,-0)
r_shl_c1=cfn(-0.5,0.5,0)--,0,0,1,0,1,0,-1,-0,-0)

l_shl_c0=cfn(-1,0.5,0)--,0,0,1,0,1,0,-1,-0,-0)
l_shl_c1=cfn(0.5,0.5,0)--,0,0,1,0,1,0,-1,-0,-0)

-- l_shl_c0=cfn(-1,0.5,0)--,-0,-0,-1,0,1,0,1,0,0)
-- l_shl_c1=cfn(0.5,0.5,0)--,-0,-0,-1,0,1,0,1,0,0)

r_hip_c0=cfn(1,-1,0)--,0,0,1,0,1,0,-1,-0,-0)
r_hip_c1=cfn(0.5,1,0)--,0,0,1,0,1,0,-1,-0,-0)

l_hip_c0=cfn(-1,-1,0)--,-0,-0,-1,0,1,0,1,0,0)
l_hip_c1=cfn(-0.5,1,0)--,-0,-0,-1,0,1,0,1,0,0)


orig_rhip_c0=cfn(1,-1,0,0,0,1,0,1,0,-1,-0,-0)
orig_lhip_c0=cfn(-1,-1,0,-0,-0,-1,0,1,0,1,0,0)

rw_cf=r_shl_c0
lw_cf=l_shl_c0

rw2_cf=r_hip_c0
lw2_cf=l_hip_c0
end

do ---ANIMATIONSYSTEM
function Lock(which)
    arms={char:FindFirstChild'Right Arm',char:FindFirstChild'Left Arm'}
    legs={char:FindFirstChild'Right Leg',char:FindFirstChild'Left Leg'}
    local sh={torso:FindFirstChild'Right Shoulder',torso:FindFirstChild'Left Shoulder'}
    local sh2={torso:FindFirstChild'Right Hip',torso:FindFirstChild'Left Hip'}
    -- print(unpack(sh),unpack(arms))
    if arms and torso and sh and legs and sh2 then
        if which=='R'then
            if not rw then
                sh[1].Part1=nil
                rw=Instance.new('Weld')
                rw.Part0=torso
                rw.Parent=torso
                rw.Part1=arms[1]
                rw.C0=rw_cf
                rw.C1=r_shl_c1
            else
                rw:Destroy() rw=nil
                sh[1].Part0=torso sh[1].Part1=arms[1]
            end
        elseif which=='L'then
             if not lw then
                sh[2].Part1=nil
                lw=Instance.new('Weld')
                lw.Part0=torso
                lw.Parent=torso
                lw.Part1=arms[2]
                lw.C0=lw_cf
                lw.C1=l_shl_c1
            else
                lw:Destroy()lw=nil
                sh[2].Part0=torso sh[2].Part1=arms[2]
            end
        end
        if which=='RR'then
            if not rw2 then
                sh2[1].Part1=nil
                rw2=Instance.new('Weld')
                rw2.Part0=torso
                rw2.Parent=torso
                rw2.Part1=legs[1]
                rw2.C0=rw2_cf
                rw2.C1=r_hip_c1
            else
                rw2.Parent=nil rw2=nil
                sh2[1].Part0=torso sh2[1].Part1=legs[1]
            end
        elseif which=='LL'then
             if not lw2 then
                sh2[2].Part1=nil
                lw2=Instance.new('Weld')
                lw2.Part0=torso
                lw2.Parent=torso
                lw2.Part1=legs[2]
                lw2.C0=lw2_cf
                lw2.C1=l_hip_c1
            else
                lw2.Parent=nil lw2=nil
                sh2[2].Part0=torso sh2[2].Part1=legs[2]
            end
        end
    end
end

function Anim(what)
    local weld=getfenv()[what]
    return function(where)
        if weld then
            target_pos[what]=def_pos[what]*where
            -- waitfor(weld,where)
        end
    end
end

char_hum=getHum(char)
    
spd={
    rw=.1;lw=.1;rw2=.1;lw2=.1;torw=.1;neck=.1;hw=.1;
}
setmetatable(spd,{
    __newindex=function(tab,i,v)
        if i=='all'then
            for o,q in pairs(spd)do
                spd[o]=v
            end
    end   end
})
def_pos={
    rw=rw_cf;
    lw=lw_cf;
    rw2=rw2_cf;
    lw2=lw2_cf;
    torw=ort;
    neck=norig;
    hw=cfn();
    -- shield_w=cfn(-.25,0,0)*ang(math.pi,math.pi/2);
}
target_pos={
    rw=rw_cf;
    lw=lw_cf;
    rw2=def_pos.rw2;
    lw2=def_pos.lw2;
    torw=def_pos.torw;
    neck=def_pos.neck;
    hw=cfn();
}
can_anim={
    rw=true;lw=true;rw2=true;lw2=true;torw=true;neck=true;
}
game:service'RunService':BindToRenderStep('Mug_Anims',5,function()
    if cont_anim then
        if rw and can_anim.rw then
            rw.C0=rw.C0:lerp(target_pos.rw,spd.rw)
        end
        if lw and can_anim.lw then
            lw.C0=lw.C0:lerp(target_pos.lw,spd.lw)
        end
        if rw2 and can_anim.rw2 then
            rw2.C0=rw2.C0:lerp(target_pos.rw2,spd.rw2)
        end
        if lw2 and can_anim.lw2 then
            lw2.C0=lw2.C0:lerp(target_pos.lw2,spd.lw2)
        end
        if torw and can_anim.torw then
            torw.C0=torw.C0:lerp(target_pos.torw,spd.torw)
        end
        if neck and can_anim.neck then
            neck.C0=neck.C0:lerp(target_pos.neck,spd.neck)
        end
        if hw then
            hw.C1=hw.C1:lerp(target_pos.hw,spd.hw)
        end
    end
end)
end

function tag(a,b)
    if type(b)=='string'then
        if not getfenv()[b]then
            getfenv()[b]={}
        end
        table.insert(getfenv()[b],a)
    else
        table.insert(b,a)
    end
end
hinge=Part(.25,.5,.25)Mesh(hinge,1)
hw=Weld(hinge,torso,.9,-.85,0,0,-math.pi/2,math.pi/2)
restpos=hw.C0

d=Part(.1,.1,.1,'Black')Weld(d,hinge,0,.25)Mesh(d,1,1,.1)
d=Part(.1,.1,.1,'Black')Weld(d,hinge,0,-.25)Mesh(d,1,1,.1)

p=Part(.75,.5,.1)Mesh(p,3,1,1,.75)
Create'Motor'{_P=p;Part0=p;Part1=hinge;
    C0=cfn(.75/2,0,0)*ang(math.pi/2);
    C1=cfn(0,0,0)*ang(math.pi/2);
    MaxVelocity=.1
}

p=Part(.75,.5,.1)Mesh(p,3,1,1,.5)
mo=Create'Motor'{_P=p;Part0=p;Part1=hinge;
    C0=cfn(-.75/2,0,0)*ang(-math.pi/2,0);
    C1=cfn(0,0,-.15/2)*ang(-math.pi/2,0,md'45'+md'135');
    MaxVelocity=.15
}

local tas={}

Spawn(function()
    while wait()do
        for e,o in ipairs(tas)do
            if o[2].Parent~=nil then
                o[1]=o[1]*ang(0,md'5')          
                for i,v in ipairs(o[2]:children())do
                    if v:IsA'Part'then
                        v.CFrame=l(o[1],math.cos(i*m.tau/6)*o[2].MVal.Value,0,math.sin(i*m.tau/6)*o[2].MVal.Value)
                    end
                end
            else
                table.remove(tas,e)
            end
        end
    end
end)
whirr_snd=Create'Sound'{_P=Weapn;SoundId='rbxassetid://278329638';Pitch=1.5;Volume=1}
droning_snd=Create'Sound'{_P=Weapon;SoundId='rbxassetid://275641634';Pitch=1.75;Volume=.1;Looped=true}
function lol()
    Lock'R'
    
    whirr_snd:Play()
    Anim'rw'(ang(md'75')*ang(0,md'90'))
    hw.Part0=rarm hw.C0=cfn(0,-1.1,0)*ang(-math.pi/2,md'25')
    mo.DesiredAngle=md'-135'
    wait'.25'
    cone=Part(1,1,1,'Cyan',.5)msh=Mesh(cone,'Spike',0,0,0)
    w=Weld(cone,p,0,0,0,math.pi/2)
    for i=0,1,.1 do
        w.C0=cfn(0,0,-1.75*i)*ang(math.pi/2)
        msh.Scale=v3n(i*.75,i*4.5,i*.75)
        wait()
    end
    wait()
    local obj,pos=Workspace:FindPartOnRay(Ray.new(l(cone).p,v3n(0,-10,0)),char)
    if obj and pos then
        local r=.75
        local ps={}
        local center=cfn(pos)
        local model=Create'Model'{_P=Weapon}
        for i=0,m.tau,m.tau/6 do
            local p=Part(.1,.1,.1) p.Anchored=true Mesh(p,2).Name='m'
            p.Color=Color3.new(HSVtoRGB(0,0,1))
            p.Parent=model
            p.CFrame=l(center,math.cos(i)*r,0,math.sin(i)*r)
            
        end
        local rv=Create'NumberValue'{_P=model;Name='MVal'}rv.Value=r
        local t={center,model}
        local snd=Create'Sound'{_P=model;SoundId='http://www.roblox.com/Asset/?id=15666462';
            Pitch=.5;Looped=true}
        local snd2=Create'Sound'{_P=model;SoundId='http://www.roblox.com/Asset/?id=2101157';Pitch=1.15}
        local snd3=Create'Sound'{_P=model;SoundId='http://www.roblox.com/Asset/?id=2974249';Pitch=2}
        
        Edit{snd,snd2,snd3}{Volume=.25}

        Spawn(function()
            snd:Play()
            local ptick=tick()
            repeat
                snd.Pitch=snd.Pitch+(.05*3)
                wait()
            until (tick()-ptick)>1
            snd:Stop()snd3:Play()
            for i=0,1,.1 do
                for _,v in pairs(model:children())do
                    if v:IsA'Part'then
                        -- v.Transparency=i
                        v.Color=Color3.new(HSVtoRGB(.5,0,1-i))
                    end
                end
                wait()
            end
            snd2:Play()
            for i=0,1,.05 do
                rv.Value=rv.Value+.5
                local pillar=Part(rv.Value,1,rv.Value,'Black',.75)local msh=Mesh(pillar,1)pillar.Anchored=true
                local cf=center*ang(mr(-5,5),mr(-5,5),mr(-5,5))
                pillar.CFrame=cf
                Spawn(function()
                    for i=0,1,.1 do
                        pillar.Size=v3n(rv.Value,10*i,rv.Value)
                        pillar.CFrame=cf*cfn(0,pillar.Size.y/2,0)
                        pillar.Transparency=.75+i*(1-.75)
                        wait()
                    end
                end)
                for _,v in pairs(model:children())do
                    if v:IsA'Part'then
                        v.Transparency=i
                        v.m.Scale=v3n(1+i*30,1+i*30,1+i*30)
                        -- v.Color=Color3.new(HSVtoRGB(0,.5,1-i*.5))
                    end
                end
                for i,v in pairs(findHum(center.p,rv.Value))do
                    v:TakeDamage'10'
                end
                wait()
            end
            model:Destroy()
        end)
        table.insert(tas,t)
    end
    wait(.15)
    for i=1,0,-.1 do
        w.C0=cfn(0,0,-1.75*i)*ang(math.pi/2)
        msh.Scale=v3n(i*.75,i*4.5,i*.75)
        wait()
    end cone:destroy()
    whirr_snd:Play()
    Anim'rw'(cfn())
    mo.DesiredAngle=0
    wait'.25'
    hw.Part0=torso hw.C0=cfn(.9,-.85,0)*ang(0,-math.pi/2,math.pi/2)
    Lock'R'
end

local pd_snd=Create'Sound'{_P=Weapon;SoundId='http://www.roblox.com/Asset/?id=2785493';Pitch=1.35}
function lol2()
    Lock'R'
    Anim'rw'(ang(md'135',0,md'15')*ang(0,md'15'))
    hw.Part0=rarm hw.C0=cfn(0,-1.1,0)*ang(math.pi,md'-10')
    wait'.15'
    mo.DesiredAngle=md'-90'
    wait'.5'
    local laz=Part(.5,1,.5,'Cyan',.5)laz.Material='Neon'local msh=Mesh(laz,2)
    pd_snd:Play()

    laz.Anchored=true
    spos=l(hinge,0,0)
    laz.CFrame=spos

    local ignorelist={}
    for i=0,1,.25 do spos=l(hinge,0,0)
        table.insert(ignorelist,char)
        local hit,pos=Workspace:FindPartOnRayWithIgnoreList(Ray.new(l(laz,0,0,-laz.Size.z/2).p,l(laz).lookVector*4),ignorelist)
        if hit and pos then
            for lo=1,1 do
                if hit:IsDescendantOf(char)then break end
                local sx,sy,sz=hit.Size.X,hit.Size.y,hit.Size.z
                local as=(sx+sy+sz)/3
                if as>20 then break end
                table.insert(ignorelist,hit)
                Create'ParticleEmitter'{_P=hit;
                    Size=NumberSequence.new{numkp(0,as*.1);numkp(1,as*.5)};
                    Transparency=NumberSequence.new{numkp(0,0);numkp(1,1)};
                    Color=ColorSequence.new(bcol'Cyan'.Color,bcol'Deep blue'.Color);
                    Lifetime=NumberRange.new(.1,.4);
                    VelocitySpread=360;
                    Speed=NumberRange.new(as*.5);
                }
                Spawn(function()
                for i=hit.Transparency,1,.05 do
                    hit.Transparency=i wait()
                end hit:Destroy()end)
            end
        end
        
        tpos=l(torso,0,0,-7)
        local mag=(spos.p-tpos.p).magnitude
        laz.Size=v3n(.5,.5,mag*i)
        laz.CFrame=cfn(spos.p,tpos.p)*cfn(0,0,(-mag/2)*i)
        wait()
    end
    local cf=laz.CFrame
    for i=0,1,.1 do
        msh.Scale=v3n(1-i,1-i,1)
        laz.Transparency=.5+i*.5
        wait()
    end laz:Destroy()
    mo.DesiredAngle=0
    wait'.25'
    Anim'rw'(cfn())
    wait'.25'
    hw.Part0=torso hw.C0=restpos
    Lock'R'
end

shoot_snd=Create'Sound'{_P=Weapon;SoundId='rbxassetid://384105511';Pitch=1.15}
function kiball()
    holding=true
    local ptick=tick()
    local bg=Create'BodyGyro'{_P=torso;maxTorque=v3n(1,1,1)*9e+008;P=9e+006}
    Lock'L'Anim'lw'(ang(0,0,md'-90'))wait'.25'
    while holding do
        bg.cframe=cfn(l(torso).p,v3n(mouse.hit.x,l(torso).y,mouse.hit.z))*ang(0,-math.pi/2,0)
        
        if (tick()-ptick)>.25 then shoot_snd:Play()
            local ki=Part(1,1,1)ki.Anchored=true ki.CFrame=l(bl) local msh=Mesh(ki,3)
            tar=mouse.hit 
            local dir=mr(-1,1)
            Spawn(function()
                for i=0,1,.1 do
                    ki.CFrame=ki.CFrame*cfn(-math.abs(math.sin((tick()+1)))*3,0,0)
                    ki.CFrame=ki.CFrame:lerp(tar,i)
                    wait()
                end
                for i=0,1,.1 do
                    Edit{msh,ki}{Transparency=i;Size=v3n(1+i*3,1+i*3,1+i*3)}
                    wait()
                end ki:destroy()
            end)
            ptick=tick()
        end
        wait()
    end bg:Destroy() Anim'lw'(cfn())wait'.5'Lock'L'
end

function getAverageSize(val)
    local value_is_object=pcall(function()return val.className end)
    local x,y,z
    if value_is_object then
        x,y,z=val.Size.x,val.Size.y,val.Size.z
    else 
        x,y,z=val.x,val.y,val.z
    end
    return (x+y+z)/3
end

bl=Part(.1,.1,.1,'New Yeller')Mesh(bl,2)Weld(bl,larm,-.25,-.6)
function lol3()
    Lock'L'
    Anim'lw'(cfn(.2,0,-.15)*ang(md'25',0,md'65')*ang(0,md'-75'))
    wait'.25'bl.Material='Neon'
    local shield=Part(5,5,.1,'New Yeller',.75)shield.Material='Neon'shield.Anchored=true
    shield.CanCollide=true
    -- shield.Parent=Workspace.CurrentCamera
    shield.Touched:connect(function(a)
        if a.Parent and (not a:IsDescendantOf(char)) then
            -- a:BreakJoints()
            for i,v in pairs(a:children())do
                if v:IsA'BodyMover'then v:Destroy()end
            end
            
        end
    end)
        
    local msh=Mesh(shield,3,0,0,0)
    shield.CFrame=l(torso)
    droning_snd:Play()
    for i=0,1,.1 do
        shield.CFrame=shield.CFrame:lerp(l(torso,0,0,-3),.8)
        shield.Velocity=shield.CFrame.lookVector*400
        msh.Scale=v3n(i,i,i)
        wait()
    end
    holding=true
    local ptick=tick()
    local dir=1
    local bol=false

    while holding do
        if (tick()-ptick)>.5 then dir=dir*-1 ptick=tick()end
        shield.Transparency=shield.Transparency+dir*.005
        shield.CFrame=shield.CFrame:lerp(l(torso,0,0,-3),.8)
        shield.Velocity=shield.CFrame.lookVector*400
        local pp=Part(.1,.1,.1,'New Yeller',.75)pp.Material='Neon'Mesh(pp,3,.5,.5,.5)
        pp.CFrame=l(bl)
        Create'BodyPosition'{_P=pp;position=l(shield,mr(-2.5,2.5),mr(-2.5,2.5),0).p}
        Debris:AddItem(pp,.4)
        
        wait()
    end
    droning_snd:Stop()
    for i=1,0,-.1 do
        shield.CFrame=shield.CFrame:lerp(l(torso,0,0,-3),.8)
        msh.Scale=v3n(i,i,i)
        wait()
    end
    shield:Destroy()
    bl.Material='Plastic'
    Anim'lw'(cfn())
    wait'.25'Lock'L'
end

klist={
    f=lol2;
    e=lol;
    cq=lol3;
    rq=kiball;
}

local con,con2
con=mouse.KeyUp:connect(function(key)
    for i,v in pairs(klist)do
        if key==i:sub(1,1) and i:sub(2,2)=='q'then
            holding=false
        end
    end
end)
con2=mouse.KeyDown:connect(function(key)
    if attacking then return end
    attacking=true
    for i,v in pairs(klist)do
        if key==i:sub(1,1) then
            v()
        end
    end
    attacking=false
end)
tag(con,'cons')tag(con2,'cons')

char.ChildAdded:connect(function(a)
    if a:IsA'Script'then for i,v in pairs(cons)do v:disconnect()end end end)