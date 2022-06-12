Player = game:GetService("Players"):FindFirstChild("rigletto")
selected = false
dropped = false
Button1Down = false
canFire = true
spell = 0
spellText = "None"
power = 100
spellGui = Instance.new("ScreenGui")
spellGui.Name = Name
local frame = Instance.new("Frame")
frame.Name = "Frame"
frame.Size = UDim2.new(0, 165, 0, 60)
frame.Position = UDim2.new(0, 0, 1, -60)
frame.BackgroundColor3 = Color3.new(1, 1, 1)
frame.BorderColor3 = Color3.new(0, 0, 0)
frame.Parent = spellGui
local label = Instance.new("TextLabel")
label.Name = "Weapon"
label.Text = "Weapon: " ..Name
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, 0, 0, 0)
label.BackgroundColor3 = Color3.new(1, 0, 0)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "SpellPrefix"
label.Text = "    Spell:"
label.TextXAlignment = "Left"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, 0, 0, 20)
label.BackgroundColor3 = Color3.new(1, 1, 1)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "Spell"
label.Text = "None"
label.TextXAlignment = "Right"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, -10, 0, 20)
label.BackgroundTransparency = 1
label.BorderSizePixel = 0
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "PowerPrefix"
label.Text = "    Power:"
label.TextXAlignment = "Left"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, 0, 0, 40)
label.BackgroundColor3 = Color3.new(1, 1, 1)
label.BorderColor3 = Color3.new(0, 0, 0)
label.Parent = frame
local label = Instance.new("TextLabel")
label.Name = "Power"
label.Text = "100"
label.TextXAlignment = "Right"
label.Size = UDim2.new(1, 0, 0, 20)
label.Position = UDim2.new(0, -10, 0, 40)
label.BackgroundTransparency = 1
label.BorderSizePixel = 0
label.Parent = frame
function updateGui(format)
        if selected == false then return end
        if Player:FindFirstChild("PlayerGui") == nil then Instance.new("PlayerGui").Parent = Player end
        if Player.PlayerGui:FindFirstChild(Name) == nil then
                spellGui:Clone().Parent = Player.PlayerGui
        end
        Player.PlayerGui[Name].Frame.Spell.Text = spellText
        if power <= 0 then
                Player.PlayerGui[Name].Frame.Power.Text = "OVERHEAT (" ..math.abs(power).. ")"
        else
                Player.PlayerGui[Name].Frame.Power.Text = power
        end
end
function makeParts(format)
        local model = Instance.new("Model")
        model.Name = Name
        model.Parent = Player.Character
        local pm = Instance.new("Part")
        pm.Name = "Handle"
        pm.formFactor = "Symmetric"
        pm.Size = Vector3.new(1, 1, 1)
        pm.BrickColor = BrickColor.new("Really red")
        pm.Locked = true
        pm.TopSurface = 0
        pm.BottomSurface = 0
        pm.Parent = model
        local m = Instance.new("SpecialMesh")
        m.MeshType = "Head"
        m.Scale = Vector3.new(0.3, 2, 0.3)
        m.Parent = pm
        if format ~= nil then
                local w = Instance.new("Weld")
                w.Part0 = pm
                if format == "hand" then
                        w.Part1 = Player.Character:FindFirstChild("Right Arm")
                        w.C0 = CFrame.new(0, -0.75, 0.9) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
                        w.C1 = CFrame.new()
                        w.Parent = pm
                elseif format == "holster" then
                        w.Part1 = Player.Character:FindFirstChild("Right Leg")
                        w.C0 = CFrame.new(0, 0.1, -0.55) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                        w.C1 = CFrame.new()
                        w.Parent = pm
                        model.Name = Name.. " (Holstered)"
                else
                        print("Error: Incorrect format string!")
                end
        end
        local s = Instance.new("Sound")
        s.Name = "Shine"
        s.SoundId = "http://www.roblox.com/asset/?id=2101144"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Bolt"
        s.SoundId = "http://www.roblox.com/asset/?id=2974000"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Impact1"
        s.SoundId = "http://roblox.com/asset/?id=10209596"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Charge1"
        s.SoundId = "http://www.roblox.com/asset/?id=1369158"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Charge2"
        s.SoundId = "http://www.roblox.com/asset/?id=2101137"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Charge3"
        s.SoundId = "http://www.roblox.com/asset/?id=2785493"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Charge4"
        s.SoundId = "http://www.roblox.com/asset/?id=35275769"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Fire1"
        s.SoundId = "http://roblox.com/asset/?id=10209268"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Fire2"
        s.SoundId = "http://www.roblox.com/asset/?id=13775466"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Fire3"
        s.SoundId = "http://www.roblox.com/asset/?id=2767090"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Fire4"
        s.SoundId = "http://www.roblox.com/asset/?id=2800815"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local s = Instance.new("Sound")
        s.Name = "Fire5"
        s.SoundId = "http://www.roblox.com/asset/?id=2974249"
        s.Volume = 1
        s.Pitch = 1
        s.Looped = false
        s.Parent = pm
        local p = Instance.new("Part")
        p.Name = "Source"
        p.formFactor = "Symmetric"
        p.Size = Vector3.new(1, 1, 1)
        p.Transparency = 1
        p.BrickColor = BrickColor.new("Really red")
        p.CanCollide = false
        p.Locked = true
        p.TopSurface = 0
        p.BottomSurface = 0
        p.Parent = model
        local m = Instance.new("SpecialMesh")
        m.MeshType = "Sphere"
        m.Scale = Vector3.new(1, 1, 1)
        m.Parent = p
        local w = Instance.new("Weld")
        w.Part0 = p
        w.Part1 = pm
        w.C0 = CFrame.new()
        w.C1 = CFrame.new(0, 1, 0)
        w.Parent = p
        local f = Instance.new("Fire")
        f.Enabled = false
        f.Name = "Fire"
        f.Heat = 0
        f.Size = 1
        f.Parent = p
        --for i, p in pairs(model.Handle:GetChildren()) do if p.className == "Sound" then p:Play() m = Instance.new("Message") m.Parent = model m.Text = p.Name wait(2) m:Remove() end end
end
function removeParts(format)
        if format == "hand" then
                if Player.Character:FindFirstChild(Name) ~= nil then
                        Player.Character[Name]:Remove()
                end
        elseif format == "holster" then
                if Player.Character:FindFirstChild(Name.. " (Holstered)") ~= nil then
                        Player.Character[Name.. " (Holstered)"]:Remove()
                end
        end
end
function SetAngle(Joint, Angle, Character)
        if Character == nil then return false end
        local Joints = {
                Character.Torso:FindFirstChild("Right Shoulder 2"),
                Character.Torso:FindFirstChild("Left Shoulder 2"),
                Character.Torso:FindFirstChild("Right Hip 2"),
                Character.Torso:FindFirstChild("Left Hip 2")
        }
        if Joints[Joint] == nil then return false end
        if Joint == 1 or Joint == 3 then
                Joints[Joint].DesiredAngle = Angle
        end
        if Joint == 2 or Joint == 4 then
                Joints[Joint].DesiredAngle = -Angle
        end
end
function ForceAngle(Joint, Angle, Character)
        if Character == nil then return false end
        local Joints = {
                Character.Torso:FindFirstChild("Right Shoulder 2"),
                Character.Torso:FindFirstChild("Left Shoulder 2"),
                Character.Torso:FindFirstChild("Right Hip 2"),
                Character.Torso:FindFirstChild("Left Hip 2")
        }
        if Joints[Joint] == nil then return false end
        if Joint == 1 or Joint == 3 then
                Joints[Joint].DesiredAngle = Angle
                Joints[Joint].CurrentAngle = Angle
        end
        if Joint == 2 or Joint == 4 then
                Joints[Joint].DesiredAngle = -Angle
                Joints[Joint].CurrentAngle = -Angle
        end
end
function SetSpeed(Joint, Speed, Character)
        if Character == nil then return false end
        local Joints = {
                Character.Torso:FindFirstChild("Right Shoulder 2"),
                Character.Torso:FindFirstChild("Left Shoulder 2"),
                Character.Torso:FindFirstChild("Right Hip 2"),
                Character.Torso:FindFirstChild("Left Hip 2")
        }
        if Joints[Joint] == nil then return false end
        Joints[Joint].MaxVelocity = Speed
end
function DisableLimb(Limb, Character)
        if Character == nil then return false end
        if Character:FindFirstChild("Torso") == nil then return false end
        local Joints = {
                Character.Torso:FindFirstChild("Right Shoulder"),
                Character.Torso:FindFirstChild("Left Shoulder"),
                Character.Torso:FindFirstChild("Right Hip"),
                Character.Torso:FindFirstChild("Left Hip")
        }
        local Limbs = {
                Character:FindFirstChild("Right Arm"),
                Character:FindFirstChild("Left Arm"),
                Character:FindFirstChild("Right Leg"),
                Character:FindFirstChild("Left Leg")
        }
        if Joints[Limb] == nil then return false end
        if Limbs[Limb] == nil then return false end
        local Joint = Instance.new("Motor")
        Joint.Parent = Character.Torso
        Joint.Part0 = Character.Torso
        Joint.Part1 = Limbs[Limb]
        if Limb == 1 then
                Joint.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
                Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
                Joint.Name = "Right Shoulder 2"
        elseif Limb == 2 then
                Joint.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
                Joint.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
                Joint.Name = "Left Shoulder 2"
        elseif Limb == 3 then
                Joint.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
                Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
                Joint.Name = "Right Hip 2"
        elseif Limb == 4 then
                Joint.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
                Joint.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
                Joint.Name = "Left Hip 2"
        end
        Joint.MaxVelocity = Joints[Limb].MaxVelocity
        Joint.CurrentAngle = Joints[Limb].CurrentAngle
        Joint.DesiredAngle = Joints[Limb].DesiredAngle
        Joints[Limb]:Remove()
end
function ResetLimbCFrame(Limb, Character)
        if Character == nil then return false end
        if Character.Parent == nil then return false end
        if Character:FindFirstChild("Torso") == nil then return false end
        local Joints = {
                Character.Torso:FindFirstChild("Right Shoulder 2"),
                Character.Torso:FindFirstChild("Left Shoulder 2"),
                Character.Torso:FindFirstChild("Right Hip 2"),
                Character.Torso:FindFirstChild("Left Hip 2")
        }
        local Limbs = {
                Character:FindFirstChild("Right Arm"),
                Character:FindFirstChild("Left Arm"),
                Character:FindFirstChild("Right Leg"),
                Character:FindFirstChild("Left Leg")
        }
        if Joints[Limb] == nil then return false end
        if Limbs[Limb] == nil then return false end
        if Limb == 1 then
                Joints[Limb].C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
                Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
        elseif Limb == 2 then
                Joints[Limb].C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
                Joints[Limb].C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
        elseif Limb == 3 then
                Joints[Limb].C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
                Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0)
        elseif Limb == 4 then
                Joints[Limb].C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
                Joints[Limb].C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0)
        end
