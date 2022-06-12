pl = game.Players.LocalPlayer
local mouse = pl:GetMouse()
char = pl.Character
torso = char.Torso
rarm,larm = char['Right Arm'],char['Left Arm']
Debris = game:GetService("Debris")
pcall(function() char.Sole:Destroy() end)
Weapon = Instance.new("Model",char) Weapon.Name = 'Sole'
cfn = CFrame.new
ang = CFrame.Angles
 
Colors = {}
Colors.Fire = 'Alder'
Colors.Handle = 'Magenta'
Colors.Handle2 = 'Alder'
Colors.Ball = 'Magenta'
Colors.Ball2 = 'Alder'
Colors.Ring = 'Magenta'
 
Meshes = {Diamond = 'rbxassetid://21057543'}
 
tw = function(Weld, Stop, Step,a)
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
 
Part = function(x,y,z,color,tr,cc,an,parent)
local p = Instance.new('Part',parent or Weapon)
p.formFactor = 'Custom'
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color)
p.CanCollide = cc
p.Transparency = tr
p.Anchored = an
p.TopSurface,p.BottomSurface = 0,0
return p
end
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
p0.Position = p1.Position
local w = Instance.new('Motor',par or p0)
w.Part0 = p0
w.Part1 = p1
w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
return w
end
Mesh = function(par,num,x,y,z)
local msh = _
if num == 1 then msh = Instance.new("CylinderMesh",par)
elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
elseif num == 3 then msh = Instance.new("BlockMesh",par)
elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
end
msh.Scale = Vector3.new(x,y,z)
return msh
end
 
function FindHumanoid(a)
local hum = _
for i,v in pairs(a:children()) do
        if v:IsA("Humanoid") then hum = v end
end
return hum
end
 
function calcp(a,b) --- Direction CFrame
        return cfn(a,Vector3.new(b.x,a.y,b.z))
end
 
Sound = {}
Sound.new = function(id,pitch)
snd = Instance.new("Sound",Weapon)
snd.SoundId = id
snd.Pitch = pitch
return snd
end
rw,lw = _,_
function Lock(which)
if which == 'R' then
if not rw then
        rabr = Part(1,1,1,'Alder',1,false,false)
        rabr.Position = torso.Position
        rw = Weld(rabr,torso,1.5,.5,0,0,0,0) rw.Parent = Weapon
        w = Instance.new("Weld",Weapon)
        w.Part0,w.Part1 = char['Right Arm'],rabr
        w.C1 = CFrame.new(0,-.5,0)
else
        rabr:Destroy()
        rw = _
end
elseif which == 'L' then
if not lw then
        labr = Part(1,1,1,'Alder',1,false,false)
        labr.Position = torso.Position
        lw = Weld(labr,torso,-1.5,.5,0,0,0,0) lw.Parent = Weapon
        w = Instance.new("Weld",Weapon)
        w.Part0,w.Part1 = char['Left Arm'],labr
        w.C1 = CFrame.new(0,-.5,0)
else
        labr:Destroy()
        lw = _
end
end
end
 
--Sounds
Growl = Sound.new("http://www.roblox.com/Asset/?id=25954372",1)
Beam = Sound.new("http://www.roblox.com/Asset/?id=1369158",1)
 
hdl = Part(.25,4,.25,Colors.Handle,0,false,false)
hw = Weld(hdl,rarm,0,-1,0,math.pi/2,0,0)
Mesh(hdl,1,1,1,1)
hdl2 = Part(.3,1,.3,Colors.Handle2,0,false,false)
Weld(hdl2,hdl,0,0,0,0,0,0)
Mesh(hdl2,1,1,1,1)
 
r = .5
 
ball = Part(1,1,1,Colors.Ball,0,false,false)
Mesh(ball,2,1,1,1)
Weld(ball,hdl,0,2,0,0,0,0)
mball = Part(.5,.5,.5,Colors.Ball2,0,false,false)
Mesh(mball,Meshes.Diamond,.5,1,.5)
Weld(mball,ball,0,.5,0,0,0,0)
 
ball2 = Part(1,1,1,Colors.Ball,0,false,false)
Mesh(ball2,2,1,1,1)
Weld(ball2,hdl,0,-2,0,math.pi,0,0)
mball2 = mball:Clone() mball2.Parent = Weapon
Weld(mball2,ball2,0,.5,0,0,0,0)
fire = Instance.new("Fire",ball) fire.Enabled = false
fire.Size = 5
fire.Color = BrickColor.new(Colors.Fire).Color
fire2 = fire:Clone() fire2.Parent = ball2
 
