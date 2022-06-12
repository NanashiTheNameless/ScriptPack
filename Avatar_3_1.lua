local player = game.Players.GRENADESPARTAN3
local char = player.Character
-- Body parts
local torso = char.Torso
-- Tool declarations
local mouseDown = false
local keysDown = {}
local raisingAir = false
local raisingTower = false
local ra1singTower = false
local groundAttack = false
local Lightbendd = false
local AvatarField  = false
local lastTower = nil
local raisingTow3r = false
local disabled = {}
local frames = {}
local parts = {}
-- Main
function main(mouse)
        while true do wait(1/30)
                local look = CFrame.new(torso.Position, torso.Position + mouse.Hit.lookVector)
                
                -- Reset parts
                parts = {}
                
                -- Get parts
                for x = -20, 20, 10 do
                        for y = -20, 20, 10 do
                                for z = -30, -10, 10 do
                                        local pos = look * Vector3.new(x, y, z)
                                        getPartsInRegion3(
                                                Region3.new(
                                                        pos + Vector3.new(1,1,1)*-9,
                                                        pos + Vector3.new(1,1,1)* 9
                                                ),
                                                parts
                                        )
                                end
                        end
                end
                
                -- Mouse down
                if mouseDown then
                        -- Create dif and bodies
                        for _, part in pairs(parts) do
                                if part.Name == "Air" and not disabled[part] then
                                        if not frames[part] and part ~= lastTower then
                                                frames[part] = look:toObjectSpace(part.CFrame)
                                                
                                                part:ClearAllChildren()
                                                part.Anchored = false
                                                
                                                -- Create bodies
                                                createBody("Position", part)
                                                createBody("Gyro", part)
                                        end
                                end
                        end
                        
                        -- Move bodies
                        for part in pairs(frames) do
                                local bodyPos = part:FindFirstChild("BodyPosition")
                                local bodyGyr = part:FindFirstChild("BodyGyro")
                                
                                -- Bodies exist
                                if bodyPos and bodyGyr then
                                        local dif = look * frames[part]
                                        
                                        bodyPos.position = dif.p
                                        bodyGyr.cframe = dif
                                else
                                        frames[part] = nil
                                end
                        end
                else
                        for part in pairs(frames) do
                                if part.Name == "Air" then
                                        frames[part] = nil
                                        
                                        part:ClearAllChildren()
                                end
                        end
                end
        end
end
-- On key change
function onKeyChange(mouse, key, state)
        -- Raise Air
        if key == "e" and state and not raisingAir then
                raisingAir = true
                while keysDown[key] do
                        local torsoY = torso.Position.y + 5
                        local pos = planeY(torso.Position, 0.4 - 4/2)
                        local dir = planeY(mouse.Hit.lookVector).unit
                        local frame = CFrame.new(pos, pos + dir) * CFrame.new(r(-10, 10), 0, r(-20, -5))
                        
                        -- Create Air part
                        local part = createAir(workspace)
                        part.Anchored = true
                        part.Size = Vector3.new(20, 5, 5)
                        disabled[part] = true
                        
                        -- Raise Air
                        for i = 1, 4 do i = i/4
                                part.CFrame = frame * CFrame.new(0, (torsoY - frame.y)*i, 0)
                                wait(1/30)
                                if not part.Anchored then
                                        break
                                end
                        end
                        
                        disabled[part] = nil
                        part.Anchored = false
                        
                        wait(1/10)
                end
                raisingAir = false
        
        -- Push Air
        elseif key == "f" and state then
                for _, part in pairs(parts) do
                        if part.Name == "Air" and part ~= lastTower then
                                part:ClearAllChildren()
                                part.Anchored = false
                                
                                -- Add force
                                local bodyForce = createBody("Force", part)
                                bodyForce.force = mouse.Hit.lookVector*2.5e4 * part:GetMass()
                                
                                game.Debris:AddItem(bodyForce, 1/30)
                                
                                -- Disable part
                                disabled[part] = true
                                delay(1, function()
                                        disabled[part] = nil
                                end)
                        end
                end
