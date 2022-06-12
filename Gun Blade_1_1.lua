plr = game.Players.LocalPlayer
char = plr.Character
follow = false
down = false
damagewin = false
combo = 0
swordequipped = false
mode = 'gun'
db = false
equiped = false
mouse = plr:GetMouse()
getPos=function(Pos,TorsoPos)
        return Vector3.new(Pos.x,TorsoPos.y,Pos.z)
end


Turn=function(mse,Torso,Gyro)
        g.cframe=CFrame.new(Torso.Position,getPos(mse.Hit.p,Torso.Position))* CFrame.Angles(0,-7.9,0)
        offset=(Torso.Position.y-mse.Hit.p.y)/100
        mag=(Torso.Position-mse.Hit.p).magnitude/80
        offset=offset/mag
        arm=Torso:FindFirstChild("Right Shoulder")
end


--
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
--

effectOn = false
function startEff(part) --Starts a traill effect for a specified part
effectOn = true
damagewin = true
local lastPoint = part.Position
coroutine.resume(coroutine.create(function()
while effectOn do
wait()
local mag = (lastPoint - part.Position).magnitude
local p = cp(Mo, true, false, 0.2, 0.05, "Institutional white", 0.1, 0.1, mag+0.2, true)
p.Parent = char
p.CFrame = CFrame.new(lastPoint, part.Position) * CFrame.new(0, 0, -mag/2)
local msh = Instance.new("BlockMesh",p)
lastPoint = part.Position
coroutine.resume(coroutine.create(function()
for i=1, 10 do
        msh.Scale = msh.Scale + Vector3.new(-0.1, -0.1, 0)
        wait()
end
p:remove()
end))
end
end))
end

function endEff() --Ends all trail effects
effectOn = false
damagewin = false
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
--[[CREATEPART]]--
function cp(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)--Creates a part, You can change it's properties using the arguments
local p = Instance.new("Part")
p.formFactor = "Custom"
p.Anchored = Anchor
p.CanCollide = Collide
p.Transparency = Tran
p.Reflectance = Ref
p.BrickColor = BrickColor.new(Color)
for _, Surf in pairs(Surfaces) do
p[Surf] = "Smooth"
end
p.Size = Vector3.new(X, Y, Z)
if Break then
p:BreakJoints()
else p:MakeJoints() end
p.Parent = Parent
return p
end
------------------------
local mouse = plr:GetMouse()
local human = char.Humanoid
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
v.Parent = char
end
end
end



--------------------------ARM 1-----------------------------------------
local rawc = char["Right Arm"]:clone()
char["Right Arm"]:Destroy()
rawc.Parent = char
local RS = weldBetween(char.Torso, char["Right Arm"])
RS.C1 = CFrame.new(-1.5, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)
--------------------------LEG 1-----------------------------------------
--[[local rlwc = char["Right Leg"]:clone()
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
--]]
----------------------------ARM 2---------------------------------------

local lawc = char["Left Arm"]:clone()
char["Left Arm"]:Destroy()
lawc.Parent = char
local LS = weldBetween(char.Torso, char["Left Arm"])
LS.C1 = CFrame.new(1.5, 0, 0, 1, 0, 0, 0, 0.999999881, 0, 0, 0, 1)

-----------------------------HEAD----------------------------------
local head = weldBetween(char.Torso, char.Head)
-----------------------------------------------------------------------

--[[BUILDING]]--
local GunHandle  = Instance.new("Part", char)
                        GunHandle:BreakJoints()
                        GunHandle.TopSurface = "Smooth"
                        GunHandle.Name = 'GunHandle'
                        GunHandle.BottomSurface = "Smooth"
                        GunHandle.FormFactor = "Custom" GunHandle.CanCollide = false
                        GunHandle.BrickColor = BrickColor.new("Really black")
                        GunHandle.Size = Vector3.new(0.859998584, 0.280000061, 0.200000003)
                            local GunHandleweld = Instance.new("ManualWeld")
   GunHandleweld.Part0 = char["Right Arm"]
   GunHandleweld.Part1 = GunHandle  GunHandleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   GunHandleweld.C1 = CFrame.new(-0.679916859, 1.07505083, -0.670414925, 0.602217019, -0.796591759, -0.0526877679, 0.793560565, 0.604517281, -0.069427371, 0.0871559307, -5.90475224e-007, 0.996194601)
    GunHandleweld.Parent = char["Right Arm"]
                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false Extra.Transparency = 1
                        Extra.BrickColor = BrickColor.new("Really black")
                        Extra.Size = Vector3.new(0.200000003, 0.589999855, 0.229999989)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  GunHandle   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(0.362795383, 0.0779781342, -0.00500059128, 0.991097569, 0.133137852, -1.37835741e-007, -0.133137792, 0.991097331, 1.11758709e-008, 1.2293458e-007, -7.4505806e-009, 0.999999881)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false Extra.Transparency = 1
                        Extra.BrickColor = BrickColor.new("Really black")
                        Extra.Size = Vector3.new(0.200000003, 0.28000012, 0.200000003)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  GunHandle   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(0.423298717, 0.409011126, -0.00999975204, 0.944951534, 0.327210307, -4.47034836e-008, -0.327210277, 0.944951355, 1.86264515e-008, 3.7252903e-008, -2.23517418e-008, 0.999999821)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false Extra.Transparency = 1
                        Extra.BrickColor = BrickColor.new("Really black")
                        Extra.Size = Vector3.new(0.359999925, 0.289999992, 0.210000008)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  GunHandle   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(-0.501077235, -0.094645977, -0.00617027283, 0.96674186, -0.255753845, -3.33040953e-006, 0.255732179, 0.966659665, -0.0130320415, 0.0033361949, 0.0125977471, 0.999914825)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false Extra.Transparency = 1
                        Extra.BrickColor = BrickColor.new("Really black")
                        Extra.Size = Vector3.new(0.200000003, 0.28000012, 0.200000003)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  GunHandle   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(0.267832756, 0.0112096071, -0.0100011826, 0.618837774, 0.785518527, -1.49011612e-007, -0.785518587, 0.618837774, 9.86037776e-008, 1.49011612e-007, 2.98023224e-008, 0.99999994)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false Extra.Transparency = 1
                        Extra.BrickColor = BrickColor.new("Really red")
                        Extra.Size = Vector3.new(0.200000003, 3.37999749, 0.220000014)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  GunHandle   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(-0.0280203819, -2.03903341, -0.00899982452, -0.13582252, 0.990733147, 0, -0.990733147, -0.13582252, 1.08033419e-007, 8.56816769e-008, -1.49011612e-008, 0.999999821)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false Extra.Transparency = 1
                        Extra.BrickColor = BrickColor.new("Medium stone grey")
                        Extra.Size = Vector3.new(0.49800095, 3.37999773, 0.200000003)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  GunHandle   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(0.112977028, -2.02903414, -0.00900173187, -0.13582252, 0.990733147, 0, -0.990733147, -0.13582252, 1.08033419e-007, 8.56816769e-008, -1.49011612e-008, 0.999999821)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false Extra.Transparency = 1
                        Extra.BrickColor = BrickColor.new("Really black")
                        Extra.Size = Vector3.new(0.859998584, 0.280000061, 0.200000003)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  GunHandle   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(-0.230973721, -0.537735522, 1.43051147e-006, 0.191975921, -0.981399357, 2.23517418e-008, 0.981399715, 0.191975981, -1.2665987e-007, 1.08033419e-007, 2.98023224e-008, 0.99999994)
    Extraweld.Parent = Extra                
