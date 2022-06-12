game:service'RunService':UnbindFromRenderStep('Mug_Anims')
ply=game:service'Players'.LocalPlayer
char=ply.Character
torso=char.Torso
rarm,larm=char['Right Arm'],char['Left Arm']
rleg,lleg=char['Right Leg'],char['Left Leg']

bcol=BrickColor.new
cfn,md,mr,v3n=CFrame.new,math.rad,math.random,Vector3.new
ang=function(x,y,z)return CFrame.Angles(x or 0,y or 0,z or 0)end
Debris=game:service'Debris'
m={}
m.tau=math.pi*2
m.floatforce = 196.25

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
    local p = Instance.new('WedgePart',parent or Weapon)
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
Leaf='48100239';Fist='65322375';Chakram='19251107';Crown='20329976'}

Textures = {Leaf='rbxassetid://48047287'}

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
    return hums
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

rw_cf=r_shl_c0--cfn(1.5,.95,0)
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

pose={rw={},lw={},rw2={},lw2={},torw={},neck={}}
function Anim(what)
    local weld=getfenv()[what]
    return function(where)
        if weld then
            target_pos[what]=def_pos[what]*where
            -- waitfor(weld,where)
        end
    end
end

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
    rw=rw_cf;lw=lw_cf;
    rw2=rw2_cf;lw2=lw2_cf;
    torw=ort;
    neck=norig;
    -- hw=cfn(0,-1,0)*ang(math.pi/2);
    shield_w=cfn(-.25,0,0)*ang(math.pi,math.pi/2);
}
target_pos={
    rw=rw_cf;
    lw=lw_cf;
    rw2=def_pos.rw2;
    lw2=def_pos.lw2;
    torw=def_pos.torw;
    neck=def_pos.neck;
    -- hw=def_pos.hw;
}
game:service'RunService':BindToRenderStep('Mug_Anims',5,function()
    if cont_anim then
        if rw then
            rw.C0=rw.C0:lerp(target_pos.rw,spd.rw)
        end
        if lw then
            lw.C0=lw.C0:lerp(target_pos.lw,spd.lw)
        end
        if rw2 then
            rw2.C0=rw2.C0:lerp(target_pos.rw2,spd.rw2)
        end
        if lw2 then
            lw2.C0=lw2.C0:lerp(target_pos.lw2,spd.lw2)
        end
        if torw then
            torw.C0=torw.C0:lerp(target_pos.torw,spd.torw)
        end
        if neck then
            neck.C0=neck.C0:lerp(target_pos.neck,spd.neck)
        end
        -- if hw then
        --     hw.C0=hw.C0:lerp(target_pos.hw,spd.hw)
        -- end
    end
end)
end

do --PATTERN
mage_pat={
         {{0,0,0,255},{0,0,0,255},{0,0,0,255},{0,0,0,255},{0,0,0,255},{0,0,0,255},{0,0,0,255},{0,0,0,255},{0,0,0,255}};
         {{0,0,0,255},{0,255,102,255},{4,255,100,255},{58,48,246,255},{58,48,246,255},{58,48,246,255},{4,255,100,255},{0,255,102,255},{0,0,0,255}};
         {{0,0,0,255},{0,255,102,255},{58,48,246,255},{58,48,246,255},{58,48,246,255},{58,48,246,255},{58,48,246,255},{0,255,102,255},{0,0,0,255}};
         {{0,0,0,255},{229,13,13,255},{229,13,13,255},{234,255,0,255},{234,255,0,255},{234,255,0,255},{229,13,13,255},{229,13,13,255},{0,0,0,255}};
         {{0,0,0,255},{0,0,0,255},{229,13,13,255},{229,13,13,255},{58,48,246,255},{229,13,13,255},{229,13,13,255},{0,0,0,255},{0,0,0,255}};
         {{255,255,255,0},{0,0,0,255},{0,0,0,255},{229,13,13,255},{58,48,246,255},{229,13,13,255},{0,0,0,255},{0,0,0,255},{255,255,255,0}};
         {{0,0,0,255},{0,0,0,255},{229,13,13,255},{229,13,13,255},{58,48,246,255},{229,13,13,255},{229,13,13,255},{0,0,0,255},{0,0,0,255}};
         {{0,0,0,255},{229,13,13,255},{229,13,13,255},{234,255,0,255},{234,255,0,255},{234,255,0,255},{229,13,13,255},{229,13,13,255},{0,0,0,255}};
         {{0,0,0,255},{0,255,102,255},{58,48,246,255},{58,48,246,255},{58,48,246,255},{58,48,246,255},{58,48,246,255},{0,255,102,255},{0,0,0,255}};
         {{0,0,0,255},{0,255,102,255},{4,255,100,255},{58,48,246,255},{58,48,246,255},{58,48,246,255},{4,255,100,255},{0,255,102,255},{0,0,0,255}};
         {{0,0,0,255},{0,0,0,255},{0,0,0,255},{0,0,0,255},{0,0,0,255},{0,0,0,255},{0,0,0,255},{0,0,0,255},{0,0,0,255}};
     }
          
