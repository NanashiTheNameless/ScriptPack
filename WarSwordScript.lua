--MADE BY BRICKER24 (NOT THE SCRIPT) LOCAL SCRIPT: Go to line 3,4,7,8,21, and 22 and put your name where it says "BRICKER24"

while game.Players.BRICKER24.PlayerGui:FindFirstChild("BRICKER24's Sword") == nil do
wait()
if game.Players.BRICKER24.PlayerGui:FindFirstChild("BRICKER24's Sword") == nil then
local screengui = Instance.new("ScreenGui")
screengui.Parent = game.Players.BRICKER24.PlayerGui
screengui.Name = "BRICKER24s's Sword"

local textbutton = Instance.new("TextButton")
textbutton.Parent = screengui
textbutton.Position = UDim2.new(0,606,0,15)
textbutton.Size = UDim2.new(0,70,0,25)
textbutton.Text = "WarSword"
textbutton.TextColor3 = Color3.new(0/0, 0/0, 0/0)
textbutton.BorderColor3 = Color3.new(0/0, 0/0, 0/0)
textbutton.BackgroundColor = BrickColor.new("White")
textbutton.MouseButton1Down:connect(function()


bl = game.Players.BRICKER24.Backpack
me = game.Players.BRICKER24
char = me.Character
Modelname = "GreatSword"
Toolname = "WarSword"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
selected = false
effectOn = false
Hurt = false
Leghurt = false
Deb = true
LegDeb = true
Able = true
Resting = false
RestingAnim = false
AbleG = true
Prop = {Damage = 10000, Legdmg = 10000, AS = 100, ShockDMG = 10000, Rage = 7000000, RageIncome = 7000, MaxRage = 7000000}
Prop.AS = Prop.AS/300
Cam = workspace.CurrentCamera

ToolIcon = "http://www.roblox.com/asset/?id=49192762"
MouseIc = "http://www.roblox.com/asset/?id=49192792"
MouseDo = "http://www.roblox.com/asset/?id=49192819"

Add = {
        Sphere = function(P)
                local m = Instance.new("SpecialMesh",P)
                m.MeshType = "Sphere"
                return m
        end,
	Torso = function(P)
		local m = Instance.new("SpecialMesh",P)
		m.MeshType = "Torso"
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

function find(tab, arg)
        local ah = nil
        for i,v in pairs(tab) do
                if v == arg then
                        ah = v
                end
        end
        return ah
end

function getAllParts(from)
        local t = {}
        function getParts(where)
                for i, v in pairs(where:children()) do
                        if v:IsA("BasePart") then
                                if v.Parent ~= char and v.Parent.Parent ~= char then
                                        table.insert(t, v)
                                end
                        end
                        getParts(v)
                end
        end
        getParts(workspace)
        return t
end

function RayCast(pos1, pos2, maxDist, forward)
        local list = getAllParts(workspace)
        local pos0 = pos1
        for dist = 1, maxDist, forward do
                pos0 = (CFrame.new(pos1, pos2) * CFrame.new(0, 0, -dist)).p
                for _, v in pairs(list) do
                        local pos3 = v.CFrame:pointToObjectSpace(pos0)
                        local s = v.Size
                        if pos3.x > -(s.x/2) and pos3.x < (s.x/2) and pos3.y > -(s.y/2) and pos3.y < (s.y/2) and pos3.z > -(s.z/2) and pos3.x < (s.z/2) and v.CanCollide and v:GetMass() > 14 then
                                return pos0, v
                        end
                end
        end
        return pos0, nil
end

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
        p.Locked = true
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

pcall(function() me.PlayerGui:findFirstChild("RaigMeter",true):remove() end)

Sc = Instance.new("ScreenGui",me:findFirstChild("PlayerGui"))
Sc.Name = "RaigMeter"

Fr = Instance.new("Frame",Sc)
Fr.Size = UDim2.new(0, 250, 0, 28)
Fr.Position = UDim2.new(0.5, -125, 0, 5)
Fr.BackgroundColor3 = Color3.new(0.8, 0.3, 0.1)

Met = Instance.new("Frame", Fr)
Met.Size = UDim2.new(1, -10, 1, -6)
Met.Position = UDim2.new(0, 5, 0, 3)
Met.BackgroundColor3 = Color3.new(0, 0, 0)
Met.BorderSizePixel = 0

Meter = Instance.new("ImageLabel", Met)
Meter.Size = UDim2.new(Prop.Rage/Prop.MaxRage, 0, 1, -2)
Meter.Position = UDim2.new(0, 0, 0, 1)
Meter.Image = "http://www.roblox.com/asset/?id=48965808"
Meter.BorderSizePixel = 0
Meter.BackgroundColor3 = Color3.new(1, 0.6, 0.1)

Tx = Instance.new("TextLabel", Met)
Tx.Size = UDim2.new(0, 0, 1, 0)
Tx.Position = UDim2.new(0, 5, 0, 0)
Tx.Text = Prop.Rage.." / "..Prop.MaxRage
Tx.Font = "ArialBold"
Tx.FontSize = "Size18"
Tx.BackgroundTransparency = 1
Tx.TextColor3 = Color3.new(1, 0, 0)
Tx.TextXAlignment = "Left"

laast = Prop.Rage
coroutine.resume(coroutine.create(function()
        while true do
                wait()
                if Prop.Rage > Prop.MaxRage then Prop.Rage = Prop.MaxRage end
                if laast ~= Prop.Rage then
                        Meter.Size = UDim2.new(Prop.Rage/Prop.MaxRage, 0, 1, -2)
                        laast = Prop.Rage
                        Tx.Text = Prop.Rage.." / "..Prop.MaxRage
                end
        end
end))

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

slash = Add.Sound(nil, "rbxasset://sounds//swordslash.wav", 0.9, 0.8)
hitsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2801263", 0.7, 0.6)
charge = Add.Sound(nil, "http://www.roblox.com/asset/?id=2101137", 0.8, 0.65)
boom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2691586", 0.8, 0.3)
smashsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2692806", 0.8, 0.35)
boomboom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2760979", 1, 0.18)
equip = Add.Sound(nil, "rbxasset://sounds\\unsheath.wav", 0.6, 0.7)

function PlaySound(sound, pitch)
        local s = sound:clone()
        if pitch ~= nil then
                if tonumber(pitch) then
                        s.Pitch = tonumber(pitch)
                end
        end
        s.Parent = torso
        s.PlayOnRemove = true
        coroutine.resume(coroutine.create(function()
                wait()
                s:remove()
        end))
end

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
HW = Weld(HB, nil, 0, -1.3, 0, math.pi/2, 0, 0)

TH = Weld(torso, nil, -0.8, 0.1, 0, 0, math.pi/2, math.rad(-140))

RAWStand, LAWStand, RLWStand, LLWStand, HWStand = nil

handle = Part(Mo, false, false, 1, 0, "Bright blue", 0.4, 5, 0.4, true)
handle.Name = "Handle"
Instance.new("SpecialMesh",handle)

maintip = Part(Mo, false, false, 1, 0, "Bright yellow", 0.6, 0.5, 0.6, true)
Weld(handle, maintip, 0, -1.8, 0, 0, 0, 0)

DMGParts = {}

for i = 0, 135, 45 do
        local tip = Part(Mo, false, false, 1, 0, "Dark grey", 0.54, 1.3, 2.2, true)
        Instance.new("BlockMesh",tip)
        Weld(maintip, tip, 0, 0, 0, 0, 0, math.rad(i))
        table.insert(DMGParts, tip)
end

spiketip = Part(Mo, false, false, 1, 0.2, "Bright blue", 0.3, 0.8, 0.3, true)
Weld(handle, spiketip, 0, -5.7, 0, 0, 0, 0)
Add.Mesh(spiketip, "http://www.roblox.com/asset/?id=1033714", 0.17, 2, 0.17)

table.insert(DMGParts, spiketip)

local handletip1 = Part(Mo, false, false, 0, 0.2, "Really black", 0.5, 0.5, 0.5, true)
local w1 = Weld(handle, handletip1, 0, 0, 0, 0, 0, 0)
w1.C0 = CFrame.new(0, -2.6, 0)
Add.Mesh(handletip1, "http://www.roblox.com/asset/?id=9756362", 0.85, 0.75, 0.85)

local handletip2 = Part(Mo, false, false, 0, 0.2, "Dark grey", 0.5, 0.5, 0.5, true)
Weld(handletip1, handletip2, 0, 0, 0, 0, math.rad(45), 0)
Add.Mesh(handletip2, "http://www.roblox.com/asset/?id=9756362", 0.95, 0.5, 0.95)

local hilt = Part(Mo, false, false, 0, 0.4, "Medium grey", 1.25, 0.25, .5, true)
Weld(hilt, handle, 0, .4, 0, 0, math.rad(90), 0)
Add.Torso(hilt)

local fakeHandle = Part(Mo, false, false, 0, 0, "Bright blue", 0.3, 2.8, 0.3, true)
Weld(fakeHandle, handle, 0, -.9, 0, 0, 0, 0)
Instance.new("SpecialMesh",fakeHandle)

local blade = Part(Mo, false, false, 0, 0, "Medium Grey", 0.05, 8.5, 0.45, true)
Weld(blade, handle, 0, 3.6, 0, 0, 0, 0)
Add.Mesh(blade, "http://www.roblox.com/asset/?id=1033714", 0.05, 8.5, 0.4)
table.insert(DMGParts, blade)

local bladeEdge = Part(Mo, false, false, 0, 0.6, "Bright blue", 0.02, 8.5, 0.5, true)
Weld(bladeEdge, handle, 0, 3.6, 0, 0, 0, 0)
Add.Mesh(bladeEdge, "http://www.roblox.com/asset/?id=1033714", 0.02, 8.5, 0.5)

local bladeGem = Part(Mo, false, false, 0, 0.6, "Bright blue", .3, .6, .3, true)
Weld(bladeGem, handle, 0, 1, 0, 0, 0, 0)
Add.Mesh(bladeGem, "http://www.roblox.com/asset/?id=9756362", .3, 0.6, .3)



Mo.Parent = char
TH.Part1 = handle

function showdmg(dmg, p, pos)
        local mo = Instance.new("Model")
        mo.Name = dmg
        local pa = Part(mo, false, true, 0, 0, "Bright blue", 0.8, 0.3, 0.8, true)
        pa.CFrame = CFrame.new(p.Position) * CFrame.new(0, pos, 0)
        pa.Name = "Head"
        local hah = hc:clone()
        hah.Parent = mo
        local bp = Add.BP(pa)
        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bp.position = p.Position + Vector3.new(0, 3+pos, 0)
        Add.BG(pa)
        coroutine.resume(coroutine.create(function()
                wait()
                mo.Parent = workspace
                wait(1.4)
                mo:remove()
        end))
end


function damage(hum, p, num, dm1, dm2)
        local dmg = math.random(dm1, dm2)
        hum.Health = hum.Health - dmg
        showdmg(dmg, p, num)
        return dmg
end

function brickdamage(hit)
        local h = getHumanoid(hit.Parent)
        if h ~= nil and Hurt and Deb then
                Deb = false
                local dmg = damage(h, maintip, 0, Prop.Damage/4, Prop.Damage)
                PlaySound(hitsound)
                Prop.Rage = math.floor(Prop.Rage + (dmg*Prop.RageIncome))
                wait(0.3)
                Deb = true
        end
end

function legdamage(hit)
        local h = getHumanoid(hit.Parent)
        if h ~= nil and Leghurt and LegDeb then
                LegDeb = false
                local dmg = damage(h, Rleg, 0, Prop.Legdmg/2, Prop.Legdmg)
                PlaySound(hitsound)
                Prop.Rage = math.floor(Prop.Rage + (dmg*Prop.RageIncome))
                coroutine.resume(coroutine.create(function()
                        local haha = math.random(1,3)
                        if haha == 1 then
                                h.PlatformStand = true
                                wait()
                                local ps = getAllParts(h.Parent)
                                for i, v in pairs(ps) do
                                        if v.Anchored == false then
                                                v.Velocity = CFrame.new(handle.Position, v.Position).lookVector * 40
                                                v.RotVelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
                                        end
                                end
                                wait(0.8)
                                h.PlatformStand = false
                        end
                end))
                wait(0.2)
                LegDeb = true
        end
end

for i, v in pairs({Rleg, Lleg}) do
        v.Touched:connect(legdamage)
end

for i,v in pairs(DMGParts) do
        v.Touched:connect(brickdamage)
end


        h = Instance.new("HopperBin",me.Backpack)
        h.Name = Toolname
        h.TextureId = ToolIcon
        bl = h

bin = bl

function StartEffect(part)
        effectOn = true
        local lastPoint = part.Position
        coroutine.resume(coroutine.create(function()
                while effectOn do
                        wait()
                        local point = CFrame.new(lastPoint, part.Position) * CFrame.Angles(-math.pi/2, 0, 0)
                        local mag = (lastPoint - part.Position).magnitude
                        local p = Part(workspace, true, false, 0.1, 0, "Institutional white", 1, 1, 1, true)
                        local m = Instance.new("SpecialMesh",p)
                        p.CFrame = point * CFrame.new(0, mag/2, 0)
                        m.Scale = Vector3.new(1.2, mag+0.6, 1.2)
                        lastPoint = part.Position
                        coroutine.resume(coroutine.create(function() for i = 0.1, 1, 0.9/5 do wait() p.Transparency = i end p:remove() end))
                end
        end))
end

function EndEffect()
        effectOn = false
end

function detach(bool)
        LLW.C0 = CFrame.new(0, 0, 0)
        RLW.C0 = CFrame.new(0, 0, 0)
        LAW.C0 = CFrame.new(0,0,0)
        RAW.C0 = CFrame.new(0, 0, 0)
        if bool then
                LLW.Part1 = nil
                RLW.Part1 = nil
                RAW.Part1 = nil
                LAW.Part1 = nil
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
        RAW.C1 = CFrame.new(0, 0.5, 0)
        LAW.C1 = CFrame.new(0, 0.5, 0)
        RLW.C1 = CFrame.new(0, 0.8, 0)
        LLW.C1 = CFrame.new(0, 0.8, 0)
        HW.C0 = HWStand
end

function idleanim()
        attach()
        for i = 0, 10, 10/22 do
                RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(i), 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-i), 0, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(i/8), 0, math.rad(-i/6))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-i/8), 0, math.rad(i/6))
                neck.C0 = necko * CFrame.Angles(math.rad(-i/2), 0, 0)
                if selected == false or torso.Velocity.magnitude > 2 or Able == false or RestingAnim == true then break end
                wait()
        end
        wait()
        for i = 10, 0, -10/29 do
                RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(i), 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-i), 0, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(i/8), 0, math.rad(-i/6))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-i/8), 0, math.rad(i/6))
                neck.C0 = necko * CFrame.Angles(math.rad(-i/2), 0, 0)
                if selected == false or torso.Velocity.magnitude > 2 or Able == false or RestingAnim == true then break end
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
                if selected and Able == true and RestingAnim == false then
                        if torso.Velocity.magnitude < 2 then
                                idleanim()
                                wait()
                        else
                                runanim()
                                wait()
                        end
                end
        end
