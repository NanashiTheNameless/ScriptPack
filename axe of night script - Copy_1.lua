:ls --Ax of Night Gifted by TheRedAngel, Regular Script!

Plrs = game:GetService("Players")

Name = "luxulux"
me = Plrs[Name]
char = me.Character
Modelname = "Ax of night"
Toolname = "Ax of night"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0) 
selected = false
Hurt = false
Able = true

Add = {
    Sphere = function(P)
        local m = Instance.new("SpecialMesh",P)
        m.MeshType = "Sphere"
        return m
    end,
    BF = function(P)
        local bf = Instance.new("BodyForce",P)
        bf.force = Vector3.new(0, P:GetMass()*187, 0)
        return bf
    end,
    BP = function(P)
        local bp = Instance.new("BodyPosition",P)
        bp.maxForce = Vector3.new(math.huge, 0, math.huge)
        bp.P = 14000
        return bp
    end,
    BG = function(P)
        local bg = Instance.new("BodyGyro",P)
        bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
        bg.P = 14000
        return bg
    end,
    Mesh = function(P, ID, x, y, z)
        local m = Instance.new("SpecialMesh")
        m.MeshId = ID
        m.Scale = Vector3.new(x, y, z)
        m.Parent = P
        return m
    end,
    Sound = function(P, ID, vol, pitch)
        local s = Instance.new("Sound")
        s.SoundId = ID
        s.Volume = vol
        s.Pitch = pitch
        s.Parent = P
        return s
    end
}

function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
    local p = Instance.new("Part")
    p.formFactor = "Custom"
    p.Anchored = Anchor
    p.CanCollide = Collide
    p.Transparency = Tran
    p.Reflectance = Ref
    p.BrickColor = BrickColor.new(Color)
    for _, Surf in pairs(Surfaces) do
        p[Surf] = "Smooth"
    end
    p.Size = Vector3.new(X, Y, Z)
    if Break then
        p:BreakJoints()
    else p:MakeJoints() end
    p.Parent = Parent
    return p
end

function Weld(p0, p1, x, y, z, a, b, c)
    local w = Instance.new("Weld")
    w.Parent = p0
    w.Part0 = p0
    w.Part1 = p1
    w.C1 = CFrame.new(x,y,z) * CFrame.Angles(a,b,c)
    return w
end

function ComputePos(pos1, pos2)
    local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
    return CFrame.new(pos1, pos3)
end

function getHumanoid(c)
    local h = nil
    for i,v in pairs(c:children()) do
        if v:IsA("Humanoid") and c ~= char then
            if v.Health > 0 then
                h = v
            end
        end
    end
    return h
end

for i,v in pairs(char:children()) do
    if v.Name == Modelname then
        v:remove()
    end
end

torso = char.Torso
neck = torso.Neck
hum = char.Humanoid
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rleg = char["Right Leg"]
Lleg = char["Left Leg"]

hc = Instance.new("Humanoid")
hc.Health = 0
hc.MaxHealth = 0

slash = Add.Sound(nil, "rbxasset://sounds//swordslash.wav", 0.9, 1)
hitsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2801263", 0.7, 0.6)
charge = Add.Sound(nil, "http://www.roblox.com/asset/?id=2101137", 0.8, 0.65)
boom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2691586", 0.8, 0.3)

function PlaySound(sound)
    local s = sound:clone()
    s.Parent = torso
    s.PlayOnRemove = true
    coroutine.resume(coroutine.create(function()
        wait()
        s:remove()
    end))
end


--[[ PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS 
PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS 
PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS PARTS 
]]
Mo = Instance.new("Model")
Mo.Name = Modelname

RABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
RLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)

RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)

RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLW = Weld(RLBrick, nil, 0, 0.8, 0, 0, 0, 0)
LLW = Weld(LLBrick, nil, 0, 0.8, 0, 0, 0, 0)

HB = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
HBW = Weld(Rarm, HB, 0, 1, 0, 0, 0, 0)
HW = Weld(HB, nil, 0, -1, 0, math.pi/2, 0, 0)

TH = Weld(torso, nil, -0.75, 0.7, 0.4, 0, math.pi/2, math.rad(-140))
TH.C0 = CFrame.Angles(math.rad(-10), math.rad(10), 0)

