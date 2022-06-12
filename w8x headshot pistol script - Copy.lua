--headshot pistol
--press E to equip

plr = game.Players.LocalPlayer
char = plr.Character
mode = 'none'

follow = false
local mouse = plr:GetMouse()
getPos=function(Pos,TorsoPos)
        return Vector3.new(Pos.x,TorsoPos.y,Pos.z)
end


getSound=function(id)
local s=Instance.new("Sound",char.Head)
s.Volume=1
s.SoundId=id
return s
end


Turn=function(mse,Torso,Gyro)
        g.cframe=CFrame.new(Torso.Position,getPos(mse.Hit.p,Torso.Position))* CFrame.Angles(0,-7.9,0)
        offset=(Torso.Position.y-mse.Hit.p.y)/100
        mag=(Torso.Position-mse.Hit.p).magnitude/80
        offset=offset/mag
        neck=Torso.Neck
        arm=Torso:FindFirstChild("Right Shoulder")
end



function turnOnFollow()
        follow = true
        coroutine.resume(coroutine.create(function()
        g=Instance.new("BodyGyro")
        g.P=18000
        g.Name = 'Gyroz'
        g.D=600
        g.maxTorque=Vector3.new(1/0,1/0,1/0)
        g.cframe=char.Torso.CFrame
        g.Parent=char.Torso
        while wait() do
                if follow == true then
                Turn(mouse,char.Torso,g)
                else
                        g:Destroy()
                        break
                        
                                end
        end
        end))
end







--[[REMOVING]]--


char.Head:ClearAllChildren()
local m = Instance.new("SpecialMesh", char.Head)
m.Scale = Vector3.new(1.25, 1.25, 1.25)

local function weldBetween(a, b)
    local weld = Instance.new("ManualWeld")
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = CFrame.new()
    weld.C1 = b.CFrame:inverse() * a.CFrame
    weld.Parent = a
    return weld;
end




--------------------------ARM 1-----------------------------------------
local rawc = char["Right Arm"]:clone()
char["Right Arm"]:Destroy()
rawc.Parent = char
local RAW = weldBetween(char.Torso, char["Right Arm"])
RAW.C1 = CFrame.new(-1.5, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)
----------------------------ARM 2---------------------------------------
local lawc = char["Left Arm"]:clone()
char["Left Arm"]:Destroy()
lawc.Parent = char
local LAW = weldBetween(char.Torso, char["Left Arm"])
LAW.C1 = CFrame.new(1.5, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)

-------------------------------------------------------------------



--[[BUILDING]]--

local Handle  = Instance.new("Part", char)
                        Handle:BreakJoints()
                        Handle.TopSurface = "Smooth"
                        Handle.Name = 'Handle'
                        Handle.BottomSurface = "Smooth"
                        Handle.FormFactor = "Custom" Handle.CanCollide = false
                        Handle.BrickColor = BrickColor.new("Medium stone grey")
                        Handle.Size = Vector3.new(1, 1.20000005, 1)
                            local Handleweld = Instance.new("ManualWeld")
   Handleweld.Part0 = char["Left Arm"]
   Handleweld.Part1 = Handle  Handleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Handleweld.C1 = CFrame.new(-0.0450940132, 1.50100136, 0.402997375, 1, -7.20473547e-009, 4.30820357e-008, 1.66450249e-008, 0.999999881, 2.74245376e-010, -4.43407409e-008, 2.74245654e-010, 1)
    Handleweld.Parent = char["Left Arm"]
                
                                        local HandleMesh = Instance.new("BlockMesh",Handle)
                                HandleMesh.Name = "BlockMesh"
                                HandleMesh.Offset = Vector3.new(0, 0, -0.0500000007)
                                HandleMesh.Scale = Vector3.new(0.300000012, 1.20000005, 0.150000006)
                                
