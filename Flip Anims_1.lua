--Created by flipflop8421 (New account: Archonious2)
 
Plrs = game:GetService("Players")
ControlService = game:GetService("ControllerService")
LP = Plrs.LocalPlayer
Mouse = LP:GetMouse()
Char = LP.Character
Tor = Char.Torso
Head = Char.Head
Hum = Char.Humanoid
RJ = Char.HumanoidRootPart.RootJoint
RS = Tor["Right Shoulder"]
LS = Tor["Left Shoulder"]
RH = Tor["Right Hip"]
LH = Tor["Left Hip"]
Neck = Tor["Neck"]
MyControl = ControlService:GetChildren()[1]
Mode = "Normal"
LastJump = 0
TorWeld = nil
WasRunning = false
Running = false
WDown = false
ADown = false
SDown = false
DDown = false
 
function GetWeld(weld) 
        if weld:findFirstChild("WeldAngle") == nil then 
                local a = Instance.new("Vector3Value", weld) 
                a.Name = "WeldAngle" 
        end 
        return weld.C0.p, weld.WeldAngle.Value 
end 
 
function SetWeld(weld, i, loops, origpos, origangle, nextpos, nextangle, smooth) 
        smooth = smooth or 1 
        if weld:findFirstChild("WeldAngle") == nil then 
                local a = Instance.new("Vector3Value", weld) 
                a.Name = "WeldAngle" 
        end 
 
        local perc = (smooth == 1 and math.sin((math.pi/2)/loops*i)) or i/loops 
 
        local tox, toy, toz = 0, 0, 0 
        tox = math.abs(origangle.x - nextangle.x) *perc 
        toy = math.abs(origangle.y - nextangle.y) *perc 
        toz = math.abs(origangle.z - nextangle.z) *perc 
        tox = (origangle.x > nextangle.x and -tox) or tox 
        toy = (origangle.y > nextangle.y and -toy) or toy 
        toz = (origangle.z > nextangle.z and -toz) or toz 
 
        local tox2, toy2, toz2 = 0, 0, 0 
        tox2 = math.abs(origpos.x - nextpos.x) *perc 
        toy2 = math.abs(origpos.y - nextpos.y) *perc 
        toz2 = math.abs(origpos.z - nextpos.z) *perc 
        tox2 = (origpos.x > nextpos.x and -tox2) or tox2 
        toy2 = (origpos.y > nextpos.y and -toy2) or toy2 
        toz2 = (origpos.z > nextpos.z and -toz2) or toz2 
 
        weld.WeldAngle.Value = Vector3.new(origangle.x + tox, origangle.y + toy, origangle.z + toz) 
        weld.C0 = CFrame.new(origpos.x + tox2, origpos.y + toy2, origpos.z + toz2) * CFrame.Angles(origangle.x + tox, origangle.y + toy, origangle.z + toz) 
end
 
