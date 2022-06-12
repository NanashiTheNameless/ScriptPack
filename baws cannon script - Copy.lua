-----OUUUCH!!!-----
baws = game.Players.LocalPlayer 
bin = Instance.new("HopperBin",baws.Backpack)
bin.Name = "~Xx Bass Cannon xX~"
script.Parent = bin
button = Instance.new("Sound",workspace)
button.Volume = 1
button.Pitch = 0.1
button.SoundId = "rbxasset://sounds/button.wav"
button:Stop()
button2 = Instance.new("Sound",workspace)
button2.Volume = 1
button2.Pitch = button.Pitch
button2.SoundId = "rbxasset://sounds/button.wav"
button2:Stop()
function wubify()
    
end
function shake()
    camera = workspace.CurrentCamera    
    wait()
    camera.CoordinateFrame = camera.CoordinateFrame * CFrame.new(0,2,0)
    wait(math.random(1/30,.1))
    camera.CoordinateFrame = camera.CoordinateFrame * CFrame.new(0,-2,0)
end
function shakeon()
    for i = 1,30 do
        wait()
        shake()
    end 
    wait()
    camera.CoordinateFrame = camera.CoordinateFrame * CFrame.new(0,0,0)
end
function onButton1Down(mouse)
    if not p then
        button:Play()
        kickback()
        recoil()
        wait(0.3)
        recoil()
        fire()
    elseif p then
        button:Play()
        p:remove()
        wait()
        kickback()
        recoil()
        wait(0.3)
        recoil()
        fire()
    end
end
function partsCompile()
    makeBasePart()
    wait()
    barrle()
    wait()
    stock()
end
function recoil()
    barrle.CFrame = BasePart.CFrame*CFrame.new(0,2,-15.9)*CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
    wait()
    barrle.CFrame = BasePart.CFrame*CFrame.new(0,2,-15.8)*CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
    wait()
    barrle.CFrame = BasePart.CFrame*CFrame.new(0,2,-15.7)*CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
    wait()
    barrle.CFrame = BasePart.CFrame*CFrame.new(0,2,-16)*CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
end
function makeBasePart()
    ff = Instance.new("ForceField",baws.Character)
    BasePart = Instance.new("Part",baws.Character)
    BasePart.Size = Vector3.new(1,1,1)
    BasePart.Transparency = 1
    BasePart.Anchored = true
    BasePart.Locked = false
    BasePart.CanCollide = false
    BasePart.CFrame = baws.Character.Torso.CFrame*CFrame.new(0,0,0)
end
function onTouch(touch)
    if touch == wow then
        wait()
        p.Touched:connect(onTouch)
    else
        button2:Play()
        wait()
        button2:Play()
        wait()
        button2:Play()
        wait()
        button2:Play()
        wait()
        button2:Play()
        wait()
        if touch.ClassName == "Part" then
            game.Lighting.TimeOfDay = 6
            game.Lighting.Ambient = Color3.new(1,0,0)
            lol = Instance.new("Explosion",workspace)
            lol.Position = touch.Position
            lol.BlastRadius = 35
            lol.BlastPressure = 900000
            shakeon()
            wait(1)
            game.Lighting.Ambient = Color3.new(93,93,93)
            game.Lighting.TimeOfDay = 14
            game.Lighting.Brightness = 1
            touch.Reflectance = 1
            if p ~= nil then
                p:remove()
                if O ~= nil then
                    O:remove()
                    if wow ~= nil then
                        wow:remove()
                    end
                end
            end
        end
    end
end
function projectile()
    p = Instance.new("Part")
    p.Parent = workspace
    p.Anchored = true
    p.Size = Vector3.new(12, 12, 12)
    p.CanCollide = true
    p.Transparency = 0.5
    p.Reflectance = 0.3
    p.Shape = "Ball"
    p.Name = "StrongBlast"
    p.BrickColor = BrickColor.new("Lime green")
    p.TopSurface = "Smooth"
    p.BottomSurface = "Smooth"
    p.CFrame = BasePart.CFrame*CFrame.new(0,-1,-24)*CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
    pie = Instance.new("Fire") 
    pie.Name = "PwnFire" 
    pie.Parent = p
    pie.Size = 60
    pie.Color = BrickColor.new("Lime green").Color 
    pie.SecondaryColor = BrickColor.new("Really black").Color 
    pie2 = Instance.new("Sparkles") 
    pie2.Name = "PwnSparkles" 
    pie2.Parent = p
    pie2.Color = BrickColor.new("Really red").Color
    O = Instance.new("Part",p)
    O.Anchored = true
    O.CanCollide = false
    O.Transparency = 0
    O.Reflectance = 0.3
    O.formFactor = "Symmetric"
    O.Size = Vector3.new(0, 0, 0)
    O.TopSurface = "Smooth"
    O.BottomSurface = "Smooth"
    O.Name = "Sharingan"
    O.Shape = "Ball"
    O.CFrame = p.CFrame*CFrame.fromEulerAnglesXYZ(1.5, 0, 0)
    O.BrickColor = BrickColor.new("Toothpaste")
    Mesh = Instance.new("SpecialMesh")
    Mesh.Parent = O
    Mesh.MeshType = "FileMesh"
    Mesh.Scale = Vector3.new(1.3, 1.3, 1.3)
    Mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
    Mesh.TextureId = ""
    wow = Instance.new("Part",p)
    wow.Anchored = true
    wow.CanCollide = false
    wow.Transparency = 0.5
    wow.Reflectance = 0.5
    wow.formFactor = "Symmetric"
    wow.Size = Vector3.new(0, 0, 0)
    wow.TopSurface = "Smooth"
    wow.BottomSurface = "Smooth"
    wow.Name = "Sharingan"
    wow.Shape = "Ball"
    wow.CFrame = p.CFrame*CFrame.fromEulerAnglesXYZ(1.5, 0, 0)
    wow.BrickColor = BrickColor.new("Really black")
    Mesh2 = Instance.new("SpecialMesh")
    Mesh2.Parent = wow
    Mesh2.MeshType = "FileMesh"
    Mesh2.Scale = Vector3.new(4.5, 15, 4.5)
    Mesh2.MeshId = "http://www.roblox.com/asset/?id=20329976"
    Mesh2.TextureId = ""
    p.Touched:connect(onTouch)
    if p then
        while wait() do
            p.CFrame = p.CFrame * CFrame.new(Vector3.new(0, -5, 0))
            O.Transparency = O.Transparency + 0.01
            Mesh.Scale = Mesh.Scale + Vector3.new(3, 3, 3)
            wow.CFrame = p.CFrame
            if O.Transparency == 1 then
                O:remove()
            end
        end
    end 