function tilefy(obj,pattern,colors)
    local function find_longest(a)
        local long=0
        local tab=nil
        for i,_v in pairs(a)do
            local v=_v
            if type(_v)=='number'then
            v={_v}
            end
            if #v>long then long=#v tab=v end
        end
        return tab
    end
    local function compare_tabs(tab,tab2) local res=false
        if tab[1]==tab2[1] and tab[2]==tab2[2] and tab[3]==tab[3] and tab[4]==tab[4] then
            res=true
        end
        return res
    end
    local tab,main_p=pattern,obj
    p_sx,p_sy=main_p.Size.x,main_p.Size.y
    t_sx,t_sy=#find_longest(tab),#tab
    local part_tab={}
    tile_x=p_sx/t_sx
    tile_y=p_sy/t_sy
    height=main_p.Size
    COLOR=nil
    part_cnt=0
    local y=1
    repeat
        v=tab[y]
        tile_x=p_sx/#v
        local i=1
        repeat
            local cur=i
            local nex=cur+1
            local alph=0
            local alph2=1
            if v[nex] then
                if compare_tabs(v[cur],v[nex]) and v[cur][4]==255 then
                    while (v[cur] and compare_tabs(v[cur],v[nex])) do
                        nex=cur
                        cur=cur+1
                        alph=alph+1
                    end
                end
            end
            if v[i][4]~=0 then
            local p=Part(.1,.1,height.z,COLOR)ms=Mesh(p,3,(tile_x*(alph<=0 and 1 or alph))*5,(tile_y*(alph2<=0 and 1 or alph2))*5,height.z)
            p.Color=Color3.new(v[i][1]/255,v[i][2]/255,v[i][3]/255)
            Weld(p,obj,(-p_sx/2+(-.5+i)*tile_x)+ms.Scale.x*.1,(-p_sy/2+(-.5+y)*tile_y),0)
            part_cnt=part_cnt+1 table.insert(part_tab,p)
            end 
            i=i+1+((alph-1)<0 and 0 or (alph-1)) alph=0
        until v[i]==nil
        wait()
        y=y+1
    until tab[y]==nil
    print(part_cnt)
    return part_tab
end

end

do --BUILDING
p=Part(1,1.75,.1)Weld(p,torso,0,0,-.55)

to_tilefy=Part(1*.75,1.75*.75,.1,'White',1)Weld(to_tilefy,p,-.05,0,-.1,math.pi)

p2=Part(.5,1.9,.1)
Create'Weld'{_P=p2;Part0=p2;Part1=p;
    C1=cfn(-.5,0,0)*ang(0,md'25');
    C0=cfn(p2.Size.x/2,0,0);
}

