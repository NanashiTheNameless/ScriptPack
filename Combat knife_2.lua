Players = game:GetService("Players")
script.Name = "UpLocal"
 
do
        local type = Instance.new("StringValue",script)
        type.Name = "hopper"
        type.Value = "knife"
end
 
me = Players.ace28545
char = me.Character
 
Toolname = "Knife"
Modelname = "Knife"
 
selected = false
effect = false
hurt = false
debounce = true
able = true
oable = true
charge =  false
soundable = true
cancharge = true
cam = game.Workspace.CurrentCamera
 
local surfaces = {"TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "FrontSurface", "BackSurface"}
 
local New = {
        Gyro = function(P)
                local bg = Instance.new("BodyGyro", P)
                bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                bg.P = 14000
                return bg
        end,
        Position = function(P)
                local bp = Instance.new("BodyPosition", P)
                bp.maxForce = Vector3.new(math.huge, 0, math.huge)
                bp.P = 14000
                return bp
        end,
        Force = function(P)
                local bf = Instance.new("BodyForce", P)
                bf.force = Vector3.new(0, P:GetMass()*187, 0)
                return bf
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
 
torso = char.Torso
neck = torso.Neck
human = char.Humanoid
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rleg = char["Right Leg"]
Lleg = char["Left Leg"]
 
local Sounds = {
        slash = "http://roblox.com/asset/?id=10209645",
        slash2 = "http://roblox.com/asset/?id=10209640",
        unsheath = "rbxasset://sounds//unsheath.wav",
        hitsound = "http://www.roblox.com/asset/?id=2801263", --0.5
        charge = "http://www.roblox.com/asset/?id=2101137", --0.5
        boom = "http://www.roblox.com/asset/?id=2691586", --0.3
        bewm = "http://www.roblox.com/asset/?id=2760979", --0.3
        splat = "http://roblox.com/asset/?id=10209590"
}
 
local tsound = {
        slash = Instance.new("Sound"),
        slash2 = Instance.new("Sound"),
        hitsound = Instance.new("Sound"),
        splat = Instance.new("Sound"),
        unsheath = Instance.new("Sound")
}
 
tsound["slash"].SoundId = "http://roblox.com/asset/?id=10209645"
tsound["slash2"].SoundId = "http://roblox.com/asset/?id=10209640"
tsound["hitsound"].SoundId = "http://www.roblox.com/asset/?id=2801263"
tsound["splat"].SoundId = "http://roblox.com/asset/?id=10209590"
tsound["unsheath"].SoundId = "rbxasset://sounds//unsheath.wav"
 
function EnableSound(time)
        coroutine.resume(coroutine.create(function()
                wait(time)
                soundable = true
        end))
end
 
function PlaySound(soundname, pitch)
        coroutine.resume(coroutine.create(function()
        if soundable then
                soundable = false
                tsound[soundname].Parent = char
                tsound[soundname].Pitch = pitch
                tsound[soundname]:Play()
                EnableSound(0.12)
        end
        end))
end
 
function Weld(p0, p1, x, y, z, a, b, c)
        local w = Instance.new("Weld")
        w.Parent = p0
        w.Part0 = p0
        w.Part1 = p1
        w.C1 = CFrame.new(x, y, z) * CFrame.Angles(a, b, c)
        return w
end
 
function Part(parent, anchor, collide, tran, ref, color, x, y, z, Break, lifetime)
        local p = Instance.new("Part")
        p.formFactor = "Custom"
        p.Anchored = anchor
        p.CanCollide = collide
        p.Transparency = tran
        p.Reflectance = ref
        p.BrickColor = BrickColor.new(color)
        for _, Surf in pairs(surfaces) do
                p[Surf] = "Smooth"
        end
        p.Size = Vector3.new(x, y, z)
        if Break then
                p:BreakJoints()
        else
                p:MakeJoints()
        end
        p.Parent = parent
        p.Locked = true
        if lifetime then
                game:GetService("Debris"):AddItem(p, lifetime)
        end
        return p
end
 
function getHum(c)
        local h = nil
        for i,v in pairs(c:GetChildren()) do
                if v:IsA("Humanoid") and c ~= char then
                        if v.Health > 0 then
                                h = v
                        end
                end
        end
        return h
end
 
function FindAllParts(ignore)
        local PartTable = {}
        local function FindPartsIn(object, ign)
                for i,v in pairs(object:GetChildren()) do
                        if v:IsA("BasePart") and v ~= ign then
                                table.insert(PartTable, v)
                        elseif v:IsA("Model") and v ~= ign then
                                FindPartsIn(v, ign)
                        elseif v:IsA("Hat") and v ~= ignore then
                                FindPartsIn(v, ignore)
                        elseif v:IsA("Tool") and v ~= ignore then
                                FindPartsIn(v, ignore)
                        end
                end
        end
        for i,v in pairs(game.Workspace:GetChildren()) do
                if v:IsA("BasePart") and v ~= ignore then
                        table.insert(PartTable, v)
                elseif v:IsA("Model") and v ~= ignore then
                        FindPartsIn(v, ignore)
                elseif v:IsA("Hat") and v ~= ignore then
                        FindPartsIn(v, ignore)
                elseif v:IsA("Tool") and v ~= ignore then
                        FindPartsIn(v, ignore)
                end
        end
        return PartTable
end
 
for i, v in pairs(char:children()) do
        if v.Name == Modelname then
                v:remove()
        end
end
 
for i, v in pairs(me.Backpack:GetChildren()) do
        if v.Name == Toolname then
                v:remove()
        end
end
 
Mo = Instance.new("Model")
Mo.Name = Modelname
 
RABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
RLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
gripBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
Weld(Rarm, gripBrick, 0, 1, 0, 0, 0, 0)
 
RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)
 
TH = Weld(Rleg, nil, -0.6, -0.2, -0.4, math.rad(60), math.rad(20), 0)
 
RABW2 = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LABW2 = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLBW2 = Weld(RLBrick, nil, 0, 0.77, 0, 0, 0, 0)
LLBW2 = Weld(LLBrick, nil, 0, 0.77, 0, 0, 0, 0)
 
handle = Part(Mo, false, false, 0, 0, "Really black", 0.2, 0.8, 0.2, true)
handle.Name = "Handle"
Instance.new("BlockMesh", handle).Scale = Vector3.new(0.6, 1, 0.8)
 
gaurd = Part(Mo, false, false, 0, 0, "Really black", 0.25, 0.2, 0.3, true)
gaurd.Name = "Gaurd"
Instance.new("BlockMesh", gaurd).Scale = Vector3.new(0.8, 0.5, 0.8)
 
blade = Part(Mo, false, false, 0, 0.1, "Silver", 0.2, 0.8, 0.2, true)
blade.Name = "Blade"
Instance.new("BlockMesh", blade).Scale = Vector3.new(0.1, 1, 0.8)
 
bladetip = Part(Mo, false, false, 0, 0.1, "Silver", 0.2, 0.2, 0.2, true)
bladetip.Name = "Tip"
bladetipmesh = Instance.new("SpecialMesh", bladetip)
bladetipmesh.MeshType = "Wedge"
bladetipmesh.Scale = Vector3.new(0.1, 1, 0.8)
 
sheath = Part(Mo, false, false, 0, 0, "Black", 0.2, 1, 0.2, true)
sheath.Name = "Sheath"
Instance.new("BlockMesh", sheath)
 
sheathweld = Weld(sheath, blade, 0, 0.16, 0, math.pi, 0, 0)
grip = Weld(gripBrick, nil, 0, 0, 0, -math.pi/2, 0, 0)
Weld(handle, gaurd, 0, -0.4, 0, 0, 0, 0)
Weld(gaurd, blade, 0, -0.45, 0, 0, 0, 0)
Weld(blade, bladetip, 0, -0.5, 0, 0, 0, 0)
 
Mo.Parent = char
TH.Part1 = sheath
 
if not script.Parent:IsA("HopperBin") then
        bin = Instance.new("HopperBin", me.Backpack)
        bin.Name = Toolname
        script.Parent = bin
end
 
function dmgdeb(time)
        coroutine.resume(coroutine.create(function()
                wait(time)
                debounce = true
        end))
end
 
function dmg(hum, dm1, dm2)
        if debounce then
                local dmg = math.random(dm1 * 1000, dm2 * 1000)/1000
                if math.random(1, 20) == 1 then
                        dmg = dmg * 3
                end
                local ko = Instance.new("ObjectValue", hum)
                ko.Name = "creator"
                ko.Value = me
                hum:TakeDamage(dmg)
                coroutine.resume(coroutine.create(function()
                        wait()
                        ko:remove()
                end))
                for i = 0, dmg/5 do
                        local blood = Part(workspace, false, false, 0, 0, "Really red", 0.2, 0.2, 0.2, true)
                        blood.CFrame = hum.Parent.Torso.CFrame
                        blood.RotVelocity = Vector3.new(math.random(-10,10), math.random(-10,10),math.random(-10,10))
                        blood.Velocity = Vector3.new(math.random(-20,20), math.random(5,20), math.random(-20,20))
                        --Instance.new("SpecialMesh", blood).MeshType = "Sphere"
                        coroutine.resume(coroutine.create(function()
                                for i = 0, 3, 0.1 do
                                        --blood.SpecialMesh.Scale = Vector3.new(1 - i, 1 - i, 1 - i)
                                        blood.Transparency = i / 3
                                        wait()
                                end
                        end))
                end
                debounce = false
                return dmg
        end
end
 
function unsheath()
        PlaySound("unsheath", 5)
        coroutine.resume(coroutine.create(function()
                for i = 0, 30, 10 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
                wait()
        end))
        coroutine.resume(coroutine.create(function()
                wait()
                wait()
                for _, part in pairs(FindAllParts(char)) do
                        if (part.Position - blade.Position).magnitude < 1 then
                                if getHum(part.Parent) then
                                        local hum = getHum(part.Parent)
                                        dmg(hum, 0.5, 1)
                                        dmgdeb(0.1)
                                        PlaySound("splat", 1.2)
                                end
                        end
                end
        end))
        for i = 0, 30, 10 do
                wait()
        end
        sheathweld.Part1 = nil
        grip.Part1 = handle
        for i = 0, -180, -30 do
                wait()
                grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), math.rad(20 + i/9),0) --(math.sin(i/59)/6)
        end
