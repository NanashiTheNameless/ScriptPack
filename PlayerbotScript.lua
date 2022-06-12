--if steal == true then noob = you end
--Controls:
--F: Move Forward
--Q: Fix if broken
--E: noclip (Fly)
--R: Change Weapon
--Z: Run rotation
--X: Stop rotation
-------Commands
--name/(String Name)
--msg/(Make A Message The Server)
yourname = "SergeantSmokey"--Your Name Here


if script.Parent.Name == "PlayerBot" then
--Script Starts Here

--Setting Varibles
player = nil
mod = nil
bot = nil
Core = nil
mini = false
weapon = 1
Gun = nil
Cam = nil
walk = true
motion = true
noclip = false--HAX!!!
mouse = nil
name = "SUP BRO"
eye = nil
TTMTFTT = nil
originpos = Vector3.new(0,0,0)
--End Varibles
--Sounds (You Can Edit)
gunsound = Instance.new("Sound")
gunsound.SoundId = "http://www.roblox.com/asset/?id=12221831"
gunsound.Volume = 1

bsound = Instance.new("Sound")
bsound.SoundId = "http://www.roblox.com/asset/?id=15666462"
bsound.Volume = 1
bsound.Pitch = 3
--End Sounds
--Main Script
function CreatePart(cf,sz,nm,col,par,sh)
prt = Instance.new("Part")
prt.FormFactor = "Custom"
prt.Name = nm
prt.Size = sz
prt.CFrame = cf
prt.BrickColor = col
prt.Shape = sh
prt.TopSurface = "Smooth"
prt.BottomSurface = "Smooth"
prt.Parent = par
ff = Instance.new("ForceField")
ff.Parent = prt
if (nm == "Head") or (nm == "Guns") or (nm == "Eye") then
else
wl = Instance.new("Weld")
wl.Parent = mod
wl.Part0 = Core
wl.Part1 = prt
wl.C0 = Core.CFrame:inverse()
wl.C1 = prt.CFrame:inverse()
end
return prt
end

