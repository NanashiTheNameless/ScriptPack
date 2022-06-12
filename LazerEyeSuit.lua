--Local
--Thank you MUROT FOR LEAKING THIS RARE SCRIPT SCRIPT
Workspace = Game:GetService("Workspace")
Players = Game:GetService("Players")
Debris = Game:GetService("Debris")

local Suit

function Userdata(Parent, Child)
        if (not Parent or not Child) then return end
        
        local ret = Parent:findFirstChild(Child)
        if (ret) then
                return ret
        else
                error(tostring(Child).." is not a valid member of "..tostring(Parent), 1)
        end
        
        Parent.ChildAdded:connect(function(child)
                if (child.Name == Child) then
                        return ret
                end
        end)
end

local Welds = {}

RocketConnect = {}

Table = {
        ["Insert"] = function(tab, arg)
                local index = #tab
                index = index + 1
                tab[index] = arg
        end;
        ["Remove"] = function(tab, arg)
                for index, value in pairs(tab) do
                        if (arg == value) then
                                tab[index] = nil
                        end
                end
        end;
}

Modes = { "Mask-Laser", "Laser-Missile", "Laser-Bomb", "Fly" }
Mnum = 1
Speed = 100
Hold = false
Bomb = false
Flying = false

Main = BrickColor.new("Really black")
Trim = BrickColor.new("Bright green")

Main_Color3 = Instance.new("Part")
Main_Color3.BrickColor = Main or BrickColor.new("Really black")

Trim_Color3 = Instance.new("Part")
Trim_Color3.BrickColor = Trim or BrickColor.new("Bright green")

Player = Players.LocalPlayer
Character = Player.Character

if (Player.Name == "NilScripter") then
         Trim = BrickColor.new("Really red") 
        Trim_Color3.BrickColor = Trim or BrickColor.new("Bright green")
         end

Head = Userdata(Character, "Head")
Torso = Userdata(Character, "Torso")
LeftArm = Userdata(Character, "Left Arm")
RightArm = Userdata(Character, "Right Arm")
LeftLeg = Userdata(Character, "Left Leg")
RightLeg = Userdata(Character, "Right Leg")
Humanoid = Userdata(Character, "Humanoid")

LeftShoulder = Userdata(Torso, "Left Shoulder")
RightShoulder = Userdata(Torso, "Right Shoulder")
LeftHip = Userdata(Torso, "Left Hip")
RightHip = Userdata(Torso, "Right Hip")

local Template = Instance.new("Part")
Template.Name = "TNSrocket"
Template.Locked = true
Template.CanCollide = true
Template.TopSurface = 0
Template.BottomSurface = 0
Template.formFactor = 0
Template.BrickColor = Trim or BrickColor.new("Bright green")
Template.Size = Vector3.new(1, 2, 1)

if (script.Parent.className ~= "HopperBin") then
        hop = Instance.new("HopperBin", Player.Backpack)
        hop.Name = "Suit"
end

function onDied()
        script:Remove()
end

function Opaque()
        if (Suit == nil) then
                for _, part in pairs(Character:GetChildren()) do
                        if (part.className == "Part") then
                                part.Transparency = 1
                        elseif (part.className == "Hat") then
                                pcall(function()
                                        part.Handle.Transparency = 1
                                end)
                        end
                end
                pcall(function()
                        Head.face.Face = "Bottom"
                end)
        else
                for _, part in pairs(Character:GetChildren()) do
                        if (part.className == "Part") then
                                part.Transparency = 0
                        elseif (part.className == "Hat") then
                                pcall(function()
                                        part.Handle.Transparency = 0
                                end)
                        end
                end
                pcall(function()
                        Head.face.Face = "Front"
                end)
        end
end

function CylinderLaser(To, From, BC)
        local Las = Instance.new("Part", Workspace)
        Las.Anchored = true
        Las.Locked = true
        Las.CanCollide = false
        Las.TopSurface = 0
        Las.BottomSurface = 0
        Las.formFactor = 0
        Las.Size = Vector3.new(1, 1, 1)
        Las.BrickColor = BC or Trim or BrickColor.new("Bright green")
        Las.CFrame = CFrame.new((To + From)/2, From) * CFrame.Angles(math.rad(90), 0, 0)
        
        local Cm = Instance.new("CylinderMesh", Las)
        Cm.Scale = Vector3.new(0.1, (To - From).magnitude, 0.1)
        
        return Las
