local _CODE = "_NSword"
 
 --==================================================-VARIABLES-==================================================--
 
local player = game:GetService("Players").LocalPlayer
local char = player.Character
local huma = char:FindFirstChild("Humanoid")
local initialized, disconnectRequest = false, false
local model,suited,use,processing,animate,gtarget,gs = false,false,false,false,false,false,true
local w,a,s,d = false,false,false,false
local bindKeyDown,bindKeyUp = false,false
local hit,trail,lighting,shirt,bin = false, false, false, false, false
local bPos, bGyro = Instance.new("BodyPosition"), Instance.new("BodyGyro")
local delete = true
local prt,_jnt,_mdl,_prt,_kup,_kdn,_mse,ms = {}
local combo = 0
local tol = 4
local mode = 0
local cfs = false
local jumping = false
local buttonDown = false
local shirtColor = "Really black"
local pantsColor = "Really black"
local attachColor = "White"
local sheathColor = "Really black"
local swordHandleColor = "New Yeller"
local gunColor = "Bright red"
local gunTakePos = nil
local defaultWalkspeed = huma.WalkSpeed
 
 --==================================================-MAIN-CODE-==================================================--
 
bPos.maxForce = Vector3.new(0,math.huge,0)
bGyro.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
 
if player == nil or char == nil then return end
 
if not player.Backpack:FindFirstChild(_CODE) then
        bin = Instance.new("HopperBin")
        bin.Name = _CODE
        bin.Parent = player:FindFirstChild("Backpack")
else bin = player.Backpack[_CODE] end
 
if bin ~= nil then
        script.Name = "_NScript"
        script.Parent = nil
end
 
local part = {
        head = char:FindFirstChild("Head"),
        tors = char:FindFirstChild("Torso"),ftor,
        larm = char:FindFirstChild("Left Arm"),
        rarm = char:FindFirstChild("Right Arm"),
        lleg = char:FindFirstChild("Left Leg"),
        rleg = char:FindFirstChild("Right Leg")}
 
local motor = {
        neck = part.tors:FindFirstChild("Neck"),
        lsho = part.tors:FindFirstChild("Left Shoulder"),
        rsho = part.tors:FindFirstChild("Right Shoulder"),
        lhip = part.tors:FindFirstChild("Left Hip"),
        rhip = part.tors:FindFirstChild("Right Hip")}
 
for i,obj in pairs(char:GetChildren()) do
        if obj:IsA("CharacterMesh") then
                obj:Destroy()
        end
end
 
function JoinInit()
        while processing do wait() end
        processing = true
        if char:FindFirstChild("Shirt") then
                shirt = char.Shirt
                shirt.Parent = nil
        end
        part.ftor = part.tors:Clone()
        part.ftor.Name = "_Torso2"
        part.ftor.BrickColor = BrickColor.new("New Yeller")
        local joint = {neck,tors,lsho,rsho,lhip,rhip}
        joint.tors = Instance.new("Weld", part.tors)
        joint.tors.Name = "Torso_WELD"
        joint.tors.Part0 = part.tors
        joint.tors.Part1 = part.ftor
        part.ftor.Parent = char
        part.tors.Transparency = 1
        for i,join in pairs (motor) do
                local weld
                if not join.Parent:FindFirstChild(join.Name.."_WELD") then
                        weld = Instance.new("Weld", join.Parent)
                        weld.Name = join.Name.."_WELD"
                else weld = join.Parent[join.Name.."_WELD"] end
                if tostring(i) == "lsho" then
                        weld.C0 = CFrame.new(-1.5,0.5,0)
                        weld.C1 = CFrame.new(0,0.5,0)
                elseif tostring(i) == "rsho" then
                        weld.C0 = CFrame.new(1.5,0.5,0)
                        weld.C1 = CFrame.new(0,0.5,0)
                elseif tostring(i) == "neck" then
                        weld.C0 = CFrame.new(0,1,0)
                        weld.C1 = CFrame.new(0,-0.5,0)
                else
                        weld.C0 = join.C0
                        weld.C1 = join.C1
                end
                weld.Part1 = join.Part1
                if tostring(i) ~= "neck" then
                        join.Part0 = part.ftor
                else
                        weld.Part0 = part.ftor
                end
                joint[i] = weld
        end
        initialized = true
        processing = false
        return joint
end
 
function Bind(join)
        if join == nil then return end
        if _jnt == nil then return end
        if part.ftor == nil then return end
        if not _jnt[join]:IsA("Weld") then return end
        if not motor[join]:IsA("Motor6D") then return end
        motor[join].Part0 = nil
        _jnt[join].Part0 = part.ftor
end
 
function Release(join)
        if join == nil then return end
        if _jnt == nil then return end
        if part.ftor == nil then return end
        if not _jnt[join]:IsA("Weld") then return end
        if not motor[join]:IsA("Motor6D") then return end
        _jnt[join].Part0 = nil
        motor[join].Part0 = part.ftor
end
 
function SuitInit()
        while processing do wait() end
        processing = true
        if initialized then
                local suitModel
                if not char:FindFirstChild(_CODE.." Suit") then
                        suitModel = Instance.new("Model", char)
                        suitModel.Name = _CODE.." Suit"
                        model = true
                else suitModel = char[_CODE.." Suit"] model = true end
                processing = false
                return suitModel
        else processing = false end
end
 
function CF(join,cf,rot,speed,ctin,s)
        if s and cfs then ctin = true animate = false return end
        if join == nil then return end
        local def,done = join.C0,false
        local cf = cf or def
        local rot = rot or (def - def.p)
        local speed = speed or 1
        local x1,y1,z1 = def:toEulerAnglesXYZ()
        local x2,y2,z2 = rot:toEulerAnglesXYZ()
        coroutine.wrap(function()
                if speed ~= 1 then
                        for i = 0,1,speed do
                                if s and cfs then ctin = true animate = false return end
                                join.C0 = CFrame.new(
                                        (def.p.X * (1 - i) + cf.p.X * i),
                                        (def.p.Y * (1 - i) + cf.p.Y * i),
                                        (def.p.Z * (1 - i) + cf.p.Z * i)) *
                                CFrame.fromEulerAnglesXYZ(
                                        (x1 * (1 - i) + x2 * i),
                                        (y1 * (1 - i) + y2 * i),
                                        (z1 * (1 - i) + z2 * i))
                                wait(0.015)
                        end
                end if s and cfs then ctin = true animate = false else join.C0 = CFrame.new(cf.p) * CFrame.fromEulerAnglesXYZ(x2,y2,z2) end done = true
        end)()
        if not ctin and speed ~= 1 then while not done do wait(0.015) end end
end
 
