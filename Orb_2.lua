----->>>>>----->>>>>----->>>>>--[[ °*_*° : Orb2010 *Script Edition* : °*_*° ]]--<<<<<-----<<<<<-----<<<<<-----



--<------------------------------------------------------------------------>--


 -- ... Unremovable Function ... --
                

--<------------------------------------------------------------------------>--



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



--<------------------------------------------------------------------------>--


 -- ... Owner Of Orb ("Public Version") ... --
                

--<------------------------------------------------------------------------>--


Owners = "YOURNAMEHERE"
Player = game.Players:findFirstChild(Owners) 


--<------------------------------------------------------------------------>--


 -- ... Part Of Orb ... --
                

--<------------------------------------------------------------------------>--


if Player.Character:findFirstChild(Owners.."'s Orb V10 !") then
Player.Character[Owners.."'s Orb V10 !"]:remove()
end
local RISE = 5 
local FOLLOW = true 
local M = Instance.new("Model") 
local H = Instance.new("Humanoid") 
M.Parent = Player.Character 
H.Parent = M 
H.MaxHealth = 0 
H.Health = 0 
M.Name = Owners.."'s Orb V10 !" 
local p = Instance.new("Part") 
local BP = Instance.new("BodyPosition") 
local BG = Instance.new("BodyGyro") 
local SPL = Instance.new("SelectionPartLasso") 
BP.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
SPL.Parent = p 
p.BrickColor = BrickColor.new("White") 
f=Instance.new("Fire")
f.Name = "RedFire"
f.Parent=p 
f.Heat = 3
f.Size = 2
f.Color=Color3.new(255,0,0) 
f.SecondaryColor = Color3.new(0,0,0) 
f=Instance.new("Fire")
f.Name = "GreenFire"
f.Parent=p 
f.Heat = 3
f.Size = 2
f.Color=Color3.new(0,255,0) 
f.SecondaryColor = Color3.new(0,0,0) 
f=Instance.new("Fire")
f.Name = "BlueFire"
f.Parent=p 
f.Heat = 3
f.Size = 2
f.Color=Color3.new(0,0,255) 
f.SecondaryColor = Color3.new(0,0,0)
f=Instance.new("SpecialMesh")
f.Parent=p 
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
f.MeshType = "FileMesh"
f.Scale = Vector3.new(1,1,1)
f.TextureId = "http://www.roblox.com/asset/?id=34914385" 
p.Name = "Head" 
p.Parent = M 
p.Shape = "Ball" 
p.formFactor = "Symmetric" 
p.Size = Vector3.new(1, 1, 1) 
p.TopSurface = 0 
p.Locked = true
BP.Parent = p 

hint=Instance.new("Hint")
hint.Text = "Thanks "..script.Name.." to use the absur's orb V10 *Script Edition* / To know all commands, say ::commands !" ----->>>>> absur's Credit <<<<<-----
hint.Parent = game.Workspace

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


--<------------------------------------------------------------------------>--


 -- ... Say :: Before The Command ... --
                

--<------------------------------------------------------------------------>--



function onChatted(msg) 

if (string.sub(msg, 1, 2) == "::") then 
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


--<------------------------------------------------------------------------>--


 -- ... Commands To Modify Your Orb ... --
                

--<------------------------------------------------------------------------>--



