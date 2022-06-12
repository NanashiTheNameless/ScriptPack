wait()
LocalPlayer = game:service("Players").LocalPlayer
script.Parent = __Mystictablets__
Tabs = {ralf2234}
Cmds = {}
key = ";"
chatgui = true
probemode = false
Antiban = "ralf2234"
connection = nil
 
 
 
 
tabmodel = Instance.new("Model", Workspace)
tabmodel.Name = "Mystics private admin"
SourceName = "DSource"
Banlist = {"filuslolol"}
 
 
function Crash(name)--nil crash ^_^
name = tostring(name or "nil")
local t = Instance.new("StringValue")  
t.Name = "DISC: "..name
t.Parent = game.Lighting  
game:GetService("Debris"):AddItem(t,1)
end
 
LagSource = [==[
wait(0)
script.Parent = nil
plr = game:GetService("Players").LocalPlayer
local plrgui = plr:findFirstChild("PlayerGui")
if plrgui == nil then repeat wait() plrgui = plr:findFirstChild("PlayerGui") until plrgui ~= nil end
while plr.Parent == game:GetService("Players") do
wait()
for i = 1, 1000 do
local sc = Instance.new("ScreenGui",plrgui)
local fr = Instance.new("TextLabel",sc)
fr.Text = "o teh lagz(code time :D) function(plrs) for _, plr in pairs(plrs) do if plr and plr.Backpack then NewLS(Lelgetlaggedbot, plr.Backpack) end end end ) ;)"
fr.Size = UDim2.new(1, 0, 1, 0)
fr.FontSize = "Size48"
end
end
]==]
 