end
 
function sheath()
        PlaySound("unsheath", 5)
        for i = -180, -30, 35 do
                grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), math.rad(20 + (i +30)/7.5), 0) --(math.sin(i/59)/6)
                wait()
        end
        grip.Part1 = nil
        sheathweld.Part1 = blade
        coroutine.resume(coroutine.create(function()
                for i = 30, 0, -10 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
        end))
        --[[coroutine.resume(coroutine.create(function()
                for i = -180, 0, 30 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        wait()
                end
        end))]]
        coroutine.resume(coroutine.create(function()
                for _, part in pairs(FindAllParts(char)) do
                        if (part.Position - blade.Position).magnitude < 1 then
                                if getHum(part.Parent) then
                                        local hum = getHum(part.Parent)
                                        dmg(hum, 0.5, 1.5)
                                        dmgdeb(0.1)
                                        PlaySound("splat", 1.2)
                                end
                        end
                end
        end))
        for i = 30, 0, -10 do
                wait()
        end
end
 
function slash()
        PlaySound("slash", math.random(1750,2000)/1000)
        EnableSound()
        coroutine.resume(coroutine.create(function()
                for i = 30, 150, 20 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
                for i = 150, 0, -30 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
                for i = 0, 30, 15 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
        end))
        for i = 30, 150, 20 do
                wait()
        end
        for i = 150, 0, -30 do
                for _, part in pairs(FindAllParts(char)) do
                        if (part.Position - blade.Position).magnitude < 1 then
                                if getHum(part.Parent) then
                                        local hum = getHum(part.Parent)
                                        dmg(hum, 10, 16)
                                        dmgdeb(0.2)
                                        PlaySound("splat", 1)
                                end
                        end
                end
                wait()
        end