local Extra  = Instance.new("Part", char)
                        Extra:BreakJoints()
                        Extra.TopSurface = "Smooth"
                        Extra.Name = 'Extra'
                        Extra.BottomSurface = "Smooth"
                        Extra.FormFactor = "Custom" Extra.CanCollide = false Extra.Transparency = 1
                        Extra.BrickColor = BrickColor.new("Really red")
                        Extra.Size = Vector3.new(0.200000003, 0.25999999, 0.200000003)
                            local Extraweld = Instance.new("ManualWeld")
   Extraweld.Part0 =  GunHandle   Extraweld.Part1 = Extra  Extraweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Extraweld.C1 = CFrame.new(-0.64415735, -0.0841519833, -0.0109682083, 0.96674186, -0.255753845, -3.33040953e-006, 0.255732179, 0.966659665, -0.0130320415, 0.0033361949, 0.0125977471, 0.999914825)
    Extraweld.Parent = Extra                
local Damage1  = Instance.new("WedgePart", char)
                        Damage1:BreakJoints()
                        Damage1.TopSurface = "Smooth"
                        Damage1.Name = 'Damage1'
                        Damage1.BottomSurface = "Smooth"
                        Damage1.FormFactor = "Custom" Damage1.CanCollide = false
                        Damage1.BrickColor = BrickColor.new("Dark stone grey")
                        Damage1.Size = Vector3.new(3.29400015, 0.200000003, 0.200000003)
                            local Damage1weld = Instance.new("ManualWeld")
   Damage1weld.Part0 =  GunHandle   Damage1weld.Part1 = Damage1  Damage1weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Damage1weld.C1 = CFrame.new(2.09203911, -0.0608067513, 0.238359928, 0.990734696, 0.135811761, 7.4505806e-008, -1.3038516e-007, 2.38418579e-007, 0.99999994, 0.135811746, -0.990734458, 2.83122063e-007)
    Damage1weld.Parent = Damage1                
                                        local Damage1Mesh = Instance.new("SpecialMesh",Damage1)
                                        Damage1Mesh.MeshId = ""
                                        Damage1Mesh.MeshType = Enum.MeshType.Wedge                                Damage1Mesh.Name = "Mesh"
                                Damage1Mesh.Offset = Vector3.new(0, 0, 0)
                                Damage1Mesh.Scale = Vector3.new(1, 0.600000024, 1)
                                
local Damage2  = Instance.new("WedgePart", char)
                        Damage2:BreakJoints()
                        Damage2.TopSurface = "Smooth"
                        Damage2.Name = 'Damage2'
                        Damage2.BottomSurface = "Smooth"
                        Damage2.FormFactor = "Custom" Damage2.CanCollide = false
                        Damage2.BrickColor = BrickColor.new("Dark stone grey")
                        Damage2.Size = Vector3.new(3.29400015, 0.200000003, 0.200000003)
                            local Damage2weld = Instance.new("ManualWeld")
   Damage2weld.Part0 =  GunHandle   Damage2weld.Part1 = Damage2  Damage2weld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Damage2weld.C1 = CFrame.new(-2.09204006, -0.0511956215, 0.23835969, -0.990734637, -0.13581188, -1.2665987e-007, 1.78813934e-007, -1.86264515e-007, -0.999999821, 0.135811895, -0.990734458, 2.42143869e-007)
    Damage2weld.Parent = Damage2                
                                        local Damage2Mesh = Instance.new("SpecialMesh",Damage2)
                                        Damage2Mesh.MeshId = ""
                                        Damage2Mesh.MeshType = Enum.MeshType.Wedge                                Damage2Mesh.Name = "Mesh"
                                Damage2Mesh.Offset = Vector3.new(0, 0, 0)
                                Damage2Mesh.Scale = Vector3.new(1, 0.600000024, 1)
                                
local GunBlast  = Instance.new("Part", char)
                        GunBlast:BreakJoints()
                        GunBlast.TopSurface = "Smooth"
                        GunBlast.Name = 'GunBlast'
                        GunBlast.BottomSurface = "Smooth"
                        GunBlast.FormFactor = "Custom" GunBlast.CanCollide = false
                        GunBlast.BrickColor = BrickColor.new("Really black")
                        GunBlast.Size = Vector3.new(0.200000003, 0.24000001, 0.200000003)
                            local GunBlastweld = Instance.new("ManualWeld")
   GunBlastweld.Part0 =  GunHandle   GunBlastweld.Part1 = GunBlast  GunBlastweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   GunBlastweld.C1 = CFrame.new(-0.02805233, -3.63905263, -0.00900173187, -0.13582252, 0.990733147, 0, -0.990733147, -0.13582252, 1.08033419e-007, 8.56816769e-008, -1.49011612e-008, 0.999999821)
    GunBlastweld.Parent = GunBlast                
                                        local GunBlastMesh = Instance.new("CylinderMesh",GunBlast)
                                GunBlastMesh.Name = "Mesh"
                                GunBlastMesh.Offset = Vector3.new(0, 0, 0)
                                GunBlastMesh.Scale = Vector3.new(1, 1, 1)
                                