local Move  = Instance.new("Part", char)
                        Move:BreakJoints()
                        Move.TopSurface = "Smooth"
                        Move.Name = 'Move'
                        Move.BottomSurface = "Smooth"
                        Move.FormFactor = "Custom" Move.CanCollide = false
                        Move.BrickColor = BrickColor.new("Medium stone grey")
                        Move.Size = Vector3.new(1, 1.20000005, 1)
                            local Moveweld = Instance.new("ManualWeld")
   Moveweld.Part0 =  Handle   Moveweld.Part1 = Move  Moveweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Moveweld.C1 = CFrame.new(0, -0.675000906, 0.220000267, 1, 9.44028855e-009, -1.25870514e-009, 9.44028855e-009, 1, 5.48490309e-010, -1.25870514e-009, 5.48490309e-010, 1)
    Moveweld.Parent = Move                
                                        local MoveMesh = Instance.new("SpecialMesh",Move)
                                        MoveMesh.MeshId = ""
                                        MoveMesh.MeshType = Enum.MeshType.Wedge                                MoveMesh.Name = "Mesh"
                                MoveMesh.Offset = Vector3.new(0, 0, 0)
                                MoveMesh.Scale = Vector3.new(0.300000012, 0.0799999982, 0.200000003)
                                
local Move  = Instance.new("Part", char)
                        Move:BreakJoints()
                        Move.TopSurface = "Smooth"
                        Move.Name = 'Move'
                        Move.BottomSurface = "Smooth"
                        Move.FormFactor = "Custom" Move.CanCollide = false
                        Move.BrickColor = BrickColor.new("Dark stone grey")
                        Move.Size = Vector3.new(1, 1.20000005, 1)
                            local Moveweld = Instance.new("ManualWeld")
   Moveweld.Part0 =  Handle   Moveweld.Part1 = Move  Moveweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Moveweld.C1 = CFrame.new(0, -0.168394566, -0.470785618, 1, 9.44028855e-009, -1.25870514e-009, 9.3906225e-009, 0.955336511, -0.295520216, 1.5873205e-009, 0.295520216, 0.955336511)
    Moveweld.Parent = Move                
                                        local MoveMesh = Instance.new("BlockMesh",Move)
                                MoveMesh.Name = "BlockMesh"
                                MoveMesh.Offset = Vector3.new(0, 0.0500000007, -0.100000001)
                                MoveMesh.Scale = Vector3.new(0.200000003, 0.349999994, 0.800000012)
                                
local Move  = Instance.new("Part", char)
                        Move:BreakJoints()
                        Move.TopSurface = "Smooth"
                        Move.Name = 'Move'
                        Move.BottomSurface = "Smooth"
                        Move.FormFactor = "Custom" Move.CanCollide = false
                        Move.BrickColor = BrickColor.new("Medium stone grey")
                        Move.Size = Vector3.new(1, 1.20000005, 1)
                            local Moveweld = Instance.new("ManualWeld")
   Moveweld.Part0 =  Handle   Moveweld.Part1 = Move  Moveweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Moveweld.C1 = CFrame.new(0, 0.0450925827, 0.200001717, 1, 9.44028855e-009, -1.25870514e-009, 9.44028855e-009, 1, 5.48490309e-010, -1.25870514e-009, 5.48490309e-010, 1)
    Moveweld.Parent = Move                
                                        local MoveMesh = Instance.new("BlockMesh",Move)
                                MoveMesh.Name = "BlockMesh"
                                MoveMesh.Offset = Vector3.new(0, 0, 0)
                                MoveMesh.Scale = Vector3.new(0.300000012, 1.125, 0.25)
                                
local Move  = Instance.new("Part", char)
                        Move:BreakJoints()
                        Move.TopSurface = "Smooth"
                        Move.Name = 'Move'
                        Move.BottomSurface = "Smooth"
                        Move.FormFactor = "Custom" Move.CanCollide = false
                        Move.BrickColor = BrickColor.new("Dark stone grey")
                        Move.Size = Vector3.new(1, 1.20000005, 1)
                            local Moveweld = Instance.new("ManualWeld")
   Moveweld.Part0 =  Handle   Moveweld.Part1 = Move  Moveweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Moveweld.C1 = CFrame.new(0, 0.100000381, -0.350000381, 1, 9.44028855e-009, -1.25870514e-009, 9.44028855e-009, 1, 5.48490309e-010, -1.25870514e-009, 5.48490309e-010, 1)
    Moveweld.Parent = Move                
                                        local MoveMesh = Instance.new("BlockMesh",Move)
                                MoveMesh.Name = "BlockMesh"
                                MoveMesh.Offset = Vector3.new(0, 0.0500000007, -0.100000001)
                                MoveMesh.Scale = Vector3.new(0.200000003, 0.400000006, 0.0500000007)
                                
