--[polo1716 and ic3w0lf589's script][--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--




Rainbow = {"Bright red", "Neon orange", "Bright yellow", "Lime green", "Deep blue", "Bright violet"}

me = game.Players.ic3w0lf589
function Part(P, Anch, Coll, Tran, Ref, Col, Size, Name)
    local p = Instance.new("Part")
    p.TopSurface = 0
    p.BottomSurface = 0
    p.Transparency = Tran
    p.Reflectance = Ref
    p.CanCollide = Coll
    p.Anchored = Anch
    p.BrickColor = BrickColor.new(Col)
    p.formFactor = "Custom"
    p.Size = Size
    if Name then p.Name = Name end
    p.Parent = P
    p.Locked = true
    p:BreakJoints()
    return p
end


V3 = Vector3.new
CN = CFrame.new
CA = CFrame.Angles
MR = math.rad
MRA = math.random

function Weld(P0, P1, CF1, CF2, Name)
    local w = Instance.new("Motor6D")
    w.Part0 = P0
    w.Part1 = P1
    w.C0 = CF1
    w.C1 = CF2
    if Name then w.Name = Name end
    w.Parent = P0
    return w
end

function MakeNyan(Player, S)
    local Naim = "Nyan "..Player.Name:sub(1,5)
    if S >= 5 then Naim = "Giant Nyan "..Player.Name:sub(1,5) end
    local Model = Instance.new("Model")
    Model.Name = Naim
    local Torso = Part(Model, false, false, 0, 0, "Brick yellow", V3(0.5*S, 1.5*S, 2*S), "Torso")
    local Head = Part(Model, false, false, 0, 0, "Dark grey", V3(0.6*S, 0.8*S, 1.2*S), "Head")
    Instance.new("BlockMesh",Head)
    local Neck = Weld(Torso, Head, CN(0, -0.35*S, -0.9*S), CN(), "Neck")
    local Tart = Part(Model, false, false, 0, 0, "Pink", V3(0.5*S+0.05, 1.2*S, 1.7*S), "Torso")
    Instance.new("BlockMesh",Tart)
    Weld(Torso, Tart, CN(), CN())
    local RFL = Part(Model, false, false, 0, 0, "Dark grey", V3(0.4*S, 0.6*S, 0.4*S), "Right Arm")
    Instance.new("SpecialMesh",RFL).MeshType = "Sphere"
    local LFL = Part(Model, false, false, 0, 0, "Dark grey", V3(0.4*S, 0.6*S, 0.4*S), "Left Arm")
    Instance.new("SpecialMesh",LFL).MeshType = "Sphere"
    local RBL = Part(Model, false, false, 0, 0, "Dark grey", V3(0.4*S, 0.6*S, 0.4*S), "Right Leg")
    Instance.new("SpecialMesh",RBL).MeshType = "Sphere"
    local LBL = Part(Model, false, false, 0, 0, "Dark grey", V3(0.4*S, 0.6*S, 0.4*S), "Left Leg")
    Instance.new("SpecialMesh",LBL).MeshType = "Sphere"
    local RSH = Weld(Torso, RFL, CN(), CN(-0.1*S, 0.8*S, 0.8*S), "Right Shoulder")
    local LSH = Weld(Torso, LFL, CN(), CN(0.1*S, 0.8*S, 0.6*S), "Left Shoulder")
    local RH = Weld(Torso, RBL, CN(), CN(-0.1*S, 0.8*S, -0.8*S), "Right Hip")
    local LH = Weld(Torso, LBL, CN(), CN(0.1*S, 0.8*S, -1*S), "Left Hip")
    local Mouth = Part(Model, false, false, 0, 0, "Really black", V3(0.6*S+0.05, 0.2*S, 0.6*S))
    Weld(Head, Mouth, CN(0, -0.25*S, -0.1), CN())
    Instance.new("BlockMesh",Mouth).Scale = V3(1, 0.6, 0.8)
    for i = -0.25, 0.25, 0.25 do
        local Mouth2 = Part(Model, false, false, 0, 0, "Really black", V3(0.6*S+0.05, 0.3*S, 0.2*S))
        Weld(Mouth, Mouth2, CN(0, 0.1*S, i*S), CN())
        Instance.new("BlockMesh",Mouth2).Scale = V3(1, 0.6, 0.6)
    end
    local Nose = Part(Model, false, false, 0, 0, "Really black", V3(0.6*S+0.05, 0.2*S, 0.2*S))
    Weld(Head, Nose, CN(0, 0.05*S, -0.1*S), CN())
    Instance.new("BlockMesh",Nose).Scale = V3(1, 0.6, 0.6)
    for i = -0.3, 0.31, 0.6 do
        local Eye = Part(Model, false, false, 0, 0, "Really black", V3(0.6*S+0.05, 0.3*S, 0.3*S))
        Weld(Head, Eye, CN(0, 0.15*S, (i-0.1)*S), CN())
        local Eye2 = Part(Model, false, false, 0, 0, "Institutional white", V3(0.6*S+0.1, 0.2*S, 0.2*S))
        Weld(Eye, Eye2, CN(0, 0.04*S, 0.04*S), CN())
        Instance.new("BlockMesh",Eye).Scale = V3(1, 0.6, 0.6)
        Instance.new("BlockMesh",Eye2).Scale = V3(1, 0.4, 0.4)
    end
    for i = -0.4, 0.5, 0.9 do
        local Cheek = Part(Model, false, false, 0, 0, "Medium red", V3(0.6*S+0.05, 0.2*S, 0.2*S))
        Instance.new("BlockMesh",Cheek).Scale = V3(1, 0.8, 0.8)
        Weld(Head, Cheek, CN(0, -0.05*S, (i-0.1)*S), CN())
    end
    for i = -80, -140, -20 do
        local tail = Part(Model, false, false, 0, 0, "Dark grey", V3(0.4*S, 0.25*S, 0.3*S))
        Weld(Torso, tail, CN(0, 0.2*S, 1.15*S) * CA(MR(i), 0, 0), CN(0, 0, 0.5*S))
        Instance.new("BlockMesh",tail)
    end
    for i = 0, 180, 180 do
        local ear = Part(Model, false, false, 0, 0, "Dark grey", V3(0.6*S, 0.4*S, 0.5*S))
        Instance.new("SpecialMesh",ear).MeshType = "Wedge"
        Weld(Head, ear, CN(0, 0.45*S, 0) * CA(0, MR(i), 0), CN(0, 0, -0.32*S) * CA(MR(15), 0, 0))
    end
    local Hum = Instance.new("Humanoid")
    Hum.Name = "Humanoid"
    Hum.MaxHealth = 100
    Hum.Health = 100
    Hum.WalkSpeed = 11+(5*S)
    Hum.Parent = Model
    Model.Parent = workspace
    Model:MakeJoints()
    Model:MoveTo(V3(0, 2*S, 0))
    Player.Character = Model
    local lastP = (Torso.CFrame * CN(0, 0, 0.9*S)).p
    local function runn()
        for i = 0.5, 1, 0.5 do
            RSH.C0 = CN(0, -(0.2*S)*i, 0)
            LSH.C0 = CN(0, -(0.2*S)*i, 0)
            RH.C0 = CN(0, -(0.2*S)*i, 0)
            LH.C0 = CN(0, -(0.2*S)*i, 0)
            wait()
        end
        for i = 0.5, 1, 0.5 do
            RSH.C0 = CN(0, -(0.2*S), (0.2*S)*i)
            LSH.C0 = CN(0, -(0.2*S), (0.2*S)*i)
            RH.C0 = CN(0, -(0.2*S), (0.2*S)*i)
            LH.C0 = CN(0, -(0.2*S), (0.2*S)*i)
            wait()
        end
        for i = 0.5, 1, 0.5 do
            RSH.C0 = CN(0, -(0.2*S)+(0.2*S)*i, (0.2*S))
            LSH.C0 = CN(0, -(0.2*S)+(0.2*S)*i, (0.2*S))
            RH.C0 = CN(0, -(0.2*S)+(0.2*S)*i, (0.2*S))
            LH.C0 = CN(0, -(0.2*S)+(0.2*S)*i, (0.2*S))
            wait()
        end
        for i = 0.5, 1, 0.5 do
            RSH.C0 = CN(0, 0, (0.2*S)-(0.2*S)*i)
            LSH.C0 = CN(0, 0, (0.2*S)-(0.2*S)*i)
            RH.C0 = CN(0, 0, (0.2*S)-(0.2*S)*i)
            LH.C0 = CN(0, 0, (0.2*S)-(0.2*S)*i)
            wait()
        end
    end
    local poss = "Standing"
    coroutine.resume(coroutine.create(function()
        while Player.Character == Model do
            wait(0.1)
            if poss == "Running" then
                runn()
            end
        end
    end))
    coroutine.resume(coroutine.create(function()
        while Player.Character == Model do
            wait(0.1)
            local speed = Torso.Velocity.magnitude
            local posnow = (Torso.CFrame * CN(0, 0, 0.9*S)).p
            coroutine.resume(coroutine.create(function()
            if speed > 2 then
                poss = "Running"
                local ps = {}
                for i,v in pairs(Rainbow) do
                    local a = (#Rainbow-i)
                    a = ((a-(a/2))/2.5)*S
                    local pp = Part(Model, true, false, 0, 0, v, V3(0.2, 0.2, 0.2), "Rainbow")
                    local dist = (posnow - lastP).magnitude
                    Instance.new("BlockMesh",pp).Scale = V3(1, ((1.4*S)/#Rainbow)*5, dist*5)
                    pp.CFrame = CN(lastP, posnow) * CN(0, a, -dist/2)
                    table.insert(ps, pp)
                end
                coroutine.resume(coroutine.create(function()
                    wait(10)
                    for i = 0, 1, 0.2 do
                        wait()
                        for _,v in pairs(ps) do
                            v.Transparency = i
                        end
                    end
                    for _,v in pairs(ps) do
                        v:remove()
                    end
                end))
            else poss = "Standing" end
            end))
            lastP = posnow
        end
    end))
end

--for i,v in pairs(game.Players:GetPlayers()) do
--    MakeNyan(v, MRA(10,120)/10)
--end
MakeNyan(me, 1)