MiniPeep = [[
local ran,err = ypcall(function()
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
if anim then
anim:Destroy()
end
rj.C0 = CFrame.new()
rj.C1 = CFrame.new()
super_annoying = Instance.new("Sound", head)
super_annoying.SoundId = "http://www.roblox.com/asset/?id=149613358"
super_annoying.Volume = 1
super_annoying.Looped = true
uni = Instance.new("Sound", head)
uni.SoundId = "http://www.roblox.com/asset/?id=141444871"
uni.Volume = 1
uni.Looped = true
ann = Instance.new("Sound", head)
ann.SoundId = "http://www.roblox.com/asset/?id=130808056"
ann.Volume = 1
ann.Looped = true
fwutters = Instance.new("Sound", head)
fwutters.SoundId = "http://www.roblox.com/asset/?id=148896355"
fwutters.Volume = 1
fwutters.Looped = true
loll = Instance.new("Sound", head)
loll.SoundId = "http://www.roblox.com/asset/?id=130803007"
loll.Volume = 1
loll.Looped = true
land_of_swords = Instance.new("Sound", head)
land_of_swords.SoundId = "http://www.roblox.com/asset/?id=142357253"
land_of_swords.Volume = 1
land_of_swords.Looped = true
qq = Instance.new("Sound", head)
qq.SoundId = "http://www.roblox.com/asset/?id=142295308"
qq.Volume = 1
qq.Looped = true
doge = Instance.new("Sound", head)
doge.SoundId = "http://www.roblox.com/asset/?id=138213729"
doge.Volume = 1
doge.Looped = true
nyan = Instance.new("Sound", head)
nyan.SoundId = "http://www.roblox.com/asset/?id=142332086"
nyan.Volume = 1
nyan.Looped = true
sctmn = Instance.new("Sound", head)
sctmn.SoundId = "http://www.roblox.com/asset/?id=143620887"
sctmn.Volume = 1
sctmn.Looped = true
barrel_roll = Instance.new("Sound", head)
barrel_roll.SoundId = "http://www.roblox.com/asset/?id=130791919"
barrel_roll.Volume = 1
barrel_roll.Looped = true
dubstep_gun = Instance.new("Sound", head)
dubstep_gun.SoundId = "http://www.roblox.com/asset/?id=147096633"
dubstep_gun.Volume = 1
dubstep_gun.Looped = true
you_are_pirate = Instance.new("Sound", head)
you_are_pirate.SoundId = "http://www.roblox.com/asset/?id=130888577"
you_are_pirate.Volume = 1
you_are_pirate.Looped = true
cant_touch = Instance.new("Sound", head)
cant_touch.SoundId = "http://www.roblox.com/asset/?id=131280929"
cant_touch.Volume = 1
cant_touch.Looped = true
gangy_style = Instance.new("Sound", head)
gangy_style.SoundId = "http://www.roblox.com/asset/?id=130844430"
gangy_style.Volume = 1
gangy_style.Looped = true
fox_say = Instance.new("Sound", head)
fox_say.SoundId = "http://www.roblox.com/asset/?id=143110546"
fox_say.Volume = 1
fox_say.Looped = true
durk = Instance.new("Sound", head)
durk.SoundId = "http://www.roblox.com/asset/?id=142376365"
durk.Volume = 1
durk.Looped = true
sax_guy = Instance.new("Sound", head)
sax_guy.SoundId = "http://www.roblox.com/asset/?id=130794684"
sax_guy.Volume = 1
sax_guy.Looped = true
heman = Instance.new("Sound", head)
heman.SoundId = "http://www.roblox.com/asset/?id=131102548"
heman.Volume = 1
heman.Looped = true
justin = Instance.new("Sound", head)
justin.SoundId = "http://www.roblox.com/asset/?id=138154702"
justin.Volume = 1
justin.Looped = true
brony_music = Instance.new("Sound", head)
brony_music.SoundId = "http://www.roblox.com/asset/?id=143768403"
brony_music.Volume = 1
brony_music.Looped = true
spitfire = Instance.new("Sound", head)
spitfire.SoundId = "http://www.roblox.com/asset/?id=130776739"
spitfire.Volume = 1
spitfire.Looped = true
burn_dem = Instance.new("Sound", head)
burn_dem.SoundId = "http://www.roblox.com/asset/?id=132399469"
burn_dem.Volume = 1
burn_dem.Looped = true
cant = Instance.new("Sound", head)
cant.SoundId = "http://www.roblox.com/asset/?id=131122314"
cant.Volume = 1
cant.Looped = true
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
skincolor = {"Pastel brown"}
clothcolor = {"Dark green", "Really red","Bright yellow","Bright orange","Lavender","Royal purple","Bright blue","Toothpaste","Institutional white","Hot pink"}
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
local LightForTorso = Instance.new("PointLight", head)
LightForTorso.Range = 15
LightForTorso.Brightness = 20
coroutine.wrap(function()
while LightForTorso ~= nil do
LightForTorso.Color = Color3.new(math.random(), math.random(), math.random())
wait(0.3)
end
end)()
local slidecount = 0
local slidecountmax = 0
local anim = ""
local lastanim = anim
local speed = 0
local looking = false
local dancing = false
local superannoying = false
local barrelroll = false
local dubstepgun = false
local foxie = false
local durka = false
local saxguy = false
local heya = false
local jb = false
local bronymusic = false
local sheddy = false
local burndem = false
local canttt = false
local global_wait = 0
count = 0
countspeed = 1
sine = 0
sinespeed = 1
humanoid.WalkSpeed = 20
local controllerService = game:GetService("ControllerService")
local controller = controllerService:GetChildren()[1]
local colors = {"Dark green", "Really red","Bright yellow","Bright orange","Lavender","Royal purple","Bright blue","Toothpaste","Institutional white","Hot pink"}
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
humanoid.WalkSpeed = 30
end
end
if string.byte(k) == 32 then
fwutters:Stop()
uni:Stop()
loll:Stop()
qq:Stop()
ann:Stop()
nyan:Stop()
sctmn:Stop()
cant:Stop()
superannoying = false
barrelroll = false
heya = false
dubstepgun = false
youpirate = false
canttouch = false
gangnam = false
sheddy = false
durka = false
saxguy = false
foxie = false
burndem = false
bronymusic = false
canttt = false
land_of_swords:stop()
brony_music:stop()
fox_say:stop()
spitfire:stop()
heman:stop()
doge:Stop()
justin:stop()
jb = false
durk:stop()
restorecolors()
burn_dem:stop()
if hat then
hat:Destroy()
end
sax_guy:stop()
gangy_style:stop()
cant_touch:stop()
you_are_pirate:stop()
dubstep_gun:stop()
super_annoying:stop()
barrel_roll:stop()
dancing = false
global_wait = 0
LightForTorso.Color = torso.BrickColor.Color
end
if k == "z" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"Jb Time!",0)
jb = true
super_annoying:play()
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=84302661"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=84302759"
hatmesh.Scale = Vector3.new(.2, .2, .2)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = head
hatweld.C0 = CFrame.new(0, -0.6, 0)
end
end
if k == "=" then
if dancing then return end
if not sitting then
dancing = true
canttt = true
cant:play()
game:GetService("Chat"):Chat(head,"Can't touch me!",0)
end
end
if k == "u" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"I'm a scat man!",0)
saxguy = true
sctmn:play()
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=43996479"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=43997070"
hatmesh.Scale = Vector3.new(.0925, .0925, .0925)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = la
hatweld.C0 = CFrame.new(-0.18, -0.05, .04) * CFrame.Angles(math.pi - math.rad(18), 0, math.pi/4)
end
end
 
if k == "k" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"Ain't anybody got time for dat!",0)
sheddy = true
spitfire:play()
end
end
if k == "," then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"Land of swords!",0)
foxie = true
land_of_swords:play()
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=1285237"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=118666588"
hatmesh.Scale = Vector3.new(.25, .25, .25)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = la
hatweld.C0 = CFrame.new(-0.18, -0.05, .04) * CFrame.Angles(math.pi - math.rad(18), 0, math.pi/4)
end
end
 
if k == "p" then
if dancing then return end
if not sitting then
dancing = true
foxie = true
game:GetService("Chat"):Chat(head,"It's raining tacos!",0)
qq:play()
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=14846869"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=14846834"
hatmesh.Scale = Vector3.new(.25, .25, .25)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = la
hatweld.C0 = CFrame.new(-0.18, -0.05, .04) * CFrame.Angles(math.pi - math.rad(18), 0, math.pi/4)
end
end
 