local function nappi(a)
for i=-p2.Size.y/2+.125,p2.Size.y/2-.125,p2.Size.y/5 do
    local pp=Part(.25,.25,.25,'Black')
    Weld(pp,a,0,i+.125/2)
    local p=Part(.1,.1,.1,'New Yeller')Mesh(p,3,.25,.25,1)p.Material='Neon'
    Weld(p,pp,0,0,-.05)
end end
nappi(p2)

p22=Part(.5,1.9,.1)
Create'Weld'{_P=p22;Part0=p22;Part1=p;
    C1=cfn(.5,0,0)*ang(0,md'-25');
    C0=cfn(-p22.Size.x/2,0,0);
}

nappi(p22)

p3=Part(.5,1,.1)
Create'Weld'{_P=p3;Part0=p3;Part1=p2;
    C1=cfn(0,1,0)*ang(math.pi/2);
    C0=cfn(0,-p3.size.y/2,0);
}
p32=Part(.5,1,.1)
Create'Weld'{_P=p32;Part0=p32;Part1=p22;
    C1=cfn(0,1,0)*ang(math.pi/2);
    C0=cfn(0,-p32.size.y/2,0);
}

p3=Part(.1,1.2,.1)Mesh(p3,3,.5)
Create'Weld'{_P=p3;Part0=p3;Part1=p2;
    C1=cfn(-.3,-1+.15,-.1)*ang(-math.pi/2,0,md'1');
    C0=cfn(0,p3.size.y/2,0);
}
p32=Part(.1,1.2,.1)Mesh(p32,3,.5)
Create'Weld'{_P=p32;Part0=p32;Part1=p22;
    C1=cfn(.3,-1+.15,-.1)*ang(-math.pi/2,0,md'-1');
    C0=cfn(0,p32.size.y/2,0);
}

pp=Part(1,2,.1)Weld(pp,torso,0,.05,.55)

local function buton(y)
    local c_mp=Part(.1,.1,.1,'New Yeller',1)Weld(c_mp,pp,0,y+.175,.1)
    local c_sp=Part(.1,.1,.1,'New Yeller')Mesh(c_sp,'Diamond',.25,.25,.25)Weld(c_sp,c_mp,0,0,0,0,math.pi/2)
    local r=.125
    for i=0,m.tau,m.tau/5 do
        local alg=math.pi*(2*(r+(.1/2)))/5
        local p=Part(alg,.1,.1,'Black')Mesh(p,3,1.15,.5,.5)
        Create'Weld'{_P=p;
            Part0=p;Part1=c_mp;
            C1=cfn(0,0,0)*ang(math.pi/2,i);
            C0=cfn(0,0,r);
        }
    end
    r=r*2
    for i=0,m.tau,m.tau/10 do
        local alg=math.pi*(2*(r+(.1/2)))/10
        local p=Part(alg,.1,.1,'Black')Mesh(p,3,1.1,.5,.5)
        Create'Weld'{_P=p;
            Part0=p;Part1=c_mp;
            C1=cfn(0,0,0)*ang(math.pi/2,i);
            C0=cfn(0,0,r);
        }
    end
end
buton(.5+.1-.15)
buton(-.15)
buton(-.5-.1-.15)

Spawn(function()tilefy(to_tilefy,mage_pat,{})end)
end


RS=game:service'RunService'
function reset()
    Anim'rw'(cfn())Anim'lw'(cfn())Anim'torw'(cfn())Anim'rw2'(cfn())Anim'lw2'(cfn())Anim'neck'(cfn())
