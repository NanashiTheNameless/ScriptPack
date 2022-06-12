plr = game:service'Players'.LocalPlayer
char = plr.Character
mouse = plr:GetMouse()
humanoid = char:findFirstChild("Humanoid")
torso = char:findFirstChild("Torso")
head = char.Head
ra = char:findFirstChild("Right Arm")
la = char:findFirstChild("Left Arm")
rl = char:findFirstChild("Right Leg")
ll = char:findFirstChild("Left Leg")
rs = torso:findFirstChild("Right Shoulder")
ls = torso:findFirstChild("Left Shoulder")
rh = torso:findFirstChild("Right Hip")
lh = torso:findFirstChild("Left Hip")
neck = torso:findFirstChild("Neck")
rj = char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
anim = char:findFirstChild("Animate")
rootpart = char:findFirstChild("HumanoidRootPart")
camera = workspace.CurrentCamera
falling = false
if anim then
anim:Destroy()
end
keylist = {}
rj.C0 = CFrame.new()
rj.C1 = CFrame.new()
thriller = Instance.new("Sound", head)
thriller.SoundId = "http://www.roblox.com/asset/?id=154202962"
thriller.Volume = 10
thriller.Looped = true
barrel_roll = Instance.new("Sound", head)
barrel_roll.SoundId = "http://www.roblox.com/asset/?id=159096151"
barrel_roll.Volume = 10
barrel_roll.Looped = true
gold_digger = Instance.new("Sound", head)
gold_digger.SoundId = "http://www.roblox.com/asset/?id=152391882"
gold_digger.Volume = 10
gold_digger.Looped = true
guilty_crown = Instance.new("Sound", head)
guilty_crown.SoundId = "http://www.roblox.com/asset/?id=142489916"
guilty_crown.Volume = 10
guilty_crown.Looped = true
blurred_lines = Instance.new("Sound", head)
blurred_lines.SoundId = "http://www.roblox.com/asset/?id=149840361"
blurred_lines.Volume = 10
blurred_lines.Looped = true
gentleman = Instance.new("Sound", head)
gentleman.SoundId = "http://www.roblox.com/asset/?id=144540957"
gentleman.Volume = 10
gentleman.Looped = true
fox_say = Instance.new("Sound", head)
fox_say.SoundId = "http://www.roblox.com/asset/?id=145505853"
fox_say.Volume = 10
fox_say.Looped = true
durk = Instance.new("Sound", head)
durk.SoundId = "http://www.roblox.com/asset/?id="
durk.Volume = 10
durk.Looped = true
sax_guy = Instance.new("Sound", head)
sax_guy.SoundId = "http://www.roblox.com/asset/?id=148952593"
sax_guy.Volume = 10
sax_guy.Looped = true
imhappy = Instance.new("Sound", head)
imhappy.SoundId = "http://www.roblox.com/asset/?id=142435409"
imhappy.Volume = 10
imhappy.Looped = true
rick_astley = Instance.new("Sound", head)
rick_astley.SoundId = "http://www.roblox.com/asset/?id=155188958"
rick_astley.Volume = 10
rick_astley.Looped = true
brony_music = Instance.new("Sound", head)
brony_music.SoundId = "http://www.roblox.com/asset/?id=148120117"
brony_music.Volume = 10
brony_music.Looped = true
spitfire = Instance.new("Sound", head)
spitfire.SoundId = "http://www.roblox.com/asset/?id=151663136"
spitfire.Volume = 10
spitfire.Looped = true
burn_dem = Instance.new("Sound", head)
burn_dem.SoundId = "http://www.roblox.com/asset/?id=144912283"
burn_dem.Volume = 10
burn_dem.Looped = true
if char:findFirstChild("Shirt") then
char:findFirstChild("Shirt"):Destroy()
end
if char:findFirstChild("Pants") then
char:findFirstChild("Pants"):Destroy()
end
if char:findFirstChild("Shirt Graphic") then
char:findFirstChild("Shirt Graphic"):Destroy()
end
Instance.new("HumanoidController", game:service'ControllerService')
Instance.new("SkateboardController", game:service'ControllerService')
Instance.new("VehicleController", game:service'ControllerService')
--minimize
rh.Parent = nil
lh.Parent = nil
rs.Parent = nil
ls.Parent = nil
neck.Parent = nil
rj.Parent = nil
rl.FormFactor = "Custom"
ll.FormFactor = "Custom"
ra.FormFactor = "Custom"
la.FormFactor = "Custom"
torso.FormFactor = "Custom"
head.FormFactor = "Custom"
rootpart.FormFactor = "Custom"
rootpart.Size = Vector3.new(.4, .4, .2)
rl.Size = Vector3.new(.2, .4, .2)
ll.Size = Vector3.new(.2, .4, .2)
ra.Size = Vector3.new(.2, .4, .2)
la.Size = Vector3.new(.2, .4, .2)
torso.Size = Vector3.new(.4, .4, .2)
head.Size = Vector3.new(.4, .2, .2)
rh.Parent = torso
lh.Parent = torso
rs.Parent = torso
ls.Parent = torso
neck.Parent = torso
rj.Parent = rootpart
if torso:findFirstChild("roblox") then
local p = Instance.new("Part", char)
p.FormFactor = "Custom"
p.Size = torso.Size
p.Transparency = 1
p:BreakJoints()
local w = Instance.new("Weld", char)
w.Part0 = p
w.Part1 = torso
torso:findFirstChild("roblox").Parent = p
end
mesh1 = Instance.new("SpecialMesh", torso)
mesh1.Name = "Mesh"
mesh1.Scale = torso.Size - Vector3.new(torso.Size.x/2, torso.Size.y/2, 0)
mesh1.MeshId = "rbxasset://fonts/torso.mesh"
mesh2 = Instance.new("SpecialMesh", la)
mesh2.Name = "Mesh"
mesh2.Scale = la.Size - Vector3.new(0, la.Size.y/2, 0)
mesh2.MeshId = "rbxasset://fonts/leftarm.mesh"
mesh3 = Instance.new("SpecialMesh", ra)
mesh3.Name = "Mesh"
mesh3.Scale = ra.Size - Vector3.new(0, ra.Size.y/2, 0)
mesh3.MeshId = "rbxasset://fonts/rightarm.mesh"
mesh4 = Instance.new("SpecialMesh", ll)
mesh4.Name = "Mesh"
mesh4.Scale = ll.Size - Vector3.new(0, ll.Size.y/2, 0)
mesh4.MeshId = "rbxasset://fonts/leftleg.mesh"
mesh5 = Instance.new("SpecialMesh", rl)
mesh5.Name = "Mesh"
mesh5.Scale = rl.Size - Vector3.new(0, rl.Size.y/2, 0)
mesh5.MeshId = "rbxasset://fonts/rightleg.mesh"
--0.3 = 1.5, 0.1 = 0.5, 0.2 = 1
ls.C0 = CFrame.new(-.3,.1,0)
ls.C1 = CFrame.new(0,.1,0)
rs.C0 = CFrame.new(.3,.1,0)
rs.C1 = CFrame.new(0,.1,0)
rh.C0 = CFrame.new(.1,-.2,0)
rh.C1 = CFrame.new(0, .2, 0)
lh.C0 = CFrame.new(-.1,-.2,0)
lh.C1 = CFrame.new(0, .2, 0)
neck.C0 = CFrame.new(0,.2,0)
neck.C1 = CFrame.new(0,-.1,0)
bodyc = char:findFirstChild("Body Colors")
if bodyc then
bodyc:Destroy()
end
wait(0.1)
skincolor = {"Reddish brown", "Brick yellow", "Pastel brown", "Nougat", "Brown", "Cool yellow", "Dark orange", "Neon orange"}
clothcolor = {"Bright green", "Bright red", "Bright blue", "Light stone grey", "New Yeller", "Really black", "Lavender", "Medium green", "White", "Bright Yellow"}
skincolorrandom = BrickColor.new(skincolor[math.random(1, #skincolor)])
clothcolorrandom = BrickColor.new(clothcolor[math.random(1, #clothcolor)])
function restorecolors()
for _,bp in pairs(char:children()) do
if bp:IsA("BasePart") then
bp.BrickColor = skincolorrandom
end
end
torso.BrickColor = clothcolorrandom
ll.BrickColor = clothcolorrandom
rl.BrickColor = clothcolorrandom
end
restorecolors()
customSkinCol1 = BrickColor.new("Pastel orange")
customShirtCol1 = BrickColor.new("Bright red")
customPantsCol1 = customSkinCol1
customShirtImg1 = "http://www.roblox.com/asset/?id=148197441"
customSkinCol2 = {"Camo", "Earth green"}
function customCols1()
    for _,bp in pairs(char:children()) do
    if bp == la or bp == ra or bp == head then
    bp.BrickColor = customSkinCol1
    elseif bp == torso then
    bp.BrickColor = customShirtCol1
    elseif bp == ll or bp == rl then
    bp.BrickColor = customSkinCol1
    end
    end
end
function customCols2()
    for _,bp in pairs(char:children()) do
    if bp == la or bp == ra or bp == head then
    bp.BrickColor = BrickColor.new(customSkinCol2[math.random(1, 2)])
    elseif bp == torso then
    bp.BrickColor = clothcolorrandom
    elseif bp == ll or bp == rl then
    bp.BrickColor = clothcolorrandom
    end
    end
end
local LightForTorso = Instance.new("PointLight", head)
LightForTorso.Color = torso.BrickColor.Color
LightForTorso.Range = 7
LightForTorso.Brightness = 1.5
local slidecount = 0
local slidecountmax = 0
local anim = ""
local lastanim = anim
local speed = 0
local looking = false
local dancing = false
local thrill = false
local barrelroll = false
local gold = false
local foxie = false
local durka = false
local saxguy = false
local happy = false
local rick = false
local bronymusic = false
local sheddy = false
local burndem = false
local global_wait = 0
para = nil
count = 0
countspeed = 1
sine = 0
sinespeed = 1
humanoid.WalkSpeed = 11
local controllerService = game:GetService("ControllerService")
local controller = controllerService:GetChildren()[1]
local colors = {clothcolorrandom.Name, skincolorrandom.Name}
humanoid.Died:connect(function()
for cframe_parts = 0, 100 do
local p = Instance.new("Part")
p.FormFactor = "Custom"
p.BrickColor = BrickColor.new(colors[math.random(1, #colors)])
p.Size = Vector3.new(1, 1, 1)
Instance.new("BlockMesh", p).Scale = Vector3.new(0.05, 0.05, 0.05)
p.Locked = true
p.CanCollide = false
p.Anchored = true
p.CFrame = torso.CFrame * CFrame.Angles(math.random(-36, 36),math.random(-36, 36),math.random(-36, 36))
p.Parent = workspace
game:service'Debris':AddItem(p, 5)
coroutine.wrap(function()
while wait() do
if p ~= nil then
p.CFrame = p.CFrame * CFrame.new(0, 0.085, 0)
p.Mesh.Scale = p.Mesh.Scale - Vector3.new(0.005, 0, 0.005) + Vector3.new(0, 0.01, 0)
p.Transparency = p.Transparency + 0.015
else
break
end
end
end)()
end
for _,v in pairs(char:children()) do
if v:IsA("Part") then
v:Destroy()
end
end
end)
mouse.KeyDown:connect(function(k)
keylist[k] = true
if string.byte(k) == 50 then
if dancing then return end
sitting = not sitting
if sitting then
local ray = Ray.new(torso.Position, Vector3.new(0, -1, 0))
local hitz,enz = workspace:FindPartOnRay(ray, char)
if hitz then
controller.Parent = nil
humanoid.WalkSpeed = 0
coroutine.wrap(function()
while wait() do
humanoid.PlatformStand = true
if sitting == false then humanoid.PlatformStand = false break end
end
end)()
rj.C0 = CFrame.new(0, -0.35, 0) * CFrame.Angles(math.rad(10), 0, 0)
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(math.pi/2-math.rad(10), 0, -math.pi/16)
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(math.pi/2-math.rad(10), 0, math.pi/16)
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(-math.rad(10), 0, -math.pi/10)
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(-math.rad(10), 0, math.pi/10)
miniweld = Instance.new("Weld", char)
miniweld.C0 = hitz.CFrame:toObjectSpace(rootpart.CFrame)
miniweld.Part0 = hitz
miniweld.Part1 = rootpart
else
sitting = false
return
end
else
if miniweld then
miniweld:Destroy()
end
controller.Parent = controllerService
humanoid.PlatformStand = false
humanoid.WalkSpeed = 11
end
end
if k == "w" or k == "a" or k == "s" or k == "d" or string.byte(k) == 32 then
thrill = false
barrelroll = false
happy = false
gold = false
guiltyc = false
blurred = false
gentle = false
sheddy = false
durka = false
saxguy = false
foxie = false
burndem = false
bronymusic = false
brony_music:stop()
fox_say:stop()
spitfire:stop()
imhappy:stop()
rick_astley:stop()
rick = false
durk:stop()
restorecolors()
burn_dem:stop()
if hat then
hat:Destroy()
end
if skirt then
skirt:Destroy()
end
sax_guy:stop()
gentleman:stop()
blurred_lines:stop()
guilty_crown:stop()
gold_digger:stop()
thriller:stop()
barrel_roll:stop()
dancing = false
global_wait = 0
LightForTorso.Color = torso.BrickColor.Color
end
if k == "z" then
if dancing then return end
if not sitting then
dancing = true
thrill = true
thriller:play()
customCols2()
if math.random(1, 50) == 5 then
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat.BrickColor = BrickColor.new("Really black")
hat:breakJoints()
hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=1285237"
hatmesh.TextureId = ""
hatmesh.Scale = Vector3.new(.21, .21, .21)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = head
hatweld.C0 = CFrame.new(0, -.13, 0)
end
end
end
if k == "k" then
if dancing then return end
if not sitting then
dancing = true
sheddy = true
spitfire:play()
end
end
if k == "n" then
if dancing then return end
if not sitting then
dancing = true
gentle = true
gentleman:play()

hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=14714284"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=14130511"
hatmesh.Scale = Vector3.new(.2, .2, .2)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = head
hatweld.C0 = CFrame.new(0, -0.15, 0)

-- Cane
hat2 = Instance.new("Part", char)
hat2.BrickColor = BrickColor.new("Really black")
hat2.FormFactor = "Custom"
hat2.CanCollide = false
hat2.Size = head.Size
hat2.Locked = true
hat2:breakJoints()
local hatmesh2 = Instance.new("SpecialMesh", hat2)
hatmesh2.MeshId = "http://www.roblox.com/asset/?id=25628815"
hatmesh2.TextureId = ""
hatmesh2.Scale = Vector3.new(.2, .2, .2)
local hatweld2 = Instance.new("Weld", hat2)
hatweld2.Part0 = hat2
hatweld2.Part1 = ra
hatweld2.C0 = CFrame.new(0, .1, .15) * CFrame.Angles(0, math.rad(180), 0)

-- Bow Tie
hat3 = Instance.new("Part", char)
hat3.BrickColor = BrickColor.new("Really black")
hat3.FormFactor = "Custom"
hat3.CanCollide = false
hat3.Size = head.Size
hat3.Locked = true
hat3:breakJoints()
local hatmesh3 = Instance.new("SpecialMesh", hat3)
hatmesh3.MeshId = "http://www.roblox.com/asset/?id=106532083"
hatmesh3.TextureId = ""
hatmesh3.Scale = Vector3.new(.2, .2, .2)
local hatweld3 = Instance.new("Weld", hat3)
hatweld3.Part0 = hat3
hatweld3.Part1 = torso
hatweld3.C0 = CFrame.new(0, -0.15, 0.1)
end
end
if k == "r" then
if dancing then return end
if not sitting then
dancing = true
burndem = true
burn_dem:play()
end
end
if k == "x" then
if dancing then return end
if not sitting then
dancing = true
barrelroll = true
barrel_roll:play()
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = torso.Size
hat.Locked = true
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=29873142"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=31467063"
hatmesh.Scale = Vector3.new(.22, .2, .22)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = torso
end
end
if k == "h" then
if dancing then return end
if not sitting then
dancing = true
imhappy:play()
happy = true
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat.BrickColor = BrickColor.new("Black")
hat:breakJoints()
hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=1285237"
hatmesh.TextureId = ""
hatmesh.Scale = Vector3.new(.21, .21, .21)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = head
hatweld.C0 = CFrame.new(0, -.13, 0)
end
end
if k == "j" then
if dancing then return end
if not sitting then
dancing = true
rick_astley:play()
rick = true
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat.BrickColor = BrickColor.new("Hot pink")
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=74878559"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=74878538"
hatmesh.Scale = Vector3.new(.23, .23, .23)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = head
hatweld.C0 = CFrame.new(0, -0.09, 0)
mic = Instance.new("Model", char)
pole = Instance.new("Part", mic)
pole.Position = Vector3.new(0, 500, 0)
pole.BrickColor = BrickColor.new("Dark stone grey")
pole.FormFactor = "Custom"
pole.Size = Vector3.new( .1, char.Torso.Size.y, .1)
local pm = Instance.new("CylinderMesh", pole)
pm.Scale = Vector3.new(.35, 2, .35)
local pw = Instance.new("Weld", pole)
pw.Part0 = pole
pw.Part1 = torso
pw.C0 = CFrame.new(0, .19, .3)
local mc = Instance.new("Part", mic)
mc.BrickColor = BrickColor.new("Black")
mc.FormFactor = "Custom"
mc.Size = Vector3.new()
mc.Position = Vector3.new(0, 500, 0)
local mcm = Instance.new("SpecialMesh", mc)
mcm.Scale = Vector3.new(.8, .9, .8)
mcm.MeshType = "Head"
local mcweld = Instance.new("Weld", mc)
mcweld.Part0 = mc
mcweld.Part1 = pole
mcweld.C0 = CFrame.new(0, -.33, 0) --* CFrame.Angles(0, 0, math.rad(-45))
end
end
if k == "c" then
if dancing then return end
if not sitting then
dancing = true
gold = true
gold_digger:play()
hat = Instance.new("Part", char)
hat.BrickColor = BrickColor.new("Pink")
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=68251147"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=67995474"
hatmesh.Scale = Vector3.new(.212, .212, .212)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = head
hatweld.C0 = CFrame.new(0, -0.03, 0.0189)
end
end
if k == "v" then
if dancing then return end
if not sitting then
dancing = true
guiltyc = true
guilty_crown:play()
customCols1()
hat = Instance.new("Part", char)
hat.BrickColor = BrickColor.new("Pink")
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=19999424"
hatmesh.TextureId = ""
hatmesh.Scale = Vector3.new(.23, .23, .23)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = head
hatweld.C0 = CFrame.new(0.025, -0.05, 0)
skirt = Instance.new("Part", char)
skirt.BrickColor = BrickColor.new("Black")
skirt.FormFactor = "Custom"
skirt.CanCollide = false
skirt.Size = head.Size
skirt.Locked = true
skirt:breakJoints()
local skirtmesh = Instance.new("SpecialMesh", skirt)
skirtmesh.MeshType = "Torso"
skirtmesh.Scale = Vector3.new(1.42, 1, 1.42)
local skirtweld = Instance.new("Weld", skirt)
skirtweld.Part0 = skirt
skirtweld.Part1 = torso
skirtweld.C0 = CFrame.new(0, .27, 0)
end
end
if k == "m" then
if dancing then return end
if not sitting then
dancing = true
blurred = true
blurred_lines:play()
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat.BrickColor = BrickColor.new("Pink")
hat:breakJoints()
hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=1285237"
hatmesh.TextureId = ""
hatmesh.Scale = Vector3.new(.21, .21, .21)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = head
hatweld.C0 = CFrame.new(0, -.13, 0)
hat2 = Instance.new("Part", char)
hat2.BrickColor = BrickColor.new("Pink")
hat2.FormFactor = "Custom"
hat2.CanCollide = false
hat2.Size = head.Size
hat2.Locked = true
hat2:breakJoints()
local hatmesh2 = Instance.new("SpecialMesh", hat2)
hatmesh2.MeshId = "http://www.roblox.com/asset/?id=28463033"
hatmesh2.TextureId = ""
hatmesh2.Scale = Vector3.new(.2, .2, .2)
local hatweld2 = Instance.new("Weld", hat2)
hatweld2.Part0 = hat2
hatweld2.Part1 = torso
hatweld2.C0 = CFrame.new(0, -0.065, 0.1)
end
end
if k == "b" then
if dancing then return end
if not sitting then
dancing = true
bronymusic = true
brony_music:play()
for _,bp in pairs(char:children()) do
if bp:IsA("BasePart") then
bp.BrickColor = BrickColor.new("Lavender")
end
end
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat.BrickColor = BrickColor.new("Lavender")
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=118186643"
hatmesh.Scale = Vector3.new(.1, .2, .1)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = head
hatweld.C0 = CFrame.new(0, -0.1, 0.05)
end
end
if k == "l" then
if dancing then return end
if not sitting then
dancing = true
foxie = true
fox_say:play()
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=25266225"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=25266210"
hatmesh.Scale = Vector3.new(.2, .2, .2)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = head
hatweld.C0 = CFrame.new(0, -0.1, 0)
end
end
if k == "f" then
if dancing then return end
if not sitting then
dancing = true
durka = true
durk:play()
end
end
if k == "g" then
if dancing then return end
if not sitting then
dancing = true
saxguy = true
sax_guy:play()
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=44410178"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=44410320"
hatmesh.Scale = Vector3.new(.25, .25, .25)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = la
hatweld.C0 = CFrame.new(-0.18, -0.05, .04) * CFrame.Angles(math.pi - math.rad(18), 0, math.pi/4)
end
end
if k == "t" and falling == true and para == nil then
para = Instance.new("Part", char)
para.BrickColor = BrickColor.new("Pink")
para.FormFactor = "Custom"
para.CanCollide = false
para.Size = head.Size
para.Locked = true
para:breakJoints()
local paramesh = Instance.new("SpecialMesh", para)
paramesh.MeshId = "http://www.roblox.com/asset/?id=19380188"
paramesh.TextureId = "http://www.roblox.com/asset/?id=82293834"
paramesh.Scale = Vector3.new(1, .23, 1)
local paraweld = Instance.new("Weld", para)
paraweld.Part0 = para
paraweld.Part1 = head
paraweld.C0 = CFrame.new(0, -1, 0)
bv = Instance.new("BodyVelocity", para)
bv.velocity = Vector3.new(0, -2, 0)
bv.maxForce = Vector3.new(0, 500, 0)
--[[while keylist[" "] ~= nil do
    bv.velocity = char.Torso.CFrame * CFrame.Angles(0, 0, math.rad(-90)).lookVector
    wait()
end]]
end
if k == "q" then
if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 14 then return end
if sitting then return end
looking = true
rj.C0 = CFrame.new(-math.pi/6, 0,0) * CFrame.Angles(0, 0, math.pi/4)
end
if k == "e" then
if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 14 then return end
if sitting then return end
looking = true
rj.C0 = CFrame.new(math.pi/6, 0,0) * CFrame.Angles(0, 0, -math.pi/4)
end
if string.byte(k) == 48 or string.byte(k) == 47 then
if sitting then return end
humanoid.WalkSpeed = 18
end
if string.byte(k) == 52 then
if sitting then return end
humanoid.WalkSpeed = 6
end
end)
mouse.KeyUp:connect(function(k)
keylist[k] = nil
if string.byte(k) == 48 or string.byte(k) == 47 then
if sitting then return end
humanoid.WalkSpeed = 11
end
if k == "w" or k == "a" or k == "s" or k == "d" or string.byte(k) == 32 then
thrill = false
barrelroll = false
happy = false
gold = false
guiltyc = false
blurred = false
gentle = false
sheddy = false
durka = false
saxguy = false
foxie = false
burndem = false
bronymusic = false
brony_music:stop()
fox_say:stop()
spitfire:stop()
imhappy:stop()
rick_astley:stop()
rick = false
durk:stop()
restorecolors()
burn_dem:stop()
if hat then
hat:Destroy()
end
if hat2 then
hat2:Destroy()
end
if skirt then
skirt:Destroy()
end
if mic then
mic:Destroy()
end
if hat3 then
hat3:Destroy()
end
sax_guy:stop()
gentleman:stop()
blurred_lines:stop()
guilty_crown:stop()
gold_digger:stop()
thriller:stop()
barrel_roll:stop()
dancing = false
global_wait = 0
LightForTorso.Color = torso.BrickColor.Color
end
if k == "q" then
if looking then
if sitting then return end
rj.C0 = CFrame.new()
looking = false
end
end
if k == "e" then
if looking then
if sitting then return end
rj.C0 = CFrame.new()
looking = false
end
end
if k == "t" and para ~= nil then
    para:Destroy()
    para = nil
end
end)
char.Torso.Changed:connect(function(prop)
    print("INFUNC")
    if --[[prop == "Velocity" and]] char.Torso.Velocity.y < 0 then
        falling = true
        print(falling)
    elseif char.Torso.Velocity.y >= 0 then
        falling = false
        print(falling)
    end
end)
game:service'RunService'.Stepped:connect(function()
count = (count % 100) + countspeed
angle = math.pi * math.sin(math.pi*2/100*count)
if slidecount < slidecountmax then
slidecount = slidecount + speed
end
if slidecount > slidecountmax then
slidecount = slidecount - speed
end
if global_wait == 380 then global_wait = 0 end
sine = sine + sinespeed
if not dancing then
if not sitting then
local ray = Ray.new(rootpart.Position, Vector3.new(0, -1, 0))
local hitz, enz = workspace:FindPartOnRay(ray, char)
if not hitz then
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles((math.pi/8/5*slidecount) + math.pi + angle*0.05, 0, 0)
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles((math.pi/8/5*slidecount) + math.pi + -angle*0.05, 0, 0)
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(-angle*0.28, 0, 0)
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(angle*0.28, 0, 0)
if not looking then
rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/8/5*slidecount, 0, 0)
end
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.pi/8/5*slidecount, 0, 0)
elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then
-- idle anim
anim = "Idle"
if anim ~= lastanim then
if lastanim == "Walking" then
speed = 0.5
slidecount = 1
slidecountmax = 0
elseif lastanim == "Running" then
speed = 2.5
slidecount = 5
slidecountmax = 0
else
slidecount = 0
slidecountmax = 0
end
end
countspeed = 1
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(angle*0.02, 0, 0)
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(-angle*0.02, 0, 0)
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(-angle*0.01, 0, 0)
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(angle*0.01, 0, 0)
if not looking then
rj.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-math.pi/8/5*slidecount, 0, 0)
end
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.pi/8/5*slidecount, 0, 0)
elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 14 then
looking = false
-- walk anim
anim = "Walking"
if anim ~= lastanim then
speed = 0.2
slidecount = 0
slidecountmax = 1
if lastanim == "Running" then
slidecount = 5
end
end
countspeed = 6
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(angle*0.3, 0, math.abs(angle*0.02))
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(-angle*0.3, 0, -math.abs(angle*0.02))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(-angle*0.28, 0, -math.abs(angle*0.01))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(angle*0.28, 0, math.abs(angle*0.01))
rj.C0 = CFrame.new(0, math.abs(-angle*0.035), 0) * CFrame.Angles(-math.pi/8/5*slidecount, 0, 0)
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.pi/8/5*slidecount, 0, 0)
elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 14 then
--run anim
anim = "Running"
if anim ~= lastanim then
speed = 1
slidecount = 0
slidecountmax = 5
if lastanim == "Walking" then
slidecount = 1
end
end
looking = false
countspeed = 9
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(angle*0.4, 0, math.abs(angle*0.07))
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(-angle*0.4, 0, -math.abs(angle*0.07))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(-angle*0.38, 0, -math.abs(angle*0.03))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(angle*0.38, 0, math.abs(angle*0.03))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.pi/8/5*slidecount, 0, 0)
rj.C0 = CFrame.new(0, math.abs(-angle*.055), 0) * CFrame.Angles(-math.pi/8/5*slidecount, math.sin(angle*0.05), 0)
end
lastanim = anim
else
countspeed = 1
local ray = Ray.new(rootpart.Position, Vector3.new(0, -2, 0))
local hitz, enz = workspace:FindPartOnRay(ray, char)
if not hitz then
rj.C0 = CFrame.new(0, -0.5, 0) * CFrame.Angles(-math.pi/2, 0, 0)
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(math.rad(30), 0, -math.pi/16)
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(math.rad(30), 0, math.pi/16)
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(-math.pi-math.rad(30), 0, -math.pi/10)
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(-math.pi-math.rad(30), 0, math.pi/10)
else
rj.C0 = CFrame.new(0, -0.35, 0) * CFrame.Angles(math.rad(10), 0, 0)
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(math.pi/2-math.rad(10), 0, -math.pi/16)
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(math.pi/2-math.rad(10), 0, math.pi/16)
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(-math.rad(10), 0, -math.pi/10)
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(-math.rad(10), 0, math.pi/10)
end
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(angle*0.055, 0, 0)
end
else
if thrill then
countspeed = 3
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi/2 + angle*0.2, 0, math.abs(angle*0.07))
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi/2 + angle*0.2, 0, -math.abs(angle*0.07))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(angle*0.1, 0, -math.abs(angle*0.03))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-angle*0.1, 0, math.abs(angle*0.03))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, 0)
rj.C0 = CFrame.new(0, math.abs(-angle*.035), 0) * CFrame.Angles(0, math.sin(angle*0.15), 0)
elseif barrelroll then
countspeed = 5
sinespeed = 0.1
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi + angle*0.2, 0, math.abs(angle*0.07))
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi + angle*0.2, 0, -math.abs(angle*0.07))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(0, 0, -math.abs(angle*0.03))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(0, 0, math.abs(angle*0.03))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, 0)
rj.C0 = CFrame.new(math.sin(sine)*2.5, 0, 0) * CFrame.Angles(-math.pi/2, math.sin(sine)*4.5, 0)
elseif gold then
global_wait = (global_wait % 380) + 1
countspeed = 5
if global_wait < 249 - 40 then
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi/2 + angle*0.2, 0, -math.abs(angle*0.27))
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi/2 + angle*0.2, 0, math.abs(angle*0.27))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(angle*0.1, 0, -math.abs(angle*0.03))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-angle*0.1, 0, math.abs(angle*0.03))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, 0)
rj.C0 = CFrame.new(0, math.abs(-angle*.035), 0) * CFrame.Angles(0, math.sin(angle*0.15), 0)
elseif global_wait > 249 - 40 then
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi/2 + angle*0.4, 0, math.abs(angle*0.11))
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi + angle*0.2, 0, -math.abs(angle*0.11))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(angle*0.1, 0, -math.abs(angle*0.09))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-angle*0.1, 0, math.abs(angle*0.09))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, 0)
rj.C0 = CFrame.new(0, math.abs(-angle*.075), 0) * CFrame.Angles(0, math.pi/3 + math.sin(angle*0.15), 0)
end
elseif guiltyc then
global_wait = (global_wait % 380) + 1
countspeed = 5
if global_wait < 79 then
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi/2 + angle*0.1, 0, -math.abs(angle*0.07))
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(angle*0.2, 0, math.abs(angle*0.07))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(angle*0.1, 0, -math.abs(angle*0.03))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-angle*0.1, 0, math.abs(angle*0.03))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, 0)
rj.C0 = CFrame.new(0, math.abs(-angle*.02), 0) * CFrame.Angles(0, math.sin(angle*0.15), 0)
elseif global_wait < 299 then
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi + angle*0.2, 0, math.abs(angle*0.11))
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi + angle*0.2, 0, -math.abs(angle*0.11))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(angle*0.2, 0, -math.abs(angle*0.1))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-angle*0.2, 0, math.abs(angle*0.1))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), math.sin(angle*0.19), 0)
rj.C0 = CFrame.new(0, math.abs(-angle*.055+0.2), 0) * CFrame.Angles(0, math.sin(angle*0.15), 0)
elseif global_wait > 299 then
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi/2 + angle*0.1, 0, -math.abs(angle*0.07))
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(angle*0.2, 0, math.abs(angle*0.07))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(angle*0.1, 0, -math.abs(angle*0.03))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-angle*0.1, 0, math.abs(angle*0.03))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, 0)
rj.C0 = CFrame.new(0, math.abs(-angle*.02), 0) * CFrame.Angles(0, math.sin(angle*0.15), 0)
end
elseif blurred then
countspeed = 4
global_wait = (global_wait % 160) + 1
if global_wait == 160 then global_wait = 0 end
if global_wait < 39 then
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi/2 + angle*0.2, 0, -math.abs(angle*0.07))
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi/2 + angle*0.2, 0, math.abs(angle*0.07))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(angle*0.1, 0, -math.abs(angle*0.03))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-angle*0.1, 0, math.abs(angle*0.03))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, 0)
rj.C0 = CFrame.new(0, math.abs(-angle*.03), 0) * CFrame.Angles(0, -math.pi/6, 0)
elseif global_wait < 79 then
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi/2 + angle*0.2, 0, -math.abs(angle*0.07))
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi/2 + angle*0.2, 0, math.abs(angle*0.07))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(angle*0.1, 0, -math.abs(angle*0.03))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-angle*0.1, 0, math.abs(angle*0.03))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, 0)
rj.C0 = CFrame.new(0, math.abs(-angle*.03), 0) * CFrame.Angles(0, math.pi/6, 0)
elseif global_wait < 119 then
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(0.01, 0, 0.17)
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(0.01, 0, -0.17)
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(0, -math.abs(angle*0.05), -math.abs(angle*0.06))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(0, -math.abs(angle*0.05), math.abs(angle*0.06))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, 0)
rj.C0 = CFrame.new(0, math.abs(-angle*.02), 0) * CFrame.Angles(0, 0, 0)
torso.CFrame = torso.CFrame * CFrame.new(0.05, 0, 0)
elseif global_wait > 119 then
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(0.01, 0, 0.17)
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(0.01, 0, -0.17)
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(0, -math.abs(angle*0.05), -math.abs(angle*0.06))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(0, -math.abs(angle*0.05), math.abs(angle*0.06))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, 0)
rj.C0 = CFrame.new(0, math.abs(-angle*.02), 0) * CFrame.Angles(0, 0, 0)
torso.CFrame = torso.CFrame * CFrame.new(-0.05, 0, 0)
end
elseif gentle then
countspeed = 5
if global_wait == 180 then global_wait = 0 end
global_wait = (global_wait % 180) + 1
if global_wait < 89 then
ls.C0 = CFrame.new(-.2,.1,-.1) * CFrame.Angles(math.pi/2.5 + math.abs(angle*0.2), 0, math.pi/3 + math.abs(angle*0.05))
rs.C0 = CFrame.new(.2,.1,-.1) * CFrame.Angles(math.pi/2.5 + math.abs(angle*0.2), 0, -math.pi/3 + -math.abs(angle*0.05))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, -math.abs(angle*0.03))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-math.abs(angle*0.1), 0, math.abs(angle*0.03))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, 0)
rj.C0 = CFrame.new(0, math.abs(-angle*.035), 0) * CFrame.Angles(0, math.sin(angle*0.05), 0)
elseif global_wait > 89 then
ls.C0 = CFrame.new(-.2,.1,-.1) * CFrame.Angles(math.pi/2.5 + math.abs(angle*0.2), 0, math.pi/3 + math.abs(angle*0.05))
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi + math.sin(angle*0.1), 0, -math.sin(angle*0.1))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, -math.abs(angle*0.03))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-math.abs(angle*0.1), 0, math.abs(angle*0.03))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, 0)
rj.C0 = CFrame.new(0, math.abs(-angle*.035), 0) * CFrame.Angles(0, math.sin(angle*0.05), 0)
end
elseif foxie then
countspeed = 5
global_wait = (global_wait % 380) + 2
if global_wait < 89 then
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi + math.abs(angle*0.1), 0, -math.abs(angle*0.2))
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi + math.abs(angle*0.1), 0, math.abs(angle*0.2))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, -math.abs(angle*0.03))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-math.abs(angle*0.1), 0, math.abs(angle*0.03))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, 0)
rj.C0 = CFrame.new(0, math.abs(-angle*.035), 0) * CFrame.Angles(0, math.rad(global_wait*4), 0)
elseif global_wait > 89 then
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi/2 + math.abs(angle*0.2), 0, math.abs(angle*0.05))
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi/2 + math.abs(angle*0.2), 0, -math.abs(angle*0.05))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, -math.abs(angle*0.03))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-math.abs(angle*0.1), 0, math.abs(angle*0.03))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, math.sin(angle*0.1))
rj.C0 = CFrame.new(0, math.abs(-angle*.035), 0) * CFrame.Angles(0, math.sin(angle*0.05), 0)
end
elseif durka then
countspeed = 2
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi/2 + math.abs(angle*0.2), 0, math.abs(angle*0.07))
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(angle*0.1, 0, -math.abs(angle*0.07))
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(angle*0.05, 0, -math.abs(angle*0.03))
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-angle*0.05, 0, math.abs(angle*0.03))
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(angle*0.1), 0, 0)
rj.C0 = CFrame.new(0, math.abs(-angle*.035), 0) * CFrame.Angles(0, math.sin(angle*0.05), 0)
elseif saxguy then
countspeed = 5
ls.C0 = CFrame.new(-.25,.1,-.1) * CFrame.Angles(math.pi/2.5, 0, math.pi/4)
rs.C0 = CFrame.new(.25,.1,-.1) * CFrame.Angles(math.rad(60), 0, -math.pi/4)
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(-math.abs(angle*0.1), 0, -0.06)
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-math.abs(angle*0.1), 0, 0.06)
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(0, 0, 0)
rj.C0 = CFrame.new(0, -math.abs(angle*0.01), math.abs(angle*0.01)) * CFrame.Angles(math.abs(angle*0.1), 0, 0)
elseif happy then
countspeed = 5
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi + -angle*0.2, -angle*0.1, 0)
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi + angle*0.2, angle*0.1, 0)
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(angle*0.05, angle*0.1, -0.06)
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-angle*0.05, -angle*0.1, 0.06)
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(0.2), 0, 0)
rj.C0 = CFrame.new(0, math.abs(angle*0.05), 0) * CFrame.Angles(0, math.sin(angle*0.07), 0)
elseif rick then
countspeed = 3
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi/2 + -angle*0.2, -angle*0.1, 0)
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi/2 + angle*0.2, angle*0.1, 0)
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(angle*0.05, angle*0.1, -0.06)
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-angle*0.05, -angle*0.1, 0.06)
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(0.2), 0, 0)
rj.C0 = CFrame.new(0, math.abs(angle*0.05), 0) * CFrame.Angles(0, math.abs(angle*0.1), 0)
elseif bronymusic then
countspeed = 5
ls.C0 = CFrame.new(-.1,.1,-.15) * CFrame.Angles(math.pi/2 + -angle*0.1, -angle*0.1, 0)
rs.C0 = CFrame.new(.1,.1,-.15) * CFrame.Angles(math.pi/2 + angle*0.1, angle*0.1, 0)
lh.C0 = CFrame.new(-.1,-.25,0) * CFrame.Angles(math.pi/2 + angle*0.1, 0, 0)
rh.C0 = CFrame.new(.1,-.25,0) * CFrame.Angles(math.pi/2 + -angle*0.1, 0, 0)
neck.C0 = CFrame.new(0,.25,0) * CFrame.Angles(math.pi/2 + math.abs(angle*0.25), 0, 0)
rj.C0 = CFrame.new(0, -0.2 + math.abs(angle*0.05), 0) * CFrame.Angles(-math.rad(85), 0, 0)
elseif sheddy then
countspeed = 7
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi/4 + -angle*0.4, -angle*0.1, 0)
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi/4 + angle*0.4, angle*0.1, 0)
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(angle*0.05, angle*0.1, -0.06)
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-angle*0.05, -angle*0.1, 0.06)
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(0.2), 0, 0)
rj.C0 = CFrame.new(0, math.abs(angle*0.05), 0) * CFrame.Angles(0, math.abs(angle*0.1), 0)
elseif burndem then
countspeed = 4
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi/4 + -angle*0.4, -angle*0.1, 0)
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi/4 + angle*0.4, angle*0.1, 0)
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(angle*0.05, angle*0.1, -0.06)
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-angle*0.05, -angle*0.1, 0.06)
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(0.2), 0, 0)
rj.C0 = CFrame.new(0, math.abs(angle*0.05), 0) * CFrame.Angles(0, math.abs(angle*0.1), 0)
end
end
end)
plr.Chatted:connect(function(msg)
game:service'Chat':Chat(head, msg, 1)
if msg == "die/" then
char:breakJoints()
end
end)
