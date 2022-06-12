

local Me = Game.Players.LocalPlayer
local char = Me.Character
local Torso = char.Torso
local Rarm = char["Right Arm"]
local Larm = char["Left Arm"]
local Lleg = char["Left Leg"]
local left = 100
Attkin = false 
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
local colors = {"Bright red", "Bright blue", "Bright green", "Bright yellow", "Reddish brown"} 
local parts = Instance.new("Model") 
parts.Parent = char 
parts.Name = "Parts" 
--**<<*>>start<<*>>**--
local handle = Instance.new("Part") 
prop(handle, parts, false, 0, 0, 0.2, 5, 0.2, "White", false, "Custom")
local handlem = Instance.new("BlockMesh") 
meshb(handlem, handle, 1, 1, 1, 0.1) 
local handlew = Instance.new("Weld") 
wel(handlew, 0, 0, 0.58, handle, handle, char.Torso, 0, 0, -7) 
local handleb = Instance.new("Part") 
prop(handleb, parts, false, 0, 0, 2.5, 0.3, 2.5, colors[math.random(1, 5)], false, "Custom")
local handlebm = Instance.new("CylinderMesh") 
meshc(handlebm, handleb, 1, 1, 1) 
local handlebw = Instance.new("Weld") 
wel(handlebw, 0, -2.5, 0, handleb, handleb, handle, 7.85, 0, 0) 
local handlec = Instance.new("Part") 
prop(handlec, parts, false, 0.5, 0, 2.5, 0.3, 2.5, "White", false, "Custom")
local handlecm = Instance.new("CylinderMesh") 
meshc(handlecm, handlec, 1.25, 1.25, 1.25) 
local handlecw = Instance.new("Weld") 
wel(handlecw, 0, -2.5, 0, handlec, handlec, handle, 7.85, 0, 0) 
if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "LOLIPOP"
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
handlew.C1 = CFrame.new(0, -0.75, 0) * CFrame.Angles(-0.5, 0, -8) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(-35*i), math.rad(-55*i)) 
wait()
end
for i = 0, 1, 0.1 do 
LAW.C0 = CFrame.Angles(math.rad(105*i), math.rad(35*i), math.rad(0*i)) 
wait()
end
handlecw.Part1 = Larm 
handlecw.C1 = CFrame.new(1, -2, 0) * CFrame.Angles(7.85, 0, 0) 
for i = 0, 1, 0.1 do 
LAW.C0 = CFrame.Angles(math.rad(105-105*i), math.rad(35*i), math.rad(0*i)) 
wait()
end
    mouse.Button1Down:connect(function()
        if Attkin == false and left > 0 then 
        Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(55*i), math.rad(-55*i), math.rad(-55+95*i)) 
wait()
end
left = left - 1 
char.Humanoid.WalkSpeed = char.Humanoid.WalkSpeed + 0.5 
handlebm.Scale = handlebm.Scale - Vector3.new(0.01, 0.01, 0.01) 
Attkin = false 
end 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" and Attkin == false then 
                        if Attkin == false then 
        Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(125*i), math.rad(-55*i), math.rad(55*i)) 
handle.Touched:connect(dmg) 
wait()
end
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(125-125*i), math.rad(-55*i), math.rad(55-110*i)) 
handle.Touched:connect(dmg) 
wait()
end
handle.Touched:connect(ndmg) 
Attkin = false 
end 
        end 
    end)
end
function onDesel(mouse)
handle.Touched:connect(ndmg) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(0*i), math.rad(-35*i), math.rad(-55*i)) 
wait()
end
for i = 0, 1, 0.1 do 
LAW.C0 = CFrame.Angles(math.rad(105*i), math.rad(35*i), math.rad(0*i)) 
wait()
end
handlecw.Part1 = handle 
handlecw.C1 = CFrame.new(0, -2.5, 0) * CFrame.Angles(7.85, 0, 0) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(-15*i), math.rad(-25*i)) 
wait()
end
handlew.Part1 = Torso 
LAW.C1 = CFrame.new(0,0.5,0) * CFrame.Angles(0,0,0) 
handlew.C1 = CFrame.new(0, 0, 0.58) * CFrame.Angles(0, 0, -7) 
RAW.Part1 = nil
LAW.Part1 = nil
end 
bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
while true do 
if left == 0 and bin.Deselected == true then 
for i = 0,100,1 do 
if bin.Deselected == true then 
left = i 
handlebm.Scale = handlebm.Scale + Vector3.new(0.01, 0.01, 0.01) 
end 
end 
end 
wait()
end 
 