end
 
function stab()
        coroutine.resume(coroutine.create(function()
                for i = 30, -30, -15 do
                        RABW2.C1 = CFrame.new(0, 0.5, -i/300) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
                for i = 180, 200, 10 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        wait()
                end
                PlaySound("slash2", math.random(900,1200)/1000)
                EnableSound()
                wait(0.2)
                coroutine.resume(coroutine.create(function()
                        for i = -30, 90, 60 do
                                RABW2.C1 = CFrame.new(0, 0.5 + i/200, 0) * CFrame.Angles(-math.rad(i), 0, 0)
                                wait()
                        end
                end))
                for i = 200, 270, 35 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        wait()
                end
                coroutine.resume(coroutine.create(function()
                        for i = 270, 180, -30 do
                                grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0)--(math.sin(i/59)/6)
                                wait()
                        end
                end))
                coroutine.resume(coroutine.create(function()
                        for i = .45, 0, -.15 do
                                RABW2.C1 = CFrame.new(0, 0.5 + i, 0) * CFrame.Angles(RABW2.C1:toEulerAnglesXYZ())
                                wait()
                        end
                end))
                for i = 90, 30, -15 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
                RABW2.C1 = CFrame.new(0, 0.5, math.sin(30/29)/6) * CFrame.Angles(-math.rad(30), 0, 0)
        end))
        for i = 90, -30, -30 do
                wait()
        end
        for i = 180, 200, 10 do
                wait()
        end
        wait(.1)
        for i = -30, 90, 60 do
                for _, part in pairs(FindAllParts(char)) do
                        if (part.Position - blade.Position).magnitude < 2 then
                                if getHum(part.Parent) then
                                        local hum = getHum(part.Parent)
                                        dmg(hum, 20, 40)
                                        dmgdeb(0.2)
                                        PlaySound("splat", 0.6)
                                end
                        end
                end
                wait()
        end
        for i = 200, 270, 35 do
                wait()
        end
        for i = 270, 180, -30 do
                wait()
        end
        able = true
        wait(.5)
        oable = true
