Me = game.Players.LocalPlayer 
char = Me.Character 
pcall(function() char["Horse"]:remove() end)
horse = Instance.new("Model") 
horse.Name = "Horse" 
horse.Parent = char 

for i,v in pairs(char:children()) do 
if v.className == "Hat" then 
v:remove() 
end 
end --lego

char.Torso.CanCollide = false 
char["Right Arm"].CanCollide = false 
char["Right Leg"].CanCollide = false 
char["Left Arm"].CanCollide = false 
char["Left Leg"].CanCollide = false 
char.Head.Transparency = 1 
char.Torso.Transparency = 1 
char["Right Arm"].Transparency = 1 
char["Right Leg"].Transparency = 1 
char["Left Arm"].Transparency = 1 
char["Left Leg"].Transparency = 1 
char.Head.BrickColor = BrickColor.new("Reddish brown") 
pcall(function() char.Head["face"]:remove() end)

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

wide = 3 
high = 3 
long = 6 

torso = Instance.new("Part") 
prop(torso, horse, true, 0, 0, wide, high, long, "Reddish brown", false, "Custom")
spec = Instance.new("SpecialMesh") 
mesh(spec, torso, 1, 1, 1, "Brick") 
Head = Instance.new("Part") 
prop(Head, horse, true, 0, 0, 2, 1.5, 1, "Reddish brown", false, "Custom")
spec = Instance.new("SpecialMesh") 
mesh(spec, Head, 1, 1, 1, "Head") 
ra = Instance.new("Part") 
prop(ra, horse, false, 0, 0, 1, 4, 1, "Reddish brown", false, "Custom")
spec = Instance.new("SpecialMesh") 
mesh(spec, ra, 1, 1, 1, "Brick") 
la = Instance.new("Part") 
prop(la, horse, false, 0, 0, 1, 4, 1, "Reddish brown", false, "Custom")
spec = Instance.new("SpecialMesh") 
mesh(spec, la, 1, 1, 1, "Brick") 
ll = Instance.new("Part") 
prop(ll, horse, false, 0, 0, 1, 4, 1, "Reddish brown", false, "Custom")
spec = Instance.new("SpecialMesh") 
mesh(spec, ll, 1, 1, 1, "Brick") 
rl = Instance.new("Part") 
prop(rl, horse, false, 0, 0, 1, 4, 1, "Reddish brown", false, "Custom")
spec = Instance.new("SpecialMesh") 
mesh(spec, rl, 1, 1, 1, "Brick") 
t = Instance.new("Part") 
prop(t, horse, false, 0, 0, 1, 4, 1, "Reddish brown", false, "Custom")
spec = Instance.new("SpecialMesh") 
mesh(spec, t, 1, 1.5, 0.75, "Sphere") 
tors = Instance.new("Seat") 
prop(tors, horse, true, 0, 0, 3.05, 0.15, 3, "Bright red", false, "Custom")
spec = Instance.new("SpecialMesh") 
mesh(spec, tors, 1, 1, 1, "Brick") 
tors2 = Instance.new("Seat") 
prop(tors2, horse, false, 0, 0, 3.05, 0.15, 0.5, "Bright red", false, "Custom")
spec = Instance.new("SpecialMesh") 
mesh(spec, tors2, 1, 1, 1, "Brick") 
tor = Instance.new("Part") 
prop(tor, horse, false, 0, 0, 0.5, 1, 0.5, "Bright red", false, "Custom")
spec = Instance.new("SpecialMesh") 
mesh(spec, tor, 1, 1, 1, "Head") 
torsy = Instance.new("Part") 
prop(torsy, horse, true, 0, 0, 0.15, 3.145, 1, "Bright red", false, "Custom")
spec = Instance.new("SpecialMesh") 
mesh(spec, torsy, 1, 1, 1, "Brick") 
torsys = Instance.new("Part") 
prop(torsys, horse, true, 0, 0, 0.15, 3.145, 1, "Bright red", false, "Custom")
spec = Instance.new("SpecialMesh") 
mesh(spec, torsys, 1, 1, 1, "Brick") 
bg = Instance.new("BodyGyro") 
bg.Parent = torso 
torsyse = Instance.new("Part") 
prop(torsyse, horse, true, 0, 0, 3.05, 0.15, 1, "Bright red", false, "Custom")
spec = Instance.new("SpecialMesh") 
mesh(spec, torsyse, 1, 1, 1, "Brick") 
headw = Instance.new("Weld") 
wel(headw, 0, 1.75, -3, char, Head, torso, 0, 0, 0)
headw = Instance.new("Weld") 
wel(headw, 0, 0.5, -3, char, torso, char.Torso, 0, 0, 0)
headw = Instance.new("Weld") 
wel(headw, 0.35, 0, -1, char, ra, char["Right Leg"], 0, 0, 0)
headw = Instance.new("Weld") 
wel(headw, -0.35, 0, -1, char, la, char["Left Leg"], 0, 0, 0)
headw = Instance.new("Weld") 
wel(headw, 0.35, 0, -5, char, rl, char["Right Leg"], 0, 0, 0)
headw = Instance.new("Weld") 
wel(headw, -0.35, 0, -5, char, ll, char["Left Leg"], 0, 0, 0)
headw = Instance.new("Weld") 
wel(headw, 0, -1.5, 3, char, t, torso, 0, 0, 0)
headw = Instance.new("Weld") 
wel(headw, 0, 1.55, 0, char, tors, torso, 0, 0, 0)
headw = Instance.new("Weld") 
wel(headw, 0, 1.6, 1.75, char, tors2, torso, -6.5, 0, 0)
headw = Instance.new("Weld") 
wel(headw, 0, 0.5, -1.45, char, tor, tors, -3, 0, 0)
headw = Instance.new("Weld") 
wel(headw, 1.55, 0, 0, char, torsy, torso, 0, 0, 0)
headw = Instance.new("Weld") 
wel(headw, -1.55, 0, 0, char, torsys, torso, 0, 0, 0)
headw = Instance.new("Weld") 
wel(headw, 0, -1.55, 0, char, torsyse, torso, 0, 0, 0)