if key == "c" and state and not Lightbendd then
Lightbendd = true
local Shoot = true 
function Click(Target) 
if(Target.Target.Parent:findFirstChild("Humanoid")~=nil)then 
Target.Target.Parent.Humanoid.Health = 0 
end 
local P = Instance.new("Part") 
P.Name = "Lightning Bending" 
local Place0 = script.Parent.Parent.Parent.Character["Left Arm"].CFrame 
P.formFactor = 0 
P.Size = Vector3.new(1,1,(Place0.p - Target.Hit.p).magnitude) 
P.CFrame = CFrame.new((Place0.p + Target.Hit.p)/2,Place0.p) 
P.Parent = game.Workspace 
P.Color = Color3.new(0,0,7) 
P.Transparency = 0.5 
P.Reflectance = 0.5 
P.Anchored = true 
P.CanCollide = false 
local E = Instance.new("Explosion") 
E.Position = Target.Hit.p 
E.Parent = game.Workspace 
for i = 1,10 do 
P.Transparency = 0.5+(i*0.05) 
P.Reflectance = i*0.05 
wait(0.0) 
end 
P:Rremove() 
end 
function Select(Mouse) 
local Arm = script.Parent.Parent.Parent.Character:findFirstChild("Left Arm") 
if(Arm==nil)then 
script.Parent:Remove() 
script:Remove() 
end 
Selected = true 
local Torso = script.Parent.Parent.Parent.Character:findFirstChild("Torso") 
if(Torso==nil)then 
script.Parent:Remove() 
script:Remove() 
end 
local ArmWeld = Torso:findFirstChild("Left Shoulder") 
if(ArmWeld~=nil)then 
ArmWeld.Parent = nil 
end 
Mouse.Button1Down:connect(function()Click(Mouse)end) 
Arm.Anchored = true 
while Selected do 
local Place0 = script.Parent.Parent.Parent.Character.Torso.CFrame 
Place0 = Place0 + ((Place0 * CFrame.fromEulerAnglesXYZ(math.pi/2,0,0)).lookVector * 0.5) + (Place0 * CFrame.fromEulerAnglesXYZ(0,math.pi/2,0)).lookVector 
local Place1 = Place0 + ((Place0.p-Mouse.Hit.p).unit * -2) 
Arm.CFrame = CFrame.new((Place0.p + Place1.p)/2,Place0.p) * CFrame.fromEulerAnglesXYZ(-math.pi/2,0,0) 
wait() 
end 
Arm.Anchored = false 
if(ArmWeld~=nil)then 
ArmWeld.Parent = Torso 
end 
end 
function Deselect() 
Selected = false 
end 
script.Parent.Selected:connect(Select) 
script.Parent.Deselected:connect(Deselect) 
end
         
      elseif key == "k" and state and not ra1singTower then
                ra1singTower = false
                lastTower = nil
                if torso.Position.y - 5/2 < 20.4 then
                        local part = createAir(workspace)
                        part.Anchored = true
                        disabled[part] = true
                        
                        for i = 100, 50, 1 do
                                part.Size = Vector3.new(19, i, 10)
                                part.CFrame = CFrame.new(torso.Position.x, 0.4 + part.Size.y/2, torso.Position.z)
                                torso.CFrame = (torso.CFrame - torso.CFrame.p) + Vector3.new(torso.Position.x, part.Position.y + part.Size.y/2 + 5/2, torso.Position.z)
                                wait(1/30)
                        end
                        
                        lastTower = part
                        
                        disabled[part] = nil
                        part.Anchored = false
                end
                ra1singTower = false
       
