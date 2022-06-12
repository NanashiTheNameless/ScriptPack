--Horsey Morph-------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------Script startup stuff---------------------------------------------------------------------------

player = "lordsheen"
subject = game:getService("Players")[player].Character
actor = subject.Humanoid
anchor = subject.Torso

actor.Jump = true

walk = 0
local eyecol
local bodcol
local haircol
local horncol
local makehorn = 0
hornreflect = 0

if(player == "lordsheen") then
        eyecol  = 1012
        bodcol  = 178
        haircol = 217
        reflect = 0
else if(player == "nil" or player == "nil") then
        eyecol  = 1002
        bodcol  = 1003
        haircol = 21
        reflect = 0
        makehorn = 2
        hornreflect = 0
        horncol = 1002
else if(player == "nil"or player == "nil") then
        eyecol  = 102
        bodcol  = 1020
        haircol = 29
        reflect = 0
else if(player == "nil") then
        eyecol  = 102
        bodcol  = 29
        haircol = 1020
        reflect = 0
else if(player == "nil" or player == "nil") then
        eyecol  = 1003
        bodcol  = 104
        haircol = 1016
        reflect = 0.5
        makehorn = 1
        hornreflect = 1
        horncol = 1003
else
        eyecol  = 1012
        bodcol  = 1016
        haircol = 104
        reflect = 0
end
end
end
end
end


for i, hide in pairs(subject:getChildren()) do
        if(hide.className == 'Part') then
                hide.Transparency = 1
                hide.CanCollide = false
        else if(hide.className == 'Hat') then
                hide:Remove()
        end
        end
end

