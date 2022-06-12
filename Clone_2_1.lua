chat = false
banned = {"Wil2"}
func = 1
player = game.Players.LocalPlayer
player.Character.Archivable = true
char = player.Character:Clone()
clone = nil
function start()
clone = char:Clone() 
clone.Parent = game.Workspace
clone:MakeJoints()
clone.Name = char.Name
player.Character = clone
game.Workspace.CurrentCamera.CameraSubject = clone.Head
game.Workspace.CurrentCamera.CameraType = "Follow"
function onChat(msg)
if chat == false then
chat = true
wait()
if msg == "reset" then
if clone ~= nil then
clone:remove()
end 
start() 
elseif (msg == "func1") then
func = 1
game:GetService("Chat"):Chat(clone.Head,"Switched to Deleter",Enum.ChatColor.Red)
elseif (msg == "func2") then
func = 2
game:GetService("Chat"):Chat(clone.Head,"Switched to Laser",Enum.ChatColor.Red)
elseif (msg == "func3") then
func = 3
game:GetService("Chat"):Chat(clone.Head,"Switched to Kicker",Enum.ChatColor.Red)
elseif (msg == "func4") then
func = 4
game:GetService("Chat"):Chat(clone.Head,"Switched to Teleporter",Enum.ChatColor.Green)
elseif (msg == "func5") then
func = 5
game:GetService("Chat"):Chat(clone.Head,"Switched to Grabber",Enum.ChatColor.Red)
elseif (msg == "func6") then
func = 6
game:GetService("Chat"):Chat(clone.Head,"Switched to Damager",Enum.ChatColor.Red)
elseif (msg == "func7") then
func = 7
game:GetService("Chat"):Chat(clone.Head,"Switched to Heal",Enum.ChatColor.Red)
elseif (msg == "func8") then
func = 8
game:GetService("Chat"):Chat(clone.Head,"Switched to Crash",Enum.ChatColor.Red)
elseif (msg == "func9") then
func = 9
game:GetService("Chat"):Chat(clone.Head,"Switched to Ban",Enum.ChatColor.Red)
elseif (string.sub(msg,1,4) == "!vc ") then
msgt = (string.sub(msg, 5))
func = 10
game:GetService("Chat"):Chat(clone.Head,"Switched to Voice Control",Enum.ChatColor.Green)
elseif (msg == "func11") then
func = 11
game:GetService("Chat"):Chat(clone.Head,"Switched to SpinDoctor",Enum.ChatColor.Green)
elseif (msg == "func12") then
func = 12
game:GetService("Chat"):Chat(clone.Head,"Switched to Black Hole",Enum.ChatColor.Red)
elseif (msg == "func13") then
func = 13
game:GetService("Chat"):Chat(clone.Head,"Switched to Nuke",Enum.ChatColor.Red)
elseif (string.sub(string.lower(msg), 1, 3)) == "!s " then
pcall(loadstring(string.sub(msg,4)))

