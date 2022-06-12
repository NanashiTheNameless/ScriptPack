Me = game.Players.LocalPlayer 
char = Me.Character
Torso = char.Torso
Rarm = char["Right Arm"]
Larm = char["Left Arm"]

for _,v in pairs(char:GetChildren()) do 
if v.className == "Hat" then 
v:remove() 
end 
end 

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
--http://www.roblox.com/asset/?id=36755354
local robe = Instance.new("Part") 
prop(robe, Model2, false, 0, 0, 2.1, 2.1, 1.1, "Reddish brown", false, "Custom") 
robe.Material = "Wood" 
local robew = Instance.new("Weld") 
wel(robew, 0, 0, 0, robe, robe, Torso, 0, 0, 0) 
local robe2 = Instance.new("Part") 
prop(robe2, Model2, false, 0, 0, 1.1, 2.1, 1.1, "Reddish brown", false, "Custom") 
robe2.Material = "Wood" 
local robe2w = Instance.new("Weld") 
wel(robe2w, 0, 0, 0, robe2, robe2, char["Right Leg"], 0, 0, 0) 
local robe3 = Instance.new("Part") 
prop(robe3, Model2, false, 0, 0, 1.1, 2.1, 1.1, "Reddish brown", false, "Custom") 
robe3.Material = "Wood" 
local robe3w = Instance.new("Weld") 
wel(robe3w, 0, 0, 0, robe3, robe3, char["Left Leg"], 0, 0, 0) 
local robe4 = Instance.new("Part") 
prop(robe4, Model2, false, 0, 0, 1.1, 2.1, 1.1, "Reddish brown", false, "Custom") 
robe4.Material = "Wood" 
local robe4w = Instance.new("Weld") 
wel(robe4w, 0, 0, 0, robe4, robe4, Larm, 0, 0, 0) 
local robe5 = Instance.new("Part") 
prop(robe5, Model2, false, 0, 0, 1.1, 2.1, 1.1, "Reddish brown", false, "Custom") 
robe5.Material = "Wood" 
local robe5w = Instance.new("Weld") 
wel(robe5w, 0, 0, 0, robe5, robe5, Rarm, 0, 0, 0) 
local robe6 = Instance.new("Part") 
prop(robe6, Model2, false, 0, 0, 1.1, 2.1, 1.1, "Reddish brown", false, "Custom") 
local robe6w = Instance.new("Weld") 
wel(robe6w, 0, 0.85, 0, robe6, robe6, char.Head, 0, 0, 0) 
local robe6m = Instance.new("SpecialMesh") 
mesh(robe6m, robe6, 1, 1, 1, "FileMesh")
robe6m.MeshId = "http://www.roblox.com/asset/?id=36755354" 
local robe7 = Instance.new("Part") 
prop(robe7, Model2, false, 0, 0, 1.1, 1.1, 1.1, "Reddish brown", false, "Custom") 
local robe7w = Instance.new("Weld") 
wel(robe7w, 0, 1.85, 0, robe7, robe7, char.Head, 0, 0, 0) 
local robe7m = Instance.new("SpecialMesh") 
mesh(robe7m, robe7, 0.25, 0.25, 0.25, "FileMesh")
robe7m.MeshId = "http://www.roblox.com/asset/?id=25212400" 
robe7m.TextureId = "http://www.roblox.com/asset/?id=41988084" 
local robe8 = Instance.new("Part") 
prop(robe8, Model2, false, 0, 0, 1.1, 1.1, 1.1, "Reddish brown", false, "Custom") 
local robe8w = Instance.new("Weld") 
wel(robe8w, 0.6, 0, 0, robe8, robe8, char.Head, 0, 1.55, 0) 
local robe8m = Instance.new("SpecialMesh") 
mesh(robe8m, robe8, 0.25, 0.25, 0.25, "FileMesh")
robe8m.MeshId = "http://www.roblox.com/asset/?id=3270017" 
robe8m.TextureId = "http://www.roblox.com/asset/?id=41988084" 
local robe9 = Instance.new("Part") 
prop(robe9, Model2, false, 0, 0, 0.1, 0.1, 0.1, "Dark stone grey", false, "Custom") 
local bm = Instance.new("BlockMesh", robe9) 
bm.Scale = Vector3.new(0.5, 1, 0.5) 
robe9.Material = "Slate" 
local robe9w = Instance.new("Weld") 
wel(robe9w, 0, -0.2, 0, robe9, robe9, robe8, 0, 0, 0) 
local robe10 = Instance.new("Part") 
prop(robe10, Model2, false, 0, 0, 1.1, 1.1, 1.1, "Reddish brown", false, "Custom") 
local robe10w = Instance.new("Weld") 
wel(robe10w, -0.6, 0, 0, robe10, robe10, char.Head, 0, 1.55, 0) 
local robe10m = Instance.new("SpecialMesh") 
mesh(robe10m, robe10, 0.25, 0.25, 0.25, "FileMesh")
robe10m.MeshId = "http://www.roblox.com/asset/?id=3270017" 
robe10m.TextureId = "http://www.roblox.com/asset/?id=41988084" 
local robe11 = Instance.new("Part") 
prop(robe11, Model2, false, 0, 0, 0.1, 0.1, 0.1, "Bright blue", false, "Custom") 
local bm2 = Instance.new("SpecialMesh", robe11) 
bm2.Scale = Vector3.new(0.25, 0.5, 0.25) 
bm2.MeshType = "FileMesh" 
bm2.MeshId = "http://www.roblox.com/asset/?id=1051557" 
robe11.Material = "Slate" 
local robe11w = Instance.new("Weld") 
wel(robe11w, 0, -0.2, 0, robe11, robe11, robe10, 0, 0, 0) 
--http://www.roblox.com/asset/?id=3270017
local shaft = Instance.new("Part") 
prop(shaft, Model2, false, 0, 0, 0.2, 6, 0.2, "Reddish brown", false, "Custom") 
shaft.Material = "Wood" 
local shaftw = Instance.new("Weld") 
wel(shaftw, 0, -1, 0, shaft, shaft, Rarm, 1.55, 0, 0) 
local shaft2 = Instance.new("Part") 
prop(shaft2, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft2.Material = "Wood" 
local shaft2w = Instance.new("Weld") 
wel(shaft2w, -0.5, 3.75, 0, shaft2, shaft2, shaft, 0, 0, 0.5) 
local shaft3 = Instance.new("Part") 
prop(shaft3, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft3.Material = "Wood" 
local shaft3w = Instance.new("Weld") 
wel(shaft3w, 0.5, 3.75, 0, shaft3, shaft3, shaft, 0, 0, -0.5) 
local shaft4 = Instance.new("Part") 
prop(shaft4, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft4.Material = "Wood" 
local shaft4w = Instance.new("Weld") 
wel(shaft4w, 0, 3.75, 0.5, shaft4, shaft4, shaft, 0.5, 0, 0) 
local shaft5 = Instance.new("Part") 
prop(shaft5, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft5.Material = "Wood" 
local shaft5w = Instance.new("Weld") 
wel(shaft5w, 0, 3.75, -0.5, shaft5, shaft5, shaft, -0.5, 0, 0) 
local shaft6 = Instance.new("Part") 
prop(shaft6, Model2, false, 0, 0, 0.5, 1, 0.5, "Navy blue", false, "Custom") 
local shaft6m = Instance.new("SpecialMesh") 
mesh(shaft6m, shaft6, 1, 1, 1, "Sphere")
local shaft6w = Instance.new("Weld") 
wel(shaft6w, 0, 4.75, 0, shaft6, shaft6, shaft, 0, 0, 0) 
local shaft7 = Instance.new("Part") 
prop(shaft7, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft7.Material = "Wood" 
local shaft7w = Instance.new("Weld") 
wel(shaft7w, -0.5, 5.45, 0, shaft7, shaft7, shaft, 0, 0, -0.5) 
local shaft8 = Instance.new("Part") 
prop(shaft8, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft8.Material = "Wood" 
local shaft8w = Instance.new("Weld") 
wel(shaft8w, 0.5, 5.45, 0, shaft8, shaft8, shaft, 0, 0, 0.5) 
local shaft9 = Instance.new("Part") 
prop(shaft9, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft9.Material = "Wood" 
local shaft9w = Instance.new("Weld") 
wel(shaft9w, 0, 5.45, 0.5, shaft9, shaft9, shaft, -0.5, 0, 0) 
local shaft10 = Instance.new("Part") 
prop(shaft10, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft10.Material = "Wood" 
local shaft10w = Instance.new("Weld") 
wel(shaft10w, 0, 5.45, -0.5, shaft10, shaft10, shaft, 0.5, 0, 0) 
local shaft11 = Instance.new("Part") 
prop(shaft11, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft11.Material = "Wood" 
local shaft11w = Instance.new("Weld") 
wel(shaft11w, -0.5, -3.75, 0, shaft11, shaft11, shaft, 0, 0, -0.5) 
local shaft12 = Instance.new("Part") 
prop(shaft12, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft12.Material = "Wood" 
local shaft12w = Instance.new("Weld") 
wel(shaft12w, 0.5, -3.75, 0, shaft12, shaft12, shaft, 0, 0, 0.5) 
local shaft13 = Instance.new("Part") 
prop(shaft13, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft13.Material = "Wood" 
local shaft13w = Instance.new("Weld") 
wel(shaft13w, 0, -3.75, 0.5, shaft13, shaft13, shaft, -0.5, 0, 0) 
local shaft14 = Instance.new("Part") 
prop(shaft14, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft14.Material = "Wood" 
local shaft14w = Instance.new("Weld") 
wel(shaft14w, 0, -3.75, -0.5, shaft14, shaft14, shaft, 0.5, 0, 0) 
local shaft15 = Instance.new("Part") 
prop(shaft15, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft15.Material = "Wood" 
local shaft15w = Instance.new("Weld") 
wel(shaft15w, -0.5, -5.45, 0, shaft15, shaft15, shaft, 0, 0, 0.5) 
local shaft16 = Instance.new("Part") 
prop(shaft16, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft16.Material = "Wood" 
local shaft16w = Instance.new("Weld") 
wel(shaft16w, 0.5, -5.45, 0, shaft16, shaft16, shaft, 0, 0, -0.5) 
local shaft17 = Instance.new("Part") 
prop(shaft17, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft17.Material = "Wood" 
local shaft17w = Instance.new("Weld") 
wel(shaft17w, 0, -5.45, -0.5, shaft17, shaft17, shaft, -0.5, 0, 0) 
local shaft18 = Instance.new("Part") 
prop(shaft18, Model2, false, 0, 0, 0.2, 2, 0.2, "Reddish brown", false, "Custom") 
shaft18.Material = "Wood" 
local shaft18w = Instance.new("Weld") 
wel(shaft18w, 0, -5.45, 0.5, shaft18, shaft18, shaft, 0.5, 0, 0) 
local shaft19 = Instance.new("Part") 
prop(shaft19, Model2, false, 0, 0, 0.5, 1, 0.5, "Mid stone grey", false, "Custom") 
local shaft19m = Instance.new("SpecialMesh") 
mesh(shaft19m, shaft19, 1, 1, 1, "Sphere")
local shaft19w = Instance.new("Weld") 
wel(shaft19w, 0, -4.75, 0, shaft19, shaft19, shaft, 0, 0, 0) 
local shaft20 = Instance.new("Part") 
prop(shaft20, Model2, false, 0.5, 0, 0.5, 1, 0.5, "Mid stone grey", false, "Custom") 
local shaft20m = Instance.new("SpecialMesh") 
mesh(shaft20m, shaft20, 1.3, 1.3, 1.3, "Sphere")
local shaft20w = Instance.new("Weld") 
wel(shaft20w, 0, -4.75, 0, shaft20, shaft20, shaft, 0, 0, 0) 
local shaft21 = Instance.new("Part") 
prop(shaft21, Model2, false, 0.5, 0, 0.5, 1, 0.5, "Mid stone grey", false, "Custom") 
local shaft21m = Instance.new("SpecialMesh") 
mesh(shaft21m, shaft21, 1.6, 1.6, 1.6, "Sphere")
local shaft21w = Instance.new("Weld") 
wel(shaft21w, 0, -4.75, 0, shaft21, shaft21, shaft, 0, 0, 0) 
local shaft22 = Instance.new("Part") 
prop(shaft22, Model2, false, 0.5, 0, 0.5, 1, 0.5, "Navy blue", false, "Custom") 
local shaft22m = Instance.new("SpecialMesh") 
mesh(shaft22m, shaft22, 1.3, 1.3, 1.3, "Sphere")
local shaft22w = Instance.new("Weld") 
wel(shaft22w, 0, 4.75, 0, shaft22, shaft22, shaft, 0, 0, 0) 
local shaft23 = Instance.new("Part") 
prop(shaft23, Model2, false, 0.5, 0, 0.5, 1, 0.5, "Navy blue", false, "Custom") 
local shaft23m = Instance.new("SpecialMesh") 
mesh(shaft23m, shaft23, 1.6, 1.6, 1.6, "Sphere")
local shaft23w = Instance.new("Weld") 
wel(shaft23w, 0, 4.75, 0, shaft23, shaft23, shaft, 0, 0, 0) 

--[[ for i = 0, 1, 0.1 do 
local bal = Instance.new("Part") 
prop(bal, Model2, false, 0.5, 0, 0.5, 0.5, 0.5, "Navy blue", false, "Custom") 
local balm = Instance.new("SpecialMesh") 
mesh(balm, bal, 1, 1, 1, "Sphere")
local balw = Instance.new("Weld") 
wel(balw, 0, -1 + math.rad(100*i), 0, bal, bal, shaft, math.rad(55*i), math.rad(55*i), math.rad(55*i)) 
wait() 
end ]]
for i = 0, 3.5, 0.1 do 
local bal = Instance.new("Part") 
prop(bal, Model2, false, 0, 0, 0.3, 0.2, 0.2, "Reddish brown", false, "Custom") 
bal.Material = "Wood" 
local balw = Instance.new("Weld") 
wel(balw, 0, -3 + math.rad(100*i), 0, bal, bal, shaft, 0, math.rad(50*i), 0) 
local bal = Instance.new("Part") 
prop(bal, Model2, false, 0, 0, 0.3, 0.2, 0.2, "Reddish brown", false, "Custom") 
bal.Material = "Wood" 
local balw = Instance.new("Weld") 
wel(balw, 0, -3 + math.rad(100*i), 0, bal, bal, shaft, 0, math.rad(-50*i), 0) 
wait() 
end 

function atk(pos, mag, dmg) 
coroutine.resume(coroutine.create(function()
for _,v in pairs(game.Players:GetChildren()) do 
if v.Name ~= Me.Name then 
if (v.Character.Torso.Position - pos).magnitude < mag then 
v.Character.Humanoid:TakeDamage(dmg) 
end 
end 
end 
end))
end 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Staff"
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
RAW.Part1 = Rarm 
LAW.Part1 = Larm 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90*i), math.rad(70*i), math.rad(-45*i)) 
wait() 
end 
    mouse.Button1Down:connect(function()
pos = mouse.hit.p 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+0*i), math.rad(70+360*i), math.rad(-45+0*i)) 
wait() 
end 
local part = Instance.new("Part") 
part.Parent = workspace 
part.Size = Vector3.new(5, 5, 5) 
part.Anchored = true 
part.CanCollide = false 
part.CFrame = CFrame.new(pos) 
part.Transparency = 0.5
part.BrickColor = BrickColor.new("Bright blue") 
local mesh = Instance.new("CylinderMesh", part) 
local cf = part.CFrame 
for i = 0, 1, 0.1 do 
shaft22m.Scale = shaft22m.Scale + Vector3.new(0.1, 0.1, 0.1) 
shaft23m.Scale = shaft23m.Scale + Vector3.new(0.1, 0.1, 0.1) 
shaft6m.Scale = shaft6m.Scale + Vector3.new(0.1, 0.1, 0.1) 
part.Size = part.Size + Vector3.new(1, 0, 1) 
part.CFrame = cf 
atk(part.Position, 10*i, 5) 
wait() 
end 
for i = 0, 1, 0.1 do 
shaft22m.Scale = shaft22m.Scale - Vector3.new(0.1, 0.1, 0.1) 
shaft23m.Scale = shaft23m.Scale - Vector3.new(0.1, 0.1, 0.1) 
shaft6m.Scale = shaft6m.Scale - Vector3.new(0.1, 0.1, 0.1) 
wait() 
end 
part:remove() 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+0*i), math.rad(70-360*i), math.rad(-45+0*i)) 
wait() 
end 
local part = Instance.new("Part") 
part.Parent = workspace 
part.Size = Vector3.new(5, 5, 5) 
part.Anchored = true 
part.CFrame = CFrame.new(mouse.hit.p) 
part.Material = "Slate" 
part.BrickColor = BrickColor.new("Dark stone grey") 
local cf = part.CFrame 
for i = 0, 1, 0.1 do 
shaft21m.Scale = shaft21m.Scale + Vector3.new(0.1, 0.1, 0.1) 
shaft20m.Scale = shaft20m.Scale + Vector3.new(0.1, 0.1, 0.1) 
shaft19m.Scale = shaft19m.Scale + Vector3.new(0.1, 0.1, 0.1) 
part.Size = part.Size + Vector3.new(0, 1.5, 0) 
atk(part.Position, 10, 5) 
part.CFrame = cf 
wait() 
end 
for i = 0, 1, 0.1 do 
shaft21m.Scale = shaft21m.Scale - Vector3.new(0.1, 0.1, 0.1) 
shaft20m.Scale = shaft20m.Scale - Vector3.new(0.1, 0.1, 0.1) 
shaft19m.Scale = shaft19m.Scale - Vector3.new(0.1, 0.1, 0.1) 
wait() 
end 
part:remove() 
	end 
        if key == "g" then 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+0*i), math.rad(70-360*i), math.rad(-45+0*i)) 
wait() 
end 
local part = Instance.new("Part") 
part.Parent = workspace 
part.Size = Vector3.new(2, 10, 2) 
part.Anchored = true 
part.CFrame = CFrame.new(mouse.hit.p) + Vector3.new(0, 2.5, 0) 
part.Material = "Plastic" 
part.BrickColor = BrickColor.new("Reddish brown") 
local part2 = Instance.new("Part") 
part2.Parent = part 
part2.Size = Vector3.new(5, 5, 5) 
part2.Anchored = true 
part2.CFrame = part.CFrame + Vector3.new(0, 7.5, 0) 
part2.Material = "Plastic" 
part2.BrickColor = BrickColor.new("Dark green") 
local bm = Instance.new("SpecialMesh", part2) 
bm.MeshType = "Sphere" 
bm.Scale = Vector3.new(2, 2, 2) 
local cf = part.CFrame 
for i = 0, 1, 0.1 do 
shaft21m.Scale = shaft21m.Scale + Vector3.new(0.1, 0.1, 0.1) 
shaft20m.Scale = shaft20m.Scale + Vector3.new(0.1, 0.1, 0.1) 
shaft19m.Scale = shaft19m.Scale + Vector3.new(0.1, 0.1, 0.1) 
atk(part.Position, 10, 5) 
wait() 
end 
for i = 0, 1, 0.1 do 
shaft21m.Scale = shaft21m.Scale - Vector3.new(0.1, 0.1, 0.1) 
shaft20m.Scale = shaft20m.Scale - Vector3.new(0.1, 0.1, 0.1) 
shaft19m.Scale = shaft19m.Scale - Vector3.new(0.1, 0.1, 0.1) 
wait() 
end 
part:remove() 
	end 
        if key == "f" then 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+0*i), math.rad(70-360*i), math.rad(-45+0*i)) 
wait() 
end 
local pos = mouse.hit.p 
local part = Instance.new("Part") 
part.Parent = workspace 
part.Size = Vector3.new(20, 20, 2) 
part.Anchored = true 
part.CFrame = CFrame.new(pos) * CFrame.Angles(0.5, 0, 0) + Vector3.new(0, 5, 5) 
part.Material = "Slate" 
part.BrickColor = BrickColor.new("Dark stone grey") 
local part2 = Instance.new("Part") 
part2.Parent = part 
part2.Size = Vector3.new(20, 20, 2) 
part2.Anchored = true 
part2.CFrame = CFrame.new(pos) * CFrame.Angles(-0.5, 0, 0) + Vector3.new(0, 5, -5) 
part2.Material = "Slate" 
part2.BrickColor = BrickColor.new("Dark stone grey") 
local part3 = Instance.new("Part") 
part3.Parent = part 
part3.Size = Vector3.new(20, 2, 20) 
part3.Anchored = true 
part3.CFrame = CFrame.new(pos) * CFrame.Angles(0, 0, 0) + Vector3.new(0, 13, 0) 
part3.Material = "Slate" 
part3.BrickColor = BrickColor.new("Dark stone grey") 
local part4 = Instance.new("Part") 
part4.Parent = part 
part4.Size = Vector3.new(2, 20, 20) 
part4.Anchored = true 
part4.CFrame = CFrame.new(pos) * CFrame.Angles(0, 0, 0) + Vector3.new(10, 5, 0) 
part4.Material = "Slate" 
part4.BrickColor = BrickColor.new("Dark stone grey") 
local part5 = Instance.new("Part") 
part5.Parent = part 
part5.Size = Vector3.new(2, 20, 20) 
part5.Anchored = true 
part5.CFrame = CFrame.new(pos) * CFrame.Angles(0, 0, 0) + Vector3.new(-10, 5, 0) 
part5.Material = "Slate" 
part5.BrickColor = BrickColor.new("Dark stone grey") 
local cf = part.CFrame 
for i = 0, 2, 0.1 do 
shaft21m.Scale = shaft21m.Scale + Vector3.new(0.1, 0.1, 0.1) 
shaft20m.Scale = shaft20m.Scale + Vector3.new(0.1, 0.1, 0.1) 
shaft19m.Scale = shaft19m.Scale + Vector3.new(0.1, 0.1, 0.1) 
atk(pos, 7.5, 5) 
wait() 
end 
for i = 0, 2, 0.1 do 
shaft21m.Scale = shaft21m.Scale - Vector3.new(0.1, 0.1, 0.1) 
shaft20m.Scale = shaft20m.Scale - Vector3.new(0.1, 0.1, 0.1) 
shaft19m.Scale = shaft19m.Scale - Vector3.new(0.1, 0.1, 0.1) 
wait() 
end 
for i = 0, 2, 0.1 do 
part.CFrame = part.CFrame - Vector3.new(0, 1, 0) 
part2.CFrame = part2.CFrame - Vector3.new(0, 1, 0) 
part3.CFrame = part3.CFrame - Vector3.new(0, 1, 0) 
part4.CFrame = part4.CFrame - Vector3.new(0, 1, 0) 
part5.CFrame = part5.CFrame - Vector3.new(0, 1, 0) 
wait() 
end 
part:remove() 
	end 
        if key == "e" then 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+0*i), math.rad(70-360*i), math.rad(-45+0*i)) 
wait() 
end 
local part = Instance.new("Part") 
part.Parent = workspace 
part.Size = Vector3.new(5, 5, 5) 
part.Anchored = true 
part.CFrame = CFrame.new(mouse.hit.p) 
part.Material = "Grass" 
part.BrickColor = BrickColor.new("Dark green") 
local cf = part.CFrame 
for i = 0, 2, 0.1 do 
shaft21m.Scale = shaft21m.Scale + Vector3.new(0.1, 0.1, 0.1) 
shaft20m.Scale = shaft20m.Scale + Vector3.new(0.1, 0.1, 0.1) 
shaft19m.Scale = shaft19m.Scale + Vector3.new(0.1, 0.1, 0.1) 
part.Size = part.Size + Vector3.new(0, 1.5, 0) 
atk(part.Position, 10, 5) 
part.CFrame = cf 
wait() 
end 
for i = 0, 2, 0.1 do 
shaft21m.Scale = shaft21m.Scale - Vector3.new(0.1, 0.1, 0.1) 
shaft20m.Scale = shaft20m.Scale - Vector3.new(0.1, 0.1, 0.1) 
shaft19m.Scale = shaft19m.Scale - Vector3.new(0.1, 0.1, 0.1) 
wait() 
end 
part:remove() 
	end 
        if key == "t" then 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+0*i), math.rad(70-360*i), math.rad(-45+0*i)) 
wait() 
end 
local pos = mouse.hit.p
local part = Instance.new("Part") 
part.Parent = workspace 
part.Size = Vector3.new(1, 1, 1) 
part.Anchored = true 
part.CanCollide = false 
part.CFrame = CFrame.new(pos) + Vector3.new(0, 5, 0) 
part.Material = "Grass" 
part.Transparency = 0.25
part.BrickColor = BrickColor.new("Dark stone grey") 
local partm = Instance.new("SpecialMesh", part) 
partm.MeshType = "FileMesh" 
partm.Scale = Vector3.new(10, 10, 10) 
partm.MeshId = "http://www.roblox.com/asset/?id=1051557" 
local cf = part.CFrame 
for i = 0, 2, 0.1 do 
shaft21m.Scale = shaft21m.Scale + Vector3.new(0.1, 0.1, 0.1) 
shaft20m.Scale = shaft20m.Scale + Vector3.new(0.1, 0.1, 0.1) 
shaft19m.Scale = shaft19m.Scale + Vector3.new(0.1, 0.1, 0.1) 
part.Size = part.Size + Vector3.new(0, 1.5, 0) 
atk(part.Position, 10, 5) 
part.CFrame = cf 
wait() --http://www.roblox.com/asset/?id=1051557
end 
for i = 0, 2, 0.1 do 
shaft21m.Scale = shaft21m.Scale - Vector3.new(0.1, 0.1, 0.1) 
shaft20m.Scale = shaft20m.Scale - Vector3.new(0.1, 0.1, 0.1) 
shaft19m.Scale = shaft19m.Scale - Vector3.new(0.1, 0.1, 0.1) 
wait() 
end 
part:remove() 
	end 
	    if key == "r" then 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+0*i), math.rad(70-360*i), math.rad(-45+0*i)) 