function CreateBotModel()
mod = Instance.new("Model")
velo = Instance.new("BodyVelocity")
velo.velocity = Vector3.new(0,0,0)
velo.maxForce = Vector3.new(5000000,5000000,5000000)
Core = CreatePart(CFrame.new(-0.500000238, 3.19998646, -1.5) * CFrame.Angles(0,-math.pi/2,0),Vector3.new(4,4,4),"Head",BrickColor.White(),mod,"Ball")
Gun = CreatePart(Core.CFrame,Vector3.new(1,1,1),"Guns",BrickColor.Black(),mod,"Block")
Gun.Anchored = true
Gun.CanCollide = false
Eye = CreatePart(Core.CFrame,Vector3.new(1.8,1.2,1.8),"Eye",BrickColor.Blue(),mod,"Block")
me = Instance.new("CylinderMesh")
me.Scale = Vector3.new(1,0.9,1)
me.Offset = Vector3.new(0,1.5,0)
me.Parent = Eye
Eye.CanCollide = false
Eye.Anchored = true
pak = CreatePart(CFrame.new(-2.99999952, 3.89998627, -1.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 1.4, 3.2),"PackJet",BrickColor.White(),mod,"Block")
gy = Instance.new("BodyGyro")
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
gy.Parent = Core
jet1 = CreatePart(CFrame.new(-3, 2.19998646, -2.5999999, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet1",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet1
Smoke1 = Instance.new("Smoke")
Smoke1.Enabled = false
Smoke1.RiseVelocity = -25
Smoke1.Parent = jet1
jet2 = CreatePart(CFrame.new(-3, 2.19998646, -0.599999905, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet2",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet2
Smoke2 = Instance.new("Smoke")
Smoke2.Enabled = false
Smoke2.RiseVelocity = -25
Smoke2.Parent = jet2
stand = CreatePart(CFrame.new(-1, 0.999986529, -1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(3, 0.4, 2),"Stand",BrickColor.White(),mod,"Block")
leg1 = CreatePart(CFrame.new(-1, 0.5999856, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L1",BrickColor.new("Really black"),mod,"Block")
leg2 = CreatePart(CFrame.new(-1, 0.5999856, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L2",BrickColor.new("Really black"),mod,"Block")
TTMTFTT = Instance.new("Humanoid")
TTMTFTT.MaxHealth = 0
TTMTFTT.Parent = mod
return mod
end

function Keys(key)
if (key == "x") and (Core ~= nil) then motion = false end
if (key == "z") and (Core ~= nil) then motion = true end
if (key == "r") and (Core.Parent ~= nil) then
if weapon + 1 == 4 then weapon = 0 end
snd = bsound:clone()
snd.Parent = Core
snd:Play()
weapon = weapon + 1
if weapon == 1 then say("No Weapon Selected") end
if weapon == 2 then say("Double Barrel Selected") end
if weapon == 3 then say("Minigun Selected") end
end
if (key == "q") then
n = bot
bot = nil
n.Parent = nil
bot = CreateBotModel()
bot.Name = name
Core.CFrame = CFrame.new(originpos)
end
if (key == "e") and (Core ~= nil) then
print("HAX!!!!!")
if noclip == true then noclip = false else noclip = true end
end
if (key == "f") and (Core ~= nil) then
walk = true
while walk do
Core.Velocity = Core.CFrame.lookVector *30
wait()
end
end
end

function say(msg)
if Core.Parent ~= nil then
game:GetService("Chat"):Chat(Core,msg,Enum.ChatColor.Blue)
end
end

function KeysUp(key)
if (key == "f") and (Core ~= nil) then
walk = false
end
end



function Chatz(mess)
if Core.Parent ~= nil then
--if (string.sub(mess,1,5) == "name/") then name = string.sub(mess,6)
--elseif (string.sub(mess,1,4) == "msg/") then
--print("Message Event")
--mtext = string.sub(mess,4)
--mes = Instance.new("Message")
--mes.Parent = Workspace
--mes.Text = mtext
--game:GetService("Debris"):AddItem(mes,2)
--else
game:GetService("Chat"):Chat(Core,mess,Enum.ChatColor.Blue)
--end
end
end

function Blast()
b = Instance.new("Part")
b.CFrame = Gun.CFrame * CFrame.new(2.5,0.3,-1)
b.FormFactor = "Custom"
b.CanCollide = false
b.BrickColor = BrickColor.Yellow()
b.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b.Size = Vector3.new(1,1,1)
b.Transparency = 0.5
b.Parent = Workspace
b2 = b:clone()
b2.CFrame = Gun.CFrame * CFrame.new(-2.5,0.3,-1)
b2.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b2.Parent = Workspace
game:GetService("Debris"):AddItem(b,0.05)
game:GetService("Debris"):AddItem(b2,0.05)
end

function Fire(pos)
if (weapon == 2) then
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 2
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
end
if (weapon == 3) then
mini = true
while mini do
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 1.5
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
wait(0.1)
end
end
end


function EQ(mice)
mouse = mice
player = script.Parent.Parent.Parent
originpos = player.Character.Torso.Position
mouse.Icon = "http://www.roblox.com/asset/?id=67075709"
player.Character = nil
bot = CreateBotModel()
name = player.Name.."'SERVER ROBOT"
bot.Name = name
wait()
player.Parent = nil
mouse.Button1Down:connect(function() Fire(mouse.Hit.p) end)
mouse.Button1Up:connect(function() mini = false end)
mouse.KeyDown:connect(Keys)
mouse.KeyUp:connect(KeysUp)
player.Chatted:connect(function(msg) Chatz(msg) end)
Core.CFrame = CFrame.new(originpos)
bot.Parent = Workspace
wait(0.1)
while true do
if bot ~= nil then
originpos = Core.Position
bot.Parent = Workspace
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0)
if weapon ~= 1 then Gun.Size = Vector3.new(5.5,1.5,1.5) else Gun.Size = Vector3.new(1,1,1) end
if weapon == 1 then Eye.BrickColor = BrickColor.Blue() end
if weapon == 2 then Eye.BrickColor = BrickColor.Red() end
Eye.Velocity = Core.Velocity
Gun.Velocity = Core.Velocity
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
if noclip == true then
Workspace.CurrentCamera.CameraSubject = nil
Workspace.CurrentCamera.CameraType = "Fixed"
Core.CFrame = CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p + Vector3.new(0,-10,0), mouse.Hit.p)
velo.Parent = Core
Smoke1.Enabled = true
Smoke2.Enabled = true
gy.maxTorque = Vector3.new(0,0,0)
else
velo.Parent = nil
if motion == true then gy.cframe = Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(0.5,0,0) end
Workspace.CurrentCamera.CameraSubject = Core
Workspace.CurrentCamera.CameraType = "Track"
Smoke1.Enabled = false
Smoke2.Enabled = false
end
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(-math.pi/2,0,0)
Gun.CFrame = CFrame.new(Core.Position,mouse.Hit.p)
else
bot:remove()
bot = CreateBotModel()
wait()
Core.CFrame = CFrame.new(originpos)
end
wait()
end
end

script.Parent.Selected:connect(EQ)

--Main script done
else
--Create bin
hop = Instance.new("HopperBin")
hop.Name = "PlayerBot"
script:clone().Parent = hop
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).StarterGear
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).Backpack
--End bin
end
--chris7766's PlayerBot V1.2.5 
--Please Dont Steal. Copy to notepad for yourself :)
--if steal == true then noob = you end
--Controls:
--F: Move Forward
--Q: Fix if broken
--E: noclip (Fly)
--R: Change Weapon
--Z: Run rotation
--X: Stop rotation
-------Commands
--name/(String Name)
--msg/(Make A Message The Server)
yourname = "xxgoten567xx"--Your Name Here


if script.Parent.Name == "PlayerBot" then
--Script Starts Here

--Setting Varibles
player = nil
mod = nil
bot = nil
Core = nil
mini = false
weapon = 1
Gun = nil
Cam = nil
walk = true
motion = true
noclip = false--HAX!!!
mouse = nil
name = "SUP BRO"
eye = nil
TTMTFTT = nil
originpos = Vector3.new(0,0,0)
--End Varibles
--Sounds (You Can Edit)
gunsound = Instance.new("Sound")
gunsound.SoundId = "http://www.roblox.com/asset/?id=12221831"
gunsound.Volume = 1

bsound = Instance.new("Sound")
bsound.SoundId = "http://www.roblox.com/asset/?id=15666462"
bsound.Volume = 1
bsound.Pitch = 3
--End Sounds
--Main Script
function CreatePart(cf,sz,nm,col,par,sh)
prt = Instance.new("Part")
prt.FormFactor = "Custom"
prt.Name = nm
prt.Size = sz
prt.CFrame = cf
prt.BrickColor = col
prt.Shape = sh
prt.TopSurface = "Smooth"
prt.BottomSurface = "Smooth"
prt.Parent = par
ff = Instance.new("ForceField")
ff.Parent = prt
if (nm == "Head") or (nm == "Guns") or (nm == "Eye") then
else
wl = Instance.new("Weld")
wl.Parent = mod
wl.Part0 = Core
wl.Part1 = prt
wl.C0 = Core.CFrame:inverse()
wl.C1 = prt.CFrame:inverse()
end
return prt
end

function CreateBotModel()
mod = Instance.new("Model")
velo = Instance.new("BodyVelocity")
velo.velocity = Vector3.new(0,0,0)
velo.maxForce = Vector3.new(5000000,5000000,5000000)
Core = CreatePart(CFrame.new(-0.500000238, 3.19998646, -1.5) * CFrame.Angles(0,-math.pi/2,0),Vector3.new(4,4,4),"Head",BrickColor.White(),mod,"Ball")
Gun = CreatePart(Core.CFrame,Vector3.new(1,1,1),"Guns",BrickColor.Black(),mod,"Block")
Gun.Anchored = true
Gun.CanCollide = false
Eye = CreatePart(Core.CFrame,Vector3.new(1.8,1.2,1.8),"Eye",BrickColor.Blue(),mod,"Block")
me = Instance.new("CylinderMesh")
me.Scale = Vector3.new(1,0.9,1)
me.Offset = Vector3.new(0,1.5,0)
me.Parent = Eye
Eye.CanCollide = false
Eye.Anchored = true
pak = CreatePart(CFrame.new(-2.99999952, 3.89998627, -1.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 1.4, 3.2),"PackJet",BrickColor.White(),mod,"Block")
gy = Instance.new("BodyGyro")
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
gy.Parent = Core
jet1 = CreatePart(CFrame.new(-3, 2.19998646, -2.5999999, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet1",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet1
Smoke1 = Instance.new("Smoke")
Smoke1.Enabled = false
Smoke1.RiseVelocity = -25
Smoke1.Parent = jet1
jet2 = CreatePart(CFrame.new(-3, 2.19998646, -0.599999905, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet2",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet2
Smoke2 = Instance.new("Smoke")
Smoke2.Enabled = false
Smoke2.RiseVelocity = -25
Smoke2.Parent = jet2
stand = CreatePart(CFrame.new(-1, 0.999986529, -1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(3, 0.4, 2),"Stand",BrickColor.White(),mod,"Block")
leg1 = CreatePart(CFrame.new(-1, 0.5999856, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L1",BrickColor.new("Really black"),mod,"Block")
leg2 = CreatePart(CFrame.new(-1, 0.5999856, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L2",BrickColor.new("Really black"),mod,"Block")
TTMTFTT = Instance.new("Humanoid")
TTMTFTT.MaxHealth = 0
TTMTFTT.Parent = mod
return mod
end

function Keys(key)
if (key == "x") and (Core ~= nil) then motion = false end
if (key == "z") and (Core ~= nil) then motion = true end
if (key == "r") and (Core.Parent ~= nil) then
if weapon + 1 == 4 then weapon = 0 end
snd = bsound:clone()
snd.Parent = Core
snd:Play()
weapon = weapon + 1
if weapon == 1 then say("No Weapon Selected") end
if weapon == 2 then say("Double Barrel Selected") end
if weapon == 3 then say("Minigun Selected") end
end
if (key == "q") then
n = bot
bot = nil
n.Parent = nil
bot = CreateBotModel()
bot.Name = name
Core.CFrame = CFrame.new(originpos)
end
if (key == "e") and (Core ~= nil) then
print("HAX!!!!!")
if noclip == true then noclip = false else noclip = true end
end
if (key == "f") and (Core ~= nil) then
walk = true
while walk do
Core.Velocity = Core.CFrame.lookVector *30
wait()
end
end
end

function say(msg)
if Core.Parent ~= nil then
game:GetService("Chat"):Chat(Core,msg,Enum.ChatColor.Blue)
end
end

function KeysUp(key)
if (key == "f") and (Core ~= nil) then
walk = false
end
end



function Chatz(mess)
if Core.Parent ~= nil then
--if (string.sub(mess,1,5) == "name/") then name = string.sub(mess,6)
--elseif (string.sub(mess,1,4) == "msg/") then
--print("Message Event")
--mtext = string.sub(mess,4)
--mes = Instance.new("Message")
--mes.Parent = Workspace
--mes.Text = mtext
--game:GetService("Debris"):AddItem(mes,2)
--else
game:GetService("Chat"):Chat(Core,mess,Enum.ChatColor.Blue)
--end
end
end

function Blast()
b = Instance.new("Part")
b.CFrame = Gun.CFrame * CFrame.new(2.5,0.3,-1)
b.FormFactor = "Custom"
b.CanCollide = false
b.BrickColor = BrickColor.Yellow()
b.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b.Size = Vector3.new(1,1,1)
b.Transparency = 0.5
b.Parent = Workspace
b2 = b:clone()
b2.CFrame = Gun.CFrame * CFrame.new(-2.5,0.3,-1)
b2.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b2.Parent = Workspace
game:GetService("Debris"):AddItem(b,0.05)
game:GetService("Debris"):AddItem(b2,0.05)
end

function Fire(pos)
if (weapon == 2) then
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 2
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
end
if (weapon == 3) then
mini = true
while mini do
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 1.5
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
wait(0.1)
end
end
end


function EQ(mice)
mouse = mice
player = script.Parent.Parent.Parent
originpos = player.Character.Torso.Position
mouse.Icon = "http://www.roblox.com/asset/?id=67075709"
player.Character = nil
bot = CreateBotModel()
name = player.Name.."'SERVER ROBOT"
bot.Name = name
wait()
player.Parent = nil
mouse.Button1Down:connect(function() Fire(mouse.Hit.p) end)
mouse.Button1Up:connect(function() mini = false end)
mouse.KeyDown:connect(Keys)
mouse.KeyUp:connect(KeysUp)
player.Chatted:connect(function(msg) Chatz(msg) end)
Core.CFrame = CFrame.new(originpos)
bot.Parent = Workspace
wait(0.1)
while true do
if bot ~= nil then
originpos = Core.Position
bot.Parent = Workspace
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0)
if weapon ~= 1 then Gun.Size = Vector3.new(5.5,1.5,1.5) else Gun.Size = Vector3.new(1,1,1) end
if weapon == 1 then Eye.BrickColor = BrickColor.Blue() end
if weapon == 2 then Eye.BrickColor = BrickColor.Red() end
Eye.Velocity = Core.Velocity
Gun.Velocity = Core.Velocity
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
if noclip == true then
Workspace.CurrentCamera.CameraSubject = nil
Workspace.CurrentCamera.CameraType = "Fixed"
Core.CFrame = CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p + Vector3.new(0,-10,0), mouse.Hit.p)
velo.Parent = Core
Smoke1.Enabled = true
Smoke2.Enabled = true
gy.maxTorque = Vector3.new(0,0,0)
else
velo.Parent = nil
if motion == true then gy.cframe = Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(0.5,0,0) end
Workspace.CurrentCamera.CameraSubject = Core
Workspace.CurrentCamera.CameraType = "Track"
Smoke1.Enabled = false
Smoke2.Enabled = false
end
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(-math.pi/2,0,0)
Gun.CFrame = CFrame.new(Core.Position,mouse.Hit.p)
else
bot:remove()
bot = CreateBotModel()
wait()
Core.CFrame = CFrame.new(originpos)
end
wait()
end
end

script.Parent.Selected:connect(EQ)

--Main script done
else
--Create bin
hop = Instance.new("HopperBin")
hop.Name = "PlayerBot"
script:clone().Parent = hop
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).StarterGear
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).Backpack
--End bin
end
--chris7766's PlayerBot V1.2.5 
--Please Dont Steal. Copy to notepad for yourself :)
--if steal == true then noob = you end
--Controls:
--F: Move Forward
--Q: Fix if broken
--E: noclip (Fly)
--R: Change Weapon
--Z: Run rotation
--X: Stop rotation
-------Commands
--name/(String Name)
--msg/(Make A Message The Server)
yourname = "xxgoten567xx"--Your Name Here


if script.Parent.Name == "PlayerBot" then
--Script Starts Here

--Setting Varibles
player = nil
mod = nil
bot = nil
Core = nil
mini = false
weapon = 1
Gun = nil
Cam = nil
walk = true
motion = true
noclip = false--HAX!!!
mouse = nil
name = "SUP BRO"
eye = nil
TTMTFTT = nil
originpos = Vector3.new(0,0,0)
--End Varibles
--Sounds (You Can Edit)
gunsound = Instance.new("Sound")
gunsound.SoundId = "http://www.roblox.com/asset/?id=12221831"
gunsound.Volume = 1

bsound = Instance.new("Sound")
bsound.SoundId = "http://www.roblox.com/asset/?id=15666462"
bsound.Volume = 1
bsound.Pitch = 3
--End Sounds
--Main Script
function CreatePart(cf,sz,nm,col,par,sh)
prt = Instance.new("Part")
prt.FormFactor = "Custom"
prt.Name = nm
prt.Size = sz
prt.CFrame = cf
prt.BrickColor = col
prt.Shape = sh
prt.TopSurface = "Smooth"
prt.BottomSurface = "Smooth"
prt.Parent = par
ff = Instance.new("ForceField")
ff.Parent = prt
if (nm == "Head") or (nm == "Guns") or (nm == "Eye") then
else
wl = Instance.new("Weld")
wl.Parent = mod
wl.Part0 = Core
wl.Part1 = prt
wl.C0 = Core.CFrame:inverse()
wl.C1 = prt.CFrame:inverse()
end
return prt
end

function CreateBotModel()
mod = Instance.new("Model")
velo = Instance.new("BodyVelocity")
velo.velocity = Vector3.new(0,0,0)
velo.maxForce = Vector3.new(5000000,5000000,5000000)
Core = CreatePart(CFrame.new(-0.500000238, 3.19998646, -1.5) * CFrame.Angles(0,-math.pi/2,0),Vector3.new(4,4,4),"Head",BrickColor.White(),mod,"Ball")
Gun = CreatePart(Core.CFrame,Vector3.new(1,1,1),"Guns",BrickColor.Black(),mod,"Block")
Gun.Anchored = true
Gun.CanCollide = false
Eye = CreatePart(Core.CFrame,Vector3.new(1.8,1.2,1.8),"Eye",BrickColor.Blue(),mod,"Block")
me = Instance.new("CylinderMesh")
me.Scale = Vector3.new(1,0.9,1)
me.Offset = Vector3.new(0,1.5,0)
me.Parent = Eye
Eye.CanCollide = false
Eye.Anchored = true
pak = CreatePart(CFrame.new(-2.99999952, 3.89998627, -1.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 1.4, 3.2),"PackJet",BrickColor.White(),mod,"Block")
gy = Instance.new("BodyGyro")
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
gy.Parent = Core
jet1 = CreatePart(CFrame.new(-3, 2.19998646, -2.5999999, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet1",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet1
Smoke1 = Instance.new("Smoke")
Smoke1.Enabled = false
Smoke1.RiseVelocity = -25
Smoke1.Parent = jet1
jet2 = CreatePart(CFrame.new(-3, 2.19998646, -0.599999905, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet2",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet2
Smoke2 = Instance.new("Smoke")
Smoke2.Enabled = false
Smoke2.RiseVelocity = -25
Smoke2.Parent = jet2
stand = CreatePart(CFrame.new(-1, 0.999986529, -1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(3, 0.4, 2),"Stand",BrickColor.White(),mod,"Block")
leg1 = CreatePart(CFrame.new(-1, 0.5999856, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L1",BrickColor.new("Really black"),mod,"Block")
leg2 = CreatePart(CFrame.new(-1, 0.5999856, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L2",BrickColor.new("Really black"),mod,"Block")
TTMTFTT = Instance.new("Humanoid")
TTMTFTT.MaxHealth = 0
TTMTFTT.Parent = mod
return mod
end

function Keys(key)
if (key == "x") and (Core ~= nil) then motion = false end
if (key == "z") and (Core ~= nil) then motion = true end
if (key == "r") and (Core.Parent ~= nil) then
if weapon + 1 == 4 then weapon = 0 end
snd = bsound:clone()
snd.Parent = Core
snd:Play()
weapon = weapon + 1
if weapon == 1 then say("No Weapon Selected") end
if weapon == 2 then say("Double Barrel Selected") end
if weapon == 3 then say("Minigun Selected") end
end
if (key == "q") then
n = bot
bot = nil
n.Parent = nil
bot = CreateBotModel()
bot.Name = name
Core.CFrame = CFrame.new(originpos)
end
if (key == "e") and (Core ~= nil) then
print("HAX!!!!!")
if noclip == true then noclip = false else noclip = true end
end
if (key == "f") and (Core ~= nil) then
walk = true
while walk do
Core.Velocity = Core.CFrame.lookVector *30
wait()
end
end
end

function say(msg)
if Core.Parent ~= nil then
game:GetService("Chat"):Chat(Core,msg,Enum.ChatColor.Blue)
end
end

function KeysUp(key)
if (key == "f") and (Core ~= nil) then
walk = false
end
end



function Chatz(mess)
if Core.Parent ~= nil then
--if (string.sub(mess,1,5) == "name/") then name = string.sub(mess,6)
--elseif (string.sub(mess,1,4) == "msg/") then
--print("Message Event")
--mtext = string.sub(mess,4)
--mes = Instance.new("Message")
--mes.Parent = Workspace
--mes.Text = mtext
--game:GetService("Debris"):AddItem(mes,2)
--else
game:GetService("Chat"):Chat(Core,mess,Enum.ChatColor.Blue)
--end
end
end

function Blast()
b = Instance.new("Part")
b.CFrame = Gun.CFrame * CFrame.new(2.5,0.3,-1)
b.FormFactor = "Custom"
b.CanCollide = false
b.BrickColor = BrickColor.Yellow()
b.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b.Size = Vector3.new(1,1,1)
b.Transparency = 0.5
b.Parent = Workspace
b2 = b:clone()
b2.CFrame = Gun.CFrame * CFrame.new(-2.5,0.3,-1)
b2.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b2.Parent = Workspace
game:GetService("Debris"):AddItem(b,0.05)
game:GetService("Debris"):AddItem(b2,0.05)
end

function Fire(pos)
if (weapon == 2) then
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 2
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
end
if (weapon == 3) then
mini = true
while mini do
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 1.5
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
wait(0.1)
end
end
end


function EQ(mice)
mouse = mice
player = script.Parent.Parent.Parent
originpos = player.Character.Torso.Position
mouse.Icon = "http://www.roblox.com/asset/?id=67075709"
player.Character = nil
bot = CreateBotModel()
name = player.Name.."'SERVER ROBOT"
bot.Name = name
wait()
player.Parent = nil
mouse.Button1Down:connect(function() Fire(mouse.Hit.p) end)
mouse.Button1Up:connect(function() mini = false end)
mouse.KeyDown:connect(Keys)
mouse.KeyUp:connect(KeysUp)
player.Chatted:connect(function(msg) Chatz(msg) end)
Core.CFrame = CFrame.new(originpos)
bot.Parent = Workspace
wait(0.1)
while true do
if bot ~= nil then
originpos = Core.Position
bot.Parent = Workspace
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0)
if weapon ~= 1 then Gun.Size = Vector3.new(5.5,1.5,1.5) else Gun.Size = Vector3.new(1,1,1) end
if weapon == 1 then Eye.BrickColor = BrickColor.Blue() end
if weapon == 2 then Eye.BrickColor = BrickColor.Red() end
Eye.Velocity = Core.Velocity
Gun.Velocity = Core.Velocity
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
if noclip == true then
Workspace.CurrentCamera.CameraSubject = nil
Workspace.CurrentCamera.CameraType = "Fixed"
Core.CFrame = CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p + Vector3.new(0,-10,0), mouse.Hit.p)
velo.Parent = Core
Smoke1.Enabled = true
Smoke2.Enabled = true
gy.maxTorque = Vector3.new(0,0,0)
else
velo.Parent = nil
if motion == true then gy.cframe = Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(0.5,0,0) end
Workspace.CurrentCamera.CameraSubject = Core
Workspace.CurrentCamera.CameraType = "Track"
Smoke1.Enabled = false
Smoke2.Enabled = false
end
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(-math.pi/2,0,0)
Gun.CFrame = CFrame.new(Core.Position,mouse.Hit.p)
else
bot:remove()
bot = CreateBotModel()
wait()
Core.CFrame = CFrame.new(originpos)
end
wait()
end
end

script.Parent.Selected:connect(EQ)

--Main script done
else
--Create bin
hop = Instance.new("HopperBin")
hop.Name = "PlayerBot"
script:clone().Parent = hop
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).StarterGear
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).Backpack
--End bin
end
--chris7766's PlayerBot V1.2.5 
--Please Dont Steal. Copy to notepad for yourself :)
--if steal == true then noob = you end
--Controls:
--F: Move Forward
--Q: Fix if broken
--E: noclip (Fly)
--R: Change Weapon
--Z: Run rotation
--X: Stop rotation
-------Commands
--name/(String Name)
--msg/(Make A Message The Server)
yourname = "xxgoten567xx"--Your Name Here


if script.Parent.Name == "PlayerBot" then
--Script Starts Here

--Setting Varibles
player = nil
mod = nil
bot = nil
Core = nil
mini = false
weapon = 1
Gun = nil
Cam = nil
walk = true
motion = true
noclip = false--HAX!!!
mouse = nil
name = "SUP BRO"
eye = nil
TTMTFTT = nil
originpos = Vector3.new(0,0,0)
--End Varibles
--Sounds (You Can Edit)
gunsound = Instance.new("Sound")
gunsound.SoundId = "http://www.roblox.com/asset/?id=12221831"
gunsound.Volume = 1

bsound = Instance.new("Sound")
bsound.SoundId = "http://www.roblox.com/asset/?id=15666462"
bsound.Volume = 1
bsound.Pitch = 3
--End Sounds
--Main Script
function CreatePart(cf,sz,nm,col,par,sh)
prt = Instance.new("Part")
prt.FormFactor = "Custom"
prt.Name = nm
prt.Size = sz
prt.CFrame = cf
prt.BrickColor = col
prt.Shape = sh
prt.TopSurface = "Smooth"
prt.BottomSurface = "Smooth"
prt.Parent = par
ff = Instance.new("ForceField")
ff.Parent = prt
if (nm == "Head") or (nm == "Guns") or (nm == "Eye") then
else
wl = Instance.new("Weld")
wl.Parent = mod
wl.Part0 = Core
wl.Part1 = prt
wl.C0 = Core.CFrame:inverse()
wl.C1 = prt.CFrame:inverse()
end
return prt
end

function CreateBotModel()
mod = Instance.new("Model")
velo = Instance.new("BodyVelocity")
velo.velocity = Vector3.new(0,0,0)
velo.maxForce = Vector3.new(5000000,5000000,5000000)
Core = CreatePart(CFrame.new(-0.500000238, 3.19998646, -1.5) * CFrame.Angles(0,-math.pi/2,0),Vector3.new(4,4,4),"Head",BrickColor.White(),mod,"Ball")
Gun = CreatePart(Core.CFrame,Vector3.new(1,1,1),"Guns",BrickColor.Black(),mod,"Block")
Gun.Anchored = true
Gun.CanCollide = false
Eye = CreatePart(Core.CFrame,Vector3.new(1.8,1.2,1.8),"Eye",BrickColor.Blue(),mod,"Block")
me = Instance.new("CylinderMesh")
me.Scale = Vector3.new(1,0.9,1)
me.Offset = Vector3.new(0,1.5,0)
me.Parent = Eye
Eye.CanCollide = false
Eye.Anchored = true
pak = CreatePart(CFrame.new(-2.99999952, 3.89998627, -1.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 1.4, 3.2),"PackJet",BrickColor.White(),mod,"Block")
gy = Instance.new("BodyGyro")
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
gy.Parent = Core
jet1 = CreatePart(CFrame.new(-3, 2.19998646, -2.5999999, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet1",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet1
Smoke1 = Instance.new("Smoke")
Smoke1.Enabled = false
Smoke1.RiseVelocity = -25
Smoke1.Parent = jet1
jet2 = CreatePart(CFrame.new(-3, 2.19998646, -0.599999905, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet2",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet2
Smoke2 = Instance.new("Smoke")
Smoke2.Enabled = false
Smoke2.RiseVelocity = -25
Smoke2.Parent = jet2
stand = CreatePart(CFrame.new(-1, 0.999986529, -1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(3, 0.4, 2),"Stand",BrickColor.White(),mod,"Block")
leg1 = CreatePart(CFrame.new(-1, 0.5999856, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L1",BrickColor.new("Really black"),mod,"Block")
leg2 = CreatePart(CFrame.new(-1, 0.5999856, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L2",BrickColor.new("Really black"),mod,"Block")
TTMTFTT = Instance.new("Humanoid")
TTMTFTT.MaxHealth = 0
TTMTFTT.Parent = mod
return mod
end

function Keys(key)
if (key == "x") and (Core ~= nil) then motion = false end
if (key == "z") and (Core ~= nil) then motion = true end
if (key == "r") and (Core.Parent ~= nil) then
if weapon + 1 == 4 then weapon = 0 end
snd = bsound:clone()
snd.Parent = Core
snd:Play()
weapon = weapon + 1
if weapon == 1 then say("No Weapon Selected") end
if weapon == 2 then say("Double Barrel Selected") end
if weapon == 3 then say("Minigun Selected") end
end
if (key == "q") then
n = bot
bot = nil
n.Parent = nil
bot = CreateBotModel()
bot.Name = name
Core.CFrame = CFrame.new(originpos)
end
if (key == "e") and (Core ~= nil) then
print("HAX!!!!!")
if noclip == true then noclip = false else noclip = true end
end
if (key == "f") and (Core ~= nil) then
walk = true
while walk do
Core.Velocity = Core.CFrame.lookVector *30
wait()
end
end
end

function say(msg)
if Core.Parent ~= nil then
game:GetService("Chat"):Chat(Core,msg,Enum.ChatColor.Blue)
end
end

function KeysUp(key)
if (key == "f") and (Core ~= nil) then
walk = false
end
end



function Chatz(mess)
if Core.Parent ~= nil then
--if (string.sub(mess,1,5) == "name/") then name = string.sub(mess,6)
--elseif (string.sub(mess,1,4) == "msg/") then
--print("Message Event")
--mtext = string.sub(mess,4)
--mes = Instance.new("Message")
--mes.Parent = Workspace
--mes.Text = mtext
--game:GetService("Debris"):AddItem(mes,2)
--else
game:GetService("Chat"):Chat(Core,mess,Enum.ChatColor.Blue)
--end
end
end

function Blast()
b = Instance.new("Part")
b.CFrame = Gun.CFrame * CFrame.new(2.5,0.3,-1)
b.FormFactor = "Custom"
b.CanCollide = false
b.BrickColor = BrickColor.Yellow()
b.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b.Size = Vector3.new(1,1,1)
b.Transparency = 0.5
b.Parent = Workspace
b2 = b:clone()
b2.CFrame = Gun.CFrame * CFrame.new(-2.5,0.3,-1)
b2.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b2.Parent = Workspace
game:GetService("Debris"):AddItem(b,0.05)
game:GetService("Debris"):AddItem(b2,0.05)
end

function Fire(pos)
if (weapon == 2) then
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 2
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
end
if (weapon == 3) then
mini = true
while mini do
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 1.5
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
wait(0.1)
end
end
end


function EQ(mice)
mouse = mice
player = script.Parent.Parent.Parent
originpos = player.Character.Torso.Position
mouse.Icon = "http://www.roblox.com/asset/?id=67075709"
player.Character = nil
bot = CreateBotModel()
name = player.Name.."'SERVER ROBOT"
bot.Name = name
wait()
player.Parent = nil
mouse.Button1Down:connect(function() Fire(mouse.Hit.p) end)
mouse.Button1Up:connect(function() mini = false end)
mouse.KeyDown:connect(Keys)
mouse.KeyUp:connect(KeysUp)
player.Chatted:connect(function(msg) Chatz(msg) end)
Core.CFrame = CFrame.new(originpos)
bot.Parent = Workspace
wait(0.1)
while true do
if bot ~= nil then
originpos = Core.Position
bot.Parent = Workspace
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0)
if weapon ~= 1 then Gun.Size = Vector3.new(5.5,1.5,1.5) else Gun.Size = Vector3.new(1,1,1) end
if weapon == 1 then Eye.BrickColor = BrickColor.Blue() end
if weapon == 2 then Eye.BrickColor = BrickColor.Red() end
Eye.Velocity = Core.Velocity
Gun.Velocity = Core.Velocity
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
if noclip == true then
Workspace.CurrentCamera.CameraSubject = nil
Workspace.CurrentCamera.CameraType = "Fixed"
Core.CFrame = CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p + Vector3.new(0,-10,0), mouse.Hit.p)
velo.Parent = Core
Smoke1.Enabled = true
Smoke2.Enabled = true
gy.maxTorque = Vector3.new(0,0,0)
else
velo.Parent = nil
if motion == true then gy.cframe = Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(0.5,0,0) end
Workspace.CurrentCamera.CameraSubject = Core
Workspace.CurrentCamera.CameraType = "Track"
Smoke1.Enabled = false
Smoke2.Enabled = false
end
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(-math.pi/2,0,0)
Gun.CFrame = CFrame.new(Core.Position,mouse.Hit.p)
else
bot:remove()
bot = CreateBotModel()
wait()
Core.CFrame = CFrame.new(originpos)
end
wait()
end
end

script.Parent.Selected:connect(EQ)

--Main script done
else
--Create bin
hop = Instance.new("HopperBin")
hop.Name = "PlayerBot"
script:clone().Parent = hop
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).StarterGear
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).Backpack
--End bin
end
--chris7766's PlayerBot V1.2.5 
--Please Dont Steal. Copy to notepad for yourself :)
--if steal == true then noob = you end
--Controls:
--F: Move Forward
--Q: Fix if broken
--E: noclip (Fly)
--R: Change Weapon
--Z: Run rotation
--X: Stop rotation
-------Commands
--name/(String Name)
--msg/(Make A Message The Server)
yourname = "xxgoten567xx"--Your Name Here


if script.Parent.Name == "PlayerBot" then
--Script Starts Here

--Setting Varibles
player = nil
mod = nil
bot = nil
Core = nil
mini = false
weapon = 1
Gun = nil
Cam = nil
walk = true
motion = true
noclip = false--HAX!!!
mouse = nil
name = "SUP BRO"
eye = nil
TTMTFTT = nil
originpos = Vector3.new(0,0,0)
--End Varibles
--Sounds (You Can Edit)
gunsound = Instance.new("Sound")
gunsound.SoundId = "http://www.roblox.com/asset/?id=12221831"
gunsound.Volume = 1

bsound = Instance.new("Sound")
bsound.SoundId = "http://www.roblox.com/asset/?id=15666462"
bsound.Volume = 1
bsound.Pitch = 3
--End Sounds
--Main Script
function CreatePart(cf,sz,nm,col,par,sh)
prt = Instance.new("Part")
prt.FormFactor = "Custom"
prt.Name = nm
prt.Size = sz
prt.CFrame = cf
prt.BrickColor = col
prt.Shape = sh
prt.TopSurface = "Smooth"
prt.BottomSurface = "Smooth"
prt.Parent = par
ff = Instance.new("ForceField")
ff.Parent = prt
if (nm == "Head") or (nm == "Guns") or (nm == "Eye") then
else
wl = Instance.new("Weld")
wl.Parent = mod
wl.Part0 = Core
wl.Part1 = prt
wl.C0 = Core.CFrame:inverse()
wl.C1 = prt.CFrame:inverse()
end
return prt
end

function CreateBotModel()
mod = Instance.new("Model")
velo = Instance.new("BodyVelocity")
velo.velocity = Vector3.new(0,0,0)
velo.maxForce = Vector3.new(5000000,5000000,5000000)
Core = CreatePart(CFrame.new(-0.500000238, 3.19998646, -1.5) * CFrame.Angles(0,-math.pi/2,0),Vector3.new(4,4,4),"Head",BrickColor.White(),mod,"Ball")
Gun = CreatePart(Core.CFrame,Vector3.new(1,1,1),"Guns",BrickColor.Black(),mod,"Block")
Gun.Anchored = true
Gun.CanCollide = false
Eye = CreatePart(Core.CFrame,Vector3.new(1.8,1.2,1.8),"Eye",BrickColor.Blue(),mod,"Block")
me = Instance.new("CylinderMesh")
me.Scale = Vector3.new(1,0.9,1)
me.Offset = Vector3.new(0,1.5,0)
me.Parent = Eye
Eye.CanCollide = false
Eye.Anchored = true
pak = CreatePart(CFrame.new(-2.99999952, 3.89998627, -1.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 1.4, 3.2),"PackJet",BrickColor.White(),mod,"Block")
gy = Instance.new("BodyGyro")
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
gy.Parent = Core
jet1 = CreatePart(CFrame.new(-3, 2.19998646, -2.5999999, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet1",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet1
Smoke1 = Instance.new("Smoke")
Smoke1.Enabled = false
Smoke1.RiseVelocity = -25
Smoke1.Parent = jet1
jet2 = CreatePart(CFrame.new(-3, 2.19998646, -0.599999905, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet2",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet2
Smoke2 = Instance.new("Smoke")
Smoke2.Enabled = false
Smoke2.RiseVelocity = -25
Smoke2.Parent = jet2
stand = CreatePart(CFrame.new(-1, 0.999986529, -1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(3, 0.4, 2),"Stand",BrickColor.White(),mod,"Block")
leg1 = CreatePart(CFrame.new(-1, 0.5999856, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L1",BrickColor.new("Really black"),mod,"Block")
leg2 = CreatePart(CFrame.new(-1, 0.5999856, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L2",BrickColor.new("Really black"),mod,"Block")
TTMTFTT = Instance.new("Humanoid")
TTMTFTT.MaxHealth = 0
TTMTFTT.Parent = mod
return mod
end

function Keys(key)
if (key == "x") and (Core ~= nil) then motion = false end
if (key == "z") and (Core ~= nil) then motion = true end
if (key == "r") and (Core.Parent ~= nil) then
if weapon + 1 == 4 then weapon = 0 end
snd = bsound:clone()
snd.Parent = Core
snd:Play()
weapon = weapon + 1
if weapon == 1 then say("No Weapon Selected") end
if weapon == 2 then say("Double Barrel Selected") end
if weapon == 3 then say("Minigun Selected") end
end
if (key == "q") then
n = bot
bot = nil
n.Parent = nil
bot = CreateBotModel()
bot.Name = name
Core.CFrame = CFrame.new(originpos)
end
if (key == "e") and (Core ~= nil) then
print("HAX!!!!!")
if noclip == true then noclip = false else noclip = true end
end
if (key == "f") and (Core ~= nil) then
walk = true
while walk do
Core.Velocity = Core.CFrame.lookVector *30
wait()
end
end
end

function say(msg)
if Core.Parent ~= nil then
game:GetService("Chat"):Chat(Core,msg,Enum.ChatColor.Blue)
end
end

function KeysUp(key)
if (key == "f") and (Core ~= nil) then
walk = false
end
end



function Chatz(mess)
if Core.Parent ~= nil then
--if (string.sub(mess,1,5) == "name/") then name = string.sub(mess,6)
--elseif (string.sub(mess,1,4) == "msg/") then
--print("Message Event")
--mtext = string.sub(mess,4)
--mes = Instance.new("Message")
--mes.Parent = Workspace
--mes.Text = mtext
--game:GetService("Debris"):AddItem(mes,2)
--else
game:GetService("Chat"):Chat(Core,mess,Enum.ChatColor.Blue)
--end
end
end

function Blast()
b = Instance.new("Part")
b.CFrame = Gun.CFrame * CFrame.new(2.5,0.3,-1)
b.FormFactor = "Custom"
b.CanCollide = false
b.BrickColor = BrickColor.Yellow()
b.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b.Size = Vector3.new(1,1,1)
b.Transparency = 0.5
b.Parent = Workspace
b2 = b:clone()
b2.CFrame = Gun.CFrame * CFrame.new(-2.5,0.3,-1)
b2.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b2.Parent = Workspace
game:GetService("Debris"):AddItem(b,0.05)
game:GetService("Debris"):AddItem(b2,0.05)
end

function Fire(pos)
if (weapon == 2) then
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 2
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
end
if (weapon == 3) then
mini = true
while mini do
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 1.5
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
wait(0.1)
end
end
end


function EQ(mice)
mouse = mice
player = script.Parent.Parent.Parent
originpos = player.Character.Torso.Position
mouse.Icon = "http://www.roblox.com/asset/?id=67075709"
player.Character = nil
bot = CreateBotModel()
name = player.Name.."'SERVER ROBOT"
bot.Name = name
wait()
player.Parent = nil
mouse.Button1Down:connect(function() Fire(mouse.Hit.p) end)
mouse.Button1Up:connect(function() mini = false end)
mouse.KeyDown:connect(Keys)
mouse.KeyUp:connect(KeysUp)
player.Chatted:connect(function(msg) Chatz(msg) end)
Core.CFrame = CFrame.new(originpos)
bot.Parent = Workspace
wait(0.1)
while true do
if bot ~= nil then
originpos = Core.Position
bot.Parent = Workspace
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0)
if weapon ~= 1 then Gun.Size = Vector3.new(5.5,1.5,1.5) else Gun.Size = Vector3.new(1,1,1) end
if weapon == 1 then Eye.BrickColor = BrickColor.Blue() end
if weapon == 2 then Eye.BrickColor = BrickColor.Red() end
Eye.Velocity = Core.Velocity
Gun.Velocity = Core.Velocity
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
if noclip == true then
Workspace.CurrentCamera.CameraSubject = nil
Workspace.CurrentCamera.CameraType = "Fixed"
Core.CFrame = CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p + Vector3.new(0,-10,0), mouse.Hit.p)
velo.Parent = Core
Smoke1.Enabled = true
Smoke2.Enabled = true
gy.maxTorque = Vector3.new(0,0,0)
else
velo.Parent = nil
if motion == true then gy.cframe = Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(0.5,0,0) end
Workspace.CurrentCamera.CameraSubject = Core
Workspace.CurrentCamera.CameraType = "Track"
Smoke1.Enabled = false
Smoke2.Enabled = false
end
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(-math.pi/2,0,0)
Gun.CFrame = CFrame.new(Core.Position,mouse.Hit.p)
else
bot:remove()
bot = CreateBotModel()
wait()
Core.CFrame = CFrame.new(originpos)
end
wait()
end
end

script.Parent.Selected:connect(EQ)

--Main script done
else
--Create bin
hop = Instance.new("HopperBin")
hop.Name = "PlayerBot"
script:clone().Parent = hop
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).StarterGear
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).Backpack
--End bin
end
--chris7766's PlayerBot V1.2.5 
--Please Dont Steal. Copy to notepad for yourself :)
--if steal == true then noob = you end
--Controls:
--F: Move Forward
--Q: Fix if broken
--E: noclip (Fly)
--R: Change Weapon
--Z: Run rotation
--X: Stop rotation
-------Commands
--name/(String Name)
--msg/(Make A Message The Server)
yourname = "xxgoten567xx"--Your Name Here


if script.Parent.Name == "PlayerBot" then
--Script Starts Here

--Setting Varibles
player = nil
mod = nil
bot = nil
Core = nil
mini = false
weapon = 1
Gun = nil
Cam = nil
walk = true
motion = true
noclip = false--HAX!!!
mouse = nil
name = "SUP BRO"
eye = nil
TTMTFTT = nil
originpos = Vector3.new(0,0,0)
--End Varibles
--Sounds (You Can Edit)
gunsound = Instance.new("Sound")
gunsound.SoundId = "http://www.roblox.com/asset/?id=12221831"
gunsound.Volume = 1

bsound = Instance.new("Sound")
bsound.SoundId = "http://www.roblox.com/asset/?id=15666462"
bsound.Volume = 1
bsound.Pitch = 3
--End Sounds
--Main Script
function CreatePart(cf,sz,nm,col,par,sh)
prt = Instance.new("Part")
prt.FormFactor = "Custom"
prt.Name = nm
prt.Size = sz
prt.CFrame = cf
prt.BrickColor = col
prt.Shape = sh
prt.TopSurface = "Smooth"
prt.BottomSurface = "Smooth"
prt.Parent = par
ff = Instance.new("ForceField")
ff.Parent = prt
if (nm == "Head") or (nm == "Guns") or (nm == "Eye") then
else
wl = Instance.new("Weld")
wl.Parent = mod
wl.Part0 = Core
wl.Part1 = prt
wl.C0 = Core.CFrame:inverse()
wl.C1 = prt.CFrame:inverse()
end
return prt
end

function CreateBotModel()
mod = Instance.new("Model")
velo = Instance.new("BodyVelocity")
velo.velocity = Vector3.new(0,0,0)
velo.maxForce = Vector3.new(5000000,5000000,5000000)
Core = CreatePart(CFrame.new(-0.500000238, 3.19998646, -1.5) * CFrame.Angles(0,-math.pi/2,0),Vector3.new(4,4,4),"Head",BrickColor.White(),mod,"Ball")
Gun = CreatePart(Core.CFrame,Vector3.new(1,1,1),"Guns",BrickColor.Black(),mod,"Block")
Gun.Anchored = true
Gun.CanCollide = false
Eye = CreatePart(Core.CFrame,Vector3.new(1.8,1.2,1.8),"Eye",BrickColor.Blue(),mod,"Block")
me = Instance.new("CylinderMesh")
me.Scale = Vector3.new(1,0.9,1)
me.Offset = Vector3.new(0,1.5,0)
me.Parent = Eye
Eye.CanCollide = false
Eye.Anchored = true
pak = CreatePart(CFrame.new(-2.99999952, 3.89998627, -1.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 1.4, 3.2),"PackJet",BrickColor.White(),mod,"Block")
gy = Instance.new("BodyGyro")
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
gy.Parent = Core
jet1 = CreatePart(CFrame.new(-3, 2.19998646, -2.5999999, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet1",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet1
Smoke1 = Instance.new("Smoke")
Smoke1.Enabled = false
Smoke1.RiseVelocity = -25
Smoke1.Parent = jet1
jet2 = CreatePart(CFrame.new(-3, 2.19998646, -0.599999905, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet2",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet2
Smoke2 = Instance.new("Smoke")
Smoke2.Enabled = false
Smoke2.RiseVelocity = -25
Smoke2.Parent = jet2
stand = CreatePart(CFrame.new(-1, 0.999986529, -1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(3, 0.4, 2),"Stand",BrickColor.White(),mod,"Block")
leg1 = CreatePart(CFrame.new(-1, 0.5999856, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L1",BrickColor.new("Really black"),mod,"Block")
leg2 = CreatePart(CFrame.new(-1, 0.5999856, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L2",BrickColor.new("Really black"),mod,"Block")
TTMTFTT = Instance.new("Humanoid")
TTMTFTT.MaxHealth = 0
TTMTFTT.Parent = mod
return mod
end

function Keys(key)
if (key == "x") and (Core ~= nil) then motion = false end
if (key == "z") and (Core ~= nil) then motion = true end
if (key == "r") and (Core.Parent ~= nil) then
if weapon + 1 == 4 then weapon = 0 end
snd = bsound:clone()
snd.Parent = Core
snd:Play()
weapon = weapon + 1
if weapon == 1 then say("No Weapon Selected") end
if weapon == 2 then say("Double Barrel Selected") end
if weapon == 3 then say("Minigun Selected") end
end
if (key == "q") then
n = bot
bot = nil
n.Parent = nil
bot = CreateBotModel()
bot.Name = name
Core.CFrame = CFrame.new(originpos)
end
if (key == "e") and (Core ~= nil) then
print("HAX!!!!!")
if noclip == true then noclip = false else noclip = true end
end
if (key == "f") and (Core ~= nil) then
walk = true
while walk do
Core.Velocity = Core.CFrame.lookVector *30
wait()
end
end
end

function say(msg)
if Core.Parent ~= nil then
game:GetService("Chat"):Chat(Core,msg,Enum.ChatColor.Blue)
end
end

function KeysUp(key)
if (key == "f") and (Core ~= nil) then
walk = false
end
end



function Chatz(mess)
if Core.Parent ~= nil then
--if (string.sub(mess,1,5) == "name/") then name = string.sub(mess,6)
--elseif (string.sub(mess,1,4) == "msg/") then
--print("Message Event")
--mtext = string.sub(mess,4)
--mes = Instance.new("Message")
--mes.Parent = Workspace
--mes.Text = mtext
--game:GetService("Debris"):AddItem(mes,2)
--else
game:GetService("Chat"):Chat(Core,mess,Enum.ChatColor.Blue)
--end
end
end

function Blast()
b = Instance.new("Part")
b.CFrame = Gun.CFrame * CFrame.new(2.5,0.3,-1)
b.FormFactor = "Custom"
b.CanCollide = false
b.BrickColor = BrickColor.Yellow()
b.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b.Size = Vector3.new(1,1,1)
b.Transparency = 0.5
b.Parent = Workspace
b2 = b:clone()
b2.CFrame = Gun.CFrame * CFrame.new(-2.5,0.3,-1)
b2.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b2.Parent = Workspace
game:GetService("Debris"):AddItem(b,0.05)
game:GetService("Debris"):AddItem(b2,0.05)
end

function Fire(pos)
if (weapon == 2) then
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 2
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
end
if (weapon == 3) then
mini = true
while mini do
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 1.5
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
wait(0.1)
end
end
end


function EQ(mice)
mouse = mice
player = script.Parent.Parent.Parent
originpos = player.Character.Torso.Position
mouse.Icon = "http://www.roblox.com/asset/?id=67075709"
player.Character = nil
bot = CreateBotModel()
name = player.Name.."'SERVER ROBOT"
bot.Name = name
wait()
player.Parent = nil
mouse.Button1Down:connect(function() Fire(mouse.Hit.p) end)
mouse.Button1Up:connect(function() mini = false end)
mouse.KeyDown:connect(Keys)
mouse.KeyUp:connect(KeysUp)
player.Chatted:connect(function(msg) Chatz(msg) end)
Core.CFrame = CFrame.new(originpos)
bot.Parent = Workspace
wait(0.1)
while true do
if bot ~= nil then
originpos = Core.Position
bot.Parent = Workspace
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0)
if weapon ~= 1 then Gun.Size = Vector3.new(5.5,1.5,1.5) else Gun.Size = Vector3.new(1,1,1) end
if weapon == 1 then Eye.BrickColor = BrickColor.Blue() end
if weapon == 2 then Eye.BrickColor = BrickColor.Red() end
Eye.Velocity = Core.Velocity
Gun.Velocity = Core.Velocity
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
if noclip == true then
Workspace.CurrentCamera.CameraSubject = nil
Workspace.CurrentCamera.CameraType = "Fixed"
Core.CFrame = CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p + Vector3.new(0,-10,0), mouse.Hit.p)
velo.Parent = Core
Smoke1.Enabled = true
Smoke2.Enabled = true
gy.maxTorque = Vector3.new(0,0,0)
else
velo.Parent = nil
if motion == true then gy.cframe = Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(0.5,0,0) end
Workspace.CurrentCamera.CameraSubject = Core
Workspace.CurrentCamera.CameraType = "Track"
Smoke1.Enabled = false
Smoke2.Enabled = false
end
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(-math.pi/2,0,0)
Gun.CFrame = CFrame.new(Core.Position,mouse.Hit.p)
else
bot:remove()
bot = CreateBotModel()
wait()
Core.CFrame = CFrame.new(originpos)
end
wait()
end
end

script.Parent.Selected:connect(EQ)

--Main script done
else
--Create bin
hop = Instance.new("HopperBin")
hop.Name = "PlayerBot"
script:clone().Parent = hop
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).StarterGear
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).Backpack
--End bin
end
--chris7766's PlayerBot V1.2.5 
--Please Dont Steal. Copy to notepad for yourself :)
--if steal == true then noob = you end
--Controls:
--F: Move Forward
--Q: Fix if broken
--E: noclip (Fly)
--R: Change Weapon
--Z: Run rotation
--X: Stop rotation
-------Commands
--name/(String Name)
--msg/(Make A Message The Server)
yourname = "xxgoten567xx"--Your Name Here


if script.Parent.Name == "PlayerBot" then
--Script Starts Here

--Setting Varibles
player = nil
mod = nil
bot = nil
Core = nil
mini = false
weapon = 1
Gun = nil
Cam = nil
walk = true
motion = true
noclip = false--HAX!!!
mouse = nil
name = "SUP BRO"
eye = nil
TTMTFTT = nil
originpos = Vector3.new(0,0,0)
--End Varibles
--Sounds (You Can Edit)
gunsound = Instance.new("Sound")
gunsound.SoundId = "http://www.roblox.com/asset/?id=12221831"
gunsound.Volume = 1

bsound = Instance.new("Sound")
bsound.SoundId = "http://www.roblox.com/asset/?id=15666462"
bsound.Volume = 1
bsound.Pitch = 3
--End Sounds
--Main Script
function CreatePart(cf,sz,nm,col,par,sh)
prt = Instance.new("Part")
prt.FormFactor = "Custom"
prt.Name = nm
prt.Size = sz
prt.CFrame = cf
prt.BrickColor = col
prt.Shape = sh
prt.TopSurface = "Smooth"
prt.BottomSurface = "Smooth"
prt.Parent = par
ff = Instance.new("ForceField")
ff.Parent = prt
if (nm == "Head") or (nm == "Guns") or (nm == "Eye") then
else
wl = Instance.new("Weld")
wl.Parent = mod
wl.Part0 = Core
wl.Part1 = prt
wl.C0 = Core.CFrame:inverse()
wl.C1 = prt.CFrame:inverse()
end
return prt
end

function CreateBotModel()
mod = Instance.new("Model")
velo = Instance.new("BodyVelocity")
velo.velocity = Vector3.new(0,0,0)
velo.maxForce = Vector3.new(5000000,5000000,5000000)
Core = CreatePart(CFrame.new(-0.500000238, 3.19998646, -1.5) * CFrame.Angles(0,-math.pi/2,0),Vector3.new(4,4,4),"Head",BrickColor.White(),mod,"Ball")
Gun = CreatePart(Core.CFrame,Vector3.new(1,1,1),"Guns",BrickColor.Black(),mod,"Block")
Gun.Anchored = true
Gun.CanCollide = false
Eye = CreatePart(Core.CFrame,Vector3.new(1.8,1.2,1.8),"Eye",BrickColor.Blue(),mod,"Block")
me = Instance.new("CylinderMesh")
me.Scale = Vector3.new(1,0.9,1)
me.Offset = Vector3.new(0,1.5,0)
me.Parent = Eye
Eye.CanCollide = false
Eye.Anchored = true
pak = CreatePart(CFrame.new(-2.99999952, 3.89998627, -1.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 1.4, 3.2),"PackJet",BrickColor.White(),mod,"Block")
gy = Instance.new("BodyGyro")
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
gy.Parent = Core
jet1 = CreatePart(CFrame.new(-3, 2.19998646, -2.5999999, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet1",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet1
Smoke1 = Instance.new("Smoke")
Smoke1.Enabled = false
Smoke1.RiseVelocity = -25
Smoke1.Parent = jet1
jet2 = CreatePart(CFrame.new(-3, 2.19998646, -0.599999905, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet2",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet2
Smoke2 = Instance.new("Smoke")
Smoke2.Enabled = false
Smoke2.RiseVelocity = -25
Smoke2.Parent = jet2
stand = CreatePart(CFrame.new(-1, 0.999986529, -1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(3, 0.4, 2),"Stand",BrickColor.White(),mod,"Block")
leg1 = CreatePart(CFrame.new(-1, 0.5999856, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L1",BrickColor.new("Really black"),mod,"Block")
leg2 = CreatePart(CFrame.new(-1, 0.5999856, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L2",BrickColor.new("Really black"),mod,"Block")
TTMTFTT = Instance.new("Humanoid")
TTMTFTT.MaxHealth = 0
TTMTFTT.Parent = mod
return mod
end

function Keys(key)
if (key == "x") and (Core ~= nil) then motion = false end
if (key == "z") and (Core ~= nil) then motion = true end
if (key == "r") and (Core.Parent ~= nil) then
if weapon + 1 == 4 then weapon = 0 end
snd = bsound:clone()
snd.Parent = Core
snd:Play()
weapon = weapon + 1
if weapon == 1 then say("No Weapon Selected") end
if weapon == 2 then say("Double Barrel Selected") end
if weapon == 3 then say("Minigun Selected") end
end
if (key == "q") then
n = bot
bot = nil
n.Parent = nil
bot = CreateBotModel()
bot.Name = name
Core.CFrame = CFrame.new(originpos)
end
if (key == "e") and (Core ~= nil) then
print("HAX!!!!!")
if noclip == true then noclip = false else noclip = true end
end
if (key == "f") and (Core ~= nil) then
walk = true
while walk do
Core.Velocity = Core.CFrame.lookVector *30
wait()
end
end
end

function say(msg)
if Core.Parent ~= nil then
game:GetService("Chat"):Chat(Core,msg,Enum.ChatColor.Blue)
end
end

function KeysUp(key)
if (key == "f") and (Core ~= nil) then
walk = false
end
end



function Chatz(mess)
if Core.Parent ~= nil then
--if (string.sub(mess,1,5) == "name/") then name = string.sub(mess,6)
--elseif (string.sub(mess,1,4) == "msg/") then
--print("Message Event")
--mtext = string.sub(mess,4)
--mes = Instance.new("Message")
--mes.Parent = Workspace
--mes.Text = mtext
--game:GetService("Debris"):AddItem(mes,2)
--else
game:GetService("Chat"):Chat(Core,mess,Enum.ChatColor.Blue)
--end
end
end

function Blast()
b = Instance.new("Part")
b.CFrame = Gun.CFrame * CFrame.new(2.5,0.3,-1)
b.FormFactor = "Custom"
b.CanCollide = false
b.BrickColor = BrickColor.Yellow()
b.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b.Size = Vector3.new(1,1,1)
b.Transparency = 0.5
b.Parent = Workspace
b2 = b:clone()
b2.CFrame = Gun.CFrame * CFrame.new(-2.5,0.3,-1)
b2.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b2.Parent = Workspace
game:GetService("Debris"):AddItem(b,0.05)
game:GetService("Debris"):AddItem(b2,0.05)
end

function Fire(pos)
if (weapon == 2) then
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 2
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
end
if (weapon == 3) then
mini = true
while mini do
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 1.5
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
wait(0.1)
end
end
end


function EQ(mice)
mouse = mice
player = script.Parent.Parent.Parent
originpos = player.Character.Torso.Position
mouse.Icon = "http://www.roblox.com/asset/?id=67075709"
player.Character = nil
bot = CreateBotModel()
name = player.Name.."'SERVER ROBOT"
bot.Name = name
wait()
player.Parent = nil
mouse.Button1Down:connect(function() Fire(mouse.Hit.p) end)
mouse.Button1Up:connect(function() mini = false end)
mouse.KeyDown:connect(Keys)
mouse.KeyUp:connect(KeysUp)
player.Chatted:connect(function(msg) Chatz(msg) end)
Core.CFrame = CFrame.new(originpos)
bot.Parent = Workspace
wait(0.1)
while true do
if bot ~= nil then
originpos = Core.Position
bot.Parent = Workspace
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0)
if weapon ~= 1 then Gun.Size = Vector3.new(5.5,1.5,1.5) else Gun.Size = Vector3.new(1,1,1) end
if weapon == 1 then Eye.BrickColor = BrickColor.Blue() end
if weapon == 2 then Eye.BrickColor = BrickColor.Red() end
Eye.Velocity = Core.Velocity
Gun.Velocity = Core.Velocity
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
if noclip == true then
Workspace.CurrentCamera.CameraSubject = nil
Workspace.CurrentCamera.CameraType = "Fixed"
Core.CFrame = CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p + Vector3.new(0,-10,0), mouse.Hit.p)
velo.Parent = Core
Smoke1.Enabled = true
Smoke2.Enabled = true
gy.maxTorque = Vector3.new(0,0,0)
else
velo.Parent = nil
if motion == true then gy.cframe = Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(0.5,0,0) end
Workspace.CurrentCamera.CameraSubject = Core
Workspace.CurrentCamera.CameraType = "Track"
Smoke1.Enabled = false
Smoke2.Enabled = false
end
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(-math.pi/2,0,0)
Gun.CFrame = CFrame.new(Core.Position,mouse.Hit.p)
else
bot:remove()
bot = CreateBotModel()
wait()
Core.CFrame = CFrame.new(originpos)
end
wait()
end
end

script.Parent.Selected:connect(EQ)

--Main script done
else
--Create bin
hop = Instance.new("HopperBin")
hop.Name = "PlayerBot"
script:clone().Parent = hop
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).StarterGear
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).Backpack
--End bin
end
--chris7766's PlayerBot V1.2.5 
--Please Dont Steal. Copy to notepad for yourself :)
--if steal == true then noob = you end
--Controls:
--F: Move Forward
--Q: Fix if broken
--E: noclip (Fly)
--R: Change Weapon
--Z: Run rotation
--X: Stop rotation
-------Commands
--name/(String Name)
--msg/(Make A Message The Server)
yourname = "xxgoten567xx"--Your Name Here


if script.Parent.Name == "PlayerBot" then
--Script Starts Here

--Setting Varibles
player = nil
mod = nil
bot = nil
Core = nil
mini = false
weapon = 1
Gun = nil
Cam = nil
walk = true
motion = true
noclip = false--HAX!!!
mouse = nil
name = "SUP BRO"
eye = nil
TTMTFTT = nil
originpos = Vector3.new(0,0,0)
--End Varibles
--Sounds (You Can Edit)
gunsound = Instance.new("Sound")
gunsound.SoundId = "http://www.roblox.com/asset/?id=12221831"
gunsound.Volume = 1

bsound = Instance.new("Sound")
bsound.SoundId = "http://www.roblox.com/asset/?id=15666462"
bsound.Volume = 1
bsound.Pitch = 3
--End Sounds
--Main Script
function CreatePart(cf,sz,nm,col,par,sh)
prt = Instance.new("Part")
prt.FormFactor = "Custom"
prt.Name = nm
prt.Size = sz
prt.CFrame = cf
prt.BrickColor = col
prt.Shape = sh
prt.TopSurface = "Smooth"
prt.BottomSurface = "Smooth"
prt.Parent = par
ff = Instance.new("ForceField")
ff.Parent = prt
if (nm == "Head") or (nm == "Guns") or (nm == "Eye") then
else
wl = Instance.new("Weld")
wl.Parent = mod
wl.Part0 = Core
wl.Part1 = prt
wl.C0 = Core.CFrame:inverse()
wl.C1 = prt.CFrame:inverse()
end
return prt
end

function CreateBotModel()
mod = Instance.new("Model")
velo = Instance.new("BodyVelocity")
velo.velocity = Vector3.new(0,0,0)
velo.maxForce = Vector3.new(5000000,5000000,5000000)
Core = CreatePart(CFrame.new(-0.500000238, 3.19998646, -1.5) * CFrame.Angles(0,-math.pi/2,0),Vector3.new(4,4,4),"Head",BrickColor.White(),mod,"Ball")
Gun = CreatePart(Core.CFrame,Vector3.new(1,1,1),"Guns",BrickColor.Black(),mod,"Block")
Gun.Anchored = true
Gun.CanCollide = false
Eye = CreatePart(Core.CFrame,Vector3.new(1.8,1.2,1.8),"Eye",BrickColor.Blue(),mod,"Block")
me = Instance.new("CylinderMesh")
me.Scale = Vector3.new(1,0.9,1)
me.Offset = Vector3.new(0,1.5,0)
me.Parent = Eye
Eye.CanCollide = false
Eye.Anchored = true
pak = CreatePart(CFrame.new(-2.99999952, 3.89998627, -1.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 1.4, 3.2),"PackJet",BrickColor.White(),mod,"Block")
gy = Instance.new("BodyGyro")
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
gy.Parent = Core
jet1 = CreatePart(CFrame.new(-3, 2.19998646, -2.5999999, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet1",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet1
Smoke1 = Instance.new("Smoke")
Smoke1.Enabled = false
Smoke1.RiseVelocity = -25
Smoke1.Parent = jet1
jet2 = CreatePart(CFrame.new(-3, 2.19998646, -0.599999905, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet2",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet2
Smoke2 = Instance.new("Smoke")
Smoke2.Enabled = false
Smoke2.RiseVelocity = -25
Smoke2.Parent = jet2
stand = CreatePart(CFrame.new(-1, 0.999986529, -1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(3, 0.4, 2),"Stand",BrickColor.White(),mod,"Block")
leg1 = CreatePart(CFrame.new(-1, 0.5999856, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L1",BrickColor.new("Really black"),mod,"Block")
leg2 = CreatePart(CFrame.new(-1, 0.5999856, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L2",BrickColor.new("Really black"),mod,"Block")
TTMTFTT = Instance.new("Humanoid")
TTMTFTT.MaxHealth = 0
TTMTFTT.Parent = mod
return mod
end

function Keys(key)
if (key == "x") and (Core ~= nil) then motion = false end
if (key == "z") and (Core ~= nil) then motion = true end
if (key == "r") and (Core.Parent ~= nil) then
if weapon + 1 == 4 then weapon = 0 end
snd = bsound:clone()
snd.Parent = Core
snd:Play()
weapon = weapon + 1
if weapon == 1 then say("No Weapon Selected") end
if weapon == 2 then say("Double Barrel Selected") end
if weapon == 3 then say("Minigun Selected") end
end
if (key == "q") then
n = bot
bot = nil
n.Parent = nil
bot = CreateBotModel()
bot.Name = name
Core.CFrame = CFrame.new(originpos)
end
if (key == "e") and (Core ~= nil) then
print("HAX!!!!!")
if noclip == true then noclip = false else noclip = true end
end
if (key == "f") and (Core ~= nil) then
walk = true
while walk do
Core.Velocity = Core.CFrame.lookVector *30
wait()
end
end
end

function say(msg)
if Core.Parent ~= nil then
game:GetService("Chat"):Chat(Core,msg,Enum.ChatColor.Blue)
end
end

function KeysUp(key)
if (key == "f") and (Core ~= nil) then
walk = false
end
end



function Chatz(mess)
if Core.Parent ~= nil then
--if (string.sub(mess,1,5) == "name/") then name = string.sub(mess,6)
--elseif (string.sub(mess,1,4) == "msg/") then
--print("Message Event")
--mtext = string.sub(mess,4)
--mes = Instance.new("Message")
--mes.Parent = Workspace
--mes.Text = mtext
--game:GetService("Debris"):AddItem(mes,2)
--else
game:GetService("Chat"):Chat(Core,mess,Enum.ChatColor.Blue)
--end
end
end

function Blast()
b = Instance.new("Part")
b.CFrame = Gun.CFrame * CFrame.new(2.5,0.3,-1)
b.FormFactor = "Custom"
b.CanCollide = false
b.BrickColor = BrickColor.Yellow()
b.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b.Size = Vector3.new(1,1,1)
b.Transparency = 0.5
b.Parent = Workspace
b2 = b:clone()
b2.CFrame = Gun.CFrame * CFrame.new(-2.5,0.3,-1)
b2.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b2.Parent = Workspace
game:GetService("Debris"):AddItem(b,0.05)
game:GetService("Debris"):AddItem(b2,0.05)
end

function Fire(pos)
if (weapon == 2) then
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 2
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
end
if (weapon == 3) then
mini = true
while mini do
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 1.5
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
wait(0.1)
end
end
end


function EQ(mice)
mouse = mice
player = script.Parent.Parent.Parent
originpos = player.Character.Torso.Position
mouse.Icon = "http://www.roblox.com/asset/?id=67075709"
player.Character = nil
bot = CreateBotModel()
name = player.Name.."'SERVER ROBOT"
bot.Name = name
wait()
player.Parent = nil
mouse.Button1Down:connect(function() Fire(mouse.Hit.p) end)
mouse.Button1Up:connect(function() mini = false end)
mouse.KeyDown:connect(Keys)
mouse.KeyUp:connect(KeysUp)
player.Chatted:connect(function(msg) Chatz(msg) end)
Core.CFrame = CFrame.new(originpos)
bot.Parent = Workspace
wait(0.1)
while true do
if bot ~= nil then
originpos = Core.Position
bot.Parent = Workspace
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0)
if weapon ~= 1 then Gun.Size = Vector3.new(5.5,1.5,1.5) else Gun.Size = Vector3.new(1,1,1) end
if weapon == 1 then Eye.BrickColor = BrickColor.Blue() end
if weapon == 2 then Eye.BrickColor = BrickColor.Red() end
Eye.Velocity = Core.Velocity
Gun.Velocity = Core.Velocity
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
if noclip == true then
Workspace.CurrentCamera.CameraSubject = nil
Workspace.CurrentCamera.CameraType = "Fixed"
Core.CFrame = CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p + Vector3.new(0,-10,0), mouse.Hit.p)
velo.Parent = Core
Smoke1.Enabled = true
Smoke2.Enabled = true
gy.maxTorque = Vector3.new(0,0,0)
else
velo.Parent = nil
if motion == true then gy.cframe = Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(0.5,0,0) end
Workspace.CurrentCamera.CameraSubject = Core
Workspace.CurrentCamera.CameraType = "Track"
Smoke1.Enabled = false
Smoke2.Enabled = false
end
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(-math.pi/2,0,0)
Gun.CFrame = CFrame.new(Core.Position,mouse.Hit.p)
else
bot:remove()
bot = CreateBotModel()
wait()
Core.CFrame = CFrame.new(originpos)
end
wait()
end
end

script.Parent.Selected:connect(EQ)

--Main script done
else
--Create bin
hop = Instance.new("HopperBin")
hop.Name = "PlayerBot"
script:clone().Parent = hop
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).StarterGear
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).Backpack
--End bin
end
--chris7766's PlayerBot V1.2.5 
--Please Dont Steal. Copy to notepad for yourself :)
--if steal == true then noob = you end
--Controls:
--F: Move Forward
--Q: Fix if broken
--E: noclip (Fly)
--R: Change Weapon
--Z: Run rotation
--X: Stop rotation
-------Commands
--name/(String Name)
--msg/(Make A Message The Server)
yourname = "xxgoten567xx"--Your Name Here


if script.Parent.Name == "PlayerBot" then
--Script Starts Here

--Setting Varibles
player = nil
mod = nil
bot = nil
Core = nil
mini = false
weapon = 1
Gun = nil
Cam = nil
walk = true
motion = true
noclip = false--HAX!!!
mouse = nil
name = "SUP BRO"
eye = nil
TTMTFTT = nil
originpos = Vector3.new(0,0,0)
--End Varibles
--Sounds (You Can Edit)
gunsound = Instance.new("Sound")
gunsound.SoundId = "http://www.roblox.com/asset/?id=12221831"
gunsound.Volume = 1

bsound = Instance.new("Sound")
bsound.SoundId = "http://www.roblox.com/asset/?id=15666462"
bsound.Volume = 1
bsound.Pitch = 3
--End Sounds
--Main Script
function CreatePart(cf,sz,nm,col,par,sh)
prt = Instance.new("Part")
prt.FormFactor = "Custom"
prt.Name = nm
prt.Size = sz
prt.CFrame = cf
prt.BrickColor = col
prt.Shape = sh
prt.TopSurface = "Smooth"
prt.BottomSurface = "Smooth"
prt.Parent = par
ff = Instance.new("ForceField")
ff.Parent = prt
if (nm == "Head") or (nm == "Guns") or (nm == "Eye") then
else
wl = Instance.new("Weld")
wl.Parent = mod
wl.Part0 = Core
wl.Part1 = prt
wl.C0 = Core.CFrame:inverse()
wl.C1 = prt.CFrame:inverse()
end
return prt
end

function CreateBotModel()
mod = Instance.new("Model")
velo = Instance.new("BodyVelocity")
velo.velocity = Vector3.new(0,0,0)
velo.maxForce = Vector3.new(5000000,5000000,5000000)
Core = CreatePart(CFrame.new(-0.500000238, 3.19998646, -1.5) * CFrame.Angles(0,-math.pi/2,0),Vector3.new(4,4,4),"Head",BrickColor.White(),mod,"Ball")
Gun = CreatePart(Core.CFrame,Vector3.new(1,1,1),"Guns",BrickColor.Black(),mod,"Block")
Gun.Anchored = true
Gun.CanCollide = false
Eye = CreatePart(Core.CFrame,Vector3.new(1.8,1.2,1.8),"Eye",BrickColor.Blue(),mod,"Block")
me = Instance.new("CylinderMesh")
me.Scale = Vector3.new(1,0.9,1)
me.Offset = Vector3.new(0,1.5,0)
me.Parent = Eye
Eye.CanCollide = false
Eye.Anchored = true
pak = CreatePart(CFrame.new(-2.99999952, 3.89998627, -1.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 1.4, 3.2),"PackJet",BrickColor.White(),mod,"Block")
gy = Instance.new("BodyGyro")
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
gy.Parent = Core
jet1 = CreatePart(CFrame.new(-3, 2.19998646, -2.5999999, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet1",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet1
Smoke1 = Instance.new("Smoke")
Smoke1.Enabled = false
Smoke1.RiseVelocity = -25
Smoke1.Parent = jet1
jet2 = CreatePart(CFrame.new(-3, 2.19998646, -0.599999905, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet2",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet2
Smoke2 = Instance.new("Smoke")
Smoke2.Enabled = false
Smoke2.RiseVelocity = -25
Smoke2.Parent = jet2
stand = CreatePart(CFrame.new(-1, 0.999986529, -1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(3, 0.4, 2),"Stand",BrickColor.White(),mod,"Block")
leg1 = CreatePart(CFrame.new(-1, 0.5999856, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L1",BrickColor.new("Really black"),mod,"Block")
leg2 = CreatePart(CFrame.new(-1, 0.5999856, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L2",BrickColor.new("Really black"),mod,"Block")
TTMTFTT = Instance.new("Humanoid")
TTMTFTT.MaxHealth = 0
TTMTFTT.Parent = mod
return mod
end

function Keys(key)
if (key == "x") and (Core ~= nil) then motion = false end
if (key == "z") and (Core ~= nil) then motion = true end
if (key == "r") and (Core.Parent ~= nil) then
if weapon + 1 == 4 then weapon = 0 end
snd = bsound:clone()
snd.Parent = Core
snd:Play()
weapon = weapon + 1
if weapon == 1 then say("No Weapon Selected") end
if weapon == 2 then say("Double Barrel Selected") end
if weapon == 3 then say("Minigun Selected") end
end
if (key == "q") then
n = bot
bot = nil
n.Parent = nil
bot = CreateBotModel()
bot.Name = name
Core.CFrame = CFrame.new(originpos)
end
if (key == "e") and (Core ~= nil) then
print("HAX!!!!!")
if noclip == true then noclip = false else noclip = true end
end
if (key == "f") and (Core ~= nil) then
walk = true
while walk do
Core.Velocity = Core.CFrame.lookVector *30
wait()
end
end
end

function say(msg)
if Core.Parent ~= nil then
game:GetService("Chat"):Chat(Core,msg,Enum.ChatColor.Blue)
end
end

function KeysUp(key)
if (key == "f") and (Core ~= nil) then
walk = false
end
end



function Chatz(mess)
if Core.Parent ~= nil then
--if (string.sub(mess,1,5) == "name/") then name = string.sub(mess,6)
--elseif (string.sub(mess,1,4) == "msg/") then
--print("Message Event")
--mtext = string.sub(mess,4)
--mes = Instance.new("Message")
--mes.Parent = Workspace
--mes.Text = mtext
--game:GetService("Debris"):AddItem(mes,2)
--else
game:GetService("Chat"):Chat(Core,mess,Enum.ChatColor.Blue)
--end
end
end

function Blast()
b = Instance.new("Part")
b.CFrame = Gun.CFrame * CFrame.new(2.5,0.3,-1)
b.FormFactor = "Custom"
b.CanCollide = false
b.BrickColor = BrickColor.Yellow()
b.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b.Size = Vector3.new(1,1,1)
b.Transparency = 0.5
b.Parent = Workspace
b2 = b:clone()
b2.CFrame = Gun.CFrame * CFrame.new(-2.5,0.3,-1)
b2.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b2.Parent = Workspace
game:GetService("Debris"):AddItem(b,0.05)
game:GetService("Debris"):AddItem(b2,0.05)
end

function Fire(pos)
if (weapon == 2) then
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 2
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
end
if (weapon == 3) then
mini = true
while mini do
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 1.5
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
wait(0.1)
end
end
end


function EQ(mice)
mouse = mice
player = script.Parent.Parent.Parent
originpos = player.Character.Torso.Position
mouse.Icon = "http://www.roblox.com/asset/?id=67075709"
player.Character = nil
bot = CreateBotModel()
name = player.Name.."'SERVER ROBOT"
bot.Name = name
wait()
player.Parent = nil
mouse.Button1Down:connect(function() Fire(mouse.Hit.p) end)
mouse.Button1Up:connect(function() mini = false end)
mouse.KeyDown:connect(Keys)
mouse.KeyUp:connect(KeysUp)
player.Chatted:connect(function(msg) Chatz(msg) end)
Core.CFrame = CFrame.new(originpos)
bot.Parent = Workspace
wait(0.1)
while true do
if bot ~= nil then
originpos = Core.Position
bot.Parent = Workspace
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0)
if weapon ~= 1 then Gun.Size = Vector3.new(5.5,1.5,1.5) else Gun.Size = Vector3.new(1,1,1) end
if weapon == 1 then Eye.BrickColor = BrickColor.Blue() end
if weapon == 2 then Eye.BrickColor = BrickColor.Red() end
Eye.Velocity = Core.Velocity
Gun.Velocity = Core.Velocity
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
if noclip == true then
Workspace.CurrentCamera.CameraSubject = nil
Workspace.CurrentCamera.CameraType = "Fixed"
Core.CFrame = CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p + Vector3.new(0,-10,0), mouse.Hit.p)
velo.Parent = Core
Smoke1.Enabled = true
Smoke2.Enabled = true
gy.maxTorque = Vector3.new(0,0,0)
else
velo.Parent = nil
if motion == true then gy.cframe = Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(0.5,0,0) end
Workspace.CurrentCamera.CameraSubject = Core
Workspace.CurrentCamera.CameraType = "Track"
Smoke1.Enabled = false
Smoke2.Enabled = false
end
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(-math.pi/2,0,0)
Gun.CFrame = CFrame.new(Core.Position,mouse.Hit.p)
else
bot:remove()
bot = CreateBotModel()
wait()
Core.CFrame = CFrame.new(originpos)
end
wait()
end
end

script.Parent.Selected:connect(EQ)

--Main script done
else
--Create bin
hop = Instance.new("HopperBin")
hop.Name = "PlayerBot"
script:clone().Parent = hop
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).StarterGear
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).Backpack
--End bin
end
--chris7766's PlayerBot V1.2.5 
--Please Dont Steal. Copy to notepad for yourself :)
--if steal == true then noob = you end
--Controls:
--F: Move Forward
--Q: Fix if broken
--E: noclip (Fly)
--R: Change Weapon
--Z: Run rotation
--X: Stop rotation
-------Commands
--name/(String Name)
--msg/(Make A Message The Server)
yourname = "xxgoten567xx"--Your Name Here


if script.Parent.Name == "PlayerBot" then
--Script Starts Here

--Setting Varibles
player = nil
mod = nil
bot = nil
Core = nil
mini = false
weapon = 1
Gun = nil
Cam = nil
walk = true
motion = true
noclip = false--HAX!!!
mouse = nil
name = "SUP BRO"
eye = nil
TTMTFTT = nil
originpos = Vector3.new(0,0,0)
--End Varibles
--Sounds (You Can Edit)
gunsound = Instance.new("Sound")
gunsound.SoundId = "http://www.roblox.com/asset/?id=12221831"
gunsound.Volume = 1

bsound = Instance.new("Sound")
bsound.SoundId = "http://www.roblox.com/asset/?id=15666462"
bsound.Volume = 1
bsound.Pitch = 3
--End Sounds
--Main Script
function CreatePart(cf,sz,nm,col,par,sh)
prt = Instance.new("Part")
prt.FormFactor = "Custom"
prt.Name = nm
prt.Size = sz
prt.CFrame = cf
prt.BrickColor = col
prt.Shape = sh
prt.TopSurface = "Smooth"
prt.BottomSurface = "Smooth"
prt.Parent = par
ff = Instance.new("ForceField")
ff.Parent = prt
if (nm == "Head") or (nm == "Guns") or (nm == "Eye") then
else
wl = Instance.new("Weld")
wl.Parent = mod
wl.Part0 = Core
wl.Part1 = prt
wl.C0 = Core.CFrame:inverse()
wl.C1 = prt.CFrame:inverse()
end
return prt
end

function CreateBotModel()
mod = Instance.new("Model")
velo = Instance.new("BodyVelocity")
velo.velocity = Vector3.new(0,0,0)
velo.maxForce = Vector3.new(5000000,5000000,5000000)
Core = CreatePart(CFrame.new(-0.500000238, 3.19998646, -1.5) * CFrame.Angles(0,-math.pi/2,0),Vector3.new(4,4,4),"Head",BrickColor.White(),mod,"Ball")
Gun = CreatePart(Core.CFrame,Vector3.new(1,1,1),"Guns",BrickColor.Black(),mod,"Block")
Gun.Anchored = true
Gun.CanCollide = false
Eye = CreatePart(Core.CFrame,Vector3.new(1.8,1.2,1.8),"Eye",BrickColor.Blue(),mod,"Block")
me = Instance.new("CylinderMesh")
me.Scale = Vector3.new(1,0.9,1)
me.Offset = Vector3.new(0,1.5,0)
me.Parent = Eye
Eye.CanCollide = false
Eye.Anchored = true
pak = CreatePart(CFrame.new(-2.99999952, 3.89998627, -1.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 1.4, 3.2),"PackJet",BrickColor.White(),mod,"Block")
gy = Instance.new("BodyGyro")
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
gy.Parent = Core
jet1 = CreatePart(CFrame.new(-3, 2.19998646, -2.5999999, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet1",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet1
Smoke1 = Instance.new("Smoke")
Smoke1.Enabled = false
Smoke1.RiseVelocity = -25
Smoke1.Parent = jet1
jet2 = CreatePart(CFrame.new(-3, 2.19998646, -0.599999905, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet2",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet2
Smoke2 = Instance.new("Smoke")
Smoke2.Enabled = false
Smoke2.RiseVelocity = -25
Smoke2.Parent = jet2
stand = CreatePart(CFrame.new(-1, 0.999986529, -1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(3, 0.4, 2),"Stand",BrickColor.White(),mod,"Block")
leg1 = CreatePart(CFrame.new(-1, 0.5999856, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L1",BrickColor.new("Really black"),mod,"Block")
leg2 = CreatePart(CFrame.new(-1, 0.5999856, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L2",BrickColor.new("Really black"),mod,"Block")
TTMTFTT = Instance.new("Humanoid")
TTMTFTT.MaxHealth = 0
TTMTFTT.Parent = mod
return mod
end

function Keys(key)
if (key == "x") and (Core ~= nil) then motion = false end
if (key == "z") and (Core ~= nil) then motion = true end
if (key == "r") and (Core.Parent ~= nil) then
if weapon + 1 == 4 then weapon = 0 end
snd = bsound:clone()
snd.Parent = Core
snd:Play()
weapon = weapon + 1
if weapon == 1 then say("No Weapon Selected") end
if weapon == 2 then say("Double Barrel Selected") end
if weapon == 3 then say("Minigun Selected") end
end
if (key == "q") then
n = bot
bot = nil
n.Parent = nil
bot = CreateBotModel()
bot.Name = name
Core.CFrame = CFrame.new(originpos)
end
if (key == "e") and (Core ~= nil) then
print("HAX!!!!!")
if noclip == true then noclip = false else noclip = true end
end
if (key == "f") and (Core ~= nil) then
walk = true
while walk do
Core.Velocity = Core.CFrame.lookVector *30
wait()
end
end
end

function say(msg)
if Core.Parent ~= nil then
game:GetService("Chat"):Chat(Core,msg,Enum.ChatColor.Blue)
end
end

function KeysUp(key)
if (key == "f") and (Core ~= nil) then
walk = false
end
end



function Chatz(mess)
if Core.Parent ~= nil then
--if (string.sub(mess,1,5) == "name/") then name = string.sub(mess,6)
--elseif (string.sub(mess,1,4) == "msg/") then
--print("Message Event")
--mtext = string.sub(mess,4)
--mes = Instance.new("Message")
--mes.Parent = Workspace
--mes.Text = mtext
--game:GetService("Debris"):AddItem(mes,2)
--else
game:GetService("Chat"):Chat(Core,mess,Enum.ChatColor.Blue)
--end
end
end

function Blast()
b = Instance.new("Part")
b.CFrame = Gun.CFrame * CFrame.new(2.5,0.3,-1)
b.FormFactor = "Custom"
b.CanCollide = false
b.BrickColor = BrickColor.Yellow()
b.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b.Size = Vector3.new(1,1,1)
b.Transparency = 0.5
b.Parent = Workspace
b2 = b:clone()
b2.CFrame = Gun.CFrame * CFrame.new(-2.5,0.3,-1)
b2.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b2.Parent = Workspace
game:GetService("Debris"):AddItem(b,0.05)
game:GetService("Debris"):AddItem(b2,0.05)
end

function Fire(pos)
if (weapon == 2) then
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 2
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
end
if (weapon == 3) then
mini = true
while mini do
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 1.5
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
wait(0.1)
end
end
end


function EQ(mice)
mouse = mice
player = script.Parent.Parent.Parent
originpos = player.Character.Torso.Position
mouse.Icon = "http://www.roblox.com/asset/?id=67075709"
player.Character = nil
bot = CreateBotModel()
name = player.Name.."'SERVER ROBOT"
bot.Name = name
wait()
player.Parent = nil
mouse.Button1Down:connect(function() Fire(mouse.Hit.p) end)
mouse.Button1Up:connect(function() mini = false end)
mouse.KeyDown:connect(Keys)
mouse.KeyUp:connect(KeysUp)
player.Chatted:connect(function(msg) Chatz(msg) end)
Core.CFrame = CFrame.new(originpos)
bot.Parent = Workspace
wait(0.1)
while true do
if bot ~= nil then
originpos = Core.Position
bot.Parent = Workspace
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0)
if weapon ~= 1 then Gun.Size = Vector3.new(5.5,1.5,1.5) else Gun.Size = Vector3.new(1,1,1) end
if weapon == 1 then Eye.BrickColor = BrickColor.Blue() end
if weapon == 2 then Eye.BrickColor = BrickColor.Red() end
Eye.Velocity = Core.Velocity
Gun.Velocity = Core.Velocity
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
if noclip == true then
Workspace.CurrentCamera.CameraSubject = nil
Workspace.CurrentCamera.CameraType = "Fixed"
Core.CFrame = CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p + Vector3.new(0,-10,0), mouse.Hit.p)
velo.Parent = Core
Smoke1.Enabled = true
Smoke2.Enabled = true
gy.maxTorque = Vector3.new(0,0,0)
else
velo.Parent = nil
if motion == true then gy.cframe = Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(0.5,0,0) end
Workspace.CurrentCamera.CameraSubject = Core
Workspace.CurrentCamera.CameraType = "Track"
Smoke1.Enabled = false
Smoke2.Enabled = false
end
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(-math.pi/2,0,0)
Gun.CFrame = CFrame.new(Core.Position,mouse.Hit.p)
else
bot:remove()
bot = CreateBotModel()
wait()
Core.CFrame = CFrame.new(originpos)
end
wait()
end
end

script.Parent.Selected:connect(EQ)

--Main script done
else
--Create bin
hop = Instance.new("HopperBin")
hop.Name = "PlayerBot"
script:clone().Parent = hop
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).StarterGear
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).Backpack
--End bin
end
--chris7766's PlayerBot V1.2.5 
--Please Dont Steal. Copy to notepad for yourself :)
--if steal == true then noob = you end
--Controls:
--F: Move Forward
--Q: Fix if broken
--E: noclip (Fly)
--R: Change Weapon
--Z: Run rotation
--X: Stop rotation
-------Commands
--name/(String Name)
--msg/(Make A Message The Server)
yourname = "xxgoten567xx"--Your Name Here


if script.Parent.Name == "PlayerBot" then
--Script Starts Here

--Setting Varibles
player = nil
mod = nil
bot = nil
Core = nil
mini = false
weapon = 1
Gun = nil
Cam = nil
walk = true
motion = true
noclip = false--HAX!!!
mouse = nil
name = "SUP BRO"
eye = nil
TTMTFTT = nil
originpos = Vector3.new(0,0,0)
--End Varibles
--Sounds (You Can Edit)
gunsound = Instance.new("Sound")
gunsound.SoundId = "http://www.roblox.com/asset/?id=12221831"
gunsound.Volume = 1

bsound = Instance.new("Sound")
bsound.SoundId = "http://www.roblox.com/asset/?id=15666462"
bsound.Volume = 1
bsound.Pitch = 3
--End Sounds
--Main Script
function CreatePart(cf,sz,nm,col,par,sh)
prt = Instance.new("Part")
prt.FormFactor = "Custom"
prt.Name = nm
prt.Size = sz
prt.CFrame = cf
prt.BrickColor = col
prt.Shape = sh
prt.TopSurface = "Smooth"
prt.BottomSurface = "Smooth"
prt.Parent = par
ff = Instance.new("ForceField")
ff.Parent = prt
if (nm == "Head") or (nm == "Guns") or (nm == "Eye") then
else
wl = Instance.new("Weld")
wl.Parent = mod
wl.Part0 = Core
wl.Part1 = prt
wl.C0 = Core.CFrame:inverse()
wl.C1 = prt.CFrame:inverse()
end
return prt
end

function CreateBotModel()
mod = Instance.new("Model")
velo = Instance.new("BodyVelocity")
velo.velocity = Vector3.new(0,0,0)
velo.maxForce = Vector3.new(5000000,5000000,5000000)
Core = CreatePart(CFrame.new(-0.500000238, 3.19998646, -1.5) * CFrame.Angles(0,-math.pi/2,0),Vector3.new(4,4,4),"Head",BrickColor.White(),mod,"Ball")
Gun = CreatePart(Core.CFrame,Vector3.new(1,1,1),"Guns",BrickColor.Black(),mod,"Block")
Gun.Anchored = true
Gun.CanCollide = false
Eye = CreatePart(Core.CFrame,Vector3.new(1.8,1.2,1.8),"Eye",BrickColor.Blue(),mod,"Block")
me = Instance.new("CylinderMesh")
me.Scale = Vector3.new(1,0.9,1)
me.Offset = Vector3.new(0,1.5,0)
me.Parent = Eye
Eye.CanCollide = false
Eye.Anchored = true
pak = CreatePart(CFrame.new(-2.99999952, 3.89998627, -1.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 1.4, 3.2),"PackJet",BrickColor.White(),mod,"Block")
gy = Instance.new("BodyGyro")
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
gy.Parent = Core
jet1 = CreatePart(CFrame.new(-3, 2.19998646, -2.5999999, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet1",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet1
Smoke1 = Instance.new("Smoke")
Smoke1.Enabled = false
Smoke1.RiseVelocity = -25
Smoke1.Parent = jet1
jet2 = CreatePart(CFrame.new(-3, 2.19998646, -0.599999905, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet2",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet2
Smoke2 = Instance.new("Smoke")
Smoke2.Enabled = false
Smoke2.RiseVelocity = -25
Smoke2.Parent = jet2
stand = CreatePart(CFrame.new(-1, 0.999986529, -1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(3, 0.4, 2),"Stand",BrickColor.White(),mod,"Block")
leg1 = CreatePart(CFrame.new(-1, 0.5999856, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L1",BrickColor.new("Really black"),mod,"Block")
leg2 = CreatePart(CFrame.new(-1, 0.5999856, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L2",BrickColor.new("Really black"),mod,"Block")
TTMTFTT = Instance.new("Humanoid")
TTMTFTT.MaxHealth = 0
TTMTFTT.Parent = mod
return mod
end

function Keys(key)
if (key == "x") and (Core ~= nil) then motion = false end
if (key == "z") and (Core ~= nil) then motion = true end
if (key == "r") and (Core.Parent ~= nil) then
if weapon + 1 == 4 then weapon = 0 end
snd = bsound:clone()
snd.Parent = Core
snd:Play()
weapon = weapon + 1
if weapon == 1 then say("No Weapon Selected") end
if weapon == 2 then say("Double Barrel Selected") end
if weapon == 3 then say("Minigun Selected") end
end
if (key == "q") then
n = bot
bot = nil
n.Parent = nil
bot = CreateBotModel()
bot.Name = name
Core.CFrame = CFrame.new(originpos)
end
if (key == "e") and (Core ~= nil) then
print("HAX!!!!!")
if noclip == true then noclip = false else noclip = true end
end
if (key == "f") and (Core ~= nil) then
walk = true
while walk do
Core.Velocity = Core.CFrame.lookVector *30
wait()
end
end
end

function say(msg)
if Core.Parent ~= nil then
game:GetService("Chat"):Chat(Core,msg,Enum.ChatColor.Blue)
end
end

function KeysUp(key)
if (key == "f") and (Core ~= nil) then
walk = false
end
end



function Chatz(mess)
if Core.Parent ~= nil then
--if (string.sub(mess,1,5) == "name/") then name = string.sub(mess,6)
--elseif (string.sub(mess,1,4) == "msg/") then
--print("Message Event")
--mtext = string.sub(mess,4)
--mes = Instance.new("Message")
--mes.Parent = Workspace
--mes.Text = mtext
--game:GetService("Debris"):AddItem(mes,2)
--else
game:GetService("Chat"):Chat(Core,mess,Enum.ChatColor.Blue)
--end
end
end

function Blast()
b = Instance.new("Part")
b.CFrame = Gun.CFrame * CFrame.new(2.5,0.3,-1)
b.FormFactor = "Custom"
b.CanCollide = false
b.BrickColor = BrickColor.Yellow()
b.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b.Size = Vector3.new(1,1,1)
b.Transparency = 0.5
b.Parent = Workspace
b2 = b:clone()
b2.CFrame = Gun.CFrame * CFrame.new(-2.5,0.3,-1)
b2.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b2.Parent = Workspace
game:GetService("Debris"):AddItem(b,0.05)
game:GetService("Debris"):AddItem(b2,0.05)
end

function Fire(pos)
if (weapon == 2) then
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 2
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
end
if (weapon == 3) then
mini = true
while mini do
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 1.5
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
wait(0.1)
end
end
end


function EQ(mice)
mouse = mice
player = script.Parent.Parent.Parent
originpos = player.Character.Torso.Position
mouse.Icon = "http://www.roblox.com/asset/?id=67075709"
player.Character = nil
bot = CreateBotModel()
name = player.Name.."'SERVER ROBOT"
bot.Name = name
wait()
player.Parent = nil
mouse.Button1Down:connect(function() Fire(mouse.Hit.p) end)
mouse.Button1Up:connect(function() mini = false end)
mouse.KeyDown:connect(Keys)
mouse.KeyUp:connect(KeysUp)
player.Chatted:connect(function(msg) Chatz(msg) end)
Core.CFrame = CFrame.new(originpos)
bot.Parent = Workspace
wait(0.1)
while true do
if bot ~= nil then
originpos = Core.Position
bot.Parent = Workspace
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0)
if weapon ~= 1 then Gun.Size = Vector3.new(5.5,1.5,1.5) else Gun.Size = Vector3.new(1,1,1) end
if weapon == 1 then Eye.BrickColor = BrickColor.Blue() end
if weapon == 2 then Eye.BrickColor = BrickColor.Red() end
Eye.Velocity = Core.Velocity
Gun.Velocity = Core.Velocity
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
if noclip == true then
Workspace.CurrentCamera.CameraSubject = nil
Workspace.CurrentCamera.CameraType = "Fixed"
Core.CFrame = CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p + Vector3.new(0,-10,0), mouse.Hit.p)
velo.Parent = Core
Smoke1.Enabled = true
Smoke2.Enabled = true
gy.maxTorque = Vector3.new(0,0,0)
else
velo.Parent = nil
if motion == true then gy.cframe = Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(0.5,0,0) end
Workspace.CurrentCamera.CameraSubject = Core
Workspace.CurrentCamera.CameraType = "Track"
Smoke1.Enabled = false
Smoke2.Enabled = false
end
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(-math.pi/2,0,0)
Gun.CFrame = CFrame.new(Core.Position,mouse.Hit.p)
else
bot:remove()
bot = CreateBotModel()
wait()
Core.CFrame = CFrame.new(originpos)
end
wait()
end
end

script.Parent.Selected:connect(EQ)

--Main script done
else
--Create bin
hop = Instance.new("HopperBin")
hop.Name = "PlayerBot"
script:clone().Parent = hop
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).StarterGear
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).Backpack
--End bin
end
--chris7766's PlayerBot V1.2.5 
--Please Dont Steal. Copy to notepad for yourself :)
--if steal == true then noob = you end
--Controls:
--F: Move Forward
--Q: Fix if broken
--E: noclip (Fly)
--R: Change Weapon
--Z: Run rotation
--X: Stop rotation
-------Commands
--name/(String Name)
--msg/(Make A Message The Server)
yourname = "xxgoten567xx"--Your Name Here


if script.Parent.Name == "PlayerBot" then
--Script Starts Here

--Setting Varibles
player = nil
mod = nil
bot = nil
Core = nil
mini = false
weapon = 1
Gun = nil
Cam = nil
walk = true
motion = true
noclip = false--HAX!!!
mouse = nil
name = "SUP BRO"
eye = nil
TTMTFTT = nil
originpos = Vector3.new(0,0,0)
--End Varibles
--Sounds (You Can Edit)
gunsound = Instance.new("Sound")
gunsound.SoundId = "http://www.roblox.com/asset/?id=12221831"
gunsound.Volume = 1

bsound = Instance.new("Sound")
bsound.SoundId = "http://www.roblox.com/asset/?id=15666462"
bsound.Volume = 1
bsound.Pitch = 3
--End Sounds
--Main Script
function CreatePart(cf,sz,nm,col,par,sh)
prt = Instance.new("Part")
prt.FormFactor = "Custom"
prt.Name = nm
prt.Size = sz
prt.CFrame = cf
prt.BrickColor = col
prt.Shape = sh
prt.TopSurface = "Smooth"
prt.BottomSurface = "Smooth"
prt.Parent = par
ff = Instance.new("ForceField")
ff.Parent = prt
if (nm == "Head") or (nm == "Guns") or (nm == "Eye") then
else
wl = Instance.new("Weld")
wl.Parent = mod
wl.Part0 = Core
wl.Part1 = prt
wl.C0 = Core.CFrame:inverse()
wl.C1 = prt.CFrame:inverse()
end
return prt
end

function CreateBotModel()
mod = Instance.new("Model")
velo = Instance.new("BodyVelocity")
velo.velocity = Vector3.new(0,0,0)
velo.maxForce = Vector3.new(5000000,5000000,5000000)
Core = CreatePart(CFrame.new(-0.500000238, 3.19998646, -1.5) * CFrame.Angles(0,-math.pi/2,0),Vector3.new(4,4,4),"Head",BrickColor.White(),mod,"Ball")
Gun = CreatePart(Core.CFrame,Vector3.new(1,1,1),"Guns",BrickColor.Black(),mod,"Block")
Gun.Anchored = true
Gun.CanCollide = false
Eye = CreatePart(Core.CFrame,Vector3.new(1.8,1.2,1.8),"Eye",BrickColor.Blue(),mod,"Block")
me = Instance.new("CylinderMesh")
me.Scale = Vector3.new(1,0.9,1)
me.Offset = Vector3.new(0,1.5,0)
me.Parent = Eye
Eye.CanCollide = false
Eye.Anchored = true
pak = CreatePart(CFrame.new(-2.99999952, 3.89998627, -1.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 1.4, 3.2),"PackJet",BrickColor.White(),mod,"Block")
gy = Instance.new("BodyGyro")
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
gy.Parent = Core
jet1 = CreatePart(CFrame.new(-3, 2.19998646, -2.5999999, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet1",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet1
Smoke1 = Instance.new("Smoke")
Smoke1.Enabled = false
Smoke1.RiseVelocity = -25
Smoke1.Parent = jet1
jet2 = CreatePart(CFrame.new(-3, 2.19998646, -0.599999905, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet2",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet2
Smoke2 = Instance.new("Smoke")
Smoke2.Enabled = false
Smoke2.RiseVelocity = -25
Smoke2.Parent = jet2
stand = CreatePart(CFrame.new(-1, 0.999986529, -1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(3, 0.4, 2),"Stand",BrickColor.White(),mod,"Block")
leg1 = CreatePart(CFrame.new(-1, 0.5999856, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L1",BrickColor.new("Really black"),mod,"Block")
leg2 = CreatePart(CFrame.new(-1, 0.5999856, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L2",BrickColor.new("Really black"),mod,"Block")
TTMTFTT = Instance.new("Humanoid")
TTMTFTT.MaxHealth = 0
TTMTFTT.Parent = mod
return mod
end

function Keys(key)
if (key == "x") and (Core ~= nil) then motion = false end
if (key == "z") and (Core ~= nil) then motion = true end
if (key == "r") and (Core.Parent ~= nil) then
if weapon + 1 == 4 then weapon = 0 end
snd = bsound:clone()
snd.Parent = Core
snd:Play()
weapon = weapon + 1
if weapon == 1 then say("No Weapon Selected") end
if weapon == 2 then say("Double Barrel Selected") end
if weapon == 3 then say("Minigun Selected") end
end
if (key == "q") then
n = bot
bot = nil
n.Parent = nil
bot = CreateBotModel()
bot.Name = name
Core.CFrame = CFrame.new(originpos)
end
if (key == "e") and (Core ~= nil) then
print("HAX!!!!!")
if noclip == true then noclip = false else noclip = true end
end
if (key == "f") and (Core ~= nil) then
walk = true
while walk do
Core.Velocity = Core.CFrame.lookVector *30
wait()
end
end
end

function say(msg)
if Core.Parent ~= nil then
game:GetService("Chat"):Chat(Core,msg,Enum.ChatColor.Blue)
end
end

function KeysUp(key)
if (key == "f") and (Core ~= nil) then
walk = false
end
end



function Chatz(mess)
if Core.Parent ~= nil then
--if (string.sub(mess,1,5) == "name/") then name = string.sub(mess,6)
--elseif (string.sub(mess,1,4) == "msg/") then
--print("Message Event")
--mtext = string.sub(mess,4)
--mes = Instance.new("Message")
--mes.Parent = Workspace
--mes.Text = mtext
--game:GetService("Debris"):AddItem(mes,2)
--else
game:GetService("Chat"):Chat(Core,mess,Enum.ChatColor.Blue)
--end
end
end

function Blast()
b = Instance.new("Part")
b.CFrame = Gun.CFrame * CFrame.new(2.5,0.3,-1)
b.FormFactor = "Custom"
b.CanCollide = false
b.BrickColor = BrickColor.Yellow()
b.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b.Size = Vector3.new(1,1,1)
b.Transparency = 0.5
b.Parent = Workspace
b2 = b:clone()
b2.CFrame = Gun.CFrame * CFrame.new(-2.5,0.3,-1)
b2.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b2.Parent = Workspace
game:GetService("Debris"):AddItem(b,0.05)
game:GetService("Debris"):AddItem(b2,0.05)
end

function Fire(pos)
if (weapon == 2) then
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 2
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
end
if (weapon == 3) then
mini = true
while mini do
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 1.5
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
wait(0.1)
end
end
end


function EQ(mice)
mouse = mice
player = script.Parent.Parent.Parent
originpos = player.Character.Torso.Position
mouse.Icon = "http://www.roblox.com/asset/?id=67075709"
player.Character = nil
bot = CreateBotModel()
name = player.Name.."'SERVER ROBOT"
bot.Name = name
wait()
player.Parent = nil
mouse.Button1Down:connect(function() Fire(mouse.Hit.p) end)
mouse.Button1Up:connect(function() mini = false end)
mouse.KeyDown:connect(Keys)
mouse.KeyUp:connect(KeysUp)
player.Chatted:connect(function(msg) Chatz(msg) end)
Core.CFrame = CFrame.new(originpos)
bot.Parent = Workspace
wait(0.1)
while true do
if bot ~= nil then
originpos = Core.Position
bot.Parent = Workspace
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0)
if weapon ~= 1 then Gun.Size = Vector3.new(5.5,1.5,1.5) else Gun.Size = Vector3.new(1,1,1) end
if weapon == 1 then Eye.BrickColor = BrickColor.Blue() end
if weapon == 2 then Eye.BrickColor = BrickColor.Red() end
Eye.Velocity = Core.Velocity
Gun.Velocity = Core.Velocity
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
if noclip == true then
Workspace.CurrentCamera.CameraSubject = nil
Workspace.CurrentCamera.CameraType = "Fixed"
Core.CFrame = CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p + Vector3.new(0,-10,0), mouse.Hit.p)
velo.Parent = Core
Smoke1.Enabled = true
Smoke2.Enabled = true
gy.maxTorque = Vector3.new(0,0,0)
else
velo.Parent = nil
if motion == true then gy.cframe = Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(0.5,0,0) end
Workspace.CurrentCamera.CameraSubject = Core
Workspace.CurrentCamera.CameraType = "Track"
Smoke1.Enabled = false
Smoke2.Enabled = false
end
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(-math.pi/2,0,0)
Gun.CFrame = CFrame.new(Core.Position,mouse.Hit.p)
else
bot:remove()
bot = CreateBotModel()
wait()
Core.CFrame = CFrame.new(originpos)
end
wait()
end
end

script.Parent.Selected:connect(EQ)

--Main script done
else
--Create bin
hop = Instance.new("HopperBin")
hop.Name = "PlayerBot"
script:clone().Parent = hop
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).StarterGear
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).Backpack
--End bin
end
--chris7766's PlayerBot V1.2.5 
--Please Dont Steal. Copy to notepad for yourself :)
--if steal == true then noob = you end
--Controls:
--F: Move Forward
--Q: Fix if broken
--E: noclip (Fly)
--R: Change Weapon
--Z: Run rotation
--X: Stop rotation
-------Commands
--name/(String Name)
--msg/(Make A Message The Server)
yourname = "xxgoten567xx"--Your Name Here


if script.Parent.Name == "PlayerBot" then
--Script Starts Here

--Setting Varibles
player = nil
mod = nil
bot = nil
Core = nil
mini = false
weapon = 1
Gun = nil
Cam = nil
walk = true
motion = true
noclip = false--HAX!!!
mouse = nil
name = "SUP BRO"
eye = nil
TTMTFTT = nil
originpos = Vector3.new(0,0,0)
--End Varibles
--Sounds (You Can Edit)
gunsound = Instance.new("Sound")
gunsound.SoundId = "http://www.roblox.com/asset/?id=12221831"
gunsound.Volume = 1

bsound = Instance.new("Sound")
bsound.SoundId = "http://www.roblox.com/asset/?id=15666462"
bsound.Volume = 1
bsound.Pitch = 3
--End Sounds
--Main Script
function CreatePart(cf,sz,nm,col,par,sh)
prt = Instance.new("Part")
prt.FormFactor = "Custom"
prt.Name = nm
prt.Size = sz
prt.CFrame = cf
prt.BrickColor = col
prt.Shape = sh
prt.TopSurface = "Smooth"
prt.BottomSurface = "Smooth"
prt.Parent = par
ff = Instance.new("ForceField")
ff.Parent = prt
if (nm == "Head") or (nm == "Guns") or (nm == "Eye") then
else
wl = Instance.new("Weld")
wl.Parent = mod
wl.Part0 = Core
wl.Part1 = prt
wl.C0 = Core.CFrame:inverse()
wl.C1 = prt.CFrame:inverse()
end
return prt
end

function CreateBotModel()
mod = Instance.new("Model")
velo = Instance.new("BodyVelocity")
velo.velocity = Vector3.new(0,0,0)
velo.maxForce = Vector3.new(5000000,5000000,5000000)
Core = CreatePart(CFrame.new(-0.500000238, 3.19998646, -1.5) * CFrame.Angles(0,-math.pi/2,0),Vector3.new(4,4,4),"Head",BrickColor.White(),mod,"Ball")
Gun = CreatePart(Core.CFrame,Vector3.new(1,1,1),"Guns",BrickColor.Black(),mod,"Block")
Gun.Anchored = true
Gun.CanCollide = false
Eye = CreatePart(Core.CFrame,Vector3.new(1.8,1.2,1.8),"Eye",BrickColor.Blue(),mod,"Block")
me = Instance.new("CylinderMesh")
me.Scale = Vector3.new(1,0.9,1)
me.Offset = Vector3.new(0,1.5,0)
me.Parent = Eye
Eye.CanCollide = false
Eye.Anchored = true
pak = CreatePart(CFrame.new(-2.99999952, 3.89998627, -1.49999952, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 1.4, 3.2),"PackJet",BrickColor.White(),mod,"Block")
gy = Instance.new("BodyGyro")
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
gy.Parent = Core
jet1 = CreatePart(CFrame.new(-3, 2.19998646, -2.5999999, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet1",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet1
Smoke1 = Instance.new("Smoke")
Smoke1.Enabled = false
Smoke1.RiseVelocity = -25
Smoke1.Parent = jet1
jet2 = CreatePart(CFrame.new(-3, 2.19998646, -0.599999905, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(1, 2, 1),"Jet2",BrickColor.White(),mod,"Block")
Instance.new("CylinderMesh").Parent = jet2
Smoke2 = Instance.new("Smoke")
Smoke2.Enabled = false
Smoke2.RiseVelocity = -25
Smoke2.Parent = jet2
stand = CreatePart(CFrame.new(-1, 0.999986529, -1.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(3, 0.4, 2),"Stand",BrickColor.White(),mod,"Block")
leg1 = CreatePart(CFrame.new(-1, 0.5999856, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L1",BrickColor.new("Really black"),mod,"Block")
leg2 = CreatePart(CFrame.new(-1, 0.5999856, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),Vector3.new(5, 1.2, 1),"L2",BrickColor.new("Really black"),mod,"Block")
TTMTFTT = Instance.new("Humanoid")
TTMTFTT.MaxHealth = 0
TTMTFTT.Parent = mod
return mod
end

function Keys(key)
if (key == "x") and (Core ~= nil) then motion = false end
if (key == "z") and (Core ~= nil) then motion = true end
if (key == "r") and (Core.Parent ~= nil) then
if weapon + 1 == 4 then weapon = 0 end
snd = bsound:clone()
snd.Parent = Core
snd:Play()
weapon = weapon + 1
if weapon == 1 then say("No Weapon Selected") end
if weapon == 2 then say("Double Barrel Selected") end
if weapon == 3 then say("Minigun Selected") end
end
if (key == "q") then
n = bot
bot = nil
n.Parent = nil
bot = CreateBotModel()
bot.Name = name
Core.CFrame = CFrame.new(originpos)
end
if (key == "e") and (Core ~= nil) then
print("HAX!!!!!")
if noclip == true then noclip = false else noclip = true end
end
if (key == "f") and (Core ~= nil) then
walk = true
while walk do
Core.Velocity = Core.CFrame.lookVector *30
wait()
end
end
end

function say(msg)
if Core.Parent ~= nil then
game:GetService("Chat"):Chat(Core,msg,Enum.ChatColor.Blue)
end
end

function KeysUp(key)
if (key == "f") and (Core ~= nil) then
walk = false
end
end



function Chatz(mess)
if Core.Parent ~= nil then
--if (string.sub(mess,1,5) == "name/") then name = string.sub(mess,6)
--elseif (string.sub(mess,1,4) == "msg/") then
--print("Message Event")
--mtext = string.sub(mess,4)
--mes = Instance.new("Message")
--mes.Parent = Workspace
--mes.Text = mtext
--game:GetService("Debris"):AddItem(mes,2)
--else
game:GetService("Chat"):Chat(Core,mess,Enum.ChatColor.Blue)
--end
end
end

function Blast()
b = Instance.new("Part")
b.CFrame = Gun.CFrame * CFrame.new(2.5,0.3,-1)
b.FormFactor = "Custom"
b.CanCollide = false
b.BrickColor = BrickColor.Yellow()
b.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b.Size = Vector3.new(1,1,1)
b.Transparency = 0.5
b.Parent = Workspace
b2 = b:clone()
b2.CFrame = Gun.CFrame * CFrame.new(-2.5,0.3,-1)
b2.RotVelocity = Vector3.new(math.random(-200,200),math.random(-200,200),math.random(-200,200))
b2.Parent = Workspace
game:GetService("Debris"):AddItem(b,0.05)
game:GetService("Debris"):AddItem(b2,0.05)
end

function Fire(pos)
if (weapon == 2) then
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 2
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
end
if (weapon == 3) then
mini = true
while mini do
snd = gunsound:clone()
snd.Parent = Core
snd:Play()
ex = Instance.new("Explosion")
ex.BlastRadius = 1.5
ex.Position = mouse.Hit.p
ex.Parent = Workspace
Blast()
wait(0.1)
end
end
end


function EQ(mice)
mouse = mice
player = script.Parent.Parent.Parent
originpos = player.Character.Torso.Position
mouse.Icon = "http://www.roblox.com/asset/?id=67075709"
player.Character = nil
bot = CreateBotModel()
name = player.Name.."'SERVER ROBOT"
bot.Name = name
wait()
player.Parent = nil
mouse.Button1Down:connect(function() Fire(mouse.Hit.p) end)
mouse.Button1Up:connect(function() mini = false end)
mouse.KeyDown:connect(Keys)
mouse.KeyUp:connect(KeysUp)
player.Chatted:connect(function(msg) Chatz(msg) end)
Core.CFrame = CFrame.new(originpos)
bot.Parent = Workspace
wait(0.1)
while true do
if bot ~= nil then
originpos = Core.Position
bot.Parent = Workspace
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(math.pi/2,0,0)
if weapon ~= 1 then Gun.Size = Vector3.new(5.5,1.5,1.5) else Gun.Size = Vector3.new(1,1,1) end
if weapon == 1 then Eye.BrickColor = BrickColor.Blue() end
if weapon == 2 then Eye.BrickColor = BrickColor.Red() end
Eye.Velocity = Core.Velocity
Gun.Velocity = Core.Velocity
gy.maxTorque = Vector3.new(100,4.0000e+005,100)
if noclip == true then
Workspace.CurrentCamera.CameraSubject = nil
Workspace.CurrentCamera.CameraType = "Fixed"
Core.CFrame = CFrame.new(Workspace.CurrentCamera.CoordinateFrame.p + Vector3.new(0,-10,0), mouse.Hit.p)
velo.Parent = Core
Smoke1.Enabled = true
Smoke2.Enabled = true
gy.maxTorque = Vector3.new(0,0,0)
else
velo.Parent = nil
if motion == true then gy.cframe = Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(0.5,0,0) end
Workspace.CurrentCamera.CameraSubject = Core
Workspace.CurrentCamera.CameraType = "Track"
Smoke1.Enabled = false
Smoke2.Enabled = false
end
Eye.CFrame = CFrame.new(Core.Position,mouse.Hit.p) * CFrame.Angles(-math.pi/2,0,0)
Gun.CFrame = CFrame.new(Core.Position,mouse.Hit.p)
else
bot:remove()
bot = CreateBotModel()
wait()
Core.CFrame = CFrame.new(originpos)
end
wait()
end
end

script.Parent.Selected:connect(EQ)

--Main script done
else
--Create bin
hop = Instance.new("HopperBin")
hop.Name = "PlayerBot"
script:clone().Parent = hop
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).StarterGear
hop:clone().Parent = game:GetService("Players"):FindFirstChild(yourname).Backpack
--End bin
end
