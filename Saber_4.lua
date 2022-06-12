--Saber
local plr = game:service'Players'.LocalPlayer
local char = plr.Character
local mouse = plr:GetMouse()
local torso = char:findFirstChild("Torso")
local head = char.Head
local ra = char:findFirstChild("Right Arm")
local la = char:findFirstChild("Left Arm")
local rl = char:findFirstChild("Right Leg")
local ll = char:findFirstChild("Left Leg")
local rs = torso:findFirstChild("Right Shoulder")
local ls = torso:findFirstChild("Left Shoulder")
local equipped = false
local debounce = false
local slashing = false
local blocking = false
local blocking2 = false
local stoopidstuff = Instance.new("BoolValue", char)
stoopidstuff.Name = "stoopidstuff"
stoopidstuff.Value = true
local healing = false
local storedhealth
local storewalkspeed = char:findFirstChild("Humanoid").WalkSpeed
local damage = 30
local colors = {"Royal purple", "Cyan", "Really red", "Lime green"}
function part(parent, size, formfactor,  color, collide, transparency)
        local p=Instance.new("Part", parent)
        p.FormFactor=formfactor
        p.CanCollide=false
        p.Size=size
        p.Locked=true
                p.Transparency=transparency
        p.Position=torso.Position
        p.BrickColor=color
        p.FrontSurface="SmoothNoOutlines" 
        p.BackSurface="SmoothNoOutlines"         
        p.LeftSurface="SmoothNoOutlines" 
        p.BottomSurface="SmoothNoOutlines" 
        p.TopSurface="SmoothNoOutlines"  
        p.RightSurface="SmoothNoOutlines" 
        return p
end
function wedge(parent, size, formfactor, color, collide)
                local p=Instance.new("Wedge", parent)
        p.FormFactor=formfactor
        p.CanCollide=false
        p.Size=size
        p.Locked=true
        p.Position = torso.Position
        p.BrickColor=color
        p.FrontSurface="SmoothNoOutlines" 
        p.BackSurface="SmoothNoOutlines"         
        p.LeftSurface="SmoothNoOutlines" 
        p.BottomSurface="SmoothNoOutlines" 
        p.TopSurface="SmoothNoOutlines"  
        p.RightSurface="SmoothNoOutlines"
return p
end 
function weld(c0, c1, part1, part0)
        local wel=Instance.new("Weld", char)
        wel.Part0 = part0
        wel.Part1 = part1
        wel.C0 = c0
        wel.C1 = c1
        return wel
end
function specialmesh(parent, meshType, scale, meshId)
        local mesh = Instance.new("SpecialMesh", parent)
        mesh.Scale = scale
        mesh.MeshType = meshType
        mesh.MeshId = meshId
        return mesh
end
function equip()
ar = Instance.new("Part", char)
ar.FormFactor = "Custom"
ar.Size = Vector3.new(1, 1, 1)
ar.Transparency = 1
ar.CanCollide = false
ar.Locked = true
ar:BreakJoints()
fakel = Instance.new("Weld", char)
fakel.Part0 = char.Torso
       fakel.Part1 = ar
coroutine.wrap(function()
for angle = 0, 45, 5 do
        if fakel == nil then return end
fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(0), math.rad(0))
wait()
end
        end)()
welditbro = Instance.new("Weld", char)
welditbro.C0 = CFrame.new(0, 0.5, 0)
welditbro.Part0 = ra
welditbro.Part1 = ar
end
function block()
        if not equipped then return end
                stoopidstuff.Value = true
        damage = 2
        char:findFirstChild("Humanoid").WalkSpeed = 6
storedhealth = char:findFirstChild("Humanoid").Health
        for angle = 0, 70, 10 do
                fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45), math.rad(angle), 0)
                wait()
        end
coroutine.wrap(function()
while blocking do
        if not blocking then return end
                        char:findFirstChild("Humanoid").Health = storedhealth
game:service'RunService'.Stepped:wait()
end
end)()
end
function unblock()
                        stoopidstuff.Value = false
        if not equipped then return end
        damage = 30
        char:findFirstChild("Humanoid").WalkSpeed = storewalkspeed
                for angle = 70, 0, -10 do
                fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45), math.rad(angle), 0)
                wait()
                end
blocking = false
end
function block2()
        if not equipped then return end
                stoopidstuff.Value = true
        damage = 2
        char:findFirstChild("Humanoid").WalkSpeed = 6
storedhealth = char:findFirstChild("Humanoid").Health
        for angle = 0, 50, 10 do
                fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45 + angle/6), 0, -math.rad(angle))
                wait()
        end
coroutine.wrap(function()
while blocking2 do
        if not blocking2 then return end
                        char:findFirstChild("Humanoid").Health = storedhealth
game:service'RunService'.Stepped:wait()
end
end)()
end
function unblock2()
                        stoopidstuff.Value = false
        if not equipped then return end
        damage = 30
        char:findFirstChild("Humanoid").WalkSpeed = storewalkspeed
                for angle = 50, 0, -10 do
                fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45 + angle/6), math.rad(0), -math.rad(angle))
                wait()
                end
                                blocking2 = false
                end