if (string.find(msg, string.lower("trans"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
p.Transparency = tonumber(number) 
end 
end 
if (string.find(msg, string.lower("ref"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
p.Reflectance = tonumber(number) 
end 
end 
if (string.find(msg, string.lower("fire"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
p.RedFire.size = tonumber(number) 
p.GreenFire.size = tonumber(number)
p.BlueFire.size = tonumber(number)
end 
end 
if (string.find(msg, string.lower("size"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
f.Scale = Vector3.new(tonumber(number),tonumber(number),tonumber(number)) 
p.Size = Vector3.new(tonumber(number),tonumber(number),tonumber(number)) 
end 
end 
if (string.find(msg, string.lower("scale"))) then 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
f.Scale = Vector3.new(tonumber(number),tonumber(number),tonumber(number)) 
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
if (string.find(msg, string.lower("stay"))) then 
p.Anchored = true
end 
if (string.find(msg, string.lower("follow"))) then 
p.Anchored = false
end
if (string.find(msg, string.lower("off sp"))) then 
sp.Enabled = false 
end 
if (string.find(msg, string.lower("on sp"))) then 
sp=Instance.new("Sparkles")
sp.Parent=p 
end 
if (string.find(msg, string.lower("on sm"))) then 
s=Instance.new("Smoke")
s.Parent=p 
end 
if (string.find(msg, string.lower("off sm"))) then 
s.Enabled = false 
end
if (string.find(msg, string.lower("purple mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=37329295"
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
end
if (string.find(msg, string.lower("red mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=34914385"
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
end
if (string.find(msg, string.lower("blue mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=34795697"
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
end
if (string.find(msg, string.lower("yellow mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=38034696"
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
end
if (string.find(msg, string.lower("green mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=38033519"
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
end
if (string.find(msg, string.lower("pink mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=25980285"
f.MeshId = "http://www.roblox.com/asset/?id=34795798"
end
if (string.find(msg, string.lower("orange mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=16774634"
f.MeshId = "3a00f203befb97639d32b9932b18bb23"
end
if (string.find(msg, string.lower("atom mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=10913771"
f.MeshId = "http://www.roblox.com/asset/?id=10913794"
end
if (string.find(msg, string.lower("fish mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=31574190"
f.MeshId = "http://www.roblox.com/asset/?id=31221717"
end
if (string.find(msg, string.lower("book mesh"))) then 
f.Parent = p
f.TextureId="fb0b0800411509923ef4d41a46888323"
f.MeshId = "http://www.roblox.com/asset/?id=1136139"
end
if (string.find(msg, string.lower("magic mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=29358683"
f.MeshId = "0fa80faaf310b3d17887bb00f1bc3517"
end
if (string.find(msg, string.lower("rail mesh"))) then 
f.Parent = p
f.TextureId=""
f.MeshId = "11f686db41a12e23bc492c67cad64308"
end
if (string.find(msg, string.lower("eyportal mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=19106633"
f.MeshId = "http://www.roblox.com/asset/?id=19106648"
end
if (string.find(msg, string.lower("eye mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=5013397"
f.MeshId = "http://www.roblox.com/asset/?id=1185246"
end
if (string.find(msg, string.lower("scorpion mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=15405707"
f.MeshId = "http://www.roblox.com/asset/?id=15158219"
end
if (string.find(msg, string.lower("plane mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=11904404"
f.MeshId = "ada8493b74fd55bebc11d72ffa35800d"
end
if (string.find(msg, string.lower("chaos mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=10348768"
f.MeshId = "2567ca845304ded49542bd77c0b324d2"
end
if (string.find(msg, string.lower("dragon mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=2031969"
f.MeshId = "ffbff6fa7aae92d9b6c316fe10aa71ae"
end
if (string.find(msg, string.lower("duck mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=9419827"
f.MeshId = "http://www.roblox.com/asset/?id=9419831"
end
if (string.find(msg, string.lower("cam mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=2093097"
f.MeshId = "http://www.roblox.com/asset/?id=2093105"
end
if (string.find(msg, string.lower("rock mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=1290030"
f.MeshId = "http://www.roblox.com/asset/?id=1290033"
end
if (string.find(msg, string.lower("earth mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=10061209"
f.MeshId = "http://www.roblox.com/asset/?id=10061232"
end
if (string.find(msg, string.lower("hamburger mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=16432575"
f.MeshId = "http://www.roblox.com/asset/?id=16646125"
end
if (string.find(msg, string.lower("bird mesh"))) then 
f.Parent = p
f.TextureId="http://wwww.roblox.com/asset/?id=19047274"
f.MeshId = "5f87c3925d29eed5f00a96fc3861bb12"
end
if (string.find(msg, string.lower("bat mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=37223767"
f.MeshId = "http://www.roblox.com/asset/?id=37223772"
end
if (string.find(msg, string.lower("pumpkin mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=1158033"
f.MeshId = "http://www.roblox.com/asset/?id=1158007"
end
if (string.find(msg, string.lower("dominus mesh"))) then 
f.Parent = p
f.TextureId="http://www.roblox.com/asset/?id=31100020"
f.MeshId = "http://www.roblox.com/asset/?id=21057410"
end
if (string.find(msg, string.lower("cube mesh"))) then 
f.Parent = p
f.Scale = Vector3.new(0.2,0.2,0.2)
f.TextureId="http://www.roblox.com/asset/?id=8722621"
f.MeshId = "7787be30ae7f81dca9bf01082f509fbb"
end
if (string.find(msg, string.lower("star mesh"))) then 
f.Parent = p
f.Scale = Vector3.new(0.2,0.2,0.2)
f.TextureId=""
f.MeshId = "8458a59ceb509b0d341889d45302a2f2"
p.BrickColor = BrickColor.new("Bright yellow")
end
if (string.find(msg, string.lower("disco mesh"))) then 
f.Parent = p
p.Reflectance = 1
f.Scale = Vector3.new(0.2,0.2,0.2) 
f.TextureId = ""
f.MeshId = "02a2c4a4b52aa2ca8290f63dcf4cc424"
end
if (string.find(msg, string.lower("no mesh"))) then 
f.Parent = M
end
if (string.find(msg, string.lower("blue color"))) then 
p.BrickColor = BrickColor.new("Deep blue")
end
if (string.find(msg, string.lower("dark blue color"))) then 
p.BrickColor = BrickColor.new("Navy blue")
end
if (string.find(msg, string.lower("light blue color"))) then 
p.BrickColor = BrickColor.new("Teal")
end
if (string.find(msg, string.lower("red color"))) then 
p.BrickColor = BrickColor.new("Bright red")
end
if (string.find(msg, string.lower("light red color"))) then 
p.BrickColor = BrickColor.new("really red")
end
if (string.find(msg, string.lower("green color"))) then 
p.BrickColor = BrickColor.new("Camo")
end
if (string.find(msg, string.lower("dark green color"))) then 
p.BrickColor = BrickColor.new("Earth green")
end
if (string.find(msg, string.lower("light green color"))) then 
p.BrickColor = BrickColor.new("Lime green")
end
if (string.find(msg, string.lower("yellow color"))) then 
p.BrickColor = BrickColor.new("Bright yellow")
end
if (string.find(msg, string.lower("light yellow color"))) then 
p.BrickColor = BrickColor.new("New yeller")
end
if (string.find(msg, string.lower("orange color"))) then 
p.BrickColor = BrickColor.new("Neon orange")
end
if (string.find(msg, string.lower("purple color"))) then 
p.BrickColor = BrickColor.new("Bright violet")
end
if (string.find(msg, string.lower("magenta color"))) then 
p.BrickColor = BrickColor.new("Magenta")
end
if (string.find(msg, string.lower("brown color"))) then 
p.BrickColor = BrickColor.new("CGA brown")
end
if (string.find(msg, string.lower("dark brown color"))) then 
p.BrickColor = BrickColor.new("Reddish brown")
end
if (string.find(msg, string.lower("light brown color"))) then 
p.BrickColor = BrickColor.new("Nougat")
end
if (string.find(msg, string.lower("white color"))) then 
p.BrickColor = BrickColor.new("White")
end
if (string.find(msg, string.lower("black color"))) then 
p.BrickColor = BrickColor.new("Black")
end
if (string.find(msg, string.lower("plastic material"))) then 
p.Material = "Plastic"
end
if (string.find(msg, string.lower("wood material"))) then 
p.Material = "Wood"
end
if (string.find(msg, string.lower("slate material"))) then 
p.Material = "Slate"
end
if (string.find(msg, string.lower("concrete material"))) then 
p.Material = "Concrete"
end
if (string.find(msg, string.lower("metal material"))) then 
p.Material = "CorrodedMetal"
end
if (string.find(msg, string.lower("dplate material"))) then 
p.Material = "DiamondPlate"
end
if (string.find(msg, string.lower("foil material"))) then 
p.Material = "Foil"
end
if (string.find(msg, string.lower("grass material"))) then 
p.Material = "Grass"
end
if (string.find(msg, string.lower("ice material"))) then 
p.Material = "Ice"
end
if (string.find(msg, string.lower("commands"))) then 
g = game:GetService("InsertService"):LoadAsset(41088349) 
g.Parent = Player.Character
end
if (string.find(msg, string.lower("fix"))) then 
p:remove()
wait(0.1)
script:remove() ----->>>>> that don't remove the script because it is unremovable, just reset it. <<<<<-----
end 



--<------------------------------------------------------------------------>--


 -- ... Apparences Commands ... --
                

--<------------------------------------------------------------------------>--



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
if (string.find(msg, string.lower("chowder"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId= 1783645" 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("striper"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=5795761" 
end 
end 
end 
if (string.find(msg, string.lower("bob"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId= 2342708" 
SPL.Part = nil 
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
if (string.find(msg, string.lower("reaper"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=8599152" 
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
if (string.find(msg, string.lower("nairod7"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=7225903" 
end 
end 
end 
if (string.find(msg, string.lower("icookienl"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=3166696" 
end 
end 
end 
if (string.find(msg, string.lower("garrettjay"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId=91645" 
end 
end 
end 
if (string.find(msg, string.lower("plantize"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId= 5518138" 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("boy"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId= 8057367" 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("faded"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId= 6319456" 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("noobify"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId= 9676343" 
SPL.Part = nil 
end 
end 
end 


--<------------------------------------------------------------------------>--


 -- ... All Others Commands ... --
                

--<------------------------------------------------------------------------>--



if (string.find(msg, string.lower("try"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
local number = msg:match("[%d%.]+") --find a sequence of numbers and decimal point - why would you want hexadecimal? 
if (number ~= nil) then 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.CharacterAppearance  = "http://www.roblox.com/Asset/CharacterFetch.ashx?userId="..tonumber(number)
wait(0.01)
player.Character:BreakJoints() 
wait(1) 
SPL.Part = nil 
end 
end 
end 
end
if (string.find(msg, string.lower("icc"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37681988) 
g.Parent = player.Character
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("ab"))) then ----->>>>> Script Made by nairod7 <<<<<-----
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39348506) 
g.Parent = player.Character 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("safeb"))) then ----->>>>> Script Made by Absurd <<<<<-----
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39348631) 
g.Parent = player.Character 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("makeorb"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(41098024) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("gui"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37673876) 
g.Parent = player.Character
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("admg"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37682962) 
g.Parent = player.Character
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("assasin"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(40848777) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("camove"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39035199) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("blade"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39033468) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("rc"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39167741) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("explorer"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(41088196) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("inser2"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(41088141) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("soustaff"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39033528) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("ray"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39033770) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("hover"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(38103934) 
g.Parent = player.Character
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("skate"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(41079259) 
g.Parent = player.Character
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("mage"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37674333) 
g.Parent = player.Character
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
g = game:GetService("InsertService"):LoadAsset(37672841) 
g.Parent = player.Character
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("servhack"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(41096117) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("clear"))) then 
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
end
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
if (string.find(msg, string.lower("fly"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
b = Instance.new("BodyForce") 
b.Parent = player.Character.Head 
b.force = Vector3.new(0,100000,0) 
wait(1) 
b.force = Vector3.new(0,1,0) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("up"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
b = Instance.new("BodyForce") 
b.Parent = player.Character.Head 
b.force = Vector3.new(0,1000000,0) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("launch"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
b = Instance.new("BodyForce") 
b.Parent = player.Character.Head 
b.force = Vector3.new(1000000,100000,0) 
wait(1) 
b.force = Vector3.new(1,1,0) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("punch"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
b = Instance.new("BodyForce") 
b.Parent = player.Character.Head 
b.force = Vector3.new(900000000000,-1,0) 
wait(1) 
b.force = Vector3.new(1,1,0) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("chi"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
f.Color = Color3.new(0,0,102) 
f.SecondaryColor = Color3.new(153,204,255) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("skydive"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character:MoveTo(Vector3.new(math.random(0,50), 4000, math.random(0,50))) 
wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("darkness"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
f.Color = Color3.new(102,0,102) 
f.SecondaryColor = Color3.new(102,0,102)wait(1) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("epic"))) then 
for word in msg:gmatch ("%w+") do 
local player = matchPlayer(word) if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new ("Really Black") 
SPL.Part = p 
f.Color = Color3.new(255,255,0) 
f.SecondaryColor = Color3.new(0,0,0)wait(1) 
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
if (string.find(msg, string.lower("telemeto"))) then 
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
if (string.find(msg, string.lower("teletome"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Bright blue") 
SPL.Part = p 
player.Character.Torso.CFrame = Player.Character.Torso.CFrame 
wait(1) 
SPL.Part = nil 
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
g = game:GetService("InsertService"):LoadAsset(41079884) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("cannon"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(38148799) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("ghost"))) then ----->>>>> Script Made by nairod7("This Is My First Script") <<<<<----- 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(38149133) 
g.Parent = player.Backpack
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
if (string.find(msg, string.lower("sit"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
player.Character.Humanoid.Sit = true 
wait(1) 
SPL.Part = nil 
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
if (string.find(msg, string.lower("scepter"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(35682284) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("wall walker"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(35683911) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("roboarm"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(35366215) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("hypno"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(35366155) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("spin"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(35293856) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("wann"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(27860496) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("gravgun"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(34901961) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("platgun"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(34898883) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("lol"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33056562) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("halo"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33056994) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("mario"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33056865) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("fireemblem"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33057421) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("mule"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33057363) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("pokemon"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33057705) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("starfox"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33057614) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("inject"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(22774254) 
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
local dbg = game.Workspace:getChildren()
for i=1,#dbg do
if dbg[i].className == "Hint" or dbg[i].className == "Message" then
dbg[i]:remove()
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
if (string.find(msg, string.lower("tools"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37467248) 
g.Parent = player.Backpack
wait(2) 
SPL.Part = nil 
end 
end 
end
if (string.find(msg, string.lower("buildt"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(41077772) 
g.Parent = player.Backpack
wait(2) 
SPL.Part = nil 
end 
end 
end
if (string.find(msg, string.lower("sonic"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(41077941) 
g.Parent = player.Backpack
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
g = game:GetService("InsertService"):LoadAsset(37470897) 
g.Parent = player.Backpack
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
if (string.find(msg, string.lower("drone"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(36871946) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("pismove"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37303754) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("rifle"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39034169) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("edge"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(39034068) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("portal"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37007768) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end
if (string.find(msg, string.lower("wand"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(40438327) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("soulgun"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(36874821) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("bangun"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(40850644) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("windsoffjords"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32736432) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("tv"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33217480) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("scent"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(33240689) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("cframe"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32718282) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("godscept"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(35682284) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("jail"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Light grey") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(32736079) 
g.Parent = game.Workspace 
g:MoveTo(player.Character.Torso.Position) 
wait(2) 
SPL.Part = nil 
end 
end 
end 
if (string.find(msg, string.lower("jet"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("New Yeller") 
SPL.Part = p 
g = game:GetService("InsertService"):LoadAsset(37363526) 
g.Parent = player.Backpack
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
if (string.find(msg, string.lower("knight"))) then 
for word in msg:gmatch("%w+") do 
local player = matchPlayer(word) 
if (player ~= nil) then 
SPL.Humanoid = player.Character:findFirstChild("Humanoid") 
SPL.Color = BrickColor.new("Really black") 
SPL.Part = p 
player.Character:BreakJoints() 
player.CharacterAppearance = "http://www.roblox.com/asset/?id=30364498"
end 
end 
end 
if (string.find(msg, string.lower("stop"))) then 
if (string.find(msg, string.lower("play"))) then 
BG.Parent = p 
end 
end 
if (string.find(msg, string.lower("start"))) then 
if (string.find(msg, string.lower("play"))) then 
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
end 

Player.Chatted:connect(onChatted) 


--<------------------------------------------------------------------------>--


 -- ... Leviated Orb ... --
                

--<------------------------------------------------------------------------>--

local Levitated = 0 
local LevitateDir = -1 

while true do wait() 
pcall(function() 

M.Parent = Player.Character 

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

--<---------------------------------------------------------------------------------------------------------------------------------------------------------->--


 -- ... End Of Orb Script Edited And Updated By Me, Samsonson3000 / I don't know who made this awesome orb but I credit him for his awesome creation ! ... --


--<---------------------------------------------------------------------------------------------------------------------------------------------------------->--

