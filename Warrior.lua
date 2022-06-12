--[[
    @Name: Warrior
        @Author: iKrypto
            @Date: 7/23/16
                @Engine: Lua 5.1
]]

wait(0.003)
--print'starting script...'

local startLoad = tick()
script.Name = "Warrior"
local plrs = game:GetService('Players')
local plr = plrs.LocalPlayer
local char = plr.Character
local bp = plr.Backpack
local hum = char.Humanoid
local T = char.Torso
local Character = char
local Humanoid = hum
local torso = char.Torso
local Strength,Haste,damage = 3,.2,0
local stats,Parts,Cooldowns,Damage,recountData,parts,Damaged,Ally,Buffs,canBeKillt,hold = {},{},{},{},{},{},{},{},{},{},{}
local Ctrl,Cam,lastclick,btimer = false,game.Workspace:FindFirstChild('currentCamera'),tick(),0
local OrbModel,currentTarget,candamage,Meditating
local shielding,damageAmp = false,0
local dot = {}
local combocounter,PGui,channeling,Mode = 0,plr.PlayerGui,false,''
local new = Instance.new
-- if leaked, don't edit this value
-- it lets other scripts know this is
-- a linked script so that you can do
-- extra features such as slowing, stunning
-- buffing, healing etc. Thanks.
local iAmDarkusScript = Instance.new('Model')
iAmDarkusScript.Parent = hum
iAmDarkusScript.Name = 'Property of Darkus_Theory'
head = char.Head
local otheranims = false
mouse = plr:GetMouse()
count = 0
Mode = 'Idling'
local tMesh,asset = "rbxasset://fonts/torso.mesh","rbxassetid://"
local meshes,sounds = {blast = 20329976,ring = 3270017,spike = 1033714,cone = 1082802,crown = 20329976,cloud = 1095708,diamond = 9756362},{laser = 166196553;gun = 131070686;falling = 138206037;hit = 146163493;twirl = 46299547;explosion = 142070127}
prmColor = 'Really black'
secColor = 'Toothpaste'
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rootpart = char:findFirstChild("HumanoidRootPart")
rj = rootpart:findFirstChild("RootJoint")
anim = char:findFirstChild("Animate")
camera = workspace.CurrentCamera
plr.CameraMaxZoomDistance = math.huge
for _,x in pairs(char:children()) do
if x:IsA('Shirt') then x:remove() end
if x:IsA('Pants') then x:remove() end
if x:IsA('Hat') then x:remove() end
end
pcall(function()anim:Destroy()end)
pcall(function()char["Health"]:Destroy() end)
pcall(function()humanoid.Animator:Destroy()end)
local rm = Instance.new("Weld", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
local lm = Instance.new("Weld", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
local rlegm = Instance.new("Weld", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
local llegm = Instance.new("Weld", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
neckc0 = neck.C0
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
rootc0 = rj.C0
rootc1 = rj.C1
wait()
local h = Instance.new('Part',  char)
h.Name = 'DK Hood'
h.TopSurface,h.BottomSurface = 0,0
h.Size = Vector3.new(1, 1, 1)
h.CFrame = torso.CFrame
h.CanCollide = false
h:BreakJoints()
local m = Instance.new('SpecialMesh', h)
m.Name = "Wild Gladiator's Felweave Cowl"
m.MeshType = 'FileMesh'
m.Scale = Vector3.new(1, .85, 1)
m.MeshId = 'http://www.roblox.com/asset/?id=1090446'
m.TextureId = 'http://www.roblox.com/asset/?id=6204248'
local Weld = Instance.new("Weld")
Weld.Part0 = char.Head
Weld.Part1 = h
Weld.Parent = char.Head
Weld.C0 = CFrame.new(0, .2, .15)

local Shield = Instance.new('Part')
Shield.Name = 'Shield'
Shield.BrickColor = BrickColor.new('Really black')
Shield.Locked = true
Shield.Shape = 'Block'
Shield.Size = Vector3.new(3, 0.8, 4)
Shield.Parent = char
Shield.CanCollide = false
local ShieldMesh = Instance.new('SpecialMesh',Shield)
ShieldMesh.Name = 'ShieldMesh'
ShieldMesh.MeshType = 'FileMesh'
ShieldMesh.MeshId = "http://www.roblox.com/asset/?id=50798797"
--ShieldMesh.TextureId = "http://www.roblox.com/asset/?id=36533088"
ShieldMesh.Scale = Vector3.new(1.55, 1.55, 1.55)
ShieldMesh.VertexColor = Vector3.new(1, 1, 1)
local ShieldWeld = Instance.new('Weld',Shield)
ShieldWeld.C0 = CFrame.new(-.5,-.3, .2) * CFrame.Angles(-math.rad(180), 0, math.rad(90))
ShieldWeld.Part0 = la
ShieldWeld.Part1 = Shield

local ShieldPad = Instance.new('Part')
ShieldPad.Name = 'ShieldPad'
ShieldPad.BrickColor = BrickColor.new('Black')
ShieldPad.Locked = true
ShieldPad.Shape = 'Block'
ShieldPad.Size = Vector3.new(1.1,.2,1.1)
ShieldPad.Parent = char
ShieldPad.CanCollide = false
local SPW = Instance.new('Weld')
SPW.Parent = ShieldPad
SPW.Part0 = la
SPW.Part1 = ShieldPad
SPW.C0 = CFrame.new(0, -.45, 0)

local ShieldPad2 = Instance.new('Part')
ShieldPad2.Name = 'ShieldPad'
ShieldPad2.BrickColor = BrickColor.new('Black')
ShieldPad2.Locked = true
ShieldPad2.Shape = 'Block'
ShieldPad2.Size = Vector3.new(1.1,.2,1.1)
ShieldPad2.Parent = char
ShieldPad2.CanCollide = false
local SPW2 = Instance.new('Weld')
SPW2.Parent = ShieldPad2
SPW2.Part0 = la
SPW2.Part1 = ShieldPad2
SPW2.C0 = CFrame.new(0, 0, 0)

local Sword = Instance.new('Part')
Sword.Name = 'Sword'
Sword.BrickColor = BrickColor.new('Really black')
Sword.Locked = true
Sword.Shape = 'Block'
Sword.Size = Vector3.new(1.3, 0.31, 5.93)
Sword.Parent = char
Sword.CanCollide = false
local SwordMesh = Instance.new('SpecialMesh',Sword)
SwordMesh.Name = 'SwordMesh'
SwordMesh.MeshType = 'FileMesh'
SwordMesh.MeshId = "http://www.roblox.com/asset/?id=103978363"
SwordMesh.TextureId = "http://www.roblox.com/asset/?id=147128156"
SwordMesh.Scale = Vector3.new(0.8, 1, 1)
local SwordWeld = Instance.new('Weld',Sword)
SwordWeld.C0 = CFrame.new(0,-.95, -2.1) * CFrame.Angles(0, math.rad(180), math.rad(75))
SwordWeld.Part0 = ra
SwordWeld.Part1 = Sword

wepdps = function(obj)
    if not candamage then return end
    if obj:IsDescendantOf(char) then return end
    if not searchForHumanoid(obj.Parent) then return end
    local Hum = searchForHumanoid(obj.Parent)
    if Damaged[Hum] and tick()-Damaged[Hum] < (.2+stats['Haste']) then return end
    local dist = (obj.Position-torso.Position).magnitude
    if dist > 5 then return end
    local calculation = getDPS()
    local cftos = (Hum.Parent:findFirstChild'Torso' and Hum.Parent:findFirstChild'Torso'.CFrame:pointToObjectSpace(torso.Position) or {X=0,Y=0,Z=0})
    if cftos.Z > 0 then calculation = calculation * 1.3 end
    damageHuman(Hum, math.ceil(calculation*.6), obj)
    if math.random(1,10) > 8 then Disable(Hum) end
    logDamage('Autoattack', calculation)
    Damaged[Hum] = tick()
    coroutine.wrap(quickSound)(220833976, head, .8)
    stats['Rage'] = stats['Rage'] + 5
    if math.random(1,10) > 8 then stats['Runes'] = stats['Runes'] + 1 end
end

Shield.Touched:connect(wepdps)
Sword.Touched:connect(wepdps)


cn,ca,bc,v3,r = CFrame.new,CFrame.Angles,BrickColor.new,Vector3.new,function(a)return (math.random()-.5)*2*(a or 1) end
deg,nf,c3,ins,ma,pi,mr = math.deg,math.floor,Color3.new,Instance.new,math.abs,math.pi,math.rad
local part = function(prnt,cfr,siz,col,anc,canc,tra,mat,typ)
        local p = ins(typ or "Part")
        p.FormFactor = "Custom"
        p.Material = mat
        p.Transparency = tra
        p.CanCollide = canc
        p.Anchored = anc
        p.BrickColor = bc(col)
        p.Size = siz
        p.CFrame = cfr
        p.Parent = prnt
        p.Locked = true
        p.TopSurface,p.BottomSurface = 0,0
        p:BreakJoints()
        return p
end
local mesh = function(typ,prnt,scal,mtyp,mid,mtx)
        local m = ins(typ or "SpecialMesh")
        if mtyp then m.MeshType = mtyp end
        if mid then m.MeshId = mid end
        if mtx then m.TextureId = mtx end
        if scal then m.Scale = scal end
        m.Parent = prnt
        return m
end
local weldy = function(prt1,prt2,c0,c1)
        local w = ins("Weld",prt1)
        w.Part0 = prt1
        w.Part1 = prt2
        w.C0,w.C1 = c0 or cn(),c1 or cn()
        return w
end
function rune(cf,size,lifespan)
    coroutine.wrap(function()
        local p = Instance.new("Part")
        plight = Instance.new("PointLight",p)
        plight.Color = BrickColor.new("Bright red").Color
        p.formFactor = 0
        p.Size = Vector3.new()
        p.BrickColor = BrickColor.new("Bright red")
        p.Anchored = true
        p.Locked = true
        p.CanCollide = false
        p.CFrame = cf*CFrame.Angles(math.pi/2,0,0)
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Parent = char
        local m = Instance.new("SpecialMesh",p)
        local wave = p:Clone()
        wave.CFrame = cf
        wave.Parent = player.Character
        wave.Mesh.MeshType = Enum.MeshType.Sphere
        wave.Mesh.Scale = Vector3.new(0,size/10,0)
        m.MeshId = "http://www.roblox.com/asset/?id=47260990"
        m.Scale = Vector3.new(size,size,size/10)
        p.Transparency = 1
        game.Debris:AddItem(p)
        game.Debris:AddItem(wave)
        for i=1,5 do
            p.Transparency = 1-math.sin(i/10*math.pi)*0.75
            p.CFrame = p.CFrame*CFrame.Angles(0,0,(i/5)*math.pi/12)
            wave.Mesh.Scale = Vector3.new(size*i,size/10,size*i)/2
            wave.Transparency = i/5
            wait(1/30)
        end
        wave:Remove()
        delay(lifespan,function()
            for i=1,20 do
                local ratio = math.sin(i/40*math.pi)*0.75
                p.Transparency = 0.25+ratio
                wait(1/30)
            end
            p:Remove()
        end)
    end)()
end
function explosion(where,heat,size,pres)
        a = Instance.new("Explosion",Workspace)
        a.BlastRadius = size
        a.BlastPressure = pres
        a.Position = where.Position
    local f = Instance.new("Fire",p)
    f.Size = size
    f.Heat = heat
        f:Remove()
end
function flame(cf,heat,size,instant)
    local p = Instance.new("Part")
    p.formFactor = 3
    p.Anchored = true
    p.CanCollide = false
    p.Locked = true
    p.Transparency = 1
    p.Size = Vector3.new()
    p.CFrame = cf
    p.Parent = char
    local f = Instance.new("Fire",p)
    f.Size = size
    f.Heat = heat
    game.Debris:AddItem(p,1.1)
    delay(0.1,function()
        f.Enabled = false
        if instant then
            p:Destroy()
        end
    end)
end
function rune(cf,size,lifespan)
    coroutine.wrap(function()
        local p = Instance.new("Part")
        plight = Instance.new("PointLight",p)
        plight.Color = BrickColor.new("Bright red").Color
        p.formFactor = 0
        p.Size = Vector3.new()
        p.BrickColor = BrickColor.new("Bright red")
        p.Anchored = true
        p.Locked = true
        p.CanCollide = false
        p.CFrame = cf*CFrame.Angles(math.pi/2,0,0)
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Parent = char
        local m = Instance.new("SpecialMesh",p)
        local wave = p:Clone()
        wave.CFrame = cf
        wave.Parent = char
        wave.Mesh.MeshType = Enum.MeshType.Sphere
        wave.Mesh.Scale = Vector3.new(0,size/10,0)
        m.MeshId = "http://www.roblox.com/asset/?id=9756362"
        m.Scale = Vector3.new(size,size,size/10)
        p.Transparency = 1
        game.Debris:AddItem(p)
        game.Debris:AddItem(wave)
        for i=1,5 do
            p.Transparency = 1-math.sin(i/10*math.pi)*0.75
            p.CFrame = p.CFrame*CFrame.Angles(0,0,(i/5)*math.pi/12)
            wave.Mesh.Scale = Vector3.new(size*i,size/10,size*i)/2
            wave.Transparency = i/5
            wait(1/30)
        end
        wave:Remove()
        delay(lifespan,function()
            for i=1,20 do
                local ratio = math.sin(i/40*math.pi)*0.75
                p.Transparency = 0.25+ratio
                wait(1/30)
            end
            p:Remove()
        end)
    end)()
end
--rune(torso.CFrame-Vector3.new(0,2.5,0),20,1)
function getRegion(point,range,ignore)
    return workspace:FindPartsInRegion3WithIgnoreList(Region3.new(point-Vector3.new(1,1,1)*range/2,point+Vector3.new(1,1,1)*range/2),ignore,100)
end
function getHumanoid(v)
    if v and v.Parent then
        local h = v.Parent:findFirstChild("Humanoid") or v.Parent.Parent:findFirstChild("Humanoid")
        if not h then
            for _,p in ipairs(v.Parent:GetChildren()) do
                if p:isA("Humanoid") then
                    h = p
                end
            end
            if not h and v.Parent.Parent and v.Parent.Parent ~= game and v.Parent.Parent ~= workspace then
                for _,p in ipairs(v.Parent.Parent:GetChildren()) do
                    if p:isA("Humanoid") then
                        h = p
                    end
                end
            end
        end
        return h
    end
end
function advRay(start,point)
    local dis = (start-(start+point)).magnitude
    local dir = ((start+point)-start).unit
    if dis > 999 then
        dis = 999
    end
    point = dis*dir
    hit,pos = workspace:FindPartOnRayWithIgnoreList(Ray.new(start,point),{player.Character})
    if hit and not hit.CanCollide and not getHumanoid(hit) then
        function persistentRay(list)
            hit,pos = workspace:FindPartOnRayWithIgnoreList(Ray.new(start,point),{player.Character,unpack(list)})
            if hit and not hit.CanCollide and not getHumanoid(hit) then
                hit,pos = persistentRay({hit,unpack(list)})
            end
            return hit,pos
        end
        hit,pos = persistentRay({hit})
    end
    return hit,pos
end
function Burn(v)
    coroutine.wrap(function()
        local Colors = {"Really red","Really black","Orange","New Yeller"}
        local calc = getDPS()*.5
        if v:IsA("Model")and v ~= char and not v:findFirstChild("Burnt")then
            local h = v:findFirstChild("Humanoid")
            if h then
                if h.Health > 0 then
                    local t = v:findFirstChild("Torso")
                    if t then
                        if(t.Position -T.Position).magnitude <= 20 then
                            local f = Instance.new("StringValue",v)
                            f.Name = "Burnt"
                            ParticleEmit(v.Torso,BrickColor.new("Really red"),10)
                            for m,c in pairs(v:GetChildren())do
                                if c:IsA("BasePart")then
                                    local ss = Instance.new("Fire",c)
                                    ss.Size = c.Size.y +2
                                    ss.Color = BrickColor.new(Colors[math.random(1,#Colors)]).Color
                                    ss.SecondaryColor = Color3.new(0,0,0)
                                    ss.Heat = 100
                                        delay(10,function()
                                        local size = ss.Size
                                            for i = size,0,-1 do
                                                ss.Size = i
                                                Wait()
                                            end
                                        ss:Destroy()
                                        end)
                                    end 
                                end
                            h.PlatformStand = true
                                coroutine.wrap(function()
                                    for i = 1,10 do
                                        h:TakeDamage(calc)
                                        logDamage('Fire',calc)
                                        Wait(1)
                                    end 
                                end)()
                            Game:GetService("Debris"):AddItem(f,10)
                        end 
                    end 
                end 
            end 
        end
    end)()
end;
function AoE(point,radius,damage,push,trip)
    ypcall(function()
        local push = push or Vector3.new()
        local hit = getRegion(point,radius,{char})
        local humanoidList = {}
        for _,v in pairs(hit) do
            local h = getHumanoid(v)
            if not v.Anchored then
                if h then
                    if not humanoidList[h] then
                        if Damaged[h] and tick()-Damaged[h]<.2 then return end
                        humanoidList[h] = true
                        Damaged[h] = tick()
                        damageHuman(h,damage,h.Parent:findFirstChild'Head')
                        Burn(h.Parent)
                        if h.Parent:findFirstChild("Torso") and h.Parent.Torso:isA("BasePart") then
                            if push.magnitude > 0 then
                                local v = Instance.new("BodyVelocity",h.Parent.Torso)
                                v.maxForce = Vector3.new(1,1,1)*10000000000
                                v.velocity = push/0.1
                                game.Debris:AddItem(v,0.1)
                            end
                            if trip then
                                local v = Instance.new("BodyAngularVelocity",h.Parent.Torso)
                                v.maxTorque = Vector3.new(1,1,1)*10000000000
                                v.angularvelocity = Vector3.new(math.pi,0,math.pi)/0.1
                                game.Debris:AddItem(v,0.1)
                            end
                        end
                    end
                else v:BreakJoints()
                    v.Velocity = v.Velocity+push/v:GetMass()
                end
            end
        end
    end)
end
function crownExplode(cf,col,scl)
        local p = part(char,cf,v3(1,1,1),col,true,false,.1,"SmoothPlastic")
        local pm = mesh("FileMesh",p,nil,nil,asset..meshes.crown)
        Spawn(function()
                for i=.1,1.1,.025 do
                        p.Transparency = i
                        pm.Scale = pm.Scale + v3(scl,scl,scl)
                        wait()
                end
                p:Destroy()
        end)
end
function crater(pos,dist,siz,col,mat)
        local num = math.random(7,13)
        for i=1,num do
                game:service("Debris"):AddItem(part(char,CFrame.new(pos)*ca(0,pi*2/num*i,0)*cn(0,0,dist)*ca(r(2),r(2),r(2)),v3(ma(r(siz)),ma(r(siz)),ma(r(siz))),col,true,true,0,mat),7)
        end
end
function quickSound(id,par,pi)
        local s = Instance.new("Sound")
        s.Pitch = pi or 1
        s.SoundId = asset..id
        s.Parent = par
        wait()
        s:Play()
    return s
end
function newSound(id,par,pi)
        local s = Instance.new("Sound",par)
        s.Pitch = pi or 1
        s.Volume = .3
        s.SoundId = asset..id
        s:Play()
        return s
end
        
function cylinderOpen(cf,col,col2)
    local p = part(char,cf,v3(0,1000,0),col,true,false,.1,"SmoothPlastic")
    local pm = mesh("CylinderMesh",p)
    local p2 = part(char,cf,v3(0,1000,0),col2,true,false,.1,"SmoothPlastic")
    local p2m = mesh("CylinderMesh",p2)
    Spawn(function()
            for i=.1,1.1,.0125 do
                    p.Transparency = i
                    p2.Transparency = i
                    pm.Scale = pm.Scale + v3(.8,0,.8)
                    p2m.Scale = p2m.Scale + v3(.5,0,.5)
                    wait()
            end
            p:Destroy()
            p2:Destroy()
    end)
end
function cylinderOpen2(cf,col,col2)
        local p = part(workspace,cf,v3(0,1000,0),col,true,false,.1,"SmoothPlastic")
        local pm = mesh("CylinderMesh",p)
        local p2 = part(workspace,cf,v3(0,1000,0),col2,true,false,.1,"SmoothPlastic")
        local p2m = mesh("CylinderMesh",p2)
        Spawn(function()
                for i=.1,1.1,.05 do
                        p.Transparency = i
                        p2.Transparency = i
                        pm.Scale = pm.Scale + v3(.7,0,.7)
                        p2m.Scale = p2m.Scale + v3(.6,0,.6)
                        wait()
                end
                wait(10)
                p:Destroy()
                p2:Destroy()
        end)
end

function Effect(Pos,x1,y1,z1,x2,y2,z2,color,ref)
local S = Instance.new("Part",Character)
S.FormFactor = 0
S.Size = Vector3.new(1,1,1)
S.BrickColor = color
S.Reflectance = ref or 0
S.TopSurface = 0
S.BottomSurface = 0
S.Transparency = 0.5
S.Anchored = true
S.CanCollide = false
S.CFrame = CFrame.new(Pos)* CFrame.new(x2,y2,z2)* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2 = Instance.new("BlockMesh",S)
msh2.Scale = Vector3.new(x1,y1,z1)
coroutine.wrap(function()
for i = 1,9 do
msh2.Scale = msh2.Scale + Vector3.new(0.1,0.1,0.1)
S.CFrame = S.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Transparency = i *0.1
Wait()
end
S:Destroy()
end)()end
function Effect2(part,x1,y1,z1,x2,y2,z2,color,ref)
if part:IsDescendantOf(Workspace)then
local S = Instance.new("Part",Character)
S.FormFactor = 0
S.Size = Vector3.new(1,1,1)
S.BrickColor = color
S.Reflectance = ref or 0
S.TopSurface = 0
S.BottomSurface = 0
S.Transparency = 0.5
S.Anchored = true
S.CanCollide = false
S.CFrame = part.CFrame * CFrame.new(x2,y2,z2)* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
local msh2 = Instance.new("BlockMesh",S)
msh2.Scale = Vector3.new(x1,y1,z1)
coroutine.wrap(function()
for i = 1,9 do
msh2.Scale = msh2.Scale + Vector3.new(0.1,0.1,0.1)
S.CFrame = S.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
S.Transparency = i *0.1
Wait()
end
S:Destroy()
end)()end end
local function EmberWave(CF,Color)
local p = Instance.new("Part",Character)
p.Anchored = true
p.Locked = true
p.CanCollide = false
p.CFrame = CF
p.Transparency = 1
coroutine.wrap(function()
local x = CFrame.new(math.random(-6,6),math.abs(math.random(-6,6)),math.random(-6,6))
for i = 1,30 do
p.CFrame = p.CFrame *x
x = CFrame.new(math.random(-6,6),math.abs(math.random(-6,6)),math.random(-6,6))
Effect2(p,2.6,2.6,2.6,0,0,0,Color,0.3)
Wait(0.1)
end
p:Destroy()
end)()end

function MediumParticleEmit(Object,Color)
    coroutine.wrap(function()
        while Wait(1.1)do
            if not Object then break end
            local p = Instance.new("Part",Object.Parent)
            p.Name = "Trail"
            p.TopSurface = 0
            p.BottomSurface = 0
            p.Anchored = true
            p.CanCollide = false
            p.FormFactor = "Custom"
            p.Size = Vector3.new(0.01,0.01,0.01)
            p.BrickColor = type(Color)== 'userdata' and Color or BrickColor.new(Color)
            p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
            local m = Instance.new("BlockMesh",p)
            m.Scale = Vector3.new(2,2,2)
                coroutine.wrap(function()
                    for i = 1,15 do
                        p.Transparency = i/15
                        m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
                        p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
                        Wait()
                    end
                p:Destroy()
                end)()
            end 
    end)()
end

if head:FindFirstChild('Mesh') then
    if head:FindFirstChild('Mesh'):IsA('BlockMesh') then
        head:FindFirstChild('Mesh'):remove()
        wait()
        local nm = Instance.new('SpecialMesh', head)
        nm.MeshType = 'Head'
        nm.Scale = Vector3.new(1.25,1.25,1.25)
    end
end
if head:FindFirstChild('face') then
    head:FindFirstChild('face'):Destroy()--.Texture = 'http://www.roblox.com/asset/?id=128963883'
end

function newStat(stat, type, value)
        if stats[stat] then return end
        stats[stat] = value
    return stats[stat]
end

local function Implode(CF,Color)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(1,1,1)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.Transparency = 1
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(30,30,30)
coroutine.wrap(function()
for i = 1,10 do
f.Transparency = f.Transparency -0.1
sm.Scale = sm.Scale - Vector3.new(3,3,3)
Wait()
end
f:Destroy()
end)()
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(30,30,30)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
ax.Transparency = 1
coroutine.wrap(function()
for i = 1,10 do
ax.Size = ax.Size - Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
ax.Transparency = ax.Transparency -0.1
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()
end
local function Explode(CF,Color,SMM,BBoom)
local cf = CF
local f = Instance.new("Part",Character)
f.BrickColor = Color
f.Size = Vector3.new(5,1,5)
f.Anchored = true
f.Locked = true
f.CanCollide = false
f.TopSurface = 0
f.BottomSurface = 0
f.CFrame = cf
local sm = Instance.new("SpecialMesh",f)
sm.MeshId = "http://www.roblox.com/asset/?id=3270017"
sm.Scale = Vector3.new(5,5,5)
coroutine.wrap(function()
for i = 1,20 do
f.Transparency = f.Transparency +0.05
sm.Scale = sm.Scale + Vector3.new(10,10,10)
Wait()
end
f:Destroy()
end)()
if BBoom then do
local zs = BBoom
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = zs
ax.Anchored = true
local SMMx = Instance.new("SpecialMesh",ax)
SMMx.MeshId = "http://www.roblox.com/asset/?id=1323306"
SMMx.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
for i = 1,20 do
SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
ax.Transparency = ax.Transparency +0.05
ax.CFrame = zs
Wait()
end
ax:Destroy()
end)()
end 
end
local ax = Instance.new("Part",Character)
ax.Size = Vector3.new(1,1,1)
ax.TopSurface = 0
ax.BottomSurface = 0
ax.Transparency = 0
ax.Locked = true
ax.BrickColor = Color
ax.Shape = "Ball"
ax.CanCollide = false
ax.CFrame = cf
ax.Anchored = true
local SMMx do if SMM then
SMMx = Instance.new("SpecialMesh",ax)
SMMx.MeshId = SMM
SMMx.Scale = Vector3.new(1,1,1)
end 
end
coroutine.wrap(function()
for i = 1,20 do
if SMM then
SMMx.Scale = SMMx.Scale + Vector3.new(math.random(1,3)+2,math.random(1,3)+2,math.random(1,3)+2)
else
ax.Size = ax.Size + Vector3.new(math.random(1,3)+1,math.random(1,3)+1,math.random(1,3)+1)
end
ax.Transparency = ax.Transparency +0.05
ax.CFrame = cf
Wait()
end
ax:Destroy()
end)()
end
function ParticleEmit(Object,Color,Duration)
local Counter = 0
coroutine.wrap(function()
while Wait(0.3)do
if Counter == Duration then break end
local p = Instance.new("Part",Object.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(0.01,0.01,0.01)
p.BrickColor = Color and(type(Color)== 'userdata' and Color or BrickColor.new(Color))
p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()
end 
end)()
if Duration == math.huge then return end
coroutine.wrap(function()
while Wait(1)do
Counter = Counter +1
if Counter == Duration then
break
end 
end 
end)()
end
function SlowParticleEmit(Object)
coroutine.wrap(function()
while Wait(3.2)do
if not Object then break end
local p = Instance.new("Part",Object.Parent)
p.Name = "Trail"
p.TopSurface = 0
p.BottomSurface = 0
p.Anchored = true
p.CanCollide = false
p.FormFactor = "Custom"
p.Size = Vector3.new(0.01,0.01,0.01)
p.BrickColor = (BrickColor.new("Toothpaste"))
p.CFrame = Object.CFrame * CFrame.new(math.random(-1,1),math.random(-1,1)-3,math.random(-1,1))
local m = Instance.new("BlockMesh",p)
m.Scale = Vector3.new(2,2,2)
coroutine.wrap(function()
for i = 1,15 do
p.Transparency = i/15
m.Scale = m.Scale + Vector3.new(0.1,0.1,0.1)
p.CFrame = CFrame.new(p.Position + Vector3.new(math.random(-5,5)/20,0.5,math.random(-5,5)/20))* CFrame.fromEulerAnglesXYZ(math.random(-10,10)/i,math.random(-10,10)/i,0.5)
Wait()
end
p:Destroy()
end)()
end 
end)()
end

function expandDong(ctarg)
    local nTarg = (ctarg and ctarg or OrbModel.PurplePart)
    local Orbi = Instance.new('Part')
    Orbi.CFrame = nTarg.CFrame
    Orbi.Size = Vector3.new(3,3,3)
    Orbi.CanCollide = false
    Orbi.Locked = true
    Orbi.Shape = 'Ball'
    Orbi.Anchored = true
    Orbi.Transparency = .6
    Orbi.TopSurface,Orbi.BottomSurface = 0,0
    Orbi.Name = 'Expand Dong'
    Orbi.BrickColor = BrickColor.new('Toothpaste')
    
    local OrbiMesh = Instance.new('SpecialMesh',Orbi)
    OrbiMesh.Name = 'Dxpand Eong'
    OrbiMesh.Scale = Vector3.new(2, 2, 2)
    OrbiMesh.MeshType = 'Sphere'
    coroutine.wrap(function()
        for i,v in pairs(IsNear(nTarg.Position, 5, nil, true)) do
            if Damaged[v:FindFirstChild('Humanoid')] and tick()-Damaged[v:FindFirstChild('Humanoid')] < 1 then return end
            local calc = getDPS()*5
            healHuman(v:FindFirstChild('Humanoid'), calc)
            logDamage('Meditation', calc)
            Damaged[v:FindFirstChild('Humanoid')] = tick()
        end
    end)()
    Orbi.Parent = char
    ypcall(function()
        for i = 3,0,-1 do wait(.05)
            OrbiMesh.Scale = OrbiMesh.Scale + Vector3.new(.6, .6, .6)
            Orbi.CFrame = nTarg.CFrame
        end
        for i = .6,1,.05 do
        wait(0.04)
            Orbi.Transparency = i
        end
        Orbi:Destroy()
    end)
end


function useRage(amount)
    local precalc = stats['Rage']-amount
    
    if stats['Rage'] < 0 then return false end
    if precalc < 0 then return false end
    
    stats['Rage'] = precalc
    
    return true
end

function useChi(amount)
    local precalc = stats['Runes']-amount
    
    if stats['Runes'] < 0 then return false end
    if precalc < 0 then return false end
    
    stats['Runes'] = precalc
    
    return true
end

function recount()
    
    local totl = {}

    local function addUp(tbl)
        local total = 0
        for i,v in next,tbl do
            total = total + v
        end
    return total
    end
    
    local function avg(tbl)
    
    local num = #tbl
    local nom = addUp(tbl)
    
    return (nom/num)
    end

    warn('RECOUNT - All Data')
    for i,v in pairs(recountData) do
        local qq = addUp(v)
        print(i..': '..qq..' ('..math.ceil(avg(v))..')')
        table.insert(totl, qq)
    end
    
    warn('TOTAL: '..addUp(totl))

end

function logDamage(skill, damage)

    if not recountData[skill] then recountData[skill] = {} end
    
    local tbl = recountData[skill]
    table.insert(tbl, damage)

end
function getDPS(override)
        local crit = math.random(1,15)
        local DPS = (((stats.Strength) + (stats.Rage*.1)) * (crit > 11 and stats.CriticalStrikeBonus or 1.2))
        DPS = math.ceil(DPS)
        lastdps = tick()
        if berserk then DPS = DPS * 1.8 end
        if cheating then DPS = DPS * 1.5 end
        if damageAmp>0 then DPS=DPS*damageAmp end
        return DPS,((crit > 13) and true or false)
end

function Karma()
    local Humanoid = currentTarget
    if not Humanoid then return end
    Title('<Touch of Karma>', (Humanoid.Parent:findFirstChild('Head') or Instance.new('Part')),Color3.new(200/255,10/255,200/255),true,false)

    local currentHp = hum.Health

    local karmaCon = hum.Changed:connect(function(prop)
        if prop == 'Health_XML' then
            if hum.Health < currentHp then
                local change = currentHp-hum.Health
                damageHuman(Humanoid,change,Humanoid.Parent:findFirstChild'Head')
            end
            currentHp = hum.Health
        end
    end)

    local karmaDetect = Instance.new('Model')
    karmaDetect.Name = plr.Name..' Karma'
    wait()
    karmaDetect.Parent = Humanoid

    for i = 8,0,-1 do
        wait(1)
    end

    karmaDetect:Destroy()
    karmaCon:disconnect()

end


function Disable(Humanoid)

    if Humanoid == hum then return end

    ypcall(function()

        for i = 10,0,-1 do

            if not Humanoid.Parent then break end
            if Humanoid.WalkSpeed > 5 then
            if Humanoid.Health <= 0 then break end

            if Humanoid:findFirstChild'Property of Darkus_Theory' then
                Humanoid.WalkSpeed = 3
                Humanoid.JumpPower = 0
            end
        --Humanoid.JumpPower = 0
        end

        wait(1)

        end

        if Humanoid.WalkSpeed > 5 then
            if Humanoid:findFirstChild'Property of Darkus_Theory' then
            Humanoid.JumpPower = 50
            Humanoid.WalkSpeed = 16
            end
        end

    end)
end

function damageHuman(hum,d,hit)
if not hum:IsA('Humanoid') then hum.Parent:breakJoints() return end
pcall(function() hum.Parent.Health.Disabled = true end)
if hum:findFirstChild('Shielding') then return end
if hum.Health <= 0 then return end
if hum == Humanoid then return end
if Ally[hum] then return end
        Title("-"..math.ceil(d), ((hit.Parent and hit.Parent~='Workspace') and (hit.Parent:findFirstChild'Head' or Instance.new('Model'))), Color3.new(255/255,0/255,0/255),true,false)
        hum.Health = hum.Health - math.ceil(d)
        if hum.Health <= 0 then logDamage('Kills', 1) Alert('You killed '..hum.Parent.Name..'!', 'Yellow') if btimer > 0 then btimer=btimer+10 end end
end

function healHuman(hum,d)
    if not hum then return end
    if hum.Health <= 0 then return end
    pcall(function() hum.Parent.Health.Disabled = true end)
    if hum==Humanoid or Ally[hum] then
        local abs = (hum.Health-hum.MaxHealth)+d
        if abs >= hum.MaxHealth * 1.5 then return end
        hum:TakeDamage(-math.ceil(d))
        logDamage('Healing done', math.ceil(d))
    end

    if math.random(0,100) > 75 and not shadowform then
        stats['Runes'] = stats['Runes'] + 1
    end

end



function Tag(Humanoid)
local c = Instance.new("ObjectValue",Humanoid)
c.Value = plr
c.Name = "creator"
end

function CloneCharacter()
Character.Archivable = true
local Clone = Character:Clone()
    for i,v in pairs(Clone:GetChildren())do
        if v:IsA("BasePart") then
        v.Transparency = .1
        v.Reflectance = .1
        end
    end
Character.Archivable = false
Clone.Parent = game:service('Workspace')
Clone.Archivable = false
game:service('Debris'):AddItem(Clone,9)
return Clone
end
function searchForHumanoid(thing)
for _,v in pairs(thing:children()) do
if v:IsA('Humanoid') then
return v
end
end
return false
end
function CreateUI(Player)
    --//Created by Opligitory
    local this = {
        Debounces = {
            HelpOpen     = false;
            CoolDownOpen = false;
            NameShowing  = true;
        };
    }
    local function Create(ty)
        return function(data)
            local obj = Instance.new(ty)
            for k,v in pairs(data)do
                if type(k) == 'number' then
                    v.Parent = obj
                else
                    obj[k] = v
                end
            end
        return obj
        end
    end
    
    local function Thread(f)
        assert(type(f) == 'function',"bad argument #1 'function' expected got "..type(f))
        return coroutine.resume(coroutine.create(f))
    end 
    
    local Warrior = Create("ScreenGui"){
        Parent = Player.PlayerGui;
        Name = "Warrior";
        Archivable = true;
    }
    local Background = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Warrior;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(0, 305, 0, 300);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.DropShadow;
        BackgroundTransparency = 0;
        Position = UDim2.new(1, -305, 0.5, -50);
        BorderSizePixel = 1;
        Name = "Background";
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local mTitle = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = Background;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 20);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 0);
        Name = "Title";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local BreakLine = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = mTitle;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 1);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 1, 6);
        BorderSizePixel = 0;
        Name = "BreakLine";
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Stats = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Background;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 1, -30);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 1, -250);
        BorderSizePixel = 1;
        Name = "Stats";
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Health = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Stats;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 0, 0);
        BorderSizePixel = 0;
        Name = "Health";
        BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059);
    }
    local hText = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = Health;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Health: 100/100";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "hText";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 0.207843, 0.211765);
        ZIndex = 2;
    }
    local hStatus = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = Health;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "hStatus";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 0.207843, 0.211765);
        
    }
    local Rage = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Stats;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 0, 35);
        BorderSizePixel = 0;
        Name = "Rage";
        BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059);
    }
    local fText = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = Rage;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Rage: 100/100";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "fText";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 0.976471, 0.278431);
        ZIndex = 2;
    }
    local fStatus = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = Rage;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "fStatus";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(114/255, 253/255, 255/255);
    }
    local CP = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Stats;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 0, 70);
        BorderSizePixel = 0;
        Name = "CP";
        BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059);
    }
    local cText = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = CP;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Runes: 6/6";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "cText";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(19/255, 200/255, 255/255);
        ZIndex = 2;
    }
    local cStatus = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = CP;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "cStatus";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(0.298039, 1, 0.25098);
    }
    local Target = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = Stats;
        BorderSizePixel = 1;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Target: Darkus_Theory";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 105);
        Name = "Target";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local TargetHp = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Stats;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 0, 140);
        BorderSizePixel = 0;
        Name = "TargetHp";
        BackgroundColor3 = Color3.new(0.447059, 0.447059, 0.447059);
    }
    local tText = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = TargetHp;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Target Health: 100/100";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "tText";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 0.207843, 0.211765);
        ZIndex = 2;
    }
    local tStatus = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size28;
        Active = false;
        Parent = TargetHp;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, -8, 1, -8);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 4, 0, 4);
        Name = "tStatus";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 0.207843, 0.211765);
    }
    local Anim = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size24;
        Active = false;
        Parent = Stats;
        BorderSizePixel = 1;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 20);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Animation: Idle";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 175);
        Name = "Anim";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Buttons = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Stats;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 60);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 1, -60);
        BorderSizePixel = 1;
        Name = "Buttons";
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local HideName = Create("TextButton"){
        Visible = true;
        TextWrapped = false;
        Active = true;
        TextStrokeTransparency = 1;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        BorderSizePixel = 1;
        Draggable = false;
        Modal = false;
        AutoButtonColor = true;
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
        TextStrokeColor3 = Color3.new(0, 0, 0);
        Selected = false;
        Archivable = true;
        Size = UDim2.new(0, 90, 0, 30);
        TextXAlignment = Enum.TextXAlignment.Center;
        FontSize = Enum.FontSize.Size18;
        Parent = Buttons;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Hide Name";
        TextWrap = false;
        TextTransparency = 0;
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 4, 1, -35);
        TextColor3 = Color3.new(1, 1, 1);
        Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
        Name = "HideName";
    }
    local Controls = Create("TextButton"){
        Visible = true;
        TextWrapped = false;
        Active = true;
        TextStrokeTransparency = 1;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        BorderSizePixel = 1;
        Draggable = false;
        Modal = false;
        AutoButtonColor = true;
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
        TextStrokeColor3 = Color3.new(0, 0, 0);
        Selected = false;
        Archivable = true;
        Size = UDim2.new(0, 90, 0, 30);
        TextXAlignment = Enum.TextXAlignment.Center;
        FontSize = Enum.FontSize.Size18;
        Parent = Buttons;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Controls";
        TextWrap = false;
        TextTransparency = 0;
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(1, -94, 1, -35);
        TextColor3 = Color3.new(1, 1, 1);
        Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
        Name = "Controls";
    }
    local CoolDownsButton = Create("TextButton"){
        Visible = true;
        TextWrapped = false;
        Active = true;
        TextStrokeTransparency = 1;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        BorderSizePixel = 1;
        Draggable = false;
        Modal = false;
        AutoButtonColor = true;
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
        TextStrokeColor3 = Color3.new(0, 0, 0);
        Selected = false;
        Archivable = true;
        Size = UDim2.new(0, 90, 0, 30);
        TextXAlignment = Enum.TextXAlignment.Center;
        FontSize = Enum.FontSize.Size18;
        Parent = Buttons;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Cooldowns";
        TextWrap = false;
        TextTransparency = 0;
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 99, 1, -35);
        TextColor3 = Color3.new(1, 1, 1);
        Style = Enum.ButtonStyle.RobloxRoundDefaultButton;
        Name = "CoolDowns";
    }
    local Status = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size24;
        Active = false;
        Parent = Stats;
        BorderSizePixel = 1;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 20);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Status: Normal";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 195);
        Name = "Status";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local CoolDowns = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Background;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 20, 0, 100);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.DropShadow;
        BackgroundTransparency = 0;
        Position = UDim2.new(1, 10, 0, -105);
        BorderSizePixel = 1;
        Name = "CoolDowns";
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local TouchOfDeath = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size14;
        Active = false;
        Parent = CoolDowns;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(0, 90, 0, 35);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "TouchOfDeath";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 0, 0);
        Name = "TouchOfDeath";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 0.376471, 0.439216);
    }
    local SurgingMists = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size14;
        Active = false;
        Parent = CoolDowns;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(0, 90, 0, 35);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "SurgingMists";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 100, 0, 0);
        Name = "SurgingMists";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(0.329412, 0.898039, 0.282353);
    }
    local FlameBreath = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size14;
        Active = false;
        Parent = CoolDowns;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(0, 90, 0, 35);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "FlameBreath";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(1, -90, 0, 0);
        Name = "FlameBreath";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(0.270588, 0.85098, 1);
    }
    local Meditate = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size14;
        Active = false;
        Parent = CoolDowns;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(0, 110, 0, 35);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Meditate";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 0, 45);
        Name = "Meditate";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(0.694118, 0.298039, 0.701961);
    }
    local Debounce = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size14;
        Active = false;
        Parent = CoolDowns;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(0, 70, 0, 35);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Debounce";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 120, 0, 45);
        Name = "Debounce";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(0.839216, 0.854902, 0.32549);
    }
    local Karma = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size14;
        Active = false;
        Parent = CoolDowns;
        BorderSizePixel = 0;
        TextStrokeTransparency = 0.69999998807907;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(0, 90, 0, 35);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Karma";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 0;
        Position = UDim2.new(1, -90, 0, 45);
        Name = "Karma";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(0.466667, 0.466667, 0.466667);
    }
    local Help = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Warrior;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(0, 500, 0, 300);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.DropShadow;
        BackgroundTransparency = 0;
        Position = UDim2.new(1,0,.5,-150);
        BorderSizePixel = 1;
        Name = "Help";
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Title = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size24;
        Active = false;
        Parent = Help;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Center;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "Warrior Controls";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 0);
        Name = "Title";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Border = Create("Frame"){
        Visible = true;
        Active = false;
        Parent = Title;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 1);
        Draggable = false;
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Style = Enum.FrameStyle.Custom;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 1, 0);
        BorderSizePixel = 0;
        Name = "Border";
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Content = Create("ScrollingFrame"){
        Visible = true;
        Active = false;
        Parent = Help;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        Archivable = true;
        Size = UDim2.new(1, 0, 1, -35);
        Draggable = false;
        ClipsDescendants = true;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        ScrollBarThickness = 7;
        BackgroundTransparency = 0;
        Position = UDim2.new(0, 0, 0, 35);
        BorderSizePixel = 0;
        Name = "Content";
        BackgroundColor3 = Color3.new(0.32549, 0.32549, 0.32549);
        CanvasSize = UDim2.new(1,0,1.35,0)
    }
    local Line7 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[G]  -  [Enemy Toggle]: Toggles your target between enemy and ally. Allies cannot take damage.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 190);
        Name = "Line7";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line6 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[F]  -  [FlameBreath]: Ignites targets within a cone in front of your character.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 160);
        Name = "Line6";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line5 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[Y]  -  [Self Target]: Targets your own character.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 130);
        Name = "Line5";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line4 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[T]  -  [Target]: Targets the player under your mouse.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 100);
        Name = "Line4";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line3 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 40);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[E]  -  [Ground Smash]: Uppercut enemies then slam back to the ground to deal devastating damage.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 60);
        Name = "Line3";
        TextYAlignment = Enum.TextYAlignment.Top;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line2 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[Q]  -  [Meditate]: Regenerates Health and Rage over time.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 30);
        Name = "Line2";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line1 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = false;
        TextWrap = false;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[Ctrl+Alt]  -  [Runes Torpedo]: Vault forward";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 0);
        Name = "Line1";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line8 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[H]  -  [Soothing Mists]: Gives a stat buff to your target.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 220);
        Name = "Line8";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line9 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[Z]  -  [Touch of Karma]: 50% of all damage taken will be replicated onto the target.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 250);
        Name = "Line9";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }

    local Line10 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[X]  -  [TouchOfDeath]: Deals incredible scales of damage to targets below 10% HP.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 280);
        Name = "Line10";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    
    local Line11 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[C]  -  [SurgingMists]: Instantly heals your target.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 310);
        Name = "Line11";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    
    local Line12 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[V]  -  [ShadowSight]: Allows you to monitor your target.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 340);
        Name = "Line12";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    local Line12 = Create("TextLabel"){
        Visible = true;
        FontSize = Enum.FontSize.Size18;
        Active = false;
        Parent = Content;
        BorderSizePixel = 1;
        TextStrokeTransparency = 1;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextWrapped = true;
        TextWrap = true;
        SizeConstraint = Enum.SizeConstraint.RelativeXY;
        TextTransparency = 0;
        Archivable = true;
        Size = UDim2.new(1, 0, 0, 30);
        Draggable = false;
        TextStrokeColor3 = Color3.new(0, 0, 0);
        ClipsDescendants = false;
        BorderColor3 = Color3.new(0.105882, 0.164706, 0.207843);
        Text = "[Shift]  -  [Sprint]: Move at a quickened pace.";
        TextColor3 = Color3.new(1, 1, 1);
        Font = Enum.Font.SourceSans;
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 370);
        Name = "Line12";
        TextYAlignment = Enum.TextYAlignment.Center;
        TextScaled = false;
        BackgroundColor3 = Color3.new(1, 1, 1);
    }
    
    this.Skills = {
        ["TouchOfDeath"] = TouchOfDeath;
        ["SurgingMists"] = SurgingMists;
        ["FlameBreath"] = FlameBreath;
        ["Meditate"] = Meditate;
        ["Debounce"] = Debounce;
        ["Karma"] = Karma;
    }   
    
    function this:SetHealth(newHealth,MaxHealth)
        local OldSize = hStatus.Size
        hStatus.Size = UDim2.new(0, newHealth / MaxHealth * 281,0,22)
        hText.Text = "Health: "..tostring(newHealth).."/"..tostring(MaxHealth).." ("..math.floor((newHealth/MaxHealth)*100).."%)"
    end 
    
    HideName.MouseButton1Down:connect(function()
        
    end)
    
    function this:SetRage(int)
        local OldSize = fStatus.Size
        fStatus.Size = UDim2.new(0, int / 100 * 281,0,22)
        fText.Text = "Rage: "..tostring(int).."/100".." ("..math.floor((int/100)*100).."%)"
    end 
    
    function this:SetCP(int)--//Runes
        local OldSize = cStatus.Size
        cStatus.Size = UDim2.new(0, int / 5 * 281,0,22)
        cText.Text = "Runes: "..tostring(int).."/5"
    end 
    
    function this:SetTarget(targ)
        if targ=='No Target' then
            Target.Text = 'No Target'
        else
            Target.Text = (isFriendly() and 'Ally' or 'Enemy')..": "..targ
        end
    end 
    
    function this:SetTH(newHealth,MaxHealth)--//Target Health
    if not type(newHealth) == 'number' then newHealth = 0 end
    if not type(MaxHealth) == 'number' then MaxHealth = 0 end
        local OldSize = tStatus.Size
        tStatus.Size = UDim2.new(0, newHealth / MaxHealth * 281,0,22)
        tText.Text = "Health: "..tostring(newHealth).."/"..tostring(MaxHealth)..(newHealth > 0 and " ("..math.floor((newHealth/MaxHealth)*100).."%)" or "")
    end 
    
    function this:SetTitle()
        mTitle.Text = '~~~~ Warrior ~~~~'
    end
    
    function this:ToggleHelp()
        Thread(function()
            if this.Debounces.HelpOpen == true then
                Help:TweenPosition(UDim2.new(1,0,.5,-150),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,1)
                this.Debounces.HelpOpen = false
            elseif this.Debounces.HelpOpen == false then
                Help:TweenPosition(UDim2.new(0.5, -320,.5,-150),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,1)
                this.Debounces.HelpOpen = true
            end
        end)
    end
    
    function this:ToggleCD()
        Thread(function()
            if this.Debounces.CoolDownOpen == true then
                CoolDowns:TweenPosition(UDim2.new(1,10,0,-105),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,1)
                this.Debounces.CoolDownOpen = false
            elseif this.Debounces.CoolDownOpen == false then
                CoolDowns:TweenPosition(UDim2.new(0,-10,0,-105),Enum.EasingDirection.Out,Enum.EasingStyle.Quad,1)
                this.Debounces.CoolDownOpen = true
            end
        end)
    end
    
    function this:SetCD(skill,int)
        assert(this.Skills[skill] ~= nil,"not a valid skill")
        local Skill = this.Skills[skill]
        if int > 0 then
            Skill.Text = skill..": "..tostring(int).."s"
        else
            Skill.Text = skill
        end
    end 
    
    function this:SetAnim(s)
        Anim.Text = "Animation: "..tostring(s)
    end 
    
    function this:SetStatus(s)
        Status.Text = "Status: "..tostring(s)
    end
    
    Controls.MouseButton1Down:connect(function()this:ToggleHelp()end)
    CoolDownsButton.MouseButton1Down:connect(function()this:ToggleCD()end)
    return this
