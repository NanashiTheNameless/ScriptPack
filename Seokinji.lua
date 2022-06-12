local ply = game.Players.LocalPlayer
char = ply.Character
torso = char.Torso
head = char.Head
holding = false
RS = game:service'RunService'
larm,rarm = char['Left Arm'],char['Right Arm']
Debris = game:service'Debris'
floatforce = 196.25
attacking = false
lh,rh = torso['Left Hip'],torso['Right Hip']
curcam = Workspace.CurrentCamera
mouse = ply:GetMouse()
FFS = function(A,B) return A:FindFirstChild(B) end ---- FindFirstChild Shortcut
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
pcall(function() char.Sole:Destroy() end) --- Destroys Physical Tool
Weapon = Instance.new("Model",char) Weapon.Name = 'Sole'
cfn,ang,md,mr = CFrame.new,CFrame.Angles,math.rad,math.random --- Some Shortcuts
udim = function(a,b)
if type(a) ~= 'string' then
return UDim2.new(a,0,b,0)
else
local x,y = a:match('(%.*%d+)%,(%.*%d+)')
return UDim2.new(x,0,y,0)
end
end
for i,v in pairs(head:children()) do
        if v.Name == 'MugSound' then v:Destroy() end
end
Name = 'Seokinji'
pcall(function() ply.Backpack[Name]:Destroy() end) --- Destroys Tool
hop = Instance.new('HopperBin',ply.Backpack)
hop.Name = Name
rw,lw = _,_
Col3 = function(r,g,b) return Color3.new(r/255,g/255,b/255) end
udim = function(x,y) return UDim2.new(x,0,y,0) end
bcol = BrickColor.new
---TOOLS---
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
Sound = function(id,pitch,parent)
        local tab = {}
        local snd = Instance.new("Sound",char.Head)
        snd.Name = 'MugSound'
        snd.SoundId = id
        snd.Pitch = pitch or 1
        tab.Sound = snd
        function tab:Play()
                self.Sound:Play()
        end
        function tab:Stop()
                self.Sound:Stop()
        end
        function tab:Pitch(a)
                self.Sound.Pitch = a
        end
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
function l(a,x,y,z,xx,yy,zz)
if string.find(tostring(a),',') == _ then
return (a.CFrame * cfn(x,y,z))*ang(xx or 0,yy or 0,zz or 0)
else
return (a * cfn(x,y,z))*ang(xx or 0,yy or 0,zz or 0)
end
end
Cur_Parent = _
Part = function(x,y,z,color,tr,cc,an,parent)
local p = Instance.new('Part',parent or Cur_Parent or Weapon)
p.formFactor = 'Custom'
p.Locked = true
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color or 'White')
p.CanCollide = cc or false
p.Anchored = an or false
p.Transparency = tr or 0
p.TopSurface,p.BottomSurface = 0,0
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
p.TopSurface,p.BottomSurface = 0,0
return p
end
Meshes = {Diamond = 'rbxassetid://9756362'; Spikeball = 'rbxassetid://9982590'; Table = 'rbxassetid://111868131'; --- MeshIds
Egg = 'rbxassetid://1527559'; Ring = 'rbxassetid://3270017'; Bullet = 'rbxassetid://2697549'; Grass = 'rbxassetid://1080954';
Shark = 'rbxassetid://82821384';Sword = 'rbxassetid://12221720'}
Mesh = function(par,num,x,y,z,tex)
local msh = _
if num == 1 then msh = Instance.new("CylinderMesh",par)
elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
elseif num == 3 then msh = Instance.new("BlockMesh",par)
elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par)
msh.MeshId = string.find(num,'://') == _ and Meshes[num] or num
msh.TextureId = tex and tex or ''
end
msh.Scale = Vector3.new(x or 1,y or 1,z or 1)
return msh
end
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
p0.Position = p1.Position
local w = Instance.new('Motor',par or p0)
w.Part0 = p1
w.Part1 = p0
w.C0 = CFrame.new(x or 0,y or 0,z or 0)*CFrame.Angles(rx or 0,ry or 0,rz or 0)
w.MaxVelocity = .1
return w
end
GetGround = function(position,radius) local result = _ --- Check's height from nearest object
        local r = Ray.new(position,Vector3.FromNormalId(Enum.NormalId.Bottom)*radius)
        local o,p = Workspace:FindPartOnRay(r,char)
        if o and p then result = {}
                result.obj = o
                result.pos = p
                result.mag = (position-p).magnitude
        end
        return result