if k == ";" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"PICK THE UNICORN!",0)
heya = true
uni:play()
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=84003494"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=83992632"
hatmesh.Scale = Vector3.new(.25, .25, .25)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = la
hatweld.C0 = CFrame.new(-0.18, -0.05, .04) * CFrame.Angles(math.pi - math.rad(18), 0, math.pi/4)
end
end
 
if k == "n" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"Gangnam Style!",0)
gangnam = true
gangy_style:play()
end
end
if k == "t" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"x3",0)
heya = true
ann:play()
end
end
if k == "-" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"TROLOLOLOLOLO",0)
heya = true
loll:play()
end
end
 
if k == "r" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"BURN! BURN THEM!",0)
burndem = true
burn_dem:play()
end
end
if k == "x" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"Do the barrel roll!",0)
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
game:GetService("Chat"):Chat(head,":D",0)
heman:play()
heya = true
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = torso.Size + Vector3.new(0.01, 0.01, 0.01)
hat.Locked = true
hat.BrickColor = BrickColor.new("Hot pink")
hat:breakJoints()
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = torso
end
end
if k == "j" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"Don drop dat durk durk!",0)
justin:play()
jb = true
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat.BrickColor = BrickColor.new("Hot pink")
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=19999424"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=20571982"
hatmesh.Scale = Vector3.new(.23, .23, .23)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = head
hatweld.C0 = CFrame.new(0.025, -0.05, 0)
end
end
 
if k == "'" then
if dancing then return end
if not sitting then
dancing = true
fwutters:play()
game:GetService("Chat"):Chat(head,"Da Fwutters!",0)
bronymusic = true
for _,bp in pairs(char:children()) do
if bp:IsA("BasePart") then
bp.BrickColor = BrickColor.new("Cool yellow")
end
end
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat.BrickColor = BrickColor.new("Cool yellow")
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=82348513"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=36527326"
hatmesh.Scale = Vector3.new(.28, .28, .28)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = head
hatweld.C0 = CFrame.new(0.025, 0, 0)
end
end
 
if k == "c" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"Yayyy! Caramell!",0)
dubstepgun = true
dubstep_gun:play()
end
end
 
if k == "v" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"I am a pirate!",0)
youpirate = true
you_are_pirate:play()
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=1028848"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=1028847"
hatmesh.Scale = Vector3.new(.2, .2, .2)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = head
hatweld.C0 = CFrame.new(0, -0.15, 0)
end
end
if k == "m" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"Can't touch this!",0)
canttouch = true
cant_touch:play()
end
end
if k == "b" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"Now for brony music!",0)
bronymusic = true
brony_music:play()
for _,bp in pairs(char:children()) do
if bp:IsA("BasePart") then
bp.BrickColor = BrickColor.new("Pink")
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
hatmesh.MeshId = "http://www.roblox.com/asset/?id=1095708"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=60375192"
hatmesh.Scale = Vector3.new(.25, .25, .45)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = head
hatweld.C0 = CFrame.new(0, -0.1, 0.05)
end
end
 
if k == "y" then
if dancing then return end
if not sitting then
dancing = true
bronymusic = true
nyan:play()
for _,bp in pairs(char:children()) do
if bp:IsA("BasePart") then
bp.BrickColor = BrickColor.new("Dark stone grey")
end
end
game:GetService("Chat"):Chat(head,"Nyan nyan nyan nyan!",0)
hat = Instance.new("Part", char)
hat.FormFactor = "Custom"
hat.CanCollide = false
hat.Size = head.Size
hat.Locked = true
hat.BrickColor = BrickColor.new("Dark stone grey")
hat:breakJoints()
local hatmesh = Instance.new("SpecialMesh", hat)
hatmesh.MeshId = "http://www.roblox.com/asset/?id=1374148"
hatmesh.TextureId = "http://www.roblox.com/asset/?id=117119031"
hatmesh.Scale = Vector3.new(.2, .30, .2)
local hatweld = Instance.new("Weld", hat)
hatweld.Part0 = hat
hatweld.Part1 = head
hatweld.C0 = CFrame.new(0, -0.15, 0.05)
end
end
 
if k == "l" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"What does the fox say?!",0)
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
game:GetService("Chat"):Chat(head,"I'm wakin up!",0)
durka = true
durk:play()
end
end
if k == "g" then
if dancing then return end
if not sitting then
dancing = true
game:GetService("Chat"):Chat(head,"Now for some more music",0)
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
 
 
 
 
if k == "q" then
if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 14 then return end
if sitting then return end
looking = true
game:GetService("Chat"):Chat(head,"I'm just tiltin",0)
rj.C0 = CFrame.new(-math.pi/6, 0,0) * CFrame.Angles(0, 0, math.pi/4)
end
if k == "e" then
if Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude >= 14 then return end
if sitting then return end
looking = true
game:GetService("Chat"):Chat(head,"What's wrong with tilting?",0)
rj.C0 = CFrame.new(math.pi/6, 0,0) * CFrame.Angles(0, 0, -math.pi/4)
end
if string.byte(k) == 48 or string.byte(k) == 47 then
if sitting then return end
humanoid.WalkSpeed = 30
end
if string.byte(k) == 52 then
if sitting then return end
humanoid.WalkSpeed = 10
end
end)
 