local Trail  = Instance.new("Part", char)
                        Trail:BreakJoints()
                        Trail.TopSurface = "Smooth"
                        Trail.Name = 'Trail'
                        Trail.BottomSurface = "Smooth"
                        Trail.FormFactor = "Custom" Trail.CanCollide = false
                        Trail.BrickColor = BrickColor.new("Medium stone grey")
                        Trail.Size = Vector3.new(0.49800095, 0.902997732, 0.200000003)
                            local Trailweld = Instance.new("ManualWeld")
   Trailweld.Part0 =  GunHandle   Trailweld.Part1 = Trail  Trailweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   Trailweld.C1 = CFrame.new(4.00006199, 0.0189990997, -0.0090007782, 0.990734518, 0.135812134, -7.4505806e-008, -0.13581191, 0.990734458, -3.7252903e-008, 4.84287739e-008, 0, 0.999999821)
    Trailweld.Parent = Trail                
local MainBackHandle  = Instance.new("Part", char)
                        MainBackHandle:BreakJoints()
                        MainBackHandle.TopSurface = "Smooth"
                        MainBackHandle.Name = 'MainBackHandle'
                        MainBackHandle.BottomSurface = "Smooth"
                        MainBackHandle.FormFactor = "Custom" MainBackHandle.CanCollide = false
                        MainBackHandle.BrickColor = BrickColor.new("Really black")
                        MainBackHandle.Size = Vector3.new(0.859998584, 0.280000061, 0.200000003)
                            local MainBackHandleweld = Instance.new("ManualWeld")
   MainBackHandleweld.Part0 = char["Torso"]
   MainBackHandleweld.Part1 = MainBackHandle  MainBackHandleweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   MainBackHandleweld.C1 = CFrame.new(-1.56847382, -0.116961241, -0.801148415, 0.602220416, -0.796595454, -0.052687373, 0.793558061, 0.604516923, -0.0694272742, 0.0871557966, 2.59697934e-008, 0.99619472)
    MainBackHandleweld.Parent = char["Torso"]
                
local InTheBack  = Instance.new("Part", char)
                        InTheBack:BreakJoints()
                        InTheBack.TopSurface = "Smooth"
                        InTheBack.Name = 'InTheBack'
                        InTheBack.BottomSurface = "Smooth"
                        InTheBack.FormFactor = "Custom" InTheBack.CanCollide = false
                        InTheBack.BrickColor = BrickColor.new("Really black")
                        InTheBack.Size = Vector3.new(0.200000003, 0.589999855, 0.229999989)
                            local InTheBackweld = Instance.new("ManualWeld")
   InTheBackweld.Part0 =  MainBackHandle   InTheBackweld.Part1 = InTheBack  InTheBackweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   InTheBackweld.C1 = CFrame.new(0.362790138, 0.0779769421, -0.00500106812, 0.99110657, 0.133140996, 1.00582838e-007, -0.133144215, 0.991092086, 9.68575478e-008, 9.68575478e-008, 1.34110451e-007, 1)
    InTheBackweld.Parent = InTheBack                
local InTheBack  = Instance.new("Part", char)
                        InTheBack:BreakJoints()
                        InTheBack.TopSurface = "Smooth"
                        InTheBack.Name = 'InTheBack'
                        InTheBack.BottomSurface = "Smooth"
                        InTheBack.FormFactor = "Custom" InTheBack.CanCollide = false
                        InTheBack.BrickColor = BrickColor.new("Really black")
                        InTheBack.Size = Vector3.new(0.200000003, 0.28000012, 0.200000003)
                            local InTheBackweld = Instance.new("ManualWeld")
   InTheBackweld.Part0 =  MainBackHandle   InTheBackweld.Part1 = InTheBack  InTheBackweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   InTheBackweld.C1 = CFrame.new(0.423299283, 0.409009933, -0.0100007057, 0.944957137, 0.327217668, 1.04308128e-007, -0.327223659, 0.944943845, 9.68575478e-008, 1.2293458e-007, 1.11758709e-007, 1)
    InTheBackweld.Parent = InTheBack                
local InTheBack  = Instance.new("Part", char)
                        InTheBack:BreakJoints()
                        InTheBack.TopSurface = "Smooth"
                        InTheBack.Name = 'InTheBack'
                        InTheBack.BottomSurface = "Smooth"
                        InTheBack.FormFactor = "Custom" InTheBack.CanCollide = false
                        InTheBack.BrickColor = BrickColor.new("Really black")
                        InTheBack.Size = Vector3.new(0.359999925, 0.289999992, 0.210000008)
                            local InTheBackweld = Instance.new("ManualWeld")
   InTheBackweld.Part0 =  MainBackHandle   InTheBackweld.Part1 = InTheBack  InTheBackweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   InTheBackweld.C1 = CFrame.new(-0.501068175, -0.0946481228, -0.00617218018, 0.96674937, -0.255761236, -3.21492553e-006, 0.255741835, 0.966652691, -0.0130318254, 0.00333636999, 0.0125977471, 0.999915063)
    InTheBackweld.Parent = InTheBack                
local InTheBack  = Instance.new("Part", char)
                        InTheBack:BreakJoints()
                        InTheBack.TopSurface = "Smooth"
                        InTheBack.Name = 'InTheBack'
                        InTheBack.BottomSurface = "Smooth"
                        InTheBack.FormFactor = "Custom" InTheBack.CanCollide = false
                        InTheBack.BrickColor = BrickColor.new("Really black")
                        InTheBack.Size = Vector3.new(0.200000003, 0.28000012, 0.200000003)
                            local InTheBackweld = Instance.new("ManualWeld")
   InTheBackweld.Part0 =  MainBackHandle   InTheBackweld.Part1 = InTheBack  InTheBackweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   InTheBackweld.C1 = CFrame.new(0.267831683, 0.0112081766, -0.0100002289, 0.618831515, 0.78552413, 1.2665987e-007, -0.785536408, 0.618823469, 1.49011612e-008, 1.04308128e-007, 1.1920929e-007, 1)
    InTheBackweld.Parent = InTheBack                