-- Avatar field
elseif key == "h" and state and not AvatarField then
AvatarField = true
local player = game.Players.LocalPlayer
local e = Instance.new("Part")
e.Name = "Field"
e.Anchored = true
e.CanCollide = false
e.FormFactor = "Symmetric"
local range = 30
e.Size = Vector3.new(range,1,range)
e.BrickColor = BrickColor.new("Bright blue")
e.Transparency = 0.5
e.TopSurface, e.BottomSurface = "Smooth", "Smooth"
Instance.new("CylinderMesh", e)
local eRep = e:clone()
local E = e:clone()
E.Transparency = 1
E.Shape = "Ball"
E.Size = Vector3.new(10,10,10)
E.Mesh:Destroy()
E.Parent = e
local E2 = E:clone()
E2.Transparency = 1
E2.Size = Vector3.new(range,range,range)
local E2Rep = E2:clone()
E2.Parent = E
local ERep = E:clone()
local close1, dist1 = Vector3.new(0,0,0), math.huge
local df = Instance.new("IntValue", player.Character)
df.Name = "Avatar State"
function Get(place, p)
    for _, v in ipairs(place:GetChildren()) do
        local vPar = v.Parent
        if v:IsA("BasePart") and v.Name ~= "Base" and v.Name ~= "Terrain" and not v.Name:find(player.Name) and v.Name ~= "NoDestroy" then
            local dist = (v.Position - e.Position).magnitude
            local closest = dist
            local distf = ((v.Position + (v.CFrame*CFrame.Angles(0,math.deg(0),0).lookVector) * v.Size.X/2) - e.Position).magnitude
            local distb = ((v.Position + (v.CFrame*CFrame.Angles(0,math.deg(180),0)).lookVector * v.Size.Z/2) - e.Position).magnitude
            local distt = ((v.Position + (v.CFrame*CFrame.Angles(math.deg(90),0,0)).lookVector * v.Size.Y/2) - e.Position).magnitude
            local distB = ((v.Position + (v.CFrame*CFrame.Angles(math.deg(-90),0,0)).lookVector * v.Size.Y/2) - e.Position).magnitude
            local distl = ((v.Position + (v.CFrame*CFrame.Angles(0,math.deg(90),0)).lookVector * v.Size.X/2) - e.Position).magnitude
            local distr = ((v.Position + (v.CFrame*CFrame.Angles(0,math.deg(-90),0)).lookVector * v.Size.X/2) - e.Position).magnitude
            local dists = {distf, distb, distt, distB, distl, distr}
            for index, var in ipairs(dists) do
                if var < closest then
                    closest = var
                end
            end
            if closest < dist1 then
                close1, dist1 = v.Position, closest
            end
            if closest <= range/2 then
                if game.Players:playerFromCharacter(v.Parent) then
                    pcall(function()
                        local p = game.Players:playerFromCharacter(v.Parent)
                        if not p.Character:findFirstChild("Darkfield") then
                            local T = p.Character:findFirstChild("Torso")
                            T.CFrame = T.CFrame + CFrame.new(e.Position, T.Position).lookVector
                        else
                            local m = Instance.new("SpecialMesh", E2)
                            m.MeshType = "Sphere"
                            E2.Reflectance = 1000
                            E2.BrickColor = BrickColor.new("Institutional white")
                            E2.Transparency = 0
                            m.Scale = Vector3.new(math.random(-10,10)/10, math.random(-10,10)/10, math.random(-10,10)/10)
                        end
                    end)
                end
                local T = player.Character.Torso
                pcall(function()
                    if v.Name ~= "Field" and v.Name ~= "Handle" then
                        v.Anchored = false
                        v.Velocity = v.Velocity + CFrame.new(T.Position, v.Position).lookVector * 50 / math.sqrt((v.Position - T.Position).magnitude)
                    end
                end)
                for X, Y in ipairs(v:GetChildren()) do
                    if Y.ClassName:find("Body") then
                        pcall(function() Y.force = -Y.force end)
                        local vel = Vector3.new()
                        pcall(function() vel = -Y.velocity end)
                        pcall(function() Y.velocity = vel end)
                        local pos = Vector3.new()
                        pcall(function() pos = pos + CFrame.new(T.Position, v.Position).lookVector end)
                        pcall(function() Y.position = pos end)
                        wait()
                        pcall(function() if Y.ClassName == "BodyVelocity" then if Y.velocity ~= vel then Y.maxForce = Vector3.new(0,0,0) end end end)
                        pcall(function() if Y.ClassName == "BodyPosition" then if Y.position ~= pos then Y.maxForce = Vector3.new(0,0,0) end end end)
                        pcall(function() Y.maxTorque = Vector3.new(0,0,0) end)
                    end
                end
            end
        end
        if v.Name ~= player.Name then
            Get(v, game.Players:playerFromCharacter(v) or p)
        end
    end