local Move  = Instance.new("Part", char)
                        Move:BreakJoints()
                        Move.TopSurface = "Smooth"
                        Move.Name = 'Move'
                        Move.BottomSurface = "Smooth"
                        Move.FormFactor = "Custom" Move.CanCollide = false
                        Move.BrickColor = BrickColor.new("Dark stone grey")
                        Move.Size = Vector3.new(1, 1.20000005, 1)
                            local Moveweld = Instance.new("ManualWeld")
   Moveweld.Part0 =  Handle   Moveweld.Part1 = Move  Moveweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Moveweld.C1 = CFrame.new(0, 0.319999695, -0.180000305, 1, 9.44028855e-009, -1.25870514e-009, 9.44028855e-009, 1, 5.48490309e-010, -1.25870514e-009, 5.48490309e-010, 1)
    Moveweld.Parent = Move                
                                        local MoveMesh = Instance.new("BlockMesh",Move)
                                MoveMesh.Name = "BlockMesh"
                                MoveMesh.Offset = Vector3.new(0, 0.0500000007, -0.100000001)
                                MoveMesh.Scale = Vector3.new(0.200000003, 0.0500000007, 0.400000006)
                                
local Move  = Instance.new("Part", char)
                        Move:BreakJoints()
                        Move.TopSurface = "Smooth"
                        Move.Name = 'Move'
                        Move.BottomSurface = "Smooth"
                        Move.FormFactor = "Custom" Move.CanCollide = false
                        Move.BrickColor = BrickColor.new("Dark stone grey")
                        Move.Size = Vector3.new(1, 1.20000005, 1)
                            local Moveweld = Instance.new("ManualWeld")
   Moveweld.Part0 =  Handle   Moveweld.Part1 = Move  Moveweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Moveweld.C1 = CFrame.new(0.0799999237, -0.399999619, 0.329999864, 1, 9.44028855e-009, -1.25870514e-009, 9.44028855e-009, 1, 5.48490309e-010, -1.25870514e-009, 5.48490309e-010, 1)
    Moveweld.Parent = Move                
                                        local MoveMesh = Instance.new("BlockMesh",Move)
                                MoveMesh.Name = "BlockMesh"
                                MoveMesh.Offset = Vector3.new(0, 0, 0)
                                MoveMesh.Scale = Vector3.new(0.0500000007, 0.100000001, 0.100000001)
                                
local Move  = Instance.new("Part", char)
                        Move:BreakJoints()
                        Move.TopSurface = "Smooth"
                        Move.Name = 'Move'
                        Move.BottomSurface = "Smooth"
                        Move.FormFactor = "Custom" Move.CanCollide = false
                        Move.BrickColor = BrickColor.new("Dark stone grey")
                        Move.Size = Vector3.new(1, 1.20000005, 1)
                            local Moveweld = Instance.new("ManualWeld")
   Moveweld.Part0 =  Handle   Moveweld.Part1 = Move  Moveweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Moveweld.C1 = CFrame.new(-0.0799999237, -0.399999619, 0.329999864, 1, 9.44028855e-009, -1.25870514e-009, 9.44028855e-009, 1, 5.48490309e-010, -1.25870514e-009, 5.48490309e-010, 1)
    Moveweld.Parent = Move                
                                        local MoveMesh = Instance.new("BlockMesh",Move)
                                MoveMesh.Name = "BlockMesh"
                                MoveMesh.Offset = Vector3.new(0, 0, 0)
                                MoveMesh.Scale = Vector3.new(0.0500000007, 0.100000001, 0.100000001)
                                
