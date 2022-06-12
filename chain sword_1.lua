local Me = game.Players.LocalPlayer
char = Me.Character
Torso = char.Torso
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
local Attkin = true 

function prop(part, color, Parent, x, y, z) 
local pp = part 
pp.CanCollide = false 
pp.formFactor = "Symmetric" 
pp.Size = Vector3.new(x, y, z)
pp:BreakJoints() 
pp.BrickColor = BrickColor.new(color) 
pp.Parent = Parent 
end 

function weld(weld, parent, a, b, c) 
local ww = weld 
ww.Parent = parent 
ww.Part0 = a 
ww.Part1 = b 
ww.C1 = c 
end 

function meshp(mes, part, x, y, z) 
local mesh = mes 
mesh.Parent = part  
mesh.Scale = Vector3.new(x, y, z) 
if mesh.className == "BlockMesh" then 
mesh.Bevel = 0.1 
end 
end 

function mesh(mes, part, type, x, y, z) 
local mesh = mes 
mesh.MeshType = type 
mesh.Parent = part  
mesh.Scale = Vector3.new(x, y, z)
end 

pcall(function() char[":P"]:remove() end)
pcall(function() char["Sword"]:remove() end)

local Model = Instance.new("Model",char)
Model.Name = ":P"
local Model2 = Instance.new("Model",char)
Model2.Name = "Sword"

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
RAW.Part1 = Rarm
RAW.C1 = CFrame.new(0, 0.5, 0)

local LAW = Instance.new("Weld",LAB) -- Left Arm Weld
LAW.Part0 = LAB
LAW.Part1 = Larm
LAW.C1 = CFrame.new(0, 0.5, 0)

RAW.Part1 = nil
LAW.Part1 = nil