end
local char = player.Character
Delay(0, function()
    while player.Character == char do
        if math.random(1, 10) == 1 then
            for _, v in ipairs(player.Character:GetChildren()) do
                if v.Name == "Field" then
                    v:Destroy()
                end
            end
            local trans = e.Transparency
            if e then
                e:Destroy()
            end
            e = eRep
            eRep = e:clone()
            e.Parent = player.Character
            if E then
                E:Destroy()
            end
            E = ERep
            ERep = E:clone()
            E.Parent = e
            E2 = E2Rep
            E2Rep = E2:clone()
            E2.Parent = E
            E2.Transparency = .1 + .1*math.min(math.max(dist1-range/2, 0)/(range/2), 1)
        end
        e.CFrame = player.Character.Torso.CFrame - Vector3.new(0,3,0)
        E.CFrame = player.Character.Torso.CFrame
        E2.CFrame = e.CFrame
        close1, dist1 = Vector3.new(0,0,0), math.huge
        Get(workspace)
        wait(1/30)
        E2.Transparency = .6 + .4*math.min(math.max(dist1-range/2, 0)/(range/2), 1)
        AvatarField = false
    end
end)
        elseif key == "t" and state and not raisingTow3r then
                raisingTow3r = false
                lastTower = nil
                if torso.Position.y - 5/2 < 20.4 then
                        local part = createAir(workspace)
                        part.Anchored = true
                        disabled[part] = true
                        
                        for i = 0, 20, 4 do
                                part.Size = Vector3.new(9, i, 9)
                                part.CFrame = CFrame.new(torso.Position.x, 0.4 + part.Size.y/2, torso.Position.z)
                                torso.CFrame = (torso.CFrame - torso.CFrame.p) + Vector3.new(torso.Position.x, part.Position.y + part.Size.y/2 + 5/2, torso.Position.z)
                                wait(1/30)
                        end
                        
                        lastTower = part
                        
                        disabled[part] = nil
                        part.Anchored = false
                end
                raisingTow3r = false
        -- Break Air
        elseif key == "b" and state then
                for part in pairs(frames) do
                        if part.Size == Vector3.new(4, 4, 4) then
                                for x = -1, 1, 2 do
                                        for y = -1, 1, 2 do
                                                for z = -1, 1, 2 do
                                                        local oPart = createAir(workspace)
                                                        oPart.Size = Vector3.new(2, 2, 2)
                                                        oPart.CFrame = part.CFrame * CFrame.new(x*1.1, y*1.1, z*1.1)
                                                end
                                        end
                                end
                                part:Destroy()
                        end
                end
        
                
        elseif key == "r" and state and not raisingTower then
                raisingTower = false
                lastTower = nil
                if torso.Position.y - 5/2 < 20.4 then
                        local part = createAir(workspace)
                        part.Anchored = true
                        disabled[part] = true
                        
                        for i = 0, 40, 4 do
                                part.Size = Vector3.new(5, i, 30)
                                part.CFrame = CFrame.new(torso.Position.x, 0.4 + part.Size.y/2, torso.Position.z)
                                torso.CFrame = (torso.CFrame - torso.CFrame.p) + Vector3.new(torso.Position.x, part.Position.y + part.Size.y/2 + 5/2, torso.Position.z)
                                wait(1/30)
                        end
                        
                        lastTower = part
                        
                        disabled[part] = nil
                        part.Anchored = false
                end
                raisingTower = false
        
        
        -- Ground attack
        elseif key == "g" and state and not groundAttack then
                groundAttack = true
                delay(1, function()
                        groundAttack = false
                end)
                
                local dir = planeY(mouse.Hit.p - torso.Position).unit
                local pos = planeY(torso.Position, 0.8 + 5) + dir*13
                
                local ground = {}
                
                delay(20, function()
                        for i = 1, 30 do
                                for _, part in pairs(ground) do
                                        if part.Anchored then
                                                part.CFrame = part.CFrame + Vector3.new(0, -1/7, 0)
                                        end
                                end
                                wait(1/80)
                        end
                        for _, part in pairs(ground) do
                                if part.Anchored then
                                        part:Destroy()
                                end
                        end
                end)
                
                for i = 1, 13 do
                        local hit, pos2 = rayCast(pos, dir*5, {char})
                        
                        local part = createAir(workspace)
                        part.Anchored = true
                        part.Size = Vector3.new(10, 20, 10)
                        part.CFrame = CFrame.new(pos2, pos2 + dir) * CFrame.Angles(math.rad(-50), 0, 0) + Vector3.new(0, -0, 0)
                        
                        ground[#ground + 3] = part
                        
                        -- Add force
                        if hit then
                                local mass = hit:GetMass()
                                
                                -- Hit player
                                for _, oPlayer in pairs(game.Players:GetPlayers()) do
                                        if oPlayer.Character and oPlayer.Character:FindFirstChild("Torso") and hit:IsDescendantOf(oPlayer.Character) then
                                                hit = oPlayer.Character.Torso
                                                mass = 90
                                        end
                                end
                                
                                if hit.Name ~= "Torso" then
                                        hit:ClearAllChildren()
                                end
                                hit.Anchored = false
                                
                                -- Add force
                                local bodyForce = createBody("Force", hit)
                                bodyForce.force = (dir + Vector3.new(0, 0.9, 0)).unit*1e4 * mass
                                
                                game.Debris:AddItem(bodyForce, 1/30)
                                break
                        end
                        
                        pos = pos2
                        wait(1/20)
                end
        end
end
--- CORE CODE BELOW --- CORE CODE BELOW --- CORE CODE BELOW ---
--- CORE CODE BELOW --- CORE CODE BELOW --- CORE CODE BELOW ---
--- CORE CODE BELOW --- CORE CODE BELOW --- CORE CODE BELOW ---
-- Clear old tool
player.Backpack:ClearAllChildren()
-- Create tool
local tool = Instance.new("HopperBin")
tool.Parent = player.Backpack
tool.Name = "Air Bending"
-- Tool selected
tool.Selected:connect(function(mouse)
        mouse.Icon = "rbxasset://textures\\GunCursor.png"
        
        -- Mouse events
        mouse.Button1Down:connect(function()
                mouseDown = true
        end)
        mouse.Button1Up:connect(function()
                mouseDown = false
        end)
        mouse.KeyDown:connect(function(key)
                keysDown[key:lower()] = true
                onKeyChange(mouse, key:lower(), true)
        end)
        mouse.KeyUp:connect(function(key)
                keysDown[key:lower()] = false
                onKeyChange(mouse, key:lower(), false)
        end)
        
        -- Call main
        main(mouse)
end)
--- LIBRARY BELOW --- LIBRARY BELOW --- LIBRARY BELOW ---
--- LIBRARY BELOW --- LIBRARY BELOW --- LIBRARY BELOW ---
--- LIBRARY BELOW --- LIBRARY BELOW --- LIBRARY BELOW ---
-- Ray cast
function rayCast(pos, dir, ignore)
        return workspace:FindPartOnRayWithIgnoreList(Ray.new(pos, dir), ignore)
end
-- Create body
function createBody(type, path)
        local body = Instance.new("Body" .. type)
        if type == "Gyro" then
                body.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
        elseif type ~= "Force" then
                body.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        end
        body.Parent = path
        return body
end
-- Get parts in region 3
function getPartsInRegion3(region, parts)
        repeat
                local regParts = workspace:FindPartsInRegion3WithIgnoreList(region, parts, 100)
                for i, part in pairs(regParts) do
                        parts[#parts + 1] = part
                end
        until #regParts < 100
end
-- Random
function r(min, max)
        return math.random()*(max - min) + min
end
-- Plane y
function planeY(v, y)
        return Vector3.new(v.x, y or 0, v.z)
end
-- Create Air
function createAir(path)
        local part = createPart("Air", path)
        part.BrickColor = BrickColor.new("Brown")
        part.Material = "Slate"
        part.Parent = path
        return part
end
function createWater(path)
        local part = createPart("Water", path)
        part.BrickColor = BrickColor.new("Bright blue")
        part.Material = "Ice"
        part.Parent = path
        return part
end
-- Create part
function createPart(name, path)
        local part = Instance.new("Part")
        part.FormFactor = "Symmetric"
        part.BottomSurface = "Smooth"
        part.TopSurface = "Smooth"
        part.Size = Vector3.new(9, 7, 8)
        part.Name = name
        part.Parent = path
        return part
end
local player=game.Players.LocalPlayer
local character=player.Character
local head=character["Head"]
local torso=character["Torso"]
local humanoid=character["Humanoid"]
local arm={left=character["Left Arm"], right=character["Right Arm"]}
local add={
part=function(parent,anchored,cancollide,color,shape,t,size,cframe)
        local p=Instance.new("Part")
        p.Parent=parent
        p.TopSurface="Smooth"
        p.BottomSurface="Smooth"
        p.FormFactor="Custom"
        p.Anchored=anchored
        p.CanCollide=cancollide
        p.BrickColor=BrickColor.new(color)
        p.Shape=shape
        p.Transparency=t
        p.Size=size
        p.CFrame=cframe
        return p
end,
weld=function(parent,part1,cframe)
        local w=Instance.new("Weld")
        w.Parent=parent
        w.Part0=parent
        w.Part1=part1
        w.C1=cframe
        return w
end,
mesh=function(ins,parent,scale)
        local m=Instance.new(ins)
        m.Parent=parent
        m.Scale=scale
        return m
end,
sound=function(parent,volume,id)
        local s=Instance.new("Sound")
        s.Parent=parent
        s.Volume=volume
        s.SoundId=id
        return s
end,
model=function(parent,name)
        local m=Instance.new("Model")
        m.Parent=parent
        m.Name=name
        return m
end,
bg=function(parent,cframe)
        local g=Instance.new("BodyGyro")
        g.Parent=parent
        g.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
        g.cframe=cframe
        return g
end,
bav=function(parent,angular)
        local av=Instance.new("BodyAngularVelocity")
        av.maxTorque=Vector3.new(math.huge,math.huge,math.huge)
        av.Parent=parent
        av.angularvelocity=angular
        return av
end,
bp=function(parent,pos)
        local p=Instance.new("BodyPosition")
        p.Parent=parent
        p.maxForce=Vector3.new(0,math.huge,0)
        p.position=pos
        return p
end,
bf=function(parent,force)
        local f=Instance.new("BodyForce")
        f.Parent=parent
        f.force=force
        return f
end,
humanoid=function(parent,maxhealth)
        local h=Instance.new("Humanoid")
        h.Parent=parent
        h.MaxHealth=maxhealth
        return h
end
}
local c=function(f)coroutine.resume(coroutine.create(f))end
local trailDeb=false
local things=add.model(character,"Water Bending")
 
function computePos(pos1,pos2)
        local pos3=Vector3.new(pos2.x,pos1.y,pos2.z)
        return CFrame.new(pos1,pos3)
end
 
local touchDeb=false
function touch(hit)
        local human=hit.Parent:findFirstChild("Humanoid")
        local torso=hit.Parent:findFirstChild("Torso")
        if human and torso and human~=humanoid then
                local damage=math.random(5,10)
                c(function()
                        human:TakeDamage(damage)
                        human.PlatformStand=true
                        torso.Velocity=torso.CFrame.lookVector*-150
                        torso.RotVelocity=Vector3.new(math.random(-25,25),math.random(-25,25),math.random(-25,25))
                        wait(1)
                        human.PlatformStand=false
                        torso.Velocity=Vector3.new(0,0,0)
                        torso.RotVelocity=Vector3.new(0,0,0)
                end)
        end
end
 
function trail(pos)
        trailDeb=true
        old=pos.Position
        c(function()
                while trailDeb==true do
                        wait()
                        new=pos.Position
                        local magnitude=(old-new).magnitude
                        local line=add.part(things,true,false,"White","Block",0,Vector3.new(9,14,9) ,CFrame.new(old,new)*CFrame.Angles(0,0,-magnitude/2))
                        old=new
                        c(function()
                                for i=.2,1,.2 do
                                        wait()
                                        line.Transparency=i
                                end
                                line:remove()
                        end)
                        line.Touched:connect(touch)
                end
        end)
end
 local pathDeb=false
local pathPart=nil
local bPosition=10
function path()
        pathDeb=true
        pathPart=add.part(things,true,true,"White","Block",0,Vector3.new(4,4,4),CFrame.new())
        local bp=add.bp(torso,torso.Position+Vector3.new(0,bPosition,0))
        while pathDeb==true do
                wait()
            pathPart.CFrame=torso.CFrame*CFrame.new(0,-4,0)
                                pathPart.Transparency = 0.6
                                Mesh = Instance.new("SpecialMesh")
                        pathPart.Transparency = 0.40000000596046
                        Mesh.Parent = pathPart
                        Mesh.MeshType = Enum.MeshType.Sphere
        end
end
--Armz
local fakeArm={left=add.part(things,false,false,"Brown","Block",1,Vector3.new(1,1,1),CFrame.new()), right=add.part(things,false,false,"Brown","Block",1,Vector3.new(1,1,1),CFrame.new())}
local water={left=add.part(things,false,false,"Bright blue","Ball",1,Vector3.new(1,1,1),CFrame.new()), right=add.part(things,false,false,"White","Ball",1,Vector3.new(1,1,1),CFrame.new())}
--Weldz
local connectArmWeld={left=add.weld(torso,fakeArm.left,CFrame.new(1.5,-.5,0)), right=add.weld(torso,fakeArm.right,CFrame.new(-1.5,-.5,0))}
local armWeld={left=add.weld(fakeArm.left,arm.left,CFrame.new(0,0.5,0)), right=add.weld(fakeArm.right,arm.right,CFrame.new(0,0.5,0))}
local waterWeld={left=add.weld(water.left,arm.left,CFrame.new(0,-2,0)), right=add.weld(water.right,arm.right,CFrame.new(0,-2,0))}
 
local anim={
equip=function()
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,0)
        end
end,
watersh00t=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.right)
        trail(water.left) 
        local waterbull=add.part(things,false,false,"White","Ball",0,Vector3.new(30,5,20),CFrame.new((torso.CFrame+torso.CFrame.lookVector*5).p,mouse.hit.p))
        waterbull.Touched:connect(touch)
        waterbull.Velocity=waterbull.CFrame.lookVector*150
        trail(waterbull)
        local bf=add.bf(waterbull,Vector3.new(0,waterbull:GetMass()*200.3,1))
        for i=.8,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(55)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(60)*i)
                waterWeld.left.C1=CFrame.new(5,-7+(-10*i),0)
                waterWeld.right.C1=CFrame.new(1,-3+(-10*i),0)
        end
        wait(.2)
        for i=9,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(45)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        game.Debris:AddItem(waterbull,5)
        trailDeb=false