ball1p,ball2p = {},{}
for i = 1,360,30 do
p = Part(.3,.3,.3,Colors.Ring,0,false,false)
w = Weld(p,ball,math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r,math.pi/2,0,math.pi/2+math.rad(i))
table.insert(ball1p,w)
p = Part(.3,.3,.3,Colors.Ring,0,false,false)
w = Weld(p,ball2,math.cos(math.rad(i))*r,0,math.sin(math.rad(i))*r,math.pi/2,0,math.pi/2+math.rad(i))
table.insert(ball2p,w)
end
 
function hurt(hit,amount,bp) local found = _
        local hum = FindHumanoid(hit.Parent)
        if hum then
        if hum.Parent ~= char then
                if bp then
                if hum:FindFirstChild'lol' == nil then
                local a = Instance.new("StringValue",hum)
                a.Name = 'lol'
                hum.Health = hum.Health - amount found = hum
                Debris:AddItem(a,bp)
                end
                else hum.Health = hum.Health - amount found = hum
        end end end
        return hum
end
 
Swing = Sound.new("http://www.roblox.com/Asset/?id=12555594",3)
function wave()
        Lock'L'
        tw(lw,cfn()*ang(-math.pi/2,math.rad(-70),0))
        local p = Part(3,3,3,'Royal purple',0,true,true)
        p.CFrame = torso.CFrame*cfn(-8,0,-5)
        p.Material = 'Ice' stopped = false
 
        p.Touched:connect(function(hit) if hit.Parent == char then return end
                local h = FindHumanoid(hit.Parent)
                if h then h.Sit = true end
        end)
        tw(lw,cfn()*ang(-math.pi/2,math.rad(40),0),.15,'') Swing:Play()
        st,en = torso.CFrame*cfn(-8,0,-6),torso.CFrame*cfn(5,0,-6)
        for i = 0,1,.15 do
                wait()
                st,en = torso.CFrame*cfn(-8,0,-6),torso.CFrame*cfn(5,0,-6)
                p.CFrame = CFrame.new(st.X*(1-i)+en.X*i,st.Y*(1-i)+en.Y*i,st.Z*(1-i)+en.Z*i)
                p.CFrame = calcp(p.Position,torso.Position)
                local cl = Part(3,3,3,'Royal purple',0,true,true)
                cl.CFrame = p.CFrame local cf = cl.CFrame
                delay(.1,function()
                        for i = 0,1,.1 do wait()
                        cl.Size = Vector3.new(3-(i*2.5),3-(i*2.5),3-(i*2.5))
                        cl.CFrame = cf
                        cl.Transparency = i
                        end cl:Destroy()
                end)
        end
        stopped = true
        local cf = p.CFrame
        coroutine.wrap(function()
                for i = 3,.1,-.1 do
                        wait()
                        p.Size = Vector3.new(i,i,i) p.CFrame = cf
                end
        p:Destroy()
        end)()
        tw(lw,cfn())
        Lock'L'
end
Grind = Sound.new("http://www.roblox.com/Asset/?id=18426149",1)
Spin = Sound.new("http://www.roblox.com/asset/?id=45885547",1)
Hit = Sound.new("http://www.roblox.com/Asset/?id=3931318",2)
Charge = Sound.new("http://www.roblox.com/asset/?id=32656713",1)
function spin()
        Lock'R'
        Lock'L'
        tw(rw,cfn(.3,.7,0)*ang(-math.pi/2,math.rad(-40),0),.1,'')
        tw(lw,cfn(-.3,.7,0)*ang(-math.pi/2,math.rad(40),0),.1)
        hw.Part1 = torso
        hw.C1 = CFrame.new(0,.5,-1.75)
        bb = Part(.1,.1,.1,'Alder',0,false,false)
        msh = Mesh(bb,2,1,1,1)
        Weld(bb,ball,0,0,0,0,0,0)
        bb2 = Part(.1,.1,.1,'Alder',0,false,false)
        msh2 = Mesh(bb2,2,1,1,1)
        Weld(bb2,ball2,0,0,0,0,0,0) Grind:Play()
        local con = ball.Touched:connect(function(hit) hurt(hit,1) Hit:Play() end)
        local con2 = ball2.Touched:connect(function(hit) hurt(hit,1) Hit:Play() end)
        for i = .5,1,.1 do wait()
                for o,v in pairs(ball1p) do
                        v.C1 = cfn(math.cos(math.rad(o*30))*i,0,math.sin(math.rad(o*30))*i)*ang(math.pi/2,0,math.pi/2+math.rad(o*30))
                end
                for o,v in pairs(ball2p) do
                        v.C1 = cfn(math.cos(math.rad(o*30))*i,0,math.sin(math.rad(o*30))*i)*ang(math.pi/2,0,math.pi/2+math.rad(o*30))
                end
                msh.Scale = Vector3.new(1,1,1)*(i*10)
                msh2.Scale = Vector3.new(1,1,1)*(i*10)
        end Spin:Play()
        for i = 1,360*3,30 do
                wait()
                hw.C0 = cfn()*ang(0,0,math.rad(i))
        end
        tw(hw,cfn())
        Grind:Play()
        for i = 1,.5,-.1 do wait()
                for o,v in pairs(ball1p) do
                        v.C1 = cfn(math.cos(math.rad(o*30))*i,0,math.sin(math.rad(o*30))*i)*ang(math.pi/2,0,math.pi/2+math.rad(o*30))
                end
                for o,v in pairs(ball2p) do
                        v.C1 = cfn(math.cos(math.rad(o*30))*i,0,math.sin(math.rad(o*30))*i)*ang(math.pi/2,0,math.pi/2+math.rad(o*30))
                end
                msh.Scale = Vector3.new(1,1,1)*(i*10)
                msh2.Scale = Vector3.new(1,1,1)*(i*10)
        end
        hw.Part1 = char['Right Arm']
        hw.C1 = CFrame.new(0,-1,0)*CFrame.Angles(math.pi/2,0,0)
        bb:Destroy() bb2:Destroy()
        tw(rw,cfn(),.1,'')
        tw(lw,cfn())
        con:disconnect() con2:disconnect()
        Lock'R' Lock'L'
