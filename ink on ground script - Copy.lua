

script.Name = "Shade"
Player = game.Players.LocalPlayer
Character = Player.Character
script.Parent = Character
Mouse = Player:GetMouse()

shaded = false


function Weld(p0,p1,c0)
        local weld = Instance.new("Weld",p0)
        weld.Part0 = p0
        weld.Part1 = p1
        weld.C0 = c0 or CFrame.new()
        return weld
end

Character.Torso.Changed:connect(function()
if shaded then
        Character.Torso.CanCollide = false
        Character.Head.CanCollide = false
end
end)

game:GetService('RunService').Stepped:connect(function()
if shaded then
        Character.Torso.CanCollide = false
        Character.Head.CanCollide = false
end
end)

Torso = Character.Torso

function Melt(rev)
        local Melsp = Instance.new("Part",Character)
        Melsp.CanCollide = false
        Melsp.BrickColor = BrickColor.new("Really black")
        local Melme = Instance.new("SpecialMesh",Melsp)
        Melme.MeshType = "Sphere"
        Melme.Scale = Vector3.new(20,40,20)
        Melsp.formFactor = 3
        Melsp.Size = Vector3.new(0.2,0.2,0.2)
        Melsp.Position = Torso.Position
        local Melwe = Weld(Torso,Melsp)
        coroutine.resume(coroutine.create(function()
                if not rev then
                        for i = 40,10,-3 do
                                Melme.Scale = Vector3.new(20,i,20)
                                wait()
                        end
                else
                        for i = 10,40,3 do
                                Melme.Scale = Vector3.new(20,i,20)
                                wait(0.001)
                        end
                end
        end))
        coroutine.resume(coroutine.create(function()
                if not rev then
                        for i = -1,-5,-0.2 do
                                Melwe.C0 = CFrame.new(0,i,0)
                                wait()
                        end
                else
                        for i = -5,-1,0.2 do
                                Melwe.C0 = CFrame.new(0,i,0)
                                wait()
                        end
                end
                Melsp:Destroy()
        end))
end

function Invisible()
        Character.Head.face.Transparency = 1
        for _,v in pairs(Character:children()) do
                if v:IsA("Part") then
                        v.Transparency = 1
                        v.CanCollide = false
                elseif v:IsA("Hat") then
                        v.Handle.Transparency = 1
                end
        end
end

function Visible()
        Character.Head.face.Transparency = 0
        for _,v in pairs(Character:children()) do
                if v:IsA("Part") then
                        v.Transparency = 0
                elseif v:IsA("Hat") then
                        v.Handle.Transparency = 0
                end
        end
end


function Part(parent,size)
        part = Instance.new("Part",parent)
        part.formFactor = 3
        part.Size = size
        return part
end

trailmod = Instance.new("Model",Character)

function Trail()
        for _,v in pairs(trailmod:children()) do
                pcall(function()
                        if v.Mesh.Scale.x <= 0 then
                                v:Destroy()
                        else
                                v.Mesh.Scale = v.Mesh.Scale + Vector3.new(-0.2,0,-0.2)
                        end
                end)
        end

        local trail = Part(trailmod,Vector3.new(0.35,0.35,0.35))
        trail.CanCollide = false
        trail.BrickColor = BrickColor.new("Really black")
        trail.Anchored = true
        Instance.new("CylinderMesh",trail).Scale = Vector3.new(10,0.1,10)
        trail.CFrame = Torso.CFrame*CFrame.new(0,-3,0)
end

Mouse.KeyDown:connect(function(k)
        k = k:lower()
        if k == "m" then
                if shaded then
                        Melt(true)
                        coroutine.resume(coroutine.create(function()        wait(0.9)        Visible()        shaded = false        end))
                else
                        shaded = true
                        Invisible()
                        Melt()
                        Trail()
                end
        end
end)

Running = false

Character.Humanoid.Running:connect(function(speed)
        if speed > 0 then
                Running = true
                coroutine.resume(coroutine.create(function()
                        repeat
                                if shaded then
                                        Trail()
                                end
                                wait(0.01)
                        until Running == false
                end))
        else
                Running = false
        end
end)

--mediafire gtfo password