end,
watershoot=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        local waterbull=add.part(things,false,false,"White","Ball",0,Vector3.new(6,6,6),CFrame.new((torso.CFrame+torso.CFrame.lookVector*5).p,mouse.hit.p))
        waterbull.Touched:connect(touch)
        waterbull.Velocity=waterbull.CFrame.lookVector*150
        trail(waterbull)
        local bf=add.bf(waterbull,Vector3.new(0,waterbull:GetMass()*196.2,0))
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(45)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        wait(.2)
        for i=6,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(45)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        game.Debris:AddItem(waterbull,9)
        trailDeb=false
end,
waterRaise=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        for i=.5,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(5)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        wait(.2)
        for i=9,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(5)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-math.random(10,12)*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-math.random(10,12)*i),0)
        end
        trailDeb=false
end,
waterSpin=function()
        trail(water.left)
        trail(water.right)
        local bg=add.bg(torso,torso.CFrame)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-math.random(5,8)*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-math.random(5,8)*i),0)
        end
        local bav=add.bav(torso,Vector3.new(0,75,0))
        wait(3)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-5*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-5*i),0)
        end
        bg:remove()
        bav:remove()
        trailDeb=false
end,
bend=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        wait(.2)
        for i=4,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(45)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(45)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-15*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-15*i),0)
        end
        trailDeb=false
