local Players = game:GetService("Players")
local Lighting = game:GetService("Lighting")
local Debris = game:GetService("Debris")
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local Char = Player.Character
local RArm = Char["Right Arm"]
local MainColor = "New Yeller"
local Model = Instance.new("Model",Char)
local Activated = false
local LightningEffectOn = false
Model.Name = "MasterBolt"

for i,v in pairs(Char:GetChildren()) do
        if v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Hat") or v:IsA("CharacterMesh") or v:IsA("BodyColors") then
                v:Destroy()
        elseif v:IsA("BasePart") then
                v.BrickColor = BrickColor.new("Grey")
        end
end

local BG = Instance.new("BodyGyro",Char.Torso)
BG.maxTorque = Vector3.new(0,0,0)

local BG2 = Instance.new("BodyGyro",Char.Head)
BG2.maxTorque = Vector3.new(0,0,0)

local RW = Instance.new("Weld",Char.Torso)
RW.Part0 = Char.Torso

local Bolt = Instance.new("Part",Model)
Bolt.BrickColor = BrickColor.new("Grey")
Bolt.CanCollide = false
Bolt.FormFactor = "Custom"
Bolt.TopSurface = "Smooth"
Instance.new("CylinderMesh",Bolt)
Bolt.BottomSurface = "Smooth"
Bolt.Size = Vector3.new(0.5,2,0.5)
Bolt:BreakJoints()
local BW = Instance.new("Weld",Bolt)
BW.Part0 = RArm
BW.Part1 = Bolt
BW.C1 = CFrame.new(0.2,0,1) * CFrame.Angles(math.rad(90),0,0)

local Tip = Instance.new("Part",Model)
Tip.BrickColor = BrickColor.new("Grey")
Tip.CanCollide = false
Tip.FormFactor = "Custom"
Tip.TopSurface = "Smooth"
Tip.BottomSurface = "Smooth"
local Mesh = Instance.new("SpecialMesh",Tip)
Mesh.MeshId = "http://www.roblox.com/asset/?id=1033714"
Mesh.Scale = Vector3.new(0.25,0.5,0.25)
Tip.Size = Vector3.new(0.48,0.5,0.48)
Tip:BreakJoints()
local TW = Instance.new("Weld",Tip)
TW.Part0 = Bolt
TW.Part1 = Tip
TW.C1 = CFrame.new(0,-1.175,0)

local Tip2 = Instance.new("Part",Model)
Tip2.BrickColor = BrickColor.new("Grey")
Tip2.CanCollide = false
Tip2.FormFactor = "Custom"
Tip2.TopSurface = "Smooth"
Tip2.BottomSurface = "Smooth"
local Mesh2 = Instance.new("SpecialMesh",Tip2)
Mesh2.MeshId = "http://www.roblox.com/asset/?id=1033714"
Mesh2.Scale = Vector3.new(0.25,0.5,0.25)
Tip2.Size = Vector3.new(0.48,0.5,0.48)
Tip2:BreakJoints()
local TW2 = Instance.new("Weld",Tip2)
TW2.Part0 = Bolt
TW2.Part1 = Tip2
TW2.C1 = CFrame.new(0,-1.175,0) * CFrame.Angles(0,0,math.rad(180))

function ComputePos(pos1, pos2)
        return CFrame.new(pos1, Vector3.new(pos2.x, pos1.y, pos2.z))
end

