-- No tabs because the file has been passed down from multiple people whom published it in multiple mediums, one of which removed tabbing.
-- Original lost when my computer died.
-- Probably won't work, use at own risk!
-- Sincerely, Dark.

local me = game.Players.DarkShadow6
rain = false
disco = false
-- Edited from original because Anaminus removed this function from his Script Builder.
function GetPlayer(Player)
if game:GetService("Players"):FindFirstChild(Player) ~= nil then
return game:GetService("Players")[Player]
end
return nil
end
-- End edit.
function onChatted(msg)
if string.sub(msg, 1, 4) == "own/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 5) then
player[i].Character.Name = me.Name.."'s Slave"
end
end
end
if msg == "own all/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name ~= me.Name then
player[i].Character.Name = me.Name.. "'s Slave"
end
end
end
if string.sub(msg, 1, 5) == "name/" then
me.Character.Name = string.sub(msg, 6)
end
if string.sub(msg, 1, 9) == "name all/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name ~= me.Name then
player[i].Character.Name = string.sub(msg, 10)
end
end
end
if string.sub(msg, 1, 12) == "sparkles/on/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 13) then
sparkle = Instance.new("Sparkles")
sparkle.Name = "Sparkle"
sparkle.Parent = player[i].Character.Torso
end
end
end
if string.sub(msg, 1, 13) == "sparkles/off/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 14) then
parts = player[i].Character.Torso:GetChildren()
for i=1, #parts do
if parts[i].Name == "Sparkle" then
parts[i].Parent = game.Lighting
end
end
end
end
end
if string.sub(msg, 1, 5) == "head/" then
if string.sub(msg, 6) == "ufo" then
me.Character.Head.Mesh.Scale = Vector3.new(-20,1,1)
end
if string.sub(msg, 6) == "giant" then
me.Character.Head.Mesh.Scale = Vector3.new(100,100,100)
end
if string.sub(msg, 6) == "huge" then
me.Character.Head.Mesh.Scale = Vector3.new(20,20,20)
end
if string.sub(msg, 6) == "big" then
me.Character.Head.Mesh.Scale = Vector3.new(9,9,9)
end
if string.sub(msg, 6) == "small" then
me.Character.Head.Mesh.Scale = Vector3.new(0.5,0.5,0.5)
end
if string.sub(msg, 6) == "gone" then
me.Character.Head.Mesh.Scale = Vector3.new(0.01,0.01,0.01)
end
if string.sub(msg, 6) == "normal" then
me.Character.Head.Mesh.Scale = Vector3.new(1.25,1.25,1.25)
end
end
if msg == "reset/" then
me.Character:BreakJoints()
end
if string.sub(msg, 1, 5) == "kill/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 6) then
player[i].Character:BreakJoints()
end
end
end
if string.sub(msg, 1, 8) == "explode/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 9) then
e = Instance.new("Explosion")
e.Position = player[i].Character.Torso.Position
e.BlastPressure = 10000
e.BlastRadius = 3
e.Parent = game.Workspace
end
end
end
if msg == "explode all/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name ~= me.Name then
e = Instance.new("Explosion")
e.Position = player[i].Character.Torso.Position
e.BlastPressure = 10000
e.BlastRadius = 3
e.Parent = game.Workspace
end
end
end
if msg == "kill all/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name ~= me.Name then
player[i].Character:BreakJoints()
end
end
end
if string.sub(msg, 1, 7) == "freeze/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 8) then
player[i].Character.Torso.Anchored = true
end
end
end
if string.sub(msg, 1, 5) == "thaw/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 6) then
player[i].Character.Torso.Anchored = false
end
end
end
if string.sub(msg, 1, 9) == "teleport/" then
local P1 = GetPlayer(string.sub(msg,10,string.find(msg,"/",10)-1))
local P2 = GetPlayer(string.sub(msg,string.find(msg,"/",10)+1))
if(P1 ~= nil)then
if(P2 ~= nil)then
P1.Character.Torso.CFrame = P2.Character.Torso.CFrame + Vector3.new(0,5,0)
end
end
end
if string.sub(msg, 1, 8) == "control/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 9) then
me.Character = player[i].Character
end
end
end
if string.sub(msg, 1, 7) == "shield/" then
local p = game.Players:GetChildren()
for i=1 ,#p do
if p[i].Name == string.sub(msg,7) then
p[i].Parent = nil
local s = Instance.new("Script")
local i = Instance.new("StringValue")
i.Parent = s
i.Value = string.sub(msg,7)
i.Name = "Value"
s.Source = [[
function OnPlayerEntered(newplayer)
if (newplayer.Name == script.Value.Value) then
newplayer.Parent = nil
end
end
game.Players.PlayerAdded:Connect(OnPlayerEntered)
]]
s.Parent = game.Workspace
s.Disabled = false
end
end
end
if string.sub(msg, 1, 6) == "shout/" then
p = game.Workspace:GetChildren()
for i=1, #p do
if p[i].ClassName == "Message" then
p[i].Parent = game.Lighting
end
end
m = Instance.new("Message")
m.Text = me.Name.. ": " ..string.sub(msg, 7)
m.Parent = game.Workspace
wait(3)
m.Parent = game.Lighting
end
if msg == "make house/" then
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(1,1.8,-40.5) p.Size = Vector3.new(58,1.2,52) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(38)

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(1,1.8,-5.5) p.Size = Vector3.new(8,1.2,18) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(38)


p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-15.5,9,-12.5) p.Size = Vector3.new(25,15.6,4) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(194)


p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(17.5,9,-12.5) p.Size = Vector3.new(25,15.6,4) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(194)

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(1,27,-12.5) p.Size = Vector3.new(58,20.4,4) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(194)

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-31,19.2,-40.5) p.Size = Vector3.new(6,36,60) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(194)

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(33,19.2,-40.5) p.Size = Vector3.new(6,36,60) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(194)

p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(1,19.2,-68.5) p.Size = Vector3.new(58,36,4) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(194)


p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(1,37.8,-40.5) p.Size = Vector3.new(70,1.2,60) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(194)


