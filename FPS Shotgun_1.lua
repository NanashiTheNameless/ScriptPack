-- Shotgun by KirkyTurky12
local Player = game.Players.LocalPlayer
Player.CameraMode = "Classic"
--Player.CameraMode = "LockFirstPerson"
local Camera = workspace.CurrentCamera
Camera:ClearAllChildren()
local Char = Player.Character
local Torso = Char.Torso
local Mouse = Player:GetMouse()
local Active = true
local Weld = Instance.new("Weld",Torso)
Weld.Part0 = Torso
Weld.Part1 = Char.Head
local RA = Char["Right Arm"]
local Weld2 = Instance.new("Weld",Torso)
Weld2.Part0 = Torso
Weld2.Part1 = RA
Weld2.C1 = CFrame.new(0,0.5,0.25) * CFrame.Angles(math.rad(-90),math.rad(-35),0)
local LA = Char["Left Arm"]
local Weld3 = Instance.new("Weld",Torso)
Weld3.Part0 = Torso
Weld3.Part1 = LA
Weld3.C1 = CFrame.new(0,0.5,0.25) * CFrame.Angles(math.rad(-90),math.rad(35),0)
local FRA = Char["Right Arm"]:Clone()
Instance.new("SpecialMesh",FRA).MeshId = "http://www.roblox.com/Asset/?id=27111864"
--FRA.Transparency = 0.25
FRA.Parent = Camera
local Weld4 = Instance.new("Weld",Char.Head)
Weld4.Part0 = Char.Head
Weld4.Part1 = FRA
Weld4.C0 = CFrame.new(1.5, -1, -0.2) * CFrame.Angles(math.rad(90), 0, math.rad(-35))
local FLA = Char["Left Arm"]:Clone()
Instance.new("SpecialMesh",FLA).MeshId = "http://www.roblox.com/Asset/?id=27111419"
--FLA.Transparency = 0.25
FLA.Parent = Camera
local Weld5 = Instance.new("Weld",Char.Head)
Weld5.Part0 = Char.Head
Weld5.Part1 = FLA
Weld5.C0 = CFrame.new(0.15,-1,-1)*CFrame.Angles(math.rad(90),0,math.rad(35))
local Handle = Instance.new("Part",Camera)
Handle.FormFactor = "Custom"
Handle.CanCollide = false
Handle.Size = Vector3.new(0.3,3,0.3)
Handle.TopSurface = "Smooth"
Handle.BottomSurface = "Smooth"
Instance.new("CylinderMesh",Handle)
Handle:BreakJoints()
local Weld4 = Instance.new("Weld",FRA)
Weld4.Part0 = FRA
Weld4.Part1 = Handle
Weld4.C0 = (CFrame.new(-0.3,-0.75,0) * CFrame.Angles(math.rad(0),0,math.rad(35))) * CFrame.new(0,-1.5,-0.5)
local Stock = Instance.new("Part",Camera)
Stock.FormFactor = "Custom"
Stock.CanCollide = false
Stock.Size = Vector3.new(0.3,1.5,0.5)
Stock.BrickColor = BrickColor.new("Brown")
Stock.TopSurface = "Smooth"
Stock.BottomSurface = "Smooth"
Stock:BreakJoints()
local Weld4 = Instance.new("Weld",Handle)
Weld4.Part0 = Handle
Weld4.Part1 = Stock
Weld4.C0 = CFrame.new(0,1.5,0.12)
local Handle2 = Instance.new("Part",Char)
Handle2.FormFactor = "Custom"
Handle2.CanCollide = false
Handle2.Size = Vector3.new(0.3,3,0.3)
Handle2.TopSurface = "Smooth"
Handle2.BottomSurface = "Smooth"
Instance.new("CylinderMesh",Handle2)
Handle2:BreakJoints()
local Weld4 = Instance.new("Weld",RA)
Weld4.Part0 = RA
Weld4.Part1 = Handle2
Weld4.C0 = (CFrame.new(-0.3,-0.75,0) * CFrame.Angles(math.rad(0),0,math.rad(35))) * CFrame.new(0,-1.5,-0.5)
local Stock2 = Instance.new("Part",Char)
Stock2.FormFactor = "Custom"
Stock2.CanCollide = false
Stock2.Size = Vector3.new(0.3,1.5,0.5)
Stock2.BrickColor = BrickColor.new("Brown")
Stock2.TopSurface = "Smooth"
Stock2.BottomSurface = "Smooth"
Stock2:BreakJoints()
local Weld4 = Instance.new("Weld",Handle2)
Weld4.Part0 = Handle2
Weld4.Part1 = Stock2
Weld4.C0 = CFrame.new(0,1.5,0.12)
function CameraRecoil(Amount)
                local RecoilVector = Vector3.new()
                local XYZRandom = math.random(1,3)
                local XYZRandom2
                repeat XYZRandom2 = math.random(1,3) until XYZRandom2 ~= XYZRandom
                local NegativeRandom = math.random(1,2)
                        if (XYZRandom==1) then
                        RecoilVector = Vector3.new(Amount/100,0,0)
                        elseif (XYZRandom==2) then
                        RecoilVector = Vector3.new(0,Amount/100,0)
                        elseif (XYZRandom==3) then
                        RecoilVector = Vector3.new(0,0,Amount/100)
                        end
                        if (XYZRandom2==1) then
                        RecoilVector = RecoilVector+Vector3.new(Amount/100,0,0)
                        elseif (XYZRandom2==2) then
                        RecoilVector = RecoilVector+Vector3.new(0,Amount/100,0)
                        elseif (XYZRandom2==3) then
                        RecoilVector = RecoilVector+Vector3.new(0,0,Amount/100)
                        end
                        if (NegativeRandom==2) then
                        RecoilVector = RecoilVector*Vector3.new(-1,-1,-1)
                        end
                        local FoVFactor = -2
                        Spawn(function()
                                for i = 1, 2 do
                                Camera.Focus = game.Workspace.CurrentCamera.Focus - RecoilVector/2
                                Camera.FieldOfView = Camera.FieldOfView + FoVFactor / 2
                                wait(1/30)
                                end
                                for i = 1, 6 do
                                Camera.Focus = game.Workspace.CurrentCamera.Focus + RecoilVector/6
                                Camera.FieldOfView = Camera.FieldOfView - FoVFactor / 6
                                wait(1/30)
                                end
                        end)
