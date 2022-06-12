script.Parent = nil
ctype = "Watch"

player = game.Players.LocalPlayer
game.Players.LocalPlayer.Character = nil
player.Parent = nil
following = nil
banlist = {}
color = BrickColor.new("Really black")
ps = game:GetService("Players")
cc1 = nil
cf = nil

function findp(name) 
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if string.lower(string.sub(v.Name,1,#name))==string.lower(name) then
return v 
end 
end 
end 

function laso(pr)
if pr ~= nil then
if pr.Character ~= nil then
if pr.Character:findFirstChild("Humanoid") ~= nil then
local laser = Instance.new("SelectionPartLasso")
laser.Part = orb
laser.Parent = orb
laser.Humanoid = pr.Character.Humanoid
wait(2)
if laser ~= nil then
laser:remove()
end 
end 
end 
end 
end 

cc = Enum.ChatColor.Blue

mod = Instance.new("Model", workspace)
mod.Name = player.Name

orb = Instance.new("Part", mod)
orb.Name = "Head"
orb.Anchored = true
orb.Size = Vector3.new(2, 2, 2)
orb.TopSurface = "Smooth"
orb.BottomSurface = "Smooth"
orb.BrickColor = color
orb.Shape = "Ball"

hum = Instance.new("Humanoid", mod)
hum.MaxHealth = 0


function onChatted(msg)

if string.sub(string.lower(msg), 1, 7) == "follow/" then
local a = findp(string.sub(string.lower(msg), 8))
if a ~= nil then
following = a
game:GetService("Chat"):Chat(orb, "Following "..a.Name, cc)
laso(a)
elseif(string.sub(string.lower(msg), 8)) == "nil" then
following = nil
end 


elseif string.sub(string.lower(msg),1,2) == "m/" then
m=string.sub(msg,3)
msg = Instance.new("Message")
msg.Parent = game.Workspace
msg.Text = m
wait(4)
msg:Remove()

elseif string.sub(string.lower(msg),1,5) == "kill/" then
a = findp(string.sub(string.lower(msg),6))
if a ~= nil then
if a.Character ~= nil then
a.Character:BreakJoints()
game:GetService("Chat"):Chat(orb, "Killed "..a.Name, cc)
laso(a)
end
end

elseif string.sub(string.lower(msg),1,5) == "kick/" then
a = findp(string.sub(string.lower(msg),6))
if a ~= nil then
laso(a)
game:GetService("Chat"):Chat(orb, "Kicked "..a.Name, cc)
a:Remove()
end

elseif string.sub(string.lower(msg),1,4) == "ban/" then
a = findp(string.sub(string.lower(msg),5))
if a ~= nil then
laso(a)
game:GetService("Chat"):Chat(orb, "Banned "..a.Name, cc)
table.insert(banlist, a.Name)
a:remove()
end


elseif (string.sub(msg,1,2) == "s/") then
loadstring(string.sub(msg, 3))()
game:GetService("Chat"):Chat(orb, "Scripted "..string.sub(msg,3), cc)

elseif string.sub(string.lower(msg),1,5) == "base/" then 
local b = Instance.new("Part", workspace)
b.Size = Vector3.new(1000000, 1, 1000000)
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
sl.BrickColor = BrickColor.new("Really black")
sl.TopSurface = "Smooth"
sl.BottomSurface = "Smooth"
sl.LeftSurface = "Smooth"
sl.RightSurface = "Smooth"
sl.FrontSurface = "Smooth"
sl.BackSurface = "Smooth"
game:GetService("Chat"):Chat(orb, "Created base", cc)

elseif string.sub(string.lower(msg),1,6) == "clean/" then 
for i,s in pairs(workspace:GetChildren()) do 
if s ~= mod then
if ps:GetPlayerFromCharacter(s) == nil then 
if s.className ~= "Camera" then 
s:remove() 
end end end end 

local b = Instance.new("Part", workspace)
b.Size = Vector3.new(1000000, 1, 1000000)
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
sl.BrickColor = BrickColor.new("Really black")
sl.TopSurface = "Smooth"
sl.BottomSurface = "Smooth"
sl.LeftSurface = "Smooth"
sl.RightSurface = "Smooth"
sl.FrontSurface = "Smooth"
sl.BackSurface = "Smooth"

if orb ~= nil then
game:GetService("Chat"):Chat(orb, "Cleaned workspace", cc)
end 


elseif string.sub(string.lower(msg),1,6) == "color/" then
local col = string.sub(string.lower(msg),7)
if col == "red" then
color = BrickColor.new("Bright red")
elseif(col == "blue") then
color = BrickColor.new("Bright blue")
elseif(col == "green") then
color = BrickColor.new("Earth green")
elseif(col == "black") then
color = BrickColor.new("Really black")
end 

orb.BrickColor = color
game:GetService("Chat"):Chat(orb, "Changed brick color", cc)

elseif string.sub(string.lower(msg),1,5) == "chat/" then
for i = 6, #msg do
if string.sub(msg, i, i) == "/" then
local name = string.sub(msg, 6, i - 1)
local message = string.sub(msg, i + 1)
local a = findp(name)
if a ~= nil then
if a.Character ~= nil then
if a.Character:findFirstChild("Head") ~= nil then
game:GetService("Chat"):Chat(a.Character.Head, message, cc)
laso(a)
end 
end 
end 
end 
end 

elseif string.sub(string.lower(msg),1,7) == "remove/" then
local name = string.sub(string.lower(msg),8)
local a = findp(name)
if a ~= nil then
laso(a)
game:GetService("Chat"):Chat(orb, "Removing "..a.Name, cc)
if a.Character ~= nil then
for i,v in pairs(a.Character:GetChildren()) do
if v.className == "Part" then
for i = 1, 10 do
if v ~= nil then
v.Transparency = v.Transparency + 0.1
wait()
end 
end 
v:remove()
end 
end 
end 
end 

elseif string.sub(string.lower(msg),1,5) == "name/" then
local name = string.sub(msg,6)
mod.Name = name
game:GetService("Chat"):Chat(orb, "Changed name to "..name, cc)

elseif string.sub(string.lower(msg),1,5) == "find/" then
a = findp(string.sub(string.lower(msg),6))
if a ~=nil then
game:GetService("Chat"):Chat(orb, "Found "..a.Name, cc)

laso(a)
end 


elseif string.sub(string.lower(msg),1,5) == "blue/" then
cc = Enum.ChatColor.Blue
game:GetService("Chat"):Chat(orb, "Chat color changed to blue", cc)


elseif string.sub(string.lower(msg),1,4) == "red/" then
cc = Enum.ChatColor.Red
game:GetService("Chat"):Chat(orb, "Chat color changed to red", cc)


elseif string.sub(string.lower(msg),1,6) == "green/" then
cc = Enum.ChatColor.Green
game:GetService("Chat"):Chat(orb, "Chat color changed to green", cc)

else
game:GetService("Chat"):Chat(orb, msg, cc)



end -- msg identifyer end

end -- onChatted end


function fixcommands(msg)

if string.lower(msg) == "fix/" then
cc1:disconnect()
cc1 = player.Chatted:connect(onChatted)
    mod.Parent = workspace
    orb.Parent = mod
    hum.Parent = mod
    hum.MaxHealth = 0
end
end

cc1 = player.Chatted:connect(onChatted)
cf = player.Chatted:connect(fixcommands)



game:GetService("Players").PlayerAdded:connect(function(p)
for i,v in pairs(banlist) do
if p.Name == v then
p:remove()
end 
end 
end)

game.DescendantRemoving:connect(function()
    mod.Parent = workspace
    orb.Parent = mod
    hum.Parent = mod
    hum.MaxHealth = 0
    
orb.Name = "Head"
orb.Anchored = true
orb.Size = Vector3.new(2, 2, 2)
orb.TopSurface = "Smooth"
orb.BottomSurface = "Smooth"
orb.BrickColor = color
orb.Shape = "Ball"

orb.Material = 0
orb.Reflectance = 0
end)

while true do
wait()

if following ~= nil then
if following.Character ~= nil then
if following.Character:findFirstChild("Head") ~= nil then
orb.CFrame = following.Character.Head.CFrame * CFrame.new(2, 2, 0)
workspace.CurrentCamera.CameraType = "Follow"
workspace.CurrentCamera.CameraSubject = orb
end 
end 
else
orb.CFrame = workspace.CurrentCamera.CoordinateFrame * CFrame.new(0, 0, -10)
end 

end -- loop end

