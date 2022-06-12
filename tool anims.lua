local players = game:GetService("Players") 
local workspac = game:GetService("Workspace") 
Me = players.LocalPlayer
char = Me.Character
name = Me.Name 
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
prop(shaft, Model2, false, 0, 0, 0.2, 3, 0.2, "White", false, "Custom") 
local shaftm = Instance.new("BlockMesh") 
mesh(shaftm, shaft, 1, 1, 0.25)
local shaftw = Instance.new("Weld") 
wel(shaftw, -0.65, 0.65, 0.5, shaft, shaft, Torso, 0, 0, 0.75) 
local handle = Instance.new("Part") 
prop(handle, Model2, false, 0, 0, 0.35, 0.2, 0.35, "Really black", false, "Custom") 
local handlem = Instance.new("BlockMesh") 
mesh(handlem, handle, 1, 1, 1)
local handlew = Instance.new("Weld") 
wel(handlew, 0, -1.5, 0, handle, handle, shaft, 0, 0, 0) 
local handle2 = Instance.new("Part") 
prop(handle2, Model2, false, 0, 0, 0.3, 1, 0.3, "Really black", false, "Custom") 
local handle2m = Instance.new("BlockMesh") 
mesh(handle2m, handle2, 1, 1, 1)
local handle2w = Instance.new("Weld") 
wel(handle2w, 0, -0.45, 0, handle2, handle2, handle, 0, 0, 0) 

function bleed(obj) 
for i = 1, math.random(5, 7) do 
dis = math.random(0.25, 0.65)
part = Instance.new("Part", workspac) 
part.CanCollide = false 
part.Anchored = false 
part.formFactor = "Custom" 
part.BrickColor = BrickColor.new("Really red") 
part.TopSurface = "Smooth" 
part.BottomSurface = "Smooth" 
part.Size = Vector3.new(dis, dis, 0.2) 
part.CFrame = obj.CFrame + Vector3.new(math.random(-1.5, 1.5), math.random(-0.5, 0.5), math.random(-1.5, 1.5)) 
part:BreakJoints() 
coroutine.resume(coroutine.create(function() 
wait(math.random(0.5, 0.75)) 
part:remove() 
end)) 
end 
end 

function eft(part, time) 
local pst = part:clone() 
pst.Parent = workspace 
pst.Anchored = true 
pst.Size = part.Size 
pst.CFrame = part.CFrame 
pst.CanCollide = false 
pst.Transparency = 0.5 
coroutine.resume(coroutine.create(function() 
wait(time) 
pst:remove() 
end))
end 

function hurt(mag, dmg, part) 
for _,v in pairs(workspac:GetChildren()) do 
if v.Name ~= name then 
if v:findFirstChild("Humanoid") ~= nil and v:findFirstChild("Torso") ~= nil then 
if (v.Torso.Position - part.Position).magnitude < mag then 
v.Humanoid:TakeDamage(dmg) 
bleed(part) 
end 
end 
end 
end 
end 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "Sword"
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse)
LAW.Part1 = Larm 
RAW.Part1 = Rarm
for i = 0, 1, 0.125 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-22.5*i), 0, math.rad(12.5*i)) 
wait() 
end 
for i = 0, 1, 0.125 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad((-22.5)+(-12.5)*i), 0, math.rad(12.5-35*i)) 
wait() 
end 
shaftw.Part1 = Rarm 
shaftw.C1 = CFrame.new(-1.75, 0, 0) * CFrame.Angles(0, 0, 1) 
for i = 0, 1, 0.125 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-35+125*i), 0, math.rad(-22.5+22.5*i)) 
shaftw.C1 = CFrame.new(-2, -1, 0) * CFrame.Angles(0, 0, 1.55) 
wait() 
end 
    mouse.Button1Down:connect(function()
if attakin == false then 
attakin = true 
for i = 0, 1, 0.15 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+0*i), 0, math.rad(140*i)) 
hurt(2, 7.5, shaft) 
eft(shaft, 0.15) 
wait() 
end 
for i = 0, 1, 0.15 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+0*i), 0, math.rad(140-140*i)) 
wait() 
end 
attakin = false 
end 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
if attakin == false then 
attakin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+45*i), math.rad(-90*i), math.rad(0*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(135-125*i), math.rad(-90+0*i), math.rad(0*i)) 
hurt(2, 7.5, shaft) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(10+80*i), math.rad(-90+90*i), math.rad(0*i)) 
wait() 
end 
--[[for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+0*i), 0, math.rad(140-140*i)) 
wait() 
end ]] 
attakin = false 
end 
	end 
        if key == "e" then 
if attakin == false then 
attakin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+90*i), math.rad(-90*i), math.rad(0*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(180-90*i), math.rad(-90+0*i), math.rad(0*i)) 
hurt(2, 7.5, shaft) 
wait() 
end 
for i = 0, 1, 0.1 do 
shaftw.C1 = CFrame.new(-2, math.rad(-1000*i), 0) * CFrame.Angles(0, 0, math.rad(1000*i)) 
hurt(3, 22.5, shaft) 
wait() 
end 
for i = 0, 1, 0.1 do 
shaftw.C1 = CFrame.new(-2, math.rad(-1000+1000*i), 0) * CFrame.Angles(0, 0, math.rad(1000-1000*i)) 
hurt(3, 22.5, shaft) 
wait() 
end 
shaftw.C1 = CFrame.new(-2, -1, 0) * CFrame.Angles(0, 0, 1.55) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0+90*i), math.rad(-90+90*i), math.rad(0*i)) 
wait() 
end 
attakin = false 
end 
	end 
        if key == "f" then 
if attakin == false then 
attakin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+0*i), math.rad(-90*i), math.rad(0*i)) 
wait() 
end 
for i = 0, 1, 0.15 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+0*i), math.rad(-90+450*i), math.rad(0*i)) 
hurt(2, 7.5, shaft) 
eft(shaft, 0.1) 
wait() 
end 
for i = 0, 1, 0.15 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+0*i), math.rad(360-450*i), math.rad(0*i)) 
hurt(2, 7.5, shaft) 
eft(shaft, 0.1) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(90+0*i), math.rad(-90+90*i), math.rad(0*i)) 
wait() 
end 
attakin = false 
end 
	end 
    end)
end

function onDesel(mouse)
shaftw.Part1 = Torso 
shaftw.C1 = CFrame.new(-0.65, 0.65, 0.5) * CFrame.Angles(0, 0, 0.75) 
RAW.Part1 = nil
LAW.Part1 = nil
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
