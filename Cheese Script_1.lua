local name = "Cheese" 
local master = "yfc"
local admins = {"yfc", ""} 
local master2 = game.Players:findFirstChild(master)
 
if master2 ~= nil then
 
script.Name = master.."'s Cheese"
 
local model = Instance.new("Model", Workspace)
model.Name = name
 
local hum = Instance.new("Humanoid", model)
hum.MaxHealth = 0
 
local Part = Instance.new("Part", model)
Part.Name = "Head"
Part.TopSurface = "Smooth"
Part.BottomSurface = "Smooth"
Part.Anchored = false
Part.Locked = true
Part.formFactor = "Custom"
Part.BrickColor = BrickColor.new("Bright yellow")
Part.Size = Vector3.new(3, 3, 3)
 
local bp = Instance.new("BodyPosition", Part)
bp.maxForce = Vector3.new(math.huge, math.huge, math.huge)
 
local mesh = Instance.new("SpecialMesh", Part)
mesh.Scale = Vector3.new(2,2,2)
mesh.MeshId = "http://www.roblox.com/asset/?id=1090700"
 
local fire = Instance.new("Fire", Part)
fire.Size = 5
fire.Heat = 2
 
local sparks = Instance.new("Sparkles", Part)
 
function PartChatG(Message)
game:GetService("Chat"):Chat(Part,Message,Enum.ChatColor.Green)
end 
 
function PartChatB(Message)
game:GetService("Chat"):Chat(Part,Message,Enum.ChatColor.Blue)
end 
 
function PartChatR(Message)
game:GetService("Chat"):Chat(Part,Message,Enum.ChatColor.Red)
end 
 
function attack(person)
while true do 
wait()
bp.position = person.Character.Torso.Position
end
end
 
function follow(person)
while true do 
wait()
bp.position = person.Character.Torso.Position + Vector3.new(0,5,2)
end
end
 
 
PartChatG("Loaded "..master.."'s "..name.." ")
 
