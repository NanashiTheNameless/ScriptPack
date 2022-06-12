local Me = Game.Players.acb227 --blame john
local char = Me.Character
local Torso = char.Torso
local Rarm = char["Right Arm"]
local Larm = char["Left Arm"]
local Lleg = char["Left Leg"]
Attkin = false 

ima make a holy gatei
pcall(function() char[":P"]:remove() end)
pcall(function() char["Parts"]:remove() end) 
for i,v in pairs(char:children()) do 
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
mesh.MeshType = type
end
function meshb(mesh, parent, x, y, z, b)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.Bevel = b 
end
function meshc(mesh, parent, x, y, z)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
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
function dmg(hit) 
if hit.Parent:findFirstChild("Humanoid") then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(25, 45) 
else 
if hit.Parent.Name == Me.Name then 
end 
end 
end 
function ndmg(hit) 
if hit.Parent:findFirstChild("Humanoid") then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(0, 0) 
else 
if hit.Parent.Name == Me.Name then 
end 
end 
end 

local parts = Instance.new("Model") 
parts.Parent = char 
parts.Name = "Parts" 
--**<<*>>start<<*>>**--
local handle = Instance.new("Part") 
prop(handle, parts, false, 0, 0, 0.75, 5, 0.5, "Really black", false, "Custom")
local handlem = Instance.new("BlockMesh") 
meshb(handlem, handle, 1, 1, 1, 0.1) 
local handlew = Instance.new("Weld") 
wel(handlew, 0, 0, 0.58, handle, handle, char.Torso, 0, 0, -7) 
local handleb = Instance.new("Part") 
prop(handleb, parts, false, 0, 0, 0.5, 5, 0.5, "Really black", false, "Custom")
local handlebm = Instance.new("BlockMesh") 
meshb(handlebm, handleb, 1, 1, 1, 0.1) 
local handlebw = Instance.new("Weld") 
wel(handlebw, 1, 0, 0, handleb, handleb, handle, 0, 0, 2.8) 
local handlec = Instance.new("Part") 
prop(handlec, parts, false, 0, 0, 0.5, 5, 0.5, "Really black", false, "Custom")
local handlecm = Instance.new("BlockMesh") 
meshb(handlecm, handlec, 1, 1, 1, 0.1) 
local handlecw = Instance.new("Weld") 
wel(handlecw, -1, 0, 0, handlec, handlec, handle, 0, 0, -2.8) 
local handled = Instance.new("Part") 
prop(handled, parts, false, 0, 0, 2.5, 0.55, 2.5, "Really red", false, "Custom")
local handledm = Instance.new("CylinderMesh") 
meshb(handledm, handled, 1, 1, 1, 0.1) 
local handledw = Instance.new("Weld") 
wel(handledw, 0, -1, 0, handled, handled, handle, 7.85, 0, 0) 
local handlee = Instance.new("Part") 
prop(handlee, parts, false, 0, 0, 0.5, 5, 0.5, "Really black", false, "Custom")
local handleem = Instance.new("BlockMesh") 
meshb(handleem, handlee, 1, 1, 1, 0.1) 
local handleew = Instance.new("Weld") 
wel(handleew, 0, 2, 0, handlee, handlee, handle, 0, 0, 7.85) 
local handlef = Instance.new("Part") 
prop(handlef, parts, false, 0, 0, 1, 0.2, 0.5, "Really black", false, "Custom")
local handlefm = Instance.new("BlockMesh") 
meshb(handlefm, handlef, 1, 1, 1, 0.1) 
local handlefw = Instance.new("Weld") 
wel(handlefw, 0, -2, 0.4, handlef, handlef, handle, 0, 0, 0) 
--**//strings\\**--
local strin = Instance.new("Part") 
prop(strin, parts, false, 0, 0, 0.5, 4, 0.5, "Really red", false, "Custom")
local strinm = Instance.new("BlockMesh") 
meshb(strinm, strin, 0.2, 1, 0.2, 0.1) 
local strinw = Instance.new("Weld") 
wel(strinw, 0, 0, 0.25, strin, strin, handle, 0, 0, 0) 
local strin2 = Instance.new("Part") 
prop(strin2, parts, false, 0, 0, 0.5, 4, 0.5, "Really red", false, "Custom")
local strin2m = Instance.new("BlockMesh") 
meshb(strin2m, strin2, 0.2, 1, 0.2, 0.1) 
local strin2w = Instance.new("Weld") 
wel(strin2w, 0.5, 0, 0.25, strin2, strin2, handle, 0, 0, 3) 
local strin3 = Instance.new("Part") 
prop(strin3, parts, false, 0, 0, 0.5, 4, 0.5, "Really red", false, "Custom")
local strin3m = Instance.new("BlockMesh") 
meshb(strin3m, strin3, 0.2, 1, 0.2, 0.1) 
local strin3w = Instance.new("Weld") 
wel(strin3w, -0.5, 0, 0.25, strin3, strin3, handle, 0, 0, -3) 
local strin4 = Instance.new("Part") 
prop(strin4, parts, false, 0, 0, 0.5, 1, 0.5, "Really red", false, "Custom")
local strin4m = Instance.new("BlockMesh") 
meshb(strin4m, strin4, 0.2, 4, 0.2, 0.1) 
local strin4w = Instance.new("Weld") 
wel(strin4w, -0.25, 0, 0.25, strin4, strin4, handle, 0, 0, -3.1) 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Guitar"
    script.Parent = h