end
function FireBullet(Start,End,RandomScale)
        coroutine.resume(coroutine.create(function()
                local Bullet = Instance.new("Part",Camera)
                Bullet.Anchored = true
                Bullet.CanCollide = false
                Bullet.FormFactor = "Custom"
                Bullet.Size = Vector3.new(0,0,2)
                Bullet.BrickColor = BrickColor.new("Bright yellow")
                Bullet.CFrame = CFrame.new(Start.p,End.p+Vector3.new(math.random(-RandomScale,RandomScale)*0.1,math.random(-RandomScale,RandomScale)*0.1,math.random(-RandomScale,RandomScale)*0.1))
                for i = 1,30 do
                        for i2 = 1,10 do
                                Reg = Region3.new(Bullet.Position-Vector3.new(Bullet.Size.X/2,Bullet.Size.Y/2,Bullet.Size.Z/2),Bullet.Position+Vector3.new(Bullet.Size.X/2,Bullet.Size.Y/2,Bullet.Size.Z/2))
                                local Results = workspace:FindPartsInRegion3WithIgnoreList(Reg,{Char,Camera,Bullet},1)
                                if #Results == 0 then
                                        Bullet.CFrame = Bullet.CFrame*CFrame.new(0,0,-2) * CFrame.Angles(math.rad(-0.025),0,0)
                                else
                                        local Hit = Results[1]
                                        local Pos = Bullet.CFrame
                                        local Hole = Instance.new("Part",workspace)
                                        Hole.Anchored = true
                                        Hole.FormFactor = "Custom"
                                        Hole.CanCollide = false
                                        Hole.BrickColor = BrickColor.new("Black")
                                        Hole.Size = Vector3.new(0.3,0.3,0.3)
                                        Hole.CFrame = Pos+Vector3.new(0,0.1,0)
                                        Bullet:Destroy()
                                        if Hit.Parent:FindFirstChild("Humanoid") then
                                                Hit.Parent.Humanoid.Health = Hit.Parent.Humanoid.Health-50
                                        elseif Hit.Parent:IsA("Hat") then
                                                Hit:BreakJoints()
                                        end
                                        wait(5)
                                        for i = 0,1,0.1 do
                                                Hole.Transparency = i
                                                wait(0.001)
                                        end
                                        Hole:Destroy()
                                        break
                                end
                        end
                        if Bullet.Parent == nil then
                                break
                        end
                        wait(0.0000001)
                end
                Bullet:Destroy()
        end))
