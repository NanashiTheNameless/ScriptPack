plyr = game:GetService("Players").LocalPlayer 
--password
plyr.Character["Right Arm"].TopSurface = "Smooth" 
plyr.Character["Right Arm"].BottomSurface = "Smooth" 
plyr.Character["Left Arm"].TopSurface = "Smooth" 
plyr.Character["Left Arm"].BottomSurface = "Smooth" 
DrillOut = false 
BattleEnd = false 
EDmg = math.random(10,20) 
EOn = false 
Spinning = false 
SpinDeb = false 
LineColor = "Dark stone grey" 
Shocks = false 
ShockDeb = false 
mod = Instance.new("Model") 
mod.Name = "TDrills" 
mod.Parent = plyr.Character 
welds = Instance.new("Model") 
welds.Name = "NotSparta(But close!)" 
welds.Parent = mod 
Lines = Instance.new("Model") 
Lines.Name = "Lines :>" 
Lines.Parent = mod 
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
        Weld.Parent = welds 
        Weld.Part0 = part0 
        Weld.Part1 = part1 
        Weld.C0 = c0 
end 
function setJoint(which) 
        if which == "Right" then 
                RightArmJoint.Parent = nil
                RightArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
                RightArmJoint.C0 = CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0) 
        elseif which == "Left" then 
                LeftArmJoint.Parent = nil
                LeftArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
                LeftArmJoint.C0 = CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0) 
        elseif which == "Both" then 
                RightArmJoint.Parent = nil 
                LeftArmJoint.Parent = nil
                RightArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
                RightArmJoint.C0 = CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0) 
                LeftArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(0,0,0)
                LeftArmJoint.C0 = CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0) 
        end 
end 
function backArms() 
        NiceWeldRight.C0 = CFrame.new(-1.5,-0.6,0)*CFrame.Angles(0,0,0) 
        NiceWeldLeft.C0 = CFrame.new(1.5,-0.6,0)*CFrame.Angles(0,0,0)
        RightArmJoint.Parent = plyr.Character["Right Arm"] 
        RightArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-40),math.rad(-20),math.rad(5)) 
        LeftArmJoint.Parent = plyr.Character["Left Arm"] 
        LeftArmJoint.C1 = CFrame.new(0,0,0)*CFrame.Angles(math.rad(-40),math.rad(20),math.rad(-5))
end 
function armOut(which) 
        if which == "Right" then 
                RightArmJoint.Parent = plyr.Character["Right Arm"] 
                RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
        elseif which == "Left" then 
                LeftArmJoint.Parent = plyr.Character["Left Arm"] 
                LeftArmJoint.C1 = LeftArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(90),0,0) 
        end 
end 
function effect1(thing) 
        for i,v in pairs(Lines:GetChildren()) do 
                v:Remove() 
        end 
        e1 = true 
        pos1 = thing.Position  
        what = thing
        pos2 = pos1
end 
function effect2(thing) 
        e1 = true 
        posz1 = thing.Position  
        what2 = thing
        posz2 = posz1
end 
function addShock() 
        createPart(Vector3.new(1,1,1),"Bright yellow",mod) 
        RightShock = Part 
        RightShock.Transparency = 0.7
        RightShock.Reflectance = 0
        createMesh("Special","Brick",Vector3.new(0.3,1.2,0.3),Part) 
        Mesh.MeshId = "http://www.roblox.com/asset/?id=1033714"
        createWeld(Part,RightDrill,CFrame.new(0,0,0)*CFrame.Angles(0,0,0)) 
        createPart(Vector3.new(1,1,1),"Bright yellow",mod) 
        LeftShock = Part 
        LeftShock.Transparency = 0.7
        LeftShock.Reflectance = 0
        createMesh("Special","Brick",Vector3.new(0.3,1.2,0.3),Part) 
        Mesh.MeshId = "http://www.roblox.com/asset/?id=1033714"
        createWeld(Part,LeftDrill,CFrame.new(0,0,0)*CFrame.Angles(0,0,0)) 
        LineColor = "Bright yellow" 
        Shocks = true 
        function STouch(part) 
                if math.random(1,5) == 5 and ShockDeb == false then 
                        print("STUNNED!") 
                        if part.Parent:findFirstChild("Humanoid") ~= nil then 
                                ShockDeb = true 
                                pcall(function() 
                                        part.Parent.Humanoid.WalkSpeed = 0 
                                        part.Parent.Torso.Anchored = true 
                                end) 
                                wait(2) 
                                pcall(function() 
                                        part.Parent.Humanoid.WalkSpeed = 16 
                                        part.Parent.Torso.Anchored = false  
                                end)  
                                ShockDeb = false 
                        end 
                end 
        end 
        function onTouch(hit) STouch(hit) end RightShock.Touched:connect(onTouch) 
        function onTouch(hit) STouch(hit) end LeftShock.Touched:connect(onTouch) 
