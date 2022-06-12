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

pcall(function()ply.Backpack.RUDE:Destroy()end)
hop=Instance.new('HopperBin',ply.Backpack)hop.Name='RUDE'

local mouse=ply:GetMouse()

function genNew(ClassName, Parent, Properties)
        local nObj = Instance.new(ClassName, Parent)
        if Properties["FormFactor"] then
                nObj["FormFactor"] = Properties["FormFactor"]
        end
        for Prop, Value in pairs(Properties) do
                nObj[Prop] = Value
        end
        return nObj
end
udim=function(a,b,c,d)
if type(a)=='string'then
x,y=tostring(a):match('(%d*%.*%d*),(%d*%.*%d*)')
return UDim2.new(x or 0,x2 or 0,y or 0,y2 or 0)
else
return UDim2.new(a or 0,c or 0,b or 0,d or 0)
end end
rw,rw2,lw,lw2=nil,nil,nil,nil

function l(a,x,y,z,xx,yy,zz)
        if string.find(tostring(a),',') == nil then
        return (a.CFrame*CFrame.new(x or 0,y or 0,z or 0))*CFrame.Angles(xx or 0,yy or 0, zz or 0)
        else return (a * CFrame.new(x or 0,y or 0,z or 0))*CFrame.Angles(xx or 0,yy or 0,zz or 0)
        end
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

pcall(function() char.Stick:Destroy() end) --- Destroys Physical Tool
Weapon = Instance.new("Model",char) Weapon.Name = 'Stick'

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

Lightning = function(Start,End,Times,Offset,Color,Thickness,Transparency) --jarredbcv's lightning
    local magz = (Start - End).magnitude local curpos = Start local trz = {-Offset,Offset}
    for i=1,Times do 
        local li=Part(Thickness,Thickness,magz/Times,(Color or 'White'),(Transparency or 0))li.Anchored=true
        local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
        function touch(hit) 
            if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent ~= char then 
                hit.Parent:BreakJoints()
            end
        end li.Touched:connect(touch) 
        local trolpos = CFrame.new(curpos,End)*CFrame.new(0,0,magz/Times).p+ofz
        if Times == i then 
            local magz2 = (curpos - End).magnitude li.Size = Vector3.new(Thickness,Thickness,magz2)
            li.CFrame = CFrame.new(curpos,End)*CFrame.new(0,0,-magz2/2)
        else
            li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/Times/2)
        end
        curpos = li.CFrame*CFrame.new(0,0,magz/Times/2).p game.Debris:AddItem(li,0.25)
    end
end

Lock = function(which) --- For using Animation
    if which == 'R' then
        if not rw then
            rabr = Part(1,1,1,'White',0) rabr.Transparency = 1
            rabr.Position = torso.Position
            rw = Weld(rabr,torso,1.5,.5,0,0,0,0) rw.Parent = Weapon
            local w = Instance.new("Weld",Weapon)
            w.Part0,w.Part1 = char['Right Arm'],rabr
            w.C1 = CFrame.new(0,-.5,0)
        else
            rabr:Destroy()rw = nil
        end
    elseif which == 'L' then
        if not lw then
            labr = Part(1,1,1,'White',0) labr.Transparency = 1
            labr.Position = torso.Position
            lw = Weld(labr,torso,-1.5,.5,0,0,0,0) lw.Parent = Weapon
            local w = Instance.new("Weld",Weapon)
            w.Part0,w.Part1 = char['Left Arm'],labr
            w.C1 = CFrame.new(0,-.5,0)
        else
            labr:Destroy()lw = nil
        end
    elseif which == 'RR' then
        if not rw2 then
            rlbr = Part(1,1,1,'White',0) rlbr.Transparency = 1
            rlbr.Position = torso.Position
            rw2 = Weld(rlbr,torso,.5,-1.5,0,0,0,0) rw2.Parent = Weapon rw2.Name = 'rw2'
            local w = Instance.new("Weld",Weapon)
            w.Part0,w.Part1 = char['Right Leg'],rlbr
            w.C1 = CFrame.new(0,-.5,0)
        else
            rlbr:Destroy()rw2 = nil
        end
    elseif which == 'LL' then
        if not lw2 then
            llbr = Part(1,1,1,'White',0) llbr.Transparency = 1
            llbr.Position = torso.Position
            lw2 = Weld(llbr,torso,-.5,-1.5,0,0,0,0) lw2.Parent = Weapon lw2.Name = 'lw2'
            local w = Instance.new("Weld",Weapon)
            w.Part0,w.Part1 = char['Left Leg'],llbr
            w.C1 = CFrame.new(0,-.5,0)
        else
            llbr:Destroy()lw2 = nil
        end
    end