end
function EnableLimb(Limb, Character)
        if Character == nil then return false end
        if Character:FindFirstChild("Torso") == nil then return false end
        local Joints = {
                Character.Torso:FindFirstChild("Right Shoulder 2"),
                Character.Torso:FindFirstChild("Left Shoulder 2"),
                Character.Torso:FindFirstChild("Right Hip 2"),
                Character.Torso:FindFirstChild("Left Hip 2")
        }
        local Limbs = {
                Character:FindFirstChild("Right Arm"),
                Character:FindFirstChild("Left Arm"),
                Character:FindFirstChild("Right Leg"),
                Character:FindFirstChild("Left Leg")
        }
        if Joints[Limb] == nil then return false end
        if Limbs[Limb] == nil then return false end
        if Limb == 1 then
                Joints[Limb].Name = "Right Shoulder"
        elseif Limb == 2 then
                Joints[Limb].Name = "Left Shoulder"
        elseif Limb == 3 then
                Joints[Limb].Name = "Right Hip"
        elseif Limb == 4 then
                Joints[Limb].Name = "Left Hip"
        end
        Animate = Character:FindFirstChild("Animate")
        if Animate == nil then return false end
        Animate = Animate:Clone()
        Character.Animate:Remove()
        Animate.Parent = Character
end
function Weld(x, y)
        local weld = Instance.new("Weld")
        weld.Part0 = x
        weld.Part1 = y
        CJ = CFrame.new(x.Position)
        C0 = x.CFrame:inverse() * CJ
        C1 = y.CFrame:inverse() * CJ
        weld.C0 = C0
        weld.C1 = C1
        weld.Parent = x
end
function tagHumanoid(humanoid)
        local tag = Instance.new("ObjectValue")
        tag.Name = "creator"
        tag.Value = Player
        tag.Parent = humanoid
        local tag = Instance.new("StringValue")
        tag.Name = "creatorType1"
        tag.Value = Name
        tag.Parent = humanoid
        local tag = Instance.new("StringValue")
        tag.Name = "creatorType2"
        tag.Value = "killed with magic"
        tag.Parent = humanoid
end
function untagHumanoid(humanoid)
        if humanoid ~= nil then
                local tag = humanoid:FindFirstChild("creator")
                if tag ~= nil then
                        tag:Remove()
                end
                local tag = humanoid:FindFirstChild("creatorType1")
                if tag ~= nil then
                        tag:Remove()
                end
                local tag = humanoid:FindFirstChild("creatorType2")
                if tag ~= nil then
                        tag:Remove()
                end
        end