end

function BlockLaser(To, From, X, Y, BC)
        X = tonumber(X)
        Y = tonumber(Y)
        if (X == nil) then X = 0.8 end
        if (Y == nil) then Y = 0.1 end
        local Las = Instance.new("Part", Workspace)
        Las.Anchored = true
        Las.Locked = true
        Las.CanCollide = false
        Las.TopSurface = 0
        Las.BottomSurface = 0
        Las.formFactor = 0
        Las.Transparency = 0.2
        Las.Reflectance = 0.2
        Las.Size = Vector3.new(1, 1, 1)
        Las.BrickColor = BC or Trim or BrickColor.new("Bright green")
        Las.CFrame = CFrame.new((To + From)/2, From)
        
        local Bm = Instance.new("BlockMesh", Las)
        Bm.Scale = Vector3.new(X, Y, (To - From).magnitude)
        
        return Las
end

function WeldChanged(weld, p0, p1, c0, c1)
        weld.Parent = p0
        weld.Part0 = p0
        weld.Part1 = p1
        weld.C0 = c0
        weld.C1 = c1
end

function Weld(Part0, Part1, C0, C1, UnRemoveable)
        if (not Part0 or not Part1) then return end
        
        if (C0 == nil) then
                C0 = CFrame.new(0, 0, 0)
        end
        
        if (C1 == nil) then
                C1 = CFrame.new(0, 0, 0)
        end
        
        local weld = Instance.new("Weld", Part0)
        weld.Part0 = Part0
        weld.Part1 = Part1
        weld.C0 = C0
        weld.C1 = C1
        
        if (UnRemoveable == true) then
                weld.Changed:connect(function() WeldChanged(weld, Part0, Part1, C0, C1) end)
        end

        return weld
end

function AddTrim(Part)
        if (not Part or type(Part) ~= "userdata") then return end
        
        local X = Instance.new("Part", Part)
        X.Locked = true
        X.CanCollide = false
        X.TopSurface = 0
        X.BottomSurface = 0
        X.formFactor = Part.formFactor
        X.BrickColor = Trim or BrickColor.new("Bright green")
        X.Position = Part.Position
        X.Size = Part.Size
        
        local XMesh = Instance.new("BlockMesh", X)
        XMesh.Scale = Vector3.new(0.05, 1.01, 1.01)
        
        local Y = Instance.new("Part", Part)
        Y.Locked = true
        Y.CanCollide = false
        Y.TopSurface = 0
        Y.BottomSurface = 0
        Y.formFactor = Part.formFactor
        Y.BrickColor = Trim or BrickColor.new("Bright green")
        Y.Position = Part.Position
        Y.Size = Part.Size
        
        local YMesh = Instance.new("BlockMesh", Y)
        YMesh.Scale = Vector3.new(0.35, 1.01, 0.35)
        
        local Z = Instance.new("Part", Part)
        Z.Locked = true
        Z.CanCollide = false
        Z.TopSurface = 0
        Z.BottomSurface = 0
        Z.formFactor = Part.formFactor
        Z.BrickColor = Trim or BrickColor.new("Bright green")
        Z.Position = Part.Position
        Z.Size = Part.Size
        
        local ZMesh = Instance.new("BlockMesh", Z)
        ZMesh.Scale = Vector3.new(1.01, 1.01, 0.05)
        
        Weld(Part, X, nil, nil, false)
        Weld(Part, Y, nil, nil, false)
        Weld(Part, Z, nil, nil, false)
        
        return Y
end

