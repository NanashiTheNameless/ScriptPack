local players = game:GetService("Players") 
local workspac = game:GetService("Workspace") 
Me = game:GetService("Players"):findFirstChild("luxulux")
char = Me.Character
name = Me.Name 
local pg = Me.PlayerGui 
Torso = char.Torso
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rarl = char["Right Leg"]
Larl = char["Left Leg"]
H = char.Head 
Hum = char.Humanoid 
local attakin = false 
local MainColor = "Really black" 
local MainColor2 = "Institutional white" 
local MainColor3 = "Really blue" 
local RageColor = "Institutional white" 
local AS = 0.1 
local rage = false 
Meshes = {
                        Spike = "http://www.roblox.com/asset/?id=1323306",
                        Dragon = "http://www.roblox.com/asset/?id=24478215",
}
function prop(part, parent, collide, tran, ref, x, y, z, anchor, clr, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(clr)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end
function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z) 
if mesh.className == "SpecialMesh" then 
mesh.MeshType = type 
end 
end
function wel(weld, x, y, z, parent, part, parta, xx, yy, zz) 
local wel = weld 
wel.Parent = parent 
wel.Part0 = part 
wel.Part1 = parta 
wel.C1 = CFrame.new(x, y, z) * CFrame.Angles(xx, yy, zz) 
end 
pcall(function() char[":P"]:remove() end)
pcall(function() char["Yamato"]:remove() end) 
local Model = Instance.new("Model",char)
Model.Name = ":P"
local Model2 = Instance.new("Model",char)
Model2.Name = "Yamato"
local RAB = Instance.new("Part") -- Right Arm Brick
RAB.formFactor = "Custom"
RAB.Size = Vector3.new(0.2, 0.2, 0.2)
RAB.Transparency = 1
RAB.Parent = Model
RAB:BreakJoints()
local RABW = Instance.new("Weld",RAB) -- Right Arm Brick Weld
RABW.Part0 = Torso
RABW.Part1 = RAB
RABW.C1 = CFrame.new(-1.5, -0.5, 0)
local LAB = Instance.new("Part") -- Right Arm Brick
LAB.formFactor = "Custom"
LAB.Size = Vector3.new(0.2, 0.2, 0.2)
LAB.Transparency = 1
LAB.Parent = Model
LAB:BreakJoints()
local LABW = Instance.new("Weld",LAB) -- Left Arm Brick Weld
LABW.Part0 = Torso
LABW.Part1 = LAB
LABW.C1 = CFrame.new(1.5, -0.5, 0)
local RAW = Instance.new("Weld",RAB) -- Right Arm Weld
RAW.Part0 = RAB
RAW.Part1 = nil
RAW.C1 = CFrame.new(0, 0.5, 0)
local LAW = Instance.new("Weld",LAB) -- Left Arm Weld
LAW.Part0 = LAB
LAW.Part1 = nil
LAW.C1 = CFrame.new(0, 0.5, 0) 
--wel(cw, 0, -1, 0, handle, handle, Rarm, 1.55, 1.55, 0) 
local handle = Instance.new("Part") 
prop(handle, Model2, false, 0, 0, 0.2, 1.25, 0.2, false, MainColor, "Custom") 
local cm = Instance.new("CylinderMesh", handle) 
local cw = Instance.new("Weld") 
wel(cw, 1, 1.5, 0.65, handle, handle, Torso, 0, 1.55*2, 0.775) 
local handle2 = Instance.new("Part") 
prop(handle2, Model2, false, 0, 0, 0.2, 1.25, 0.2, false, MainColor, "Custom") 
local cm2 = Instance.new("SpecialMesh", handle2) 
mesh(cm2, handle2, 0.2, 0.2, 0.2, "FileMesh") 
cm2.MeshId = Meshes.Spike
local cw2 = Instance.new("Weld") 
wel(cw2, 0, 0.75, 0, handle2, handle2, handle, 0, 0, 0) 
local handle3 = Instance.new("Part") 
prop(handle3, Model2, false, 0, 0, 0.2, 0.75, 0.2, false, MainColor, "Custom") 
local cm3 = Instance.new("CylinderMesh", handle3) 
local cw3 = Instance.new("Weld") 
wel(cw3, 0.25, -0.75, 0, handle3, handle3, handle, 0, 0, 1) 
local handle4 = Instance.new("Part") 
prop(handle4, Model2, false, 0, 0, 0.2, 0.75, 0.2, false, MainColor, "Custom") 
local cm4 = Instance.new("CylinderMesh", handle4) 
local cw4 = Instance.new("Weld") 
wel(cw4, -0.25, -0.75, 0, handle4, handle4, handle, 0, 0, -1) 
local handle5 = Instance.new("Part") 
prop(handle5, Model2, false, 0, 0, 0.65, 1, 0.3, false, MainColor, "Custom") 
local cm5 = Instance.new("SpecialMesh", handle5) 
mesh(cm5, handle5, 1, 1, 1, "Sphere") 
local cw5 = Instance.new("Weld") 
wel(cw5, 0, -1, 0, handle5, handle5, handle, 0, 0, 0) 
local handle6 = Instance.new("Part") 
prop(handle6, Model2, false, 0, 0, 0.65, 1, 0.5, false, MainColor2, "Custom") 
local cm6 = Instance.new("SpecialMesh", handle6) 
mesh(cm6, handle6, 0.25, 0.25, 0.15, "FileMesh") 
cm6.MeshId = Meshes.Dragon 
local cw6 = Instance.new("Weld") 
wel(cw6, 0, -0.75, -0.2, handle6, handle6, handle, 0, 0, 0) 
for i = 1, 5 do 
local handle7 = Instance.new("Part") 
prop(handle7, Model2, false, 0, 0, 0.5-0.025*i, 0.3, 0.3, false, MainColor, "Custom") 
local cm7 = Instance.new("SpecialMesh", handle7) 
mesh(cm7, handle7, 1, 1, 1, "Sphere") 
local cw7 = Instance.new("Weld") 
wel(cw7, -0.1, -1-0.1*i, 0, handle7, handle7, handle, 0, 0, 0.5) 
local handle8 = Instance.new("Part") 
prop(handle8, Model2, false, 0, 0, 0.5-0.025*i, 0.3, 0.3, false, MainColor, "Custom") 
local cm8 = Instance.new("SpecialMesh", handle8) 
mesh(cm8, handle8, 1, 1, 1, "Sphere") 
local cw8 = Instance.new("Weld") 
wel(cw8, 0.1, -1-0.1*i, 0, handle8, handle8, handle, 0, 0, -0.5) 
end 
local handle8 = Instance.new("Part") 
prop(handle8, Model2, false, 0, 0, 0.475, 0.3, 0.3, false, MainColor, "Custom") 
local cm8 = Instance.new("SpecialMesh", handle8) 
mesh(cm8, handle8, 1, 1, 1, "Sphere") 
local cw8 = Instance.new("Weld") 
wel(cw8, 0, -1.65, 0, handle8, handle8, handle, 0, 0, 1.55) 
local blade = Instance.new("Part") 
prop(blade, Model2, false, 0, 0, 0.2, 1, 0.2, false, MainColor3, "Custom")
blade.Reflectance = 0.4
blade.Transparency = 0.5
local bm = Instance.new("BlockMesh", blade) 
mesh(bm, blade, 1, 1, 1) 
local bw = Instance.new("Weld") 
wel(bw, 0.125, -1.75, 0, blade, blade, handle, 0, 0, -0.25) 
local blade2 = Instance.new("Part") 
prop(blade2, Model2, false, 0, 0, 0.2, 1, 0.2, false, MainColor3, "Custom") 
blade2.Reflectance = 0.4
blade2.Transparency = 0.5
local bm2 = Instance.new("BlockMesh", blade2) 
mesh(bm2, blade2, 1, 1, 1) 
local bw2 = Instance.new("Weld") 
wel(bw2, -0.125, -1.75, 0, blade2, blade2, handle, 0, 0, 0.25) 
local blade3 = Instance.new("Part") 
prop(blade3, Model2, false, 0, 0, 0.4, 2.5, 0.2, false, MainColor3, "Custom")
blade3.Reflectance = 0.4 
blade3.Transparency = 0.5
local bm3 = Instance.new("BlockMesh", blade2) 
mesh(bm3, blade3, 1, 1, 0.75) 
local bw3 = Instance.new("Weld") 
wel(bw3, 0, -2.75, 0, blade3, blade3, handle, 0, 0, 0) 
local blade4 = Instance.new("Part") 
prop(blade4, Model2, false, 0, 0, 0.2, 0.4, 0.2, false, MainColor3, "Custom") 
blade4.Reflectance = 0.4
blade4.Transparency = 0.5
local bm4 = Instance.new("BlockMesh", blade4) 
mesh(bm4, blade4, 1, 1, 0.749) 
local bw4 = Instance.new("Weld") 
wel(bw4, -0.025, -4.125, 0, blade4, blade4, handle, 0, 0, 0.5) 
local blade5 = Instance.new("Part") 
prop(blade5, Model2, false, 0, 0, 0.2, 0.4, 0.2, false, MainColor3, "Custom")
blade5.Reflectance = 0.4 
blade5.Transparency = 0.5
local bm5 = Instance.new("BlockMesh", blade5) 
mesh(bm5, blade5, 1, 1, 0.749) 
local bw5 = Instance.new("Weld") 
wel(bw5, 0.025, -4.125, 0, blade5, blade5, handle, 0, 0, -0.5) 
local blade6 = Instance.new("Part") 
prop(blade6, Model2, false, 0, 0, 0.3, 0.5, 0.2, false, MainColor3, "Custom") 
blade6.Reflectance = 0.4
blade6.Transparency = 0.5
local bm6 = Instance.new("BlockMesh", blade6) 
mesh(bm6, blade6, 1, 1, 0.7489) 
local bw6 = Instance.new("Weld") 
wel(bw6, -0.025*1.5, -4.125-0.2, 0, blade6, blade6, handle, 0, 0, 0.25/2) 
local blade7 = Instance.new("Part") 
prop(blade7, Model2, false, 0, 0, 0.3, 0.5, 0.2, false, MainColor3, "Custom") 
blade7.Reflectance = 0.4
blade7.Transparency = 0.5
local bm7 = Instance.new("BlockMesh", blade7) 
mesh(bm7, blade7, 1, 1, 0.7489) 
local bw7 = Instance.new("Weld") 
wel(bw7, 0.025*1.5, -4.125-0.2, 0, blade7, blade7, handle, 0, 0, -0.25/2) 
local blade8 = Instance.new("Part") 
prop(blade8, Model2, false, 0, 0, 0.2, 0.5, 0.2, false, MainColor3, "Custom") 
blade8.Reflectance = 0.4
blade8.Transparency = 0.5
local bm8 = Instance.new("SpecialMesh", blade8) 
mesh(bm8, blade8, 0.74, 1, 1, "Wedge") 
local bw8 = Instance.new("Weld") 
wel(bw8, -0.1, -4.8, 0, blade8, blade8, handle, 1.6, 1.55, 1.55) 
local blade9 = Instance.new("Part") 
prop(blade9, Model2, false, 0, 0, 0.2, 0.5, 0.2, false, MainColor3, "Custom") 
blade9.Reflectance = 0.4
blade9.Transparency = 0.5
local bm9 = Instance.new("SpecialMesh", blade9) 
mesh(bm9, blade9, 0.74, 1, 1, "Wedge") 
local bw9 = Instance.new("Weld") 
wel(bw9, 0.1, -4.8, 0, blade9, blade9, handle, 1.6, -1.55, -1.55) 
function trail(part, time) 
local tr = Instance.new("Part") 
tr.formFactor = "Custom" 
tr.Size = part.Size 
tr.Parent = part 
tr.BrickColor = BrickColor.new(RageColor) 
tr.Transparency = 0.5 
tr.Anchored = true 
tr.CanCollide = false 
tr.CFrame = part.CFrame 
coroutine.resume(coroutine.create(function() 
wait(time) 
tr:remove() 
end)) 
end 
function hurt(part, dmg, mag) 
for _,v in pairs(workspace:children()) do  -- missing an E
if v.Name ~= name and v:findFirstChild("Torso") and v:findFirstChild("Humanoid") then 
if (v.Torso.Position - part.Position).magnitude <= mag then 
v.Humanoid:TakeDamage(dmg) 
end 
end 
end 
end 
function blast() 
local pos = Instance.new("BodyPosition", Torso) 
pos.maxForce = Vector3.new(math.huge, math.huge, math.huge) 
pos.position = Torso.Position + Vector3.new(0, 2, 0) 
local wave = Instance.new("Part", char) 
wave.formFactor = "Custom" 
wave.BrickColor = BrickColor.new("Black") 
wave.Size = Vector3.new(1, 1, 1) 
wave.Anchored = true 
wave.CanCollide = false 
wave.CFrame = Torso.CFrame 
local wavem = Instance.new("SpecialMesh", wave) 
wavem.MeshType = "FileMesh" 
wavem.MeshId = Meshes.Spike 
wavem.Scale = Vector3.new(0.25, 0.25, 0.25) 
wait(0.1) 
local wave2 = Instance.new("Part", char) 
wave2.formFactor = "Custom" 
wave2.BrickColor = BrickColor.new("Bright blue") 
wave2.Size = Vector3.new(1, 1, 1) 
wave2.Anchored = true 
wave2.CanCollide = false 
wave2.CFrame = Torso.CFrame * CFrame.Angles(1.55*2, 0, 0) 
local wave2m = Instance.new("SpecialMesh", wave2) 
wave2m.MeshType = "FileMesh" 
wave2m.MeshId = Meshes.Spike 
wave2m.Scale = Vector3.new(0.25, 0.25, 0.25) 
coroutine.resume(coroutine.create(function() 
for i = 1, 30 do 
wavem.Scale = wavem.Scale + Vector3.new(0.5, 0.25, 0.5) 
wave2m.Scale = wave2m.Scale + Vector3.new(0.5, 0.25, 0.5) 
hurt(wave, 1, i/3.5) 
hurt(wave2, 1, i/3.5) 
wait() 
end 
pos:remove() 
for i = 1, 10 do 
wavem.Scale = wavem.Scale + Vector3.new(1.5, -1, 1.5) 
wave2m.Scale = wave2m.Scale + Vector3.new(1.5, -1, 1.5) 
hurt(wave, 5, i) 
hurt(wave2, 5, i) 
wait() 
end 
wave:remove() 
wave2:remove() 
end)) 
end 
function slash(mouse) ------------------ZOMGFCKINGHAXHAXHAXHAXHAXHAX
for i = 0, 1, AS do 
RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(90+90*i), math.rad(-50*i), 0) 
wait() 
end 
for i = 0, 1, AS*2 do 
RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(180-95*i), math.rad(-50+0*i), 0) 
trail(blade3, 0.25) 

