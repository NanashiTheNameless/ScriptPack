--Made by HiraTear--
local part = Instance.new("Part")
local Explosion = Instance.new("Explosion", Workspace)
local morph = Instance.new("SpecialMesh")
local fire = Instance.new('Fire')
sou2 = Instance.new("Sound", game.Workspace)
sou2.SoundId = "rbxassetid://55224766"
sou2.Parent = game.Players.LocalPlayer.Character
sou2.Volume = 10
 morph.MeshType = "FileMesh"
morph.MeshId = "http://www.roblox.com/asset/?id=1290033"
morph.TextureId = "http://www.roblox.com/asset/?id=1290030"
morph.Scale = Vector3.new(100, 100, 100)
morph.Parent = part
part.Parent = game.Workspace
fire.Parent = part
fire.Size = 100
fire.Heat = 100
part.CanCollide = true
part.CFrame = game.Players.LocalPlayer.Character.Head.CFrame * CFrame.new(0,5000,0)
wait(7)
sou2:play()
local Explosion = Instance.new("Explosion", Workspace)
           Explosion.Position = game.Players.LocalPlayer.Character.Torso.Position
           Explosion.BlastPressure = 100000
           Explosion.DestroyJointRadiusPercent = 0.7
           Explosion.ExplosionType = "CratersAndDebris"
           Explosion.BlastRadius = 200
           Explosion.Hit:connect(function(Part, Distance)
               Part.Anchored = false
               if Distance <= 200 then
                   Part:BreakJoints()
               end
           end)
           --123