end))

function selectanim()
        if RestingAnim == false and Able == true then
        local ah = CFrame.Angles(0, 0, math.rad(90))
        RAW.Part1 = Rarm
        for i = 0, 270, 270/5 do
                RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i/5))
                wait()
        end
        HW.C0 = ah
        HW.Part1 = handle
        TH.Part1 = nil
        PlaySound(equip)
        for i = 270, 70, -200/13 do
                RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
                neck.C0 = necko * CFrame.Angles(math.rad((i-270)/7), 0, math.rad(-i/5))
                wait()
        end
        attach()
        for i = 70, 120, 50/8 do
                local asd = i-70
                RAW.C0 = CFrame.new(-(i-70)/240, 0, -i/500) * CFrame.Angles(math.rad(70), math.rad(70/4+(i-70)), math.rad(-(i-70)/4))
                LAW.C0 = CFrame.Angles(math.rad(asd*1.5), 0, math.rad(asd/2)) * CFrame.new(asd/100, -asd/70, 0)
                HW.C0 = ah * CFrame.Angles(0, 0, math.rad(-asd*1.8))
                neck.C0 = necko * CFrame.Angles(math.rad(-200/7+(asd/2)), 0, math.rad(-70/5+(asd/5)))
                RLW.C0 = CFrame.Angles(0, 0, math.rad(asd/4))
                LLW.C0 = CFrame.Angles(0, 0, math.rad(-asd/4))
                wait()
        end
        if RAWStand == nil then
                RAWStand = RAW.C0
                LAWStand = LAW.C0
                RLWStand = RLW.C0
                LLWStand = LLW.C0
                HWStand = HW.C0
        end
        normal()
        end
