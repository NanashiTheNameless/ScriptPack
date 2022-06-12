local Me = game.Players.LocalPlayer --blame john
local char = Me.Character
local Torso = char.Torso
local Rarm = char["Right Arm"]
local Larm = char["Left Arm"]
local Lleg = char["Left Leg"]
Attkin = false 
script.Parent = char 

pcall(function() char[":P"]:remove() end)
pcall(function() char["Parts"]:remove() end) 
for i,v in pairs(char:children()) do 
if v.className == "Hat" then 
v:remove() 
end 
end

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
function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
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
prop(handle, parts, false, 0, 0, 0.2, 1, 0.2, "New Yeller", false, "Custom")
handlem = Instance.new("SpecialMesh") 
mesh(handlem, handle, 1, 1, 1, "Head") 
handlew = Instance.new("Weld") 
wel(handlew, 1, 1, 0.58, handle, handle, char.Torso, 0, 0, -7) 
handle2 = Instance.new("Part") 
prop(handle2, parts, false, 0, 0, 1, 0.2, 0.2, "New Yeller", false, "Custom")
handle2m = Instance.new("SpecialMesh") 
mesh(handle2m, handle2, 1, 1, 1, "Brick") 
handle2w = Instance.new("Weld") 
wel(handle2w, 0, -0.5, 0, handle2, handle2, handle, 0, 0, 0) 
handle2 = Instance.new("Part") 
prop(handle2, parts, false, 0, 0, 0.1, 1, 0.1, "New Yeller", false, "Custom")
handle2m = Instance.new("SpecialMesh") 
mesh(handle2m, handle2, 1, 1, 1, "Brick") 
handle2w = Instance.new("Weld") 
wel(handle2w, 0.4, -1, 0, handle2, handle2, handle, 0, 0, 0) 
handle2 = Instance.new("Part") 
prop(handle2, parts, false, 0, 0, 0.1, 1, 0.1, "New Yeller", false, "Custom")
handle2m = Instance.new("SpecialMesh") 
mesh(handle2m, handle2, 1, 1, 1, "Brick") 
handle2w = Instance.new("Weld") 
wel(handle2w, -0.4, -1, 0, handle2, handle2, handle, 0, 0, 0) 
handle24 = Instance.new("Part") 
prop(handle24, parts, false, 0, 0, 0.4, 4, 0.1, "New Yeller", false, "Custom")
handle24m = Instance.new("SpecialMesh") 
mesh(handle24m, handle24, 1, 1, 1, "Brick") 
handle24w = Instance.new("Weld") 
wel(handle24w, 0, -2.5, 0, handle24, handle24, handle, 0, 0, 0) 
handle2 = Instance.new("Part") 
prop(handle2, parts, false, 0, 0, 0.1, 0.5, 0.1, "New Yeller", false, "Custom")
handle2m = Instance.new("SpecialMesh") 
mesh(handle2m, handle2, 1, 1, 1, "Wedge") 
handle2w = Instance.new("Weld") 
wel(handle2w, -0.11, -4.75, 0, handle2, handle2, handle, 7.7, 7.8, 8) 
handle2 = Instance.new("Part") 
prop(handle2, parts, false, 0, 0, 0.1, 0.5, 0.1, "New Yeller", false, "Custom")
handle2m = Instance.new("SpecialMesh") 
mesh(handle2m, handle2, 1, 1, 1, "Wedge") 
handle2w = Instance.new("Weld") 
wel(handle2w, 0.09, -4.74, 0, handle2, handle2, handle, -8.75, -7.8, 0.7) 
--**>[[damages]]<**--
function dmg(dmg, obj) 

for _, v in pairs(Game.Players:GetChildren()) do 

torso = v.Character.Torso

if (obj.Position - torso.Position).magnitude < 6 then 

v.Character.Humanoid:TakeDamage(dmg) 

end 
end 
end 
function dmgse(dmg, obj) 

for _, v in pairs(Game.Players:GetChildren()) do 

torso = v.Character.Torso

if (obj.Position - torso.Position).magnitude < 15 then 

v.Character.Humanoid:TakeDamage(dmg) 

end 
end 
end 

function dmgs(dmg, obj) 

for _, v in pairs(Game.Players:GetChildren()) do 

torso = v.Character.Torso

if (obj.Position - torso.Position).magnitude < 3 then 

v.Character.Humanoid:TakeDamage(dmg*2) 