end
local UI = CreateUI(game.Players.LocalPlayer)


function Title(txt,part,color,rise,spell)
    local col = color
    local Gui = Instance.new("BillboardGui",part)
    Gui.Name = "3DGUI"
    Gui.ExtentsOffset = Vector3.new(0,2,0)
    Gui.Size = UDim2.new(8,0,2,0)
    local Tit = Instance.new("TextLabel",Gui)
    Tit.Name = "Gooey"
    Tit.TextColor3 = col
    Tit.TextTransparency = 0.25
    Tit.TextStrokeColor3 = col
    Tit.TextStrokeTransparency = 1
    Tit.Size = UDim2.new(1,0,1,0)
    Tit.BackgroundTransparency = 1
    Tit.Font = "Arial"
    Tit.TextScaled = true
    Tit.Text = txt
    if rise then
    if not tonumber(rise) then rise = 6 end
    coroutine.wrap(function()
    local randvar = (spell and 0 or math.random(-4,4))
    while Tit.Parent and Gui.Parent and wait() do
    Gui.ExtentsOffset = Gui.ExtentsOffset + Vector3.new(0.025*randvar,0.025*rise,0.025)
    end
    end)()
    end
    game:service('Debris'):AddItem(Gui,2)
    return Tit
end 

function DamageNear(Pos,Mag,Dmg,x)
local Targets,HitAlready = {},{}
    for i,v in pairs(workspace:GetChildren())do
