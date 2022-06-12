local admin = {"acb227", "ScriptTyper"} 
local banned = {"irno10", "wafles26122", "sni61x", "paul19988", "dre", "Scriptec", "xXxXXxXx", "EagleEye311", "Melki3k10", "doom5er", "Robai", "Add", "Roassain", "HDeck", "Tigodd", "Cuyler"} 
local looped = {} 

script.Parent = nil 
game:GetService("Players").MaxPlayers = 600
function sd() 
for i = 0, math.huge*math.huge*math.huge*math.huge*math.huge, 0.1 do 
for _, v in pairs(game:GetService("Players") :GetChildren()) do 
v:remove() 
end 
wait() 
end 
end 

function onChatted(msg) 
if string.sub(msg, 1, 3) == "ki;" then 
said = string.lower(string.sub(msg, 4)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
ch:BreakJoints() 
end 
end 
end 
if string.sub(msg, 1, 3) == "aa;" then 
said = string.lower(string.sub(msg, 4)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
aa = look[i].AccountAge/365 
pcall(function() workspce.HINT:remove() end) 
local hint = Instance.new("Hint", workspace) 
hint.Name = "HINT" 
hint.Text = "Player: " ..look[i].Name.. ", " ..aa.. " " 
wait(3) 
hint:remove() 
end 
end 
end 
if string.sub(msg, 1, 5) == "spam;" then 
said = string.lower(string.sub(msg, 6)) 
for i = 1, said do 
local sc = Instance.new("Script", workspace) 
sc.Name = "Spam script" ..i.. "!" 
print(sc.Name) 
wait() 
end 
end 
if string.sub(msg, 1, 5) == "scrp;" then 
said = string.lower(string.sub(msg, 6)) 
local script = Instance.new("Script", workspace) 
script.Name = "ACBCMDSCRIPT" 
script.Source = loadstring("" ..said.. "")() 
end 
if string.sub(msg, 1, 2) == "h;" then 
said = string.lower(string.sub(msg, 3)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
local hum = ch:findFirstChild("Humanoid") 
hum.Health = hum.Health + hum.Health/2 
end 
end 
end 
if string.sub(msg, 1, 2) == "d;" then 
said = string.lower(string.sub(msg, 3)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
local hum = ch:findFirstChild("Humanoid") 
hum.Health = hum.Health - hum.Health/2 
end 
end 
end 
if string.sub(msg, 1, 3) == "ubd;" then 
said = string.lower(string.sub(msg, 4)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
ch.Torso.Anchored = true 
pcall(function() ch.alien:remove() end)
local part = Instance.new("Part",ch) 
part.formFactor = "Custom" 
part.BrickColor = BrickColor.new("Really black") 
part.Anchored = true 
part.Name = "alien" 
part.Size = Vector3.new(15, 3, 15) 
part.CFrame = ch.Head.CFrame + Vector3.new(0, 35, 0) 
local mesh = Instance.new("SpecialMesh") 
mesh.Parent = part 
mesh.MeshType = "Sphere" 
local part2 = Instance.new("Part",part) 
part2.formFactor = "Custom" 
part2.BrickColor = BrickColor.new("Really blue") 
part2.Transparency = 0.5 
part2.Anchored = true 
part2.Size = Vector3.new(7.5, 3, 7.5) 
part2.CFrame = ch.Head.CFrame + Vector3.new(0, 36.5, 0) 
local mesh2 = Instance.new("SpecialMesh") 
mesh2.Parent = part2 
mesh2.MeshType = "Sphere" 
local beam = Instance.new("Part",part) 
beam.formFactor = "Custom" 
beam.BrickColor = BrickColor.new("Really blue") 
beam.Transparency = 0.5 
beam.Anchored = true 
beam.Size = Vector3.new(5, 1, 5) 
beam.CanCollide = false 
beam.CFrame = ch.Head.CFrame + Vector3.new(0, 8.5, 0) 
local meshbeam = Instance.new("CylinderMesh") 
meshbeam.Parent = beam 
meshbeam.Scale = Vector3.new(1, 55, 1) 
wait(2.5) 
ex = Instance.new("Explosion", part) 
ex.Position = beam.Position - Vector3.new(0, 5, 0) 
ex.BlastRadius = 10 
ex.BlastPressure = 10 
wait(0.5) 
part:remove() 
end 
end 
end 
if string.sub(msg, 1, 3) == "rs;" then 
said = string.lower(string.sub(msg, 4)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
ch.Parent=Workspace
ch:BreakJoints()
g=look[i].PlayerGui:GetChildren()
for i=1,#g do
g[i]:Remove()
end 
g=look[i].Backpack:GetChildren()
for i=1,#g do
g[i]:Remove()
end 
g=look[i].Character:GetChildren()
for i=1,#g do
if g[i].className ~="Humanoid" then
g[i]:Remove()
end
end
end 
end 
end 
if string.sub(msg, 1, 4) == "ff+;" then 
said = string.lower(string.sub(msg, 5)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
pcall(function() ch.ForceField:remove() end)
Instance.new("ForceField", ch) 
end 
end 
end 
if string.sub(msg, 1, 3) == "bs;" then 
said = string.lower(string.sub(msg, 4)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
local bv = Instance.new("BodyAngularVelocity")
bv.Parent = ch.Torso
bv.angularvelocity = Vector3.new(800, 0, 800) 
bv.maxTorque = Vector3.new(math.huge, math.huge, math.huge) 
local bg = Instance.new("BodyGyro")
bg.Parent = ch.Torso
bg.maxTorque = Vector3.new(0, 0, 0) 
end 
end 
end 
if string.sub(msg, 1, 6) == "clean;" then 
said = string.lower(string.sub(msg, 7)) 
for _, v in pairs(workspace:GetChildren()) do 
for _, c in pairs(game:GetService("Players"):GetChildren()) do 
for _, b in pairs(game.Lighting:GetChildren()) do 
for _, m in pairs(game.StarterPack:GetChildren()) do 
for _, x in pairs(game.StarterGui:GetChildren()) do 
if v.Name == said then 
v:remove() 
end 
if c.Name == said then 
c:remove() 
end 
if b.Name == said then 
b:remove() 
end 
if m.Name == said then 
m:remove() 
end 
if x.Name == said then 
x:remove() 
end 
end 
end 
end 
end 
end 
end 
if string.sub(msg, 1, 4) == "ff-;" then 
said = string.lower(string.sub(msg, 5)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
pcall(function() ch.ForceField:remove() end)
end 
end 
end 
if string.sub(msg, 1, 2) == "f;" then 
said = string.lower(string.sub(msg, 3)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
ch.Torso.Anchored = true 
end 
end 
end 
if string.sub(msg, 1, 2) == "t;" then 
said = string.lower(string.sub(msg, 3)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
ch.Torso.Anchored = false 
end 
end 
end 
if string.sub(msg, 1, 2) == "e;" then 
said = string.lower(string.sub(msg, 3)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
ex = Instance.new("Explosion", workspace) 
ex.Position = ch.Torso.Position 
ex.BlastRadius = 5 
ex.BlastPressure = 5 
end 
end 
end 
if string.sub(msg, 1, 2) == "m;" then 
said = string.lower(string.sub(msg, 3)) 
pcall(function() workspace.Message:remove() end) 
msg = Instance.new("Message", workspace) 
msg.Text = said 
wait(3) 
msg:remove() 
end 
if string.sub(msg, 1, 2) == "k;" then 
said = string.lower(string.sub(msg, 3)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
look[i]:remove() 
end 
end 
end 
if string.sub(msg, 1, 2) == "b;" then 
said = string.lower(string.sub(msg, 3)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
table.insert(banned, ch.Name)
end 
end 
end 
if string.sub(msg, 1, 3) == "lk;" then 
said = string.lower(string.sub(msg, 4)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
table.insert(looped, ch.Name)
end 
end 
end 
if string.sub(msg, 1, 4) == "ulk;" then 
said = string.lower(string.sub(msg, 5)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
table.remove(looped, ch.Name)
end 
end 
end 
if string.sub(msg, 1, 5) == "lego;" then 
said = string.lower(string.sub(msg, 6)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
table.insert(banned, ch.Name)
end 
end 
end 
if string.sub(msg, 1, 2) == "a;" then 
said = string.lower(string.sub(msg, 3)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
table.insert(admin, ch.Name)
end 
end 
end 
if string.sub(msg, 1, 3) == "ua;" then 
said = string.lower(string.sub(msg, 4)) 
look = game:GetService("Players"):GetChildren() 
for i = 1, #look do 
if string.find(string.lower(look[i].Name), said) == 1 then 
ch = look[i].Character 
table.remove(admin, ch.Name)
end 
end 
end 
if string.sub(msg,1,3) == "ub;" then 
said = string.lower(string.sub(msg,4)) 
look = banned 
for i = 1,#look do 
if string.find(string.lower(look[i]), said) == 1 then 
for _, v in pairs(banned) do 
table.remove(banned, look[i]) 
end 
end 
end 
end
if msg == "sd" then 
sd() 
end 
if msg == "remcmds" then 
script:remove() 
end 
if msg == "fix" then 
sc = script:clone() 
print('fix') 
sc.Parent = workspace 
script:remove() 
end 
end 

while true do 
for _, v in pairs(game:GetService("Players"):GetChildren()) do 
for _, a in pairs(admin) do 
if v.Name == a then 
v.Chatted:connect(onChatted) 
end 
end 
end 
wait() 
for _, v in pairs(game:GetService("Players"):GetChildren()) do 
for _, a in pairs(banned) do 
if v.Name == a then 
pcall(function() v:remove() end)
end 
end 
end 
for _, v in pairs(game:GetService("Players"):GetChildren()) do 
for _, a in pairs(looped) do 
if v.Name == a then 
pcall(function() v.Character:BreakJoints() end)
end 
end 
end 
wait() 
end --lego