blade3.Touched:connect(function (hit) if hit.Parent:FindFirstChild("Humanoid",true) ~= nil and hit.Parent.Name ~= "WhiteFlamez" then hit.Parent:FindFirstChild("Humanoid",true):TakeDamage(10000) end end)
wait() 
end 
for i = 0, 1, AS*2 do 
RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(85-95*i), math.rad(-50+75*i), 0) 
trail(blade3, 0.25) 
wait() 
end 
for i = 0, 1, AS do 
RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(-10+100*i), math.rad(25-25*i), 0) 
wait() 
end 
end 
function RC(Pos, Dir, Max, Ignore)
    return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999)), Ignore)
end
function RayC(Start, En, MaxDist, Ignore)
    return RC(Start, (En - Start), MaxDist, Ignore)
end
function darkball(mouse) 
if rage == true then 
for i = 0, 1, AS do 
RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(90+0*i), 0, math.rad(-50*i)) 
LAW.C0 = CFrame.new() * CFrame.Angles(math.rad(90*i), 0, math.rad(50*i)) 
wait() 
end 
local shot = Instance.new("Part") 
shot.Parent = char 
shot.CanCollide = false 
shot.Anchored = true
shot.Size = Vector3.new(2, 2, 2) 
shot.Transparency = 0.5 
shot.BrickColor = BrickColor.new("Really black") 
local shotm = Instance.new("SpecialMesh", shot) 
shotm.MeshType = "Sphere" 
local start = CFrame.new(Torso.Position) + Vector3.new(0, 0.25, 0) 
local ending = mouse 
local face = CFrame.new(start.p, ending)
shot.CFrame = face
local magn = (start.p - ending).magnitude
local lastP = start.p
for i = 4, 300, 8 do
    face = face * CFrame.new(0, 0, -8)
    shot.CFrame = face
    local mag = (lastP - face.p).magnitude
    local t = Instance.new("Part",char)
    t.Anchored = true
    t.BrickColor = BrickColor.new("Really black")
    t.formFactor = "Custom"
    t.Size = Vector3.new(1.4, 1.4, 1)
    local mm = Instance.new("SpecialMesh",t)
    mm.MeshType = "Sphere" 
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
    local hit, pos = RayC(lastP, face.p, 14, char)
    if hit then
        local h = hit.Parent:findFirstChild("Humanoid")
        if h then
            if hit.Parent.Name ~= name then 
                h.Health = h.Health - 15 
            end 
        end
        shot:remove()
        break
    end
    lastP = face.p
    wait()