local Move  = Instance.new("Part", char)
                        Move:BreakJoints()
                        Move.TopSurface = "Smooth"
                        Move.Name = 'Move'
                        Move.BottomSurface = "Smooth"
                        Move.FormFactor = "Custom" Move.CanCollide = false
                        Move.BrickColor = BrickColor.new("Medium stone grey")
                        Move.Size = Vector3.new(1, 1.20000005, 1)
                            local Moveweld = Instance.new("ManualWeld")
   Moveweld.Part0 =  Handle   Moveweld.Part1 = Move  Moveweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Moveweld.C1 = CFrame.new(0, -0.399999619, 0.199999809, 1, 9.44028855e-009, -1.25870514e-009, 9.44028855e-009, 1, 5.48490309e-010, -1.25870514e-009, 5.48490309e-010, 1)
    Moveweld.Parent = Move                
                                        local MoveMesh = Instance.new("BlockMesh",Move)
                                MoveMesh.Name = "BlockMesh"
                                MoveMesh.Offset = Vector3.new(0, 0, 0)
                                MoveMesh.Scale = Vector3.new(0.300000012, 1.20000005, 0.25)
                                
local Move  = Instance.new("Part", char)
                        Move:BreakJoints()
                        Move.TopSurface = "Smooth"
                        Move.Name = 'Move'
                        Move.BottomSurface = "Smooth"
                        Move.FormFactor = "Custom" Move.CanCollide = false
                        Move.BrickColor = BrickColor.new("Dark stone grey")
                        Move.Size = Vector3.new(1, 1.20000005, 1)
                            local Moveweld = Instance.new("ManualWeld")
   Moveweld.Part0 =  Handle   Moveweld.Part1 = Move  Moveweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Moveweld.C1 = CFrame.new(-0.0799999237, -0.800000906, 0.329999864, 1, 9.44028855e-009, -1.25870514e-009, 9.44028855e-009, 1, 5.48490309e-010, -1.25870514e-009, 5.48490309e-010, 1)
    Moveweld.Parent = Move                
                                        local MoveMesh = Instance.new("BlockMesh",Move)
                                MoveMesh.Name = "BlockMesh"
                                MoveMesh.Offset = Vector3.new(0, 0, 0)
                                MoveMesh.Scale = Vector3.new(0.0500000007, 0.100000001, 0.100000001)
                                
local Move  = Instance.new("Part", char)
                        Move:BreakJoints()
                        Move.TopSurface = "Smooth"
                        Move.Name = 'Move'
                        Move.BottomSurface = "Smooth"
                        Move.FormFactor = "Custom" Move.CanCollide = false
                        Move.BrickColor = BrickColor.new("Medium stone grey")
                        Move.Size = Vector3.new(1, 1.20000005, 1)
                            local Moveweld = Instance.new("ManualWeld")
   Moveweld.Part0 =  Handle   Moveweld.Part1 = Move  Moveweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Moveweld.C1 = CFrame.new(0.0799999237, -0.800000906, 0.329999864, 1, 9.44028855e-009, -1.25870514e-009, 9.44028855e-009, 1, 5.48490309e-010, -1.25870514e-009, 5.48490309e-010, 1)
    Moveweld.Parent = Move                
                                        local MoveMesh = Instance.new("BlockMesh",Move)
                                MoveMesh.Name = "BlockMesh"
                                MoveMesh.Offset = Vector3.new(0, 0, 0)
                                MoveMesh.Scale = Vector3.new(0.0500000007, 0.100000001, 0.100000001)
                                
local Move  = Instance.new("Part", char)
                        Move:BreakJoints()
                        Move.TopSurface = "Smooth"
                        Move.Name = 'Move'
                        Move.BottomSurface = "Smooth"
                        Move.FormFactor = "Custom" Move.CanCollide = false
                        Move.BrickColor = BrickColor.new("Black")
                        Move.Size = Vector3.new(1, 1.20000005, 1)
                            local Moveweld = Instance.new("ManualWeld")
   Moveweld.Part0 =  Handle   Moveweld.Part1 = Move  Moveweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Moveweld.C1 = CFrame.new(0, 0.0682066679, -0.166876644, 1, 9.44028855e-009, -1.25870514e-009, 9.00204356e-009, 0.980066597, 0.198669329, -3.10911474e-009, -0.198669329, 0.980066597)
    Moveweld.Parent = Move                
                                        local MoveMesh = Instance.new("BlockMesh",Move)
                                MoveMesh.Name = "BlockMesh"
                                MoveMesh.Offset = Vector3.new(0, 0, -0.100000001)
                                MoveMesh.Scale = Vector3.new(0.100000001, 0.0299999993, 0.200000003)
                                
