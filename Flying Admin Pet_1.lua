--Flying admin pet Separate Functions [776] AKA: chris7766
--Noobs Take This Then Say They Made It
--Way To Go Noob You Stole This Model!
--This Version Is For Scriptbuilder
--and also. Don't make another "Caik Assistant" out of this

player = game:GetService("Players").peyquinn
pet = nil
pettype = "Diamond"
head = nil
ab = true
ns = nil
name = "Someones Flying Pet"
Bans = {}
dead = false
look = false
follow = true
nubs = {"TheDukeOfYork","lolpkmaxo","niftyrobloxia","Builderman350"}
talks = {"No.", "Fine", "I Like Pie", "The End Is Near", "U MAD BRO?", "The Game", "T_T", ":D", "Do You Like Pie", "Feed Me", "Are You Canadian eh", "I Spy The Base Plate!", "Noobs Must Die", "I Like Trains", "I Like Turtles"}
admins = {"peyquinn","fireflare54","DeathDude31","IPityTheFoo","Builderman","ROBLOX","brogan20","WaterInAMelon"}

function floorwire(to,from,colr)
tpthtfw = Instance.new("Part")
tpthtfw.Anchored = true
tpthtfw.CFrame = CFrame.new(0,5000,0)
tpthtfw.Parent = Workspace
flwre = Instance.new("FloorWire")
flwre.To = to
flwre.From = from
flwre.Color = colr
flwre.Parent = tpthtfw
game:GetService("Debris"):AddItem(tpthtfw,1)
end



function PetChat(msg)
if pet.Parent ~= nil and head.Parent ~= nil then
game:GetService("Chat"):Chat(head, msg, Enum.ChatColor.Green)
end
end

function MakePet()
if dead == false then
head = Instance.new("Part")
head.formFactor = "Custom"
head.Anchored = true
head.Name = "Head"
head.Size = Vector3.new(1,1,1)
pet = Instance.new("Model")
pet.Parent = Workspace
head.Parent = pet
hum = Instance.new("Humanoid")
hum.MaxHealth = 0
hum.Parent = pet
mesh = Instance.new("SpecialMesh")
mesh.Parent = head
pet.Name = name
if pettype == "Diamond" then
head.Reflectance = 1
head.BrickColor = BrickColor.Blue()
mesh.MeshId = "http://www.roblox.com/Asset/?id=9756362"
end
if pettype == "Duck" then
head.BrickColor = BrickColor.Blue()
mesh.MeshId = "http://www.roblox.com/asset/?id=9419831"
mesh.TextureId = "http://www.roblox.com/asset/?id=9419827"
end
if pettype == "Nyan" then
mesh.Parent = nil
head.Transparency = 1
head.Size = Vector3.new(0.1,2.5,3)
d = Instance.new("Decal")
d.Texture = "http://www.roblox.com/asset/?id=58545010"
d.Face = "Right"
d.Parent = head
db = Instance.new("Decal")
db.Texture = "http://www.roblox.com/asset/?id=58545042"
db.Face = "Left"
db.Parent = head
end
if pettype == "Orb" then
mesh.MeshId = "http://www.roblox.com/asset/?id=34795798"
mesh.TextureId = "http://www.roblox.com/asset/?id=34914385"
f = Instance.new("Fire")
f.Color = Color3.new(0,255,0)
f.SecondaryColor = Color3.new(0,0,0)
f.Size = 1
f.Heat = 0
f.Parent = head
ff = Instance.new("Fire")
ff.Size = 1
ff.Heat = 0
ff.Color = Color3.new(255,0,0)
ff.SecondaryColor = Color3.new(0,0,0)
ff.Parent = head
fff = Instance.new("Fire")
fff.Size = 1
fff.Heat = 0
fff.Color = Color3.new(0,0,255)
fff.SecondaryColor = Color3.new(0,0,0)
fff.Parent = head
end
if pettype == "PlayerOrb" then
head.Reflectance = 1
head.Size = Vector3.new(0.2,0.2,0.2)
head.BrickColor = BrickColor.Yellow()
mesh.Parent = nil
fi = Instance.new("Fire")
fi.Color = Color3.new(0,0,9)
fi.SecondaryColor = Color3.new(255,255,255)
fi.Parent = head
end
end
end