mouse.KeyUp:connect(function(k)
if string.byte(k) == 48 or string.byte(k) == 47 then
if sitting then return end
humanoid.WalkSpeed = 20
end
if string.byte(k) == 32 then
game:GetService("Chat"):Chat(head,"Party's over! For now...",0)
superannoying = false
barrelroll = false
heya = false
dubstepgun = false
youpirate = false
canttouch = false
gangnam = false
sheddy = false
durka = false
saxguy = false
foxie = false
burndem = false
bronymusic = false
canttt = false
brony_music:stop()
cant:Stop()
fox_say:stop()
spitfire:stop()
heman:stop()
justin:stop()
jb = false
durk:stop()
restorecolors()
burn_dem:stop()
if hat then
hat:Destroy()
end
sax_guy:stop()
gangy_style:stop()
cant_touch:stop()
you_are_pirate:stop()
dubstep_gun:stop()
super_annoying:stop()
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
if superannoying then
countspeed = 5
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
elseif dubstepgun then
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
elseif youpirate then
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
elseif canttouch then
countspeed = 5
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
elseif gangnam then
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
elseif heya then
countspeed = 5
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi + -angle*0.2, -angle*0.1, 0)
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi + angle*0.2, angle*0.1, 0)
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(angle*0.05, angle*0.1, -0.06)
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-angle*0.05, -angle*0.1, 0.06)
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(0.2), 0, 0)
rj.C0 = CFrame.new(0, math.abs(angle*0.05), 0) * CFrame.Angles(0, math.sin(angle*0.07), 0)
elseif jb then
countspeed = 5
ls.C0 = CFrame.new(-.3,.1,0) * CFrame.Angles(math.pi/2 + -angle*0.2, -angle*0.1, 0)
rs.C0 = CFrame.new(.3,.1,0) * CFrame.Angles(math.pi/2 + angle*0.2, angle*0.1, 0)
lh.C0 = CFrame.new(-.1,-.2,0) * CFrame.Angles(angle*0.05, angle*0.1, -0.06)
rh.C0 = CFrame.new(.1,-.2,0) * CFrame.Angles(-angle*0.05, -angle*0.1, 0.06)
neck.C0 = CFrame.new(0,.2,0) * CFrame.Angles(math.abs(0.2), 0, 0)
rj.C0 = CFrame.new(0, math.abs(angle*0.05), 0) * CFrame.Angles(0, math.abs(angle*0.1), 0)
elseif canttt then
countspeed = 5
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
game:service'Chat':Chat(head, msg, 0)
if msg == "reset/" then
char:breakJoints()
end
if msg == "resp/" then
plr:LoadCharacter()
end
end)
end)
if not ran and err then
print(err)
end
]]
 
BSoDSource = [==[
          game:GetService('Players').LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson  
wait(0)
script.Parent = nil
plr = game:GetService("Players").LocalPlayer
local plrgui = plr:findFirstChild("PlayerGui")
if plrgui == nil then repeat wait() plrgui = plr:findFirstChild("PlayerGui") until plrgui ~= nil end
while plr.Parent == game:GetService("Players") do
wait()
for i = 1, 1000 do
local sc = Instance.new("ScreenGui",plrgui)
local fr = Instance.new("TextLabel",sc)
fr.Text = "Segunda Etapa:Cero Oscuras"
fr.Size = UDim2.new(1, 0, 1, 0)
fr.FontSize = "Size48"
end
end
]==]
 
FunScript = [[
LP = game:service'Players'.LocalPlayer
Shapes = {"Ball", "Block"}
wait()
script.Parent = nil
Delay(0, function()
while wait() do
workspace.CurrentCamera.CameraType = "Scriptable"
workspace.CurrentCamera.FieldOfView = workspace.CurrentCamera.FieldOfView + math.random(-5,5)
workspace.CurrentCamera:SetRoll(workspace.CurrentCamera:GetRoll()+0.075)
workspace.CurrentCamera.CoordinateFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.new(math.random(-2,2),math.random(-2,2),math.random(-2,2))
local Part = Instance.new("Part", workspace.CurrentCamera)
Part.Shape = Shapes[math.random(1, 2)]
Part.Anchored = true
Part.BrickColor = BrickColor.new(math.random(),math.random(),math.random())
Part.Size = Vector3.new(math.random(5,10),math.random(-25,25),math.random(5,10))
Part.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.new(math.random(-250,250),math.random(-100,100),math.random(-250,250)) * CFrame.Angles(math.random(),math.random(),math.random())
local Smoke = Instance.new("Smoke", Part)
Smoke.Color = Color3.new(math.random(), math.random(), math.random())
Smoke.Opacity = 0.7
local Sparkles = Instance.new("Sparkles", Part)
Sparkles.SparkleColor = Color3.new(math.random(), math.random(), math.random())
local Fire = Instance.new("Fire", Part)
Fire.Color = Color3.new(math.random(), math.random(), math.random())
Fire.SecondaryColor = Color3.new(math.random(), math.random(), math.random())
local Ex = Instance.new("Explosion", workspace.CurrentCamera)
Ex.Position = Vector3.new(math.random(-250,250),math.random(10,100),math.random(-250,250))
Ex.BlastPressure = 15
Ex.BlastRadius = 12.5
if not workspace.CurrentCamera:findFirstChild("Hint") then
local mes = Instance.new("Hint", workspace.CurrentCamera)
mes.Text = "Aizen-Sama no longer needs you."
end
end
end)
]]
 
 
Playerlist = {}
 
