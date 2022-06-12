local ply = game.Players.LocalPlayer
char = ply.Character
torso = char.Torso
head = char.Head
holding = false
RS = game:service'RunService'
rarm,larm = char['Left Arm'],char['Right Arm']
Debris = game:service'Debris'
 
pcall(function() ply.Backpack.Moonbunny:Destroy() end) --- Destroys Tool
hop = Instance.new("HopperBin",ply.Backpack)
hop.Name = 'Moonbunny'
FFS = function(A,B) A:FindFirstChild(B) end ---- FindFirstChild Shortcut
 
pcall(function() char.Sole:Destroy() end) --- Destroys Physical Tool
Weapon = Instance.new("Model",char) Weapon.Name = 'Sole'
cfn,ang,md,mr = CFrame.new,CFrame.Angles,math.rad,math.random --- Some Shortcuts
 
for i,v in pairs(head:children()) do
        if v.Name == 'MugSound' then v:Destroy() end
end
 
rw,lw = _,_
 
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
        bv.velocity = force
        return bv
end;
Sound = function(id,pitch,parent)
local tab = setmetatable({},{
        __call = function(t,param) cl = t[1]:Clone() cl.Parent = param return cl end
})
        local snd = Instance.new("Sound",char.Head)
        snd.Name = 'MugSound'
        snd.SoundId = id
        snd.Pitch = pitch
        table.insert(tab,snd)
        function tab:Play()
                self[1]:Play()
        end
        return tab
end;
}
Meshes = {Diamond = 'rbxassetid://9756362'; Spikeball = 'rbxassetid://9982590'; --- MeshIds
Egg = 'rbxassetid://1527559'; Ring = 'rbxassetid://3270017';}
Part = function(x,y,z,color,tr,parent)
local p = Instance.new((tr ~= 1 and 'Part' or 'WedgePart'),parent or Weapon)
p.formFactor = 'Custom'
p.Size = Vector3.new(x,y,z)
p.BrickColor = BrickColor.new(color)
p.CanCollide = false
p.TopSurface,p.BottomSurface = 0,0
return p
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
Weld = function(p0,p1,x,y,z,rx,ry,rz,par)
p0.Position = p1.Position
local w = Instance.new('Motor',par or p0)
w.Part0 = p0
w.Part1 = p1
w.C1 = CFrame.new(x,y,z)*CFrame.Angles(rx,ry,rz)
return w
end
Lock = function(which) --- For using Animation
local result = {rw=false,lw=false}
if which == 'R' then
if not rw then
        rabr = Part(1,1,1,'White',0) rabr.Transparency = 1
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
        labr = Part(1,1,1,'White',0) labr.Transparency = 1
        labr.Position = torso.Position
        lw = Weld(labr,torso,-1.5,.5,0,0,0,0) lw.Parent = Weapon
        w = Instance.new("Weld",Weapon)
        w.Part0,w.Part1 = char['Left Arm'],labr
        w.C1 = CFrame.new(0,-.5,0)
else
        labr:Destroy()
        lw = _
end
elseif which == _ then
        if rw then result.rw = true end
        if lw then result.lw = true end
end
return result
end
tw = function(Weld, Stop, Step,a) --- TweenWeld function
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
SFX = {
Ring = function(cf,radius,color,snd) -- Effect used when starting flying (default radius 30)
local ring = Part(1,1,1,color or 'New Yeller',0) ring.Anchored = true
local msh = Mesh(ring,Meshes.Ring,1,1,1)
ring.CFrame = cf
if snd then snd:Play() elseif snd == _ then Whine_snd:Play() end
coroutine.wrap(function()
        for i = 1,radius or 30 do wait()
        msh.Scale = Vector3.new(i,i,1)
        ring.Transparency = i/(radius or 30)
        end
        ring:Destroy()
end)()
end;
Sphere = function(cf,color,radius)
        local ball = Part(1,1,1,color,0) ball.Anchored = true
        ball.CFrame = cf
        local msh = Mesh(ball,2,1,1,1)
        coroutine.wrap(function()
        for i = 1,radius do wait()
                wait()
                msh.Scale = Vector3.new(i,i,i)
                ball.Transparency = i/radius
        end
        ball:Destroy() end)();
end;
}
-----------
 
--SOUNDS--
Whine_snd = Add.Sound("http://www.roblox.com/Asset/?id=3264923",1)
Swing_snd = Add.Sound("http://www.roblox.com/Asset/?id=10209645",1)
Boom_snd = Add.Sound("http://www.roblox.com/Asset/?id=3087031",2.5)
Fire_snd = Add.Sound("http://www.roblox.com/Asset/?id=2760979",1)
Hit_snd = Add.Sound("http://www.roblox.com/Asset/?id=2785493",1) Hit_snd.Volume = 120
----------
 
