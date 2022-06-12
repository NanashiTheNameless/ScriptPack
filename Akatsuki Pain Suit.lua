--Akatsuki Pain script by: yadel95
--Thanks devapainpath for his clothing
--Ver[1.0]
--Replace yadel95 with your name.
--Chances 
local you = game.Workspace["periastr0n"]
local mouse = game.Players.LocalPlayer:GetMouse()
local color = BrickColor.new("Dark stone grey")
local msg = game:GetService("Chat")
local busy = false
--________________________________________________________________--
--------------------------------------------------------------------l
--------------------------------------------------------------------l
---------DO NOT MESS WITH ANYTHING BELOW----------------------------l
--------------------------------------------------------------------l
--------------------------------------------------------------------]
c = you:GetChildren()
for i = 1, #c do
if c[i].ClassName == "Shirt" or c[i].ClassName == "Pants" or c[i].ClassName == "CharacterMesh" then
c[i]:Remove()
end end
shirt = Instance.new("Shirt")
shirt.Parent = you
shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=95427692"
pants = Instance.new("Pants")
pants.Parent = you
pants.PantsTemplate = "http://www.roblox.com/asset/?id=95427742"
--
bowl = Instance.new("Part")
Instance.new("SpecialMesh").Parent = bowl
bowl.Mesh.MeshType = "FileMesh"
bowl.Mesh.MeshId = "http://www.roblox.com/asset/?id=19380188"
bowl.BrickColor = BrickColor.new("Black")
bowl.Mesh.Scale = Vector3.new(1.5, 1.4, 1.5)
bowl.Parent = you

bowl2 = Instance.new("Part")
Instance.new("SpecialMesh").Parent = bowl2
bowl2.Mesh.MeshType = "FileMesh"
bowl2.Mesh.MeshId = "http://www.roblox.com/asset/?id=19380188"
bowl2.BrickColor = BrickColor.new("Bright red")
bowl2.Mesh.Scale = Vector3.new(1.4, 1.4, 1.4)
bowl2.Parent = you
--
collar = Instance.new("Weld")
collar.Parent = you.Torso
collar.Part0 = bowl
collar.Part1 = you.Torso
collar.C0 = collar.C0*CFrame.Angles(0, 0, 3.15)
collar.C0 = collar.C0*CFrame.new(0, -0.6, 0)

collar2 = Instance.new("Weld")
collar2.Parent = you.Torso
collar2.Part0 = bowl2
collar2.Part1 = you.Torso
collar2.C0 = collar2.C0*CFrame.Angles(0, 0, 3.15)
collar2.C0 = collar2.C0*CFrame.new(0, -0.6, 0)
-------------------------------------------------------------
-------------------------------------------------------------
-----------Most Critical part of the script------------------
-------------------------------------------------------------
-------------------------------------------------------------
function kf(key)
key:lower() 
if key == "f" then
if not busy then
busy = true
m = Instance.new("Message")
m2 = Instance.new("Message")
m3 = Instance.new("Message")
m4 = Instance.new("Message")

