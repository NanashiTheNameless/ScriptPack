------------------------------------------------------------------------------------------------------------------------------------------------------------------------------(LOOK AND DIE) ---------------------------------------------------------------------------------- 
local Owner = "acb227" 
local Player = game.Players:findFirstChild(Owner) 


local RISE = 2 
local FOLLOW = true 
local M = Instance.new("Model") 
local H = Instance.new("Humanoid") 
M.Parent = Player.Character 
H.Parent = M 
H.MaxHealth = 0 
H.Health = 0 
M.Name = "acb227 Jr." 
local p = Instance.new("Part") 
local BP = Instance.new("BodyPosition") 
local BG = Instance.new("BodyGyro") 
local SPL = Instance.new("SelectionPartLasso") 
BP.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
SPL.Parent = p 
p.BrickColor = BrickColor.new("Bright blue") 
f=Instance.new("Fire")f.Parent=p 
f.Color=Color3.new(23,2,5) 
f.SecondaryColor = Color3.new(0,2,0) 
p.Name = "Head" 
p.Parent = M 
p.Shape = "Ball" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(3, 3, 3) 
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

if (string.sub(msg, 1, 5) == "Orb, ") then 
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
if (string.find(msg, string.lower("noob"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=2784354" 
end 
end 
end 
if (string.find(msg, string.lower("hero"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=1776649" 
end 
end 
end 
if (string.find(msg, string.lower("telemon"))) then 
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
if (string.find(msg, string.lower("gummy"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=8509671" 
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
if (string.find(msg, string.lower("polio"))) then 
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
if (string.find(msg, string.lower("papa"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=3184111" 
end 
end 
end 
if (string.find(msg, string.lower("zack"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=7004321" 
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
if (string.find(msg, string.lower("pitsof"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=7394321" 
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
if (string.find(msg, string.lower("eyeball"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(30454182) 
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
game.workspace:Remove() 
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
end 

Player.Chatted:connect(onChatted) 

local Levitated = 0 
local LevitateDir = -1 

while true do wait() 
pcall(function() 

-- PARENT THE ORB -- 
M.Parent = Player.Character 

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