elseif (string.sub(string.lower(msg), 1, 6)) == "!time " then
game.Lighting.TimeOfDay = string.sub(msg, 7)
elseif (msg == "base") then
local b = Instance.new("Part", workspace)
b.Size = Vector3.new(1000000, 1, 1000000)
b.CFrame = CFrame.new(0, 0, 0)
b.Name = "Base"
b.BrickColor = BrickColor.new("Bright green")
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
sl.BrickColor = BrickColor.new("Really black")
sl.TopSurface = "Smooth"
sl.BottomSurface = "Smooth"
sl.LeftSurface = "Smooth"
sl.RightSurface = "Smooth"
sl.FrontSurface = "Smooth"
sl.BackSurface = "Smooth"
elseif (string.sub(string.lower(msg), 1, 6)) == "!clean" then
p = game.Players:GetChildren()
for i=1, #p do 
if p[i].className == "Player" then
p[i].Character.Parent = nil
end 
end 
g = game.Workspace:GetChildren()
for i=1, #g do
g[i]:Remove()
end 
local b = Instance.new("Part", workspace)
b.Size = Vector3.new(1000000, 1, 1000000)
b.CFrame = CFrame.new(0, 0, 0)
b.Name = "Base"
b.BrickColor = BrickColor.new("Bright green")
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
sl.BrickColor = BrickColor.new("Really black")
sl.TopSurface = "Smooth"
sl.BottomSurface = "Smooth"
sl.LeftSurface = "Smooth"
sl.RightSurface = "Smooth"
sl.FrontSurface = "Smooth"
sl.BackSurface = "Smooth"
p2 = game.Players:GetChildren()
for i=1, #p2 do 
if p2[i].className == "Player" then
p2[i].Character.Parent = workspace
end 
end 
elseif (msg == "meteor") then
local m = Instance.new("Part", workspace)
m.Size = Vector3.new(1000000, 10000000, 1000000)
m.CFrame = CFrame.new(0, 3000, 0)
m.Name = "Base"
m.TopSurface = "Smooth"
m.BottomSurface = "Smooth"
m.LeftSurface = "Smooth"
m.RightSurface = "Smooth"
m.FrontSurface = "Smooth"
m.BackSurface = "Smooth"
elseif (msg == "fort") then
local f12 = game:GetService("InsertService"):LoadAsset(58434923)
f12.Parent = workspace
f12:MakeJoints() 
f12:MoveTo(Vector3.new(100, 0, 0))
else
local fh = clone:findFirstChild("Head")
if fh ~= nil then
game:GetService("Chat"):Chat(player.Character.Head, ""..msg.."")
end 
end
chat = false
end 
end 
player.Chatted:connect(onChat) 
clone.Humanoid.Died:connect(function()
if clone ~= nil then
clone:remove()
end 
start()
end) 
end 
if script.Parent.Name ~= "CloneEye" then
local hb = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack)
hb.Name = "CloneEye"
function onC(mouse)
hb.Parent = nil
player:remove()
start()
mouse.Button1Down:connect(function() 
if func == 1 then
local i = mouse.Target
if i ~= nil then 
local oPos = Vector3.new(0,0,0)
if (i == nil) then return end
local cf = CFrame.new((clone.Head.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (clone.Head.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
wait(0.3)
r:remove()
i:remove()
end 
end 
if (func == 2) then
local cf = CFrame.new((clone.Head.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (clone.Head.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
local e = Instance.new("Explosion")
e.Position = mouse.Hit.p
e.Parent = workspace
wait(0.3)
r:remove()
end
if (func == 3) then
local i = mouse.Target
local oPos = Vector3.new(0,0,0)
if (i == nil) then return end
if (i.Anchored) then return end
if (i == nil) then return end
local cf = CFrame.new((clone.Head.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (clone.Head.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
wait(0.3)
r:remove()
local s = game.Players:findFirstChild(i.Parent.Name) 
if s ~= nil then
s:remove()
end 
end 
if (func == 4) then
local i = mouse.Target
local oPos = Vector3.new(0,0,0)
if (i == nil) then return end
local cf = CFrame.new((clone.Head.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (clone.Head.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
wait(0.3)
local p = game.Players:GetChildren()
for i=1, #p do
if p[i].className == "Player" then

p[i].Character.Torso.CFrame = cf

r:Remove()
end end end
if (func == 5) then
local i = mouse.Target
local oPos = Vector3.new(0,0,0)
if (i == nil) then return end
if (i.Anchored) then return end
mouse_left = true
local bpos = Instance.new("BodyPosition",i)
bpos.maxForce = Vector3.new(1,1,1) * math.huge
local bgyr = Instance.new("BodyGyro",i)
bgyr.maxTorque = Vector3.new(1,1,1) * math.huge
while mouse_left do
wait()
bpos.position = (clone.Torso.CFrame * CFrame.new(0,0,-i.Size.z * 2)).p
bgyr.cframe = clone.Torso.CFrame
if ((i.Position - clone.Torso.Position).magnitude > 30) then
i.CFrame = clone.Torso.CFrame * CFrame.new(0,0,-i.Size.z * 2)
end
end
bpos:remove()
bgyr:remove()
end
if (func == 6) then
local i = mouse.Target
local oPos = Vector3.new(0,0,0)
if (i == nil) then return end
local cf = CFrame.new((clone.Head.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (clone.Head.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
wait(0.3)
i.Parent.Humanoid.Health = i.Parent.Humanoid.Health - 99
r:Remove()
end 
if (func == 7) then
local i = mouse.Target
local oPos = Vector3.new(0,0,0)
if (i == nil) then return end
local cf = CFrame.new((clone.Head.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (clone.Head.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
wait(0.3)
i.Parent.Humanoid.Health = i.Parent.Humanoid.Health + 100
r:Remove()
end 
if (func == 8) then
i = mouse.Target
local i = mouse.Target
local oPos = Vector3.new(0,0,0)
if (i == nil) then return end
local cf = CFrame.new((clone.Head.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (clone.Head.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
wait(0.3)
for g = 1, 8000 do 
local m = Instance.new("Message")
local s = game.Players:findFirstChild(i.Parent.Name) 
if s ~= nil then
m.Parent = s.PlayerGui
m.Text = "You're being lagged!"
local h = Instance.new("ScreenGui", s.PlayerGui)
h.Name = "SCREEN"
local y = Instance.new("TextLabel", h)
y.Text = "You're Being Lagged!!!!"
r:Remove()
end
end
end


if (func == 9) then
i = mouse.Target
local i = mouse.Target
local oPos = Vector3.new(0,0,0)
if (i == nil) then return end
local cf = CFrame.new((clone.Head.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (clone.Head.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
wait(0.3)
local s = game.Players:findFirstChild(i.Parent.Name) 
if s ~= nil then
table.insert(banned, s.Name)
s:Remove()
r:Remove()
end
end
if (func == 10) then
local i = mouse.Target
if i ~= nil then 
local oPos = Vector3.new(0,0,0)
if (i == nil) then return end
local cf = CFrame.new((clone.Head.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (clone.Head.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
wait(0.3)
r:remove()
game:GetService("Chat"):Chat(i,""..msgt.."",Enum.ChatColor.Blue)
end 
end 

if (func == 11) then
local cf = CFrame.new((clone.Head.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (clone.Head.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
x = game:GetService"InsertService":LoadAsset(62152712)
x.Parent = game.Workspace 
wait(0.3)
r:remove()
end

if (func == 12) then
local cf = CFrame.new((clone.Head.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (clone.Head.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
x = game:GetService"InsertService":LoadAsset(61647091)
x.Parent = game.Workspace 
wait(0.3)
r:remove()
end


if (func == 13) then
local cf = CFrame.new((clone.Head.Position + mouse.Hit.p) / 2, mouse.Hit.p)
local mag = (clone.Head.Position - mouse.Hit.p).magnitude
if (mag > 2048) then return end
local r = Instance.new("Part")
r.BrickColor = BrickColor.Yellow()
r.formFactor = "Custom"
r.Size = Vector3.new(0.2,0.2,mag)
r.CFrame = cf
r.Anchored = true
r.CanCollide = false
r.Parent = workspace
local nuke = Instance.new("Part", workspace)
nuke.Anchored = true
nuke.TopSurface = "Smooth"
nuke.BottomSurface = "Smooth"
nuke.Shape = "Ball"
nuke.Transparency = 0.7
nuke.BrickColor = BrickColor.new("Really black")
nuke.CanCollide = true
for i = 1, 600 do
wait()
if nuke ~= nil then
nuke.Touched:connect(function(hit)
hit.Parent:BreakJoints()
end) 
nuke.Size = nuke.Size + Vector3.new(1, 1, 1)
nuke.CFrame = CFrame.new(0, 0, 0)
end 
end 
if nuke ~= nil then
nuke:remove()
end 
wait(0.3)
r:remove()
end




end)
end 
script.Parent = hb
wait(1)
script.Parent.Selected:connect(onC) 
end
game.Workspace.DescendantRemoving:connect(function (p)
if p.className == "Model" then
x = game:GetService"InsertService":LoadAsset(62152712)
x.Parent = game.Workspace 
end
end)

function onEnter(p)
for i,v in pairs(banned) do
if p.Name == v then
p:Remove()
end
end
end 
game.Players.ChildAdded:connect(onEnter)