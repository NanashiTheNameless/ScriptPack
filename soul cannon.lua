Attkin = false
Attkin2 = false
local Me = game.Players.LocalPlayer 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Soul Cannon"
    script.Parent = h
end

local bin = script.Parent


me2 = Me.Character


newp = Instance.new("Part") 
newp.Locked = true
newp.Parent = me2 
newp.Transparency = 0 
newp.Size = Vector3.new(1, 1, 2) 
newp.BrickColor = BrickColor.new("Brown") 
newp.CanCollide = false 
newm = Instance.new("BlockMesh") 
newm.Scale = Vector3.new(1.01, 0.25, 1.02) 
newm.Parent = newp 
newp:BreakJoints() 
neww = Instance.new("Weld") 
neww.Parent = newp 
neww.Part0 = me2.Torso 
neww.Part1 = newp 
neww.C0 = CFrame.new(1.5, 1, -0.5) * CFrame.Angles(0, 0, 0) 
newp2 = Instance.new("Part") 
newp2.Locked = true
newp2.Parent = me2 
newp2.Transparency = 0 
newp2.Size = Vector3.new(1, 1, 2) 
newp2.BrickColor = BrickColor.new("Bright orange") 
newp2.CanCollide = false 
newm2 = Instance.new("BlockMesh") 
newm2.Scale = Vector3.new(1, 0.25, 1) 
newm2.Parent = newp2 
newp2:BreakJoints() 
neww2 = Instance.new("Weld") 
neww2.Parent = newp2 
neww2.Part0 = me2.Torso 
neww2.Part1 = newp2 
neww2.C0 = CFrame.new(1.5, 1.1, -0.5) * CFrame.Angles(0.15, 0, 0) 
newp3 = Instance.new("Part") 
newp3.Locked = true
newp3.Parent = me2 
newp3.Transparency = 0 
newp3.Size = Vector3.new(1, 1, 2) 
newp3.BrickColor = BrickColor.new("Brown") 
newp3.CanCollide = false 
newm3 = Instance.new("BlockMesh") 
newm3.Scale = Vector3.new(1.01, 0.25, 1.02) 
newm3.Parent = newp3 
newp3:BreakJoints() 
neww3 = Instance.new("Weld") 
neww3.Parent = newp3 
neww3.Part0 = me2.Torso 
neww3.Part1 = newp3 
neww3.C0 = CFrame.new(1.5, 1.3, -0.5) * CFrame.Angles(0.2, 0, 0) 
newp4 = Instance.new("Part") 
newp4.Locked = true
newp4.Parent = me2 
newp4.Transparency = 0 
newp4.Size = Vector3.new(1, 1, 1) 
newp4.BrickColor = BrickColor.new("Bright orange") 
newp4.CanCollide = false 
newm4 = Instance.new("CylinderMesh") 
newm4.Scale = Vector3.new(0.15, 1.5, 0.15) 
newm4.Parent = newp4 
newp4:BreakJoints() 
neww4 = Instance.new("Weld") 
neww4.Parent = newp4 
neww4.Part0 = me2.Torso 
neww4.Part1 = newp4 
neww4.C0 = CFrame.new(1, 1.2, 0) * CFrame.Angles(0, 0, 4.5) 
newp5 = Instance.new("Part") 
newp5.Locked = true
newp5.Parent = me2 
newp5.Transparency = 0.75 
newp5.Size = Vector3.new(1, 1, 1) 
newp5.BrickColor = BrickColor.new("Really red") 
newp5.CanCollide = false 
newm5 = Instance.new("CylinderMesh") 
newm5.Scale = Vector3.new(0.15, 1.5, 0.15) 
newm5.Parent = newp5 
newp5:BreakJoints() 
neww5 = Instance.new("Weld") 
neww5.Parent = newp5 
neww5.Part0 = me2.Torso 
neww5.Part1 = newp5 
neww5.C0 = CFrame.new(1.5, 1, -2.25) * CFrame.Angles(4.72, 0, 0) 

function RC(Pos, Dir, Max, Ignore)
    return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
end

function RayC(Start, En, MaxDist, Ignore)
    return RC(Start, (En - Start), MaxDist, Ignore)
end