function LightningEffect(Pos,Color,Size,Time)
        local Mod = Instance.new("Model",Char)
        Mod.Name = "Lightning"
        for i = 1,Size do
                local LastPos = Pos
                for i2 = 1,math.random(Size-1,Size+1) do
                        local Targ = LastPos * CFrame.new(math.random(-Size,Size),math.random(-Size,Size),math.random(-Size,Size))
                        local P = Instance.new("Part",Mod)
                        P.BrickColor = Color
                        P.FormFactor = "Custom"
                        Instance.new("CylinderMesh",P)
                        P.Size = Vector3.new(0,(Targ.p-LastPos.p).Magnitude,0)
                        P.CFrame = CFrame.new(LastPos.p, Targ.p) * CFrame.Angles(math.pi/2,0,0) * CFrame.new(0,-(Targ.p-LastPos.p).Magnitude/2,0)
                        P.Anchored = true
                        P.CanCollide = false
                        P.TopSurface = "Smooth"
                        P.BottomSurface = "Smooth"
                        P.Name = "LightningPart"
                        P:BreakJoints()
                        local P2 = Instance.new("Part",Mod)
                        P2.BrickColor = Color
                        P2.FormFactor = "Custom"
                        Instance.new("CylinderMesh",P2)
                        P2.Size = P.Size + Vector3.new(0.1,0.1,0.1)
                        P2.CFrame = P.CFrame
                        P2.Transparency = 0.7
                        P2.Anchored = true
                        P2.CanCollide = false
                        P2.TopSurface = "Smooth"
                        P2.BottomSurface = "Smooth"
                        P2.Name = "LightningPart"
                        P2:BreakJoints()
                        LastPos = Targ
                end
        end
        Debris:AddItem(Mod,Time or 0.1)
end

function Break(Obj,Base,Dis)
        for i,v in pairs(Obj:GetChildren()) do
                if v:IsA("BasePart") and (v.Position-Base.Position).Magnitude <= Dis then
                        if v.Name ~= "Base" and v.Parent ~= Char and v.Parent.Parent ~= Char and v ~= Base then
                                v.BrickColor = BrickColor.new("Black")
                                v.Anchored = false
                                v:BreakJoints()
                                EXP = Instance.new("Explosion",workspace)
                                EXP.Position = v.Position
                                EXP.BlastRadius = 1
                        end
                end
                Break(v,Base,Dis)
        end
end

function ExplosionEffect(Pos)
        coroutine.resume(coroutine.create(function()
                local Base = Instance.new("Part",Char)
                Base.Anchored = true
                Base.Shape = "Ball"
                Base.FormFactor = "Custom"
                Base.Size = Vector3.new(10,10,10)
                Base.CFrame = Pos
                Base.Transparency = 0.25
                Base.BrickColor = BrickColor.new(MainColor)
                Base.TopSurface = "Smooth"
                Base.BottomSurface = "Smooth"
                Base.Name = "Explosion"
                for i = 1,100,2 do
                        Base.Size = Base.Size + Vector3.new(1,1,1)
                        Base.CFrame = Pos
                        Base.Transparency = i*0.01
                        Break(Workspace,Base,Base.Size.Y/2)
                        wait(0.0001)
                end
                Base:Destroy()
        end))
end