function CreatePart(tab, name, color, transparency, reflectance, size, cframe, rotation, cancollide, anchored, meshType, scaleSize, weldPart, parent)
        if model and _mdl ~= nil and part.ftor ~= nil then
                local returnTable = {part,weld}
                if scaleSize == nil then scaleSize = false end
                local suitPart = Instance.new("Part")
                suitPart.Name = name
                suitPart.BrickColor = BrickColor.new(color)
                suitPart.Anchored = anchored
                suitPart.Locked = true
                suitPart.CanCollide = cancollide
                suitPart.Transparency = transparency
                suitPart.Reflectance = reflectance
                suitPart.FormFactor = Enum.FormFactor.Custom
                suitPart.BottomSurface = "Smooth"
                suitPart.TopSurface = "Smooth"
                suitPart.Size = size
                if meshType ~= nil then
                        if meshType == "Cone" then
                                CreateMesh("http://www.roblox.com/asset/?id=1033714", suitPart, scaleSize)
                        elseif meshType == "Corner" then
                                CreateMesh("http://www.roblox.com/asset/?id=11294911", suitPart, scaleSize)
                        elseif meshType == "Devo" then
                                CreateMesh("http://www.roblox.com/asset/?id=15720044", suitPart, scaleSize)
                        elseif meshType == "Diamond" then
                                CreateMesh("http://www.roblox.com/asset/?id=9756362", suitPart, scaleSize)
                        elseif meshType == "Ring" then
                                CreateMesh("http://www.roblox.com/asset/?id=3270017", suitPart, scaleSize)
                        elseif meshType == "Tetrahedron" then
                                CreateMesh("http://www.roblox.com/asset/?id=11294922", suitPart, scaleSize)
                        elseif meshType == "Crown" then
                                CreateMesh("http://www.roblox.com/asset/?id=20329976", suitPart, scaleSize)
                        elseif meshType == "Claws" then
                                CreateMesh("http://www.roblox.com/asset/?id=10681506", suitPart, scaleSize)
                        elseif meshType == "Cylinder" then
                                local mesh = Instance.new("CylinderMesh", suitPart)
                                if scaleSize then mesh.Scale = suitPart.Size end
                        elseif meshType == "Brick" then
                                local mesh = Instance.new("BlockMesh", suitPart)
                                if scaleSize then mesh.Scale = suitPart.Size end
                        else
                                local mesh = Instance.new("SpecialMesh", suitPart)
                                if scaleSize then mesh.Scale = suitPart.Size end
                                mesh.MeshType = meshType
                        end
                end
                if weldPart == nil then suitPart.CFrame = cframe * rotation else
                local weld = Instance.new("Weld", _mdl)
                weld.Part1 = suitPart
                weld.Part0 = weldPart
                weld.Name = tostring(weld.Part0).."_TO_"..tostring(weld.Part1)
                weld.C0 = cframe * rotation
                returnTable.weld = weld
                end
                returnTable.part = suitPart
                suitPart.Parent = parent or _mdl
                if tab ~= nil then tab[name] = returnTable else return returnTable end
        end
end
 
function CreateMesh(id, part, scaleSize)
        local mesh = Instance.new("SpecialMesh", part)
        if scaleSize then mesh.Scale = part.Size end
        mesh.MeshType = Enum.MeshType.FileMesh
        mesh.MeshId = id
        return mesh
end
 
