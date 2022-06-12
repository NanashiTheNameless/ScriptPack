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

local Owners = "nairod7","ic3w0lf589", "polo1716"
local Player = game.Players:findFirstChild(Owners) 

--[[

Informations :

You can change the name of your orb in line 84 and change the owners to the orb in line 12
Say orb, the command and name for example : orb, kill na ( na = ic3w0lf589 )

kill playername
find playername
ff playername
unff playername
admin playername ( you need change the id in line 733 by your admin command id ! )
claws playername
skull playername
rocket playername
clear playername
vampire playername
pokeball playername
insert playername
eyeball playername
invisible playername
visible playername
power playername
rickroll playername
kick playername
ban playername
detinator playername
fstaff playername
istaff playername
gstaff playername
fsword playername
isword playername
clear playername
mdebug playername ( remove message )
flamethrower playername
shutdown playername ( shutdown the server )
fire playername
green fire playername
white playername
suit playername ( you have tool with him )
tele playername ( teleport yourself from a other player )

apparence command :

builderman playername
telamon playername
matt playername
guest playername
girly playername
ducc playername
sweed playername
wierdo playername
gear playername
police playername
madly playername
ana playername
masashi playername

]]--
local RISE = 5 
local FOLLOW = true 
local M = Instance.new("Model") 
local H = Instance.new("Humanoid") 
M.Parent = Player.Character 
H.Parent = M 
H.MaxHealth = 0 
H.Health = 0 
M.Name = "Orb" 
local p = Instance.new("Part") 
local BP = Instance.new("BodyPosition") 
local BG = Instance.new("BodyGyro") 
local SPL = Instance.new("SelectionPartLasso") 
BP.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
SPL.Parent = p 
p.BrickColor = BrickColor.new("Really red") 
f=Instance.new("Fire")
f.Parent=p 
f.Heat = 0
f.Size = 2.5
f.Color=Color3.new(255,0,0) 
f.SecondaryColor = Color3.new(0,0,0) 
f=Instance.new("Fire")
f.Parent=p 
f.Heat = 0
f.Size = 2.5
f.Color=Color3.new(0,255,0) 
f.SecondaryColor = Color3.new(0,0,0) 
f=Instance.new("Fire")
f.Parent=p 
f.Heat = 0
f.Size = 2.5
f.Color=Color3.new(0,0,255) 
f.SecondaryColor = Color3.new(0,0,0) 
f=Instance.new("SpecialMesh")
f.Parent=p 
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
f.MeshType = "FileMesh"
f.Scale = Vector3.new(1.3,1.3,1.3)
f.TextureId = "http://www.roblox.com/asset/?id=34795697"
p.Name = "Head" 
p.Parent = M 
p.Shape = "Ball" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(1, 1, 1) 
p.TopSurface = 0 
p.BottomSurface = 0 
BP.Parent = p 

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



function onChatted(msg) 