end
function move()
    Anim'rw'(ang(md'120',md'5',md'-45'))
    Anim'lw'(ang(md'120',md'-5',md'45'))
    Anim'torw'(cfn(0,0,-.15)*ang(md'25'))Anim'rw2'(ang(md'25'))Anim'lw2'(ang(md'25'))
    Anim'neck'(ang(md'15'))
    ball=Part(1,1,1,'New Yeller',.5)Mesh(ball,'Spike',5,15,5)
    bw=Weld(ball,char.HumanoidRootPart,0,1.8)
    cloud=Part(1,1,1)Mesh(cloud,'http://www.roblox.com/asset/?id=1095708',4,4,4)
    Weld(cloud,ball,0,5)
    
    wait(.5)
    Anim'neck'(ang(md'-15'))
    Anim'torw'(ang(md'-5'))
    Anim'rw2'(ang(md'-5'))Anim'lw2'(ang(md'-5'))
    Anim'rw'(ang(md'140',0,md'35'))Anim'lw'(ang(md'140',0,md'-35'))
    orgc=bw.C0
    for i=0,1,.1 do
        bw.C0=orgc:lerp(cfn(0,0,-7),i)
        bw.C1=cfn()*ang(md'-90'*i)
        wait()
    end wait(.5)
    reset()ball:destroy()cloud:Destroy()
    wait(.5)
end

function move2()
    for _,v in pairs{{-45},{45,md'75'}}do
        z_ang=md(v[1])
        Anim'neck'(ang(md(-1*(v[1]*.75)),md'-25'))
        Anim'torw'(cfn(0,0,-.25)*ang(z_ang,md'45'))
        Anim'lw'(ang(v[2]or 0,0,md'-25'))
        Anim'rw'(ang(v[2] or md'45',0,md'-45'))
        Anim'lw2'(cfn(0,.5,0)*ang(z_ang,0,md'-45'))
        Anim'rw2'(ang(z_ang,0,md'-15'))
        wait(.5)
        Anim'neck'(ang(md(-1*(v[1]*.75)),md'25'))
        Anim'torw'(cfn(0,0,-.25)*ang(z_ang,md'-45'))
        Anim'lw'(ang(v[2] or md'45',0,md'45'))
        Anim'rw'(ang(v[2]or 0,0,md'25'))
        Anim'lw2'(ang(z_ang,0,md'15'))
        Anim'rw2'(cfn(0,.5,0)*ang(z_ang,0,md'45'))wait(.5)
    end
    reset()wait(.5)
end

function move3()
    r=1.5
    holding=true
    local bpm=140*1.5 local bps=bpm/60
    -- bps=2.5
    local elapsedT,prevT=0,tick()
    Spawn(function()while holding do
        RS.Heartbeat:wait()
        local d=(tick()-prevT)
        elapsedT=elapsedT+d
        if elapsedT>1/bps then
            Spawn(function()
                Anim'torw'(cfn(0,0,3))wait()Anim'torw'(cfn())
            end)
            elapsedT=elapsedT-1/bps
        end
        prevT=tick()
        end
    end)
    while holding do
    for i=md'45',m.tau,(m.tau)/15 do
        if not holding then break end
        Anim'rw2'(ang(math.sin(i)*.25,0,math.cos(i)*.25))Anim'lw2'(ang(math.cos(i)*.25,0,math.sin(i)*.25))
        Anim'rw'(ang(math.pi/2+math.sin(i)*r,0,math.pi/2+math.cos(i)*r))
        Anim'lw'(ang(math.pi/2+math.sin(i)*r,0,-math.pi/2+math.cos(i)*r))
        wait(.1)
    end end reset()
    wait(.5)
end

soundId={365531859,365532206}

