Me = game.Players.LocalPlayer
char = Me.Character
Torso = char.Torso
Rarm = char["Right Arm"]
Larm = char["Left Arm"]

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
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
pcall(function() char["staff"]:remove() end) 

local Model = Instance.new("Model",char)
Model.Name = ":P"
local Model2 = Instance.new("Model",char)
Model2.Name = "staff"

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

local shaft = Instance.new("Part") 
prop(shaft, Model2, false, 0, 0, 0.5, 1.5, 0.5, "Really black", false, "Custom") 
local shaftm = Instance.new("CylinderMesh") 
mesh(shaftm, shaft, 1, 1, 1)
local shaftw = Instance.new("Weld") 
wel(shaftw, 0, -1.2, 0, shaft, shaft, Rarm, 1.55, 0, 0) 
local shaft2 = Instance.new("Part") 
prop(shaft2, Model2, false, 0, 0, 0.5, 0.2, 0.5, "Mid stone grey", false, "Custom") 
local shaft2m = Instance.new("CylinderMesh") 
mesh(shaft2m, shaft2, 1.05, 1, 1.05)
local shaft2w = Instance.new("Weld") 
wel(shaft2w, 0, -0.6, 0, shaft2, shaft2, shaft, 0, 0, 0) 
local shaft3 = Instance.new("Part") 
prop(shaft3, Model2, false, 0, 0, 0.2, 1.5, 0.2, "Mid stone grey", false, "Custom") 
local shaft3m = Instance.new("BlockMesh") 
mesh(shaft3m, shaft3, 0.5, 1, 0.5)
local shaft3w = Instance.new("Weld") 
wel(shaft3w, 0, 0, 0.4, shaft3, shaft3, shaft, 0.25, 0, 0) 
local shaft4 = Instance.new("Part") 
prop(shaft4, Model2, false, 0, 0, 0.2, 0.2, 0.2, "Mid stone grey", false, "Custom") 
local shaft4m = Instance.new("BlockMesh") 
mesh(shaft4m, shaft4, 0.25, 0.25, 1)
local shaft4w = Instance.new("Weld") 
wel(shaft4w, 0, -0.6, 0.3, shaft4, shaft4, shaft, 0.25, 0, 0) 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Grenade"
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
RAW.Part1 = Rarm 
LAW.Part1 = Larm 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90*i), 0, 0) 
wait() 
end 
    mouse.Button1Down:connect(function()
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+0*i), 0, math.rad(-60*i)) 
LAW.C0 = CFrame.Angles(math.rad(90*i), 0, math.rad(60*i)) 
wait() 
end 
shaft4.Transparency = 1 
shaftw:remove() 
shaft.CanCollide = true 
local smok = Instance.new("Smoke", shaft4) 
smok.RiseVelocity = -50 
wait(3) 
RAW.Part1 = nil
LAW.Part1 = nil 
bin.Parent = nil 
coroutine.resume(coroutine.create(function() 
local part1 = Instance.new("Part", workspace) 
part1.Size = Vector3.new(1, 1, 1) 
part1.Anchored = true 
part1.BrickColor = BrickColor.new("White") 
part1.Transparency = 0.15
part1.CanCollide = false 
part1.CFrame = shaft.CFrame + Vector3.new(math.random(-12, 12), math.random(1, 3), math.random(-12, 12)) 
local mesh1 = Instance.new("SpecialMesh", part1) 
mesh1.MeshType = "Sphere" 
mesh1.Scale = Vector3.new(6, 6, 6) 
local part2 = Instance.new("Part", workspace) 
part2.Size = Vector3.new(1, 1, 1) 
part2.Anchored = true 
part2.BrickColor = BrickColor.new("White") 
part2.Transparency = 0.15
part2.CanCollide = false 
part2.CFrame = shaft.CFrame + Vector3.new(math.random(-12, 12), math.random(1, 3), math.random(-12, 12)) 
local mesh2 = Instance.new("SpecialMesh", part2) 
mesh2.MeshType = "Sphere" 
mesh2.Scale = Vector3.new(6, 6, 6) 
local part3 = Instance.new("Part", workspace) 
part3.Size = Vector3.new(1, 1, 1) 
part3.Anchored = true 
part3.BrickColor = BrickColor.new("White") 
part3.Transparency = 0.15
part3.CanCollide = false 
part3.CFrame = shaft.CFrame + Vector3.new(math.random(-12, 12), math.random(1, 3), math.random(-12, 12)) 
local mesh3 = Instance.new("SpecialMesh", part3) 
mesh3.MeshType = "Sphere" 
mesh3.Scale = Vector3.new(6, 6, 6) 
local part4 = Instance.new("Part", workspace) 
part4.Size = Vector3.new(1, 1, 1) 
part4.Anchored = true 
part4.BrickColor = BrickColor.new("White") 
part4.Transparency = 0.15
part4.CanCollide = false 
part4.CFrame = shaft.CFrame + Vector3.new(math.random(-12, 12), math.random(1, 3), math.random(-12, 12)) 
local mesh4 = Instance.new("SpecialMesh", part4) 
mesh4.MeshType = "Sphere" 
mesh4.Scale = Vector3.new(6, 6, 6) 
for i = 1, 10 do 
mesh1.Scale = mesh1.Scale + Vector3.new(i, i, i) 
mesh2.Scale = mesh2.Scale + Vector3.new(i/2, i/2, i/2) 
mesh3.Scale = mesh3.Scale + Vector3.new(i, i, i) 
mesh4.Scale = mesh4.Scale + Vector3.new(i/2, i/2, i/2) 
wait(1) 
end 
part1:remove() 
part2:remove() 
part3:remove()
part4:remove()
end))
Model2:remove() 
    end)
end

function onDesel(mouse)
RAW.Part1 = nil
LAW.Part1 = nil
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