function Backuptalk(msg,yo)
if msg == "listen" then
PetChat("Yes")
yo.Chatted:connect(function(msg) Chats(msg) end)
end
end

function playerjoin(hia)
if hia.Name == "chris7766" then PetChat("Hi chris") end
for i = 1,#admins do
if hia.Name == admins[i] then hia.Chatted:connect(function(msg) Backuptalk(msg,hia) end) end
end
end

function matchPlayer(str)
result = nil
players = game.Players:GetPlayers()
for i,v in pairs(game.Players:GetPlayers()) do
if (string.find(string.lower(v.Name), str) == 1) then
if (result ~= nil) then return nil end
result = v
end
end
if str == "me" then result = player end
return result
end

function Chats(mrbucket)
if dead == false then
------------------------------------
msg = string.lower(mrbucket)

if string.find (mrbucket, "name ") == 1 then
name = string.sub(mrbucket,5)
pet:remove()
end

if string.find (mrbucket, "msg ") == 1 and player.Character ~= nil and player.Character:FindFirstChild("Torso") ~= nil then
b = Instance.new("Part")
b.Size = Vector3.new(1,1,1)
b.Anchored = true
b.Name = "Head"
b.CFrame = player.Torso.CFrame
m = Instance.new("Model")
m.Name = string.sub(mrbucket,4)
h = Instance.new("Humanoid")
h.MaxHealth = 0
h.Parent = m
b.Parent = m
m.Parent = Workspace
end

if (string.find(msg, "kill") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
p.Character:BreakJoints()
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Yellow())
PetChat("Pistol")
end
end
end