end 
end 
end 
--**>[[anims]]<**--
function onSelected(mouse)
RAW.Part1 = Rarm 
LAW.Part1 = Larm 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(-15*i), math.rad(-25*i)) 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0*i), math.rad(4-5*i), math.rad(0*i)) 
wait()
end
handlew.Part1 = Rarm
handlew.C1 = CFrame.new(0, -1, 0) * CFrame.Angles(-0.5, 0, -8) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(-55*i), math.rad(-25*i)) 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0*i), math.rad(-45+45*i), math.rad(0*i)) 
wait()
end
    mouse.Button1Down:connect(function()
	if Attkin == false then 
	Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(120*i), math.rad(-55*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(120-120*i), math.rad(-55+-25*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
dmgs(math.random(5,15), handle24) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(0*i), math.rad(-80+25*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
Attkin = false 
end 
    end)
    mouse.KeyDown:connect(function(key)
        if key == "l" and Attkin == false then 
	Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(100*i), math.rad(-55*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
local pos = mouse.hit.p 
for i = 1, 20 do 
local light = Instance.new("Part") 
prop(light, parts, false, 1, 0.5, 0.1, 10, 0.1, "New Yeller", false, "Custom") 
local part = Instance.new("Part") 
part.Parent = me.Character 
part.formFactor = "Custom" 
local mag = (light.Position - him.Character.Head.Position).magnitude 
part.Size = Vector3.new(0.5, 0.5, mag) 
part.CFrame = CFrame.new(me.Character.Head.Position - him.Character.Head.Position) + Vector3.new(0, 0, 0) 
part.Anchored = true 
part.CanCollide = false 
local pm = Instance.new("BlockMesh") 
pm.Parent = part 
pm.Scale = Vector3.new(1, 1, mag) 

light.CFrame = CFrame.new(pos) + Vector3.new(math.random(-5, 5), math.random(5, 10), math.random(-5, 5)) 

dmg(10, light) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(100-100*i), math.rad(-55*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
Attkin = false 
end 
	end 
        if key == "t" and Attkin == false then 
	Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(100*i), math.rad(-55*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
local pos = mouse.hit.p 
for i = 1, 50 do 
local light = Instance.new("Part") 
prop(light, parts, false, 0, 0.9, 3, 25, 3, "New Yeller", false, "Custom") 

light.CFrame = CFrame.new(pos) + Vector3.new(math.random(-15, 15), math.random(15, 20), math.random(-15, 15)) 

dmgse(35, light) 
wait() 
end 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(100-100*i), math.rad(-55*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
Attkin = false 
end 
	end 
	        if key == "p" and Attkin == false then 
			if Attkin == false then 
	Attkin = true 
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(45*i), math.rad(0*i), math.rad(0*i)) 
wait()
end 
wait(1) 
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(45-45*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
Attkin = false 
end 
	end 
		        if key == "e" and Attkin == false then 
			if Attkin == false then 
Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(-15*i), math.rad(-25*i)) 
wait()
end
handlew.Part1 = Torso 
handlew.C1 = CFrame.new(1, 1, 0.58) * CFrame.Angles(0, 0, -7) 
for i = 0, 1, 0.05 do 
RAW.C0 = CFrame.new(-0.5, 0, -0.5) * CFrame.Angles(math.rad(210-150*i), math.rad(0*i), math.rad(-50*i)) 
LAW.C0 = CFrame.new(0.5, 0, -0.5) *  CFrame.Angles(math.rad(60*i), math.rad(0*i), math.rad(50*i)) 
wait()
end
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(45*i), math.rad(0*i), math.rad(0*i)) 
wait()
end 
wait(1) 
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(45-15*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(30+15*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
wait(1) 
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(45-15*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(30+15*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
wait(1) 
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(45-15*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(30+15*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
wait(1)
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(45-45*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
Attkin = false 
end 
	end 
		        if key == "q" and Attkin == false then 
			if Attkin == false then 
	Attkin = true 
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(45*i), math.rad(0*i), math.rad(0*i)) 
wait()
end 
wait(1) 
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(45-15*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
wait() 
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(30+15*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
wait(1) 
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(45-15*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
wait() 
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(30+15*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
wait(1) 
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(45-15*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
wait() 
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(30+15*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
wait(1) 
for i = 0, 1, 0.1 do 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(45-45*i), math.rad(0*i), math.rad(0*i)) 
wait()
end
for i = 0, 1, 0.05 do 
RAW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(210-150*i), math.rad(0*i), math.rad(-50*i)) 
LAW.C0 = CFrame.new(0, 0, 0) *  CFrame.Angles(math.rad(60*i), math.rad(0*i), math.rad(50*i)) 
wait()
end
Attkin = false 
end 
	end 
			if key == "f" and Attkin == false then 		
			if Attkin == false then 
	Attkin = true 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(-55*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(-55+-25*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
dmgs(math.random(15,25), handle24) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(0*i), math.rad(-80+25*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
Attkin = false 
end 
end 
			if key == "g" and Attkin == false then 		
			if Attkin == false then 
	Attkin = true 
for i = 0, 1, 0.5 do 
RAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(-55*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
for i = 0, 1, 0.5 do 
RAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(-55+-25*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
dmgs(math.random(15,25), handle24) 
for i = 0, 1, 0.5 do 
RAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(-55*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
for i = 0, 1, 0.5 do 
RAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(-55+-25*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
dmgs(math.random(15,25), handle24) 
for i = 0, 1, 0.5 do 
RAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(-55*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
for i = 0, 1, 0.5 do 
RAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(-55+-25*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
dmgs(math.random(15,25), handle24) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(0*i), math.rad(-80+25*i), math.rad(-25*i)) 
--LAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(12-12*i), math.rad(-12+12*i)) 
wait()
end
Attkin = false 
end 
end 
    end)
end

function onDesel(mouse)
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210*i), math.rad(-15*i), math.rad(-25*i)) 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0*i), math.rad(-45*i), math.rad(0*i)) 
wait()
end
handlew.Part1 = Torso 
handlew.C1 = CFrame.new(1, 1, 0.58) * CFrame.Angles(0, 0, -7) 
for i = 0, 1, 0.1 do 
RAW.C0 = CFrame.Angles(math.rad(210-210*i), math.rad(-15+15*i), math.rad(-25+25*i)) 
headw.C1 = CFrame.new(0, 1.5, 0) * CFrame.Angles(math.rad(0*i), math.rad(-45+45*i), math.rad(0*i)) 
wait()
end
RAW.Part1 = nil
LAW.Part1 = nil
end 

bin.Selected:connect(onSelected)
bin.Deselected:connect(onDesel)
