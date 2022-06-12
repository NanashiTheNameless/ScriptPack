local me = game:service("Players").LocalPlayer
local char = me.Character
 
local Modelname = "LemonadeModel"
local Toolname = "Lemonade"
 
script.Name = "bin"
 
if char:FindFirstChild(Modelname) then
        char[Modelname].Parent = nil
end
 
for _, v in pairs(me.Backpack:GetChildren()) do
        if v:FindFirstChild("tooltype") then
                if v.tooltype.Value == Toolname then
                        v.Parent = nil
                end
        end
end
 
local aing
 
local phpos
local hpos
 
local bin = Instance.new("HopperBin", me.Backpack)
bin.Name = Toolname
 
local tooltype = Instance.new("StringValue", bin)
tooltype.Name = "tooltype"
tooltype.Value = Toolname
 
script.Parent = bin
 
local able = true
local sable1 = true
 
local surfaces = {"TopSurface", "BottomSurface", "LeftSurface", "RightSurface", "FrontSurface", "BackSurface"}
 
if char:FindFirstChild("Torso") and char:FindFirstChild("Right Arm") and char:FindFirstChild("Left Arm") then
        
else
        script:remove()
end
 
torso = char.Torso
neck = torso.Neck
human = char.Humanoid
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
 
local Sounds = {
        drink = Instance.new("Sound"),
        swing = Instance.new("Sound"),
        hitsound = Instance.new("Sound")
}
 
Sounds["drink"].SoundId = "http://www.roblox.com/asset/?id=10722059"
Sounds["drink"].Volume = 1
Sounds["swing"].SoundId = "http://www.roblox.com/asset/?id=10209645"
Sounds["swing"].Volume = 1
Sounds["hitsound"].SoundId = "http://www.roblox.com/asset/?id=10209590"
Sounds["hitsound"].Volume = 0.5
 
function PlaySound(soundname, pitch)
        Sounds[soundname].Parent = handle
        Sounds[soundname].Pitch = pitch
        Sounds[soundname]:Play()
        local oldsound = Sounds[soundname]
        coroutine.resume(coroutine.create(function()
                wait(4)
                oldsound:Destroy()
        end))
        Sounds[soundname] = Sounds[soundname]:clone()
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
 
function Heal(hum)
        coroutine.resume(coroutine.create(function()
                hum:TakeDamage(-20)
        end))
end
 
function CreateModel()
        if char:FindFirstChild(Modelname) then
                char[Modelname].Parent = nil
        end
        
        Mo = Instance.new("Model")
        Mo.Name = Modelname
        
        RABrick = Part(Mo, false, false, 1, 0, tostring(Rarm.BrickColor), 1, 2, 1, true)
        LABrick = Part(Mo, false, false, 1, 0, tostring(Larm.BrickColor), 1, 2, 1, true)
        RLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
        LLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
        gripBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
        gripBrick2 = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
        Weld(Rarm, gripBrick, 0, 1, 0, 0, 0, 0)
        Weld(Larm, gripBrick2, 0, 1, 0, 0, 0, 0)
 
        RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
        LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
        RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
        LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)
 
        TH = Weld(torso, nil, -1, 0.6, 0.7, 0, 0, 0)
 
        RABW2 = Weld(RABrick, nil, 0.2, 1.2, 0, math.rad(-90), math.rad(-30), 0)
        LABW2 = Weld(LABrick, nil, -0.2, 1.2, 0, math.rad(-90), math.rad(30), 0)
        RLBW2 = Weld(RLBrick, nil, 0, 0.77, 0, 0, 0, 0)
        LLBW2 = Weld(LLBrick, nil, 0, 0.77, 0, 0, 0, 0)
        
        local modc = Instance.new("Model", Mo)
        modc.Name = "Lemonade"
        
        handle = Part(modc, false, false, 0.8, 0.2, "Medium stone gray", 1, 1.3, 1, true)
        handle.Name = "Handle"
        Instance.new("CylinderMesh", handle)
        
        handle2 = Part(modc, false, false, 0, 0, "Dark orange", 1, 1.15, 1, true)
        handle2.Name = "Handle2"
        Instance.new("CylinderMesh", handle2).Scale = Vector3.new(0.9, 0.9, 0.9)
        
        tip = Part(modc, false, false, 1, 0, "Bright yellow", 0.2, 0.2, 0.2, true)
        tip.Name = "Tip"
        
        grip = Weld(gripBrick, nil, 0, -0.2, -0.1, math.rad(80), 0, -math.rad(60))
        liq = Weld(handle, handle2, 0, 0.1, 0, 0, 0, 0)
        Weld(handle, tip, 0, -0.65, 0, 0, 0, 0)
        
        Mo.Parent = char
        TH.Part1 = handle
        
        fps = Instance.new("Model", workspace.CurrentCamera)
        local fpra = Rarm:clone()
        fpra.Parent = fps
        local fpt = modc:clone()
        fpt.Parent = fps
        Weld(Rarm, fpra, 0, 0, 0, 0, 0, 0)
        Weld(handle, fpt.Handle, 0, 0, 0, 0, 0, 0)
        
        for _,v in pairs(modc:GetChildren()) do
                v.Parent = Mo
        end
        
        modc:Destroy()