end
shot:remove()
for i = 0, 1, AS do 
RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(90+0*i), 0, math.rad(-50+50*i)) 
LAW.C0 = CFrame.new() * CFrame.Angles(math.rad(90-90*i), 0, math.rad(50-50*i)) 
wait() 
end 
end 
end 
function select() 
RAW.Part1 = Rarm 
LAW.Part1 = Larm 
for i = 0, 1, AS do 
RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(195*i), 0, 0) 
wait() 
end 
wel(cw, 0, -1, 0, handle, handle, Rarm, 1.55, 1.55, 0) 
for i = 0, 1, AS do 
RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(195-105*i), 0, 0) 
wait() 
end 
end 
function black(time) 
local tr = Instance.new("Part") 
tr.formFactor = "Custom" 
tr.Size = Torso.Size 
tr.Parent = Torso 
tr.BrickColor = BrickColor.new("Really black") 
tr.Transparency = 0.5 
tr.Anchored = true 
tr.CanCollide = false 
tr.CFrame = Torso.CFrame 
coroutine.resume(coroutine.create(function() 
wait(time) 
tr:remove() 
end)) 
local tr = Instance.new("Part") 
tr.formFactor = "Custom" 
tr.Size = Rarm.Size 
tr.Parent = Rarm 
tr.BrickColor = BrickColor.new("Really black") 
tr.Transparency = 0.5 
tr.Anchored = true 
tr.CanCollide = false 
tr.CFrame = Rarm.CFrame 
coroutine.resume(coroutine.create(function() 
wait(time) 
tr:remove() 
end)) 
local tr = Instance.new("Part") 
tr.formFactor = "Custom" 
tr.Size = Larm.Size 
tr.Parent = Larm 
tr.BrickColor = BrickColor.new("Really black") 
tr.Transparency = 0.5 
tr.Anchored = true 
tr.CanCollide = false 
tr.CFrame = Larm.CFrame 
coroutine.resume(coroutine.create(function() 
wait(time) 
tr:remove() 
end)) 
local tr = Instance.new("Part") 
tr.formFactor = "Custom" 
tr.Size = Rarl.Size 
tr.Parent = Rarl 
tr.BrickColor = BrickColor.new("Really black") 
tr.Transparency = 0.5 
tr.Anchored = true 
tr.CanCollide = false 
tr.CFrame = Rarl.CFrame 
coroutine.resume(coroutine.create(function() 
wait(time) 
tr:remove() 
end)) 
local tr = Instance.new("Part") 
tr.formFactor = "Custom" 
tr.Size = Larl.Size 
tr.Parent = Larl 
tr.BrickColor = BrickColor.new("Really black") 
tr.Transparency = 0.5 
tr.Anchored = true 
tr.CanCollide = false 
tr.CFrame = Larl.CFrame 
coroutine.resume(coroutine.create(function() 
wait(time) 
tr:remove() 
end)) 
local tr = Instance.new("Part") 
tr.formFactor = "Custom" 
tr.Size = H.Size 
tr.Parent = H 
tr.BrickColor = BrickColor.new("Really black") 
tr.Transparency = 0.5 
tr.Anchored = true 
tr.CanCollide = false 
tr.CFrame = H.CFrame 
local sp = Instance.new("SpecialMesh", tr) 
coroutine.resume(coroutine.create(function() 
wait(time) 
tr:remove() 
end)) 
end 
coroutine.resume(coroutine.create(function() 
while wait() do 
if rage == true then 
black(0.5) 
end 
end 
end)) 
function trigger() 
                if AS >= 0.3 then 
                AS = 0.1 
                rage = false 
                RageColor = "White" 
                Hum.WalkSpeed = 16 
                else 
                AS = 0.3
                Hum.WalkSpeed = 40
                RageColor = "Really Black" 
                rage = true 
                end 