if v:IsA("Model")and v ~= Character and v:findFirstChild("Humanoid")then
    for _,x in pairs(v:GetChildren())do
if x:IsA("BasePart")then
    if(Pos -x.Position).magnitude <= Mag then
    table.insert(Targets,v)
    end 
end 
    end 
end 
    end
    for i,v in pairs(Targets)do
if not HitAlready[v.Name]then
    ypcall(function()
    end)
HitAlready[v.Name] = true
end 
    end 
end

function weld(thing1,thing2)
local a = Instance.new('Weld');
pcall(function()
a.Parent = thing1;
a.Part0 = thing1;
a.Part1 = thing2;
a.C0 = thing1.CFrame:inverse()*thing2.CFrame 
end)
return a
end

function IsNear(Position,Distance,SinglePlayer,db)
    if SinglePlayer then 
return(SinglePlayer.Torso.CFrame.p -Position).magnitude < Distance 
    end
local List = {}
    for i,v in pairs(workspace:GetChildren())do
if v:IsA("Model")then
    if v:findFirstChild("Torso")then
--if (v ~= char and not db) then
    if(v.Torso.CFrame.p -Position).magnitude < Distance then
    table.insert(List,v)
    end 
--end 
    end 
end 
    end
return List
end

function createOrb()

local Orb = Instance.new("Model")
Orb.Name = "OrbModel"
local PurplePart = Instance.new("Part", Orb)
PurplePart.BrickColor = BrickColor.new("Toothpaste")
PurplePart.Anchored = true
PurplePart.Locked = true
PurplePart.CanCollide = false
PurplePart.Name = 'PurplePart'
PurplePart.Material = 'Plastic'
PurplePart.Size = Vector3.new(1, 1, 1)
PurplePart.BottomSurface = Enum.SurfaceType.Smooth
PurplePart.TopSurface = Enum.SurfaceType.Smooth
PurpleMesh = Instance.new("SpecialMesh", PurplePart)
PurpleMesh.MeshType = Enum.MeshType.Sphere
PurpleMesh.Name = "Mesh"
PurpleMesh.VertexColor = Vector3.new(1, 0, 1)
PurpleMesh.Scale = Vector3.new(1.5,1.5,1.5)