function RunAnimArms()
        coroutine.resume(coroutine.create(function()
                local LSPos, LSAng = GetWeld(LS)
                local RSPos, RSAng = GetWeld(RS)
                while wait(0) do
                        if Mode == "Normal" then
                                if Running == true then
                                        coroutine.resume(coroutine.create(function()
                                                LSPos, LSAng = GetWeld(LS)
                                                for i = 1, 5 do
                                                        if Running == false or Mode ~= "Normal" then
                                                                break
                                                        end
                                                        SetWeld(LS, i, 5, LSPos, LSAng, Vector3.new(-1.5, 0.35, -0.23), Vector3.new(math.rad(-67.5), 0, 0))
                                                        wait(0)
                                                end
                                                if Running == false then
                                                        return
                                                end
                                                LSPos, LSAng = GetWeld(LS)
                                                for i = 1, 5 do
                                                        if Running == false or Mode ~= "Normal" then
                                                                break
                                                        end
                                                        SetWeld(LS, i, 5, LSPos, LSAng, Vector3.new(-1.5, 0.35, -0.23), Vector3.new(math.rad(22.5), 0, 0))
                                                        wait(0)
                                                end
                                        end))
                                        RSPos, RSAng = GetWeld(RS)
                                        for i = 1, 5 do
                                                if Running == false or Mode ~= "Normal" then
                                                        break
                                                end
                                                SetWeld(RS, i, 5, RSPos, RSAng, Vector3.new(1.5, 0.35, -0.23), Vector3.new(math.rad(22.5), 0, 0))
                                                wait(0)
                                        end
                                        RSPos, RSAng = GetWeld(RS)
                                        for i = 1, 5 do
                                                if Running == false or Mode ~= "Normal" then
                                                        break
                                                end
                                                SetWeld(RS, i, 5, RSPos, RSAng, Vector3.new(1.5, 0.35, -0.23), Vector3.new(math.rad(-67.5), 0, 0))
                                                wait(0)
                                        end
                                else
                                        coroutine.resume(coroutine.create(function()
                                                LSPos, LSAng = GetWeld(LS)
                                                for i = 1, 30 do
                                                        if WDown == true or ADown == true or SDown == true or DDown == true then
                                                                Running = true
                                                                break
                                                        end
                                                        SetWeld(LS, i, 30, LSPos, LSAng, Vector3.new(-1.5, 0.5, 0), Vector3.new(0, 0, math.rad(-8.4375)))
                                                        wait(0)
                                                end
                                                LSPos, LSAng = GetWeld(LS)
                                                for i = 1, 30 do
                                                        if WDown == true or ADown == true or SDown == true or DDown == true then
                                                                Running = true
                                                                break
                                                        end
                                                        SetWeld(LS, i, 30, LSPos, LSAng, Vector3.new(-1.5, 0.5, 0), Vector3.new(0, 0, 0))
                                                        wait(0)
                                                end
                                        end))
                                        RSPos, RSAng = GetWeld(RS)
                                        for i = 1, 30 do
                                                if WDown == true or ADown == true or SDown == true or DDown == true then
                                                        Running = true
                                                        break
                                                end
                                                SetWeld(RS, i, 30, RSPos, RSAng, Vector3.new(1.5, 0.5, 0), Vector3.new(0, 0, math.rad(8.4375)))
                                                wait(0)
                                        end
                                        RSPos, RSAng = GetWeld(RS)
                                        for i = 1, 30 do
                                                if WDown == true or ADown == true or SDown == true or DDown == true then
                                                        Running = true
                                                        break
                                                end
                                                SetWeld(RS, i, 30, RSPos, RSAng, Vector3.new(1.5, 0.5, 0), Vector3.new(0, 0, 0))
                                                wait(0)
                                        end
                                end
                        end
                end
        end))
end
 
