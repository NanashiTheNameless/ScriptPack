Me = game.Players.LocalPlayer
char = Me.Character
Torso = char.Torso
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
local attakin = false 

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
prop(shaft, Model2, false, 0, 0, 0.2, 6, 0.2, "Reddish brown", false, "Custom") 
shaft.Material = "Wood" 
local shaftw = Instance.new("Weld") 
wel(shaftw, 0, -1, 0.5, shaft, shaft, Torso, 0, 0, 1.55) 

function slash(part, time) 
asdf = part:clone() 
asdf.Anchored = true 
asdf.BrickColor = BrickColor.new("White") 
asdf.Parent = workspace 
asdf.Cancollide = fasle 
asdf.Material = "Plastic" 
asdf.Transparency = 0.75 
asdf.CFrame = part.CFrame 
asdf2 = part:clone() 
asdf2.Anchored = true 
asdf2.BrickColor = BrickColor.new("White") 
asdf2.Parent = workspace 
asdf2.Material = "Plastic" 
asdf2.Transparency = 0.75 
asdf2.CFrame = part.CFrame 
asdf3 = part:clone() 
asdf3.Anchored = true 
asdf3.BrickColor = BrickColor.new("White") 
asdf3.Parent = workspace 
asdf3.Material = "Plastic" 
asdf3.Transparency = 0.75 
asdf3.CFrame = part.CFrame 
coroutine.resume(coroutine.create(function() 
for i = 1, time do 
asdf.CFrame = part.CFrame 
wait() 
asdf2.CFrame = part.CFrame 
wait() 
asdf3.CFrame = part.CFrame 
wait() 
end 
asdf:remove() 
asdf2:remove() 
asdf3:remove() 
end)) 
end 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Stick"
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
LAW.Part1 = Larm 
RAW.Part1 = Rarm
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, -i/1.5, 0) * CFrame.Angles(math.rad(-25*i), 0, math.rad(-50*i)) 
wait() 
end 
shaftw.Part1 = Rarm 
shaftw.C1 = CFrame.new(0, -1, 0) * CFrame.Angles(0, 0, -1.55/2) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-25+75*i), 0, math.rad(-50+75*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(50+0*i), math.rad(-25*i), math.rad(25-75*i)) 
wait() 
end 
    mouse.Button1Down:connect(function()
if attakin == false then 
attakin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(50-0*i), math.rad(-25+0*i), math.rad(-50-50*i)) 
wait() 
end 
slash(shaft, 7) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(50-0*i), math.rad(-25+0*i), math.rad(-100+150*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(50-0*i), math.rad(-25+0*i), math.rad(50-100*i)) 
wait() 
end 
attakin = false 
end 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
if attakin == false then 
attakin = true 
slash(shaft, 10) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(50-0*i), math.rad(-25+360*i), math.rad(-50+0*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(50-0*i), math.rad(335-360*i), math.rad(-50+0*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(50-0*i), math.rad(-25+0*i), math.rad(-50+0*i)) 
wait() 
end 
attakin = false 
end 
	end 
    end)
end

function onDesel(mouse)
shaftw.Part1 = Torso 
shaftw.C1 = CFrame.new(0, -1, 0.5) * CFrame.Angles(0, 0, 1.55) 
RAW.Part1 = nil
LAW.Part1 = nil
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
