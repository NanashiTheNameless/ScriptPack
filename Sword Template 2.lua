plr = game:service'Players'.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
head = char.Head
ra = char["Right Arm"]
la = char["Left Arm"]
rs = char.Torso["Right Shoulder"]
ls = char.Torso["Left Shoulder"]
humanoid = char:findFirstChild("Humanoid")
torso = char.Torso
local held = false
pcall(function() char:findFirstChild("SWORD"):Destroy() plr.Backpack.Sword:Destroy() end)
sword = Instance.new("Model", char)
sword.Name = "SWORD"
hndl = Instance.new("Part", sword)
hndl.FormFactor = "Custom"
hndl.Transparency = 1
hndl.Size = Vector3.new(0.2, 1.3, 0.2)
hndl:BreakJoints()
hndl.Locked = true
    hndl.TopSurface = "SmoothNoOutlines"
        hndl.BottomSurface = "SmoothNoOutlines"
        hndl.FrontSurface = "SmoothNoOutlines"
        hndl.RightSurface = "SmoothNoOutlines"
        hndl.LeftSurface = "SmoothNoOutlines"
        hndl.BackSurface = "SmoothNoOutlines"
        w = Instance.new("Weld", sword)
        w.Part0 = hndl
        w.Part1 = torso
        w.C0 = CFrame.new(-0.6, 1.5, 0) * CFrame.Angles(0, math.pi/2, math.rad(135))
        hndl2 = Instance.new("Part", sword)
hndl2.FormFactor = "Custom"
hndl2.BrickColor = BrickColor.Black()
hndl2.Size = Vector3.new(0.2, 0.2, 1)
hndl2.Locked = true
hndl2.Reflectance = 0.2
hndl2:BreakJoints()
mesh = Instance.new("SpecialMesh",hndl2)
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(1, 0.7, 1)
    hndl2.TopSurface = "SmoothNoOutlines"
        hndl2.BottomSurface = "SmoothNoOutlines"
        hndl2.FrontSurface = "SmoothNoOutlines"
        hndl2.RightSurface = "SmoothNoOutlines"
        hndl2.LeftSurface = "SmoothNoOutlines"
        hndl2.BackSurface = "SmoothNoOutlines"
        w2 = Instance.new("Weld", sword)
        w2.Part0 = hndl2
        w2.Part1 = hndl
        w2.C0 = CFrame.new(0, -0.55, 0) * CFrame.Angles(0, 0, 0)
                hndl3 = Instance.new("Part", sword)
hndl3.FormFactor = "Custom"
hndl3.BrickColor = BrickColor.Gray()
hndl3.CanCollide = false
hndl3.Size = Vector3.new(0.2, 3.7, 0.4)
hndl3.Locked = true
hndl3.Reflectance = 0.4
hndl3:BreakJoints()
Instance.new("BlockMesh", hndl3).Scale = Vector3.new(0.4, 1, 1)
    hndl3.TopSurface = "SmoothNoOutlines"
        hndl3.BottomSurface = "SmoothNoOutlines"
        hndl3.FrontSurface = "SmoothNoOutlines"
        hndl3.RightSurface = "SmoothNoOutlines"
        hndl3.LeftSurface = "SmoothNoOutlines"
        hndl3.BackSurface = "SmoothNoOutlines"
        w3 = Instance.new("Weld", sword)
        w3.Part0 = hndl3
        w3.Part1 = hndl
        w3.C0 = CFrame.new(0, -2.4, -0.05) * CFrame.Angles(0, 0, 0)
                        hndl4 = Instance.new("Part", sword)
hndl4.FormFactor = "Custom"
hndl4.BrickColor = BrickColor.Gray()
hndl4.CanCollide = false
hndl4.Size = Vector3.new(0.2, 0.4, 0.4)
hndl4.Locked = true
hndl4.Reflectance = 0.4
hndl4:BreakJoints()
Instance.new("BlockMesh", hndl4).Scale = Vector3.new(0.4, 1, 1)
    hndl4.TopSurface = "SmoothNoOutlines"
        hndl4.BottomSurface = "SmoothNoOutlines"
        hndl4.FrontSurface = "SmoothNoOutlines"
        hndl4.RightSurface = "SmoothNoOutlines"
        hndl4.LeftSurface = "SmoothNoOutlines"
        hndl4.BackSurface = "SmoothNoOutlines"
        w4 = Instance.new("Weld", sword)
        w4.Part0 = hndl4
        w4.Part1 = hndl
        w4.C0 = CFrame.new(0, -0.7, 0.05) * CFrame.Angles(0, 0, 0)
                                hndl5 = Instance.new("Part", sword)