function RunAnimLegs()
        coroutine.resume(coroutine.create(function()
                local LHPos, LHAng = GetWeld(LH)
                local RHPos, RHAng = GetWeld(RH)
                while wait(0) do
                        if Mode == "Normal" then
                                if Running == true then
                                        coroutine.resume(coroutine.create(function()
                                                LHPos, LHAng = GetWeld(LH)
                                                for i = 1, 5 do
                                                        if Running == false or Mode ~= "Normal" then
                                                                break
                                                        end
                                                        SetWeld(LH, i, 5, LHPos, LHAng, Vector3.new(-0.5, -0.85, 0.5), Vector3.new(math.rad(22.5), 0, 0))
                                                        wait(0)
                                                end
                                                if Running == false then
                                                        return
                                                end
                                                LHPos, LHAng = GetWeld(LH)
                                                for i = 1, 5 do
                                                        if Running == false or Mode ~= "Normal" then
                                                                break
                                                        end
                                                        SetWeld(LH, i, 5, LHPos, LHAng, Vector3.new(-0.5, -0.85, 0.5), Vector3.new(math.rad(-67.5), 0, 0))
                                                        wait(0)
                                                end
                                        end))
                                        RHPos, RHAng = GetWeld(RH)
                                        for i = 1, 5 do
                                                if Running == false or Mode ~= "Normal" then
                                                        break
                                                end
                                                SetWeld(RH, i, 5, RHPos, RHAng, Vector3.new(0.5, -0.85, 0.5), Vector3.new(math.rad(-67.5), 0, 0))
                                                wait(0)
                                        end
                                        RHPos, RHAng = GetWeld(RH)
                                        for i = 1, 5 do
                                                if Running == false or Mode ~= "Normal" then
                                                        break
                                                end
                                                SetWeld(RH, i, 5, RHPos, RHAng, Vector3.new(0.5, -0.85, 0.5), Vector3.new(math.rad(22.5), 0, 0))
                                                wait(0)
                                        end
                                else
                                        coroutine.resume(coroutine.create(function()
                                                LHPos, LHAng = GetWeld(LH)
                                                for i = 1, 30 do
                                                        if WDown == true or ADown == true or SDown == true or DDown == true then
                                                                Running = true
                                                                break
                                                        end
                                                        SetWeld(LH, i, 30, LHPos, LHAng, Vector3.new(-0.5, -1, 0.04), Vector3.new(0, 0, math.rad(-8.4375)))
                                                        wait(0)
                                                end
                                                LHPos, LHAng = GetWeld(LH)
                                                for i = 1, 30 do
                                                        if WDown == true or ADown == true or SDown == true or DDown == true then
                                                                Running = true
                                                                break
                                                        end
                                                        SetWeld(LH, i, 30, LHPos, LHAng, Vector3.new(-0.5, -1, 0.04), Vector3.new(0, 0, 0))
                                                        wait(0)
                                                end
                                        end))
                                        RHPos, RHAng = GetWeld(RH)
                                        for i = 1, 30 do
                                                if WDown == true or ADown == true or SDown == true or DDown == true then
                                                        Running = true
                                                        break
                                                end
                                                SetWeld(RH, i, 30, RHPos, RHAng, Vector3.new(0.5, -1, 0.04), Vector3.new(0, 0, math.rad(8.4375)))
                                                wait(0)
                                        end
                                        RHPos, RHAng = GetWeld(RH)
                                        for i = 1, 30 do
                                                if WDown == true or ADown == true or SDown == true or DDown == true then
                                                        Running = true
                                                        break
                                                end
                                                SetWeld(RH, i, 30, RHPos, RHAng, Vector3.new(0.5, -1, 0.04), Vector3.new(0, 0, 0))
                                                wait(0)
                                        end
                                end
                        end
                end
        end))
end
 
function RunAnimFlip()
end
 
