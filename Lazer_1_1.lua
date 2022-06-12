----// Laser of death and destruction - Oblivion idk


local p = game.Players.LocalPlayer

local char = p.Character

local mouse = p:GetMouse()

local soundPart




local soundStart = Instance.new("Sound",char.Torso)

soundStart.Volume = 0.25

soundStart.SoundId = "rbxassetid://407239668"




local soundRun = Instance.new("Sound",char.Torso)

soundRun.Volume = 0.1

soundRun.Looped = true

soundRun.SoundId = "rbxassetid://407218731"







local down = false




function FireLaser(a, b)

        if (soundPart) then

                soundPart.CFrame = b

        end

        local a2 = Instance.new("Part", char)

        local b2 = Instance.new("SpecialMesh", a2)

        b2.MeshType = "Cylinder"

        a2.Material = "Neon"

        a2.BrickColor = BrickColor.new(char.Torso.BrickColor.Name)

        a2.TopSurface = "Smooth"

        a2.BottomSurface = "Smooth"

        a2.Anchored = true

        a2.CanCollide = false

        a2.Transparency = 0

        local c = Instance.new("ParticleEmitter", a2)

        c.Color = ColorSequence.new(a2.BrickColor.Color, Color3.new(1, 1, 1))

        c.Size = NumberSequence.new(0.1, 0.2)

        c.Lifetime = NumberRange.new(0.3, 0.7)

        c.Rate = 12

        c.EmissionDirection = "Right"

        c.Speed = NumberRange.new(6, 12)

        c.VelocitySpread = 5

        local function CreateRegion3FromLocAndSize(Position, Size)

                local SizeOffset = Size/2

                        local Point1 = Position - SizeOffset

                        local Point2 = Position + SizeOffset

                        return Region3.new(Point1, Point2)

                end

                local reg = CreateRegion3FromLocAndSize(b.p, Vector3.new(10, 10, 10))

                local index = 0

                local small = 1000

                local purts = {}

                for i, v in pairs(game.Workspace:FindPartsInRegion3WithIgnoreList(reg, char:GetChildren(), 100)) do

                        table.insert(purts, v)

                end

                for i, v in pairs(purts) do

                if (b.p - v.Position).magnitude < small and v.Name ~= "Baseplate" and not v:FindFirstChild("SurfaceGui") and v.Name ~= "Base" and v ~= workspace.Terrain then

                        small = (b.p - v.Position).magnitude

                        index = i

                end

        end

        if index ~= 0 then

                b = purts[index].CFrame

        end

        local dis = (a.p - b.p).magnitude

        a2.Size = Vector3.new(dis, 0.2, 0.2)
		b2.Scale = Vector3.new(0, 1, 1)

        a2.CFrame = CFrame.new(a.p, b.p) * CFrame.new(0, 0, -dis / 2) * CFrame.Angles(0, math.rad(90), 0)

        for i = 1, 0, -0.1 do

                b2.Scale = Vector3.new(1, i, i)

                wait()

        end

        a2:Destroy()

        pcall(function() purts[index]:Destroy() end)

        wait(1)

        --t:Destroy()

end




mouse.Button1Down:connect(function()

        down = true

        local t = Instance.new("Part", char)

        t.Size = Vector3.new(0.2, 0.2, 0.2)

        t.Anchored = true

        t.CanCollide = false

        t.Transparency = 1

        local s = Instance.new("Sound", t)

        s.Looped = true

        s.SoundId = "rbxassetid://407218786"

        soundPart = t

        s:play()

        

        local c = Instance.new("ParticleEmitter", t)

        c.Color = ColorSequence.new(char.Torso.BrickColor.Color, Color3.new(1, 1, 1))

        c.LightEmission = 1

        c.Size = NumberSequence.new(0.2, 0.3)

        c.Lifetime = NumberRange.new(0.3, 0.7)

        c.Rate = 200

        c.EmissionDirection = "Back"

        c.Speed = NumberRange.new(5, 10)

        c.VelocitySpread = 100

        

        soundStart:play()

        soundRun:play()

end)




mouse.Button1Up:connect(function()

        down = false

        if (soundPart) then

                soundPart.Sound:stop()

                soundPart:Destroy()

        end

        soundStart:stop()

        soundRun:stop()

end)




game:GetService("RunService").Heartbeat:connect(function()

        if down then

                FireLaser(char.Torso.CFrame, mouse.Hit)

        end

end)