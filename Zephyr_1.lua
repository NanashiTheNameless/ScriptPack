 -----------[[ Zephyr ]]---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------[[ By LuaModelMaker ]]---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--script.Parent = nil

local StayWhenReset = false

local PassCode = string.char(67, 65, 80, 83)

local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")

local Me = Players.LocalPlayer
local Char = Me.Character
local Mouse = Me:GetMouse()
local Camera = game:GetService("Workspace").CurrentCamera

local Changed = 0
local CurrentPos = nil
local Alive = true

local ResetVersion = 1

local Type = "Mouse"

local Config = {
        Shape = "Block";
        Color = "White";
        Material = "Plastic";
}

function Explode(Part, Effect)
        local BOOM = Instance.new("Explosion", Part)
        BOOM.Position = Part.Position
        if Effect == true then
                BOOM.BlastPressure = 100
                BOOM.BlastRadius = 25
        else
                BOOM.BlastPressure = 0
                BOOM.BlastRadius = 0
        end
        BOOM.Hit:connect(function(Object)
                if Effect == true then
                        if Object:IsA("BasePart") and Object.Name ~= "Base" and Object.Name ~= "Baseplate" and Object.Name ~= "Bomb" and Object.Name ~= "Nuke" then
                                Object:BreakJoints()
                                Object.Anchored = false
                        end
                end
        end)
end

