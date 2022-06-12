--------------------------------------------------------------------------------------------[[Mediafire]]-----------------------------------------------------------------------------------------------------------
 
-- Player declarations
local player = game.Players.LocalPlayer
local char = player.Character
 
-- Body parts
local head = char.Head
local torso = char.Torso
 
-- Tool declarations
local mouseDown = false
local keysDown = {}
 
-- Earth bending declarations
local raisingEarth = false
local raisingTower = false
local groundAttack = false
local flyingEarth = nil
local lastTower = nil
local disabled = {}
local frames = {}
local parts = {}
 
local bloodBodies = {}
 
-- Main
function main(mouse)
        while true do wait(1/60)
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
                
                        -- Blood bending
                        if keysDown["q"] then
                                for _, part in pairs(parts) do
                                        local oPlayer = game.Players:GetPlayerFromCharacter(part.Parent)
                                        if oPlayer and oPlayer ~= player then
                                                local oTorso = part.Parent:FindFirstChild("Torso")
                                                if oTorso then
                                                        local bodyPos = oTorso:FindFirstChild("BodyPosition")
                                                        local bodyGyr = oTorso:FindFirstChild("BodyGyro")
                                                        if not bodyPos then
                                                                bodyPos = createBody("Position", oTorso)
                                                                table.insert(bloodBodies, bodyPos)
                                                        end
                                                        if not bodyGyr then
                                                                bodyGyr = createBody("Gyro", oTorso)
                                                                table.insert(bloodBodies, bodyGyr)
                                                        end
                                                end
                                                break
                                        end
                                end
                                for _, body in pairs(bloodBodies) do
                                        body.Parent.Anchored = false
                                        if body.className == "BodyPosition" then
                                                body.maxForce = Vector3.new(math.huge, math.huge, math.huge)
                                        elseif body.className == "BodyGyro" then
                                                body.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                                        end
                                        local oTorso = body.Parent
                                        local hit, posd = rayCast(oTorso.Position, Vector3.new(0, -50, 0), {oTorso.Parent})
                                        posd = posd + Vector3.new(0, 3, 0)
                                        local tor = oTorso.Position
                                        local pos = planeY(mouse.Hit.p, posd.y)
                                        local frame = CFrame.new(tor, tor + (pos - tor).unit) * CFrame.new(0, 0, -10)
                                        
                                        if body.className == "BodyPosition" then
                                                body.position = frame.p
                                        else
                                                body.cframe = frame
                                        end
                                end
                        else
                                for i in pairs(bloodBodies) do
                                        bloodBodies[i]:Destroy()
                                        bloodBodies[i] = nil
                                end
                        end
                
                -- Mouse down
                if mouseDown then
                        -- Create dif and bodies
                        for _, part in pairs(parts) do
                                if part.Name == "Earth" and not disabled[part] then
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
                                if part.Name == "Earth" then
                                        frames[part] = nil
                                        
                                        part:ClearAllChildren()
                                end
                        end
                end
        end
end
 