end
function remove1()
    BasePart:ClearAllChildren()
    BasePart:remove()
    ff:remove()
    p:remove()
end
function stock()
    stock = Instance.new("Part",BasePart)
    stock.Anchored = true
    stock.CanCollide = true
    stock.Locked = true
    stock.Transparency = 0
    stock.Reflectance = 0.3
    stock.formFactor = "Symmetric"
    stock.Size = Vector3.new(10,10,18)
    stock.TopSurface = "Smooth"
    stock.BottomSurface = "Smooth"
    stock.BrickColor = BrickColor.new("Really black")
    stock.CFrame = BasePart.CFrame*CFrame.new(0,0,-10)
    stocksub = Instance.new("Part",BasePart)
    stocksub.Anchored = true
    stocksub.CanCollide = true
    stocksub.Locked = true
    stocksub.Transparency = 0
    stocksub.Reflectance = 0.3
    stocksub.formFactor = "Symmetric"
    stocksub.Size = Vector3.new(5,8,12)
    stocksub.TopSurface = "Smooth"
    stocksub.BottomSurface = "Smooth"
    stocksub.BrickColor = BrickColor.new("Really black")
    stocksub.CFrame = BasePart.CFrame
end
function kickback()
    bullet()
    local pie22 = Instance.new("Fire") 
    pie22.Name = "lul"
    pie22.Parent = p22
    pie22.Size = 20 
    pie22.Color = BrickColor.new("Lime green").Color 
    pie22.SecondaryColor = BrickColor.new("Really black").Color
    stocksub.CFrame = stocksub.CFrame*CFrame.new(0,-3,0)
    stock.CFrame = stock.CFrame*CFrame.new(0,0,-4)
    wait(1)
    stock.CFrame = stock.CFrame*CFrame.new(0,0,4.66)
    stocksub.CFrame = BasePart.CFrame
    wait(0.5)
    stock.CFrame = BasePart.CFrame*CFrame.new(0,0,-10)
    p22:remove()
end
function bullet()
    p22 = Instance.new("Part")
    p22.Parent = BasePart
    p22.Anchored = true
    p22.CanCollide = false
    p22.Transparency = 0.1
    p22.Reflectance = 0.4
    p22.formFactor = "Symmetric"
    p22.Size = Vector3.new(4,6,4)
    p22.TopSurface = "Smooth"
    p22.BottomSurface = "Smooth"
    p22.Name = "Sharingan"
    p22.Shape = "Ball"
    p22.CFrame = stocksub.CFrame*CFrame.new(0,0,0)*CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
    p22.BrickColor = BrickColor.new("Really red")
    m = Instance.new("CylinderMesh",p22)
end
function barrle()
    barrle = Instance.new("Part",BasePart)
    barrle.BrickColor = BrickColor.new("White")
    barrle.CFrame = BasePart.CFrame*CFrame.new(0,2,-16)*CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
    barrle.Size = Vector3.new(3.5,18,3.5)
    barrle.Anchored = true
    barrle.CanCollide = true
    barrle.Reflectance = 0.5
    barrle.Locked = true
    barrle.formFactor = "Symmetric"
    barrle.TopSurface = "Smooth"
    barrle.BottomSurface = "Smooth"
    barrlemesh = Instance.new("CylinderMesh",barrle)
end
function fire()
    projectile()
end
function compile(mouse)
    mouse.Icon = "http://www.roblox.com/asset/?id=41672909"
    mouse.Button1Down:connect(onButton1Down)
    wait()
    baws.Character.Torso.CFrame = BasePart.CFrame*CFrame.new(11,0,0)
end
bin.Selected:connect(compile)
bin.Selected:connect(partsCompile)
bin.Deselected:connect(remove1)
 