handle = Part(Mo, false, false, 0, 0, "Black", 0.5, 6, 0.5, true)
Instance.new("SpecialMesh",handle)
handle.Name = "Handle"

dec1 = Part(Mo, false, false, 0, 0, "Dark grey", 0.2, 4, 0.2, true)
Add.Mesh(dec1, "http://www.roblox.com/asset/?id=16606212", 0.27, 0.27, 1.45)
Weld(handle, dec1, 0, 0, 0, math.pi/2, 0, 0)

dec2 = Part(Mo, false, false, 0, 0, "White", 0.8, 0.8, 0.3, true)
Add.Mesh(dec2, "http://www.roblox.com/asset/?id=4770583", 2, 2.5, 1.1)
Weld(handle, dec2, 0, -2.7, 0, 0, math.pi/2, 0)

for x = 0, 180, 180 do
    for i = -60, 70, 130/4 do
        local asd = (i+120)/85
        local p = Part(Mo, false, false, 0, 0, "Dark grey", 0.3, 0.8, 0.3, true)
        Add.Mesh(p, "http://www.roblox.com/asset/?id=1033714", 0.16, asd, 0.16)
        local w = Weld(dec2, p, 0, 0, 0, 0, 0, 0)
        w.C0 = CFrame.Angles(0, math.rad(x), math.rad(i))
        w.C1 = CFrame.new(0, -0.7, 0) * CFrame.Angles(math.pi/2, math.pi/2, 0)
    end
end

mainspike = Part(Mo, false, false, 0, 0, "Medium grey", 0.3, 0.8, 0.3, true)
Add.Mesh(mainspike, "http://www.roblox.com/asset/?id=1033714", 0.17, 3, 0.17)
Weld(dec2, mainspike, 0, -1.5, 0, 0, 0, 0)

blade = Part(Mo, false, false, 0, 0, "Medium grey", 3, 0.7, 0.2, true)
Weld(dec2, blade, 0, 0.4, 0, 0, 0, 0)
Instance.new("BlockMesh",blade).Scale = Vector3.new(1, 1, 0.4)

for i = 0, 180, 180 do
    for x = -45, 45, 90/6 do
        local p = Part(Mo, false, false, 0, 0, "Medium grey", 0.6, 0.6, 0.2, true)
        Instance.new("BlockMesh",p).Scale = Vector3.new(1, 1, 0.9)
        local w = Weld(blade, p, 0, 0, 0, 0, 0, 0)
        w.C0 = CFrame.Angles(0, math.rad(i), 0) * CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, math.rad(x))
        w.C1 = CFrame.new(-1.8, 0, 0)
    end
    for x = 0, -180, -90/4 do
        local p = Part(Mo, false, false, 0, 0, "Medium grey", 0.6, 0.6, 0.2, true)
        Instance.new("BlockMesh",p).Scale = Vector3.new(1, 1, 0.4)
        local w = Weld(blade, p, 0, 0, 0, 0, 0, 0)
        w.C0 = CFrame.new(0, -1.32, 0) * CFrame.Angles(0, 0, math.rad(x))
        w.C1 = CFrame.new(1.05, 0, 0)
    end
    for x = 0, 180, 90/4 do
        local p = Part(Mo, false, false, 0, 0, "Medium grey", 0.6, 0.6, 0.2, true)
        Instance.new("BlockMesh",p).Scale = Vector3.new(1, 1, 0.4)
        local w = Weld(blade, p, 0, 0, 0, 0, 0, 0)
        w.C0 = CFrame.new(0, 1.32, 0) * CFrame.Angles(0, 0, math.rad(x))
        w.C1 = CFrame.new(1.05, 0, 0)
    end
end

for x = 0, 180, 180 do
    for y = 0, 180, 180 do
        local p = Part(Mo, false, false, 0, 0, "Medium grey", 1, 1, 0.2, true)
        Instance.new("BlockMesh",p).Scale = Vector3.new(1, 1, 0.4)
        local w = Weld(blade, p, 0, 0, 0, 0, 0, 0)
        w.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(x), 0, math.rad(y))
        w.C1 = CFrame.new(-1.2, -0.5, 0)
    end
end

handletip1 = Part(Mo, false, false, 0, 0.2, "Really black", 0.5, 0.5, 0.5, true)
w1 = Weld(handle, handletip1, 0, 0, 0, 0, 0, 0)
w1.C0 = CFrame.new(0, -2.9, 0)
Add.Mesh(handletip1, "http://www.roblox.com/asset/?id=9756362", 0.8, 0.7, 0.8)