---EARS---
p = Part(1,2,.5,'White',0)
Weld(p,head,.8,1.25,0,0,0,md(-30))
Mesh(p,2,1,1,1)
p2 = Part(.8,1.8,.4,'Pink',0)
Weld(p2,p,0,-.1,-.1,0,0,0)
Mesh(p2,2,1,1,1)
 
p = Part(1,2,.5,'White',0)
Weld(p,head,-.8,1.25,0,0,0,md(30))
Mesh(p,2,1,1,1)
p2 = Part(.8,1.8,.4,'Pink',0)
Weld(p2,p,0,-.1,-.1,0,0,0)
Mesh(p2,2,1,1,1)
----------
 
function Clear() ---- Removes Eggs
for i,v in pairs(EggList) do v:Destroy() end
EggList = {}
end
 
EggList = {} --- Contains Eggs
function SpawnEgg() ---- Spawn's Egg
local egg = Part(10,10,10,'Black',0) egg.CanCollide = true
egg.Shape = 0
egg.CFrame = torso.CFrame*cfn(0,0,6)
msh = Mesh(egg,Meshes.Egg,4,4,4) msh.TextureId = 'http://www.roblox.com/asset/?id=57202933'
egg.Elasticity = 1
egg.Friction = 0
egg.RotVelocity = Vector3.new(40,-30,40)
egg.Touched:connect(function(hit)
local hum = hit.Parent:FindFirstChild('Humanoid')
if hum and hum.Parent ~= char then
        egg.Velocity = cfn(hum.Torso.Position,egg.Position).lookVector*-300
        msh.VertexColor = Vector3.new(1,0,0)
        wait(.1)
        msh.VertexColor = Vector3.new(1,1,1)
else
egg.Velocity = Vector3.new(math.random(-10,10),30,math.random(-10,10))
egg.RotVelocity = Vector3.new(0,0,100)
end
end)
table.insert(EggList,egg)
end
 
bp = _
last_atk = 0
 
flying = false
function Float() --- Floating function
if bp and not flying then bp:Destroy() bp = _ Lock'R' Lock'L' return end --- Stops Floating
local function CheckHeight() local result = _ --- Check's height from nearest object
        local r = Ray.new(torso.Position,Vector3.FromNormalId(Enum.NormalId.Bottom)*500)
        local o,p = Workspace:FindPartOnRay(r,char)
        if o and p then
                result = (torso.Position-p).magnitude
        end
        return result
end
jumping = char.Humanoid.Jump
 
t = RS.Stepped:wait()
if (t - last_atk < .5 and not bp) or ((CheckHeight() == _ or CheckHeight() > 5) and not bp) then --- Logic
        bp = Add.BP(torso)
        Lock'R' Lock'L' rw.C0 = FloatingR lw.C0 = FloatingL
end
 
last_atk = t
end
 
flying = false
FloatingR = cfn()*ang(0,0,md(-22.5))
FloatingL = cfn()*ang(0,0,md(22.5))
function Fly(mouse) --- Flying function
if bp then
        local bg = Add.BG(torso)
        rw.C0 = cfn()*ang(md(50),md(-45),0) lw.C0 = cfn()*ang(md(50),md(45),0)
        flying = true
        Delay(.1,function() SFX.Ring( (torso.CFrame*cfn(0,-4,0))*ang(math.pi/2,0,0) ) end)
        while (flying and bp) do wait()
        bp.position = torso.Position+(torso.Position-mouse.hit.p).unit*-10
        bg.cframe = cfn(torso.Position,mouse.hit.p)*ang(md(-20),0,0)
        end
        flying = false
        bg:Destroy()
        rw.C0 = FloatingR lw.C0 = FloatingL
end
end
 
