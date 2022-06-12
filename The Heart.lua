plyr = game:GetService("Players").LocalPlayer 
 
--Made by Thunderx10
 
mod = Instance.new("Model") 
mod.Name = "The Heart" 
mod.Parent = plyr.Character
 
picking = false 
putting = false 
out = false 
staffdown = false 
speed = false 
repon = false 
 
function createPart(size,color,parent) 
    Part = Instance.new("Part") 
    Part.Size = size
    Part.BrickColor = BrickColor.new(color) 
    Part.Parent = parent 
    Part.TopSurface = "Smooth" 
    Part.BottomSurface = "Smooth" 
    Part.formFactor = "Symmetric" 
    Part.CanCollide = false 
    Part.Locked = true 
end 
 
function createMesh(type1,type2,scale,parent) 
    if type1 == "Block" then 
        Mesh = Instance.new("BlockMesh") 
        Mesh.Scale = scale 
        Mesh.Parent = parent 
    elseif type1 == "Special" then 
        Mesh = Instance.new("SpecialMesh") 
        Mesh.MeshType = type2 
        Mesh.Scale = scale 
        Mesh.Parent = parent 
    elseif type1 == "Cylinder" then 
        Mesh = Instance.new("CylinderMesh") 
        Mesh.Scale = scale 
        Mesh.Parent = parent 
    end 
end 
 
function createWeld(part0,part1,c0) 
    Weld = Instance.new("Weld") 
    Weld.Parent = part0 
    Weld.Part0 = part0 
    Weld.Part1 = part1 
    Weld.C0 = c0 
end 
 
