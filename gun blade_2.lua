local Me = game.Players.LocalPlayer 
local char = Me.Character
local Torso = char.Torso
local Rarm = char["Right Arm"]
local Larm = char["Left Arm"]
local Rleg = char["Right Leg"] 
local charge = false 
local Attkin = false 
local crge = 0 

pcall(function() char[":P"]:remove() end)
pcall(function() char["Parts"]:remove() end) 

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

local Model = Instance.new("Model",char)
Model.Name = ":P"

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

headw = Instance.new("Weld") 
wel(headw, 0, 1.5, 0, char, char.Head, Torso, 0, 0, 0) 

--**>[[parts]]<**--

parts = Instance.new("Model") 
parts.Parent = char 
parts.Name = "Parts" 

handle = Instance.new("Part") 
prop(handle, parts, false, 0, 0, 0.5, 1, 0.5, "Really red", false, "Custom")
handlem = Instance.new("CylinderMesh") 
mesh(handlem, handle, 1, 1, 1) 
handlew = Instance.new("Weld") 
wel(handlew, 1.25, -1.5, -0.25, handle, handle, Torso, 7.8, 0, 0) 
handle2 = Instance.new("Part") 
prop(handle2, parts, false, 0, 0, 0.7, 1, 0.7, "Really black", false, "Custom")
handle2m = Instance.new("CylinderMesh") 
mesh(handle2m, handle2, 1, 1, 1) 
handle2w = Instance.new("Weld") 
wel(handle2w, 0, 0.05, 0, handle2, handle2, handle, 0, 0, 0) 
handle3 = Instance.new("Part") 
prop(handle3, parts, false, 0, 0, 0.3, 4, 0.7, "Really red", false, "Custom")
handle3m = Instance.new("BlockMesh") 
handle3m.Bevel = 0.1
mesh(handle3m, handle3, 1, 1, 1) 
handle3w = Instance.new("Weld") 
wel(handle3w, 0, -1.75, 0.25, handle3, handle3, handle, 0, 0, 0) 
handle4 = Instance.new("Part") 
prop(handle4, parts, false, 0, 0, 0.3, 0.5, 1.7, "Really red", false, "Custom")
handle4m = Instance.new("BlockMesh") 
handle4m.Bevel = 0.1
mesh(handle4m, handle4, 1, 1, 1) 
handle4w = Instance.new("Weld") 
wel(handle4w, 0, 0.25, -0.25, handle4, handle4, handle, 0, 0, 0) 

function dmg(part, damg) 
for _, v in pairs(game.Players:GetChildren()) do 
if (v.Character.Torso.Position - part.Position).magnitude < 1 then 
v.Character.Humanoid:TakeDamage(damg) 
end 
end 
end 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "GunBlade"
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
RAW.Part1 = Rarm 
LAW.Part1 = Larm 
handlew.Part1 = Rarm 
handlew.C1 = CFrame.new(0, -1.35, -0.25) * CFrame.Angles(7.8, 0, 0) 
    mouse.Button1Down:connect(function()
if Attkin == false then 
Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(155*i), math.rad(25*i), 0) 
dmg(handle4, 5) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(155-155*i), math.rad(25-25*i), 0) 
dmg(handle4, 5) 
wait() 
end 
Attkin = false 
end 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" and Attkin == false then 
Attkin = true 
charge = true 
for i = 0, 1, 0.1 do 
if charge == true then 
crge = crge + i - i/2 
RAW.C0 = CFrame.Angles(math.rad(55*i), 0, 0) 
wait() 
end 
end 
	end 
    end)
    mouse.KeyUp:connect(function(key)
        if key == "q" and charge == true then 
charge = false 
local pos = mouse.hit.p 
local mag = (pos - handle.Position).magnitude 
local part = Instance.new("Part") 
part.Parent = workspace 
part.BrickColor = BrickColor.new("Really red") 
part.formFactor = "Custom" 
part.Size = Vector3.new(0.25, 0.25, mag) 
part.Anchored = true 
part.CFrame = CFrame.new((handle.Position - Vector3.new(0, 0, 0) + pos)/2, pos) 
local ex = Instance.new("Explosion") 
ex.Parent = part 
ex.Position = pos 
ex.BlastRadius = crge 
ex.BlastPressure = crge 
for i = 0, 1, 0.25 do 
RAW.C0 = CFrame.Angles(math.rad(55-55*i), 0, 0) 
wait() 
end 
part:remove() 
crge = 0 
Attkin = false 
	end 
    end)
end

function onDesel(mouse)
RAW.Part1 = nil 
LAW.Part1 = nil 
handlew.Part1 = Torso 
handlew.C1 = CFrame.new(1.25, -1.5, -0.25) * CFrame.Angles(7.8, 0, 0) 
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