function heal()
        ar2 = Instance.new("Part", char)
ar2.FormFactor = "Custom"
ar2.Size = Vector3.new(1, 1, 1)
ar2.Transparency = 1
ar2.CanCollide = false
ar2.Locked = true
ar2:BreakJoints()
fakel2 = Instance.new("Weld", char)
fakel2.Part0 = torso
       fakel2.Part1 = ar2
welditbro2 = Instance.new("Weld", char)
welditbro2.C0 = CFrame.new(0, 0.5, 0)
welditbro2.Part0 = la
welditbro2.Part1 = ar2
for angle = 0, 170, 5 do
fakel2.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(0), math.rad(0))
wait()
end
local ball = Instance.new("Part", char)
ball.FormFactor = "Custom"
ball.BrickColor = BrickColor.new("Lime green")
ball.Anchored = true
ball.CanCollide = false
ball.TopSurface = 0
ball.BottomSurface = 0
ball.Transparency = 0.4
ball.Locked = true
ball.Shape = "Ball"
ball.CFrame = torso.CFrame
local mesh = Instance.new("SpecialMesh", ball)
mesh.MeshType = "Sphere"
coroutine.wrap(function()
for i = 0.2, 8, 0.1 do 
mesh.Scale = Vector3.new(i, i, i)
ball.Transparency = ball.Transparency + 0.005
wait()
end
        ball:Destroy()
end)()
local splash = Instance.new("Part", char)
        splash.FormFactor = "Custom"
        splash.BrickColor = BrickColor.new("Lime green")
        splash.Transparency = 0
        splash.Anchored = true
        splash.CanCollide = false
        splash.BottomSurface = 0
        splash.TopSurface = 0
        splash.Locked = true
        local mesh = Instance.new("SpecialMesh", splash)
        mesh.MeshType = "FileMesh"
        mesh.Scale = Vector3.new(1, 1, 1)
        mesh.MeshId = "http://www.roblox.com/asset/?id=3270017"
        splash:BreakJoints()
        splash.CFrame = ball.CFrame * CFrame.Angles(math.rad(90), 0, 0)
                coroutine.resume(coroutine.create(function()
                for i = 0, 50, 0.5 do
                        mesh.Scale = Vector3.new(i, i, 1)
                        splash.Transparency = splash.Transparency + 0.01
                        wait()
                end
                splash:Destroy()
                end))
                
                char:findFirstChild("Humanoid").Health = char:findFirstChild("Humanoid").Health + 1000
                wait(0.5)
                welditbro2:Destroy()
                fakel2:Destroy()
                ar2:Destroy()
                ls.Parent = torso
                wait(1)
                healing = false
                end
        
function slash()
        if blocking then return end
if blocking2 then return end
        if not equipped then return end
        damage = 80
                for angle = 45, 95, 10 do
        fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), 0)
        wait()
                end
                for angle = 95, 5, -20 do
        fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/2), 0)
        wait()
                end
                                for angle = 5, 45, 10 do
        fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(angle), math.rad(angle/angle - 5), 0)
        wait()
                                end
                                                                slashing = false
                                fakel.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.Angles(math.rad(45), 0, 0)
                                damage = 30
                                wait(0.2)
end     
function deequip()
        pcall(function()
ar:Destroy()
fakel:Destroy()
welditbro:Destroy()
        end)
        end
        