end
gTorso = char.Torso
ftorso = _
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
--Anim
Lock = function(which) --- For using Animation
local torso = ftorso or gTorso
local result = {rw=false,lw=false}
if which == 'R' then
if not rw then
        rabr = Part(1,1,1,'White',0) rabr.Transparency = 1
        rabr.Position = torso.Position
        rw = Weld(rabr,torso,1.5,.5,0,0,0,0) rw.Parent = Weapon rw.Name = 'rw'
        w = Instance.new("Weld",Weapon)
        w.Part0,w.Part1 = char['Right Arm'],rabr
        w.C1 = CFrame.new(0,-.5,0)
else
        rabr:Destroy()
        rw = _
end
elseif which == 'L' then
if not lw then
        labr = Part(1,1,1,'White',0) labr.Transparency = 1
        labr.Position = torso.Position
        lw = Weld(labr,torso,-1.5,.5,0,0,0,0) lw.Parent = Weapon rw.Name = 'lw'
        w = Instance.new("Weld",Weapon)
        w.Part0,w.Part1 = char['Left Arm'],labr
        w.C1 = CFrame.new(0,-.5,0)
else
        labr:Destroy()
        lw = _
end
elseif which == _ then
if b then
        local rw,lw = FFS(b,'rw') FFS(b,'lw')
        return rw,lw
else
        return rw,lw
end
end
end
Lock2 = function(which) --- For using Animation
local torso = ftorso or gTorso
local result = {rw2=false,lw2=false}
if which == 'R' then
if not rw2 then
        rlbr = Part(1,1,1,'White',0) rlbr.Transparency = 1
        rlbr.Position = torso.Position
        rw2 = Weld(rlbr,torso,.5,-1.5,0,0,0,0) rw2.Parent = Weapon rw2.Name = 'rw2'
        w = Instance.new("Weld",Weapon)
        w.Part0,w.Part1 = char['Right Leg'],rlbr
        w.C1 = CFrame.new(0,-.5,0)
else
        rlbr:Destroy()
        rw2 = _
end
elseif which == 'L' then
if not lw2 then
        llbr = Part(1,1,1,'White',0) llbr.Transparency = 1
        llbr.Position = torso.Position
        lw2 = Weld(llbr,torso,-.5,-1.5,0,0,0,0) lw2.Parent = Weapon lw2.Name = 'lw2'
        w = Instance.new("Weld",Weapon)
        w.Part0,w.Part1 = char['Left Leg'],llbr
        w.C1 = CFrame.new(0,-.5,0)
else
        llbr:Destroy()
        lw2 = _
end
elseif which == _ then
if b then
        local rw2,lw2 = FFS(b,'rw2') FFS(b,'lw2')
        return rw2,lw2
else
        return rw2,lw2
