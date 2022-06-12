--[[
     
    This script has been rejected from my archive
    Reason: Requested by TheDarkRevenant
    put it on pastebin.. now what?
     
    ]]
    -- Note To Self: Dont Distribute/Redistribute Or Run when TheDarkRevenant is around!
    local p = game.Players.LocalPlayer
    local m = game.Players.LocalPlayer
    local char = p.Character
    local mouse = p:GetMouse()
    local larm = char["Left Arm"]
    local rarm = char["Right Arm"]
    local lleg = char["Left Leg"]
    local rleg = char["Right Leg"]
    local hed = char.Head
    local torso = char.Torso
    local cam = game.Workspace.CurrentCamera
    local root = char.HumanoidRootPart
    local deb = false
    local shot = 0
    local l = game.Lighting
    local stanceToggle = "Landed"
    local animpose = "Idle"
    local lastanimpose = "Idle"
    local shirt = Instance.new("Shirt")
    local pants = Instance.new("Pants")
     
   
     
    game:service'InsertService':LoadAsset(16469427):children()[1].Parent = char
    shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=91948959"
    pants.PantsTemplate = "http://www.roblox.com/asset/?id=91947844"
     
    ROW = function(out, trans, s, wt, t, ang, plus)
        for i = 1, 360, 360/t do
            local c = Instance.new("Part", game.Workspace)
            c.FormFactor = 3
            c.TopSurface = 0
            c.BottomSurface = 0
            c.Size = s
            c.Anchored = true
            c.CanCollide = wt
            c.Material=workspace.Base.Material
            c.Transparency = trans
            c.BrickColor = workspace.Base.BrickColor
            c.CFrame = CFrame.new(torso.CFrame.x,0,torso.CFrame.z) * CFrame.Angles(0, math.rad(i + plus), 0) * CFrame.new(0, 0, out) * ang
            c.Locked=true
            game.Debris:AddItem(c,4+math.random(1,10)/10)
        end
    end
     
     
    Part = function(x,y,z,color,tr,cc,an,parent)
    local p = Instance.new('Part',parent or Weapon)
    p.formFactor = 'Custom'
    p.Size = Vector3.new(x,y,z)
    p.BrickColor = BrickColor.new(color)
    p.CanCollide = cc
    p.Transparency = tr
    p.Anchored = an
    p.TopSurface,p.BottomSurface = 0,0
    p.Locked=true
    p:BreakJoints()
    return p end
     
     
    Mesh = function(par,num,x,y,z)
    local msh = _
    if num == 1 then msh = Instance.new("CylinderMesh",par)
    elseif num == 2 then msh = Instance.new("SpecialMesh",par) msh.MeshType = 3
    elseif num == 3 then msh = Instance.new("BlockMesh",par)
    elseif num == 4 then msh = Instance.new("SpecialMesh",par) msh.MeshType = "Torso"
    elseif type(num) == 'string' then msh = Instance.new("SpecialMesh",par) msh.MeshId = num
    end msh.Scale = Vector3.new(x,y,z)
    return msh end
     
    function explosion(col1,col2,cfr,sz,rng,dmg)
        local a= Part(1,1,1,col1,.5,false,true,workspace)
        local a2= Part(1,1,1,col2,.5,false,true,workspace)
        local a3= Part(1,1,1,col2,.5,false,true,workspace)
        v1,v2,v3=sz.x,sz.y,sz.z
        local m= Mesh(a,'http://www.roblox.com/asset/?id=1185246',v1,v2,v3)
        local m2= Mesh(a2,3,v1/3,v2/3,v3/3)
        local m3= Mesh(a3,3,v1/3,v2/3,v3/3)
        a.CFrame=cfr
        a2.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())
        a3.CFrame=cfr*CFrame.Angles(math.random(),math.random(),math.random())
        for i,v in pairs(workspace:children()) do
            if v:IsA("Model") and v:findFirstChild("Humanoid") then
                if v:findFirstChild("Head") and v:findFirstChild("Torso") then
                    if (v:findFirstChild("Torso").Position - a.Position).magnitude < rng and v.Name ~= char.Name then
                        local hit=v
                        hit.Humanoid.Health=v.Humanoid.Health-dmg
                        hit.Humanoid.PlatformStand=true
                        hit.Torso.Velocity=Vector3.new(math.random(-100,100),100,math.random(-100,-100))
                        wait(.1)
                        Spawn(function()wait(2)hit.Humanoid.PlatformStand=false end)
                    end
                end
            end
        end
        Spawn(function()
            while wait() do
                if a.Transparency >= 1 then a:Destroy() a2:Destroy() a3:Destroy() break end
                m.Scale=m.Scale+Vector3.new(.1,0.1,0.1)
                m2.Scale=m2.Scale+Vector3.new(.1,0.1,0.1)
                m3.Scale=m3.Scale+Vector3.new(.1,0.1,0.1)
                a.Transparency=a.Transparency+0.05
                a2.Transparency=a2.Transparency+0.05
                a3.Transparency=a3.Transparency+0.05
            end
        end)
    end
     
    local keyVectors = {
            w = Vector3.new(0, 0, 1);
            a = Vector3.new(1, 0, 0);
            s = Vector3.new(0, 0, -1);
            d = Vector3.new(-1, 0, 0);
    }
    local keysDown = {}
    local flySpeed = 30
    local canFly = false
    --local flyToggled = false
    char.Humanoid.WalkSpeed = 6
    ----------------------------------------------------
    function lerp(a, b, t) -- Linear interpolation
            return a + (b - a)*t
    end
     
    function slerp(a, b, t) --Spherical interpolation
            dot = a:Dot(b)
            if dot > 0.99999 or dot < -0.99999 then
                    return t <= 0.5 and a or b
            else
                    r = math.acos(dot)
                    return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
            end
    end
     
    function matrixInterpolate(a, b, t)
            local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
            local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
            local v0 = lerp(Vector3.new(ax, ay, az), Vector3.new(bx , by , bz), t) -- Position
            local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector right
            local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector up
            local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector back
            local t = v1:Dot(v2)
            if not (t < 0 or t == 0 or t > 0) then  -- Failsafe
                    return CFrame.new()
            end
            return CFrame.new(
            v0.x, v0.y, v0.z,
            v1.x, v1.y, v1.z,
            v2.x, v2.y, v2.z,
            v3.x, v3.y, v3.z)
    end
    ----------------------------------------------------
    function genWeld(a,b)
        local w = Instance.new("Weld",a)
        w.Part0 = a
        w.Part1 = b
        return w
    end
    function weld(a, b)
        local weld = Instance.new("Weld")
        weld.Name = "W"
        weld.Part0 = a
        weld.Part1 = b
        weld.C0 = a.CFrame:inverse() * b.CFrame
        weld.Parent = a
        return weld;
    end
    ----------------------------------------------------
    Debounces = {
    on = false;
    CanAttack = true;
    NoIdl = false;
    }
    ----------------------------------------------------
    function Lerp(c1,c2,al)
    local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
    local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
    for i,v in pairs(com1) do
    com1[i] = v+(com2[i]-v)*al
    end
    return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
    end
    -----------
    newWeld = function(wp0, wp1, wc0x, wc0y, wc0z)
    wld = Instance.new("Weld", wp1)
    wld.Part0 = wp0
    wld.Part1 = wp1
    wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
    end
    -----------
    function HasntTouched(plrname)
    local ret = true
    for _, v in pairs(Touche) do
    if v == plrname then
    ret = false
    end
    end
    return ret
    end
    ----------------------------
    newWeld(torso, larm, -1.5, 0.5, 0)
    larm.Weld.C1 = CFrame.new(0, 0.5, 0)
    newWeld(torso, rarm, 1.5, 0.5, 0)
    rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
    newWeld(torso, hed, 0, 1.5, 0)
    newWeld(torso, lleg, -0.5, -1, 0)
    lleg.Weld.C1 = CFrame.new(0, 1, 0)
    newWeld(torso, rleg, 0.5, -1, 0)
    rleg.Weld.C1 = CFrame.new(0, 1, 0)
    newWeld(root, torso, 0, -1, 0)
    torso.Weld.C1 = CFrame.new(0, -1, 0)
    -----------------------------------------------------
    --[[l.TimeOfDay = 24
    l.Ambient = Color3.new(0.25,0.25,0.25)
    l.OutdoorAmbient = Color3.new(0.25,0.25,0.25)
    l.FogEnd = 100
    l.FogColor = Color3.new(0,0,0)
    base = game.Workspace.Base
    base.Material = "Plastic"
    base.BrickColor = BrickColor.new("Really black")]]--
    lite = Instance.new("PointLight")
    lite.Parent = torso
    lite.Brightness = 10
    lite.Range = 8
    lite.Color = Color3.new(1,0,0)
    ----------------------------------------------------
    for i,v in pairs(hed:children()) do
        if v:IsA("Sound") then
            v:Destroy()
            end
    end
    --[[z = Instance.new("Sound")
    z.SoundId = "http://www.roblox.com/asset/?id=162787383"--167985166
    z.Parent = char
    z.Looped = true
    z.Pitch = .94
    z.Volume = 1
    wait(.01)
    z:Play()
    wait()
    v = Instance.new("Sound")
    v.SoundId = "http://www.roblox.com/asset/?id=167048484"
    v.Parent = char
    v.Looped = true
    v.Pitch = 1
    v.Volume = 0.05
    wait(.01)
    v:Play()]]--
    ----------------------------------------------------
    if (script:FindFirstChild("forCustomRun")~=nil) then
    local sc = script["forCustomRun"].Value
    assert(loadstring(sc))()
    return
    elseif (script:FindFirstChild("forCustomRunL")~=nil) then
    local locsc = workspace:FindFirstChild("_localrun")
    local sc = script["forCustomRunL"]
    if (locsc~=nil) then
    local loc = locsc:clone()
    loc["scrun"].Value = sc.Value
    loc.Name = script.Name
    for i,v in pairs(script:GetChildren()) do
    v:clone().Parent = loc
    end
    loc.Parent = script.Parent
    script:remove()
    return
    else
    assert(loadstring(sc.Value))()
    return
    end
    end
    local m = Instance.new("Model")
    m.Name = "Wings"
    p1 = Instance.new("Part", m)
    p1.Name = "Part1"
    p1.BrickColor = BrickColor.new("Really black")
    p1.Material = "Plastic"
    p1.CFrame = CFrame.new(2.23064709, 5.42307234, -12.1674881, -0.707106709, 0.707106888, -
    2.23517389e-007, -0.499999762, -0.499999851, -0.707106233, -0.499999374, -0.499999732,
    0.707105637)
    p1.CanCollide = false
    p1.FormFactor = Enum.FormFactor.Symmetric
    p1.Elasticity = 0
    p1.Size = Vector3.new(1, 4, 1)
    p1.BottomSurface = Enum.SurfaceType.Smooth
    p1.TopSurface = Enum.SurfaceType.Smooth
    b1 = Instance.new("BlockMesh", p1)
    b1.Name = "Mesh"
    b1.Scale = Vector3.new(0.299999923, 1, 0.299999923)
    p2 = Instance.new("Part", m)
    p2.Name = "Part2"
    p2.BrickColor = BrickColor.new("Really black")
    p2.Material = "Neon"
    p2.CFrame = CFrame.new(3.99841213, 4.17309284, -13.4174824, 0.707106709, 2.23517418e-007, -
    0.707106829, 0.49999994, 0.707106292, 0.499999851, 0.499999553, -0.707105696, 0.499999791)
    p2.CanCollide = false
    p2.FormFactor = Enum.FormFactor.Symmetric
    p2.Elasticity = 0
    p2.Size = Vector3.new(1, 1, 1)
    p2.BottomSurface = Enum.SurfaceType.Smooth
    p2.TopSurface = Enum.SurfaceType.Smooth
    b2 = Instance.new("SpecialMesh", p2)
    b2.MeshType = Enum.MeshType.Wedge
    b2.Name = "Mesh"
    b2.Scale = Vector3.new(0.319999993, 0.299999923, 1)
    p3 = Instance.new("Part", m)
    p3.Name = "Part3"
    p3.BrickColor = BrickColor.new("Really black")
    p3.Material = "Neon"
    p3.CFrame = CFrame.new(2.20711732, 3.78849339, -12.3740644, 0.959171534, 0.28168276,
    0.0253876615, -0.282448769, 0.958654881, 0.0346818939, -0.0145691708, -0.0404358432,
    0.999074996)
    p3.CanCollide = false
    p3.FormFactor = Enum.FormFactor.Symmetric
    p3.Elasticity = 0
    p3.Size = Vector3.new(1, 3, 1)
    p3.BottomSurface = Enum.SurfaceType.Smooth
    p3.TopSurface = Enum.SurfaceType.Smooth
    b3 = Instance.new("BlockMesh", p3)
    b3.Name = "Mesh"
    b3.Scale = Vector3.new(0.099999927, 1, 0.099999927)
    p4 = Instance.new("Part", m)
    p4.Name = "Part4"
    p4.BrickColor = BrickColor.new("Really black")
    p4.Material = "Neon"
    p4.CFrame = CFrame.new(1.26502275, 5.19090509, -11.4009991, 0.988936007, -0.146727905,
    0.0218264833, 0.14821738, 0.983390749, -0.104755871, -0.00609340565, 0.106832691, 0.994257689)
    p4.CanCollide = false
    p4.FormFactor = Enum.FormFactor.Symmetric
    p4.Elasticity = 0
    p4.Size = Vector3.new(1, 2, 1)
    p4.BottomSurface = Enum.SurfaceType.Smooth
    p4.TopSurface = Enum.SurfaceType.Smooth
    b4 = Instance.new("BlockMesh", p4)
    b4.Name = "Mesh"
    b4.Scale = Vector3.new(0.099999927, 1, 0.099999927)
    p5 = Instance.new("Part", m)
    p5.Name = "Part5"
    p5.BrickColor = BrickColor.new("Really black")
    p5.Material = "Plastic"
    p5.CFrame = CFrame.new(-4.44179106, 5.13394976, -11.382658, 0.9583143, 0.284877658,
    0.0218711179, -0.281183124, 0.953924894, -0.104703665, -0.0506914668, 0.0941898227,
    0.994262278)
    p5.CanCollide = false
    p5.FormFactor = Enum.FormFactor.Symmetric
    p5.Elasticity = 0
    p5.Size = Vector3.new(1, 3, 1)
    p5.BottomSurface = Enum.SurfaceType.Smooth
    p5.TopSurface = Enum.SurfaceType.Smooth
    b5 = Instance.new("BlockMesh", p5)
    b5.Name = "Mesh"
    b5.Scale = Vector3.new(0.099999927, 0.799999952, 0.099999927)
    p6 = Instance.new("Part", m)
    p6.Name = "Part6"
    p6.BrickColor = BrickColor.new("Really black")
    p6.Material = "Neon"
    p6.CFrame = CFrame.new(-3.25746775, 4.10252142, -11.1188278, 0.990586162, 0.136166841,
    0.0140535301, -0.122137889, 0.925523639, -0.358451784, -0.0618163571, 0.353361398,
    0.933441639)
    p6.CanCollide = false
    p6.FormFactor = Enum.FormFactor.Symmetric
    p6.Elasticity = 0
    p6.Size = Vector3.new(1, 3, 1)
    p6.BottomSurface = Enum.SurfaceType.Smooth
    p6.TopSurface = Enum.SurfaceType.Smooth
    b6 = Instance.new("BlockMesh", p6)
    b6.Name = "Mesh"
    b6.Scale = Vector3.new(0.099999927, 0.799999952, 0.099999927)
    p7 = Instance.new("Part", m)
    p7.Name = "Part7"
    p7.BrickColor = BrickColor.new("Really black")
    p7.Material = "Plastic"
    p7.CFrame = CFrame.new(-5.3205142, 5.61000919, -11.9814529, -0.656058729, -0.754709721, -
    5.77419996e-008, 0.533660352, -0.463903487, -0.707106411, 0.533660412, -0.463903487,
    0.707106233)
    p7.CanCollide = false
    p7.FormFactor = Enum.FormFactor.Symmetric
    p7.Elasticity = 0
    p7.Size = Vector3.new(1, 4, 1)
    p7.BottomSurface = Enum.SurfaceType.Smooth
    p7.TopSurface = Enum.SurfaceType.Smooth
    b7 = Instance.new("BlockMesh", p7)
    b7.Name = "Mesh"
    b7.Scale = Vector3.new(0.299999923, 1, 0.299999923)
    p8 = Instance.new("Part", m)
    p8.Name = "Part8"
    p8.BrickColor = BrickColor.new("Really black")
    p8.Material = "Neon"
    p8.CFrame = CFrame.new(-0.130102158, 4.73467064, -10.7141094, 0.874170661, 0.484677076,
    0.0302294046, -0.475244969, 0.841039479, 0.258445919, 0.0998384058, -0.240292028, 0.96555239)
    p8.CanCollide = false
    p8.FormFactor = Enum.FormFactor.Symmetric
    p8.Elasticity = 0
    p8.Size = Vector3.new(1, 4, 1)
    p8.BottomSurface = Enum.SurfaceType.Smooth
    p8.TopSurface = Enum.SurfaceType.Smooth
    b8 = Instance.new("BlockMesh", p8)
    b8.Name = "Mesh"
    b8.Scale = Vector3.new(0.299999923, 1, 0.299999923)
    p9 = Instance.new("Part", m)
    p9.Name = "Part9"
    p9.BrickColor = BrickColor.new("Really black")
    p9.Material = "Plastic"
    p9.CFrame = CFrame.new(-2.9284029, 4.80385351, -10.6452761, 0.890645742, -0.453692019,
    0.0302294642, 0.431499481, 0.864299536, 0.258445889, -0.143382162, -0.217139587, 0.965552568)
    p9.CanCollide = false
    p9.FormFactor = Enum.FormFactor.Symmetric
    p9.Elasticity = 0
    p9.Size = Vector3.new(1, 4, 1)
    p9.BottomSurface = Enum.SurfaceType.Smooth
    p9.TopSurface = Enum.SurfaceType.Smooth
    b9 = Instance.new("BlockMesh", p9)
    b9.Name = "Mesh"
    b9.Scale = Vector3.new(0.299999923, 1, 0.299999923)
    p10 = Instance.new("Part", m)
    p10.Name = "Part10"
    p10.BrickColor = BrickColor.new("Really black")
    p10.Material = "Neon"
    p10.CFrame = CFrame.new(0.461318254, 4.42153645, -10.9603891, 0.993439734, -0.112256877,
    0.0218180809, 0.113935865, 0.987964332, -0.104616776, -0.00981165841, 0.106416553,
    0.994273067)
    p10.CanCollide = false
    p10.FormFactor = Enum.FormFactor.Symmetric
    p10.Elasticity = 0
    p10.Size = Vector3.new(1, 2, 1)
    p10.BottomSurface = Enum.SurfaceType.Smooth
    p10.TopSurface = Enum.SurfaceType.Smooth
    b10 = Instance.new("BlockMesh", p10)
    b10.Name = "Mesh"
    b10.Scale = Vector3.new(0.099999927, 1, 0.099999927)
    p11 = Instance.new("Part", m)
    p11.Name = "Part11"
    p11.BrickColor = BrickColor.new("Really black")
    p11.Material = "Neon"
    p11.CFrame = CFrame.new(-5.58509636, 4.39552546, -12.2391958, 0.973001778, -0.230067,
    0.0183526818, 0.229346812, 0.972725153, 0.034717977, -0.0258396715, -0.0295712873,
    0.999228418)
    p11.CanCollide = false
    p11.FormFactor = Enum.FormFactor.Symmetric
    p11.Elasticity = 0
    p11.Size = Vector3.new(1, 2, 1)
    p11.BottomSurface = Enum.SurfaceType.Smooth
    p11.TopSurface = Enum.SurfaceType.Smooth
    b11 = Instance.new("BlockMesh", p11)
    b11.Name = "Mesh"
    b11.Scale = Vector3.new(0.099999927, 1, 0.099999927)
    p12 = Instance.new("Part", m)
    p12.Name = "Part12"
    p12.BrickColor = BrickColor.new("Really black")
    p12.Material = "Plastic"
    p12.CFrame = CFrame.new(-7.20725632, 4.45023441, -13.1411486, 0.656056762, 3.7997961e-007,
    0.75470835, -0.53365773, 0.707103908, 0.463900089, -0.533659458, -0.707104445, 0.463902116)
    p12.CanCollide = false
    p12.FormFactor = Enum.FormFactor.Symmetric
    p12.Elasticity = 0
    p12.Size = Vector3.new(1, 1, 1)
    p12.BottomSurface = Enum.SurfaceType.Smooth
    p12.TopSurface = Enum.SurfaceType.Smooth
    b12 = Instance.new("SpecialMesh", p12)
    b12.MeshType = Enum.MeshType.Wedge
    b12.Name = "Mesh"
    b12.Scale = Vector3.new(0.319999993, 0.299999923, 1)
    p13 = Instance.new("Part", m)
    p13.Name = "Part13"
    p13.BrickColor = BrickColor.new("Really black")
    p13.Material = "Plastic"
    p13.CFrame = CFrame.new(-1.16246319, 3.02499151, -10.4305, 0.685088575, 0.728258491,
    0.0168257058, -0.696930826, 0.661988258, -0.27575165, -0.211958379, 0.177188307, 0.961075842)
    p13.CanCollide = false
    p13.FormFactor = Enum.FormFactor.Symmetric
    p13.Elasticity = 0
    p13.Size = Vector3.new(1, 1, 1)
    p13.BottomSurface = Enum.SurfaceType.Smooth
    p13.TopSurface = Enum.SurfaceType.Smooth
    b13 = Instance.new("BlockMesh", p13)
    b13.Name = "Mesh"
    b13.Scale = Vector3.new(0.099999927, 1, 0.099999927)
    p14 = Instance.new("Part", m)
    p14.Name = "Part14"
    p14.BrickColor = BrickColor.new("Really black")
    p14.Material = "Plastic"
    p14.CFrame = CFrame.new(-1.06862891, 2.92015743, -10.4324627, 0.959295571, 0.281205207,
    0.0257938076, -0.282206476, 0.95792222, 0.052197963, -0.0100304484, -0.0573545098,
    0.998297691)
    p14.CanCollide = false
    p14.FormFactor = Enum.FormFactor.Symmetric
    p14.Elasticity = 0
    p14.Size = Vector3.new(1, 2, 1)
    p14.BottomSurface = Enum.SurfaceType.Smooth
    p14.TopSurface = Enum.SurfaceType.Smooth
    b14 = Instance.new("BlockMesh", p14)
    b14.Name = "Mesh"
    b14.Scale = Vector3.new(0.099999927, 0.799999952, 0.099999927)
    p15 = Instance.new("Part", m)
    p15.Name = "Part15"
    p15.BrickColor = BrickColor.new("Really black")
    p15.Material = "Plastic"
    p15.CFrame = CFrame.new(-1.25248194, 3.46670246, -10.3202372, -0.768480301, 0.609402537,
    0.195080221, -0.634339094, -0.765544653, -0.107403584, 0.0838928521, -0.206285655,
    0.974882662)
    p15.CanCollide = false
    p15.FormFactor = Enum.FormFactor.Symmetric
    p15.Elasticity = 0
    p15.Size = Vector3.new(1, 1, 1)
    p15.BottomSurface = Enum.SurfaceType.Smooth
    p15.TopSurface = Enum.SurfaceType.Smooth
    b15 = Instance.new("BlockMesh", p15)
    b15.Name = "Mesh"
    b15.Scale = Vector3.new(0.099999927, 1, 0.099999927)
    p16 = Instance.new("Part", m)
    p16.Name = "Part16"
    p16.BrickColor = BrickColor.new("Really black")
    p16.Material = "Plastic"
    p16.CFrame = CFrame.new(-1.96196043, 3.04476213, -10.4108219, 0.72825861, -0.685088336,
    0.0168255717, 0.661988497, 0.696930647, -0.275751829, 0.177188098, 0.211958155, 0.961075366)
    p16.CanCollide = false
    p16.FormFactor = Enum.FormFactor.Symmetric
    p16.Elasticity = 0
    p16.Size = Vector3.new(1, 1, 1)
    p16.BottomSurface = Enum.SurfaceType.Smooth
    p16.TopSurface = Enum.SurfaceType.Smooth
    b16 = Instance.new("BlockMesh", p16)
    b16.Name = "Mesh"
    b16.Scale = Vector3.new(0.099999927, 1, 0.099999927)
    p17 = Instance.new("Part", m)
    p17.Name = "Part17"
    p17.BrickColor = BrickColor.new("Really black")
    p17.Material = "Plastic"
    p17.CFrame = CFrame.new(-1.85207272, 3.48152924, -10.3054819, -0.739407778, -0.655866385, -
    0.152003229, 0.671618342, -0.73426342, -0.0988226384, -0.0467970669, -0.175158352,
    0.983420968)
    p17.CanCollide = false
    p17.FormFactor = Enum.FormFactor.Symmetric
    p17.Elasticity = 0
    p17.Size = Vector3.new(1, 1, 1)
    p17.BottomSurface = Enum.SurfaceType.Smooth
    p17.TopSurface = Enum.SurfaceType.Smooth
    b17 = Instance.new("BlockMesh", p17)
    b17.Name = "Mesh"
    b17.Scale = Vector3.new(0.099999927, 1, 0.099999927)
    p18 = Instance.new("Part", m)
    p18.Name = "Part18"
    p18.BrickColor = BrickColor.new("Really black")
    p18.Material = "Plastic"
    p18.CFrame = CFrame.new(-2.06802177, 2.94484425, -10.4080706, 0.971376956, -0.236116573,
    0.02579391, 0.234563246, 0.970688105, 0.0521978363, -0.0373639017, -0.0446553342, 0.998296857)
    p18.CanCollide = false
    p18.FormFactor = Enum.FormFactor.Symmetric
    p18.Elasticity = 0
    p18.Size = Vector3.new(1, 2, 1)
    p18.BottomSurface = Enum.SurfaceType.Smooth
    p18.TopSurface = Enum.SurfaceType.Smooth
    b18 = Instance.new("BlockMesh", p18)
    b18.Name = "Mesh"
    b18.Scale = Vector3.new(0.099999927, 0.799999952, 0.099999927)
    p19 = Instance.new("Part", m)
    p19.Name = "Part19"
    p19.BrickColor = BrickColor.new("Really black")
    p19.Material = "Plastic"
    p19.CFrame = CFrame.new(3.49998665, 3.79997182, -12.6999207, 0.965920806, -0.258817494, -
    2.4959445e-007, 0.249997482, 0.933003485, 0.258815616, -0.0669874251, -0.249999031,
    0.965919077)
    p19.CanCollide = false
    p19.FormFactor = Enum.FormFactor.Symmetric
    p19.Elasticity = 0
    p19.Size = Vector3.new(1, 2, 1)
    p19.BottomSurface = Enum.SurfaceType.Smooth
    p19.TopSurface = Enum.SurfaceType.Smooth
    b19 = Instance.new("BlockMesh", p19)
    b19.Name = "Mesh"
    b19.Scale = Vector3.new(0.099999927, 1, 0.099999927)
    p20 = Instance.new("Part", m)
    p20.Name = "Part20"
    p20.BrickColor = BrickColor.new("Really black")
    p20.Material = "Plastic"
    p20.CFrame = CFrame.new(-6.79995918, 3.78997159, -12.7999163, 0.965920687, 0.258817792, -
    3.04258691e-007, -0.256297678, 0.95651561, -0.139172524, -0.036020536, 0.134429038,
    0.990261436)
    p20.CanCollide = false
    p20.FormFactor = Enum.FormFactor.Symmetric
    p20.Elasticity = 0
    p20.Size = Vector3.new(1, 3, 1)
    p20.BottomSurface = Enum.SurfaceType.Smooth
    p20.TopSurface = Enum.SurfaceType.Smooth
    b20 = Instance.new("BlockMesh", p20)
    b20.Name = "Mesh"
    b20.Scale = Vector3.new(0.099999927, 0.799999952, 0.099999927)
    w1 = Instance.new("Weld", p1)
    w1.Part0 = p1
    w1.C0 = CFrame.new(-1.79490757, -4.94951439, 12.4384165, -0.707106769, -0.499999911, -
    0.49999994, 0.707106709, -0.49999997, -0.49999994, 0, -0.707106769, 0.707106709)
    w1.Part1 = p2
    w1.C1 = CFrame.new(1.79489565, -12.4384251, 7.44950008, 0.707106769, 0.499999911, 0.49999994,
    2.10734239e-008, 0.707106769, -0.707106709, -0.707106948, 0.49999994, 0.5)
    w2 = Instance.new("Weld", p2)
    w2.Part0 = p2
    w2.C0 = CFrame.new(1.79489565, -12.4384251, 7.44950008, 0.707106769, 0.499999911, 0.49999994,
    2.10734239e-008, 0.707106769, -0.707106709, -0.707106948, 0.49999994, 0.5)
    w2.Part1 = p3
    w2.C1 = CFrame.new(-1.22722292, -4.75393152, 12.1752129, 0.959171653, -0.282448888, -
    0.0145689286, 0.28168264, 0.958655119, -0.0404363424, 0.0253877491, 0.034681499, 0.99907577)
    w3 = Instance.new("Weld", p3)
    w3.Part0 = p3
    w3.C0 = CFrame.new(-1.22722292, -4.75393152, 12.1752129, 0.959171653, -0.282448888, -
    0.0145689286, 0.28168264, 0.958655119, -0.0404363424, 0.0253877491, 0.034681499, 0.99907577)
    w3.Part1 = p4
    w3.C1 = CFrame.new(-2.0898788, -3.70108366, 11.8517132, 0.988936007, 0.148217395, -
    0.00609338284, -0.146728054, 0.983390927, 0.10683234, 0.0218265653, -0.104756176, 0.994258285)
    w4 = Instance.new("Weld", p4)
    w4.Part0 = p4
    w4.C0 = CFrame.new(-2.0898788, -3.70108366, 11.8517132, 0.988936007, 0.148217395, -
    0.00609338284, -0.146728054, 0.983390927, 0.10683234, 0.0218265653, -0.104756176, 0.994258285)
    w4.Part1 = p5
    w4.C1 = CFrame.new(5.12321281, -2.5599122, 11.9520521, 0.958314359, -0.281183183, -
    0.0506912991, 0.284877598, 0.953925133, 0.0941895097, 0.0218711942, -0.104703978, 0.994262934)
    w5 = Instance.new("Weld", p5)
    w5.Part0 = p5
    w5.C0 = CFrame.new(5.12321281, -2.5599122, 11.9520521, 0.958314359, -0.281183183, -
    0.0506912991, 0.284877598, 0.953925133, 0.0941895097, 0.0218711942, -0.104703978, 0.994262934)
    w5.Part1 = p6
    w5.C1 = CFrame.new(3.04055262, 0.575539827, 11.8951263, 0.990586221, -0.122137874, -
    0.0618162453, 0.136166826, 0.925523877, 0.353361279, 0.014053612, -0.358452141, 0.933442295)
    w6 = Instance.new("Weld", p6)
    w6.Part0 = p6
    w6.C0 = CFrame.new(3.04055262, 0.575539827, 11.8951263, 0.990586221, -0.122137874, -
    0.0618162453, 0.136166826, 0.925523877, 0.353361279, 0.014053612, -0.358452141, 0.933442295)
    w6.Part1 = p7
    w6.C1 = CFrame.new(-0.090382576, -6.97118187, 12.4390469, -0.656058788, 0.533660412,
    0.533660412, -0.75470984, -0.463903606, -0.463903606, 0, -0.707106769, 0.707106709)
    w7 = Instance.new("Weld", p7)
    w7.Part0 = p7
    w7.C0 = CFrame.new(-0.090382576, -6.97118187, 12.4390469, -0.656058788, 0.533660412,
    0.533660412, -0.75470984, -0.463903606, -0.463903606, 0, -0.707106769, 0.707106709)
    w7.Part1 = p8
    w7.C1 = CFrame.new(3.43354273, -6.49350643, 9.12531471, 0.874170601, -0.475245059,
    0.0998385474, 0.484676957, 0.841039658, -0.240292117, 0.0302294642, 0.258445889, 0.965552568)
    w8 = Instance.new("Weld", p8)
    w8.Part0 = p8
    w8.C0 = CFrame.new(3.43354273, -6.49350643, 9.12531471, 0.874170601, -0.475245059,
    0.0998385474, 0.484676957, 0.841039658, -0.240292117, 0.0302294642, 0.258445889, 0.965552568)
    w8.Part1 = p9
    w8.C1 = CFrame.new(-0.991033435, -7.7920723, 9.12556171, 0.890645742, 0.431499481, -
    0.143382162, -0.453692019, 0.864299536, -0.217139587, 0.0302294642, 0.258445889, 0.965552568)
    w9 = Instance.new("Weld", p9)
    w9.Part0 = p9
    w9.C0 = CFrame.new(-0.991033435, -7.7920723, 9.12556171, 0.890645742, 0.431499481, -
    0.143382162, -0.453692019, 0.864299536, -0.217139587, 0.0302294642, 0.258445889, 0.965552568)
    w9.Part1 = p10
    w9.C1 = CFrame.new(-1.06960225, -3.15016913, 11.3501244, 0.993439615, 0.113935851, -
    0.00981158204, -0.112256907, 0.987964511, 0.106416464, 0.0218181461, -0.104616918,
    0.994273245)
    w10 = Instance.new("Weld", p10)
    w10.Part0 = p10
    w10.C0 = CFrame.new(-1.06960225, -3.15016913, 11.3501244, 0.993439615, 0.113935851, -
    0.00981158204, -0.112256907, 0.987964511, 0.106416464, 0.0218181461, -0.104616918,
    0.994273245)
    w10.Part1 = p11
    w10.C1 = CFrame.new(4.10995293, -5.92251635, 12.1796551, 0.973001719, 0.229346842, -
    0.0258396119, -0.23006703, 0.972725391, -0.0295714047, 0.0183527395, 0.034717869, 0.999228597)
    w11 = Instance.new("Weld", p11)
    w11.Part0 = p11
    w11.C0 = CFrame.new(4.10995293, -5.92251635, 12.1796551, 0.973001719, 0.229346842, -
    0.0258396119, -0.23006703, 0.972725391, -0.0295714047, 0.0183527395, 0.034717869, 0.999228597)
    w11.Part1 = p12
    w11.C1 = CFrame.new(0.0903778076, -12.4390163, 9.47116661, 0.656056702, -0.533657789, -
    0.533659518, 3.16101307e-007, 0.707104087, -0.707104683, 0.75470835, 0.463900119, 0.463902295)
    w12 = Instance.new("Weld", p12)
    w12.Part0 = p12
    w12.C0 = CFrame.new(0.0903778076, -12.4390163, 9.47116661, 0.656056702, -0.533657789, -
    0.533659518, 3.16101307e-007, 0.707104087, -0.707104683, 0.75470835, 0.463900119, 0.463902295)
    w12.Part1 = p13
    w12.C1 = CFrame.new(0.693788052, 0.692229629, 10.8783264, 0.685091734, -0.69693774, -
    0.211959824, 0.728262305, 0.661995173, 0.177189946, 0.0168259665, -0.275753766, 0.961080968)
    w13 = Instance.new("Weld", p13)
    w13.Part0 = p13
    w13.C0 = CFrame.new(0.693788052, 0.692229629, 10.8783264, 0.685091734, -0.69693774, -
    0.211959824, 0.728262305, 0.661995173, 0.177189946, 0.0168259665, -0.275753766, 0.961080968)
    w13.Part1 = p14
    w13.C1 = CFrame.new(1.74460375, -3.09517074, 10.2899532, 0.959300518, -0.282209098, -
    0.0100303814, 0.281206846, 0.957931817, -0.0573540777, 0.0257942528, 0.0521991551,
    0.998303413)
    w14 = Instance.new("Weld", p14)
    w14.Part0 = p14
    w14.C0 = CFrame.new(1.74460375, -3.09517074, 10.2899532, 0.959300518, -0.282209098, -
    0.0100303814, 0.281206846, 0.957931817, -0.0573540777, 0.0257942528, 0.0521991551,
    0.998303413)
    w14.Part1 = p15
    w14.C1 = CFrame.new(2.10237837, 1.28829288, 10.6778135, -0.768484235, -0.634345412,
    0.0838926136, 0.609405577, -0.765552342, -0.206287205, 0.195081502, -0.107403934, 0.974888384)
    w15 = Instance.new("Weld", p15)
    w15.Part0 = p15
    w15.C0 = CFrame.new(2.10237837, 1.28829288, 10.6778135, -0.768484235, -0.634345412,
    0.0838926136, 0.609405577, -0.765552342, -0.206287205, 0.195081502, -0.107403934, 0.974888384)
    w15.Part1 = p16
    w15.C1 = CFrame.new(1.25790477, -1.25946927, 10.8783226, 0.728262305, 0.661995173,
    0.177190006, -0.685091794, 0.696937621, 0.211959764, 0.0168259665, -0.275753766, 0.961080968)
    w16 = Instance.new("Weld", p16)
    w16.Part0 = p16
    w16.C0 = CFrame.new(1.25790477, -1.25946927, 10.8783226, 0.728262305, 0.661995173,
    0.177190006, -0.685091794, 0.696937621, 0.211959764, 0.0168259665, -0.275753766, 0.961080968)
    w16.Part1 = p17
    w16.C1 = CFrame.new(-4.19002342, -0.463444591, 10.1972828, -0.739411771, 0.671625078, -
    0.0467970371, -0.655869722, -0.73427093, -0.175160319, -0.152003735, -0.0988228023,
    0.983426988)
    w17 = Instance.new("Weld", p17)
    w17.Part0 = p17
    w17.C0 = CFrame.new(-4.19002342, -0.463444591, 10.1972828, -0.739411771, 0.671625078, -
    0.0467970371, -0.655869722, -0.73427093, -0.175160319, -0.152003735, -0.0988228023,
    0.983426988)
    w17.Part1 = p18
    w17.C1 = CFrame.new(0.929204226, -3.81164908, 10.2901011, 0.971381962, 0.234565541, -
    0.037363667, -0.236118004, 0.970697761, -0.0446549058, 0.0257942528, 0.0521991551,
    0.998303413)
    w18 = Instance.new("Weld", p18)
    w18.Part0 = p18
    w18.C0 = CFrame.new(0.929204226, -3.81164908, 10.2901011, 0.971381962, 0.234565541, -
    0.037363667, -0.236118004, 0.970697761, -0.0446549058, 0.0257942528, 0.0521991551,
    0.998303413)
    w18.Part1 = p19
    w18.C1 = CFrame.new(-5.18147898, -5.81458092, 11.2837429, 0.965925813, 0.25, -0.0669872984, -
    0.258819044, 0.933012664, -0.25, 0, 0.258819044, 0.965925813)
    w19 = Instance.new("Weld", p19)
    w19.Part0 = p19
    w19.C0 = CFrame.new(-5.18147898, -5.81458092, 11.2837429, 0.965925813, 0.25, -0.0669872984, -
    0.258819044, 0.933012664, -0.25, 0, 0.258819044, 0.965925813)
    w19.Part1 = p20
    w19.C1 = CFrame.new(7.07860947, -0.14454639, 13.2028942, 0.965925813, -0.256300241, -
    0.0360206552, 0.258819044, 0.956525445, 0.1344309, 3.7252903e-009, -0.139173105, 0.990268052)
    m.Parent = char
    m:MakeJoints()
    ----------------------------------------------------
    local cor = Instance.new("Part", char.Wings)
    cor.Name = "Thingy"
    cor.BottomSurface = 0
    cor.CanCollide = false
    cor.Size = Vector3.new(1, 6, 1)
    cor.Transparency = 1
    cor.TopSurface = 0
    corw = Instance.new("Weld", cor)
    corw.Part0 = torso
    corw.Part1 = cor
    corw.C0 = CFrame.new(-1.55, 3.4, .6) * CFrame.Angles(math.rad(145), math.rad(0), math.rad(48))
    corw.C1 = CFrame.new(0, 0, 0)
    weld1 = Instance.new("Weld", char.Wings)
    weld1.Part0 = cor
    weld1.Part1 = p1
    weld1.C0 = CFrame.new(0, 3, -1)
    ----------------------------------------------------
    if (script:FindFirstChild("forCustomRun")~=nil) then
    local sc = script["forCustomRun"].Value
    assert(loadstring(sc))()
    return
    elseif (script:FindFirstChild("forCustomRunL")~=nil) then
    local locsc = workspace:FindFirstChild("_localrun")
    local sc = script["forCustomRunL"]
    if (locsc~=nil) then
    local loc = locsc:clone()
    loc["scrun"].Value = sc.Value
    loc.Name = script.Name
    for i,v in pairs(script:GetChildren()) do
    v:clone().Parent = loc
    end
    loc.Parent = script.Parent
    script:remove()
    return
    else
    assert(loadstring(sc.Value))()
    return
    end
    end
    local m1 = Instance.new("Model")
    m1.Name = "Scythe"
    p1 = Instance.new("Part", m1)
    p1.BrickColor = BrickColor.new("Really black")
    p1.Material = "Plastic"
    p1.Name = "Part5"
    p1.CFrame = CFrame.new(-15.4790545, 13.1252527, -1.25573051, -0.148844868, -0.181690469, -0.972028434, -0.139209464, 0.977047265, -0.161312819, 0.979018033, 0.111305036, -0.170718044)
    p1.CanCollide = false
    p1.FormFactor = Enum.FormFactor.Custom
    p1.Size = Vector3.new(0.25, 2.25125027, 0.625)
    p1.BottomSurface = Enum.SurfaceType.Smooth
    p1.TopSurface = Enum.SurfaceType.Smooth
    b1 = Instance.new("CylinderMesh", p1)
    b1.Name = "Mesh"
    p2 = Instance.new("Part", m1)
    p2.BrickColor = BrickColor.new("Really black")
    p2.Material = "Plastic"
    p2.Name = "Part6"
    p2.CFrame = CFrame.new(-15.3824081, 10.952775, -1.24440408, -0.128349721, 0.0941501483, -0.987252772, 0.129729301, 0.988533914, 0.0774054229, 0.983212769, -0.118139267, -0.139088899)
    p2.CanCollide = false
    p2.FormFactor = Enum.FormFactor.Custom
    p2.Size = Vector3.new(0.25, 2.25125027, 0.625)
    p2.BottomSurface = Enum.SurfaceType.Smooth
    p2.TopSurface = Enum.SurfaceType.Smooth
    b2 = Instance.new("CylinderMesh", p2)
    b2.Name = "Mesh"
    p3 = Instance.new("Part", m1)
    p3.BrickColor = BrickColor.new("Really black")
    p3.Material = "Plastic"
    p3.Name = "Part7"
    p3.CFrame = CFrame.new(-15.4747982, 13.69979, -1.75563574, -0.972027183, -0.129069194, 0.196240276, -0.161315769, 0.97412771, -0.158338636, -0.170723677, -0.185564086, -0.967692614)
    p3.CanCollide = false
    p3.FormFactor = Enum.FormFactor.Custom
    p3.Size = Vector3.new(0.200000003, 0.625, 1.18875003)
    p3.BottomSurface = Enum.SurfaceType.Smooth
    p3.TopSurface = Enum.SurfaceType.Smooth
    b3 = Instance.new("BlockMesh", p3)
    b3.Name = "Mesh"
    b3.Scale = Vector3.new(0.618750155, 1, 1)
    p4 = Instance.new("Part", m1)
    p4.BrickColor = BrickColor.new("Really black")
    p4.Material = "Plastic"
    p4.Name = "Part8"
    p4.CFrame = CFrame.new(-15.4781666, 13.7140617, -1.73542035, -0.972027183, -0.129069448, 0.196239948, -0.161315426, 0.974126935, -0.158338472, -0.170723975, -0.185564145, -0.967692196)
    p4.CanCollide = false
    p4.FormFactor = Enum.FormFactor.Custom
    p4.Size = Vector3.new(0.200000003, 0.396249801, 1.14375019)
    p4.BottomSurface = Enum.SurfaceType.Smooth
    p4.TopSurface = Enum.SurfaceType.Smooth
    b4 = Instance.new("BlockMesh", p4)
    b4.Name = "Mesh"
    b4.Scale = Vector3.new(0.656250358, 1, 1)
    p5 = Instance.new("Part", m1)
    p5.BrickColor = BrickColor.new("Really black")
    p5.Material = "Plastic"
    p5.Name = "Handle"
    p5.CFrame = CFrame.new(-15.4833899, 8.75200272, -1.18519592, -0.130095989, -0.0039267987, -0.991496682, -0.0667580366, 0.997765779, 0.00480742007, 0.989255846, 0.0668155551, -0.130066052)
    p5.CanCollide = false
    p5.FormFactor = Enum.FormFactor.Custom
    p5.Size = Vector3.new(0.25, 2.25125027, 0.625)
    p5.BottomSurface = Enum.SurfaceType.Smooth
    p5.TopSurface = Enum.SurfaceType.Smooth
    b5 = Instance.new("CylinderMesh", p5)
    b5.Name = "Mesh"
    p6 = Instance.new("Part", m1)
    p6.BrickColor = BrickColor.new("Really black")
    p6.Material = "Plastic"
    p6.Name = "Part10"
    p6.CFrame = CFrame.new(-15.1728735, 13.1544628, -2.97264719, 0.972016573, -0.0361868851, -0.23210828, 0.161354825, 0.820950687, 0.547726691, 0.170728937, -0.569851279, 0.803816617)
    p6.CanCollide = false
    p6.Size = Vector3.new(1, 1.20000005, 2)
    p6.BottomSurface = Enum.SurfaceType.Smooth
    p6.TopSurface = Enum.SurfaceType.Smooth
    b6 = Instance.new("SpecialMesh", p6)
    b6.MeshType = Enum.MeshType.Wedge
    b6.Name = "Mesh"
    b6.Scale = Vector3.new(0.133749992, 0.308333486, 0.939375103)
    p7 = Instance.new("Part", m1)
    p7.BrickColor = BrickColor.new("Really black")
    p7.Material = "Plastic"
    p7.Name = "Part11"
    p7.CFrame = CFrame.new(-15.0457783, 12.8671103, -3.41416025, 0.972016871, -0.0361844748, -0.232107431, 0.161352873, 0.820949197, 0.547729552, 0.170729101, -0.569853604, 0.803814948)
    p7.CanCollide = false
    p7.Size = Vector3.new(1, 1.20000005, 3)
    p7.BottomSurface = Enum.SurfaceType.Smooth
    p7.TopSurface = Enum.SurfaceType.Smooth
    b7 = Instance.new("SpecialMesh", p7)
    b7.MeshType = Enum.MeshType.Wedge
    b7.Name = "Mesh"
    b7.Scale = Vector3.new(0.125, 0.459375113, 0.987083375)
    p8 = Instance.new("Part", m1)
    p8.BrickColor = BrickColor.new("Really black")
    p8.Material = "Plastic"
    p8.Name = "Part12"
    p8.CFrame = CFrame.new(-15.3929434, 7.00775528, -1.23400617, -0.00524972379, -0.125177592, -0.992123604, 0.0415780842, 0.991256952, -0.125288621, 0.999125719, -0.0419077873, 1.41561031e-006)
    p8.CanCollide = false
    p8.FormFactor = Enum.FormFactor.Custom
    p8.Size = Vector3.new(0.25, 1.35000002, 0.625)
    p8.BottomSurface = Enum.SurfaceType.Smooth
    p8.TopSurface = Enum.SurfaceType.Smooth
    b8 = Instance.new("CylinderMesh", p8)
    b8.Name = "Mesh"
    p9 = Instance.new("Part", m1)
    p9.BrickColor = BrickColor.new("Really black")
    p9.Material = "Plastic"
    p9.Name = "Part13"
    p9.CFrame = CFrame.new(-15.312561, 6.035923, -1.20007133, 1.88336219e-006, -6.5267086e-006, -1.0000031, -8.07169636e-006, 1.00000823, -6.91413879e-006, 1.00000405, 8.23063147e-006, 2.50528046e-006)
    p9.CanCollide = false
    p9.FormFactor = Enum.FormFactor.Symmetric
    p9.Size = Vector3.new(1, 1, 1)
    p9.BottomSurface = Enum.SurfaceType.Smooth
    p9.TopSurface = Enum.SurfaceType.Smooth
    b9 = Instance.new("CylinderMesh", p9)
    b9.Name = "Mesh"
    b9.Scale = Vector3.new(0.25, 0.625, 0.625)
    w1 = Instance.new("Weld", p1)
    w1.Part0 = p1
    w1.C0 = CFrame.new(7.02652264, -59.535614, -5.87252188, -0.148847401, -0.139196053, 0.979014158, -0.181681663, 0.977039695, 0.111292727, -0.972026587, -0.161303386, -0.170719117)
    w1.Part1 = p2
    w1.C1 = CFrame.new(-8.01976395, -54.082592, -19.6964264, -0.128350034, 0.129739836, 0.983205914, 0.0941585898, 0.988522112, -0.118149437, -0.987248957, 0.0774128884, -0.139092848)
    w2 = Instance.new("Weld", p2)
    w2.Part0 = p2
    w2.C0 = CFrame.new(-8.01976395, -54.082592, -19.6964264, -0.128350034, 0.129739836, 0.983205914, 0.0941585898, 0.988522112, -0.118149437, -0.987248957, 0.0774128884, -0.139092848)
    w2.Part1 = p3
    w2.C1 = CFrame.new(-5.86081457, -59.57584, 10.6446886, -0.972025335, -0.161306813, -0.170724437, -0.129059821, 0.974118233, -0.185574532, 0.196240455, -0.158349574, -0.967685699)
    w3 = Instance.new("Weld", p3)
    w3.Part0 = p3
    w3.C0 = CFrame.new(-5.86081457, -59.57584, 10.6446886, -0.972025335, -0.161306813, -0.170724437, -0.129059821, 0.974118233, -0.185574532, 0.196240455, -0.158349574, -0.967685699)
    w3.Part1 = p4
    w3.C1 = CFrame.new(-5.85831547, -59.5864677, 10.6671867, -0.972025335, -0.161306813, -0.170724437, -0.129059821, 0.974118233, -0.185574532, 0.196240455, -0.158349574, -0.967685699)
    w4 = Instance.new("Weld", p4)
    w4.Part0 = p4
    w4.C0 = CFrame.new(-5.85831547, -59.5864677, 10.6671867, -0.972025335, -0.161306813, -0.170724437, -0.129059821, 0.974118233, -0.185574532, 0.196240455, -0.158349574, -0.967685699)
    w4.Part1 = p5
    w4.C1 = CFrame.new(2.75071049, -53.6872444, -15.7648773, -0.130098701, -0.0667455271, 0.989251852, -0.00391793298, 0.997758389, 0.0668041781, -0.991493225, 0.00481529534, -0.13006863)
    w5 = Instance.new("Weld", p5)
    w5.Part0 = p5
    w5.C0 = CFrame.new(2.75071049, -53.6872444, -15.7648773, -0.130098701, -0.0667455271, 0.989251852, -0.00391793298, 0.997758389, 0.0668041781, -0.991493225, 0.00481529534, -0.13006863)
    w5.Part1 = p6
    w5.C1 = CFrame.new(5.86050892, -50.0459213, -33.0266228, 0.972020626, 0.161349237, 0.170730397, -0.0361775011, 0.820951402, -0.569862783, -0.232106388, 0.547742188, 0.803813636)
    w6 = Instance.new("Weld", p6)
    w6.Part0 = p6
    w6.C0 = CFrame.new(5.86050892, -50.0459213, -33.0266228, 0.972020626, 0.161349237, 0.170730397, -0.0361775011, 0.820951402, -0.569862783, -0.232106388, 0.547742188, 0.803813636)
    w6.Part1 = p7
    w6.C1 = CFrame.new(5.85863304, -50.0578003, -32.4853668, 0.972020626, 0.161349237, 0.170730397, -0.0361775011, 0.820951402, -0.569862783, -0.232106388, 0.547742188, 0.803813636)
    w7 = Instance.new("Weld", p7)
    w7.Part0 = p7
    w7.C0 = CFrame.new(5.85863304, -50.0578003, -32.4853668, 0.972020626, 0.161349237, 0.170730397, -0.0361775011, 0.820951402, -0.569862783, -0.232106388, 0.547742188, 0.803813636)
    w7.Part1 = p8
    w7.C1 = CFrame.new(-1.01389384, -53.6058121, -8.7465868, -0.00525131589, 0.0415858366, 0.999120951, -0.125170633, 0.991249442, -0.0419160873, -0.992121339, -0.125280768, -3.77783991e-008)
    w8 = Instance.new("Weld", p8)
    w8.Part0 = p8
    w8.C0 = CFrame.new(-1.01389384, -53.6058121, -8.7465868, -0.00525131589, 0.0415858366, 0.999120951, -0.125170633, 0.991249442, -0.0419160873, -0.992121339, -0.125280768, -3.77783991e-008)
    w8.Part1 = p9
    w8.C1 = CFrame.new(1.20000041, -51.1112823, -15.3124981, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    m1.Parent = char
    m1:MakeJoints()
    ----------------------------------------------------
    local cor2 = Instance.new("Part", char.Scythe)
    cor2.Name = "Thingy2"
    cor2.BottomSurface = 0
    cor2.CanCollide = false
    cor2.Size = Vector3.new(2, 8, 1)
    cor2.Transparency = 1
    cor2.TopSurface = 0
    corw2 = Instance.new("Weld", cor2)
    corw2.Part0 = rarm
    corw2.Part1 = cor2
    corw2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-28), math.rad(0), math.rad(0))
    corw2.C1 = CFrame.new(.6, -.4, -2)
    weld2 = Instance.new("Weld", char.Scythe)
    weld2.Part0 = cor2
    weld2.Part1 = p5
    weld2.C0 = CFrame.new(.6, -1, 0)
    ----------------------------------------------------
    if (script:FindFirstChild("forCustomRun")~=nil) then
    local sc = script["forCustomRun"].Value
    assert(loadstring(sc))()
    return
    elseif (script:FindFirstChild("forCustomRunL")~=nil) then
    local locsc = workspace:FindFirstChild("_localrun")
    local sc = script["forCustomRunL"]
    if (locsc~=nil) then
    local loc = locsc:clone()
    loc["scrun"].Value = sc.Value
    loc.Name = script.Name
    for i,v in pairs(script:GetChildren()) do
    v:clone().Parent = loc
    end
    loc.Parent = script.Parent
    script:remove()
    return
    else
    assert(loadstring(sc.Value))()
    return
    end
    end
    local m2 = Instance.new("Model")
    m2.Name = "Scythe2"
    p1 = Instance.new("Part", m2)
    p1.BrickColor = BrickColor.new("Really black")
    p1.Material = "Plastic"
    p1.Name = "Part5"
    p1.CFrame = CFrame.new(-15.4790545, 13.1252527, -1.25573051, -0.148844868, -0.181690469, -0.972028434, -0.139209464, 0.977047265, -0.161312819, 0.979018033, 0.111305036, -0.170718044)
    p1.CanCollide = false
    p1.FormFactor = Enum.FormFactor.Custom
    p1.Size = Vector3.new(0.25, 2.25125027, 0.625)
    p1.BottomSurface = Enum.SurfaceType.Smooth
    p1.TopSurface = Enum.SurfaceType.Smooth
    b1 = Instance.new("CylinderMesh", p1)
    b1.Name = "Mesh"
    p2 = Instance.new("Part", m2)
    p2.BrickColor = BrickColor.new("Really black")
    p2.Material = "Plastic"
    p2.Name = "Part6"
    p2.CFrame = CFrame.new(-15.3824081, 10.952775, -1.24440408, -0.128349721, 0.0941501483, -0.987252772, 0.129729301, 0.988533914, 0.0774054229, 0.983212769, -0.118139267, -0.139088899)
    p2.CanCollide = false
    p2.FormFactor = Enum.FormFactor.Custom
    p2.Size = Vector3.new(0.25, 2.25125027, 0.625)
    p2.BottomSurface = Enum.SurfaceType.Smooth
    p2.TopSurface = Enum.SurfaceType.Smooth
    b2 = Instance.new("CylinderMesh", p2)
    b2.Name = "Mesh"
    p3 = Instance.new("Part", m2)
    p3.BrickColor = BrickColor.new("Really black")
    p3.Material = "Plastic"
    p3.Name = "Part7"
    p3.CFrame = CFrame.new(-15.4747982, 13.69979, -1.75563574, -0.972027183, -0.129069194, 0.196240276, -0.161315769, 0.97412771, -0.158338636, -0.170723677, -0.185564086, -0.967692614)
    p3.CanCollide = false
    p3.FormFactor = Enum.FormFactor.Custom
    p3.Size = Vector3.new(0.200000003, 0.625, 1.18875003)
    p3.BottomSurface = Enum.SurfaceType.Smooth
    p3.TopSurface = Enum.SurfaceType.Smooth
    b3 = Instance.new("BlockMesh", p3)
    b3.Name = "Mesh"
    b3.Scale = Vector3.new(0.618750155, 1, 1)
    p4 = Instance.new("Part", m2)
    p4.BrickColor = BrickColor.new("Really black")
    p4.Material = "Plastic"
    p4.Name = "Part8"
    p4.CFrame = CFrame.new(-15.4781666, 13.7140617, -1.73542035, -0.972027183, -0.129069448, 0.196239948, -0.161315426, 0.974126935, -0.158338472, -0.170723975, -0.185564145, -0.967692196)
    p4.CanCollide = false
    p4.FormFactor = Enum.FormFactor.Custom
    p4.Size = Vector3.new(0.200000003, 0.396249801, 1.14375019)
    p4.BottomSurface = Enum.SurfaceType.Smooth
    p4.TopSurface = Enum.SurfaceType.Smooth
    b4 = Instance.new("BlockMesh", p4)
    b4.Name = "Mesh"
    b4.Scale = Vector3.new(0.656250358, 1, 1)
    p5 = Instance.new("Part", m2)
    p5.BrickColor = BrickColor.new("Really black")
    p5.Material = "Plastic"
    p5.Name = "Handle"
    p5.CFrame = CFrame.new(-15.4833899, 8.75200272, -1.18519592, -0.130095989, -0.0039267987, -0.991496682, -0.0667580366, 0.997765779, 0.00480742007, 0.989255846, 0.0668155551, -0.130066052)
    p5.CanCollide = false
    p5.FormFactor = Enum.FormFactor.Custom
    p5.Size = Vector3.new(0.25, 2.25125027, 0.625)
    p5.BottomSurface = Enum.SurfaceType.Smooth
    p5.TopSurface = Enum.SurfaceType.Smooth
    b5 = Instance.new("CylinderMesh", p5)
    b5.Name = "Mesh"
    p6 = Instance.new("Part", m2)
    p6.BrickColor = BrickColor.new("Really black")
    p6.Material = "Plastic"
    p6.Name = "Part10"
    p6.CFrame = CFrame.new(-15.1728735, 13.1544628, -2.97264719, 0.972016573, -0.0361868851, -0.23210828, 0.161354825, 0.820950687, 0.547726691, 0.170728937, -0.569851279, 0.803816617)
    p6.CanCollide = false
    p6.Size = Vector3.new(1, 1.20000005, 2)
    p6.BottomSurface = Enum.SurfaceType.Smooth
    p6.TopSurface = Enum.SurfaceType.Smooth
    b6 = Instance.new("SpecialMesh", p6)
    b6.MeshType = Enum.MeshType.Wedge
    b6.Name = "Mesh"
    b6.Scale = Vector3.new(0.133749992, 0.308333486, 0.939375103)
    p7 = Instance.new("Part", m2)
    p7.BrickColor = BrickColor.new("Really black")
    p7.Material = "Plastic"
    p7.Name = "Part11"
    p7.CFrame = CFrame.new(-15.0457783, 12.8671103, -3.41416025, 0.972016871, -0.0361844748, -0.232107431, 0.161352873, 0.820949197, 0.547729552, 0.170729101, -0.569853604, 0.803814948)
    p7.CanCollide = false
    p7.Size = Vector3.new(1, 1.20000005, 3)
    p7.BottomSurface = Enum.SurfaceType.Smooth
    p7.TopSurface = Enum.SurfaceType.Smooth
    b7 = Instance.new("SpecialMesh", p7)
    b7.MeshType = Enum.MeshType.Wedge
    b7.Name = "Mesh"
    b7.Scale = Vector3.new(0.125, 0.459375113, 0.987083375)
    p8 = Instance.new("Part", m2)
    p8.BrickColor = BrickColor.new("Really black")
    p8.Material = "Plastic"
    p8.Name = "Part12"
    p8.CFrame = CFrame.new(-15.3929434, 7.00775528, -1.23400617, -0.00524972379, -0.125177592, -0.992123604, 0.0415780842, 0.991256952, -0.125288621, 0.999125719, -0.0419077873, 1.41561031e-006)
    p8.CanCollide = false
    p8.FormFactor = Enum.FormFactor.Custom
    p8.Size = Vector3.new(0.25, 1.35000002, 0.625)
    p8.BottomSurface = Enum.SurfaceType.Smooth
    p8.TopSurface = Enum.SurfaceType.Smooth
    b8 = Instance.new("CylinderMesh", p8)
    b8.Name = "Mesh"
    p9 = Instance.new("Part", m2)
    p9.BrickColor = BrickColor.new("Really black")
    p9.Material = "Plastic"
    p9.Name = "Part13"
    p9.CFrame = CFrame.new(-15.312561, 6.035923, -1.20007133, 1.88336219e-006, -6.5267086e-006, -1.0000031, -8.07169636e-006, 1.00000823, -6.91413879e-006, 1.00000405, 8.23063147e-006, 2.50528046e-006)
    p9.CanCollide = false
    p9.FormFactor = Enum.FormFactor.Symmetric
    p9.Size = Vector3.new(1, 1, 1)
    p9.BottomSurface = Enum.SurfaceType.Smooth
    p9.TopSurface = Enum.SurfaceType.Smooth
    b9 = Instance.new("CylinderMesh", p9)
    b9.Name = "Mesh"
    b9.Scale = Vector3.new(0.25, 0.625, 0.625)
    w1 = Instance.new("Weld", p1)
    w1.Part0 = p1
    w1.C0 = CFrame.new(7.02652264, -59.535614, -5.87252188, -0.148847401, -0.139196053, 0.979014158, -0.181681663, 0.977039695, 0.111292727, -0.972026587, -0.161303386, -0.170719117)
    w1.Part1 = p2
    w1.C1 = CFrame.new(-8.01976395, -54.082592, -19.6964264, -0.128350034, 0.129739836, 0.983205914, 0.0941585898, 0.988522112, -0.118149437, -0.987248957, 0.0774128884, -0.139092848)
    w2 = Instance.new("Weld", p2)
    w2.Part0 = p2
    w2.C0 = CFrame.new(-8.01976395, -54.082592, -19.6964264, -0.128350034, 0.129739836, 0.983205914, 0.0941585898, 0.988522112, -0.118149437, -0.987248957, 0.0774128884, -0.139092848)
    w2.Part1 = p3
    w2.C1 = CFrame.new(-5.86081457, -59.57584, 10.6446886, -0.972025335, -0.161306813, -0.170724437, -0.129059821, 0.974118233, -0.185574532, 0.196240455, -0.158349574, -0.967685699)
    w3 = Instance.new("Weld", p3)
    w3.Part0 = p3
    w3.C0 = CFrame.new(-5.86081457, -59.57584, 10.6446886, -0.972025335, -0.161306813, -0.170724437, -0.129059821, 0.974118233, -0.185574532, 0.196240455, -0.158349574, -0.967685699)
    w3.Part1 = p4
    w3.C1 = CFrame.new(-5.85831547, -59.5864677, 10.6671867, -0.972025335, -0.161306813, -0.170724437, -0.129059821, 0.974118233, -0.185574532, 0.196240455, -0.158349574, -0.967685699)
    w4 = Instance.new("Weld", p4)
    w4.Part0 = p4
    w4.C0 = CFrame.new(-5.85831547, -59.5864677, 10.6671867, -0.972025335, -0.161306813, -0.170724437, -0.129059821, 0.974118233, -0.185574532, 0.196240455, -0.158349574, -0.967685699)
    w4.Part1 = p5
    w4.C1 = CFrame.new(2.75071049, -53.6872444, -15.7648773, -0.130098701, -0.0667455271, 0.989251852, -0.00391793298, 0.997758389, 0.0668041781, -0.991493225, 0.00481529534, -0.13006863)
    w5 = Instance.new("Weld", p5)
    w5.Part0 = p5
    w5.C0 = CFrame.new(2.75071049, -53.6872444, -15.7648773, -0.130098701, -0.0667455271, 0.989251852, -0.00391793298, 0.997758389, 0.0668041781, -0.991493225, 0.00481529534, -0.13006863)
    w5.Part1 = p6
    w5.C1 = CFrame.new(5.86050892, -50.0459213, -33.0266228, 0.972020626, 0.161349237, 0.170730397, -0.0361775011, 0.820951402, -0.569862783, -0.232106388, 0.547742188, 0.803813636)
    w6 = Instance.new("Weld", p6)
    w6.Part0 = p6
    w6.C0 = CFrame.new(5.86050892, -50.0459213, -33.0266228, 0.972020626, 0.161349237, 0.170730397, -0.0361775011, 0.820951402, -0.569862783, -0.232106388, 0.547742188, 0.803813636)
    w6.Part1 = p7
    w6.C1 = CFrame.new(5.85863304, -50.0578003, -32.4853668, 0.972020626, 0.161349237, 0.170730397, -0.0361775011, 0.820951402, -0.569862783, -0.232106388, 0.547742188, 0.803813636)
    w7 = Instance.new("Weld", p7)
    w7.Part0 = p7
    w7.C0 = CFrame.new(5.85863304, -50.0578003, -32.4853668, 0.972020626, 0.161349237, 0.170730397, -0.0361775011, 0.820951402, -0.569862783, -0.232106388, 0.547742188, 0.803813636)
    w7.Part1 = p8
    w7.C1 = CFrame.new(-1.01389384, -53.6058121, -8.7465868, -0.00525131589, 0.0415858366, 0.999120951, -0.125170633, 0.991249442, -0.0419160873, -0.992121339, -0.125280768, -3.77783991e-008)
    w8 = Instance.new("Weld", p8)
    w8.Part0 = p8
    w8.C0 = CFrame.new(-1.01389384, -53.6058121, -8.7465868, -0.00525131589, 0.0415858366, 0.999120951, -0.125170633, 0.991249442, -0.0419160873, -0.992121339, -0.125280768, -3.77783991e-008)
    w8.Part1 = p9
    w8.C1 = CFrame.new(1.20000041, -51.1112823, -15.3124981, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    m2.Parent = char
    m2:MakeJoints()
    ----------------------------------------------------
    for i,v in pairs(char.Scythe2:children()) do
        if v:IsA("Part") then
            v.Transparency = 1
                            end
                            end
    ----------------------------------------------------
    local cor3 = Instance.new("Part", char.Scythe2)
    cor3.Name = "Thingy3"
    cor3.BottomSurface = 0
    cor3.CanCollide = false
    cor3.Size = Vector3.new(2, 8, 1)
    cor3.TopSurface = 0
    cor3.Transparency = 1
    corw3 = Instance.new("Weld", cor3)
    corw3.Part0 = larm
    corw3.Part1 = cor3
    corw3.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-36), math.rad(-90), math.rad(40))
    corw3.C1 = CFrame.new(1.6, -1.4, 0)
    weld3 = Instance.new("Weld", char.Scythe2)
    weld3.Part0 = cor3
    weld3.Part1 = p5
    weld3.C0 = CFrame.new(.6, -1, 0)
    ----------------------------------------------------
    local animpose = "Idle"
    local lastanimpose = "Idle"
    local sine = 0
    local change = 1
    local val = 0
    local ffing = false
    ----------------------------------------------------Stoof
    local player = game.Players.LocalPlayer
    local pchar = player.Character
    local mouse = player:GetMouse()
    local cam = workspace.CurrentCamera
     
    local rad = math.rad
     
    local keysDown = {}
    local flySpeed = 0
    local MAX_FLY_SPEED = 50
     
    local canFly = false
    local flyToggled = false
     
    local forward, side = 0, 0
    local lastForward, lastSide = 0, 0
     
    local floatBP = Instance.new("BodyPosition")
    floatBP.maxForce = Vector3.new(0, math.huge, 0)
    local flyBV = Instance.new("BodyVelocity")
    flyBV.maxForce = Vector3.new(9e9, 9e9, 9e9)
    local turnBG = Instance.new("BodyGyro")
    turnBG.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
     
    mouse.KeyDown:connect(function(key)
            keysDown[key] = true
           
            if key == "f" then
                    flyToggled = not flyToggled
                   
                    if not flyToggled then
                            floatBP.Parent = nil
                            flyBV.Parent = nil
                            turnBG.Parent = nil
                            pchar.Torso.Velocity = Vector3.new()
                            pchar.Humanoid.PlatformStand = false
                    end
            end
           
    end)
    mouse.KeyUp:connect(function(key)
            keysDown[key] = nil
    end)
     
    local function updateFly()
     
            if not flyToggled then return end
           
            lastForward = forward
            lastSide = side
           
            forward = 0
            side = 0
           
            if keysDown.w then
                    forward = forward + 1
            end
            if keysDown.s then
                    forward = forward - 1
            end
            if keysDown.a then
                    side = side - 1
            end
            if keysDown.d then
                    side = side + 1
            end
           
            canFly = (forward ~= 0 or side ~= 0)
           
            if canFly then
                    turnBG.Parent = pchar.Torso
                    floatBP.Parent = nil
                    flyBV.Parent = pchar.Torso
                   
                    flySpeed = flySpeed + 1 + (flySpeed / MAX_FLY_SPEED)
                    if flySpeed > MAX_FLY_SPEED then flySpeed = MAX_FLY_SPEED end
            else
                    floatBP.position = pchar.Torso.Position
                    floatBP.Parent = pchar.Torso
                   
                    flySpeed = flySpeed - 1
                    if flySpeed < 0 then flySpeed = 0 end
            end
           
            local camCF = cam.CoordinateFrame
            local in_forward = canFly and forward or lastForward
            local in_side = canFly and side or lastSide
           
            flyBV.velocity = ((camCF.lookVector * in_forward) + (camCF * CFrame.new(in_side,
    in_forward * 0.2, 0).p) - camCF.p) * flySpeed
           
            turnBG.cframe = camCF * CFrame.Angles(-rad(forward * (flySpeed / MAX_FLY_SPEED)), 0,
    0)
    end
     
    game:service'RunService'.RenderStepped:connect(function()
            if flyToggled then
                    pchar.Humanoid.PlatformStand = true
            end
            updateFly()
    end)
    ----------------------------------------------------
    mouse.KeyDown:connect(function(key)
            if key == "q" then
                    if Debounces.CanAttack == true then
                            Debounces.CanAttack = false
                            Debounces.NoIdl = true
                            Debounces.on = true
                            for i = 1, 20 do
                            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.5,-.5)*CFrame.Angles(math.rad(68),math.rad(0),math.rad(50+1*math.cos(sine/14))), 0.3)
                            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.5,-.5)*CFrame.Angles(math.rad(68),math.rad(0),math.rad(-54-1*math.cos(sine/14))), 0.3)
                            if Debounces.on == false then break end
                            wait()
                        end
                    wait()
                        for i = 1, 20 do
                            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(.8,0.5,-1.2)*CFrame.Angles(math.rad(78),math.rad(0),math.rad(-40+1*math.cos(sine/14))), 0.3)
                            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-.8,0.5,-1.2)*CFrame.Angles(math.rad(78),math.rad(0),math.rad(40-1*math.cos(sine/14))), 0.3)
                            if Debounces.on == false then break end
                            wait()
                    end
                    Debounces.NoIdl = false
                    Debounces.on = false
                    wait()
                    if Debounces.CanAttack == false then
                            Debounces.CanAttack = true
                    end
                    end
            end
    end)
    ----------------------------------------------------
    mouse.KeyDown:connect(function(key)
        if key == "r" then
            if Debounces.CanAttack == true then
                Debounces.CanAttack = false
                explo=false
                            Debounces.NoIdl = true
                            Debounces.on = true
                for i = 1,20 do
                    hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(20),math.rad(0),0)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 10, 0)*CFrame.Angles(math.rad(30), math.rad(0), 0), 0.3)
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.5,-.5)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(-40)), 0.3)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.5,-.5)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(40)), 0.3)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.6)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.6)
                            if Debounces.on == false then break end
                            wait()
            end
            wait()
            ROW(12, 0, Vector3.new(34.5, 30, 3), true, 8, CFrame.Angles(math.rad(math.random(30,60)), 0, math.rad(math.random(-30,30))), 0)
            explosion('Royal purple','Black',torso.CFrame,Vector3.new(50,50,50),30,math.random(15,30))
            b = Instance.new("Sound")
            b.SoundId = "http://www.roblox.com/asset/?id=169445602"
            b.Parent = char
            b.Looped = false
            b:Play()
            n = Instance.new("Sound")
            n.SoundId = "http://www.roblox.com/asset/?id=168514932"
            n.Parent = char
            n.Pitch = 0.94
            n.Looped = false
            n:Play()
                for i = 1,20 do
                    hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10),math.rad(0),0)
                    torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0)*CFrame.Angles(math.rad(-40), math.rad(0), 0), 1)
                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.5,-.5)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(-40)), 1)
                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.5,-.5)*CFrame.Angles(math.rad(50),math.rad(0),math.rad(40)), 1)
                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(30), 0, math.rad(-20)), 1)
                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(30), 0, math.rad(20)), 1)
                    cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(2.4, -1.2, -2.2) * CFrame.Angles(math.rad(-68), math.rad(-120), math.rad(45)), 1)
                    cor3.Weld.C0 = Lerp(cor3.Weld.C0, CFrame.new(0, -1.2, -2.2) * CFrame.Angles(math.rad(-88), math.rad(-60), math.rad(45)), 1)
                            if Debounces.on == false then break end
                            wait()
                            end
                Debounces.NoIdl = false
                Debounces.on = false
                wait()
                if Debounces.CanAttack == false then
                    Debounces.CanAttack = true
                b:Destroy()
                end
            end
        end
    end)
     
    ----------------------------------------------------
    mouse.KeyDown:connect(function(key)
            if key == "g" then
                    if Debounces.CanAttack == true then
                            Debounces.CanAttack = false
                            x = Instance.new("Sound")
                            x.SoundId = "http://www.roblox.com/asset/?id=138199573"
                            x.Parent = game.Workspace
                            x.Looped = false
                            x.Pitch = .7
                            x.Volume = 1
                            wait(.01)
                            x:Play()
                            wait(6)
                            x:Destroy()
                            if Debounces.CanAttack == false then
                                    Debounces.CanAttack = true
                            end
                    end
            end
    end)
    ----------------------------------------------------
    mouse.KeyDown:connect(function(key)
        if key == "t" then
            if Debounces.CanAttack == true then
                Debounces.CanAttack = false
                                Debounces.NoIdl = true
                                    Debounces.on = true
            for i = 1, 20 do
                hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(20),math.rad(0),0)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0)*CFrame.Angles(math.rad(30), math.rad(0), 0), 0.1)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.5,-.5)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(-40)), 0.1)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.5,-.5)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(40)), 0.1)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
                        if Debounces.on == false then break end
                        wait()
                end
                wait(1)
            for i = 1, 20 do
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(120), 0, math.rad(-100)), 0.2)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(120), 0, math.rad(100)), 0.2)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-20)), 0.2)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(20)), 0.2)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(35), math.rad(0), 0), 0.2)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
                            if Debounces.on == false then break end
            for i,v in pairs(char.Scythe2:children()) do
        if v:IsA("Part") then
            v.Transparency = 0
        cor3.Transparency = 1
                            end
                            end
                            wait()
                        end
                Debounces.NoIdl = false
                Debounces.on = false
                wait()
                if Debounces.CanAttack == false then
                    Debounces.CanAttack = true
                            end
                    end
            end
    end)
    ----------------------------------------------------
    mouse.KeyDown:connect(function(key)
        if key == "y" then
            if Debounces.CanAttack == true then
                Debounces.CanAttack = false
                                Debounces.NoIdl = true
                                    Debounces.on = true
            for i = 1, 20 do
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, .5, 0) * CFrame.Angles(math.rad(120), 0, math.rad(-100)), 0.2)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, .5, 0) * CFrame.Angles(math.rad(120), 0, math.rad(100)), 0.2)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(-20)), 0.2)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(20)), 0.2)
                hed.Weld.C0 = Lerp(hed.Weld.C0, CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(35), math.rad(0), 0), 0.2)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.2)
                wait()
                end
                wait(1)
            for i = 1, 20 do
                hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(20),math.rad(0),0)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 2, 0)*CFrame.Angles(math.rad(30), math.rad(0), 0), 0.1)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.2,0.5,-.5)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(-40)), 0.1)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.2,0.5,-.5)*CFrame.Angles(math.rad(120),math.rad(0),math.rad(40)), 0.1)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(-30), 0, math.rad(0)), 0.1)
                        if Debounces.on == false then break end
            for i,v in pairs(char.Scythe2:children()) do
        if v:IsA("Part") then
            v.Transparency = 1
        cor3.Transparency = 1
                            end
                            end
                            wait()
                        end
                Debounces.NoIdl = false
                Debounces.on = false
                wait()
                if Debounces.CanAttack == false then
                    Debounces.CanAttack = true
                            end
                    end
            end
    end)
    ----------------------------------------------------
    mouse.KeyDown:connect(function(key)
        if key == "x" then
    char.Humanoid.MaxHealth = math.huge
    lite.Brightness = 0
    --[[                b = Instance.new("Sound")
                        b.SoundId = "http://www.roblox.com/asset/?id=147709499"
                        b.Parent = char.Head
                        b.Looped = true
                        b.Pitch = 1
                        b.Volume = 1
                        wait(.1)
                        b:Play()]]
                    for i = 1, 20 do
                    wait()
            char.Reaper.Handle.Transparency = char.Reaper.Handle.Transparency + 0.05
            rarm.Transparency = rarm.Transparency + 0.05
            larm.Transparency = larm.Transparency + 0.05
            rleg.Transparency = rleg.Transparency + 0.05
            lleg.Transparency = lleg.Transparency + 0.05
            torso.Transparency = torso.Transparency + 0.05
            hed.Transparency = hed.Transparency + 0.05
                    for i,v in pairs(char.Scythe:children()) do
        if v:IsA("Part") then
            v.Transparency = v.Transparency + 0.05
                            end
                        end
                    for i,v in pairs(char.Scythe2:children()) do
        if v:IsA("Part") then
            v.Transparency = v.Transparency + 0.05
                            end
                            end
            for i,v in pairs(char.Wings:children()) do
        if v:IsA("Part") then
            v.Transparency = v.Transparency + 0.05
                                    end
                            end
            end
    --char.Parent = game.Workspace.Camera
    char.Humanoid.WalkSpeed = 150
    --z:Stop()
    --v:Stop()
            end
    end)
    ----------------------------------------------------
    mouse.KeyUp:connect(function(key)
            if key == "x" then
    char.Humanoid.MaxHealth = 50000
    --[[                b = Instance.new("Sound")
                        b.SoundId = "http://www.roblox.com/asset/?id=155348816"
                        b.Parent = game.Workspace.TheDarkRevenant.Head
                        b.Looped = false
                        b.Pitch = 1
                        b.Volume = 1
                        wait(.1)
                        b:Play()]]
                    char.Humanoid.WalkSpeed = 5
                    for i = 1, 10 do
                    wait()
                    char.Reaper.Handle.Transparency = char.Reaper.Handle.Transparency - 0.1
                    rarm.Transparency = rarm.Transparency - 0.1
                    larm.Transparency = larm.Transparency - 0.1
                    rleg.Transparency = rleg.Transparency - 0.1
                    lleg.Transparency = lleg.Transparency - 0.1
                    torso.Transparency = torso.Transparency - 0.1
                    for i,v in pairs(char.Scythe:children()) do
        if v:IsA("Part") then
            v.Transparency = v.Transparency - 0.1
                            end
                        end
                    for i,v in pairs(char.Scythe2:children()) do
        if v:IsA("Part") then
            v.Transparency = v.Transparency - 0.1
                            end
                            end
                    for i,v in pairs(char.Wings:children()) do
        if v:IsA("Part") then
            v.Transparency = v.Transparency - 0.1
                            end
                            end
                    end
    --b:Stop()
    --char.Parent = game.Workspace
    lite.Brightness = 10
            end
    end)
    ----------------------------------------------------
    local PressingMouse=false
    mouse.Button1Up:connect(function()
        PressingMouse=false
    end)
    ----------------------------------------------------
    mouse.Button1Down:connect(function()
    PressingMouse=true
            if Debounces.CanAttack == true then
                    Debounces.CanAttack = false
                    Debounces.NoIdl = true
                    Debounces.on = true
                    for i = 1, 20 do
                hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-4),math.rad(38),0)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.2*math.cos(sine/14), 0)*CFrame.Angles(math.rad(0), math.rad(-44), 0), 0.05)
                            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(-20),math.rad(0),math.rad(20+1*math.cos(sine/14))), 0.3)
                            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-20-1*math.cos(sine/14))), 0.3)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-8)), 0.6)
                            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(8)), 0.6)
                            if Debounces.on == false then break end
                            wait()
                    end
                        local targ=false
                    if mouse.Target and mouse.Target.Parent:FindFirstChild("Humanoid") then
                            targ = mouse.Target.Parent
            end
                if targ and targ:FindFirstChild("Torso") then
                   
                        --pulling the player towards you:
                    local TargetT = targ:FindFirstChild("Torso")
                    local TargetH = targ:FindFirstChild("Humanoid")
                    local weld = weld(char["Torso"],TargetT)
                    local start = weld.C0
                    for i = 1, 25 do wait()
                        weld.C0 = matrixInterpolate(start,CFrame.new(-2.2,.4,-2)*CFrame.Angles(0,math.rad(60),0),i/25)
                end
                    local Grabbing = true
                    local hum = targ:FindFirstChild("Humanoid")
                    hum.Changed:connect(function()
                        if Grabbing then
                            wait()
                            hum.PlatformStand = true
                            hum.Jump=false --yolo
                        end
                end)
           
                --grabing anim
                for i = 1, 20 do
                hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(4),math.rad(44),0)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.2*math.cos(sine/14), 0)*CFrame.Angles(math.rad(0), math.rad(-44), 0), 0.05)
                            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,-.6)*CFrame.Angles(math.rad(80),math.rad(0),math.rad(-10+1*math.cos(sine/14))), 0.3)
                            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,-.4)*CFrame.Angles(math.rad(130),math.rad(0),math.rad(-20-1*math.cos(sine/14))), 0.3)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(-8)), 0.6)
                            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(8)), 0.6)
                cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(.6, -.6, -1.8)*CFrame.Angles(math.rad(10), math.rad(-16), math.rad(80)), 0.3)
                            if Debounces.on == false then break end
                            wait()
                end
                ------------
                repeat wait()
                until not PressingMouse
                --throwing player:
                local a = 0
                local ang=0
                for i = 1,25 do wait()
                   a = a+1/25
                   ang = ang+a
                   
                end
               
                Grabbing=false
                weld:Destroy()
                Debounces.Slashing = false
                        Debounces.NoIdl = false
                        wait()
                        if Debounces.CanAttack == false then
                                Debounces.CanAttack = true
                            end
                else
                    Debounces.NoIdl = false
                    wait()
                    if Debounces.CanAttack == false then
                            Debounces.CanAttack = true
                    end
            end
            end
    end)
    ----------------------------------------------------
    mouse.KeyDown:connect(function(key)
            if key == "e" then
                    for i,v in pairs(game.Players:getPlayers()) do
                        if v.Name~=char.Name then
                    for j,k in pairs(v.Character:GetChildren()) do
                        if k:IsA("BasePart") and k.Transparency <= 1 then
                    bawx=Instance.new("SelectionBox",cam)
                    bawx.Color = BrickColor.new("Really black")
                    bawx.Transparency = .5
                    bawx.Adornee = k
                        end
                    end
                end
                end
        end
    end)
    ----------------------------------------------------
    mouse.KeyUp:connect(function(key)
        if key == "e" then
                for i, v in pairs(cam:children()) do
                if v:IsA("SelectionBox") then
                    v:Destroy()
                end
            end
        end
    end)
    ----------------------------------------------------
    mouse.KeyDown:connect(function(key)
            if key == "c" then
                    if Debounces.CanAttack == true then
                            Debounces.CanAttack = false
                           
                            l.TimeOfDay = 24
                            l.Ambient = Color3.new(0.2, 0.2, 0.2)
                            l.OutdoorAmbient = Color3.new(0.2, 0.2, 0.2)
                    else do
                        l.TimeOfDay = 12
                        l.Ambient = Color3.new(0, 0, 0)
                        l.OutdoorAmbient = Color3.new(0, 0, 0)
                        end
            end
        end
    end)
    ----------------------------------------------------
    mouse.KeyDown:connect(function(key)
        if key == "z" then
            stanceToggle = "Landed"
        elseif key == "c" then
            stanceToggle = "Floating"
        elseif key == "v" then
            stanceToggle = "Sitting"
        end
    end)
    ----------------------------------------------------
    game:GetService("RunService").RenderStepped:connect(function()
    --[[if char.Humanoid.Jump == true then
    jumpn = true
    else
    jumpn = false
    end]]
            char.Humanoid.FreeFalling:connect(function(f)
                    if f then
                            ffing = true
                    else
                            ffing = false
                    end
            end)
            sine = sine + change
            if jumpn == true then
                    animpose = "Jumping"
            elseif ffing == true then
                    animpose = "Freefalling"
            elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
                    animpose = "Idle"
            elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
                    animpose = "Walking"
            elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
                    animpose = "Running"
            end
            if animpose ~= lastanimpose then
                    sine = 0
                    if Debounces.NoIdl == false then
                        if stanceToggle == "Floating" then
                            change = 1
                                    larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-10)), 0.6)
                                    rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30)), 0.2)
                                    lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-8)), 0.6)
                                    rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(8)), 0.6)
                    cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(0, -2.2, -1.8)*CFrame.Angles(math.rad(-28), math.rad(0), math.rad(0)), 0.6)
                    cor3.Weld.C0 = Lerp(cor3.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-36), math.rad(-90), math.rad(40)), 0.6)
                        end
            elseif stanceToggle == "Landed" then
                change = 1
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
            elseif stanceToggle == "Sitting" then
                change = 1
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), 0, 0), 0.6)
                                    wait()
                    end
                    else
    end
            lastanimpose = animpose
            if Debounces.NoIdl == false then
                    if animpose == "Idle" then
                        if stanceToggle == "Floating" then
                            change = 0.5
                            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0-0.14*math.cos(sine/14), 0) * CFrame.Angles(math.rad(-20), math.rad(0), 0), 0.05)
                            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65,0)*CFrame.Angles(math.rad(90),math.rad(0),math.rad(30+1*math.cos(sine/14))), 0.3)
                            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.05*math.cos(sine/14),0)*CFrame.Angles(math.rad(20),math.rad(0),math.rad(-10-1.5*math.cos(sine/14))), 0.3)
                            hed.Weld.C0 = CFrame.new(0,1.5,-.3)*CFrame.Angles(math.rad(-20+2*math.cos(sine/14)),math.rad(0),0)
                            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(-8-1.5*math.cos(sine/14))), 0.3)
                            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(20), 0, math.rad(8+1.5*math.cos(sine/14))), 0.3)
                            cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(0, -2.2, -1.8) * CFrame.Angles(math.rad(-28), math.rad(0), math.rad(0)), 0.3)
                            elseif stanceToggle ==  "Landed" then
                            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.65+0.05*math.cos(sine/14),0)*CFrame.Angles(math.rad(16),math.rad(12),math.rad(10+2*math.cos(sine/14))), 0.2)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.65+0.05*math.cos(sine/14),.2)*CFrame.Angles(math.rad(20),math.rad(22),math.rad(-16-2*math.cos(sine/14))), 0.2)
                hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10+2*math.cos(sine/14)),math.rad(36),0)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-10), math.rad(-36), math.rad(0)), 0.2)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-.7, -1, -0.3) * CFrame.Angles(math.rad(30), math.rad(30), math.rad(-30)), 0.2)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.2)
                cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(1.6, -1.4, -1.4) * CFrame.Angles(math.rad(-60), math.rad(-60), math.rad(0)), 0.6)
                cor3.Weld.C0 = Lerp(cor3.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-36), math.rad(-90), math.rad(40)), 0.6)
                elseif stanceToggle == "Sitting" then
                            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(85-1*math.cos(sine/14)),math.rad(0),math.rad(12)), 0.2)
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(-25-1*math.cos(sine/14)),math.rad(0),math.rad(20)), 0.2)
                hed.Weld.C0 = CFrame.new(0,1.5,-.2)*CFrame.Angles(math.rad(-24+2*math.cos(sine/14)),math.rad(0),0)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1.6, 0) * CFrame.Angles(math.rad(-26+1*math.cos(sine/14)), math.rad(0), math.rad(0)), 0.2)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1.2, -.5) * CFrame.Angles(math.rad(-40-1*math.cos(sine/14)), 0, math.rad(0)), 0.2)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -.2, -1) * CFrame.Angles(math.rad(-10-1*math.cos(sine/14)), 0, math.rad(0)), 0.2)
                end
                    elseif animpose == "Walking" then
                        if stanceToggle == "Landed" then
                        change = 0.5
                larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5, 0.5, 0)*CFrame.Angles(math.sin(sine/8)/2.8, math.rad(14), math.rad(-10-2*math.cos(sine/14))), 1)
                rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5, 0.5, 0) * CFrame.Angles(-math.sin(sine/8)/2.8, math.rad(-14), math.rad(10)), 1)
                hed.Weld.C0 = CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-8), 0, 0)
                lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(-math.sin(sine/8)/2.4, 0, 0), 1)
                rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.sin(sine/8)/2.4, 0, 0), 1)
                torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, math.rad(0)), 0.2)
                cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(1.6, -1.4, -1.4) * CFrame.Angles(math.rad(-60), math.rad(-60), math.rad(0)), 0.6)
                elseif stanceToggle == "Sitting" then stanceToggle = "Landed"
                        elseif stanceToggle == "Floating" then
                            torso.Weld.C0 = Lerp(torso.Weld.C0, CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-20), 0, 0), 0.6)
                            rarm.Weld.C0 = Lerp(rarm.Weld.C0, CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(90), 0, math.rad(30+2*math.cos(sine/14))), 0.4)
                            larm.Weld.C0 = Lerp(larm.Weld.C0, CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(15+10*math.cos(sine/16)), 0, 0), 0.4)
                            hed.Weld.C0 = CFrame.new(0,1.5,-.3)*CFrame.Angles(math.rad(-18+2*math.cos(sine/20)),math.rad(0),0)
                            lleg.Weld.C0 = Lerp(lleg.Weld.C0, CFrame.new(-0.5, -1, 0) * CFrame.Angles(math.rad(13+4*math.cos(sine/16)), 0, 0), 0.4)
                            rleg.Weld.C0 = Lerp(rleg.Weld.C0, CFrame.new(0.5, -1, 0) * CFrame.Angles(math.rad(15+10*math.cos(sine/16)), 0, 0), 0.4)
                            cor2.Weld.C0 = Lerp(cor2.Weld.C0, CFrame.new(0, -2.2, -1.8) * CFrame.Angles(math.rad(-28), math.rad(0), math.rad(0)), 0.6)
                        end
                    end
                end
        end)
     
    while wait() do
            wait(5)
            ypcall(function()me=workspace.TheDarkRevenant
                    local bk=me["B&W"].Handle.Mesh bk.VertexColor=Vector3.new(0,0,0)
                    pl=Instance.new("PointLight",bk.Parent)pl.Brightness=0 pl.Color=Color3.new(0,0,0)
                    for i=1,100 do
                            wait()
                            bk.VertexColor=bk.VertexColor+Vector3.new(.01,.01,.01)
                            pl.Brightness=pl.Brightness+0.01
                    end
                    for i=1,100 do
                            wait()
                            bk.VertexColor=bk.VertexColor-Vector3.new(.01,.01,.01)
                            pl.Brightness=pl.Brightness-0.01
                    end
                    pl:Remove()
            end)
    end
     
    Spawn(function()
            while wait() do
                   
                    updateFly()
                   
            end
    end)
     
    char.Humanoid.MaxHealth = 50000
    wait(2.4)
    char.Humanoid.Health = 50000
    --[[snds = {"166118364", "166118419", "166118501", "166118551", "167060296", "167060276", "131300621"}
    coroutine.wrap(function() while wait(math.random(10,30)) do
    sawnd=Instance.new("Sound")
    sawnd.Parent = game.Workspace
    sawnd.Volume=.6
    sawnd.Looped=false
    sawnd.Pitch=1
    sawnd.SoundId="http://www.roblox.com/asset/?id="..snds[math.random(1,#snds)]
    sawnd:Play()
    game:service'Debris':AddItem(sawnd,2.2)
    end
    end)()]]
     
     
     
    --Left wing: Part8, Part1,    Part2
    --Right wing: Part9, Part 7,    Part 12
     
    --[[
    z = Instance.new("Sound")
    z.SoundId = "http://www.roblox.com/asset/?id=183357153"
    z.Parent = game.Workspace.TheKorbloxCore
    z.Looped = true
    z.Pitch = 1
    z.Volume = 1
    wait(.01)
    z:Play()
    ]]--