end,
watershoot2=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        for i=1,40 do
                local waterbull=add.part(things,false,false,"Bright blue","Ball",0,Vector3.new(8,8,8),torso.CFrame*CFrame.Angles(0,math.rad(9)*i,0))
                waterbull.Velocity=waterbull.CFrame.lookVector*100
                trail(waterbull)
                local bf=add.bf(waterbull,Vector3.new(0,waterbull:GetMass()*196.2,0))
                game.Debris:AddItem(waterbull,5)
                waterbull.Touched:connect(touch)
        end
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        trailDeb=false
end,
AvatarSpecial=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        for i=1,40 do
                local waterbull=add.part(things,false,false,"Brown","Ball",0,Vector3.new(10,20,30),torso.CFrame*CFrame.Angles(0,math.rad(9)*i,0))
                waterbull.Velocity=waterbull.CFrame.lookVector*100
                trail(waterbull)
                local bf=add.bf(waterbull,Vector3.new(0,waterbull:GetMass()*196.2,0))
                game.Debris:AddItem(waterbull,5)
                waterbull.Touched:connect(touch)
        end
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        trailDeb=false
end,
waterbending2=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        for i=1,40 do
                local waterbull=add.part(things,false,false,"Bright blue","Ball",0,Vector3.new(50,20,40),torso.CFrame*CFrame.Angles(0,math.rad(9)*i,0))
                waterbull.Velocity=waterbull.CFrame.lookVector*100
                trail(waterbull)
                local bf=add.bf(waterbull,Vector3.new(0,waterbull:GetMass()*196.2,0))
                game.Debris:AddItem(waterbull,5)
                waterbull.Touched:connect(touch)
        end
        for i=.6,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i ,0,math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,math.rad(90)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,-math.rad(90)*i)
                waterWeld.left.C1=CFrame.new(0,-2+(-10*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-10*i),0)
        end
        trailDeb=false