local Ring = Instance.new("Part", PurplePart)
Ring.Name = "BlastRing"
Ring.TopSurface = 0
Ring.BottomSurface = 0
Ring.CanCollide = false
Ring.Anchored = true
Ring.Locked = true
Ring.Material = 'Neon'
Ring.BrickColor = BrickColor.new('Really black')
Ring.Size = Vector3.new(1,1,1)
local RingMesh = Instance.new("SpecialMesh",Ring)
RingMesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
RingMesh.Name = "BlastMesh"
RingMesh.Scale = Vector3.new(1.5,1.5,1.5)

local target = Instance.new('Model')
target.Parent = PurplePart
target.Name = 'nil'

Orb.Parent = char
OrbModel = Orb

local Light = Instance.new("PointLight", PurplePart)
Light.Name = "HeadLight"
Light.Color = Color3.new(0,0,200/255)
Light.Range = 6
Light.Brightness = 20


local con = game:GetService("RunService").RenderStepped:connect(function()
local Targ
if not currentTarget then Targ = hum else Targ = currentTarget end
    
    local c = math.abs(math.cos(tick()))
    
    if c <= .6 then c = .6 end
    
    PurpleMesh.Scale = Vector3.new(c*1.1, c*1.1, c*1.1)
    RingMesh.Scale = Vector3.new(c*1.1, c*1.1, c*1.1)
    
    if isFriendly() then target.Name = 'Friendly' else target.Name = 'Enemy' end
    
    if Targ:FindFirstChild(plr.Name..' Karma') then 
        ms = 'Really red'
        ss = 'Really black'
    else 
        ms = 'Toothpaste' 
        ss = 'Really black'
    end
        PurplePart.BrickColor = BrickColor.new(ms)
        Ring.BrickColor = BrickColor.new(ss)

    target.Parent = Targ
    pcall(function()
        PurplePart.CFrame = PurplePart.CFrame:lerp((Targ.Parent and Targ.Parent or char).Head.CFrame*CFrame.new(0,3,0),.5)  
        Ring.CFrame = CFrame.new(PurplePart.Position) * CFrame.fromEulerAnglesXYZ(-math.rad(80+(math.sin(tick())*8)), 0, math.rad(80+(math.sin(tick())*15)))
    end)
end)