end

function deselanim()
        if RestingAnim == false and Able == true then
        local ah = CFrame.Angles(0, 0, math.rad(90))
        for i = 120, 70, -50/8 do
                local asd = i-70
                RAW.C0 = CFrame.new(-(i-70)/240, 0, -i/500) * CFrame.Angles(math.rad(70), math.rad(70/4+(i-70)), math.rad(-(i-70)/4))
                LAW.C0 = CFrame.Angles(math.rad(asd*1.5), 0, math.rad(asd/2)) * CFrame.new(asd/100, -asd/70, 0)
                HW.C0 = ah * CFrame.Angles(0, 0, math.rad(-asd*1.8))
                neck.C0 = necko * CFrame.Angles(math.rad(-200/7+(asd/2)), 0, math.rad(-70/5+(asd/5)))
                RLW.C0 = CFrame.Angles(0, 0, math.rad(asd/4))
                LLW.C0 = CFrame.Angles(0, 0, math.rad(-asd/4))
                wait()
        end
        LLW.Part1 = nil
        RLW.Part1 = nil
        LAW.Part1 = nil
        for i = 70, 270, 200/13 do
                RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
                neck.C0 = necko * CFrame.Angles(math.rad((i-270)/7), 0, math.rad(-i/5))
                wait()
        end
        HW.C0 = ah
        HW.Part1 = nil
        TH.Part1 = handle
        for i = 270, 0, -270/6 do
                RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i/5))
                wait()
        end
        neck.C0 = necko
        detach(true)
        end
end

function smash(mouse)
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        local CF2 = CF
        bg.cframe = CF2
        PlaySound(slash)
        for i = 0, 1, Prop.AS*1.1 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(80*i), 0, math.rad(45*i)) * CFrame.new(0, -0.4*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(75*i), 0, math.rad(40*i)) * CFrame.new(0, -0.5*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20*i), math.rad(16*i), math.rad(-8*i))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-30*i), math.rad(-16*i), math.rad(8*i))
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(30*i))
                neck.C0 = necko * CFrame.Angles(math.rad(-35*i), 0, math.rad(-10*i))
                wait()
        end
        bp.position = CF * CFrame.new(0, 0, -1.1).p
        StartEffect(maintip)
        Hurt = true
        for i = 0, 1, Prop.AS*1.5 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(70-150*i), math.rad(-45*i), math.rad(45-140*i)) * CFrame.new(0, -0.4, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(75-180*i), math.rad(80*i), math.rad(40-20*i)) * CFrame.new(0, -0.5, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20-50*i), math.rad(16-16*i), math.rad(-8+8*i))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-30+40*i), math.rad(-16+16*i), math.rad(8-8*i))
                HW.C0 = HWStand * CFrame.Angles(math.rad(-48*i), 0, math.rad(30))
                neck.C0 = necko * CFrame.Angles(math.rad(-35+75*i), 0, math.rad(-10+26*i))
                wait()
        end
        Hurt = false
        EndEffect()
        PlaySound(smashsound)
        bp.position = CF * CFrame.new(0, 0, -1.9).p
        for i = 0, 1, Prop.AS do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(70-150+80*i), math.rad(-45+45*i), math.rad(45-140+95*i)) * CFrame.new(0, -0.4+0.4*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(75-180+105*i), math.rad(80-80*i), math.rad(20-20*i)) * CFrame.new(0, -0.5+0.5*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20-50+30*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-30+40-10*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-48+48*i), 0, math.rad(30-30*i))
                neck.C0 = necko * CFrame.Angles(math.rad(-35+75-40*i), 0, math.rad(-10+26-16*i))
                wait()
        end
        normal()
        bg:remove()
        bp:remove()
end

