---DuelBlade---
Players = game:GetService("Players")
 
me = Players['luxulux']
char = me.Character
 
Toolname = "Tanto"
Modelname = "Tanto"
 
selected = false
effect = false
hurt = false
debounce = true
able = true
charge =  false
soundable = true
cancharge = true
cam = game.Workspace.CurrentCamera
 
surfaces = {"TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "FrontSurface", "BackSurface"}
 
New = {
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
 
Sounds = {
        slash = "rbxasset://sounds//swordslash.wav",
        unsheath = "rbxasset://sounds//unsheath.wav",
        hitsound = "http://www.roblox.com/asset/?id=2801263", --0.5
        charge = "http://www.roblox.com/asset/?id=2101137", --0.5
        boom = "http://www.roblox.com/asset/?id=2691586", --0.3
        bewm = "http://www.roblox.com/asset/?id=2760979", --0.3
        splat = "http://roblox.com/asset/?id=10209590"
}
 
function EnableSound(time)
        coroutine.resume(coroutine.create(function()
                wait(time)
                soundable = true
        end))
end
 
function PlaySound(soundname, pitch)
        if soundable then
                soundable = false
                local s = New.Sound(torso, Sounds[soundname], 0.5, pitch)
                s.PlayOnRemove = true
                if pitch < 0 then
                        coroutine.resume(coroutine.create(function()
                                s.Looped = true
                                s.PlayOnRemove = false
                                wait()
                                s:Play()
                                wait(.2)
                                s.Looped = false
                                wait()
                                s:remove()
                        end))
                else
                        coroutine.resume(coroutine.create(function()
                                wait()
                                s:remove()
                                s.Looped=false
                        end))
                end
                EnableSound(0.12)
                return s
        end
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

RABrick2 = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LABrick2 = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
RLBrick2 = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LLBrick2 = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
gripBrick2 = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
Weld(Larm, gripBrick2, 0, 1, 0, 0, 0, 0)
 
RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)

RABWD = Weld(torso, RABrick2, -1.5, -0.5, 0, 0, 0, 0)
LABWD = Weld(torso, LABrick2, 1.5, -0.5, 0, 0, 0, 0)
RLBWD = Weld(torso, RLBrick2, -0.5, 1.2, 0, 0, 0, 0)
LLBWD = Weld(torso, LLBrick2, 0.5, 1.2, 0, 0, 0, 0)
 
TH = Weld(Rleg, nil, -0.6, 0, 0, math.pi/6, 0, 0)
TH2 = Weld(Lleg, nil, 0.6, 0, 0, math.pi/6, 0, 0)
 
RABW2 = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LABW2 = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLBW2 = Weld(RLBrick, nil, 0, 0.77, 0, 0, 0, 0)
LLBW2 = Weld(LLBrick, nil, 0, 0.77, 0, 0, 0, 0)

RABWD2 = Weld(RABrick2, nil, 0, 0.5, 0, 0, 0, 0)
LABWD2 = Weld(LABrick2, nil, 0, 0.5, 0, 0, 0, 0)
RLBWD2 = Weld(RLBrick2, nil, 0, 0.77, 0, 0, 0, 0)
LLBWD2 = Weld(LLBrick2, nil, 0, 0.77, 0, 0, 0, 0)
 
handle = Part(Mo, false, false, 0, 0, "Really black", 0.2, 0.6, 0.3, true)
handle.Name = "Handle"
Instance.new("BlockMesh", handle).Scale = Vector3.new(0.8, 1, 0.8)

handle2 = Part(Mo, false, false, 0, 0, "Really black", 0.2, 0.6, 0.3, true)
handle2.Name = "Handle2"
Instance.new("BlockMesh", handle2).Scale = Vector3.new(0.8, 1, 0.8)
 
guard = Part(Mo, false, false, 0, 0, "Really black", 0.35, 0.2, 0.45, true)
guard.Name = "Guard"
Instance.new("BlockMesh", guard).Scale = Vector3.new(0.8, 0.5, 0.8)

guard2 = Part(Mo, false, false, 0, 0, "Really black", 0.35, 0.2, 0.45, true)
guard2.Name = "Guard2"
Instance.new("BlockMesh", guard2).Scale = Vector3.new(0.8, 0.5, 0.8)
 
blade = Part(Mo, false, false, 0, 0.1, "Royal purple", 0.2, 4.15, 0.3, true)
blade.Name = "Blade"
Instance.new("BlockMesh", blade).Scale = Vector3.new(0.1, 1, 0.8)

blade2 = Part(Mo, false, false, 0, 0.1, "Royal purple", 0.2, 4.15, 0.3, true)
blade2.Name = "Blade2"
Instance.new("BlockMesh", blade2).Scale = Vector3.new(0.1, 1, 0.8)
 
bladetip = Part(Mo, false, false, 0, 0.1, "Royal purple", 0.2, 0.3, 0.3, true)
bladetip.Name = "Tip"
bladetipmesh = Instance.new("SpecialMesh", bladetip)
bladetipmesh.MeshType = "Wedge"
bladetipmesh.Scale = Vector3.new(0.1, 1, 0.8)

bladetip2 = Part(Mo, false, false, 0, 0.1, "Royal purple", 0.2, 0.3, 0.3, true)
bladetip2.Name = "Tip2"
bladetipmesh2 = Instance.new("SpecialMesh", bladetip2)
bladetipmesh2.MeshType = "Wedge"
bladetipmesh2.Scale = Vector3.new(0.1, 1, 0.8)
 
sheath = Part(Mo, false, false, 0, 0, "Really black", 0.3, 4, 0.4, true)
sheath.Name = "Sheath"
Instance.new("BlockMesh", sheath)

sheath2 = Part(Mo, false, false, 0, 0, "Really black", 0.3, 4, 0.4, true)
sheath2.Name = "Sheath2"
Instance.new("BlockMesh", sheath2)
 
sheathweld = Weld(sheath, blade, 0, 0.23, 0, math.pi, 0, 0)
grip = Weld(gripBrick, nil, 0, 0, 0, -math.pi/2, 0, 0)
Weld(handle, guard, 0, -0.4, 0, 0, 0, 0)
Weld(guard, blade, 0, -1.8, 0, 0, 0, 0)
Weld(blade, bladetip, 0, -2.2, 0, 0, 0, 0)


sheathweld2 = Weld(sheath2, blade2, 0, 0.23, 0, math.pi, 0, 0)
grip2 = Weld(gripBrick2, nil, 0, 0, 0, -math.pi/2, 0, 0)
Weld(handle2, guard2, 0, -0.4, 0, 0, 0, 0)
Weld(guard2, blade2, 0, -1.8, 0, 0, 0, 0)
Weld(blade2, bladetip2, 0, -2.2, 0, 0, 0, 0)
 
Mo.Parent = char
TH.Part1 = sheath
TH2.Part1 = sheath2
 
if not script.Parent:IsA("HopperBin") then
        bin = Instance.new("HopperBin", me.Backpack)
        bin.Name = Toolname
        script.Parent = bin
end

function dmg(hum, dm1, dm2)
        local dmg = math.random(dm1, dm2)
        local ko = Instance.new("ObjectValue", hum)
        ko.Name = "creator"
        ko.Value = me
        hum.Health = hum.Health - dmg
        coroutine.resume(coroutine.create(function()
                wait()
                ko:remove()
        end))
        for i = 0, dmg/5 do
                local blood = Part(workspace, false, false, 0, 0, "Really red", 0.2, 0.2, 0.2, true)
                blood.CFrame = hum.Parent.Torso.CFrame
                blood.RotVelocity = Vector3.new(math.random(-10,10), math.random(-10,10), math.random(-10,10))
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
        return dmg
end

function infect(hit)
for i,v in pairs(hit.Parent:GetChildren()) do
if v:IsA("Humanoid") then
if v:FindFirstChild("poison") == nil then
Instance.new("BoolValue",v).Name = "poison"
 
coroutine.resume(coroutine.create(function()
for i = 1,30 do
wait()
v.Health = v.Health - 1
 
local c = p1:Clone()
c.Parent = m
c.Size = Vector3.new(0.5,0.5,0.5)
c.CFrame = v.Torso.CFrame + Vector3.new(math.random(-3,3),math.random(-3,3),math.random(-3,3))
c.Anchored = true
c.Transparency = 0.5
c.Color = Color3.new(0,0.3,0)
 
delay(0.1,function()
for i = 0.5,1,0.05 do
wait()
c.Transparency = i
end
c:Remove()
end)
 
end
v:FindFirstChild("poison"):Remove()
end))
 
end
end
end
end
 
function unsheath()
        PlaySound("unsheath", 2)
        coroutine.resume(coroutine.create(function()
                for i = 0, 0, 0 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        RABWD2.C1 = CFrame.new(3, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
                wait()
                RABW2.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(-math.rad(90), 0, 0)
                RABWD2.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(-math.rad(90), 0, 0)
        end))
        coroutine.resume(coroutine.create(function()
                wait()
                wait()
                for i = 0, 180, 30 do
                        for _, v in pairs(game.Workspace:GetChildren()) do
                                if getHum(v)~=nil then
                                        if v:findFirstChild("Torso")~=nil then
                                                if (v.Torso.Position - blade.Position).magnitude < 2 and
                                                (v.Torso.Position - blade2.Position).magnitude < 2 then
                                                        local hum = getHum(v)
                                                        dmg(hum, 4, 6)
                                                        infect(hum)
                                                        PlaySound("splat", 1.2)
                                                end
                                        end
                                end
                        end
                        wait()
                end
        end))
        wait()
        wait()
        sheathweld.Part1 = nil
        sheathweld2.Part1 = nil
        grip.Part1 = handle
        grip2.Part1 = handle2
        for i = 0, -10, -35 do
                wait()
                grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                      grip2.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
        end
end
 
function sheath()
        PlaySound("unsheath", -2)
        coroutine.resume(coroutine.create(function()
                for i = 90, 0, -15 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        RABWD2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
        end))
        coroutine.resume(coroutine.create(function()
                for i = -180, 0, 30 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        grip2.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        wait()
                end
        end))
        coroutine.resume(coroutine.create(function()
                wait()
                wait()
                for i = 0, 180, 30 do
                        for _, v in pairs(game.Workspace:GetChildren()) do
                                if getHum(v)~=nil then
                                        if v:findFirstChild("Torso")~=nil then
                                                if (v.Torso.Position - blade.Position).magnitude < 2 and
                                                (v.Torso.Position - blade2.Position).magnitude < 2 then
                                                        local hum = getHum(v)
                                                        dmg(hum, 3, 5)
                                                        infect(hum)
                                                        PlaySound("splat", 1.2)
                                                end
                                        end
                                end
                        end
                        wait()
                end
        end))
        for i = 90, 30, -15 do
                wait()
        end
        grip.Part1 = nil
        sheathweld.Part1 = blade
        grip2.Part1 = nil
        sheathweld2.Part1 = blade2
end

function freeze(m)
    local trg = m.Target
    if (trg==nil) then return end
    local phit = game.Players:findFirstChild(trg.Parent.Name)
    if (phit~=nil) then
        if (phit==p) then return end
        local char = trg.Parent
        if (char:findFirstChild("Torso")==nil) then return end
        if (char:findFirstChild("fr_block")==nil) then
            local pa = Instance.new("Part")
            local bl = Instance.new("BlockMesh")
            bl.Parent = pa
            pa.Anchored = true
            pa.Name = "fr_block"
            pa.Transparency = 1
            pa.BrickColor = BrickColor.New("Cyan")
            pa.FormFactor = "Custom"
            pa.Size = Vector3.new(6,7,6)
            pa.CFrame = char["Torso"].CFrame
            pa.Parent = char
            char.Humanoid.WalkSpeed = 0
            if (char.Humanoid.Health<char.Humanoid.MaxHealth/4) then
                char.Humanoid.Health = 0
            else
                char.Humanoid.Health = char.Humanoid.Health - char.Humanoid.MaxHealth/4
            end
            local g = char:GetChildren()
            for i = 1,#g do
                if (g[i]:IsA("Part")) then
                    g[i].Anchored = true
                    g[i].Reflectance = .3
                end
            end
            for i = 1,10 do
                pa.Transparency = pa.Transparency - .06
                pa.Reflectance = pa.Reflectance + .01
                wait(.01)
            end
        else
            if (phit~=nil) then
                local fr = char["fr_block"]
                local char = trg.Parent
                for i = 1,10 do
                    fr.Transparency = fr.Transparency + .06
                    fr.Reflectance = fr.Reflectance - .01
                    wait(.01)
                end
                local g = char:GetChildren()
                for i = 1,#g do
                    if (g[i]:IsA("Part")) then
                        g[i].Anchored = false
                        g[i].Reflectance = 0
                    end
                end
                char.Humanoid.WalkSpeed = 16
                fr:remove()
            end
        end
    end
end
 
function explode(m)
    local t = m.Hit.p
    local trg = m.Target
    if (trg==nil) then return end
    local e = Instance.new("Explosion")
    e.BlastRadius = 20
    e.BlastPressure = 20
    e.Position = t
    e.Parent = game.Workspace
end
 
function fire(m)
    local trg = m.Target
    if (trg==nil) then return end
    local phit = game.Players:findFirstChild(trg.Parent.Name)
    if (phit~=nil) then
        local char = trg.Parent
        if (char:findFirstChild("Torso")==nil) then return end
        local f = Instance.new("Fire")
        f.Color = Color3.new(0,0,0)
        f.SecondaryColor = Color3.new(0,0,0)
        f.Parent = char.Torso
        f.Name = "BurnFire"
        coroutine.resume(coroutine.create(function()
            while (char.Humanoid.Health>0) do
                if (char.Humanoid.Health<2) then
                    char.Humanoid.Health = 0
                    char:BreakJoints()
                else
                    char.Humanoid.Health = char.Humanoid.Health - 2
                end
                wait(.05)
            end
        end))
    end
end

function ghost()
        local player = game.Players.LocalPlayer
                if player == nil then return end
                player.Character:findFirstChild("Head").Transparency = 1
                player.Character:findFirstChild("Torso").Transparency = 1
                player.Character:findFirstChild("Left Arm").Transparency = 1
                player.Character:findFirstChild("Right Arm").Transparency = 1
                player.Character:findFirstChild("Left Leg").Transparency = 1
                player.Character:findFirstChild("Right Leg").Transparency = 1
                player.Character:findFirstChild("Head").face.Transparency = 1
                player.Character:findFirstChild("Tanto").Blade.Transparency = 1
                player.Character:findFirstChild("Tanto").Guard.Transparency = 1
                player.Character:findFirstChild("Tanto").Handle.Transparency = 1
                player.Character:findFirstChild("Tanto").Sheath.Transparency = 1
                player.Character:findFirstChild("Tanto").Tip.Transparency = 1
                player.Character:findFirstChild("Tanto").Blade2.Transparency = 1
                player.Character:findFirstChild("Tanto").Guard2.Transparency = 1
                player.Character:findFirstChild("Tanto").Handle2.Transparency = 1
                player.Character:findFirstChild("Tanto").Sheath2.Transparency = 1
                player.Character:findFirstChild("Tanto").Tip2.Transparency = 1
                player.Character:findFirstChild("BoneHelmet").Handle.Transparency = 1
                player.Character:findFirstChild("MessySpikes").Handle.Transparency = 1
                player.Character:findFirstChild("Snake Eyes").Handle.Transparency = 1
end

function unghost()
local player = game.Players.LocalPlayer
                if player == nil then return end
                player.Character:findFirstChild("Head").Transparency = 0
                player.Character:findFirstChild("Torso").Transparency = 0
                player.Character:findFirstChild("Left Arm").Transparency = 0
                player.Character:findFirstChild("Right Arm").Transparency = 0
                player.Character:findFirstChild("Left Leg").Transparency = 0
                player.Character:findFirstChild("Right Leg").Transparency = 0
                player.Character:findFirstChild("Head").face.Transparency = 0
                player.Character:findFirstChild("Tanto").Blade.Transparency = 0
                player.Character:findFirstChild("Tanto").Guard.Transparency = 0
                player.Character:findFirstChild("Tanto").Handle.Transparency = 0
                player.Character:findFirstChild("Tanto").Handle.Transparency = 0
                player.Character:findFirstChild("Tanto").Sheath.Transparency = 0
                player.Character:findFirstChild("Tanto").Tip.Transparency = 0
                player.Character:findFirstChild("Tanto").Blade2.Transparency = 0
                player.Character:findFirstChild("Tanto").Guard2.Transparency = 0
                player.Character:findFirstChild("Tanto").Handle2.Transparency = 0
                player.Character:findFirstChild("Tanto").Sheath2.Transparency = 0
                player.Character:findFirstChild("Tanto").Tip2.Transparency = 0
                player.Character:findFirstChild("BoneHelmet").Handle.Transparency = 0
                player.Character:findFirstChild("MessySpikes").Handle.Transparency = 0
                player.Character:findFirstChild("Snake Eyes").Handle.Transparency = 0
end

function TeleportZ(pos)

char:MoveTo(pos)

end
 
function slash()
        PlaySound("slash", math.random(1750,2000)/1000)
        coroutine.resume(coroutine.create(function()
                for i = 90, 0, -30 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        RABWD2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
                for i = 0, 90, 30 do
                        RABW2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        RABWD2.C1 = CFrame.new(0, 0.5, math.sin(i/29)/6) * CFrame.Angles(-math.rad(i), 0, 0)
                        wait()
                end
        end))
        
        for i = 0, 180, 30 do
                for _, v in pairs(game.Workspace:GetChildren()) do
                        if getHum(v)~=nil then
                                if v:findFirstChild("Torso")~=nil then
                                        if (v.Torso.Position - blade.Position).magnitude < 2 and
                                        (v.Torso.Position - blade2.Position).magnitude < 2 then
                                                local hum = getHum(v)
                                                dmg(hum, 110, 112)
                                                PlaySound("splat", 1)
                                        end
                                end
                        end
                end
                wait()
        end
end
 
function stab()
        coroutine.resume(coroutine.create(function()
                for i = 0.5, -0.3, -0.1 do
                        RABW2.C1 = CFrame.new(0, i, 0) * CFrame.Angles(-math.rad(90), 0, 0)
                        RABWD2.C1 = CFrame.new(0, i, 0) * CFrame.Angles(-math.rad(90), 0, 0)
                        wait()
                end
                for i = 180, 270, 30 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        grip2.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        wait()
                end
                wait(0.1)
                PlaySound("slash", math.random(1700,1900)/1000)
                for i = -0.25, 0.5, 0.25 do
                        RABW2.C1 = CFrame.new(0, i, 0) * CFrame.Angles(-math.rad(90), 0, 0)
                        RABWD2.C1 = CFrame.new(0, i, 0) * CFrame.Angles(-math.rad(90), 0, 0)
                        wait()
                end
                for i = 270, 180, -10 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        grip2.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                        wait()
                end
        end))
        for i = -0.3, 0.5, 0.1 do
                wait()
        end
        for i = 180, 270, 30 do
                wait()
        end
        for i = 0, 0.5, 0.25 do
                for _, v in pairs(game.Workspace:GetChildren()) do
                        if getHum(v)~=nil then
                                if v:findFirstChild("Torso")~=nil then
                                        if (v.Torso.Position - blade.Position).magnitude < 2 and
                                        (v.Torso.Position - blade2.Position).magnitude < 2 then
                                                local hum = getHum(v)
                                                dmg(hum, 10, 15)
                                                --PlaySound("hitsound", 1.2)
                                                PlaySound("splat", 0.6)
                                        end
                                end
                        end
                end
                wait()
        end
        for i = 180, 270, 30 do
                for _, v in pairs(game.Workspace:GetChildren()) do
                        if getHum(v)~=nil then
                                if v:findFirstChild("Torso")~=nil then
                                        if (v.Torso.Position - blade.Position).magnitude < 2 and
                                        (v.Torso.Position - blade2.Position).magnitude < 2 then
                                                local hum = getHum(v)
                                                dmg(hum, 1, 1)
                                        end
                                end
                        end
                end
                wait()
        end
end

function slice()
        coroutine.resume(coroutine.create(function()
                for i = 0, 60, 15 do
                        RABW2.C1 = CFrame.new(.3, math.sin(i/29)/6 + .1, 0) * CFrame.Angles(-math.rad(90), math.rad(i), 0)
                        RABWD2.C1 = CFrame.new(.3, math.sin(i/29)/6 + .1, 0) * CFrame.Angles(-math.rad(90), math.rad(i), 0)
                        wait()
                end
                wait(.1)
                PlaySound("slash", math.random(1700,1900)/1000)
                wait(.1)
                for i = 60, -60, -30 do
                        RABW2.C1 = CFrame.new(.25, math.sin(i/29)/6 + 1, 0) * CFrame.Angles(-math.rad(90), math.rad(i), 0)
                        RABWD2.C1 = CFrame.new(.25, math.sin(i/29)/6 + 1, 0) * CFrame.Angles(-math.rad(90), math.rad(i), 0)
                        wait()
                end
        end))
        coroutine.resume(coroutine.create(function()
                for i = 180, 270, 30 do
                        grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), -math.rad(i), 0) --(math.sin(i/59)/6)
                        grip2.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), -math.rad(i), 0) --(math.sin(i/59)/6)
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
                                        if (v.Torso.Position - blade.Position).magnitude < 2 and
                                        (v.Torso.Position - blade2.Position).magnitude < 2 then
                                                local hum = getHum(v)
                                                dmg(hum, 45, 60 - (v.Torso.Position - blade.Position).magnitude * 5)
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
                RABWD2.C1 = CFrame.new(0, math.sin(i/29)/6 + 0.5, 0) * CFrame.Angles(-math.rad(90), math.rad(i), 0)
                wait()
        end
        for i = 270, 180, -30 do
                grip.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                grip2.C1 = CFrame.new(0, -0.2, 0) * CFrame.Angles(math.rad(i) - math.rad(90), 0, 0) --(math.sin(i/59)/6)
                wait()
        end