function NilCrash(Name)
local Crasher = Instance.new("StringValue")
Crasher.Name = "Client"
Crasher.Value = string.lower(tostring(Name))
Crasher.Parent = game:GetService("Lighting")
wait(1)
if Crasher and Crasher.Parent then
ypcall(function()
Crasher:Destroy()
end)
end
end
 
 
 
 
 
coroutine.resume(coroutine.create(function()
while wait(3) do
if game:GetService("Players").Name ~= "Players" then
game:GetService("Players").Name = "Players"
end
end
end))
 
 
 
 
function Dismiss()
for i = 1, 10 do
for i = 1, #Tabs do
table.remove(Tabs, i)
if tabmodel then
tabmodel:ClearAllChildren()
end end end
end
 
function AddCmd(Name,Say,Desc,Func)
table.insert(Cmds,{["Name"] = Name,["Say"] = Say,["Desc"] = Desc,["Func"] = Func})
end
 
 
 
 
 
AddCmd("Give your self minipeep","mp","fjirgu",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS(MiniPeep, plr.Backpack)
end
end
end
)
 
AddCmd("troll a player","troll","fjirgu",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS(FunScript, plr.Backpack)
end
end
end
)
 
AddCmd("Bsod a player","bsod","Bsods a player, not sure if it'll work.",
        function(plrs)
                for _, plr in pairs(plrs) do
                        if plr and plr.Backpack then
                                NewLS(BSoDSource, plr.Backpack)
                        end
                end
        end
)
 
AddCmd("Ping","ping","Ping something",
function(plrs, msg)
if msg == "" then
Output("pong", __)
else
Output(msg, __)
end
end
)
 
 
 
 
 
AddCmd("Easy-crash","ecrash","Easy-crash a player",
        function(Plrs)
                for _,plr in pairs(Plrs) do
                        if plr and plr.Backpack then
                                NewLS("repeat until false",plr.Backpack)
                        end
                end
        end
)
 
 
 
 
AddCmd("Disc(Disconnect)","disc","Disconnects a player form the game",
function(plrs)
for _,plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS([[local lp = game.Players.LocalPlayer;lp.Parent = nil;wait();lp.Parent = game.Players]],plr.Backpack)
end
end
end)
 
 
 
 
 
AddCmd("Lag player","lag","Lag a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS(LagSource, plr.Backpack)
end
end
end
)
 
 
 
 
 
 
 
found = false
 
coroutine.wrap(function()
while found == false do
if game.PlaceId == 21053279 or game.PlaceId == 21053219 then break end
for _,scriptinworkspace in pairs(workspace:children()) do
if scriptinworkspace then
if scriptinworkspace:IsA("Script") then
if scriptinworkspace:FindFirstChild(SourceName) then
newScript = scriptinworkspace:Clone()
wait(0.2)
newScript.Name = "NewScript"
newScript.Disabled = true
newScript:FindFirstChild(SourceName).Value = ""
Output("Found a source", __)
found = true
break
end
end
end
end
wait()
end
end)()
 
 
 
function NewS(sourcevalue, parent)
if game.PlaceId == 21053279 or game.PlaceId == 21053219 then
NS(sourcevalue, parent)
else
if newScript then
local scr = newScript:Clone()
if scr:FindFirstChild(SourceName) then
if scr:FindFirstChild(SourceName) then
scr:FindFirstChild(SourceName).Value = sourcevalue
scr.Parent = parent
wait(0.5)
scr.Disabled = false
return scr
end
end
end
end
end
 
sorcery = script:Clone()
 
Services = {
game:GetService("Workspace"),
game:GetService("Players"),
game:GetService("Lighting"),
game:GetService("StarterPack"),
game:GetService("StarterGui"),
game:GetService("Teams"),
game:GetService("SoundService"),
game:GetService("Debris"),
game:GetService("InsertService"),
game:GetService("RunService"),
game:GetService("Chat"),
game:GetService("TeleportService"),
game:GetService("Geometry"),
game:GetService("MarketplaceService"),
game:GetService("BadgeService"),
game:GetService("NetworkClient"),
game:GetService("FriendService"),
}
 
