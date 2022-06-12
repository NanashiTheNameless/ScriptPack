--"Super Robloxian" by MUDDMUTT
player = game.Players.LocalPlayer
mouse = player:GetMouse()
character = player.Character
camera = game.Workspace.CurrentCamera
debris = game:GetService("Debris")
lasersound = "http://www.roblox.com/asset?id=137463716" --sound by Aurarus
firesound = "http://www.roblox.com/asset?id=131382140" --sound by cjcool12345
speed = 0
tilt = 0
script.Parent = player
player.CharacterAdded:connect(function()
    character = player.Character
end)
mouse.KeyDown:connect(function(key)
    if string.lower(key) == "e" then
        if not flying then
            flying = true
            character.Humanoid.PlatformStand = true
            velocity = Instance.new("BodyVelocity", character.HumanoidRootPart)
            velocity.velocity = Vector3.new(0, 0, 0)
            velocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
            direction = Instance.new("BodyGyro", character.HumanoidRootPart)
            direction.cframe = camera.CoordinateFrame
            direction.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
        else
            flying = false
            if speed == 64 then
                speed = 0
                while tilt > 1 and speed == 0 do
                    tilt = tilt - 1
                    character.HumanoidRootPart.RootJoint.C1 = CFrame.Angles(math.pi / 2 + (math.pi / 64) * tilt, math.pi, 0)
                    wait()
                end
            elseif speed == -64 then
                speed = 0
                while tilt < -1 and speed == 0 do
                    tilt = tilt + 1
                    character.HumanoidRootPart.RootJoint.C1 = CFrame.Angles(math.pi / 2 + (math.pi / 64) * tilt, math.pi, 0)
                    wait()
                end
            end
            character.Humanoid.PlatformStand = false
            velocity:Destroy()
            direction.maxTorque = Vector3.new(math.huge, 0, math.huge)
            direction.cframe = CFrame.Angles(0, 0, 0)
            wait(1)
            direction:Destroy()
        end
    elseif string.lower(key) == "w" and speed == 0 and flying then
        speed = 64
        while tilt < 16 and speed == 64 do
            tilt = tilt + 1
            character.HumanoidRootPart.RootJoint.C1 = CFrame.Angles(math.pi / 2 + (math.pi / 64) * tilt, math.pi, 0)
            wait()
        end
    elseif string.lower(key) == "s" and speed == 0 and flying then
        speed = -64
        while tilt > -15 and speed == -64 do
            tilt = tilt - 1
            character.HumanoidRootPart.RootJoint.C1 = CFrame.Angles(math.pi / 2 + (math.pi / 64) * tilt, math.pi, 0)
            wait()
        end
    elseif string.byte(key) == 48 then
        shift = true
    end
end)
mouse.KeyUp:connect(function(key)
    if string.lower(key) == "w" and speed == 64 and flying then
        speed = 0
        while tilt > 1 and speed == 0 do
            tilt = tilt - 1
            character.HumanoidRootPart.RootJoint.C1 = CFrame.Angles(math.pi / 2 + (math.pi / 64) * tilt, math.pi, 0)
            wait()
        end
    elseif string.lower(key) == "s" and speed == -64 and flying then
        speed = 0
        while tilt < -1 and speed == 0 do
            tilt = tilt + 1
            character.HumanoidRootPart.RootJoint.C1 = CFrame.Angles(math.pi / 2 + (math.pi / 64) * tilt, math.pi, 0)
            wait()
        end
    elseif string.byte(key) == 48 then
        shift = false
    end
end)
mouse.Button1Down:connect(function()
    if not shift then
        beam = Instance.new("Part", game.Workspace)
        beam.BrickColor = BrickColor.new("Really red")
        beam.Reflectance = 0.5
        beam.Transparency = 0.5
        beam.Anchored = true
        beam.CanCollide = false
        beam.Locked = true
        beam.FormFactor = "Custom"
        beam.BottomSurface = "Smooth"
        beam.TopSurface = "Smooth"
        Instance.new("CylinderMesh", beam)
        mouse.TargetFilter = beam
        beam.Size = Vector3.new(0.2, (character.Head.Position - mouse.Hit.p).magnitude, 0.2)
        beam.CFrame = CFrame.new(character.Head.Position:Lerp(mouse.Hit.p, 0.5), mouse.Hit.p) * CFrame.Angles(math.pi / 2, 0, 0)
        hit = Instance.new("Part", beam)
        Instance.new("Fire", hit)
        hit.Transparency = 1
        hit.Anchored = true
        hit.CanCollide = false
        hit.Locked = true
        hit.FormFactor = "Custom"
        hit.BottomSurface = "Smooth"
        hit.TopSurface = "Smooth"
        hit.Size = Vector3.new(0.2, 0.2, 0.2)
        hit.CFrame = mouse.Hit
        sound = Instance.new("Sound", hit)
        sound.SoundId = lasersound
        sound:Play()
        sound.SoundId = firesound
        sound.Looped = true
        sound:Play()
        beam.Touched:connect(function(part)
            if part.Parent:findFirstChild("Humanoid") and part.Parent ~= character then
                Instance.new("Fire", part)
                sound:Clone().Parent = part
                part.Parent.Humanoid.Health = 0
            end
        end)
        hit.Touched:connect(function(part)
            if part.Parent:findFirstChild("Humanoid") and part.Parent ~= character then
                Instance.new("Fire", part)
                sound:Clone().Parent = part
                part.Parent.Humanoid.Health = 0
            end
        end)
    else
        fireball = Instance.new("Part", game.Workspace)
        fireball.BrickColor = BrickColor.new("Bright orange")
        Instance.new("Fire", fireball).Size = 10
        fireball.Reflectance = 0.5
        fireball.Transparency = 0.5
        fireball.CanCollide = false
        fireball.Locked = true
        fireball.Shape = "Ball"
        fireball.FormFactor = "Custom"
        fireball.BottomSurface = "Smooth"
        fireball.TopSurface = "Smooth"
        fireball.Size = Vector3.new(4, 4, 4)
        fireball.CFrame = character.Head.CFrame
        mouse.TargetFilter = fireball
        sound = Instance.new("Sound", fireball)
        sound.SoundId = firesound
        sound.Looped = true
        sound:Play()
        throw = Instance.new("BodyVelocity", fireball)
        throw.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        throw.velocity = CFrame.new(character.Head.Position, mouse.Hit.p).lookVector.unit * 128
        fireball.Touched:connect(function(part)
            if part.Parent:findFirstChild("Humanoid") and part.Parent ~= character then
                Instance.new("Fire", part)
                sound:Clone().Parent = part
                part.Parent.Humanoid.Health = 0
            end
        end)
        debris:AddItem(fireball, 20)
    end
end)
mouse.Button1Up:connect(function()
    if beam and hit then
        beam:Destroy()
        hit:Destroy()
    end
end)
character.Humanoid.Died:connect(function()
    if beam and hit then
        beam:Destroy()
        hit:Destroy()
    end
end)
while wait() do
    if flying then
        direction.cframe = camera.CoordinateFrame
        velocity.velocity = direction.cframe.lookVector.unit * speed
    end
    if beam and hit then
        beam.Size = Vector3.new(0.2, (character.Head.Position - mouse.Hit.p).magnitude, 0.2)
        beam.CFrame = CFrame.new(character.Head.Position:Lerp(mouse.Hit.p, 0.5), mouse.Hit.p) * CFrame.Angles(math.pi / 2, 0, 0)
        hit.CFrame = mouse.Hit
    end
end