-- On key change
function onKeyChange(mouse, key, state)
        -- Raise earth
        if key == "e" and state and not raisingEarth then
                raisingEarth = true
                while keysDown[key] do
                        local torsoY = torso.Position.y + 3
                        local pos = planeY(torso.Position, 0.4 - 4/2)
                        local dir = planeY(mouse.Hit.lookVector).unit
                        local frame = CFrame.new(pos, pos + dir) * CFrame.new(r(-10, 10), 0, r(-20, -5))
                        
                        -- Create earth part
                        local part = createEarth(workspace)
                        part.Anchored = true
                        part.Size = Vector3.new(4, 4, 4)
                        disabled[part] = true
                        
                        -- Raise earth
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
                raisingEarth = false
        
        -- Push earth
        elseif key == "f" and state then
                for _, part in pairs(parts) do
                        if part.Name == "Earth" and part ~= lastTower then
                                part:ClearAllChildren()
                                part.Anchored = false
                                
                                -- Add force
                                local bodyForce = createBody("Force", part)
                                bodyForce.force = mouse.Hit.lookVector*1.5e4 * part:GetMass()
                                
                                game.Debris:AddItem(bodyForce, 1/30)
                                
                                -- Disable part
                                disabled[part] = true
                                delay(1, function()
                                        disabled[part] = nil
                                end)
                        end
                end
        
        -- Break earth
        elseif key == "b" and state then
                for part in pairs(frames) do
                        if part.Size == Vector3.new(4, 4, 4) then
                                for x = -1, 1, 2 do
                                        for y = -1, 1, 2 do
                                                for z = -1, 1, 2 do
                                                        local oPart = createEarth(workspace)
                                                        oPart.Size = Vector3.new(2, 2, 2)
                                                        oPart.CFrame = part.CFrame * CFrame.new(x*1.1, y*1.1, z*1.1)
                                                end
                                        end
                                end
                                part:Destroy()
                        end
                end
        
        -- Raise tower
        elseif key == "r" and state and not raisingTower then
                raisingTower = true
                lastTower = nil
                if torso.Position.y - 5/2 < 20.4 then
                        local part = createEarth(workspace)
                        part.Anchored = true
                        disabled[part] = true
                        
                        for i = 0, 20, 4 do
                                part.Size = Vector3.new(5, i, 5)
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
                local pos = planeY(torso.Position, 0.4 + 1) + dir*5
                
                local ground = {}
                
                delay(5, function()
                        for i = 1, 20 do
                                for _, part in pairs(ground) do
                                        if part.Anchored then
                                                part.CFrame = part.CFrame + Vector3.new(0, -1/7, 0)
                                        end
                                end
                                wait(1/30)
                        end
                        for _, part in pairs(ground) do
                                if part.Anchored then
                                        part:Destroy()
                                end
                        end
                end)
                
                for i = 1, 10 do
                        local hit, pos2 = rayCast(pos, dir*5, {char})
                        
                        local part = createEarth(workspace)
                        part.Anchored = true
                        part.Size = Vector3.new(2, 4, 2)
                        part.CFrame = CFrame.new(pos2, pos2 + dir) * CFrame.Angles(math.rad(-50), 0, 0) + Vector3.new(0, -0, 0)
                        
                        ground[#ground + 1] = part
                        
                        -- Add force
                        if hit then
                                local mass = hit:GetMass()
                                
                                -- Hit player
                                for _, oPlayer in pairs(game.Players:GetPlayers()) do
                                        if oPlayer.Character and oPlayer.Character:FindFirstChild("Torso") and hit:IsDescendantOf(oPlayer.Character) then
                                                hit = oPlayer.Character.Torso
                                                mass = 16
                                        end
                                end
                                
                                if hit.Name ~= "Torso" then
                                        hit:ClearAllChildren()
                                end
                                hit.Anchored = false
                                
                                -- Add force
                                local bodyForce = createBody("Force", hit)
                                bodyForce.force = (dir + Vector3.new(0, 0.2, 0)).unit*1e4 * mass
                                
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
tool.Name = "Earth Bending"
 
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
 
-- Create earth
function createEarth(path)
        local part = createPart("Earth", path)
        part.BrickColor = BrickColor.new("Brown")
        part.Material = "Slate"
        part.Parent = path
        part.Parent = char
        return part
end
 
-- Create part
function createPart(name, path)
        local part = Instance.new("Part")
        part.FormFactor = "Symmetric"
        part.BottomSurface = "Smooth"
        part.TopSurface = "Smooth"
        part.Size = Vector3.new(1, 1, 1)
        part.Name = name
        part.Parent = path
        return part
end
        
-- Linear interpolation
function lerp(a, b, t)
        return a + (b - a)*t
end
 
-- Spherical interpolation
function slerp(a, b, t)
        local dot = a:Dot(b)
        if math.abs(dot) > 0.99999 then
                return t <= 0.5 and a or b
        else
                local r = math.acos(dot)
                return (a*math.sin((1 - t)*r) + b*math.sin(t*r)) / math.sin(r)
        end
end
 
-- Matrix interpolation
function matrixInterpolate(a, b, t)
        local ax, ay, az, a00, a01, a02, a10, a11, a12, a20, a21, a22 = a:components()
        local bx, by, bz, b00, b01, b02, b10, b11, b12, b20, b21, b22 = b:components()
        
        local v0 =  lerp(Vector3.new(ax , ay , az ), Vector3.new(bx , by , bz) , t) -- Vector pos
        local v1 = slerp(Vector3.new(a00, a01, a02), Vector3.new(b00, b01, b02), t) -- Vector right
        local v2 = slerp(Vector3.new(a10, a11, a12), Vector3.new(b10, b11, b12), t) -- Vector up
        local v3 = slerp(Vector3.new(a20, a21, a22), Vector3.new(b20, b21, b22), t) -- Vector back
        
        return CFrame.new(
                v0.x, v0.y, v0.z,
                v1.x, v1.y, v1.z,
                v2.x, v2.y, v2.z,
                v3.x, v3.y, v3.z)
end
 
        --[[
                while true do
                        wait(1/30)
                        for _, player in pairs(game.Players:GetPlayers()) do
                                pcall(function()
                                        if player.Character.Torso.Position.y < 0 then
                                                player.Character.Torso.Velocity = Vector3.new()
                                                player.Character.Torso.CFrame = CFrame.new(math.random(-100, 100), 20, math.random(-100, 100))
                                                player.Character.Torso.Velocity = Vector3.new()
                                                
                                                local msg = Instance.new("Message")
                                                msg.Text = player.Name .. " has been killed"
                                                msg.Parent = workspace
                                                game.Debris:AddItem(msg, 3)
                                        end
                                end) -- mediafire
                        end
                end
        --]]