local Move  = Instance.new("Part", char)
                        Move:BreakJoints()
                        Move.TopSurface = "Smooth"
                        Move.Name = 'Move'
                        Move.BottomSurface = "Smooth"
                        Move.FormFactor = "Custom" Move.CanCollide = false
                        Move.BrickColor = BrickColor.new("Dark stone grey")
                        Move.Size = Vector3.new(1, 1.20000005, 1)
                            local Moveweld = Instance.new("ManualWeld")
   Moveweld.Part0 =  Handle   Moveweld.Part1 = Move  Moveweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Moveweld.C1 = CFrame.new(0, 0.600000203, 0.329999864, 1, 9.44028855e-009, -1.25870514e-009, 9.44028855e-009, 1, 5.48490309e-010, -1.25870514e-009, 5.48490309e-010, 1)
    Moveweld.Parent = Move                
                                        local MoveMesh = Instance.new("BlockMesh",Move)
                                MoveMesh.Name = "BlockMesh"
                                MoveMesh.Offset = Vector3.new(0, 0, 0)
                                MoveMesh.Scale = Vector3.new(0.100000001, 0.100000001, 0.100000001)
                                
local Move  = Instance.new("Part", char)
                        Move:BreakJoints()
                        Move.TopSurface = "Smooth"
                        Move.Name = 'Move'
                        Move.BottomSurface = "Smooth"
                        Move.FormFactor = "Custom" Move.CanCollide = false
                        Move.BrickColor = BrickColor.new("Dark stone grey")
                        Move.Size = Vector3.new(1, 1.20000005, 1)
                            local Moveweld = Instance.new("ManualWeld")
   Moveweld.Part0 =  Handle   Moveweld.Part1 = Move  Moveweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Moveweld.C1 = CFrame.new(0, 0, 0.329999864, 1, 9.44028855e-009, -1.25870514e-009, 9.44028855e-009, 1, 5.48490309e-010, -1.25870514e-009, 5.48490309e-010, 1)
    Moveweld.Parent = Move                
                                        local MoveMesh = Instance.new("BlockMesh",Move)
                                MoveMesh.Name = "BlockMesh"
                                MoveMesh.Offset = Vector3.new(0, 0, 0)
                                MoveMesh.Scale = Vector3.new(0.100000001, 0.100000001, 0.100000001)
                                
local BlastPart  = Instance.new("Part", char)
                        BlastPart:BreakJoints()
                        BlastPart.TopSurface = "Smooth"
                        BlastPart.Name = 'BlastPart'
                        BlastPart.BottomSurface = "Smooth"
                        BlastPart.FormFactor = "Custom" BlastPart.CanCollide = false
                        BlastPart.BrickColor = BrickColor.new("Dark stone grey")
                        BlastPart.Size = Vector3.new(1, 1.20000005, 1)
                            local BlastPartweld = Instance.new("ManualWeld")
   BlastPartweld.Part0 =  Handle   BlastPartweld.Part1 = BlastPart  BlastPartweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   BlastPartweld.C1 = CFrame.new(0, 0.199999809, 0.149999619, 1, 9.44028855e-009, -1.25870514e-009, 9.44028855e-009, 1, 5.48490309e-010, -1.25870514e-009, 5.48490309e-010, 1)
    BlastPartweld.Parent = BlastPart                
                                        local BlastPartMesh = Instance.new("SpecialMesh",BlastPart)
                                        BlastPartMesh.MeshId = ""
                                        BlastPartMesh.MeshType = Enum.MeshType.Head                                BlastPartMesh.Name = "Mesh"
                                BlastPartMesh.Offset = Vector3.new(0, 0, 0)
                                BlastPartMesh.Scale = Vector3.new(0.100000001, 0.9, 0.5)
                                
                                

--