end 
function removeShock() 
        pcall(function() 
                RightShock:Destroy() 
                LeftShock:Destroy() 
        end) 
        LineColor = "Dark stone grey" 
        Shocks = false 
end 
createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
RightHandle = Part
createMesh("Cylinder","Brick",Vector3.new(0.5,0.05,0.5),Part) 
createWeld(Part,plyr.Character["Right Arm"],CFrame.new(0,1,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Dark stone grey",mod) 
RightDrill = Part 
RightDrill.Reflectance = 0.2
createMesh("Special","Brick",Vector3.new(0.2,1,0.2),Part) 
Mesh.MeshId = "http://www.roblox.com/asset/?id=1033714"
createWeld(Part,RightHandle,CFrame.new(0,0.4,0)*CFrame.Angles(math.rad(180),0,0)) 
RDWeld = Weld 
createPart(Vector3.new(1,1,1),"Medium stone grey",mod) 
LeftHandle = Part
createMesh("Cylinder","Brick",Vector3.new(0.5,0.05,0.5),Part) 
createWeld(Part,plyr.Character["Left Arm"],CFrame.new(0,1,0)*CFrame.Angles(0,0,0)) 
createPart(Vector3.new(1,1,1),"Dark stone grey",mod) 
LeftDrill = Part 
LeftDrill.Reflectance = 0.2
createMesh("Special","Brick",Vector3.new(0.2,1,0.2),Part) 
Mesh.MeshId = "http://www.roblox.com/asset/?id=1033714"
createWeld(Part,LeftHandle,CFrame.new(0,0.4,0)*CFrame.Angles(math.rad(180),0,0)) 
LDWeld = Weld
--Joints
createPart(Vector3.new(1,1,1),"Navy blue",mod) 
RAJ = Part 
RAJ.Transparency = 1 
createMesh("Block","Brick",Vector3.new(0.2,0.2,0.2),Part) 
createWeld(Part,plyr.Character.Torso,CFrame.new(-1.5,-0.6,0)*CFrame.Angles(0,0,0)) 
NiceWeldRight = Weld
createWeld(plyr.Character["Right Arm"],RAJ,CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0)) 
RightArmJoint = Weld 
RightArmJoint.Parent = nil 
createPart(Vector3.new(1,1,1),"Navy blue",mod) 
LAJ = Part 
LAJ.Transparency = 1
createMesh("Block","Brick",Vector3.new(0.2,0.2,0.2),Part) 
createWeld(Part,plyr.Character.Torso,CFrame.new(1.5,-0.6,0)*CFrame.Angles(0,0,0)) 
NiceWeldLeft = Weld
createWeld(plyr.Character["Left Arm"],LAJ,CFrame.new(0,0.6,0)*CFrame.Angles(0,0,0)) 
LeftArmJoint = Weld 
LeftArmJoint.Parent = nil 
--JointEnd 
if script.Parent.className ~= "HopperBin" then 
        hb = Instance.new("HopperBin") 
        hb.Parent = plyr.Backpack 
        hb.Name = "TDrills" 
        script.Parent = hb 
end 
hb = script.Parent 
debounce = false 
function Select(mouse)         
        BattleEnd = false
        mod.Parent = plyr.Character 
        welds:MakeJoints() 
        backArms() 
        function onKeyDown(key) 
                if debounce == false then debounce = true 
                        key:lower() 
                        -----------
                        if string.byte(key) == 113 and Spinning == false then 
                                if DrillOut == false then 
                                        DrillOut = true 
                                        for i = 1,10 do 
                                                RDWeld.C0 = RDWeld.C0 - Vector3.new(0,0.08,0) 
                                                LDWeld.C0 = LDWeld.C0 - Vector3.new(0,0.08,0)
                                                wait()
                                        end 
                                        effect1(RightDrill) 
                                        effect2(LeftDrill)
                                else 
                                        e1 = false 
                                        for i = 1,10 do 
                                                RDWeld.C0 = RDWeld.C0 + Vector3.new(0,0.08,0) 
                                                LDWeld.C0 = LDWeld.C0 + Vector3.new(0,0.08,0) 
                                                wait()
                                        end 
                                        DrillOut = false 
                                end 
                        --Teleport----------------------
                        elseif string.byte(key) == 116 then 
                                if (plyr.Character.Torso.Position-mouse.Hit.p).magnitude < 2000 then 
                                        e1 = false 
                                        for i,v in pairs(Lines:GetChildren()) do 
                                                v:Remove() 
                                        end 
                                        pos1 = plyr.Character.Torso.Position 
                                        plyr.Character:MoveTo(mouse.Hit.p) 
                                        wait() 
                                        pos2 = plyr.Character.Torso.Position
                                        createPart(Vector3.new(1,1,1),"Dark stone grey",workspace) 
                                        Partz = Part 
                                        Partz.Name = "Line" 
                                        Partz.Anchored = true 
                                        Partz.Size = Vector3.new(1,(pos1-pos2).magnitude,1) 
                                        Partz.CFrame = CFrame.new((pos1+pos2)/2,pos1)*CFrame.Angles(math.pi/2,0,0) 
                                        createMesh("Cylinder","Brick",Vector3.new(0.5,1,0.5),Partz) 
                                        wait() 
                                        for i = 1,10 do 
                                                pcall(function()
                                                        Partz.Transparency = Partz.Transparency + 0.05 
                                                end) 
                                                wait() 
                                        end 
                                        game:getService("Debris"):AddItem(Partz,0.1) 
                                        effect1(RightDrill) 
                                        effect2(LeftDrill) 
                                end 
                        end  
                        if DrillOut == true then 
                                if string.byte(key) == 101 and Spinning == false then 
                                        if math.random(1,2) == 1 then 
                                                EOn = true 
                                                function onTouch(hit) 
                                                        if hit.Parent:findFirstChild("Humanoid") ~= nil then 
                                                                if EOn == true then 
                                                                        EOn = false
                                                                        hit.Parent.Humanoid:TakeDamage(EDmg) 
                                                                        wait(0.5) 
                                                                        EOn = true 
                                                                end 
                                                        end 
                                                end 
                                                RightDrill.Touched:connect(onTouch)
                                                backArms()
                                                for i = 1,5 do 
                                                        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(30),0,0)        
                                                        wait()
                                                end 
                                                for i = 1,5 do 
                                                        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(-30),0,0)        
                                                        wait()
                                                end 
                                                EOn = false 
                                        else 
                                                EOn = true 
                                                function onTouch(hit) 
                                                        if hit.Parent:findFirstChild("Humanoid") ~= nil then 
                                                                if EOn == true then 
                                                                        EOn = false
                                                                        hit.Parent.Humanoid:TakeDamage(EDmg) 
                                                                        wait(0.5) 
                                                                        EOn = true 
                                                                end 
                                                        end 
                                                end 
                                                LeftDrill.Touched:connect(onTouch)
                                                backArms()
                                                for i = 1,5 do 
                                                        LeftArmJoint.C1 = LeftArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(30),0,0)        
                                                        wait()
                                                end 
                                                for i = 1,5 do 
                                                        LeftArmJoint.C1 = LeftArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(-30),0,0)        
                                                        wait()
                                                end 
                                                EOn = false 
                                        end 
                                --Spin win--------------
                                elseif string.byte(key) == 114 then 
                                        backArms() 
                                        if Spinning == false then 
                                                SpinDeb = true 
                                                SpinT = true 
                                                for i = 1,10 do 
                                                        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(4),math.rad(2),math.rad(-0.5)) 
                                                        LeftArmJoint.C1 = LeftArmJoint.C1*CFrame.fromEulerAnglesXYZ(math.rad(4),math.rad(-2),math.rad(0.5))
                                                        wait() 
                                                end 
                                                for i = 1,10 do 
                                                        RightArmJoint.C1 = RightArmJoint.C1*CFrame.fromEulerAnglesXYZ(0,0,math.rad(8.5)) 
                                                        LeftArmJoint.C1 = LeftArmJoint.C1*CFrame.fromEulerAnglesXYZ(0,0,math.rad(-8.5))
                                                        wait() 
                                                end 
                                                NiceWeldRight.C0 = NiceWeldRight.C0 + Vector3.new(0.1,0,0) 
                                                NiceWeldLeft.C0 = NiceWeldLeft.C0 - Vector3.new(0.1,0,0)
                                                function onTouch(hit) 
                                                        if hit.Parent:findFirstChild("Humanoid") ~= nil then 
                                                                if SpinT == true then 
                                                                        SpinT = false
                                                                        hit.Parent.Humanoid:TakeDamage(EDmg) 
                                                                        wait(0.1) 
                                                                        SpinT = true 
                                                                end 
                                                        end 
                                                end 
                                                LeftDrill.Touched:connect(onTouch) 
                                                function onTouch(hit) 
                                                        if hit.Parent:findFirstChild("Humanoid") ~= nil then 
                                                                if SpinT == true then 
                                                                        SpinT = false
                                                                        hit.Parent.Humanoid:TakeDamage(EDmg) 
                                                                        wait(0.1) 
                                                                        SpinT = true 
                                                                end 
                                                        end 
                                                end 
                                                RightDrill.Touched:connect(onTouch)
                                                Spinning = true 
                                                SpinDeb = false 
                                                plyr.Character.Humanoid.WalkSpeed = 25
                                        else  
                                                SpinT = false 
                                                plyr.Character.Humanoid.WalkSpeed = 16
                                                Spinning = false 
                                        end  
                                elseif string.byte(key) == 122 then 
                                        if Shocks == false then 
                                                addShock() 
                                        else 
                                                removeShock() 
                                        end 
                                ---------
                                end 
                        end 
                        EOn = false
                        debounce = false 
                end 
        end 
        mouse.KeyDown:connect(onKeyDown) 