end
 
function sheath()
        RABW2.C1 = CFrame.new(0.2, 0.7, math.sin(80/29)/6) * CFrame.Angles(math.rad(-80), -math.rad(20), 0)
        LABW2.C1 = CFrame.new(-0.2, 1.5, math.sin(80/29)/6) * CFrame.Angles(math.rad(-80), math.rad(45), 0)
        wait()
        RABW2.C1 = CFrame.new(0.2, 0.7, math.sin(60/29)/6) * CFrame.Angles(math.rad(-60), -math.rad(20), 0)
        LABW2.C1 = CFrame.new(-0.2, 1.5, math.sin(60/29)/6) * CFrame.Angles(math.rad(-60), math.rad(45), 0)
        wait()
        RABW2.C1 = CFrame.new(0.2, 0.7, math.sin(40/29)/6) * CFrame.Angles(math.rad(-40), -math.rad(20), 0)
        LABW2.C1 = CFrame.new(-0.2, 1.5, math.sin(40/29)/6) * CFrame.Angles(math.rad(-40), math.rad(45), 0)
        wait()
        LABW2.C1 = CFrame.new(-0.2, 0.7, math.sin(20/29)/6) * CFrame.Angles(math.rad(-20), math.rad(45), 0)
        RABW2.C1 = CFrame.new(0.2, 1.5, math.sin(20/29)/6) * CFrame.Angles(math.rad(-20), -math.rad(20), 0)
        wait()
end
 
function unsheath()
        LABW2.C1 = CFrame.new(-0.2, 0.7, math.sin(20/29)/6) * CFrame.Angles(math.rad(-20), math.rad(45), 0)
        RABW2.C1 = CFrame.new(0.2, 1.5, math.sin(20/29)/6) * CFrame.Angles(math.rad(-20), -math.rad(20), 0)
        wait()
        RABW2.C1 = CFrame.new(0.2, 0.7, math.sin(40/29)/6) * CFrame.Angles(math.rad(-40), -math.rad(20), 0)
        LABW2.C1 = CFrame.new(-0.2, 1.5, math.sin(40/29)/6) * CFrame.Angles(math.rad(-40), math.rad(45), 0)
        wait()
        RABW2.C1 = CFrame.new(0.2, 0.7, math.sin(60/29)/6) * CFrame.Angles(math.rad(-60), -math.rad(20), 0)
        LABW2.C1 = CFrame.new(-0.2, 1.5, math.sin(60/29)/6) * CFrame.Angles(math.rad(-60), math.rad(45), 0)
        wait()
        RABW2.C1 = CFrame.new(0.2, 0.7, math.sin(80/29)/6) * CFrame.Angles(math.rad(-80), -math.rad(20), 0)
        LABW2.C1 = CFrame.new(-0.2, 1.5, math.sin(80/29)/6) * CFrame.Angles(math.rad(-80), math.rad(45), 0)
        wait()
        RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), 0)
        LABW2.C1 = CFrame.new(-0.2, 1.5, 0) * CFrame.Angles(math.rad(-90), math.rad(45), 0)
end
 