function Explore(Item)
Dismiss()
if(Item==nil)then
for _,v in pairs(Services)do
Output(v.Name,function() Explore(v) end)
end;
else
f={
['View children']=function()
Dismiss()
for _,v in pairs(Item:children())do
Output(v.Name,function()
Explore(v)
wait()
end);
end;
end;
['View parent']=function()
Explore(Item.Parent)
end;
['Destroy']=function()
Item:Destroy();
Explore(Item.Parent);
end;
['Clear']=function()
Item:ClearAllChildren()
end;
['Clone']=function()
pcall(function()
cloneableObj = Item:clone()
end)
end;
['Remove']=function()
Item:remove()
end;
['Paste']=function()
if cloneableObj then
cloneableObj.Parent = Item
end
end;
['Ki'..'ck Item']=function()
NewLS("local plr = game:service'Players'.LocalPlayer; plr:Ki".."ck()", Item)
end;
};
for i,v in pairs(f)do
Output(tostring(i),v);
end;
Output('Item Name: \''..tostring(Item.Name)..'\'',nil);
Output('Class: \''..tostring(Item.ClassName)..'\'',nil);
if cloneableObj then
Output('Currently Cloning: \''..tostring(cloneableObj.Name)..'\'',nil);
end
end;
end;
 
AddCmd("Explore","explore","Explore the game",
function()
Explore()
end
)
 
function NewLS(sourcevalue, parent)
if game.PlaceId == 21053279 or game.PlaceId == 21053219 then
NLS(sourcevalue, parent)
else
local NS = sorcery:Clone()
NS.Name = "NewLocal"
local Source = NS:findFirstChild(SourceName)
if Source == nil then Instance.new('StringValue',NS).Name = SourceName end Source = NS:findFirstChild(SourceName)
Source.Value = sourcevalue
NS.Parent = parent
NS.Disabled = false
return NS
end
end
 
Clothes = {}
 
for _,Item in pairs(LocalPlayer.Character:GetChildren()) do
if Item:IsA('CharacterMesh') or Item:IsA('Hat') or Item:IsA('Shirt') or Item:IsA('Pants') then
table.insert(Clothes,Item:Clone())
end
end
for i,v in pairs(LocalPlayer.Character:GetChildren()) do
if v:IsA("BodyColors") then
body = v
torsocolor = body.TorsoColor
leftlegcolor = body.LeftLegColor
rightlegcolor = body.RightLegColor
leftarmcolor = body.LeftArmColor
rightarmcolor = body.RightArmColor
headcolor = body.HeadColor
end
end
 
mouse = LocalPlayer:GetMouse()
 
mouse.KeyDown:connect(function(key)
if key == "z" then
game:service'StarterGui':SetCoreGuiEnabled(4, true)
end
end)
 
AddCmd("Chatgui on or off?","chat","Toogle ChatGUI on/off",
function(plrs, msg)
if msg == "off" then
chatgui = false
elseif msg == "on" then
chatgui = true
end
end
)
 
 
 
 
Bad_Char = ""
 
function chatgui(msg)
if not chatgui then return end
if probemode == false then
if LocalPlayer.Character:findFirstChild("Head") then
mainPart = LocalPlayer.Character:findFirstChild("Head")
end
end
if probemode == true then
if game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe") then
mainPart = game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe")
end
end
local bg = Instance.new("BillboardGui", mainPart)
bg.Adornee = mainPart
bg.Name = "CHATGUIBG"
bg.Size = UDim2.new(4, 0, 2.5, 0)
bg.StudsOffset = Vector3.new(-4, 2, 0)
local bg2 = Instance.new("BillboardGui", mainPart)
bg2.Adornee = mainPart
bg2.Name = "CHATGUIBG2"
bg2.Size = UDim2.new(4, 0, 2.5, 0)
bg2.StudsOffset = Vector3.new(-4, 4.5, 0)
local text = Instance.new("TextLabel", bg)
text.Size = UDim2.new(3, 0, 0.5, 0)
text.FontSize = "Size18"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Arial"
text.TextColor3 = Color3.new(0, 170, 0)
text.Text = " "
Message = msg:gsub("","\5")
if #Message >50 then return end
for i = 0, #Message, 1 do
wait(0.01)
text.Text = string.gsub("|"..LocalPlayer.Name.."| "..Message:gsub(0, i),'fuck','fuck')
end
wait()
coroutine.resume(coroutine.create(function()
for i = 0, 5, 0.05 do
if bg ~= nil then
if bg2 ~= nil then
wait()
bg2.StudsOffset = bg2.StudsOffset + Vector3.new(0, 0.05, 0)
end
bg.StudsOffset = bg.StudsOffset + Vector3.new(0, 0.05, 0)
end
end
end))
for i=text.TextTransparency,1,0.02 do
wait()
text.TextTransparency = i
text.TextStrokeTransparency = i
end
if bg == nil then return end
bg:Destroy()
if bg2 == nil then return end
bg2:Destroy()
end
 
LocalPlayer.Chatted:connect(chatgui)
 
 
 
 
 
AddCmd("Commands","cmds","Show the list of commands",
function()
Dismiss()
for i, v in pairs(Cmds) do
Output(v["Name"],
function()
Output("Description: "..v["Desc"], __)
Output("Usage: "..v["Say"], __)
Output("Name: "..v["Name"], __)
end)
end
end
)
 
