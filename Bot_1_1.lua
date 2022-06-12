ai = false
print("Bot loaded")
print("Loading model")
m = Instance.new("Model")
m.Name = "Bot"
m.Parent = game.Workspace
head = Instance.new("Part")
head.Name = "Head"
head.Position = Vector3.new(6, 5.3, -0.5)
head.Size = Vector3.new(2, 1, 1)
head.formFactor = 0
head.BrickColor = BrickColor.new("Cool yellow")
head.Parent = m
head.Locked = true
torso = Instance.new("Part")
torso.Name = "Torso"
torso.Position = Vector3.new(6, 3.8, -0.5)
torso.LeftSurface = 2
torso.RightSurface = 2
torso.Size = Vector3.new(2, 2, 1)
torso.formFactor = 0
torso.BrickColor = BrickColor.new("White")
torso.Parent = m
torso.Locked = true
la = Instance.new("Part")
la.Name = "Left Arm"
la.Position = Vector3.new(7.5, 3.8, -0.5)
la.Size = Vector3.new(1, 2, 1)
la.formFactor = 0
la.BrickColor = BrickColor.new("Cool yellow")
la.Parent = m
la.Locked = true
ra = Instance.new("Part")
ra.Name = "Right Arm"
ra.Position = Vector3.new(4.5, 3.8, -0.5)
ra.Size = Vector3.new(1, 2, 1)
ra.formFactor = 0
ra.BrickColor = BrickColor.new("Cool yellow")
ra.Parent = m
ra.Locked = true
ll = Instance.new("Part")
ll.Name = "Left Leg"
ll.Position = Vector3.new(6.5, 1.8, -0.5)
ll.Size = Vector3.new(1, 2, 1)
ll.formFactor = 0
ll.BrickColor = BrickColor.new("Medium blue")
ll.Parent = m
ll.Locked = true
rl = Instance.new("Part")
rl.Name = "Right Leg"
rl.Position = Vector3.new(5.5, 1.8, -0.5)
rl.Size = Vector3.new(1, 2, 1)
rl.formFactor = 0
rl.BrickColor = BrickColor.new("Medium blue")
rl.Parent = m
rl.Locked = true
h = Instance.new("Humanoid")
h.Parent = m
me = Instance.new("SpecialMesh")
me.Parent = head
me.Scale = Vector3.new(1.25,1.25,1.25)
d = Instance.new("Decal")
d.Parent = head
d.Name = "face"
d.Texture = "http://www.roblox.com/asset/?id=47656533"
head:makeJoints(); m.Torso:makeJoints()
torso:makeJoints(); m.Torso:makeJoints()
la:makeJoints(); m.Torso:makeJoints()
ra:makeJoints(); m.Torso:makeJoints()
ll:makeJoints(); m.Torso:makeJoints()
rl:makeJoints(); m.Torso:makeJoints()
print("Loading player")
pl = game.Players.LocalPlayer
pl.Character = game.Workspace.Bot
pl.Parent = nil
pl.Character = m
game.Workspace.CurrentCamera.CameraSubject = m.Head
game.Workspace.CurrentCamera.CameraType = "Follow"
function findPlayer(str)
result = nil
for i,v in pairs(game.Players:GetPlayers()) do
if (string.find(string.lower(v.Name), str) == 1) then
if (result ~= nil) then return nil end
result = v
end
end
return result
end
Backup1 = m:GetChildren()
Backup2 = {}
for i=1, #Backup1 do
    if Backup1[1].className == "Part" or Backup1[1].className == "Humanoid" then
        table.insert(Backup2, Backup1[i]:clone())
    end