function RunAnimDive()
        coroutine.resume(coroutine.create(function()
                local TorPos, TorAng = GetWeld(TorWeld)
                local LHPos, LHAng = GetWeld(LH)
                local RHPos, RHAng = GetWeld(RH)
                local LSPos, LSAng = GetWeld(LS)
                local RSPos, RSAng = GetWeld(RS)
                Hum.PlatformStand = true
                local StopBV = false
                local BV = Instance.new("BodyVelocity", Tor)
                BV.maxForce = Vector3.new(1/0, 1/0, 1/0)
                BV.P = 1000
                coroutine.wrap(function()
                        while StopBV == false do
                                wait(0)
                                BV.velocity = ((Tor.CFrame * CFrame.new(0, 1e+9, 0)).p - Tor.Position).unit * 50
                        end
                end)()
                coroutine.resume(coroutine.create(function()
                        LHPos, LHAng = GetWeld(LH)
                        for i = 1, 15 do
                                SetWeld(LH, i, 15, LHPos, LHAng, Vector3.new(-0.5, 0, 0.95), Vector3.new(math.rad(-84.375), 0, math.rad(-11.25)))
                                wait(0)
                        end
                end))
                coroutine.resume(coroutine.create(function()
                        RHPos, RHAng = GetWeld(RH)
                        for i = 1, 15 do
                                SetWeld(RH, i, 15, RHPos, RHAng, Vector3.new(0.5, 0, 0.95), Vector3.new(math.rad(-84.375), 0, math.rad(11.25)))
                                wait(0)
                        end
                end))
                coroutine.resume(coroutine.create(function()
                        LSPos, LSAng = GetWeld(LS)
                        for i = 1, 15 do
                                SetWeld(LS, i, 15, LSPos, LSAng, Vector3.new(-1.5, 0, -0.5), Vector3.new(math.rad(-84.375), 0, 0))
                                wait(0)
                        end
                end))
                coroutine.resume(coroutine.create(function()
                        RSPos, RSAng = GetWeld(RS)
                        for i = 1, 15 do
                                SetWeld(RS, i, 15, RSPos, RSAng, Vector3.new(1.5, 0, -0.5), Vector3.new(math.rad(-84.375), 0, 0))
                                wait(0)
                        end
                end))
                local AttachWeld = Instance.new("Weld")
                AttachWeld.Name = "AttachWeld"
                AttachWeld.Part0 = Tor
                AttachWeld.Part1 = FakeTor
                AttachWeld.C0 = CFrame.Angles(math.rad(90), 0, 0)
                AttachWeld.Parent = Tor
                TorPos, TorAng = GetWeld(TorWeld)
                local AttachPos, AttachAng = GetWeld(AttachWeld)
                local BG = Instance.new("BodyGyro", Tor)
                BG.maxTorque = Vector3.new(1/0, 1/0, 1/0)
                BG.D = 100
                local TorsCF = Tor.CFrame
                local HitFloor = false
                coroutine.resume(coroutine.create(function()
                        while HitFloor == false do
                                local MyRay = Ray.new(Head.Position, Head.CFrame:vectorToWorldSpace(Vector3.new(0, 2, 0)) * 1)
                                local Obj, Pos = Workspace:FindPartOnRay(MyRay, Char)
                                if Obj ~= nil then
                                        HitFloor = true
                                end
                                wait(0)
                        end
                end))
                local OrigWaitNum = 5
                local NewWaitNum = 3
                local WaitNum = OrigWaitNum
                local Iter = 360/(135/OrigWaitNum)
                for i = 1, 135, WaitNum do
                        BG.cframe = TorsCF * CFrame.Angles(math.rad(-i), math.rad(Iter), 0)
                        if i <= 45 then
                                WaitNum = OrigWaitNum
                        elseif i >= 90 then
                                if WaitNum == NewWaitNum then
                                        coroutine.resume(coroutine.create(function()
                                                LSPos, LSAng = GetWeld(LS)
                                                for i = 1, 20 do
                                                        SetWeld(LS, i, 20, LSPos, LSAng, Vector3.new(-1.5, 0, -0.5), Vector3.new(math.rad(84.375), 0, 0))
                                                        wait(0)
                                                end
                                        end))
                                        coroutine.resume(coroutine.create(function()
                                                RSPos, RSAng = GetWeld(RS)
                                                for i = 1, 20 do
                                                        SetWeld(RS, i, 20, RSPos, RSAng, Vector3.new(1.5, 0, -0.5), Vector3.new(math.rad(84.375), 0, 0))
                                                        wait(0)
                                                end
                                        end))
                                end
                                WaitNum = OrigWaitNum
                        elseif i >= 45 then
                                WaitNum = NewWaitNum
                        end
                        Iter = Iter + 360/(135/OrigWaitNum)
                        wait(0)
                end
                repeat wait(0) until HitFloor == true
                StopBV = true
                wait(0)
                BV.velocity = (((Tor.CFrame * CFrame.Angles(math.rad(-22.5), 0, 0)) * CFrame.new(0, 1e+9, 1e+9)).p - (Tor.CFrame * CFrame.Angles(math.rad(-22.5), 0, 0)).p).unit * 50
                local TorsCF = Tor.CFrame
                coroutine.resume(coroutine.create(function()
                        NeckPos, NeckAng = GetWeld(Neck)
                        for i = 1, 7 do
                                SetWeld(Neck, i, 7, NeckPos, NeckAng, Vector3.new(0, 1.5, -0.75), Vector3.new(math.rad(-45), 0, 0))
                                wait(0)
                        end
                        for i = 1, 7 do
                                SetWeld(Neck, i, 7, NeckPos, NeckAng, Vector3.new(0, 2, 0), Vector3.new(0, 0, 0))
                                wait(0)
                        end
                end))
                coroutine.resume(coroutine.create(function()
                        LHPos, LHAng = GetWeld(LH)
                        for i = 1, 7 do
                                SetWeld(LH, i, 7, LHPos, LHAng, Vector3.new(-0.5, -1, 0), Vector3.new(math.rad(-90), 0, 0))
                                wait(0)
                        end
                end))
                coroutine.resume(coroutine.create(function()
                        RHPos, RHAng = GetWeld(RH)
                        for i = 1, 7 do
                                SetWeld(RH, i, 7, RHPos, RHAng, Vector3.new(0.5, -1, 0), Vector3.new(math.rad(-90), 0, 0))
                                wait(0)
                        end
                end))
                coroutine.resume(coroutine.create(function()
                        LSPos, LSAng = GetWeld(LS)
                        for i = 1, 7 do
                                SetWeld(LS, i, 7, LSPos, LSAng, Vector3.new(-1.5, 0, -0.5), Vector3.new(math.rad(-22.5), 0, math.rad(11.25)))
                                wait(0)
                        end
                end))
                coroutine.resume(coroutine.create(function()
                        RSPos, RSAng = GetWeld(RS)
                        for i = 1, 7 do
                                SetWeld(RS, i, 7, RSPos, RSAng, Vector3.new(1.5, 0, -0.5), Vector3.new(math.rad(-22.5), 0, math.rad(-11.25)))
                                wait(0)
                        end
                end))
                for i = 1, 202.5, 20 do
                        BG.cframe = TorsCF * CFrame.Angles(math.rad(-i), 0, 0)
                        wait(0)
                end
                BG:Destroy()
                TorPos, TorAng = GetWeld(TorWeld)
                NeckPos, NeckAng = GetWeld(Neck)
                LHPos, LHAng = GetWeld(LH)
                RHPos, RHAng = GetWeld(RH)
                LSPos, LSAng = GetWeld(LS)
                RSPos, RSAng = GetWeld(RS)
                AttachWeld:Destroy()
                SetWeld(TorWeld, 1, 1, TorPos, TorAng, Vector3.new(), Vector3.new()) 
                SetWeld(Neck, 1, 1, NeckPos, NeckAng, Vector3.new(0, 2, 0), Vector3.new()) 
                SetWeld(LH, 1, 1, LHPos, LHAng, Vector3.new(-0.5, 0, -1.04), Vector3.new(0, 0, 0))
                SetWeld(RH, 1, 1, RHPos, RHAng, Vector3.new(0.5, 0, -1.04), Vector3.new(0, 0, 0))
                SetWeld(LS, 1, 1, LSPos, LSAng, Vector3.new(-1.5, 0.5, 0), Vector3.new(math.rad(67.5), 0, math.rad(11.25)))
                SetWeld(RS, 1, 1, RSPos, RSAng, Vector3.new(1.5, 0.5, 0), Vector3.new(math.rad(67.5), 0, math.rad(-11.25)))
                WasRunning = false
                Mode = "Normal"
                BV.velocity = ((Tor.CFrame * CFrame.new(0, -1e+9, 0)).p - Tor.CFrame.p).unit * 50
                Hum.PlatformStand = false
                wait()
                BV:Destroy()
        end))