end
Lift = Sound.new("http://www.roblox.com/Asset/?id=3931318",1)
Grow = Sound.new("http://www.roblox.com/Asset/?id=2974249",1)
Ignite = Sound.new("http://www.roblox.com/Asset/?id=14863866",1)
Tele = Sound.new("http://www.roblox.com/Asset/?id=13114759",1)
function teleport() 
p = Part(1,1,1,'Royal purple',.5,false,false)
Mesh(p,Meshes.Diamond,9,9,9)
w = Weld(p,torso,0,0,0,math.pi/2,0,0)
for i = .5,0,-.05 do wait() p.Transparency = i end
Tele:Play()
char:MoveTo(mouse.hit.p) Tele:Play()
for i = 0,1,.05 do wait() p.Transparency = i end
p:Destroy()
end
 
function beam()
        Lock'R' Lock'L'
        tw(rw,cfn()*ang(math.rad(-30),0,0),.1,'')
        tw(lw,cfn()*ang(math.rad(-30),0,0),.1)
        hw.C1 = CFrame.new(0,-1,0)*ang(0,0,math.pi/2)
        hw.C0 = cfn(0,-1.435,0)
        wait(.2) Lift:Play()
        tw(rw,cfn()*ang(math.rad(-150),0,0),.3,'')
        tw(lw,cfn()*ang(math.rad(-150),0,0),.3)
 
        fire.Enabled,fire2.Enabled = true,true
        Grow:Play()
        for o = 1,10 do wait()
        local spike = Part(5,1,5,'Royal purple',.5,true,true)
        spike.CFrame = torso.CFrame*cfn(0,-2,-5-o*5)
        local cf = spike.CFrame
        coroutine.wrap(function()
        for i = 1,20,2.5 do wait()
                spike.Size = Vector3.new(spike.Size.x,i,spike.Size.z)
                spike.CFrame = cf*cfn(0,i/2,0)
        end
        for i = 20,1,-2.5 do wait()
                spike.Size = Vector3.new(spike.Size.x,i,spike.Size.z)
                spike.CFrame = cf*cfn(0,i/2,0)
        end
        spike:Destroy()
        end)()
        end
        fire.Enabled,fire2.Enabled = false,false
        tw(rw,cfn()*ang(math.rad(-30),0,0),.1,'')
        tw(lw,cfn()*ang(math.rad(-30),0,0))
        hw.C1 = CFrame.new(0,-1,0)*ang(math.pi/2,0,0)
        hw.C0 = cfn()
        tw(rw,cfn(),.1,'')
        tw(lw,cfn())
        Lock'R' Lock'L'
end
Crkl = Sound.new("http://www.roblox.com/Asset/?id=15933756",1)
 
function ignite()
        
        Lock'R'
        tw(rw,cfn()*ang(-math.rad(90),math.rad(20),0))
        Ignite:Play()
        fire2.Enabled = true,true
        wait(1)
        local con = ball2.Touched:connect(function(hit) if hurt(hit,30,1) then Crkl:Play() end end)
        tw(rw,cfn()*ang(-math.rad(130),math.rad(40),0),.1,'')
        tw(hw,cfn(0,1,0))
        tw(rw,cfn()*ang(math.rad(20),math.rad(-20),0),.3)
        tw(rw,cfn(),.3,'') Ignite:Play() con:disconnect()
        tw(hw,cfn(),.3) 
        fire2.Enabled = false,false
        Lock'R'
end
 
function clone()
char.archivable = true
local cl = char:Clone()
cl.Parent = Workspace
cl.Torso.CFrame = torso.CFrame*cfn(0,0,-4)
cl.Humanoid.Died:connect(function() cl:Destroy() end)
end
 