end 
hb.Selected:connect(Select) 
function onDeselect(mouse) 
        pcall(function() 
                if DrillOut == true then 
                        for i = 1,10 do 
                                RDWeld.C0 = RDWeld.C0 + Vector3.new(0,0.08,0) 
                                LDWeld.C0 = LDWeld.C0 + Vector3.new(0,0.08,0) 
                        end 
                end 
                DrillOut = false   
                BattleEnd = true 
                EOn = false 
                e1 = false 
                Spinning = false 
                setJoint("Both") 
                SpinT = false 
                plyr.Character.TLua.Humanoid.WalkSpeed = 16 
        end) 
end 
hb.Deselected:connect(onDeselect) 
coroutine.resume(coroutine.create(function() 
        while true do 
                if Spinning then 
                        plyr.Character.Torso.CFrame = plyr.Character.Torso.CFrame*CFrame.fromEulerAnglesXYZ(0,math.rad(60),0) 
                end 
                wait() 
        end 
end
)
) 
        coroutine.resume(coroutine.create(function() 
                for i = 1,math.huge do   
                        if e1 then 
                        posz1 = what2.Position
                        createPart(Vector3.new(1,1,1),LineColor,Lines) 
                        Partz = Part 
                        Partz.Name = "LineD" .. i 
                        Partz.Transparency = 0
                        Partz.Anchored = true 
                        Partz.Size = Vector3.new(1,(posz1-posz2).magnitude,1) 
                        Partz.CFrame = CFrame.new((posz1+posz2)/2,posz1)*CFrame.Angles(math.pi/2,0,0) 
                        createMesh("Cylinder","Brick",Vector3.new(0.2,1,0.2),Partz) 
                        delay(0,function()
                                for iz = 0 , 1 , 0.1 do 
                                        wait() 
                                        Lines["LineD" .. i].Transparency = 1*iz
                                end 
                                game:getService("Debris"):AddItem(Partz)
                        end) 
                        posz2 = posz1 
                        end 
                        wait()
                end 
        end 
        ) 
        )
        
                coroutine.resume(coroutine.create(function() 
                for i = 1,math.huge do   
                        if e1 then 
                        pos1 = what.Position
                        createPart(Vector3.new(1,1,1),LineColor,Lines) 
                        Partz = Part 
                        Partz.Name = "Line" .. i 
                        Partz.Transparency = 0
                        Partz.Anchored = true 
                        Partz.Size = Vector3.new(1,(pos1-pos2).magnitude,1) 
                        Partz.CFrame = CFrame.new((pos1+pos2)/2,pos1)*CFrame.Angles(math.pi/2,0,0) 
                        createMesh("Cylinder","Brick",Vector3.new(0.2,1,0.2),Partz) 
                        delay(0,function()
                                for iz = 0 , 1 , 0.1 do 
                                        wait() 
                                        Lines["Line" .. i].Transparency = 1*iz
                                end
                                game:getService("Debris"):AddItem(Partz)
                        end) 
                        pos2 = pos1 
                        end 
                        wait()
                end 
        end 
        ) 
        )
 