end


local bin = script.Parent 

--**>[[anims]]<**--
function onSelected(mouse)
RAW.Part1 = Rarm 
LAW.Part1 = Larm 
LAW.C1 = CFrame.new(0,0.5,0) * CFrame.Angles(0,0,0) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(-15*i), math.rad(-25*i)) 
wait()
end
handlew.Part1 = Rarm
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210-200*i), math.rad(-15*i), math.rad(-25*i)) 
wait()
end
    mouse.Button1Down:connect(function()
	if Attkin == false then 
	Attkin = true 
Attkin = false 
end 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" and Attkin == false then 
			if Attkin == false then 
	Attkin = true 
Attkin = false 
end 
	end 
    end)
end

function onDesel(mouse)
handlew.Part1 = Torso 
LAW.C1 = CFrame.new(0,0.5,0) * CFrame.Angles(0,0,0) 
handlew.C1 = CFrame.new(0, 0, 0.58) * CFrame.Angles(0, 0, -7) 
RAW.Part1 = nil
LAW.Part1 = nil
end 

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
local Me = Game.Players.acb227 --blame john
local char = Me.Character
local Torso = char.Torso
local Rarm = char["Right Arm"]
local Larm = char["Left Arm"]
local Lleg = char["Left Leg"]
Attkin = false 


pcall(function() char[":P"]:remove() end)
pcall(function() char["Parts"]:remove() end) 
for i,v in pairs(char:children()) do 
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
mesh.MeshType = type
end
function meshb(mesh, parent, x, y, z, b)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.Bevel = b 
end
function meshc(mesh, parent, x, y, z)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
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
function dmg(hit) 
if hit.Parent:findFirstChild("Humanoid") then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(25, 45) 
else 
if hit.Parent.Name == Me.Name then 
end 
end 
end 
function ndmg(hit) 
if hit.Parent:findFirstChild("Humanoid") then 
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(0, 0) 
else 
if hit.Parent.Name == Me.Name then 
end 
end 
end 