local InTheBack  = Instance.new("Part", char)
                        InTheBack:BreakJoints()
                        InTheBack.TopSurface = "Smooth"
                        InTheBack.Name = 'InTheBack'
                        InTheBack.BottomSurface = "Smooth"
                        InTheBack.FormFactor = "Custom" InTheBack.CanCollide = false
                        InTheBack.BrickColor = BrickColor.new("Really red")
                        InTheBack.Size = Vector3.new(0.200000003, 3.37999749, 0.220000014)
                            local InTheBackweld = Instance.new("ManualWeld")
   InTheBackweld.Part0 =  MainBackHandle   InTheBackweld.Part1 = InTheBack  InTheBackweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   InTheBackweld.C1 = CFrame.new(-0.0280046463, -2.03900051, -0.0090007782, -0.135818273, 0.990729451, 9.68575478e-008, -0.990743697, -0.135815069, -9.31322575e-008, 9.31322575e-008, 9.68575478e-008, 1)
    InTheBackweld.Parent = InTheBack                
local InTheBack  = Instance.new("Part", char)
                        InTheBack:BreakJoints()
                        InTheBack.TopSurface = "Smooth"
                        InTheBack.Name = 'InTheBack'
                        InTheBack.BottomSurface = "Smooth"
                        InTheBack.FormFactor = "Custom" InTheBack.CanCollide = false
                        InTheBack.BrickColor = BrickColor.new("Medium stone grey")
                        InTheBack.Size = Vector3.new(0.49800095, 3.37999773, 0.200000003)
                            local InTheBackweld = Instance.new("ManualWeld")
   InTheBackweld.Part0 =  MainBackHandle   InTheBackweld.Part1 = InTheBack  InTheBackweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   InTheBackweld.C1 = CFrame.new(0.112993479, -2.029001, -0.00900173187, -0.135818273, 0.990729451, 9.68575478e-008, -0.990743697, -0.135815069, -9.31322575e-008, 9.31322575e-008, 9.68575478e-008, 1)
    InTheBackweld.Parent = InTheBack                
local InTheBack  = Instance.new("Part", char)
                        InTheBack:BreakJoints()
                        InTheBack.TopSurface = "Smooth"
                        InTheBack.Name = 'InTheBack'
                        InTheBack.BottomSurface = "Smooth"
                        InTheBack.FormFactor = "Custom" InTheBack.CanCollide = false
                        InTheBack.BrickColor = BrickColor.new("Really black")
                        InTheBack.Size = Vector3.new(0.859998584, 0.280000061, 0.200000003)
                            local InTheBackweld = Instance.new("ManualWeld")
   InTheBackweld.Part0 =  MainBackHandle   InTheBackweld.Part1 = InTheBack  InTheBackweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   InTheBackweld.C1 = CFrame.new(-0.230968237, -0.537727952, 9.53674316e-007, 0.191970393, -0.981396496, -9.68575478e-008, 0.981410742, 0.191966474, 9.68575478e-008, 1.15483999e-007, 1.34110451e-007, 1)
    InTheBackweld.Parent = InTheBack                
local InTheBack  = Instance.new("Part", char)
                        InTheBack:BreakJoints()
                        InTheBack.TopSurface = "Smooth"
                        InTheBack.Name = 'InTheBack'
                        InTheBack.BottomSurface = "Smooth"
                        InTheBack.FormFactor = "Custom" InTheBack.CanCollide = false
                        InTheBack.BrickColor = BrickColor.new("Really red")
                        InTheBack.Size = Vector3.new(0.200000003, 0.25999999, 0.200000003)
                            local InTheBackweld = Instance.new("ManualWeld")
   InTheBackweld.Part0 =  MainBackHandle   InTheBackweld.Part1 = InTheBack  InTheBackweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   InTheBackweld.C1 = CFrame.new(-0.644146442, -0.084154129, -0.0109686852, 0.96674937, -0.255761236, -3.21492553e-006, 0.255741835, 0.966652691, -0.0130318254, 0.00333636999, 0.0125977471, 0.999915063)
    InTheBackweld.Parent = InTheBack                
local InTheBack  = Instance.new("WedgePart", char)
                        InTheBack:BreakJoints()
                        InTheBack.TopSurface = "Smooth"
                        InTheBack.Name = 'InTheBack'
                        InTheBack.BottomSurface = "Smooth"
                        InTheBack.FormFactor = "Custom" InTheBack.CanCollide = false
                        InTheBack.BrickColor = BrickColor.new("Dark stone grey")
                        InTheBack.Size = Vector3.new(3.29400015, 0.200000003, 0.200000003)
                            local InTheBackweld = Instance.new("ManualWeld")
   InTheBackweld.Part0 =  MainBackHandle   InTheBackweld.Part1 = InTheBack  InTheBackweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   InTheBackweld.C1 = CFrame.new(2.09200335, -0.0608072281, 0.238366365, 0.990743518, 0.135815084, 2.57045031e-007, -2.23517418e-008, -1.86264515e-007, 1, 0.135818407, -0.990729213, -3.94880772e-007)
    InTheBackweld.Parent = InTheBack                
                                        local InTheBackMesh = Instance.new("SpecialMesh",InTheBack)
                                        InTheBackMesh.MeshId = ""
                                        InTheBackMesh.MeshType = Enum.MeshType.Wedge                                InTheBackMesh.Name = "Mesh"
                                InTheBackMesh.Offset = Vector3.new(0, 0, 0)
                                InTheBackMesh.Scale = Vector3.new(1, 0.600000024, 1)
                                
local InTheBack  = Instance.new("WedgePart", char)
                        InTheBack:BreakJoints()
                        InTheBack.TopSurface = "Smooth"
                        InTheBack.Name = 'InTheBack'
                        InTheBack.BottomSurface = "Smooth"
                        InTheBack.FormFactor = "Custom" InTheBack.CanCollide = false
                        InTheBack.BrickColor = BrickColor.new("Dark stone grey")
                        InTheBack.Size = Vector3.new(3.29400015, 0.200000003, 0.200000003)
                            local InTheBackweld = Instance.new("ManualWeld")
   InTheBackweld.Part0 =  MainBackHandle   InTheBackweld.Part1 = InTheBack  InTheBackweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   InTheBackweld.C1 = CFrame.new(-2.09200335, -0.051194191, 0.238366127, -0.990743518, -0.135815084, -3.39001417e-007, 1.1920929e-007, 2.30967999e-007, -1.0000006, 0.135818407, -0.990729213, -4.09781933e-007)
    InTheBackweld.Parent = InTheBack                
                                        local InTheBackMesh = Instance.new("SpecialMesh",InTheBack)
                                        InTheBackMesh.MeshId = ""
                                        InTheBackMesh.MeshType = Enum.MeshType.Wedge                                InTheBackMesh.Name = "Mesh"
                                InTheBackMesh.Offset = Vector3.new(0, 0, 0)
                                InTheBackMesh.Scale = Vector3.new(1, 0.600000024, 1)
                                