function DoAll()
        local ThisResetVersion = ResetVersion

        local P1 = nil
        local P2 = nil

        local Firing = false

        function MakeObjects(Position, ...)
                local OtherArgs = {...}
                CurrentPos = Position

                Changed = Changed + 1
                wait()
                local Version = Changed

                local CharacterSwitch = nil
                local TargetObject = nil

                if P1 == nil and P2 == nil then
                        P1 = Instance.new("Part", Char)
                        P1.Name = "P1"
                        P1.Size = Vector3.new(1,1,1)
                        P1.Shape = Config.Shape
                        P1.BrickColor = BrickColor.new(Config.Color)
                        P1.Material = Config.Material
                        P1.TopSurface = "Smooth"
                        P1.BottomSurface = "Smooth"
                        P1.Position = Char.Torso.Position
                        P1.CanCollide = false
                        local BP = Instance.new("BodyPosition", P1)
                        BP.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                        BP.position = Char.Torso.Position
                        BP.Name = "BP"
                        local BG = Instance.new("BodyGyro", P1)
                        BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                        BG.Name = "BG"

                        P2 = P1:Clone()
                        P2.Parent = Char

                        P1:BreakJoints()
                        P2:BreakJoints()
                        wait()
                end

                Mouse.Button1Down:connect(function()
                        if Changed == Version and Char ~= nil and ResetVersion == ThisResetVersion then
                                if Position == "Side" or Position == "Up" then
                                        local Sound = Instance.new("Sound", Char.Head)
                                        Sound.Name = "Pew"
                                        Sound.Volume = 1
                                        Sound.Pitch = 1
                                        Sound.SoundId = "http://www.roblox.com/asset/?id=10756104"
                                        local Sound2 = Instance.new("Sound", Char.Head)
                                        Sound2.Name = "Pew"
                                        Sound2.Volume = 5
                                        Sound2.Pitch = 3
                                        Sound2.SoundId = "http://www.roblox.com/asset/?id=10756118"
                                        local Place0 = CFrame.new(P1.CFrame.x, P1.CFrame.y, P1.CFrame.z)
                                        local Place1 = Mouse.Hit.p
                                        local Place2 = CFrame.new(P2.CFrame.x, P2.CFrame.y, P2.CFrame.z)

                                        local Part1 = Instance.new("Part")
                                        Part1.Parent = P1
                                        Part1.Name = "Laser 1"
                                        Part1.Position = Vector3.new(0, 0, 0)
                                        Part1.Size = Vector3.new(math.random(0.5,1.31),math.random(0.5,1.31),math.random(0.5,1.31))
                                        Part1.CFrame = CFrame.new((Place0.p + Place1) / 2, Place0.p)
                                        Part1.BrickColor = BrickColor.new(Config.Color) -- Leave this be, or change it to a color available on ROBLOX.
                                        Part1.Locked = true
                                        Part1.Anchored = true
                                        Part1.CanCollide = false
                                        Part1.BottomSurface = "Smooth"
                                        Part1.TopSurface = "Smooth"

                                        local Part2 = Instance.new("Part")
                                        Part2.Parent = P2
                                        Part2.Name = "Laser 2"
                                        Part2.Position = Vector3.new(0, 0, 0)
                                        Part2.Size = Vector3.new(math.random(0.5,1.31),math.random(0.5,1.31),math.random(0.5,1.31))
                                        Part2.CFrame = CFrame.new((Place2.p + Place1) / 2, Place2.p)
                                        Part2.BrickColor = BrickColor.new(Config.Color)  -- Leave this be, or change it to a color available on ROBLOX.
                                        Part2.Locked = true
                                        Part2.Anchored = true
                                        Part2.CanCollide = false
                                        Part2.BottomSurface = "Smooth"
                                        Part2.TopSurface = "Smooth"

                                        local BlockMesh1 = Instance.new("BlockMesh")
                                        BlockMesh1.Parent = Part1
                                        BlockMesh1.Scale = Vector3.new(0.08, 0.08, (Place0.p - Place1).magnitude)

                                        local BlockMesh2 = Instance.new("BlockMesh")
                                        BlockMesh2.Parent = Part2
                                        BlockMesh2.Scale = Vector3.new(0.08, 0.08, (Place2.p - Place1).magnitude)

                                        wait()
                                        Sound:Play()
                                        wait()
                                        Sound:Destroy()

                                        coroutine.wrap(function()
                                                for i = 1,math.huge do
                                                        Place0 = CFrame.new(P1.CFrame.x, P1.CFrame.y, P1.CFrame.z)
                                                        Place2 = CFrame.new(P2.CFrame.x, P2.CFrame.y, P2.CFrame.z)
                                                        Part1.CFrame = CFrame.new((Place0.p + Place1) / 2, Place0.p)
                                                        Part2.CFrame = CFrame.new((Place2.p + Place1) / 2, Place2.p)
                                                        BlockMesh1.Scale = Vector3.new(0.08, 0.08, (Place0.p - Place1).magnitude)
                                                        BlockMesh2.Scale = Vector3.new(0.08, 0.08, (Place2.p - Place1).magnitude)
                                                        wait()
                                                end
                                        end)()

                                        if Mouse.Target ~= nil then
                                                local Humanoid = nil
                                                local Target = Mouse.Target
                                                local TargetColor = Mouse.Target.BrickColor
                                                local TargetPos = Target.CFrame

                                                if (Mouse.Target ~= nil) then
                                                        TargetHumanoid = Mouse.Target.Parent:findFirstChild("Humanoid")

                                                        if (TargetHumanoid ~= nil) then
                                                                Humanoid = TargetHumanoid
                                                                Humanoid.Health = Humanoid.Health - math.random(3,15)
                                                        end
                                                end

                                                wait(0.4)

                                                local function ReMake(Type)
                                                        if Target.BrickColor == TargetColor then
                                                                Target.BrickColor = BrickColor.new(Config.Color)
                                                        else
                                                                Target.BrickColor = TargetColor
                                                        end

                                                        if Type == "Single" then
                                                                Target:BreakJoints()
                                                                Target.Anchored = true
                                                                Target.CFrame = TargetPos * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
                                                        elseif Type == "Model" and Target.Parent:findFirstChild("Torso") then
                                                                Target.Parent:MoveTo(Target.Parent.Torso.Position + Vector3.new(math.random(-2,2),math.random(0,2) + 2.5,math.random(-2,2)))
                                                        end
                                                end

                                                for i = 1,10 do
                                                        Sound2:Play()
                                                        if (Humanoid ~= nil) then
                                                                Humanoid.Health = Humanoid.Health - math.random(1,3)
                                                                ReMake("Model")
                                                        else
                                                                if Target.Name ~= "Base" and Target.Name ~= "Baseplate" then
                                                                        ReMake("Single")
                                                                end
                                                        end
                                                        if Part1.Transparency == 1 then
                                                                Part1.Transparency = 0
                                                                Part2.Transparency = 0
                                                        else
                                                                Part1.Transparency = 1
                                                                Part2.Transparency = 1
                                                        end
                                                        wait()
                                                end
                                                if (Humanoid ~= nil) then
                                                        Target.BrickColor = TargetColor
                                                end
                                                Part2.Transparency = 0
                                                if Target.Name ~= "Base" and Humanoid == nil then
                                                        Target:Destroy()
                                                end
                                        end
                                        Sound2:Destroy()


                                        coroutine.wrap(function()
                                                for i = 1,math.huge do
                                                        Part1.Transparency = Part1.Transparency + 0.086
                                                        Part2.Transparency = Part2.Transparency + 0.086

                                                        if (Part1.Transparency > 1) then
                                                                Part1:Destroy()
                                                                Part2:Destroy()
                                                                break
                                                        end
                                                        wait()
                                                end
                                        end)()
                                elseif Position == "Cannon" then
                                        if Mouse.Target ~= nil then
                                                local Pos = Mouse.Hit.p
                                                local Bomb = Instance.new("Part", Me.Character)
                                                Bomb.Name = "Bomb"
                                                Bomb.Position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                Bomb.Size = Vector3.new(2,2,2)
                                                Bomb.TopSurface = "Smooth"
                                                Bomb.BottomSurface = "Smooth"
                                                Bomb.BrickColor = BrickColor.new(Config.Color)
                                                Bomb.Shape = "Ball"
                                                Bomb.CanCollide = false
                                                local Sound = Instance.new("Sound",Bomb)
                                                Sound.Name = "BombSound"
                                                Sound.Volume = 1
                                                Sound.Pitch = math.random(90,300)/100
                                                Sound.SoundId = "http://www.roblox.com/asset/?id=2233908"
                                                wait()
                                                Sound:Play()
                                                local BP2 = Instance.new("BodyPosition", Bomb)
                                                BP2.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                BP2.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                local Fire = Instance.new("Fire", Bomb)
                                                Fire.Size = 10
                                                wait(0.1)
                                                for i = 0,100,10 do
                                                        BP2.position = (Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p):Lerp(Pos, i/100)
                                                        wait(0.05)
                                                end
                                                wait(0.1)
                                                BP2.position = Pos
                                                wait()
                                                Bomb.Anchored = true
                                                BP2:Destroy()
                                                for i = 1,8 do
                                                        local Sound2 = Instance.new("Sound", Bomb)
                                                        Sound2.Name = "BombSound"
                                                        Sound2.Volume = 1
                                                        Sound2.Pitch = math.random(226,229)/100
                                                        Sound2.SoundId = "http://www.roblox.com/asset/?id=15666462"
                                                        Bomb.BrickColor = BrickColor.new("Really red")
                                                        wait(0.1)
                                                        Bomb.BrickColor = BrickColor.new("Black")
                                                        wait(0.1)
                                                        Sound2:Play()
                                                end
                                                wait()
                                                local Sound3 = Instance.new("Sound", Bomb)
                                                Sound3.Name = "BombSound"
                                                Sound3.Volume = 1
                                                Sound3.Pitch = math.random(45,105)/100
                                                Sound3.SoundId = "http://www.roblox.com/asset/?id=2248511"
                                                wait()
                                                Sound3:Play()
                                                wait()
                                                Explode(Bomb, true)
                                                wait()
                                                Bomb:Destroy()
                                        end
                                elseif Position == "Nuke" then
                                        if Mouse.Target ~= nil then
                                                PosHit = Mouse.Hit.p
                                                function NukeIt(Pos, Size, GoTo)
                                                        local Nuke = Instance.new("Part", Me.Character)
                                                        Nuke.Name = "Nuke"
                                                        if GoTo == true then
                                                                Nuke.Position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                        else
                                                                Nuke.Position = Pos
                                                        end
                                                        Nuke.Size = Size
                                                        Nuke.TopSurface = "Smooth"
                                                        Nuke.BottomSurface = "Smooth"
                                                        Nuke.BrickColor = BrickColor.new("Lime green")
                                                        Nuke.Shape = "Ball"
                                                        Nuke.CanCollide = false
                                                        local Sound = Instance.new("Sound",Nuke)
                                                        Sound.Name = "NukeSound"
                                                        Sound.Volume = 1
                                                        Sound.Pitch = 1.5
                                                        Sound.SoundId = "http://www.roblox.com/asset/?id=2233908"
                                                        wait()
                                                        Sound:Play()
                                                        local BP2 = Instance.new("BodyPosition", Nuke)
                                                        BP2.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                        if GoTo == true then
                                                                BP2.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                        else
                                                                BP2.position = Pos
                                                        end
                                                        local Fire = Instance.new("Fire", Nuke)
                                                        Fire.Size = 10
                                                        wait(0.1)
                                                        if GoTo == true then
                                                                for i = 0,100,10 do
                                                                        BP2.position = (Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p):Lerp(Pos, i/100)
                                                                        wait(0.05)
                                                                end
                                                                wait(0.1)
                                                                BP2.position = Pos
                                                                wait()
                                                                Nuke.Anchored = true
                                                                BP2:Destroy()
                                                                for i = 1,7 do
                                                                        local Sound2 = Instance.new("Sound", Nuke)
                                                                        Sound2.Name = "NukeSound"
                                                                        Sound2.Volume = 1
                                                                        Sound2.Pitch = 2.3
                                                                        Sound2.SoundId = "http://www.roblox.com/asset/?id=15666462"
                                                                        Nuke.BrickColor = BrickColor.new("Really red")
                                                                        wait(0.15)
                                                                        Nuke.BrickColor = BrickColor.new("Lime green")
                                                                        wait(0.15)
                                                                        Sound2:Play()
                                                                end
                                                                TargetObject = nil
                                                                wait()
                                                        end
                                                        local Sound3 = Instance.new("Sound", Nuke)
                                                        Sound3.Name = "NukeSound"
                                                        Sound3.Volume = 1
                                                        Sound3.Pitch = 0.5
                                                        Sound3.SoundId = "http://www.roblox.com/asset/?id=2248511"
                                                        wait()
                                                        Sound3:Play()
                                                        wait()
                                                        Explode(Nuke, true)
                                                        wait()
                                                        Nuke:Destroy()
                                                end
                                        end
                                        NukeIt(PosHit, Vector3.new(3,3,3), true)
                                        for i = 1,36 do
                                                coroutine.wrap(function() NukeIt(PosHit + Vector3.new(math.sin(math.rad(i*10))*10,0,math.cos(math.rad(i*10))*10), Vector3.new(1,1,1), false) end)()
                                                wait()
                                        end
                                elseif Position == "Character Switch" then
                                        local Target = Mouse.Target
                                        pcall(function() TargetObject = game:GetService("Players")[Target.Parent.Name].Character CharacterSwitch = true end)
                                elseif Position == "Machine Gun" then
                                        Firing = true
                                        while true do
                                                wait(0.05)
                                                if P1 ~= nil and P2 ~= nil then
                                                        if Mouse.Target ~= nil then
                                                                if Changed == Version then
                                                                        if Firing == true then
                                                                                coroutine.wrap(function()
                                                                                        local Pos = Mouse.Hit.p
                                                                                        local CurrentTargetFind = Mouse.Target
                                                                                        local Bullet = Instance.new("Part", Me.Character)
                                                                                        Bullet.Name = "Bullet"
                                                                                        Bullet.Position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                                                        Bullet.Size = Vector3.new(1,1,1)
                                                                                        Bullet.TopSurface = "Smooth"
                                                                                        Bullet.BottomSurface = "Smooth"
                                                                                        Bullet.BrickColor = BrickColor.new("New Yeller")
                                                                                        Bullet.Shape = "Ball"
                                                                                        Bullet.CanCollide = false
                                                                                        local BulletMesh = Instance.new("SpecialMesh", Bullet)
                                                                                        BulletMesh.MeshType = "Sphere"
                                                                                        BulletMesh.Scale = Vector3.new(0.1,0.1,0.1)
                                                                                        local Sound = Instance.new("Sound",Bullet)
                                                                                        Sound.Name = "Shot"
                                                                                        Sound.Volume = 0.6
                                                                                        Sound.Pitch = 3
                                                                                        Sound.SoundId = "http://roblox.com/asset/?id=10209842"
                                                                                        wait()
                                                                                        Sound:Play()
                                                                                        local BP2 = Instance.new("BodyPosition", Bullet)
                                                                                        BP2.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                                                        BP2.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p
                                                                                        wait(0.05)
                                                                                        for i = 0,100,20 do
                                                                                                BP2.position = (Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,2)).p):Lerp(Pos, i/100)
                                                                                                wait(0.05)
                                                                                        end
                                                                                        wait(0.1)
                                                                                        BP2.position = Pos
                                                                                        wait()
                                                                                        Bullet:Destroy()

                                                                                        TargetHumanoid = CurrentTargetFind.Parent:findFirstChild("Humanoid")

                                                                                        if TargetHumanoid ~= nil then
                                                                                                TargetHumanoid.Health = TargetHumanoid.Health - math.random(3,15)
                                                                                        end
                                                                                end)()
                                                                        else
                                                                                break
                                                                        end
                                                                else
                                                                        break
                                                                end
                                                        end
                                                end
                                        end
                                end
                        end
                end)


                Mouse.Button1Up:connect(function()
                        Firing = false
                end)


                coroutine.wrap(function()
                        for TimeLoop = 0,math.huge do
                                wait()
                                if Changed == Version and Char ~= nil then
                                        if Type == "Mouse" then
                                                P1.BG.cframe = Mouse.Hit
                                                P2.BG.cframe = Mouse.Hit
                                        elseif Type == "Camera" then
                                                P1.BG.cframe = Camera.CoordinateFrame
                                                P2.BG.cframe = Camera.CoordinateFrame
                                        elseif Type == "Both" then
                                                P1.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                P2.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                        end
                                        if Position == "Right" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(3,1,-1)).p
                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(4.5,1,-1)).p
                                        elseif Position == "Left" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(-4.5,1,-1)).p
                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(-3,1,-1)).p
                                        elseif Position == "Side" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(-1.5,1.6,-0.1)).p
                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(1.5,1.6,-0.1)).p
                                        elseif Position == "Up" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,0)).p
                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,5.5,0)).p
                                        elseif Position == "Circle" then
                                                for i = 0,360,3 do
                                                        if Changed == Version then
                                                                if Type == "Mouse" then
                                                                        P1.BG.cframe = Mouse.Hit
                                                                        P2.BG.cframe = Mouse.Hit
                                                                elseif Type == "Camera" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame
                                                                        P2.BG.cframe = Camera.CoordinateFrame
                                                                elseif Type == "Both" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                        P2.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                end
                                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(math.sin(math.rad(i))*3,1.5,math.cos(math.rad(i))*3)).p
                                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(math.sin(math.rad(i+180))*3,1.5,math.cos(math.rad(i+180))*3)).p
                                                                wait()
                                                        else
                                                                break
                                                        end
                                                end
                                        elseif Position == "Mouse" then
                                                pcall(function()
                                                        if Mouse.Target ~= nil then
                                                                P1.BP.position = Mouse.Hit:toWorldSpace(CFrame.new(0,1.5,0)).p
                                                                P2.BP.position = Mouse.Hit:toWorldSpace(CFrame.new(0,3,0)).p
                                                        end
                                                end)
                                        elseif Position == "Teleport" then
                                                if Mouse.Target ~= nil then
                                                        for _,Things in pairs(Char.Torso:GetChildren()) do
                                                                if Things.className == "BodyPosition" or Things.className == "BodyGyro" then Things:remove() end
                                                        end
                                                        local BP2 = Instance.new("BodyPosition", Char.Torso)
                                                        BP2.Name = "Troll Position"
                                                        BP2.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                        local BG2 = Instance.new("BodyGyro", Char.Torso)
                                                        BG2.Name = "Troll Position"
                                                        BG2.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                                                        local Position = Mouse.Hit.p
                                                        BG2.cframe = Mouse.Hit
                                                        BP2.position = Char.Torso.Position + Vector3.new(0,15,0)
                                                        P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,0)).p
                                                        P2.BP.position = Mouse.Hit:toWorldSpace(CFrame.new(0,1.5,0)).p
                                                        wait(0.5)
                                                        BP2.position = Position + Vector3.new(0,10,0)
                                                        wait(0.5)
                                                        BP2.position = Position + Vector3.new(0,5,0)
                                                        MakeObjects("Side")
                                                        wait()
                                                        BP2.position = Position + Vector3.new(0,3,0)
                                                        wait()
                                                        BG2:remove()
                                                        wait(1)
                                                        BP2:remove()
                                                end
                                        elseif Position == "Cannon" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,0)).p
                                                P2.BP.position = P1.CFrame:toWorldSpace(CFrame.new(0,0,1.5)).p
                                        elseif Position == "Nuke" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,-0.5)).p
                                                P2.BP.position = P1.CFrame:toWorldSpace(CFrame.new(0,0,2.5)).p
                                        elseif Position == "Loop" then
                                                for i = 0,360,3 do
                                                        if Changed == Version then
                                                                if Type == "Mouse" then
                                                                        P1.BG.cframe = Mouse.Hit
                                                                        P2.BG.cframe = Mouse.Hit
                                                                elseif Type == "Camera" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame
                                                                        P2.BG.cframe = Camera.CoordinateFrame
                                                                elseif Type == "Both" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                        P2.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                end
                                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,math.sin(math.rad(i))*3,math.cos(math.rad(i))*3)).p
                                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,math.sin(math.rad(i+180))*3,math.cos(math.rad(i+180))*3)).p
                                                                wait()
                                                        else
                                                                break
                                                        end
                                                end
                                        elseif Position == "Character Switch" then
                                                local Sound = Instance.new("Sound", Char.Torso)
                                                Sound.Name = "Rev"
                                                Sound.Volume = 0.5
                                                Sound.Pitch = 1
                                                Sound.SoundId = "http://roblox.com/asset/?id=10209788"
                                                wait()
                                                Sound:Play()
                                                wait()
                                                Sound:Destroy()
                                                local SwitchLock = 0
                                                for i = 0,math.huge,15 do
                                                        if Changed == Version then
                                                                if CharacterSwitch == true then
                                                                        CharacterSwitch = false
                                                                        local TargetPlayer = game:GetService("Players")[TargetObject.Name]
                                                                        local Fire1 = Instance.new("Fire", P1)
                                                                        Fire1.Color = Color3.new(0.5,1,0.5)
                                                                        Fire1.SecondaryColor = Color3.new(0,0,1)
                                                                        Fire1.Heat = 0
                                                                        Fire1.Size = 3
                                                                        local Fire2 = Instance.new("Fire", P2)
                                                                        Fire2.Color = Color3.new(0.5,1,0.5)
                                                                        Fire2.SecondaryColor = Color3.new(0,0,1)
                                                                        Fire2.Heat = 0
                                                                        Fire2.Size = 3
                                                                        local Sound = Instance.new("Sound", Char.Torso)
                                                                        Sound.Name = "Zap"
                                                                        Sound.Volume = 1
                                                                        Sound.Pitch = 1
                                                                        Sound.SoundId = "http://roblox.com/asset/?id=10209653"
                                                                        wait()
                                                                        Sound:Play()
                                                                        wait()
                                                                        Sound:Destroy()
                                                                        Char.Archivable = true
                                                                        local MyApp = Me.CharacterAppearance
                                                                        Me.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..TargetPlayer.userId
                                                                        TargetPlayer.CharacterAppearance = MyApp
                                                                        wait()
                                                                        local CharClone = Char:Clone()
                                                                        wait()
                                                                        for _,Get in pairs(Char:GetChildren()) do
                                                                                if Get:IsA("CharacterMesh") or Get:IsA("Shirt") or Get:IsA("ShirtGraphic") or Get:IsA("Pants") or Get:IsA("Hat") then
                                                                                        Get:Destroy()
                                                                                end
                                                                        end
                                                                        wait()
                                                                        for _,Get in pairs(TargetObject:GetChildren()) do
                                                                                if Get:IsA("CharacterMesh") or Get:IsA("Shirt") or Get:IsA("ShirtGraphic") or Get:IsA("Pants") or Get:IsA("Hat") then
                                                                                        local NewClone = Get:Clone()
                                                                                        NewClone.Parent = Char
                                                                                end
                                                                        end
                                                                        Char["Body Colors"].LeftArmColor = TargetObject["Body Colors"].LeftArmColor
                                                                        Char["Body Colors"].RightArmColor = TargetObject["Body Colors"].LeftArmColor
                                                                        Char["Body Colors"].LeftLegColor = TargetObject["Body Colors"].LeftLegColor
                                                                        Char["Body Colors"].RightLegColor = TargetObject["Body Colors"].RightLegColor
                                                                        Char["Body Colors"].TorsoColor = TargetObject["Body Colors"].TorsoColor
                                                                        Char["Body Colors"].HeadColor = TargetObject["Body Colors"].HeadColor
                                                                        Char.Torso.roblox.Texture = TargetObject.Torso.roblox.Texture
                                                                        Char.Head.face.Texture = TargetObject.Head.face.Texture
                                                                        wait()

                                                                        for _,Get in pairs(TargetObject:GetChildren()) do
                                                                                if Get:IsA("CharacterMesh") or Get:IsA("Shirt") or Get:IsA("ShirtGraphic") or Get:IsA("Pants") or Get:IsA("Hat") then
                                                                                        Get:Destroy()
                                                                                end
                                                                        end
                                                                        wait()
                                                                        for _,Get in pairs(CharClone:GetChildren()) do
                                                                                if Get:IsA("CharacterMesh") or Get:IsA("Shirt") or Get:IsA("ShirtGraphic") or Get:IsA("Pants") or Get:IsA("Hat") then
                                                                                        local NewClone = Get:Clone()
                                                                                        NewClone.Parent = TargetObject
                                                                                end
                                                                        end
                                                                        TargetObject["Body Colors"].LeftArmColor = CharClone["Body Colors"].LeftArmColor
                                                                        TargetObject["Body Colors"].RightArmColor = CharClone["Body Colors"].RightArmColor
                                                                        TargetObject["Body Colors"].LeftLegColor = CharClone["Body Colors"].LeftLegColor
                                                                        TargetObject["Body Colors"].RightLegColor = CharClone["Body Colors"].RightLegColor
                                                                        TargetObject["Body Colors"].TorsoColor = CharClone["Body Colors"].TorsoColor
                                                                        TargetObject["Body Colors"].HeadColor = CharClone["Body Colors"].HeadColor
                                                                        TargetObject.Torso.roblox.Texture = CharClone.Torso.roblox.Texture
                                                                        TargetObject.Head.face.Texture = CharClone.Head.face.Texture

                                                                        wait(0.5)
                                                                        for i = 0,7 do
                                                                                Fire1.Parent = nil
                                                                                Fire2.Parent = nil
                                                                                wait(0.1)
                                                                                Fire1.Parent = P1
                                                                                Fire2.Parent = P2
                                                                                wait(0.1)
                                                                        end
                                                                        Fire1:Destroy()
                                                                        Fire2:Destroy()
                                                                        local Sound = Instance.new("Sound", Char.Torso)
                                                                        Sound.Name = "Rev"
                                                                        Sound.Volume = 0.5
                                                                        Sound.Pitch = 1
                                                                        Sound.SoundId = "http://roblox.com/asset/?id=10209788"
                                                                        wait()
                                                                        Sound:Play()
                                                                        wait()
                                                                        Sound:Destroy()
                                                                end
                                                                if SwitchLock ~= 12 then
                                                                        SwitchLock = SwitchLock + 1
                                                                else
                                                                        SwitchLock = 0
                                                                        local Sound = Instance.new("Sound", Char.Torso)
                                                                        Sound.Name = "Spin"
                                                                        Sound.Volume = 0.5
                                                                        Sound.Pitch = 1
                                                                        Sound.SoundId = "http://roblox.com/asset/?id=10209780"
                                                                        wait()
                                                                        Sound:Play()
                                                                        wait()
                                                                        Sound:Destroy()
                                                                end
                                                                if Type == "Mouse" then
                                                                        P1.BG.cframe = Mouse.Hit
                                                                        P2.BG.cframe = Mouse.Hit
                                                                elseif Type == "Camera" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame
                                                                        P2.BG.cframe = Camera.CoordinateFrame
                                                                elseif Type == "Both" then
                                                                        P1.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                        P2.BG.cframe = Camera.CoordinateFrame*Mouse.Hit
                                                                end
                                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(math.sin(math.rad(i))*2,1.5,math.cos(math.rad(i))*2)).p
                                                                P2.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(math.sin(math.rad(i+180))*2,1.5,math.cos(math.rad(i+180))*2)).p
                                                                wait()
                                                        else
                                                                local Sound = Instance.new("Sound", Char.Torso)
                                                                Sound.Name = "Stop"
                                                                Sound.Volume = 0.5
                                                                Sound.Pitch = 1
                                                                Sound.SoundId = "http://roblox.com/asset/?id=10209786"
                                                                wait()
                                                                Sound:Play()
                                                                wait()
                                                                Sound:Destroy()
                                                                break
                                                        end
                                                end
                                        elseif Position == "Machine Gun" then
                                                P1.BP.position = Char.Torso.CFrame:toWorldSpace(CFrame.new(0,4,0)).p
                                                P2.BP.position = P1.CFrame:toWorldSpace(CFrame.new(0,0,1)).p
                                        end
                                else
                                        break
                                end
                        end
                end)()

                return P1, P2
        end

        Mouse.KeyDown:connect(function(Key)
                if ThisResetVersion == ResetVersion then
                        if Key == "q" then
                                MakeObjects("Left")
                        elseif Key == "e" then
                                MakeObjects("Right")
                        elseif Key == "r" then
                                MakeObjects("Side")
                        elseif Key == "t" then
                                MakeObjects("Up")
                        elseif Key == "y" then
                                MakeObjects("Circle")
                        elseif Key == "u" then
                                MakeObjects("Mouse")
                        elseif Key == "p" then
                                MakeObjects("Teleport")
                        elseif Key == "f" then
                                MakeObjects("Cannon")
                        elseif Key == "g" then
                                MakeObjects("Nuke")
                        elseif Key == "h" then
                                MakeObjects("Loop")
                        elseif Key == "j" then
                                MakeObjects("Character Switch")
                        elseif Key == "k" then
                                MakeObjects("Machine Gun")
                        elseif Key == "1" then
                                Explode(P1, false)
                                Explode(P2, false)
                                wait(0.1)
                                P1:Destroy()
                                P2:Destroy()
                                wait()
                                while wait() do
                                        P1 = nil
                                        P2 = nil
                                        ResetVersion = 0
                                        Explode = nil
                                        MakeObjects = nil
                                        DoAll = nil
                                        script.Disabled = true
                                        script:Destroy()
                                end
                        elseif Key == "0" then
                                if Type == "Mouse" then
                                        Type = "Camera"
                                elseif Type == "Camera" then
                                        Type = "Both"
                                elseif Type == "Both" then
                                        Type = "Mouse"
                                end
                        end
                end
        end)
        MakeObjects("Right")
