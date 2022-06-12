Player = game.Players.MrMayhem242
char = Player.Character
mouse = Player:GetMouse()
run = game:GetService("RunService")
g = Instance.new("Part", game.Lighting)
ra = char["Right Arm"]
la = char["Left Arm"]
rl = char["Right Leg"]
ll = char["Left Leg"]
rs = char.Torso["Right Shoulder"]
ls = char.Torso["Left Shoulder"]
lh = char.Torso["Left Hip"]
rh = char.Torso["Right Hip"]
ringmesh = "http://www.roblox.com/asset/?id=3270017"
handmesh = "http://www.roblox.com/asset/?id=37241605"
root = char.HumanoidRootPart.RootJoint
BladeMesh = "http://www.roblox.com/asset/?id=94840342"
glade = false
use = false
slash = false
darkpulse = false
beat = false
clash = false
lightattacktime = 0.1
heavyattacktime = 0.1
pulseattacktime = 3
jump = char.Humanoid.Jump
function Equip(key)
if key == "r" and glade == false and use == false then
char.Humanoid.WalkSpeed = 0
char.Animate.Disabled = true
use = true
glade = true
g.Anchored = true
g.Reflectance = 0.3
g.CanCollide = false
g.TopSurface = 0
g.Name = "Glade"
gfire = Instance.new("Fire", g)
gfire.Size = 10
gfire.Color = Color3.new(0, 0, 0)
gfire.SecondaryColor = Color3.new(10, 10, 10)
g.Parent = Workspace
g.BottomSurface = 0
g.BrickColor = BrickColor.new("Really black")
g.Size = Vector3.new(1, 8, 1)
gmesh = Instance.new("SpecialMesh", g)
gmesh.MeshType = "FileMesh"
gmesh.MeshId = BladeMesh
gmesh.Scale = Vector3.new(1, 0, 0.8)
game.Lighting.TimeOfDay = "1:00:00"
gate1 = Instance.new("Part", Workspace)
gate1.Anchored = true
gate1.Size = Vector3.new(1, 1, 1)
gate1.TopSurface = 0
gate1.BottomSurface = 0
gate1.BrickColor = BrickColor.new("Really black")
gate1.CanCollide = false
gate1.CFrame = char.Torso.CFrame *CFrame.new(0, -3, -5)
gate1.CFrame = gate1.CFrame *CFrame.Angles(1.57, 0, 0)
gatemesh = Instance.new("SpecialMesh", gate1)
gatemesh.MeshType = "FileMesh"
gatemesh.MeshId = ringmesh
gatemesh.Scale = Vector3.new(0, 0, 0)
root.C0 = root.C0 *CFrame.Angles(0, 0, 1.57)
g.CFrame = gate1.CFrame
for armriseinanepicway = 1,5 do
rs.C0 = rs.C0 *CFrame.Angles(-0.314, 0, 0)
run.Stepped:wait()
end
game:GetService("Chat"):Chat(char.Head, "Rise, Sabeles")
for expandgate1 = 1,5 do
gatemesh.Scale = gatemesh.Scale +Vector3.new(1, 1, 0.1)
run.Stepped:wait()
end
gate2 = gate1:clone()
gate2.Parent = Workspace
gate2.CFrame = gate1.CFrame
for expandgate1 = 1,5 do
gate2.Mesh.Scale = gate2.Mesh.Scale +Vector3.new(1, 1, 0.1)
run.Stepped:wait()
end
gate3 = gate2:clone()
gate3.Parent = Workspace
gate3.CFrame = gate2.CFrame
for expandgate1 = 1,5 do
gate3.Mesh.Scale = gate3.Mesh.Scale +Vector3.new(1, 1, 0.1)
run.Stepped:wait()
end
gate4 = gate3:clone()
gate4.Parent = Workspace
gate4.CFrame = gate3.CFrame
for expandgate1 = 1,5 do
gate4.Mesh.Scale = gate4.Mesh.Scale +Vector3.new(1, 1, 0.1)
run.Stepped:wait()
end
gate5 = gate4:clone()
gate5.Parent = Workspace
gate5.CFrame = gate1.CFrame
for expandgate1 = 1,5 do
gate5.Mesh.Scale = gate5.Mesh.Scale +Vector3.new(1, 1, 0.1)
run.Stepped:wait()
end
 
g.CFrame = gate1.CFrame
g.CFrame = g.CFrame *CFrame.Angles(-1.57, 0, 0)
 
