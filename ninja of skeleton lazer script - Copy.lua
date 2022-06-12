player = game.Players.luxulux
mouse = player:GetMouse()
plr = game.Players.luxulux
siker = 1.05
for i, v in pairs(game.Workspace.luxulux:GetChildren()) do
if v.ClassName == "Shirt" then
v:remove()
end
end
for i, v in pairs(game.Workspace.luxulux:GetChildren()) do
if v.ClassName == "Pants" then
v:remove()
end
end
Shirt = Instance.new("Shirt",Workspace.luxulux)
for i, v in pairs(game.Workspace.luxulux:GetChildren()) do
if v.ClassName == "BodyColors" then
v:remove()
end
end
s = Instance.new("Shirt",Workspace.luxulux)
s.ShirtTemplate = "http://www.roblox.com/asset/?id=122737088"
p = Instance.new("Pants",Workspace.luxulux)
p.PantsTemplate = "http://www.roblox.com/asset/?id=89662457"
GokuHair = Instance.new("Part",Workspace.luxulux)
GokuHair.Name = "Hair"
print(GokuHair.Name .. " " .. "is here")
GokuMesh = Instance.new("SpecialMesh",GokuHair)
GokuMesh.MeshId = "http://www.roblox.com/asset/?id=16627529"
GokuMesh.TextureId = "http://www.roblox.com/asset/?id=16627494"
GokuMesh.Scale = Vector3.new(siker,siker,siker)
GokuWeld = Instance.new("Weld",GokuHair)
GokuWeld.Part0 = game.Workspace.luxulux.Head
GokuWeld.Part1 = GokuHair
GokuWeld.C1 = CFrame.new(0,-0.5,0)
wait()
-- colors for body C:
BodyColors = Instance.new("BodyColors",Workspace.luxulux)
BodyColors.HeadColor = BrickColor.new("Pastel brown")
BodyColors.LeftArmColor = BrickColor.new("Pastel brown")
BodyColors.RightArmColor = BrickColor.new("Pastel brown")
BodyColors.RightLegColor = BrickColor.new("Pastel brown")
BodyColors.LeftLegColor = BrickColor.new("Pastel brown")
BodyColors.TorsoColor = BrickColor.new("Pastel brown")
-- sword
 
