local Me = game.Players.LocalPlayer 
local char = Me.Character
local Torso = char.Torso
local Rarm = char["Right Arm"]
local Larm = char["Left Arm"]
local Rleg = char["Right Leg"] 
local charge = false 
local Attkin = false 
local on = false 
local crge = 0 
local mainDamage = 5 

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
prop(handle, parts, false, 0, 0, 0.5, 7, 0.5, "Really red", false, "Custom")
handlem = Instance.new("CylinderMesh") 
mesh(handlem, handle, 0.25, 0.075, 0.25) 
handlew = Instance.new("Weld") 
wel(handlew, 0, 0, 0.5, handle, handle, Torso, 0, 0, -7) 
handle2 = Instance.new("Part") 
prop(handle2, parts, false, 0, 0, 1, 2, 1, "Really black", false, "Custom")
handle2m = Instance.new("BlockMesh") 
handle2m.Bevel = 0.05 
mesh(handle2m, handle2, 0.3, 1, 0.3) 
handle2w = Instance.new("Weld") 
wel(handle2w, 0, 0, 0, handle2, handle2, handle, 0, 0, 0) 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Blade"
    script.Parent = h
end

local bin = script.Parent

function dmg(part, damg) 
for _, v in pairs(game.Players:GetChildren()) do 
if (v.Character.Torso.Position - part.Position).magnitude < 1 then 
v.Character.Humanoid:TakeDamage(damg) 
end 
end 
end 

function onSelected(mouse)
RAW.Part1 = Rarm 
LAW.Part1 = Larm 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-85*i), 0, math.rad(-45*i)) 
wait() 
end 
handlew.Part1 = Rarm 
handlew.C1 = CFrame.new(0, -0.75, 0) * CFrame.Angles(-1.2, 0, 0) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-85+175*i), 0, math.rad(-45+55*i)) 
wait() 
end 
for i = 1, 10 do 
handlem.Scale = handlem.Scale + Vector3.new(0, 0.25, 0) 
wait() 
end 

    mouse.Button1Down:connect(function() 
if Attkin == false and on == false then 
on = true 
Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+0*i), 0, math.rad(10+0*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+0*i), math.rad(360*i), math.rad(10+0*i)) 
dmg(handle, 5) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+0*i), math.rad(-360*i), math.rad(10+0*i)) 
dmg(handle, 5) 
wait() 
end 
on = false 
Attkin = false 
end 
end) 
    mouse.KeyDown:connect(function(key)
        if key == "q" and Attkin == false then 
Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+90*i), 0, math.rad(10+0*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(180-90*i), math.rad(360*i), math.rad(10+0*i)) 
dmg(handle, mainDamage) 
mainDamage = mainDamage + 1 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+90*i), math.rad(360*i), math.rad(10+0*i)) 
dmg(handle, mainDamage) 
mainDamage = mainDamage + 1 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(180-90*i), 0, math.rad(10+0*i)) 
wait() 
end 
mainDamage = 5 
Attkin = false 
	end 
	    if key == "e" and Attkin == false then 
Attkin = true 
on = true 
for i = 0, 2500, 0.1 do 
if on == true then 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+0*i), math.rad(760*i), math.rad(10+0*i)) 
dmg(handle, mainDamage) 
mainDamage = mainDamage + 1 
wait() 
end 
end 
for i = 0, 2500, 0.1 do 
if on == true then 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+0*i), math.rad(-760*i), math.rad(10+0*i)) 
dmg(handle, mainDamage) 
mainDamage = mainDamage + 1 
wait() 
end 
end 
	end 
    end)
	    mouse.KeyUp:connect(function(key)
	if key == "e" and on == true then 
on = false 	
mainDamage = 5 
Attkin = false 
	end 
	end) 
end

function onDesel(mouse) 
for i = 1, 10 do 
handlem.Scale = handlem.Scale - Vector3.new(0, 0.25, 0) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-85*i), 0, math.rad(-45*i)) 
wait() 
end 
handlew.Part1 = Torso 
handlew.C1 = CFrame.new(0, 0, 0.5) * CFrame.Angles(0, 0, -7) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-85+85*i), 0, math.rad(-45+45*i)) 
wait() 
end 
RAW.Part1 = nil 
LAW.Part1 = nil 
end


bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