local chnge = function(a)
    if a=='Name' then
        Orb:Destroy()
        con:disconnect()
        createOrb()
    elseif a=='Parent' then
        Orb:Destroy()
        con:disconnect()
        createOrb()
    elseif a=='Anchored' then
        Orb:Destroy()
        con:disconnect()
        createOrb()
    elseif a=='Locked' then
        Orb:Destroy()
        con:disconnect()
        createOrb()
    end
end

Orb.Changed:connect(chnge)
Ring.Changed:connect(chnge)
PurplePart.Changed:connect(chnge)
return Orb
end


function isFriendly()

if currentTarget == hum then return end

if Ally[currentTarget] then return true end

return false
end

function toggleFriendly()

if currentTarget == hum then return end

pcall(function()if Ally[currentTarget] then  Ally[currentTarget] = nil  else Ally[currentTarget] = true end end)

end

function Ringz(part,col)
    for i = 1,6 do
    local p = Instance.new("Part", Character)
    p.Name = "BlastRing"
    p.TopSurface = 0
    p.BottomSurface = 0
    p.CanCollide = false
    p.Anchored = true
    p.BrickColor = BrickColor.new(col)
    p.Size = Vector3.new(1,1,1)
    p.CFrame = CFrame.new(part.Position - Vector3.new(0,3,0))* CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)/30)
    local rm = Instance.new("SpecialMesh",p)
    rm.MeshId = "http://www.roblox.com/asset/?id=3270017"
    rm.Name = "BlastMesh"
    rm.Scale = Vector3.new(1,1,1)