hndl5.FormFactor = "Custom"
hndl5.BrickColor = BrickColor.Gray()
hndl5.CanCollide = false
hndl5.Size = Vector3.new(3.35, 0.2, 0.2)
hndl5.Locked = true
hndl5.Reflectance = 0.4
hndl5:BreakJoints()
mesh2 = Instance.new("SpecialMesh", hndl5)
mesh2.MeshType = "Wedge"
mesh2.Scale = Vector3.new(1.1, 0.5, 0.4)
    hndl5.TopSurface = "SmoothNoOutlines"
        hndl5.BottomSurface = "SmoothNoOutlines"
        hndl5.FrontSurface = "SmoothNoOutlines"
        hndl5.RightSurface = "SmoothNoOutlines"
        hndl5.LeftSurface = "SmoothNoOutlines"
        hndl5.BackSurface = "SmoothNoOutlines"
        w5 = Instance.new("Weld", sword)
        w5.Part0 = hndl5
        w5.Part1 = hndl
        w5.C0 = CFrame.new(2.4, -0.2, 0) * CFrame.Angles(math.pi/2, 0, math.pi/2)
for i = 0, 0.4, 0.01 do
        local p = Instance.new("WedgePart", sword)
        p.FormFactor = "Custom"
        p.Size = Vector3.new(0.2, 0.4, 0.4)
        p.BrickColor = BrickColor.Gray()
        p.Reflectance = 0.4
        p.CanCollide = false
        p:BreakJoints()
        p.TopSurface = "SmoothNoOutlines"
        p.BottomSurface = "SmoothNoOutlines"
        p.FrontSurface = "SmoothNoOutlines"
        p.RightSurface = "SmoothNoOutlines"
        p.LeftSurface = "SmoothNoOutlines"
        p.BackSurface = "SmoothNoOutlines"
        p.Locked = true
        local m = Instance.new("SpecialMesh", p)
        m.MeshType = "Wedge"
m.Scale = Vector3.new(-0.8/2+i, 1, 1)
        local weld = Instance.new("Weld", sword)
        weld.Part0 = p
        weld.Part1 = hndl3
        weld.C0 = CFrame.new(0-i/10, -1.8, 0) * CFrame.Angles(i, 0, 0)
        
        end
for i = 0.5, 0, -0.1 do
        local p = Instance.new("Part", sword)
                p.FormFactor = "Custom"
        p.Size = Vector3.new(0.31-i/4, 0.2, 0.31-i/4)
        p.BrickColor = BrickColor.Black()
        p.Reflectance = 0.2
        p.CanCollide = false
        p:BreakJoints()
        p.TopSurface = "SmoothNoOutlines"
        p.BottomSurface = "SmoothNoOutlines"
        p.FrontSurface = "SmoothNoOutlines"
        p.RightSurface = "SmoothNoOutlines"
        p.LeftSurface = "SmoothNoOutlines"
        p.BackSurface = "SmoothNoOutlines"
        p.Locked = true
        Instance.new("SpecialMesh", p)
        local weld = Instance.new("Weld", sword)
        weld.Part0 = p
        weld.Part1 = hndl
        weld.C0 = CFrame.new(0, i, 0)
end
for i = 0.5, 0, -0.1 do
        local p = Instance.new("Part", sword)
                p.FormFactor = "Custom"
        p.Size = Vector3.new(0.31-i/4, 0.2, 0.31-i/4)
        p.BrickColor = BrickColor.Black()
        p.Reflectance = 0.2
        p.CanCollide = false
        p:BreakJoints()
        p.TopSurface = "SmoothNoOutlines"
        p.BottomSurface = "SmoothNoOutlines"
        p.FrontSurface = "SmoothNoOutlines"
        p.RightSurface = "SmoothNoOutlines"
        p.LeftSurface = "SmoothNoOutlines"
        p.BackSurface = "SmoothNoOutlines"
        p.Locked = true
        Instance.new("SpecialMesh", p)
        local weld = Instance.new("Weld", sword)
        weld.Part0 = p
        weld.Part1 = hndl
        weld.C0 = CFrame.new(0, -i, 0)