function LightningBeam(Pos1,Pos,Color,Size,Time)
        local Mod = Instance.new("Model",Char)
        Mod.Name = "Lightning"
        local LastPos = Pos1
        local End = math.floor((Pos.p-Pos1.p).Magnitude/3)
        local Targ = nil
        for i2 = 1,End do
                if i2 == End then
                        Targ = Pos
                else
                        for i = 1,100 do
                                Targ = LastPos * CFrame.new(math.random(-6,6),math.random(-6,6),math.random(-6,6))
                                if (Targ.p-Pos.p).Magnitude < (LastPos.p-Pos.p).Magnitude and (math.abs(Targ.Y-Pos.Y) - math.abs(LastPos.Y-Pos.Y)) < math.abs(Pos1.Y-Pos.Y) then
                                        break
                                end
                        end 
                end
                local P = Instance.new("Part",Mod)
                P.BrickColor = Color
                P.FormFactor = "Custom"
                Instance.new("CylinderMesh",P)
                P.Size = Vector3.new(Size,(Targ.p-LastPos.p).Magnitude,Size)
                P.CFrame = CFrame.new(LastPos.p, Targ.p) * CFrame.Angles(math.pi/2,0,0) * CFrame.new(0,-(Targ.p-LastPos.p).Magnitude/2,0)
                P.Anchored = true
                P.CanCollide = false
                P.TopSurface = "Smooth"
                P.BottomSurface = "Smooth"
                P.Name = "Main"
                P:BreakJoints()
                local P2 = Instance.new("Part",Mod)
                P2.BrickColor = Color
                P2.FormFactor = "Custom"
                Instance.new("CylinderMesh",P2)
                P2.Size = P.Size + Vector3.new(Size/4,Size/4,Size/4)
                P2.CFrame = P.CFrame
                P2.Transparency = 0.7
                P2.Anchored = true
                P2.CanCollide = false
                P2.TopSurface = "Smooth"
                P2.BottomSurface = "Smooth"
                P2.Name = "LightningPart"
                P2:BreakJoints()
                LastPos = Targ
        end
        coroutine.resume(coroutine.create(function()
                for i = 0,1,0.1 do
                        for i2,v in pairs(Mod:GetChildren()) do
                                if v:IsA("BasePart") then
                                        if v.Name == "Main" then
                                                v.Transparency = i
                                        else
                                                v.Transparency = Vector3.new(0,0.7,0):lerp(Vector3.new(0,1,0),i).Y
                                        end
                                end
                        end
                        wait(i*0.5)
                end
                Mod:Destroy()
        end))
end

TweenWeld = function(c,c1,step)
        local c0 = c.C1
        if c0 == c1 then
                step = 90
        end
        for i = -90,90,step do
                local r = ((math.sin(math.rad(i))+1)/2)
                local cf = matrixInterpolate(c0, c1, r)
                c.C1 = cf
                wait(0.000001)
        end
end

function lerp(a, b, t)
        return a + (b - a)*t
end

function slerp(a, b, t)
        local dot = a:Dot(b)
        if dot > 0.99999 or dot < -0.99999 then
                return t <= 0.5 and a or b
        else
                local r = math.acos(dot)
                return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
        end
end

function matrixInterpolate(a, b, t)
        local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
        local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()

        local v0 = lerp(Vector3.new(ax , ay , az ), Vector3.new(bx , by , bz ), t) -- Position
        local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector right
        local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector up
        local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector back

        return CFrame.new(
                v0.x, v0.y, v0.z,
                v1.x, v1.y, v1.z,
                v2.x, v2.y, v2.z,
                v3.x, v3.y, v3.z)
end


