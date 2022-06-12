--[[originally created for A8X, jarredbcv and supergod800 opened for new development.]]--
 
local vDebounce = false
 
if (script.Parent.className ~= "HopperBin") then 
 
mouse = game.Players.LocalPlayer:GetMouse()
 
local h = Instance.new("HopperBin") 
h.Name = "Sword mesh test for A8x By jarrebcv" 
h.Parent = game.Players["LocalPlayer"].Backpack 
script.Parent = h 
script.Name = "Function" 
end 
Bin = script.Parent 
Person = game.Players.LocalPlayer 
PersonT = Person.Character.Torso 
NormalHand = 1 
NormalFoot = 3 
Joints = {PersonT:findFirstChild("Right Shoulder"), PersonT:findFirstChild("Left Shoulder"), PersonT:findFirstChild("Right Hip"), PersonT:findFirstChild("Left Hip")} 
Limbs = {Person.Character:findFirstChild("Right Arm"), Person.Character:findFirstChild("Left Arm"), Person.Character:findFirstChild("Right Leg"), Person.Character:findFirstChild("Left Leg")} 
if (Person.Character:findFirstChild("Suit") ~= nil) then 
Person.Character.Suit:remove() 
end 
Suit = Instance.new("Model")
Suit.Parent = Person.Character 
Suit.Name = "Suit" 
Lava1 = Instance.new("Part") 
Lava1.Parent = Suit 
Lava1.Name = "Lava1" 
Lava1.CanCollide = false 
Lava1.formFactor = "Symmetric" 
Lava1.Size = Vector3.new(1, 1, 5) 
Lava1.BrickColor = BrickColor.new("Really black") 
Lava1.TopSurface = 0 
Lava1.BottomSurface = 0 
Lava1.Transparency = 0 
Lava1M = Instance.new("SpecialMesh")
Lava1M.MeshId = "rbxasset://fonts/sword.mesh" 
Lava1M.TextureId = "rbxasset://textures/SwordTexture.png"
Lava1M.Parent = Lava1 
Lava1M.Scale = Vector3.new(1, 1, 1) 
Lava1:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Lava1 
Weld.Part0 = Limbs[NormalHand] 
Weld.Part1 = Lava1 
Weld.C0 = CFrame.new(0, -1.1, -1.2) * CFrame.fromEulerAnglesXYZ(179, 0, 89.5)
Lava2 = Instance.new("Part") 
Lava2.Parent = Suit 
Lava2.Name = "Lava2" 
Lava2.CanCollide = false 
Lava2.formFactor = "Symmetric" 
Lava2.Size = Vector3.new(1, 1, 5) 
Lava2.BrickColor = BrickColor.new("") 
Lava2.TopSurface = 0 
Lava2.BottomSurface = 0 
Lava2.Transparency = 0 
Lava2M = Instance.new("SpecialMesh")
Lava2M.MeshId = "http://www.roblox.com/asset/?id=50798797" 
Lava2M.Parent = Lava2 
Lava2M.Scale = Vector3.new(2, 2, 2) 
Lava2:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Lava2 
Weld.Part0 = game.Players.LocalPlayer.Character["Left Arm"] 
Weld.Part1 = Lava2 
Weld.C0 = CFrame.new(0, -.9, .5) * CFrame.fromEulerAnglesXYZ(179, 0, 0)
x=game.Players.LocalPlayer.Character --------- FIXED IT
ArmWeldR = Instance.new("Weld") 
ArmWeldR.Parent = x.Torso
ArmWeldR.Part0 = x.Torso
ArmWeldR.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
ArmWeldR.C0 = CFrame.new(-1.5,.5,-.5) * CFrame.fromEulerAnglesXYZ(-300,0,0)
 
 
function touch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-3
end
end
Lava1.Touched:connect(touch)
function PressKey(key, mouse) 
 
key = key:upper() 
if (key == "Q") then
x=game.Players.LocalPlayer.Character
xt=x.Torso
xl=xt['Right Shoulder']
 
xl.C0=xl.C0*CFrame.fromEulerAnglesXYZ(math.rad(-80),math.rad(0),math.rad(0))
wait(0.2)
breakloop = false coroutine.resume(coroutine.create(function(c) while true do wait() if breakloop == true then break end game.Players.LocalPlayer.Character.Torso.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame*CFrame.Angles(0,math.pi/10,0) end end)) wait(0.2) breakloop = true
wait(0.1)
breakloop = false coroutine.resume(coroutine.create(function(c) while true do wait() if breakloop == true then break end game.Players.LocalPlayer.Character.Torso.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame*CFrame.Angles(0,math.pi/-10,0) end end)) wait(0.2) breakloop = true
x=game.Players.LocalPlayer.Character
xt=x.Torso
xl=xt['Right Shoulder']
 