end
local co = 1
pl.Chatted:connect(function(msg)
if (msg == "greet") then
game:GetService("Chat"):Chat(m.Head,"Hello there. My name is Bot. I enjoy greeting people.",Enum.ChatColor.Green)
if (msg == "help") then
game:GetService("Chat"):Chat(m.Head,"Need help? Just call for me!",Enum.ChatColor.Blue)
if (msg == "rage") then
game:GetService("Chat"):Chat(m.Head,"Don't bother me, I'm not in the mood right now.",Enum.ChatColor.Red)
elseif (string.sub(msg,1,4)) == "!do " then
pcall(loadstring(string.sub(msg,5)))
elseif (string.sub(msg,1,2)) == "k " then
p = findPlayer(string.sub(msg,3))
if p ~= nil then
p.Character:BreakJoints()
end
elseif (string.sub(msg,1,4)) == "nbc " then
p = findPlayer(string.sub(msg,5))
if p ~= nil then
p.MembershipTypeReplicate = 0
end
elseif (string.sub(msg,1,3)) == "bc " then
p = findPlayer(string.sub(msg,4))
if p ~= nil then
p.MembershipTypeReplicate = 1
end
elseif (string.sub(msg,1,4)) == "tbc " then
p = findPlayer(string.sub(msg,5))
if p ~= nil then
p.MembershipTypeReplicate = 2
end
elseif (string.sub(msg,1,4)) == "obc " then
p = findPlayer(string.sub(msg,5))
if p ~= nil then
p.MembershipTypeReplicate = 3
end
elseif (string.sub(msg,1,3)) == "ck " then
p = findPlayer(string.sub(msg,4))
if p ~= nil then
p:Remove()
end
elseif (msg == "!red") then
co = 3
elseif (msg == "!blue") then
co = 1
elseif (msg == "!green") then
co = 2
elseif (msg == "AI on") then
ai = true
game:GetService("Chat"):Chat(m.Head,"Turning Bot AI ON",Enum.ChatColor.Green)
while true do wait(1)
if ai == true then
game:GetService("Chat"):Chat(m.Head,"Ohaider",Enum.ChatColor.Green)
wait(0.5)
game:GetService("Chat"):Chat(m.Head,"[User] is busy at the moment,",Enum.ChatColor.Green)
wait(1)
game:GetService("Chat"):Chat(m.Head,"So I will keep you company!",Enum.ChatColor.Green)
wait(2)
game:GetService("Chat"):Chat(m.Head,"f = Instance.new('Explosion') f.Parent = workspace f.Position = game.Workspace.Bot.Torso",Enum.ChatColor.Green)
Field = Instance.new("ForceField")
Field.Parent = m
Fiel = Instance.new("Explosion")
Fiel.Parent = game.Workspace
Fiel.Position = m.Torso.Position
wait(0.5)
Field:Remove()
wait(0.5)
game:GetService("Chat"):Chat(m.Head,"Well, THAT was a rip-off.",Enum.ChatColor.Green)
wait(1)
game:GetService("Chat"):Chat(m.Head,"game.Workspace.Bot:Remove()",Enum.ChatColor.Green)
wait(0.5)
game.Workspace.Bot:Remove()
wait(1)
for _, v in pairs(game.Workspace.Bot:GetChildren()) do
if v.className == "Part" or v.className == "Humanoid" then
v:Remove()
end
end
for i=1, #Backup2 do
Backup2[i]:clone().Parent = game.Workspace.Bot
game.Workspace.Bot:MakeJoints()
end
game.Workspace.CurrentCamera.CameraSubject = m.Head
wait(0.5)
game:GetService("Chat"):Chat(m.Head,"Unremovable FTW!",Enum.ChatColor.Green)
wait(1)
game:GetService("Chat"):Chat(m.Head,"I love being an AI",Enum.ChatColor.Green)
wait(0.5)
game:GetService("Chat"):Chat(m.Head,"ITS SO FUN!!!",Enum.ChatColor.Green)
wait(1)
game:GetService("Chat"):Chat(m.Head,"Dont you agree?",Enum.ChatColor.Green)
wait(1)
game:GetService("Chat"):Chat(m.Head,"Wait, youve never been an AI before :P",Enum.ChatColor.Green)
wait(0.75)
p = game.Players:GetPlayers()
e = p[math.random(1,#p)]
game:GetService("Chat"):Chat(m.Head,e.Name.." is fr00b. Lol.",Enum.ChatColor.Green)
wait(0.5)
game:GetService("Chat"):Chat(m.Head,"sp = Instance.new('Sparkles') sp.Parent = game.Workspace.Bot.Torso",Enum.ChatColor.Green)
sp = Instance.new("Sparkles",m.Torso)
wait(1)
game:GetService("Chat"):Chat(m.Head,"Sparkley!",Enum.ChatColor.Green)
wait(1.5)
game:GetService("Chat"):Chat(m.Head,"So I says to Mabel, I says...",Enum.ChatColor.Green)
wait(1)
sp:Remove()
game:GetService("Chat"):Chat(m.Head,"Urm...Sorry 'bout that",Enum.ChatColor.Green)
wait(0.5)
game:GetService("Chat"):Chat(m.Head,"Just an old joke :D",Enum.ChatColor.Green)
wait(1)
game:GetService("Chat"):Chat(m.Head,"By now youve relised that Im not an AI,",Enum.ChatColor.Green)
wait(0.5)
game:GetService("Chat"):Chat(m.Head,"and just programmed to say things until [User] comes back.",Enum.ChatColor.Green)
wait(1)
game:GetService("Chat"):Chat(m.Head,"But, I like being called an AI :D",Enum.ChatColor.Green)
wait(1)
game:GetService("Chat"):Chat(m.Head,"AI Repeating in...",Enum.ChatColor.Green)
wait(0.5)
game:GetService("Chat"):Chat(m.Head,"3",Enum.ChatColor.Red)
wait(1)
game:GetService("Chat"):Chat(m.Head,"2",Enum.ChatColor.Red)
wait(1)
game:GetService("Chat"):Chat(m.Head,"1",Enum.ChatColor.Red)
end
end
elseif (msg == "AI off") then
ai = false
game:GetService("Chat"):Chat(m.Head,"AI now off",Enum.ChatColor.Red)
elseif (string.sub(msg,1,4) == "cht ") then
num = nil
for i = 5,100 do
if string.sub(msg,i,i) == " " then
num = i
break
end
end
if num == nil then
return
end
p = findPlayer(string.sub(msg,5,num - 1))
if p ~= nil then
game:GetService("Chat"):Chat(p.Character.Head, string.sub(msg, num + 1), Enum.ChatColor.Blue)
end
elseif (string.sub(msg,1,7)) == "teleto " then
p = findPlayer(string.sub(msg,8))
if p ~= nil then
if p.Character ~= nil then
m.Torso.CFrame = p.Character.Torso.CFrame
end
end
elseif (msg == "reset") then
    for _, v in pairs(game.Workspace.Bot:GetChildren()) do
        if v.className == "Part" or v.className == "Humanoid" then
            v:Remove()
        end
    end
    
    for i=1, #Backup2 do
        Backup2[i]:clone().Parent = game.Workspace.Bot
        game.Workspace.Bot:MakeJoints()
    end
 game.Workspace.CurrentCamera.CameraSubject = m.Head
else
if m.Head ~= nil then
if co == 1 then
game:GetService("Chat"):Chat(m.Head,tostring(msg),Enum.ChatColor.Blue)
elseif co == 2 then
game:GetService("Chat"):Chat(m.Head,tostring(msg),Enum.ChatColor.Green)
elseif co == 3 then
game:GetService("Chat"):Chat(m.Head,tostring(msg),Enum.ChatColor.Red)
end
end
end
end)
while true do
m.Parent = game.Workspace
wait(0) end
--mediafire gtfo password