function shoot()
        Lock'R'
        tw(rw,cfn()*ang(-math.pi/2,0,0),.1)
        mag = (hdl.Position-mouse.hit.p).magnitude
        local p = Part(3,mag,3,'Alder',0,false,true)
        p.CFrame = (CFrame.new(hdl.Position,mouse.hit.p)*CFrame.new(0,0,-mag/2))*CFrame.Angles(math.pi/2,0,0)
        cf = p.CFrame
        Beam:Play()
        hole = Part(30,.5,30,'Royal purple',0,true,true)
        hole.CFrame = CFrame.new(mouse.hit.p)
        Mesh(hole,1,1,1,1)
        for i = 1,0,-.1 do wait()
        p.Size = Vector3.new(i*3,mag,i*3)
        p.CFrame = cf
        end
        coroutine.wrap(function()
                for i = 0,1,.1 do
                        wait()
                        p.Transparency = i
                end
                p:Destroy()
        end)()
        tw(rw,cfn()*ang(-math.pi/2,math.rad(60),0),.2,'')
        tw(hw,cfn()*ang(0,0,math.pi/2),.2)
        r = 15 walls = {}
        for i = 1,360,30 do
                po = Part(((r*2)*math.pi/(360/30)),10,3,'Royal purple',0,true,true)
                po.CFrame = hole.CFrame*CFrame.new(math.cos(math.rad(i))*r,5,math.sin(math.rad(i))*r)
                po.CFrame = calcp(po.Position,hole.Position)
                po.Material = 'Ice'
                table.insert(walls,po)
                po.Touched:connect(function(hit) hurt(hit,1) end)
        end
        for i = r,-r,-1 do
        wait()
        for o,v in pairs(walls) do
                --v.Size = Vector3.new(((math.abs(i)*2)*math.pi/(360/30)),10,3)
                v.CFrame = hole.CFrame*CFrame.new(math.cos(math.rad(o*30))*i,5,math.sin(math.rad(o*30))*i)
                v.CFrame = calcp(v.Position,hole.Position)
        end
        end
        for _,v in pairs(walls) do v:Destroy() end hole:Destroy()
        tw(hw,cfn(),.1,'')
        tw(rw,cfn())
        
        Lock'R'
end
Tide = Sound.new("http://www.roblox.com/Asset/?id=2704340",1.3)
function tidal()
        Lock'L'
        tw(lw,cfn()*ang(math.rad(50),0,math.rad(80)))
        Charge:Play()
        for i = 1,20 do wait()
                p = Part(3,3,3,'Royal purple',.7,false,true)
                p.CFrame = (larm.CFrame*cfn(0,-1,0))*CFrame.Angles(math.random(-3,3),math.random(-3,3),math.random(-3,3))
                Debris:AddItem(p,.1)
        end
        tw(lw,cfn()*ang(math.rad(-140),0,0))
        Tide:Play()
        mp = Part(20,10,1,'Royal purple',0,false,true)
        stopped = false
        coroutine.wrap(function()
                while wait() and not stopped do
                        local cl = Part(20,10,1,'Royal purple',0,false,true)
                        cl.CFrame = mp.CFrame*cfn(0,0,-1)
                        local cf = cl.CFrame
                        delay(0,function()
                                for i = 10,0,-1 do
                                        wait()
                                        cl.Size = Vector3.new(20,i,1)
                                        cl.CFrame = cf-Vector3.new(0,10-(i),0)
                                        cl.Transparency = 1-i/10
                                end
                                cl:Destroy()
                        end)
                end
        end)()
        mp.CFrame = torso.CFrame*cfn(0,2,-5)
        mp.Touched:connect(function(hit)
                local h = FindHumanoid(hit.Parent)
                if h then
                        h.Sit = true
                        h.Torso.Velocity = CFrame.new(mp.Position,h.Torso.Position).lookVector*-300
                end
        end)
        cf = mp.CFrame
        for i = 1,60 do
                wait()
                mp.CFrame = cf*cfn(0,0,-i)
                Tide.Volume = .5-(i/60/2)
        end
        stopped = true
        tw(lw,cfn())
        mp:Destroy()
        Lock'L'
end
 
klist = {
f = shoot;
q = wave;
e = spin;
c = tidal;
r = beam;
v = ignite;
[string.char(48)] = teleport;
}
 
mouse.KeyUp:connect(function(key)  for i,v in pairs(klist) do if key == i:sub(1,1) and i:sub(2,2) == 'q' then  holding = false end end end)
mouse.KeyDown:connect(function(key)
        if attacking then return end
        for i,v in pairs(klist) do
                if key == i:sub(1,1)  then attacking = true v() attacking = false end
        end
end)
 