handletip2 = Part(Mo, false, false, 0, 0.2, "Dark grey", 0.5, 0.5, 0.5, true)
Weld(handletip1, handletip2, 0, 0, 0, 0, math.rad(45), 0)
Add.Mesh(handletip2, "http://www.roblox.com/asset/?id=9756362", 0.85, 0.55, 0.85)

Mo.Parent = char
TH.Part1 = handle

if script.Parent.className ~= "HopperBin" then
    h = Instance.new("HopperBin",me.Backpack)
    h.Name = Toolname
    script.Parent = h
end

bin = script.Parent

--[[ ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS 
ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS 
ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS ANIMATIONS 
]]

RAWStand, LAWStand, RLWStand, LLWStand, HWStand = nil


function detach(bool)
    LLW.C0 = CFrame.new(0, 0, 0)
    RLW.C0 = CFrame.new(0, 0, 0)
    LAW.C0 = CFrame.new(0, 0, 0)
    RAW.C0 = CFrame.new(0, 0, 0)
    if bool then
        LLW.Part1 = nil
        RLW.Part1 = nil
        RAW.Part1 = nil
        LAW.Part1 = nil
        TH.Part1 = handle
        HW.Part1 = nil
    end
end

function attach()
    RAW.Part1 = Rarm
    LAW.Part1 = Larm
    RLW.Part1 = Rleg
    LLW.Part1 = Lleg
end

function normal()
    neck.C0 = necko
    RAW.C0 = RAWStand
    LAW.C0 = LAWStand
    RLW.C0 = RLWStand
    LLW.C0 = LLWStand
    HW.C0 = HWStand
end

function idleanim()
    attach()
    for i = 0, 1, 0.015 do
        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-3*i), math.rad(8*i), 0)
        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-16*i), 0, 0)
        RLW.C0 = RLWStand * CFrame.Angles(math.rad(-4*i), 0, math.rad(3*i))
        LLW.C0 = LLWStand * CFrame.Angles(math.rad(4*i), 0, math.rad(-3*i))
        neck.C0 = necko * CFrame.Angles(math.rad(7*i), 0, math.rad(6*i))
        if selected == false or torso.Velocity.magnitude > 4 or Able == false then break end
        wait()
    end
    wait()
    for i = 1, 0, -0.011 do
        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-3*i), math.rad(8*i), 0)
        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-16*i), 0, 0)
        RLW.C0 = RLWStand * CFrame.Angles(math.rad(-4*i), 0, math.rad(3*i))
        LLW.C0 = LLWStand * CFrame.Angles(math.rad(4*i), 0, math.rad(-3*i))
        neck.C0 = necko * CFrame.Angles(math.rad(7*i), 0, math.rad(6*i))
        if selected == false or torso.Velocity.magnitude > 4 or Able == false then break end
        wait()
    end
    normal()
end

function runanim()
    RLW.Part1 = nil
    LLW.Part1 = nil
end

coroutine.resume(coroutine.create(function()
    while true do
        wait()
        if selected and Able == true then
            if torso.Velocity.magnitude < 0.1 then
                idleanim()
            else
                runanim()
            end
            wait()
        end
    end
end))

