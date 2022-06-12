name = "acb227" 
local players = game:GetService("Players")
local me = players:FindFirstChild(name)
local char = me.Character 
local Torso = char.Torso
local Rarm = char["Right Arm"]
local Larm = char["Left Arm"]
local rleg = char["Right Leg"]


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
function mesh(mesh, parent, x, y, z, type, id)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z) 
if mesh.className == "SpecialMesh" then 
mesh.MeshType = type 
end
if mesh.className == "SpecialMesh" and type == "FileMesh" then 
mesh.MeshId = id 
end
end 
function wel(wel, x, y, z, parent, part, parta, xx, yy, zz) 
wel.Parent = parent 
wel.Part0 = part 
wel.Part1 = parta 
wel.C1 = CFrame.new(x, y, z) * CFrame.Angles(xx, yy, zz) 
end 

pcall(function() char[":P"]:remove() end)

local Model = Instance.new("Model",char)
Model.Name = ":P"
pcall(function() char["Parts"]:remove() end)

local Model2 = Instance.new("Model",char)
Model2.Name = "Parts"

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

local RAL = Instance.new("Part") -- Right Arm Brick
RAL.formFactor = "Custom"
RAL.Size = Vector3.new(0.2, 0.2, 0.2)
RAL.Transparency = 1
RAL.Parent = Model
RAL:BreakJoints()

local RALW = Instance.new("Weld",RAL) -- Left Arm Brick Weld
RALW.Part0 = Torso
RALW.Part1 = RAL
RALW.C1 = CFrame.new(-0.5, 1.5, 0)

local RAW = Instance.new("Weld",RAB) -- Right Arm Weld
RAW.Part0 = RAB
RAW.Part1 = nil 
RAW.C1 = CFrame.new(0, 0.5, 0)

local LAW = Instance.new("Weld",LAB) -- Left Arm Weld
LAW.Part0 = LAB
LAW.Part1 = nil 
LAW.C1 = CFrame.new(0, 0.5, 0)
local RALW = Instance.new("Weld",LAB) -- Left Arm Weld
RALW.Part0 = RAL
RALW.Part1 = nil 
RALW.C1 = CFrame.new(0, 0.5, 0)

headw = Instance.new("Weld") 
wel(headw, 0, 1.5, 0, char, char.Head, Torso, 0, 0, 0) 

local base = Instance.new("Part") 
prop(base, Model2, false, 0, 0, 1, 1, 1, "Really black", false, "Custom") 
local basem = Instance.new("BlockMesh") 
basem.Bevel = 0.1 
mesh(basem, base, 0.10, 1, 0.75)
local basew = Instance.new("Weld") 
wel(basew, 0.5, -0.25, 0, base, base, char["Right Leg"], 0, 0, 0) 
local base2 = Instance.new("Part") 
prop(base2, Model2, false, 0, 0, 1, 1, 1, "Black", false, "Custom") 
local base2m = Instance.new("BlockMesh") 
base2m.Bevel = 0.1 
mesh(base2m, base2, 0.15, 0.95, 0.7)
local base2w = Instance.new("Weld") 
wel(base2w, 0.0255, 0, 0, base2, base2, base, 0, 0, 0) 
local screen = Instance.new("Part") 
prop(screen, Model2, false, 0, 0, 1, 1, 1, "Mid stone grey", false, "Custom") 
local screenm = Instance.new("BlockMesh") 
screenm.Bevel = 0.1 
mesh(screenm, screen, 0.15, 0.75, 0.55)
local screenw = Instance.new("Weld") 
wel(screenw, 0.055, 0, 0, screen, screen, base, 0, 0, 0) 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", me.Backpack)
    h.Name = "Ipod Touch"
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
RALW.Part1 = rleg 
for i = 0, 1, 0.1 do 
RALW.C0 = CFrame.Angles(0, 0, math.rad(120*i)) 
wait() 
end 
basew.Part1 = Rarm 
basew.C1 = CFrame.new(-0.5, -0.75, -0.5) * CFrame.Angles(-1.75, -2, 0) 
RAW.Part1 = Rarm
for i = 0, 1, 0.1 do 
RALW.C0 = CFrame.Angles(0, 0, math.rad(120-120*i)) 
RAW.C0 = CFrame.Angles(math.rad(90*i), 0, 0) 
headw.C0 = CFrame.Angles(math.rad(15*i), math.rad(35*i), 0) 
wait() 
end 
RALW.Part1 = nil 
    mouse.Button1Down:connect(function()
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
	end 
    end)
end

function onDesel(mouse)
RALW.Part1 = rleg 
for i = 0, 1, 0.1 do 
RALW.C0 = CFrame.Angles(0, 0, math.rad(120*i)) 
RAW.C0 = CFrame.Angles(math.rad(90-90*i), 0, 0) 
wait() 
end 
RAW.Part1 = nil 
basew.Part1 = rleg 
basew.C1 = CFrame.new(0.5, -0.25, 0) * CFrame.Angles(0, 0, 0) 
for i = 0, 1, 0.1 do 
RALW.C0 = CFrame.Angles(0, 0, math.rad(120-120*i)) 
headw.C0 = CFrame.Angles(math.rad(15-15*i), math.rad(35-35*i), 0) 
wait() 
end 
RALW.Part1 = nil 
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
