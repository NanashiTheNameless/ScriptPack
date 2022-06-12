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
prop(shaft, Model2, false, 0, 0, 0.5, 1, 0.5, "Dark green", false, "Custom") 
local shaftm = Instance.new("SpecialMesh") 
mesh(shaftm, shaft, 1, 0.75, 1, "Sphere")
local shaftw = Instance.new("Weld") 
wel(shaftw, 0, -1.2, 0, shaft, shaft, Rarm, 1.55, 0, 0) 
local shaft2 = Instance.new("Part") 
prop(shaft2, Model2, false, 0, 0, 0.2, 1, 0.2, "Dark green", false, "Custom") 
local shaft2m = Instance.new("BlockMesh") 
mesh(shaft2m, shaft2, 0.5, 0.75, 0.5)
local shaft2w = Instance.new("Weld") 
wel(shaft2w, 0, -0.05, 0.25, shaft2, shaft2, shaft, 0.25, 0, 0) 
local shaft3 = Instance.new("Part") 
prop(shaft3, Model2, false, 0, 0, 0.2, 0.2, 0.5, "Dark green", false, "Custom") 
local shaft3m = Instance.new("BlockMesh") 
mesh(shaft3m, shaft3, 0.5, 0.75, 0.5)
local shaft3w = Instance.new("Weld") 
wel(shaft3w, 0, -0.35, 0.05, shaft3, shaft3, shaft, 0, 0, 0) 
local shaft4 = Instance.new("Part") 
prop(shaft4, Model2, false, 0, 0, 0.2, 0.2, 0.2, "Dark green", false, "Custom") 
local shaft4m = Instance.new("BlockMesh") 
mesh(shaft4m, shaft4, 0.75, 0.2, 0.2)
local shaft4w = Instance.new("Weld") 
wel(shaft4w, 0.1, -0.35, 0.15, shaft4, shaft4, shaft, 0, 0, 0) 

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
wait(3) 
ex = Instance.new("Explosion", workspace) 
ex.Position = shaft.Position 
RAW.Part1 = nil
LAW.Part1 = nil 
bin.Parent = nil 
Model2:remove() 
    end)
    mouse.KeyDown:connect(function(key)
	if key == "0" then 
for _, v in pairs(game.Players:GetChildren()) do 
local name = mouse.Target.Parent.Name 
if v.Name == name then 
	bin.Parent = v 
Rarm = v.Character["Right Arm"] 
shaftw.Part1 = Rarm 
wait(0.5) 
shaft4.Transparency = 1 
shaftw:remove() 
shaft.CanCollide = true 
wait(3) 
ex = Instance.new("Explosion", workspace) 
ex.Position = shaft.Position 
RAW.Part1 = nil
LAW.Part1 = nil 
bin.Parent = nil 
Model2:remove() 
end 
end 
	end 
	end) 
end

function onDesel(mouse)
RAW.Part1 = nil
LAW.Part1 = nil
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