function LoadSuit()
        while processing do wait() end
        processing = true
        if not suited then
                CreatePart(prt, "torso_1", shirtColor, 0, 0, Vector3.new(2.015,2.11,1.015), CFrame.new(0,-0.04,0), CFrame.Angles(0,0,0),false,false, "Brick",false,part.ftor)
                CreatePart(prt, "torso_2", attachColor, 0, 0, Vector3.new(2.70,0.2,1.06), CFrame.new(-0.05,0.125,0), CFrame.Angles(0,0,math.rad(45)),false,false, "Brick",false,prt.torso_1.part)
                CreatePart(prt, "torso_3", attachColor, 0, 0, Vector3.new(2.15,0.2,1.06), CFrame.new(-0.025,-0.9,0), CFrame.Angles(0,0,math.rad(-2)),false,false, "Brick",false,prt.torso_1.part)
                CreatePart(prt, "torso_4", "Really red", 0, 1, Vector3.new(0.3,0.2,0.3), CFrame.new(0.6,0,-0.45), CFrame.Angles(math.rad(90),0,0),false,false, "Cylinder",false,prt.torso_3.part)
                CreatePart(prt, "arm_1", shirtColor, 0, 0, Vector3.new(1.015,0.8,1.015), CFrame.new(0,0.615,0), CFrame.Angles(0,0,0),false,false, "Brick",false,part.rarm)
                CreatePart(prt, "arm_2", shirtColor, 0, 0, Vector3.new(1.015,1.6,1.015), CFrame.new(0,0.215,0), CFrame.Angles(0,0,0),false,false, "Brick",false,part.larm)
                CreatePart(prt, "sheath_1", sheathColor, 0, 0, Vector3.new(0.425,4.5,0.2), CFrame.new(-0.25,0,0.63), CFrame.Angles(0,0,math.rad(-90)),false, false,"Brick", false, prt.torso_2.part)
                CreatePart(prt, "sheath_2", sheathColor, 0, 0,Vector3.new(0.21,0.6,0.415),CFrame.new(0,-2.55,0),CFrame.Angles(0,math.rad(90),math.rad(180)),false,false,"Wedge",false,prt.sheath_1.part)
                CreatePart(prt, "sheath_3", "Really red", 0, 0,Vector3.new(0.25,0.6,0.2),CFrame.new(0,1.8,0.05),CFrame.Angles(0,0,0),false,false,"Diamond",true,prt.sheath_1.part)
                CreatePart(prt, "sheath_4", "New Yeller", 0, 0.3,Vector3.new(0.2,0.6,0.2),CFrame.new(0,1.3,0.1),CFrame.Angles(0,0,math.rad(27)),false,false,"Brick",true,prt.sheath_1.part)
                CreatePart(prt, "sheath_5", "Really red", 0, 0.3,Vector3.new(0.2,0.6,0.2),CFrame.new(0,1.1,0.1),CFrame.Angles(0,0,math.rad(27)),false,false,"Brick",true,prt.sheath_1.part)
                CreatePart(prt, "sheath_6", "New Yeller", 0, 0.3,Vector3.new(0.2,0.6,0.2),CFrame.new(0,0.9,0.1),CFrame.Angles(0,0,math.rad(27)),false,false,"Brick",true,prt.sheath_1.part)
                CreatePart(prt, "sheath_7", "Really red", 0, 0,Vector3.new(0.2,2,0.2),CFrame.new(0.2,0,0),CFrame.Angles(0,0,0),false,false,"Brick",true,prt.sheath_1.part)
                CreatePart(prt, "sheath_8", "Really red", 0, 0,Vector3.new(0.2,2,0.2),CFrame.new(-0.2,0,0),CFrame.Angles(0,0,0),false,false,"Brick",true,prt.sheath_1.part)
                CreatePart(prt, "sheath_9", "Really red", 0, 0,Vector3.new(0.2,0.72,0.2),CFrame.new(0.09,2.0125,0.13),CFrame.Angles(math.rad(35),0,-math.rad(20)),false,false,"Brick",true,prt.sheath_7.part)
                CreatePart(prt, "sheath_10", "Really red", 0, 0,Vector3.new(0.2,0.72,0.2),CFrame.new(-0.09,2.0125,0.13),CFrame.Angles(math.rad(35),0,math.rad(20)),false,false,"Brick",true,prt.sheath_8.part)
                CreatePart(prt, "sheath_11", "Really red", 0, 1,Vector3.new(0.25,0.425,0.25),CFrame.new(0,0.085,0),CFrame.Angles(0,0,0),false,false,"Brick",true,prt.sheath_9.part)
                CreatePart(prt, "sheath_12", "Really red", 0, 1,Vector3.new(0.25,0.425,0.25),CFrame.new(0,0.085,0),CFrame.Angles(0,0,0),false,false,"Brick",true,prt.sheath_10.part)
                CreatePart(prt, "sheath_13", "Really red", 0, 1,Vector3.new(0.2,0.7,0.2),CFrame.new(0,0,0),CFrame.Angles(math.rad(-145),0,0),false,false,"Brick",true,prt.sheath_2.part)
                 CreatePart(prt, "sheath_14", "Really red", 0, 1,Vector3.new(0.2,1.11,0.2),CFrame.new(0.072,-0.025,0.1),CFrame.Angles(0,0,0),false,false,"Brick",true,prt.sheath_1.part)
                CreatePart(prt, "gunsheath_1", sheathColor, 0, 0, Vector3.new(0.5,0.9,0.7), CFrame.new(1.2,-0.2,0), CFrame.Angles(math.rad(-20),0,0),false, false,"Brick",true,prt.torso_3.part)
                CreatePart(prt, "gunsheath_2", "Really red", 0, 1, Vector3.new(0.3,0.2,0.3), CFrame.new(0.1,0.2,-0.225), CFrame.Angles(0,0,0),false,false, "Brick",true,prt.gunsheath_1.part)
                CreatePart(prt, "gunsheath_3", "Really red", 0, 1, Vector3.new(0.3,0.2,0.3), CFrame.new(0,-0.1,0), CFrame.Angles(0,0,0),false,false, "Brick",true,prt.gunsheath_2.part)
                CreatePart(prt, "gunsheath_4", "Really red", 0, 1, Vector3.new(0.3,0.2,0.3), CFrame.new(0,-0.1,0), CFrame.Angles(0,0,0),false, false,"Brick",true,prt.gunsheath_3.part)
                CreatePart(prt, "gun_1", gunColor, 0, 0, Vector3.new(0.4,0.775,0.5), CFrame.new(0,0.6,0.15), CFrame.Angles(math.rad(-105),0,0),false, false,"Brick",true,prt.gunsheath_1.part)
                CreatePart(prt, "gun_2", gunColor, 0, 0, Vector3.new(0.4,0.5,0.9), CFrame.new(0,0.2,-0.275), CFrame.Angles(math.rad(15),0,0),false, false,"Brick",true,prt.gun_1.part)
                CreatePart(prt, "gun_3", gunColor, 0, 0, Vector3.new(0.4,0.45,0.55), CFrame.new(0,0.1,0.26), CFrame.Angles(0,0,0),false, false,"Brick",true,prt.gun_2.part)
                CreatePart(prt, "gun_4", "Really red", 0, 1, Vector3.new(0.3,0.4,0.55), CFrame.new(0,0,-0.3), CFrame.Angles(0,0,0),false, false,"Brick",true,prt.gun_3.part)
                CreatePart(prt, "gun_5", gunColor, 0, 0, Vector3.new(0.4,0.45,0.6), CFrame.new(0,0,-0.55), CFrame.Angles(0,0,0),false,false, "Brick",true,prt.gun_3.part)
                CreatePart(prt, "gun_6", gunColor, 0, 0, Vector3.new(0.4,0.45,0.2), CFrame.new(0,0,-0.22), CFrame.Angles(0,0,0),false, false,"Brick",true,prt.gun_3.part)
                CreatePart(prt, "gun_7", gunColor, 0, 0, Vector3.new(0.4,0.45,0.2), CFrame.new(0,0,-0.3), CFrame.Angles(0,0,0),false, false,"Brick",true,prt.gun_3.part)
                CreatePart(prt, "gun_8", gunColor, 0, 0, Vector3.new(0.2,0.2,0.5), CFrame.new(0,-0.25,0.18), CFrame.Angles(0,0,0),false,false, "Brick",true,prt.gun_2.part)
                CreatePart(prt, "gun_9", gunColor, 0, 0, Vector3.new(0.2,0.2,0.5), CFrame.new(0,0.105,-0.105), CFrame.Angles(math.rad(90),0,0),false,false, "Brick",true,prt.gun_8.part)
                CreatePart(prt, "gun_10", gunColor, 0, 0, Vector3.new(0.2,0.2,0.5), CFrame.new(0,0.1725,-0.03), CFrame.Angles(math.rad(90),0,0),false,false, "Brick",true,prt.gun_8.part)
                CreatePart(prt, "gunbullet", "New Yeller", 0, 0, Vector3.new(0.325,0.2,0.325), CFrame.new(0,0,-0.42), CFrame.Angles(math.rad(90),0,0),false,false, "Cylinder",true,prt.gun_7.part)
                CreatePart(prt, "gunpointer", "Really red", 0, 0, Vector3.new(0.275,0.2,0.275), CFrame.new(0,-0.065,-0.39), CFrame.Angles(math.rad(90),0,0),false,false, "Cylinder",true,prt.gun_2.part)
                CreatePart(prt, "sword_1", swordHandleColor, 0, 0, Vector3.new(0.4,0.9,0.35), CFrame.new(0,2.715,0), CFrame.Angles(0,0,0),false,false, "Brick",true,prt.sheath_1.part)
                CreatePart(prt, "sword_2", "New Yeller", 0, 0, Vector3.new(0.5,2.135,0.25), CFrame.new(0,-2.68,0), CFrame.Angles(0,0,0),false,false, "Brick",true,prt.sword_1.part)
                CreatePart(prt, "sword_3", "New Yeller", 0, 0, Vector3.new(0.25,0.55,0.5), CFrame.new(0,-5.1,0), CFrame.Angles(0,math.rad(90),math.rad(180)),false,false,"Wedge",true,prt.sword_1.part)
                CreatePart(prt, "sword_4", "New Yeller", 0, 0, Vector3.new(0.9,0.3,0.55), CFrame.new(0,-0.4,0), CFrame.Angles(0,0,0),false, false,"Diamond",true,prt.sword_1.part)
                CreatePart(prt, "sword_5", "New Yeller", 1, 0, Vector3.new(1.8,4.4,0.2), CFrame.new(0.7,0,0), CFrame.Angles(0,0,0),false, false,"Brick",false,prt.sword_2.part)
                CreatePart(prt, "sword_6", "Really red", 0, 0, Vector3.new(0.2,1.7,0.3), CFrame.new(0,-1.5,0), CFrame.Angles(0,0,0),false,false, "Brick",true,prt.sword_1.part)
        elseif prt.torso_1 ~= nil then prt.torso_1.weld.Part0 = part.ftor end
        suited = true
        processing = false
        return prt