end
function onButton1Down(mouse)
        if selected == false or canFire == false or power <= 0 then return end
        if Player.Character == nil then return end
        if Player.Character:FindFirstChild("Humanoid") == nil then return end
        if Player.Character.Humanoid.Health <= 0 then return end
        if Player.Character:FindFirstChild(Name) == nil then return end
        if Player.Character[Name]:FindFirstChild("Handle") == nil then return end
        if Player.Character[Name]:FindFirstChild("Source") == nil then return end
        if mouse == nil then return end
        Button1Down = true
        if spell == 1 then
                --Arefu Slash, projectile class. Uses hardened air particles to create razor-sharp projectiles.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(6, 6, 6)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Source.Fire.Enabled = true
                Player.Character[Name].Source.Fire.Heat = math.random(5, 10)
                Player.Character[Name].Source.Fire.Size = math.random(5, 10)
                Player.Character[Name].Source.Fire.Color = Color3.new(0, 1, 0)
                Player.Character[Name].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
                while Button1Down == true do
                        if power <= 0 then break end
                        coroutine.resume(coroutine.create(function()
                                for i = 0, 1, 0.1 do
                                        Player.Character[Name].Source.Mesh.Scale = (Vector3.new(i, i, i) * 5) + Vector3.new(1, 1, 1)
                                        Player.Character[Name].Source.Transparency = i
                                        wait()
                                end
                                Player.Character[Name].Source.Transparency = 1
                                Player.Character[Name].Source.Fire.Enabled = false
                        end))
                        Player.Character[Name].Handle.Fire2.Looped = false
                        Player.Character[Name].Handle.Fire2.Volume = 1
                        Player.Character[Name].Handle.Fire2.Pitch = 1
                        Player.Character[Name].Handle.Fire2:Play()
                        power = power - 1
                        local air = Instance.new("Part")
                        air.Name = "Air"
                        air.formFactor = "Symmetric"
                        air.Size = Vector3.new(1, 1, 2)
                        air.TopSurface = "Smooth"
                        air.BottomSurface = "Smooth"
                        air.BrickColor = BrickColor.new("Really red")
                        air.CanCollide = false
                        air.Anchored = true
                        air.Transparency = math.random(0, 5) / 10
                        air.CFrame = CFrame.new(mouse.Hit.p + Vector3.new(math.random(-100, 100), math.random(-100, 100), math.random(-100, 100)), mouse.Hit.p)
                        air.Parent = workspace
                        air:BreakJoints()
                        local m = Instance.new("SpecialMesh")
                        m.MeshType = "Sphere"
                        m.Scale = Vector3.new(0.5, 0.5, 1)
                        m.Parent = air
                        coroutine.resume(coroutine.create(function()
                                while air.Parent ~= nil do
                                        air.CFrame = CFrame.new(air.CFrame.p  + (air.CFrame.lookVector * 5)) * CFrame.fromEulerAnglesXYZ(air.CFrame:toEulerAnglesXYZ())
                                        for _, model in pairs(game:GetService("Workspace"):GetChildren()) do
                                                if model.className == "Part" then
                                                        if (air.Position - model.Position).magnitude <= 5 and model.Anchored == false then
                                                                model.Velocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
                                                                if math.random(1, 10) == 1 then model:BreakJoints() end
                                                                air:Remove()
                                                                return
                                                        end
                                                elseif model.className == "Model" and model ~= Player.Character then
                                                        for _, x in pairs(model:GetChildren()) do
                                                                if x.className == "Part" then
                                                                        if (air.Position - x.Position).magnitude <= 5 and x.Anchored == false then
                                                                                x.Velocity = Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
                                                                                if math.random(1, 10) == 1 then x:BreakJoints() end
                                                                                if model:FindFirstChild("Humanoid") ~= nil then
                                                                                        model.Humanoid:TakeDamage(77777777)
                                                                                        model.Humanoid.Sit = true
                                                                                end
                                                                                air:Remove()
                                                                                return
                                                                        end
                                                                end
                                                        end
                                                end
                                        end
                                        local shock = Instance.new("Part")
                                        shock.formFactor = "Symmetric"
                                        shock.Size = Vector3.new(1, 1, 1)
                                        shock.BrickColor = BrickColor.new("Really red")
                                        shock.Anchored = true
                                        shock.Name = "Shock Ring"
                                        shock.CanCollide = false
                                        shock.Parent = game:GetService("Workspace")
                                        local mesh = Instance.new("SpecialMesh")
                                        mesh.MeshType = "FileMesh"
                                        mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
                                        mesh.Scale = Vector3.new(55, 55, 55)
                                        mesh.Parent = shock
                                        shock.CFrame = CFrame.new(air.CFrame.p + (air.CFrame.lookVector * 10), air.CFrame.p + (air.CFrame.lookVector * 50)) * CFrame.fromEulerAnglesXYZ(math.rad(90), 0, 0)
                                        coroutine.resume(coroutine.create(function()
                                                for i = 0, 10 do
                                                        shock.Mesh.Scale = Vector3.new(i / 5, i, i / 5)
                                                        shock.Transparency = i / 10
                                                        wait()
                                                end
                                                shock:Remove()
                                        end))
                                        wait()
                                end
                        end))
                        coroutine.resume(coroutine.create(function(part)
                                wait(10)
                                part:Remove()
                        end), air)
                        wait()
                end
                canFire = true
        elseif spell == 2 then
                --Arefu Metoria, projectile class. Uses meteors.
                local position, target = mouse.Hit.p, mouse.Target
                if target == nil then return end
                if target.Parent == nil then return end
                canFire = false
                power = power - 50
                local offset = position - target.Position
                local size = math.random(10, 30)
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(6, 6, 6)
                Player.Character[Name].Source.Transparency = 0
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Handle.Charge2.Looped = false
                Player.Character[Name].Handle.Charge2.Volume = 1
                Player.Character[Name].Handle.Charge2.Pitch = 0.35
                Player.Character[Name].Handle.Charge2:Play()
                local beam = Instance.new("Part")
                beam.BrickColor = BrickColor.new("Really red")
                beam.TopSurface = 0
                beam.BottomSurface = 0
                beam.Size = Vector3.new(23, 23, 22)
                beam.Transparency = 0.5
                beam.Anchored = true
                beam.CanCollide = false
                beam.CFrame = CFrame.new(position)
                beam.Parent = game:GetService("Workspace")
                local mesh = Instance.new("CylinderMesh")
                mesh.Parent = beam
                for i = 0, 60, 1 do
                        local shine = Instance.new("Part")
                        shine.Name = "Shine"
                        shine.formFactor = "Symmetric"
                        shine.Shape = "Ball"
                        shine.CanCollide = false
                        shine.BrickColor = BrickColor.new("Really red")
                        shine.TopSurface = 0
                        shine.BottomSurface = 0
                        shine.Size = Vector3.new(15, 11, 11)
                        shine.Transparency = 0.25
                        shine.CFrame = CFrame.new(Player.Character[Name].Source.Position + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)))
                        shine.Parent = game:GetService("Workspace")
                        local force = Instance.new("BodyPosition")
                        force.D = 7000000
                        force.P = 7000000
                        force.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                        force.position = Player.Character[Name].Source.Position
                        force.Parent = shine
                        coroutine.resume(coroutine.create(function(part1, part2) for i = 0, 10 do if part1 ~= nil and part2 ~= nil then part1.BodyPosition.position = part2.Position wait() end end part1:Remove() end), shine, Player.Character[Name].Source)
                        mesh.Scale = Vector3.new(size * (i / 60), 10000, size * (i / 60))
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(i / 10, i / 10, i / 10)
                        Player.Character[Name].Source.Transparency = Player.Character[Name].Source.Transparency - 0.015
                        wait()
                end
                for i = 0, 10 do
                        beam.Transparency = beam.Transparency + 0.1
                        Player.Character[Name].Source.Transparency = Player.Character[Name].Source.Transparency + 0.1
                        wait()
                end
                if beam ~= nil then beam:Remove() end
                Player.Character[Name].Source.Transparency = 1
                canFire = true
                local meteor = Instance.new("Part")
                meteor.BrickColor = BrickColor.new("Really red")
                meteor.Name = "Meteor"
                meteor.CanCollide = true
                meteor.Locked = true
                meteor.formFactor = "Symmetric"
                meteor.Shape = "Ball"
                meteor.Size = Vector3.new(size, size, size)
                meteor.RotVelocity = Vector3.new(math.random(-1000, 1000), math.random(-1000, 1000), math.random(-1000, 1000))
                meteor.Parent = game:GetService("Workspace")
                meteor:BreakJoints()
                local fire = Instance.new("Fire")
                fire.Heat = 777
                fire.Size = 507
                fire.Parent = meteor
                local smoke = Instance.new("Smoke")
                smoke.RiseVelocity = 0
                smoke.Size = size + 3
                smoke.Color = Color3.new(50 / 255, 50 / 255, 50 / 255)
                smoke.Opacity = 0.5
                smoke.Parent = meteor
                local mesh = Instance.new("SpecialMesh")
                mesh.MeshType = "FileMesh"
                mesh.MeshId = "http://www.roblox.com/asset/?id=1290033"
                mesh.TextureId = "http://www.roblox.com/asset/?id=1290030"
                mesh.Scale = meteor.Size / 1.5
                mesh.VertexColor = Vector3.new(1, 0, 0)
                mesh.Parent = meteor
                for i = 5000, 0, -100 do
                        meteor.CFrame = CFrame.new((target.Position + offset) + Vector3.new(0, i, 0))
                        meteor.Velocity = Vector3.new(0, 0, 0)
                        wait()
                end
                meteor.CFrame = CFrame.new((target.Position + offset) + Vector3.new(0, size / 2, 0))
                delay(0.1, function() Weld(target, meteor) meteor.Velocity = Vector3.new(0, 0, 0) end)
                meteor.Anchored = true
                local s = Instance.new("Sound")
                s.SoundId = "rbxasset://sounds\\Launching rocket.wav"
                s.Pitch = (30 - size) / 25
                s.Parent = game:GetService("Workspace")
                s:Play()
                local shards = {}
                for i = 0, math.random(10, 30) do
                        local shard = Instance.new("Part")
                        shard.Name = "Ground Shard"
                        shard.Anchored = true
                        shard.Locked = true
                        shard.BrickColor = target.BrickColor
                        shard.Size = Vector3.new(size + 10, 2, size)
                        shard.CFrame = CFrame.new(meteor.Position - Vector3.new(0, size / 2, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(0), math.rad(math.random(0, 360)), math.rad(math.random(0, 25)))
                        shard.Parent = game:GetService("Workspace")
                        table.insert(shards, shard)
                end
                local new = Instance.new("Part")
                new.Name = "Meteor"
                new.Transparency = 1
                new.CanCollide = false
                new.Anchored = true
                new.CFrame = CFrame.new(meteor.Position)
                new.Parent = game:GetService("Workspace")
                local fire = Instance.new("Fire")
                fire.Heat = 500
                fire.Size = 500
                fire.Parent = new
                meteor.Fire:Remove()
                local shock = Instance.new("Part")
                shock.formFactor = "Symmetric"
                shock.Size = Vector3.new(20, 26, 26)
                shock.BrickColor = BrickColor.new("Really red")
                shock.Anchored = true
                shock.Name = "Shock Ring"
                shock.CanCollide = false
                shock.Parent = game:GetService("Workspace")
                local mesh = Instance.new("SpecialMesh")
                mesh.MeshType = "FileMesh"
                mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
                mesh.Parent = shock
                local tilt1 = math.random(-10, 10)
                local tilt2 = math.random(-10, 10)
                local tiltChance = math.random(1, 3)
                for i = 433, 500 do
                        shock.Mesh.Scale = Vector3.new(i, i, i)
                        if tiltChance == 1 then
                                shock.CFrame = CFrame.new(meteor.Position - Vector3.new(0, meteor.Size.y / 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + tilt1), 0, 0)
                        elseif tiltChance == 2 then
                                shock.CFrame = CFrame.new(meteor.Position - Vector3.new(0, meteor.Size.y / 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(tilt2), 0)
                        elseif tiltChance == 3 then
                                shock.CFrame = CFrame.new(meteor.Position - Vector3.new(0, meteor.Size.y / 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + tilt1), math.rad(tilt2), 0)
                        end
                        wait()
                end
                for i = 0, 1, 0.1 do
                        shock.Transparency = i
                        wait()
                end
                shock:Remove()
                wait(math.random(1, 10))
                if new ~= nil then new:Remove() end
                if meteor == nil then return end
                local e = Instance.new("Explosion")
                e.BlastPressure = 3000000
                e.Position = meteor.Position
                e.BlastRadius = meteor.Size.y * 5000
                e.Parent = game:GetService("Workspace")
                local s = Instance.new("Sound")
                s.Name = "Explosion"
                s.Pitch = (30 - size) / 20
                s.SoundId = "http://www.roblox.com/asset/?id=2101148"
                s.Parent = game:GetService("Workspace")
                s:Play()
                for i = 0, math.random(2, 10) do
                        local size = math.random(1, 5)
                        local new = meteor:Clone()
                        if new:FindFirstChild("Weld") ~= nil then new.Weld:Remove() end
                        new.Size = Vector3.new(100, 100, 100)
                        new.Mesh.Scale = Vector3.new(100, 100, 100)
                        new.CanCollide = false
                        new.Anchored = false
                        new.CFrame = CFrame.new(meteor.Position + Vector3.new(math.random(-meteor.Size.x / 2, meteor.Size.x / 2), math.random(-meteor.Size.y / 2, meteor.Size.y / 2), math.random(-meteor.Size.z / 2, meteor.Size.z / 2))) * CFrame.fromEulerAnglesXYZ(math.random(0, 360), math.random(0, 360), math.random(0, 360))
                        new.Velocity = Vector3.new(math.random(-100, 100), math.random(10, 250), math.random(-100, 100))
                        new.RotVelocity = Vector3.new(math.random(-500, 500), math.random(-500, 500), math.random(-500, 500))
                        new.Smoke:Remove()
                        new.Parent = game:GetService("Workspace")
                end
                for i = 1, #shards do
                        if shards[i] ~= nil then
                                if math.random(1, 2) == 1 then
                                        shards[i]:Remove()
                                else
                                        shards[i].CanCollide = false
                                        shards[i].Anchored = false
                                        shards[i].RotVelocity = Vector3.new(math.random(-500, 500), math.random(-500, 500), math.random(-500, 500))
                                        shards[i].Velocity = Vector3.new(math.random(-100, 100), math.random(10, 250), math.random(-100, 100))
                                end
                        end
                end
                meteor:Remove()
        elseif spell == 3 then
                --Eccrando Bolt, energy class. Fires a charged bolt of energy gathered in your wand.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(45, 55, 45)
                Player.Character[Name].Source.Transparency = 0
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Handle.Charge1.Looped = false
                Player.Character[Name].Handle.Charge1.Volume = 1
                Player.Character[Name].Handle.Charge1.Pitch = 1
                Player.Character[Name].Handle.Charge1:Play()
                for i = 0, 10 do
                        local shine = Instance.new("Part")
                        shine.Name = "Shine"
                        shine.formFactor = "Symmetric"
                        shine.Shape = "Ball"
                        shine.CanCollide = false
                        shine.BrickColor = BrickColor.new("Really red")
                        shine.TopSurface = 0
                        shine.BottomSurface = 0
                        shine.Size = Vector3.new(30, 33, 33)
                        shine.Transparency = 0.25
                        shine.CFrame = CFrame.new(Player.Character[Name].Source.Position + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)))
                        shine.Parent = game:GetService("Workspace")
                        local force = Instance.new("BodyPosition")
                        force.D = 70000
                        force.P = 100000
                        force.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                        force.position = Player.Character[Name].Source.Position
                        force.Parent = shine
                        coroutine.resume(coroutine.create(function(part1, part2) for i = 0, 10 do if part1 ~= nil and part2 ~= nil then part1.BodyPosition.position = part2.Position wait() end end part1:Remove() end), shine, Player.Character[Name].Source)
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(i / 7.5, i / 7.5, i / 7.5)
                        wait()
                        power = power - 1
                end
                for i = 10, 20 do
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(i / 7.5, i / 7.5, i / 7.5)
                        power = power - 1
                        wait()
                end
                local first = true
                while Button1Down == true or first == true do
                        first = false
                        if power < 0 then break end
                        power = power - 5
                        if Player.Character == nil then break end
                        if Player.Character:FindFirstChild("Humanoid") == nil then break end
                        if Player.Character.Humanoid.Health <= 0 then break end
                        if Player.Character:FindFirstChild(Name) == nil then break end
                        if Player.Character[Name]:FindFirstChild("Handle") == nil then break end
                        if Player.Character[Name]:FindFirstChild("Source") == nil then break end
                        if selected == false then break end
                        Player.Character[Name].Handle.Fire1.Looped = false
                        Player.Character[Name].Handle.Fire1.Volume = 1
                        Player.Character[Name].Handle.Fire1.Pitch = 1
                        Player.Character[Name].Handle.Fire1:Play()
                        local position = mouse.Hit.p
                        local e = Instance.new("Explosion")
                        e.BlastPressure = 500000
                        e.BlastRadius = 100000
                        e.Position = position
                        e.Parent = game:GetService("Workspace")
                        for i = 1, math.random(5, 25) do
                                local shine = Instance.new("Part")
                                shine.Name = "Shine"
                                shine.formFactor = "Symmetric"
                                shine.Shape = "Block"
                                shine.CanCollide = false
                                shine.Anchored = true
                                shine.BrickColor = BrickColor.new("Really red")
                                shine.TopSurface = 0
                                shine.BottomSurface = 0
                                shine.Size = Vector3.new(12, 13, 14)
                                shine.Transparency = 0.25
                                shine.CFrame = CFrame.new(mouse.Hit.p)
                                shine.Parent = game:GetService("Workspace")
                                local mesh = Instance.new("SpecialMesh")
                                mesh.MeshType = "Brick"
                                local random = math.random(3, 10) / 10
                                mesh.Scale = Vector3.new(random, random, random)
                                mesh.Parent = shine
                                coroutine.resume(coroutine.create(function(part)
                                        for i = 0.25 * 25, 25 do
                                                part.Transparency = i / 25
                                                part.CFrame = CFrame.new(part.CFrame.p + Vector3.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10)) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
                                                wait(math.random(1, 5) / 100)
                                        end
                                        part:Remove()
                                end), shine)
                        end
                        for i = 1, math.random(2, 5) do
                                local shine = Instance.new("Part")
                                shine.Name = "Shine"
                                shine.formFactor = "Symmetric"
                                shine.Shape = "Block"
                                shine.CanCollide = false
                                shine.Anchored = true
                                shine.BrickColor = BrickColor.new("Really red")
                                shine.TopSurface = 0
                                shine.BottomSurface = 0
                                shine.Size = Vector3.new(11, 11, 11)
                                shine.Transparency = 0.25
                                shine.CFrame = CFrame.new(mouse.Hit.p + Vector3.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10))
                                shine.Parent = game:GetService("Workspace")
                                local mesh = Instance.new("SpecialMesh")
                                mesh.MeshType = "Sphere"
                                local random = math.random(3, 10) / 10
                                mesh.Scale = Vector3.new(random, random, random)
                                mesh.Parent = shine
                                coroutine.resume(coroutine.create(function(part)
                                        for i = 0.25, 1, 0.05 do
                                                part.Transparency = i
                                                part.Mesh.Scale = part.Mesh.Scale + Vector3.new(1, 1, 1)
                                                wait()
                                        end
                                        part:Remove()
                                end), shine)
                        end
                        local trail = Instance.new("Part")
                        trail.BrickColor = BrickColor.new("Really red")
                        trail.TopSurface = 0
                        trail.BottomSurface = 0
                        trail.Size = Vector3.new(11, 11, 11)
                        trail.Transparency = 0.4
                        trail.Anchored = true
                        trail.CanCollide = false
                        trail.CFrame = CFrame.new((Player.Character[Name].Source.Position + position) / 2, position)
                        trail.Parent = game:GetService("Workspace")
                        local mesh = Instance.new("SpecialMesh")
                        mesh.MeshType = "Brick"
                        mesh.Scale = Vector3.new(math.random(2, 5) / 10, math.random(2, 5) / 10, (position - Player.Character[Name].Source.Position).magnitude)
                        mesh.Parent = trail
                        coroutine.resume(coroutine.create(function(part) wait(0.1) for i = 1, 10 do part.Transparency = part.Transparency + 0.1 wait(0.1) end part:Remove() end), trail)
                        coroutine.resume(coroutine.create(function()
                                for i = 10, 0, -1 do
                                        Player.Character[Name].Source.Transparency = (10 - i) / 10
                                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(i / 1.5, i / 1.5, i / 1.5)
                                        wait()
                                end
                        end))
                        wait(0.3)
                end
                Player.Character[Name].Source.Transparency = 1
                canFire = true
        elseif spell == 4 then
                --Eccrando Strike, energy class. Use the clouds to your advantage and fire bolts of lightning at the ground.
                while Button1Down == true do
                        if Player.Character == nil then break end
                        if Player.Character:FindFirstChild("Humanoid") == nil then break end
                        if Player.Character.Humanoid.Health <= 0 then break end
                        if Player.Character:FindFirstChild(Name) == nil then break end
                        if Player.Character[Name]:FindFirstChild("Handle") == nil then break end
                        if Player.Character[Name]:FindFirstChild("Source") == nil then break end
                        if selected == false then break end
                        while power <= 25 and Button1Down == true do
                                wait()
                        end
                        if power <= 0 then break end
                        canFire = false
                        Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(21, 21, 21)
                        Player.Character[Name].Source.Transparency = 0
                        Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                        Player.Character[Name].Handle.Charge1.Looped = false
                        Player.Character[Name].Handle.Charge1.Volume = 1
                        Player.Character[Name].Handle.Charge1.Pitch = 0.4
                        Player.Character[Name].Handle.Charge1:Play()
                        for i = 0, 50 do
                                local shine = Instance.new("Part")
                                shine.Name = "Shine"
                                shine.formFactor = "Symmetric"
                                shine.Shape = "Ball"
                                shine.CanCollide = false
                                shine.BrickColor = BrickColor.new("Really red")
                                shine.TopSurface = 0
                                shine.BottomSurface = 0
                                shine.Size = Vector3.new(44, 41, 44)
                                shine.Transparency = 0.25
                                shine.CFrame = CFrame.new(Player.Character[Name].Source.Position + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5)))
                                shine.Parent = game:GetService("Workspace")
                                local force = Instance.new("BodyPosition")
                                force.D = 7000000
                                force.P = 1000000
                                force.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                force.position = Player.Character[Name].Source.Position
                                force.Parent = shine
                                coroutine.resume(coroutine.create(function(part1, part2) for i = 0, 10 do if part1 ~= nil and part2 ~= nil then part1.BodyPosition.position = part2.Position wait() end end part1:Remove() end), shine, Player.Character[Name].Source)
                                Player.Character[Name].Source.Mesh.Scale = Vector3.new(i / 7.5, i / 7.5, i / 7.5)
                                power = power - 1
                                wait()
                        end
                        power = power - 10
                        if math.random(1, 2) == 1 then id = "Thunder" else id = "Lightning" end
                        local s = Instance.new("Sound")
                        s.Volume = math.random(10, 50) / 10
                        s.SoundId = "rbxasset://sounds\\Halloween" ..id.. ".wav"
                        s.Pitch = math.random(9, 11) / 10
                        s.Parent = game:GetService("Workspace")
                        s:Play()
                        if math.random(1, 2) == 1 then id = "Thunder" else id = "Lightning" end
                        local s = Instance.new("Sound")
                        s.Volume = math.random(1, 10) / 10
                        s.SoundId = "rbxasset://sounds\\Halloween" ..id.. ".wav"
                        s.Pitch = math.random(1, 30) / 10
                        s.Parent = game:GetService("Workspace")
                        s:Play()
                        if selected == false then break end
                        local e = Instance.new("Explosion")
                        e.BlastPressure = 10000000
                        e.BlastRadius = 25000000
                        e.Position = mouse.Hit.p
                        e.Parent = game:GetService("Workspace")
                        local pos = (mouse.Hit.p + Vector3.new(math.random(-100, 100), 1000, math.random(-100, 100)))
                        local trail = Instance.new("Part")
                        trail.BrickColor = BrickColor.new("Really red")
                        trail.TopSurface = 0
                        trail.BottomSurface = 0
                        trail.Size = Vector3.new(14, 15, 14)
                        trail.Transparency = 0.4
                        trail.Anchored = true
                        trail.CanCollide = false
                        trail.CFrame = CFrame.new((pos + mouse.Hit.p) / 2, mouse.Hit.p)
                        trail.Parent = game:GetService("Workspace")
                        local mesh = Instance.new("SpecialMesh")
                        mesh.MeshType = "Brick"
                        mesh.Scale = Vector3.new(math.random(40, 50) / 10, math.random(40, 50) / 10, (mouse.Hit.p - pos).magnitude + 10)
                        mesh.Parent = trail
                        coroutine.resume(coroutine.create(function(part) wait(0.1) for i = 1, 10 do part.Transparency = part.Transparency + 0.1 wait(0.1) end part:Remove() end), trail)
                        for i = 10, 0, -1 do
                                Player.Character[Name].Source.Transparency = Player.Character[Name].Source.Transparency + 0.1
                                Player.Character[Name].Source.Mesh.Scale = Vector3.new(i / 1.5, i / 1.5, i / 1.5)
                                wait()
                        end
                        Player.Character[Name].Source.Transparency = 1
                        wait(0.1)
                        canFire = true
                end
        elseif spell == 5 then
                --Thius Dae, health-based class. Seep life from your enemies to save yourself. Works as a general defense against multiple enemies.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Brick"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(13, 13, 13)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Handle.Charge4.Looped = true
                Player.Character[Name].Handle.Charge4.Volume = 1
                Player.Character[Name].Handle.Charge4.Pitch = 1
                Player.Character[Name].Handle.Charge4:Play()
                for i = 0, 10 do
                        Player.Character[Name].Source.Mesh.Scale = Player.Character[Name].Source.Mesh.Scale * 1.11
                        Player.Character[Name].Source.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
                        wait()
                end
                for i = 0, math.huge, 0.1 do
                        if Button1Down == false then break end
                        if Player.Character == nil then break end
                        if Player.Character:FindFirstChild("Humanoid") == nil then break end
                        if Player.Character.Humanoid.Health <= 0 then break end
                        if Player.Character:FindFirstChild(Name) == nil then break end
                        if Player.Character[Name]:FindFirstChild("Handle") == nil then break end
                        if Player.Character[Name]:FindFirstChild("Source") == nil then break end
                        if power <= 0 then break end
                        local endstr = string.sub(tostring(i), string.len(tostring(i)), string.len(tostring(i)))
                        if endstr == "0" or endstr == "2" or endstr == "4" or endstr == "6" or endstr == "8" then
                                power = power - 1
                        end
                        Player.Character[Name].Source.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(math.sin(i) + 3, math.sin(i) + 3, math.sin(i) + 3)
                        local shine = Instance.new("Part")
                        shine.Name = "Shine"
                        shine.formFactor = "Symmetric"
                        shine.Shape = "Block"
                        shine.CanCollide = false
                        shine.Anchored = true
                        shine.BrickColor = BrickColor.new("Really red")
                        shine.TopSurface = 0
                        shine.BottomSurface = 0
                        shine.Size = Vector3.new(1, 1, 1)
                        shine.Transparency = 0.25
                        shine.CFrame = CFrame.new(Player.Character[Name].Source.Position)
                        shine.Parent = game:GetService("Workspace")
                        local mesh = Instance.new("SpecialMesh")
                        mesh.MeshType = "Brick"
                        local random = math.random(3, 10) / 10
                        mesh.Scale = Vector3.new(random, random, random)
                        mesh.Parent = shine
                        coroutine.resume(coroutine.create(function(part)
                                for i = 0.25 * 25, 25 do
                                        part.Transparency = i / 25
                                        part.CFrame = CFrame.new(part.CFrame.p + Vector3.new(math.random(-10, 10) / 10, math.random(-10, 10) / 10, math.random(-10, 10) / 10)) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
                                        wait(math.random(1, 5) / 100)
                                end
                                part:Remove()
                        end), shine)
                        for _, model in pairs(game:GetService("Workspace"):GetChildren()) do
                                if model ~= Player.Character then
                                        if model:FindFirstChild("Torso") ~= nil and model:FindFirstChild("Humanoid") ~= nil then
                                                if (Player.Character.Torso.Position - model.Torso.Position).magnitude <= 25 then
                                                        local trail = Instance.new("Part")
                                                        trail.BrickColor = BrickColor.new("Really red")
                                                        trail.TopSurface = 0
                                                        trail.BottomSurface = 0
                                                        trail.Size = Vector3.new(4, 3, 4)
                                                        trail.Transparency = 0.4
                                                        trail.Anchored = true
                                                        trail.CanCollide = false
                                                        trail.CFrame = CFrame.new((Player.Character[Name].Source.Position + model.Torso.Position) / 2, model.Torso.Position)
                                                        trail.Parent = game:GetService("Workspace")
                                                        local mesh = Instance.new("SpecialMesh")
                                                        mesh.MeshType = "Brick"
                                                        mesh.Scale = Vector3.new(math.random(2, 5) / 10, math.random(2, 5) / 10, (model.Torso.Position - Player.Character[Name].Source.Position).magnitude)
                                                        mesh.Parent = trail
                                                        coroutine.resume(coroutine.create(function(part) wait() part:Remove() end), trail)
                                                        if model.Humanoid.Health > 0 then
                                                                model.Humanoid:TakeDamage(7777777.25)
                                                                Player.Character.Humanoid.Health = Player.Character.Humanoid.Health + (3432432.25 / 1)
                                                        elseif model.Humanoid.Health <= 0 then
                                                                model.Humanoid.Health = 0
                                                                model.Humanoid.Name = "HumanoidAbsorbed"
                                                                for _, part in pairs(model:GetChildren()) do
                                                                        if part.className == "Part" then
                                                                                local position = Instance.new("BodyPosition")
                                                                                position.Name = "Thius Dae"
                                                                                position.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                                                position.P = 100
                                                                                position.D = 50
                                                                                position.Parent = part
                                                                                position.position = Player.Character[Name].Source.Position
                                                                                coroutine.resume(coroutine.create(function() while position.Parent ~= nil do position.position = Player.Character[Name].Source.Position part.CanCollide = false wait() end end))
                                                                                coroutine.resume(coroutine.create(function() wait(3.5) position:Remove() end))
                                                                        end
                                                                end
                                                                Player.Character.Humanoid.Health = Player.Character.Humanoid.Health + 5432221
                                                                power = power + 25
                                                                Player.Character[Name].Handle.Fire4.Looped = false
                                                                Player.Character[Name].Handle.Fire4.Volume = 1
                                                                Player.Character[Name].Handle.Fire4.Pitch = 1
                                                                Player.Character[Name].Handle.Fire4:Play()
                                                        end
                                                end
                                        end
                                end
                        end
                        wait()
                end
                for i = 0, 25 do
                        Player.Character[Name].Source.Mesh.Scale = Player.Character[Name].Source.Mesh.Scale / 1.15
                        Player.Character[Name].Source.Weld.C0 = CFrame.fromEulerAnglesXYZ(math.rad(math.random(0, 360)), math.rad(math.random(0, 360)), math.rad(math.random(0, 360)))
                        Player.Character[Name].Handle.Charge4.Volume = (25 - i) / 25
                        wait()
                end
                Player.Character[Name].Handle.Charge4:Stop()
                Player.Character[Name].Source.Transparency = 1
                Player.Character[Name].Source.Weld.C0 = CFrame.new()
                canFire = true
        elseif spell == 6 then
                --Thius Heed, health-based class. Heal people around you and sheild them.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(1, 1, 1)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Source.Fire.Enabled = true
                Player.Character[Name].Source.Fire.Heat = 10
                Player.Character[Name].Source.Fire.Size = 1
                Player.Character[Name].Source.Fire.Color = Color3.new(1, 1, 1)
                Player.Character[Name].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
                Player.Character[Name].Handle.Shine.Looped = true
                Player.Character[Name].Handle.Shine.Volume = 1
                Player.Character[Name].Handle.Shine.Pitch = 1
                Player.Character[Name].Handle.Shine:Play()
                for i = 0, 5 do
                        Player.Character[Name].Source.Mesh.Scale = Player.Character[Name].Source.Mesh.Scale * 1.2
                        Player.Character[Name].Source.Fire.Size = Player.Character[Name].Source.Fire.Size * 1.2
                        wait()
                end
                local heed = Instance.new("ForceField")
                heed.Name = "HeedShield"
                for i = 0, math.huge, 0.1 do
                        if Button1Down == false then break end
                        if Player.Character == nil then break end
                        if Player.Character:FindFirstChild("Humanoid") == nil then break end
                        if Player.Character.Humanoid.Health <= 0 then break end
                        if Player.Character:FindFirstChild(Name) == nil then break end
                        if Player.Character[Name]:FindFirstChild("Handle") == nil then break end
                        if Player.Character[Name]:FindFirstChild("Source") == nil then break end
                        if power <= 0 then break end
                        local endstr = string.sub(tostring(i), string.len(tostring(i)), string.len(tostring(i)))
                        if endstr == "0" or endstr == "2" or endstr == "4" or endstr == "6" or endstr == "8" then
                                power = power - 1
                        end
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(math.sin(i) + 3, math.sin(i) + 3, math.sin(i) + 3)
                        Player.Character[Name].Source.Fire.Size = math.sin(i) + 10
                        Player.Character[Name].Source.Fire.Heat = math.sin(i) + 10
                        for _, model in pairs(game:GetService("Workspace"):GetChildren()) do
                                if model:FindFirstChild("Torso") ~= nil and model:FindFirstChild("Humanoid") ~= nil then
                                        if (Player.Character.Torso.Position - model.Torso.Position).magnitude <= 25 then
                                                local trail = Instance.new("Part")
                                                trail.BrickColor = BrickColor.new("Really red")
                                                trail.TopSurface = 0
                                                trail.BottomSurface = 0
                                                trail.Size = Vector3.new(3, 5, 4)
                                                trail.Transparency = 0.4
                                                trail.Anchored = true
                                                trail.CanCollide = false
                                                trail.CFrame = CFrame.new((Player.Character[Name].Source.Position + model.Torso.Position) / 2, model.Torso.Position)
                                                trail.Parent = game:GetService("Workspace")
                                                local mesh = Instance.new("SpecialMesh")
                                                mesh.MeshType = "Brick"
                                                mesh.Scale = Vector3.new(math.random(2, 5) / 10, math.random(2, 5) / 10, (model.Torso.Position - Player.Character[Name].Source.Position).magnitude)
                                                mesh.Parent = trail
                                                coroutine.resume(coroutine.create(function(part) wait() part:Remove() end), trail)
                                                model.Humanoid.Health = model.Humanoid.Health + 1.25
                                                heed:Clone().Parent = model
                                                coroutine.resume(coroutine.create(function(part) wait() part:Remove() end), model.HeedShield)
                                        end
                                end
                        end
                        wait()
                end
                for i = 0, 25 do
                        Player.Character[Name].Source.Mesh.Scale = Player.Character[Name].Source.Mesh.Scale / 1.15
                        Player.Character[Name].Source.Fire.Size = Player.Character[Name].Source.Fire.Size / 1.15
                        Player.Character[Name].Source.Fire.Heat = Player.Character[Name].Source.Fire.Heat / 1.15
                        Player.Character[Name].Handle.Shine.Volume = (25 - i) / 25
                        wait()
                end
                Player.Character[Name].Handle.Shine:Stop()
                Player.Character[Name].Source.Transparency = 1
                Player.Character[Name].Source.Fire.Enabled = false
                canFire = true
        elseif spell == 7 then
                --Combuscus Phore, fire/explosives class. A small explosion with a bit of magic makes to be a spectacular performance.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(24, 24, 24)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Source.Fire.Enabled = true
                Player.Character[Name].Source.Fire.Heat = 10
                Player.Character[Name].Source.Fire.Size = 10
                Player.Character[Name].Source.Fire.Color = Color3.new(1, 0, 0)
                Player.Character[Name].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
                Player.Character[Name].Handle.Bolt.Looped = false
                Player.Character[Name].Handle.Bolt.Volume = 1
                Player.Character[Name].Handle.Bolt.Pitch = 1.5
                Player.Character[Name].Handle.Bolt:Play()
                power = power - 75
                local shock = Instance.new("Part")
                shock.formFactor = "Symmetric"
                shock.Size = Vector3.new(25, 24, 25)
                shock.BrickColor = BrickColor.new("Really red")
                shock.Anchored = true
                shock.Name = "Shock Ring"
                shock.CanCollide = false
                shock.Parent = game:GetService("Workspace")
                local mesh = Instance.new("SpecialMesh")
                mesh.MeshType = "FileMesh"
                mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
                mesh.Parent = shock
                local tilt1 = math.random(-10, 10)
                local tilt2 = math.random(-10, 10)
                local tiltChance = math.random(1, 3)
                for i = 0, 25 do
                        Player.Character[Name].Handle.Bolt.Pitch = Player.Character[Name].Handle.Bolt.Pitch - 0.1
                        shock.Mesh.Scale =  Vector3.new(i, i, i) * (25 - i)
                        if tiltChance == 1 then
                                shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + tilt1), 0, 0)
                        elseif tiltChance == 2 then
                                shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(tilt2), 0)
                        elseif tiltChance == 3 then
                                shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + tilt1), math.rad(tilt2), 0)
                        end
                        Player.Character[Name].Source.Mesh.Scale = (Vector3.new(i, i, i) / 5) * (25 - i)
                        Player.Character[Name].Source.Fire.Size = (i / 5) * (25 - i)
                        Player.Character[Name].Source.Fire.Heat = (i / 5) * (25 - i)
                        for _, model in pairs(game:GetService("Workspace"):GetChildren()) do
                                if model.className == "Part" then
                                        if (Player.Character.Torso.Position - model.Position).magnitude <= (i * (25 - i)) / 2 and model.Anchored == false then
                                                model.Velocity = ((model.Position - Player.Character.Torso.Position) * (math.sin(i / 4) * 10)) + Vector3.new(0, 25, 0)
                                                if math.random(1, 10) == 1 then model:BreakJoints() end
                                        end
                                elseif model.className == "Model" and model ~= Player.Character then
                                        for _, x in pairs(model:GetChildren()) do
                                                if x.className == "Part" then
                                                        if (Player.Character.Torso.Position - x.Position).magnitude <= (i * (25 - i)) / 2 and x.Anchored == false then
                                                                x.Velocity = ((x.Position - Player.Character.Torso.Position) * (math.sin(i / 4) * 10)) + Vector3.new(0, 25, 0)
                                                                if math.random(1, 10) == 1 then x:BreakJoints() end
                                                                if model:FindFirstChild("Humanoid") ~= nil then
                                                                        model.Humanoid:TakeDamage(10000000)
                                                                        model.Humanoid.Sit = true
                                                                end
                                                        end
                                                end
                                        end
                                end
                        end
                        wait(0.03)
                end
                shock:Remove()
                Player.Character[Name].Source.Transparency = 1
                Player.Character[Name].Source.Fire.Enabled = false
                canFire = true
        elseif spell == 8 then
                --Combuscus Burn, fire/explosives class. Basically, light things on fire.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(21, 21, 21)
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Handle.Fire3.Looped = false
                Player.Character[Name].Handle.Fire3.Volume = 1
                Player.Character[Name].Handle.Fire3.Pitch = 1
                Player.Character[Name].Handle.Fire3:Play()
                Player.Character[Name].Handle.Fire4.Looped = false
                Player.Character[Name].Handle.Fire4.Volume = 1
                Player.Character[Name].Handle.Fire4.Pitch = 1
                Player.Character[Name].Handle.Fire4:Play()
                coroutine.resume(coroutine.create(function()
                        for i = 0, 1, 0.1 do
                                Player.Character[Name].Source.Mesh.Scale = (Vector3.new(i, i, i) * 5) + Vector3.new(24, 25, 23)
                                Player.Character[Name].Source.Transparency = i
                        wait()
                        end
                        Player.Character[Name].Source.Transparency = 1
                end))
                if mouse.Target == nil then return end
                if mouse.Target.Parent == nil then return end
                local function SetFire(target, offset)
                        if target == nil then return end
                        if offset == nil then offset = Vector3.new(0, 0, 0) end
                        if target:getMass() > 3500 then return end
                        if target.Name == "CombuscusBurnFire" then return end
                        if target:FindFirstChild("CombuscusBurnFire") ~= nil then return end
                        if target:FindFirstChild("ForceField") ~= nil then return end
                        if target.Parent == nil then return end
                        if target.Parent:FindFirstChild("ForceField") ~= nil then return end
                        if target.Parent:FindFirstChild("HeedShield") ~= nil then return end
                        local check = Instance.new("Model")
                        check.Name = "CombuscusBurnFire"
                        check.Parent = target
                        delay(math.random(0.1, 2), function() if target ~= nil then target.Touched:connect(function(hit) if target:FindFirstChild("CombuscusBurnFire") ~= nil then SetFire(hit) end end) end end)
                        local part = Instance.new("Part")
                        part.Name = "CombuscusBurnFire"
                        part.CanCollide = false
                        part.Anchored = true
                        part.formFactor = "Symmetric"
                        part.Size = Vector3.new(4, 4, 3)
                        part.TopSurface = 0
                        part.BottomSurface = 0
                        part.Transparency = 1
                        part.Parent = game:GetService("Workspace")
                        local fire = Instance.new("Fire")
                        fire.Color = Color3.new(1, math.random(10, 30) / 100, 0)
                        fire.SecondaryColor = Color3.new(1, 1, 1)
                        fire.Size = math.random(4, 15)
                        fire.Heat = fire.Size + 3
                        fire.Parent = part
                        local smoke = Instance.new("Smoke")
                        smoke.Color = Color3.new(0.5, 0.5, 0.5)
                        smoke.Size = fire.Size + 3
                        smoke.RiseVelocity = fire.Heat / 5
                        smoke.Opacity = math.random(1, 15) / 100
                        smoke.Parent = part
                        local sound = Instance.new("Sound")
                        sound.SoundId = "http://www.roblox.com/asset/?id=31760113"
                        sound.Volume = 1
                        sound.Pitch = 1
                        sound.Looped = true
                        sound.Parent = part
                        sound:Play()
                        coroutine.resume(coroutine.create(function()
                                for i = 1, math.random(100, 1000) do
                                        if part.Parent == nil then break end
                                        if target.Parent == nil then break end
                                        if target.Parent.Parent == nil then break end
                                        if target:FindFirstChild("CombuscusBurnFire") == nil then break end
                                        if Player.Character == nil then break end
                                        if Player.Character:FindFirstChild("Humanoid") == nil then break end
                                        if Player.Character.Humanoid.Health <= 0 then break end
                                        part.CFrame = CFrame.new(target.CFrame.p + offset)
                                        if target.Parent:FindFirstChild("Humanoid") ~= nil then
                                                target.Parent.Humanoid:TakeDamage(44324.25)
                                        end
                                        if math.random(1, 100) == 1 then target:BreakJoints() end
                                        if math.random(1, 25) == 1 and target.Anchored == false then target.BrickColor = BrickColor.new("Really black") end
                                        if math.random(1, 50) == 1 and target.Anchored == false then target.Velocity = target.Velocity + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10)) end
                                        wait()
                                end
                                for i = 1, 0, -0.05 do
                                        sound.Volume = i
                                        fire.Size = fire.Size / 1.025
                                        fire.Heat = fire.Heat / 1.01
                                        fire.Color = Color3.new(1 * i, 0.25 * i, 0)
                                        fire.SecondaryColor = Color3.new(1 * i, 1 * i, 1 * i)
                                        smoke.Size = smoke.Size / 1.05
                                        smoke.RiseVelocity = smoke.RiseVelocity / 1.05
                                        smoke.Opacity = smoke.Opacity / 1.05
                                        wait()
                                end
                                sound:Stop()
                                fire.Enabled = false
                                smoke.Enabled = false
                                if target ~= nil then if target:FindFirstChild("CombuscusBurnFire") ~= nil then target.CombuscusBurnFire:Remove() end end
                                wait(3)
                                part:Remove()
                        end))
                end
                SetFire(mouse.Target, mouse.Hit.p - mouse.Target.CFrame.p)
                canFire = true
        elseif spell == 9 then
                --Combuscus Vortex, fire/explosives class. A tornado in a can.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(25, 24, 25)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Source.Fire.Enabled = true
                Player.Character[Name].Source.Fire.Heat = 100
                Player.Character[Name].Source.Fire.Size = 100
                Player.Character[Name].Source.Fire.Color = Color3.new(1, 0, 0)
                Player.Character[Name].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
                Player.Character[Name].Handle.Charge2.Looped = false
                Player.Character[Name].Handle.Charge2.Volume = 1
                Player.Character[Name].Handle.Charge2.Pitch = 0.125
                Player.Character[Name].Handle.Charge2:Play()
                power = power - 50
                for i = 0, 75 do
                        if math.random(1, 3) == 1 then
                                local shock = Instance.new("Part")
                                shock.formFactor = "Symmetric"
                                shock.Size = Vector3.new(21, 21, 21)
                                shock.BrickColor = BrickColor.new("Really red")
                                shock.Anchored = true
                                shock.Name = "Shock Ring"
                                shock.CanCollide = false
                                shock.Parent = game:GetService("Workspace")
                                local mesh = Instance.new("SpecialMesh")
                                mesh.MeshType = "FileMesh"
                                mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
                                mesh.Parent = shock
                                coroutine.resume(coroutine.create(function()
                                        local tilt1 = math.random(-10, 10)
                                        local tilt2 = math.random(-10, 10)
                                        local tiltChance = math.random(1, 3)
                                        local randomSize = math.random(-10, 10)
                                        for x = 1, 25 do
                                                shock.Mesh.Scale = Vector3.new(5 + x, 5 + x, 5 + (x / 5)) + Vector3.new(randomSize, randomSize, randomSize)
                                                if tiltChance == 1 then
                                                        shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0) + Vector3.new(0, x, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + (tilt1 / (25 - x))), 0, 0)
                                                elseif tiltChance == 2 then
                                                        shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0) + Vector3.new(0, x, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90), math.rad(tilt2 / (25 - x)), 0)
                                                elseif tiltChance == 3 then
                                                        shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0) + Vector3.new(0, x, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(90 + (tilt1 / (25 - x))), math.rad(tilt2 / (25 - x)), 0)
                                                end
                                                wait()
                                        end
                                end))
                        end
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(i, i, i) / 5
                        Player.Character[Name].Source.Fire.Size = i / 5
                        Player.Character[Name].Source.Fire.Heat = i / 5
                        for _, model in pairs(game:GetService("Workspace"):GetChildren()) do
                                if model.className == "Part" then
                                        if (Player.Character.Torso.Position - model.Position).magnitude <= 50 and model.Anchored == false then
                                                model.CanCollide = false
                                                model.Transparency = 0.5
                                                local Position = Instance.new("BodyPosition")
                                                Position.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                Position.P = 100
                                                Position.D = 10
                                                Position.position = Player.Character.Torso.Position + Vector3.new(math.sin(i / (math.random(500, 750) / 100)) * (i / 2) + 4, (i / (math.random(800, 1200) / 100)) + 5, math.cos(i / (math.random(500, 750) / 100)) * (i / 2) + 4)
                                                Position.Parent = model
                                                coroutine.resume(coroutine.create(function() wait(0.1) Position:Remove() end))
                                                if math.random(1, 10) == 1 then model:BreakJoints() end
                                        end
                                elseif model.className == "Model" and model ~= Player.Character then
                                        for _, x in pairs(model:GetChildren()) do
                                                if x.className == "Part" then
                                                        if (Player.Character.Torso.Position - x.Position).magnitude <= 50 and x.Anchored == false then
                                                                x.CanCollide = false
                                                                local Position = Instance.new("BodyPosition")
                                                                Position.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                                                Position.P = 500
                                                                Position.D = 10
                                                                Position.position = Player.Character.Torso.Position + Vector3.new(math.sin(i / (math.random(500, 750) / 100)) * (i / 2) + 4, (i / (math.random(800, 1200) / 100)) + 7.5, math.cos(i / (math.random(500, 750) / 100)) * (i / 2) + 4)
                                                                Position.Parent = x
                                                                coroutine.resume(coroutine.create(function() wait(0.1) Position:Remove() end))
                                                                if math.random(1, 10) == 1 then x:BreakJoints() end
                                                                if model:FindFirstChild("Humanoid") ~= nil then
                                                                        model.Humanoid:TakeDamage(10000000)
                                                                        model.Humanoid.Sit = true
                                                                end
                                                        end
                                                end
                                        end
                                end
                        end
                        wait(0.03)
                end
                Player.Character[Name].Handle.Fire2.Looped = false
                Player.Character[Name].Handle.Fire2.Volume = 1
                Player.Character[Name].Handle.Fire2.Pitch = 0.3
                Player.Character[Name].Handle.Fire2:Play()
                Player.Character[Name].Source.Fire.Enabled = false
                for i = 0.25, 1, 0.05 do
                        Player.Character[Name].Source.Transparency = i
                        wait()
                end
                Player.Character[Name].Source.Transparency = 1
                canFire = true
        elseif spell == 10 then
                --Combuscus Phore Nexus, fire/explosives class. Basically the outcome is similar to that of a nuclear warhead.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(24, 24, 25)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Source.Fire.Enabled = true
                Player.Character[Name].Source.Fire.Heat = 10
                Player.Character[Name].Source.Fire.Size = 10
                Player.Character[Name].Source.Fire.Color = Color3.new(1, 0, 0)
                Player.Character[Name].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
                Player.Character[Name].Handle.Fire1.Looped = false
                Player.Character[Name].Handle.Fire1.Volume = 1
                Player.Character[Name].Handle.Fire1.Pitch = math.random(3, 6) / 10
                local new = Player.Character[Name].Handle.Fire1:Clone()
                new.Parent = game:GetService("Workspace")
                new:Play()
                Player.Character[Name].Handle.Charge3.Looped = false
                Player.Character[Name].Handle.Charge3.Volume = 1
                Player.Character[Name].Handle.Charge3.Pitch = math.random(15, 20) / 10
                local new = Player.Character[Name].Handle.Charge3:Clone()
                new.Parent = game:GetService("Workspace")
                new:Play()
                Player.Character[Name].Handle.Fire4.Looped = false
                Player.Character[Name].Handle.Fire4.Volume = 1
                Player.Character[Name].Handle.Fire4.Pitch = math.random(2, 4) / 10
                local new = Player.Character[Name].Handle.Fire4:Clone()
                new.Parent = game:GetService("Workspace")
                new:Play()
                power = power - 100
                local shock = Instance.new("Part")
                shock.formFactor = "Symmetric"
                shock.Size = Vector3.new(24, 24, 24)
                shock.BrickColor = BrickColor.new("Really red")
                shock.Anchored = true
                shock.Name = "Shock Ring"
                shock.CanCollide = false
                shock.Parent = game:GetService("Workspace")
                local mesh = Instance.new("SpecialMesh")
                mesh.MeshType = "FileMesh"
                mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
                mesh.Parent = shock
                local shock2 = shock:Clone()
                shock2.Parent = game:GetService("Workspace")
                local shock3 = shock:Clone()
                shock3.Parent = game:GetService("Workspace")
                local shockAngle = CFrame.fromEulerAnglesXYZ(math.rad(90 + math.random(-5, 5)), math.rad(math.random(-5, 5)), math.rad(math.random(-5, 5)))
                local shock2Angle = CFrame.fromEulerAnglesXYZ(math.rad(90 + math.random(-5, 5)), math.rad(math.random(-5, 5)), math.rad(math.random(-5, 5)))
                local shock3Angle = CFrame.fromEulerAnglesXYZ(math.rad(90 + math.random(-5, 5)), math.rad(math.random(-5, 5)), math.rad(math.random(-5, 5)))
                local shock2Size = math.random(2, 3)
                local shock3Size = math.random(4, 6)
                for i = 0, 500, 10 do
                        if string.sub(tostring(i), string.len(tostring(i)), string.len(tostring(i))) == "0" then
                                local shock4 = Instance.new("Part")
                                shock4.formFactor = "Symmetric"
                                shock4.Size = Vector3.new(1, 1, 1)
                                shock4.BrickColor = BrickColor.new("Really red")
                                shock4.Anchored = true
                                shock4.Name = "Shock Ring"
                                shock4.CanCollide = false
                                shock4.Parent = game:GetService("Workspace")
                                shock4.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 2, 0)) * CFrame.fromEulerAnglesXYZ(math.rad(math.random(-25, 25)), math.rad(math.random(-25, 25)), math.rad(math.random(-25, 25)))
                                local mesh = Instance.new("SpecialMesh")
                                mesh.MeshType = "FileMesh"
                                mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
                                mesh.Parent = shock4
                                coroutine.resume(coroutine.create(function(part)
                                        for i = 0, 1, 0.05 do
                                                part.Transparency = i
                                                part.Mesh.Scale = Vector3.new(i * 25, i * 25, i * 25)
                                                wait()
                                        end
                                        part:Remove()
                                end), shock4)
                        end
                        shock.Transparency = i / 500
                        shock2.Transparency = i / 500
                        shock3.Transparency = i / 500
                        Player.Character[Name].Source.Transparency = i / 250
                        shock.Mesh.Scale = Vector3.new(i, i, i)
                        shock2.Mesh.Scale = Vector3.new(i, i, i) / shock2Size
                        shock3.Mesh.Scale = Vector3.new(i, i, i) / shock3Size
                        shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * shockAngle
                        shock2.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * shock2Angle
                        shock3.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(0, 3, 0)) * shock3Angle
                        Player.Character[Name].Source.Mesh.Scale = (Vector3.new(i, i, i) / 15)
                        Player.Character[Name].Source.Fire.Size = (i / 15)
                        Player.Character[Name].Source.Fire.Heat = (i / 15)
                        for _, model in pairs(game:GetService("Workspace"):GetChildren()) do
                                if model.className == "Part" then
                                        if (Player.Character.Torso.Position - model.Position).magnitude <= i / 2 and model.Anchored == false then
                                                model.Velocity = (model.Position - Player.Character.Torso.Position) * 10 + Vector3.new(0, 25, 0)
                                                if math.random(1, 10) == 1 then model:BreakJoints() end
                                        end
                                elseif model.className == "Model" and model ~= Player.Character then
                                        for _, x in pairs(model:GetChildren()) do
                                                if x.className == "Part" then
                                                        if (Player.Character.Torso.Position - x.Position).magnitude <= i / 2 and x.Anchored == false then
                                                                x.Velocity = (x.Position - Player.Character.Torso.Position) * 10 + Vector3.new(0, 25, 0)
                                                                if math.random(1, 10) == 1 then x:BreakJoints() end
                                                                if model:FindFirstChild("Humanoid") ~= nil then
                                                                        model.Humanoid:TakeDamage(10)
                                                                        model.Humanoid.Sit = true
                                                                end
                                                        end
                                                end
                                        end
                                end
                        end
                        wait(0.03)
                end
                shock:Remove()
                shock2:Remove()
                shock3:Remove()
                Player.Character[Name].Source.Transparency = 1
                Player.Character[Name].Source.Fire.Enabled = false
                canFire = true
        elseif spell == 11 then
                --Kanamla Cysis, object manipulation class. The easiest spell in it's class allows you to lightly pick things up.
                local target = mouse.Target
                if target == nil then return end
                if target.Parent == nil then return end
                if target.Anchored == true then return end
                if (target.Position - Player.Character[Name].Source.Position).magnitude > 2555555555 then return end
                if game:GetService("Players"):getPlayerFromCharacter(target.Parent) ~= nil then
                        if game:GetService("Players"):getPlayerFromCharacter(target.Parent).Character:FindFirstChild("Torso") ~= nil then
                                target = game:GetService("Players"):getPlayerFromCharacter(target.Parent).Character.Torso
                                if game:GetService("Players"):getPlayerFromCharacter(target.Parent).Character:FindFirstChild("Humanoid") ~= nil then
                                        game:GetService("Players"):getPlayerFromCharacter(target.Parent).Character.Humanoid.PlatformStand = true
                                end
                        end
                end
                local position = Instance.new("BodyPosition")
                position.Name = "Cysis"
                position.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                position.P = 100
                position.D = 55
                position.Parent = target
                position.position = Player.Character[Name].Source.Position + ((mouse.Hit.p - Player.Character[Name].Source.Position).unit * 100)
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(24, 24, 24)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Source.Fire.Enabled = true
                Player.Character[Name].Source.Fire.Heat = 10
                Player.Character[Name].Source.Fire.Size = 2
                Player.Character[Name].Source.Fire.Color = Color3.new(0, 0, 1)
                Player.Character[Name].Source.Fire.SecondaryColor = Color3.new(0.5, 0.5, 1)
                Player.Character[Name].Handle.Shine.Looped = false
                Player.Character[Name].Handle.Shine.Volume = 1
                Player.Character[Name].Handle.Shine.Pitch = 0.75
                Player.Character[Name].Handle.Shine:Play()
                for i = 0, math.huge do
                        if Button1Down == false then break end
                        if Player.Character == nil then break end
                        if Player.Character:FindFirstChild("Humanoid") == nil then break end
                        if Player.Character.Humanoid.Health <= 0 then break end
                        if Player.Character:FindFirstChild(Name) == nil then break end
                        if Player.Character[Name]:FindFirstChild("Handle") == nil then break end
                        if Player.Character[Name]:FindFirstChild("Source") == nil then break end
                        if power <= 0 then break end
                        if string.sub(tostring(i), string.len(tostring(i)), string.len(tostring(i))) == "0" then
                                power = power - 1
                        end
                        if target ~= nil and position ~= nil then
                                position.position = Player.Character[Name].Source.Position + ((mouse.Hit.p - Player.Character[Name].Source.Position).unit * 100)
                        end
                        wait()
                end
                if position ~= nil then position:Remove() end
                if target ~= nil then
                        if target.Parent:FindFirstChild("Humanoid") ~= nil then
                                target.Parent.Humanoid.PlatformStand = false
                                target.Parent.Humanoid.Sit = true
                        end
                end
                for i = 0.25, 1, 0.05 do
                        Player.Character[Name].Source.Transparency = i
                        wait()
                end
                Player.Character[Name].Source.Transparency = 1
                Player.Character[Name].Source.Fire.Enabled = false
                canFire = true
        elseif spell == 12 then
                --Kanamla Tepidift, object manipulation class. Allows you to teleport from one area to another.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                Player.Character[Name].Source.Fire.Enabled = true
                Player.Character[Name].Source.Fire.Heat = 0
                Player.Character[Name].Source.Fire.Color = Color3.new(0, 0, 1)
                Player.Character[Name].Source.Fire.SecondaryColor = Color3.new(1, 1, 1)
                Player.Character[Name].Handle.Shine.Looped = true
                Player.Character[Name].Handle.Shine.Pitch = 1.5
                Player.Character[Name].Handle.Shine.Volume = 1
                Player.Character[Name].Handle.Shine:Play()
                for i = 1, 0, -0.05 do
                        Player.Character[Name].Source.Transparency = i
                        Player.Character[Name].Source.Mesh.Scale = (Vector3.new(1 - i, 1 - i, 1 - i) * 15)
                        Player.Character[Name].Source.Fire.Size = (1 - i) * 15
                        wait()
                end
                local maxDistance = (Player.Character.Torso.CFrame.p - mouse.Hit.p).magnitude
                if maxDistance < 500000 then 
                        local pos1 = Player.Character.Torso.CFrame.p
                        local pos2 = mouse.Hit.p + Vector3.new(0, 3, 0)
                        local pos0 = pos1
                        for distance = 1, maxDistance, 5 do
                                pos0 = (CFrame.new(pos1, pos2) * CFrame.new(0, 0, -distance)).p
                                Player.Character.Torso.CFrame = CFrame.new(pos0, pos2)
                                Player.Character.Torso.Velocity = Vector3.new()
                                power = power - 1
                                wait()
                        end
                        Player.Character.Torso.CFrame = CFrame.new(pos2)
                        for i = 0, 1, 0.05 do
                                Player.Character[Name].Source.Transparency = i
                                Player.Character[Name].Source.Mesh.Scale = (Vector3.new(1 - i, 1 - i, 1 - i) * 15)
                                Player.Character[Name].Source.Fire.Size = (1 - i) * 15
                                Player.Character[Name].Handle.Shine.Volume = (1 - i)
                                wait()
                        end
                        Player.Character[Name].Handle.Shine:Stop()
                else
                        for i = 0, 1, 0.05 do
                                Player.Character[Name].Source.BrickColor = Player.Character[Name].Source.BrickColor == BrickColor.new("Really red") and BrickColor.new("Really red") or BrickColor.new("Bright blue")
                                Player.Character[Name].Source.Transparency = i
                                Player.Character[Name].Source.Mesh.Scale = (Vector3.new(1 - i, 1 - i, 1 - i) * 15)
                                Player.Character[Name].Source.Fire.Size = (1 - i) * 15
                                Player.Character[Name].Source.Fire.Color = Player.Character[Name].Source.Fire.Color == Color3.new(0, 0, 1) and Color3.new(1, 0, 0) or Color3.new(0, 0, 1)
                                Player.Character[Name].Source.Fire.SecondaryColor = Player.Character[Name].Source.Fire.SecondaryColor == Color3.new(1, 1, 1) and Color3.new(1, 0, 0) or Color3.new(1, 1, 1)
                                Player.Character[Name].Handle.Shine.Pitch = (1 - i) + 0.5
                                wait()
                        end
                        Player.Character[Name].Handle.Shine:Stop()
                end
                Player.Character[Name].Source.Transparency = 1
                Player.Character[Name].Source.Fire.Enabled = false
                canFire = true
        elseif spell == 13 then
                --Kanamla Jump, object manipulation class. Allows you to jump really high.
                canFire = false
                while Button1Down == true do
                        if power <= 0 then break end
                        Player.Character[Name].Handle.Fire3.Looped = false
                        Player.Character[Name].Handle.Fire3.Pitch = 1
                        Player.Character[Name].Handle.Fire3.Volume = 1
                        for i = 1, 2 do Player.Character[Name].Handle.Fire3:Play() end
                        Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                        Player.Character.Humanoid.PlatformStand = true
                        Player.Character.Torso.Velocity = Vector3.new(Player.Character.Torso.Velocity.x, (Player.Character.Torso.Velocity.y / 2) + 200, Player.Character.Torso.Velocity.z)
                        power = power - 5
                        local shock = Instance.new("Part")
                        shock.formFactor = "Symmetric"
                        shock.Size = Vector3.new(1, 1, 1)
                        shock.BrickColor = BrickColor.new("Really red")
                        shock.Anchored = true
                        shock.Name = "Shock Ring"
                        shock.CanCollide = false
                        shock.Parent = game:GetService("Workspace")
                        local mesh = Instance.new("SpecialMesh")
                        mesh.MeshType = "FileMesh"
                        mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
                        mesh.Scale = Vector3.new(6, 6, 6)
                        mesh.Parent = shock
                        shock.CFrame = CFrame.new(Player.Character.Torso.Position - Vector3.new(2, 2.5, 3))
                        coroutine.resume(coroutine.create(function()
                                for i = 0, 50 do
                                        mesh.Scale = Vector3.new(i, i / 5, i)
                                        shock.Transparency = i / 50
                                        wait()
                                end
                                shock:Remove()
                        end))
                        for i = 0, 1, 0.2 do
                                Player.Character[Name].Source.Transparency = i
                                Player.Character[Name].Source.Mesh.Scale = (Vector3.new(i, i, i) * 5)
                                wait()
                        end
                        Player.Character[Name].Source.Transparency = 1
                        Player.Character.Humanoid.PlatformStand = false
                end
                canFire = true
        elseif spell == 14 then
                --Candora Hide, light manipulation class. The Hide spell makes you and your wand seem invisible to the naked eye by bending light around your limbs.
                canFire = false
                Player.Character[Name].Source.Mesh.MeshType = "Sphere"
                Player.Character[Name].Source.Mesh.Scale = Vector3.new(1, 1, 1)
                Player.Character[Name].Source.Transparency = 0.25
                Player.Character[Name].Source.BrickColor = BrickColor.new("Really red")
                for i = 1, 0, -0.05 do
                        Player.Character[Name].Source.Transparency = i
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(1 - i, 1 - i, 1 - i) * 2
                        wait()
                end
                Player.Character[Name].Source.Transparency = 0
                if Player.Character:FindFirstChild("Head") ~= nil then
                        if Player.Character.Head:FindFirstChild("face") ~= nil then
                                Player.Character.Head.face.Face = "Bottom"
                        end
                end
                Player.Character[Name].Handle.Shine.Looped = false
                Player.Character[Name].Handle.Shine.Volume = 1
                Player.Character[Name].Handle.Shine:Play()
                for i = 0, 1.1, 0.01 do
                        Player.Character[Name].Handle.Shine.Pitch = math.sin(i)
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(math.sin(i), math.sin(i), math.sin(i)) + Vector3.new(2, 2, 2)
                        for _, children in pairs(Player.Character:GetChildren()) do
                                if children.className == "Part" and children.Name ~= "" then
                                        children.Transparency = i
                                end
                                if children.Name == Name then
                                        for _, children2 in pairs(children:GetChildren()) do
                                                if children2.className == "Part" then
                                                        children2.Transparency = i
                                                end
                                        end
                                end
                        end
                        wait()
                end
                while Button1Down == true do
                        if Player.Character == nil then break end
                        if Player.Character:FindFirstChild("Humanoid") == nil then break end
                        if Player.Character.Humanoid.Health <= 0 then break end
                        if Player.Character:FindFirstChild(Name) == nil then break end
                        if Player.Character[Name]:FindFirstChild("Handle") == nil then break end
                        if Player.Character[Name]:FindFirstChild("Source") == nil then break end
                        if power <= 0 then break end
                        power = power - 1
                        wait(5)
                end
                Player.Character[Name].Handle.Shine:Play()
                for i = 1, -0.1, -0.01 do
                        Player.Character[Name].Handle.Shine.Pitch = math.sin(i)
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(math.sin(i), math.sin(i), math.sin(i)) + Vector3.new(2, 2, 2)
                        for _, children in pairs(Player.Character:GetChildren()) do
                                if children.className == "Part" and children.Name ~= "" then
                                        children.Transparency = i
                                end
                                if children.Name == Name then
                                        for _, children2 in pairs(children:GetChildren()) do
                                                if children2.className == "Part" then
                                                        children2.Transparency = i
                                                end
                                        end
                                end
                        end
                        wait()
                end
                Player.Character[Name].Handle.Shine:Stop()
                if Player.Character:FindFirstChild("Head") ~= nil then
                        if Player.Character.Head:FindFirstChild("face") ~= nil then
                                Player.Character.Head.face.Face = "Front"
                        end
                end
                for i = 0, 1, 0.05 do
                        Player.Character[Name].Source.Transparency = i
                        Player.Character[Name].Source.Mesh.Scale = Vector3.new(1 - i, 1 - i, 1 - i) * 2
                        wait()
                end
                Player.Character[Name].Source.Transparency = 1
                canFire = true
        end