local InTheBack  = Instance.new("Part", char)
                        InTheBack:BreakJoints()
                        InTheBack.TopSurface = "Smooth"
                        InTheBack.Name = 'InTheBack'
                        InTheBack.BottomSurface = "Smooth"
                        InTheBack.FormFactor = "Custom" InTheBack.CanCollide = false
                        InTheBack.BrickColor = BrickColor.new("Really black")
                        InTheBack.Size = Vector3.new(0.200000003, 0.24000001, 0.200000003)
                            local InTheBackweld = Instance.new("ManualWeld")
   InTheBackweld.Part0 =  MainBackHandle   InTheBackweld.Part1 = InTheBack  InTheBackweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   InTheBackweld.C1 = CFrame.new(-0.0280225277, -3.63899231, -0.0090007782, -0.135818273, 0.990729451, 9.68575478e-008, -0.990743697, -0.135815069, -9.31322575e-008, 9.31322575e-008, 9.68575478e-008, 1)
    InTheBackweld.Parent = InTheBack                
                                        local InTheBackMesh = Instance.new("CylinderMesh",InTheBack)
                                InTheBackMesh.Name = "Mesh"
                                InTheBackMesh.Offset = Vector3.new(0, 0, 0)
                                InTheBackMesh.Scale = Vector3.new(1, 1, 1)
                                
local InTheBack  = Instance.new("Part", char)
                        InTheBack:BreakJoints()
                        InTheBack.TopSurface = "Smooth"
                        InTheBack.Name = 'InTheBack'
                        InTheBack.Transparency = 1
                        InTheBack.BottomSurface = "Smooth"
                        InTheBack.FormFactor = "Custom" InTheBack.CanCollide = false
                        InTheBack.BrickColor = BrickColor.new("Medium stone grey")
                        InTheBack.Size = Vector3.new(0.49800095, 0.902997732, 0.200000003)
                            local InTheBackweld = Instance.new("ManualWeld")
   InTheBackweld.Part0 =  MainBackHandle   InTheBackweld.Part1 = InTheBack  InTheBackweld.C0 = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
   InTheBackweld.C1 = CFrame.new(3.99999452, 0.0189905167, -0.0090007782, 0.990743458, 0.135815248, 9.31322575e-008, -0.135818422, 0.990729451, 8.94069672e-008, 9.68575478e-008, 1.34110451e-007, 1)
    InTheBackweld.Parent = InTheBack                

Damage1.Transparency = 1
Damage2.Transparency = 1
Trail.Transparency = 1
GunBlast.Transparency = 1
GunHandle.Transparency = 1
--------------------------------------------


--[[ANIMATION FUNCTIONS]]--