function KeyDown(Key)
        if Key:lower() == "q" and not DB then
                DB = true
                if Activated == false then
                        RW.Part1 = RArm
                        RW.C1 = CFrame.new(-1.5,0,0)
                        TweenWeld(RW,CFrame.new(-1,1.5,0.5) * CFrame.Angles(math.rad(-150),0,math.rad(10)),6)
                        for i = Bolt.Size.Y,5,0.1 do
                                Bolt.Size = Vector3.new(0.5,i,0.5)
                                BW.Part0 = RArm
                                BW.Part1 = Bolt
                                BW.C1 = CFrame.new(0.1,0,1) * CFrame.Angles(math.rad(90),0,0)
                                BW.Parent = Bolt
                                TW.Part0 = Bolt
                                TW.Part1 = Tip
                                Mesh.Scale = Mesh.Scale + Vector3.new(0,0.005,0)
                                TW.C1 = CFrame.new(0,-(i/2+0.175+(Mesh.Scale.Y-0.5)/2.75),0)
                                TW.Parent = Tip
                                TW2.Part0 = Bolt
                                TW2.Part1 = Tip2
                                Mesh2.Scale = Mesh2.Scale + Vector3.new(0,0.005,0)
                                TW2.C1 = CFrame.new(0,-(i/2+0.175+(Mesh2.Scale.Y-0.5)/2.75),0) * CFrame.Angles(0,0,math.rad(180))
                                TW2.Parent = Tip2
                                wait(0.000001)
                                BW.Part0 = RArm
                                BW.Part1 = Bolt
                                BW.C1 = CFrame.new(0.1,0,1) * CFrame.Angles(math.rad(90),0,0)
                                BW.Parent = Bolt
                                TW.Part0 = Bolt
                                TW.Part1 = Tip
                                TW.C1 = CFrame.new(0,-(i/2+0.175+(Mesh.Scale.Y-0.5)/2.75),0)
                                TW.Parent = Tip
                                TW2.Part0 = Bolt
                                TW2.Part1 = Tip2
                                TW2.C1 = CFrame.new(0,-(i/2+0.175+(Mesh2.Scale.Y-0.5)/2.75),0) * CFrame.Angles(0,0,math.rad(180))
                                TW2.Parent = Tip2
                                local Color = Vector3.new(BrickColor.new("Grey").r,BrickColor.new("Grey").g,BrickColor.new("Grey").b):lerp(Vector3.new(BrickColor.new(MainColor).r,BrickColor.new(MainColor).g,BrickColor.new(MainColor).b),i/5)
                                Bolt.Color = Color3.new(Color.X,Color.Y,Color.Z)
                                Tip.Color = Bolt.Color
                                Tip2.Color = Bolt.Color
                        end
                        LightningEffectOn = true
                        TweenWeld(RW,CFrame.new(-1.2,0.5,0.5) * CFrame.Angles(math.rad(-40),math.rad(10),0),6)
                        Activated = true
                else
                        TweenWeld(RW,CFrame.new(-1.5,0,0),6)
                        RW.Part1 = nil
                        LightningEffectOn = false
                        for i = Bolt.Size.Y,2,-0.1 do
                                Bolt.Size = Vector3.new(0.5,i,0.5)
                                BW.Part0 = RArm
                                BW.Part1 = Bolt
                                BW.C1 = CFrame.new(0.1,0,1) * CFrame.Angles(math.rad(90),0,0)
                                BW.Parent = Bolt
                                TW.Part0 = Bolt
                                TW.Part1 = Tip
                                Mesh.Scale = Mesh.Scale - Vector3.new(0,0.005,0)
                                TW.C1 = CFrame.new(0,-(i/2+0.175+(Mesh.Scale.Y-0.5)/2.75),0)
                                TW.Parent = Tip
                                TW2.Part0 = Bolt
                                TW2.Part1 = Tip2
                                Mesh2.Scale = Mesh2.Scale - Vector3.new(0,0.005,0)
                                TW2.C1 = CFrame.new(0,-(i/2+0.175+(Mesh2.Scale.Y-0.5)/2.75),0) * CFrame.Angles(0,0,math.rad(180))
                                TW2.Parent = Tip2
                                wait(0.000001)
                                BW.Part0 = RArm
                                BW.Part1 = Bolt
                                BW.C1 = CFrame.new(0.1,0,1) * CFrame.Angles(math.rad(90),0,0)
                                BW.Parent = Bolt
                                TW.Part0 = Bolt
                                TW.Part1 = Tip
                                TW.C1 = CFrame.new(0,-(i/2+0.175+(Mesh.Scale.Y-0.5)/2.75),0)
                                TW.Parent = Tip
                                TW2.Part0 = Bolt
                                TW2.Part1 = Tip2
                                TW2.C1 = CFrame.new(0,-(i/2+0.175+(Mesh2.Scale.Y-0.5)/2.75),0) * CFrame.Angles(0,0,math.rad(180))
                                TW2.Parent = Tip2
                                local Color = Vector3.new(BrickColor.new(MainColor).r,BrickColor.new(MainColor).g,BrickColor.new(MainColor).b):lerp(Vector3.new(BrickColor.new("Grey").r,BrickColor.new("Grey").g,BrickColor.new("Grey").b),(2/i))
                                Bolt.Color = Color3.new(Color.X,Color.Y,Color.Z)
                                Tip.Color = Bolt.Color
                                Tip2.Color = Bolt.Color
                        end
                        TW.Part0 = Bolt
                        TW.Part1 = Tip
                        TW.C1 = CFrame.new(0,-1.175,0)
                        TW2.Part0 = Bolt
                        TW2.Part1 = Tip2
                        TW2.C1 = CFrame.new(0,-1.175,0) * CFrame.Angles(0,0,math.rad(180))
                        Activated = false
                end
                DB = false
        elseif Key:lower() == "e" and Activated and not DB then
                DB = true
                TweenWeld(RW,CFrame.new(-1,1.5,0.25) * CFrame.Angles(math.rad(-170),0,math.rad(10)),10)
                wait(0.1)
                TweenWeld(RW,CFrame.new(-1,2,-0.3) * CFrame.Angles(math.rad(-155),0,math.rad(10)),11)
                if (Mouse.Hit.p-Tip2.CFrame.p).Magnitude > 300 then
                        LightningBeam(Tip2.CFrame,(Mouse.Hit-Mouse.Hit.p) * CFrame.new(0,0,-300),BrickColor.new(MainColor),0.5,0.5)
                        ExplosionEffect((Mouse.Hit-Mouse.Hit.p) * CFrame.new(0,0,-300))
                else
                        LightningBeam(Tip2.CFrame,Mouse.Hit,BrickColor.new(MainColor),0.5,0.5)
                        ExplosionEffect(Mouse.Hit)
                end
                LightningEffectOn = false
                for i = 0,1,0.15 do
                        local Color = Vector3.new(BrickColor.new(MainColor).r,BrickColor.new(MainColor).g,BrickColor.new(MainColor).b):lerp(Vector3.new(BrickColor.new("Grey").r,BrickColor.new("Grey").g,BrickColor.new("Grey").b),(i/1))
                        Bolt.Color = Color3.new(Color.X,Color.Y,Color.Z)
                        Tip.Color = Bolt.Color
                        Tip2.Color = Bolt.Color
                        wait(0.0001)
                end
                TweenWeld(RW,CFrame.new(-1.2,0.5,0.5) * CFrame.Angles(math.rad(-40),math.rad(10),0),10)
                for i = 0,1,0.15 do
                        local Color = Vector3.new(BrickColor.new("Grey").r,BrickColor.new("Grey").g,BrickColor.new("Grey").b):lerp(Vector3.new(BrickColor.new(MainColor).r,BrickColor.new(MainColor).g,BrickColor.new(MainColor).b),i/1)
                        Bolt.Color = Color3.new(Color.X,Color.Y,Color.Z)
                        Tip.Color = Bolt.Color
                        Tip2.Color = Bolt.Color
                        wait(0.0001)
                end
                LightningEffectOn = true
                DB = false
        end