end -- +7
 
function Trail(val)
        if not _prt.sword_1.part then return end
        trail = val
        if trail then
                coroutine.wrap(function()
                        local last = _prt.sword_3.part.CFrame.p
                        while use and trail and _prt.sword_3.part ~= nil do wait(.02)
                                local new = _prt.sword_3.part.CFrame.p
                                local mag = (last - new).magnitude
                                local pos = CFrame.new(last, new) * CFrame.Angles(math.rad(-90), 0, 0)
                                local trl = Instance.new("Part")
                                local msh = Instance.new("CylinderMesh", trl)
                                trl.Name = "NSword_TRAIL"
                                trl.Anchored = true
                                trl.Locked = true
                                trl.CanCollide = false
                                trl.FormFactor = Enum.FormFactor.Custom
                                trl.BrickColor = BrickColor.new("New Yeller")
                                trl.Transparency = 0.3
                                trl.Size = Vector3.new(0.2, mag, 0.2)
                                msh.Scale = Vector3.new(1.8, 1, 1.8)
                                trl.CFrame = pos * CFrame.new(0,mag/2,0)
                                trl.Parent = game.Workspace
                                coroutine.wrap(function() for i = trl.Transparency, 1, .05 do trl.Transparency = i msh.Scale = msh.Scale - Vector3.new(.15, 0, .15) wait(.02) end pcall(function() trl:Destroy() end) end)()
                                last = _prt.sword_3.part.CFrame.p
                        end
                end)()
        end
end
 
function LightingGen(init,target,ran,delay,size,damage)
        local CL = function()
                local lght = Instance.new("Part")
                local msh = Instance.new("CylinderMesh", lght)
                local size = size or .3
                msh.Scale = Vector3.new(size,1,size)
                lght.Name = "NSword_LIGHT"
                lght.Anchored = true
                lght.Locked = true
                lght.CanCollide = false
                lght.Reflectance = 0
                lght.FormFactor = Enum.FormFactor.Custom
                lght.BrickColor = BrickColor.new("Really red")
                lght.Transparency = 0.5
                lght.Parent = char
                return lght
        end
        local delay, cPos = delay or .03
        local rand = Vector3.new(math.random(-ran,ran)/10, math.random(-ran,ran)/10, math.random(-ran,ran)/10)
        local mPos = (init - target).magnitude
        local dLgt = math.random(1,5)
        local dLgt = dLgt/10
        local rVec = init + (target - init) * dLgt
        local dVec = rVec - init
        local gPos = CFrame.new(init, rVec + rand) * CFrame.Angles(math.rad(-90), 0, 0)
        local rMag = (init - rVec + rand).magnitude
        for i = dLgt, 1 - dLgt, dLgt do
                local cPrt = CL()
                cPrt.Size = Vector3.new(.2,rMag,.2)
                cPrt.CFrame = gPos * CFrame.new(0,rMag/2,0)
                cPos = gPos * CFrame.new(0,rMag,0)
                print("TEST")
                cPrt.Touched:connect(function(targ) print(targ:GetFullName())
                        if targ.Parent:FindFirstChild("Humanoid") or targ.Parent:FindFirstChild("Zombie") then
                                if game.Players:GetPlayerFromCharacter(targ.Parent) ~= player then
                                        print(targ:GetFullName())
                                        local humanoid = targ.Parent.Humanoid or targ.Parent.Zombie
                                        local dmg = damage or 10
                                        humanoid.Health = humanoid.Health - dmg
                                end
                        end
                end)
                coroutine.wrap(function() wait(delay) pcall(function() cPrt:Destroy() end) end)()
                if i <= 1 - dLgt * 2 then
                        rVec = init + (target - init) * (i + dLgt)
                        rand = Vector3.new(math.random(-ran,ran)/10, math.random(-ran,ran)/10, math.random(-ran,ran)/10)
                        gPos = CFrame.new(cPos.p, rVec + rand) * CFrame.Angles(math.rad(-90), 0, 0)
                        rMag = (cPos.p - rVec + rand).magnitude
                end
        end
        gPos = CFrame.new(cPos.p, target) * CFrame.Angles(math.rad(-90), 0, 0)
        rMag = (cPos.p - target).magnitude
        local cPrt = CL()
        cPrt.Size = Vector3.new(.2,rMag,.2)
        cPrt.CFrame = gPos * CFrame.new(0,rMag/2,0)
        cPrt.Touched:connect(function(targ) print(targ:GetFullName())
                if targ.Parent:FindFirstChild("Humanoid") or targ.Parent:FindFirstChild("Zombie") then
                        if game.Players:GetPlayerFromCharacter(targ.Parent) ~= player then
                                print(targ:GetFullName())
                                local humanoid = targ.Parent.Humanoid or targ.Parent.Zombie
                                local dmg = damage or 10
                                humanoid.Health = humanoid.Health - dmg
                        end
                end
        end)
        coroutine.wrap(function() wait(delay) pcall(function() cPrt:Destroy() end) end)()
end
 