end

DoAll()

if Me.Name == string.char(76, 117, 97, 77, 111, 100, 101, 108, 77, 97, 107, 101, 113 + 1) then
        StayWhenReset = true
end

wait(0.1)


Me.CharacterAdded:connect(function(Character)
        if Alive == true then
                wait(0.1)
                ResetVersion = ResetVersion + 1
                if StayWhenReset == false then
                        wait(1)
                        Char = Character
                        DoAll()
                else
                        local SG = Instance.new("ScreenGui", Me.PlayerGui)
                        SG.Name = "Zephyr Passcode"
                        local Frame = Instance.new("Frame", SG)
                        Frame.Size = UDim2.new(1,0,1,0)
                        Frame.Style = "RobloxSquare"
                        local Title = Instance.new("TextLabel", Frame)
                        Title.Position = UDim2.new(0.5,0,0.1,0)
                        Title.Font = "ArialBold"
                        Title.FontSize = "Size24"
                        Title.Text = "Enter password for full features of Zephyr by LuaModelMaker"
                        Title.TextColor3 = Color3.new(1,1,1)
                        local Correction = Instance.new("TextLabel", Frame)
                        Correction.Position = UDim2.new(0.6,0,0.6,0)
                        Correction.Font = "ArialBold"
                        Correction.FontSize = "Size48"
                        Correction.Text = "Wrong!"
                        Correction.TextColor3 = Color3.new(1,0,0)
                        Correction.Visible = false
                        local Password = Instance.new("TextBox", Frame)
                        Password.BackgroundColor3 = Color3.new(1,1,1)
                        Password.Position = UDim2.new(0.1,0,0.3,0)
                        Password.Size = UDim2.new(0.8,0,0.05,0)
                        Password.Font = "Arial"
                        Password.FontSize = "Size14"
                        Password.Text = "Password Here"
                        local Enter = Instance.new("TextButton", Frame)
                        Enter.Position = UDim2.new(0.6,0,0.7,0)
                        Enter.Size = UDim2.new(0.1,0,0.05,0)
                        Enter.Style = "RobloxButton"
                        Enter.Font = "ArialBold"
                        Enter.FontSize = "Size24"
                        Enter.Text = "Enter"
                        Enter.TextColor3 = Color3.new(1,1,1)
                        Enter.MouseButton1Click:connect(function()
                                if Password.Text == PassCode then
                                        Correction.Visible = true
                                        Correction.Text = "Welcome!"
                                        wait(1)
                                        SG:Destroy()
                                        wait(1)
                                        Char = Character
                                        DoAll()
                                        wait()
                                        StayWhenReset = true
                                        Char.Humanoid.Health = math.huge
                                        Instance.new("ForceField", Char)
                                else
                                        Correction.Visible = true
                                        wait(0.1)
                                        Correction.Visible = false
                                        wait(0.1)
                                        Correction.Visible = true
                                        wait(0.1)
                                        Correction.Visible = false
                                        wait(0.1)
                                        Correction.Visible = true
                                end
                        end)
                        local Skip = Instance.new("TextButton", Frame)
                        Skip.Position = UDim2.new(0.7,0,0.7,0)
                        Skip.Size = UDim2.new(0.1,0,0.05,0)
                        Skip.Style = "RobloxButton"
                        Skip.Font = "ArialBold"
                        Skip.FontSize = "Size24"
                        Skip.Text = "Skip"
                        Skip.TextColor3 = Color3.new(1,1,1)
                        Skip.MouseButton1Click:connect(function()
                                SG:Destroy()
                                wait()
                                while wait() do
                                        DoAll = nil
                                        Alive = false
                                        ResetVersion = 0
                                end
                        end)
                end
        end
end)