end
 
function select(mouse)
        RABW2.Part1 = Rarm
        LABW2.Part1 = nil
        RLBW2.Part1 = nil
        LLBW2.Part1 = nil
        RABWD2.Part1 = Larm
        LABWD2.Part1 = nil
        RLBWD2.Part1 = nil
        LLBWD2.Part1 = nil
        unsheath()
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
                                able = false
                                stab(mouse.Hit.p)
                                able = true
                        elseif key == "c" then
                                able = false
                                slice(mouse.Hit.p)
                                able = true
                        elseif key=="t" then
                                if mouse.Target ~= nil then
                                able = false
                                TeleportZ(mouse.Hit.p)
                                able = true
                                end
                        elseif key == "v" then
                                freeze(mouse)
                        elseif key == ";" then
                                explode(mouse)
                        elseif key == "b" then
                                fire(mouse)
                        elseif key == "m" then
                                ghost()
                        elseif key == "n" then
                                unghost()
                        end
                end
        end)
end
 
function deselect()
        sheath()
        RABW2.Part1 = nil
        LABW2.Part1 = nil
        RLBW2.Part1 = nil
        LLBW2.Part1 = nil
        RABWD2.Part1 = nil
        LABWD2.Part1 = nil
        RLBWD2.Part1 = nil
        LLBWD2.Part1 = nil
end
 
bin.Selected:connect(select)
bin.Deselected:connect(deselect)