function selectanim()
    RAW.Part1 = Rarm
    LLW.Part1 = Lleg
    RLW.Part1 = Rleg
    for i = 0, 1, 0.2 do
        RAW.C0 = CFrame.Angles(math.rad(185*i), math.rad(70*i), 0)
        LLW.C0 = CFrame.Angles(math.rad(2*i), 0, math.rad(-5*i))
        RLW.C0 = CFrame.Angles(math.rad(-2*i), 0, math.rad(5*i))
        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-40*i))
        wait()
    end
    TH.Part1 = nil
    HW.Part1 = handle
    HW.C0 = CFrame.Angles(math.rad(40), 0, math.rad(-20))
    for i = 0, 1, 0.08 do
        RAW.C0 = CFrame.Angles(math.rad(185-110*i), math.rad(70-60*i), math.rad(30*i))
        LLW.C0 = CFrame.Angles(math.rad(2-8*i), 0, math.rad(-5-10*i))
        RLW.C0 = CFrame.Angles(math.rad(-2+8*i), 0, math.rad(5+10*i))
        neck.C0 = necko * CFrame.Angles(math.rad(-15*i), 0, math.rad(-40+35*i))
        HW.C0 = CFrame.Angles(math.rad(40-70*i), 0, math.rad(-20+20*i))
        wait()
    end
    LAW.Part1 = Larm
    for i = 0, 1, 0.1 do
        RAW.C0 = CFrame.Angles(math.rad(185-110-5*i), math.rad(70-60+80*i), math.rad(30-30*i))
        LAW.C0 = CFrame.Angles(math.rad(70*i), 0, math.rad(8*i)) * CFrame.new(0.1*i, -0.1*i, 0)
        LLW.C0 = CFrame.Angles(math.rad(-6), 0, math.rad(-5-10+10*i))
        RLW.C0 = CFrame.Angles(math.rad(6), 0, math.rad(5+10-10*i))
        neck.C0 = necko * CFrame.Angles(math.rad(-15+15*i), 0, math.rad(-5+5*i))
        HW.C0 = CFrame.Angles(math.rad(-30+30*i), 0, math.rad(-60*i)) * CFrame.new(0, 0, -0.4*i)
        wait()
    end
    if RAWStand == nil then
        RAWStand = RAW.C0
        LAWStand = LAW.C0
        LLWStand = LLW.C0
        RLWStand = RLW.C0
        HWStand = HW.C0
    end
    selected = true
end

function deselanim()
    selected = false
    for i = 1, 0, -0.1 do
        RAW.C0 = CFrame.Angles(math.rad(185-110-5*i), math.rad(70-60+80*i), math.rad(30-30*i))
        LAW.C0 = CFrame.Angles(math.rad(70*i), 0, math.rad(8*i)) * CFrame.new(0.1*i, -0.1*i, 0)
        LLW.C0 = CFrame.Angles(math.rad(-6), 0, math.rad(-5-10+10*i))
        RLW.C0 = CFrame.Angles(math.rad(6), 0, math.rad(5+10-10*i))
        neck.C0 = necko * CFrame.Angles(math.rad(-15+15*i), 0, math.rad(-5+5*i))
        HW.C0 = CFrame.Angles(math.rad(-30+30*i), 0, math.rad(-60*i)) * CFrame.new(0, 0, -0.4*i)
        wait()
    end
    LAW.Part1 = nil
    for i = 1, 0, -0.08 do
        RAW.C0 = CFrame.Angles(math.rad(185-110*i), math.rad(70-60*i), math.rad(30*i))
        LLW.C0 = CFrame.Angles(math.rad(2-8*i), 0, math.rad(-5-10*i))
        RLW.C0 = CFrame.Angles(math.rad(-2+8*i), 0, math.rad(5+10*i))
        neck.C0 = necko * CFrame.Angles(math.rad(-15*i), 0, math.rad(-40+35*i))
        HW.C0 = CFrame.Angles(math.rad(40-70*i), 0, math.rad(-20+20*i))
        wait()
    end
    TH.Part1 = handle
    HW.Part1 = nil
    HW.C0 = CFrame.Angles(math.rad(40), 0, math.rad(-20))
    for i = 1, 0, -0.2 do
        RAW.C0 = CFrame.Angles(math.rad(185*i), math.rad(70*i), 0)
        LLW.C0 = CFrame.Angles(math.rad(2*i), 0, math.rad(-5*i))
        RLW.C0 = CFrame.Angles(math.rad(-2*i), 0, math.rad(5*i))
        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-40*i))
        wait()
    end
    detach(true)
end

function slash(mp)
    attach()
    local Orig = torso.CFrame
    local bg = Add.BG(torso)
    local bp = Add.BP(torso)
    bp.position = Orig.p
    local CF = ComputePos(Orig.p, mp)
    bg.cframe = CF
    for i = 0, 1, 0.1 do
        wait()
    end
    normal()
    bg:remove()
    bp:remove()
end

function select(mouse)
    selectanim()
    mouse.Button1Down:connect(function()
        if Able then
            Able = false
            slash(mouse.Hit.p)
            Able = true
        end
    end)
end

function deselect(mouse)
    deselanim()
end

bin.Selected:connect(select)
bin.Deselected:connect(deselect)
--lego