end
 
function RunAnimObj()
        coroutine.resume(coroutine.create(function()
                while wait(0) do
                        if Running == true and Mode == "Normal" then
                                local MyRay = Ray.new((Tor.CFrame * CFrame.Angles(math.rad(22.5), 0, 0)).p, (Tor.CFrame * CFrame.Angles(math.rad(22.5), 0, 0)):vectorToWorldSpace(Vector3.new(0, 0, -6)) * 1)
                                local Obj, Pos = Workspace:FindPartOnRay(MyRay, Char)
                                if Obj ~= nil then
                                        Mode = "Vaulting"
                                        local NeckPos, NeckAng = GetWeld(Neck)
                                        local TorPos, TorAng = GetWeld(TorWeld)
                                        local LHPos, LHAng = GetWeld(LH)
                                        local RHPos, RHAng = GetWeld(RH)
                                        local LSPos, LSAng = GetWeld(LS)
                                        local RSPos, RSAng = GetWeld(RS)
                                        Hum.PlatformStand = true
                                        local StopBG = false
                                        local StopBV = false
                                        local TorCF = Tor.CFrame * CFrame.Angles(math.rad(22.5), 0, 0)
                                        local ObjCF = Obj.CFrame * CFrame.new(0, 1e+9, 0)
                                        local BG = Instance.new("BodyGyro", Tor)
                                        BG.maxTorque = Vector3.new(1/0, 1/0, 1/0)
                                        BG.D = 100
                                        coroutine.wrap(function()
                                                while StopBG == false do
                                                        BG.cframe = TorCF * CFrame.new(0, 0, -1e+9)
                                                        wait(0)
                                                end
                                        end)()
                                        local BV = Instance.new("BodyVelocity", Tor)
                                        BV.maxForce = Vector3.new(1/0, 1/0, 1/0)
                                        BV.P = 1000
                                        coroutine.wrap(function()
                                                while StopBV == false do
                                                        BV.velocity = (TorCF.p - (TorCF * CFrame.new(0, -1e+9, 0)).p).unit * 50
                                                        wait(0)
                                                end
                                        end)()
                                        local AttachWeld = Instance.new("Weld")
                                        AttachWeld.Name = "AttachWeld"
                                        AttachWeld.Part0 = Tor
                                        AttachWeld.Part1 = FakeTor
                                        AttachWeld.C0 = CFrame.Angles(math.rad(90), 0, 0)
                                        AttachWeld.Parent = Tor
                                        coroutine.resume(coroutine.create(function()
                                                LHPos, LHAng = GetWeld(LH)
                                                for i = 1, 3 do
                                                        SetWeld(LH, i, 3, LHPos, LHAng, Vector3.new(-0.5, 0, 1), Vector3.new(math.rad(-90), 0, math.rad(-5.625)))
                                                        wait(0)
                                                end
                                        end))
                                        coroutine.resume(coroutine.create(function()
                                                RHPos, RHAng = GetWeld(RH)
                                                for i = 1, 3 do
                                                        SetWeld(RH, i, 3, RHPos, RHAng, Vector3.new(0.5, 0, 1), Vector3.new(math.rad(-90), 0, math.rad(5.625)))
                                                        wait(0)
                                                end
                                        end))
                                        coroutine.resume(coroutine.create(function()
                                                LSPos, LSAng = GetWeld(LS)
                                                for i = 1, 3 do
                                                        SetWeld(LS, i, 3, LSPos, LSAng, Vector3.new(-1.5, -1, -0.5), Vector3.new(0, 0, math.rad(78.75)))
                                                        wait(0)
                                                end
                                        end))
                                        RSPos, RSAng = GetWeld(RS)
                                        for i = 1, 3 do
                                                SetWeld(RS, i, 3, RSPos, RSAng, Vector3.new(1.5, -1, -0.5), Vector3.new(0, 0, math.rad(-78.75)))
                                                wait(0)
                                        end
                                        local MyRay2 = nil
                                        local Obj2, Pos2 = nil, nil
                                        repeat
                                                MyRay2 = Ray.new((Tor.CFrame).p, (Tor.CFrame):vectorToWorldSpace(Vector3.new(0, 0, -10)) * 1)
                                                Obj2, Pos2 = Workspace:FindPartOnRay(MyRay2, Char)
                                                wait(0)
                                        until Obj2 == nil
                                        local TorsCF2 = Tor.CFrame * CFrame.Angles(math.rad(22.5), 0, 0)
                                        coroutine.resume(coroutine.create(function()
                                                NeckPos, NeckAng = GetWeld(Neck)
                                                for i = 1, 7 do
                                                        SetWeld(Neck, i, 7, NeckPos, NeckAng, Vector3.new(0, 1.5, -0.75), Vector3.new(math.rad(-45), 0, 0))
                                                        wait(0)
                                                end
                                                for i = 1, 7 do
                                                        SetWeld(Neck, i, 7, NeckPos, NeckAng, Vector3.new(0, 2, 0), Vector3.new(0, 0, 0))
                                                        wait(0)
                                                end
                                        end))
                                        coroutine.resume(coroutine.create(function()
                                                LHPos, LHAng = GetWeld(LH)
                                                for i = 1, 7 do
                                                        SetWeld(LH, i, 7, LHPos, LHAng, Vector3.new(-0.5, -1, 0), Vector3.new(math.rad(-90), 0, 0))
                                                        wait(0)
                                                end
                                        end))
                                        coroutine.resume(coroutine.create(function()
                                                RHPos, RHAng = GetWeld(RH)
                                                for i = 1, 7 do
                                                        SetWeld(RH, i, 7, RHPos, RHAng, Vector3.new(0.5, -1, 0), Vector3.new(math.rad(-90), 0, 0))
                                                        wait(0)
                                                end
                                        end))
                                        coroutine.resume(coroutine.create(function()
                                                LSPos, LSAng = GetWeld(LS)
                                                for i = 1, 7 do
                                                        SetWeld(LS, i, 7, LSPos, LSAng, Vector3.new(-1.5, 0, -0.5), Vector3.new(math.rad(-22.5), 0, math.rad(11.25)))
                                                        wait(0)
                                                end
                                        end))
                                        coroutine.resume(coroutine.create(function()
                                                RSPos, RSAng = GetWeld(RS)
                                                for i = 1, 7 do
                                                        SetWeld(RS, i, 7, RSPos, RSAng, Vector3.new(1.5, 0, -0.5), Vector3.new(math.rad(-22.5), 0, math.rad(-11.25)))
                                                        wait(0)
                                                end
                                        end))
                                        StopBG = true
                                        StopBV = true
                                        BV.velocity = (TorCF.p - (TorCF * CFrame.new(0, 0, 1e+9)).p).unit * 25
                                        for i = 1, 360, 30 do
                                                BG.cframe = TorsCF2 * CFrame.Angles(math.rad(-i), 0, 0)
                                                wait(0)
                                        end
                                        BG:Destroy()
                                        TorPos, TorAng = GetWeld(TorWeld)
                                        NeckPos, NeckAng = GetWeld(Neck)
                                        LHPos, LHAng = GetWeld(LH)
                                        RHPos, RHAng = GetWeld(RH)
                                        LSPos, LSAng = GetWeld(LS)
                                        RSPos, RSAng = GetWeld(RS)
                                        AttachWeld:Destroy()
                                        SetWeld(TorWeld, 1, 1, TorPos, TorAng, Vector3.new(), Vector3.new()) 
                                        SetWeld(Neck, 1, 1, NeckPos, NeckAng, Vector3.new(0, 2, 0), Vector3.new()) 
                                        SetWeld(LH, 1, 1, LHPos, LHAng, Vector3.new(-0.5, 0, -1.04), Vector3.new(0, 0, 0))
                                        SetWeld(RH, 1, 1, RHPos, RHAng, Vector3.new(0.5, 0, -1.04), Vector3.new(0, 0, 0))
                                        SetWeld(LS, 1, 1, LSPos, LSAng, Vector3.new(-1.5, 0.5, 0), Vector3.new(math.rad(67.5), 0, math.rad(11.25)))
                                        SetWeld(RS, 1, 1, RSPos, RSAng, Vector3.new(1.5, 0.5, 0), Vector3.new(math.rad(67.5), 0, math.rad(-11.25)))
                                        WasRunning = false
                                        Mode = "Normal"
                                        Hum.PlatformStand = false
                                        BV:Destroy()
                                end
                        end
                end
        end))
