normaldmg = 999
    distpower = 1000    speedz = 12
    explodist = 250     explodist = explodist/3
    resttime = 0.02
    sitting = true
     
    local MaxMP = 100000
    local CurrentMP = Instance.new("NumberValue")
    CurrentMP.Parent = bin
    CurrentMP.Name = "CurrentMP"
    CurrentMP.Value = MaxMP
    local TehTableOfPartz
     
    local S1 = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)
    S1.SoundId = "http://www.roblox.com/asset/?id=48579638"
    S1.Pitch = 2.3
    S1.Volume = 0.5
    S1.Looped = false
    local S2 = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)
    S2.SoundId = "http://www.roblox.com/asset?id=3087031"
    S2.Pitch = 3.25
    S2.Volume = 0.16
    S2.Looped = false
    local S3 = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)
    S3.SoundId = "http://www.roblox.com/asset/?id=48579482"
    S3.Pitch = 2.1
    S3.Volume = 0.75
    S3.Looped = false
    local S4 = Instance.new("Sound", game.Players.LocalPlayer.Character.Head)
    S4.SoundId = "http://www.roblox.com/asset/?id=48579482"
    S4.Pitch = 1.9
    S4.Volume = 0.6
    S4.Looped = false
     
    hop = Instance.new("HopperBin")
    hop.Parent = nil
    script.Parent = hop
     
    bin = Instance.new("HopperBin")
    bin.Name = "Rokit"
    bin.Parent = game.Players.LocalPlayer.Backpack
    local mo = Instance.new("Model")
    mo.Name = "Rokitz"
    mo.Parent = bin.Parent.Parent.Character
     
    local Joint1
    local Joint2
    local LeftJoint = bin.Parent.Parent.Character.Torso:findFirstChild("Left Shoulder")
    local RightJoint = bin.Parent.Parent.Character.Torso:findFirstChild("Right Shoulder")
    local han
     
    part = Instance.new("Part")
    part.formFactor = ("Custom")
    part.Size = Vector3.new(0.5,0.5,0.5)
    part.Locked = true
    part.CanCollide = false
    part.Anchored = true
    part.BrickColor = BrickColor.new("Really black")
    part.TopSurface = 0
    part.BottomSurface = 0
     
    -------------------------------------------------------------------- GUI -----------------------
    gui = Instance.new("ScreenGui", bin.Parent.Parent.PlayerGui)
    gui.Name = "Mp Gui For Rokit"
    Fr = Instance.new("ImageLabel", gui)
    Fr.Name = "Main"
    Fr.Size = UDim2.new(0.2,0,0.1,0)
    Fr.Position = UDim2.new(0.4,0,0,0)
    Fr.BackgroundColor = BrickColor.new("Black")
    Fr.BorderColor = BrickColor.new("Lime green")
    Fr.Image = "http://www.roblox.com/asset/?id=48965808"
    Fr.Visible = false
    mpt = Instance.new("TextLabel", Fr)
    mpt.Name = "MP Title"
    mpt.Position = UDim2.new(0.5,0,0.2,0)
    mpt.FontSize = 6
    mpt.Text = "Rocket MP"
    mpt.TextColor = BrickColor.new("Really blue")
    mpt.ZIndex = 3
    coroutine.resume(coroutine.create(function(obzs) while true do wait(0.33) obzs.TextColor = BrickColor.new("Cyan") wait(0.33) obzs.TextColor = BrickColor.new("Really blue") end end), mpt)
    mpts = mpt:Clone()
    mpts.Parent = mpt
    mpts.Name = "Shadow"
    mpts.Position = UDim2.new(0,2,0,2)
    mpts.Transparency = 0.3
    mpts.TextColor = BrickColor.new("Dark stone grey")
    mpts.ZIndex = 1
     
    Fr2 = Instance.new("ImageLabel")
    Fr2.Parent = Fr
    Fr2.Size = UDim2.new(1,0,0.25,0)
    Fr2.Name = "MadeByDoogleFox"
    Fr2.Position = UDim2.new(0,0,1,0)
    Fr2.BackgroundColor = BrickColor.new("Really black")
    Fr2.BorderColor = BrickColor.new("Lime green")
    Fr2.Image = "http://www.roblox.com/asset/?id=48965808"
    Mab = Instance.new("TextLabel", Fr2)
    Mab.Name = "GRENADESPARTAN3"
    Mab.Position = UDim2.new(0.5,-1,0.5,-1)
    Mab.FontSize = 3
    Mab.Text = "Made By: GS3"
    Mab.TextColor = BrickColor.new("White")
    Mab.ZIndex = 3
    Mabs = Mab:Clone()
    Mabs.Parent = Mab
    Mabs.ZIndex = 2
    Mabs.TextColor = BrickColor.new("Dark stone grey")
    Mabs.Position = UDim2.new(0,2,0,2)
    local thetext = "100% Made By: GS3"
    coroutine.resume(coroutine.create(function()
    while true do
    Mab.Text = ">>" .. thetext .. "<<"
    Mabs.Text = Mab.Text
    wait(0.08)
    Mab.Text = ">> " .. thetext .. " <<"
    Mabs.Text = Mab.Text
    wait(0.08)
    Mab.Text = ">>  " .. thetext .. "  <<"
    Mabs.Text = Mab.Text
    wait(0.08)
    Mab.Text = ">>   " .. thetext .. "   <<"
    Mabs.Text = Mab.Text
    wait(0.08)
    Mab.Text = ">>    " .. thetext .. "    <<"
    Mabs.Text = Mab.Text
    wait(0.08)
    Mab.Text = ">>   " .. thetext .. "   <<"
    Mabs.Text = Mab.Text
    wait(0.08)
    Mab.Text = ">>  " .. thetext .. "  <<"
    Mabs.Text = Mab.Text
    wait(0.08)
    Mab.Text = ">> " .. thetext .. " <<"
    Mabs.Text = Mab.Text
    wait(0.08)
    end
    end))
     
    mpfb = Instance.new("ImageLabel", Fr)
    mpfb.Name = "MP Frame"
    mpfb.Size = UDim2.new(0.9,0,0.4,0)
    mpfb.Position = UDim2.new(0.05,0,0.5,0)
    mpfb.BackgroundColor = BrickColor.new("Really black")
    mpfb.BorderColor = BrickColor.new("Cyan")
    mpfb.Image = "http://www.roblox.com/asset/?id=53084230"
    local mpf = mpfb:Clone()
    mpf.Parent = mpfb
    mpf.Size = UDim2.new(1,0,1,0)
    mpf.Position = UDim2.new(0,0,0,0)
    mpf.BackgroundColor = BrickColor.new("Deep blue")
    mpf.ZIndex = 2
    mpf.Position = UDim2.new(0,0,0,0)
    local mpft = Instance.new("TextLabel")
    mpft.Parent = mpfb
    mpft.TextColor = BrickColor.new("White")
    mpft.Text = math.ceil(CurrentMP.Value) .. " / " .. math.ceil(MaxMP)
    mpft.Position = UDim2.new(0.5,0,0.5,0)
    mpft.FontSize = 4
    mpft.ZIndex = 8
     
    coroutine.resume(coroutine.create(function()
    CurrentMP.Changed:connect(function()
    if CurrentMP.Value > MaxMP then
    CurrentMP.Value = MaxMP
    end
    if CurrentMP.Value < 0 then
    CurrentMP.Value = 0
    end
    sizezzzz = CurrentMP.Value / MaxMP
    mpft.Text = math.ceil(CurrentMP.Value) .. " / " .. math.ceil(MaxMP)
    mpf.Size = UDim2.new(sizezzzz,0,1,0)
    end)
    end))
    --------------------------------------------------------------------------------------------
     
    function PlaySound(Pi, Vol, ID)
    so = Instance.new("Sound")
    so.Looped = false
    so.Volume = Vol
    so.Pitch = Pi
    so.SoundId = ID
    ssss = so:Clone()
    ssss.PlayOnRemove = true
    ssss.Parent = han
    coroutine.resume(coroutine.create(function(tehsound) wait() tehsound:remove() end), ssss)
    end
     
    function ShootEffect(ob2, sizezor2)
    local ob = ob2:Clone()
    local cf = ob.CFrame
    ob.Size = Vector3.new(ob2.Size.x, ob2.Size.y, speedz)
    ob.Parent = mo
    ob.Transparency = 0.2
    ob.Firez:remove()
    for _ = 1, 12 do
    ob.Transparency = ob.Transparency + 0.08
    ob.Size = ob.Size + Vector3.new(-(sizezor2/16),-(sizezor2/16),0)
    ob.CFrame = cf
    wait(0.025)
    end
    game:service("Debris"):AddItem(ob, 0)
    end
     
    function Explodez(pos, dmgz, sizezor, pitchz)
    local e = part:Clone()
    local mesh = Instance.new("SpecialMesh", e)
    mesh.MeshType = "Sphere"
    e.CFrame = CFrame.new(pos)
    e.Parent = mo
    local e2 = part:Clone()
    local mesh2 = Instance.new("SpecialMesh", e2)
    mesh2.MeshType = "Sphere"
    e2.CFrame = CFrame.new(pos)
    e2.Parent = mo
    e2.BrickColor = BrickColor.new("Royal purple")
     
    local d = ((explodist*3)+sizezor)/2
    r1 = pos + Vector3.new(-d,-d,-d)
    r2 = pos + Vector3.new(d,d,d)
    region = Region3.new(r1, r2)
    local partz = workspace:FindPartsInRegion3(region, bin.Parent.Parent.Character, 220)
    tehvol = 0.19
    S2:Play()
    game:service("Debris"):AddItem(e, 0.5)
    game:service("Debris"):AddItem(e2, 0.5)
    for _ = 1, 3 do
    local edist = (explodist+sizezor)*2
    mesh.Scale = mesh.Scale + Vector3.new(edist,edist,edist)
    e.Transparency = e.Transparency + 0.22
    mesh2.Scale = mesh2.Scale + Vector3.new(edist/1.5,edist/1.5,edist/1.5)
    e2.Transparency = e2.Transparency + 0.22
    wait(0.05)
    end
    for __, vv in pairs(partz) do
    if vv.Parent.className == "Model" and vv.Parent:findFirstChild("Humanoid") ~= nil then
    if sitting == true then
    vv.Parent.Humanoid.Sit = true
    end
    vv.Parent.Humanoid.Health = vv.Parent.Humanoid.Health - dmgz
    end
    if vv.Anchored == false then
    vv.Velocity = CFrame.new(pos, vv.Position).lookVector*distpower
    end
    end
    wait()
    for _ = 1, 3 do
    local edist = (explodist+sizezor) * 2
    mesh.Scale = mesh.Scale + Vector3.new(-edist,-edist,-edist)
    e.Transparency = e.Transparency + 0.1
    mesh2.Scale = mesh2.Scale + Vector3.new(-(edist/1.5),-(edist/1.5),-(edist/1.5))
    e2.Transparency = e2.Transparency + 0.1
    wait(0.05)
    end
    end
     
    distz = speedz
    function Shoot(mouse, dmgz, sizezor, sizezor2, pitchz)
    local p = part:Clone()
    p.Size = Vector3.new(sizezor2,sizezor2,1.5)
    p.CFrame = CFrame.new(han.Position, mouse.Hit.p)
    p.Parent = mo
    local f = Instance.new("Fire", p)
    f.Size = 3
    f.Heat = 3
    f.Name = "Firez"
    f.Color = Color3.new(0.4,0.15,0.6)
    local tuch = false
    local num = 0
    game:GetService("Debris"):AddItem(p, 2)
    while tuch == false do
     
    if num ~= 0 then
    coroutine.resume(coroutine.create(ShootEffect), p, sizezor2)
    end
    p1 = p.Position
    p2 = p.Position + (p.CFrame.lookVector*2)
    local ray = Ray.new(p1, (p1 - p2).unit*-distz)
    hit, enz = workspace:findPartOnRay(ray, bin.Parent.Parent.Character)
    if hit ~= nil then
    tuch = true
    coroutine.resume(coroutine.create(Explodez), enz, dmgz, sizezor, pitchz)
    game:service("Debris"):AddItem(p, 0)
    end
    p.CFrame = p.CFrame + (p.CFrame.lookVector * speedz)
     
    num = num + 1
    if num == 100 then
    game:service("Debris"):AddItem(p, 0)
    break
    end
    wait()
    end
    end
     
    local regenerating = false
    local readytoshoot = true
    function onButton1Down(mouse)
    mo.Parent = bin.Parent.Parent.Character
    if readytoshoot == true and regenerating == false then
    if CurrentMP.Value >= 5 then
    readytoshoot = false
    coroutine.resume(coroutine.create(Shoot), mouse, normaldmg, 0, 0.4, 3.25)
    CurrentMP.Value = CurrentMP.Value - 5
    S3:Play()
    ----- Fire Anim -----
    Joint1.C0 = Joint1.C0 * CFrame.Angles(0.35,0,0)
    Joint2.C0 = Joint2.C0 * CFrame.Angles(0.35,0,0)
    wait(0.2)
    Joint1.C0 = CFrame.new(-0.55,0.5,-0.8) * CFrame.Angles(math.pi/2,0,math.pi/5)
    Joint2.C0 = CFrame.new(1,0.5,-0.75) * CFrame.Angles(math.pi/2,0,-math.pi/12)
     
     
    wait(resttime-0.2)
    readytoshoot = true
    end
    end
    end
     
    function MPRegenLine()
    local line = part:Clone()
    local mes = Instance.new("SpecialMesh", line)
    mes.MeshType = "Sphere"
    mes.Scale = Vector3.new(2.5,3.5,2.5)
    line.BrickColor = BrickColor.new("Royal purple")
    line.Transparency = math.random(2, 8)/10
    line.Parent = mo
    line.Name = "RegenLine"
    line.CFrame = bin.Parent.Parent.Character.Torso.CFrame + Vector3.new(math.random(-4,4), -4.5,math.random(-4,4))
    for _ = 1, 20 do
    line.CFrame = line.CFrame + Vector3.new(0,0.35,0)
    line.Transparency = line.Transparency + 0.01
    mes.Scale = mes.Scale + Vector3.new(-0.09,0.1,-0.09)
    wait()
    end
    game:service("Debris"):AddItem(line, 0)
    end
    function MPRegenLine2()
    local line = part:Clone()
    local mes = Instance.new("SpecialMesh", line)
    mes.MeshId = "http://www.roblox.com/asset/?id=20329976"
    mes.Scale = Vector3.new(5,0.1,5)
    line.BrickColor = BrickColor.new("Royal purple")
    line.Transparency = 0.2
    line.Parent = mo
    line.Name = "RegenLine"
    line.CFrame = bin.Parent.Parent.Character.Torso.CFrame + Vector3.new(0,-3.1,0)
    for _ = 1, 20 do
    line.CFrame = line.CFrame + Vector3.new(0,0.04,0)
    line.Transparency = line.Transparency + 0.0425
    mes.Scale = mes.Scale + Vector3.new(-0.1,0.14,-0.1)
    wait()
    end
    game:service("Debris"):AddItem(line, 0)
    end
     
     
    local down = Instance.new("NumberValue")
    down.Parent = bin
    down.Name = "MPRegen"
    function RegenMP()
    regenerating = true
    bin.Parent.Parent.Character.Humanoid.WalkSpeed = 0
    local theval = down.Value
    local dir = "Down"
    while down.Value == theval do
    -- coroutine.resume(coroutine.create(MPRegenLine))
    coroutine.resume(coroutine.create(MPRegenLine2))
    CurrentMP.Value = CurrentMP.Value + 1
    for _, vs in pairs(TehTableOfPartz) do
    vs.BrickColor = BrickColor.new("Royal purple")
    if vs.Transparency < 0.55 then
    dir = "Up"
    end
    if vs.Transparency > 0.8 then
    dir = "Down"
    end
    if dir == "Up" then
    vs.Transparency = vs.Transparency + 0.1
    elseif dir == "Down" then
    vs.Transparency = vs.Transparency - 0.1
    end
    end
    wait(0.09)
    end
    end
     
     
    function onKeyDown(key, mouse)
    if key ~= nil then
    key:lower()
    if key == "r" then
    down.Value = math.random(0, 32000)
    coroutine.resume(coroutine.create(RegenMP))
    elseif key == "e" then
    mo.Parent = bin.Parent.Parent.Character
    if readytoshoot == true and regenerating == false then
    if CurrentMP.Value >= 9 then
    readytoshoot = false
    coroutine.resume(coroutine.create(Shoot), mouse, (normaldmg*1.4), 3.5, 0.75, 2.75)
    CurrentMP.Value = CurrentMP.Value - 9
    S4:Play()
    ----- Fire Anim -----
    Joint1.C0 = Joint1.C0 * CFrame.Angles(0.35,0,0)
    Joint2.C0 = Joint2.C0 * CFrame.Angles(0.35,0,0)
    wait(0.2)
    Joint1.C0 = CFrame.new(-0.55,0.5,-0.8) * CFrame.Angles(math.pi/2,0,math.pi/5)
    Joint2.C0 = CFrame.new(1,0.5,-0.75) * CFrame.Angles(math.pi/2,0,-math.pi/12)
     
     
    wait(resttime-0.2)
    readytoshoot = true
    end
    end
    end
    end
    end
    function onKeyUp(key)
    if key == "r" then
    down.Value = math.random(0, 32000)
    bin.Parent.Parent.Character.Humanoid.WalkSpeed = 16
    for _, vs in pairs(TehTableOfPartz) do
    vs.Transparency = 0.98
    vs.BrickColor = BrickColor.new("Light stone grey")
    end
    regenerating = false
    end
    end
     
    function BuildRocket()
    LeftJoint.Part0 = nil
    RightJoint.Part0 = nil
    Joint1 = Instance.new("Motor", bin.Parent.Parent.Character.Torso)
    Joint2 = Instance.new("Motor", Joint1.Parent)
    Joint1.Part0 = Joint1.Parent
    Joint2.Part0 = Joint1.Parent
    Joint1.Part1 = bin.Parent.Parent.Character:findFirstChild("Left Arm")
    Joint2.Part1 = bin.Parent.Parent.Character:findFirstChild("Right Arm")
    Joint1.C0 = CFrame.new(-0.55,0.5,-0.8) * CFrame.Angles(math.pi/2,0,math.pi/5)
    Joint2.C0 = CFrame.new(1,0.5,-0.75) * CFrame.Angles(math.pi/2,0,-math.pi/12)
    mod = Instance.new("Model")
    mod.Parent = bin.Parent.Parent.Character
    mod.Name = "RocketDesign"
    mo.Parent = bin.Parent.Parent.Character
    hanz = part:Clone()
    hanz.Anchored = false
    hanz.Parent = mod
    mes = Instance.new("SpecialMesh", hanz)
    mes.MeshId = "rbxasset://fonts/rocketlauncher.mesh"
    mes.TextureId = "rbxasset://textures/rocketlaunchertex.png"
    mes.Scale = Vector3.new(0.7,0.9,0.9)
    hanz.Transparency = 1
    w = Instance.new("Weld", hanz)
    w.Name = "HandleToArmWeld"
    w.Part0 = bin.Parent.Parent.Character:findFirstChild("Right Arm")
    w.Part1 = hanz
    w.C0 = CFrame.new(-0.2,0,-0.6) * CFrame.Angles(0,math.pi,math.pi/2)
    main = part:Clone()
    main.Name = "MainDesignHandle"
    main.Anchored = false
    main.Parent = mod
    main.Position = bin.Parent.Parent.Character.Torso.Position
    mesh = Instance.new("CylinderMesh", main)
    mesh.Scale = Vector3.new(1.5,5.5,1.5)
    w = Instance.new("Weld", main)
    w.Part0 = hanz
    w.Part1 = main
    w.C0 = CFrame.new(0,0,0) * CFrame.Angles(0,0,math.pi/2)
    e = part:Clone()
    e.Name = "Weld Block"
    e.Anchored = false
    e.Parent = mod
    e.Size = Vector3.new(0.5,0.5,0.5)
    e.Position = bin.Parent.Parent.Character.Torso.Position
    e.Transparency = 1
    w = Instance.new("Weld", e)
    w.Part0 = main
    w.Part1 = e
    w.C0 = CFrame.new(0,0,0) * CFrame.Angles(math.pi/2,0,0)
     
    et = part:Clone()
    et.Name = "End Tip"
    et.Anchored = false
    et.Parent = mod
    et.Position = bin.Parent.Parent.Character.Torso.Position
    mesh = Instance.new("SpecialMesh", et)
    mesh.MeshId = "http://www.roblox.com/asset/?id=1033714"
    mesh.Scale = Vector3.new(0.6,1.8,0.6)
    w = Instance.new("Weld", et)
    w.Part0 = e
    w.Part1 = et
    w.C0 = CFrame.new(0,0,1.25) * CFrame.Angles(-math.pi/2,0,0)
    ft = part:Clone()
    ft.Name = "Front Tip"
    ft.Anchored = false
    ft.Parent = mod
    ft.Position = bin.Parent.Parent.Character.Torso.Position
    ft.BrickColor = BrickColor.new("Dark stone grey")
    mesh = Instance.new("SpecialMesh", ft)
    mesh.MeshId = "http://www.roblox.com/asset/?id=1033714"
    mesh.Scale = Vector3.new(0.325,0.6,0.325)
    w = Instance.new("Weld", ft)
    w.Part0 = e
    w.Part1 = ft
    w.C0 = CFrame.new(0,0,-1.4) * CFrame.Angles(-math.pi/2,0,0)
    ft2 = part:Clone()
    ft2.Name = "Front Tip 2"
    ft2.Anchored = false
    ft2.Parent = mod
    ft2.Position = bin.Parent.Parent.Character.Torso.Position
    mesh = Instance.new("SpecialMesh", ft2)
    mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
    mesh.Scale = Vector3.new(0.6,0.6,0.6)  
    w = Instance.new("Weld", ft2)
    w.Part0 = e
    w.Part1 = ft2
    w.C0 = CFrame.new(0,-0.065,-1.7) * CFrame.Angles(-math.pi/2,0,0)
    han = part:Clone()
    han.Name = "Handle"
    han.Anchored = false
    han.Parent = mod
    han.Size = Vector3.new(0.02,0.02,0.02)
    han.Transparency = 0.9
    f = Instance.new("Fire", han)
    f.Size = 1
    f.Heat = 0
    f.Color = Color3.new(0.05,0.05,0.1)
    f.SecondaryColor = Color3.new(0.2,0.1,0.1)
    w = Instance.new("Weld", han)
    w.Part0 = e
    w.Part1 = han
    w.C0 = CFrame.new(0,0,-2)
     
    TehTableOfPartz = {}
    for i = 1, 8 do
    c = part:Clone()
    c.Parent = mod
    c.Anchored = false
    c.Position = main.Position
    c.BrickColor = BrickColor.new("Light stone grey")
    c.Transparency = 0.98
    mesh = Instance.new("CylinderMesh", c)
    mesh.Scale = Vector3.new(1.51,0.25,1.51)
    w = Instance.new("Weld", c)
    w.Part0 = main
    w.Part1 = c
    w.C0 = CFrame.new(0,1.5,0) * CFrame.new(0,-(i/3),0)
    table.insert(TehTableOfPartz, c)
    end
     
    end
     
    equiped = false
    function FaceTarget(mouse)
    wait()
    local bg = Instance.new("BodyGyro")
    bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
    bg.D = 100
    bg.Parent = bin.Parent.Parent.Character.Torso
    local pos1 = bin.Parent.Parent.Character.Torso.Position
    local pos2 = Vector3.new(mouse.Hit.x, pos1.y,mouse.Hit.z)
    bg.cframe = CFrame.new(pos1, pos2)
    equiped = true
    while equiped == true do
    pos1 = bin.Parent.Parent.Character.Torso.Position
    pos2 = Vector3.new(mouse.Hit.x, pos1.y,mouse.Hit.z)
    bg.cframe = CFrame.new(pos1, pos2)
    wait()
    end
    game:service("Debris"):AddItem(bg, 0)
    end
     
    bin.Selected:connect(function(mouse)
    BuildRocket()
    mouse.Icon = "rbxasset://textures\\GunCursor.png"
    mouse.Button1Down:connect(function() onButton1Down(mouse) end)
    mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
    mouse.KeyUp:connect(function(key) onKeyUp(key) end)
    coroutine.resume(coroutine.create(FaceTarget), mouse)
    S1:Play()
    Fr.Visible = true
    end)
    bin.Deselected:connect(function()
    equiped = false
    Joint1:remove()
    Joint2:remove()
    LeftJoint.Part0 = bin.Parent.Parent.Character.Torso
    RightJoint.Part0 = bin.Parent.Parent.Character.Torso
    if bin.Parent.Parent.Character:findFirstChild("Left Arm") ~= nil then
    LeftJoint.Part1 = bin.Parent.Parent.Character:findFirstChild("Left Arm")
    end
    if bin.Parent.Parent.Character:findFirstChild("Right Arm") ~= nil then
    RightJoint.Part1 = bin.Parent.Parent.Character:findFirstChild("Right Arm")
    end
    for _, ooo in pairs(bin.Parent.Parent.Character:children()) do
    if ooo.className == "Model" and ooo.Name == "RocketDesign" then
    ooo:remove()
    end
    end
    Fr.Visible = false
    end)