for growmyblade = 1,50 do
gmesh.Scale = gmesh.Scale +Vector3.new(0, 0.02, 0)
g.CFrame = g.CFrame *CFrame.new(0, 0.1, 0)
run.Stepped:wait()
end
 
g.Anchored = false
weld = Instance.new('Weld', g)
weld.Part0 = g
weld.Part1 = ra
weld.C0 = CFrame.new(0, -2.5, 1)
weld.C0 = weld.C0 *CFrame.Angles(1.57, 0, 0)
for spinlikeaboss = 1,5 do
root.C0 = root.C0 *CFrame.Angles(0, 0, -0.314)
run.Stepped:wait()
end
 
function Damage(g)
h = g.Parent:findFirstChild("Humanoid")
if h ~= nil and h.Parent.Name ~= char.Name and slash == true then
h.Health = h.Health -3
end
end
g.Touched:connect(Damage)
function Clash(g)
b = g.Parent:findFirstChild("Glade")
if b ~= nil and clash == false and slash == true then
clash = true
lol = Instance.new("Part", Workspace)
lol.FormFactor = "Custom"
lol.Anchored = true
lol.CFrame = b.CFrame
lol.CanCollide = false
lol.TopSurface = 0
lol.BottomSurface = 0
lol.BrickColor = BrickColor.new("White")
lolm = Instance.new("SpecialMesh", lol)
lolm.MeshType = "Sphere"
for kaboom = 1,4 do
lolm.Scale = lolm.Scale +Vector3.new(0.05, 0.5, 0.05)
char.Torso.CFrame = char.Torso.CFrame *CFrame.new(0, 0, -0.1)
lol.Transparency = lol.Transparency +0.32
run.Stepped:wait()
end
lol:remove()
clash = false
end
end
g.Touched:connect(Clash)
gate1.BrickColor = BrickColor.new("White")
gate2.BrickColor = BrickColor.new("White")
gate3.BrickColor = BrickColor.new("White")
gate4.BrickColor = BrickColor.new("White")
gate5.BrickColor = BrickColor.new("White")
for fadebacktoSables = 1,20 do
gate1.Transparency = gate1.Transparency +0.05
gate2.Transparency = gate2.Transparency +0.05
gate3.Transparency = gate3.Transparency +0.05
gate4.Transparency = gate4.Transparency +0.05
gate5.Transparency = gate5.Transparency +0.05
run.Stepped:wait()
end
gate1:remove()
gate2:remove()
gate3:remove()
gate4:remove()
gate5:remove()
rs.C0 = CFrame.new(1, 0.5, 0)
rs.C0 = rs.C0 *CFrame.Angles(0, 1.57, 0)
char.Humanoid.WalkSpeed = 16
char.Animate.Disabled = false
use = false
end
end
mouse.KeyDown:connect(Equip)
 
function UnEquip(key)
if key == "r" and use == false and glade == true and slash == false and beat == false then
use = true
glade = false
g.BrickColor = BrickColor.new("White")
for fade = 1,20 do
g.Transparency = g.Transparency +0.05
run.Stepped:wait()
end
g:remove()
script.Disabled = true
wait()
script.Disabled = false
end
end
mouse.KeyDown:connect(UnEquip)
 
function LightAttack(key)
if key == "q" and glade == true and use == false and slash == false and jump == false then
char.Animate.Disabled = true
use = true
slash = true
rs.C0 = CFrame.new(1, 0.5, 0)
rs.C0 = rs.C0 *CFrame.Angles(0, 1.57, 0)
ls.C0 = CFrame.new(-1, 0.5, 0)
ls.C0 = ls.C0 *CFrame.Angles(0, -1.57, 0)
rs.C0 = rs.C0 *CFrame.Angles(1.57, 0, 0)
rs.C0 = rs.C0 *CFrame.Angles(0, 3.14, 0)
rs.C0 = rs.C0 *CFrame.Angles(0, 0, -1)
lh.C0 = lh.C0 *CFrame.Angles(-0.1, 0, 0)
rh.C0 = rh.C0 *CFrame.Angles(-0.1, 0, 0)
for slash = 1,8 do
root.C0 = root.C0 *CFrame.Angles(0, 0, -0.1)
rs.C0 = rs.C0 *CFrame.Angles(0, 0, -0.5)
ls.C0 = ls.C0 *CFrame.Angles(-0.05, 0, 0)
run.Stepped:wait()
end
wait(lightattacktime)
root.C0 = root.C0 *CFrame.Angles(0, 0, 0.8)
rs.C0 = CFrame.new(1, 0.5, 0)
rs.C0 = rs.C0 *CFrame.Angles(0, 1.57, 0)
ls.C0 = CFrame.new(-1, 0.5, 0)
ls.C0 = ls.C0 *CFrame.Angles(0, -1.57, 0)
lh.C0 = lh.C0 *CFrame.Angles(0.1, 0, 0)
rh.C0 = rh.C0 *CFrame.Angles(0.1, 0, 0)
char.Animate.Disabled = false
slash = false
use = false
end
end
mouse.KeyDown:connect(LightAttack)
 