local part1 = part(char, Vector3.new(0.2, 1.4, 0.2), "Custom", BrickColor.new("Black"), 0)
Instance.new("CylinderMesh", part1)
local weld1 = weld(CFrame.new(0, 0, 1) * CFrame.Angles(math.pi/2, 0, 0), CFrame.new(), ra, part1)
local part2 = part(char, Vector3.new(0.4, 0.4, 0.4), "Custom", BrickColor.new("Black"), 0)
Instance.new("CylinderMesh", part2)
local weld3 = weld(CFrame.new(0, 0.65, 0), CFrame.new(), part2, part1)
local part3 = part(char, Vector3.new(0.3, 4.4, 0.3), "Custom", BrickColor.White(), 0)
local mesh1 = specialmesh(part3, "Head", Vector3.new(0.8, 1, 0.8), "")
local weld4 = weld(CFrame.new(0, 2.9, 0), CFrame.new(), part3, part1)
local part4 = part(char, Vector3.new(0.4, 4.4, 0.4), "Custom", BrickColor.new(colors[math.random(1, #colors)]), 0)
local mesh2 = specialmesh(part4, "Head", Vector3.new(1, 1.01, 1), "")
local weld5 = weld(CFrame.new(0, 2.9, 0), CFrame.new(), part4, part1)
local pl = Instance.new("PointLight", part4)
pl.Color = part4.BrickColor.Color
pl.Brightness = 0
                        part3.Transparency = 1
                        part4.Transparency = 1
part4.Touched:connect(function(hit)
        if not equipped then return end
        if debounce then return end
        debounce = true
                coroutine.wrap(function()
                        pcall(function()
        if hit.Parent:FindFirstChild("Humanoid") ~= nil then
                                        if hit.Parent.Name == char.Name then return end 
        if hit.Parent:findFirstChild("stoopidstuff") ~= nil and hit.Parent:findFirstChild("stoopidstuff").Value == true then 
                return
        end
        damagerandom = damage + math.random(0, 10)
                hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - damagerandom
                coroutine.wrap(function()
        local prt = Instance.new("Part", char)
        prt.FormFactor = "Custom"
        prt.Size = Vector3.new(0.1, 0.1, 0.1)
        prt.Transparency = 1
        prt.CanCollide = false
        prt.CFrame = CFrame.new(part4.CFrame.x, part4.CFrame.y, part4.CFrame.z)
        prt.Anchored = true
        coroutine.resume(coroutine.create(function()
                        for i = 2, 10, 0.05 do
                                if prt == nil then return end
                        prt.CFrame = prt.CFrame * CFrame.new(0, 0.05, 0)
                        game:service'RunService'.Stepped:wait()
                        end
        end))
        
local bg = Instance.new("BillboardGui")
bg.Parent = prt
bg.Adornee = prt
bg.Size = UDim2.new(4, 0, 3.5, 0)
bg.ExtentsOffset = Vector3.new(0, 0, 0)
local lol = Instance.new("TextLabel")
lol.Size = UDim2.new(1.3, 0, 0.4, 0)
lol.TextScaled = true
lol.TextWrapped = true
lol.BackgroundTransparency = 0.4
lol.Parent = bg
lol.FontSize = "Size24"
lol.TextColor3 = Color3.new(1, 0, 0)
lol.TextStrokeTransparency = 0
lol.Font = "ArialBold"
lol.Text = "-"..damagerandom
        
wait(5)
prt:Destroy()
end)()
        end
end)
end)()
        wait(0.1)
                debounce = false
end)
mouse.Button1Down:connect(function(mouse)
        if slashing then return end
        if not equipped then return end
if blocking2 then return end
        if blocking then return end
        slashing = true
                slash()
end)
mouse.KeyUp:connect(function(key)
        
        if key == "f" then
                if not equipped then return end
if not blocking then return end
                unblock()
char:findFirstChild("Humanoid").MaxHealth = 100
        end
if key == "g" then
                        if not equipped then return end
if not blocking2 then return end
                unblock2()
char:findFirstChild("Humanoid").MaxHealth = 100
end
end)
mouse.KeyDown:connect(function(key)
        if key == "f" then
                if not equipped then return end
if blocking then return end
if blocking2 then return end
                blocking = true
                block()
        end
        if key == "g" then
                if not equipped then return end
if blocking then return end
if blocking2 then return end
                blocking2 = true
                block2()
        end
                        if key == "v" then
                        if healing then return end
                        if slashing then return end
                        healing = true
                heal()
        end
        if key == "q" then
                if blocking2 then return end
                if blocking then return end
                equipped = not equipped
                if equipped then
                        coroutine.wrap(function()
                while equipped do
                        part4.Transparency = 0.6
                        pl.Brightness = 0.6
wait(0.05)
part4.Transparency = 0.7
pl.Brightness = 0.8
wait(0.05)
                end
                        end)()
                        weld1.Part1 = ra
                        weld1.C0 = CFrame.new(0, 0, 1) * CFrame.Angles(math.pi/2, 0, 0)
                                                part3.Transparency = 0
        local sound = Instance.new("Sound", char.Head)
        sound.SoundId = [[http://roblox.com/asset/?id=81146867]]
        sound.Pitch = 3
        sound.Volume = 1
        sound:play()
        equip()
        wait(1)
        sound:stop()
        sound:Destroy()
                else
                        deequip()
                        wait(0.1)
                        weld1.Part1 = rl
                        weld1.C0 = CFrame.new(-0.6,-0.8,-0.2) * CFrame.Angles(math.pi/4, 0, 0) 
                        part3.Transparency = 1
                        pl.Brightness = 0
                        part4.Transparency = 1
                end
        end
        
end)
while true do
                
        if slashing then
                        local clone = part4:clone()
                        clone.Anchored = true
                        clone.Parent = workspace
                        clone.Name = "trail"
                        clone:findFirstChild("Mesh"):Destroy()
                        Instance.new("BlockMesh", clone)
                        clone.Mesh.Scale = clone.Mesh.Scale - Vector3.new(0.8, 0, 0) + Vector3.new(0, 0, 1.6)
                        coroutine.wrap(function()
                        for i = 0, 20 do
                                clone.Transparency = clone.Transparency + 0.05
                                clone.Mesh.Scale = clone.Mesh.Scale - Vector3.new(0.05, 0.05, 0.05)
                                wait()                                
                        end
                        clone:Destroy()
                        end)()
        end
        wait()
        end