coroutine.wrap(function()
    for n = 1,15 do
    rm.Scale = rm.Scale + Vector3.new(1.2 +2 +i/5,1.2 +2 +i/5,0.1)*.8
    if 2 +i/5 == 1.2 then
    rm.Scale = rm.Scale + Vector3.new(0,0.9,0)
    end
    p.Transparency = n/15
    p.CFrame = p.CFrame * CFrame.new(0,0.01,0)* CFrame.fromEulerAnglesXYZ(math.random(-20,20)/50,math.random(-20,20)/70,0)
    Wait()
    end
p:Destroy()
end)()
    end
end
hum.JumpPower = 10
Character.Humanoid.Jumping:connect(function()
    if Jumping then return end
    local eCtrl = Ctrl
    if eCtrl then if not useRage(5) then return end end
    Mode = 'Jumping'
    Jumping = true
    if eCtrl then crownExplode(torso.CFrame * CFrame.new(0, math.rad(90), 0), 'Black', .2)      otheranims = true
        Mode = 'Shielding' end
    local vu = Instance.new("BodyVelocity",torso)
    vu.P = 500
    vu.maxForce = Vector3.new(10000000000,5000000000000000000000,100000000000)
    vu.velocity =  Vector3.new((head.CFrame.lookVector.X*(eCtrl and 100 or 10)),(eCtrl and 10 or 60),(head.CFrame.lookVector.Z*(eCtrl and 100 or 10)))
    game:GetService("Debris"):AddItem(vu,0.267)
    wait(0.6)
    Jumping = false
    otheranims = false
end)

Search = false

function shadowSight()

if Search == false then
    Search = true
    for i,v in pairs(game.Players:getPlayers()) do
        if v.Name~=char.Name then
            for j,k in pairs(v.Character:GetChildren()) do
                if k:IsA("BasePart") and k.Transparency >= 1 then
                    bawx=Instance.new("SelectionBox",camera)
                    bawx.Color = BrickColor.new("Bright red")
                    bawx.Transparency = .5
                    bawx.Adornee = k
                end
            end
        end
    end
    camera.CameraSubject = OrbModel.PurplePart
elseif Search == true then
    Search = false
    for i, v in pairs(camera:GetChildren()) do
        if v:IsA("SelectionBox") then
            v:Destroy()
        end
    end
    camera.CameraSubject = hum
end

end


function updateCooldowns()
local Skills = {
        ["TouchOfDeath"] = true;
        ["SurgingMists"] = true;
        ["FlameBreath"] = true;
        ["Meditate"] = true;
        ["Debounce"] = true;
        ["Karma"] = true;
    }
    
for i,v in pairs(Skills) do
    if Cooldowns[i] then
        local data = math.ceil(Cooldowns[i].timeRequired-(tick()-Cooldowns[i].startTime))
        if not data then data = -1 end
        UI:SetCD(tostring(i), data)
    end
end 

end

function lerp(weld,beglerp,endlerp,speed)
        weld.C0 = beglerp:lerp(endlerp,speed)
        return weld.C0
end

newStat("Rage", 'NumberValue', 20)
newStat("Runes", 'NumberValue', 0)
newStat("Strength", 'NumberValue', Strength)
newStat("Haste", 'NumberValue', Haste)
newStat("CriticalStrikeBonus", 'NumberValue', 2)

hum.WalkSpeed = 20
hum.MaxHealth = 1000
wait()
hum.Health = 1000
lastenrage = tick()

ohp = hum.Health

Alert = function(txt, color, font, fontsize)
local Colorz = {
        ["Red"]     = Color3.new(255/255,0,0);
        ["Green"]   = Color3.new(0,255/255,0);
        ["Blue"]    = Color3.new(0,0,255/255);
        ["Purple"]  = Color3.new(255/255,255/255,0);
        ["Black"]   = Color3.new(0,0,0);
        ["White"]   = Color3.new(1,1,1);
        ['Orange'] = Color3.new(1,0.5,0);
        ['Yellow'] = Color3.new(1,1,0);
    };

game:GetService('StarterGui'):SetCore('ChatMakeSystemMessage', {
    Text = (txt and txt or 'nil'),
    Color = (color and Colorz[color] or Color3.new(.8,0,0)),
    Font = (font and font or 'SourceSansLight'),
    FontSize = (fontsize and fontsize or 'Size14'),
    })
end

function giveBuff(buffName, stat, duration, addition, targ)
local nTarg
nTarg = targ or currentTarget
if not nTarg then nTarg = hum end

local pckt = Instance.new('Model')
pckt.Name = 'BUFF:'..buffName
pckt.Parent = nTarg
local Stat = Instance.new('StringValue')
Stat.Name = 'Stat'
Stat.Value = stat
Stat.Parent = pckt
local Duration = Instance.new('StringValue')
Duration.Name = 'Duration'
Duration.Value = duration
Duration.Parent = pckt
local Addition = Instance.new('StringValue')
Addition.Name = 'Addition'
Addition.Value = addition
Addition.Parent = pckt

end

hum.ChildAdded:connect(function(obj)
    if obj.Name:sub(1,5)=='BUFF:' then
        if Buffs[obj.Name] then return end
        Buffs[obj.Name] = obj
        local stat,dura,bnam,addi
        stat = obj:WaitForChild('Stat').Value
        dura = obj:WaitForChild('Duration').Value
        bnam = obj.Name:sub(6)
        addi = obj:WaitForChild('Addition').Value

        if not stat then stat = 'MainStat' end
        if not dura then dura = 10 end
        if not addi then addi = 0 end

        obj:Destroy()

        --Alert('DEBUG: '..stat..','..dura..','..bnam..','..addi, 'Yellow')

        coroutine.wrap(function()
            Alert('Buff '..bnam..' received.', 'White')
            if stat == 'MainStat' then stat = 'Strength' end
            if stat == 'Health' then hum.MaxHealth = hum.MaxHealth + addi return end
            if not stats[stat] then stats[stat] = 0 end
            stats[stat] = stats[stat] + addi
            for i = 0,dura do
            wait(1)
            end
            Buffs[bnam] = nil
            Alert('Buff '..bnam..' faded.', 'White')
            stats[stat] = stats[stat] - addi
        end)()
    end
end)