do
        local function QuaternionFromCFrame(cf) 
                local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
                local trace = m00 + m11 + m22 
                if trace > 0 then 
                        local s = math.sqrt(1 + trace) 
                        local recip = 0.5/s 
                        return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
 
                else 
                        local i = 0 
                        if m11 > m00 then
                                i = 1 
                        end 
                        if m22 > (i == 0 and m00 or m11) then 
                                i = 2 
                        end 
                        if i == 0 then 
                                local s = math.sqrt(m00-m11-m22+1) 
                                local recip = 0.5/s 
                                return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
                        elseif i == 1 then 
                                local s = math.sqrt(m11-m22-m00+1) 
                                local recip = 0.5/s 
                                return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
                        elseif i == 2 then 
                                local s = math.sqrt(m22-m00-m11+1) 
                                local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
                        end
                end 
                end   
        
        

        local function QuaternionToCFrame(px, py, pz, x, y, z, w) 
                local xs, ys, zs = x + x, y + y, z + z 
                local wx, wy, wz = w*xs, w*ys, w*zs 
                local xx = x*xs 
                local xy = x*ys 
                local xz = x*zs 
                local yy = y*ys 
                local yz = y*zs 
                local zz = z*zs 
                return CFrame.new(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
                end   
 
        local function QuaternionSlerp(a, b, t) 
                local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
                local startInterp, finishInterp; 
                if cosTheta >= 0.0001 then 
                        if (1 - cosTheta) > 0.0001 then 
                                local theta = math.acos(cosTheta) 
                                local invSinTheta = 1/math.sin(theta) 
                                startInterp = math.sin((1-t)*theta)*invSinTheta 
                                finishInterp = math.sin(t*theta)*invSinTheta  
                        else 
                                startInterp = 1-t 
                              finishInterp = t 
                        end 
                else 
                        if (1+cosTheta) > 0.0001 then 
                                local theta = math.acos(-cosTheta) 
                                local invSinTheta = 1/math.sin(theta) 
                                startInterp = math.sin((t-1)*theta)*invSinTheta 
                                finishInterp = math.sin(t*theta)*invSinTheta 
                        else 
                                startInterp = t-1 
                                finishInterp = t 
                        end 
                end 
                return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
        end  
 
        function clerp(a,b,t) 
                local qa = {QuaternionFromCFrame(a)}
                local qb = {QuaternionFromCFrame(b)} 
                local ax, ay, az = a.x, a.y, a.z 
                local bx, by, bz = b.x, b.y, b.z  
                local _t = 1-t 
                return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
        end 
end
 

function showDamage(Damage, Parent)
        local char = Instance.new("Model", char)
        char.Name = Damage
        local h = Instance.new("Humanoid", char)
        h.Health = 0
        h.MaxHealth = 0
        local p = Instance.new("Part", char)
        p.Anchored = true
        p.Name = 'Head'
        p.FormFactor = 'Custom'
        p.CanCollide = false
        p.BrickColor = BrickColor.new("Really red")
        Instance.new("BlockMesh", p)
        p.Size = Vector3.new(0.5, 0.5, 0.5)
p.CFrame = Parent.CFrame * CFrame.new(0, 1, 0)
coroutine.resume(coroutine.create(function()
        for i=1, math.random(6, 15) do
        p.CFrame = p.CFrame * CFrame.new(0, 0.5, 0)
        wait()
        end
        wait(1)
        p:Destroy()
end))
end


 Damage1.Touched:connect(function(part)
        if damagewin == true then
                if part.Parent:findFirstChild("Humanoid") and part.Parent:findFirstChild("Head") and part.Parent ~= char then
                        if part.Parent.Head:findFirstChild(char.Name.."didDamageWithGunBlade") then
                        else
                                local dmg = math.random(10, 25)
                                part.Parent:findFirstChild("Humanoid"):TakeDamage(dmg)
                                showDamage(tostring(dmg), part.Parent.Head)
                                local m = Instance.new("Model", part.Parent:findFirstChild("Head"))
                                m.Name = (char.Name.."didDamageWithGunBlade")
                                coroutine.resume(coroutine.create(function()
                                        wait(0.07)
                                        m:Destroy()
                                end))
                        end
                end
        end
end)

Damage2.Touched:connect(function(part)
        if damagewin == true then
                if part.Parent:findFirstChild("Humanoid") and part.Parent:findFirstChild("Head") and part.Parent ~= char then
                        if part.Parent.Head:findFirstChild(char.Name.."didDamageWithGunBlade") then
                        else
                                                local dmg = math.random(10, 25)
                                part.Parent:findFirstChild("Humanoid"):TakeDamage(dmg)
                                showDamage(tostring(dmg), part.Parent.Head)
                                local m = Instance.new("Model", part.Parent:findFirstChild("Head"))
                                m.Name = (char.Name.."didDamageWithGunBlade")
                                coroutine.resume(coroutine.create(function()
                                        wait(0.07)
                                        m:Destroy()
                                end))
                        end
                end
        end
end)
 
local run = game:GetService("RunService")
 
local doing = {}



function ctween(weld,prop,cfr,time,skipwait,stopafter)
        local function doit()
                local timeused = 0
                local bgn = weld[prop]
                doing[weld] = doing[weld] or {}
                local now = tick()
                doing[weld][prop] = now
                stopafter = math.min(stopafter or time,time)
                repeat
                        local i = (tick()-now)/time
                        weld[prop] = clerp(bgn,cfr,i)
                until ((tick()-now) >= stopafter or doing[weld][prop] ~= now or not run.Stepped:wait())
                weld[prop] = cfr
return doing[weld][prop] == now
        end
        if not skipwait then return doit()
        else coroutine.wrap(doit)() end
end

                                
function fire()


        

        pcall(function()


                        local ray = Ray.new(GunBlast.CFrame.p, (mouse.Hit.p - GunBlast.CFrame.p).unit*400)
        local hit, position = game.Workspace:FindPartOnRay(ray, char)
 
        local humanoid = hit and hit.Parent and hit.Parent:FindFirstChild("Humanoid") or hit.Parent.Parent:FindFirstChild("Humanoid")
       

                 if humanoid and humanoid.Health ~= 0 then
        if hit.Name == 'Head' or hit.Name == 'Handle' then
                humanoid:TakeDamage(5000)
                showDamage('HEADSHOT!', humanoid.Parent.Head)
        else
                local dmg = math.random(21, 40)
                humanoid:TakeDamage(dmg)
                showDamage(tostring(dmg), humanoid.Parent.Head)
                end
                end
                        local distance = (position - GunBlast.CFrame.p).magnitude
        local rayPart = Instance.new("Part", char)
        rayPart.Name          = "RayPart"
        rayPart.BrickColor    = BrickColor.new("Really red")

        
        
        
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

                                                                                        

ctween(LS, 'C0', CFrame.new(-1.92999864, -0.769999623, -1.04999936, -0.0389333256, 0.867639124, -0.495677263, -0.894238949, -0.251610965, -0.370185107, -0.445902109, 0.428838819, 0.785667896) ,.1, true)
ctween(RS,  'C0', CFrame.new(-0.199999824, -0.959999442, -0.69999963, 0.260044307, 0.953789711, 0.150614113, 0.957044125, -0.275305927, 0.0910525396, 0.128308654, 0.12046577, -0.984400272), .1)

ctween(GunHandleweld, 'C0', CFrame.new(1.23999918, -1.549999, 0.889999449, 0.563136995, 0.826374352, -0.000966853462, 0.825970173, -0.562892675, -0.030742839, -0.0259466805, 0.0165129434, -0.999536097), .6, true)
ctween(RS, 'C0', CFrame.new(0.470000029, -0.959999442, -0.959999382, -0.189942151, 0.979077756, -0.0731910095, 0.981406569, 0.191463917, 0.0142595293, 0.0279740151, -0.0691197589, -0.997228205) , .6, true)
ctween(LS, 'C0',  CFrame.new(-0.819999695, -0.859999537, -0.250000119, 0.488873035, 0.814477682, -0.31247437, -0.866392732, 0.411486, -0.282935917, -0.101865083, 0.409042627, 0.906815469), .6, true)

db = true
end)
end                                
                                
                                
                                
                                function unequip()
                                        if equiped == false then
                                                equiped = true
                                                swordequipped = false
                                        for i,v in pairs(char:GetChildren()) do
                                if v.Name == 'InTheBack' then v.Transparency = 1 elseif v.Name == 'Extra' then v.Transparency = 0 end
                                        end
                                        Damage1.Transparency = 0
Damage2.Transparency = 0
Trail.Transparency = 1
GunBlast.Transparency = 0
GunHandle.Transparency = 0
                        MainBackHandle.Transparency = 1        
                        
ctween(GunHandleweld, 'C0', CFrame.new(1.23999918, -1.549999, 0.889999449, 0.563136995, 0.826374352, -0.000966853462, 0.825970173, -0.562892675, -0.030742839, -0.0259466805, 0.0165129434, -0.999536097), .3, true)
ctween(RS, 'C0', CFrame.new(0.470000029, -0.959999442, -0.959999382, -0.189942151, 0.979077756, -0.0731910095, 0.981406569, 0.191463917, 0.0142595293, 0.0279740151, -0.0691197589, -0.997228205) , .3, true)
ctween(LS, 'C0',  CFrame.new(-0.819999695, -0.859999537, -0.250000119, 0.488873035, 0.814477682, -0.31247437, -0.866392732, 0.411486, -0.282935917, -0.101865083, 0.409042627, 0.906815469), .3, true)
ctween(head, 'C0', CFrame.new(0, 0, 0, -0.104528487, 0, 0.994523168, 0, 1, 0, -0.994523168, 0, -0.104528487) , .3)
turnOnFollow()                        
                                end
                                end
                                
                                
                                function unequipz()
                                        if swordequipped == false then
                                                swordequipped = true
                                                combo = 0
                                                                                                follow = false
                                                equiped = false
                                                                                        for i,v in pairs(char:GetChildren()) do
                                if v.Name == 'InTheBack' then v.Transparency = 1 elseif v.Name == 'Extra' then v.Transparency = 0 end
                                        end
                                        Damage1.Transparency = 0
Damage2.Transparency = 0
Trail.Transparency = 1
GunBlast.Transparency = 0
GunHandle.Transparency = 0
                        MainBackHandle.Transparency = 1        
                        
                        ctween(RS, 'C0', CFrame.new(0.0899999887, -0.26000002, -0.329999954, 0.965926528, -0.258819163, -1.11758709e-008, 0.250000119, 0.933013082, -0.258819133, 0.0669873208, 0.250000119, 0.96592629), .3, true)
                        ctween(LS, 'C0', CFrame.new(-0.180000007, -0.429999858, 0, 0.951057196, 0.309017152, 0, -0.309017152, 0.951057196, 0, 0, 0, 1), .3, true)
                        ctween(head,  'C0', CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) , .3, true)
                        ctween(GunHandleweld, 'C0', CFrame.new(-0.519999802, -2.24999833, -0.879999459, 0.03886896, 0.103041813, 0.993919194, -0.754423738, -0.649217367, 0.0968083292, 0.655241787, -0.753597081, 0.0525024459) , .3)
                                        end
                                end
                                
                                mouse.KeyDown:connect(function(key)
                                        if key == 'e' then
                                unequip()
                                        elseif key == 'q' then

                                                unequipz()
                                end
                                end)
                                
                                
                                
                                mouse.Button1Down:connect(function()
                                        if equiped == true then
        if db == false then
                db = true
fire()
        wait(3)
        db = false

        end
                                        elseif swordequipped == true then
                                        if combo == 0 then        
                                                combo = 0.2
                                                ctween(head, 'C0',  CFrame.new(-0.00999999978, -0.0399999991, -0.309999973, 1, 0, 0, 0, 0.965927422, -0.258819342, 0, 0.258819342, 0.965927422), .4, true)
                        ctween(RS, 'C0', CFrame.new(-0.0500000119, 1.42999899, -0.289999992, 0.886918664, 0.152922362, -0.435886472, -0.318381906, -0.481315404, -0.816691339, -0.334685653, 0.863113403, -0.378199339)  , .4, false)
                
combo = 0.5
                                                coroutine.resume(coroutine.create(function()
                                                        wait(1)
                                                        if combo == 0.5 then
                                                                combo = 20
                                                                                                                                        ctween(RS, 'C0', CFrame.new(0.0899999887, -0.26000002, -0.329999954, 0.965926528, -0.258819163, -1.11758709e-008, 0.250000119, 0.933013082, -0.258819133, 0.0669873208, 0.250000119, 0.96592629), .3, true)
                        ctween(LS, 'C0', CFrame.new(-0.180000007, -0.429999858, 0, 0.951057196, 0.309017152, 0, -0.309017152, 0.951057196, 0, 0, 0, 1), .3, true)
                        ctween(head,  'C0', CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) , .3, true)
                        ctween(GunHandleweld, 'C0', CFrame.new(-0.519999802, -2.24999833, -0.879999459, 0.03886896, 0.103041813, 0.993919194, -0.754423738, -0.649217367, 0.0968083292, 0.655241787, -0.753597081, 0.0525024459) , .3)
                        combo = 0
                                                        end
                                                end))
                                        elseif combo == 0.5 then
                                                combo = 0.6
                                                startEff(Trail)
                                                ctween(head, 'C0', CFrame.new(-0.0799999908, -0.049999997, 0.26000005, 1, 0, 0, 0, 0.951058865, 0.309017807, 0, -0.309017807, 0.951058865), .14, true)