function move4()
    local z_ang=45
    Anim'neck'(ang(md(-z_ang-10),0))
    Anim'torw'(cfn(0,0,-.5)*ang(z_ang,0))
    Anim'lw'(ang(75,0,md'45'))
    Anim'rw'(ang(75,0,md'-45'))
    Anim'lw2'(ang(md(z_ang),0))
    Anim'rw2'(ang(md(z_ang),0))
    wait(.5)
    torso['Left Hip'].C0=orig_lhip_c0*ang(0,0,-md(z_ang+15))
    torso['Right Hip'].C0=orig_rhip_c0*ang(0,0,md(z_ang+15))
    Lock'RR'Lock'LL'
    holding=true
    local r2=1.05
    while holding do 
    
    for i=0,1,.1 do
        z_ang=45+(i*25)
        Anim'neck'(ang(md(-z_ang-10),0))
        Anim'torw'(cfn(0,0,-.5-(.05*i))*ang(md(z_ang),0))
        -- Anim'lw2'(ang(md(z_ang+5)))Anim'rw2'(ang(md(z_ang+5)))
        torso['Left Hip'].C0=orig_lhip_c0*ang(0,0,-md(z_ang)*r2)
        torso['Right Hip'].C0=orig_rhip_c0*ang(0,0,md(z_ang)*r2)
        wait()
    end 
    for i=1,0,-.1 do
        z_ang=45+(i*25)
        Anim'neck'(ang(md(-z_ang-10),0))
        Anim'torw'(cfn(0,0,-.5-(.05*i))*ang(md(z_ang),0))
        -- Anim'lw2'(ang(md(z_ang+5)))Anim'rw2'(ang(md(z_ang+5)))
        torso['Left Hip'].C0=orig_lhip_c0*ang(0,0,-md(z_ang)*r2)
        torso['Right Hip'].C0=orig_rhip_c0*ang(0,0,md(z_ang)*r2)
        wait()
    end 
        
    end
    torso['Left Hip'].C0=orig_lhip_c0
    torso['Right Hip'].C0=orig_rhip_c0
    reset()wait(.5)
end

function freeze(a)
    local hum=getHum(char)
    local orig_spd=hum.WalkSpeed
    hum.WalkSpeed=a or 0
    return function()hum.WalkSpeed=orig_spd end
end

function move5()
    local thaw=freeze()
    Anim'rw'(ang(md'65',md'-15',md'-25'))
    Anim'lw'(cfn(0,0,-.4)*ang(md'65',0,md'50'))
    Anim'neck'(ang(md'15',0,md'-15'))
    Anim'rw2'(ang(md'120'))
    wait(1)
    reset()wait(.5)
    Anim'rw'(cfn(0,0,-.4)*ang(md'65',0,md'-50'))
    Anim'lw'(ang(md'65',md'15',md'25'))
    Anim'neck'(ang(md'15',0,md'15'))
    Anim'lw2'(ang(md'120'))
    wait(1)reset()wait(.5)
    Anim'rw2'(ang(md'-120'))
    Anim'rw'(ang(md'-65',md'15',md'-25'))
    Anim'lw'(cfn(.2,0,.5)*ang(md'-65',0,md'50'))
    Anim'torw'(ang(md'25'))Anim'neck'(ang(md'45'))
    Anim'lw2'(ang(md'25'))
    wait(1)reset()wait(.5)
    Anim'lw2'(ang(md'-120'))
    Anim'rw2'(ang(md'25'))
    Anim'rw'(cfn(-.2,0,.5)*ang(md'-65',0,md'-50'))
    Anim'torw'(ang(md'25'))Anim'neck'(ang(md'45'))
    Anim'lw'(ang(md'-65',md'15',md'25'))
    wait(1)reset()wait(.5)
    Anim'torw'(cfn(0,0,-1))
    Anim'rw'(ang(0,0,md'25'))Anim'lw'(ang(0,0,md'-25'))
    Anim'rw2'(cfn(-.4,.5,0)*ang(0,0,md'75'))Anim'lw2'(cfn(.4,.5,0)*ang(0,0,md'-75'))
    wait(1)reset()wait(.5)
    
    for i=1,2 do
        Anim'rw2'(cfn()*ang(md'15'))
        Anim'torw'(cfn(0,0,-.75)*ang(md'65',md'25'))
        Anim'lw'(ang(md'75',0,md'5'))
            Anim'neck'(ang(md'-45',md'5',md'-15'))
        Anim'rw'(cfn(0,0,0)*ang(md'75',0,md'45'))
        Anim'lw2'(ang(md'125',0,md'-25'))
        
        wait(.5)
        reset()wait(.1)
        Anim'lw2'(cfn()*ang(md'15'))
        Anim'torw'(cfn(0,0,-.75)*ang(md'65',md'-25'))
        -- Anim'lw'(ang(md'75',0,md'-15'))
        Anim'neck'(ang(md'-45',md'-5',md'15'))
        Anim'rw'(ang(md'75',0,md'-5'))
        Anim'lw'(ang(md'75',0,md'-45'))
        Anim'rw2'(ang(md'125',0,md'25'))
        wait(.5)reset()wait(.1)
    end
    wait(.1)
    
    Anim'torw'(cfn(0,0,-1.5)*ang(md'75'))
    Anim'rw'(ang(md'90')) Anim'lw'(ang(md'90'))
    Anim'rw2'(ang(md'15'))Anim'lw2'(ang(md'15'))
    
    for i=1,3 do wait(.5)
        Anim'torw'(cfn(0,0,-1.75)*ang(md'85'))
        Anim'rw'(cfn(0,0,.4)*ang(md'90')) Anim'lw'(cfn(0,0,.4)*ang(md'90'))
        Anim'rw2'(ang(md'20'))Anim'lw2'(ang(md'20'))
        
        wait(.5)
        Anim'torw'(cfn(0,0,-1.5)*ang(md'75'))
        Anim'rw'(ang(md'90')) Anim'lw'(ang(md'90'))
        Anim'rw2'(ang(md'15'))Anim'lw2'(ang(md'15'))
    end wait(.5)

    reset()thaw()wait(.5)