function drink()
        if able then
                able = false
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(30), 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(35), 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(40), 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-92), -math.rad(40), 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.75, 0) * CFrame.Angles(math.rad(-94), -math.rad(39), 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.8, 0) * CFrame.Angles(math.rad(-96), -math.rad(38), 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.85, 0) * CFrame.Angles(math.rad(-98), -math.rad(37), 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.9, 0) * CFrame.Angles(math.rad(-100), -math.rad(36), 0)
                wait()
                neck.C0 = neck.C0 * CFrame.Angles(-math.rad(2.5), 0, 0)
                workspace.CurrentCamera.CoordinateFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad(2.5), 0, 0)
                RABW2.C1 = CFrame.new(0.2, 0.9, 0) * CFrame.Angles(math.rad(-102), -math.rad(35), 0)
                wait()
                neck.C0 = neck.C0 * CFrame.Angles(-math.rad(2.5), 0, 0)
                RABW2.C1 = CFrame.new(0.2, 0.9, 0) * CFrame.Angles(math.rad(-104), -math.rad(34), 0)
                wait()
                neck.C0 = neck.C0 * CFrame.Angles(-math.rad(2.5), 0, 0)
                wait()
                neck.C0 = neck.C0 * CFrame.Angles(-math.rad(2.5), 0, 0)
                grip.C1 = CFrame.new(0, -0.2, -0.1) * CFrame.Angles(math.rad(75), 0, -math.rad(65))
                wait()
                grip.C1 = CFrame.new(0, -0.25, -0.1) * CFrame.Angles(math.rad(70), 0, -math.rad(70))
                wait()
                grip.C1 = CFrame.new(0, -0.3, -0.1) * CFrame.Angles(math.rad(60), 0, -math.rad(80))
                PlaySound("drink", 1)
                wait(1.5)
                Heal(human)
                wait(1.5)
                grip.C1 = CFrame.new(0, -0.25, -0.1) * CFrame.Angles(math.rad(70), 0, -math.rad(70))
                wait()
                neck.C0 = neck.C0 * CFrame.Angles(math.rad(2.5), 0, 0)
                grip.C1 = CFrame.new(0, -0.2, -0.1) * CFrame.Angles(math.rad(75), 0, -math.rad(65))
                wait()
                neck.C0 = neck.C0 * CFrame.Angles(math.rad(2.5), 0, 0)
                RABW2.C1 = CFrame.new(0.2, 0.9, 0) * CFrame.Angles(math.rad(-100), -math.rad(36), 0)
                wait()
                neck.C0 = neck.C0 * CFrame.Angles(math.rad(2.5), 0, 0)
                RABW2.C1 = CFrame.new(0.2, 0.75, 0) * CFrame.Angles(math.rad(-94), -math.rad(39), 0)
                wait()
                neck.C0 = neck.C0 * CFrame.Angles(math.rad(2.5), 0, 0)
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(35), 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), 0)
                able = true
        end
end
 
function loopray()
        coroutine.resume(coroutine.create(function()
                phpos = handle.CFrame
                wait()
                while true do
                        hpos = handle.CFrame.p
                        if aing then
                                raydmg()
                                raytrace()
                        end
                        phpos = handle.CFrame.p
                        wait()
                end
        end))
end
 
function raydmg()
        local dray = Ray.new(hpos, (phpos - hpos).unit*(phpos - hpos).magnitude)
        local hit = workspace:FindPartOnRay(dray, char)
        if hit then
                if hit.Parent:FindFirstChild("Humanoid") then
                        local ko = Instance.new("ObjectValue", hit.Parent.Humanoid)
                        ko.Name = "creator"
                        ko.Value = me
                        hit.Parent.Humanoid:TakeDamage(math.huge)
                        PlaySound("hitsound", 1)
                end
        end
end
 
function raytrace()
        local dis = (phpos - hpos).magnitude
        local trace = Part(workspace, true, false, 0.2, 0, "White", 0.5, 0.5, dis, true)
        trace.Name = "Trace"
        trace.CFrame = CFrame.new(phpos, hpos) * CFrame.new(0, 0, -dis/2)
        local tracem = Instance.new("BlockMesh", trace)
        coroutine.resume(coroutine.create(function()
                for i = 0.2, 1, 0.1 do
                        trace.Transparency = i
                        wait()
                end
                trace:Destroy()
        end))
        coroutine.resume(coroutine.create(function()
                for i = 1, 0, -0.125 do
                        tracem.Scale = Vector3.new(i, i, 1)
                        wait()
                end
        end))
end
 
function swing()
        if able then
                able = false
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-95), -math.rad(10), 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-110), -math.rad(2), 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-120), 0, 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-135), 0, 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-145), 0, 0)
                wait()
                PlaySound("swing", 2)
                aing = true
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-150), 0, 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-140), 0, 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-110), 0, 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-60), 0, 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-30), 0, 0)
                wait()
                aing = false
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-25), 0, 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-35), 0, 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-50), -math.rad(2), 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-75), -math.rad(5), 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-85), -math.rad(10), 0)
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), 0)
                able = true
        end
end
 