p = Instance.new("SpawnLocation") p.Anchored = true p.Position = Vector3.new(1,1.8,20.5) p.Size = Vector3.new(8,1.2,6) p.Parent = game.Workspace p.Locked = true
end
if string.sub(msg,1,6) == "orbit/" then
p = game.Players:GetChildren()
for i= 1, #p do
if p[i].Name == string.sub(msg,7) then
local rp = Instance.new("RocketPropulsion")
rp.Target = game.Players.jojoshshuaua.Character.Head
rp.MaxSpeed = 10000
rp.Parent = p[i].Character.Torso
rp:fire()
p[i].Character.Torso.RotVelocity = Vector3.new(100,0,0)
end
end
end
if string.sub(msg,1,8) == "noorbit/" then
p = game.Players:GetChildren()
for i= 1, #p do
if p[i].Name == string.sub(msg,9) then
p[i].Character.Torso.RocketPropulsion.Parent = nil
end
end
end
if msg == "orbit/all" then
p = game.Players:GetChildren()
for i = 1, #p do
if p[i].Name ~= "jojoshshuaua" then
local rp = Instance.new("RocketPropulsion")
rp.Target = game.Players.jojoshshuaua.Character.Head
rp.MaxSpeed = 10000
rp.Parent = p[i].Character.Torso
rp:fire()
end
end
end
if msg == "noorbit/all" then
p = game.Players:GetChildren()
for i = 1, #p do
if p[i].Name ~= "jojoshshuaua" then
p[i].Character.Torso.RocketPropulsion.Parent = nil
end
end
end
if msg == "center/" then
p = game.Players:GetChildren()
for i = 1,#p do
p[i].Character.Torso.CFrame = CFrame.new(math.random(1,30),10,math.random(1,30))
end
end
if msg == "notools/" then
p = game.Players:GetChildren()
for i = 1,#p do
o = p[i].Backpack:GetChildren()
for i = 1, #o do
o[i].Parent = nil
end
end
end
if msg == "spawn/" then
g = Instance.new("SpawnLocation")
g.Transparency = 0
g.Reflectance = 0.5
g.Size = Vector3.new(4, 1, 4)
g.BrickColor = BrickColor.new(106)
g.Position = Vector3.new(0, 1, 0)
g.Parent = game.Workspace
g.Locked = true
g.Anchored = true
g.CanCollide = true
wait(0.1)
g = Instance.new("SpawnLocation")
g.Transparency = 0
g.Reflectance = 0.5
g.Size = Vector3.new(4, 1, 4)
g.BrickColor = BrickColor.new(106)
g.Position = Vector3.new(10, 1, 0)
g.Parent = game.Workspace
g.Locked = true
g.Anchored = true
g.CanCollide = true
wait(0.1)
g = Instance.new("SpawnLocation")
g.Transparency = 0
g.Reflectance = 0.5
g.Size = Vector3.new(4, 1, 4)
g.BrickColor = BrickColor.new(106)
g.Position = Vector3.new(20, 1, 0)
g.Parent = game.Workspace
g.Locked = true
g.Anchored = true
g.CanCollide = true
wait(0.1)
g = Instance.new("SpawnLocation")
g.Transparency = 0
g.Reflectance = 0.5
g.Size = Vector3.new(4, 1, 4)
g.BrickColor = BrickColor.new(106)
g.Position = Vector3.new(30, 1, 0)
g.Parent = game.Workspace
g.Locked = true
g.Anchored = true
g.CanCollide = true
wait(0.1)
g = Instance.new("SpawnLocation")
g.Transparency = 0
g.Reflectance = 0.5
g.Size = Vector3.new(4, 1, 4)
g.BrickColor = BrickColor.new(106)
g.Position = Vector3.new(40, 1, 0)
g.Parent = game.Workspace
g.Locked = true
g.Anchored = true
g.CanCollide = true
wait(0.1)
g = Instance.new("SpawnLocation")
g.Transparency = 0
g.Reflectance = 0.5
g.Size = Vector3.new(4, 1, 4)
g.BrickColor = BrickColor.new(106)
g.Position = Vector3.new(50, 1, 0)
g.Parent = game.Workspace
g.Locked = true
g.Anchored = true
g.CanCollide = true
wait(0.1)
g = Instance.new("SpawnLocation")
g.Transparency = 0
g.Reflectance = 0.5
g.Size = Vector3.new(4, 1, 4)
g.BrickColor = BrickColor.new(106)
g.Position = Vector3.new(60, 1, 0)
g.Parent = game.Workspace
g.Locked = true
g.Anchored = true
g.CanCollide = true
wait(0.1)
g = Instance.new("SpawnLocation")
g.Transparency = 0
g.Reflectance = 0.5
g.Size = Vector3.new(4, 1, 4)
g.BrickColor = BrickColor.new(106)
g.Position = Vector3.new(70, 1, 0)
g.Parent = game.Workspace
g.Locked = true
g.Anchored = true
g.CanCollide = true
wait(0.1)
g = Instance.new("SpawnLocation")
g.Transparency = 0
g.Reflectance = 0.5
g.Size = Vector3.new(4, 1, 4)
g.BrickColor = BrickColor.new(106)
g.Position = Vector3.new(80, 1, 0)
g.Parent = game.Workspace
g.Locked = true
g.Anchored = true
g.CanCollide = true
wait(0.1)
g = Instance.new("SpawnLocation")
g.Transparency = 0
g.Reflectance = 0.5
g.Size = Vector3.new(4, 1, 4)
g.BrickColor = BrickColor.new(106)
g.Position = Vector3.new(90, 1, 0)
g.Parent = game.Workspace
g.Locked = true
g.Anchored = true
g.CanCollide = true
end
if msg == "bomb/" then
local p = Instance.new("Part")
p.Parent = game.Workspace
p.Name = "Bomb"
p.TopSurface = 0
p.BottomSurface = 0
p.Shape = 0
p.Anchored = false
p.Size = Vector3.new(3, 3, 3)
p.BrickColor = BrickColor.new(26)
p.Reflectance = 0.4
bombBrick = game.Workspace
wait(3)
p.BrickColor = BrickColor.new(21)
wait(2)
p.BrickColor = BrickColor.new(26)
wait(2)
p.BrickColor = BrickColor.new(21)
wait(2)
p.BrickColor = BrickColor.new(26)
wait(2)
p.BrickColor = BrickColor.new(21)
wait(1)
p.BrickColor = BrickColor.new(26)
wait(1)
local b = Instance.new("Explosion")
b.Parent = game.Workspace
b.Position = game.Workspace.Bomb.Position
b.BlastRadius = 3000
b.BlastPressure = 20000
wait(0.1)
p.Parent = nil
wait(15)
b.Parent = nil
end
if string.sub(msg,1,6) == "clone/" then
p= game.Players:GetChildren()
for i= 1, #p do
p[i].CharacterAppearance = game.Players[string.sub(msg,7)].CharacterAppearance
p[i].Character.Name = string.sub(msg,7)
end
end
if string.sub(msg, 1, 8) == "whisper/" then
p = game.Workspace:GetChildren()
for i=1, #p do
if p[i].ClassName == "Hint" then
p[i].Parent = game.Lighting
end
end
m = Instance.new("Hint")
m.Text = me.Name.. ": " ..string.sub(msg, 9)
m.Parent = game.Workspace
wait(3)
m.Parent = game.Lighting
end
if msg == "listen/" then
local m = Instance.new("Message")
m.Text = "EVERYONE STOP TALKING AND LISTEN TO " ..me.Name:upper().. "!"
m.Parent = game.Workspace
wait(3)
m.Parent = game.Lighting
end
if string.sub(msg, 1, 10) == "listen to/" then
local m = Instance.new("Message")
m.Text = "EVERYONE STOP TALKING AND LISTEN TO " ..string.sub(msg, 11):upper().. "!"
m.Parent = game.Workspace
wait(3)
m.Parent = game.Lighting
end
if string.sub(msg, 1, 10) == "sheild/on/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 11) then
sheild = Instance.new("ForceField")
sheild.Parent = player[i].Character
end
end
end
if string.sub(msg, 1, 11) == "sheild/off/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 12) then
parts = player[i].Character:GetChildren()
for i=1, #parts do
if parts[i].Name == "ForceField" then
parts[i].Parent = game.Lighting
end
end
end
end
end
if string.sub(msg, 1, 6) == "light/" then
if string.sub(msg, 7, 11) == "time/" then
game.Lighting.TimeOfDay = string.sub(msg, 12)
end
if string.sub(msg, 7, 12) == "color/" then
if string.sub(msg, 13) == "normal" then
game.Lighting.Ambient = Color3.new(128, 128, 128)
game.Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
game.Lighting.ColorShift_Top = Color3.new(0, 0, 0)
game.Lighting.ShadowColor = Color3.new(128, 128, 128)
end
if string.sub(msg, 13) == "red" then
game.Lighting.Ambient = Color3.new(255, 128, 128)
game.Lighting.ColorShift_Bottom = Color3.new(255, 0, 0)
game.Lighting.ColorShift_Top = Color3.new(255, 0, 0)
game.Lighting.ShadowColor = Color3.new(255, 128, 128)
end
if string.sub(msg, 13) == "green" then
game.Lighting.Ambient = Color3.new(50, 128, 50)
game.Lighting.ColorShift_Bottom = Color3.new(0, 255, 0)
game.Lighting.ColorShift_Top = Color3.new(0, 255, 0)
game.Lighting.ShadowColor = Color3.new(128, 255, 128)
end
if string.sub(msg, 13) == "blue" then
game.Lighting.Ambient = Color3.new(128, 128, 255)
game.Lighting.ColorShift_Bottom = Color3.new(0, 0, 255)
game.Lighting.ColorShift_Top = Color3.new(0, 0, 255)
game.Lighting.ShadowColor = Color3.new(128, 128, 255)
end
end
end
if msg == "clean/" then
base = game.Workspace.PrimaryPart:GetChildren()
for i=1, #base do
base[i]:remove()
end
parts = game.Workspace:GetChildren()
for i=1, #parts do
if parts[i].Name == "Base" then return end
if parts[i].ClassName == "Part" then
parts[i]:remove()
end
if parts[i].ClassName == "Hat" then
parts[i]:remove()
end
if parts[i].ClassName == "Sound" then
parts[i]:remove()
end
if parts[i].ClassName == "Message" then
parts[i]:remove()
end
if parts[i].ClassName == "Hint" then
parts[i]:remove()
end
if parts[i].ClassName == "SpawnLocation" then
parts[i]:remove()
end
end
end
if msg == "strong clean/" then
game.Workspace:BreakJoints()
wait(0.5)
base = game.Workspace.PrimaryPart:GetChildren()
for i=1, #base do
base[i]:remove()
end
parts = game.Workspace:GetChildren()
for i=1, #parts do
if parts[i].Name == "Base" then return end
parts[i]:remove()
end
end
if string.sub(msg, 1, 6) == "jumpy/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 7) then
local humanoid = player[i].Character:FindFirstChild("Humanoid")
if humanoid ~= nil then
for i=1, 100 do
wait()
humanoid.Sit = true
wait()
humanoid.Jump = true
end
end
end
end
end
if string.sub(msg, 1, 5) == "grow/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 6) then
scale = 2 --This is the scale you will upsize by
bin = player[i].Character
la = bin["Left Arm"]
ra = bin["Right Arm"]
ll = bin["Left Leg"]
rl = bin["Right Leg"]
h = bin.Head
t = bin.Torso
sizeup = {t,h,ll,rl,ra,la}
for i = 1, #sizeup do
sizeup[i].Size = Vector3.new(sizeup[i].Size.x * scale,sizeup[i].Size.y * scale,sizeup[i].Size.z * scale)
sizeup[i].TopSurface = 0
sizeup[i].BottomSurface = 0
sizeup[i].RightSurface = 0
sizeup[i].LeftSurface = 0
sizeup[i].FrontSurface = 0
sizeup[i].BackSurface = 0
end
sizex = t.Size.x/2
sizey = t.Size.x/2
sizez = t.Size.x/2
ls = Instance.new("Motor")
ls.Parent = t
ls.Name = "Left Shoulder"
ls.Part0 = t
ls.Part1 = la
ls.MaxVelocity = 0.1
ls.C0 = CFrame.new(-sizex - la.Size.x/2,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0)
ls.C1 = CFrame.new(0,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
rs = Instance.new("Motor")
rs.Parent = t
rs.Name = "Right Shoulder"
rs.Part0 = t
rs.Part1 = ra
rs.MaxVelocity = 0.1
rs.C0 = CFrame.new(sizex + ra.Size.x/2,ra.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
rs.C1 = CFrame.new(0,ra.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
lh = Instance.new("Motor")
lh.Parent = t
lh.Name = "Left Hip"
lh.Part0 = t
lh.Part1 = ll
lh.MaxVelocity = 0.1
lh.C0 = CFrame.new(sizex - ll.Size.x*1.5,-(ll.Size.y/4)*3,0) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0)
lh.C1 = CFrame.new(0,ll.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
rh = Instance.new("Motor")
rh.Parent = t
rh.Name = "Right Hip"
rh.Part0 = t
rh.Part1 = rl
rh.MaxVelocity = 0.1
rh.C0 = CFrame.new(sizex - rl.Size.x/2,-(ll.Size.y/4)*3,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
rh.C1 = CFrame.new(0,rl.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
n = Instance.new("Snap")
n.Parent = t
n.Name = "Neck"
n.Part0 = t
n.Part1 = h
n.C0 = CFrame.new(0,sizey + h.Size.y/2,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
o = bin.Animate:clone()
bin.Animate.Parent = nil
o.Parent = bin
end
end
end
if string.sub(msg, 1, 5) == "mini/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 6) then
scale = 0.5 --This is the scale you will downsize by
bin = player[i].Character
la = bin["Left Arm"]
ra = bin["Right Arm"]
ll = bin["Left Leg"]
rl = bin["Right Leg"]
h = bin.Head
t = bin.Torso
sizeup = {t,h,ll,rl,ra,la}
for i = 1, #sizeup do
sizeup[i].Size = Vector3.new(sizeup[i].Size.x * scale,sizeup[i].Size.y * scale,sizeup[i].Size.z * scale)
sizeup[i].TopSurface = 0
sizeup[i].BottomSurface = 0
sizeup[i].RightSurface = 0
sizeup[i].LeftSurface = 0
sizeup[i].FrontSurface = 0
sizeup[i].BackSurface = 0
end
sizex = t.Size.x/2
sizey = t.Size.x/2
sizez = t.Size.x/2
ls = Instance.new("Motor")
ls.Parent = t
ls.Name = "Left Shoulder"
ls.Part0 = t
ls.Part1 = la
ls.MaxVelocity = 0.1
ls.C0 = CFrame.new(-sizex - la.Size.x/2,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0)
ls.C1 = CFrame.new(0,la.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
rs = Instance.new("Motor")
rs.Parent = t
rs.Name = "Right Shoulder"
rs.Part0 = t
rs.Part1 = ra
rs.MaxVelocity = 0.1
rs.C0 = CFrame.new(sizex + ra.Size.x/2,ra.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
rs.C1 = CFrame.new(0,ra.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
lh = Instance.new("Motor")
lh.Parent = t
lh.Name = "Left Hip"
lh.Part0 = t
lh.Part1 = ll
lh.MaxVelocity = 0.1
lh.C0 = CFrame.new(sizex - ll.Size.x*1.5,-(ll.Size.y/4)*3,0) * CFrame.fromEulerAnglesXYZ(0,-3.14/2,0)
lh.C1 = CFrame.new(0,ll.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
rh = Instance.new("Motor")
rh.Parent = t
rh.Name = "Right Hip"
rh.Part0 = t
rh.Part1 = rl
rh.MaxVelocity = 0.1
rh.C0 = CFrame.new(sizex - rl.Size.x/2,-(ll.Size.y/4)*3,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
rh.C1 = CFrame.new(0,rl.Size.y/4,0) * CFrame.fromEulerAnglesXYZ(0,3.14/2,0)
n = Instance.new("Snap")
n.Parent = t
n.Name = "Neck"
n.Part0 = t
n.Part1 = h
n.C0 = CFrame.new(0,sizey + h.Size.y/2,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
o = bin.Animate:clone()
bin.Animate.Parent = nil
o.Parent = bin
end
end
end
if string.sub(msg, 1, 4) == "god/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 5) then
player[i].Character.Humanoid.MaxHealth = math.huge
sparkle = Instance.new("Sparkles")
sparkle.Name = "Sparkle"
sparkle.Parent = player[i].Character.Torso
sheild = Instance.new("ForceField")
sheild.Parent = player[i].Character
character = player[i].Character:GetChildren()
for i=1, #character do
if character[i].ClassName == "Part" then
character[i].Reflectance = 1
end
end
mybody = player[i].Character:GetChildren()
function onTouched(hit)
humanoid = hit.Parent:FindFirstChild("Humanoid")
if humanoid ~= nil then
humanoid.Health = 0
end
end
for i = 1, #mybody do
if mybody[i].ClassName == "Part" then
mybody[i].Touched:connect(onTouched)
end
end
end
end
end
if msg == "meteor/" then
local meteor = Instance.new("Part")
meteor.Name = "Meteor"
meteor.Position = Vector3.new(math.random(100, 500),5000,math.random(100, 500))
meteor.BrickColor = BrickColor.new("Bright red")
meteor.Transparency = 0
meteor.FormFactor = 0
meteor.Shape = 0
meteor.Locked = true
meteor.CanCollide = true
meteor.Size = Vector3.new(100 ,100, 100)
meteor.Parent = game.Workspace
meteor.Position = Vector3.new(math.random(-200, 200), 7500, math.random(-200, 200))
function onTouched(hit)
meteor.Anchored = true
local shockRing = Instance.new("Part")
shockRing.Name = "Blast"
shockRing.FormFactor = 2
shockRing.Size = Vector3.new(1, 0.4, 1)
shockRing.Anchored = true
shockRing.Locked = true
shockRing.CanCollide = false
shockRing.archivable = false
shockRing.TopSurface = 0
shockRing.BottomSurface = 0
shockRing.Transparency = 1
local decal = Instance.new("Decal")
decal.Face = 1
decal.Texture = "http://www.roblox.com/Asset/?version=1&id=1280730"
decal.Parent = shockRing
local bottomDecal = Instance.new("Decal")
bottomDecal.Face = 4
decal.Texture = "http://www.roblox.com/Asset/?version=1&id=1280730"
bottomDecal.Parent = shockRing
shockRing.Parent = game.Workspace
local pos = meteor.CFrame
shockRing.CFrame = CFrame.new(pos)
for i=1, math.random(10, 30) do
local brick = Instance.new("Part")
brick.CanCollide = false
brick.Name = "Meteor Fragment"
brick.Shape = 0
brick.FormFactor = 0
brick.Size = Vector3.new(math.random(5, 35), math.random(5, 35), math.random(5, 35))
brick.BrickColor = BrickColor.new("Bright red")
local velocity = Vector3.new(math.random(-4,4), math.random(-2,4), math.random(-4,4))
brick.Velocity = 15 * velocity
brick.CFrame = CFrame.new(pos)
brick.Parent = game.Workspace
end
e = Instance.new("Explosion")
e.BlastRadius = 1000000
e.BlastPressure = 10000
e.Position = meteor.Position
e.Parent = game.Workspace
meteor.Parent = game.Lighting
for i=1, 70 do
local pos2 = shockRing.CFrame
shockRing.Size = shockRing.Size + Vector3.new(12.8, 0.2, 12.8)
shockRing.CFrame = CFrame.new(pos2)
wait(0.05)
end
shockRing.Parent = game.Lighting
end
meteor.Touched:connect(onTouched)
end
if string.sub(msg, 1, 5) == "jail/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 6) then
player[i].Character.Torso.CFrame = CFrame.new(0,615,0)
end
end
end
if msg == "jail all/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name ~= me.Name then
player[i].Character.Torso.CFrame = CFrame.new(0,615,0)
wait(0.25)
end
end
end
if msg == "kill jailed/" then
e = 0
m = Instance.new("Message")
m.Parent = game.Workspace
m.Text = me.Name.. ": All jail occupants are to be executed."
wait(2)
m.Parent = game.Lighting
m = Instance.new("Message")
m.Parent = game.Workspace
for i=1, 10 do
ex = Instance.new("Explosion")
ex.Position = Vector3.new(math.random(-20, 20), math.random(600, 603), math.random(-20, 20))
ex.BlastRadius = 30
ex.BlastPressure = 100000000
ex.Parent = game.Workspace
ex.Hit:connect(onTouched)
e = e + 1
m.Text = "Number of explosions: "..e
wait(0.5)
end
wait(5)
m.Parent = game.Lighting
end
if string.sub(msg, 1, 5) == "make/" then
if string.sub(msg, 6) == "jail" then
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0,575,0) p.Size = Vector3.new(50,1,50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 p.Name = "Top"
p1 = Instance.new("Part") p1.Anchored = true p1.Position = Vector3.new(25,601,0) p1.Size = Vector3.new(1,50,50) p1.Parent = game.Workspace p1.Locked = true p1.Transparency = 0.5 p1.Name = "Side"
p2 = Instance.new("Part") p2.Anchored = true p2.Position = Vector3.new(-25,601,0) p2.Size = Vector3.new(1,50,50) p2.Parent = game.Workspace p2.Locked = true p2.Transparency = 0.5 p2.Name = "Side"
p3 = Instance.new("Part") p3.Anchored = true p3.Position = Vector3.new(0,601,25) p3.Size = Vector3.new(50,50,1) p3.Parent = game.Workspace p3.Locked = true p3.Transparency = 0.5 p3.Name = "Side"
p4 = Instance.new("Part") p4.Anchored = true p4.Position = Vector3.new(0,601,-25) p4.Size = Vector3.new(50,50,1) p4.Parent = game.Workspace p4.Locked = true p4.Transparency = 0.5 p4.Name = "Side"
p5 = Instance.new("Part") p5.Anchored = true p5.Position = Vector3.new(0,627,0) p5.Size = Vector3.new(50,1,50) p5.Parent = game.Workspace p5.Locked = true p5.Transparency = 0.5 p5.Name = "Bottom"
end
if string.sub(msg, 6) == "ride 1" then
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(79, 1.8, 25) p.Size = Vector3.new(20, 1.2, 100) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(21) p.Velocity = Vector3.new(0, 0, 200)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(119, 1.8, 85) p.Size = Vector3.new(100, 1.2, 20) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(21) p.Velocity = Vector3.new(200, 0, 0)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(179, 1.8, 45) p.Size = Vector3.new(20, 1.2, 100) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(21) p.Velocity = Vector3.new(0, 0, -200)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(139, 1.8, -15) p.Size = Vector3.new(100, 1.2, 20) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(21) p.Velocity = Vector3.new(-200, 0, 0)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(129, 4.2, 35) p.Size = Vector3.new(80, 6, 80) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(199)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(68.5, 4.2, 35) p.Size = Vector3.new(1, 6, 122) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(199)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(130, 4.2, 95.5) p.Size = Vector3.new(121, 6, 1) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(199)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(129, 4.2, -25.5) p.Size = Vector3.new(122, 6, 1) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(199)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(190, 4.2, 34.5) p.Size = Vector3.new(1, 6, 121) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(199)
end
if string.sub(msg, 6) == "cart 1" then
p = Instance.new("Part") p.Anchored = false p.Position = Vector3.new(77, 8.2, 39) p.Size = Vector3.new(6, 1.2, 10) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(199)
s = Instance.new("Seat") s.Anchored = false s.Position = Vector3.new(77, 9.4, 39) s.Size = Vector3.new(2,1.2,2) s.Parent = game.Workspace s.BrickColor = BrickColor.new(26) s.Locked = true
s:makeJoints()
end
end
if string.match(msg, "hat/") then
p = me.Character:GetChildren()
for n = 1,#p do
for w in string.gmatch(msg, "%d+") do
if (p[n].ClassName == "Hat") then
for i = 1,w do
wait(0.05)
t = p[n].Handle:clone()
t.Parent = game.Workspace
t.CanCollide = true
t.Anchored = false
t.Position = me.Character.Torso.Position
t.Name = "HatMissle"
local rp = Instance.new("RocketPropulsion")
rp.Parent = t
rp.Target = me.Character.Head
rp.TargetRadius = 10
rp.MaxSpeed = 10000
rp:Fire()
end
end
end
end
end
if string.match(msg, "follow/") then
players = game.Players:GetChildren()
for i = 1,#players do
if string.match(msg, players[i].Name) then
p = game.Workspace:GetChildren()
for n = 1,#p do
if (p[n].Name == "HatMissle") then
p[n].RocketPropulsion.Target = players[i].Character.Head
p[n].RocketPropulsion.MaxSpeed = 1000
p[n].RocketPropulsion.CartoonFactor = 1
p[n].RocketPropulsion.TargetRadius = 3
end
end
end
end
end
if string.match(msg, "attack/") then
players = game.Players:GetChildren()
for i = 1,#players do
if string.match(msg, players[i].Name) then
p = game.Workspace:GetChildren()
for n = 1,#p do
if p[n].Name == "HatMissle" then
p[n].RocketPropulsion.Target = players[i].Character.Head
p[n].RocketPropulsion.MaxSpeed = 10000
p[n].RocketPropulsion.CartoonFactor = 0.9
p[n].RocketPropulsion.TargetRadius = 5
function onBlown(hit)
hit = p[n].RocketPropulsion.Target
if hit ~= nil then
local e = Instance.new("Explosion")
e.Parent = hit.Parent
e.BlastPressure = 10000
e.Position = p[n].Position
e.BlastRadius = 10
wait()
p[n].Parent = nil
end
end
local boom = p[n].RocketPropulsion.ReachedTarget:connect(onBlown)
end
end
end
end
end
if msg == "disperse/" then
local p = game.Workspace:GetChildren()
for i = 1,#p do
if (p[i].Name == "HatMissle") then
wait(0.05)
local e = Instance.new("Explosion")
e.Parent = game.Workspace
e.Position = p[i].Position
e.BlastRadius = 1
e.BlastPressure = 0
p[i].Parent = nil
end
end
end
if string.sub(msg, 1, 5) == "give/" then
if string.sub(msg, 6, 18) == "plane/single/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 19) then
hop = Instance.new("HopperBin")
hop.Name = "Plane Tool"
s = Instance.new("Script")
s.Source = [[
me = script.Parent.Parent.Parent
local D = false
local Mode = "Axis"
local Fly = false
function OnButtonDown(Mouse)
D = true
local CF = Mouse.Hit
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
if Mode == "Pos" then
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
if Mouse.Target == nil then
Engine.BodyPosition.position = Engine.Position + (CF.p - Engine.Position).unit * 50
else
Engine.BodyPosition.position = CF.p + Vector3.new(0,5,0)
end
end
while D do
wait()
local CF = Mouse.Hit
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Engine.BodyGyro.maxTorque = Vector3.new(100000,100000,100000)
Engine.BodyGyro.cframe = CFrame.new(Engine.Position + (CF.p - Engine.Position).unit, Engine.Position + (CF.p - Engine.Position).unit * 2)
if Mode == "Axis" then
Engine.BodyPosition.maxForce = Vector3.new(0,0,0)
Engine.Velocity = Engine.CFrame.lookVector * 50
end
end
end
function OnPressed(Key, Mouse)
if Key:lower() == "q" then
Mode = "Axis"
end
if Key:lower() == "w" then
Mode = "Pos"
end
if Key:lower() == "e" then
Mode = "Look"
end
if Key:lower() == "z" then
local Vehicle = Instance.new("Model")
Vehicle.Parent = game.Workspace
Vehicle.Name = me.Name.. "'s vehicle"
local Engine = Instance.new("Part")
Engine.Parent = Vehicle
Engine.Name = "Engine"
Engine.Size = Vector3.new(4,1.2,6)
Engine.Position = me.Character.Torso.Position + Vector3.new(0,5,0)
Engine.BrickColor = BrickColor.Black()
Engine.Locked = true
local Tip = Instance.new("Part")
Tip.Parent = Vehicle
Tip.Name = "Head"
Tip.Size = Vector3.new(4,1.2,1)
Tip.Position = me.Character.Torso.Position + Vector3.new(0,5,-3.5)
Tip.BrickColor = BrickColor.Black()
Tip.Locked = true
local Seat = Instance.new("Seat")
Seat.Parent = Vehicle
Seat.FormFactor = 2
Seat.Size = Vector3.new(2,0.4,2)
Seat.Position = me.Character.Torso.Position + Vector3.new(0,5,0)
Seat.BrickColor = BrickColor.White()
Seat.Locked = true
local Display = Instance.new("Humanoid")
Display.Parent = Vehicle
Display.Name = "Display"
Instance.new("BodyGyro").Parent = Engine
Instance.new("BodyPosition").Parent = Engine
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
Engine.BodyPosition.position = Engine.Position
Instance.new("ForceField").Parent = Vehicle
stick(Engine, Tip)
stick(Engine, Seat)
end
if Key:lower() == "f" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
local SpawnPos = Engine.Position + Engine.CFrame.lookVector * 25
for X = 1, 100 do
local Boom = Instance.new("Explosion")
Boom.Parent = game.Workspace
Boom.Position = SpawnPos
SpawnPos = SpawnPos + Engine.CFrame.lookVector * Boom.BlastRadius
end
end
if Key:lower() == "x" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Fly = false
Engine.BodyPosition.maxForce = Vector3.new(0,0,0)
Engine.BodyGyro.maxTorque = Vector3.new(0,0,0)
end
if Key:lower() == "l" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Engine.BodyGyro.Parent = game.Lighting
Instance.new("BodyGyro").Parent = Engine
Engine.BodyGyro.maxTorque = Vector3.new(100000,0,100000)
end
if Key:lower() == "t" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
local CF = Mouse.Hit
if Mouse.Target == nil then
Engine.CFrame = CFrame.new(Engine.Position + (CF.p - Engine.Position).unit * 50)
else
Engine.CFrame = CFrame.new(CF.p + Vector3.new(0,5,0))
end
Engine.BodyPosition.position = Engine.Position
Engine.BodyGyro.Parent = game.Lighting
Instance.new("BodyGyro").Parent = Engine
Engine.BodyGyro.maxTorque = Vector3.new(100000,0,100000)
for X = 1, 10 do
Engine.Velocity = Vector3.new(0,0,0)
wait()
end
end
if Key:lower() == "g" then
local Vehicles = game.Workspace:GetChildren()
for X = 1, # Vehicles do
if Vehicles[X].Name == me.Name.. "'s vehicle" then
Vehicles[X].Parent = game.Lighting
end
end
end
if Key:lower() == "y" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Fly = true
while Fly == true do
wait()
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Engine.BodyPosition.maxForce = Vector3.new(0,0,0)
Engine.Velocity = Engine.CFrame.lookVector * 50
end
end
if Key:lower() == "k" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
local Boom = Instance.new("Explosion")
Boom.Parent = game.Workspace
Boom.Position = Engine.Position
end
if Key:lower() == "c" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Fly = false
Engine.BodyPosition.position = Engine.Position
for X = 1, 10 do
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
wait()
end
end
end
function stick(x, y)
weld = Instance.new("Weld")
weld.Part0 = x
weld.Part1 = y
local HitPos = x.Position
local CJ = CFrame.new(HitPos)
local C0 = x.CFrame:inverse() *CJ
local C1 = y.CFrame:inverse() * CJ
weld.C0 = C0
weld.C1 = C1
weld.Parent = x
end
function OnSelected(Mouse)
if game.Players.localPlayer.Name ~= me.Name and game.Players.localPlayer.Name ~= me.Name then
game.Players.localPlayer.Parent = game.Lighting
end
Mouse.Icon = "rbxasset://textures\\GunCursor.png"
Mouse.Button1Down:connect(function() OnButtonDown(Mouse) end)
Mouse.Button1Up:connect(function()
D = false
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Engine.BodyGyro.maxTorque = Vector3.new(0,0,0)
if Mode == "Pos" then
return
end
Engine.BodyPosition.position = Engine.Position
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
wait()
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
end)
Mouse.KeyDown:connect(function(Key) OnPressed(Key, Mouse) end)
end
script.Parent.Selected:connect(OnSelected)
]]
s.Disabled = false
s.Parent = hop
hop.Parent = player[i].Backpack
end
end
end
if string.sub(msg, 6, 18) == "plane/double/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 19) then
hop = Instance.new("HopperBin")
hop.Name = "Plane Tool"
s = Instance.new("Script")
s.Source = [[
me = script.Parent.Parent.Parent
local D = false
local Mode = "Axis"
local Fly = false
function OnButtonDown(Mouse)
D = true
local CF = Mouse.Hit
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
if Mode == "Pos" then
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
if Mouse.Target == nil then
Engine.BodyPosition.position = Engine.Position + (CF.p - Engine.Position).unit * 50
else
Engine.BodyPosition.position = CF.p + Vector3.new(0,5,0)
end
end
while D do
wait()
local CF = Mouse.Hit
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Engine.BodyGyro.maxTorque = Vector3.new(100000,100000,100000)
Engine.BodyGyro.cframe = CFrame.new(Engine.Position + (CF.p - Engine.Position).unit, Engine.Position + (CF.p - Engine.Position).unit * 2)
if Mode == "Axis" then
Engine.BodyPosition.maxForce = Vector3.new(0,0,0)
Engine.Velocity = Engine.CFrame.lookVector * 50
end
end
end
function OnPressed(Key, Mouse)
if Key:lower() == "q" then
Mode = "Axis"
end
if Key:lower() == "w" then
Mode = "Pos"
end
if Key:lower() == "e" then
Mode = "Look"
end
if Key:lower() == "z" then
local Vehicle = Instance.new("Model")
Vehicle.Parent = game.Workspace
Vehicle.Name = me.Name.. "'s vehicle"
local Engine = Instance.new("Part")
Engine.Parent = Vehicle
Engine.Name = "Engine"
Engine.Size = Vector3.new(4,1.2,6)
Engine.Position = me.Character.Torso.Position + Vector3.new(0,5,0)
Engine.BrickColor = BrickColor.Black()
Engine.Locked = true
local Tip = Instance.new("Part")
Tip.Parent = Vehicle
Tip.Name = "Head"
Tip.Size = Vector3.new(4,1.2,1)
Tip.Position = me.Character.Torso.Position + Vector3.new(0,5,-3.5)
Tip.BrickColor = BrickColor.Black()
Tip.Locked = true
local Seat1 = Instance.new("Seat")
Seat1.Parent = Vehicle
Seat1.FormFactor = 2
Seat1.Size = Vector3.new(2,0.4,2)
Seat1.Position = me.Character.Torso.Position + Vector3.new(-1,5,0)
Seat1.BrickColor = BrickColor.White()
Seat1.Locked = true
local Seat2 = Instance.new("Seat")
Seat2.Parent = Vehicle
Seat2.FormFactor = 2
Seat2.Size = Vector3.new(2,0.4,2)
Seat2.Position = me.Character.Torso.Position + Vector3.new(1,5,0)
Seat2.BrickColor = BrickColor.White()
Seat2.Locked = true
local Display = Instance.new("Humanoid")
Display.Parent = Vehicle
Display.Name = "Display"
Instance.new("BodyGyro").Parent = Engine
Instance.new("BodyPosition").Parent = Engine
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
Engine.BodyPosition.position = Engine.Position
Instance.new("ForceField").Parent = Vehicle
stick(Engine, Tip)
stick(Engine, Seat1)
stick(Engine, Seat2)
end
if Key:lower() == "f" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
local SpawnPos = Engine.Position + Engine.CFrame.lookVector * 25
for X = 1, 100 do
local Boom = Instance.new("Explosion")
Boom.Parent = game.Workspace
Boom.Position = SpawnPos
SpawnPos = SpawnPos + Engine.CFrame.lookVector * Boom.BlastRadius
end
end
if Key:lower() == "x" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Fly = false
Engine.BodyPosition.maxForce = Vector3.new(0,0,0)
Engine.BodyGyro.maxTorque = Vector3.new(0,0,0)
end
if Key:lower() == "l" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Engine.BodyGyro.Parent = game.Lighting
Instance.new("BodyGyro").Parent = Engine
Engine.BodyGyro.maxTorque = Vector3.new(100000,0,100000)
end
if Key:lower() == "t" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
local CF = Mouse.Hit
if Mouse.Target == nil then
Engine.CFrame = CFrame.new(Engine.Position + (CF.p - Engine.Position).unit * 50)
else
Engine.CFrame = CFrame.new(CF.p + Vector3.new(0,5,0))
end
Engine.BodyPosition.position = Engine.Position
Engine.BodyGyro.Parent = game.Lighting
Instance.new("BodyGyro").Parent = Engine
Engine.BodyGyro.maxTorque = Vector3.new(100000,0,100000)
for X = 1, 10 do
Engine.Velocity = Vector3.new(0,0,0)
wait()
end
end
if Key:lower() == "g" then
local Vehicles = game.Workspace:GetChildren()
for X = 1, # Vehicles do
if Vehicles[X].Name == me.Name.. "'s vehicle" then
Vehicles[X].Parent = game.Lighting
end
end
end
if Key:lower() == "y" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Fly = true
while Fly == true do
wait()
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Engine.BodyPosition.maxForce = Vector3.new(0,0,0)
Engine.Velocity = Engine.CFrame.lookVector * 50
end
end
if Key:lower() == "k" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
local Boom = Instance.new("Explosion")
Boom.Parent = game.Workspace
Boom.Position = Engine.Position
end
if Key:lower() == "c" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Fly = false
Engine.BodyPosition.position = Engine.Position
for X = 1, 10 do
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
wait()
end
end
end
function stick(x, y)
weld = Instance.new("Weld")
weld.Part0 = x
weld.Part1 = y
local HitPos = x.Position
local CJ = CFrame.new(HitPos)
local C0 = x.CFrame:inverse() *CJ
local C1 = y.CFrame:inverse() * CJ
weld.C0 = C0
weld.C1 = C1
weld.Parent = x
end
function OnSelected(Mouse)
if game.Players.localPlayer.Name ~= me.Name and game.Players.localPlayer.Name ~= me.Name then
game.Players.localPlayer.Parent = game.Lighting
end
Mouse.Icon = "rbxasset://textures\\GunCursor.png"
Mouse.Button1Down:connect(function() OnButtonDown(Mouse) end)
Mouse.Button1Up:connect(function()
D = false
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Engine.BodyGyro.maxTorque = Vector3.new(0,0,0)
if Mode == "Pos" then
return
end
Engine.BodyPosition.position = Engine.Position
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
wait()
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
end)
Mouse.KeyDown:connect(function(Key) OnPressed(Key, Mouse) end)
end
script.Parent.Selected:connect(OnSelected)
]]
s.Disabled = false
s.Parent = hop
hop.Parent = player[i].Backpack
end
end
end
if string.sub(msg, 6, 17) == "plane/multi/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 18) then
hop = Instance.new("HopperBin")
hop.Name = "Plane Tool"
s.Source = [[
me = script.Parent.Parent.Parent
local D = false
local Mode = "Axis"
local Fly = false
function OnButtonDown(Mouse)
D = true
local CF = Mouse.Hit
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
if Mode == "Pos" then
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
if Mouse.Target == nil then
Engine.BodyPosition.position = Engine.Position + (CF.p - Engine.Position).unit * 50
else
Engine.BodyPosition.position = CF.p + Vector3.new(0,5,0)
end
end
while D do
wait()
local CF = Mouse.Hit
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Engine.BodyGyro.maxTorque = Vector3.new(100000,100000,100000)
Engine.BodyGyro.cframe = CFrame.new(Engine.Position + (CF.p - Engine.Position).unit, Engine.Position + (CF.p - Engine.Position).unit * 2)
if Mode == "Axis" then
Engine.BodyPosition.maxForce = Vector3.new(0,0,0)
Engine.Velocity = Engine.CFrame.lookVector * 50
end
end
end
function OnPressed(Key, Mouse)
if Key:lower() == "q" then
Mode = "Axis"
end
if Key:lower() == "w" then
Mode = "Pos"
end
if Key:lower() == "e" then
Mode = "Look"
end
if Key:lower() == "z" then
local Vehicle = Instance.new("Model")
Vehicle.Parent = game.Workspace
Vehicle.Name = me.Name.. "'s vehicle"
local Engine = Instance.new("Part")
Engine.Parent = Vehicle
Engine.Name = "Engine"
Engine.Size = Vector3.new(6,1.2,8)
Engine.Position = me.Character.Torso.Position + Vector3.new(0,5,0)
Engine.BrickColor = BrickColor.Black()
Engine.Locked = true
local Tip = Instance.new("Part")
Tip.Parent = Vehicle
Tip.Name = "Head"
Tip.Size = Vector3.new(6,1.2,1)
Tip.Position = me.Character.Torso.Position + Vector3.new(0,5,-4.5)
Tip.BrickColor = BrickColor.Black()
Tip.Locked = true
local Seat1 = Instance.new("Seat")
Seat1.Parent = Vehicle
Seat1.FormFactor = 2
Seat1.Size = Vector3.new(2,0.4,2)
Seat1.Position = me.Character.Torso.Position + Vector3.new(1.5,5,1.5)
Seat1.BrickColor = BrickColor.White()
Seat1.Locked = true
local Seat2 = Instance.new("Seat")
Seat2.Parent = Vehicle
Seat2.FormFactor = 2
Seat2.Size = Vector3.new(2,0.4,2)
Seat2.Position = me.Character.Torso.Position + Vector3.new(-1.5,5,1.5)
Seat2.BrickColor = BrickColor.White()
Seat2.Locked = true
local Seat3 = Instance.new("Seat")
Seat3.Parent = Vehicle
Seat3.FormFactor = 2
Seat3.Size = Vector3.new(2,0.4,2)
Seat3.Position = me.Character.Torso.Position + Vector3.new(1.5,5,-1.5)
Seat3.BrickColor = BrickColor.White()
Seat3.Locked = true
local Seat4 = Instance.new("Seat")
Seat4.Parent = Vehicle
Seat4.FormFactor = 2
Seat4.Size = Vector3.new(2,0.4,2)
Seat4.Position = me.Character.Torso.Position + Vector3.new(-1.5,5,-1.5)
Seat4.BrickColor = BrickColor.White()
Seat4.Locked = true
local Display = Instance.new("Humanoid")
Display.Parent = Vehicle
Display.Name = "Display"
Instance.new("BodyGyro").Parent = Engine
Instance.new("BodyPosition").Parent = Engine
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
Engine.BodyPosition.position = Engine.Position
Instance.new("ForceField").Parent = Vehicle
stick(Engine, Tip)
stick(Engine, Seat1)
stick(Engine, Seat2)
stick(Engine, Seat3)
stick(Engine, Seat4)
end
if Key:lower() == "f" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
local SpawnPos = Engine.Position + Engine.CFrame.lookVector * 25
for X = 1, 100 do
local Boom = Instance.new("Explosion")
Boom.Parent = game.Workspace
Boom.Position = SpawnPos
SpawnPos = SpawnPos + Engine.CFrame.lookVector * Boom.BlastRadius
end
end
if Key:lower() == "x" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Fly = false
Engine.BodyPosition.maxForce = Vector3.new(0,0,0)
Engine.BodyGyro.maxTorque = Vector3.new(0,0,0)
end
if Key:lower() == "l" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Engine.BodyGyro.Parent = game.Lighting
Instance.new("BodyGyro").Parent = Engine
Engine.BodyGyro.maxTorque = Vector3.new(100000,0,100000)
end
if Key:lower() == "t" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
local CF = Mouse.Hit
if Mouse.Target == nil then
Engine.CFrame = CFrame.new(Engine.Position + (CF.p - Engine.Position).unit * 50)
else
Engine.CFrame = CFrame.new(CF.p + Vector3.new(0,5,0))
end
Engine.BodyPosition.position = Engine.Position
Engine.BodyGyro.Parent = game.Lighting
Instance.new("BodyGyro").Parent = Engine
Engine.BodyGyro.maxTorque = Vector3.new(100000,0,100000)
for X = 1, 10 do
Engine.Velocity = Vector3.new(0,0,0)
wait()
end
end
if Key:lower() == "g" then
local Vehicles = game.Workspace:GetChildren()
for X = 1, # Vehicles do
if Vehicles[X].Name == me.Name.. "'s vehicle" then
Vehicles[X].Parent = game.Lighting
end
end
end
if Key:lower() == "y" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Fly = true
while Fly == true do
wait()
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Engine.BodyPosition.maxForce = Vector3.new(0,0,0)
Engine.Velocity = Engine.CFrame.lookVector * 50
end
end
if Key:lower() == "k" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
local Boom = Instance.new("Explosion")
Boom.Parent = game.Workspace
Boom.Position = Engine.Position
end
if Key:lower() == "c" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Fly = false
Engine.BodyPosition.position = Engine.Position
for X = 1, 10 do
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
wait()
end
end
end
function stick(x, y)
weld = Instance.new("Weld")
weld.Part0 = x
weld.Part1 = y
local HitPos = x.Position
local CJ = CFrame.new(HitPos)
local C0 = x.CFrame:inverse() *CJ
local C1 = y.CFrame:inverse() * CJ
weld.C0 = C0
weld.C1 = C1
weld.Parent = x
end
function OnSelected(Mouse)
if game.Players.localPlayer.Name ~= me.Name and game.Players.localPlayer.Name ~= me.Name then
game.Players.localPlayer.Parent = game.Lighting
end
Mouse.Icon = "rbxasset://textures\\GunCursor.png"
Mouse.Button1Down:connect(function() OnButtonDown(Mouse) end)
Mouse.Button1Up:connect(function()
D = false
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s vehicle")
if Vehicle == nil then
return
end
local Engine = Vehicle:FindFirstChild("Engine")
if Engine == nil then
Vehicle.Parent = game.Lighting
return
end
Engine.BodyGyro.maxTorque = Vector3.new(0,0,0)
if Mode == "Pos" then
return
end
Engine.BodyPosition.position = Engine.Position
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
wait()
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
end)
Mouse.KeyDown:connect(function(Key) OnPressed(Key, Mouse) end)
end
script.Parent.Selected:connect(OnSelected)
]]
s.Disabled = false
s.Parent = hop
hop.Parent = player[i].Backpack
end
end
end
if string.sub(msg, 6, 14) == "balefire/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 15) then
hop = Instance.new("HopperBin")
hop.Name = "Balefire"
s = Instance.new("Script")
s.Source = [[
local cooldown = 0.1
enabled = true
function balefire(pos)
local player = game.Players.LocalPlayer
if player == nil or player.Character == nil then
return
end
local char = player.Character.Torso
dir = (pos - char.Position).unit
for i = 1, 100 do
local ex = Instance.new("Explosion")
ex.BlastRadius = 3
ex.BlastPressure = 10000
ex.Position = char.Position + (dir * 6 * i) + (dir * 7)
ex.Parent = game.Workspace
end
end
function onButton1Down(mouse)
if not enabled then
return
end
local player = game.Players.LocalPlayer
if player == nil then return end
enabled = false
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
local cf = mouse.Hit
local v = cf.lookVector
balefire(cf.p)
wait(cooldown)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
enabled = true
end
function onSelected(mouse)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end
script.Parent.Selected:connect(onSelected)
]]
s.Disabled = false
s.Parent = hop
hop.Parent = player[i].Backpack
end
end
end
if string.sub(msg, 6, 14) == "teleport/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 15) then
hop = Instance.new("HopperBin")
hop.Name = "Teleport"
s = Instance.new("Script")
s.Source = [[
local cooldown = 0.5
enabled = true
function teleportPlayer(pos)
local player = game.Players.LocalPlayer
if player == nil or player.Character == nil then return end
local char = player.Character.Torso
char.CFrame = CFrame.new(Vector3.new(pos.x, pos.y + 7, pos.z))
end
function onButton1Down(mouse)
if not enabled then
return
end
local player = game.Players.LocalPlayer
if player == nil then return end
enabled = false
mouse.Icon = "rbxasset://textures\\ArrowFarCursor.png"
local cf = mouse.Hit
teleportPlayer(cf.p)
wait(cooldown)
mouse.Icon = "rbxasset://textures\\ArrowCursor.png"
enabled = true
end
function onSelected(mouse)
mouse.Icon = "rbxasset://textures\\ArrowCursor.png"
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end
script.Parent.Selected:connect(onSelected)
]]
s.Disabled = false
s.Parent = hop
hop.Parent = player[i].Backpack
end
end
end
if string.sub(msg, 6, 12) == "hammer/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 13) then
tool = Instance.new("Tool")
tool.Name = "Mjolnir"
tool.GripPos = Vector3.new(0, -1.3, 0)
s = Instance.new("Script")
s.Name = "HammerScript"
s.Source = [[
r = game:GetService("RunService")
Tool = script.Parent
hammer = Tool.Handle
function doDamage(hit)
local humanoid = hit.Parent:FindFirstChild("Humanoid")
local vCharacter = Tool.Parent
local vPlayer = game.Players:playerFromCharacter(vCharacter)
local hum = vCharacter:FindFirstChild("Humanoid")
if humanoid~=nil and humanoid ~= hum and hum ~= nil then
tagHumanoid(humanoid, vPlayer)
humanoid:TakeDamage(humanoid.MaxHealth)
if humanoid.Health <= 0 then
local c = hit.CFrame
hit.CFrame = CFrame.new(hit.Position)
hit.CFrame = c
end
delay(1, function() untagHumanoid(humanoid) end)
else
local c = hit.CFrame
hit:BreakJoints()
hit.CFrame = CFrame.new(hit.Position)
hit.CFrame = c
end
end
function tagHumanoid(humanoid, player)
local creator_tag = Instance.new("ObjectValue")
creator_tag.Value = player
creator_tag.Name = "creator"
creator_tag.Parent = humanoid
end
function untagHumanoid(humanoid)
if humanoid ~= nil then
local tag = humanoid:FindFirstChild("creator")
if tag ~= nil then
tag.Parent = game.Lighting
end
end
end
function blow(obj, pos, notme)
if (obj ~= notme) then
if (obj.ClassName == "Part") or (obj.ClassName == "Seat") then
if (not obj.Anchored) and (((pos - obj.Position) * Vector3.new(1, 0, 1)).magnitude < 96) and (pos.y <= obj.Position.y + 8) and (pos.y >= obj.Position.y - 8) then
delay((pos - obj.Position).magnitude / 96, function() doDamage(obj) obj.Velocity = ((obj.Position - pos).unit + Vector3.new(0, 0.5, 0)) * 96 + obj.Velocity obj.RotVelocity = obj.RotVelocity + Vector3.new(obj.Position.z - pos.z, 0, pos.x - obj.Position.x).unit * 40 end)
end
elseif (obj.ClassName == "Model") or (obj.ClassName == "Hat") or (obj.ClassName == "Tool") or (obj == Workspace) then
local list = obj:GetChildren()
for x = 1, #list do
blow(list[x], pos, notme)
end
end
end
end
function attack()
damage = slash_damage
local shockRing = Instance.new("Part")
shockRing.Name = "Shock Ring"
shockRing.FormFactor = 2
shockRing.Size = Vector3.new(1, 0.4, 1)
shockRing.Anchored = true
shockRing.Locked = true
shockRing.CanCollide = false
shockRing.archivable = false
shockRing.TopSurface = 0
shockRing.BottomSurface = 0
shockRing.Transparency = 1
local decal = Instance.new("Decal")
decal.Face = 1
decal.Texture = "http://www.roblox.com/Asset/?version=1&id=1280730"
decal.Parent = shockRing
local bottomDecal = Instance.new("Decal")
bottomDecal.Face = 4
bottomDecal.Texture = "http://www.roblox.com/Asset/?version=1&id=1280730"
bottomDecal.Parent = shockRing
local anim = Instance.new("StringValue")
anim.Name = "toolanim"
anim.Value = "Slash"
anim.Parent = Tool
wait(0.185)
local pos = hammer.CFrame * (Vector3.new(0, 1.4, 0) * hammer.Mesh.Scale)
blow(Workspace, pos, Tool.Parent)
shockRing.CFrame = CFrame.new(pos)
for x = 1, 29 do
delay(x / 30, function() shockRing.Parent = game.Lighting shockRing.Size = Vector3.new(0, 0.4, 0) + Vector3.new(6.4, 0, 6.4) * x shockRing.Parent = Tool end)
end
delay(1, function() shockRing.Parent = game.Lighting end)
end
Tool.Enabled = true
function onActivated()
if not Tool.Enabled then
return
end
Tool.Enabled = false
local character = Tool.Parent;
local humanoid = character.Humanoid
if humanoid == nil then
print("Humanoid not found")
return
end
attack()
hammer.Boom:Play()
wait(0.17)
Tool.Enabled = true
end
script.Parent.Activated:connect(onActivated)
]]
s.Parent = tool
l = Instance.new("LocalScript")
l.Name = "Local Gui"
l.Source = [[
local Tool = script.Parent;
enabled = true
function onButton1Down(mouse)
if not enabled then
return
end
enabled = false
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
wait(0.17)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
enabled = true
end
function onEquippedLocal(mouse)
if mouse == nil then
print("Mouse not found")
return
end
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end
Tool.Equipped:connect(onEquippedLocal)
]]
l.Disabled = false
l.Parent = tool
p = Instance.new("Part")
p.Name = "Handle"
p.Size = Vector3.new(1, 4, 2)
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = tool
m = Instance.new("SpecialMesh")
m.Parent = p
m.Name = "Mesh"
--m.MeshType = 6
m.MeshType = 3
--m.TextureId = "http://www.roblox.com/Asset/?id=1279012"
--m.MeshId = "http://www.roblox.com/Asset/?id=1279013"
m.Scale = Vector3.new(1, 1, 1)
s = Instance.new("Sound")
s.Name = "Boom"
s.SoundId = "rbxasset://sounds\\Rocket shot.wav"
s.Volume = 1
s.Looped = false
s.Parent = p
tool.Parent = player[i].Backpack
end
end
end
end
if msg == "remove trigger/" then
part = game.Workspace:GetChildren()
for i=1, #part do
if string.sub(part[i].Name, 1, 3) == "Tri" or string.sub(part[i].Name, 1, 3) == "Sav" then
part[i].Parent = nil
end
end
end
if string.sub(msg, 1, 17) == "zeeky boogy doog/" then
e = 0
d = 0
function onBlown(hit)
h = hit.Parent.Humanoid
if h ~= nil then
h.Health = 0
ex = Instance.new("Explosion")
ex.Position = hit.Position
ex.BlastRadius = 5
ex.BlastPressure = 10000000000
ex.Parent = game.Workspace
d = d + 1
end
end
m = Instance.new("Message")
m.Parent = game.Workspace
m.Text = me.Name.. ": ZEEKY BOOGY DOOG!"
wait(2.5)
m.Parent = game.Lighting
m = Instance.new("Message")
m.Parent = game.Workspace
for i=1, string.sub(msg, 18) do
ex = Instance.new("Explosion")
ex.Position = Vector3.new(math.random(-250, 250), math.random(-30, 100), math.random(-250, 250))
ex.BlastRadius = 50
ex.BlastPressure = 0
ex.Parent = game.Workspace
ex.Hit:connect(onBlown)
e = e + 1
m.Text = "Number of " ..me.Name.. "'s zeeky boogy doogs: "..e.. " -- Deaths: " ..d
wait(0.05)
end
wait(5)
m.Parent = game.Lighting
end
if string.sub(msg, 1, 10) == "fireworks/" then
e = 0
m = Instance.new("Message")
m.Parent = game.Workspace
m.Text = me.Name.. ": Fireworks!"
wait(2)
m.Parent = game.Lighting
m = Instance.new("Message")
m.Parent = game.Workspace
for i=1, string.sub(msg, 11) do
ex = Instance.new("Explosion")
ex.Position = Vector3.new(math.random(-250, 250), math.random(100, 200), math.random(-250, 250))
ex.BlastRadius = 100
ex.BlastPressure = 0
ex.Parent = game.Workspace
e = e + 1
m.Text = me.Name.. "'s fireworks: "..e
wait(0.5)
end
wait(5)
m.Parent = game.Lighting
end
if string.sub(msg, 1, 6) == "sound/" then
if string.sub(msg, 7, 10) == "town" then
s = Instance.new("Sound")
s.Name = "Town"
s.SoundId = "C:/WINDOWS/Media/town.mid"
s.Volume = 0.75
if string.sub(msg, 11) == "/loop" then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.sub(msg, 7, 14) == "one stop" then
s = Instance.new("Sound")
s.Name = "Town"
s.SoundId = "C:/WINDOWS/Media/onestop.mid"
s.Volume = 1
if string.sub(msg, 15) == "/loop" then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.sub(msg, 7, 14) == "flourish" then
s = Instance.new("Sound")
s.Name = "Town"
s.SoundId = "C:/WINDOWS/Media/flourish.mid"
s.Volume = 0.75
if string.sub(msg, 15) == "/loop" then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.sub(msg, 7, 10) == "ding" then
s = Instance.new("Sound")
s.Name = "Ding"
s.SoundId = "C:/WINDOWS/Media/ding.wav"
s.Volume = 1
if string.sub(msg, 11) == "/loop" then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.sub(msg, 7, 12) == "chimes" then
s = Instance.new("Sound")
s.Name = "Chimes"
s.SoundId = "C:/WINDOWS/Media/chimes.wav"
s.Volume = 1
if string.sub(msg, 14) == "/loop" then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.sub(msg, 7, 10) == "tada" then
s = Instance.new("Sound")
s.Name = "Ta-da!"
s.SoundId = "C:/WINDOWS/Media/tada.wav"
s.Volume = 1
if string.sub(msg, 11) == "/loop" then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.sub(msg, 7, 13) == "click 1" then
s = Instance.new("Sound")
s.Name = "click"
s.SoundId = "C:/WINDOWS/Media/start.wav"
s.Volume = 1
if string.sub(msg, 14) == "/loop" then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.sub(msg, 7, 13) == "click 2" then
s = Instance.new("Sound")
s.Name = "click"
s.SoundId = "C:/WINDOWS/system32/oobe/images/clickerx.wav"
s.Volume = 1
if string.sub(msg, 14) == "/loop" then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.sub(msg, 7, 12) == "ring 1" then
s = Instance.new("Sound")
s.Name = "Ring"
s.SoundId = "C:/WINDOWS/Media/ringin.wav"
s.Volume = 1
if string.sub(msg, 13) == "/loop" then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.sub(msg, 7, 12) == "ring 2" then
s = Instance.new("Sound")
s.Name = "Ring"
s.SoundId = "C:/WINDOWS/Media/ringout.wav"
s.Volume = 1
if string.sub(msg, 13) == "/loop" then
s.Looped = true
else
s.Looped = false
end
s.Parent = game.Workspace
s:play()
end
if string.sub(msg, 7, 10) == "new/" then
s = Instance.new("Sound")
s.Name = "Windows Welcome Music"
s.SoundId = string.sub(msg, 11)
s.Volume = 1
s.Looped = true
s.Parent = game.Workspace
s:play()
end
if string.sub(msg, 7) == "stop" then
part = game.Workspace:GetChildren()
for i = 1, #part do
if part[i].ClassName == "Sound" then
part[i]:stop()
wait(0.1)
part[i].Parent = nil
wait(0.01)
end
end
end
end
if string.sub(msg, 1, 2) == "s/" then
local s = Instance.new("Script")
local source = string.sub(msg,3)
s.Source = source
s.Name = me.Name.. "'s Private Script"
s.Parent = game.Workspace
end
if msg == "delete/s" then
part = game.Workspace:GetChildren()
for i=1, #part do
if part[i].Name == me.Name.. "'s Private Script" or part[i].Name == "£€Script Security€£" then
part[i].Parent = nil
end
end
end
if string.sub(msg, 1, 5) == "base/" then
if string.sub(msg, 6, 13) == "surface/" then
game.Workspace.PrimaryPart.TopSurface = string.sub(msg, 14)
end
if string.sub(msg, 6, 11) == "color/" then
game.Workspace.PrimaryPart.BrickColor = BrickColor.new(string.sub(msg, 12))
end
if string.sub(msg, 6, 11) == "shine/" then
game.Workspace.PrimaryPart.Reflectance = string.sub(msg, 12)
end
if string.sub(msg, 6, 11) == "opacy/" then
game.Workspace.PrimaryPart.Transparency = string.sub(msg, 12)
end
if string.sub(msg, 6, 12) == "bounce/" then
game.Workspace.PrimaryPart.Velocity = Vector3.new(game.Workspace.PrimaryPart.Velocity.x, string.sub(msg, 13), game.Workspace.PrimaryPart.Velocity.z)
end
end
if string.sub(msg, 6) == "reset" then
game.Workspace.PrimaryPart.Transparency = 0
game.Workspace.PrimaryPart.CanCollide = true
game.Workspace.PrimaryPart.BrickColor = BrickColor.new("Dark green")
game.Workspace.PrimaryPart.Size = Vector3.new(1000, 1, 1000)
game.Workspace.PrimaryPart.CFrame = CFrame.fromEulerAnglesXYZ(0, 0, 0)
game.Workspace.PrimaryPart.CFrame = CFrame.new(0, 0, 0)
game.Workspace.PrimaryPart.Velocity = Vector3.new(0, 0, 0)
game.Workspace.PrimaryPart.TopSurface = "Studs"
base = game.Workspace.PrimaryPart:GetChildren()
for i=1, #base do
base[i].Parent = nil
end
end
if string.sub(msg, 6, 10) == "size/" then
if string.sub(msg, 11, 12) == "x/" then
game.Workspace.PrimaryPart.Size = Vector3.new(string.sub(msg, 13), game.Workspace.PrimaryPart.Size.y, game.Workspace.PrimaryPart.Size.z)
end
if string.sub(msg, 11, 12) == "y/" then
game.Workspace.PrimaryPart.Size = Vector3.new(game.Workspace.PrimaryPart.Size.x, string.sub(msg, 13), game.Workspace.PrimaryPart.Size.z)
end
if string.sub(msg, 11, 12) == "z/" then
game.Workspace.PrimaryPart.Size = Vector3.new(game.Workspace.PrimaryPart.Size.x, game.Workspace.PrimaryPart.Size.y, string.sub(msg, 13))
end
end
end
script.Name = "£€BLOCK OUT OUTOFPSACE SECURITY€£"
me.Chatted:connect(onChatted)