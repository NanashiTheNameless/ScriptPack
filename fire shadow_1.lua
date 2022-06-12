local Me = game.Players.LocalPlayer 
Attkin = false 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Fire/Shadow"
    script.Parent = h
end

local bin = script.Parent
me2 = Me.Character

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
shot.Size = Vector3.new(2, 2, 2) 
shot.Transparency = 0.5 
shot.BrickColor = BrickColor.new("Black") 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = shot 
mesh.MeshType = "Sphere" 
local start = CFrame.new(me2.Torso.Position) + Vector3.new(0, 3, 0) 
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
    t.BrickColor = BrickColor.new("Really black")
    t.formFactor = "Custom"
    t.Size = Vector3.new(1, 1, 1)
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
            h.Health = h.Health - math.random(15, 35) 
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
        if key == "f" then 
shot = Instance.new("Part") 
shot.Parent = me2 
shot.CanCollide = false 
shot.Anchored = true
shot.Size = Vector3.new(2, 2, 2) 
shot.Transparency = 0.5 
shot.BrickColor = BrickColor.new("Bright red") 
local fire = Instance.new("Fire") 
fire.Parent = shot
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = shot 
mesh.MeshType = "Sphere" 
local start = CFrame.new(me2.Torso.Position) + Vector3.new(0, 3, 0) 
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
    t.BrickColor = BrickColor.new("Really red")
    t.formFactor = "Custom"
    t.Size = Vector3.new(1, 1, 1)
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
            h.Health = h.Health - math.random(15, 35) 
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