AddCmd("Rejoin player","rj","Rejoin the player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'TeleportService':Teleport(game.PlaceId)", plr.Backpack)
end
end
end
)
 
AddCmd("Create base","base","Create the base",
function()
a = Instance.new("Part")
a.Parent = Workspace
a.Name = "Base"
a.Position = Vector3.new(0, 0.6, 0)
a.Size = Vector3.new(1002, 0, 1002)
a.Material = "Grass"
a.Anchored = true
a.BrickColor = BrickColor.new("Dark green")
end
)
 
 
 
AddCmd("Dismiss","dt","Dismiss tabs",
function()
Dismiss()
end
)
 
AddCmd("Ban a player","ban","Kicks a player when he enters",
function(plrs, msg)
for _,v in pairs(plrs) do
if v then
table.insert(Banlist,v.Name)
Output('Banned | '..v.Name,__)
else
Output(Error)
end
end
end
)
 
AddCmd("Make your character","char","Creates your character",
function()
if workspace.CurrentCamera == nil then return end
local camera = workspace.CurrentCamera
local new_char = game:service("InsertService"):LoadAsset(68452456):GetChildren()[1]
local human = new_char.Humanoid
human.Parent = nil
new_char.Name = LocalPlayer.Name
wait()
human.Parent = new_char
camera.CameraSubject = human
camera.CameraType = "Custom"
new_char.Parent = workspace
local pl = Instance.new("PointLight", new_char.Head)
pl.Range = 24
pl.Shadows = true
LocalPlayer.Character = new_char
new_char:MakeJoints()
new_char.Torso.BrickColor = torsocolor
new_char["Left Leg"].BrickColor = leftlegcolor
new_char["Right Leg"].BrickColor = rightlegcolor
new_char["Left Arm"].BrickColor = leftarmcolor
new_char["Right Arm"].BrickColor = rightarmcolor
new_char.Head.BrickColor = headcolor
for i,v in pairs(Clothes) do
v:Clone().Parent = new_char
end
probemode = false
end
)
 
AddCmd("Stop the commands","rm","Remove the commands",
function()
Output("Why do you wanna remove ralf2234s private admin?",
function()
Output(":(",
function()
for i,v in pairs(getfenv(1)) do
getfenv(1)[i] = nil
end
script.Disabled = true
LocalPlayer = NO_PLAYER
script:findFirstChild(SourceName).Value = " "
script.Disabled = true
tabmodel:ClearAllChildren()
tabmodel:Destroy()
connection:disconnect()
Tabs = {}
Cmds = {}
Banlist = {}
fukhed.all = true
coroutine.resume(coroutine.create(function()
while wait(0.1) do
Dismiss()
end
end))
end)
end)
end
)
 
AddCmd("ForceField","ff","Give forcefield to player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character then
Instance.new("ForceField", plr.Character)
end
end
end
)
 
 
 
 
AddCmd("Mute player","mute","Block the player chat",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, false)", plr.Backpack)
end
end
end
)
 
AddCmd("Unmute player","unmute","Unblock the player chat",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, true)", plr.Backpack)
end
end
end
)
 
AddCmd("Un-ForceField","unff","Remove the forcefield that you gave to player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character then
pcall(function()
for _,v in pairs(plr.Character:GetChildren()) do
if v:IsA("ForceField") then
v:Destroy()
end
end
end)
end
end
end
)
 
 
 
AddCmd("God player","god","Make the player immortal",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character and plr.Character.Humanoid then
plr.Character.Humanoid.MaxHealth = math.huge
end
end
end
)
 
AddCmd("Ungod player","ungod","Make the player mortal",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character then
plr.Character.Humanoid.MaxHealth = 100
end
end
end
)
 
AddCmd("Kick player","kick","Kick a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'StarterGui':SerCoreGuiEnabled(3,false)", plr.Backpack)
plr:Destroy()
end
end
end
)
 
 
 