end

Add ={ --- Array for handy functions
    BG = function(parent)
            local bg = Instance.new("BodyGyro",parent)
            bg.P = 20e+003
            bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
            return bg
    end;
    BP = function(parent,position)
            local bp = Instance.new("BodyPosition",parent)
            bp.maxForce = Vector3.new()*math.huge
            bp.position = position or parent.Position
            return bp
    end;
    BV = function(parent,force)
            local bv = Instance.new("BodyVelocity",parent)
            bv.maxForce = Vector3.new()*math.huge
            bv.velocity = force or Vector3.new(0,0,0)
            return bv
    end;
    Sound = function(id,pitch,loop,parent)
            local tab = {}
            local snd = Instance.new("Sound",parent or char.Head)
            snd.Name = 'MugSound'
            snd.SoundId = id
            snd.Volume = 100
            snd.Pitch = pitch or 1
            snd.Looped=loop and true or false
            tab.Sound = snd
            function tab:Play()self.Sound:Play()end
            function tab:Stop()self.Sound:Stop()end
            function tab:Pitch(a)self.Sound.Pitch = a end
            function tab:Volume(a)self.Sound.Volume = a end
            setmetatable(tab,{
                     __call = function(t,param) local cl = t.Sound:Clone() cl.Parent = param return cl end;
            })
            return tab
    end;
    Fire = function(parent,size,heat,color,color2)
            local f = Instance.new("Fire",parent)
            f.Size = size
            f.Heat = heat
            f.Color = BrickColor.new(color).Color
            if color2 then
            f.SecondaryColor = BrickColor.new(color2).Color
            end
            return f
    end;
}
tw = function(Weld, Stop, Step,a) --- TweenWeld function
local func = function(w)
        local Start = w.C1
        local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
        local Stop = Stop or cfn()
        local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
        
        for i = 0, 1, Step or .1 do
                w.C1 = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
                                (Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
                                (Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                                (X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
                                (Z1 * (1 - i)) + (Z2 * i) )
                wait()
        end
        
        w.C1 = Stop
end
if type(Weld)=='table'then
        for i=1,#Weld do
                if i < #Weld then
                        coroutine.wrap(function()func(Weld[i])end)()
                else
                        func(Weld[i])
                end
        end
else
if a then coroutine.wrap(function() func(Weld) end)() else func(Weld) end
end
end
function cTween(obj,en,i2,b)
    local lol=(tostring(i2):sub(1)=='-')
    en_pos=en
    if obj:IsA'JointInstance'then prop='C1'
    else prop='CFrame'
    end
    local st_pos=obj[prop]
    local function doit(lol,i2,en)
        for i=(lol and 1 or 0),(lol and 0 or 1) ,i2 do
            obj[prop]=st_pos:lerp(en_pos,i)
            wait()
        end
    end
    if b then Spawn(function()doit(lol,i2,en)end) else doit(lol,i2,en)end
end

tv = function(Weld,wut, Stop, Step,a) --- TweenVector function
    local func = function(w)
            local Start = w[wut]
            local X1, Y1, Z1 = Start.x,Start.y,Start.z
            local Stop = Stop or v3n()
            local X2, Y2, Z2 = Stop.x,Stop.y,Stop.z
            
            for i = 0, 1, Step or .1 do
                    w[wut] = Vector3.new( (Start.x * (1 - i)) + (Stop.x * i), 
                                    (Start.y * (1 - i)) + (Stop.y * i), 
                                    (Start.z * (1 - i)) + (Stop.z * i))
                wait()
            end
            
            w = Stop
    end
    if type(Weld)=='table'then
            for i=1,#Weld do
                    if i < #Weld then
                            coroutine.wrap(function()func(Weld[i])end)()
                    else
                            func(Weld[i])
                    end
            end
    else
        if a then coroutine.wrap(function() func(Weld) end)() else func(Weld) end
    end
end

Meshes = {Diamond='rbxassetid://9756362';Spikeball='rbxassetid://9982590';Table='rbxassetid://111868131';---MeshIds
Egg='rbxassetid://1527559';Ring='rbxassetid://3270017';Bullet='rbxassetid://2697549';Grass='rbxassetid://1080954';
Shark='rbxassetid://82821384';Sword='rbxassetid://12221720';Crown='rbxassetid://10688643';Spike='rbxassetid://1033714'}
Mesh = function(par,num,x,y,z,tex)
        local msh = _
        if num == 1 then msh = Instance.new("CylinderMesh",par)
        elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
        elseif num == 3 then msh = Instance.new("BlockMesh",par)
        elseif num == 4 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 'Wedge'
        elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par)
        msh.MeshId = string.find(num,'://') == nil and Meshes[num] or num
        msh.TextureId = tex and tex or ''
        end
        msh.Scale = Vector3.new(x or 1,y or 1,z or 1)
        return msh
end
function findHum(pos,rad)
    local hums={}
    function check(a)
        local res=false
        for i,ho in pairs(hums)do
            if a==ho then res=true end
        end
        return res
    end
    for i,v in pairs(Workspace:children())do
        if v:IsA'Model'and v~=char then
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

torw=char.HumanoidRootPart.RootJoint
ort=cfn(0,0,0,-1,0,0,0,0,1,0,1,-0)

hdl=Part(.5,2,.5,'Steel blue')Mesh(hdl,1)
hw=Weld(hdl,rarm,0,-1.1,0,-math.pi/2)

pp2=Part(.5,.5,.5,'Steel blue')Mesh(pp2,2)
Weld(pp2,hdl,0,-1)

pp2=Part(.51,.1,.51,107)Mesh(pp2,1)pp2.Material='Neon'
Weld(pp2,hdl,0,-.75)

p=Part(.7,.1,.7,'Storm blue')Mesh(p,1)
Weld(p,hdl,0,1.05)

ball=Part(1,1,1,'107',.1)Mesh(ball,2)ball.Material='Neon'
Weld(ball,hdl,0,1.5,0)

p2=Part(.7,.7,.7,'Storm blue')Mesh(p2,2)
Weld(p2,ball,0,-.5)

spipart=Part(.1,.1,.1,'',1)
cont={}
spiw=Weld(spipart,ball)
for i=0,m.tau,m.tau/5 do
p=Part(.1,.1,.1,107,1)p.Material='Neon'Mesh(p,'Diamond',.1,.5,.1)
table.insert(cont,p)
ww=Weld(p,spipart,math.cos(i)*.5,-.5,math.sin(i)*.5,math.pi/2,0,math.pi/2+i)ww.C1=ww.C1*ang(md'70')
end
Spawn(function()while wait()do spiw.C0=spiw.C0*ang(0,md'5')end end)
pose={rw={},lw={}}
pose.rw.e=cfn()*ang(md'-90')

si=4
numkp=NumberSequenceKeypoint.new
colkp=ColorSequenceKeypoint.new
ar={numkp(0,0,0),numkp(.25,.5,0),numkp(.5,0,0),numkp(.75,.5,0),numkp(1,1,0)}
ar2={numkp(0,.5,0),numkp(.25,si,0),numkp(.5,.5,0),numkp(.75,si/2,0),numkp(1,1,0)}
partem=genNew('ParticleEmitter',ball,{
    Transparency=NumberSequence.new(ar);
    Size=NumberSequence.new(ar2);
    Color=ColorSequence.new(bcol'Cyan'.Color,bcol'New Yeller'.Color);
    Lifetime=NumberRange.new(.5,1);
    Rate=0;
    VelocitySpread=190;
    Rotation=NumberRange.new(0,360);
    Texture='http://www.roblox.com/asset/?id=246689799';
    RotSpeed=NumberRange.new(30);
    LightEmission=0;
    Speed=NumberRange.new(1,10);
    Drag=.5;
    Acceleration=Vector3.new(0,10,0);
})

function slash(mouse)
    tw(rw,cfn()*ang(md'-30'),.2)
    partem:Emit(10)partem:Emit(10)
    slash_snd:Play()
    for i,v in pairs(findHum(ball.Position,10))do
        local tag=v:FindFirstChild'Troll'
        if not tag then
            tag=Instance.new('BoolValue',v)tag.Name='Troll'
            Spawn(function()
                local p=Part(1,1,1)Weld(p,v.Torso) local msh=Mesh(p,'http://www.roblox.com/asset/?id=37223966',20,20,20)
                msh.TextureId='http://www.roblox.com/asset/?id=37223964'
                for i,v in pairs(v.Parent:children())do
                    if v:IsA'BasePart'then v.Transparency=1 end
                end
                wait(1)
                for i,v in pairs(v.Parent:children())do
                    if v:IsA'BasePart'then v.Transparency=0 end
                end p:Destroy()
            end)
            Debris:AddItem(tag,1)
        end
    end
    tw(rw,pose.rw.e,.2)
end

hit_snd=Add.Sound('rbxassetid://10756104',1)
function penta()
    tw(rw,cfn(0,.2,0)*ang(md'-90',md'-45'))
    
    local p=Part(4,.01,4,'',1)
    deca=genNew('Decal',p,{
        Texture='rbxassetid://151271428';
        Face='Bottom';
    })
    deca=genNew('Decal',p,{
        Texture='rbxassetid://151271428';
        Face='Top';
    })
    p.Anchored=true local i=0 holding=true
    while holding do i=i+1
        p.CFrame=l(torso,0,0,-2.5,math.pi/2,i*md'20')
        local ray=Ray.new(p.Position,(l(p).p-l(p,0,1).p).unit*300)
        local obj,pos=Workspace:FindPartOnRay(ray,char)
        if obj and pos then hit_snd:Play()
            local hum=obj.Parent:FindFirstChild'Humanoid'
            local enpos=l(cfn(pos),mr(-2,2),mr(-2,2),mr(-2,2)).p
            local pp=Part(.1,.1,.1,'',1)pp.Anchored=true pp.CFrame=cfn(enpos)
            local burnsfx=genNew('ParticleEmitter',pp,{
                Size=NumberSequence.new({numkp(0,1,0),numkp(1,4,0)});
                VelocitySpread=360;
                Color=ColorSequence.new(bcol'Cyan'.Color);
                Speed=NumberRange.new(60);
                Lifetime=NumberRange.new(.05);
                Transparency=NumberSequence.new({numkp(0,0,0),numkp(1,1,0)});
            })
            Debris:AddItem(pp,.5)
            --Start,End,Times,Offset,Color,Thickness,Transparency
            Lightning(p.Position,enpos,4,3,'Cyan',.2,.5)
            if hum then
                hum:UnequipTools()
                local bp=Add.BP(hum.Torso)
                bp.position=hum.Torso.Position
                hum.Torso.CFrame=l(hum.Torso.CFrame,0,0,0,mr(-3,3),mr(-3,3),mr(-3,3))
                Debris:AddItem(bp,.0001)
            end
        end
        wait()
    end
    
    p:Destroy()
    tw(rw,pose.rw.e)
end


function RGBtoHSL(col, a)
  local r, g, b = col.r / 255, col.g / 255, col.b / 255
  local max, min = math.max(r, g, b), math.min(r, g, b)
  local h, s, l
  l = (max + min) / 2
  if max == min then
    h, s = 0, 0 -- achromatic
  else
    local d = max - min
    local s
    if l > 0.5 then s = d / (2 - max - min) else s = d / (max + min) end
    if max == r then
      h = (g - b) / d
      if g < b then h = h + 6 end
    elseif max == g then h = (b - r) / d + 2
    elseif max == b then h = (r - g) / d + 4
    end
    h = h / 6
  end
  return h, s or 0, l, a or 255
end

function HSLtoRGB(hue, sat, light)
	local c = light > .5 and (2 - 2 * light) * sat or (2 * light) * sat
	local h2 = hue / 60
	local x = c * (1 - math.abs((h2 % 2) - 1))
	local rgbvals = {{c, x, 0}, {x, c, 0}, {0, c, x}, {0, x, c}, {x, 0, c}, {c, 0, x}}
	local rgb = rgbvals[math.floor(h2) + 1]
	for i = 1, 3 do rgb[i] = rgb[i] + (light - .5 * c) end
	return Color3.new(rgb[1], rgb[2], rgb[3])
end

mus=Add.Sound('rbxassetid://151378684',1,true) ---cowardly mont blanc gumi
bpm=111.88
pitch=1
bps=(bpm*pitch)/60
oribps=bps
booms=0
modbps=bps*2
int=0

prtic=genNew('ParticleEmitter',char.Torso,{
    Texture='rbxassetid://253188763';
    Enabled=false;
    LockedToPart=true;
    Transparency=NumberSequence.new({numkp(0,0),numkp(.25,.5),numkp(.5,.25),numkp(1,1)});
    Size=NumberSequence.new({numkp(0,3),numkp(.5,3*.5),numkp(1,3*.75)});
    Color=ColorSequence.new(HSLtoRGB(int,1,1),bcol'White'.Color);
    VelocitySpread=175;
    Lifetime=NumberRange.new(.75);
    Speed=NumberRange.new(10);
    RotSpeed=NumberRange.new(70,90);
    Rotation=NumberRange.new(15,75);
})
prtic2=genNew('ParticleEmitter',char.Torso,{
    Texture='http://www.roblox.com/asset/?id=245630713';
    Enabled=false;
    LockedToPart=true;
    Transparency=NumberSequence.new({numkp(0,0),numkp(.25,.5),numkp(.5,.25),numkp(1,1)});
    Size=NumberSequence.new({numkp(0,1),numkp(.5,.5),numkp(1,.75)});
    Color=ColorSequence.new(HSLtoRGB(int,1,1),bcol'White'.Color);
    VelocitySpread=175;
    Lifetime=NumberRange.new(.75);
    Speed=NumberRange.new(10);
    RotSpeed=NumberRange.new(70,90);
    Rotation=NumberRange.new(15,75);
})

collist={}
for i=80,160,20 do
    table.insert(collist,HSLtoRGB(i,1,.75))
end
-- collist={'Bright red','New Yeller','Lime green'}

function sit()
    Lock'L'Lock'RR'Lock'LL'
    local timeElapsed=0
    local prevtick=tick()
    tw(rw,cfn()*ang(md'30',md'-25'),.1,'')tw(lw,cfn()*ang(md'30',md'25'),.1,'')
    tw(rw2,cfn(0,.5,.2)*ang(md'-70',md'25'),.1,'')tw(lw2,cfn(0,.5,.2)*ang(md'-70',md'-25'),.1,'')
    cTween(torw,ort*(cfn(0,-2.5,0)*ang(md'25')),.1)
    holding=true mus:Play()
    local hbeat=game:service'RunService'.Heartbeat
    local ownhum
    for i,v in pairs(char:children())do if v:IsA'Humanoid'then ownhum=v end end
    while holding do 
        hbeat:wait()
        local delta=tick()-prevtick
        timeElapsed=timeElapsed+delta
        if timeElapsed > 1/bps then
            if ownhum then ownhum.Health=ownhum.Health+10 end
            for i,v in pairs(findHum(torso.Position,20))do
                v.Health=v.Health-5
                for i=1,15 do
                    local pp=Part(1,1,1,'White',1)pp.CFrame=l(v.torso)
                    local tar=v local bg=Add.BG(v.Torso)bg.cframe=cfn(v.Torso.Position,torso.Position)*ang(math.pi/2)Debris:AddItem(bg,4)
                    v.Torso.Velocity=cfn(torso.Position,v.Torso.Position).lookVector*50
                    pp.Touched:connect(function(hit)local hum=hit.Parent:FindFirstChild'Humanoid'
                    if hum and hum~=tar and hum.Parent~=char then pp:Destroy() hum.Health=hum.Health-5
                        fir=Add.Fire(hum.Tosro,20,20,'Magenta')
                        Debris:AddItem(fir,1)end end)
                    Add.Fire(pp,1,1,'Magenta')
                    Add.BV(pp,l(v.torso,0,0,0,mr(-1,1),mr(-1,1),mr(-1,1)).lookVector*40)
                    Debris:AddItem(pp,1)
                end
            end
            if booms%2==0 then 
            
            int=(int>=#collist and 0 or int)
            int=int+1
            local hue,sat,li,a=RGBtoHSL(collist[int])
            -- print(hue,sat,li,a)
            COLOR=ColorSequence.new(collist[int],HSLtoRGB(hue,sat,li*.75))                
                
            prtic.Color=COLOR prtic:Emit(10)
            elseif booms%3==0 then prtic2.Color=COLOR prtic2:Emit(10)end
            
            local sfxp=Part(1,1,1,'New Yeller',.75)local msh=Mesh(sfxp,2)
            sfxp.Anchored=true sfxp.CFrame=l(torso)
            Spawn(function()
                for i=.7,1,.025 do
                    for _,v in pairs(findHum(torso.Position,i*5))do local bp=Add.BP(v.Torso,v.Torso.Position)Debris:AddItem(bp,.5)
                    v.Health=v.Health-5 end
                    msh.Scale=Vector3.new(i*10,i*10,i*10)
                    sfxp.Transparency=i
                    wait()
                end
                sfxp:Destroy()
            end)
            timeElapsed=timeElapsed-1/bps
            booms=booms+1
        end
        
        prevtick=tick()
    end
    mus:Stop()
    tw(rw,pose.rw.e,.1,'')Spawn(function()tw({lw2,lw,rw2},cfn(),.1)end)
    cTween(torw,ort,.1)
    Lock'L'Lock'LL'Lock'RR'
end

konata_snd=Add.Sound('rbxassetid://208421310',1,true)
playing=false
i=0
function konata()
    if not playing then
        konata_snd:Play()playing=true
        -- ball.Material='Plastic'ball.Transparency=0
        Spawn(function()
            while playing do i=i+25 i=(i>=320 and 0 or i)
                ball.Color=HSLtoRGB(i,1,.5)
                wait(.1)
            end
        end)
        
    else
        konata_snd:Stop()playing=false ball.Material='Neon'ball.Transparency=.1 ball.BrickColor=bcol(107)
    end
end

hiding=false
curcam=Workspace.CurrentCamera
namn=hop.Name

function vortex()
    tw(rw,cfn()*ang(md'-175'))
    local ball=Part(30,30,30,'Black')ball.Shape=0 
    ball.Anchored=true
 ball.CFrame=l(torso,0,15,-15) 
    ball.CanCollide=true ball.Anchored=false
    Instance.new('BodyForce',ball).force=Vector3.new(0,ball:GetMass()*m.floatforce,0)
    Add.Fire(ball,10,10,'New Yeller')
    premouse=cfn(torso.Position,mouse.hit.p).lookVector*5
    Spawn(function()while ball do --[[ball.CFrame=ball.CFrame:lerp(mouse.hit,.2)]]local mag=(ball.Position-mouse.hit.p).magnitude ball.Velocity=cfn(ball.Position,v3n(mouse.hit.x,torso.Position.y,mouse.hit.z)).lookVector*mag*2 premouse=mouse.hit.p wait()end end)
    Debris:AddItem(ball,3)
    wait()
    tw(rw,pose.rw.e)
end

function equip()
    Lock'R'
    for i=1,.5,-.1 do for q,v in pairs(cont)do v.Transparency=i end wait()end
    tw(rw,pose.rw.e)ball.Material='Neon'
end

mod1,mod2=Vector3.new(1,4,1),Vector3.new(4,1,4)
slash_snd=Add.Sound('rbxassetid://172264582',.5)

function unequip()
    for i=.5,1,.1 do for q,v in pairs(cont)do v.Transparency=i end wait()end
    ball.Material='SmoothPlastic'
    tw(rw,cfn())
    Lock'R'
end

Keys={}
klist={
    onEquip=equip;
    onUnequip=unequip;
    f=slash;
    qq=penta;
    xq=sit;
    e=vortex;
    t=konata;
}

function onKey(key)
    if Keys[key]then Keys[key]=nil
    else Keys[key]=1
    end
end
m_down=false
if not Workspace:FindFirstChild'TheGamer101' then
    hop.Selected:connect(function(mouse)
        klist.onEquip()
        mouse.Button1Down:connect(function()m_down=true if attacking or not equipped then return end attacking=true (klist['MouseClick'] or function() return end)() attacking=false end)
        mouse.KeyUp:connect(function(key)onKey(key)for i,v in pairs(klist) do if key == i:sub(1,1) and i:sub(2,#i):match('q') then  holding = false end end end)
        mouse.KeyDown:connect(function(key)onKey(key)
            if attacking then return end
            for i,v in pairs(klist) do
                if key == i:sub(1,1) then
                    attacking = true
                    v(mouse)
                    attacking = false
                end
            end
        end)
        mouse.Button1Up:connect(function()m_down=false end)
    end)
    hop.Deselected:connect(klist.onUnequip)
end
for i,v in pairs(torso:children()) do if v:IsA'BodyGyro' or v:IsA'BodyPosition' or v:IsA'BodyVelocity' then v:Destroy() end end --get rid of remains

