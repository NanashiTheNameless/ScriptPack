local Me = game.Players.LocalPlayer
local char = Me.Character
local Torso = char.Torso
local Rarm = char["Right Arm"]
local Larm = char["Left Arm"]

function prop(part,parent,x,y,z,color,can,anc,form) 
part.Size = Vector3.new(x,y,z) 
part.Parent = parent 
part.BrickColor = BrickColor.new(color) 
part.CanCollide = can 
part.Anchored = anc 
part.formFactor = form 
end 

pcall(function() char[":P"]:remove() end)
pcall(function() char["bblade"]:remove() end)

local Model = Instance.new("Model",char)
Model.Name = ":P"
local Model2 = Instance.new("Model",char)
Model2.Name = "bblade"

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

local ha = Instance.new("Part") 
prop(ha,Model2,0.2,1.5,0.2,"Black",false,false,"Custom") 
local ham = Instance.new("CylinderMesh") 
ham.Parent = ha 
ham.Scale = Vector3.new(0.25, 1.5, 0.25) 
local haw = Instance.new("Weld") 
haw.Parent = ha 
haw.Part0 = Torso 
haw.Part1 = ha 
haw.C1 = CFrame.new(-0.25, -1.75, -0.6) * CFrame.Angles(0, 0, 7) 
--
local has = Instance.new("Part") 
prop(has,Model2,0.2,0.2,0.2,"Bright blue",false,false,"Custom") 
local hasm = Instance.new("CylinderMesh") 
hasm.Parent = has 
hasm.Scale = Vector3.new(0.256, 0.45, 0.256) 
local hasw = Instance.new("Weld") 
hasw.Parent = has 
hasw.Part0 = ha 
hasw.Part1 = has 
hasw.C1 = CFrame.new(0, -0.75, 0) * CFrame.Angles(0, 0, 0) 
--
local hasd = Instance.new("Part") 
prop(hasd,Model2,0.2,0.2,0.2,"New Yeller",false,false,"Custom") 
local hasdm = Instance.new("CylinderMesh") 
hasdm.Parent = hasd 
hasdm.Scale = Vector3.new(0.257, 0.1, 0.257) 
local hasdw = Instance.new("Weld") 
hasdw.Parent = hasd 
hasdw.Part0 = has 
hasdw.Part1 = hasd 
hasdw.C1 = CFrame.new(0, -0.25, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdf = Instance.new("Part") 
prop(hasdf,Model2,0.2,0.2,0.2,"New Yeller",false,false,"Custom") 
local hasdfm = Instance.new("CylinderMesh") 
hasdfm.Parent = hasdf 
hasdfm.Scale = Vector3.new(0.257, 0.05, 0.257) 
local hasdfw = Instance.new("Weld") 
hasdfw.Parent = hasdf 
hasdfw.Part0 = has 
hasdfw.Part1 = hasdf 
hasdfw.C1 = CFrame.new(0, 0.25, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdfg = Instance.new("Part") 
prop(hasdfg,Model2,0.2,0.2,0.2,"New Yeller",false,false,"Custom") 
local hasdfgm = Instance.new("CylinderMesh") 
hasdfgm.Parent = hasdfg 
hasdfgm.Scale = Vector3.new(0.257, 0.05, 0.257) 
local hasdfgw = Instance.new("Weld") 
hasdfgw.Parent = hasdfg 
hasdfgw.Part0 = ha 
hasdfgw.Part1 = hasdfg 
hasdfgw.C1 = CFrame.new(0, 0.65, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdfg = Instance.new("Part") 
prop(hasdfg,Model2,0.2,0.2,0.2,"New Yeller",false,false,"Custom") 
local hasdfgm = Instance.new("CylinderMesh") 
hasdfgm.Parent = hasdfg 
hasdfgm.Scale = Vector3.new(0.257, 0.05, 0.257) 
local hasdfgw = Instance.new("Weld") 
hasdfgw.Parent = hasdfg 
hasdfgw.Part0 = ha 
hasdfgw.Part1 = hasdfg 
hasdfgw.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdfg = Instance.new("Part") 
prop(hasdfg,Model2,1.5,0.2,1,"New Yeller",false,false,"Custom") 
local hasdfgm = Instance.new("BlockMesh") 
hasdfgm.Parent = hasdfg 
hasdfgm.Scale = Vector3.new(0.55, 0.1, 0.55) 
local hasdfgw = Instance.new("Weld") 
hasdfgw.Parent = hasdfg 
hasdfgw.Part0 = ha 
hasdfgw.Part1 = hasdfg 
hasdfgw.C1 = CFrame.new(0, 0.95, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdfgh = Instance.new("Part") 
prop(hasdfgh,Model2,1.5,0.2,1,"New Yeller",false,false,"Custom") 
local hasdfghm = Instance.new("BlockMesh") 
hasdfghm.Parent = hasdfgh 
hasdfghm.Scale = Vector3.new(0.5, 0.1, 0.5) 
local hasdfghw = Instance.new("Weld") 
hasdfghw.Parent = hasdfgh 
hasdfghw.Part0 = ha 
hasdfghw.Part1 = hasdfgh 
hasdfghw.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdfghj = Instance.new("Part") 
prop(hasdfghj,Model2,1.5,0.2,1,"Bright blue",false,false,"Custom") 
local hasdfghjm = Instance.new("BlockMesh") 
hasdfghjm.Parent = hasdfghj 
hasdfghjm.Scale = Vector3.new(0.49, 0.1, 0.49) 
local hasdfghjw = Instance.new("Weld") 
hasdfghjw.Parent = hasdfghj 
hasdfghjw.Part0 = ha 
hasdfghjw.Part1 = hasdfghj 
hasdfghjw.C1 = CFrame.new(0, 1.1, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdfghjk = Instance.new("Part") 
prop(hasdfghjk,Model2,1.5,0.2,1,"New Yeller",false,false,"Custom") 
local hasdfghjkm = Instance.new("BlockMesh") 
hasdfghjkm.Parent = hasdfghjk 
hasdfghjkm.Scale = Vector3.new(0.5, 0.025, 0.5) 
local hasdfghjkw = Instance.new("Weld") 
hasdfghjkw.Parent = hasdfghjk 
hasdfghjkw.Part0 = ha 
hasdfghjkw.Part1 = hasdfghjk 
hasdfghjkw.C1 = CFrame.new(0, 1.1, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdfghjkl = Instance.new("Part") 
prop(hasdfghjkl,Model2,1.5,0.2,1,"New Yeller",false,false,"Custom") 
local hasdfghjklm = Instance.new("BlockMesh") 
hasdfghjklm.Parent = hasdfghjkl 
hasdfghjklm.Scale = Vector3.new(0.5, 0.1, 0.5) 
local hasdfghjklw = Instance.new("Weld") 
hasdfghjklw.Parent = hasdfghjkl 
hasdfghjklw.Part0 = ha 
hasdfghjklw.Part1 = hasdfghjkl 
hasdfghjklw.C1 = CFrame.new(0, 1.2, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdfghjkl = Instance.new("Part") 
prop(hasdfghjkl,Model2,1.5,0.2,1,"New Yeller",false,false,"Custom") 
local hasdfghjklm = Instance.new("BlockMesh") 
hasdfghjklm.Parent = hasdfghjkl 
hasdfghjklm.Scale = Vector3.new(0.55, 0.1, 0.55) 
local hasdfghjklw = Instance.new("Weld") 
hasdfghjklw.Parent = hasdfghjkl 
hasdfghjklw.Part0 = ha 
hasdfghjklw.Part1 = hasdfghjkl 
hasdfghjklw.C1 = CFrame.new(0, 1.25, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdfghjkl = Instance.new("Part") 
prop(hasdfghjkl,Model2,0.4,0.2,0.4,"New Yeller",false,false,"Custom") 
local hasdfghjklm = Instance.new("CylinderMesh") 
hasdfghjklm.Parent = hasdfghjkl 
hasdfghjklm.Scale = Vector3.new(0.25, 0.1, 0.25) 
local hasdfghjklw = Instance.new("Weld") 
hasdfghjklw.Parent = hasdfghjkl 
hasdfghjklw.Part0 = ha 
hasdfghjklw.Part1 = hasdfghjkl 
hasdfghjklw.C1 = CFrame.new(0, 1.35, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdfghjkl = Instance.new("Part") 
prop(hasdfghjkl,Model2,0.4,0.2,0.4,"Bright red",false,false,"Custom") 
local hasdfghjklm = Instance.new("CylinderMesh") 
hasdfghjklm.Parent = hasdfghjkl 
hasdfghjklm.Scale = Vector3.new(0.24, 0.08, 0.24) 
local hasdfghjklw = Instance.new("Weld") 
hasdfghjklw.Parent = hasdfghjkl 
hasdfghjklw.Part0 = ha 
hasdfghjklw.Part1 = hasdfghjkl 
hasdfghjklw.C1 = CFrame.new(0, 1.45, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdfghjkl = Instance.new("Part") 
prop(hasdfghjkl,Model2,0.4,0.2,0.4,"New Yeller",false,false,"Custom") 
local hasdfghjklm = Instance.new("CylinderMesh") 
hasdfghjklm.Parent = hasdfghjkl 
hasdfghjklm.Scale = Vector3.new(0.25, 0.1, 0.25) 
local hasdfghjklw = Instance.new("Weld") 
hasdfghjklw.Parent = hasdfghjkl 
hasdfghjklw.Part0 = ha 
hasdfghjklw.Part1 = hasdfghjkl 
hasdfghjklw.C1 = CFrame.new(0, 1.55, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdfghjkl = Instance.new("Part") 
prop(hasdfghjkl,Model2,0.4,0.2,0.4,"Bright red",false,false,"Custom") 
local hasdfghjklm = Instance.new("CylinderMesh") 
hasdfghjklm.Parent = hasdfghjkl 
hasdfghjklm.Scale = Vector3.new(0.24, 0.08, 0.24) 
local hasdfghjklw = Instance.new("Weld") 
hasdfghjklw.Parent = hasdfghjkl 
hasdfghjklw.Part0 = ha 
hasdfghjklw.Part1 = hasdfghjkl 
hasdfghjklw.C1 = CFrame.new(0, 1.65, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdfghjkl = Instance.new("Part") 
prop(hasdfghjkl,Model2,0.4,0.2,0.4,"New Yeller",false,false,"Custom") 
local hasdfghjklm = Instance.new("CylinderMesh") 
hasdfghjklm.Parent = hasdfghjkl 
hasdfghjklm.Scale = Vector3.new(0.25, 0.1, 0.25) 
local hasdfghjklw = Instance.new("Weld") 
hasdfghjklw.Parent = hasdfghjkl 
hasdfghjklw.Part0 = ha 
hasdfghjklw.Part1 = hasdfghjkl 
hasdfghjklw.C1 = CFrame.new(0, 1.75, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdfghjkl = Instance.new("Part") 
prop(hasdfghjkl,Model2,0.4,0.2,0.4,"Bright red",false,false,"Custom") 
local hasdfghjklm = Instance.new("CylinderMesh") 
hasdfghjklm.Parent = hasdfghjkl 
hasdfghjklm.Scale = Vector3.new(0.24, 0.08, 0.24) 
local hasdfghjklw = Instance.new("Weld") 
hasdfghjklw.Parent = hasdfghjkl 
hasdfghjklw.Part0 = ha 
hasdfghjklw.Part1 = hasdfghjkl 
hasdfghjklw.C1 = CFrame.new(0, 1.85, 0) * CFrame.Angles(0, 0, 0) 
--
local hasdfghjkl = Instance.new("Part") 
prop(hasdfghjkl,Model2,0.4,0.2,0.4,"New Yeller",false,false,"Custom") 
local hasdfghjklm = Instance.new("CylinderMesh") 
hasdfghjklm.Parent = hasdfghjkl 
hasdfghjklm.Scale = Vector3.new(0.25, 0.1, 0.25) 
local hasdfghjklw = Instance.new("Weld") 
hasdfghjklw.Parent = hasdfghjkl 
hasdfghjklw.Part0 = ha 
hasdfghjklw.Part1 = hasdfghjkl 
hasdfghjklw.C1 = CFrame.new(0, 1.95, 0) * CFrame.Angles(0, 0, 0) 
--blade
local hasdfghjkl = Instance.new("Part") 
prop(hasdfghjkl,Model2,0.2,1,0.2,"Bright violet",false,false,"Custom") 
local hasdfghjklm = Instance.new("BlockMesh") 
hasdfghjklm.Parent = hasdfghjkl 
hasdfghjklm.Scale = Vector3.new(0.55, 2.5, 0.15) 
local hasdfghjklw = Instance.new("Weld") 
hasdfghjklw.Parent = hasdfghjkl 
hasdfghjklw.Part0 = ha 
hasdfghjklw.Part1 = hasdfghjkl 
hasdfghjklw.C1 = CFrame.new(0, 2.8, 0) * CFrame.Angles(0, 0, 0) 
--blade
local hasdfghjklz = Instance.new("Part") 
prop(hasdfghjklz,Model2,0.2,1,0.2,"Bright violet",false,false,"Custom") 
local hasdfghjklzm = Instance.new("SpecialMesh") 
hasdfghjklzm.Parent = hasdfghjklz 
hasdfghjklzm.MeshType = "Wedge" 
hasdfghjklzm.Scale = Vector3.new(0.15, 1, 0.55) 
local hasdfghjklzw = Instance.new("Weld") 
hasdfghjklzw.Parent = hasdfghjklz 
hasdfghjklzw.Part0 = hasdfghjkl 
hasdfghjklzw.Part1 = hasdfghjklz 
hasdfghjklzw.C1 = CFrame.new(-0.02, -2, -0.2) * CFrame.Angles(0, -7.8, 3) 
--blade
local hasdfghjkla = Instance.new("Part") 
prop(hasdfghjkla,Model2,0.2,1,0.2,"Bright red",false,false,"Custom") 
local hasdfghjklam = Instance.new("BlockMesh") 
hasdfghjklam.Parent = hasdfghjkla 
hasdfghjklam.Scale = Vector3.new(0.15, 2.8, 0.155) 
local hasdfghjklaw = Instance.new("Weld") 
hasdfghjklaw.Parent = hasdfghjkla 
hasdfghjklaw.Part0 = hasdfghjkl 
hasdfghjklaw.Part1 = hasdfghjkla 
hasdfghjklaw.C1 = CFrame.new(0, 0.4, 0) * CFrame.Angles(0, 0, 0) 
--blade
local hasdfghjkla = Instance.new("Part") 
prop(hasdfghjkla,Model2,0.2,0.2,0.2,"Bright red",false,false,"Custom") 
local hasdfghjklam = Instance.new("BlockMesh") 
hasdfghjklam.Parent = hasdfghjkla 
hasdfghjklam.Scale = Vector3.new(0.555, 0.15, 0.155) 
local hasdfghjklaw = Instance.new("Weld") 
hasdfghjklaw.Parent = hasdfghjkla 
hasdfghjklaw.Part0 = hasdfghjkl 
hasdfghjklaw.Part1 = hasdfghjkla 
hasdfghjklaw.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(0, 0, 0) 
--blade
local hasdfghjkl = Instance.new("Part") 
prop(hasdfghjkl,Model2,0.2,1,0.2,"Grey",false,false,"Custom") 
local hasdfghjklm = Instance.new("BlockMesh") 
hasdfghjklm.Parent = hasdfghjkl 
hasdfghjklm.Scale = Vector3.new(0.55, 2.5, 0.149) 
local hasdfghjklw = Instance.new("Weld") 
hasdfghjklw.Parent = hasdfghjkl 
hasdfghjklw.Part0 = ha 
hasdfghjklw.Part1 = hasdfghjkl 
hasdfghjklw.C1 = CFrame.new(-0.25, 2.8, 0) * CFrame.Angles(0, 0, 0) 
--blade
local hasdfghjklz = Instance.new("Part") 
prop(hasdfghjklz,Model2,0.2,1,0.2,"Grey",false,false,"Custom") 
local hasdfghjklzm = Instance.new("SpecialMesh") 
hasdfghjklzm.Parent = hasdfghjklz 
hasdfghjklzm.MeshType = "Wedge" 
hasdfghjklzm.Scale = Vector3.new(0.12, 1.2, 0.8) 
local hasdfghjklzw = Instance.new("Weld") 
hasdfghjklzw.Parent = hasdfghjklz 
hasdfghjklzw.Part0 = hasdfghjkl 
hasdfghjklzw.Part1 = hasdfghjklz 
hasdfghjklzw.C1 = CFrame.new(-0.02, -2.1, -0.3) * CFrame.Angles(0, -7.8, 3) 


if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "BBlade"
    script.Parent = h
end

local bin = script.Parent

function onSelected(mouse) 
RAW.Part1 = Rarm 
LAW.Part1 = Larm 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(35*i), math.rad(15*i), math.rad(170*i)) 
wait() 
end 
haw.Part0 = Rarm 
haw.C1 = CFrame.new(0, 1.75, 0) * CFrame.Angles(-3, 0, 4) 
    mouse.Button1Down:connect(function()
    end)
    mouse.KeyDown:connect(function(key)
        if key == "q" then 
	end 
    end)
end

function onDesel(mouse) 
haw.Part0 = Torso 
haw.C1 = CFrame.new(-0.25, -1.75, -0.6) * CFrame.Angles(0, 0, 7) 
RAW.Part1 = nil 
LAW.Part1 = nil 
end

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