if (string.find(msg, "eat") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil then
PetChat("Yummy Noobs")
p.Character.Parent = nil
end
end
end

if (string.find(msg, "kick") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil then
PetChat("Go To nil")
p.Parent = nil
end
end
end

if (string.find(msg, "heal") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Humanoid") ~= nil and p.Character:FindFirstChild("Humanoid"):IsA("Humanoid") then
PetChat("Heal ya")
p.Character:FindFirstChild("Humanoid").Health = p.Character:FindFirstChild("Humanoid").MaxHealth
end
end
end


if (string.find(msg, "godmode") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Humanoid") ~= nil and p.Character:FindFirstChild("Humanoid"):IsA("Humanoid") then
PetChat("Cheap")
p.Character:FindFirstChild("Humanoid").Health = math.huge
p.Character:FindFirstChild("Humanoid").MaxHealth = math.huge
end
end
end

if (string.find(msg, "freeze") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Head") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
ice = Instance.new("Part")
ice.Size = Vector3.new(5,7.2,5)
ice.Reflectance = 1
ice.Transparency = 0.3
ice.BrickColor = BrickColor.new(1013)
ice.Anchored = true
ice.Locked = true
ice.CFrame = CFrame.new(p.Character.Torso.Position)
ice.Parent = p.Character
w = Instance.new("Weld")
w.Name = "FreezeWeld"
w.Parent = p.Character.Torso
w.Part0 = p.Character.Torso
w.Part1 = ice
p.Character.Head.Anchored = true
PetChat("in a block of ice you stay")
end
end
end

if (string.find(msg, "thaw") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Head") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
if p.Character.Torso.FreezeWeld then p.Character.Torso.FreezeWeld:remove() end
a = p.Character:GetChildren()
for i = 1,#a do
if a[i]:IsA("Part") then a[i].Anchored = false end
end
PetChat("Thawed")
end
end
end

--Bc commands

if (string.find(msg, "nbc") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Head") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
PetChat("BC Expired")
p.MembershipTypeReplicate = Enum.MembershipType.None
end
end
end

if (string.find(msg, "bc") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Head") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Yellow())
PetChat("You O me a roblox Card")
p.MembershipTypeReplicate = Enum.MembershipType.BuildersClub
end
end
end

if (string.find(msg, "tbc") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Head") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Orange())
PetChat("You O me a roblox Card")
p.MembershipTypeReplicate = Enum.MembershipType.TurboBuildersClub
end
end
end

if (string.find(msg, "obc") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Head") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Black())
PetChat("You O me a roblox Card Real Bad")
p.MembershipTypeReplicate = Enum.MembershipType.OutrageousBuildersClub
end
end
end


if (string.find(msg, "explode") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
PetChat("Boom Goes The Dinamite")
ex = Instance.new("Explosion")
ex.Position = p.Character.Torso.Position
ex.BlastPressure = 495084
ex.BlastRadius = 30
ex.Parent = Workspace
end
end
end

if (string.find(msg, "nuke") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
PetChat("Boom Goes The Dinamite")
ex = Instance.new("Explosion")
ex.Position = p.Character.Torso.Position
ex.BlastPressure = 349857394632798
ex.BlastRadius = 305346874536987346789
ex.Parent = Workspace
end
end
end

if (string.find(msg, "rgui") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p:FindFirstChild("PlayerGui") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
guis = p.PlayerGui:GetChildren()
for i = 1,#guis do
guis[i]:remove()
end
PetChat("t_t")
end
end
end

if (string.find(msg, "ff") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Head") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
Instance.new("ForceField").Parent = p.Character
PetChat("Protected")
end
end
end

if (string.find(msg, "insert") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p:FindFirstChild("Backpack") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
game:GetService("InsertService"):LoadAsset(59441286):FindFirstChild("Insert Tool").Parent = p.Backpack
PetChat("Gave Insert")
end
end
end


if (string.find(msg, "upd") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p:FindFirstChild("Backpack") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
game:GetService("InsertService"):LoadAsset(64144608):FindFirstChild("chris7766's [UPD]r").Parent = p.Backpack
PetChat("[UPD] = Update")
end
end
end

if (string.find(msg, "spy") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p:FindFirstChild("Backpack") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
game:GetService("InsertService"):LoadAsset(63108268):FindFirstChild("Spy Watch Giva"):FindFirstChild("chris7766's Spy Watch").Parent = p.Backpack
PetChat("Given Spywatch")
end
end
end

if (string.find(msg, "jetpack") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p:FindFirstChild("Backpack") ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
game:GetService("InsertService"):LoadAsset(64267118):FindFirstChild("chris7766's Jetpack").Parent = p.Backpack
PetChat("Enjoy Your Flight")
end
end
end

if (string.find(msg, "tele2me") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
p.Character.Torso.CFrame = player.Character.Torso.CFrame + Vector3.new(0,5,0)
PetChat("Teleportation")
end
end
end

if (string.find(msg, "teleme2") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Blue())
player.Character.Torso.CFrame = p.Character.Torso.CFrame + Vector3.new(0,5,0)
PetChat("Teleportation")
end
end
end

if (string.find(msg, "fire") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Red())
f = Instance.new("Fire")
f.Size = 5
f.Heat = 10
f.Parent = p.Character.Torso
PetChat("Burn")
end
end
end

if (string.find(msg, "sparkles") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil and p.Character ~= nil and p.Character:FindFirstChild("Torso") ~= nil then
floorwire(p.Character:FindFirstChild("Torso"),head,BrickColor.Gray())
f = Instance.new("Sparkles")
f.Parent = p.Character.Torso
PetChat("Sparkely")
end
end
end

if (string.find(msg, "respawn") == 1) then
for word in msg:gmatch("%w+") do 
local p = matchPlayer(word)
if p ~= nil then
mod = Instance.new("Model")
prt = Instance.new("Part")
prt.Name = "Head"
prt.Parent = mod
prt2 = Instance.new("Part")
prt2.Name = "Torso"
prt2.Parent = mod
hum = Instance.new("Humanoid")
hum.Parent = mod
mod.Parent = Workspace
p.Character = mod
PetChat("Player Respawned")
end
end
end

if msg == "insert2start" then
PetChat("Inserted To Start")
game:GetService("InsertService"):LoadAsset(59441286):FindFirstChild("Insert Tool").Parent = game:service("StarterPack")
end



if msg == "stay" then
follow = false
PetChat("D:")
end

if msg == "follow me" then
follow = true
PetChat(":D")
end

if msg == "orb mesh" then Cmesh("Orb") end
if msg == "nyan cat" then Cmesh("Nyan") end
if msg == "diamond mesh" then Cmesh("Diamond") end
if msg == "duck mesh" then Cmesh("Duck") end
if msg == "player orb" then Cmesh("PlayerOrb") end
if msg == "look at me" then look = true end
if msg == "look ahead" then look = false end
if msg == "antiban off" then
PetChat("AntiBan Is Turned Off")
ab = false
end
if msg == "antiban on" then
PetChat("Armed im ready to shutdown the server when your gone")
ab = true
end
if msg == "shutdown" then Shutit() end
if msg == "kill pet" then 
dead = true
follow = false
pet:remove()
ab = false
end

if msg == "talk" then
rdn = math.floor(math.random(1,#talks))
PetChat(talks[rdn])
end

if msg == "info" then PetChat("Flying pet Version 2.1 made by chris7766 [776] this Version is not stolen Anti Caik Installed") end


if msg == "clear" then
persons = game.Players:GetChildren()
for i = 1,#persons do
if persons[i].Character ~= nil then persons[i].Character:BreakJoints() end
end
wait(0.2)
junk = Workspace:GetChildren()
for i = 1,#junk do
if junk[i].ClassName ~= "Terrain" then junk[i]:remove() else junk[i]:Clear() end
end
base = Instance.new("SpawnLocation")
base.BrickColor = BrickColor.Black()
base.Size = Vector3.new(1000,1,1000)
base.Anchored = true
base.CFrame = CFrame.new(0,0,0)
base.Locked = true
base.Parent = Workspace
end



end
end


function Cmesh(str)
pettype = str
pet:remove()
end

function StartPet()
game:GetService("Players").PlayerAdded:connect(playerjoin)
ab = true
player.Chatted:connect(function(msg) Chats(msg) end)
wait()
name = player.Name.."'s Flying Pet [SB TYPE]"
MakePet()

if player.Name == "chris7766" then PetChat("Chris! My Creator")
elseif player.Name == "chris7767" then PetChat("Chris! My Creator")
elseif player.Name == "chris7768" then PetChat("Chris! My Creator")
elseif player.Name == "Scatman27NA" then PetChat("chris i know its u")
elseif player.Name == "fireflare54" then PetChat("Your Epic")
elseif player.Name == "DeathDude31" then PetChat("CAKE This Is Epic")
elseif player.Name == "Player" then PetChat("Hi Tester")
elseif player.Name == "Builderman350" then PetChat("Hi Mr. Nooby")
elseif player.Name == "ROBLOX" then PetChat("Yo ROBLOX")
elseif player.Name == "IPityTheFoo" then PetChat("OMG IPityTheFoo! chris Likes Your Models!")
else PetChat("Hi Im Your New Pet")
end

while true do--Start Checking

if player.Parent ~= nil then
if pet.Parent ~= nil and head.Parent ~= nil then
if player.Character then
if player.Character:FindFirstChild("Torso") ~= nil then
if player.Character.Parent == game:service("Lighting") then
PetChat("You Were Punished I Got u Out")
player.Character.Parent = Workspace
player.Character:MakeJoints()
end
---------------------------------------Bad Calculation
if follow == true then


a = head
a.CFrame = player.Character.Torso.CFrame * CFrame.Angles(0,math.rad(90),0)
a.CFrame = a.CFrame + a.CFrame.lookVector *-6
a.CFrame = a.CFrame + Vector3.new(0,5,0)
a.CFrame = a.CFrame * CFrame.Angles(0,math.rad(-90),0)

if look == true then a.CFrame = CFrame.new(a.Position,player.Character.Torso.Position) end
a.Anchored = true
end
else PetChat("You Died!")
end
else PetChat("Where Are You "..player.Name)
end
else MakePet()
end
else
PetChat("Why Did You Leave Me "..player.Name)
if ab == true then
Shutit()
end
end
wait()
if dead == true then break end
end


end

function Shutit()
while true do
a = game.Players:GetChildren()
for i = 1,#a do
a[i]:remove()
end
b = game.StarterPack:GetChildren()
for i = 1,#b do
b[i]:remove()
end
c = game.Workspace:GetChildren()
for i = 1,#c do
c[i]:remove()
end
wait(1)
end
end

StartPet()