end
 
function RunAnimTorso()
        coroutine.resume(coroutine.create(function()
                while wait(0) do
                        if Mode == "Normal" then
                                NeckPos, NeckAng = GetWeld(Neck)
                                TorPos, TorAng = GetWeld(TorWeld)
                                if Running == true and WasRunning == false then
                                        WasRunning = true
                                        for i = 1, 5 do
                                                if Running == false then
                                                        break
                                                end
                                                SetWeld(TorWeld, i, 5, TorPos, TorAng, Vector3.new(), Vector3.new(math.rad(-22.5), 0, 0))
                                                wait(0)
                                        end
                                elseif Running == false and WasRunning == true then
                                        WasRunning = false
                                        for i = 1, 30 do
                                                if Running == true then
                                                        break
                                                end
                                                SetWeld(TorWeld, i, 30, TorPos, TorAng, Vector3.new(), Vector3.new()) 
                                                SetWeld(Neck, i, 30, NeckPos, NeckAng, Vector3.new(0, 2, 0), Vector3.new()) 
                                                wait(0)
                                        end
                                end
                        end
                end
        end))
end
 
function MoveTorso()
        local RJP = RJ.Parent
        Tor.Archivable = true
        RJ.Archivable = true
        FakeTor = Tor:Clone()
        FakeTor.Name = "AngleStartPoint"
        FakeTor.CanCollide = false
        FakeTor.TopSurface = "Smooth"
        FakeTor.BottomSurface = "Smooth"
        FakeTor.BackSurface = "Smooth"
        FakeTor.FrontSurface = "Smooth"
        FakeTor.LeftSurface = "Smooth"
        FakeTor.RightSurface = "Smooth"
        FakeTor.Transparency = 1
        FakeTor.Parent = Char
        FakeRJ = RJ:Clone()
        FakeRJ.Name = "FakeRootJoint"
        FakeRJ.Part1 = FakeTor
        FakeRJ.Part0 = RJP
        FakeRJ.Parent = RJP
        for _,v in pairs(Tor:GetChildren()) do
                if v.Name:find("Shoulder") or v.Name:find("Hip") then
                        v.Part0 = FakeTor
                end
        end
        TorWeld = Instance.new("Weld")
        TorWeld.Name = "FakeTorsoWeld"
        TorWeld.Part0 = RJP
        TorWeld.Part1 = Tor
        TorWeld.C0 = CFrame.new(0, 0, 0)
        TorWeld.Parent = RJP
        RJ:Destroy()
        RJ = FakeRJ