-------------------------------------------------------------------------Main Body Creation-----------------------------------------------------------------------------

        bodyframe = Instance.new("Model")
        bodyframe.Parent = subject
        bodyframe.Name = player

        label = Instance.new("Humanoid")
        label.MaxHealth = 0
        label.Health = 0
        label.Parent = bodyframe

        ----------------------Head

        head = Instance.new("Part")
        head.Parent = bodyframe
        head.Size = Vector3.new(3, 3, 3)
        head.CFrame = anchor.CFrame
        head.Anchored = false
        head.CanCollide = true
        head.Name = "Head"
        head.BrickColor = BrickColor.new(bodcol)
        head.Reflectance = reflect

        head:BreakJoints()
        headweld = Instance.new("Weld")
        headweld.Parent = bodyframe
        headweld.Part0 = anchor
        headweld.Part1 = head
        headweld.C0 = CFrame.new(Vector3.new(0, 2.5, -4.75)) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)

        headmesh = Instance.new("SpecialMesh")
        headmesh.Parent = head
        headmesh.MeshType = 'Head'
        headmesh.Scale = Vector3.new(0.7, 1.25, 0.7)
        if(makehorn >= 1) then
                horn1 = Instance.new("Part")
                horn1.Parent = bodyframe
                horn1.Size = Vector3.new(1, 4, 1)
                horn1.CFrame = anchor.CFrame
                horn1.Anchored = false
                horn1.CanCollide = true
                horn1.Name = "Horn1"
                horn1.BrickColor = BrickColor.new(horncol)
                horn1.Reflectance = hornreflect

                horn1:BreakJoints()
                horn1weld = Instance.new("Weld")
                horn1weld.Parent = bodyframe
                horn1weld.Part0 = head
                horn1weld.Part1 = horn1
                if(makehorn == 2) then
                        horn1weld.C0 = CFrame.new(Vector3.new(-0.6, -1.25, -1)) * CFrame.fromEulerAnglesXYZ(0.3925, 1.57, 3.14)
                        horn2 = Instance.new("Part")
                        horn2.Parent = bodyframe
                        horn2.Size = Vector3.new(1, 4, 1)
                        horn2.CFrame = anchor.CFrame
                        horn2.Anchored = false
                        horn2.CanCollide = true
                        horn2.Name = "Horn2"
                        horn2.BrickColor = BrickColor.new(horncol)
                        horn2.Reflectance = hornreflect

                        horn2:BreakJoints()
                        horn2weld = Instance.new("Weld")
                        horn2weld.Parent = bodyframe
                        horn2weld.Part0 = head
                        horn2weld.Part1 = horn2
                        horn2weld.C0 = CFrame.new(Vector3.new(0.6, -1.25, -1)) * CFrame.fromEulerAnglesXYZ(0.3925, 1.57, 3.14)

                        horn2mesh = Instance.new("SpecialMesh")
                        horn2mesh.Parent = horn2
                        horn2mesh.MeshType = 'FileMesh'
                        horn2mesh.MeshId = "http://www.roblox.com/asset/?id=1033714"
                        horn2mesh.Scale = Vector3.new(0.2, 3, 0.2)
                else
                        horn1weld.C0 = CFrame.new(Vector3.new(0, -1.25, -1)) * CFrame.fromEulerAnglesXYZ(0.3925, 1.57, 3.14)
                end

                horn1mesh = Instance.new("SpecialMesh")
                horn1mesh.Parent = horn1
                horn1mesh.MeshType = 'FileMesh'
                horn1mesh.MeshId = "http://www.roblox.com/asset/?id=1033714"
                horn1mesh.Scale = Vector3.new(0.2, 3, 0.2)
        end

        ----------------------Torso

        torso = Instance.new("Part")
        torso.Parent = bodyframe
        torso.Size = Vector3.new(3, 6, 3)
        torso.CFrame = anchor.CFrame
        torso.Anchored = false
        torso.CanCollide = true
        torso.Name = "HTorso"
        torso.BrickColor = BrickColor.new(bodcol)
        torso.Reflectance = reflect

        torso:BreakJoints()
        torsoweld = Instance.new("Weld")
        torsoweld.Parent = bodyframe
        torsoweld.Part0 = anchor
        torsoweld.Part1 = torso
        torsoweld.C0 = CFrame.new(Vector3.new(0, 1, 0)) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)

        torsomesh = Instance.new("SpecialMesh")
        torsomesh.Parent = torso
        torsomesh.MeshType = 'Head'

        ----------------------Neck

        neck = Instance.new("Part")
        neck.Parent = bodyframe
        neck.Size = Vector3.new(3, 2, 3)
        neck.CFrame = anchor.CFrame
        neck.Anchored = false
        neck.CanCollide = true
        neck.Name = "HNeck"
        neck.BrickColor = BrickColor.new(bodcol)
        neck.Reflectance = reflect

        neck:BreakJoints()
        neckweld = Instance.new("Weld")
        neckweld.Parent = bodyframe
        neckweld.Part0 = anchor
        neckweld.Part1 = neck
        neckweld.C0 = CFrame.new(Vector3.new(0, 2, -3.5)) * CFrame.fromEulerAnglesXYZ(2.1, 0, 0)

        neckmesh = Instance.new("SpecialMesh")
        neckmesh.Parent = neck
        neckmesh.MeshType = 'Head'
        neckmesh.Scale = Vector3.new(0.625, 1.25, 0.625)

        ----------------------Tail

        tail = Instance.new("Part")
        tail.Parent = bodyframe
        tail.Size = Vector3.new(1, 1, 1)
        tail.CFrame = anchor.CFrame
        tail.Anchored = false
        tail.CanCollide = true
        tail.Name = "HTail"
        tail.BrickColor = BrickColor.new(haircol)
        tail.Reflectance = reflect

        tail:BreakJoints()
        tailweld = Instance.new("Weld")
        tailweld.Parent = bodyframe
        tailweld.Part0 = anchor
        tailweld.Part1 = tail
        tailweld.C0 = CFrame.new(Vector3.new(0, 0, 3)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

        tailmesh = Instance.new("SpecialMesh")
        tailmesh.Parent = tail
        tailmesh.MeshType = 'Sphere'
        tailmesh.Scale = Vector3.new(0.5, 3, 0.5)

        ----------------------Eyes

        eyel = Instance.new("Part")
        eyel.Parent = bodyframe
        eyel.Size = Vector3.new(1, 1, 1)
        eyel.CFrame = anchor.CFrame
        eyel.Anchored = false
        eyel.CanCollide = true
        eyel.Name = "HEyeleft"
        eyel.BrickColor = BrickColor.new(eyecol)

        eyel:BreakJoints()
        eyelweld = Instance.new("Weld")
        eyelweld.Parent = bodyframe
        eyelweld.Part0 = anchor
        eyelweld.Part1 = eyel
        eyelweld.C0 = CFrame.new(Vector3.new(0.4, 2.85, -6.25)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

        eyelmesh = Instance.new("SpecialMesh")
        eyelmesh.Parent = eyel
        eyelmesh.MeshType = 'Sphere'
        eyelmesh.Scale = Vector3.new(0.4, 0.4, 0.4)

        eyer = Instance.new("Part")
        eyer.Parent = bodyframe
        eyer.Size = Vector3.new(1, 1, 1)
        eyer.CFrame = anchor.CFrame
        eyer.Anchored = false
        eyer.CanCollide = true
        eyer.Name = "HEyereft"
        eyer.BrickColor = BrickColor.new(eyecol)

        eyer:BreakJoints()
        eyerweld = Instance.new("Weld")
        eyerweld.Parent = bodyframe
        eyerweld.Part0 = anchor
        eyerweld.Part1 = eyer
        eyerweld.C0 = CFrame.new(Vector3.new(-0.4, 2.85, -6.25)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

        eyermesh = Instance.new("SpecialMesh")
        eyermesh.Parent = eyer
        eyermesh.MeshType = 'Sphere'
        eyermesh.Scale = Vector3.new(0.4, 0.4, 0.4)

        ----------------------Mouth

        toplip = Instance.new("Part")
        toplip.Parent = bodyframe
        toplip.Size = Vector3.new(2, 2, 2)
        toplip.CFrame = anchor.CFrame
        toplip.Anchored = false
        toplip.CanCollide = true
        toplip.Name = "HTopLip"
        toplip.BrickColor = BrickColor.new(bodcol)
        toplip.Reflectance = reflect

        toplip:BreakJoints()
        toplipweld = Instance.new("Weld")
        toplipweld.Parent = bodyframe
        toplipweld.Part0 = anchor
        toplipweld.Part1 = toplip
        toplipweld.Name = "TopLipw"
        toplipweld.C0 = CFrame.new(Vector3.new(0, 2, -6.6)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

        toplipmesh = Instance.new("BlockMesh")
        toplipmesh.Parent = toplip
        toplipmesh.Scale = Vector3.new(0.45, 0.1, 0.6)

        botlip = Instance.new("Part")
        botlip.Parent = bodyframe
        botlip.Size = Vector3.new(2, 2, 2)
        botlip.CFrame = anchor.CFrame
        botlip.Anchored = false
        botlip.CanCollide = true
        botlip.Name = "HBotLip"
        botlip.BrickColor = BrickColor.new(bodcol)
        botlip.Reflectance = reflect

        botlip:BreakJoints()
        botlipweld = Instance.new("Weld")
        botlipweld.Parent = bodyframe
        botlipweld.Part0 = anchor
        botlipweld.Part1 = botlip
        botlipweld.Name = "BotLipw"
        botlipweld.C0 = CFrame.new(Vector3.new(0, 2.275, -6.6)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

        botlipmesh = Instance.new("BlockMesh")
        botlipmesh.Parent = botlip
        botlipmesh.Scale = Vector3.new(0.45, 0.1, 0.6)

        ----------------------Mane

        mane1 = Instance.new("Part")
        mane1.Parent = bodyframe
        mane1.Size = Vector3.new(2, 1, 2)
        mane1.CFrame = anchor.CFrame
        mane1.Anchored = false
        mane1.CanCollide = true
        mane1.Name = "HMane1"
        mane1.BrickColor = BrickColor.new(haircol)

        mane1:BreakJoints()
        mane1weld = Instance.new("Weld")
        mane1weld.Parent = bodyframe
        mane1weld.Part0 = anchor
        mane1weld.Part1 = mane1
        mane1weld.C0 = CFrame.new(Vector3.new(0, 3.5, -4.75)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

        mane1mesh = Instance.new("SpecialMesh")
        mane1mesh.Parent = mane1
        mane1mesh.MeshType = 'Torso'
        mane1mesh.Scale = Vector3.new(0.7, 0.8, 0.95)

        mane2 = Instance.new("Part")
        mane2.Parent = bodyframe
        mane2.Size = Vector3.new(2, 1, 2)
        mane2.CFrame = anchor.CFrame
        mane2.Anchored = false
        mane2.CanCollide = true
        mane2.Name = "HMane2"
        mane2.BrickColor = BrickColor.new(haircol)

        mane2:BreakJoints()
        mane2weld = Instance.new("Weld")
        mane2weld.Parent = bodyframe
        mane2weld.Part0 = mane1
        mane2weld.Part1 = mane2
        mane2weld.C0 = CFrame.new(Vector3.new(0, -0.75, 2)) * CFrame.fromEulerAnglesXYZ(0.5, 0, 0)

        mane2mesh = Instance.new("SpecialMesh")
        mane2mesh.Parent = mane2
        mane2mesh.MeshType = 'Torso'
        mane2mesh.Scale = Vector3.new(0.85, 0.8, 1.2)

        ----------------------Legs

        legfrontleft = Instance.new("Part")
        legfrontleft.Parent = bodyframe
        legfrontleft.Size = Vector3.new(2, 4, 2)
        legfrontleft.CFrame = anchor.CFrame
        legfrontleft.Anchored = false
        legfrontleft.CanCollide = true
        legfrontleft.Name = "HLegFrontLeft"
        legfrontleft.BrickColor = BrickColor.new(bodcol)
        legfrontleft.Reflectance = reflect

        legfrontleft:BreakJoints()
        legfrontleftweld = Instance.new("Weld")
        legfrontleftweld.Parent = bodyframe
        legfrontleftweld.Part0 = anchor
        legfrontleftweld.Part1 = legfrontleft
        legfrontleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, -2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

        legfrontleftmesh = Instance.new("SpecialMesh")
        legfrontleftmesh.Parent = legfrontleft
        legfrontleftmesh.MeshType = 'Head'
        legfrontleftmesh.Scale = Vector3.new(0.475, 1, 0.475)

        legfrontright = Instance.new("Part")
        legfrontright.Parent = bodyframe
        legfrontright.Size = Vector3.new(2, 4, 2)
        legfrontright.CFrame = anchor.CFrame
        legfrontright.Anchored = false
        legfrontright.CanCollide = true
        legfrontright.Name = "HLegFrontRight"
        legfrontright.BrickColor = BrickColor.new(bodcol)
        legfrontright.Reflectance = reflect

        legfrontright:BreakJoints()
        legfrontrightweld = Instance.new("Weld")
        legfrontrightweld.Parent = bodyframe
        legfrontrightweld.Part0 = anchor
        legfrontrightweld.Part1 = legfrontright
        legfrontrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, -2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

        legfrontrightmesh = Instance.new("SpecialMesh")
        legfrontrightmesh.Parent = legfrontright
        legfrontrightmesh.MeshType = 'Head'
        legfrontrightmesh.Scale = Vector3.new(0.475, 1, 0.475)

        legbackleft = Instance.new("Part")
        legbackleft.Parent = bodyframe
        legbackleft.Size = Vector3.new(2, 4, 2)
        legbackleft.CFrame = anchor.CFrame
        legbackleft.Anchored = false
        legbackleft.CanCollide = true
        legbackleft.Name = "HLegBackLeft"
        legbackleft.BrickColor = BrickColor.new(bodcol)
        legbackleft.Reflectance = reflect

        legbackleft:BreakJoints()
        legbackleftweld = Instance.new("Weld")
        legbackleftweld.Parent = bodyframe
        legbackleftweld.Part0 = anchor
        legbackleftweld.Part1 = legbackleft
        legbackleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, 2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

        legbackleftmesh = Instance.new("SpecialMesh")
        legbackleftmesh.Parent = legbackleft
        legbackleftmesh.MeshType = 'Head'
        legbackleftmesh.Scale = Vector3.new(0.475, 1, 0.475)

        legbackright = Instance.new("Part")
        legbackright.Parent = bodyframe
        legbackright.Size = Vector3.new(2, 4, 2)
        legbackright.CFrame = anchor.CFrame
        legbackright.Anchored = false
        legbackright.CanCollide = true
        legbackright.Name = "HLegBackRight"
        legbackright.BrickColor = BrickColor.new(bodcol)
        legbackright.Reflectance = reflect

        legbackright:BreakJoints()
        legbackrightweld = Instance.new("Weld")
        legbackrightweld.Parent = bodyframe
        legbackrightweld.Part0 = anchor
        legbackrightweld.Part1 = legbackright
        legbackrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, 2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)

        legbackrightmesh = Instance.new("SpecialMesh")
        legbackrightmesh.Parent = legbackright
        legbackrightmesh.MeshType = 'Head'
        legbackrightmesh.Scale = Vector3.new(0.475, 1, 0.475)

-------------------------------------------------------------------------Main Tool Functions----------------------------------------------------------------------------

if(script.Parent.className ~= 'HopperBin') then
        hop = Instance.new("HopperBin")
        hop.Name = "Horse"
        hop.Parent = game:getService("Players")[player].Backpack
        script.Parent = hop
        if(bodyframe ~= nil) then
                bodyframe:Remove()
        end
end

hop = script.Parent

function walkanim()
        while true do
                while walk == 1 do
                        
                        legfrontleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, -2.5)) * CFrame.fromEulerAnglesXYZ(0.5, 0, 0)
                        legfrontrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, -1.5)) * CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
                        legbackleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, 1.5)) * CFrame.fromEulerAnglesXYZ(0.5, 0, 0)
                        legbackrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, 2.5)) * CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
                        
                        wait(0.01)
                
                        legfrontleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, -3)) * CFrame.fromEulerAnglesXYZ(1, 0, 0)
                        legfrontrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, -1)) * CFrame.fromEulerAnglesXYZ(-1, 0, 0)
                        legbackleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, 1)) * CFrame.fromEulerAnglesXYZ(1, 0, 0)
                        legbackrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, 3)) * CFrame.fromEulerAnglesXYZ(-1, 0, 0)
                        
                        wait(0.01)

                        legfrontleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, -2.5)) * CFrame.fromEulerAnglesXYZ(0.5, 0, 0)
                        legfrontrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, -1.5)) * CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
                        legbackleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, 1.5)) * CFrame.fromEulerAnglesXYZ(0.5, 0, 0)
                        legbackrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, 2.5)) * CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
                        
                        wait(0.01)

                        legfrontleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, -2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                        legfrontrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, -2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                        legbackleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, 2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                        legbackrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, 2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                        
                        wait(0.01)

                        legfrontleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, -1.5)) * CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
                        legfrontrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, -2.5)) * CFrame.fromEulerAnglesXYZ(0.5, 0, 0)
                        legbackleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, 2.5)) * CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
                        legbackrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, 1.5)) * CFrame.fromEulerAnglesXYZ(0.5, 0, 0)
                        
                        wait(0.01)
                
                        legfrontleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, -1)) * CFrame.fromEulerAnglesXYZ(-1, 0, 0)
                        legfrontrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, -3)) * CFrame.fromEulerAnglesXYZ(1, 0, 0)
                        legbackleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, 3)) * CFrame.fromEulerAnglesXYZ(-1, 0, 0)
                        legbackrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, 1)) * CFrame.fromEulerAnglesXYZ(1, 0, 0)
                        
                        wait(0.01)

                        legfrontleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, -1.5)) * CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
                        legfrontrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, -2.5)) * CFrame.fromEulerAnglesXYZ(0.5, 0, 0)
                        legbackleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, 2.5)) * CFrame.fromEulerAnglesXYZ(-0.5, 0, 0)
                        legbackrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, 1.5)) * CFrame.fromEulerAnglesXYZ(0.5, 0, 0)
                        
                        wait(0.01)
                end
                wait()
        end