local handle = Instance.new("Part") 
prop(handle, "Dark red", Model2, 1, 1, 1) 
local handlem = Instance.new("CylinderMesh") 
meshp(handlem, handle, 0.25, 1.1, 0.25) 
local handlew = Instance.new("Weld") 
weld(handlew, handle, handle, char.Torso, CFrame.new(0.75, 1, 0.5) * CFrame.Angles(0, 0, -7)) 
local handle2 = Instance.new("Part") 
prop(handle2, "Dark red", Model2, 1, 1, 1) 
local handle2m = Instance.new("BlockMesh") 
meshp(handle2m, handle2, 1, 0.25, 0.25) 
local handle2w = Instance.new("Weld") 
weld(handle2w, handle2, handle2, handle, CFrame.new(0, -0.5, 0) * CFrame.Angles(0, 0, 0)) 
local handle3 = Instance.new("Part") 
prop(handle3, "Bright green", Model2, 1, 1, 1) 
local handle3m = Instance.new("CylinderMesh") 
meshp(handle3m, handle3, 0.5, 0.3, 0.3) 
local handle3w = Instance.new("Weld") 
weld(handle3w, handle3, handle3, handle, CFrame.new(0, -0.5, 0) * CFrame.Angles(7.75, 0, 0)) 
local handle4 = Instance.new("Part") 
prop(handle4, "Bright yellow", Model2, 1, 1, 1) 
local handle4m = Instance.new("BlockMesh") 
meshp(handle4m, handle4, 0.5, 0.25, 0.25) 
local handle4w = Instance.new("Weld") 
weld(handle4w, handle4, handle4, handle, CFrame.new(0.25, -0.7, 0) * CFrame.Angles(0, 0, 4)) 
local handle5 = Instance.new("Part") 
prop(handle5, "Bright yellow", Model2, 1, 1, 1) 
local handle5m = Instance.new("BlockMesh") 
meshp(handle5m, handle5, 0.5, 0.25, 0.25) 
local handle5w = Instance.new("Weld") 
weld(handle5w, handle5, handle5, handle, CFrame.new(-0.25, -0.7, 0) * CFrame.Angles(0, 0, -4)) 
local handle6 = Instance.new("Part") 
prop(handle6, "Bright yellow", Model2, 1, 1, 1) 
local handle6m = Instance.new("BlockMesh") 
meshp(handle6m, handle6, 0.35, 0.25, 0.2) 
local handle6w = Instance.new("Weld") 
weld(handle6w, handle6, handle6, handle, CFrame.new(0, -0.65, 0) * CFrame.Angles(0, 0, 0)) 
local handle7 = Instance.new("Part") 
prop(handle7, "Mid stone grey", Model2, 1, 1, 1) 
local handle7m = Instance.new("BlockMesh") 
meshp(handle7m, handle7, 0.5, 0.25, 0.25) 
local handle7w = Instance.new("Weld") 
weld(handle7w, handle7, handle7, handle, CFrame.new(0.1, -0.8, 0) * CFrame.Angles(0, 0, 4.3)) 
local handle8 = Instance.new("Part") 
prop(handle8, "Mid stone grey", Model2, 1, 1, 1) 
local handle8m = Instance.new("BlockMesh") 
meshp(handle8m, handle8, 0.5, 0.25, 0.25) 
local handle8w = Instance.new("Weld") 
weld(handle8w, handle8, handle8, handle, CFrame.new(-0.1, -0.8, 0) * CFrame.Angles(0, 0, -4.3)) 
local handle9 = Instance.new("Part") 
prop(handle9, "Mid stone grey", Model2, 1, 1, 1) 
local handle9m = Instance.new("BlockMesh") 
meshp(handle9m, handle9, 0.5, 0.25, 0.25) 
local handle9w = Instance.new("Weld") 
weld(handle9w, handle9, handle9, handle, CFrame.new(0.1, -1, 0) * CFrame.Angles(0, 0, 4.3)) 
local handle10 = Instance.new("Part") 
prop(handle10, "Mid stone grey", Model2, 1, 1, 1) 
local handle10m = Instance.new("BlockMesh") 
meshp(handle10m, handle10, 0.5, 0.25, 0.25) 
local handle10w = Instance.new("Weld") 
weld(handle10w, handle10, handle10, handle, CFrame.new(-0.1, -1, 0) * CFrame.Angles(0, 0, -4.3)) 
local handle11 = Instance.new("Part") 
prop(handle11, "Mid stone grey", Model2, 1, 1, 1) 
local handle11m = Instance.new("BlockMesh") 
meshp(handle11m, handle11, 0.5, 0.25, 0.25) 
local handle11w = Instance.new("Weld") 
weld(handle11w, handle11, handle11, handle, CFrame.new(0.1, -1.2, 0) * CFrame.Angles(0, 0, 4.3)) 
local handle12 = Instance.new("Part") 
prop(handle12, "Mid stone grey", Model2, 1, 1, 1) 
local handle12m = Instance.new("BlockMesh") 
meshp(handle12m, handle12, 0.5, 0.25, 0.25) 
local handle12w = Instance.new("Weld") 
weld(handle12w, handle12, handle12, handle, CFrame.new(-0.1, -1.2, 0) * CFrame.Angles(0, 0, -4.3)) 
local handle13 = Instance.new("Part") 
prop(handle13, "Mid stone grey", Model2, 1, 1, 1) 
local handle13m = Instance.new("BlockMesh") 
meshp(handle13m, handle13, 0.5, 0.25, 0.25) 
local handle13w = Instance.new("Weld") 
weld(handle13w, handle13, handle13, handle, CFrame.new(0.1, -1.4, 0) * CFrame.Angles(0, 0, 4.3)) 
local handle14 = Instance.new("Part") 
prop(handle14, "Mid stone grey", Model2, 1, 1, 1) 
local handle14m = Instance.new("BlockMesh") 
meshp(handle14m, handle14, 0.5, 0.25, 0.25) 
local handle14w = Instance.new("Weld") 
weld(handle14w, handle14, handle14, handle, CFrame.new(-0.1, -1.4, 0) * CFrame.Angles(0, 0, -4.3)) 
local handle15 = Instance.new("Part") 
prop(handle15, "Mid stone grey", Model2, 1, 1, 1) 
local handle15m = Instance.new("BlockMesh") 
meshp(handle15m, handle15, 0.5, 0.25, 0.25) 
local handle15w = Instance.new("Weld") 
weld(handle15w, handle15, handle15, handle, CFrame.new(0.1, -1.6, 0) * CFrame.Angles(0, 0, 4.3)) 
local handle16 = Instance.new("Part") 
prop(handle16, "Mid stone grey", Model2, 1, 1, 1) 
local handle16m = Instance.new("BlockMesh") 
meshp(handle16m, handle16, 0.5, 0.25, 0.25) 
local handle16w = Instance.new("Weld") 
weld(handle16w, handle16, handle16, handle, CFrame.new(-0.1, -1.6, 0) * CFrame.Angles(0, 0, -4.3)) 
local handle17 = Instance.new("Part") 
prop(handle17, "Mid stone grey", Model2, 1, 1, 1) 
local handle17m = Instance.new("BlockMesh") 
meshp(handle17m, handle17, 0.5, 0.25, 0.25) 
local handle17w = Instance.new("Weld") 
weld(handle17w, handle17, handle17, handle, CFrame.new(0.1, -1.8, 0) * CFrame.Angles(0, 0, 4.3)) 
local handle18 = Instance.new("Part") 
prop(handle18, "Mid stone grey", Model2, 1, 1, 1) 
local handle18m = Instance.new("BlockMesh") 
meshp(handle18m, handle18, 0.5, 0.25, 0.25) 
local handle18w = Instance.new("Weld") 
weld(handle18w, handle18, handle18, handle, CFrame.new(-0.1, -1.8, 0) * CFrame.Angles(0, 0, -4.3)) 
local handle19 = Instance.new("Part") 
prop(handle19, "Mid stone grey", Model2, 1, 1, 1) 
local handle19m = Instance.new("BlockMesh") 
meshp(handle19m, handle19, 0.5, 0.25, 0.25) 
local handle19w = Instance.new("Weld") 
weld(handle19w, handle19, handle19, handle, CFrame.new(0.1, -2, 0) * CFrame.Angles(0, 0, 4.3)) 
local handle20 = Instance.new("Part") 
prop(handle20, "Mid stone grey", Model2, 1, 1, 1) 
local handle20m = Instance.new("BlockMesh") 
meshp(handle20m, handle20, 0.5, 0.25, 0.25) 
local handle20w = Instance.new("Weld") 
weld(handle20w, handle20, handle20, handle, CFrame.new(-0.1, -2, 0) * CFrame.Angles(0, 0, -4.3)) 
local handle21 = Instance.new("Part") 
prop(handle21, "Mid stone grey", Model2, 1, 1, 1) 
local handle21m = Instance.new("BlockMesh") 
meshp(handle21m, handle21, 0.5, 0.25, 0.25) 
local handle21w = Instance.new("Weld") 
weld(handle21w, handle21, handle21, handle, CFrame.new(0.1, -2.2, 0) * CFrame.Angles(0, 0, 4.3)) 
local handle22 = Instance.new("Part") 
prop(handle22, "Mid stone grey", Model2, 1, 1, 1) 
local handle22m = Instance.new("BlockMesh") 
meshp(handle22m, handle22, 0.5, 0.25, 0.25) 
local handle22w = Instance.new("Weld") 
weld(handle22w, handle22, handle22, handle, CFrame.new(-0.1, -2.2, 0) * CFrame.Angles(0, 0, -4.3)) 
local handle23 = Instance.new("Part") 
prop(handle23, "Mid stone grey", Model2, 1, 1, 1) 
local handle23m = Instance.new("BlockMesh") 
meshp(handle23m, handle23, 0.5, 0.25, 0.25) 
local handle23w = Instance.new("Weld") 
weld(handle23w, handle23, handle23, handle, CFrame.new(0.1, -2.4, 0) * CFrame.Angles(0, 0, 4.3)) 
local handle24 = Instance.new("Part") 
prop(handle24, "Mid stone grey", Model2, 1, 1, 1) 
local handle24m = Instance.new("BlockMesh") 
meshp(handle24m, handle24, 0.5, 0.25, 0.25) 
local handle24w = Instance.new("Weld") 
weld(handle24w, handle24, handle24, handle, CFrame.new(-0.1, -2.4, 0) * CFrame.Angles(0, 0, -4.3)) 
local handle25 = Instance.new("Part") 
prop(handle25, "Mid stone grey", Model2, 1, 1, 1) 
local handle25m = Instance.new("BlockMesh") 
meshp(handle25m, handle25, 0.5, 0.25, 0.25) 
local handle25w = Instance.new("Weld") 
weld(handle25w, handle25, handle25, handle, CFrame.new(0.1, -2.6, 0) * CFrame.Angles(0, 0, 4.3)) 
local handle26 = Instance.new("Part") 
prop(handle26, "Mid stone grey", Model2, 1, 1, 1) 
local handle26m = Instance.new("BlockMesh") 
meshp(handle26m, handle26, 0.5, 0.25, 0.25) 
local handle26w = Instance.new("Weld") 
weld(handle26w, handle26, handle26, handle, CFrame.new(-0.1, -2.6, 0) * CFrame.Angles(0, 0, -4.3)) 