end
end
end
tw = function(Weld, Stop, Step,a) --- TweenWeld function
local func = function()
        local Start = Weld.C1
        local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
        local Stop = Stop
        local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
        
        for i = 0, 1, Step or .1 do
                Weld.C1 = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
                                (Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
                                (Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                                (X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
                                (Z1 * (1 - i)) + (Z2 * i) )
                wait()
        end
        
        Weld.C1 = Stop
end
if a then coroutine.wrap(function() func() end)() else func() end
end
tw2 = function(Weld, Stop, Step,a) --- TweenWeld function
local func = function()
        local Start = Weld.C0
        local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
        local Stop = Stop
        local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
        
        for i = 0, 1, Step or .1 do
                Weld.C0 = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
                                (Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
                                (Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                                (X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
                                (Z1 * (1 - i)) + (Z2 * i) )
                wait()
        end
        
        Weld.C0 = Stop
end
if a then coroutine.wrap(function() func() end)() else func() end
end
tc = function(Part, Stop, Step,a) --- TweenCFrame function
local func = function()
        local Start = Part.CFrame
        local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
        local Stop = Stop
        local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()
        
        for i = 0, 1, Step or .1 do
                Part.CFrame = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
                                (Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
                                (Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
                                (X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
                                (Z1 * (1 - i)) + (Z2 * i) )
                wait()
        end
        
        Part.CFrame = Stop
end
if a then coroutine.wrap(function() func() end)() else func() end
end
--/Anim
--SFX
Sparks = function(part,position,radius,number,number2)
local part = part
part.Parent = _
        mode = Instance.new("Model",Weapon)
        for i = 1,number2 do
                local pos = position+Vector3.new(mr(-radius,radius),mr(-radius,radius),mr(-radius,radius))
                local mag = (position-pos).magnitude
                local laz = part:Clone() laz.Parent = mode laz.Anchored = true
                laz.Size = Vector3.new(laz.Size.x,mag,laz.Size.z)
                --Mesh(laz,1,1,1,1)
                laz.CFrame = (cfn(position,pos)*cfn(0,0,-mag/2))*ang(math.pi/2,0,0)
                cframe = (laz.CFrame*cfn(0,-mag/2,0)).p
                pos2 = cframe+Vector3.new(mr(-radius,radius),mr(-radius,radius),mr(-radius,radius))
                mag2 = (cframe-pos2).magnitude
                local laz2 = part:Clone() laz2.Parent = mode
                laz2.Size = Vector3.new(laz.Size.x,mag2,laz.Size.z) laz2.Anchored = true
                --Mesh(laz2,1,1,1,1)
                laz2.CFrame = (cfn(cframe,pos2)*cfn(0,0,-mag2/2))*ang(math.pi/2,0,0)
                previo = laz2
                for i = 1,number do
                        cframe = (previo.CFrame*cfn(0,-mag/2,0)).p
                        pos2 = cframe+Vector3.new(mr(-radius,radius),mr(-radius,radius),mr(-radius,radius))
                        mag2 = (cframe-pos2).magnitude
                        laz2 = part:Clone() laz2.Parent = mode
                        laz2.Size = Vector3.new(laz.Size.x,mag2,laz.Size.z) laz2.Anchored = true
                        --Mesh(laz2,1,1,1,1)
                        laz2.CFrame = (cfn(cframe,pos2)*cfn(0,0,-mag2/2))*ang(math.pi/2,0,0)
                        previo = laz2
                end
        end
        Debris:AddItem(mode,.1)
        return mode
end
function trace(obj,cf,color,delay,t,thick) -- offset,color,delay,transparency,thickness
if type(thick) == 'table' then
x,y = thick[1],thick[2]
else
x,y = thick,thick
end
local name
for i,v in pairs(getfenv()) do
if v == obj then name = i end
end
getfenv()[name..'tr'] = true
local prev = obj.CFrame
coroutine.wrap(function()
while getfenv()[name..'tr'] do
local cf = obj.CFrame*cf
local mag = (prev.p-cf.p).magnitude
local p = Part(x or .1,mag,y or .1,color or 'White',t or .5) p.Anchored = true
if type(thick) ~= 'table' then Mesh(p,1) end
p.CFrame = (cfn(prev.p,cf.p)*cfn(0,0,-mag/2))*ang(math.pi/2,0,0)
Debris:AddItem(p,delay or 1)
prev = cf
wait()
end end)()
end 
Lightning = function(p0,p1,tym,ofs,col,th,tra) -- start end times offset color thickness 
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs} 
for i=1,tym do 
li = Part(th,th,magz/tym,col,tra or .4) li.Anchored = true
local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)]) 
local trolpos = CFrame.new(curpos,p1)*CFrame.new(0,0,magz/tym).p+ofz 
if tym == i then 
local magz2 = (curpos - p1).magnitude li.Size = Vector3.new(th,th,magz2) 
li.CFrame = CFrame.new(curpos,p1)*CFrame.new(0,0,-magz2/2) 
else 
li.CFrame = cfn(curpos,trolpos)*cfn(0,0,magz/tym/2) 
end 
curpos = li.CFrame*cfn(0,0,magz/tym/2).p Debris:AddItem(li,0.25) 
end 
end 
--/SFX
--Weapon
hdl = Part(.25,4,.25,'Light stone grey')
hw = Weld(hdl,rarm,0,-1,0,-math.pi/2)
Mesh(hdl,1)
ydin = Part(.5,.5,.5,'Lime green')
Weld(ydin,hdl,0,2.25,0)
Mesh(ydin,2)
tip = Part(1,2,1,'Lime green',.5)
tipw = Weld(tip,ydin,0,.6,0)
Mesh(tip,2,1,1,1)
plate = Part(2,.1,2,'Black') Mesh(plate,1,.5,.5,.5)
Weld(plate,hdl,0,2,0)
r = .5
for i = 1,360,30 do
        p = Part(.11,.1,.1,'Black') Mesh(p,3,1,1,.5)
        Weld(p,plate,math.cos(md(i))*r,0,math.sin(md(i))*r,math.pi/2,0,math.pi/2+md(i))
        p2 = Part(.35,.1,.1,'Black') Mesh(p2,3,1,.5,.5)
        Weld(p2,p,0,r*2.25,0)
end
r = .1
for i = 0,1,.05 do
        if i%5 == 0 then wait() end
        p = Part(.1,.1,.1,'Black') Mesh(p,2)
        Weld(p,hdl,math.cos(md(i*360*3))*r,-2+i*4,math.sin(md(i*360*3))*r)
end
p = Part(1,1,1,'Lime green')
Weld(p,hdl,0,-2,0,math.pi/2)
Mesh(p,'Diamond',.5,.5,.5)
--/Weapon
ftorso = _
ftw = _
function FindHum(a) result = _
        for i,v in pairs(a:children()) do
                if v:IsA'Humanoid' then result = v end
        end
        return result
end
function Equip()
        Lock'R' --Lock'L'
        PutBack'F'
        tw(rw,cfn()*ang(0,0,md(-5)),.1)
        --tw(lw,cfn()*ang(0,0,md(15)))
        equip = rw.C1 --equip2 = lw.C1
end
function Unequip() PutBack'T'
        Lock'R' --Lock'L'
end
BackPos = cfn(0,0,.6)*ang(0,0,md(45))
HoldPos = cfn(0,-1,0)*ang(-math.pi/2,0,0)
function PutBack(a)
        if a == 'T' then
                hw.Part0 = torso
                hw.C0 = BackPos
        elseif a == 'F' then
                hw.Part0 = rarm
                hw.C0 = HoldPos
        end
end
PutBack'T'
--funcs
local function check(k) local downed = false
        if not Keys[k] then downed = true else downed = false end
        return downed
end
local function WK(key)
        return (Keys[key] and downed)
end
local function CreateLoop(tim,keys) local count = 0
        while count < tim do
                for i,v in pairs(keys) do
                if WK(i) then v(mouse) return end
                end
                count = count+1
                wait()
        end
end
--/funcs
function lerp(a,b,c)
    return a+(b-a)*c
end
--Attacks
nsize = tip.Size
Mons = Add.Sound("http://www.roblox.com/Asset/?id=2676305",2)
function slash()
hurt = false
local con = tip.Touched:connect(function(hit)
        local hum = FindHum(hit.Parent)
        if hum and hurt and hum.Health > 0 then 
                hum.Health = hum.Health -(3)
        elseif hum and hum.Health <= 0 and not FFS(hum,'Dead') then hum.Health = -1
                Mons:Play() Instance.new('BoolValue',hum).Name = 'Dead'
                for i,v in pairs(hum.Parent:children()) do
                if v:IsA('Part') then
                        Instance.new('BodyForce',v).force = Vector3.new(0,v:GetMass()*floatforce,0)
                end end
        end 
end)
        function stab() Lock'L'
                bp = Add.BP(torso,l(torso,0,5,-5).p)
                tw(rw,cfn(0,.7,0)*ang(md(-140),md(-45),md(20)),.1,'') --up
                tw(lw,cfn(0,.7,0)*ang(md(-140),md(45),md(20))) wait(3)
        end
        local function second()
                tw(rw,cfn(-.2,.3,.2)*ang(md(-130),md(-45),md(-10)),.1,'') --Rise
                for i = 0,1,.1 do wait() --Morph
                        lerp(nsize,Vector3.new(.5,4,.5),i)
                        tipw.Parent = ydin
                        tipw.Part1 = tip tipw.Part0 = ydin
                        tipw.C0 = cfn(0,.6+i*1.5,0)
                end
                Synth:Pitch(2) Synth:Play() 
                tw(rw,cfn()*ang(md(40),md(0),md(-50)),.3) --Down
                hurt = true
        end
        tw(rw,cfn(-.2,.3,.2)*ang(md(-130),md(-45),md(-50)),.1,'') --Rise
        for i = 0,1,.1 do wait() --Morph
                tip.Size = lerp(nsize,Vector3.new(.5,4,.5),i)
                tipw.Parent = ydin
                tipw.Part1 = tip tipw.Part0 = ydin
                tipw.C0 = cfn(0,.6+i*1.5,0)
        end Synth:Play()
        downed = check('f') hurt = true
        tw(rw,cfn()*ang(md(40),md(0),md(-10)),.3) --Down 
        CreateLoop(1,{f=second;q=stab})
        hurt = false
        tw(rw,equip,.1,'') --Back
        for i = 1,0,-.3 do wait() --Morph back
                tip.Size = lerp(nsize,Vector3.new(.5,4,.5),i)
                tipw.Parent = ydin
                tipw.Part1 = tip tipw.Part0 = ydin
                tipw.C0 = cfn(0,.6+i*1.5,0)
        end
        Synth:Pitch(1) con:disconnect()
end
Whoosh = Add.Sound("http://www.roblox.com/Asset/?id=18426149",1)
function trip()
        Lock2'R'
        local con = char['Right Leg'].Touched:connect(function(hit)
                local hum = FindHum(hit.Parent)
                hum.Health = hum.Health - 5
                if hum then hum.Sit = true end
        end)
        tw(rw2,cfn(0,-.2,-.3)*ang(md(30),0,0)) Whoosh:Play()
        tw(rw2,cfn(0,.5,.3)*ang(md(-70),0,0),.3)
        tw(rw2,cfn(),.3)
        Lock2'R'
        con:disconnect()
end
function sit()
if sitbp == nil then
Lock2'R' Lock2'L' Lock'L'
sitbp = Add.BP(torso,torso.Position)
sitbg = Add.BG(torso)
--rw2.C1 = cfn()*ang(md(i),0,md(i/(90/-30)))
--lw2.C1 = cfn()*ang(md(i),0,md(i/(90/30)))
tw(rw2,cfn(.15,.4,.3)*ang(md(-60),md(30),0),.1,'') --right leg
tw(lw2,cfn(-.15,.4,.3)*ang(md(-60),md(-30),0),.1,'') --left leg
tw(rw,cfn()*ang(md(25),0,md(-20)),.1,'') --rarm down
tw(lw,cfn()*ang(md(25),0,md(20)),.1,'') --larm down
cf = torso.CFrame
for i = 0,1,.1 do wait()
        sitbp.position = torso.Position - Vector3.new(0,i*1.25,0)
        sitbg.cframe = cf*ang(md(i*20),0,0)
end
elseif sitbp ~= nil then
--rw2.C1 = cfn()*ang(md(i),0,md(i/(90/-30)))
--lw2.C1 = cfn()*ang(md(i),0,md(i/(90/30)))
tw(rw2,cfn(),.1,'')
tw(lw2,cfn(),.1,'') tw(rw,equip,.1,'')
for i = 0,1,.1 do wait()
        sitbp.position = torso.Position + Vector3.new(0,i,0)
        sitbg.cframe = cf*cfn(-i,-i,-i)
end
Lock2'R' Lock2'L' Lock'L'
sitbp:Remove() sitbg:Destroy() sitbp = nil sitbg = _
end
end
Crack = Add.Sound("http://www.roblox.com/Asset/?id=15933756",1)
Crack.Sound.Volume = 300
function blast() local list = {}
        tw(rw,cfn()*ang(md(-120),0,0),.1,'')
        tw(hw,cfn()*ang(md(45),0,0))
        met = Part(1,1,1,'White',0,1,1)
        holding = true
        mag = 1 maxmag = 15
        while holding do  mag = mag < maxmag and mag+.5 or maxmag
                met.Size = Vector3.new(1,mag*7,1)
                met.CFrame = l(l(torso,0,0,-7),0,0,-mag*7/2,math.pi/2)
                wait()
        end
        met:Destroy()
                tcf = torso.CFrame
        for y = 0,mag do
                local ground = GetGround(l(tcf,0,0,-7-y*7).p,300)
                if ground.pos then
                        cf = cfn(ground.pos)
                end
                for i = 1,15 do local tab = {}
                        p = Part(1,1,1,i%2 == 0 and 'White' or 'Lime green',0,1,1)
                        p.CFrame = l(cf,mr(-5,5),0,mr(-5,5))
                        tab.obj = p
                        tab.cf = p.CFrame
                        tab.size = mr(5,10)
                        table.insert(list,tab)
                end
        end Crack:Play()
        for i = 0,1,.2 do wait()
                for _,v in pairs(list) do
                        v.obj.Size = Vector3.new(1,v.size*i,1)
                        v.obj.CFrame = v.cf*cfn(0,v.size*i/2,0)
                end
        end
        Delay(4,function()
        for i = 1,0,-.2 do wait()
                for _,v in pairs(list) do
                        v.obj.Size = Vector3.new(1,v.size*i,1)
                        v.obj.CFrame = v.cf*cfn(0,v.size*i/2,0)
                end
        end
        for _,v in pairs(list) do
                v.obj:Destroy()
        end end)
        tw(rw,equip,.1,'') tw(hw,cfn())
end
Cages = {}
function shoudon(mouse) a = 0
        Mod = Instance.new('Model',Weapon)
        Cur_Parent = Mod
        p = Part(1,1,1,'Black',1) p.Anchored = true
        holding = true
        genNew('SelectionBox',p,{
                Adornee = p;
                Color = bcol'Lime green';
        })
        cf = mouse.hit
        while holding do wait() a = a+1
                if Keys.e then for i,v in pairs(Cages) do v:Destroy() end p:Destroy() Cages = {}
                return end
                p.Size = Vector3.new(a,a,a)
                p.CFrame = cfn(cf.p)*cfn(0,a/2,0)
        end
        
        for i = 1,0,-.1 do
                wait()
                p.Transparency = i
        end
        for _,y in pairs({-a/2+.5,a/2+.5}) do
                for _,pos in pairs({ {x=a/2,z=0};{x=-a/2,z=0};{z=a/2,x=0,r=1};{z=-a/2,x=0,r=1} }) do
                        w = Part(1,1,a+1,'Black',0,1,1)
                        w.CFrame = l(p,pos.x,y,pos.z,0,pos.r and math.pi/2 or 0)
                        w = Part(1,a-1,a-1,'Lime green',.5,1,1)
                        w.CFrame = l(p,pos.x,.5,pos.z,0,pos.r and math.pi/2 or 0)
                end
        end
        w = Part(1,a-1,a-1,'Lime green',.5,1,1)
        w.CFrame = l(p,0,a/2,0,0,0,math.pi/2)
        w = Part(1,a-1,a-1,'Lime green',.5,1,1)
        w.CFrame = l(p,0,-a/2,0,0,0,math.pi/2)
        for i,pos in pairs({ {x=a/2,z=a/2};{x=-a/2,z=-a/2};{z=a/2,x=-a/2};{z=-a/2,x= a/2} }) do
                w = Part(1,a,1,'Black',0,1,1)
                w.CFrame = l(p,pos.x,0,pos.z,0)
        end
        table.insert(Cages,Mod) Cur_Parent = _
        for i = 0,1,.1 do
                wait()
                p.Transparency = i
        end
        p:Destroy()
end
for i,v in pairs(torso:children()) do if v:IsA'BodyGyro' or v:IsA'BodyPosition' or v:IsA'BodyVelocity' then v:Destroy() end end
function teleport(mouse) char.archivable = true
        coroutine.wrap(function() loopi = true a = 0
        repeat a = a+1
                local p = Part(5,5,5,a%2 == 0 and 'White' or 'Lime green',.5)
                p.CFrame = l(torso,0,0,0,mr(-10,10),mr(-10,10),mr(-10,10))
                Debris:AddItem(p,.1) wait()
                until not loopi
        end)()
        tc(torso,cfn(mouse.hit.p)*cfn(0,5,0),.1)
        loopi = false
end
function loud()
        tw(rw,cfn()*ang(md(40),md(-25),0),.1,'')
        for i = 0,1,.1 do wait()
                tip.Size = Vector3.new(1+i*1,2-i*1.5,1+i*1)
                tipw.Parent = ydin
                tipw.Part1 = tip
        end
        e = Instance.new("Explosion",Workspace)
        e.BlastPressure = 0
        e.Position = tip.Position
        e.Hit:connect(function(hit)
                local hum = FindHum(hit.Parent)
                if hum and hum.Parent ~= char then
                        hum.Health = hum.Health -(3)
                        hum.Sit = true
                        hum.Torso.Velocity = cfn(e.Position,Vector3.new(hum.Torso.Position.x,torso.Position.y,hum.Torso.Position.z)).lookVector*100
                end
        end)
        coroutine.wrap(function()
                local p = Part(1,1,1,'Lime green',.5,1,0)
                p.CFrame = cfn(tip.CFrame.p)*ang(math.pi/2,0,0)
                msh = Mesh(p,'Ring')
                for i = 1,30 do wait()
                        msh.Scale = Vector3.new(i,i,1)
                        p.Transparency = i/30
                end
                p:Destroy()
        end)()
        q = Add.BV(torso,cfn(l(torso).p,l(torso,0,2,5).p).lookVector*100)
        Debris:AddItem(q,.5)
        tw(rw,equip,.1,'')
        for i = 1,0,-.1 do wait()
                tip.Size = Vector3.new(1+i*1,2-i*1.5,1+i*1)
                tipw.Parent = ydin
                tipw.Part1 = tip
        end
end
--/Attacks
--Sounds
Synth = Add.Sound("http://www.roblox.com/Asset/?id=46153268",1)
--/Sounds
--http://www.roblox.com/asset/?id=107431751
--http://www.roblox.com/asset/?id=107431876
klist = { --- Key Bindings
        f = slash;
        x = sit;
        eq = blast;
        qq = shoudon;
        t = teleport;
        c = loud;
        v = trip;
}
Keys = {}
function CheckKeys(key)
        if Keys[key] then Keys[key] = _
        elseif not Keys[key] then Keys[key] = true
        end
end
hop.Selected:connect(function(mouse) Equip()
        mouse.Button1Up:connect(function() holding = false end)
        mouse.KeyUp:connect(function(key) CheckKeys(key)  for i,v in pairs(klist) do if key == i:sub(1,1) and i:sub(2,2) == 'q' then  holding = false end end end)
        mouse.KeyDown:connect(function(key)
                CheckKeys(key)
                if attacking then return end
                for i,v in pairs(klist) do
                        if key == i:sub(1,1) then attacking = true v(mouse) attacking = false
                end
                end
        end)
end)