--[[handle = Instance.new("Part",plr.Character)
handle.TopSurface = "Smooth"
handle.BottomSurface = "Smooth"
handle.Name = "Handle"
handle.Anchored = false
handle.Material = "Wood"
mesh = Instance.new("SpecialMesh",handle)
mesh.MeshType = "Brick"
mesh.Scale = Vector3.new(0.1,0.4,0.6)
weld = Instance.new("Weld",handle)
weld.Part0 = plr.Character["Right Arm"]
weld.Part1 = handle
weld.C1 = CFrame.new(0,1,0)
base = Instance.new("Part",plr.Character)
base.TopSurface = "Smooth"
base.BottomSurface = "Smooth"
base.Name = "Base"
ibm = Instance.new("SpecialMesh",base)
ibm.MeshType = "Brick"
ibm.Scale = Vector3.new(0.2,0.5,0.2)
ibw = Instance.new("Weld",base)
ibw.Part0 = handle
ibw.Part1 = base
ibw.C1 = CFrame.new(0,0,0.7)
laser = Instance.new("Part",plr.Character)
laser.TopSurface = "Smooth"
laser.BottomSurface = "Smooth"
lamesh = Instance.new("SpecialMesh",laser)
lamesh.MeshType = "Brick"
lamesh.Scale = Vector3.new(0.09,0.29,3)
laweld = Instance.new("Weld",laser)
laweld.Part0 = base
laweld.Part1 = laser
laweld.C1 = CFrame.new(0,0,2)
function chidori()
weld33 = Instance.new("Wedl
end]]
function sus()
 
 
--[[P = Instance.new("Part",Workspace.luxulux)
P.BrickColor = BrickColor.new(500,0,0)
P.Position = Workspace.luxulux.Torso.Position
P.Shape = "Ball"
P.Anchored = false
P.Transparency = 0.5
P.Size = Vector3.new(8,7,8)
Pa = Instance.new("Weld",P)
Pa.Part0 = game.Workspace.luxulux.Torso
Pa.Part1 = P
Pa.C1 = CFrame.new(0,-2.3,0)]]
local part = Instance.new("Part",Workspace,luxulux)
print(part.CFrame)
part.BrickColor = BrickColor.new(500,0,500)
part.CFrame = CFrame.fromEulerAnglesXYZ(0,55,0)
part.Name = "Handle"
part.Transparency = 0.6
part.BrickColor = BrickColor.new(500,0,500)
local mesh = Instance.new("SpecialMesh",part)
mesh.MeshId = "http://www.roblox.com/asset/?id=36780113"
--mesh.TextureId = "http://www.roblox.com/asset/?id=109902735"
mesh.Scale = Vector3.new(5,7.5,5)
local weld = Instance.new("Weld",part)
weld.Part0 = game.Workspace.luxulux.Torso
weld.Part1 = part
weld.C1 = CFrame.new(0,-5,0)
local Head = Instance.new("Part",Workspace,luxulux)
print(Head.CFrame)
Head.Transparency = 0.5
Head.BrickColor = BrickColor.new(500,0,500)
local Mesh = Instance.new("SpecialMesh",Head)
Mesh.Scale = Vector3.new(10,11,10)
Mesh.MeshId = "http://www.roblox.com/asset/?id=6552202"
--Mesh.TextureId = "http://www.roblox.com/asset/?id=109902735"
local wWeld = Instance.new("Weld",Head)
wWeld.Part0 = part
wWeld.Part1 = Head
wWeld.C1 = CFrame.new(0,-9,0)
local arm1 = Instance.new("Part",Workspace.luxulux)
print(arm1.CFrame)
arm1.Transparency = 0.5
arm1.BrickColor = BrickColor.new(500,0,500)
local mesh1 = Instance.new("SpecialMesh",arm1)
mesh1.MeshId = "http://www.roblox.com/asset/?id=36780032"
--mesh.TextureId = "http://www.roblox.com/asset/?id=109902735"
mesh1.Scale = Vector3.new(6,6,6)
local AlWeld = Instance.new("Weld",arm1)
AlWeld.Part0 = arm1
AlWeld.Part1 = part
AlWeld.C1 = CFrame.new(-5,3,1)
LA = Instance.new("Part",Workspace)
LA.Transparency = 0.5
LA.BrickColor = BrickColor.new(500,0,500)
MMM = Instance.new("SpecialMesh",LA)
MMM.MeshId = "http://www.roblox.com/asset/?id=36780156"
MMM.Scale = Vector3.new(6,6,6)
WEMD = Instance.new("Weld",LA)
WEMD.Part0 = part
WEMD.Part1 = LA
WEMD.C1 = CFrame.new(-5,-3,-1)
force = Instance.new("ForceField",game.Workspace.luxulux)
end
 
mouse.KeyDown:connect(function(key)
key:lower()
if key == "x" then
if plr.Character.Head.face.Texture == "http://www.roblox.com/asset/?id=54618304" then
sus()
end
elseif key == "q" then
plr.Character.Head.face.Texture = "http://www.roblox.com/asset/?id=54618304"
end
end)
name = "luxulux"
me = game.Players[name]
char = me.Character
selected = false
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
function weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end
function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end
sword = Instance.new("Model",me.Character)
sword.Name = "Eyes"
--Parts-------------------------Parts-------------------------Parts-------------------------Parts----------------------
head = char:findFirstChild("Head")
torso = char:findFirstChild("Torso")
bg = Instance.new("BodyGyro",nil)
bg.P = 2000
bg.maxTorque = Vector3.new(0,math.huge,0)
trail1 = Instance.new("Part")
prop(trail1,nil,false,0.4,0,0.1,0.1,1,"Black",true,"Custom")
local t1 = Instance.new("SpecialMesh",trail1)
t1.MeshType = "Brick"
trail2 = Instance.new("Part")
prop(trail2,nil,false,0.4,0,0.1,0.1,1,"Black",true,"Custom")
local t2 = Instance.new("SpecialMesh",trail2)
t2.MeshType = "Brick"
local fb = Instance.new("Part")
prop(fb,nil,false,1,0,0.1,0.1,0.1,"Black",true,"Custom")
local fi = Instance.new("Fire",fb)
fi.Name = "LolFire"
fi.Size = 90000
fi.Heat = 99999
t1p = Vector3.new(-0.3,0.3,-0.55)
t2p = Vector3.new(0.3,0.3,-0.55)
function getp(path)
local objs = {}
for _,v in pairs(path:children()) do
if v:IsA("BasePart") then
if v:GetMass() < 30 then
table.insert(objs,v)
end
end
for _,k in pairs(v:children()) do
if k:IsA("BasePart") then
if k:GetMass() < 30 then
table.insert(objs,k)
end
end
for _,o in pairs(k:children()) do
if o:IsA("BasePart") then
if o:GetMass() < 30 then
table.insert(objs,o)
end
end
end
end
end
return objs
end
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "AMETERASU!"
script.Parent = h
end
bin = script.Parent
bin.Selected:connect(function(mouse)
mouse.Button1Down:connect(function()
hold = true
bg.Parent = torso
trail1.Parent = char
trail2.Parent = char
fb.Parent = char
while hold do
local p1 = head.CFrame * CFrame.new(t1p).p
local p2 = head.CFrame * CFrame.new(t2p).p
local dist1 = (p1 - mouse.Hit.p).magnitude
local dist2 = (p2 - mouse.Hit.p).magnitude
bg.cframe = CFrame.new(torso.Position, mouse.Hit.p)
trail1.CFrame = CFrame.new(p1,mouse.Hit.p) * CFrame.new(0,0,-dist1/2)
trail2.CFrame = CFrame.new(p2,mouse.Hit.p) * CFrame.new(0,0,-dist2/2)
t1.Scale = Vector3.new(1,1,dist1)
t2.Scale = Vector3.new(1,1,dist2)
local lol1 = CFrame.new(p1,mouse.Hit.p) * CFrame.new(0,0,-dist1)
fb.CFrame = lol1
local parts = getp(workspace)
for _,v in pairs(parts) do
if (v.Position - lol1.p).magnitude < 2 then
if v:findFirstChild("LolFire") == nil then
local f = Instance.new("Fire",v)
f.Size = 90000
f.Heat = 99999
f.Name = "LolFire"
coroutine.resume(coroutine.create(function()
for i=0,10,0.2 do
wait(0.1)
f.Heat = i
f.Size = i
local lol = math.random(1,2)
if lol == 26 then
v.BrickColor = BrickColor.new("Black")
else
v.BrickColor = BrickColor.new("Black")
end
end
v:remove()
end))
end
end
end
wait()
end
end)
mouse.Button1Up:connect(function()
hold = false
bg.Parent = nil
trail1.Parent = nil
trail2.Parent = nil
fb.Parent = nil
end)
end)
Player = game.Players.luxulux
Char = Player.Character
Head = Char.Head
Torso = Char.Torso
h = Char.Humanoid
necko=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local gairo = Instance.new("BodyGyro")
gairo.Parent = nil
if Char:findFirstChild("Weapon",true) ~= nil then
Char:findFirstChild("Weapon",true).Parent = nil
end
bets = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "}
--col = {"Really red,"white"}
--col = {"Really white","Really white","red"}
col = {"Really red","Really white","Really red"}
Anims = {}
act = {key = {}}
for i=1,#bets do table.insert(act.key,bets) end
act.mousedown = false
act.keydown = false
act.Walking = false
act.Jumping = false
act.Anim = ""
hitted=false
roflcopter=false
bodypos=Instance.new("BodyPosition")
holdshoot=false
Prop = {}
difficulty=0.05
Prop.LegLength = 5
Prop.LegWide = 1
Prop.BallSize = 0.9
--[[difficulty=0.1
Prop.LegLength = 4
Prop.LegWide = 0.8
Prop.BallSize = 1
difficulty=0.01
Prop.LegLength = 50
Prop.LegWide = 10
Prop.BallSize = 10.3
Prop.LegLength = 150
Prop.LegWide = 60
Prop.BallSize = 60.3]]
coroutine.resume(coroutine.create(function()
for i=0,50 do
wait()
h.WalkSpeed=18
--h.WalkSpeed=10
walksped=h.WalkSpeed
h.MaxHealth=math.huge
h.Health=math.huge
end
end))