function SwordEquip(force)
        if processing and not force then return end
        processing,cfs = true,true
        if suited then
                Bind("rsho")
                CF(_jnt.rsho, nil, CFrame.Angles(0, 0, math.rad(90)), .05, true)
                CF(_prt.sword_1.weld, CFrame.new(0,4.5,0), nil, .05, true)
                for i = 0, 1, .05 do
                        _prt.sword_1.part.Transparency = i
                        _prt.sword_2.part.Transparency = i
                        _prt.sword_3.part.Transparency = i
                        _prt.sword_4.part.Transparency = i
                        _prt.sword_6.part.Transparency = i
                        wait(.015)
                end
                _prt.sword_1.part.Transparency = 1
                _prt.sword_2.part.Transparency = 1
                _prt.sword_3.part.Transparency = 1
                _prt.sword_4.part.Transparency = 1
                _prt.sword_6.part.Transparency = 1
                _prt.sword_1.weld.Part0 = part.rarm
                CF(_prt.sword_1.weld, CFrame.new(0, -1, -0.25), CFrame.Angles(0, math.rad(90), 0))
                for i = 0, 1, .05 do
                        _prt.sword_1.part.Transparency = 1 - i
                        _prt.sword_2.part.Transparency = 1 - i
                        _prt.sword_3.part.Transparency = 1 - i
                        _prt.sword_4.part.Transparency = 1 - i
                        _prt.sword_6.part.Transparency = 1 - i
                        wait(.015)
                end
                _prt.sword_1.part.Transparency = 0
                _prt.sword_2.part.Transparency = 0
                _prt.sword_3.part.Transparency = 0
                _prt.sword_4.part.Transparency = 0
                Bind("lsho")
                huma.WalkSpeed = 50
                CF(_jnt.lsho, nil, CFrame.Angles(0, 0, math.rad(-5)), .07, true)
                CF(_prt.sword_1.weld, nil, CFrame.Angles(math.rad(90), math.rad(90), 0), .07, true)
                CF(_jnt.rsho, nil, CFrame.Angles(0, 0, math.rad(5)), .07)
        end
        mode,processing,cfs = 1, false, false
        Walk()
end
 
function SwordUnequip(force)
        if processing and not force then return end
        processing,cfs = true,true
        if suited then
                CF(_jnt.neck, nil, CFrame.Angles(0, 0, 0), .2, true)
                CF(_jnt.tors, nil, CFrame.Angles(0, 0, 0), .2, true)
                CF(_jnt.lsho, CFrame.new(-1.5,0.5,0), CFrame.Angles(0, 0, math.rad(-5)), .2, true)
                CF(_jnt.rsho, nil, CFrame.Angles(math.rad(100), math.rad(90), 0), .07)
                Trail(true)
                CF(_prt.sword_1.weld, nil, CFrame.Angles(0, math.rad(90), 0), .15, true)
                CF(_jnt.rsho, nil, CFrame.Angles(0, 0, math.rad(90)), .15)
                Trail(false)
                for i = 0, 1, .05 do
                        _prt.sword_1.part.Transparency = i
                        _prt.sword_2.part.Transparency = i
                        _prt.sword_3.part.Transparency = i
                        _prt.sword_4.part.Transparency = i
                        _prt.sword_6.part.Transparency = i
                        wait(.015)
                end
                _prt.sword_1.part.Transparency = 1
                _prt.sword_2.part.Transparency = 1
                _prt.sword_3.part.Transparency = 1
                _prt.sword_4.part.Transparency = 1
                _prt.sword_6.part.Transparency = 1
                _prt.sword_1.weld.Part0 = _prt.sheath_1.part
                CF(_prt.sword_1.weld, CFrame.new(0, 4.5, 0), CFrame.Angles(0, 0, 0))
                CF(_prt.sword_1.weld, CFrame.new(0,2.715,0), CFrame.Angles(0, 0, 0), .05, true)
                for i = 0, 1, .05 do
                        _prt.sword_1.part.Transparency = 1 - i
                        _prt.sword_2.part.Transparency = 1 - i
                        _prt.sword_3.part.Transparency = 1 - i
                        _prt.sword_4.part.Transparency = 1 - i
                        _prt.sword_6.part.Transparency = 1 - i
                        wait(.015)
                end
                _prt.sword_1.part.Transparency = 0
                _prt.sword_2.part.Transparency = 0
                _prt.sword_3.part.Transparency = 0
                _prt.sword_4.part.Transparency = 0
                huma.WalkSpeed = defaultWalkspeed
                CF(_jnt.lsho, nil, CFrame.Angles(0, 0, 0), .07, true)
                CF(_jnt.rsho, nil, CFrame.Angles(0, 0, 0), .07)
                Release("rsho")
                Release("lsho")
        end
        mode,processing,cfs = 0, false, false
end
 
function GunEquip(force)
        if processing and not force then return end
        processing,cfs = true,true
        if suited then
                Bind("rsho")
                CF(_jnt.rsho, CFrame.new(1.5,0.9,0), CFrame.Angles(math.rad(-20), 0, 0), 0.15)
                gunTakePos = _prt.gun_1.part.CFrame:inverse() * part.rarm.CFrame
                _prt.gun_1.weld.Part0 = part.rarm
                _prt.gun_1.weld.C0 = gunTakePos:inverse()
                CF(_jnt.rsho, CFrame.new(1.5,1.7,0), CFrame.Angles(math.rad(-20), 0, math.rad(2)), 0.15)
                Bind("lsho")
                CF(_jnt.lsho, nil, CFrame.Angles(math.rad(-5), 0, math.rad(-5)), 0.08, true)
                CF(_jnt.rsho, CFrame.new(1.5,0.5,0), CFrame.Angles(math.rad(-10), 0, math.rad(10)), 0.08, true)
                CF(_prt.gun_1.weld, _prt.gun_1.weld.C0 * CFrame.new(0.25,-0.1,0.1), nil, 0.08)
        end
        mode,processing,cfs = 2, false, false
        Walk()
end
 
function GunUnequip(force)
        if processing and not force then return end
        processing = true
        if suited then
                if not gs and gtarget then gtarget = false repeat wait(.015) until gs end
                CF(_jnt.neck, nil, CFrame.Angles(0, 0, 0), .2, true)
                CF(_jnt.tors, nil, CFrame.Angles(0, 0, 0), .2, true)
                CF(_jnt.lsho, CFrame.new(-1.5,0.5,0), CFrame.Angles(0, 0, math.rad(-5)), .2, true)
                CF(_prt.gun_1.weld, gunTakePos:inverse(), (gunTakePos - gunTakePos.p):inverse(), 0.15, true)
                CF(_jnt.rsho, CFrame.new(1.5,1.7,0), CFrame.Angles(math.rad(-20), 0, math.rad(2)), 0.15)
                CF(_jnt.rsho, CFrame.new(1.5,0.9,0), CFrame.Angles(math.rad(-20), 0, 0), 0.15)
                _prt.gun_1.weld.Part0 = _prt.gunsheath_1.part
                CF(_prt.gun_1.weld, CFrame.new(0,0.6,0.15), CFrame.Angles(math.rad(-105),0,0))
                CF(_jnt.rsho, CFrame.new(1.5,0.5,0), CFrame.Angles(0, 0, 0), 0.08)
                Release("rsho")
                Release("lsho")
        end
        mode,processing,cfs = 0, false, false
end
 