end
function onButton1Up(mouse)
        if selected == false then return end
        Button1Down = false
        while canFire == false do wait() end
        mouse.Icon = "rbxasset://textures\\GunCursor.png"
end
function onMove(mouse)
        --Stuffs.
end
function onKeyDown(key, mouse)
        if selected == false or canFire == false or Button1Down == true then return end
        key = key:lower()
        if key == "q" then
                if mouse.Target == nil then return end
                if game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent) ~= nil then
                        onDeselected(mouse)
                        removeParts("holster")
                        script.Parent.Parent = game:GetService("Players"):GetPlayerFromCharacter(mouse.Target.Parent).Backpack
                end
        end
        if key == "e" then
                spell = spell - 1
                if spell < 0 then
                        spell = 14
                end
        end
        if key == "r" then
                spell = spell + 1
                if spell > 14 then
                        spell = 0
                end
        end
        if spell == 1 then
                spellText = "Blood Slash (1P)"
        elseif spell == 2 then
                spellText = "Blood Meteor (50P)"
        elseif spell == 3 then
                spellText = "Blood Bolt (25P)"
        elseif spell == 4 then
                spellText = "Blood Strike (~60P)"
        elseif spell == 5 then
                spellText = "Blood Sucker (1P/2ms)"
        elseif spell == 6 then
                spellText = "Blood Heal (1P/2ms)"
        elseif spell == 7 then
                spellText = "Blood Explosion (75P)"
        elseif spell == 8 then
                spellText = "Blood Burn (10P)"
        elseif spell == 9 then
                spellText = "Blood Vortex (50P)"
        elseif spell == 10 then
                spellText = "Blood Nuke (100P)"
        elseif spell == 11 then
                spellText = "Blood Pull (2P/1sec)"
        elseif spell == 12 then
                spellText = "Blood Teleport (50P)"
        elseif spell == 13 then
                spellText = "Blood Jump (5P)"
        elseif spell == 14 then
                spellText = "Blood Diguise (2P/1sec)"
        else
                spellText = "Blood Wand"
        end
        updateGui()