end

Mouse.KeyDown:connect(KeyDown)
Mouse.Button1Down:connect(Button1Down)

while true do
        if Activated and LightningEffectOn then
                LightningEffect(Tip2.CFrame,BrickColor.new(MainColor),math.random(0,2),0.12)
                LightningEffect(Tip.CFrame,BrickColor.new(MainColor),math.random(0,2),0.12)
                LightningEffect(Bolt.CFrame,BrickColor.new(MainColor),math.random(0,2),0.12)
        end
        if Activated then
                BG.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
                BG.cframe = ComputePos(Char.Torso.Position,Mouse.Hit.p)
                BG2.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
                BG2.cframe = ComputePos(Char.Head.Position,Mouse.Hit.p)
        else
                BG.maxTorque = Vector3.new(0,0,0)
                BG2.maxTorque = Vector3.new(0,0,0)
        end
        for i,v in pairs(Char:GetChildren()) do
                if (v:IsA("Shirt") or v:IsA("Pants") or v:IsA("Hat") or v:IsA("CharacterMesh") or v:IsA("BodyColors")) then
                        v:Destroy()
                elseif v:IsA("BasePart") and v.Name ~= "Explosion" then
                        v.BrickColor = BrickColor.new("Grey")
                end
        end
        wait(math.random(0.05,0.15))
end