end
 
Mouse.KeyDown:connect(function(Key)
        Key = Key:lower()
        if Key == "w" then
                WDown = true
        elseif Key == "a" then
                ADown = true
        elseif Key == "s" then
                SDown = true
        elseif Key == "d" then
                DDown = true
        elseif Key == "\32" and Running == true and Mode == "Normal" then
                Mode = "Diving"
                RunAnimDive()
        end
end)
 
Mouse.KeyUp:connect(function(Key)
        Key = Key:lower()
        if Key == "w" then
                WDown = false
        elseif Key == "a" then
                ADown = false
        elseif Key == "s" then
                SDown = false
        elseif Key == "d" then
                DDown = false
        end
end)
 
coroutine.resume(coroutine.create(function()
        while wait(0) do
                if WDown == true or ADown == true or SDown == true or DDown == true then
                        Running = true
                else
                        Running = false
                end
        end
end))
 
Char.Animate.Disabled = true
Hum.WalkSpeed = 0
SetWeld(RS, 1, 1, Vector3.new(), Vector3.new(), Vector3.new(1.5, 0.5, 0), Vector3.new()) 
SetWeld(LS, 1, 1, Vector3.new(), Vector3.new(), Vector3.new(-1.5, 0.5, 0), Vector3.new()) 
SetWeld(RH, 1, 1, Vector3.new(), Vector3.new(), Vector3.new(0.5, -1, 0.04), Vector3.new()) 
SetWeld(LH, 1, 1, Vector3.new(), Vector3.new(), Vector3.new(-0.5, -1, 0.04), Vector3.new()) 
SetWeld(Neck, 1, 1, Vector3.new(), Vector3.new(), Vector3.new(0, 2, 0), Vector3.new()) 
LS.C1 = CFrame.new(0, 0.5, 0) 
RS.C1 = CFrame.new(0, 0.5, 0) 
LH.C1 = CFrame.new(0, 1, 0) 
RH.C1 = CFrame.new(0, 1, 0) 
Neck.C1 = CFrame.new(0, 0.5, 0) 
wait(.1)
MoveTorso()
coroutine.wrap(function()
        RunAnimTorso()
end)()
coroutine.wrap(function()
        RunAnimLegs()
end)()
coroutine.wrap(function()
        RunAnimObj()
end)()
RunAnimArms()
wait(0)
Hum.WalkSpeed = 50