m.Text = "Now this world"
m2.Text = "Shall know"
m3.Text = "Pain"
for i = 1, 1 do
bodyvelocity1 = Instance.new("BodyVelocity")
bodyvelocity1.maxForce = Vector3.new(99999999999999999999, 999999999999999999999, 39)
bodyvelocity1.velocity = Vector3.new(0, 3, 0)
bodyvelocity1.Parent = you.Torso
m.Parent = game.Workspace
wait(1)
m:Remove()
m2.Parent = game.Workspace
wait(1)
m2:Remove()
m3.Parent = game.Workspace
wait(1)
m3:Remove()
wait(3)
Instance.new("ForceField").Parent = you
you.Head.Anchored = true
delete = you.Torso:GetChildren()
for rep1 = 1, #delete do
if delete[rep1].Name == "BodyVelocity" then
delete[rep1]:Remove()
msg:Chat(you.Head, "Shirai Tensei!", Enum.ChatColor.Red)
m3.Parent = game.Workspace
push = Instance.new("Part")
push.Parent = you
push.Name = "Ulmighty"
push.Size = Vector3.new(300, 300, 300)
push.Anchored = true
push.CanCollide = false
push.TopSurface = "Smooth"
push.BottomSurface = "Smooth"
push.BrickColor = BrickColor.new("Dark stone grey")
push.Reflectance = 0.3
push.Transparency = 0.3
push.CFrame = you.Torso.CFrame*CFrame.new(0, -3, 0)
function OnTouched(Victim)
boom = Instance.new("Explosion")
boom.Name = "Die"
boom.ExplosionType = "CratersAndDebris"
boom:Clone().Parent = Victim
Victim.Die.Position = Victim.Position
Victim.Anchored = false
end
push.Touched:connect(OnTouched)
Instance.new("SpecialMesh").Parent = push
push.Mesh.MeshType = "Sphere"
push.Mesh.Scale = Vector3.new(0.1, 0.1, 0.1)
wait(0.05)
push.Mesh.Scale = Vector3.new(0.2, 0.2, 0.2)
wait(0.05)
push.Mesh.Scale = Vector3.new(0.3, 0.3, 0.3)
wait(0.05)
push.Mesh.Scale = Vector3.new(0.4, 0.4, 0.4)
wait(0.05)
push.Mesh.Scale = Vector3.new(0.5, 0.5, 0.5)
wait(0.05)
push.Mesh.Scale = Vector3.new(0.6, 0.6, 0.6)
wait(0.05)
push.Mesh.Scale = Vector3.new(0.7, 0.7, 0.7)
wait(0.05)
push.Mesh.Scale = Vector3.new(0.8, 0.8, 0.8)
wait(0.05)
push.Mesh.Scale = Vector3.new(0.9, 0.9, 0.9)
wait(0.05)
push.Mesh.Scale = Vector3.new(1, 1, 1)
wait(1)
push.Transparency = 0.4
wait(0.05)
push.Transparency = 0.5
wait(0.05)
push.Transparency = 0.6
wait(0.05)
push.Transparency = 0.7
wait(0.05)
push.Transparency = 0.8
wait(0.05)
push.Transparency = 0.9
wait(0.05)
push.Transparency = 1
push:Remove()
end
end
end
wait(0.1)
you.Head.Anchored = false
you.ForceField:Remove()
busy = false
end
end 
end
mouse.KeyDown:connect(kf)
 
function kg(key)
key:lower()
if key == "g"
then if busy == false then
busy = true
you.Archivable = true
you.Humanoid.WalkSpeed = 0
msg:Chat(you.Head, "BBOSS style: Path throw!", Enum.ChatColor.Blue)
you.Animate.Disabled = true
you.Torso["Left Shoulder"].DesiredAngle = -2
wait(1)
you.Animate.Disabled = false
path = you:Clone()
path.Parent = game.Workspace
path.Torso.CFrame = you.Torso.CFrame*CFrame.new(0, 0, -5)
path.Humanoid.Jump = true
wait(0.5)
force = Instance.new("BodyVelocity")
force.Parent = path.Torso
force.maxForce = Vector3.new(999999999999999999, 399, 3999999)
force.velocity = path.Torso.CFrame.lookVector*30
wait(3)
Instance.new("Explosion").Parent = path.Torso
path.Torso.Explosion.Position = path.Torso.Position
path.Torso.Explosion.BlastRadius = 3
wait(0.5)
path:Remove()
you.Humanoid.WalkSpeed = 16
busy = false
end
end
end
mouse.KeyDown:connect(kg)