wait() 
end 
local part = Instance.new("Part") 
part.Parent = workspace 
part.Size = Vector3.new(5, 5, 5) 
part.Anchored = true 
part.Transparency = 1 
part.CFrame = CFrame.new(mouse.hit.p) 
part.Material = "Grass" 
part.BrickColor = BrickColor.new("Dark green") 
local fire = Instance.new("Fire", part) 
fire.Heat = 5 
local cf = part.CFrame 
for i = 0, 2, 0.1 do 
shaft21m.Scale = shaft21m.Scale + Vector3.new(0.1, 0.1, 0.1) 
shaft20m.Scale = shaft20m.Scale + Vector3.new(0.1, 0.1, 0.1) 
shaft19m.Scale = shaft19m.Scale + Vector3.new(0.1, 0.1, 0.1) 
atk(part.Position, 5, 5) 
fire.Heat = fire.Heat + 1 
wait() 
end 
for i = 0, 2, 0.1 do 
shaft21m.Scale = shaft21m.Scale - Vector3.new(0.1, 0.1, 0.1) 
shaft20m.Scale = shaft20m.Scale - Vector3.new(0.1, 0.1, 0.1) 
shaft19m.Scale = shaft19m.Scale - Vector3.new(0.1, 0.1, 0.1) 
wait() 
end 
part:remove() 
	end 
    end)
end

function onDesel(mouse)
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90-90*i), math.rad(70-70*i), math.rad(-45+45*i)) 
wait() 
end 
RAW.Part1 = nil
LAW.Part1 = nil
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
