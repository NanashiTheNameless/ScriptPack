player = game:service("Players").LocalPlayer

player.Character.Humanoid.MaxHealth = math.huge

player.Character.Humanoid.Health = math.huge

suit = Instance.new("Model", player.Character)

color = "Really black"

eyecolor = "Really red"

lasercolor = "Really red"

dotcolor = "Really red"

damage = 25

for i,v in pairs(player.Character:GetChildren()) do

if v.className == "CharacterMesh" or v.className == "Hat" then

v:remove()

end end 

Weld = function(PartA,PartB)

if PartA:IsA("Part") and PartB:IsA("Part") then

local OffSet2 = PartA.Position-PartB.Position

local PartAcframe = PartA.CFrame

local weld = Instance.new("Weld")

weld.Parent = suit

weld.Part0 = PartA

weld.Part1 = PartB

weld.C1 = CFrame.new(OffSet2)

PartA.CFrame = PartA.CFrame

PartA:MakeJoints()

PartB:MakeJoints()

end

end

torso = Instance.new("Part", suit)

torso.FormFactor = "Custom"

torso.Size = Vector3.new(2.2, 2.2, 1.2)

torso.BrickColor = BrickColor.new(color)

torso.TopSurface = "Smooth"

torso.BottomSurface = "Smooth"

torso.CFrame = player.Character.Torso.CFrame

Weld(player.Character.Torso, torso)

la = Instance.new("Part", suit)

la.FormFactor = "Custom"

la.Size = Vector3.new(1.2, 2.2, 1.2)

la.BrickColor = BrickColor.new(color)

la.TopSurface = "Smooth"

la.BottomSurface = "Smooth"

la.CFrame = player.Character["Left Arm"].CFrame

Weld(player.Character["Left Arm"], la)

ra = Instance.new("Part", suit)

ra.FormFactor = "Custom"

ra.Size = Vector3.new(1.2, 2.2, 1.2)

ra.BrickColor = BrickColor.new(color)

ra.TopSurface = "Smooth"

ra.BottomSurface = "Smooth"

ra.CFrame = player.Character["Right Arm"].CFrame

Weld(player.Character["Right Arm"], ra)

rl = Instance.new("Part", suit)

rl.FormFactor = "Custom"

rl.Size = Vector3.new(1.2, 2, 1.2)

rl.BrickColor = BrickColor.new(color)

rl.TopSurface = "Smooth"

rl.BottomSurface = "Smooth"

rl.CFrame = player.Character["Right Leg"].CFrame

Weld(player.Character["Right Leg"], rl)

ll = Instance.new("Part", suit)

ll.FormFactor = "Custom"

ll.Size = Vector3.new(1.2, 2, 1.2)

ll.BrickColor = BrickColor.new(color)

ll.TopSurface = "Smooth"

ll.BottomSurface = "Smooth"

ll.CFrame = player.Character["Left Leg"].CFrame

Weld(player.Character["Left Leg"], ll)

h = Instance.new("Part", suit)

h.CanCollide = true

h.FormFactor = "Custom"

h.Size = Vector3.new(1.2, 1.2, 1.2)

h.BrickColor = BrickColor.new(color)

h.TopSurface = "Smooth"

h.BottomSurface = "Smooth"

h.CFrame = player.Character["Head"].CFrame

player.Character["Head"].Mesh:Clone().Parent = h

Weld(player.Character["Head"], h)

e1 = Instance.new("Part", suit)

e1.CanCollide = true

e1.FormFactor = "Custom"

e1.Size = Vector3.new(0.1, 0.1, 0.1)

e1.BrickColor = BrickColor.new(eyecolor)

e1.TopSurface = "Smooth"

e1.BottomSurface = "Smooth"

e1.CFrame = player.Character["Head"].CFrame * CFrame.new(0.25, 0.25, 0.7)

Weld(h, e1)

e2 = Instance.new("Part", suit)

e2.CanCollide = true

e2.FormFactor = "Custom"

e2.Size = Vector3.new(0.1, 0.1, 0.1)

e2.BrickColor = BrickColor.new(eyecolor)

e2.TopSurface = "Smooth"

e2.BottomSurface = "Smooth"

e2.CFrame = player.Character["Head"].CFrame * CFrame.new(-0.25, 0.25, 0.7)

Weld(h, e2)

saber = Instance.new("Tool", player.Backpack)

saber.Name = "Suit Saber"

saberh = Instance.new("Part", saber)

saberh.Name = "Handle"

saberh.FormFactor = "Custom"

saberh.TopSurface = "Smooth"

saberh.BottomSurface = "Smooth"

saberh.Transparency = 0.5

saberh.Size = Vector3.new(0.1, 5, 0.1)

saber.Equipped:connect(function(mouse)

mouse.Button1Down:connect(function()

rs = player.Character.Torso["Right Shoulder"]

ls = player.Character.Torso["Left Shoulder"]

        local speed = rs.MaxVelocity

        for a = 1, 9 do

            rs.C0 = rs.C0 * CFrame.Angles(0,0.1,0)

            ls.C0 = ls.C0 * CFrame.Angles(0,-0.1,0)

        end

        rs.MaxVelocity = 0.7

        ls.MaxVelocity = 0.7

            for i = 1, 5 do

            wait()

            rs.DesiredAngle = 2.5

            ls.DesiredAngle = -2.5

        end 

        rs.MaxVelocity = 0

        ls.MaxVelocity = 0

wait(0.5)

        rs.MaxVelocity = 0.2

        ls.MaxVelocity = 0.2

            for i = 1, 80 do

            wait()

            rs.DesiredAngle = 1.2

            ls.DesiredAngle = -1.2

end 

            rs.DesiredAngle = 0

            ls.DesiredAngle = 0

        rs.MaxVelocity = speed

        ls.MaxVelocity = speed

        for a = 1, 9 do

            wait()

            rs.C0 = rs.C0 * CFrame.Angles(0,-0.1,0)

            ls.C0 = ls.C0 * CFrame.Angles(0,0.1,0)

        end 

end)

end)

