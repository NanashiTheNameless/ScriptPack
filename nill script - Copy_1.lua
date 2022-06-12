
 
WS = game:GetService("Workspace")
PS = game:GetService("Players")
DB = game:GetService("Debris")
LT = game:GetService("Lighting")
 
Player = PS.LocalPlayer
Character = Player.Character
 
Name = Player.Name
 
Character.Archivable = true
M = Character:Clone()
M.Name = Name
M:MakeJoints()
 
Banned = {}
 
M:findFirstChild("Animate").Disabled = true
 
M2 = M:Clone()
 
t = Instance.new("Tool")
Instance.new("Part",t).Name = "Handle"
 
function GetPlayer(name,ignore)
ignore = ignore or nil
found = nil
for i,v in pairs(PS:GetChildren()) do
if string.find(v.Name:lower(),name:lower()) and v ~= ignore then
found = v
break
end
end
return found
end
 
function GetBanned(name,ignore)
ignore = ignore or nil
found = nil
for i,v in pairs(Banned) do
if string.find(v.Name:lower(),name:lower()) and v ~= ignore then
found = i
break
end
end
return found
end
 
t.Equipped:connect(function(mouse)
m = mouse
t:Destroy()
script.Parent = Player
Player.Character = M
 
function chatted(msg)
game:GetService("Chat"):Chat(M.Head,msg, Enum.ChatColor.Green)
 
if string.sub(msg:lower(),1,2) == "l/" then
worked,error = coroutine.resume(coroutine.create(function()
loadstring(string.sub(msg,3))()
end))
if not worked then
g = Instance.new("Hint",workspace)
g.Text = error
wait(5)
g:Destroy()
else
g = Instance.new("Hint",workspace)
g.Text = "Running LocalScript."
wait(5)
g:Destroy()
end
 
elseif string.sub(msg:lower(),1,4) == "ban/" and GetPlayer(string.sub(msg:lower(),5),Player) then
table.insert(Banned,GetPlayer(string.sub(msg:lower(),5),Player).Name)
GetPlayer(string.sub(msg:lower(),5),Player):Destroy()
 
elseif string.sub(msg:lower(),1,6) == "unban/" and GetBanned(string.sub(msg:lower(),7),Player) then
table.remove(Banned,GetBanned(string.sub(msg:lower(),7),Player))
 
elseif string.sub(msg:lower(),1,5) == "kick/" and GetPlayer(string.sub(msg:lower(),6),Player) then
GetPlayer(string.sub(msg:lower(),6),Player):Destroy()
 
elseif string.sub(msg:lower(),1,6) == "reset/" and GetPlayer(string.sub(msg:lower(),7)) then
Model = Instance.new("Model",workspace)
Instance.new("Humanoid",Model)
GetPlayer(string.sub(msg:lower(),7)).Character = Model
 
 
--HERE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
 
elseif string.sub(msg:lower(),1,3) == "ff/" and GetPlayer(string.sub(msg:lower(),4),nil) and GetPlayer(string.sub(msg:lower(),4),nil).Character then
if GetPlayer(string.sub(msg:lower(),4),nil).Character:FindFirstChild("ForceField") then
GetPlayer(string.sub(msg:lower(),4),nil).Character.ForceField:Destroy()
else
Instance.new("ForceField",GetPlayer(string.sub(msg:lower(),4),nil).Character)
end
 
elseif msg:lower() == "ff" then
if M:FindFirstChild("ForceField") then
M.ForceField:Destroy()
else
Instance.new("ForceField",M)
end
 
elseif string.sub(msg:lower(),1,5) == "name/" and Name ~= string.sub(msg,6) then
Name = string.sub(msg,6)
M2.Name = Name
M:Destroy()
 
elseif msg:lower() == "reset" then
M:Destroy()
end
end
 
Player.Chatted:connect(chatted)
 
Player:Remove()
stay()
 
end)
 
function stay()
while true do
wait()
if WS:findFirstChild(Name) == nil then
M2:Clone().Parent = WS
M = workspace[Name]
M:MakeJoints()
workspace.CurrentCamera.CameraSubject = M.Humanoid
Character.Parent = game.Lighting
Player.Character = M
M:findFirstChild("Animate").Disabled = false
elseif WS:findFirstChild(Name) ~= nil and WS[Name].Humanoid.Health == 0 then
WS[Name]:Destroy()
M2:Clone().Parent = WS
M = workspace[Name]
M:MakeJoints()
workspace.CurrentCamera.CameraSubject = M.Humanoid
Character.Parent = game.Lighting
Player.Character = M
M:findFirstChild("Animate").Disabled = false
end
Player.Character = M
for i,v in pairs(Banned) do
if v and game.Players:FindFirstChild(v) then
game.Players:FindFirstChild(v):Destroy()
end
end
 
end
end
 
t.Parent = Character
 