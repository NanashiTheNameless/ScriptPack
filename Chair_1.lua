--xChair--


--[[
MODES
----------
DAMAGE = 'Q'
HAT THIEF = 'E'
BUILD = 'R'
EXPLODE = 'T'
TELEPORT = 'Z'
HEAL = 'H'
BOOST = 'F'
--]]

plr = game.Players.LocalPlayer
char = plr.Character
local mouse = plr:GetMouse()
mode = 'damage'
local human = char.Humanoid
char.Animate:Destroy()
running = false
human.Running:connect(function(speed)
        if speed <= 0 then
                running = false
        else
                running = true
        end
end)
local function weldBetween(a, b)
    local weld = Instance.new("ManualWeld")
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = CFrame.new()
    weld.C1 = b.CFrame:inverse() * a.CFrame
    weld.Parent = a
    return weld;
end

function takehats(char)
for i,v in pairs(char:GetChildren()) do
if v.ClassName == "Hat" then
v.Parent = game.Players.LocalPlayer.Character
end
end
end


char.Torso.Transparency = 1
--------------------------ARM 1-----------------------------------------
local rawc = char["Right Arm"]:clone()
char["Right Arm"]:Destroy()
rawc.Parent = char
local RAW = weldBetween(char.Torso, char["Right Arm"])
RAW.C1 = CFrame.new(-1.5, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)
--------------------------LEG 1-----------------------------------------
local rlwc = char["Right Leg"]:clone()
char["Right Leg"]:Destroy()
rlwc.Parent = char
local RLW = weldBetween(char.Torso, char["Right Leg"])
RLW.C1 = CFrame.new(-1.5, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)
--------------------------LEG 2-----------------------------------------
local llwc = char["Left Leg"]:clone()
char["Left Leg"]:Destroy()
llwc.Parent = char
local LLW = weldBetween(char.Torso, char["Left Leg"])
LLW.C1 = CFrame.new(-1.5, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)

----------------------------ARM 2---------------------------------------

local lawc = char["Left Arm"]:clone()
char["Left Arm"]:Destroy()
lawc.Parent = char
local LAW = weldBetween(char.Torso, char["Left Arm"])
LAW.C1 = CFrame.new(1.5, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)

-----------------------------HEAD----------------------------------
local heaw = weldBetween(char.Torso, char.Head)
-----------------------------------------------------------------------



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