function onSelected(mouse)
    mouse.Button1Down:connect(function()
shot = Instance.new("Part") 
shot.Parent = me2 
shot.CanCollide = false 
shot.Anchored = true
shot.Size = Vector3.new(1, 1, 1) 
shot.Transparency = 0.5 
shot.BrickColor = BrickColor.new("White") 
local start = CFrame.new(newp5.Position) + Vector3.new(0, 0.25, 0) 
local ending = mouse.Hit.p
local face = CFrame.new(start.p, ending)
shot.CFrame = face
local magn = (start.p - ending).magnitude
local lastP = start.p
for i = 4, 300, 8 do
    face = face * CFrame.new(0, 0, -8)
    shot.CFrame = face
    local mag = (lastP - face.p).magnitude
    local t = Instance.new("Part",me2)
    t.Anchored = true
    t.BrickColor = BrickColor.new("White")
    t.formFactor = "Custom"
    t.Size = Vector3.new(0.4, 0.4, 1)
    local mm = Instance.new("BlockMesh",t)
    mm.Scale = Vector3.new(1, 1, mag)
    t.CFrame = CFrame.new(lastP, face.p) * CFrame.new(0, 0, -mag/2)
    coroutine.resume(coroutine.create(function()
        wait(0.05)
        for i = 0, 1, 0.1 do
            t.Transparency = i
            mm.Scale = Vector3.new(0.4-0.4*i, 0.4-0.4*i, mag)
            wait()
        end
        t:remove()
    end))
    local hit, pos = RayC(lastP, face.p, 14, me2)
    if hit then
        local h = hit.Parent:findFirstChild("Humanoid")
        if h then
            h.Health = h.Health - 15
        end
        shot:remove()
        break
    end
    lastP = face.p
    wait()
end
shot:remove()
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" and Attkin == false then 
        Attkin = true
shot = Instance.new("Part") 
shot.Parent = me2 
shot.CanCollide = false 
shot.Anchored = true
shot.Size = Vector3.new(1, 1, 1) 
shot.Transparency = 0.5 
shot.BrickColor = BrickColor.new("Really red") 
local start = CFrame.new(newp5.Position) + Vector3.new(0, 0.25, 0) 
local ending = mouse.Hit.p
local face = CFrame.new(start.p, ending)
shot.CFrame = face
local magn = (start.p - ending).magnitude
local lastP = start.p
coroutine.resume(coroutine.create(function()
wait(0.8)
Attkin = false
end))
for i = 4, 300, 8 do
    face = face * CFrame.new(0, 0, -8)
    shot.CFrame = face
    local mag = (lastP - face.p).magnitude
    local t = Instance.new("Part",me2)
    t.Anchored = true
    t.BrickColor = BrickColor.new("Really red")
    t.formFactor = "Custom"
    t.Size = Vector3.new(0.4, 0.4, 1)
    local mm = Instance.new("BlockMesh",t)
    mm.Scale = Vector3.new(1, 1, mag)
    t.CFrame = CFrame.new(lastP, face.p) * CFrame.new(0, 0, -mag/2)
    coroutine.resume(coroutine.create(function()
        wait(0.05)
        for i = 0, 1, 0.1 do
            t.Transparency = i
            mm.Scale = Vector3.new(0.4-0.4*i, 0.4-0.4*i, mag)
            wait()
        end
        t:remove()
    end))
    local hit, pos = RayC(lastP, face.p, 14, me2)
    if hit then
        local h = hit.Parent:findFirstChild("Humanoid")
        if h then
            h.Health = h.Health - 35
        end
        shot:remove()
        break
    end
    lastP = face.p
    wait()
end
shot:remove()
        end 
        if key == "e" and Attkin2 == false then 
        Attkin2 = true
shot = Instance.new("Part") 
shot.Parent = me2 
shot.CanCollide = false 
shot.Anchored = true
shot.Size = Vector3.new(1, 1, 1) 
shot.Transparency = 0.5 
shot.BrickColor = BrickColor.new("Bright blue") 
local start = CFrame.new(newp5.Position) + Vector3.new(0, 0.25, 0) 
local ending = mouse.Hit.p
local face = CFrame.new(start.p, ending)
shot.CFrame = face
local magn = (start.p - ending).magnitude
local lastP = start.p
coroutine.resume(coroutine.create(function()
wait(5)
Attkin2 = false
end))
for i = 4, 300, 8 do
    face = face * CFrame.new(0, 0, -8)
    shot.CFrame = face
    local mag = (lastP - face.p).magnitude
    local t = Instance.new("Part",me2)
    t.Anchored = true
    t.BrickColor = BrickColor.new("Bright blue")
    t.formFactor = "Custom"
    t.Size = Vector3.new(0.4, 0.4, 1)
    local mm = Instance.new("BlockMesh",t)
    mm.Scale = Vector3.new(1, 1, mag)
    t.CFrame = CFrame.new(lastP, face.p) * CFrame.new(0, 0, -mag/2)
    coroutine.resume(coroutine.create(function()
        wait(0.05)
        for i = 0, 1, 0.1 do
            t.Transparency = i
            mm.Scale = Vector3.new(0.4-0.4*i, 0.4-0.4*i, mag)
            wait()
        end
        t:remove()
    end))
    local hit, pos = RayC(lastP, face.p, 14, me2)
    if hit then
        local h = hit.Parent:findFirstChild("Humanoid")
        if h then
            h.Health = h.Health - 75
        end
        shot:remove()
        break
    end
    lastP = face.p
    wait()
end
shot:remove()
        end 
    end)
end

function onDesel(mouse)
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