xl.C0=xl.C0*CFrame.fromEulerAnglesXYZ(math.rad(80),math.rad(0),math.rad(0))
end
if (key == "E") then
for i=1,10 do wait() game.Players.LocalPlayer.Character.Suit.Lava2.Transparency = game.Players.LocalPlayer.Character.Suit.Lava2.Transparency + .1 end
x=game.Players.LocalPlayer.Character --------- FIXED IT
ArmWeldR = Instance.new("Weld") 
ArmWeldR.Parent = x.Torso
ArmWeldR.Part0 = x.Torso
ArmWeldR.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
x=game.Players.LocalPlayer.Character
xt=x.Torso
xl=xt['Right Shoulder']
xl.C0=xl.C0*CFrame.fromEulerAnglesXYZ(math.rad(-90),math.rad(0),math.rad(0))
Wait(0.1)
Lava1M.Scale = Vector3.new(1, 1, 2) 
wait(0.1)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
breakloop = false coroutine.resume(coroutine.create(function(c) while true do wait() if breakloop == true then break end game.Players.LocalPlayer.Character.Torso.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame*CFrame.Angles(0,math.pi/2,0) end end)) wait(2) breakloop = true
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
x=game.Players.LocalPlayer.Character
xt=x.Torso
xl=xt['Right Shoulder']
xl.C0=xl.C0*CFrame.fromEulerAnglesXYZ(math.rad(90),math.rad(0),math.rad(0))
wait(0.1)
Lava1M.Scale = Vector3.new(1, 1, 1) 
x=game.Players.LocalPlayer.Character --------- FIXED IT
ArmWeldR = Instance.new("Weld") 
ArmWeldR.Parent = x.Torso
ArmWeldR.Part0 = x.Torso
ArmWeldR.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
ArmWeldR.C0 = CFrame.new(-1.5,.5,-.5) * CFrame.fromEulerAnglesXYZ(-300,0,0)
for i=1,10 do wait() game.Players.LocalPlayer.Character.Suit.Lava2.Transparency = game.Players.LocalPlayer.Character.Suit.Lava2.Transparency - .1 end
end
if (key == "C") then
for i=1,10 do wait() game.Players.LocalPlayer.Character.Suit.Lava1.Transparency = game.Players.LocalPlayer.Character.Suit.Lava1.Transparency + .1 game.Players.LocalPlayer.Character.Suit.Lava2.Transparency = game.Players.LocalPlayer.Character.Suit.Lava2.Transparency + .1 end
x=game.Players.LocalPlayer.Character --------- FIXED IT
ArmWeldR = Instance.new("Weld") 
ArmWeldR.Parent = x.Torso
ArmWeldR.Part0 = x.Torso
ArmWeldR.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
Lava1:remove()
Lava2:remove()
Lava1 = Instance.new("Part") 
Lava1.Parent = Suit 
Lava1.Name = "Lava1" 
Lava1.CanCollide = false 
Lava1.formFactor = "Symmetric" 
Lava1.Size = Vector3.new(1, 1, 5) 
Lava1.BrickColor = BrickColor.new("Really black") 
Lava1.TopSurface = 0 
Lava1.BottomSurface = 0 
Lava1.Transparency = 0 
Lava1M = Instance.new("SpecialMesh")
Lava1M.MeshId = "http://www.roblox.com/asset/?id=54421380" 
Lava1M.TextureId = "http://www.roblox.com/asset/?id=55284295"
Lava1M.Parent = Lava1 
Lava1M.Scale = Vector3.new(1.25, 1.25, 2) 
Lava1:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Lava1 
Weld.Part0 = Limbs[NormalHand] 
Weld.Part1 = Lava1 
Weld.C0 = CFrame.new(0, -1.1, -2) * CFrame.fromEulerAnglesXYZ(179, 0, 89.5)
for i=1,100 do wait() game.Players.LocalPlayer.Character["Right Arm"].Transparency = game.Players.LocalPlayer.Character["Right Arm"].Transparency + .01
game.Players.LocalPlayer.Character["Left Arm"].Transparency = game.Players.LocalPlayer.Character["Left Arm"].Transparency + .01 
game.Players.LocalPlayer.Character["Left Leg"].Transparency = game.Players.LocalPlayer.Character["Left Leg"].Transparency + .01
game.Players.LocalPlayer.Character["Right Leg"].Transparency = game.Players.LocalPlayer.Character["Right Leg"].Transparency + .01
game.Players.LocalPlayer.Character.Torso.Transparency = game.Players.LocalPlayer.Character.Torso.Transparency + .01 
game.Players.LocalPlayer.Character.Head.Transparency = game.Players.LocalPlayer.Character.Head.Transparency + .01 end
Lava7 = Instance.new("Part") 
Lava7.Parent = Suit 
Lava7.Name = "Lava7" 
Lava7.CanCollide = false 
Lava7.formFactor = "Symmetric" 
Lava7.Size = Vector3.new(1, 1, 1) 
Lava7.BrickColor = BrickColor.new("Really black") 
Lava7.TopSurface = 0 
Lava7.BottomSurface = 0 
Lava7.Transparency = 1 
Lava7M = Instance.new("SpecialMesh")
Lava7M.MeshId = "http://www.roblox.com/asset/?id=29521422" 
Lava7M.TextureId = "http://www.roblox.com/asset/?id=29526566"
Lava7M.Parent = Lava7 
Lava7M.Scale = Vector3.new(1, 1, 1) 
Lava7:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Lava7 
Weld.Part0 = Limbs[NormalHand] 
Weld.Part1 = Lava7 
Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Lava3 = Instance.new("Part") 
Lava3.Parent = Suit 
Lava3.Name = "Lava3" 
Lava3.CanCollide = false 
Lava3.formFactor = "Symmetric" 
Lava3.Size = Vector3.new(1, 1, 1) 
Lava3.BrickColor = BrickColor.new("Really black") 
Lava3.TopSurface = 0 
Lava3.BottomSurface = 0 
Lava3.Transparency = 1 
Lava3M = Instance.new("SpecialMesh")
Lava3M.MeshId = "http://www.roblox.com/asset/?id=29521332" 
Lava3M.TextureId = "http://www.roblox.com/asset/?id=29526566"
Lava3M.Parent = Lava3 
Lava3M.Scale = Vector3.new(1, 1, 1) 
Lava3:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Lava3 
Weld.Part0 = game.Players.LocalPlayer.Character["Left Arm"] 
Weld.Part1 = Lava3 
Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Lava4 = Instance.new("Part") 
Lava4.Parent = Suit 
Lava4.Name = "Lava4" 
Lava4.CanCollide = false 
Lava4.formFactor = "Symmetric" 
Lava4.Size = Vector3.new(1, 1, 1) 
Lava4.BrickColor = BrickColor.new("Really black") 
Lava4.TopSurface = 0 
Lava4.BottomSurface = 0 
Lava4.Transparency = 1 
Lava4M = Instance.new("SpecialMesh")
Lava4M.MeshId = "http://www.roblox.com/asset/?id=29521405" 
Lava4M.TextureId = "http://www.roblox.com/asset/?id=29526566"
Lava4M.Parent = Lava4 
Lava4M.Scale = Vector3.new(1, 1, 1) 
Lava4:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Lava4 
Weld.Part0 = game.Players.LocalPlayer.Character["Left Leg"] 
Weld.Part1 = Lava4 
Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Lava5 = Instance.new("Part") 
Lava5.Parent = Suit 
Lava5.Name = "Lava5" 
Lava5.CanCollide = false 
Lava5.formFactor = "Symmetric" 
Lava5.Size = Vector3.new(1, 1, 1) 
Lava5.BrickColor = BrickColor.new("Really black") 
Lava5.TopSurface = 0 
Lava5.BottomSurface = 0 
Lava5.Transparency = 1 
Lava5M = Instance.new("SpecialMesh")
Lava5M.MeshId = "http://www.roblox.com/asset/?id=29521467" 
Lava5M.TextureId = "http://www.roblox.com/asset/?id=29526566"
Lava5M.Parent = Lava5 
Lava5M.Scale = Vector3.new(1, 1, 1) 
Lava5:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Lava5 
Weld.Part0 = game.Players.LocalPlayer.Character["Right Leg"] 
Weld.Part1 = Lava5 
Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Lava6 = Instance.new("Part") 
Lava6.Parent = Suit 
Lava6.Name = "Lava6" 
Lava6.CanCollide = false 
Lava6.formFactor = "Symmetric" 
Lava6.Size = Vector3.new(1, 1, 1) 
Lava6.BrickColor = BrickColor.new("Really black") 
Lava6.TopSurface = 0 
Lava6.BottomSurface = 0 
Lava6.Transparency = 1 
Lava6M = Instance.new("SpecialMesh")
Lava6M.MeshId = "http://www.roblox.com/asset/?id=29526648" 
Lava6M.TextureId = "http://www.roblox.com/asset/?id=29526566"
Lava6M.Parent = Lava6 
Lava6M.Scale = Vector3.new(1, 1, 1) 
Lava6:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Lava6 
Weld.Part0 = game.Players.LocalPlayer.Character.Torso
Weld.Part1 = Lava6 
Weld.C0 = CFrame.new(0, 0, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
Lava11 = Instance.new("Part") 
Lava11.Parent = Suit 
Lava11.Name = "Lava11" 
Lava11.CanCollide = false 
Lava11.formFactor = "Symmetric" 
Lava11.Size = Vector3.new(1, 1, 1) 
Lava11.BrickColor = BrickColor.new("Deep blue") 
Lava11.TopSurface = 0 
Lava11.BottomSurface = 0 
Lava11.Transparency = 1 
Lava11M = Instance.new("SpecialMesh")
Lava11M.MeshId = "http://www.roblox.com/asset/?id=9982590" 
Lava11M.Parent = Lava11 
Lava11M.Scale = Vector3.new(1, 1, 1) 
Lava11:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Lava11 
Weld.Part0 = game.Players.LocalPlayer.Character["Left Arm"]
Weld.Part1 = Lava11 
Weld.C0 = CFrame.new(0, -.9, 0) * CFrame.fromEulerAnglesXYZ(0, 0, 0)
for i=1,100 do wait()game.Players.LocalPlayer.Character.Head.Transparency = game.Players.LocalPlayer.Character.Head.Transparency - .01
game.Players.LocalPlayer.Character.Suit.Lava6.Transparency = game.Players.LocalPlayer.Character.Suit.Lava6.Transparency - .01
game.Players.LocalPlayer.Character.Suit.Lava3.Transparency = game.Players.LocalPlayer.Character.Suit.Lava3.Transparency - .01 
game.Players.LocalPlayer.Character.Suit.Lava4.Transparency = game.Players.LocalPlayer.Character.Suit.Lava4.Transparency - .01 
game.Players.LocalPlayer.Character.Suit.Lava5.Transparency = game.Players.LocalPlayer.Character.Suit.Lava5.Transparency - .01 
game.Players.LocalPlayer.Character.Suit.Lava7.Transparency = game.Players.LocalPlayer.Character.Suit.Lava7.Transparency - .01 end
game.Players.LocalPlayer.Character.Suit.Lava7.Transparency = 0
game.Players.LocalPlayer.Character.Suit.Lava3.Transparency = 0
game.Players.LocalPlayer.Character.Suit.Lava4.Transparency = 0
game.Players.LocalPlayer.Character.Suit.Lava5.Transparency = 0
game.Players.LocalPlayer.Character.Suit.Lava6.Transparency = 0
 function touch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Parent.Humanoid.Health=hit.Parent.Humanoid.Health-10 
end
end
Lava1.Touched:connect(touch)
lp = game.Players.LocalPlayer
 
t = lp.Character["Torso"]
 
Lava9 = Instance.new("Part") 
Lava9.Parent = Suit
Lava9.Name = "Lava9" 
Lava9.CanCollide = true
Lava9.formFactor = "Symmetric" 
Lava9.Size = Vector3.new(1, 3, 3) 
Lava9.BrickColor = BrickColor.new("") 
Lava9.TopSurface = 0 
Lava9.BottomSurface = 0 
Lava9.Transparency = 0 
Lava9M = Instance.new("SpecialMesh")
Lava9M.MeshId = "http://www.roblox.com/asset/?id=50798797" 
Lava9M.Parent = Lava9 
Lava9M.Scale = Vector3.new(2, 2, 2) 
Lava9:BreakJoints() 
Weld = Instance.new("Weld") 
Weld.Parent = Lava9 
Weld.Part0 = t
Weld.Part1 = Lava9 
Weld.C1 = CFrame.new()*CFrame.Angles(math.pi/2, 0, 0)
 function touch(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
hit.Parent:BreakJoints()
end
end
Lava9.Touched:connect(touch)
local radius = 5
while true do
for i = 0,359 do
    local PartCFrame = CFrame.new(t.CFrame.p)*CFrame.Angles(0, math.rad(i), 0)
    local wanted = PartCFrame+PartCFrame.lookVector*radius
    Weld.C0 = t.CFrame:toObjectSpace(wanted)
    wait()
end
end
end
 
if (key == "V") then
    if (not vDebounce) then
        vDebounce = true
        x=game.Players.LocalPlayer.Character --------- FIXED IT
        ArmWeldR = Instance.new("Weld") 
        ArmWeldR.Parent = x.Torso
        ArmWeldR.Part0 = x.Torso
        ArmWeldR.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
        ArmWeldR.C0 = CFrame.new(-1.5,.5,-.5) * CFrame.fromEulerAnglesXYZ(-300,0,0)
        Lava11.Transparency = 0
        Lava11M.Scale = Vector3.new(.25, .25, .25) 
        wait(0.10)
        Lava11M.Scale = Vector3.new(.5, .5, .5) 
        wait(0.10)
        Lava11M.Scale = Vector3.new(1, 1, 1) 
        wait(0.10)
        Lava11.Transparency = 1 
        x=game.Players.LocalPlayer.Character --------- FIXED IT
        ArmWeldR = Instance.new("Weld") 
        ArmWeldR.Parent = x.Torso
        ArmWeldR.Part0 = x.Torso
        ArmWeldR.Part1 = game.Players.LocalPlayer.Character["Left Arm"]
        ArmWeldR.C0 = CFrame.new(-1.5,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
        for i=1,10 do wait()Lava9.Transparency = Lava9.Transparency + .1  end
            x = Instance.new("Part")
            x.BrickColor = BrickColor.new("")
            x.Size = Vector3.new(5, 5, 5)
            x.Transparency = 1                
            xM = Instance.new("SpecialMesh")
            xM.MeshId = "http://www.roblox.com/asset/?id=50798797" 
            xM.Parent = x
            xM.Scale = Vector3.new(2, 2, 2) 
            y = Instance.new("BodyVelocity")
            y.maxForce = Vector3.new(math.huge,math.huge,math.huge)
            y.velocity = game.Players.LocalPlayer.Character.Torso.CFrame.lookVector *80
            x.Shape = "Ball"
            x.Parent = game.Players.LocalPlayer.Character.Torso
            x.CanCollide = true        
            y.Parent = x
            f = Instance.new("Fire" , x)
            f.Size = 0
            f.Heat = 0
            x.CFrame = game.Players.LocalPlayer.Character.Torso.CFrame * CFrame.new(0,0,-10) * CFrame.fromEulerAnglesXYZ(-89.5, 0, 0)
            game.Debris:AddItem(x, 5)
            function touch(hit) 
            if hit.Parent:findFirstChild("Humanoid") ~= nil then 
                hit.Parent:BreakJoints()
            end
        end
        x.Touched:connect(touch)
        for i=1,10 do wait()x.Transparency = x.Transparency - .1  end
            wait(4.5)
            for i=1,10 do 
                wait()
                Lava9.Transparency = Lava9.Transparency - .1      
            end
        end
        wait(2) --time to wait
        vDebounce = false
    end
end
mouse.KeyDown:connect(onKeyDown)
function Select(mouse) 
mouse.Button1Down:connect(function() Click(mouse) end) 
mouse.Button1Up:connect(function() Release(mouse) end) 
mouse.KeyDown:connect(function(key) PressKey(key, mouse) end) 
mouse.KeyUp:connect(function(key) LiftKey(key, mouse) end) 
end 
function Deselect(mouse) 
Hold = false 
Lazer = false 
Flight = false 
end 
Bin.Selected:connect(Select)
 
repeat wait() until game.Players.LocalPlayer.Character 
 
game.Players.LocalPlayer.Character.Torso.Neck.MaxVelocity = 0.3
 
function turnheads()
        while true do
                wait()
                if game.Players.LocalPlayer.Character then
                        if game.Workspace.CurrentCamera.CameraSubject == game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                                camf = Vector3.new(game.Workspace.CurrentCamera.CoordinateFrame.X,game.Workspace.CurrentCamera.CoordinateFrame.Y,game.Workspace.CurrentCamera.CoordinateFrame.Z)        
                                lv = game.Players.LocalPlayer.Character.Torso.CFrame.lookVector
                                torsop = game.Players.LocalPlayer.Character.Head.Position
                                game.Players.LocalPlayer.Character.Torso.Neck.DesiredAngle = -(((torsop - camf).Unit):Cross(lv)).Y
                        end
                end
        end
end
 
turnheads()