function EggNoJutsu(mouse)
        if not rw and not lw then Lock'R' Lock'L' end
        holding = true
        local bg = Add.BG(torso)
                coroutine.wrap(function()
                        while holding do wait()
                        if bp then        bg.cframe = cfn(torso.Position,mouse.hit.p)
                        else bg.cframe = cfn(torso.Position,Vector3.new(mouse.hit.p.x,torso.Position.y,mouse.hit.p.z))
                        end
                        end
                        bg:Destroy()
                end)()
        while holding do
        for i = 1,30 do wait() Swing_snd:Play()
        rw.C0 = cfn()*ang(md(-mr(50,150)),-md(40),0)
        lw.C0 = cfn()*ang(md(-mr(50,150)),md(40),0)
        end
        SFX.Ring((torso.CFrame*cfn(0,0,-5)),50,'Pink',Boom_snd)
        rw.C0 = cfn()*ang(md(-80),md(45),0) lw.C0 = cfn()*ang(md(-80),md(-45),0)
        local p = Part(10,10,10,'Black',0) p:BreakJoints()
        Mesh(p,Meshes.Egg,5,5,5).TextureId = 'http://www.roblox.com/asset/?id=7958793'
        p.CFrame = (torso.CFrame*cfn(0,0,-15))*ang(-math.pi/2,0,0)
        Add.BV(p,torso.CFrame.lookVector*300)
        p.Touched:connect(function(hit)
                if not bp then if hit.Name == 'Base' then return end end
                        e = Instance.new("Explosion",Workspace)
                        e.BlastPressure = 0
                        e.BlastRadius = 100
                        e.Position = p.Position
                        p:Destroy()
                end)
        Debris:AddItem(p,5)
        wait(1)
        end
        if bp and not flying then
                rw.C0 = FloatingR lw.C0 = FloatingL
        else Lock'R' Lock'L'
        end
end
 
r = 5
last_shot = 0
bg2 = _
function Shoot(mouse) attacking = false
Lock'R'
bg2 = Add.BG(torso)
bg2.cframe = cfn(torso.Position,mouse.hit.p)*ang(0,math.pi/2,0)
tw(rw,cfn()*ang(-math.pi/2,math.pi/2,0),.3)
Fire_snd:Play()
 
---ATT1---
 
for i = -80,80,20 do
local p = Part(1,1,1,'Bright red',0)
p.Transparency = i == 0 and 0 or .5
Mesh(p,Meshes.Egg,1,1,1)
p.CFrame = (torso.CFrame*cfn(5,0,0))*cfn(math.cos(md(i))*r,0,math.sin(md(i))*r)
p.CFrame = cfn(p.Position,torso.Position)*ang(math.pi/2,0,0)
p.Touched:connect(function() SFX.Sphere(p.CFrame,'Bright red',30) Hit_snd(p):Play() p:Destroy() end)
Add.BV(p,(p.CFrame*ang(math.pi/2,0,0)).lookVector*30)
p:BreakJoints()
Debris:AddItem(p,3)
end
 
t = RS.Stepped:wait()
 
if (t-last_shot < .2) then attacking = true
bg2.cframe = cfn(torso.Position,mouse.hit.p)*ang(0,math.pi/2,0)
local p = Part(1,1,1,'Bright red',0)
p.Transparency = i == 0 and 0 or .5
Mesh(p,Meshes.Egg,3,3,3)
p.CFrame = (torso.CFrame*cfn(5,0,0))
p.CFrame = cfn(p.Position,torso.Position)*ang(math.pi/2,0,0)
p.Touched:connect(function() SFX.Sphere(p.CFrame,'Bright red',30) Hit_snd(p):Play() p:Destroy() end)
Add.BV(p,(p.CFrame*ang(math.pi/2,0,0)).lookVector*30)
p:BreakJoints()
Debris:AddItem(p,3)
wait(1)
end
wait(.25)
 
bg2:Destroy() bg2 = _
Lock'R'
last_shot = t
end
 
 
klist = { --- Key Bindings
f = SpawnEgg;
r = Clear;
eq = function(mouse) EggNoJutsu(mouse) end;
q = function(mouse) Shoot(mouse) end;
[string.char(32)] = Float; --- 32 is Space
}
 
hop.Selected:connect(function(mouse) --- Connections
mouse.Button1Down:connect(function() Fly(mouse) end)
mouse.Button1Up:connect(function() flying = false end)
mouse.KeyUp:connect(function(key) for i,v in pairs(klist) do if key == i:sub(1,1) and i:sub(2,2) == 'q' then  holding = false end end end)
mouse.KeyDown:connect(function(key)
        if attacking then return end
        for i,v in pairs(klist) do
                if key == i:sub(1,1)  then attacking = true v(mouse) attacking = false end
        end
end)
end)
 
prev_step = 0
while wait() do --- Effect Loop
t = RS.Stepped:wait()
        if not flying and bp then
                local p = Part(2,2,2,'White',0)
                p.Anchored = true p.Transparency = .5
                p.CFrame = (torso.CFrame*cfn(0,-5,0))*ang(math.random(-3,3),math.random(-3,3),math.random(-3,3))
                Delay(.1,function() for i = .5,1,.1 do wait() p.Transparency = i end p:Destroy() end)
        elseif bp and flying then
                local p = Part(2,2,2,'Deep blue',0)
                p.Anchored = true p.Transparency = .5
                p.CFrame = (torso.CFrame*cfn(0,-5,0))
                Delay(.1,function() for i = .5,1,.1 do wait() p.Transparency = i end p:Destroy() end)
        end
prevstep = t
end
