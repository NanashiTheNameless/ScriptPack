local Me = Game.Players.yfc 
local char = Me.Character
local Torso = char.Torso
local Rarm = char["Right Arm"]
local Larm = char["Left Arm"]
local Lleg = char["Left Leg"]
local left1 = 50
local left2 = 50
Attkin = false 

pcall(function() char[":P"]:remove() end)
pcall(function() char["Parts"]:remove() end) 
for i,v in pairs(char:children()) do 
if v.className == "Hat" then 
v:remove() 
end 
end

	--funcs-- 
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
	--**>[[parts]]<**--
local parts = Instance.new("Model") 
parts.Parent = char 
parts.Name = "Parts" 
--**<<*>>start<<*>>**--
--*right*--
local handle = Instance.new("Part") 
prop(handle, parts, false, 0.5, 0, 0.5, 0.5, 1, "White", false, "Custom")
local handlem = Instance.new("BlockMesh") 
meshb(handlem, handle, 1, 1, 1, 0.05) 
local handlew = Instance.new("Weld") 
wel(handlew, 0.75, 0.75, 0, handle, handle, char["Right Leg"], 0, 0, 0) 
local handleb = Instance.new("Part") 
prop(handleb, parts, false, 0, 0, 0.4, 0.4, 0.8, "Bright green", false, "Custom")
local handlebm = Instance.new("BlockMesh") 
meshb(handlebm, handleb, 1, 1, 1, 0.05) 
local handlebw = Instance.new("Weld") 
wel(handlebw, 0, 0, 0, handleb, handleb, handle, 0, 0, 0) 
--*left*--
local handlec = Instance.new("Part") 
prop(handlec, parts, false, 0.5, 0, 0.5, 0.5, 1, "White", false, "Custom")
local handlecm = Instance.new("BlockMesh") 
meshb(handlecm, handlec, 1, 1, 1, 0.05) 
local handlecw = Instance.new("Weld") 
wel(handlecw, -0.75, 0.75, 0, handlec, handlec, char["Left Leg"], 0, 0, 0) 
local handled = Instance.new("Part") 
prop(handled, parts, false, 0, 0, 0.4, 0.4, 0.8, "Bright green", false, "Custom")
local handledm = Instance.new("BlockMesh") 
meshb(handledm, handled, 1, 1, 1, 0.05) 
local handledw = Instance.new("Weld") 
wel(handledw, 0, 0, 0, handled, handled, handlec, 0, 0, 0) 

if script.Parent.className ~= "HopperBin" then
    local h = Instance.new("HopperBin", Me.Backpack)
    h.Name = "coke"
    script.Parent = h
end


local bin = script.Parent 

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
--**>[[anims]]<**--
function onSelected(mouse)
RAW.Part1 = Rarm 
LAW.Part1 = Larm 
LAW.C1 = CFrame.new(0,0.5,0) * CFrame.Angles(0,0,0) 
handlecw.Part1 = Larm 
handlew.Part1 = Rarm 
handlecw.C1 = CFrame.new(0.25,-1.25,0) * CFrame.Angles(0,0,0) 
handlew.C1 = CFrame.new(-0.25,-1.25,0) * CFrame.Angles(0,0,0) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0*i), math.rad(0*i), math.rad(0*i)) 
LAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
    mouse.Button1Down:connect(function()
if Attkin == false and left1 > 0 then 
Attkin = true 
	for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(55*i), math.rad(-55*i), math.rad(-60*i)) 
	wait() 
	end 
		for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(55-55*i), math.rad(-55+55*i), math.rad(-60+60*i)) 
	wait() 
	end 
left1 = left1 - 1 
char.Humanoid.MaxHealth = char.Humanoid.MaxHealth + 15 
char.Humanoid.Health = char.Humanoid.Health + 15 
handlebm.Scale = handlebm.Scale - Vector3.new(0.02, 0.02, 0.02) 
Attkin = false 
end 
end)  
    mouse.KeyDown:connect(function(key)
        if key == "q" and Attkin == false then 
			if Attkin == false then 
	Attkin = true 
		if left1 == 0 and left2 > 0 then 
	for i = 0, 1, 0.1 do 
LAW.C0 = CFrame.Angles(math.rad(55*i), math.rad(55*i), math.rad(60*i)) 
	wait() 
	end 
		for i = 0, 1, 0.1 do 
LAW.C0 = CFrame.Angles(math.rad(55-55*i), math.rad(55-55*i), math.rad(60-60*i)) 
	wait() 
	end 
		end 
left2 = left2 - 1 
handledm.Scale = handledm.Scale - Vector3.new(0.02, 0.02, 0.02) 
Attkin = false 
end 
	end 
    end)
end

function onDesel(mouse)
handlew.Part1 = char["Right Leg"] 
LAW.C1 = CFrame.new(0,0.5,0) * CFrame.Angles(0,0,0) 
handlew.C1 = CFrame.new(0.75, 0.75, 0) * CFrame.Angles(0, 0, 0) 
handlecw.Part1 = char["Left Leg"] 
LAW.C1 = CFrame.new(0,0.5,0) * CFrame.Angles(0,0,0) 
handlecw.C1 = CFrame.new(-0.75, 0.75, 0) * CFrame.Angles(0, 0, 0) 
RAW.Part1 = nil
LAW.Part1 = nil
end 

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)

while true do 
if left1 == 0 then 
handleb.Transparency = 1 
end 
if left2 == 0 then
handled.Transparency = 1
end 
wait() 
end 