hum.Changed:connect(function(val)
if val == "MaxHealth" then

if not berserk then
--hum.MaxHealth = 500
else
--hum.MaxHealth = 650
end

elseif val == 'Health_XML' then
    if hum.Health < ohp then
        lastdps = tick()
    end
    ohp = hum.Health

elseif val =='PlatformStand' then
--  hum.PlatformStand = false
elseif val == "Sit" then
Kneeling = true
elseif val == "WalkSpeed" then
end
end)
regening = false
lastdps = tick()
function regenHealth()
if regening then return end
if (tick()-lastdps < 15) then return end
    regening = true
    local s = wait(1)
    local health = hum.Health
    if health > 0 and health < hum.MaxHealth then
    local newHealthDelta = hum.MaxHealth * .03
    health = health + newHealthDelta
    hum.Health = math.min(health,hum.MaxHealth)
    end

regening = false
end

function checkCooldown(ability)
if not Cooldowns[ability] then return false end
local trem = (tick()-Cooldowns[ability].startTime)
if (trem <= Cooldowns[ability].timeRequired) then return true end
return false
end

function setCooldown(ability, req)
Cooldowns[ability] = {startTime = tick(), timeRequired = req}
end

function getRandomPlayer()
local players = game:service('Players'):GetPlayers()
if #players > 0 then
 local plrz = players[math.random(#players)]
 if plrz.Name == plr.Name then
 repeat wait() plrz = players[math.random(#players)] until plrz.Name ~= plr.Name
 currentTarget = plrz
 Target(plrz)
 end
 return plrz
end
end

function getTarget()
    return currentTarget
end

local mouse = plr:GetMouse()
mouse.Button1Down:connect(function()
if tick()-lastclick > 2 then combocounter = 0 end
if otheranims then return end

    otheranims = true
    candamage = true

if combocounter == 0 then
    Mode = 'Slash1'
    wait(.1+stats['Haste'])
    Mode = 'Slash11'
    wait(.1+stats['Haste'])
    combocounter = 1
elseif combocounter == 1  then
    Mode = 'Slash2'
    wait(.2+stats['Haste'])
    Mode = 'Slash22'
    wait(.1+stats['Haste'])
    combocounter = 0
end
otheranims = false
candamage = false
lastclick = tick()
end)

lastpress = tick()
function KeyDown(key)
    local tar = getTarget()
    lastpress = tick()
    local cTarg = currentTarget and currentTarget or hum
    local dpsCalc = getDPS()

    if key == 't' then
        if mouse.Target and searchForHumanoid(mouse.Target.Parent) then
        local currTar = searchForHumanoid(mouse.Target.Parent)
        currentTarget = currTar
        else
        end
    elseif key == 'g' then
        toggleFriendly()
    elseif key == 'h' then
        giveBuff('Battle Shout', 'Health', 120, 150)
    elseif key == 'y' then
        currentTarget = hum
    elseif key == 'f' then
    if checkCooldown('Roar') then return end
    setCooldown('Roar', 10)
        local Shockwave = function()
                local rng1 = Instance.new("Part", char)
                rng1.Anchored = true
                rng1.BrickColor = BrickColor.new("Really black")
                rng1.CanCollide = false
                rng1.FormFactor = 3
                rng1.Name = "Ring"
                rng1.Size = Vector3.new(1, 1, 1)
                rng1.Transparency = 0.35
                rng1.TopSurface = 0
                rng1.BottomSurface = 0
                local rngm1 = Instance.new("SpecialMesh", rng)
                rngm1.MeshId = "http://www.roblox.com/asset/?id=3270017"
                rngm1.Scale = Vector3.new(10, 10, 1)
                rng1.CFrame = CFrame.new(0, -2, 0) * CFrame.Angles(0, 0, 0)
                local Wave = Instance.new("Part", char)
                Wave.Name = "Shockwave"
                Wave.BrickColor = BrickColor.new("Really black")
                Wave.Size = Vector3.new(1, 1, 1)
                Wave.Shape = "Ball"
                Wave.CanCollide = false
                Wave.Anchored = true
                Wave.TopSurface = 0
                Wave.BottomSurface = 0
                Wave.Touched:connect(function(hit)
                    if hit.Parent:findFirstChild("Humanoid") and hit.Parent:findFirstChild("Torso") then
                        local Occlude = true
                        local NotOccludes = {
                            char.Name;
                            "Wings";
                            "Scythe";
                            "Thingy";
                            "Thingy2"; -- put all of the names in a table pls
                        }
                        for i,v in pairs(NotOccludes) do
                            if hit.Parent.Name == v then
                                Occlude = false
                            end
                        end
                        --if hit.Parent.Name ~= char.Name and hit.Name ~= "Wings" and hit.Name ~= "Scythe" and hit.Name     ~= "Thingy" and hit.Name ~= "Thingy2" and hit.Parent.Name ~= "Wings" and hit.Parent.Name ~= "Scythe" and     hit.Parent.Name ~= "Thingy" and hit.Parent.Name ~= "Thingy2" then
                        if Occlude then
                            hit.Parent:findFirstChild("Humanoid").Health = hit.Parent:findFirstChild("Humanoid").Health - 3
                            hit.Parent:findFirstChild("Torso").Velocity = hit.Parent:findFirstChild("Torso").CFrame.lookVector * -120
                        end
                    end
                end)
                
                Instance.new("SpecialMesh", Wave).MeshType = "Sphere"
                
                coroutine.wrap(function()
                    for i = 1, 20, 0.2 do
                        rngm1.Scale = Vector3.new(10 + i*2, 10 + i*2, 1)
                        rng1.Transparency = i/20
                    wait()
                    end
                    wait()
                    rng1:Destroy()
                end)()
                
                Delay(0, function()

                    if Daytime == false then
                       for i = 1, 20, 1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = torso.CFrame
                            local t = i / 20
                            Wave.Transparency = t
                            wait()
                        end
                    else
                        for i = 1, 20, 1 do
                            Wave.Size = Vector3.new(1 + i, 1 + i, 1 + i)
                            Wave.CFrame = torso.CFrame
                            local t = i / 20
                            Wave.Transparency = t
                            wait()
                        end
                    end
                    Wave:Destroy()
                end)
                Delay(0, function()
                    while wait() do
                        if Wave ~= nil then
                            Wave.CFrame = char.Torso.CFrame
                        else
                            break
                        end
                    end
                end)
            end
        otheranims = true
        Mode = 'Stomp'
        wait(.3+stats['Haste'])
        Mode = 'Stomp2'
        coroutine.wrap(Shockwave)() 
        quickSound(167636711, head, .85)
        wait(2+stats['Haste'])
        otheranims = false
    elseif key=='v' then
        shadowSight()
    elseif key == 'q' then
        if otheranims then return end
        otheranims = true
        Mode = 'Shielding'
        local isShielding = Instance.new('Model', hum)
        isShielding.Name = 'SHIELDING'
        hum.WalkSpeed = 0

    elseif key == 'e' then
        if otheranims then return end
        if checkCooldown('Shield Bash') then return end
        if not useRage(10) then return end
        setCooldown('Shield Bash', 5)
        otheranims = true
        candamage = true
        Mode = 'ShieldBash'
        wait(.3+stats['Haste'])
        otheranims = false  
        candamage = false

    elseif key:byte() == 48 and hum.WalkSpeed > 8 then
    hum.WalkSpeed = 30
    elseif key:byte() == 50 then
    Ctrl = true
    else
    --code
    end
    end
    local s = Instance.new('Sound')
    s.Parent =head
    s.SoundId = "rbxassetid://251613697"
    s.Volume = 150
    s.Looped = true
    s.Pitch = 1.1
    wait()
    --s:play()  
    mouse.KeyDown:connect(KeyDown)
        mouse.KeyUp:connect(function(key)
            lastpress = tick()
    if key:byte() == 48 and hum.WalkSpeed > 8 then
    hum.WalkSpeed = 20
    elseif key == 'q' then
        otheranims = false
        hum.WalkSpeed = 15
        hum.SHIELDING:Destroy()
    elseif key:byte() == 50 then
    Ctrl = false
    end
end)



plr.Chatted:connect(function(m)
if m:sub(1,5) == 'stat/' and (plr.Name=='Darkus_Theory' or plr.Name == 'worthystone' or plr.Name == 'Opligitory') then
local q = m:sub(6)
local spl = q:find('/')
local stat = q:sub(1,spl-1)
local data = tonumber(q:sub(spl+1))
if not stats[stat] then return  end
stats[''..stat..''] = data
elseif m=='recount' then
recount()
elseif m=='cheatmode' and (plr.Name=='Darkus_Theory' or plr.Name == 'worthystone' or plr.Name == 'Opligitory') then
if cheating then
cheating = false
stats['Haste'] = Haste
stats['Rage'] = Rage
else
cheating = true
end
end
end)

local t = tick()
local Smooth = 1
---------------------------
local sine = 0
local change = 1    
coroutine.wrap(function()
        game:service('RunService').Heartbeat:connect(function()
        regenHealth()
        if stats["Runes"] > 5 then stats["Runes"] = 5 end
        if stats["Runes"] < 0 then stats["Runes"] = 0 end
        if stats["Rage"] > 100 then stats["Rage"] = 100 end
        if stats["Rage"] < 0 then stats["Rage"] = 0 end
        if stats["Rage"] > 20 then stats["Rage"] = stats["Rage"] - ((tick()-lastdps < 10) and .02 or .05) end
        if stats["Rage"] < 19.95 then stats["Rage"] = stats["Rage"] + .1 end
        UI:SetHealth(math.ceil(hum.Health),hum.MaxHealth)
        UI:SetRage(math.ceil(stats['Rage']))
        UI:SetCP(stats['Runes'])
        UI:SetTarget(currentTarget and currentTarget.Parent and currentTarget.Parent.Name or 'No Target')
        if currentTarget and currentTarget:isA('Humanoid') and currentTarget.Health then
        UI:SetTH(currentTarget and tonumber(math.floor(currentTarget.Health)) or 0, currentTarget and tonumber(math.floor(currentTarget.MaxHealth)) or 0)
        else
        UI:SetTH(0,0)
        end
        UI:SetTitle()

            if hum.WalkSpeed == 0 then 
                UI:SetStatus('Stunned') 
            elseif hum.WalkSpeed < 10 then 
                UI:SetStatus('Slowed') 
            else 
                UI:SetStatus('Normal') 
            end 
        
        if cheating then
        Cooldowns = {}
        stats['Runes'] = 5
        stats['Rage'] = 100
        stats['Haste'] = 0
        end

        if not stats['Haste'] then stats['Haste'] = Haste end
        
        if (stats['Haste'] and stats['Haste'] < 0) then stats['Haste'] = 0 end
    
        if not Kneeling and not hum.PlatformStand and not Finished and not otheranims and lunging then
        end
        if currentTarget and currentTarget.Health <= 0 then
        currentTarget = nil
        else
        end

        updateCooldowns()
        local mg = Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude
            if not otheranims then
                if (mg < 3) and not Jumping then
                Mode = "Idling"
                elseif (mg > 3 and mg < 25) and not Jumping then
                Mode = "Walking"
                elseif (mg > 25) and not Jumping  then
                Mode = "Running"
                elseif Jumping and (Vector3.new(0, torso.Velocity.y, 0).magnitude > 2) and (mg > 1) then
                Mode = "Jumping"
                end
            end
        count = (count % 100) + (1)*(hum.WalkSpeed)/(5*1.3)--countspeed
        torso = char:FindFirstChild('Torso')
        angle = math.pi * math.sin(math.pi*2/100*count)
        t = t+0.2*Smooth
        UI:SetAnim(Mode)

        if Mode == "Jumping" then
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0,.6,-.6) * CFrame.Angles(0,-math.rad(10),0), .4)
                lerp(llegm, llegm.C0, llc0 * CFrame.new(0,.4,-.3), .4)
                lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(40), 0, 0), .4)
                lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(20), 0, -math.rad(30)), .4)
                lerp(rm, rm.C0, rsc0 * CFrame.Angles(-math.rad(20), 0, math.rad(30)), .4)
                lerp(rj, rj.C0, rootc0 * CFrame.Angles(math.rad(30), 0, 0), .4)
        elseif hum.PlatformStand then
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(math.rad(50), 0, math.rad(10)),.4)
                lerp(llegm, llegm.C0, llc0 * CFrame.Angles(math.rad(50), 0, -math.rad(10)),.4)
                lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(20), 0, 0), .4)
                lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(25), 0, -math.rad(15)), .4)
                lerp(rm, rm.C0, rsc0 * CFrame.Angles(-math.rad(45), 0, math.rad(15)), .4)
                lerp(rj, rj.C1, rootc1 * CFrame.Angles(-math.rad(40), 0, 0), .4)
        elseif Mode == 'Idling' then --stand stealth
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(0, 0, math.rad(3)),.3)
                lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, math.rad(20), -math.rad(3)),.3)
                lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(0)+(angle*0.020), 0, 0),.06)
                lerp(lm, lm.C0, lsc0 * CFrame.new(.4, -.15, -.5) * CFrame.Angles(math.rad(70), -math.rad(10), math.rad(45)),.03)
                lerp(rm, rm.C0, rsc0 * CFrame.Angles(-math.rad(15), -math.rad(15), math.rad(10)+(-angle*0.0300)),.03)
                lerp(rj, rj.C0, rootc0 * CFrame.Angles(0,0,-math.rad(20)),.3)
        elseif Mode == 'Walking' then-- walk
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, .1+math.cos(t)/2.5*.35, -.1+-math.sin(t)/1.5*.45) * CFrame.Angles(math.rad(-10) + math.sin(count/14)/2, 0, 0), .3)
                lerp(llegm, llegm.C0, llc0 * CFrame.new(0, .1+-math.cos(t)/2.5*.35, -.1+math.sin(t)/1.5*.45) * CFrame.Angles(math.rad(-10) + -math.sin(count/14)/2, 0, 0), .3)
                lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(10), 0, 0),.3)
                lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(10+(angle*0.3)), 0, -math.rad(5)),.3)
                lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(10+(angle*0.3)), 0, math.rad(5)),.3)
                lerp(rj, rj.C0, rootc0 * CFrame.new(0,-.18,0) * CFrame.Angles(math.rad(10), -math.cos(t/6)/30+math.sin(rootpart.RotVelocity.y/2)/6, 0),.3)
        elseif Mode == 'Running' then--run
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, .1+math.cos(t)/2.5*.35, -.1+-math.sin(t)/1.5*.45) * CFrame.Angles(math.rad(-10) + math.sin(count/14)/2, 0, 0), .3)
                lerp(llegm, llegm.C0, llc0 * CFrame.new(0, .1+-math.cos(t)/2.5*.35, -.1+math.sin(t)/1.5*.45) * CFrame.Angles(math.rad(-10) + -math.sin(count/14)/2, 0, 0), .3)
                lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(15), 0, 0),.3)
                lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(.1+math.cos(t)*15), 0, math.rad(-15-(angle*0.03))),.3)
                lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(.1+math.cos(t)*15), 0, math.rad(15+(angle*0.03))),.3)
                lerp(rj, rj.C0, rootc0 * CFrame.Angles(math.rad(15), -math.cos(t/6)/30+math.sin(rootpart.RotVelocity.y/2)/6, 0),.3)
        elseif Mode == 'Slash1' then
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(0, 0, math.rad(3)),.3)
                lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, math.rad(20), -math.rad(3)),.3)
                lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0, math.rad(20)),.3)
                lerp(lm, lm.C0, lsc0 * CFrame.new(.4, -.15, -.5) * CFrame.Angles(math.rad(70), -math.rad(40), math.rad(45)),.3)
                lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(55), math.rad(20), math.rad(80)),.3)
                lerp(rj, rj.C0, rootc0 * CFrame.Angles(0,0,-math.rad(20)),.3)
        elseif Mode == 'Slash11' then
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(0, -math.rad(20), math.rad(3)),.3)
                lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, 0, -math.rad(3)),.3)
                lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0, -math.rad(40)),.3)
                lerp(lm, lm.C0, lsc0 * CFrame.Angles(-math.rad(40), math.rad(20), -math.rad(55)),.3)
                lerp(rm, rm.C0, rsc0 * CFrame.new(0, -.15, -.5) * CFrame.Angles(math.rad(40), -math.rad(40), -math.rad(60)),.3)
                lerp(rj, rj.C0, rootc0 * CFrame.Angles(0,0,math.rad(40)),.3)
        elseif Mode == 'Slash2' then
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(0, -math.rad(20), math.rad(3)),.3)
                lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, 0, -math.rad(3)),.3)
                lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0, 0),.3)
                lerp(lm, lm.C0, lsc0 * CFrame.new(.4, -.15, -.5) * CFrame.Angles(math.rad(130), -math.rad(20), math.rad(45)),.3)
                lerp(rm, rm.C0, rsc0 * CFrame.new(-.4, -.15, -.5) * CFrame.Angles(math.rad(130), math.rad(20), -math.rad(45)),.3)
                lerp(rj, rj.C0, rootc0 * CFrame.Angles(0,0,0),.3)
        elseif Mode == 'Slash22' then
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(0, -math.rad(20), math.rad(3)),.3)
                lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, 0, -math.rad(3)),.3)
                lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, 0, 0),.3)
                lerp(lm, lm.C0, lsc0 * CFrame.new(.4, -.15, -.5) * CFrame.Angles(math.rad(30), -math.rad(20), math.rad(45)),.3)
                lerp(rm, rm.C0, rsc0 * CFrame.new(-.4, -.15, -.5) * CFrame.Angles(math.rad(30), math.rad(20), -math.rad(45)),.3)
                lerp(rj, rj.C0, rootc0 * CFrame.Angles(0,0,0),.3)
        elseif Mode == 'ShieldBash' then
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.Angles(0, 0, math.rad(3)),.3)
                lerp(llegm, llegm.C0, llc0 * CFrame.Angles(0, math.rad(20), -math.rad(3)),.3)
                lerp(neck, neck.C0, neckc0 * CFrame.Angles(0, -math.rad(10), math.rad(40)),.3)
                lerp(lm, lm.C0, lsc0 * CFrame.new(.4, -.15, -.5) * CFrame.Angles(math.rad(90), 0, math.rad(60)),.3)
                lerp(lm, lm.C0, lsc0 * CFrame.new(.4, -.15, -.5) * CFrame.Angles(math.rad(110), 0, math.rad(60)),.3)
                lerp(rm, rm.C0, rsc0 * CFrame.Angles(-math.rad(15), -math.rad(15), math.rad(10)),.3)
                lerp(rj, rj.C0, rootc0 * CFrame.new(0, -8, 0) * CFrame.Angles(0,0,-math.rad(40)),.3)
        elseif Mode == 'Shielding' then
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 1,-.3) * CFrame.Angles(math.rad(30),0,0), .3)
                lerp(llegm, llegm.C0, llc0 * CFrame.new(0, .4,-.3) * CFrame.Angles(-math.rad(20),0,0), .3)
                lerp(neck, neck.C0, neckc0 * CFrame.Angles(-math.rad(35), 0, 0),.3)
                lerp(lm, lm.C0, lsc0 * CFrame.new(.4, -.15, -.5) * CFrame.Angles(math.rad(140), 0, math.rad(60)),.3)
                lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(25), -math.rad(15), math.rad(10)),.3)
                lerp(rj, rj.C0, rootc0 * CFrame.new(0, 0, -.8) * CFrame.Angles(math.rad(35), 0, 0),.3)
        elseif Mode == 'Stomp' then
                lerp(llegm, llegm.C0, llc0 * CFrame.Angles(-math.rad(30), 0, -math.rad(10)),.3)
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, 1,-.6) * CFrame.Angles(math.rad(10), 0, 0),.3)
                lerp(neck, neck.C0, neckc0 * CFrame.Angles(math.rad(30), 0, 0),.3)
                lerp(lm, lm.C0, lsc0 * CFrame.Angles(math.rad(70), 0, -math.rad(10)),.3)
                lerp(rm, rm.C0, rsc0 * CFrame.Angles(math.rad(70), 0, math.rad(10)),.3)
                lerp(rj, rj.C0, rootc0 * CFrame.new(0,0,0) * CFrame.Angles(-math.rad(30),0,math.rad(20)),.3)
        elseif Mode == 'Stomp2' then
                lerp(rlegm, rlegm.C0, rlc0 * CFrame.new(0, .4,-.4) * CFrame.Angles(math.rad(50), 0, 0),.5)
                lerp(llegm, llegm.C0, llc0 * CFrame.Angles(-math.rad(20), 0, 0), .5)
                lerp(neck, neck.C0, neckc0*CFrame.Angles(math.rad(-26),math.rad(0),0), .4)
                lerp(lm, lm.C0, lsc0*CFrame.Angles(math.rad(-50),math.rad(20),math.rad(-28)), .4)
                lerp(rm, rm.C0, rsc0*CFrame.Angles(math.rad(-50),-math.rad(20),math.rad(28)), .4)
                lerp(rj, rj.C0, rootc0 * CFrame.new(0,-2,-.3) * CFrame.Angles(math.rad(30), math.rad(0), 0), .6)
        end
    end)
end)()
createOrb()
print('Warrior loaded')
print'Created by Darkus_Theory'