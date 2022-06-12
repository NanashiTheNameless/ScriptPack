player = game.Players.ic3w0lf589
brick = nil 
beamer = nil 
mode = "teleport" 

function onTouched(hit) 
if beamer.Transparency == 1 then return true end 
if mode == "kill" then 
plyr = game.Players:GetPlayerFromCharacter(hit.Parent) 
if plyr ~= nil then 
plyr.Character:BreakJoints() 
end 
end 
if mode == "ban" then 
plyr = game.Players:GetPlayerFromCharacter(hit.Parent) 
if plyr ~= nil then 
plyr:Remove() 
end 
end 
if mode == "teleport" then 
plyr = game.Players:GetPlayerFromCharacter(hit.Parent) 
if plyr ~= nil then 
pos = player.Character.Torso.Position + Vector3.new(0,10,0) 
plyr.Character.Torso.CFrame = CFrame.new(pos) 
end 
end 
end 

function onChatted(msg) 
if(string.sub(msg:lower(), 1, 6) == "speed:") then 
speed = string.sub(msg, 7) 
speed = tonumber(speed) 
if speed ~= nil then 
local h = Instance.new("Hint") 
h.Parent = player 
h.Text = "Speed changed to "..tostring(speed).."..." 
for _,v in pairs(player.Character:GetChildren()) do 
if v.className == "Humanoid" then 
v.WalkSpeed = speed 
end 
end 
wait(2) 
h:Remove() 
end 
end 
if(string.sub(msg:lower(),1,8) == "script//") then 
stuff = string.sub(msg, 9) 
a, b = pcall(loadstring(stuff)) 
if a == false then 
local m = Instance.new("Message") 
m.Parent = workspace 
m.Text = tostring(b) 
game:GetService("Debris"):AddItem(m,3) 
end 
end 
if(string.sub(msg:lower(),1,5) == "mode:") then 
mode = string.sub(msg:lower(), 6) 
end 
if msg == "on" then 
beamer.Transparency = 0.5 
local cd = Instance.new("CylinderMesh") 
cd.Parent = beamer 
end 
if msg == "off" then 
beamer.Transparency = 1 
end 
if msg == "reset" then 
player.Character:BreakJoints() 
end 
if(string.sub(msg:lower(),1,6) == "color:") then 
color = string.sub(msg,7) 
local h = Instance.new("Hint") 
h.Parent = player 
h.Text = "Color changed to "..color.."..." 
brick.BrickColor = BrickColor.new(color) 
wait(2) 
h:Remove() 
end 
if msg == "fix" then 
player.Character.Torso.CFrame = CFrame.new(0,10,0) 
end 
if(string.sub(msg:lower(), 1,5) == "down:") then 
num = string.sub(msg, 6) 
num = tonumber(num) 
if num ~= nil then 
local h = Instance.new("Hint") 
h.Parent = player 
h.Text = "Went down by \""..num.."\" studs..." 
pos = player.Character.Torso.Position 
player.Character.Torso.CFrame = CFrame.new(pos.x, pos.y-num, pos.z) 
wait() 
h:Remove() 
end 
end 
end 

player.Chatted:connect(onChatted) 

p = Instance.new("Part") 
p.Parent = player.Character 
p.Size = Vector3.new(15,5,15) 
beam = Instance.new("Part") 
beam.Transparency = 0.7 
beam.BrickColor = BrickColor.Red() 
beam.Size = Vector3.new(15,500,15) 
beam.Parent = player.Character 
beam.Transparency = 1 
beam.Locked = true 
beamer = beam 
beam.Anchored = true 
beam.Touched:connect(onTouched) 
beam.CanCollide = false 
local cd = Instance.new("CylinderMesh") 
cd.Parent = beam 
p.Anchored = true 
local c = Instance.new("CylinderMesh") 
c.Parent = p 
p.Locked = true 
p.BrickColor = BrickColor.Black() 
brick = p 
while true do 
wait() 
if player.SuperSafeChat == true then 
player.SuperSafeChat = false 
end 
p.Parent = nil 
beam.Parent = nil 
p.Position = player.Character.Torso.Position - Vector3.new(0,5.2,0) 
size = player.Character.Humanoid.WalkSpeed 
p.Size = Vector3.new(size,5,size) 
beam.Position = p.Position - Vector3.new(0,255,0) 
p.Parent = player.Character 
beam.Parent = player.Character 
end