function LightEquip(force)
        if processing and not force then return end
        processing,cfs = true,true
        if suited then
                Bind("rsho")
                Bind("lsho")
                huma.WalkSpeed = 30
                CF(_jnt.lsho, nil, CFrame.Angles(0, 0, math.rad(-5)), .07, true)
                CF(_jnt.rsho, nil, CFrame.Angles(0, 0, math.rad(5)), .07)
        end
        mode,processing,cfs = 3, false, false
        Walk()
end
 
function LightUnequip(force)
        if processing and not force then return end
        processing,cfs = true,true
        if suited then
                huma.WalkSpeed = defaultWalkspeed
                CF(_jnt.neck, nil, CFrame.Angles(0, 0, 0), .2, true)
                CF(_jnt.tors, nil, CFrame.Angles(0, 0, 0), .2, true)
                CF(_jnt.lsho, nil, CFrame.Angles(0, 0, 0), .07, true)
                CF(_jnt.rsho, nil, CFrame.Angles(0, 0, 0), .07)
                Release("rsho")
                Release("lsho")
        end
        mode,processing,cfs = 0, false, false
        Walk()
end
 
function Walk()
        if use then
                while processing or animate do wait(.015) end
                if w or a or s or d then
                        animate = true
                        if mode == 1 then
                                CF(_jnt.neck, nil, CFrame.Angles(0, math.rad(65), 0), .15, true, true)
                                CF(_jnt.tors, nil, CFrame.Angles(0, math.rad(-65), 0), .15, true, true)
                                CF(_jnt.rsho, nil, CFrame.Angles(math.rad(-20), 0, math.rad(70)), .15, true, true)
                                CF(_jnt.lsho, nil, CFrame.Angles(math.rad(30), math.rad(20), math.rad(5)), .15, false, true)
                        elseif mode == 2 then
                                CF(_jnt.neck, nil, CFrame.Angles(0, math.rad(65), 0), .15, true, true)
                                CF(_jnt.tors, nil, CFrame.Angles(0, math.rad(-65), 0), .15, true, true)
                                CF(_jnt.rsho, CFrame.new(1,0.4,-0.2), CFrame.Angles(math.rad(35), math.rad(20), math.rad(-40)), .15, true, true)
                                CF(_jnt.lsho, CFrame.new(-1,0.5,0), CFrame.Angles(math.rad(60), math.rad(-20), math.rad(35)), .15, false, true)
                        elseif mode == 3 then
                                CF(_jnt.rsho, nil, CFrame.Angles(math.rad(-35), 0, math.rad(10)), .15, true, true)
                                CF(_jnt.lsho, nil, CFrame.Angles(math.rad(-35), 0, math.rad(-10)), .15, false, true)
                        end
                        animate = false
                end
        end
end
 
function Stand()
        if use then
                while processing or animate do wait(.015) end
                if not w and not a and not s and not d and not jumping then
                        animate = true
                        if mode ~= 0 then
                                CF(_jnt.neck, CFrame.new(0,1,0), CFrame.Angles(0, 0, 0), .2, true, true)
                                CF(_jnt.tors, CFrame.new(0,0,0), CFrame.Angles(0, 0, 0), .2, true, true)
                                CF(_jnt.rsho, CFrame.new(1.5,0.5,0), CFrame.Angles(0, 0, math.rad(5)), .2, true, true)
                                CF(_jnt.lsho, CFrame.new(-1.5,0.5,0), CFrame.Angles(0, 0, math.rad(-5)), .2, false, true)
                        end
                        animate = false
                end
        end
end
 
function FAC(num,res)
        if (math.floor(num) <= res + tol and math.floor(num) >= res - tol) or (math.ceil(num) <= res + tol and math.ceil(num) >= res - tol) then return true
        else return false end
end
 
function SliceAndKill(p)
        coroutine.wrap(function()
                if p.Name ~= "__NSCUTPART" and p.Name ~= "Base" and p.Name ~= "NSword_TRAIL" and p.Name ~= "NSword_LIGHT" then
                        if p.Parent ~= char and p.Parent ~= _mdl and not p.Parent:IsA("Hat") then
                                local pX,pY,pZ = p.CFrame:toEulerAnglesXYZ()
                                if (FAC(pX,0) or FAC(pX,180)) and (FAC(pZ,0) or FAC(pZ,180)) and p.Size.y < 0.4 then return end
                                pX = math.deg(pX) if pX < 0 then pX = pX * (-1) else pX = math.floor(pX) end
                                pZ = math.deg(pZ) if pZ < 0 then pZ = pZ * (-1) else pZ = math.floor(pZ) end
                                if not FAC(pX,0) and not FAC(pX,90) and not FAC(pX,180) then return end
                                if not FAC(pZ,0) and not FAC(pZ,90) and not FAC(pZ,180) then return end
                                if (not FAC(pX,0) and not FAC(pZ,0)) or (not FAC(pX,180) and not FAC(pZ,180)) then
                                        if FAC(pX,0) and FAC(pZ,180) then
                                                p.CFrame = p.CFrame * CFrame.Angles(0, 0, math.pi)
                                        elseif FAC(pX,180) and FAC(pZ,0) then
                                                p.CFrame = p.CFrame * CFrame.Angles(math.pi, 0, 0)
                                        elseif FAC(pX,90) and (FAC(pZ,0) or FAC(pZ,180)) then
                                                local rPart = p:Clone()
                                                rPart.Anchored = true
                                                rPart.Size = Vector3.new(p.Size.z,p.Size.x,p.Size.y)
                                                rPart.CFrame = CFrame.new(p.CFrame.x, p.CFrame.y, p.CFrame.z) * CFrame.Angles(0, pY, 0)
                                                if not p.Anchored then rPart.Anchored = false end
                                                rPart.Parent = p.Parent
                                                p:Remove()
                                                p = rPart
                                        elseif FAC(pX,90) and FAC(pZ,90) then
                                                local rPart = p:Clone()
                                                rPart.Anchored = true
                                                rPart.Size = Vector3.new(p.Size.y,p.Size.z,p.Size.x)
                                                rPart.CFrame = CFrame.new(p.CFrame.x, p.CFrame.y, p.CFrame.z) * CFrame.Angles(0, pY, 0)
                                                if not p.Anchored then rPart.Anchored = false end
                                                rPart.Parent = p.Parent
                                                p:Remove()
                                                p = rPart
                                        elseif (FAC(pX,0) or FAC(pX,180)) and FAC(pZ,90) then
                                                local rPart = p:Clone()
                                                rPart.Anchored = true
                                                rPart.Size = Vector3.new(p.Size.y,p.Size.x,p.Size.z)
                                                rPart.CFrame = CFrame.new(p.CFrame.x, p.CFrame.y, p.CFrame.z) * CFrame.Angles(0, pY, 0)
                                                if not p.Anchored then rPart.Anchored = false end
                                                rPart.Parent = p.Parent
                                                p:Remove()
                                                p = rPart
                                        end
                                end
                                local s = _prt.sword_3.part
                                local pYPos = p.CFrame.p.y - (p.Size.y/2)
                                local sYPos = s.CFrame.p.y
                                if sYPos <= pYPos or sYPos >= (pYPos + p.Size.y) then return end
                                local x, y, z = p.CFrame:toEulerAnglesXYZ()
                                local c1 = p:Clone()
                                local c2 = p:Clone()
                                local CC,TR = p.CanCollide, p.Transparency
                                local mat = p.Material
                                c1:BreakJoints()
                                c2:BreakJoints()
                                if CC then
                                        c1.CanCollide = true
                                        c2.CanCollide = true
                                        c1.Anchored = false
                                        c2.Anchored = false
                                else
                                        c1.CanCollide = false
                                        c2.CanCollide = false
                                        c1.Anchored = true
                                        c2.Anchored = true
                                end
                                c1.FormFactor = Enum.FormFactor.Custom
                                c2.FormFactor = Enum.FormFactor.Custom
                                c1.Material = Enum.Material.Plastic
                                c2.Material = Enum.Material.Plastic
                                c1.Size = Vector3.new(p.Size.x,sYPos-pYPos,p.Size.z)
                                c2.Size = Vector3.new(p.Size.x,c2.Size.y-(sYPos-pYPos),p.Size.z)
                                c1.CFrame = p.CFrame * CFrame.new(0, -c2.Size.y/2,0)
                                c2.CFrame = p.CFrame * CFrame.new(0, c1.Size.y/2,0)                
                                c1.Name = "__NSCUTPART"
                                c2.Name = "__NSCUTPART"
                                c1.Reflectance = 0.5
                                c2.Reflectance = 0.5
                                c1.Parent = game.Workspace
                                c2.Parent = game.Workspace
                                p:Remove()
                                for i = 1, 10, 1 do wait(0.02)
                                        c1.Reflectance = c1.Reflectance - 1/10
                                        c2.Reflectance = c2.Reflectance - 1/10
                                end
                                if not CC then
                                        coroutine.wrap(function()
                                                for i = TR, 1, 0.05 do wait(0.02)
                                                        c1.Transparency = i
                                                        c2.Transparency = i
                                                end pcall(function() c1:Remove() c2:Remove() end)
                                        end)()
                                end                                        
                                c1.Reflectance = 0
                                c2.Reflectance = 0
                                c1.Material = mat
                                c2.Material = mat
                                if CC then
                                        c1.Name = "_NSCUTPART"
                                        c2.Name = "_NSCUTPART"
                                end
                        end
                end
        end)()