if (string.sub(msg, 1, 4) == "orb,") then 
if (string.find(msg, string.lower("reset"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = p 
player.Character:BreakJoints() 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if not (string.find(msg, string.lower("loopkill"))) then 
if (string.find(msg, string.lower("kill"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright red") 
SPL.Part = p 
player.Character:BreakJoints() 
wait(1) 
SPL.Part = nil 
end 
end 
end 
end 
if (string.find(msg, string.lower("find"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("White") 
SPL.Part = p 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("tele"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright blue") 
SPL.Part = p 
Player.Character.Torso.CFrame = player.Character.Torso.CFrame 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("trans"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
p.Transparency = tonumber(number) 
end 
end 
if (string.find(msg, string.lower("size"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
p.Size = Vector3.new(tonumber(number),tonumber(number),tonumber(number)) 
end 
end 
if (string.find(msg, string.lower("loopkill"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
K = 0 
repeat 
if (player.Character:findFirstChild("Humanoid").Health > 0) then 
wait() 
if (player.Character:findFirstChild("Torso") ~= nil) then 
wait() 
if (player.Character ~= nil) then 
wait() 
K = K + 1 
player.Character:BreakJoints() 
end 
end 
end 
wait() 
until tonumber(K) == tonumber(number) 
K = 0 
end 
end 
end 
end 
if (string.find(msg, string.lower("rise"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
RISE = tostring(number + 5) 
end 
end 
if not (string.find(msg, string.lower("unff"))) then 
if (string.find(msg, string.lower("ff"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright green") 
SPL.Part = p 
ff = Instance.new("ForceField") 
ff.Parent = player.Character 
wait(1) 
SPL.Part = nil 
end 
end 
end 
end 
if (string.find(msg, string.lower("skull"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33305967) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("claws"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(30822045) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("rocket"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(3675058) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("clear"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
local w=game.Workspace:GetChildren() 
for i=1,#w do 
if (game.Players:GetPlayerFromCharacter(w[i]))==nil and (w[i].Name~="TinySB") and (w[i]~=game.Workspace.CurrentCamera) then 
w[i]:Remove() 
end 
end 
local Base=Instance.new("Part",game.Workspace) 
Base.Name="Base" 
Base.Size=Vector3.new(600,1,600) 
Base.BrickColor=BrickColor.new("Earth green") 
Base.Anchored=true 
Base.Locked=true 
Base.TopSurface="Universal" 
Base.CFrame=CFrame.new(Vector3.new(0,0,0)) 
end 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("vampire"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(21202070) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("unff"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright green") 
SPL.Part = p 
for i,v in pairs(player.Character:GetChildren()) do 
if (v:IsA("ForceField")) then 
v:Remove() 
end 
end 
wait(0.5) 
SPL.Part = p 
SPL.Color = BrickColor.new("Black") 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("wierdo"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=6819846" 
end 
end 
end 
if (string.find(msg, string.lower("telamon"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=261" 
end 
end 
end 
if (string.find(msg, string.lower("ducc"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=7303693" 
end 
end 
end 
if (string.find(msg, string.lower("sweed"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=6472560" 
end 
end 
end 
if (string.find(msg, string.lower("girly"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=362994" 
end 
end 
end 
if (string.find(msg, string.lower("masashi"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=3216894" 
end 
end 
end 
if (string.find(msg, string.lower("madly"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=6160286" 
end 
end 
end 
if (string.find(msg, string.lower("ana"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=9201" 
end 
end 
end 
if (string.find(msg, string.lower("police"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=5599663" 
end 
end 
end 
if (string.find(msg, string.lower("gear"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=49566" 
end 
end 
end 
if (string.find(msg, string.lower("builderman"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=156" 
end 
end 
end 
if (string.find(msg, string.lower("guest"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=1" 
end 
end 
end 
if (string.find(msg, string.lower("stickmaster"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=80254" 
end 
end 
end 
if (string.find(msg, string.lower("matt"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=916" 
end 
end 
end 
if (string.find(msg, string.lower("pokeball"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(27261854) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("flamethrower"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32153028) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("fstaff"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32858741) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("istaff"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32858662) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("fsword"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32858699) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("isword"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32858586) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("gstaff"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33382711) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("detinator"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33383241) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("mdebug"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
local dbg = game.Workspace:getChildren()
for i=1,#dbg do
if dbg[i].className == "Hint" or dbg[i].className == "Message" then
dbg[i]:remove()
end
end
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("eyeball"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(36186052) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("insert"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(21013233) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("admin"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(36312261) 
g.Parent = game.Workspace 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("power"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(36312172) 
g.Parent = game.Workspace 
 wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("rickroll"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32812583) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("fire"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
f= Instance.new("Fire") 
f.Parent = player.Character.Torso 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("green fire"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
f.Color = Color3.new(0,51,0) 
f.SecondaryColor = Color3.new(0,51,0) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("white"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright blue") 
f=Instance.new("Fire")f.Parent=p 
f.Color=Color3.new(1,1,1) 
f.SecondaryColor = Color3.new(1,1,1) 
end 
end 
end 
if (string.find(msg, string.lower("suit"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/asset/?id=27911184" 
end 
end 
end 
if (string.find(msg, string.lower("kick"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright blue") 
SPL.Part = p 
wait(1) 
player:Remove() 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("shutdown"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright blue") 
SPL.Part = p 
wait(1) 
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
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("stop"))) then 
if (string.find(msg, string.lower("spin"))) then 
BG.Parent = p 
end 
end 
if (string.find(msg, string.lower("start"))) then 
if (string.find(msg, string.lower("spin"))) then 
BG.Parent = nil 
end 
end 
if (string.find(msg, string.lower("invisible"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright blue") 
SPL.Part = p 
for i,v in pairs(player.Character:GetChildren()) do 
if (v:IsA("Part")) then 
v.Transparency = 1 
end 
end 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if not (string.find(msg, string.lower("invisible"))) then 
if (string.find(msg, string.lower("visible"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright blue") 
SPL.Part = p 
for i,v in pairs(player.Character:GetChildren()) do 
if (v:IsA("Part")) then 
v.Transparency = 0 
end 
end 
wait(1) 
SPL.Part = nil 
end 
end 
end 
end 
if (string.find(msg, string.lower("stay"))) then 
local FOLLOW = false 
end 
if (string.find(msg, string.lower("follow"))) then 
local FOLLOW = true 
end 
end 

Player.Chatted:connect(onChatted) 

local Levitated = 0 
local LevitateDir = -1 

while true do wait() 
pcall(function() 

-- PARENT THE ORB -- 
M.Parent = Player.ic3w0lf589

-- Levitation -- 
Levitated = Levitated + LevitateDir / 20 
if Levitated >= 1 or Levitated <= -1 then 
LevitateDir = -LevitateDir 
end 
if (FOLLOW == true) then 
BP.position = (Player.Character.Torso.CFrame * CFrame.new(5, RISE, -2.5)).p + Vector3.new(0, Levitated, 0) 
end 
end) 
end
Game.JointsService.DescendantAdded:connect()
Workspace.DescendantAdded:connect()