local parts = Instance.new("Model") 
parts.Parent = char 
parts.Name = "Parts" 
--**<<*>>start<<*>>**--
local handle = Instance.new("Part") 
prop(handle, parts, false, 0, 0, 0.75, 5, 0.5, "Really black", false, "Custom")
local handlem = Instance.new("BlockMesh") 
meshb(handlem, handle, 1, 1, 1, 0.1) 
local handlew = Instance.new("Weld") 
wel(handlew, 0, 0, 0.58, handle, handle, char.Torso, 0, 0, -7) 
local handleb = Instance.new("Part") 
prop(handleb, parts, false, 0, 0, 0.5, 5, 0.5, "Really black", false, "Custom")
local handlebm = Instance.new("BlockMesh") 
meshb(handlebm, handleb, 1, 1, 1, 0.1) 
local handlebw = Instance.new("Weld") 
wel(handlebw, 1, 0, 0, handleb, handleb, handle, 0, 0, 2.8) 
local handlec = Instance.new("Part") 
prop(handlec, parts, false, 0, 0, 0.5, 5, 0.5, "Really black", false, "Custom")
local handlecm = Instance.new("BlockMesh") 
meshb(handlecm, handlec, 1, 1, 1, 0.1) 
local handlecw = Instance.new("Weld") 
wel(handlecw, -1, 0, 0, handlec, handlec, handle, 0, 0, -2.8) 
local handled = Instance.new("Part") 
prop(handled, parts, false, 0, 0, 2.5, 0.55, 2.5, "Really red", false, "Custom")
local handledm = Instance.new("CylinderMesh") 
meshb(handledm, handled, 1, 1, 1, 0.1) 
local handledw = Instance.new("Weld") 
wel(handledw, 0, -1, 0, handled, handled, handle, 7.85, 0, 0) 
local handlee = Instance.new("Part") 
prop(handlee, parts, false, 0, 0, 0.5, 5, 0.5, "Really black", false, "Custom")
local handleem = Instance.new("BlockMesh") 
meshb(handleem, handlee, 1, 1, 1, 0.1) 
local handleew = Instance.new("Weld") 
wel(handleew, 0, 2, 0, handlee, handlee, handle, 0, 0, 7.85) 
local handlef = Instance.new("Part") 
prop(handlef, parts, false, 0, 0, 1, 0.2, 0.5, "Really black", false, "Custom")
local handlefm = Instance.new("BlockMesh") 
meshb(handlefm, handlef, 1, 1, 1, 0.1) 
local handlefw = Instance.new("Weld") 
wel(handlefw, 0, -2, 0.4, handlef, handlef, handle, 0, 0, 0) 
--**//strings\\**--
local strin = Instance.new("Part") 
prop(strin, parts, false, 0, 0, 0.5, 4, 0.5, "Really red", false, "Custom")
local strinm = Instance.new("BlockMesh") 
meshb(strinm, strin, 0.2, 1, 0.2, 0.1) 
local strinw = Instance.new("Weld") 
wel(strinw, 0, 0, 0.25, strin, strin, handle, 0, 0, 0) 
local strin2 = Instance.new("Part") 
prop(strin2, parts, false, 0, 0, 0.5, 4, 0.5, "Really red", false, "Custom")
local strin2m = Instance.new("BlockMesh") 
meshb(strin2m, strin2, 0.2, 1, 0.2, 0.1) 
local strin2w = Instance.new("Weld") 
wel(strin2w, 0.5, 0, 0.25, strin2, strin2, handle, 0, 0, 3) 
local strin3 = Instance.new("Part") 
prop(strin3, parts, false, 0, 0, 0.5, 4, 0.5, "Really red", false, "Custom")
local strin3m = Instance.new("BlockMesh") 
meshb(strin3m, strin3, 0.2, 1, 0.2, 0.1) 
local strin3w = Instance.new("Weld") 
wel(strin3w, -0.5, 0, 0.25, strin3, strin3, handle, 0, 0, -3) 
local strin4 = Instance.new("Part") 
prop(strin4, parts, false, 0, 0, 0.5, 4, 0.5, "Really red", false, "Custom")
local strin4m = Instance.new("BlockMesh") 
meshb(strin4m, strin4, 0.2, 1, 0.2, 0.1) 
local strin4w = Instance.new("Weld") 
wel(strin4w, 0.25, 0, 0.25, strin4, strin4, handle, 0, 0, 3.1) 
local strin5 = Instance.new("Part") 
prop(strin5, parts, false, 0, 0, 0.5, 4, 0.5, "Really red", false, "Custom")
local strin5m = Instance.new("BlockMesh") 
meshb(strin5m, strin5, 0.2, 1, 0.2, 0.1) 
local strin5w = Instance.new("Weld") 
wel(strin5w, -0.25, 0, 0.25, strin5, strin5, handle, 0, 0, -3.1) 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Guitar"
    script.Parent = h
end


local bin = script.Parent 

--**>[[anims]]<**--
function onSelected(mouse)
RAW.Part1 = Rarm 
LAW.Part1 = Larm 
LAW.C1 = CFrame.new(0,0.5,0) * CFrame.Angles(0,0,0) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(-15*i), math.rad(-25*i)) 
wait()
end
    mouse.Button1Down:connect(function()
	if Attkin == false then 
	Attkin = true 
Attkin = false 
end 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" and Attkin == false then 
			if Attkin == false then 
	Attkin = true 
Attkin = false 
end 
	end 
    end)
end

function onDesel(mouse)
handlew.Part1 = Torso 
LAW.C1 = CFrame.new(0,0.5,0) * CFrame.Angles(0,0,0) 
handlew.C1 = CFrame.new(0, 0, 0.58) * CFrame.Angles(0, 0, -7) 
RAW.Part1 = nil
LAW.Part1 = nil
end 

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