end
local WalkUpDown = 0
local WalkLeftRight = 0        
local WDown = false
local ADown = false
local SDown = false
local DDown = false
local DB = false
Mouse.Button1Down:connect(function()
        if not DB then
                DB = true
                FireBullet(Handle.CFrame*CFrame.new(0,1.5,0),Mouse.Hit,1)
                FireBullet(Handle.CFrame*CFrame.new(0,1.5,0),Mouse.Hit,4)
                FireBullet(Handle.CFrame*CFrame.new(0,1.5,0),Mouse.Hit,7)
                FireBullet(Handle.CFrame*CFrame.new(0,1.5,0),Mouse.Hit,10)
                FireBullet(Handle.CFrame*CFrame.new(0,1.5,0),Mouse.Hit,13)
                FireBullet(Handle.CFrame*CFrame.new(0,1.5,0),Mouse.Hit,16)
                FireBullet(Handle.CFrame*CFrame.new(0,1.5,0),Mouse.Hit,19)
                FireBullet(Handle.CFrame*CFrame.new(0,1.5,0),Mouse.Hit,22)
                CameraRecoil(5)
                wait(0.25)
                DB = false
        end
end)
Mouse.KeyDown:connect(function(Key)
        if Key:lower() == "w" then
                WDown = true
        elseif Key:lower() == "a" then
                ADown = true
        elseif Key:lower() == "s" then
                SDown = true
        elseif Key:lower() == "d" then
                DDown = true
        end
end)
Mouse.KeyUp:connect(function(Key)
        if Key:lower() == "w" then
                WDown = false
        elseif Key:lower() == "a" then
                ADown = false
        elseif Key:lower() == "s" then
                SDown = false
        elseif Key:lower() == "d" then
                DDown = false
        end
end)
function DoIt()
        if WDown then
                WalkUpDown = WalkUpDown+2
                WalkUpDown = WalkUpDown > 10 and 10 or WalkUpDown
        elseif SDown then
                WalkUpDown = WalkUpDown-2
                WalkUpDown = WalkUpDown < -10 and -10 or WalkUpDown
        else
                if WalkUpDown > 0 then
                        WalkUpDown = WalkUpDown-2
                        WalkUpDown = WalkUpDown < 0 and 0 or WalkUpDown
                elseif WalkUpDown < 0 then
                        WalkUpDown = WalkUpDown+2
                        WalkUpDown = WalkUpDown > 0 and 0 or WalkUpDown
                end
        end
        if ADown then
                WalkLeftRight = WalkLeftRight+2
                WalkLeftRight = WalkLeftRight > 10 and 10 or WalkLeftRight
        elseif DDown then
                WalkLeftRight = WalkLeftRight-2
                WalkLeftRight = WalkLeftRight < -10 and -10 or WalkLeftRight
        else
                if WalkLeftRight > 0 then
                        WalkLeftRight = WalkLeftRight-2
                        WalkLeftRight = WalkLeftRight < 0 and 0 or WalkLeftRight
                elseif WalkLeftRight < 0 then
                        WalkLeftRight = WalkLeftRight+2
                        WalkLeftRight = WalkLeftRight > 0 and 0 or WalkLeftRight
                end
        end
        if Active then
                local Target = Camera.CoordinateFrame * CFrame.new(0,-WalkUpDown,-100)--CFrame.new(Left/Right ratio, Up/Down ratio, ignore/unknown)
                local Pos = Torso.CFrame:pointToObjectSpace(Target.p)
                Weld.C0 = (CFrame.new(Vector3.new(0,1.5,0),Vector3.new(0,Pos.Y,Pos.Z))) * CFrame.Angles(0,0,math.rad(WalkLeftRight))
                local Yus = 0.5+Pos.Y/400
                Weld2.C0 = CFrame.new(Vector3.new(1,Yus,0.25),Vector3.new(0,Pos.Y,Pos.Z))
                Weld3.C0 = CFrame.new(Vector3.new(-0.8,Yus,-0.75),Vector3.new(0,Pos.Y,Pos.Z))
                local TorsoTarget = CFrame.new(Target.x, Torso.CFrame.y, Target.z)
                Torso.CFrame = CFrame.new(Torso.CFrame.p, TorsoTarget.p)
        end
        --wait(0.000001)
end
game:GetService("RunService").Stepped:connect(DoIt)
Mouse.Move:connect(DoIt)