end
function onSelected(mouse)
        if selected == true or dropped == true then return end
        selected = true
        mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
        while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
                if Player.Character.WeaponActivated.Value == nil then break end
                if Player.Character.WeaponActivated.Value.Parent == nil then break end
                wait()
        end
        mouse.Icon = "rbxasset://textures\\GunCursor.png"
        updateGui()
        removeParts("holster")
        makeParts("hand")
        local weapon = Instance.new("ObjectValue")
        weapon.Name = "WeaponActivated"
        weapon.Value = script.Parent
        weapon.Parent = Player.Character
        DisableLimb(1, Player.Character)
        SetAngle(1, math.rad(90), Player.Character)
        mouse.Button1Down:connect(function() onButton1Down(mouse) end)
        mouse.Button1Up:connect(function() onButton1Up(mouse) end)
        mouse.Move:connect(function() onMove(mouse) end)
        mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
        while selected == true do
                if canFire == true then
                        if power < 100 and power >= 0 then
                                power = power + 1111111
                                wait(0.05)
                        elseif power < 0 then
                                power = power + 1111111
                                wait(0.3)
                        else
                                power = 67000000
                        end
                end
                updateGui()
                wait()
        end
end
function onDeselected(mouse)
        if selected == false then return end
        selected = false
        Button1Down = false
        while canFire == false do
                wait()
        end
        if Player.Character:FindFirstChild("WeaponActivated") ~= nil then
                if Player.Character.WeaponActivated.Value == script.Parent then
                        Player.Character.WeaponActivated:Remove()
                end
        end
        while Player.Character:FindFirstChild("WeaponActivated") ~= nil do
                if Player.Character.WeaponActivated.Value == nil then break end
                if pcall(function() if Player.Character.WeaponActivated.Value.Parent == nil then return true end end) then break end
                wait()
        end
        if Player.PlayerGui:FindFirstChild(Name) ~= nil then Player.PlayerGui[Name]:Remove() end
        removeParts("hand")
        makeParts("holster")
        SetAngle(1, 0, Player.Character)
        EnableLimb(1, Player.Character)
end
if script.Parent.className ~= "HopperBin" then
        if Player == nil then print("Error: Player not found!") return end
        local Tool = Instance.new("HopperBin")
        Tool.Name = Name
        Tool.Parent = Player.Backpack
        script.Name = "Main"
        script.Parent = Tool
elseif script.Parent.className == "HopperBin" then
        while script.Parent.Parent.className ~= "Backpack" do
                wait()
        end
        Player = script.Parent.Parent.Parent
        makeParts("holster")
        script.Parent.Selected:connect(onSelected)
        script.Parent.Deselected:connect(onDeselected)
end