local part = Instance.new("Part") 
part.Parent = char 
part.Size = Vector3.new(3, 15, 3) 
part.BrickColor = BrickColor.new("Really Black") 
part.Transparency = 0.25 
part.Anchored = true 
part.CFrame = Torso.CFrame 
local partm = Instance.new("CylinderMesh") 
partm.Parent = part 
coroutine.resume(coroutine.create(function() 
wait(2) 
part:remove() 
end)) 
for i = 1, 5 do 
v3 = Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))
asd = CFrame.new((part.Position + part.Position + v3)/2, part.Position)
local part2 = Instance.new("Part") 
part2.Parent = char 
part2.formFactor = "Custom" 
part2.Transparency = 0.25 
part2.Size = Vector3.new(1.5, 1.5, (part.Position - v3).magnitude/math.random(2, 3)) 
part2.BrickColor = BrickColor.new("Really Black") 
part2.Anchored = true 
part2.CFrame = asd 
local part2m = Instance.new("BlockMesh") 
part2m.Parent = part2 
coroutine.resume(coroutine.create(function() 
wait(1.5) 
part2:remove() 
end)) 
wait() 
end 
end 
function deselect() 
for i = 0, 1, AS do 
RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(90+105*i), 0, 0) 
wait() 
end 
wel(cw, 1, 1.5, 0.65, handle, handle, Torso, 0, 1.55*2, 0.775) 
for i = 0, 1, AS do 
RAW.C0 = CFrame.new() * CFrame.Angles(math.rad(195-195*i), 0, 0) 
wait() 
end 
RAW.Part1 = nil 
LAW.Part1 = nil 
end 
if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Yamato"
    script.Parent = h
end
local bin = script.Parent
function onSelected(mouse)
select() 
    mouse.Button1Down:connect(function()
slash(mouse) 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
trigger() 
        end 
        if key == "e" then 
darkball(mouse.hit.p) 
        end 
                if key == "f" then 
blast() 
                end 
    end)
end
function onDesel(mouse)
deselect() 
end
bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