end
 
function Hit(val)
        hit = val
        if hit then
                coroutine.wrap(function()
                        local event = _prt.sword_5.part.Touched:connect(SliceAndKill)
                        while use and hit and _prt.sword_2 ~= nil and _prt.sword_3 ~= nil and _prt.sword_5 ~= nil do wait() end
                        event:disconnect()
                end)()
        end
end
 
function GunTarget()
        if not ms then return end
        if processing and not gtarget then return end
        processing,cfs,gs = true, true, false
                if not gtarget then gtarget = true
                        huma.WalkSpeed = 5
                        CF(_jnt.neck, nil, CFrame.Angles(0, math.rad(-90), 0), .1, true)
                        CF(_jnt.tors, nil, CFrame.Angles(0, math.rad(90), 0), .1, true)
                        CF(_jnt.lsho, CFrame.new(-1.5,0.5,0), CFrame.Angles(math.rad(-5), 0, math.rad(-5)), .1, true)
                        CF(_jnt.rsho, CFrame.new(1.5,0.5,0), CFrame.Angles(0, 0, math.rad(90)), .1, true)
                        pcall(function() bGyro.Parent = part.tors end)
                        repeat wait(.015)
                                if ms and not disconnectRequest then
                                        bGyro.cframe = CFrame.new(part.tors.CFrame.p, Vector3.new(ms.Hit.p.X, part.tors.CFrame.p.Y, ms.Hit.p.Z))
                                        _jnt.rsho.C0 = CFrame.new(Vector3.new(1.5,0.5,0), ms.Hit.p) * CFrame.Angles(0, 0, math.rad(90))
                                end
                        until not gtarget or not ms gtarget = false
                           huma.WalkSpeed = defaultWalkspeed
                        pcall(function() bGyro.Parent = nil end)
                        CF(_jnt.neck, nil, CFrame.Angles(0, 0, 0), .1, true)
                        CF(_jnt.tors, nil, CFrame.Angles(0, 0, 0), .1, true)
                        CF(_jnt.lsho, CFrame.new(-1.5,0.5,0), CFrame.Angles(0, 0, math.rad(-5)), .1, true)
                        CF(_jnt.rsho, CFrame.new(1.5,0.5,0), CFrame.Angles(0, 0, math.rad(5)), .1)
                end
        processing,cfs,gs = false, false, true
        if not gtarget and not disconnectRequest then Walk() end
end
 
function OnKeyDown(key) key = key:lower()
        if bindKeyDown then
                if key == "w" then w = true Walk() end
                if key == "a" then a = true Walk() end
                if key == "s" then s = true Walk() end
                if key == "d" then d = true Walk() end
                if key == "c" then if mode == 0 then SwordEquip() elseif mode == 1 then SwordUnequip() elseif mode == 2 then GunUnequip() SwordEquip() elseif mode == 3 then LightUnequip() SwordEquip() end end
                if key == "v" then if mode == 0 then GunEquip() elseif mode == 2 then GunUnequip() elseif mode == 1 then  SwordUnequip() GunEquip() elseif mode == 3 then LightUnequip() GunEquip() end end
                if key == "x" then if mode == 0 then LightEquip() elseif mode == 3 then LightUnequip() elseif mode == 1 then SwordUnequip() LightEquip() elseif mode == 2 then GunUnequip() LightEquip() end end
                if key == "e" then if mode == 2 and not gtarget then GunTarget() else gtarget = false end end
        end
end
 
function OnKeyUp(key) key = key:lower()
        if bindKeyUp then
                if key == "w" then w = false if not a and not s and not d then Stand() end end
                if key == "a" then a = false if not w and not s and not d then Stand() end end
                if key == "s" then s = false if not w and not a and not d then Stand() end end
                if key == "d" then d = false if not w and not a and not s then Stand() end end
        end
end
 