ctween(RS, 'C0', CFrame.new(-0.349999964, 0.449999928, -0.220000014, 0.886918664, 0.330420405, 0.32280916, -0.318381906, 0.943588853, -0.0910717472, -0.334685653, -0.0220026802, 0.942082405) , .14, false)
combo = 1
endEff()
                                                coroutine.resume(coroutine.create(function()
                                                        wait(1)
                                                        if combo == 1 then
                                                                combo = 20
                                                                                                                                        ctween(RS, 'C0', CFrame.new(0.0899999887, -0.26000002, -0.329999954, 0.965926528, -0.258819163, -1.11758709e-008, 0.250000119, 0.933013082, -0.258819133, 0.0669873208, 0.250000119, 0.96592629), .3, true)
                        ctween(LS, 'C0', CFrame.new(-0.180000007, -0.429999858, 0, 0.951057196, 0.309017152, 0, -0.309017152, 0.951057196, 0, 0, 0, 1), .3, true)
                        ctween(head,  'C0', CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) , .3, true)
                        ctween(GunHandleweld, 'C0', CFrame.new(-0.519999802, -2.24999833, -0.879999459, 0.03886896, 0.103041813, 0.993919194, -0.754423738, -0.649217367, 0.0968083292, 0.655241787, -0.753597081, 0.0525024459) , .3)
                        combo = 0
                                                        end
                                                end))
                                        elseif combo == 1 then
                                                combo = 1.1
                                                ctween(head, 'C0', CFrame.new(-0.049999997, -0.0399999991, -0.210000023, 0.898794591, 0, 0.438371301, 0.076122351, 0.984808207, -0.156073987, -0.431711763, 0.173648134, 0.885140181), .4, true)
                                                ctween(RS, 'C0',  CFrame.new(-0.129999965, -0.859999478, -0.0399999991, 0.422618717, 0.714181364, 0.557979882, 0.742404938, 0.0803284869, -0.665120661, -0.519837856, 0.695338428, -0.496262223) , .4, false)
                                                combo = 1.5
                                                coroutine.resume(coroutine.create(function()
                                                        wait(1)
                                                        if combo == 1.5 then
                                                                combo = 20
                                                                                                                                        ctween(RS, 'C0', CFrame.new(0.0899999887, -0.26000002, -0.329999954, 0.965926528, -0.258819163, -1.11758709e-008, 0.250000119, 0.933013082, -0.258819133, 0.0669873208, 0.250000119, 0.96592629), .3, true)
                        ctween(LS, 'C0', CFrame.new(-0.180000007, -0.429999858, 0, 0.951057196, 0.309017152, 0, -0.309017152, 0.951057196, 0, 0, 0, 1), .3, true)
                        ctween(head,  'C0', CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) , .3, true)
                        ctween(GunHandleweld, 'C0', CFrame.new(-0.519999802, -2.24999833, -0.879999459, 0.03886896, 0.103041813, 0.993919194, -0.754423738, -0.649217367, 0.0968083292, 0.655241787, -0.753597081, 0.0525024459) , .3)
                        combo = 0
                                                        end
                                                end))
                                        elseif combo == 1.5 then
                                                combo = 1.7
                                                startEff(Trail)
                                                ctween(head, 'C0', CFrame.new(0, 0, 0, 0.754710495, 0, -0.656059802, 0, 1, 0, 0.656059802, 0, 0.754710495), .14, true)
                                                ctween(RS, 'C0', CFrame.new(1.00999939, -1.09999931, 0.869999468, 0.422618717, -0.883083105, 0.203875676, 0.742404938, 0.466344744, 0.481002092, -0.519837856, -0.0519225299, 0.852688849), .14, false)
                                                combo = 2
                                                endEff()
                                                                                                coroutine.resume(coroutine.create(function()
                                                        wait(1)
                                                        if combo == 2 then
                                                                combo = 20
                                                                                                                                        ctween(RS, 'C0', CFrame.new(0.0899999887, -0.26000002, -0.329999954, 0.965926528, -0.258819163, -1.11758709e-008, 0.250000119, 0.933013082, -0.258819133, 0.0669873208, 0.250000119, 0.96592629), .3, true)
                        ctween(LS, 'C0', CFrame.new(-0.180000007, -0.429999858, 0, 0.951057196, 0.309017152, 0, -0.309017152, 0.951057196, 0, 0, 0, 1), .3, true)
                        ctween(head,  'C0', CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) , .3, true)
                        ctween(GunHandleweld, 'C0', CFrame.new(-0.519999802, -2.24999833, -0.879999459, 0.03886896, 0.103041813, 0.993919194, -0.754423738, -0.649217367, 0.0968083292, 0.655241787, -0.753597081, 0.0525024459) , .3)
                        combo = 0
                                                        end
                                                end))
                                        elseif combo == 2 then
                                                combo = 2.1
                                                ctween(head, 'C0' ,CFrame.new(0, -0.0199999996, -0.45999983, 1, 0, 0, 0, 0.927184403, -0.374606699, 0, 0.374606699, 0.927184403), .4, true)
                                                ctween(LS, 'C0',  CFrame.new(0.230000049, 0.749999642, -0.399999976, 0.798636436, -0.590758502, 0.11483182, -0.300908089, -0.557228029, -0.773922741, 0.521188438, 0.583528578, -0.622785985), .4, true)
                                                ctween(RS, 'C0', CFrame.new(-0.599999726, 1.02999938, -0.46999982, 0.798514605, 0.560709178, -0.219047308, 0.20911099, -0.599588096, -0.772509813, -0.564490736, 0.571055591, -0.596029818) , .4, true)
                                                ctween(GunHandleweld, 'C0', CFrame.new(-0.220000044, -2.44999814, -0.629999697, 0.532018542, 0.178678751, 0.827670097, -0.662049472, -0.5216133, 0.538165331, 0.527878523, -0.834269166, -0.159212619) , .4, false)
                                                combo = 2.5
                                                                                                coroutine.resume(coroutine.create(function()
                                                        wait(1)
                                                        if combo == 2.5 then
                                                                combo = 20
                                                                                                                                        ctween(RS, 'C0', CFrame.new(0.0899999887, -0.26000002, -0.329999954, 0.965926528, -0.258819163, -1.11758709e-008, 0.250000119, 0.933013082, -0.258819133, 0.0669873208, 0.250000119, 0.96592629), .3, true)
                        ctween(LS, 'C0', CFrame.new(-0.180000007, -0.429999858, 0, 0.951057196, 0.309017152, 0, -0.309017152, 0.951057196, 0, 0, 0, 1), .3, true)
                        ctween(head,  'C0', CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) , .3, true)
                        ctween(GunHandleweld, 'C0', CFrame.new(-0.519999802, -2.24999833, -0.879999459, 0.03886896, 0.103041813, 0.993919194, -0.754423738, -0.649217367, 0.0968083292, 0.655241787, -0.753597081, 0.0525024459) , .3)
                        combo = 0
                                                        end
                                                end))
                                        elseif combo == 2.5 then
                                                startEff(Trail)
                                                combo = 2.6
                                                ctween(head, 'C0', CFrame.new(-0.0299999993, -0.0399999991, 0.230000049, 1, 0, 0, 0, 0.987689316, 0.156434685, 0, -0.156434685, 0.987689316), .14, true)
                                                ctween(LS, 'C0', CFrame.new(0.240000054, -0.0699999034, -7.4505806e-008, 0.475038588, -0.693489909, -0.541678011, -0.0898275226, 0.574136555, -0.813823342, 0.875372171, 0.435254782, 0.210441858) , .14, true)
                                                ctween(RS, 'C0',  CFrame.new(-0.310000002, -0.23999995, -0.140000001, 0.798514605, 0.16934514, 0.577667773, 0.20911099, 0.821828723, -0.529978752, -0.564490736, 0.543992221, 0.620831072), .14, true)
                                                ctween(GunHandleweld, 'C0', CFrame.new(-0.979999363, -2.6999979, -0.599999726, -0.593809426, -0.128110632, 0.794353604, 0.237391844, -0.971200168, 0.0208286364, 0.768801928, 0.200938046, 0.607112229), .14, false)
endEff()                        
                        
                                                wait(0.1)
                                                                        ctween(RS, 'C0', CFrame.new(0.0899999887, -0.26000002, -0.329999954, 0.965926528, -0.258819163, -1.11758709e-008, 0.250000119, 0.933013082, -0.258819133, 0.0669873208, 0.250000119, 0.96592629), .3, true)
                        ctween(LS, 'C0', CFrame.new(-0.180000007, -0.429999858, 0, 0.951057196, 0.309017152, 0, -0.309017152, 0.951057196, 0, 0, 0, 1), .3, true)
                        ctween(head,  'C0', CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1) , .3, true)
                        ctween(GunHandleweld, 'C0', CFrame.new(-0.519999802, -2.24999833, -0.879999459, 0.03886896, 0.103041813, 0.993919194, -0.754423738, -0.649217367, 0.0968083292, 0.655241787, -0.753597081, 0.0525024459) , .3)
                        combo = 0
end
                                        end
                                end)
                                

                                                                
                                                                
                                                                