toolfunc = 1

mdown = false

tool = Instance.new("HopperBin", player.Backpack)

tool.Name = "Suit's Power"

tool.Selected:connect(function(mouse)

mouse.Button1Up:connect(function()

mdown = false

end)

mouse.KeyDown:connect(function(key)

if key == "r" then

suit:remove()

tool:remove()

player.Character:BreakJoints()

script:remove()

end 

if key == "t" then

toolfunc = 2

end

if key == "e" then

toolfunc = 1

end 

if key == "m" then

toolfunc = 3

end 

end)

mouse.Button1Down:connect(function()

mdown = true

   if (toolfunc == 1) then

   while mdown == true do

    local i = mouse.Target

    local oPos = Vector3.new(0,0,0)

    local cf = CFrame.new((e1.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag = (e1.Position - mouse.Hit.p).magnitude

    local cf2 = CFrame.new((e2.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag2 = (e2.Position - mouse.Hit.p).magnitude

    if (mag > 2048) then return end

    if (mag2 > 2048) then return end

    local r = Instance.new("Part")

    r.BrickColor = BrickColor.new(lasercolor)

    r.formFactor = "Custom"

    r.Size = Vector3.new(0.2,0.2,mag)

    r.CFrame = cf

    r.Anchored = true

    r.CanCollide = false

    r.Parent = suit

    r.Transparency = 0.5

    local r2 = Instance.new("Part")

    r2.BrickColor = BrickColor.new(lasercolor)

    r2.formFactor = "Custom"

    r2.Size = Vector3.new(0.2,0.2,mag2)

    r2.CFrame = cf2

    r2.Anchored = true

    r2.CanCollide = false

    r2.Parent = suit

    r2.Transparency = 0.5

    wait(0.01)

    r:remove()

    r2:remove()

    if i ~= nil then

    local a = game:service("Players"):GetPlayerFromCharacter(i.Parent)

    if a then

    if a.Character:findFirstChild("Humanoid") then

    a.Character.Humanoid.Health = a.Character.Humanoid.Health - damage

    end

    else

    local a = game:service("Players"):GetPlayerFromCharacter(i.Parent.Parent)

    

    if a then

    if a.Character:findFirstChild("Humanoid") then

    a.Character.Humanoid.Health = a.Character.Humanoid.Health - damage

    end end end end end end 

    

   if (toolfunc == 2) then

   while mdown == true do

    local i = mouse.Target

    local oPos = Vector3.new(0,0,0)

    local cf = CFrame.new((e1.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag = (e1.Position - mouse.Hit.p).magnitude

    local cf2 = CFrame.new((e2.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag2 = (e2.Position - mouse.Hit.p).magnitude

    if (mag > 2048) then return end

    if (mag2 > 2048) then return end

    local r = Instance.new("Part")

    r.BrickColor = BrickColor.new(lasercolor)

    r.formFactor = "Custom"

    r.Size = Vector3.new(0.2,0.2,mag)

    r.CFrame = cf

    r.Anchored = true

    r.CanCollide = false

    r.Parent = suit

    r.Transparency = 0.5

    local r2 = Instance.new("Part")

    r2.BrickColor = BrickColor.new(lasercolor)

    r2.formFactor = "Custom"

    r2.Size = Vector3.new(0.2,0.2,mag2)

    r2.CFrame = cf2

    r2.Anchored = true

    r2.CanCollide = false

    r2.Parent = suit

    r2.Transparency = 0.5

    wait(0.01)

    r:remove()

    r2:remove()

    local dot = Instance.new("Part", suit)

    dot.Name = "Dot"

    dot.FormFactor = "Custom"

    dot.Size = Vector3.new(0.1, 0.1, 0.1)

    dot.BrickColor = BrickColor.new(dotcolor)

    dot.Anchored = true

    dot.Position = mouse.Hit.p

    end end 

    

   if (toolfunc == 3) then

    local i = mouse.Target

    local oPos = Vector3.new(0,0,0)

    local cf = CFrame.new((e1.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag = (e1.Position - mouse.Hit.p).magnitude

    local cf2 = CFrame.new((e2.Position + mouse.Hit.p) / 2, mouse.Hit.p)

    local mag2 = (e2.Position - mouse.Hit.p).magnitude

    if (mag > 2048) then return end

    if (mag2 > 2048) then return end

    local r = Instance.new("Part")

    r.BrickColor = BrickColor.new(lasercolor)

    r.formFactor = "Custom"

    r.Size = Vector3.new(0.2,0.2,mag)

    r.CFrame = cf

    r.Anchored = true

    r.CanCollide = false

    r.Parent = suit

    r.Transparency = 0.5

    local r2 = Instance.new("Part")

    r2.BrickColor = BrickColor.new(lasercolor)

    r2.formFactor = "Custom"

    r2.Size = Vector3.new(0.2,0.2,mag2)

    r2.CFrame = cf2

    r2.Anchored = true

    r2.CanCollide = false

    r2.Parent = suit

    r2.Transparency = 0.5

    wait(0.01)

    r:remove()

    r2:remove()

    player.Character.Torso.CFrame = CFrame.new(mouse.Hit.p.x, mouse.Hit.p.y + 3, mouse.Hit.p.z)

    end 

    end) end)