createPart(Vector3.new(1,1,1),"Navy blue",mod) --Handle
Handle = Part
createMesh("Cylinder","Brick",Vector3.new(0.3252,1,0.3252),Part) 
createWeld(Part,plyr.Character.Torso,CFrame.new(0,0,-0.65)*CFrame.Angles(0,0,math.rad(25))) 
HandleWeld = Weld
createPart(Vector3.new(1,1,1),"Dark stone grey",mod) 
MainStaff = Part --Staff 
createMesh("Cylinder","Brick",Vector3.new(0.3,4.5,0.3),Part) 
createWeld(Part,Handle,CFrame.new(0,0,0)*CFrame.Angles(0,0,0)) 
MainStaffWeld = Weld --Weld of the staff
createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
createMesh("Cylinder","Brick",Vector3.new(0.32,0.05,0.32),Part) 
createWeld(Part,MainStaff,CFrame.new(0,-2.25,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
createMesh("Cylinder","Brick",Vector3.new(0.32,0.05,0.32),Part) 
createWeld(Part,MainStaff,CFrame.new(0,-1.75,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
createMesh("Cylinder","Brick",Vector3.new(0.32,0.05,0.32),Part) 
createWeld(Part,MainStaff,CFrame.new(0,-1.25,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
createMesh("Cylinder","Brick",Vector3.new(0.32,0.05,0.32),Part) 
createWeld(Part,MainStaff,CFrame.new(0,-0.75,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
createMesh("Cylinder","Brick",Vector3.new(0.32,0.05,0.32),Part) 
createWeld(Part,MainStaff,CFrame.new(0,-0.25,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
createMesh("Cylinder","Brick",Vector3.new(0.32,0.05,0.32),Part) 
createWeld(Part,MainStaff,CFrame.new(0,0.25,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
createMesh("Cylinder","Brick",Vector3.new(0.32,0.05,0.32),Part) 
createWeld(Part,MainStaff,CFrame.new(0,0.75,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
createMesh("Cylinder","Brick",Vector3.new(0.32,0.05,0.32),Part) 
createWeld(Part,MainStaff,CFrame.new(0,1.25,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
createMesh("Cylinder","Brick",Vector3.new(0.32,0.05,0.32),Part) 
createWeld(Part,MainStaff,CFrame.new(0,1.75,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
createMesh("Cylinder","Brick",Vector3.new(0.32,0.05,0.32),Part) 
createWeld(Part,MainStaff,CFrame.new(0,2.25,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
createMesh("Block","Brick",Vector3.new(0.32,4.5,0.05),Part) 
createWeld(Part,MainStaff,CFrame.new(0,0,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
createMesh("Block","Brick",Vector3.new(0.05,4.5,0.32),Part) 
createWeld(Part,MainStaff,CFrame.new(0,0,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Deep blue",mod) 
Part.Transparency = 0.3 
OuterShell = Part
createMesh("Special","Sphere",Vector3.new(0.7,0.7,0.7),Part) 
createWeld(Part,MainStaff,CFrame.new(0,-2.5,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Light blue",mod) 
Part.Reflectance = 0.4
MiniOrb = Part 
createMesh("Special","Sphere",Vector3.new(0.2,0.25,0.2),Part) 
Mesh.MeshId = "http://www.roblox.com/asset/?id=9756362" 
createWeld(MiniOrb,OuterShell,CFrame.new(0,0,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
createMesh("Cylinder","Brick",Vector3.new(0.05,0.3,0.05),Part) 
createWeld(Part,MainStaff,CFrame.new(0,-2.3,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Navy blue",mod) 
RightGlove = Part
createMesh("Special","Brick",Vector3.new(1.01,0.5,1.01),Part) 
createWeld(Part,plyr.Character["Right Arm"],CFrame.new(0,0.751,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Navy blue",mod) 
LeftGlove = Part
createMesh("Special","Brick",Vector3.new(1.01,0.5,1.01),Part) 
createWeld(Part,plyr.Character["Left Arm"],CFrame.new(0,0.751,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Navy blue",mod) 
RAJ = Part 
RAJ.Transparency = 1 
createMesh("Block","Brick",Vector3.new(0.2,0.2,0.2),Part) 
createWeld(Part,plyr.Character.Torso,CFrame.new(-1.5,-0.6,0)*CFrame.Angles(0,0,0)) 
createWeld(plyr.Character["Right Arm"],RAJ,CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0)) 
RightArmJoint = Weld 
RightArmJoint.Parent = nil 
createPart(Vector3.new(1,1,1),"Navy blue",mod) 
LAJ = Part 
LAJ.Transparency = 1
createMesh("Block","Brick",Vector3.new(0.2,0.2,0.2),Part) 
createWeld(Part,plyr.Character.Torso,CFrame.new(1.5,-0.6,0)*CFrame.Angles(0,0,0)) 
createWeld(plyr.Character["Left Arm"],LAJ,CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0)) 
LeftArmJoint = Weld 
LeftArmJoint.Parent = nil 
 
 
 
function pickUp() 
    picking = true 
    RightArmJoint.Parent = plyr.Character["Right Arm"] 
    for i = 1,8 do 
        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(-10),0,0) 
        wait() 
    end 
    for i = 1,8 do 
        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(0,0,math.rad(-6)) 
        wait() 
    end 
    HandleWeld.C0 = CFrame.new(0,0,-0.45)*CFrame.fromEulerAnglesXYZ(math.rad(-80),0,0) 
    HandleWeld.Part1 = RightGlove 
    for i = 1,4 do 
        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(-20) ,0,math.rad(12)) 
        wait() 
    end 
    for i = 1,16 do 
        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(-12),0) 
        wait() 
    end 
    for i = 1,25 do 
        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(5),0,0) 
        wait() 
    end 
    for i = 1,5 do 
        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(6),0) 
        wait() 
    end 
    HandleWeld.C0 = CFrame.new(0,0,-0.4)*CFrame.fromEulerAnglesXYZ(math.rad(270),0,0) 
    picking = false 
    rasetj = RightArmJoint.C1 
    out = true 
end 
 
function putUp() 
    putting = true 
    for i = 1,5 do 
        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(0,-math.rad(6),0) 
        wait() 
    end 
    for i = 1,25 do 
        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(-math.rad(5),0,0) 
        wait() 
    end 
    for i = 1,16 do 
        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(12),0) 
        wait() 
    end 
    for i = 1,8 do 
        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(10) ,0,-math.rad(6)) 
        wait() 
    end 
    HandleWeld.Part1 = plyr.Character.Torso 
    HandleWeld.C0 = CFrame.new(0,0,-0.65)*CFrame.Angles(0,0,math.rad(25)) 
    wait(0.2) 
    for i = 1,8 do 
        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(0,0,math.rad(6)) 
        wait() 
    end 
    for i = 1,4 do 
        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(0,-math.rad(4.5),0) 
        wait() 
    end 
    for i = 1,8 do 
        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(10),0,0) 
        wait() 
    end 
    RightArmJoint.C0 = CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0) 
    RightArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 
    RightArmJoint.Parent = nil 
    HandleWeld.C0 = CFrame.new(0,0,-0.65)*CFrame.Angles(0,0,math.rad(25)) 
    HandleWeld.Part1 = plyr.Character.Torso 
    putting = false 
    out = false 
end 
 
pickdeb = false 
 
if script.Parent.className ~= "HopperBin" then 
    hb = Instance.new("HopperBin") 
    hb.Parent = plyr.Backpack 
    hb.Name = "The Heart" 
    script.Parent = hb 
end 
hb = script.Parent 
 
debounce = false 
 
function Select(mouse) 
    if putting == false and picking == false and out == false then 
        pickUp() 
    end 
    function onKeyDown(key) 
        if debounce == false then debounce = true 
            key:lower() 
        -----------
            if repon == false then 
            if string.byte(key) == 113 then 
                LeftArmJoint.Parent = plyr.Character["Left Arm"] 
                for i = 1,6 do 
                    RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(2.3),0,math.rad(9)) 
                    RightArmJoint.C0 = RightArmJoint.C0 - Vector3.new(0,-0.05,0) 
                    LeftArmJoint.C1 = LeftArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(9),0,math.rad(9))
                    wait() 
                end 
                mh = mouse.Hit
                mp = mh.p
                if (MiniOrb.Position-mp).magnitude+0.05 < 100 and plyr.Character.Torso.CFrame:toObjectSpace(mouse.Hit).Z < 0 then
                    createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
                    Partz = Part 
                    Partz.Name = "LAZ0R" 
                    Partz.BrickColor = BrickColor.new("Medium blue") 
                    Partz.Reflectance = 0.3 
                    Partz.Anchored = true 
                    Partz.Size = Vector3.new(1,(MiniOrb.Position-mp).magnitude+0.05,1) 
                    Partz.CFrame = CFrame.new((MiniOrb.Position+mp)/2,MiniOrb.Position)*CFrame.Angles(math.pi/2,0,0) 
                    createMesh("Cylinder","Brick",Vector3.new(0.15,1,0.15),Partz) 
                    mt = mouse.Target 
                    if mouse.Target.Parent:findFirstChild("Humanoid") ~= nil then 
                        mouse.Target.Parent.Humanoid:TakeDamage(math.random(20,35)) 
                    elseif mouse.Target.Parent.Parent:findFirstChild("Humanoid") ~= nil then     
                        mouse.Target.Parent.Parent.Humanoid:TakeDamage(math.random(20,35))
                    end 
                    for i = 1,10 do 
                        pcall(function() 
                            Partz.Transparency = Partz.Transparency + 0.1 
                        end) 
                        wait() 
                    end 
                    wait() 
                    game:getService("Debris"):AddItem(Partz,1) 
                end 
                for i = 1,6 do 
                    RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(-math.rad(2.3),0,-math.rad(9)) 
                    RightArmJoint.C0 = RightArmJoint.C0 - Vector3.new(0,0.05,0) 
                    LeftArmJoint.C1 = LeftArmJoint.C1*CFrame.fromEulerAnglesXYZ(-math.rad(9),0,-math.rad(9))
                    wait() 
                end 
                LeftArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 
                LeftArmJoint.Parent = nil 
                RightArmJoint.C1 = rasetj 
                
                --Jump land 
 
            elseif string.byte(key) == 101 then 
                LeftArmJoint.Parent = plyr.Character["Left Arm"] 
                LeftArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 
                LeftArmJoint.C0 = CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0)
                for i = 1,10 do 
                    HandleWeld.C1 = HandleWeld.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(9),0) 
                    HandleWeld.C0 = HandleWeld.C0 - Vector3.new(0,0.13,0) 
                    RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(-math.rad(9),0,0) 
                    LeftArmJoint.C1 = LeftArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(18),0,0)
                    wait() 
                end 
                plyr.Character.Humanoid.WalkSpeed = 0 
                createPart(Vector3.new(1,1,1),"Bright blue",mod) 
                SpikeUp = Part 
                SpikeUp.Anchored = true 
                SpikeUp.Transparency = 1 
                SpikeUp.CFrame = plyr.Character.Torso.CFrame + Vector3.new(0,-2.5,0) 
                createMesh("Special","Brick",Vector3.new(0,0,0),Part) 
                SpikeUpMesh = Mesh 
                SpikeUpMesh.MeshId = "http://www.roblox.com/asset/?id=20329976" 
                delay(0,function() 
                    for i = 1,5 do 
                        SpikeUpMesh.Scale = SpikeUpMesh.Scale + Vector3.new(0.7,0.5,0.7) 
                        SpikeUp.Transparency = SpikeUp.Transparency - 0.2
                        wait() 
                    end 
                    wait(0.2) 
                    for i = 1,25 do 
                        SpikeUpMesh.Scale = SpikeUpMesh.Scale + Vector3.new(0.52,0,0.52) 
                        SpikeUp.Transparency = SpikeUp.Transparency + 0.04
                        wait() 
                    end 
                end) 
                bp = Instance.new("BodyPosition") 
                bp.Parent = plyr.Character.Torso 
                bp.position = plyr.Character.Torso.Position + Vector3.new(0,30,0) 
                bp.maxForce = Vector3.new(40000,40000,40000) 
                wait(1) 
                delay(0,function() 
                    for i = 1,10 do 
                        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(9),0,0) 
                        LeftArmJoint.C1 = LeftArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(-9),0,0)
                        wait() 
                    end 
                    wait(0.25) 
                    createPart(Vector3.new(1,1,1),"Bright blue",mod) 
                    BombDown = Part 
                    BombDown.Anchored = true 
                    BombDown.Transparency = 0.6 
                    BombDown.CFrame = plyr.Character.Torso.CFrame + Vector3.new(0,-2.5,0) 
                    createMesh("Special","Brick",Vector3.new(1,1,1),Part) 
                    BombDownMesh = Mesh 
                    BombDownMesh.MeshId = "http://www.roblox.com/asset/?id=24388358" 
                    plyr.Character.Humanoid.WalkSpeed = 16 
                    for i,v in pairs(game:getService("Players"):GetPlayers()) do 
                        if v.Character:findFirstChild("Torso") ~= nil and v.Name ~= plyr.Name then 
                            if (plyr.Character.Torso.Position-v.Character.Torso.Position).magnitude <= 30 then 
                                if v.Character:findFirstChild("Humanoid") ~= nil then 
                                    v.Character.Humanoid:TakeDamage(70) 
                                end 
                            end 
                        end 
                    end 
                    for i = 1,50 do 
                        BombDownMesh.Scale = BombDownMesh.Scale + Vector3.new(1.2,1.2,1.2) 
                    if i >= 20 then 
                        BombDown.Transparency = BombDown.Transparency + 0.02 
                    end 
                        wait() 
                    end 
                    for i = 1,10 do 
                        HandleWeld.C1 = HandleWeld.C1*CFrame.fromEulerAnglesXYZ(0,-math.rad(9),0) 
                        HandleWeld.C0 = HandleWeld.C0 - Vector3.new(0,-0.13,0) 
                        LeftArmJoint.C1 = LeftArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(-9),0,0)
                        wait() 
                    end 
                end) 
                bp:Remove() 
                wait(2.5) 
                LeftArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0) 
                LeftArmJoint.C0 = CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0)
                LeftArmJoint.Parent = nil
 
                --T-T-T-TELEPORT! -Not sparta- 
                    
            elseif string.byte(key) == 116 then 
                mh = mouse.Hit 
                mp = mh.p 
                if (plyr.Character.Torso.Position-mp).magnitude < 3000 then 
                    for i = 1,10 do 
                        HandleWeld.C1 = HandleWeld.C1*CFrame.fromEulerAnglesXYZ(math.rad(9),0,0) 
                        HandleWeld.C0 = HandleWeld.C0 - Vector3.new(0,0.2,-0.03) 
                        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(-math.rad(9),0,0) 
                        wait() 
                    end 
                    plyr.Character.Torso.Anchored = true 
                    plyr.Character.Humanoid.WalkSpeed = 0 
                    createPart(Vector3.new(1,1,1),"Bright blue",mod) 
                    TeleFrom = Part
                    Part.Reflectance = 0.3 
                    Part.Anchored = true 
                    playY = plyr.Character.Torso.CFrame.Y 
                    Part.CFrame = CFrame.new(plyr.Character.Torso.CFrame.X,plyr.Character.Torso.CFrame.Y + 200,plyr.Character.Torso.CFrame.Z) 
                    createMesh("Cylinder","Brick",Vector3.new(6,450,6),Part) 
                    LightMesh = Mesh 
                    
                    
                    createPart(Vector3.new(1,1,1),"Bright blue",mod) 
                    TeleTo = Part
                    Part.Reflectance = 0.3 
                    Part.Anchored = true  
                    Part.Position = mp + Vector3.new(0,200,0) 
                    px = mp.X 
                    pz = mp.Z 
                    Part.CFrame = CFrame.new(px,plyr.Character.Torso.CFrame.Y + 200,pz) 
                    createMesh("Cylinder","Brick",Vector3.new(6,450,6),Part) 
                    LightMesh2 = Mesh 
                    
                    plyr.Character.Torso.CFrame = CFrame.new(px,playY,pz) 
                    plyr.Character.Torso.Anchored = false 
                    wait() 
                    plyr.Character.Torso.Anchored = true 
                    for i = 1,10 do 
                        HandleWeld.C1 = HandleWeld.C1*CFrame.fromEulerAnglesXYZ(-math.rad(9),0,0) 
                        HandleWeld.C0 = HandleWeld.C0 - Vector3.new(0,-0.2,0.03) 
                        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(9),0,0) 
                    end 
                    wait(0.5) 
                    for i = 1,20 do 
                        LightMesh.Scale = LightMesh.Scale - Vector3.new(-0.3,0,0.3) 
                        LightMesh2.Scale = LightMesh2.Scale - Vector3.new(-0.3,0,0.3) 
                        wait() 
                    end  
                    plyr.Character.Torso.Anchored = false 
                    plyr.Character.Humanoid.WalkSpeed = 16 
                    pcall(function() 
                        TeleTo:Remove() 
                        TeleFrom:Remove() 
                    end) 
                end 
                
                --Speeeeeeeed---------------------------
 
            elseif string.byte(key) == 48 then 
                if speed == false then 
                    speed = true 
                    plyr.Character.Humanoid.WalkSpeed = 30 
                    print("Speed active") 
                else 
                    speed = false 
                    plyr.Character.Humanoid.WalkSpeed = 16 
                    print("Speed unactive") 
                end 
                
                
                
        
        
        
                
            
            -------------------------------------------------------------------------------
            end    
            end 
            --Last command REPULCER----------------
            if string.byte(key) == 114 then 
                if repon == false then 
                    speed = false 
                    for i = 1,10 do 
                        HandleWeld.C1 = HandleWeld.C1*CFrame.fromEulerAnglesXYZ(0,math.rad(10),0) 
                        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(-math.rad(9),0,0) 
                        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(0,0,-math.rad(6)) 
                        wait() 
                    end 
                    createPart(Vector3.new(1,1,1),"Navy blue",mod) 
                    Part.Reflectance = 0.2 
                    Part.Transparency = 0.4
                    Part.Anchored = false  
                    RepPart1 = Part
                    createMesh("Special","Sphere",Vector3.new(1,1,1),Part) 
                    RepMesh1 = Mesh 
                    createWeld(Part,MiniOrb,CFrame.new(0,0,0)*CFrame.Angles(0,0,0)) 
                    createPart(Vector3.new(1,1,1),"Navy blue",mod) 
                    Part.Reflectance = 0 
                    Part.Transparency = 0.4
                    Part.Anchored = false  
                    RepPart2 = Part
                    createMesh("Special","Sphere",Vector3.new(1,1,1),Part) 
                    RepMesh2 = Mesh 
                    createWeld(Part,MiniOrb,CFrame.new(0,0,0)*CFrame.Angles(0,0,0)) 
                    for i = 1,15 do 
                        RepMesh1.Scale = RepMesh1.Scale + Vector3.new(2,2,2) 
                        wait() 
                    end 
                    repon = true 
                else 
                    print("<") 
                    repon = false 
                    for i = 1,15 do 
                        RepMesh1.Scale = RepMesh1.Scale + Vector3.new(-2,-2,-2) 
                        wait() 
                    end 
                    RepPart1:Remove()  
                    RepPart2:Remove() 
                    for i = 1,10 do 
                        HandleWeld.C1 = HandleWeld.C1*CFrame.fromEulerAnglesXYZ(0,-math.rad(10),0) 
                        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(9),0,0) 
                        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(0,0,math.rad(6)) 
                        wait() 
                    end 
                    RightArmJoint.C1 = rasetj 
                end 
            end 
                    
 
                    
            ----------- 
            debounce = false
        end 
    end 
    mouse.KeyDown:connect(onKeyDown) 
end 
hb.Selected:connect(Select) 
 
 
 
function onDeselect() 
    if putting == false and picking == false and out == true and debounce == false then 
        repon = false 
        putUp() 
        speed = false 
    end 
end 
hb.Deselected:connect(onDeselect) 
 
coroutine.resume(coroutine.create(function() 
while true do 
    if repon == true then 
        for i = 1,15 do 
            RepMesh2.Scale = RepMesh2.Scale + Vector3.new(2,2,2) 
            wait() 
        end 
        for i = 1,15 do 
            RepMesh2.Scale = RepMesh2.Scale + Vector3.new(-2,-2,-2) 
            wait() 
        end 
    end 
    wait() 
end 
end
)
)
 
 
coroutine.resume(coroutine.create(function() 
while true do
    if speed == true then 
        for i,v in pairs(plyr.Character:getChildren()) do 
            if v:IsA("Part") then 
                c = v:Clone() 
                c.Parent = mod 
                c.Anchored = true 
                c.CanCollide = false 
                c.CFrame = v.CFrame 
                c.BrickColor = BrickColor.new("Navy blue") 
                c.Locked = true 
                c.Reflectance = 0.2
                c.Transparency = 0.5
                pcall(function() 
                    c.face:Remove() 
                end) 
                game:getService("Debris"):AddItem(c,0.2) 
            end 
        end 
    end 
    
    if repon == true then 
    
        for i,v in pairs(game:getService("Players"):GetPlayers()) do 
            if v.Character:findFirstChild("Torso") ~= nil and v.Name ~= plyr.Name then 
                if (plyr.Character.Torso.Position-v.Character.Torso.Position).magnitude <= 15 then 
                    if v.Character:findFirstChild("Humanoid") ~= nil then 
                        v.Character.Humanoid:TakeDamage(1) 
                        pcall(function() 
                            v.Character.Humanoid.WalkSpeed = 8
                        end) 
                    end 
                end 
            end 
        end 
        for i,v in pairs(game:getService("Players"):GetPlayers()) do 
            if v.Character:findFirstChild("Torso") ~= nil and v.Name ~= plyr.Name then 
                if (plyr.Character.Torso.Position-v.Character.Torso.Position).magnitude > 15 then 
                    if v.Character:findFirstChild("Humanoid") ~= nil then  
                        pcall(function() 
                            if v.Character.Humanoid.WalkSpeed == 8 then 
                                v.Character.Humanoid.WalkSpeed = 16 
                            end 
                        end) 
                    end 
                end 
            end 
        end 
        
    end 
    
 
    
    wait() 
end 
end 
) 
)
 