Tween = function(Weld, Stop, Step,a)
ypcall(function()
local func = function()
local Start = Weld.C1
local X1, Y1, Z1 = Start:toEulerAnglesXYZ()
local Stop = Stop
local X2, Y2, Z2 = Stop:toEulerAnglesXYZ()

for i = 0, 1, Step or .1 do
Weld.C1 = CFrame.new( (Start.p.X * (1 - i)) + (Stop.p.X * i), 
(Start.p.Y * (1 - i)) + (Stop.p.Y * i), 
(Start.p.Z * (1 - i)) + (Stop.p.Z * i)) * CFrame.fromEulerAnglesXYZ(
(X1 * (1 - i)) + (X2 * i), (Y1 * (1 - i)) + (Y2 * i),
(Z1 * (1 - i)) + (Z2 * i) )
wait()
end

Weld.C1 = Stop
end

if a then coroutine.wrap(func)() else func() end
end)
end

local shot = getSound('http://www.roblox.com/asset/?id=2760979')
shot.Volume = 0.4


mouse.KeyDown:connect(function(key)
        if key == 'e' then
                if mode ~= 'shooting' then
                mode = 'shooting'
                turnOnFollow()
                Tween(LAW, CFrame.new(-0.0599988326, 1.8599987, 0.539999783, -0.0342967249, 0.0531933941, -0.997999191, 0.999416888, 0.00151917152, -0.034264423, -0.000306034461, -0.998589158, -0.0532138087)  , .1, true)
end        
        end
end)

mouse.Button1Down:connect(function()
        
        if mode == 'shooting' then
                pcall(function()
                        local ray = Ray.new(BlastPart.CFrame.p, (mouse.Hit.p - BlastPart.CFrame.p).unit*900)
        local hit, position = game.Workspace:FindPartOnRay(ray, char)
 
        local humanoid = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid") or hit.Parent.Parent:FindFirstChild("Humanoid")
        if humanoid and humanoid.Health ~= 0 then
        
        local blood = getSound('http://www.roblox.com/asset/?id=142858160')
blood.Volume = 5
blood.Pitch = 1
blood.PlayOnRemove = true
        blood:Play()
        blood:Destroy()
        if hit.Name == 'Head' or hit.Name == 'Handle' then
                        local blood = getSound('http://www.roblox.com/asset/?id=1876552')
blood.Volume = 0.5
blood.Pitch = 1
blood.Parent = humanoid.Parent.Head
blood.PlayOnRemove = true
        blood:Play()
        blood:Destroy()
                humanoid:TakeDamage(5000)
        else
                humanoid:TakeDamage(30)
        end
            

        end
        local distance = (position - BlastPart.CFrame.p).magnitude
        local rayPart = Instance.new("Part", char)
        rayPart.Name          = "RayPart"
        rayPart.BrickColor    = BrickColor.new("Bright yellow")
        rayPart.Transparency  = 0.5
        rayPart.Anchored      = true
        rayPart.CanCollide    = false
        rayPart.TopSurface    = Enum.SurfaceType.Smooth
        rayPart.BottomSurface = Enum.SurfaceType.Smooth
        rayPart.formFactor    = Enum.FormFactor.Custom
        rayPart.Size          = Vector3.new(0.2, 0.2, distance)
        rayPart.CFrame        = CFrame.new(position, BlastPart.CFrame.p) * CFrame.new(0, 0, -distance/2)
 game.Debris:AddItem(rayPart, 0.05)

                for i=1, 1 do
                        
                local blast = Instance.new("Part", char)
                blast.Anchored = true
                blast.BrickColor = BrickColor.new("Really red")
                blast.FormFactor = 'Custom'
                blast.Size = Vector3.new(0.6,0.6,0.6)
                blast.Transparency = 0.5
                local m = Instance.new("BlockMesh", blast)
                shot:Play()
                blast.CFrame = BlastPart.CFrame* CFrame.new(0,-1,0) * CFrame.Angles(math.random(1,200),math.random(1,200),math.random(1,200))
coroutine.resume(coroutine.create(function()
        for i=1, 2 do
                m.Scale = m.Scale + Vector3.new(1, 1,1)
                wait()
                if i==2 then
                        blast:Destroy()
                end
        end
end))
wait(0.001)

                end
                end)
        end
end)