rarm = nil 
larm = nil 

local RAB = Instance.new("Part") -- Right Arm Brick
RAB.formFactor = "Custom"
RAB.Size = Vector3.new(0.2, 0.2, 0.2)
RAB.Transparency = 1

local RABW = Instance.new("Weld", RAB) -- Right Arm Brick Weld
RABW.Part0 = nil
RABW.Part1 = nil 
RABW.C1 = CFrame.new(-1.5, -0.5, 0)

local LAB = Instance.new("Part") -- Right Arm Brick
LAB.formFactor = "Custom"
LAB.Size = Vector3.new(0.2, 0.2, 0.2)
LAB.Transparency = 1

local LABW = Instance.new("Weld",LAB) -- Left Arm Brick Weld
LABW.Part0 = nil
LABW.Part1 = nil
LABW.C1 = CFrame.new(1.5, -0.5, 0)

local RAW = Instance.new("Weld",RAB) -- Right Arm Weld
RAW.Part0 = nil
RAW.Part1 = nil
RAW.C1 = CFrame.new(0, 0.5, 0)

local LAW = Instance.new("Weld",LAB) -- Left Arm Weld
LAW.Part0 = nil
LAW.Part1 = nil
LAW.C1 = CFrame.new(0, 0.5, 0)

function arms(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil then 
if hit.Parent.Humanoid.Sit == true then 
he = hit.Parent 
larm = hit.Parent["LeftArm"] 
LAW.Part1 = larm
LABW.Part0 = he.Torso
LAW.Part0 = LAB
LABW.Part1 = LAB
LAB.Parent = he
LABW.Parent = he
rarm = hit.Parent["RigtArm"]
RAW.Part1 = rarm
RABW.Part0 = he.Torso
RAW.Part0 = RAB
RABW.Part1 = RAB
RAB.Parent = he
RABW.Parent = he
end 
end 
end 

function actions(msg) 
if msg == "trot" then 
char.Humanoid.WalkSpeed = 20
elseif msg == "walk" then 
char.Humanoid.WalkSpeed = 16
elseif msg == "galup" then 
char.Humanoid.WalkSpeed = 35
end 
end 

Me.Chatted:connect(actions) 

tors2.Touched:connect(arms) 