function MakeSuit()
        if (Suit == nil) then
                Suit = Instance.new("Model", Character)
                Suit.Name = "TNSsuit"
                local Helm = Instance.new("Part", Suit)
                Helm.Locked = true
                Helm.CanCollide = false
                Helm.TopSurface = 0
                Helm.BottomSurface = 0
                Helm.formFactor = 0
                Helm.BrickColor = Main or BrickColor.new("Really black")
                Helm.Position = Head.Position
                Helm.Size = Vector3.new(2, 1, 1)
                
                local Mesh = Instance.new("SpecialMesh", Helm)
                Mesh.MeshType = "Head"
                Mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
                
                Weld(Head, Helm, nil, nil, false)
                
                local Plate = Instance.new("Part", Suit)
                Plate.Locked = true
                Plate.CanCollide = false
                Plate.TopSurface = 0
                Plate.BottomSurface = 0
                Plate.formFactor = 0
                Plate.BrickColor = Main or BrickColor.new("Really black")
                Plate.Position = Torso.Position
                Plate.Size = Vector3.new(2, 2, 1)
                
                local Block = Instance.new("BlockMesh", Plate)
                
                Weld(Torso, Plate, nil, nil, false)
                
                local Arm1 = Instance.new("Part", Suit)
                Arm1.Locked = true
                Arm1.CanCollide = false
                Arm1.TopSurface = 0
                Arm1.BottomSurface = 0
                Arm1.formFactor = 0
                Arm1.BrickColor = Main or BrickColor.new("Really black")
                Arm1.Position = LeftArm.Position
                Arm1.Size = Vector3.new(1, 2, 1)
                AddTrim(Arm1)
                
                local Block2 = Instance.new("BlockMesh", Arm1)
                
                Weld(LeftArm, Arm1, nil, nil, false)
                
                local Arm2 = Instance.new("Part", Suit)
                Arm2.Locked = true
                Arm2.CanCollide = false
                Arm2.TopSurface = 0
                Arm2.BottomSurface = 0
                Arm2.formFactor = 0
                Arm2.BrickColor = Main or BrickColor.new("Really black")
                Arm2.Position = RightArm.Position
                Arm2.Size = Vector3.new(1, 2, 1)
                AddTrim(Arm2)
                
                local Block3 = Instance.new("BlockMesh", Arm2)
                
                Weld(RightArm, Arm2, nil, nil, false)
                
                local Leg1 = Instance.new("Part", Suit)
                Leg1.Locked = true
                Leg1.CanCollide = false
                Leg1.TopSurface = 0
                Leg1.BottomSurface = 0
                Leg1.formFactor = 0
                Leg1.BrickColor = Main or BrickColor.new("Really black")
                Leg1.Position = LeftLeg.Position
                Leg1.Size = Vector3.new(1, 2, 1)
                AddTrim(Leg1)
                
                local Block4 = Instance.new("BlockMesh", Leg1)
                
                Weld(LeftLeg, Leg1, nil, nil, false)
                
                local Leg2 = Instance.new("Part", Suit)
                Leg2.Locked = true
                Leg2.CanCollide = false
                Leg2.TopSurface = 0
                Leg2.BottomSurface = 0
                Leg2.formFactor = 0
                Leg2.BrickColor = Main or BrickColor.new("Really black")
                Leg2.Position = RightLeg.Position
                Leg2.Size = Vector3.new(1, 2, 1)
                AddTrim(Leg2)
                
                local Block5 = Instance.new("BlockMesh", Leg2)
                
                Weld(RightLeg, Leg2, nil, nil, false)
                
                local LasFram = Instance.new("Part", Suit)
                LasFram.Locked = true
                LasFram.CanCollide = false
                LasFram.TopSurface = 0
                LasFram.BottomSurface = 0
                LasFram.formFactor = 0
                LasFram.BrickColor = BrickColor.new("Dark stone grey")
                LasFram.Position = Head.Position
                LasFram.Size = Vector3.new(1, 1, 1)
                
                local Cylinder = Instance.new("CylinderMesh", LasFram)
                Cylinder.Scale = Vector3.new(1, 0.2, 1)
                
                Weld(Head, LasFram, CFrame.new(0, 0.15, -0.2), nil, false)
                
                local Las = Instance.new("Part", Suit)
                Las.Locked = true
                Las.CanCollide = false
                Las.TopSurface = 0
                Las.BottomSurface = 0
                Las.formFactor = 0
                Las.BrickColor = Trim or BrickColor.new("Bright green")
                Las.Position = Head.Position
                Las.Size = Vector3.new(1, 1, 1)
                
                local Cylinder2 = Instance.new("CylinderMesh", Las)
                Cylinder2.Scale = Vector3.new(0.95, 0.1, 1)
                
                Weld(Head, Las, CFrame.new(0, 0.15, -0.25), nil, false)
                
                local LasStart = Instance.new("Part", Suit)
                LasStart.Locked = true
                LasStart.CanCollide = false
                LasStart.TopSurface = 0
                LasStart.BottomSurface = 0
                LasStart.formFactor = 0
                LasStart.Transparency = 1
                LasStart.BrickColor = Trim or BrickColor.new("Bright green")
                LasStart.Position = Head.Position
                LasStart.Size = Vector3.new(1, 1, 1)
                LasStart.Name = "Laser-Start"
                
                Weld(Head, LasStart, CFrame.new(0, 0.15, -0.4), nil, false)
                
                for index = 1, 10 do
                        local Star = Instance.new("Part", Suit)
                        Star.Locked = true
                        Star.CanCollide = false
                        Star.TopSurface = 0
                        Star.BottomSurface = 0
                        Star.formFactor = 0
                        Star.BrickColor = Trim or BrickColor.new("Bright green")
                        Star.Position = Torso.Position
                        Star.Size = Vector3.new(1, 1, 1)
                        
                        local Block6 = Instance.new("BlockMesh", Star)
                        Block6.Scale = Vector3.new(0.15, 0.3, 1.05)
                        
                        Weld(Torso, Star, CFrame.Angles(0, 0, math.rad(index * 36)) * CFrame.new(0, 0.4, 0), nil, false)
                end
                
                local Ball = Instance.new("Part", Suit)
                Ball.Locked = true
                Ball.CanCollide = false
                Ball.TopSurface = 0
                Ball.BottomSurface = 0
                Ball.formFactor = 0
                Ball.Shape = 0
                Ball.BrickColor = Trim or BrickColor.new("Bright green")
                Ball.Position = Torso.Position
                Ball.Size = Vector3.new(1, 1, 1)
                
                local BMesh = Instance.new("SpecialMesh", Ball)
                BMesh.MeshType = "Sphere"
                BMesh.Scale = Vector3.new(0.4, 0.4, 0.1)
                
                Weld(Torso, Ball, CFrame.new(0, 0, -0.5), nil, false)
                
                local Ball2 = Instance.new("Part", Suit)
                Ball2.Locked = true
                Ball2.CanCollide = false
                Ball2.TopSurface = 0
                Ball2.BottomSurface = 0
                Ball2.formFactor = 0
                Ball2.Shape = 0
                Ball2.BrickColor = Trim or BrickColor.new("Bright green")
                Ball2.Position = Torso.Position
                Ball2.Size = Vector3.new(1, 1, 1)
                
                local BMesh2 = Instance.new("SpecialMesh", Ball2)
                BMesh2.MeshType = "Sphere"
                BMesh2.Scale = Vector3.new(0.4, 0.4, 0.1)
                
                Weld(Torso, Ball2, CFrame.new(0, 0, 0.5), nil, false)
                
                return Suit
                
        else
                pcall(function()
                        Suit.Parent = nil
                        Suit = nil
                end)
        end