local Seat  = Instance.new("Part", char)
                        Seat:BreakJoints()
                        Seat.TopSurface = "Smooth"
                        Seat.Name = 'Seat'
                        Seat.BottomSurface = "Smooth"
                        Seat.FormFactor = "Custom" Seat.CanCollide = false
                        Seat.BrickColor = BrickColor.new("Medium stone grey")
                        Seat.Size = Vector3.new(3.71499968, 0.77700007, 3.04400015)
                            local Seatweld = Instance.new("ManualWeld")
   Seatweld.Part0 = char["Torso"]
   Seatweld.Part1 = Seat  Seatweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Seatweld.C1 = CFrame.new(-0.436842084, 1.27730489, 0.478226662, 0.998842537, 0, 0.0480999425, 0, 1, 0, -0.0480999425, 0, 0.998842537)
    Seatweld.Parent = char["Torso"]
                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(0.568000019, 1.0990001, 0.495000124)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(1.54849625, -0.737998962, 1.29749203, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Extraweld.Parent = Extra                
                                        local ExtraMesh = Instance.new("CylinderMesh",Extra)
                                ExtraMesh.Name = "Mesh"
                                ExtraMesh.Offset = Vector3.new(0, 0, 0)
                                ExtraMesh.Scale = Vector3.new(1, 1, 1)
                                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(0.568000019, 1.0990001, 0.50300014)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(-1.5555079, -0.737998962, 1.26849937, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Extraweld.Parent = Extra                
                                        local ExtraMesh = Instance.new("CylinderMesh",Extra)
                                ExtraMesh.Name = "Mesh"
                                ExtraMesh.Offset = Vector3.new(0, 0, 0)
                                ExtraMesh.Scale = Vector3.new(1, 1, 1)
                                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(0.788000047, 0.200000048, 3.19300008)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(-1.38551331, -1.24449921, -0.0904994011, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(0.788000047, 0.200000048, 3.25000024)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(1.37048721, -1.24449921, -0.0620036125, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(3.60299969, 2.34500003, 0.918000042)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(0.0589904785, -1.5719986, -1.23900461, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(3.62799978, 0.34800005, 0.917999983)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(0.0454930663, -2.93249893, -1.23600054, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Extraweld.Parent = Extra                
                                        local ExtraMesh = Instance.new("SpecialMesh",Extra)
                                        ExtraMesh.MeshId = ""
                                        ExtraMesh.MeshType = Enum.MeshType.Torso                                ExtraMesh.Name = "Mesh"
                                ExtraMesh.Offset = Vector3.new(0, 0, 0)
                                ExtraMesh.Scale = Vector3.new(1, 1, 1)
                                
local Extra  = Instance.new("WedgePart", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(3.70700002, 0.75999999, 1.1500001)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(0.0117220879, -0.027305603, 2.04488182, 0.999991775, 0, 0.00417119637, 0, 1, 0, -0.00417116284, 0, 0.999991715)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(0.200000003, 0.921000123, 0.634000063)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(1.75548577, 0.794002533, 2.21600151, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(0.200000003, 0.921000123, 0.634000063)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(-1.68250918, 0.794002533, 2.21599579, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(0.296999991, 0.22600013, 0.634000063)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(1.80398464, 1.14150238, 2.21599388, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(0.296999991, 0.22600013, 0.634000063)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(-1.72101617, 1.14150238, 2.2159977, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(1.43400002, 0.232000113, 1.14300013)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(1.43379831, -1.95537186, 2.23299217, 0.0168066788, 0.999856353, 5.82076609e-010, -0.999856353, 0.0168066788, 6.33299351e-008, 0, 0, 1)
    Extraweld.Parent = Extra                
                                        local ExtraMesh = Instance.new("CylinderMesh",Extra)
                                ExtraMesh.Name = "Mesh"
                                ExtraMesh.Offset = Vector3.new(0, 0, 0)
                                ExtraMesh.Scale = Vector3.new(1, 1, 1)
                                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Really black")
                        Extra.Size = Vector3.new(1.43400002, 0.232000113, 0.829000115)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(1.43379307, -2.00535631, 2.23299789, 0.0168066509, 0.999854743, 5.82076609e-010, -0.999854743, 0.0168066509, 6.33299351e-008, 0, 0, 1)
    Extraweld.Parent = Extra                
                                        local ExtraMesh = Instance.new("CylinderMesh",Extra)
                                ExtraMesh.Name = "Mesh"
                                ExtraMesh.Offset = Vector3.new(0, 0, 0)
                                ExtraMesh.Scale = Vector3.new(1, 1, 1)
                                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(1.43400002, 0.200000003, 1.14300013)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(1.38780296, -1.85258067, -2.23299694, 0.0168067049, 0.999858499, 4.07453626e-010, 0.999858499, -0.0168067217, 8.94069672e-008, 8.94069672e-008, -1.46930046e-009, -1)
    Extraweld.Parent = Extra                
                                        local ExtraMesh = Instance.new("CylinderMesh",Extra)
                                ExtraMesh.Name = "Mesh"
                                ExtraMesh.Offset = Vector3.new(0, 0, 0)
                                ExtraMesh.Scale = Vector3.new(1, 1, 1)
                                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Really black")
                        Extra.Size = Vector3.new(1.43400002, 0.200000003, 0.829000115)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(1.3878001, -1.90258074, -2.23299599, 0.0168067086, 0.999858558, 9.89530236e-010, 0.999858558, -0.0168067235, 1.2665987e-007, 8.94069672e-008, -1.46930046e-009, -1)
    Extraweld.Parent = Extra                
                                        local ExtraMesh = Instance.new("CylinderMesh",Extra)
                                ExtraMesh.Name = "Mesh"
                                ExtraMesh.Offset = Vector3.new(0, 0, 0)
                                ExtraMesh.Scale = Vector3.new(1, 1, 1)
                                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(4.34100008, 0.573000073, 4.08699989)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(-0.117188454, -2.12586164, -0.534004211, 0.016806718, 0.999858737, 5.82076609e-010, -0.999858737, 0.0168067198, -1.11758709e-008, 0, 0, 1)
    Extraweld.Parent = Extra                
                                        local ExtraMesh = Instance.new("CylinderMesh",Extra)
                                ExtraMesh.Name = "Mesh"
                                ExtraMesh.Offset = Vector3.new(0, 0, 0)
                                ExtraMesh.Scale = Vector3.new(1, 1, 1)
                                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Really black")
                        Extra.Size = Vector3.new(4.34100008, 0.573000073, 3.773)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(-0.11719501, -2.17586231, -0.534002304, 0.0168067198, 0.999858797, 5.82076609e-010, -0.999858797, 0.0168067198, 0, 0, 0, 1)
    Extraweld.Parent = Extra                
                                        local ExtraMesh = Instance.new("CylinderMesh",Extra)
                                ExtraMesh.Name = "Mesh"
                                ExtraMesh.Offset = Vector3.new(0, 0, 0)
                                ExtraMesh.Scale = Vector3.new(1, 1, 1)
                                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(4.34100008, 0.573000073, 4.08699989)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(-0.117194057, -2.01313376, 0.534003735, 0.0168067031, 0.999856472, 5.82076609e-010, 0.999856472, -0.0168066565, 5.21540642e-008, 8.94069672e-008, -1.46929091e-009, -1)
    Extraweld.Parent = Extra                
                                        local ExtraMesh = Instance.new("CylinderMesh",Extra)
                                ExtraMesh.Name = "Mesh"
                                ExtraMesh.Offset = Vector3.new(0, 0, 0)
                                ExtraMesh.Scale = Vector3.new(1, 1, 1)
                                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Really black")
                        Extra.Size = Vector3.new(4.34100008, 0.573000073, 3.773)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(-0.117191076, -2.0631218, 0.534003735, 0.0168067031, 0.999856532, 5.82076609e-010, 0.999856532, -0.0168066584, 5.21540642e-008, 8.94069672e-008, -1.46929091e-009, -1)
    Extraweld.Parent = Extra                
                                        local ExtraMesh = Instance.new("CylinderMesh",Extra)
                                ExtraMesh.Name = "Mesh"
                                ExtraMesh.Offset = Vector3.new(0, 0, 0)
                                ExtraMesh.Scale = Vector3.new(1, 1, 1)
                                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Dark stone grey")
                        Extra.Size = Vector3.new(0.413999707, 0.394999981, 1.97000003)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(1.54100084, -2.53600311, -2.32900763, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false
                        Extra.BrickColor = BrickColor.new("Dark stone grey")
                        Extra.Size = Vector3.new(0.413999707, 0.394999981, 1.97000003)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  Seat   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(-1.43300843, -2.53600311, -2.32900667, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Extraweld.Parent = Extra                
local Sight1  = Instance.new("Part", char)
                        Sight1:BreakJoints()
                        Sight1.TopSurface = "Smooth"
                        Sight1.Name = 'Sight1'
                        Sight1.BottomSurface = "Smooth"
                        Sight1.FormFactor = "Custom" Sight1.CanCollide = false
                        Sight1.BrickColor = BrickColor.new("Really black")
                        Sight1.Size = Vector3.new(0.375999987, 1.13800001, 0.219000354)
                            local Sight1weld = Instance.new("ManualWeld")
   Sight1weld.Part0 =  Seat   Sight1weld.Part1 = Sight1  Sight1weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Sight1weld.C1 = CFrame.new(0.0589828193, -3.94650269, 0.53849411, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Sight1weld.Parent = Sight1                
local Pack  = Instance.new("Part", char)
                        Pack:BreakJoints()
                        Pack.TopSurface = "Smooth"
                        Pack.Name = 'Pack'
                        Pack.BottomSurface = "Smooth"
                        Pack.FormFactor = "Custom" Pack.CanCollide = false
                        Pack.BrickColor = BrickColor.new("Really black")
                        Pack.Size = Vector3.new(2.5619998, 2.32999992, 0.987000108)
                            local Packweld = Instance.new("ManualWeld")
   Packweld.Part0 =  Seat   Packweld.Part1 = Pack  Packweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Packweld.C1 = CFrame.new(0.0589860976, -1.5644989, -1.83750725, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Packweld.Parent = Pack                
local Sight  = Instance.new("Part", char)
                        Sight:BreakJoints()
                        Sight.TopSurface = "Smooth"
                        Sight.Name = 'Sight'
                        Sight.BottomSurface = "Smooth"
                        Sight.FormFactor = "Custom" Sight.CanCollide = false
                        Sight.BrickColor = BrickColor.new("Really black")
                        Sight.Size = Vector3.new(0.94599998, 0.701999962, 0.219000354)
                        Sight.Transparency = 0.7
                            local Sightweld = Instance.new("ManualWeld")
   Sightweld.Part0 =  Seat   Sightweld.Part1 = Sight  Sightweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Sightweld.C1 = CFrame.new(-0.227016628, -3.22650146, 0.538492203, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Sightweld.Parent = Sight                
local FakeTorso  = Instance.new("Part", char)
                        FakeTorso:BreakJoints()
                        FakeTorso.TopSurface = "Smooth"
                        FakeTorso.Name = 'FakeTorso'
                        FakeTorso.BottomSurface = "Smooth"
                        FakeTorso.FormFactor = "Custom" FakeTorso.CanCollide = false
                        FakeTorso.BrickColor = BrickColor.new("Really black")
                        FakeTorso.Size = Vector3.new(2, 2, 1)
                            local FakeTorsoweld = Instance.new("ManualWeld")
   FakeTorsoweld.Part0 =  Seat   FakeTorsoweld.Part1 = FakeTorso  FakeTorsoweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   FakeTorsoweld.C1 = CFrame.new(0.0261787176, -1.84207273, 0.207453251, 0.999655664, 0.0114495121, -0.0235939212, -0.00555597525, 0.971703291, 0.236139566, 0.0256299879, -0.235926434, 0.971433282)
    FakeTorsoweld.Parent = FakeTorso                
local GunStable  = Instance.new("Part", char)
                        GunStable:BreakJoints()
                        GunStable.TopSurface = "Smooth"
                        GunStable.Name = 'GunStable'
                        GunStable.BottomSurface = "Smooth"
                        GunStable.FormFactor = "Custom" GunStable.CanCollide = false
                        GunStable.BrickColor = BrickColor.new("Really black")
                        GunStable.Size = Vector3.new(0.45600003, 2.32999992, 0.370000124)
                            local GunStableweld = Instance.new("ManualWeld")
   GunStableweld.Part0 =  Seat   GunStableweld.Part1 = GunStable  GunStableweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   GunStableweld.C1 = CFrame.new(0.0589980781, -3.84950256, -2.08850527, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    GunStableweld.Parent = GunStable                
local Boostpart  = Instance.new("Part", char)
                        Boostpart:BreakJoints()
                        Boostpart.TopSurface = "Smooth"
                        Boostpart.Name = 'Boostpart'
                        Boostpart.BottomSurface = "Smooth"
                        Boostpart.FormFactor = "Custom" Boostpart.CanCollide = false
                        Boostpart.BrickColor = BrickColor.new("Really black")
                        Boostpart.Size = Vector3.new(0.413999707, 0.394999981, 0.200000003)
                            local Boostpartweld = Instance.new("ManualWeld")
   Boostpartweld.Part0 =  Seat   Boostpartweld.Part1 = Boostpart  Boostpartweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Boostpartweld.C1 = CFrame.new(-1.43300271, -2.53600311, -3.37199974, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Boostpartweld.Parent = Boostpart                
local Boostpart2  = Instance.new("Part", char)
                        Boostpart2:BreakJoints()
                        Boostpart2.TopSurface = "Smooth"
                        Boostpart2.Name = 'Boostpart2'
                        Boostpart2.BottomSurface = "Smooth"
                        Boostpart2.FormFactor = "Custom" Boostpart2.CanCollide = false
                        Boostpart2.BrickColor = BrickColor.new("Really black")
                        Boostpart2.Size = Vector3.new(0.413999707, 0.394999981, 0.200000003)
                            local Boostpart2weld = Instance.new("ManualWeld")
   Boostpart2weld.Part0 =  Seat   Boostpart2weld.Part1 = Boostpart2  Boostpart2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Boostpart2weld.C1 = CFrame.new(1.54098463, -2.53600311, -3.37200499, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    Boostpart2weld.Parent = Boostpart2                
local GunBarral  = Instance.new("Part", char)
                        GunBarral:BreakJoints()
                        GunBarral.TopSurface = "Smooth"
                        GunBarral.Name = 'GunBarral'
                        GunBarral.BottomSurface = "Smooth"
                        GunBarral.FormFactor = "Custom" GunBarral.CanCollide = false
                        GunBarral.BrickColor = BrickColor.new("Really black")
                        GunBarral.Size = Vector3.new(0.375999987, 0.352999985, 4.88500023)
                            local GunBarralweld = Instance.new("ManualWeld")
   GunBarralweld.Part0 =  Seat   GunBarralweld.Part1 = GunBarral  GunBarralweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   GunBarralweld.C1 = CFrame.new(0.0589904487, -4.68700027, -0.35300684, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    GunBarralweld.Parent = GunBarral                
local GunMag  = Instance.new("Part", char)
                        GunMag:BreakJoints()
                        GunMag.TopSurface = "Smooth"
                        GunMag.Name = 'GunMag'
                        GunMag.BottomSurface = "Smooth"
                        GunMag.FormFactor = "Custom" GunMag.CanCollide = false
                        GunMag.BrickColor = BrickColor.new("Really black")
                        GunMag.Size = Vector3.new(0.824000001, 0.654999971, 0.892000139)
                            local GunMagweld = Instance.new("ManualWeld")
   GunMagweld.Part0 =  Seat   GunMagweld.Part1 = GunMag  GunMagweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   GunMagweld.C1 = CFrame.new(0.0589942634, -4.68700027, -2.34950876, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    GunMagweld.Parent = GunMag                
local GunBlast  = Instance.new("Part", char)
                        GunBlast:BreakJoints()
                        GunBlast.TopSurface = "Smooth"
                        GunBlast.Name = 'GunBlast'
                        GunBlast.BottomSurface = "Smooth"
                        GunBlast.FormFactor = "Custom" GunBlast.CanCollide = false
                        GunBlast.BrickColor = BrickColor.new("Really black")
                        GunBlast.Size = Vector3.new(0.941999972, 0.969999969, 0.200000003)
                            local GunBlastweld = Instance.new("ManualWeld")
   GunBlastweld.Part0 =  Seat   GunBlastweld.Part1 = GunBlast  GunBlastweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   GunBlastweld.C1 = CFrame.new(0.0589976311, -4.68700027, 1.98949432, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    GunBlastweld.Parent = GunBlast                



------------------------------------------------------------------------------------------

Tween(heaw, CFrame.new(-0.413999856, -1.92999959, -0.210000008, 1, 0, 0, 0, 0.978148043, -0.207911745, 0, 0.207911745, 0.978148043) , .1, true)
Tween(RAW, CFrame.new(-1.87999964, 1.04999948, 1.06999934, 0.881515563, 0.241381884, 0.405797154, -0.467570841, 0.326720238, 0.821365237, 0.0656802952, -0.913782716, 0.400870949), .1, true)
Tween(LAW, CFrame.new(0.270001173, -1.18999922, -1.43999898, 0.788093567, 0.286842585, -0.544639528, -0.539656579, -0.103669383, -0.835481584, -0.296113938, 0.952355325, 0.0730953068), .1, true)
Tween(LLW,CFrame.new(0.120000415, -1.66999829, 0.400000453, 0.999980032, -0.00637814868, 0.000165756792, -0.000388266519, -0.0867659673, -0.996230364, 0.00636848854, 0.99620986, -0.0867666453) , .1, true)
Tween(RLW,  CFrame.new(-1.03999949, 1.54999995, -0.25000003, 0.999847949, 0.00182427373, 0.0173568055, -0.0173860081, 0.190793589, 0.981477916, -0.00152108353, -0.981630087, 0.190796345), .1, true)
boosting = false

function boost()
        if boosting == false then
                boosting = true
        
        human.WalkSpeed = 300
        coroutine.resume(coroutine.create(function()
        for i=1, 100 do
                wait(0.05)
                local p = Instance.new("Part", char)
                p.Anchored = true
                p.BrickColor = BrickColor.Random()
                p.Transparency = 0
                p.CanCollide = false
                p.FormFactor = "Custom"
                p.Name = 'Effect'
                p.Size = Vector3.new(2, 2, 2)
                p.CFrame = Boostpart.CFrame * CFrame.Angles(math.random(1,360),math.random(1,360),math.random(1,360))
                coroutine.resume(coroutine.create(function()
                        for i=1, 10 do
                                p.Transparency = p.Transparency + 0.1
                                wait()
                                if i == 10 then
                                        p:Destroy()
                                end
                        end
                end))
        end
        end))
        

        for i=1, 100 do
                wait(0.05)
                local p = Instance.new("Part", char)
                p.Anchored = true
                p.CanCollide = false
                p.BrickColor = BrickColor.Random()
                p.Transparency = 0
                p.FormFactor = "Custom"
                p.Name = 'Effect'
                p.Size = Vector3.new(2, 2, 2)
                p.CFrame = Boostpart2.CFrame * CFrame.Angles(math.random(1,360),math.random(1,360),math.random(1,360))
                coroutine.resume(coroutine.create(function()
                        for i=1, 10 do
                                p.Transparency = p.Transparency + 0.1
                                wait()
                                if i == 10 then
                                        p:Destroy()
                                end
                        end
                end))
        end
        human.WalkSpeed = 16
        wait(9)
        boosting = false
        end
end


mouse.KeyDown:connect(function(key)
        if key == "f" then
                boost()
        elseif key == 'q' then
                mode = "damage"
        elseif key == "e" then
                mode = "steel"
        elseif key == 'r' then
                mode = 'draw'
        elseif key == 't' then
                mode = 'explode'
        elseif key == 'h' then
                mode = 'heal'
        elseif key == 'z' then
                mode = 'tele'
        end
end)
function shoot()
        pcall(function()

                        local ray = Ray.new(GunBlast.CFrame.p, (mouse.Hit.p - GunBlast.CFrame.p).unit*400)
        local hit, position = game.Workspace:FindPartOnRay(ray, char)
 
        local humanoid = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid") or hit.Parent.Parent:FindFirstChild("Humanoid")
       
        if mode == "damage" then
                 if humanoid and humanoid.Health ~= 0 then
        if hit.Name == 'Head' or hit.Name == 'Handle' then
                humanoid:TakeDamage(5000)
        else
                humanoid:TakeDamage(30)
                end
        end
        elseif mode == "steel" then
                 if humanoid and humanoid.Health ~= 0 then
                takehats(humanoid.Parent)
                end
        elseif mode == 'draw' then
                local p = Instance.new("Part", workspace)
                p.Anchored = true
                p.Parent = char
                p.CFrame = CFrame.new(mouse.Hit.X, mouse.Hit.Y + 0.1, mouse.Hit.Z)
                        elseif mode == 'explode' then
                local p = Instance.new("Part", workspace)
                p.Anchored = true
                p.Parent = char
                p.CFrame = CFrame.new(mouse.Hit.X, mouse.Hit.Y + 0.1, mouse.Hit.Z)
                p.Transparency = 1
                local ex = Instance.new("Explosion", p)
                ex.Position = p.Position
        elseif mode == 'tele' then
                coroutine.resume(coroutine.create(function()
                wait(0.1)
                local p = Instance.new("Part", workspace)
                p.Anchored = true
                p.Parent = char
                p.CFrame = CFrame.new(mouse.Hit.X, mouse.Hit.Y + 0.8, mouse.Hit.Z)
                p.CanCollide = true
                p.Transparency = 1
                char.Torso.CFrame = p.CFrame
                p:Destroy()
                end))
        elseif mode == 'heal' then
                         if humanoid and humanoid.Health ~= 0 then
                humanoid.Health = humanoid.Health + 20

        end
        end
      
        local distance = (position - GunBlast.CFrame.p).magnitude
        local rayPart = Instance.new("Part", char)
        rayPart.Name          = "RayPart"
if mode == "damage" then
        rayPart.BrickColor    = BrickColor.new("Really red")
elseif mode == "steel" then
        rayPart.BrickColor    = BrickColor.new("Royal purple")
elseif mode == 'explode' then
        rayPart.BrickColor    = BrickColor.new("Bright blue")
        elseif mode == 'heal' then
rayPart.BrickColor    = BrickColor.new("Lime green")
elseif mode == 'tele' then
        rayPart.BrickColor    = BrickColor.new("Brown")
end
        rayPart.Transparency  = 0
        rayPart.Anchored      = true
        rayPart.CanCollide    = false
        rayPart.TopSurface    = Enum.SurfaceType.Smooth
        rayPart.BottomSurface = Enum.SurfaceType.Smooth
        rayPart.formFactor    = Enum.FormFactor.Custom
        rayPart.Size          = Vector3.new(0.4, 0.4, distance)
        rayPart.CFrame        = CFrame.new(position, GunBlast.CFrame.p) * CFrame.new(0, 0, -distance/2)

        local rp2 = Instance.new("Part", char)
        rp2.Name          = "RayPart"
        rp2.BrickColor    = BrickColor.new("White")
        rp2.Transparency  = 0
        rp2.Anchored      = true
        rp2.CanCollide    = false
        rp2.TopSurface    = Enum.SurfaceType.Smooth
        rp2.BottomSurface = Enum.SurfaceType.Smooth
        rp2.formFactor    = Enum.FormFactor.Custom
        rp2.Size          = Vector3.new(0.1, 0.1, distance)
        rp2.CFrame        = CFrame.new(position, GunBlast.CFrame.p) * CFrame.new(0, 0, -distance/2)
coroutine.resume(coroutine.create(function()
        for i=1, 10 do
                rayPart.Transparency = rayPart.Transparency + 0.1
                rp2.Transparency = rp2.Transparency + 0.1
                wait()
                if i == 10 then
                        rayPart:Destroy()
                        rp2:Destroy()
                end
        end
end))
end)
end


mouse.Button1Down:connect(function()
        shoot()
end)