if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = ""
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
RAW.Part1 = Rarm 
LAW.Part1 = Larm 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(225*i), 0, math.rad(-25*i)) 
wait() 
end 
handlew.Part1 = Rarm 
handlew.C1 = CFrame.new(0, -1, 0) * CFrame.Angles(7.9, 8, 0) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(225-135*i), 0, math.rad(-25+25*i)) 
wait() 
end 
Attkin = false 
    mouse.Button1Down:connect(function() 
if Attkin == false then 
Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+35*i), 0, math.rad(0)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(125-100*i), 0, math.rad(0)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(25+65*i), 0, math.rad(0)) 
wait() 
end 
Attkin = false 
end 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" and Attkin == false then 
Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90-90*i), 0, math.rad(0)) 
wait() 
end 
for i = 0, 1, 0.1 do 
handle7w.C1 = handle7w.C1 - Vector3.new(0, 0.1, 0) 
handle8w.C1 = handle8w.C1 - Vector3.new(0, 0.1, 0) 
handle9w.C1 = handle9w.C1 - Vector3.new(0, 0.15, 0) 
handle10w.C1 = handle10w.C1 - Vector3.new(0, 0.15, 0) 
handle11w.C1 = handle11w.C1 - Vector3.new(0, 0.2, 0) 
handle12w.C1 = handle12w.C1 - Vector3.new(0, 0.2, 0) 
handle13w.C1 = handle13w.C1 - Vector3.new(0, 0.25, 0) 
handle14w.C1 = handle14w.C1 - Vector3.new(0, 0.25, 0) 
handle15w.C1 = handle15w.C1 - Vector3.new(0, 0.3, 0) 
handle16w.C1 = handle16w.C1 - Vector3.new(0, 0.3, 0) 
handle17w.C1 = handle17w.C1 - Vector3.new(0, 0.35, 0) 
handle18w.C1 = handle18w.C1 - Vector3.new(0, 0.35, 0) 
handle19w.C1 = handle19w.C1 - Vector3.new(0, 0.4, 0) 
handle20w.C1 = handle20w.C1 - Vector3.new(0, 0.4, 0) 
handle21w.C1 = handle21w.C1 - Vector3.new(0, 0.45, 0) 
handle22w.C1 = handle22w.C1 - Vector3.new(0, 0.45, 0) 
handle23w.C1 = handle23w.C1 - Vector3.new(0, 0.5, 0) 
handle24w.C1 = handle24w.C1 - Vector3.new(0, 0.5, 0) 
handle25w.C1 = handle25w.C1 - Vector3.new(0, 0.55, 0) 
handle26w.C1 = handle26w.C1 - Vector3.new(0, 0.55, 0) 
wait() 
end 
for i = 0, 1, 0.1 do 
handle7w.C1 = handle7w.C1 + Vector3.new(0, 0.1, 0) 
handle8w.C1 = handle8w.C1 + Vector3.new(0, 0.1, 0) 
handle9w.C1 = handle9w.C1 + Vector3.new(0, 0.15, 0) 
handle10w.C1 = handle10w.C1 + Vector3.new(0, 0.15, 0) 
handle11w.C1 = handle11w.C1 + Vector3.new(0, 0.2, 0) 
handle12w.C1 = handle12w.C1 + Vector3.new(0, 0.2, 0) 
handle13w.C1 = handle13w.C1 + Vector3.new(0, 0.25, 0) 
handle14w.C1 = handle14w.C1 + Vector3.new(0, 0.25, 0) 
handle15w.C1 = handle15w.C1 + Vector3.new(0, 0.3, 0) 
handle16w.C1 = handle16w.C1 + Vector3.new(0, 0.3, 0) 
handle17w.C1 = handle17w.C1 + Vector3.new(0, 0.35, 0) 
handle18w.C1 = handle18w.C1 + Vector3.new(0, 0.35, 0) 
handle19w.C1 = handle19w.C1 + Vector3.new(0, 0.4, 0) 
handle20w.C1 = handle20w.C1 + Vector3.new(0, 0.4, 0) 
handle21w.C1 = handle21w.C1 + Vector3.new(0, 0.45, 0) 
handle22w.C1 = handle22w.C1 + Vector3.new(0, 0.45, 0) 
handle23w.C1 = handle23w.C1 + Vector3.new(0, 0.5, 0) 
handle24w.C1 = handle24w.C1 + Vector3.new(0, 0.5, 0) 
handle25w.C1 = handle25w.C1 + Vector3.new(0, 0.55, 0) 
handle26w.C1 = handle26w.C1 + Vector3.new(0, 0.55, 0) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(0+90*i), 0, math.rad(0)) 
wait() 
end 
Attkin = false 
	end 
    end)
end

function onDesel(mouse)
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(90+135*i), 0, math.rad(-25+0*i)) 
wait() 
end 
handlew.Part1 = Torso 
handlew.C1 = CFrame.new(0.75, 1, 0.5) * CFrame.Angles(0, 0, -7) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(225-225*i), 0, math.rad(-25+25*i)) 
wait() 
end 
RAW.Part1 = nil 
LAW.Part1 = nil 
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