function HeavyAttack(key)
if key == "e" and glade == true and use == false and slash == false and char.Humanoid.Jump ~= true then
char.Animate.Disabled = true
slash = true
use = true
rs.C0 = rs.C0 *CFrame.Angles(0, 0, 4)
rs.C0 = rs.C0 *CFrame.Angles(-0.4, 0, 0)
ls.C0 = ls.C0 *CFrame.Angles(-0.1, 0, 0)
lh.C0 = lh.C0 *CFrame.Angles(-0.1, 0, 0)
rh.C0 = rh.C0 *CFrame.Angles(-0.1, 0, 0)
for slashdown = 1,8 do
root.C0 = root.C0 *CFrame.Angles(0, 0, 0.01)
rs.C0 = rs.C0 *CFrame.Angles(0, 0, -0.5)
ls.C0 = ls.C0 *CFrame.Angles(-0.05, 0, 0)
ls.C0 = ls.C0 *CFrame.Angles(0, 0, 0.05)
run.Stepped:wait()
end
wait(heavyattacktime)
root.C0 = root.C0 *CFrame.Angles(0, 0, -0.08)
rs.C0 = CFrame.new(1, 0.5, 0)
rs.C0 = rs.C0 *CFrame.Angles(0, 1.57, 0)
ls.C0 = CFrame.new(-1, 0.5, 0)
ls.C0 = ls.C0 *CFrame.Angles(0, -1.57, 0)
lh.C0 = lh.C0 *CFrame.Angles(0.1, 0, 0)
rh.C0 = rh.C0 *CFrame.Angles(0.1, 0, 0)
char.Animate.Disabled = false
use = false
slash = false
end
end
mouse.KeyDown:connect(HeavyAttack)
 
function JumpingLightAttack(key)
if key == "q" and use == false and glade == true and slash == false and char.Humanoid.Jump ~= false then
char.Animate.Disabled = true
use = true
slash = true
rs.C0 = rs.C0 *CFrame.Angles(0, 0, 4)
ls.C0 = ls.C0 *CFrame.Angles(-0.1, 0, 0)
lh.C0 = lh.C0 *CFrame.Angles(-0.1, 0, 0)
rh.C0 = rh.C0 *CFrame.Angles(-0.1, 0, 0)
for movedownlikeaboss = 1,8 do
rs.C0 = rs.C0 *CFrame.Angles(0, 0, -0.5)
ls.C0 = ls.C0 *CFrame.Angles(-0.05, 0, 0)
run.Stepped:wait()
end
wait(lightattacktime)
lh.C0 = lh.C0 *CFrame.Angles(0.1, 0, 0)
rh.C0 = rh.C0 *CFrame.Angles(0.1, 0, 0)
rs.C0 = CFrame.new(1, 0.5, 0)
rs.C0 = rs.C0 *CFrame.Angles(0, 1.57, 0)
ls.C0 = CFrame.new(-1, 0.5, 0)
ls.C0 = ls.C0 *CFrame.Angles(0, -1.57, 0)
char.Animate.Disabled = false
use = false
slash = false
end
end
mouse.KeyDown:connect(JumpingLightAttack)
 