end
 
function slice()
        coroutine.resume(coroutine.create(function()
                for i = 0, 60, 15 do
                        RABW2.C1 = CFrame.new(.3, math.sin(i/29)/6 + .1, 0) * CFrame.Angles(-math.rad(90),math.rad(i), 0)
                        wait()
                end
                wait(.1)
                PlaySound("slash", math.random(1700,1900)/1000)
                wait(.1)
                for i = 60, -60, -30 do
                        RABW2.C1 = CFrame.new(.25, math.sin(-i/29)/6 + 1, 0) * CFrame.Angles(-math.rad(90),math.rad(i), 0)
                        wait()
                end
        end))
        coroutine.resume(coroutine.create(function()
                for i = 180, 270, 30 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), -math.rad(i),0) --(math.sin(i/59)/6)
                        wait()
                end
        end))
        for i = 0, 150, 15 do
                wait()
        end
        for i = 0, 180, 30 do
                for _, v in pairs(game.Workspace:GetChildren()) do
                        if getHum(v)~=nil then
                                if v:findFirstChild("Torso")~=nil then
                                        if (v.Torso.Position - blade.Position).magnitude < 2 then
                                                local hum = getHum(v)
                                                dmg(hum, 45, 60 - (v.Torso.Position - blade.Position).magnitude *5)
                                                PlaySound("hitsound", 1.5)
                                        end
                                end
                        end
                end
                wait()
        end
        wait(.3)
        for i = -60, 0, 30 do
                RABW2.C1 = CFrame.new(0, math.sin(i/29)/6 + 0.5, 0) * CFrame.Angles(-math.rad(90), math.rad(i), 0)
                wait()
        end
        for i = 270, 180, -30 do
                grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                wait()
        end
end
 
function select(mouse)
        RABW2.Part1 = Rarm
        LABW2.Part1 = nil
        RLBW2.Part1 = nil
        LLBW2.Part1 = nil
        unsheath()
        char.Humanoid.WalkSpeed = 20
        mouse.Button1Down:connect(function()
                if able then
                        able = false
                        slash(mouse.Hit.p)
                        able = true
                end
        end)
        mouse.KeyDown:connect(function(key)
                if able then
                        key = key:lower()
                        if key == "z" then
                                able = false
                                slash(mouse.Hit.p)
                                able = true
                        elseif key == "x" then
                                if able and oable then
                                        able = false
                                        oable = false
                                        stab(mouse.Hit.p)
                                end
                        elseif key == "c" then
                                able = false
                                slice(mouse.Hit.p)
                                able = true
                        end
                end
        end)
end
 
function deselect()
        char.Humanoid.WalkSpeed = 16
        sheath()
        RABW2.Part1 = nil
        LABW2.Part1 = nil
        RLBW2.Part1 = nil
        LLBW2.Part1 = nil
end
 
bin.Selected:connect(select)
bin.Deselected:connect(deselect)
