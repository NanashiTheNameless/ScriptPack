local Me = game.Players.LocalPlayer 
Attkin = false 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Bow"
    script.Parent = h
end

local bin = script.Parent


me2 = Me.Character


newp = Instance.new("Part") 
newp.Locked = true
newp.Parent = me2 
newp.Transparency = 0 
newp.Size = Vector3.new(1, 1, 1) 
newp.BrickColor = BrickColor.new("Brown") 
newp.CanCollide = false 
newm = Instance.new("BlockMesh") 
newm.Scale = Vector3.new(0.15, 1.25, 0.15) 
newm.Parent = newp 
newp:BreakJoints() 
neww = Instance.new("Weld") 
neww.Parent = newp 
neww.Part0 = me2.Torso 
neww.Part1 = newp 
neww.C0 = CFrame.new(0.85, 1, -2.25) * CFrame.Angles(3.5, 0, 0) 
newp2 = Instance.new("Part") 
newp2.Locked = true
newp2.Parent = me2 
newp2.Transparency = 0 
newp2.Size = Vector3.new(1, 1, 1) 
newp2.BrickColor = BrickColor.new("Brown") 
newp2.CanCollide = false 
newm2 = Instance.new("BlockMesh") 
newm2.Scale = Vector3.new(0.15, 1.25, 0.15) 
newm2.Parent = newp2 
newp2:BreakJoints() 
neww2 = Instance.new("Weld") 
neww2.Parent = newp2 
neww2.Part0 = me2.Torso 
neww2.Part1 = newp2 
neww2.C0 = CFrame.new(0.85, -0.25, -2.25) * CFrame.Angles(-3.5, 0, 0) 
newp3 = Instance.new("Part") 
newp3.Locked = true
newp3.Parent = me2 
newp3.Transparency = 0 
newp3.Size = Vector3.new(1, 1, 1) 
newp3.BrickColor = BrickColor.new("Bright blue") 
newp3.CanCollide = false 
newm3 = Instance.new("CylinderMesh") 
newm3.Scale = Vector3.new(0.25, 0.25, 0.25) 
newm3.Parent = newp3 
newp3:BreakJoints() 
neww3 = Instance.new("Weld") 
neww3.Parent = newp3 
neww3.Part0 = me2.Torso 
neww3.Part1 = newp3 
neww3.C0 = CFrame.new(0.85, 0.28, -2.453) * CFrame.Angles(-3.5, 0, 0) 
newp4 = Instance.new("Part") 
newp4.Locked = true
newp4.Parent = me2 
newp4.Transparency = 0 
newp4.Size = Vector3.new(1, 1, 1) 
newp4.BrickColor = BrickColor.new("Bright blue") 
newp4.CanCollide = false 
newm4 = Instance.new("CylinderMesh") 
newm4.Scale = Vector3.new(0.25, 0.25, 0.25) 
newm4.Parent = newp4 
newp4:BreakJoints() 
neww4 = Instance.new("Weld") 
neww4.Parent = newp4 
neww4.Part0 = me2.Torso 
neww4.Part1 = newp4 
neww4.C0 = CFrame.new(0.85, 0.47, -2.46) * CFrame.Angles(3.5, 0, 0) 
newp5 = Instance.new("Part") 
newp5.Locked = true
newp5.Parent = me2 
newp5.Transparency = 0 
newp5.Size = Vector3.new(1, 1, 1) 
newp5.BrickColor = BrickColor.new("White") 
newp5.CanCollide = false 
newm5 = Instance.new("BlockMesh") 
newm5.Scale = Vector3.new(0.07, 1.1, 0.07) 
newm5.Parent = newp5 
newp5:BreakJoints() 
neww5 = Instance.new("Weld") 
neww5.Parent = newp5 
neww5.Part0 = me2.Torso 
neww5.Part1 = newp5 
neww5.C0 = CFrame.new(0.85, 1, -1.85) * CFrame.Angles(-3.5, 0, 0) 
newp6 = Instance.new("Part") 
newp6.Locked = true
newp6.Parent = me2 
newp6.Transparency = 0 
newp6.Size = Vector3.new(1, 1, 1) 
newp6.BrickColor = BrickColor.new("White") 
newp6.CanCollide = false 
newm6 = Instance.new("BlockMesh") 
newm6.Scale = Vector3.new(0.07, 1.1, 0.07) 
newm6.Parent = newp6 
newp6:BreakJoints() 
neww6 = Instance.new("Weld") 
neww6.Parent = newp6 
neww6.Part0 = me2.Torso 
neww6.Part1 = newp6 
neww6.C0 = CFrame.new(0.85, -0.25, -1.85) * CFrame.Angles(3.5, 0, 0) 
armr = Instance.new("Weld") 
armr.Parent = me2 
armr.Part0 = newp6 
armr.Part1 = me2["Right Arm"]  
armr.C0 = CFrame.new(0.4, -1, -0.85) * CFrame.Angles(1, 0, 3.5) 
arml = Instance.new("Weld") 
arml.Parent = me2 
arml.Part0 = newp6 
arml.Part1 = me2["Left Arm"]  
arml.C0 = CFrame.new(-0.6, -0.8, 0.05) * CFrame.Angles(1, 0, -3.73) 




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
shot.formFactor = "Custom"
shot.Size = Vector3.new(0.1, 0.1, 1) 
shot.Transparency = 0 
shot.BrickColor = BrickColor.new("Brown") 
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
        for i = 0, 1, 0.2 do
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
shot.formFactor = "Custom"
shot.Size = Vector3.new(0.1, 0.1, 1) 
shot.Transparency = 0 
shot.BrickColor = BrickColor.new("Brown") 
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
    t.BrickColor = BrickColor.new("White")
    t.formFactor = "Custom"
    t.Size = Vector3.new(0.05, 0.05, 1)
    local mm = Instance.new("BlockMesh",t)
    mm.Scale = Vector3.new(1, 1, mag)
    t.CFrame = CFrame.new(lastP, face.p) * CFrame.new(0, 0, -mag/2)
    coroutine.resume(coroutine.create(function()
        wait(0.05)
        for i = 0, 1, 0.2 do
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
    end)
end

function onDesel(mouse)
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