function BeatMode(key)
if key == "f" and use == false and beat == false and slash == false and glade == true then
char.Animate.Disabled = true
char.Humanoid.WalkSpeed = 0
use = true 
beat = true
rs.C0 = rs.C0 *CFrame.Angles(0, 0, 1.57)
rs.C0 = rs.C0 *CFrame.Angles(0, 1, 0)
ls.C0 = ls.C0 *CFrame.Angles(-0.1, 0, 0)
lh.C0 = lh.C0 *CFrame.Angles(-0.1, 0, 0)
rh.C0 = rh.C0 *CFrame.Angles(-0.1, 0, 0)
game:GetService("Chat"):Chat(char.Head, "Beat Drive!")
small = Instance.new("Part", char)
small.FormFactor = "Custom"
small.CanCollide = false
small.Transparency = 1
small.BrickColor = BrickColor.new("Really black")
small.Size = Vector3.new(0.2, 0.2, 0.2)
small.CFrame = char.Torso.CFrame
smallm = Instance.new("BlockMesh", small)
smallm.Scale = Vector3.new(5.2, 10.2, 5.2)
gg = Instance.new("Part", Workspace)
gg.Anchored = false
gg.Reflectance = 0.3
gg.CanCollide = false
gg.TopSurface = 0
gg.Transparency = 0.8
gg.Name = "Glade"
gg.BottomSurface = 0
gg.BrickColor = BrickColor.new("Really black")
gg.Size = Vector3.new(1, 6, 1)
ggmesh = Instance.new("SpecialMesh", gg)
ggmesh.MeshType = "FileMesh"
ggmesh.MeshId = BladeMesh
ggmesh.Scale = Vector3.new(1.3, 1, 1.3)
ggweld = Instance.new('Weld', gg)
ggweld.Part0 = gg
ggweld.Part1 = ra
ggweld.C0 = CFrame.new(0, -2.5, 1)
ggweld.C0 = ggweld.C0 *CFrame.Angles(1.57, 0, 0)
rap = small:clone()
rap.Parent = char
rap.CFrame = ra.CFrame
rapw = Instance.new('Weld', rap)
rapw.Part0 = rap
rapw.Part1 = ra
 
lap = small:clone()
lap.Parent = char
lap.CFrame = la.CFrame
lapw = Instance.new('Weld', lap)
lapw.Part0 = lap
lapw.Part1 = la
 
rlp = small:clone()
rlp.Parent = char
rlp.CFrame = rl.CFrame
rlpw = Instance.new('Weld', rlp)
rlpw.Part0 = rlp
rlpw.Part1 = rl
 
llp = small:clone()
llp.Parent = char
llp.CFrame = ll.CFrame
llpw = Instance.new('Weld', llp)
llpw.Part0 = llp
llpw.Part1 = ll
 
t = small:clone()
t.Parent = char
t.Mesh.Scale = Vector3.new(10.2, 10.2, 5.2)
t.CFrame = char.Torso.CFrame
tw = Instance.new('Weld', t)
tw.Part0 = t
tw.Part1 = char.Torso
 
boom = small:clone()
boom.Anchored = true
boom.TopSurface = 0
boom.BottomSurface = 0
boom.Transparency = 0
boom.Parent = char
boom.Mesh:remove()
boommesh = Instance.new("SpecialMesh",boom)
boommesh.MeshType = "Sphere"
boom.CFrame = char.Torso.CFrame
for boooooooooom = 1,20 do
boommesh.Scale = boommesh.Scale +Vector3.new(2, 2, 2)
boom.Transparency = boom.Transparency +0.05
run.Stepped:wait()
end
 
for fadeout = 1,15 do
rap.Transparency = rap.Transparency -0.01
lap.Transparency = lap.Transparency -0.01
rlp.Transparency = rlp.Transparency -0.01
llp.Transparency = llp.Transparency -0.01
t.Transparency = t.Transparency -0.01
run.Stepped:wait()
end
ls.C0 = ls.C0 *CFrame.Angles(0.1, 0, 0)
lh.C0 = lh.C0 *CFrame.Angles(0.1, 0, 0)
rh.C0 = rh.C0 *CFrame.Angles(0.1, 0, 0)
rs.C0 = CFrame.new(1, 0.5, 0)
rs.C0 = rs.C0 *CFrame.Angles(0, 1.57, 0)
lightattacktime = 0.000000000000000000001
heavyattacktime = 0.000000000000000000001
char.Animate.Disabled = false
char.Humanoid.WalkSpeed = 16
use = false
wait(20)
for fadein = 1,15 do
rap.Transparency = rap.Transparency +0.01
lap.Transparency = lap.Transparency +0.01
rlp.Transparency = rlp.Transparency +0.01
llp.Transparency = llp.Transparency +0.01
t.Transparency = t.Transparency +0.01
run.Stepped:wait()
end
lightattacktime = 0.2
heavyattacktime = 0.4
rap:remove()
lap:remove()
llp:remove()
rlp:remove()
t:remove()
gg:remove()
beat = false
end
end
mouse.KeyDown:connect(BeatMode)
 