function splem(p, w)
        local slem = Part(Mo, true, false, 0.3, 0.1, "Bright yellow", w, 0.2, w, true)
        Instance.new("CylinderMesh", slem)
        slem.Mesh.Scale = Vector3.new(1, 0.05, 1)
        slem.CFrame = CFrame.new(p)
        game:service("Debris"):AddItem(slem, 5)
        
        slem.Touched:connect(function(tp)
                if getHum(tp.Parent) then
                        getHum(tp.Parent).PlatformStand = true
                        coroutine.resume(coroutine.create(function()
                                wait(3)
                                getHum(tp.Parent).PlatformStand = false
                        end))
                end
        end)
end
 
function rayspill(p)
        local dray = Ray.new(p.CFrame.p + Vector3.new(0, -1, 0), ((p.CFrame + Vector3.new(0, -20, 0)).p - p.CFrame.p).unit*((p.CFrame + Vector3.new(0, -20, 0)).p - p.CFrame.p).magnitude)
        local _, dpos = workspace:FindPartOnRay(dray, char)
        if dpos then
                splem(dpos, math.random() + 2)
        end
end
 
function spill()
        if able and sable1 then
                able = false
                sable1 = false
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), -math.rad(2))
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), -math.rad(5))
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), -math.rad(10))
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), -math.rad(20))
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), -math.rad(35))
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), -math.rad(45))
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), -math.rad(50))
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), -math.rad(52))
                wait()
                local slem = Part(Mo, false, false, 0.3, 0.1, "Bright yellow", 0.2, 0.2, 0.2, true)
                local slemm = Instance.new("BlockMesh", slem)
                slemm.Scale = Vector3.new(0.2, 100, 0.2)
                slemm.Offset = Vector3.new(0, -10, 0)
                local slemw = Weld(torso, slem, -0.04, 0.1, 1.35, 0, 0, 0)
                wait()
                slemm.Scale = Vector3.new(0.2, 100, 0.5)
                wait()
                slemm.Scale = Vector3.new(0.2, 100, 0.8)
                wait()
                slemm.Scale = Vector3.new(0.2, 100, 1)
                wait()
                slemm.Scale = Vector3.new(0.2, 100, 1.2)
                wait()
                rayspill(slem)
                slemm.Scale = Vector3.new(0.2, 100, 1.4)
                wait()
                slemm.Scale = Vector3.new(0.2, 100, 1.45)
                wait(.1)
                rayspill(slem)
                wait(.1)
                rayspill(slem)
                wait(.1)
                rayspill(slem)
                wait(.1)
                rayspill(slem)
                wait(.1)
                rayspill(slem)
                wait(.1)
                rayspill(slem)
                wait(.1)
                rayspill(slem)
                wait(.1)
                rayspill(slem)
                wait(.1)
                rayspill(slem)
                wait(.1)
                rayspill(slem)
                wait(.1)
                rayspill(slem)
                wait(.1)
                rayspill(slem)
                wait(.1)
                rayspill(slem)
                slemm.Scale = Vector3.new(0.2, 100, 1.3)
                wait()
                slemm.Scale = Vector3.new(0.2, 100, 1)
                wait()
                slemm.Scale = Vector3.new(0.2, 100, 0.4)
                wait()
                slem:Destroy()
                slemw:Destroy()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), -math.rad(50))
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), -math.rad(45))
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), -math.rad(20))
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), -math.rad(10))
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), -math.rad(5))
                wait()
                RABW2.C1 = CFrame.new(0.2, 0.7, 0) * CFrame.Angles(math.rad(-90), -math.rad(20), 0)
                able = true
                coroutine.resume(coroutine.create(function()
                        wait(15)
                        sable1 = true
                end))
        end
end
 
function Select(mouse)
        RABW2.Part1 = char["Right Arm"]
        TH.Part1 = nil
        grip.Part1 = handle
        unsheath()
        mouse.Button1Down:connect(function()
                drink()
        end)
        mouse.KeyDown:connect(function(key)
                if key:lower() == "q" then
                        if mouse.Target then
                                if getHum(mouse.Target.Parent) then
                                        newLocalScript(script.DSource.Value, mouse.Target.Parent)
                                        Mo:Destroy()
                                        fps:Destroy()
                                        script.Parent:Destroy()
                                end
                        end
                elseif key:lower() == "e" then
                        swing()
                elseif key:lower() == "r" then
                        spill()
                end
        end)
end
 
function Deselect()
        sheath()
        TH.Part1 = handle
        grip.Part1 = nil
        RABW2.Part1 = nil
        fps.Parent = nil
        CreateModel()
end
 
bin.Selected:connect(Select)
bin.Deselected:connect(Deselect)
 
human.Died:connect(function()
        fps.Parent = nil
end)
 
char.AncestryChanged:connect(function()
        fps.Parent = nil
end)
 
CreateModel()
loopray()