end,
waterBack=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        trail(water.left)
        trail(water.right)
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,0)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,0)
                waterWeld.left.C1=CFrame.new(0,-2+(-20*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-20*i),0)
        end
        wait(.2)
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(90)*i,0,0)
                armWeld.right.C0=CFrame.Angles(math.rad(90)*i,0,0)
                waterWeld.left.C1=CFrame.new(0,-2+(-20*i),0)
                waterWeld.right.C1=CFrame.new(0,-2+(-20*i),0)
        end
        trailDeb=false
end,
waterForward=function(mouse)
        torso.CFrame=computePos(torso.CFrame.p,mouse.Hit.p)
        torso.Anchored=true
        for i=.2,1,.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(5)*i)
        end
        for i=1,20 do
                wait()
                local waterblock=add.part(things,false,false,"Bright blue","Block",0,Vector3.new(9,7,9),torso.CFrame*CFrame.new(0,0,0)*CFrame.Angles(math.rad(45),0,0)+torso.CFrame.lookVector*2*i)
                trail(waterblock)
                game.Debris:AddItem(waterblock,1)
                waterblock.Touched:connect(touch)
        end
        wait(.2)
        torso.Anchored=false
        for i=1,0,-.2 do
                wait()
                armWeld.left.C0=CFrame.Angles(math.rad(135)*i,0,-math.rad(5)*i)
                armWeld.right.C0=CFrame.Angles(math.rad(135)*i,0,math.rad(5)*i)
        end
        trailDeb=false