function DarkPulse(key)
if key == "z" and use == false and glade == true and slash == false and darkpulse == false then
char.Animate.Disabled = true
char.Humanoid.WalkSpeed = 0
darkpulse = true
use = true
ls.C0 = ls.C0 *CFrame.Angles(-0.1, 0, 0)
rh.C0 = rh.C0 *CFrame.Angles(-0.1, 0, 0)
lh.C0 = lh.C0 *CFrame.Angles(-0.1, 0, 0)
gate1 = Instance.new("Part", Workspace)
gate1.Anchored = true
gate1.Size = Vector3.new(1, 1, 1)
gate1.TopSurface = 0
gate1.BottomSurface = 0
gate1.BrickColor = BrickColor.new("Really black")
gate1.CanCollide = false
gate1.CFrame = char.Torso.CFrame *CFrame.new(0, 0, -5)
gatemesh = Instance.new("SpecialMesh", gate1)
gatemesh.MeshType = "FileMesh"
gatemesh.MeshId = ringmesh
gatemesh.Scale = Vector3.new(0, 0, 0)
root.C0 = root.C0 *CFrame.Angles(0, 0, 1.57)
for armriseinanepicway = 1,5 do
rs.C0 = rs.C0 *CFrame.Angles(-0.314, 0, 0)
run.Stepped:wait()
end
game:GetService("Chat"):Chat(char.Head, "Judgement time...")
for expandgate1 = 1,5 do
gatemesh.Scale = gatemesh.Scale +Vector3.new(1, 1, 0.1)
run.Stepped:wait()
end
gate2 = gate1:clone()
gate2.Parent = Workspace
gate2.CFrame = gate1.CFrame
for expandgate1 = 1,5 do
gate2.Mesh.Scale = gate2.Mesh.Scale +Vector3.new(1, 1, 0.1)
run.Stepped:wait()
end
gate3 = gate2:clone()
gate3.Parent = Workspace
gate3.CFrame = gate2.CFrame
for expandgate1 = 1,5 do
gate3.Mesh.Scale = gate3.Mesh.Scale +Vector3.new(1, 1, 0.1)
run.Stepped:wait()
end
gate4 = gate3:clone()
gate4.Parent = Workspace
gate4.CFrame = gate3.CFrame
for expandgate1 = 1,5 do
gate4.Mesh.Scale = gate4.Mesh.Scale +Vector3.new(1, 1, 0.1)
run.Stepped:wait()
end
gate5 = gate4:clone()
gate5.Parent = Workspace
gate5.CFrame = gate1.CFrame
for expandgate1 = 1,5 do
gate5.Mesh.Scale = gate5.Mesh.Scale +Vector3.new(1, 1, 0.1)
run.Stepped:wait()
end
hand = gate1:clone()
hand.Parent = Workspace
hand.CFrame = gate1.CFrame *CFrame.new(0, 4, 0)
hand.Mesh.MeshId = handmesh
hand.Mesh.Scale = Vector3.new(10, 10, 0)
for handgrowth = 1,20 do
hand.Mesh.Scale = hand.Mesh.Scale +Vector3.new(0, 0, 0.5)
hand.CFrame = hand.CFrame *CFrame.new(0, 0, -0.2)
run.Stepped:wait()
end
ball = gate1:clone()
ball.Parent = Workspace
ball.Transparency = 1
ball.CFrame = hand.CFrame *CFrame.new(0, 0, -3)
ball.Mesh:remove()
ball.Shape = "Ball"
stunning = false
function Stunned(ball)
h = ball.Parent:findFirstChild("Humanoid")
if h ~= nil and h.Parent.Name ~= char.Name and stunning == false then
stunning = true
tor = h.Parent
shroud = Instance.new("Part",Workspace)
shroud.Anchored = true
shroud.CanCollide = false
shroud.TopSurface = 0
shroud.BottomSurface = 0
shroud.BrickColor = BrickColor.new("Really black")
shroud.Transparency = 1
shroud.Shape = "Ball"
shroud.Size = Vector3.new(1, 1, 1)
shroud.Name = "Shroud"
shroud.CFrame = tor.Torso.CFrame
for shroudgrow = 1,8 do
shroud.Size = shroud.Size +Vector3.new(1, 1, 1)
shroud.Transparency = shroud.Transparency -0.1
shroud.CFrame = tor.Torso.CFrame
run.Stepped:wait()
end
 