function swing(mouse)
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        local CF2 = CF
        bg.cframe = CF2
        PlaySound(slash)
        for i = 0, 1, Prop.AS*1.5 do
                RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(-140*i), 0) * CFrame.new(0, 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(25*i), 0, math.rad(20*i)) * CFrame.new(0, -0.4*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, math.rad(-10*i), 0)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-50*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(-40*i), 0)
                wait()
        end
        Hurt = true
        StartEffect(maintip)
        for i = 0, 1, Prop.AS*1.3 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(70*i), math.rad(-140), 0) * CFrame.new(0, -0.9*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(25), 0, math.rad(20-100*i)) * CFrame.new(0, -0.4+0.6*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-70*i), math.rad(-15), 0) * CFrame.new(0, 0, -0.9*i)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-50+90*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(-40+80*i), 0)
                wait()
        end
        EndEffect()
        Hurt = false
        for i = 0, 1, Prop.AS*0.8 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(70-70*i), math.rad(-140+140*i), 0) * CFrame.new(0, -0.9+0.9*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(25-25*i), 0, math.rad(20-100+80*i)) * CFrame.new(0, -0.4+0.6-0.2*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20-20*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10+10*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-70+70*i), math.rad(-15+15*i), 0) * CFrame.new(0, 0, -0.9+0.9*i)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-50+90-40*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(40-40*i), 0)
                wait()
        end
        normal()
        bg:remove()
        bp:remove()
end

function stab(mouse)
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        local CF2 = CF
        bg.cframe = CF2
        PlaySound(slash)
        for i = 0, 1, Prop.AS do
                RAW.C0 = RAWStand * CFrame.new(0, 0.6*i, 0) * CFrame.Angles(math.rad(-60*i), math.rad(-40*i), math.rad(-30*i)) * CFrame.new(-0.45*i, 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-50*i), 0, math.rad(40*i)) * CFrame.new(0, -0.6*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(3*i), math.rad(20*i), math.rad(-10*i))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-3*i), math.rad(-20*i), math.rad(10*i))
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1*i)
                neck.C0 = necko * CFrame.Angles(math.rad(25*i), 0, math.rad(-45*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(-30*i), 0)
                wait()
        end
        StartEffect(maintip)
        Hurt = true
        bp.position = CF * CFrame.new(0, 0, -0.6).p
        for i = 0, 1, Prop.AS*1.5 do
                RAW.C0 = RAWStand * CFrame.new(0, 0.6-0.8*i, 0) * CFrame.Angles(math.rad(-60+100*i), math.rad(-40), math.rad(-30+70*i)) * CFrame.new(-0.45, 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-50+60*i), 0, math.rad(40-30*i)) * CFrame.new(0, -0.6-0.4*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(3-18*i), math.rad(20-40*i), math.rad(-10+20*i))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-3+18*i), math.rad(-20+40*i), math.rad(10-20*i))
                HW.C0 = HWStand * CFrame.Angles(math.rad(-70*i), 0, 0) * CFrame.new(0, 0, 1-1.4*i)
                neck.C0 = necko * CFrame.Angles(math.rad(25-20*i), 0, math.rad(-45+35*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(-30+45*i), 0)
                wait()
        end
        Hurt = false
        EndEffect()
        bp.position = CF.p
        for i = 0, 1, Prop.AS*1.1 do
                RAW.C0 = RAWStand * CFrame.new(0, 0.6-0.8+0.2*i, 0) * CFrame.Angles(math.rad(-60+100-40*i), math.rad(-40+40*i), math.rad(-30+70-40*i)) * CFrame.new(-0.45+0.45*i, 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-50+60-10*i), 0, math.rad(40-30-10*i)) * CFrame.new(0, -0.6-0.4+1*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(3-18+15*i), math.rad(20-40+20*i), math.rad(-10+20-10*i))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-3+18-15*i), math.rad(-20+40-20*i), math.rad(10-20+10*i))
                HW.C0 = HWStand * CFrame.Angles(math.rad(-70+70*i), 0, 0) * CFrame.new(0, 0, 1-1.4+0.4*i)
                neck.C0 = necko * CFrame.Angles(math.rad(5-5*i), 0, math.rad(-10+10*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(-30+45-15*i), 0)
                wait()
        end
        normal()
        bg:remove()
        bp:remove()
end

function epicsmashfunc(hit)
        local ch = hit.Parent
        local h = getHumanoid(ch)
        local t, head = ch:findFirstChild("Torso"), ch:findFirstChild("Head")
        return h, t, head
end

function epicsmash(mouse)
        if Prop.Rage >= 50 then
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        bg.cframe = CF
        local hu, to, head = nil, nil, nil
        local Epic = true
        local conn = Lleg.Touched:connect(function(hit)
                if Epic then
                        hu, to, head = epicsmashfunc(hit)
                        if hu and to and head then Epic = false end
                end
        end)
        PlaySound(slash)
        for i = 0, 1, 0.12 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160*i), math.rad(-30*i), math.rad(-80*i)) * CFrame.new(0, 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80*i), 0, math.rad(-70*i)) * CFrame.new(0, -0.4*i, 0.6*i)
                RLW.C0 = RLWStand * CFrame.Angles(0, 0, math.rad(20*i)) * CFrame.new(0, 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(115*i), 0, math.rad(-40*i)) * CFrame.new(0, -0.8*i, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 2*i)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52*i))
                bg.cframe = CF * CFrame.Angles(math.rad(10*i), math.rad(-45*i), math.rad(-15*i))
                wait()
        end
        conn:disconnect()
        if hu and to and head then
                Prop.Rage = Prop.Rage - 50
                hu.PlatformStand = true
                local bg2 = Add.BG(to)
                bg2.P = 6000
                bg2.cframe = CF * CFrame.Angles(math.rad(90), math.rad(180), math.rad(90))
                local bp2 = Add.BP(to)
                bp2.position = CF * CFrame.new(-1, -4, -4).p
                bp2.P = 5000
                wait(0.1)
                for i = 0, 1, 0.045 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+270*i), math.rad(-30+20*i), math.rad(-80+120*i))
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+140*i), 0, math.rad(-70+120*i)) * CFrame.new(0, -0.4-0.1*i, 0.6-0.6*i)
                        RLW.C0 = RLWStand * CFrame.Angles(0, 0, math.rad(20-20*i)) * CFrame.new(0, 0, 0)
                        LLW.C0 = LLWStand * CFrame.Angles(math.rad(115-115*i), 0, math.rad(-40+40*i)) * CFrame.new(0, -0.8+0.8*i, 0)
                        HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 2-2*i)
                        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52-37*i))
                        bg.cframe = CF * CFrame.Angles(math.rad(10-10*i), math.rad(-45+35*i), math.rad(-15+15*i))
                        wait()
                end
                PlaySound(slash)
                bp2:remove()
                bg2:remove()
                wait(0.2)
                StartEffect(maintip)
                for i = 0, 1, 0.1 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+270-190*i), math.rad(-30+20-35*i), math.rad(-80+120-135*i))
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+140-150*i), math.rad(60*i), math.rad(-70+120-40*i)) * CFrame.new(0, -0.4-0.1, 0)
                        RLW.C0 = RLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
                        LLW.C0 = LLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
                        HW.C0 = HWStand * CFrame.Angles(math.rad(-55*i), 0, math.rad(30*i)) * CFrame.new(0, 0, -1*i)
                        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52-37+30*i))
                        bg.cframe = CF * CFrame.Angles(math.rad(10-10), math.rad(-45+35-30*i), math.rad(-15+15))
                        wait()
                end
                coroutine.resume(coroutine.create(function()
                        local frr = Cam.CoordinateFrame
                        for i = 1, math.random(3,6) do
                                wait()
                                Cam.CoordinateFrame = frr * CFrame.new(math.random(-6,6)/10, math.random(-6,6)/10, math.random(-6,6)/10)
                        end
                end))
                PlaySound(smashsound)
                EndEffect()
                local pos = head.Position
                if (pos - maintip.Position).magnitude < 2 then
                damage(hu, head, 0.3, hu.Health, hu.Health)
                head:remove()
                PlaySound(hitsound)
                for i = 1, math.random(7, 17) do
                        local hmm = math.random(1,6)
                        if hmm < 6 then
                                local cols = {"Bright red", "Really red"}
                                local p = Part(workspace, false, false, 0, 0, cols[math.random(1,#cols)], math.random(2,10)/10, 0.2, math.random(2,10)/10)
                                p.CFrame = CFrame.new(pos) * CFrame.new(math.random(-6,6)/10, math.random(-4,2)/10, math.random(-6, 6)/10)
                                p.Velocity = Vector3.new(math.random(-15, 15), math.random(5, 40), math.random(-15, 15))
                                p.RotVelocity = Vector3.new(math.random(-25,25), math.random(-25,25), math.random(-25,25))
                        else
                                local cols = {"Institutional white", "White"}
                                local p = Part(workspace, false, false, 0, 0, cols[math.random(1,#cols)], math.random(4,13)/10, 0.3, math.random(2,3)/10)
                                p.CFrame = CFrame.new(pos) * CFrame.new(math.random(-6,6)/10, math.random(-4,2)/10, math.random(-6, 6)/10)
                                p.Velocity = Vector3.new(math.random(-15, 15), math.random(5, 40), math.random(-15, 15))
                                p.RotVelocity = Vector3.new(math.random(-25,25), math.random(-25,25), math.random(-25,25))
                        end
                end
                end
                for i = 0, 1, 0.06 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+270-190+80*i), math.rad(-30+20-35+45*i), math.rad(-80+120-135+95*i))
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+140-150+90*i), math.rad(60-60*i), math.rad(10-10*i)) * CFrame.new(0, -0.4-0.1+0.5*i, 0)
                        RLW.C0 = RLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
                        LLW.C0 = LLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
                        HW.C0 = HWStand * CFrame.Angles(math.rad(-55+55*i), 0, math.rad(30-30*i)) * CFrame.new(0, 0, -1+1*i)
                        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(45-45*i))
                        bg.cframe = CF * CFrame.Angles(0, math.rad(-45+35-20+30*i), 0)
                        wait()
                end
        else
                for i = 0, 1, 0.08 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+160*i), math.rad(-30+30*i), math.rad(-80+80*i)) * CFrame.new(0, 0, 0)
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+80*i), 0, math.rad(-70+70*i)) * CFrame.new(0, -0.4+0.4*i, 0.6-0.6*i)
                        RLW.C0 = RLWStand * CFrame.Angles(0, 0, math.rad(20-20*i)) * CFrame.new(0, 0, 0)
                        LLW.C0 = LLWStand * CFrame.Angles(math.rad(115-115*i), 0, math.rad(-40+40*i)) * CFrame.new(0, -0.8+0.8*i, 0)
                        HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 2-2*i)
                        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52-52*i))
                        bg.cframe = CF * CFrame.Angles(math.rad(10-10*i), math.rad(-45+45*i), math.rad(-15+15*i))
                        wait()
                end
                bg:remove()
                bp:remove()
                normal()
        end
        normal()
        bg:remove()
        bp:remove()
        end