function kj(key)
key:lower()
if key == "j"
then if busy == false then
busy = true
you.Humanoid.WalkSpeed = 0
you.Animate.Disabled = true
msg:Chat(you.Head, "BBOSS style: Universal Push!", Enum.ChatColor.Blue)
you.Torso["Left Shoulder"].DesiredAngle = -2
you.Torso["Right Shoulder"].DesiredAngle = 2
tensai = Instance.new("Part")
tensai.Parent = you
tensai.CFrame = you.Torso.CFrame*CFrame.new(0, 1, -90)
tensai.Anchored = false
tensai.CanCollide = false
tensai.Size = Vector3.new(65, 30, 9)
tensai.Transparency = 1
push = Instance.new("BodyVelocity")
push.maxForce = Vector3.new(3,3999999,39999999)
up = Instance.new("BodyVelocity")
up.maxForce = Vector3.new(3,3999999,39999999)
up.velocity = tensai.CFrame.lookVector*-40
push.velocity = you.Torso.CFrame.lookVector*-40
push.Parent = tensai
function pp(part)
up:clone().Parent = part
wait(2)
part.BodyVelocity:Remove()
end
tensai.Touched:connect(pp)
wait(1.8)
tensai:Remove()
you.Animate.Disabled = false
you.Humanoid.WalkSpeed = 16
busy = false
end
end
end
mouse.KeyDown:connect(kj)

function kk(key)
key:lower()
if key == "k"
then if busy == false then
busy = true
you.Humanoid.WalkSpeed = 0
you.Animate.Disabled = true
msg:Chat(you.Head, "BBOSS style: Universal Pull!", Enum.ChatColor.Blue)
you.Torso["Left Shoulder"].DesiredAngle = -2
you.Torso["Right Shoulder"].DesiredAngle = 2
tensai = Instance.new("Part")
tensai.Parent = you
tensai.CFrame = you.Torso.CFrame*CFrame.new(0, 1, -90)
tensai.Anchored = false
tensai.CanCollide = false
tensai.Size = Vector3.new(65, 30, 9)
tensai.Transparency = 1
push = Instance.new("BodyVelocity")
push.maxForce = Vector3.new(3,3,3)
push.velocity = you.Torso.CFrame.lookVector*-40
push.Parent = tensai
up = Instance.new("BodyVelocity")
up.maxForce = Vector3.new(3,3,3)
up.velocity = tensai.CFrame.lookVector*40
function pp(part)
up:clone().Parent = part
wait(2)
part.BodyVelocity:Remove()
end
tensai.Touched:connect(pp)
wait(1.8)
tensai:Remove()
you.Animate.Disabled = false
you.Humanoid.WalkSpeed = 16
busy = false
end
end
end
mouse.KeyDown:connect(kk)

function ll(key)
key:lower()
if key == "l"
then if busy == false then
busy = true
you.Humanoid.WalkSpeed = 0
you.Animate.Disabled = true
msg:Chat(you.Head, "BBOSS style: Summonning!", Enum.ChatColor.Red)
push = Instance.new("BodyVelocity")
push.maxForce = Vector3.new(3,3,3)
push.velocity = you.Torso.CFrame.lookVector*-80
push.Parent = you.Head
wten = Instance.new("Weld")
tensai = Instance.new("Part")
tensai.Parent = game.Workspace
tensai.Anchored = false
tensai.CanCollide = false
tensai.Size = Vector3.new(12, 9.6, 39)
tensai.Transparency = 0
wten.Parent = you.Torso
wten.Part1 = you.Torso
wten.Part0 = tensai
wten.C0 = wten.C0*CFrame.new(0,  1,  0)
wten.C1 = wten.C1*CFrame.new(0,  -8,  0)
lobby = Instance.new("SpecialMesh")
lobby.MeshType = "FileMesh"
lobby.MeshId = "http://www.roblox.com/asset/?id=15158219"
lobby.Parent = tensai
lobby.TextureId = "http://www.roblox.com/asset/?id=15158208"
lobby.Scale = Vector3.new(3, 3, 3)

function pp(part)
push:clone().Parent = part
wait(1)
part.BodyVelocity:Remove()
end
tensai.Touched:connect(pp)
wait(3)
wten:Remove()
tensai:Remove()
push:Remove()
you.Animate.Disabled = false
you.Humanoid.WalkSpeed = 16
busy = false
end
end
end
mouse.KeyDown:connect(ll)