end

function onHit(hit, origin)
        local Check = hit:GetFullName()
        if (not Check:match(Player.Name)) then
                hit:BreakJoints()
                hit.Velocity = CFrame.new((origin + hit.Position)/2, hit.Position).lookVector * 50
                wait(3)
                hit.Velocity = Vector3.new(0, 0, 0)
        end
end

function Missile(Origin, Target)
        local Rocket = Template:Clone()
        Rocket.Parent = Workspace
        Rocket.CFrame = Origin * CFrame.Angles(math.rad(-90), 0, 0)
        Debris:AddItem(Rocket, 10)
        
        local Mesh = Instance.new("SpecialMesh", Rocket)
        Mesh.MeshId = "http://www.roblox.com/asset/?id=2251534"
        Mesh.Scale = Vector3.new(0.1, 0.1, 0.1)
        
        local BG = Instance.new("BodyGyro", Rocket)
        BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
        BG.cframe = CFrame.new((Rocket.Position + Target)/2, Target)
        
        local BV = Instance.new("BodyVelocity", Rocket)
        BV.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        BV.velocity = Rocket.CFrame.lookVector * 50
        
        local UpdateDir = coroutine.create(function()
                while (Rocket.Parent ~= nil) do
                        wait()
                        BG.cframe = CFrame.new((Rocket.Position + Target)/2, Target)
                        BV.velocity = Rocket.CFrame.lookVector * 50
                end
        end)
        coroutine.resume(UpdateDir)
        
        return Rocket