end

thread = coroutine.create(walkanim) 
assert(coroutine.resume(thread))

function onKeyDown(key)
        if(key == 'l') then
                legfrontleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, -3)) * CFrame.fromEulerAnglesXYZ(1, 0, 0)
                legfrontrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, -3)) * CFrame.fromEulerAnglesXYZ(1, 0, 0)
                legbackleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, 3)) * CFrame.fromEulerAnglesXYZ(-1, 0, 0)
                legbackrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, 3)) * CFrame.fromEulerAnglesXYZ(-1, 0, 0)
                subject.Humanoid.Jump = true
                subject.Humanoid.Sit = true
        end
        if(key == 'w' or key == 'a' or key == 's' or key == 'd') then
                walk = 1
        end
        if(key == 'n') then
                headweld.C0 = CFrame.new(Vector3.new(0, 2.75, -4.75)) * CFrame.fromEulerAnglesXYZ(2.1, 0, 0)
                mane1weld.C0 = CFrame.new(Vector3.new(0, 3.75, -4.5)) * CFrame.fromEulerAnglesXYZ(0.5, 0, 0)
                mane2weld.C0 = CFrame.new(Vector3.new(0, -0, 2.25)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                toplipweld.C0 = CFrame.new(Vector3.new(0, 2.95, -6.5)) * CFrame.fromEulerAnglesXYZ(0.25, 0, 0)
                botlipweld.C0 = CFrame.new(Vector3.new(0, 3.325, -6.25)) * CFrame.fromEulerAnglesXYZ(0.75, 0, 0)
                eyelweld.C0 = CFrame.new(Vector3.new(0.4, 3.8, -5.825)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                eyerweld.C0 = CFrame.new(Vector3.new(-0.4, 3.8, -5.825)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
        end
        if(key == 'c') then
                eyelmesh.Scale = Vector3.new(0.7, 0.7, 0.7)
                eyermesh.Scale = Vector3.new(0.7, 0.7, 0.7)
                toplipweld.C0 = CFrame.new(Vector3.new(0, 1.95, -6.6)) * CFrame.fromEulerAnglesXYZ(-0.25, 0, 0)
                botlipweld.C0 = CFrame.new(Vector3.new(0, 2.325, -6.6)) * CFrame.fromEulerAnglesXYZ(0.25, 0, 0)
        end
end

function onKeyUp(key)
        if(key == 'l') then
                legfrontleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, -2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                legfrontrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, -2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                legbackleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, 2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                legbackrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, 2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                subject.Humanoid.Jump = true
                subject.Humanoid.Sit = false
        end
        if(key == 'w' or key == 'a' or key == 's' or key == 'd') then
                walk = 0
                wait(0.1)
                legfrontleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, -2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                legfrontrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, -2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                legbackleftweld.C0 = CFrame.new(Vector3.new(-0.8, -1.25, 2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                legbackrightweld.C0 = CFrame.new(Vector3.new(0.8, -1.25, 2)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
        end
        if(key == 'n') then
                headweld.C0 = CFrame.new(Vector3.new(0, 2.5, -4.75)) * CFrame.fromEulerAnglesXYZ(1.57, 0, 0)
                mane1weld.C0 = CFrame.new(Vector3.new(0, 3.5, -4.75)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                mane2weld.C0 = CFrame.new(Vector3.new(0, -0.75, 2)) * CFrame.fromEulerAnglesXYZ(0.5, 0, 0)
                toplipweld.C0 = CFrame.new(Vector3.new(0, 2, -6.6)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                botlipweld.C0 = CFrame.new(Vector3.new(0, 2.275, -6.6)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                eyelweld.C0 = CFrame.new(Vector3.new(0.4, 2.85, -6.25)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                eyerweld.C0 = CFrame.new(Vector3.new(-0.4, 2.85, -6.25)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
        end
        if(key == 'c') then
                eyelmesh.Scale = Vector3.new(0.4, 0.4, 0.4)
                eyermesh.Scale = Vector3.new(0.4, 0.4, 0.4)
                toplipweld.C0 = CFrame.new(Vector3.new(0, 2, -6.6)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
                botlipweld.C0 = CFrame.new(Vector3.new(0, 2.275, -6.6)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
        end
end

function onSelected(mouse)
        mouse.Button1Down:connect(function() MoveLips(mouse) end)
        mouse.Button1Up:connect(function() EndLips(mouse) end)
        mouse.KeyDown:connect(onKeyDown)
        mouse.KeyUp:connect(onKeyUp)
end

hop.Selected:connect(onSelected)

function MoveLips(mouse)
        toplipweld.C0 = CFrame.new(Vector3.new(0, 1.95, -6.6)) * CFrame.fromEulerAnglesXYZ(-0.25, 0, 0)
        botlipweld.C0 = CFrame.new(Vector3.new(0, 2.325, -6.6)) * CFrame.fromEulerAnglesXYZ(0.25, 0, 0)
end

function EndLips(mouse)
        toplipweld.C0 = CFrame.new(Vector3.new(0, 2, -6.6)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
        botlipweld.C0 = CFrame.new(Vector3.new(0, 2.275, -6.6)) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
end