end


function shockwave(mouse)
        local p, t = RayCast(torso.Position, torso.CFrame * CFrame.new(0, -5, 0).p, 5, 1)
        if Prop.Rage >= 80 and t then
        Prop.Rage = Prop.Rage - 80
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bp.P = 5000
        local CF = ComputePos(Orig.p, mouseHit)
        bg.cframe = CF
        PlaySound(charge)
        for i = 0, 1, 0.07 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-110*i), math.rad(-40*i), math.rad(-50*i)) * CFrame.new(0.2*i, 0, 0.2*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100*i), 0, math.rad(-40*i)) * CFrame.new(-0.2*i, -0.4*i, 0.5*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15*i), 0, math.rad(-10*i)) * CFrame.new(0, 0.7*i, -0.8*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75*i), 0, math.rad(10*i)) * CFrame.new(0, 0.4*i, 0.2*i)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6*i)
                neck.C0 = necko * CFrame.Angles(math.rad(30*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = Orig.p + Vector3.new(0, -1.9*i, 0)
                wait()
        end
        for i = 0, 1, 0.04 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-110+220*i), math.rad(-40+50*i), math.rad(-50+90*i)) * CFrame.new(0.2-0.2*i, -0.85*i, 0.2-0.2*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100+185*i), 0, math.rad(-40+75*i)) * CFrame.new(-0.2-0.2*i, -0.4-0.05*i, 0.5-0.5*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15-25*i), 0, math.rad(-10+6*i)) * CFrame.new(0, 0.7-0.7*i, -0.8+0.8*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75+65*i), 0, math.rad(10-6*i)) * CFrame.new(0, 0.4-0.4*i, 0.2-0.2*i)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-15*i), 0, 0) * CFrame.new(0, 0, 1.6-2.1*i)
                neck.C0 = necko * CFrame.Angles(math.rad(30-70*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = Orig.p + Vector3.new(0, -1.9+17*i, 0)
                wait()
        end
        bp.P = 12001
        wait(0.1)
        StartEffect(maintip)
        PlaySound(slash)
        for i = 0, 1, 0.1 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150*i), math.rad(10-30*i), math.rad(40-90*i)) * CFrame.new(0, -0.85+0.85*i, -0.8*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-125*i), 0, math.rad(35)) * CFrame.new(0, -0.45+0.1, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(-10+25*i), 0, math.rad(-4+4*i)) * CFrame.new(0, 0.5*i, -0.8*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10-35*i), 0, math.rad(4-4*i)) * CFrame.new(0, 0.4*i, 0.2*i)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-15-10*i), 0, 0) * CFrame.new(0, 0, -0.5+0.7*i)
                neck.C0 = necko * CFrame.Angles(math.rad(-40+75*i), 0, math.rad(-20*i))
                bg.cframe = CF * CFrame.Angles(0, math.rad(380*i), 0)
                bp.position = Orig.p + Vector3.new(0, 15.1-16.7*i, 0)
                wait()
        end
        coroutine.resume(coroutine.create(function()
                local frr = Cam.CoordinateFrame
                for i = 1, math.random(10,16) do
                        wait()
                        Cam.CoordinateFrame = frr * CFrame.new(math.random(-15,15)/10, math.random(-15,15)/10, math.random(-15,15)/10)
                end
        end))
        PlaySound(smashsound)
        local pos = CF * CFrame.new(-2, -3, -3).p
        EndEffect()
        local p = Part(workspace, true, false, 0, 0, "Toothpaste", 1, 1, 1, true)
        p.CFrame = CFrame.new(pos)
        local p2 = Part(workspace, true, false, 0, 0, "Toothpaste", 1, 1, 1, true)
        p2.CFrame = CFrame.new(pos)
        local p3 = Part(workspace, true, false, 0, 0, "Toothpaste", 1, 1, 1, true)
        p3.CFrame = CFrame.new(pos)
        local m3 = Instance.new("SpecialMesh",p3)
        m3.MeshType = "Sphere"
        PlaySound(boom)
        local m2 = Instance.new("CylinderMesh",p2)
        local m = Add.Mesh(p, "http://www.roblox.com/asset/?id=20329976", 1, 1.2, 1)
        local tab = {}
        coroutine.resume(coroutine.create(function()
                for x = 0, 1.04, 0.04 do
                        wait()
                        local thing = 33*x
                        m.Scale = Vector3.new(21*x, 5*x, 21*x)
                        m2.Scale = Vector3.new(thing, 1, thing)
                        m3.Scale = Vector3.new(thing*0.93, thing*0.7, thing*0.93)
                        p.Transparency = x
                        p2.Transparency = x
                        p3.Transparency = x
                        for i, v in pairs(workspace:children()) do
                                local h = getHumanoid(v)
                                local to = v:findFirstChild("Torso")
                                if h ~= nil and to ~= nil and find(tab, v) == nil then
                                        if (to.Position - pos).magnitude < (thing/2) then
                                                damage(h, to, 0.5, Prop.ShockDMG/2, Prop.ShockDMG)
                                                to.Velocity = CFrame.new(pos, to.Position).lookVector * 60
                                                to.RotVelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
                                                h.PlatformStand = true
                                                table.insert(tab, v)
                                                coroutine.resume(coroutine.create(function() wait(1.2) h.PlatformStand = false end))
                                        end
                                end
                        end
                end
                p:remove()
                p2:remove()
                p3:remove()
        end))
        wait(0.8)
        for i = 0, 1, Prop.AS*0.8 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150+40*i), math.rad(10-30+20*i), math.rad(40-90+50*i)) * CFrame.new(0, 0, -0.8+0.8*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-125+40*i), 0, math.rad(35-35*i)) * CFrame.new(0, -0.45+0.1+0.35*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(-10+25-15*i), 0, 0) * CFrame.new(0, 0.5-0.5*i, -0.8+0.8*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10-35+45*i), 0, 0) * CFrame.new(0, 0.4-0.4*i, 0.2-0.2*i)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-15-10+25*i), 0, 0) * CFrame.new(0, 0, -0.5+0.7-0.2*i)
                neck.C0 = necko * CFrame.Angles(math.rad(-40+75-35*i), 0, math.rad(-20+20*i))
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = Orig.p + Vector3.new(0, 15.1-16.7+1.6*i, 0)
                wait()
        end
        normal()
        bg:remove()
        bp:remove()
        end