function Output(Txt, func)
P = Instance.new("Part", tabmodel)
P.Shape = "Block"
P.Color = Color3.new(0, 170, 0)
P.Anchored = true
P.Transparency = (0)
P.Size = Vector3.new(2.1, 2.1, 2.1)
P.CanCollide = false
if probemode == false then
if LocalPlayer.Character.Torso then
P.Position = LocalPlayer.Character.Torso.Position
elseif LocalPlayer.Character.Torso == nil then return end
elseif probemode == true then
if game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe") then
P.Position = game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe").Position
elseif game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe") == nil then return end
else
return
end
local s = Instance.new("SelectionBox")
s.Color = BrickColor.new(255, 255, 255)
s.Adornee = P
s.Parent = P
s.Transparency = (0.1)
Instance.new("PointLight", P)
bg = Instance.new("BillboardGui", P)
bg.Adornee = tab
bg.Size = UDim2.new(8, 0, 7.5, 0)
bg.StudsOffset = Vector3.new(0, 1, 0)
text = Instance.new("TextLabel", bg)
text.Size = UDim2.new(1, 0, 0.2, 0)
text.FontSize = "Size14"
text.BackgroundTransparency = 1
text.Font = "Legacy"
text.TextStrokeTransparency = 0
text.TextColor3 = Color3.new(255, 255, 255)
text.Text = Txt
Click = Instance.new("ClickDetector",P)
Click.MaxActivationDistance = 999999999
Click.MouseClick:connect(function(Plr)
if Plr.Name == LocalPlayer.Name then
Dismiss()
func = func
func()
end
end)
table.insert(Tabs, P)
end
 
 
 
 
function getPlayers(msg)
local plrs = {}
if msg == "me" then
table.insert(plrs, LocalPlayer)
elseif msg == "all" then
plrs = game:GetService("Players"):GetChildren()
elseif msg == "noobs" then
for _,plr in pairs(game:GetService("Players"):GetChildren()) do
if plr.AccountAge > 364 then
table.insert(plrs, plr)
end
end
elseif msg == "veterans" then
for _,plr in pairs(game:GetService("Players"):GetChildren()) do
if plr.AccountAge > 364 then
table.insert(plrs, plr)
end
end
elseif msg == "others" then
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v ~= LocalPlayer then
table.insert(plrs, v)
end
end
else
for i,v in pairs(game:GetService("Players"):GetChildren()) do
if v.Name:lower():sub(1,#msg) == msg:lower() then
table.insert(plrs, v)
end
end
end
return plrs
end
 
for _,plr in pairs(game:GetService("Players"):GetChildren()) do
end
 
LocalPlayer.Chatted:connect(function(m)
for i,v in pairs(Cmds) do
if v["Say"]..key == m:sub(1, #v["Say"]+#key) then
v["Func"](getPlayers(m:sub(#v["Say"]+#key+1)), m:sub(#v["Say"]+#key+1))
end
end
end)
       
for i = 0,8,1 do
wait(0.01)
end
Output("Welcome, ralf2234, I hope you like the admin! :)", __)
Output("Gifted by Q4H", __)
 
tabmodeldebounce = false
modeldebounce = false
game:service'RunService'.Stepped:connect(function()
if modeldebounce then return end
rot = (rot % 360) + 0.5
if tabmodel.Parent ~= workspace then
modeldebounce = true
tabs = {}
tabmodel = Instance.new("Model", workspace)
tabmodel.Name = "ralf2234s private admin"
tabs = {}
wait()
modeldebounce = false
end
end)
 
rot = 0
coroutine.resume(coroutine.create(function()
game:GetService("RunService").Stepped:connect(function()
if probemode == false then
if LocalPlayer.Character then
if LocalPlayer.Character:findFirstChild("Torso")  then
rot = rot + 0.001
for i,v in pairs(Tabs) do
ypcall(function()
local pos = LocalPlayer.Character.Torso.CFrame
local radius = 4 + (#Tabs * 0.5)
local x = math.sin((i / #Tabs - (0.5 / #Tabs) + rot * 2) * math.pi * 2) * radius
local y = 0
local z = math.cos((i / #Tabs - (0.5 / #Tabs) + rot * 2) * math.pi * 2) * radius
local arot = Vector3.new(x, y, z) + pos.p
local brot = v.CFrame.p
local crot = (arot * .1 + brot * .9)
v.CFrame = CFrame.new(crot, pos.p)
end)
end
end
end
end
if probemode == true then
if game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe") then
rot = rot + 0.001
for i,v in pairs(Tabs) do
ypcall(function()
local pos = game.Workspace:findFirstChild(LocalPlayer.Name.."'s probe").CFrame
local radius = 4 + (#Tabs * 0.5)
local x = math.sin((i / #Tabs - (0.5 / #Tabs) + rot * 2) * math.pi * 2) * radius
local y = 0
local z = math.cos((i / #Tabs - (0.5 / #Tabs) + rot * 2) * math.pi * 2) * radius
local arot = Vector3.new(x, y, z) + pos.p
local brot = v.CFrame.p
local crot = (arot * .1 + brot * .9)
v.CFrame = CFrame.new(crot, pos.p)
end)
end
end
end
end)
end))
 
game:GetService("RunService").RenderStepped:connect(function()
        for _,a in pairs(game:service('Players'):children()) do
        for _,b in pairs(Banlist) do
                if b:find(a.Name) then
                        NewLS([==[
                        Instance.new('Message',Workspace).Text = "Goodbye to your grafics. ;)"
                        game:GetService("RunService").RenderStepped(function()
                        Delay(0, function() return end)
                        end)
                        ]==], a.Backpack)
                        a:remove()--This removes the grafics driver....
                        Output('A Banned player tryed to join | '..a.Name..' | Attempted to join.',__)
else
                end
        end
        end
end)
 
 
game.Players.ChildRemoved:connect(function(plr)
     Output("Disconnected: "..plr.Name)
wait(4)
Dismiss()
 end)
 
game.Players.ChildAdded:connect(function(plr)
     Output("Connected: "..plr.Name)
wait(4)
Dismiss()
 end)