for drain = 1,60 do
tor.Humanoid.Health = tor.Humanoid.Health -1
char.Humanoid.MaxHealth = char.Humanoid.MaxHealth +1
shroud.CFrame = tor.Torso.CFrame
run.Stepped:wait()
end
game:GetService("Chat"):Chat(char.Head, "Return, Sabeles")
shroud:remove()
tor.Humanoid.PlatformStand = true
stunning = false
end
end
ball.Touched:connect(Stunned)
 
 
for fadeinthejudgement = 1,10 do
ball.Transparency = ball.Transparency -0.1
run.Stepped:wait()
end
for emplode = 1,25 do
ball.Transparency = ball.Transparency +0.035
ball.Size = ball.Size +Vector3.new(4, 4, 4)
ball.CFrame = hand.CFrame *CFrame.new(0, 0, -3)
run.Stepped:wait()
end
ball:remove()
wait(1)
gate1.BrickColor = BrickColor.new("White")
gate2.BrickColor = BrickColor.new("White")
gate3.BrickColor = BrickColor.new("White")
gate4.BrickColor = BrickColor.new("White")
gate5.BrickColor = BrickColor.new("White")
hand.BrickColor = BrickColor.new("White")
for fadebacktoSables = 1,20 do
gate1.Transparency = gate1.Transparency +0.05
gate2.Transparency = gate2.Transparency +0.05
gate3.Transparency = gate3.Transparency +0.05
gate4.Transparency = gate4.Transparency +0.05
gate5.Transparency = gate5.Transparency +0.05
hand.Transparency = hand.Transparency +0.05
run.Stepped:wait()
end
gate1:remove()
gate2:remove()
gate3:remove()
gate4:remove()
gate5:remove()
hand:remove()
 
rs.C0 = CFrame.new(1, 0.5, 0)
rs.C0 = rs.C0 *CFrame.Angles(0, 1.57, 0)
root.C0 = root.C0 *CFrame.Angles(0, 0, -1.57)
ls.C0 = ls.C0 *CFrame.Angles(0.1, 0, 0)
rh.C0 = rh.C0 *CFrame.Angles(0.1, 0, 0)
lh.C0 = lh.C0 *CFrame.Angles(0.1, 0, 0)
char.Animate.Disabled = false
use = false
char.Humanoid.WalkSpeed = 16
wait(pulseattackwait)
darkpulse = false
end
end
mouse.KeyDown:connect(DarkPulse)
 
function Wave(key)
if key == "x" and use == false then
use = true
char.Animate.Disabled = true
rs.C0 = rs.C0 *CFrame.Angles(-1.57, 0, 0)
rs.C0 = rs.C0 *CFrame.Angles(0, 0, 2)
b = Instance.new("Part", Workspace)
b.Anchored = true
b.CanCollide = false
b.Size = Vector3.new(10, 10, 10)
b.BrickColor = BrickColor.new("Really black")
b.CFrame = char.Torso.CFrame *CFrame.new(0, 0, -8)
m = Instance.new("SpecialMesh", b)
m.MeshType = "FileMesh"
m.MeshId = "http://www.roblox.com/asset/?id=3270017"
game:GetService("Chat"):Chat(char.Head, "Hmph, perish")
function Pulse(b)
h = b.Parent:findFirstChild("Humanoid")
dmg = false
if h ~= nil and dmg == false and h.Parent.Name ~= char.Name then
hp = h.Parent
dmg = true
h.Health = h.Health -5
for knock = 1,10 do
h.Parent.Torso.CFrame = h.Parent.Torso.CFrame *CFrame.new(0, 0, 1)
run.Stepped:wait()
end
end
end
b.Touched:connect(Pulse)
for wave = 1,8 do
rs.C0 = rs.C0 *CFrame.Angles(0, 0, -0.25)
run.Stepped:wait()
end
for burst = 1,20 do
m.Scale = m.Scale +Vector3.new(1.5, 1.5, 0)
b.Transparency = b.Transparency +0.05
run.Stepped:wait()
end
rs.C0 = CFrame.new(1, 0.5, 0)
rs.C0 = rs.C0 *CFrame.Angles(0, 1.57, 0)
b:remove()
char.Animate.Disabled = false
use = false
end
end
mouse.KeyDown:connect(Wave)
 