function findp(name) 
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if string.lower(string.sub(v.Name,1,#name))==string.lower(name) then
return v 
end 
end 
end 
function onChatted(msg, speaker)
for i,v in pairs(admins) do
if speaker.Name == v then
 
if string.sub(string.lower(msg), 1, 4) == "test" then
PartChatG("Test Done. I am working fine.")
 
elseif string.sub(string.lower(msg), 1, 13) == "make it night" then
PartChatG("Now It's Night")
game.Lighting.TimeOfDay = "00:00:00"
 
elseif string.sub(string.lower(msg), 1, 11) == "make it day" then
PartChatG("Now It's Day")
game.Lighting.TimeOfDay = "14:00:00"
 
elseif string.sub(string.lower(msg), 1, 13) == "make it foggy" then
PartChatG("I Can Hardly See "..speaker.Name.."!")
game.Lighting.FogEnd = "40"
 
elseif string.sub(string.lower(msg), 1, 14) == "make it no fog" then
PartChatG("I Can See!")
game.Lighting.FogEnd = "10000"
 
elseif string.sub(string.lower(msg), 1, 6) == "cheese" then
PartChatG("Did "..speaker.Name.." Say My Name?")
 
elseif string.sub(string.lower(msg), 1, 7) == "create/" then
PartChatG("Created Script")
 
elseif string.sub(string.lower(msg), 1, 5) == "edit/" then
PartChatG("Editing Script")
 
elseif string.sub(string.lower(msg), 1, 5) == "exit/" then
PartChatR("Exiting Script")
 
elseif string.sub(string.lower(msg), 1, 4) == "run/" then
PartChatR("Running Script")
 
elseif string.sub(string.lower(msg), 1, 11) == "what is pi?" then
PartChatB("Pi = "..math.pi)
 
elseif string.sub(string.lower(msg), 1, 18) == "what is your name?" then
PartChatG("My Name Is: "..name)
 
elseif string.sub(string.lower(msg), 1, 3) == "die" then
PartChatR("Shutting Down "..name.."...")
script.Disabled = true
 
elseif string.sub(string.lower(msg), 1, 3) == "lol" then
PartChatG("Did "..speaker.Name.." Just Lol!")
 
elseif string.sub(string.lower(msg), 1, 4) == "info" then
PartChatB(name.." Awesome cheese is awesome")
wait(5)
PartChatB(name.." Is still A Fun Tool To Play With.")
 
elseif string.sub(string.lower(msg), 1, 2) == ":d" then
PartChatG(":D")
 
elseif string.sub(string.lower(msg), 1, 2) == "d:" then
PartChatG("D:")
 
elseif string.sub(string.lower(msg), 1, 3) == "..." then
PartChatG("...")
 
elseif string.sub(string.lower(msg), 1, 12) == "how are you?" then
PartChatG("I'm Doing Fine "..speaker.Name)
 
elseif string.sub(string.lower(msg), 1, 14) == "what is my id?" then
PartChatG("Your ID is: "..speaker.userId)
 
elseif string.sub(string.lower(msg), 1, 9) == "come here" then
PartChatG("Comming "..speaker.Name)
 
elseif string.sub(string.lower(msg), 1, 49) == "what is the id of the person who made this place?" then
PartChatG(game.CreatorId)
 
elseif string.sub(string.lower(msg), 1, 29) == "what is the id of this place?" then
PartChatG(game.PlaceId)
 
elseif string.sub(string.lower(msg), 1, 15) == "make cheese cam" then
PartChatG("Cheese Camed")
if game.Workspace.Camera ~= nil then
game.Workspace.Camera.CameraSubject = Part
elseif game.Workspace.Instance ~= nil then -- Usally Camera. But Sometimes Instace
game.Workspace.Instance.CameraSubject = Part
end
 
elseif string.sub(string.lower(msg), 1, 13) == "un-cheese cam" then
PartChatR("Awww...")
if game.Workspace.Camera ~= nil then
game.Workspace.Camera.CameraSubject = speaker.Character.Humanoid
elseif game.Workspace.Instance ~= nil then -- Usally Camera. But Sometimes Instace
game.Workspace.Instance.CameraSubject = speaker.Character.Humanoid
end
 
elseif string.sub(string.lower(msg), 1, 15) == "what is my age?" then
PartChatB(speaker.Name.."'s Age Is: "..speaker.AccountAge.." Days Old")
 
elseif string.sub(string.lower(msg), 1, 19) == "do you like cheese?" then
PartChatG("Derh. I LOVE Cheese")
 
elseif string.sub(string.lower(msg), 1, 21) == "who is yfc?" then
PartChatB("The Best Person EVER! He Made Me!")
 
elseif string.sub(string.lower(msg), 1, 6) == "check " then
local p = findp(string.sub(string.lower(msg), 7))
if p ~= nil then
PartChatR(p.Name.." Is Here")
end 
 
elseif string.sub(string.lower(msg), 1, 5) == "kill " then
local p = findp(string.sub(string.lower(msg), 6))
if p ~= nil then
p.Character:BreakJoints()
PartChatR("Killed "..p.Name)
end 
 
elseif string.sub(string.lower(msg), 1, 4) == "nbc " then
local p = findp(string.sub(string.lower(msg), 5))
if p ~= nil then
p.MembershipTypeReplicate = 0
PartChatR("Non-Membershiped "..p.Name)
end 
 
elseif string.sub(string.lower(msg), 1, 3) == "bc " then
local p = findp(string.sub(string.lower(msg), 4))
if p ~= nil then
p.MembershipTypeReplicate = 1
PartChatB("Builders Clubed "..p.Name)
end 
 
elseif string.sub(string.lower(msg), 1, 4) == "tbc " then
local p = findp(string.sub(string.lower(msg), 8))
if p ~= nil then
p.MembershipTypeReplicate = 2
PartChatB("Turbo Builders Clubed "..p.Name)
end 
 
elseif string.sub(string.lower(msg), 1, 4) == "obc " then
local p = findp(string.sub(string.lower(msg), 5))
if p ~= nil then
p.MembershipTypeReplicate = 3
PartChatG("Outrageous Builders Clubed "..p.Name)
end 
 
 
elseif string.sub(string.lower(msg), 1, 3) == "ff " then
local p = findp(string.sub(string.lower(msg), 4))
if p ~= nil then
PartChatG("Force Fielded "..p.Name)
local ff = Instance.new("ForceField", p.Character) 
end 
 
elseif string.sub(string.lower(msg), 1, 8) == "awesome " then
local p = findp(string.sub(string.lower(msg), 9))
if p ~= nil then
p.Character.Humanoid.MaxHealth = math.huge 
PartChatG("Awesomed "..p.Name)
end 
 
elseif string.sub(string.lower(msg), 1, 10) == "unawesome " then
local p = findp(string.sub(string.lower(msg), 11))
if p ~= nil then
p.Character.Humanoid.MaxHealth = 100
PartChatG("Un-Awesomed "..p.Name)
end 
 
elseif string.sub(string.lower(msg), 1, 5) == "heal " then
local p = findp(string.sub(string.lower(msg), 6))
if p ~= nil then
p.Character.Humanoid.Health = 100
PartChatG("Healed "..p.Name)
end 
 
elseif string.sub(string.lower(msg), 1, 5) == "kick " then
local p = findp(string.sub(string.lower(msg), 6))
if p ~= nil then
p:remove()
PartChatR("Kicked "..p.Name)
end 
 
elseif string.sub(string.lower(msg), 1, 6) == "admin " then
local p = findp(string.sub(string.lower(msg), 7))
if p ~= nil then
table.insert(adminlist, p.Name)
PartChatG("Admined "..p.Name)
end 
 
elseif string.sub(string.lower(msg), 1, 8) == "unadmin " then
local p = findp(string.sub(string.lower(msg), 9))
if p ~= nil then
table.remove(adminlist, p.Name)
PartChatR("Admined "..p.Name)
end 
 
elseif string.sub(string.lower(msg), 1, 4) == "zap " then
local p = findp(string.sub(string.lower(msg), 5))
if p ~= nil then
PartChatR("Burning "..p.Name)
laser = Instance.new ("SelectionPartLasso", Part)
laser.Part = Part
laser.Humanoid = p.Character.Humanoid
laser.Color = BrickColor.new("Bright yellow")
wait(2)
p.Character:BreakJoints()
wait(3)
laser:remove()
PartChatR("Zapped "..p.Name)
end 
 
elseif string.sub(string.lower(msg), 1, 7) == "attack " then
local p = findp(string.sub(string.lower(msg), 8))
if p ~= nil then
PartChatR("Attcking "..p.Name)
attack(p)
wait(2)
p.Character:BreakJoints()
follow(master2)
end 
 
elseif string.sub(string.lower(msg), 1, 7) == "follow " then
local p = findp(string.sub(string.lower(msg), 8))
if p ~= nil then
PartChatB("Stalking "..p.Name)
follow(p)
end 
 
end -- 1
end -- 2
end -- 3
end -- 4
game.Players.PlayerAdded:connect(function(p)
p.Chatted:connect(function(msg) onChatted(msg, p) end)
end)
for i,v in pairs(game.Players:GetPlayers()) do
v.Chatted:connect(function(msg) onChatted(msg, v) end)
end 
 
 
while true do 
wait()
bp.position = master2.Character.Torso.Position + Vector3.new(0,5,2)
fire.Color = Color3.new(math.random(), math.random(), math.random()*2)
sparks.SparkleColor = Color3.new(math.random(), math.random(), math.random()*2)
fire.SecondaryColor = sparks.SparkleColor
end 
end 