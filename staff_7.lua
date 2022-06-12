--"http://www.roblox.com/asset/?id=9756362"  

local Me = game.Players.LocalPlayer 
local char = Me.Character
local Torso = char.Torso
local Rarm = char["Right Arm"]
local Larm = char["Left Arm"]
local Lleg = char["Left Leg"]
Attkin = false 
script.Parent = char 
local attack = false  

pcall(function() char[":P"]:remove() end)
pcall(function() char["Parts"]:remove() end) 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "LSword"
    script.Parent = h
end


local bin = script.Parent 

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
prop(handle, parts, false, 0, 0, 0.2, 0.2, 6, "White", false, "Custom")
handlem = Instance.new("BlockMesh") 
mesh(handlem, handle, 1, 1, 1) 
handlew = Instance.new("Weld") 
wel(handlew, 0, 0, 0.58, handle, handle, Torso, 0, 0, -7) 

function select(mouse) 
RAW.Part1 = Rarm 
LAW.Part1 = Larm 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(25*i), math.rad(10*i), math.rad(225*i)) 
wait() 
end 
handlew.Part1 = Rarm 
handlew.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 7, -7) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(25-25*i), math.rad(10-10*i), math.rad(225-225*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(25*i), math.rad(10*i), math.rad(125*i)) 
wait() 
end 
for i = 0, 1, 0.1 do 
handlew.C1 = CFrame.new(0, 0, math.rad(-450*i)) * CFrame.Angles(math.rad(450*i), 7, -7) 
wait() 
end 
for i = 0, 1, 0.1 do 
handlew.C1 = CFrame.new(0, 0, math.rad(-450+400*i)) * CFrame.Angles(math.rad(450-475*i), 7, -6.5) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(25*i), math.rad(10-10*i), math.rad(125-125*i)) 
wait() 
end 
    mouse.Button1Down:connect(function() 
if attack == false then 
attack = true 
local fire = Instance.new("Fire") 
fire.Parent = handle2
local targ = mouse.Target 
targ:BreakJoints() 
wait(1) 
fire:remove() 
attack = false 
end 
    end)
    mouse.KeyDown:connect(function(key) 
        if key == "q" and attack == false then 
attack = true 
local fire = Instance.new("Fire") 
fire.Parent = handle2
fire.Color = Color3.new(1, 1, 0) 
fire.SecondaryColor = Color3.new(1, 1, 0) 
local targ = mouse.Target 
if targ.Parent:findFirstChild("Humanoid") then 
targ.Parent.Humanoid:TakeDamage(-100) 
end 
wait(1) 
fire:remove() 
attack = false 
	end 
	    if key == "e" and attack == false then 
attack = true 
local fire = Instance.new("Fire") 
fire.Parent = handle2
fire.Color = Color3.new(1, 1, 0) 
fire.SecondaryColor = Color3.new(1, 1, 0) 
local pos = mouse.hit.p 
local mag = (pos - Torso.Position).magnitude 
local part = Instance.new("Part") 
part.Parent = workspace 
part.Size = Vector3.new(1, 1, mag) 
part.Anchored = true 
part.CFrame = CFrame.new((Torso.Position - Vector3.new(0, 2.25, 0) + pos)/2, pos) 
wait(1) 
fire:remove() 
attack = false 
	end 
		if key == "r" and attack == false then 
attack = true 
local fire = Instance.new("Fire") 
fire.Parent = handle2
fire.Color = Color3.new(1, 1, 1) 
fire.SecondaryColor = Color3.new(1, 1, 1) 
for _, p in pairs(game.Players:GetChildren()) do 
if (p.Character.Torso.Position - mouse.hit.p).magnitude < 7 then 
p.Character.Humanoid.PlatformStand = true 
end 
end 
wait(1) 
fire:remove() 
attack = false 
	end 
		if key == "t" and attack == false then 
attack = true 
local pos = mouse.hit.p 
local fire = Instance.new("Fire") 
fire.Parent = handle2
fire.Color = Color3.new(1, 1, 1) 
fire.SecondaryColor = Color3.new(1, 1, 1) 
local part = Instance.new("Part") 
part.Parent = workspace 
part.CanCollide = false 
part.BrickColor = BrickColor.new("Really black") 
part.Anchored = true 
part.Size = Vector3.new(5, 15, 5) 
part.CFrame = Torso.CFrame - Vector3.new(0, 9.5, 0) 
local mes = Instance.new("CylinderMesh", part) 
local part2 = Instance.new("Part") 
part2.Parent = workspace 
part2.CanCollide = false 
part2.Anchored = true 
part2.Size = Vector3.new(5, 15, 5) 
part2.BrickColor = BrickColor.new("Really black") 
part2.CFrame = CFrame.new(pos) - Vector3.new(0, 6.5, 0) 
local mes2 = Instance.new("CylinderMesh", part2) 
Torso.Anchored = true 
for i = 0, 2, 0.15 do 
part.CFrame = part.CFrame + Vector3.new(0, 0.75*i, 0) 
part2.CFrame = part2.CFrame + Vector3.new(0, 0.75*i, 0) 
wait() 
end 
Torso.CFrame = CFrame.new(pos) + Vector3.new(0, 2.5, 0) 
Torso.Anchored = false 
for i = 0, 2, 0.15 do 
part.CFrame = part.CFrame + Vector3.new(0, -0.75*i, 0) 
part2.CFrame = part2.CFrame + Vector3.new(0, -0.75*i, 0) 
wait() 
end 
wait(0.25) 
fire:remove() 
part:remove() 
part2:remove() 
attack = false 
	end 
			if key == "k" and attack == false then 
attack = true 
local fire = Instance.new("Fire") 
fire.Parent = handle2
fire.Color = Color3.new(1, 1, 1) 
fire.SecondaryColor = Color3.new(1, 1, 1) 
for _, p in pairs(game.Players:GetChildren()) do 
if p.Name == mouse.Target.Name then 
p:remove() 
end 
end 
wait(1) 
fire:remove() 
attack = false 
	end 
    end)
end 

function deselect(mouse) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(25*i), math.rad(10*i), math.rad(225*i)) 
wait() 
end 
handlew.Part1 = Torso 
handlew.C1 = CFrame.new(0, 0, 0.58) * CFrame.Angles(0, 0, -7) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(25-25*i), math.rad(10-10*i), math.rad(225-225*i)) 
wait() 
end 
RAW.Part1 = nil 
LAW.Part1 = nil 
end 

bin.Selected:connect(select) 
bin.Deselected:connect(deselect) 