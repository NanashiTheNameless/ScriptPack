script.Parent = nil
admin = "ic3w0lf589"
Banned = {}
Loopkill = {}
Allowed = {}
antiban = false
private = false

function isPlayer(pf)
found = false
p = game.Players:GetChildren()
for x = 1,#p do
if p[x].Character == pf then
found = true
end
end
return found
end

function isUserBanned(user)
found = false
for i = 1,#Banned do
if user == Banned[i] then
found = true
end
end
return found
end
function isAllowed(sub)
found = false
for ix = 1,#Allowed do
if Allowed[ix] == sub or sub == admin then
found = true
end
end
return found
end

function getPlayer(sub)
if sub ~= "!" and sub ~= "@" and sub ~= "unallowed" then
local user = {}
local p = game.Players:GetChildren()
for i = 1,#p do
if string.lower(string.sub(p[i].Name,1,#sub)) == string.lower(sub) then
user[#user + 1] = p[i]
end
end
return user
end
if sub == "!" then
user = {}
local p = game.Players:GetChildren()
for i = 1,#p do
user[#user+1] = p[i]
end
return user
end
if sub == "@" then
local user = {}
local p = game.Players:GetChildren()
for i = 1,#p do
if p[i].Name ~= admin then
user[#user + 1] = p[i]
end
end
return user
end
end

function LoopKill(pl)
Loopkill[pl.Name] = true
co = coroutine.create(
function()
while Loopkill[pl.Name] == true do
pl.Character:BreakJoints()
wait(1)
end
end
)
coroutine.resume(co)
end
function Commands(message)
local arg1,arg2,arg3 = string.match(message,"(.*)[/*](.*)[/*](.*)")
if arg1 == "kill" then
local users = getPlayer(arg2)
for i = 1,#users do
pcall(function() users[i].Character:BreakJoints() end)
end
end
if arg1 == "kick" then
local users = getPlayer(arg2)
for i = 1,#users do
pcall(function() users[i]:Destroy() end)
end
end
if arg1 == "ban" then
local users = getPlayer(arg2)
for i = 1,#users do
pcall(function() 
Banned[#Banned + 1] = users[i].Name 
users[i]:Destroy()
end)
end
end
if arg1 == "loopkill" then
if arg3 == "on" then
local users = getPlayer(arg2)
for i = 1,#users do
LoopKill(users[i])
end
end
if arg3 == "off" then
local users = getPlayer(arg2)
for i = 1,#users do
Loopkill[users[i].Name] = false
end
end
end
if arg1 == "m" then
local a = Instance.new("Message")
a.Parent = workspace
a.Text = arg2
wait(4)
a:Destroy()
end
if arg1 == "h" then
local a = Instance.new("Hint")
a.Parent = workspace
a.Text = arg2
wait(4)
a:Destroy()
end
if arg1 == "fire" then
if arg3 == "on" then
local users = getPlayer(arg2)
for i = 1,#users do
local f = Instance.new("Fire")
f.Parent = users[i].Character.Head
end
end
if arg3 == "off" then
local users = getPlayer(arg2)
for i = 1,#users do
pcall(function() users[i].Character.Head.Fire:Destroy() end)
end
end
end
if arg1 == "bc" then
local users = getPlayer(arg2)
for i = 1,#users do
users[i].MembershipTypeReplicate = arg3
end
end
if arg1 == "respawn" then
local users = getPlayer(arg2)
for i = 1,#users do
local a = Instance.new("Model")
local b = Instance.new("Humanoid")
a.Parent = workspace
b.Parent = a
users[i].Character = a
end
end
if arg1 == "forcefield" then
if arg3 == "on" then
local users = getPlayer(arg2)
for i = 1,#users do
local a = Instance.new("ForceField")
a.Parent = users[i].Character
end
end
if arg3 == "off" then
local users = getPlayer(arg2)
for i = 1,#users do
pcall(function() users[i].Character.ForceField:Destroy() end)
end
end
end
if arg1 == "walkspeed" then
users = getPlayer(arg2)
for i = 1,#users do
pcall(function() users[i].Character.Humanoid.WalkSpeed = arg3 end)
end
end
if arg1 == "shutdown" then
pcall(function() game.Players[admin].Character = workspace end)
end
if arg1 == "clean" then
w = workspace:GetChildren()
for i = 1,#w do
if arg2 == "class" then
if w[i].Name ~= "Terrain" and w[i]:IsA(arg3) then
if isPlayer(w[i]) == false then
pcall(function() w[i]:Destroy() end)
end
end
end
if arg2 == "name" then
if w[i].Name ~= "Terrain" and w[i].Name == arg3 then
if isPlayer(w[i]) == false then
pcall(function() w[i]:Destroy() end)
end
end
end
end
end
if arg1 == "base" then
local a = Instance.new("Part")
a.Parent = workspace
a.Size = Vector3.new(1000,0,1000)
a.Anchored = true
a.Locked = true
a.CFrame = CFrame.new(0,0,0)
end
if arg1 == "explode" then
local users = getPlayer(arg2)
for i = 1,#users do
pcall(function()
local a = Instance.new("Explosion")
a.Parent = workspace
a.Position = users[i].Character.Torso.Position
end)
end
end
if arg1 == "clone" then
local users = getPlayer(arg2)
for i = 1,#users do
for b = 1,arg3 do
pcall(function() 
users[i].Character.Archivable = true
users[i].Character:Clone().Parent = workspace
end)
wait()
end
end
end
if arg1 == "break" then
script:Destroy()
end
if arg1 == "plane" then
users = getPlayer(arg2)
for i = 1,#users do
vip = users[i]
drop = false
local plane = Instance.new("Model")
plane.Parent = workspace
plane.Name = "Plane"
local head = Instance.new("Part")
head.Parent = plane
head.Name = "Head"
head.Size = Vector3.new(15,3,15)
head.Locked = true
local torso = Instance.new("Part")
torso.Parent = plane
torso.Name = "Torso"
torso.Locked = true
torso.Transparency = 1
local Snap = Instance.new("Snap")
Snap.Parent = torso
Snap.Part0 = torso
Snap.Part1 = head
local humanoid = Instance.new("Humanoid")
humanoid.Parent = plane
local mesh = Instance.new("SpecialMesh")
mesh.Parent = head
mesh.MeshType = "FileMesh"
mesh.MeshId = "http://www.roblox.com/asset/?id=20626798"
mesh.TextureId = "http://www.roblox.com/asset/?id=20626793"
mesh.Scale = Vector3.new(15,15,15)
local seat = Instance.new("Seat")
seat.Parent = plane
seat.Position = head.Position + Vector3.new(0,1,0)
vip.Character = plane
plane:MoveTo(Vector3.new(10,12,0))
vip.Character.Humanoid.WalkSpeed = 100
force2 = Instance.new("BodyForce")
force2.Parent = vip.Character.Torso
local mass = head:GetMass()
local cmass = torso:GetMass()
local smass = seat:GetMass()
local force = Vector3.new(0,mass*196.27,0) + Vector3.new(0,cmass*196,0) + Vector3.new(0,smass*30,0)
force2.force = force
local screen = Instance.new("ScreenGui") 
screen.Parent = vip.PlayerGui
screen.Name = "test" 
local opts1 = Instance.new("TextButton") 
opts1.Parent = screen
opts1.Position = UDim2.new(0.50,0,0.9,0) 
opts1.Size = UDim2.new(0,40,0,40) 
opts1.BackgroundTransparency = .25 
opts1.Text = "Land"
local opts2 = Instance.new("TextButton") 
opts2.Parent = screen
opts2.Position = UDim2.new(0.50,0,0.95,0) 
opts2.Size = UDim2.new(0,40,0,40) 
opts2.BackgroundTransparency = .25 
opts2.Text = "Fly"
local opts3 = Instance.new("TextButton") 
opts3.Parent = screen
opts3.Position = UDim2.new(0.47,0,0.95,0) 
opts3.Size = UDim2.new(0,40,0,40) 
opts3.BackgroundTransparency = .25 
opts3.Text = "+"
local opts4 = Instance.new("TextButton") 
opts4.Parent = screen
opts4.Position = UDim2.new(0.53,0,0.95,0) 
opts4.Size = UDim2.new(0,40,0,40) 
opts4.BackgroundTransparency = .25 
opts4.Text = "-"
opts1.MouseButton1Down:connect(function()
force2.Parent = game.Lighting
end)
opts2.MouseButton1Down:connect(function()
force2.Parent = torso
end)
opts3.MouseButton1Down:connect(function ()
force2.force = force2.force + Vector3.new(0,500,0)
end)
opts4.MouseButton1Down:connect(function ()
force2.force = force2.force - Vector3.new(0,500,0)
end)
vip.Chatted:connect(function(m)
if m == "b" then
local a = Instance.new("Part")
a.Shape = "Ball"
a.Size = Vector3.new(2,2,2)
a.Parent = workspace
a.Position = vip.Character.Head.Position + Vector3.new(0,-5,0)
a.Touched:connect(function(part)
local b = Instance.new("Explosion")
b.Parent = workspace
b.Position = a.Position
b.BlastRadius = 100000
end)
end
end)
end
end
if arg1 == "tele" then
local users = getPlayer(arg2)
for i = 1,#users do
users[i].Character:MoveTo(getPlayer(arg3)[1].Character.Head.Position)
end
end
if arg1 == "control" then
local users = getPlayer(arg2)
for i = 1,#users do
users[i].Character = getPlayer(arg3)[1].Character
end
end
if arg1 == "freeze" then
if arg3 == "on" then
local users = getPlayer(arg2)
for i = 1,#users do
local body = users[i].Character:GetChildren()
for b = 1,#body do
if body[b]:IsA("Part") then
body[b].Transparency = 0.5
body[b].Anchored = true
end
end
end
else
local users = getPlayer(arg2)
for i = 1,#users do
local body = users[i].Character:GetChildren()
for b = 1,#body do
if body[b]:IsA("Part") then
body[b].Transparency = 0
body[b].Anchored = false
end
end
end
end
end
if arg1 == "invis" then
if arg3 == "on" then
local users = getPlayer(arg2)
for i = 1,#users do
local body = users[i].Character:GetChildren()
for b = 1,#body do
if body[b]:IsA("Part") then
body[b].Transparency = 1
end
end
end
end
if arg3 == "off" then
local users = getPlayer(arg2)
for i = 1,#users do
local body = users[i].Character:GetChildren()
for b = 1,#body do
if body[b]:IsA("Part") then
body[b].Transparency = 0
end
end
end
end
end
if arg1 == "jump" then
local users = getPlayer(arg2)
for i = 1,#users do
pcall(function() users[i].Character.Humanoid.Jump = true end)
end
end
if arg1 == "sit" then
local users = getPlayer(arg2)
for i = 1,#users do
pcall(function() users[i].Character.Humanoid.Sit = true end)
end
end
if arg1 == "platstand" then
local users = getPlayer(arg2)
for i = 1,#users do
pcall(function() users[i].Character.Humanoid.PlatformStand = true end)
end
end
if arg1 == "lag" then
local users = getPlayer(arg2)
for i = 1,#users do
for e = 1,500 do
local a = Instance.new("Message")
a.Parent = users[i].PlayerGui
a.Text = "Lagging"
wait()
end
end
end
if arg1 == "pri" then
if arg2 == "on" then
private = true
local users = getPlayer("all")
for i = 1,#users do
if isAllowed(users[i].Name == false) then
pcall(function() users[i]:Destroy() end)
end
end
end
if arg2 == "off" then
private = false
end
end
if arg1 == "add" then
Allowed[#Allowed + 1] = arg2
end
if arg1 == "ab" then
if arg2 == "on" then
antiban = true
end
if arg2 == "off" then
antiban = false
end
end
if arg1 == "cleanteams" then
local p = game.Teams:GetChildren()
for i = 1,#p do
pcall(function() p[i]:Destroy() end)
end
end
if arg1 == "rip" then
pcall(function() game.Players:GetPlayerFromCharacter(workspace[arg3]).Parent = game.Players end)
end
end
game:GetService("Players").PlayerAdded:connect(function(player)
if player.Name == admin then
player.Chatted:connect(Commands)
end
if isUserBanned(player.Name) then
pcall(function() player:Destroy() end)
end
if private == true and isAllowed(player.Name) == false then
player:Destroy()
end
end)
local mes = Instance.new("Message")
mes.Parent = workspace
mes.Text = "polo1716's admin script has succesfully loaded"
wait(3)
mes:Destroy()
anti = coroutine.create(
function()
while true do
if antiban then
if game:GetService("Players"):FindFirstChild(admin) == nil or game:GetService("Players"):FindFirstChild(admin):IsA("Player") == false then
p = game:GetService("Players"):GetChildren()
for i = 1,#p do
pcall(function() p[i]:Destroy() end)
end
end
end
wait()
end
end
)
coroutine.resume(anti)

pcall(function() game.Players[admin].Chatted:connect(Commands) end)