end
tool = Instance.new("HopperBin", plr.Backpack)
tool.Name = "Sword"
tool.Selected:connect(function(mouse)
        rs.Part0 = nil
        rs.Part1 = nil
        ls.Part0 = nil
        ls.Part1 = nil
        
ar = Instance.new("Part", sword)
ar.FormFactor = "Custom"
ar.Size = Vector3.new(1, 1, 1)
ar.Transparency = 1
ar.Locked = true
ar.CanCollide = false
ar:BreakJoints()
fake = Instance.new("Weld", sword)
fake.Part0 = char.Torso
fake.C0 = CFrame.new(1.48,0.45,0)
fake.Part1 = ar
ws = Instance.new("Weld", sword)
 ws.C0 = CFrame.new(0, 0.45, 0)
 ws.Part0 = ra
 ws.C1 = CFrame.new()
 ws.Part1 = ar
ar2 = Instance.new("Part", sword)
ar2.FormFactor = "Custom"
ar2.Size = Vector3.new(1, 1, 1)
ar2.Transparency = 1
ar2.Locked = true
ar2.CanCollide = false
ar2:BreakJoints()
fake2 = Instance.new("Weld", sword)
fake2.Part0 = char.Torso
fake2.C0 = CFrame.new(-1.48,0.45,0)
fake2.Part1 = ar2
ws2 = Instance.new("Weld", sword)
ws2.C0 = CFrame.new(0, 0.45, 0)
ws2.Part0 = la
ws2.C1 = CFrame.new()
ws2.Part1 = ar2
for i = 0, 160, 12 do
        fake2.C0 = CFrame.new(-1.48, 0.45, 0) * CFrame.Angles(math.rad(i), 0, 0)
        wait()
end
w.C0 = CFrame.new(-0.7, 0, 0.6) * CFrame.Angles(-math.pi/2, math.pi, math.rad(215))
w.Part0 = hndl
w.Part1 = la
coroutine.wrap(function()
for i = 160, 70, -10 do
        fake.C0 = CFrame.new(1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, -math.rad(i/1.8))
        wait()
end
end)()
for i = 0, 70, 10 do
        fake2.C0 = CFrame.new(-1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(i/1.8))
        wait()
end
held = true
coroutine.wrap(function()
        while held do
                                                if not held then return end
        for i = 70, 67, -0.05 do
                                if not held then return end
        fake.C0 = CFrame.new(1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, -math.rad(70/1.8))
        fake2.C0 = CFrame.new(-1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(70/1.8))
        wait()
        end
        for i = 67, 70, 0.05 do
                                if not held then return end
        fake.C0 = CFrame.new(1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, -math.rad(70/1.8))
        fake2.C0 = CFrame.new(-1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(70/1.8))
        wait()
        end
        end
end)()
mouse.Button1Down:connect(function()
        if not held then return end
        held = false
        for i = 70, 110, 20 do
                fake2.C0 = CFrame.new(-1, 0.45, -0.4) * CFrame.Angles(math.rad(i), 0, math.rad(70/1.8))
                wait()
        end
        for v = 70, -30, -20 do
                fake2.C0 = CFrame.new(-1, 0.45, -0.4) * CFrame.Angles(math.rad(110), 0, math.rad(v/1.8))
                                        fake.C0 = CFrame.new(1, 0.45, -0.4) * CFrame.Angles(math.rad(v), 0, -math.rad(v/1.8-v))
                wait()
        end
        
        for i = 110, 30, -20 do
                        fake2.C0 = fake2.C0 * CFrame.Angles(math.rad(10), 0, 0)
                        wait()
        end
        
        wait(1)
        held = true
        end)
end)
tool.Deselected:connect(function(mouse)
        held = false
        ar:Destroy()
        fake:Destroy()
        ws:Destroy()
                                                rs.Part0 = torso
                rs.Part1 = ra
        for i = 0, 160, 20 do
        fake2.C0 = CFrame.new(-1.48, 0.45, 0) * CFrame.Angles(math.rad(i), 0, 0)
        wait()
        end
        fake2:Destroy()
        ar2:Destroy()
        ws2:Destroy()
                w.Part0 = hndl
        w.Part1 = torso
        w.C0 = CFrame.new(-0.6, 1.5, 0) * CFrame.Angles(0, math.pi/2, math.rad(135))
                ls.Part0 = torso
                ls.Part1 = la
end)
        
        
        
        
        
        
        
        
        
        
        
        
