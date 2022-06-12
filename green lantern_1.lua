local Me = game.Players.LocalPlayer 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Ring"
    script.Parent = h
end

local bin = script.Parent

mo = Instance.new("Model") 
mo.Name = "Green Lantern" 
mo.Parent = Me.Character

function new(part, x, y, z, parent, color) 
local brick = part 
brick.formFactor = "Symmetric" 
brick:BreakJoints() 
brick.CanCollide = false 
brick.Size = Vector3.new(x, y, z) 
brick.Parent = parent 
brick.BrickColor = BrickColor.new(color) 
end 
function mes(mesh, x, y, z, parent) 
local mes = mesh 
mes.Scale = Vector3.new(x, y, z) 
mes.Parent = parent 
end 
function wel(weld, x, y, z, parent, part, parta, xx, yy, zz) 
local wel = weld 
wel.Parent = parent 
wel.Part0 = part 
wel.Part1 = parta 
wel.C1 = CFrame.new(x, y, z) * CFrame.Angles(xx, yy, zz) 
end 

p = Instance.new("Part") 
m = Instance.new("BlockMesh") 
w = Instance.new("Weld") 
new(p, 1, 2, 1, mo, "Bright green") 
mes(m, 1.01, 1.01, 1.01, p) 
wel(w, 0, 0, 0, p, Me.Character["Right Arm"], p, 0, 0, 0) 
p2 = Instance.new("Part") 
m2 = Instance.new("BlockMesh") 
w2 = Instance.new("Weld") 
new(p2, 1, 2, 1, mo, "Bright green") 
mes(m2, 1.01, 1.01, 1.01, p2) 
wel(w2, 0, 0, 0, p2, Me.Character["Left Arm"], p2, 0, 0, 0) 
p3 = Instance.new("Part") 
m3 = Instance.new("BlockMesh") 
w3 = Instance.new("Weld") 
new(p3, 2, 2, 1, mo, "Bright green") 
mes(m3, 1.01, 1.01, 1.01, p3) 
wel(w3, 0, 0, 0, p3, Me.Character["Torso"], p3, 0, 0, 0) 
p4 = Instance.new("Part") 
m4 = Instance.new("BlockMesh") 
w4 = Instance.new("Weld") 
new(p4, 1, 1, 1, mo, "Dark green") 
mes(m4, 1.01, 0.25, 1.02, p4) 
wel(w4, -0.05, 0.75, 0, p4, Me.Character["Torso"], p4, 0, 0, 0) 
p5 = Instance.new("Part") 
m5 = Instance.new("BlockMesh") 
w5 = Instance.new("Weld") 
new(p5, 1, 1, 1, mo, "Dark green") 
mes(m5, 1.01, 0.25, 1.02, p5) 
wel(w5, -0.05, -0.75, 0, p5, Me.Character["Torso"], p5, 0, 0, 0) 
p6 = Instance.new("Part") 
m6 = Instance.new("BlockMesh") 
w6 = Instance.new("Weld") 
new(p6, 1, 1, 1, mo, "Dark green") 
mes(m6, 0.85, 0.25, 1.02, p6) 
wel(w6, 0.45, -0.15, 0, p6, Me.Character["Torso"], p6, 0, 0, 8.25) 
p7 = Instance.new("Part") 
m7 = Instance.new("BlockMesh") 
w7 = Instance.new("Weld") 
new(p7, 1, 1, 1, mo, "Dark green") 
mes(m7, 0.85, 0.25, 1.02, p7) 
wel(w7, 0.55, 0.15, 0, p7, Me.Character["Torso"], p7, 0, 0, -8.25) 
p8 = Instance.new("Part") 
m8 = Instance.new("BlockMesh") 
w8 = Instance.new("Weld") 
new(p8, 1, 1, 1, mo, "Dark green") 
mes(m8, 0.85, 0.25, 1.02, p8) 
wel(w8, 0.5, 0.15, 0, p8, Me.Character["Torso"], p8, 0, 0, -5) 
p9 = Instance.new("Part") 
m9 = Instance.new("BlockMesh") 
w9 = Instance.new("Weld") 
new(p9, 1, 1, 1, mo, "Dark green") 
mes(m9, 0.85, 0.25, 1.02, p9) 
wel(w9, 0.45, -0.15, 0, p9, Me.Character["Torso"], p9, 0, 0, 5) 
p10 = Instance.new("Part") 
m10 = Instance.new("BlockMesh") 
w10 = Instance.new("Weld") 
new(p10, 1, 2, 1, mo, "Bright green") 
mes(m10, 1.01, 1.01, 1.01, p10) 
wel(w10, 0, 0, 0, p10, Me.Character["Right Leg"], p10, 0, 0, 0) 
p11 = Instance.new("Part") 
m11 = Instance.new("BlockMesh") 
w11 = Instance.new("Weld") 
new(p11, 1, 2, 1, mo, "Bright green") 
mes(m11, 1.01, 1.01, 1.01, p11) 
wel(w11, 0, 0, 0, p11, Me.Character["Left Leg"], p11, 0, 0, 0) 

function RC(Pos, Dir, Max, Ignore)
    return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
end

function RayC(Start, En, MaxDist, Ignore)
    return RC(Start, (En - Start), MaxDist, Ignore)
end

function onSelected(mouse)
    mouse.Button1Down:connect(function()
shot = Instance.new("Part") 
shot.Parent = Me.Character 
shot.CanCollide = false 
shot.Anchored = true
shot.Size = Vector3.new(4, 4, 4) 
shot.Transparency = 0.5 
shot.BrickColor = BrickColor.new("Bright green") 
local start = CFrame.new(Me.Character["Right Arm"].Position) + Vector3.new(0, 0.25, 0) 
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
    t.BrickColor = BrickColor.new("Dark green")
    t.formFactor = "Custom"
    t.Size = Vector3.new(3, 3, 6)
    local mm = Instance.new("BlockMesh",t)
    mm.Scale = Vector3.new(1, 1, mag)
    t.CFrame = CFrame.new(lastP, face.p) * CFrame.new(0, 0, -mag/2)
    coroutine.resume(coroutine.create(function()
        wait(0.05)
        for i = 0, 1, 0.25 do
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
        if key == "q" then 
local start = CFrame.new(Me.Character.Torso.Position) + Vector3.new(0, 1, 0) 
local ending = mouse.Hit.p
local face = CFrame.new(start.p, ending)
sm = Instance.new("Smoke") 
sm.Color = Color3.new(0, 1, 0) 
Me.Character.Torso.Anchored = true 
sm.Parent = Me.Character.Torso 
sm.Opacity = 50
wait(0.5) 
Me.Character.Torso.CFrame = CFrame.new(mouse.hit.p) 
wait(0.2) 
sm:remove() 
Me.Character.Torso.Anchored = false 
	end 
    end)
end

function onDesel(mouse)
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)