end

function onKeyDown(key)
        if (key == "q" or key == string.char(1)) then
                Mnum = 1
        elseif (key == "e" or key == string.char(2)) then
                Mnum = 2
        elseif (key == "r" or key == string.char(3)) then
                Mnum = 3
        elseif (key == "t" or key == string.char(4)) then
                Mnum = 4
        end
end

function onButton1Down(mouse, Suit)
        --// Mask Laser: X = 0.8 | Y = 0.1 //--
        --// Hand Laser: X = 0.35 | Y = 0.35 //--
        local Mode = Modes[Mnum]
        
        if (Mode == "Mask-Laser") then
                Hold = true
                
                while (Hold == true and Player.Parent ~= nil) do -- // Incase you get kicked, disables laser // --
                        local Laser = BlockLaser(Suit["Laser-Start"].Position, mouse.Hit.p, 0.8, 0.1, Trim)
                        local Explo = Instance.new("Explosion", Laser)
                        Explo.Position = mouse.Hit.p
                        Explo.BlastRadius = 5
                        Explo.BlastPressure = 0
                        Explo.Hit:connect(function(hit) onHit(hit, mouse.Hit.p) end)
                        wait()
                        Laser.Parent = nil
                        Laser = nil
                end
        elseif (Mode == "Laser-Missile") then
                if (not Bomb) then
                        Bomb = true
                        
                        LeftShoulder.Part1 = nil
                        RightShoulder.Part1 = nil
                        
                        local NewLeft = Instance.new("Weld", Torso)
                        NewLeft.Part0 = Torso
                        NewLeft.Part1 = LeftArm
                        NewLeft.C0 = CFrame.new(-1, 0.5, 0)
                        NewLeft.C1 = CFrame.new(0.5, 0.5, 0)
                        
                        local NewRight = Instance.new("Weld", Torso)
                        NewRight.Part0 = Torso
                        NewRight.Part1 = RightArm
                        NewRight.C0 = CFrame.new(1, 0.5, 0)
                        NewRight.C1 = CFrame.new(-0.5, 0.5, 0)
                        
                        Table.Insert(Welds, NewLeft)
                        Table.Insert(Welds, NewRight)
                        
                        Hold = false
                        
                        for i = 1, 10 do
                                NewLeft.C0 = NewLeft.C0 * CFrame.Angles(math.rad(9), math.rad(-5), math.rad(4))
                                NewRight.C0 = NewRight.C0 * CFrame.Angles(math.rad(9), math.rad(5), math.rad(-4))
                                pcall(function()
                                        Torso["Left Shoulder"].C0 = Torso["Left Shoulder"].C0 * CFrame.Angles(math.rad(9), math.rad(-5), math.rad(4))
                                        Torso["Right Shoulder"].C0 = Torso["Right Shoulder"].C0 * CFrame.Angles(math.rad(9), math.rad(5), math.rad(-4))
                                end)
                                wait()
                        end
                        
                        for i = 1, 7 do
                                NewLeft.C0 = NewLeft.C0 * CFrame.Angles(0, math.rad(-4.5), math.rad(-9))
                                NewRight.C0 = NewRight.C0 * CFrame.Angles(0, math.rad(4.5), math.rad(9))
                                pcall(function()
                                        Torso["Left Shoulder"].C0 = Torso["Left Shoulder"].C0 * CFrame.Angles(math.rad(9), math.rad(-5), math.rad(4))
                                        Torso["Right Shoulder"].C0 = Torso["Right Shoulder"].C0 * CFrame.Angles(math.rad(9), math.rad(5), math.rad(-4))
                                end)
                                wait()
                        end
                        
                        Hold = true
                        
                        local LeftFire = coroutine.create(function()
                                while (Hold == true) do
                                        if (mouse.Target ~= nil and mouse.Target.Name ~= "TNSrocket") then
                                                if (Hold == true) then
                                                        local Rocket = Missile(LeftArm.CFrame * CFrame.new(0, -1, 0), mouse.Hit.p)
                                                        local connect
                                                        connect = Rocket.Touched:connect(function(hit)
                                                                local Check = hit:GetFullName()
                                                                if (hit.Name ~= "TNSrocket" and not Check:match(Player.Name)) then
                                                                        local Explo = Instance.new("Explosion", Rocket)
                                                                        Explo.Position = Rocket.Position
                                                                        Explo.BlastRadius = 5
                                                                        Explo.BlastPressure = 0
                                                                        Explo.Hit:connect(function(hit) onHit(hit, Explo.Position) end)
                                                                end
                                                                NewLeft.C0 = NewLeft.C0 * CFrame.new(0, 0.1, 0)
                                                                pcall(function()
                                                                        Torso["Left Shoulder"].C0 = Torso["Left Shoulder"].C0 * CFrame.new(0, 0.1, 0)
                                                                end)
                                                                for i = 1, 5 do
                                                                        NewLeft.C0 = NewLeft.C0 * CFrame.new(0, -0.02, 0)
                                                                        pcall(function()
                                                                                Torso["Left Shoulder"].C0 = Torso["Left Shoulder"].C0 * CFrame.new(0, -0.02, 0)
                                                                        end)
                                                                        wait()
                                                                end
                                                                Table.Insert(RocketConnect, connect)
                                                                connect:disconnect()
                                                                Rocket.Parent = nil
                                                        end)
                                                else
                                                        break
                                                end
                                        end
                                        wait(0.5)
                                end
                        end)
                        
                        local RightFire = coroutine.create(function()
                                while (Hold == true) do
                                        if (mouse.Target ~= nil and mouse.Target.Name ~= "TNSrocket") then
                                                if (Hold == true) then
                                                        local Rocket = Missile(RightArm.CFrame * CFrame.new(0, -1, 0), mouse.Hit.p)
                                                        Rocket.Touched:connect(function(hit)
                                                                local Check = hit:GetFullName()
                                                                if (hit.Name ~= "TNSrocket" and not Check:match(Player.Name)) then
                                                                        local Explo = Instance.new("Explosion", Rocket)
                                                                        Explo.Position = Rocket.Position
                                                                        Explo.BlastRadius = 5
                                                                        Explo.BlastPressure = 0
                                                                        Explo.Hit:connect(function(hit) onHit(hit, Explo.Position) end)
                                                                end
                                                                NewRight.C0 = NewRight.C0 * CFrame.new(0, 0.1, 0)
                                                                pcall(function()
                                                                        Torso["Right Shoulder"].C0 = Torso["Right Shoulder"].C0 * CFrame.new(0, 0.1, 0)
                                                                end)
                                                                for i = 1, 5 do
                                                                        NewRight.C0 = NewRight.C0 * CFrame.new(0, -0.02, 0)
                                                                        pcall(function()
                                                                                Torso["Right Shoulder"].C0 = Torso["Right Shoulder"].C0 * CFrame.new(0, -0.02, 0)
                                                                        end)
                                                                        wait()
                                                                end
                                                        end)
                                                        local ExploFix = coroutine.create(function()
                                                                while (Explo.Parent ~= nil) do
                                                                        for _, user in pairs(Players:GetChildren()) do
                                                                                if (user.Character ~= nil) then
                                                                                        local Torso = Userdata(user.Character, "Torso")
                                                                                        if (Torso ~= nil) then
                                                                                                if ((Rocket.Position - Torso.Position).magnitude < 5) then
                                                                                                        local Explo = Instance.new("Explosion", Rocket)
                                                                                                        Explo.Position = Rocket.Position
                                                                                                        Explo.BlastRadius = 5
                                                                                                        Explo.BlastPressure = 0
                                                                                                        Explo.Hit:connect(function(hit) onHit(hit, Explo.Position) end)
                                                                                                        Rocket.Parent = nil
                                                                                                end
                                                                                        end
                                                                                end
                                                                        end
                                                                end
                                                        end)
                                                        coroutine.resume(ExploFix)
                                                else
                                                        break
                                                end
                                        end
                                        wait(0.5)
                                end
                        end)
                        
                        if (Bomb == true) then
                                coroutine.resume(LeftFire)
                                wait(0.25)
                                coroutine.resume(RightFire)
                                repeat
                                        wait()
                                        if (Bomb == false) then
                                                coroutine.yield(LeftFire)
                                                coroutine.yield(RightFire)
                                                LeftFire = nil
                                                RightFire = nil
                                        end
                                until
                                        (LeftFire == nil and RightFire == nil)
                        end
                end
        elseif (Mode == "Fly") then
                if (Flying == false) then
                        Flying = true
                        
                        LeftShoulder.Part1 = nil
                        RightShoulder.Part1 = nil
                        LeftHip.Part1 = nil
                        RightHip.Part1 = nil
                        
                        local NewLeft = Instance.new("Weld", Torso)
                        NewLeft.Part0 = Torso
                        NewLeft.Part1 = LeftArm
                        NewLeft.C0 = CFrame.new(-1, 0.5, 0)
                        NewLeft.C1 = CFrame.new(0.5, 0.5, 0)
                                
                        local NewRight = Instance.new("Weld", Torso)
                        NewRight.Part0 = Torso
                        NewRight.Part1 = RightArm
                        NewRight.C0 = CFrame.new(1, 0.5, 0)
                        NewRight.C1 = CFrame.new(-0.5, 0.5, 0)
                        
                        local NewLeftH = Instance.new("Weld", Torso)
                        NewLeftH.Part0 = Torso
                        NewLeftH.Part1 = LeftLeg
                        NewLeftH.C0 = CFrame.new(-1, -1, 0)
                        NewLeftH.C1 = CFrame.new(-0.5, 1, 0)
                        
                        local NewRightH = Instance.new("Weld", Torso)
                        NewRightH.Part0 = Torso
                        NewRightH.Part1 = RightLeg
                        NewRightH.C0 = CFrame.new(1, -1, 0)
                        NewRightH.C1 = CFrame.new(0.5, 1, 0)
                        
                        Table.Insert(Welds, NewLeft)
                        Table.Insert(Welds, NewRight)
                        Table.Insert(Welds, NewLeftH)
                        Table.Insert(Welds, NewRightH)
                        
                        local Rod1 = Instance.new("Part", Suit)
                        Rod1.Locked = true
                        Rod1.CanCollide = false
                        Rod1.TopSurface = 0
                        Rod1.BottomSurface = 0
                        Rod1.formFactor = 0
                        Rod1.Size = Vector3.new(1, 1, 1)
                        Rod1.Position = RightArm.Position
                        Rod1.BrickColor = Trim or BrickColor.new("Bright green")
                        
                        local Rod2 = Instance.new("Part", Suit)
                        Rod2.Locked = true
                        Rod2.CanCollide = false
                        Rod2.TopSurface = 0
                        Rod2.BottomSurface = 0
                        Rod2.formFactor = 0
                        Rod2.Size = Vector3.new(1, 1, 1)
                        Rod2.Position = LeftArm.Position
                        Rod2.BrickColor = Trim or BrickColor.new("Bright green")
                        
                        local BlockMesh = Instance.new("BlockMesh", Rod1)
                        BlockMesh.Scale = Vector3.new(0.35, 2, 0.35)
                        local BlockMesh2 = Instance.new("BlockMesh", Rod2)
                        BlockMesh2.Scale = Vector3.new(0.35, 2, 0.35)
                        
                        local Dir = Instance.new("Part", Suit)
                        Dir.Locked = true
                        Dir.CanCollide = false
                        Dir.TopSurface = 0
                        Dir.BottomSurface = 0
                        Dir.formFactor = 0
                        Dir.Transparency = 1
                        Dir.Size = Vector3.new(1, 1, 1)
                        
                        local Fire = Instance.new("Fire", Dir)
                        Fire.Size = 3
                        Fire.Heat = -5
                        Fire.Color = Trim_Color3.Color or BrickColor.new("Bright green")
                        Fire.SecondaryColor = Trim_Color3.Color or BrickColor.new("Really black")
                        
                        local Attach = Weld(RightArm, Rod1, nil, nil, false)
                        local Attach2 = Weld(LeftArm, Rod2, nil, nil, false)
                        local Weld = Weld(Torso, Dir, CFrame.Angles(math.rad(90), 0, 0), nil, false)
                        
                        local BV = Instance.new("BodyVelocity", Torso)
                        BV.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                        
                        local BG = Instance.new("BodyGyro", Torso)
                        BG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                        BG.cframe = Torso.CFrame
                        
                        Table.Insert(Welds, Rod1)
                        Table.Insert(Welds, Rod2) --// Not just welds get removed ^_^ //--
                        Table.Insert(Welds, Dir)
                        Table.Insert(Welds, BG)
                        Table.Insert(Welds, BV)
                        Table.Insert(Welds, Fire)
                        
                        for i = 1, 25 do
                                BlockMesh.Scale = BlockMesh.Scale + Vector3.new(0, 0.2, 0)
                                BlockMesh2.Scale = BlockMesh2.Scale + Vector3.new(0, 0.2, 0)
                                wait()
                        end
                        
                        for i = 0, 1, 0.45 do
                                NewLeft.C0 = NewLeft.C0 * CFrame.Angles(0, 0, math.rad(-9))
                                NewRight.C0 = NewRight.C0 * CFrame.Angles(0, 0, math.rad(9))
                                wait(0.05)
                        end
                        
                        for i = 1, 6 do
                                BlockMesh.Scale = BlockMesh.Scale + Vector3.new(0.2, 0, 0.2)
                                BlockMesh2.Scale = BlockMesh2.Scale + Vector3.new(0.2, 0, 0.2)
                                wait()
                        end
                        
                        Flying = true
                        
                        local Fly = coroutine.create(function()
                                while (Flying == true) do
                                        wait()
                                        BG.cframe = CFrame.new((Torso.Position + mouse.Hit.p)/2, mouse.Hit.p) * CFrame.Angles(math.rad(-90), 0, 0)
                                        BV.velocity = Dir.CFrame.lookVector * Speed
                                end
                        end)
                        
                        coroutine.resume(Fly)
                                
                end
        end
end
        
function onButton1Up(mouse)
        Hold = false
        Bomb = false
        Flying = false
        
        for _, welds in pairs(Welds) do
                welds:Remove()
        end
        
        pcall(function()
                Torso["Left Shoulder"].C0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                Torso["Right Shoulder"].C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
        end)
        
        LeftShoulder.Part1 = LeftArm
        RightShoulder.Part1 = RightArm
        LeftHip.Part1 = LeftLeg
        RightHip.Part1 = RightLeg
end

function onSelected(mouse)
        hop:Remove()
        script.Parent = script.Parent.Parent
        Opaque()
        Suit = MakeSuit()
        mouse.Button1Down:connect(function() onButton1Down(mouse, Suit) end)
        mouse.Button1Up:connect(function() onButton1Up(mouse) end)
        mouse.KeyDown:connect(function(key) onKeyDown(key) end)
        local Hint = Instance.new("Hint", Player.PlayerGui)
        Hint.Text = "Press Q for Laser / Press E for Missiles / Press T for Flying"
        wait(3)
        Hint:Remove()
end

function onDeselected()
        Opaque()
        MakeSuit()
end

hop.Selected:connect(onSelected)
Humanoid.Died:connect(onDied)