function OnButton1Down() buttonDown = true combo = combo + 1
        if not ms then end
        if processing and not gtarget then return end
        processing,cfs = true, true
        if mode == 1 then
                CF(_jnt.neck, nil, CFrame.Angles(0, math.rad(40), 0), .2, true)
                CF(_jnt.tors, nil, CFrame.Angles(0, math.rad(-40), 0), .2, true)
                CF(_prt.sword_1.weld, nil, CFrame.Angles(0, math.rad(-90), 0), .2, true)
                CF(_jnt.lsho, nil, CFrame.Angles(0, 0, math.rad(-10)), .2, true)
                CF(_jnt.rsho, nil, CFrame.Angles(0, math.rad(-20), math.rad(90)), .2)
                pcall(function() bPos.position = Vector3.new(0,part.tors.CFrame.p.Y,0) bPos.Parent = part.tors end)
                Trail(true)
                Hit(true)
                CF(_jnt.neck, nil, CFrame.Angles(0, math.rad(-50), 0), .15, true)
                CF(_jnt.tors, nil, CFrame.Angles(0, math.rad(50), 0), .15, true)
                CF(_prt.sword_1.weld, nil, CFrame.Angles(math.rad(55), math.rad(-90), 0), .15, true)
                CF(_jnt.rsho, nil, CFrame.Angles(math.rad(90), math.rad(90), 0), .15)
                Trail(false)
                Hit(false)
                if combo > 1 then combo = 2
                        if buttonDown then pcall(function() bPos.Parent = nil end) repeat wait(0.015) LightingGen(_prt.sword_4.part.CFrame.p,_prt.sword_3.part.CFrame.p,3,.05) until not buttonDown end
                        CF(_prt.sword_1.weld, nil, CFrame.Angles(math.rad(55), math.rad(90),0), .3)
                        Trail(true)
                        Hit(true)
                        CF(_prt.sword_1.weld, nil, CFrame.Angles(0, math.rad(90), 0), .15, true)
                        CF(_jnt.neck, nil, CFrame.Angles(0, math.rad(40), 0), .12, true)
                        CF(_jnt.tors, nil, CFrame.Angles(0, math.rad(-40), 0), .15, true)
                        CF(_jnt.rsho, nil, CFrame.Angles(0, math.rad(-20), math.rad(90)), .15)
                        pcall(function() bPos.Parent = nil end)
                        Trail(false)
                        Hit(false)
                        CF(_prt.sword_1.weld, nil, CFrame.Angles(math.rad(90), math.rad(90), 0), .15, true)
                        CF(_jnt.neck, nil, CFrame.Angles(0, 0, 0), .15, true)
                        CF(_jnt.tors, nil, CFrame.Angles(0, 0, 0), .15, true)
                        CF(_jnt.rsho, nil, CFrame.Angles(math.rad(-10), 0, 0), .15)
                else
                        pcall(function() bPos.Parent = nil end)
                        CF(_prt.sword_1.weld, nil, CFrame.Angles(math.rad(90), math.rad(90), 0), .15, true)
                        CF(_jnt.neck, nil, CFrame.Angles(0, 0, 0), .15, true)
                        CF(_jnt.tors, nil, CFrame.Angles(0, 0, 0), .15, true)
                        CF(_jnt.rsho, nil, CFrame.Angles(0, 0, math.rad(5)), .15)
                end        
        elseif mode == 2 then
 
                --> GUN <--
 
        elseif mode == 3 then
                CF(_jnt.neck, nil, CFrame.Angles(0, math.rad(90), 0), .1, true)
                CF(_jnt.tors, nil, CFrame.Angles(0, math.rad(-90), 0), .1, true)
                CF(_jnt.rsho, nil, CFrame.Angles(math.rad(-20), 0, math.rad(20)), .1, true)
                CF(_jnt.lsho, nil, CFrame.Angles(0, 0, math.rad(-90)), .1)
                while ms and buttonDown and not disconnectRequest do wait(.015)
                        pcall(function() bGyro.Parent = part.tors end)
                        if ms and not disconnectRequest and huma.Health ~= 0 then
                                bGyro.cframe = CFrame.new(part.tors.CFrame.p, Vector3.new(ms.Hit.p.X, part.tors.CFrame.p.Y, ms.Hit.p.Z))
                                if ms.Target then
                                        LightingGen((part.larm.CFrame * CFrame.new(0,-1,0)).p, ms.Hit.p, 10, .05, .5)
                                end
                        end
                end
                pcall(function() bGyro.Parent = nil end)
                CF(_jnt.neck, nil, CFrame.Angles(0, 0, 0), .1, true)
                CF(_jnt.tors, nil, CFrame.Angles(0, 0, 0), .1, true)
                CF(_jnt.lsho, nil, CFrame.Angles(0, 0, math.rad(-5)), .1, true)
                CF(_jnt.rsho, nil, CFrame.Angles(0, 0, math.rad(5)), .1)
        end
        combo = 0
        if not gtarget then processing, cfs = false, false end
        Walk()
end
 
function Disconnection() disconnectRequest = true ms = nil
        while processing do wait(.015) end
        w,a,s,d = false,false,false,false
        processing = true
        if use then
                Hit(false)
                bindKeyUp, bindKeyDown = false, false
                if mode == 1 then SwordUnequip(true) end
                if mode == 2 then GunUnequip(true) end
                if mode == 3 then LightUnequip(true) end
                use = false
                huma.WalkSpeed = defaultWalkspeed
                gunTakePos = nil
                w,a,s,d = false,false,false,false
                w2,a2,s2,d2 = false,false,false,false                
                _prt.torso_1.weld.Part0 = part.tors
                if delete then part.tors.Transparency = 0 end
                for i,mtor in pairs (motor) do
                        pcall(function() mtor.Part0 = part.tors end)
                end
                if _jnt ~= nil then
                        for i,weld in pairs(_jnt) do
                                pcall(function() weld:Remove() end)
                        end
                end
                if part.ftor ~= nil then part.ftor:Remove() end
                if delete then
                        if shirt ~= nil then shirt.Parent = char end
                        if _mdl ~= nil then _mdl:Remove() end
                        suited = false
                        model = false
                        prt = {}
                end
                _jnt,_mdl,_prt = nil, nil, nil
                _kup:disconnect()
                _kdn:disconnect()
                _mse:disconnect()
                _ms2:disconnect()
                combo = 0
                _kup,_kdn,_mse,_ms2 = nil,nil,nil,nil
                initialized = false
        end
        disconnectRequest = false
        processing = false
end
 
function _Main(mouse)
        while processing do wait(0.015) end
        ms = mouse
        _jnt = JoinInit()
        _mdl = SuitInit()
        _prt = LoadSuit()
        mode = 0
        _kup = mouse.KeyUp:connect(OnKeyUp)
        _kdn = mouse.KeyDown:connect(OnKeyDown)
        _mse = mouse.Button1Down:connect(OnButton1Down)
        _ms2 = mouse.Button1Up:connect(function() buttonDown = false end)
        use, bindKeyUp, bindKeyDown = true, true, true
end
 
bin.Selected:connect(_Main)
bin.Deselected:connect(Disconnection)