end

function flipsmash(mouse)
        local Orig = torso.CFrame
        local mouseHit = mouse
        local CF = ComputePos(Orig.p, mouseHit)
        local p, t = RayCast(torso.Position, torso.Position + Vector3.new(0, -5, 0), 5, 0.5)
        local ahp = (CF * CFrame.new(0, 0, -14.5))
        local p2, t2 = RayCast(ahp.p, (ahp * CFrame.new(0, -5, 0)).p, 5, 0.5)
        if t and t2 and Prop.Rage >= 90 then
        Prop.Rage = Prop.Rage - 90
        attach()
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bg.cframe = CF
        local cen = CF * CFrame.new(0, -1.2, -1.5-6.5)
        for i = 0, 1, 0.08 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-100*i), math.rad(-50*i), math.rad(-50*i)) * CFrame.new(0.2*i, 0, 0.2*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100*i), 0, math.rad(-40*i)) * CFrame.new(-0.2*i, -0.4*i, 0.5*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15*i), 0, math.rad(-10*i)) * CFrame.new(0, 0.7*i, -1*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75*i), 0, math.rad(10*i)) * CFrame.new(0, 0.4*i, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6*i)
                neck.C0 = necko * CFrame.Angles(math.rad(30*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = CF * CFrame.new(0, -1.2*i, -1.5*i).p
                wait()
        end
        wait(0.15)
        hum.PlatformStand = true
        for i = 0, 1, 0.13 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-100-70*i), math.rad(-50), math.rad(-50)) * CFrame.new(0.2, 0, 0.2)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100-50*i), 0, math.rad(-40+30*i)) * CFrame.new(-0.2, -0.4, 0.5)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15-10*i), 0, math.rad(-10)) * CFrame.new(0, 0.7-0.7*i, -1+1*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75+70*i), 0, math.rad(10)) * CFrame.new(0, 0.4-0.4*i, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6)
                neck.C0 = necko * CFrame.Angles(math.rad(30-40*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.rad(-90*i), 0, 0)
                bp.position = cen * CFrame.Angles(math.rad(180-45*i), 0, 0) * CFrame.new(0, 0, -6.5).p
                wait()
        end
        PlaySound(slash)
        for i = 0, 1, 0.13 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-100-70-80*i), math.rad(-50+60*i), math.rad(-50+90*i)) * CFrame.new(0.2-0.2*i, -0.85*i, 0.2-0.2*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100-50-125*i), 0, math.rad(-40+30+45*i)) * CFrame.new(-0.2+0.2*i, -0.4-0.5*i, 0.5-0.5*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(5), 0, math.rad(-10)) * CFrame.new(0, 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-5), 0, math.rad(10)) * CFrame.new(0, 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6-2.6*i)
                neck.C0 = necko * CFrame.Angles(math.rad(-10), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.rad(-90-90*i), 0, 0)
                bp.position = cen * CFrame.Angles(math.rad(180-45-45*i), 0, 0) * CFrame.new(0, 0, -6.5).p
                wait()
        end
        StartEffect(maintip)
        PlaySound(slash)
        for i = 0, 1, 0.06 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150*i), math.rad(10-50*i), math.rad(40-85*i)) * CFrame.new(0, -0.85+0.45*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-130*i), 0, math.rad(35)) * CFrame.new(0, -0.9+0.3*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(5-80*i), 0, math.rad(-10)) * CFrame.new(0, 0.4*i, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-5+20*i), 0, math.rad(10)) * CFrame.new(0, 0.7*i, -1*i)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-35+10*i), 0, 0) * CFrame.new(0, 0, 1.6-2.6)
                neck.C0 = necko * CFrame.Angles(math.rad(-10+50*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.rad(-180-190*i), 0, 0)
                bp.position = cen * CFrame.Angles(math.rad(90-90*i), 0, 0) * CFrame.new(0, 0, -6.5).p
                wait()
        end
        coroutine.resume(coroutine.create(function()
                local frr = Cam.CoordinateFrame
                for i = 1, math.random(13,20) do
                        wait()
                        Cam.CoordinateFrame = frr * CFrame.new(math.random(-15,15)/10, math.random(-15,15)/10, math.random(-15,15)/10)
                end
        end))
        PlaySound(smashsound)
        PlaySound(boomboom)
        EndEffect()
        local poo = Vector3.new(maintip.Position.x, t2.Position.y + t2.Size.y/2, maintip.Position.z)
        local siz = math.random(65,115)/10
        local partie = Part(workspace, true, false, 1, 0, "White", siz, 0.2, siz, true)
        partie.CFrame = CFrame.new(poo) * CFrame.Angles(0, math.rad(math.random(0, 360)), 0)
        local decc = Instance.new("Decal",partie)
        decc.Shiny = 0
        decc.Specular = 0
        decc.Texture = "http://www.roblox.com/asset/?id=49173398"
        decc.Face = "Top"
        local count = 0
        for i, v in pairs(workspace:children()) do
                local h = getHumanoid(v)
                local to = v:findFirstChild("Torso")
                if h ~= nil and to ~= nil then
                        if (to.Position - poo).magnitude < 15 then
                                count = count + 1
                                local Maxhp = h.MaxHealth
                                if Maxhp > 5000 then Maxhp = 5000 end
                                damage(h, to, 0.5, 0, Maxhp+5)
                                to.Velocity = CFrame.new(poo, to.Position).lookVector * 30
                                to.Velocity = to.Velocity + Vector3.new(0, 60, 0)
                                to.RotVelocity = Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                h.PlatformStand = true
                                coroutine.resume(coroutine.create(function() wait(1.2) h.PlatformStand = false end))
                                if count >= 2 then break end
                        end
                end
        end
        coroutine.resume(coroutine.create(function() wait(math.random(7,14)) partie:remove() end))
        wait(0.6)
        for i = 0, 1, 0.06 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150+40*i), math.rad(10-50+40*i), math.rad(40-85+45*i)) * CFrame.new(0, -0.85+0.45+0.4*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-130+45*i), 0, math.rad(35-35*i)) * CFrame.new(0, -0.9+0.3+0.6*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(5-80+75*i), 0, math.rad(-10+10*i)) * CFrame.new(0, 0.4-0.4*i, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-5+20-15*i), 0, math.rad(10-10*i)) * CFrame.new(0, 0.7-0.7*i, -1+1*i)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-35+10+25*i), 0, 0) * CFrame.new(0, 0, 1.6-2.6+1*i)
                neck.C0 = necko * CFrame.Angles(math.rad(-10+50-40*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = cen * CFrame.new(0, 1.2*i, -6.5).p
                wait()
        end
        hum.PlatformStand = false
        normal()
        bg:remove()
        bp:remove()
        end
end

function spin(mouse)
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local CF = ComputePos(Orig.p, mouseHit)
        local p, t = RayCast(torso.Position, CF * CFrame.new(0, -7, -1.5).p, 5, 0.5)
        if t then
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bp.position = Orig.p
        bg.cframe = CF
        PlaySound(slash)
        for i = 0, 1, 0.11 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(20*i), math.rad(120*i), math.rad(20*i)) * CFrame.new(0, 0, 0)
                RAW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(100*i), 0, math.rad(20*i))
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(60*i), 0, math.rad(40*i)) * CFrame.new(0, -0.8*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(10*i), 0, 0) * CFrame.new(0, 0.3*i, -0.2*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-25*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0)
                neck.C0 = necko * CFrame.Angles(math.rad(-15*i), 0, math.rad(-30*i))
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                wait()
        end
        local posg = CF * CFrame.new(0, -0.6, -4)
        PlaySound(hitsound, 0.9)
        for i = 0, 1, 0.13 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(20-20*i), math.rad(120+10*i), math.rad(20)) * CFrame.new(0, -0.8*i, 0.4*i)
                RAW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(100-60*i), 0, math.rad(20-20*i))
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(60-40*i), 0, math.rad(40-50*i)) * CFrame.new(0, -0.8+0.3*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(10-10*i), 0, 0) * CFrame.new(0, 0.3-0.3*i, -0.2+0.2*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-25+25*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35*i)) * CFrame.new(0, 0, -0.6*i)
                neck.C0 = necko * CFrame.Angles(math.rad(-15+25*i), 0, math.rad(-30+30*i))
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = CF * CFrame.new(0, 1*i, -2*i).p
                wait()
        end
        hum.PlatformStand = true
        bg.Parent = handle
        bg.cframe = CF * CFrame.Angles(math.pi, math.pi, 0)
        bp.Parent = handle
        bp.position = posg.p
        StartEffect(Lleg)
        Leghurt = true
        PlaySound(slash)
        for i = 0, 1, 0.09 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-90*i), math.rad(130-40*i), math.rad(20-40*i)) * CFrame.new(0, -0.8+0.8*i, 0.4-0.4*i)
                RAW.C1 = CFrame.new(0, 0.5+0.5*i, 0) * CFrame.Angles(math.rad(100-60+60*i), 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(60-40-20+60*i), 0, math.rad(40-50+10*i)) * CFrame.new(0, -0.8+0.3-0.5*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-20*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35)) * CFrame.new(0, 0, 1*i)
                neck.C0 = necko * CFrame.Angles(math.rad(10-35*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.pi, math.pi+math.rad(90*i), 0)
                wait()
        end
        for i = 0, 1, 0.055 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-90), math.rad(90), math.rad(-20)) * CFrame.new(0, 0, 0)
                RAW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(100), 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(60), 0, 0) * CFrame.new(0, -1, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15+10*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-20-5*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35)) * CFrame.new(0, 0, 1)
                neck.C0 = necko * CFrame.Angles(math.rad(-25), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.pi, math.pi+math.rad(90+270*i), 0)
                wait()
        end
        EndEffect()
        Leghurt = false
        for i = 0, 1, 0.12 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-90+90*i), math.rad(90+40*i), math.rad(-20+40*i)) * CFrame.new(0, -0.8*i, 0.4*i)
                RAW.C1 = CFrame.new(0, 1-0.5*i, 0) * CFrame.Angles(math.rad(100-60*i), 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(60-60*i), 0, 0) * CFrame.new(0, -1+0.5*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15+10-25*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-20-5+25*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35)) * CFrame.new(0, 0, 1)
                neck.C0 = necko * CFrame.Angles(math.rad(-25+25*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.pi, math.pi+math.rad(360), 0)
                wait()
        end
        bg.Parent = torso
        bp.Parent = torso
        bg.cframe = CF
        for i = 0, 1, 0.14 do
                RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(90+40-130*i), math.rad(-20+40-20*i)) * CFrame.new(0, -0.8+0.8*i, 0.4-0.4*i)
                RAW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(100-60-40*i), 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, -1+0.5+0.5*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(0, 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(0, 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35+35*i)) * CFrame.new(0, 0, 1-1*i)
                neck.C0 = necko * CFrame.Angles(0, 0, 0)
                bp.position = CF * CFrame.new(0, 0, -2+1*i).p
                bg.cframe = CF
                wait()
        end
        hum.PlatformStand = false
        normal()
        bg:remove()
        bp:remove()
        end