end

function move6()
    Anim'torw'(ang(md'15',md'-25',md'-75'))
    Anim'neck'(ang(md'-35',0,md'45'))
    Anim'lw'(ang(md'75',0,md'45'))
    Anim'rw'(ang(md'90',0,md'-25'))
    Anim'rw2'(ang(md'25',md'15'))
    Anim'lw2'(ang(md'25',0,md'-15'))
    wait(1)
    Anim'torw'(ang(0,0,md'45'))
    Anim'rw'(ang(md'90',0,md'45'))
        Anim'lw'(ang(md'-25',0,md'15'))
    Anim'rw2'(ang(md'5',0,md'10'))
    Anim'lw2'(ang(0,md'15',md'-15'))
    Anim'neck'(ang(0,md'-5',md'-45'))
    Anim'lw'(cfn())
    wait(1)
    reset()wait(.5)
end

klist={
    f=move;
    q=move2;
    eq=move3;
    tq=move4;
    r=move5;
    cq=move6
}


do --CONNECTIONS
local Cons={}

Sitting=false
local Cons={}
Replenishing=false
attacking=false

function onKeyDown(key)
    if attacking or Replenishing then return end
    for i,v in pairs(klist) do
        local func=v
        if key == i:sub(1,1) then
            attacking = true
            if Sitting and v ~= sit_down then
                for o,val in pairs(Choises)do
                    if key:sub(1,1)==o then
                        val(mouse)
                    end
                end
            else
                Lock'R'Lock'RR'Lock'L'Lock'LL'
                func(mouse)
                for i,v in pairs({ {rw,'R'},{lw,'L'},{rw2,'RR'},{lw2,'LL'} })do
                    if v[1] then Lock(v[2]) end
                end
            end
            attacking = false
        end
    end
end
function onKeyUp(key)
    if not Sitting then
        for i,v in pairs(klist) do
            if key == i:sub(1,1) and i:sub(2,#i)=='q' then 
                holding = false
            end
        end
    else
        for i,v in pairs(Choises) do
            if key == i:sub(1,1) and i:sub(2,#i)=='q' then 
                holding = false
            end
        end
    end
end

Cons.kup=mouse.KeyUp:connect(onKeyUp)
Cons.kdo=mouse.KeyDown:connect(onKeyDown)
Cons.mup=mouse.Button1Up:connect(function()m_down=false end)

local function disable(a)
    for i,v in pairs(a:children())do
        if v:IsA'BodyMover'then v:Destroy()
        else disable(v)end
    end
end disable(char)

char.ChildAdded:connect(function(a)
    if a:IsA'BaseScript'then
        for i,v in pairs(Cons)do
            v:disconnect()
        end
    end
end)
prev_tim=tick() end