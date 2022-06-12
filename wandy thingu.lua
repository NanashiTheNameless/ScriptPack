--"http://www.roblox.com/asset/?id=9756362"  

local Me = game.Players.LocalPlayer --blame john
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
prop(handle, parts, false, 0, 0, 0.2, 3, 0.2, "White", false, "Custom")
handlem = Instance.new("CylinderMesh") 
mesh(handlem, handle, 1, 1, 1) 
handlew = Instance.new("Weld") 
wel(handlew, 0, 0, 0.58, handle, handle, Torso, 0, 0, -7) 

handle2 = Instance.new("Part") 
prop(handle2, parts, false, 0, 0, 0.2, 1, 0.2, "Really black", false, "Custom")
handle2m = Instance.new("SpecialMesh") 
mesh(handle2m, handle2, 0.5, 0.5, 0.5, "FileMesh", "http://www.roblox.com/asset/?id=9756362") 
handle2w = Instance.new("Weld") 
wel(handle2w, 0, 1.5, 0, handle2, handle2, handle, 0, 0, 0) 

function select(mouse) 
    mouse.Button1Down:connect(function() 
end 
    end)
    mouse.KeyDown:connect(function(key) 
        if key == "q" then 
	end 
    end)
end 

function deselect(mouse) 

end 

bin.Selected:connect(select) 
bin.Deselected:connect(deselect) 