end

function rest()
        local Orig = torso.CFrame
        local CF = ComputePos(Orig.p, Orig * CFrame.new(0, 0, -5).p)
        local p, t = RayCast(CF.p, CF * CFrame.new(0, -6, 0.5).p, 6, 0.5)
        if t then
        attach()
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bp.position = CF.p
        bg.cframe = CF
        local cen = CF * CFrame.new(0, -2.5, 0)
        RestingAnim = true
        hum.PlatformStand = true
        local standup = function()
                Resting = false
                bp.Parent = torso
                cen = ComputePos(torso.CFrame.p, torso.CFrame * CFrame.new(0, 0, -5).p) * CFrame.new(0, 0, -2.5)
                for i = 1, 0, -0.12 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(50), math.rad(-20-20*i), math.rad(60*i))
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40-70*i), 0, math.rad(-30-10*i)) * CFrame.new(0, -0.6*i, 0.4+0.2*i)
                        RLW.C0 = RLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(15)) * CFrame.new(0, 0, -0.4)
                        LLW.C0 = LLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(-15)) * CFrame.new(0, 0, -0.4)
                        neck.C0 = necko * CFrame.Angles(math.rad(10-15*i), 0, 0)
                        HW.C0 = HWStand * CFrame.Angles(math.rad(40*i), 0, 0) * CFrame.new(0, 0, 0.2+0.8*i)
                        bg.cframe = CF * CFrame.Angles(math.rad(-10+20*i), 0, 0)
                        bp.position = cen * CFrame.Angles(math.rad(180+45+45*i), 0, 0) * CFrame.new(0, -2.5, 0.4*i).p
                        wait()
                end
                for i = 1, 0, -0.17 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(50*i), math.rad(-20*i), 0)
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40*i), 0, math.rad(-30*i)) * CFrame.new(0, 0, 0.4*i)
                        RLW.C0 = RLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(15*i)) * CFrame.new(0, -0.4*i, -0.4*i)
                        LLW.C0 = LLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(-15*i)) * CFrame.new(0, -0.4*i, -0.4*i)
                        neck.C0 = necko * CFrame.Angles(math.rad(10*i), 0, 0)
                        HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0.2*i)
                        bg.cframe = CF * CFrame.Angles(math.rad(-10*i), 0, 0)
                        bp.position = cen * CFrame.Angles(math.rad(180+45*i), 0, 0) * CFrame.new(0, -2.5, 0).p
                        wait()
                end
                hum.PlatformStand = false
                bg:remove()
                bp:remove()
                normal()
                Able = true
                RestingAnim = false
        end
        local connec = hum.Changed:connect(function()
                if hum.PlatformStand == false then
                        coroutine.resume(coroutine.create(function()
                                standup()
                        end))
                        standup = nil
                        connec:disconnect()
                end
        end)
        local lasthp = hum.Health
        local conn = hum.HealthChanged:connect(function(hp)
                if lasthp - hp > 0.8 then
                        hum.PlatformStand = false
                        conn:disconnect()
                end
                lasthp = hp
        end)
        coroutine.resume(coroutine.create(function()
                repeat wait() until Resting
                while Resting do
                        wait()
                        if torso.Velocity.magnitude > 4 then
                                hum.PlatformStand = false
                                break
                        end
                end
        end))
        for i = 0, 1, 0.1 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(50*i), math.rad(-20*i), 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40*i), 0, math.rad(-30*i)) * CFrame.new(0, 0, 0.4*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(15*i)) * CFrame.new(0, 0, -0.4*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(-15*i)) * CFrame.new(0, 0, -0.4*i)
                neck.C0 = necko * CFrame.Angles(math.rad(10*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0.2*i)
                bg.cframe = CF * CFrame.Angles(math.rad(-10*i), 0, 0)
                bp.position = cen * CFrame.Angles(math.rad(180+45*i), 0, 0) * CFrame.new(0, -2.5, 0).p
                wait()
        end
        for i = 0, 1, 0.07 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(50), math.rad(-20-20*i), math.rad(60*i))
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40-70*i), 0, math.rad(-30-10*i)) * CFrame.new(0, -0.6*i, 0.4+0.2*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(15)) * CFrame.new(0, -0.4*i, -0.4)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(-15)) * CFrame.new(0, -0.4*i, -0.4)
                neck.C0 = necko * CFrame.Angles(math.rad(10-15*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(math.rad(40*i), 0, 0) * CFrame.new(0, 0, 0.2+0.8*i)
                bg.cframe = CF * CFrame.Angles(math.rad(-10+20*i), 0, 0)
                bp.position = cen * CFrame.Angles(math.rad(180+45+45*i), 0, 0) * CFrame.new(0, -2.5, 0.4*i).p
                wait()
        end
        Resting = true
        coroutine.resume(coroutine.create(function()
                wait(0.4)
                bp.Parent = nil
        end))
        coroutine.resume(coroutine.create(function()
                while Resting and selected do
                        wait(math.random(350,800)/1000)
                        hum.Health = hum.Health + math.random(1,2)
                        Prop.Rage = Prop.Rage + 1
                end
                hum.PlatformStand = false
        end))
        end
end

function select(mouse)
        mouse.Icon = MouseIc
        selectanim()
        selected = true
        mouse.Button1Down:connect(function()
                if Able and RestingAnim == false and hum.Sit == false then
                        Able = false
                        swing(mouse.Hit.p)
                        Able = true
                end
        end)
        mouse.Button1Down:connect(function()
                mouse.Icon = MouseDo
                mouse.Button1Up:wait()
                mouse.Icon = MouseIc
        end)
        mouse.KeyDown:connect(function(key)
                key = key:lower()
                if Able and RestingAnim == false and hum.Sit == false then
                if key == "q" then
                        Able = false
                        smash(mouse.Hit.p)
                        Able = true
                elseif key == "e" then
                        Able = false
                        swing(mouse.Hit.p)
                        Able = true
                elseif key == "r" then
                        Able = false
                        stab(mouse.Hit.p)
                        Able = true
                elseif key == "f" then
                        Able = false
                        epicsmash(mouse.Hit.p)
                        Able = true
                elseif key == "z" then
                        Able = false
                        shockwave(mouse.Hit.p)
                        Able = true
                elseif key == "x" then
                        Able = false
                        flipsmash(mouse.Hit.p)
                        Able = true
                elseif key == "t" then
                        Able = false
                        spin(mouse.Hit.p)
                        Able = true
                end
                end
                if Able then
                        if key == "g" and AbleG then
                                AbleG = false
                                if Resting == true then
                                        Resting = false
                                else
                                        rest()
                                end
                                wait(0.8)
                                AbleG = true
                        end
                end
        end)
end

function deselect(mouse)
        selected = false
        deselanim()
end

bin.Selected:connect(select)
bin.Deselected:connect(deselect)




end)
end
end