end
}
 
function getTouched()
        for i,v in pairs(things:GetChildren()) do
                v.Touched:connect(touch)
        end
end
 
local deb=false
local buttonDeb=false
local bin=Instance.new("HopperBin")
bin.Parent=player.Backpack
bin.Name="Avatar State"
bin.Selected:connect(function(mouse)
        bin:remove()
        anim.equip()
        mouse.Button1Down:connect(function()
                if deb==false then
                        deb=true
                        getTouched()
                        anim.watershoot(mouse)
                        anim.equip()
                        deb=false
                end
        end)
        mouse.KeyDown:connect(function(key)
                if key=="q" and deb==false then
                        deb=true
                        getTouched()
                        anim.waterRaise(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="e" and deb==false then
                        deb=true
                        getTouched()
                        anim.waterSpin()
                        anim.equip()
                        deb=false
                end
                if key=="r" and deb==false then
                        deb=true
                        getTouched()
                        anim.bend(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="f" and deb==false then
                        deb=true
                        getTouched()
                        anim.watershoot2(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="c" and deb==false then
                        deb=true
                        getTouched()
                        anim.AvatarSpecial(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="v" and deb==false then
                        deb=true
                        getTouched()
                        anim.waterbending2(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="p" and deb==false then
                        deb=true
                        getTouched()
                        anim.watersh00t(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="g" and deb==false then
                        deb=true
                        getTouched()
                        anim.waterBack(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="h" and deb==false then
                        deb=true
                        getTouched()
                        anim.waterForward(mouse)
                        anim.equip()
                        deb=false
                end
                if key=="z" and buttonDeb==false then
                        buttonDeb=true
                        getTouched()
                        path()
                end
                if key=="z" and buttonDeb==true then
                        buttonDeb=false
                        pathPart:remove() torso["BodyPosition"]:remove()
                end
        end)
end)
--mediafire gtfo password
