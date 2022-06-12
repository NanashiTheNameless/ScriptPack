-- No tabs because the file has been passed down from multiple people whom published it in multiple mediums, one of which removed tabbing.
-- Original lost when my computer died.
-- Probably won't work, use at own risk!
-- Sincerely, Dark.

-- Edited from original because Anaminus removed this function from his Script Builder.
function Clone(obj)
if obj == nil then return nil end
return obj:clone()
end
function Remove(obj)
if obj == nil then return nil end
obj:remove()
end
function SetSource(obj, src)
if obj == nil then return nil end
if src == nil then return end
return nil
end
-- End edit.
local Commander = "DarkShadow6"
local CommanderList = { }
local Name1=Commander.."'s Commands"
local set = false
local setter = ""
local setting = ""
local scroll = false
local scrollSpeed = 2.5
local grab = ""
local object = game.Workspace
local rain = false
local disco = false
local hint = Instance.new("Hint")
local ban={"coolmamausten"}
function UpdateHint(text)
if hint ~= nil then
hint.Parent = game.Lighting
end
local hint = Instance.new("Hint")
hint.Name = "Status"
hint.Parent = game.Players[Commander]
if text ~= nil then
hint.Text = text
else
if object == game then
hint.Text = "Object: " ..object.Name
else
hint.Text = "Object: " ..object.Name.. " | Parent: " ..object.Parent.Name
end
end
end
function checkName(name)
if name == Commander then
return true
end
for i=1, #CommanderList do
if CommanderList[i] == name then
return true
end
end
end
function onChatted(msg, me)
if string.sub(msg, 1, 4) == "/sc " then
msg = string.sub(msg, 5)
end
if msg == "reset/" then
me.Character:BreakJoints()
end
if checkName(me.Name) == true then
if string.sub(msg, 1, 9) == "shout/id/" then
children = game.Workspace:GetChildren()
for i=1, #children do
if children[i].ClassName == "Message" then
children[i].Parent = game.Lighting
end
end
m = Instance.new("Message")
m.Text = me.Name.. ": " ..string.sub(msg, 10)
m.Parent = game.Workspace
wait(3)
m.Parent = game.Lighting
end
if string.sub(msg, 1, 6) == "shout/" and string.sub(msg, 7, 9) ~= "id/" then
children = game.Workspace:GetChildren()
for i=1, #children do
if children[i].ClassName == "Message" then
children[i].Parent = game.Lighting
end
end
m = Instance.new("Message")
m.Text = string.sub(msg, 7)
m.Parent = game.Workspace
wait(3)
m.Parent = game.Lighting
end
if string.sub(msg, 1, 7) == "sheild/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 8)) then
sheild = Instance.new("ForceField")
sheild.Parent = player[i].Character
end
end
end
if string.sub(msg, 1, 5) == "kill/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 6)) then
player[i].Character:BreakJoints()
end
end
end
if string.sub(msg, 1, 8) == "explode/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 9)) then
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
if string.sub(msg, 1, 5) == "leap/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 6)) then
torso = player[i].Character.Torso
torso.Velocity = Vector3.new(torso.Velocity.x *1.6, 100, torso.Velocity.z *1.6)
end
end
end
if string.sub(msg, 1, 5) == "push/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 6)) then
torso = player[i].Character.Torso
torso.Velocity = torso.CFrame.lookVector * 250
end
end
end
if msg == "leap all/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name ~= me.Name then
torso = player[i].Character.Torso
torso.Velocity = Vector3.new(torso.Velocity.x *1.6, 100, torso.Velocity.z *1.6)
end
end
end
if msg == "push all/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name ~= me.Name then
torso = player[i].Character.Torso
torso.Velocity = torso.CFrame.lookVector * 250
end
end
end
if string.sub(msg, 1, 6) == "ground/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 7)) then
torso = player[i].Character.Torso
torso.CFrame = CFrame.new(math.random(-10, 10), 5, math.random(-10, 10))
torso.Velocity = 0
end
end
end
if msg == "ground all/" then
player = game.Players:GetChildren()
for i=1, #player do
torso = player[i].Character.Torso
torso.CFrame = CFrame.new(math.random(-10, 10), 5, math.random(-10, 10))
torso.Velocity = 0
end
end
if string.sub(msg, 1, 7) == "freeze/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 8)) then
player[i].Character.Torso.Anchored = true
end
end
end
if string.sub(msg, 1, 5) == "thaw/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 6)) then
player[i].Character.Torso.Anchored = false
end
end
end
if msg == "freeze all/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Charatcer:FindFirstChild("Torso") ~= nil then
player[i].Character.Torso.Anchored = true
end
end
end
if msg == "thaw all/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Charatcer:FindFirstChild("Torso") ~= nil then
player[i].Character.Torso.Anchored = false
end
end
end
if string.sub(msg, 1, 8) == "control/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 9)) then
me.Character = player[i].Character
end
end
end
if string.sub(msg, 1, 4) == "ban/" then
player = game.Players:GetChildren()
for i=1 ,#player do
if string.match(player[i].Name, string.sub(msg, 5)) then
player[i].Character.Name = player[i].Name
player[i].Character.Parent = game.Lighting
end
end
end
if string.sub(msg, 1, 6) == "unban/" then
light = game.Lighting:GetChildren()
for i=1, #light do
if light[i].Name == string.sub(msg, 7) then
light[i].Parent = game.Workspace
end
end
end
if string.sub(msg, 1, 7) == "remove/" then
player = game.Players:GetChildren()
for i=1 ,#player do
if string.match(player[i].Name, string.sub(msg, 8)) then
player[i].Parent = nil
table.insert(ban,player[i].Name)
end
end
end
if string.sub(msg, 1, 6) == "float/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 7)) then
local b = Instance.new("BodyVelocity")
b.Parent = player[i].Character.Torso
b.velocity = Vector3.new(0,5,0)
b.maxForce = Vector3.new(0,1e+050,0)
b.Name = "Float"
player[i].Humanoid.Jump = true
end
end
end
if string.sub(msg, 1, 10) == "no float/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 11)) then
if player[i].Character.Torso:FindFirstChild("Float") ~= nil then
Remove(player[i].Character.Torso.Float)
end
end
end
end
if msg == "float all/" then
player = game.Players:GetChildren()
for i=1, #player do
local b = Instance.new("BodyVelocity")
if player[i].Character:FindFirstChild("Torso") ~= nil then
b.Parent = player[i].Character.Torso
b.velocity = Vector3.new(0,5,0)
b.maxForce = Vector3.new(0,1e+050,0)
b.Name = "Float"
player[i].Humanoid.Jump = true
end
end
end
if msg == "no float all/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Character:FindFirstChild("Torso") then
if player[i].Character.Torso:FindFirstChild("Float") ~= nil then
Remove(player[i].Character.Torso.Float)
end
end
end
end
if string.sub(msg, 1, 6) == "shock/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 7)) then
player[i].Character:BreakJoints()
character = player[i].Character
head = character:FindFirstChild("Head")
torso = character:FindFirstChild("Torso")
larm = character:FindFirstChild("Left Arm")
rarm = character:FindFirstChild("Right Arm")
lleg = character:FindFirstChild("Left Leg")
rleg = character:FindFirstChild("Right Leg")
head.Velocity = Vector3.new(0, 0, 0)
torso.Velocity = Vector3.new(0, 0, 0)
larm.Velocity = Vector3.new(0, 0, 0)
rarm.Velocity = Vector3.new(0, 0, 0)
lleg.Velocity = Vector3.new(0, 0, 0)
rleg.Velocity = Vector3.new(0, 0, 0)
if head ~= nil then
hposx = head.CFrame.x
hposy = head.CFrame.y
hposz = head.CFrame.z
end
if torso ~= nil then
tposx = torso.CFrame.x
tposy = torso.CFrame.y
tposz = torso.CFrame.z
end
if larm ~= nil then
laposx = larm.CFrame.x
laposy = larm.CFrame.y
laposz = larm.CFrame.z
end
if rarm ~= nil then
raposx = rarm.CFrame.x
raposy = rarm.CFrame.y
raposz = rarm.CFrame.z
end
if lleg ~= nil then
llposx = lleg.CFrame.x
llposy = lleg.CFrame.y
llposz = lleg.CFrame.z
end
if rleg ~= nil then
rlposx = rleg.CFrame.x
rlposy = rleg.CFrame.y
rlposz = rleg.CFrame.z
end
for x=1, 50 do
if head ~= nil then
head.CFrame = CFrame.new(hposx + math.random(1, 1), hposy + math.random(1, 1), hposz + math.random(1, 1))
end
if torso ~= nil then
torso.CFrame = CFrame.new(tposx + math.random(1, 1), tposy + math.random(1, 1), tposz + math.random(1, 1))
end
if larm ~= nil then
larm.CFrame = CFrame.new(laposx + math.random(1, 1), laposy + math.random(1, 1), laposz + math.random(1, 1))
end
if rarm ~= nil then
rarm.CFrame = CFrame.new(raposx + math.random(1, 1), raposy + math.random(1, 1), raposz + math.random(1, 1))
end
if lleg ~= nil then
lleg.CFrame = CFrame.new(llposx + math.random(1, 1), llposy + math.random(1, 1), llposz + math.random(1, 1))
end
if rleg ~= nil then
rleg.CFrame = CFrame.new(rlposx + math.random(1, 1), rlposy + math.random(1, 1), rlposz + math.random(1, 1))
end
wait(0.1)
end
end
end
end
if string.sub(msg, 1, 6) == "light/" then
if string.sub(msg, 7, 11) == "time/" then
game.Lighting.TimeOfDay = string.sub(msg, 12)
end
if string.sub(msg, 7, 12) == "shine/" then
game.Lighting.Brightness = string.sub(msg, 13)
end
if string.sub(msg, 7, 10) == "sky/" then
if string.sub(msg, 11) == "normal" then
light = game.Lighting:GetChildren()
for i=1, #light do
if light[i].ClassName == "Sky" then
Remove(light[i])
end
end
end
if string.sub(msg, 11) == "tech" then
sky = Instance.new("Sky")
sky.Name = "Sky"
sky.SkyboxBk = "http://www.roblox.com/Asset/?version=1&id=1014472"
sky.SkyboxDn = "http://www.roblox.com/Asset/?version=1&id=1014472"
sky.SkyboxFt = "http://www.roblox.com/Asset/?version=1&id=1014472"
sky.SkyboxLf = "http://www.roblox.com/Asset/?version=1&id=1014472"
sky.SkyboxRt = "http://www.roblox.com/Asset/?version=1&id=1014472"
sky.SkyboxUp = "http://www.roblox.com/Asset/?version=1&id=1014472"
sky.Parent = game.Lighting
end
if string.sub(msg, 11) == "monkey" then
sky = Instance.new("Sky")
sky.Name = "Sky"
sky.SkyboxBk = "96e7cb5748118fad3dea572b045e17c9"
sky.SkyboxDn = "96e7cb5748118fad3dea572b045e17c9"
sky.SkyboxFt = "96e7cb5748118fad3dea572b045e17c9"
sky.SkyboxLf = "96e7cb5748118fad3dea572b045e17c9"
sky.SkyboxRt = "96e7cb5748118fad3dea572b045e17c9"
sky.SkyboxUp = "96e7cb5748118fad3dea572b045e17c9"
sky.Parent = game.Lighting
end
if string.sub(msg, 11) == "rick" then
sky = Instance.new("Sky")
sky.Name = "Sky"
sky.SkyboxBk = "4acbec5a65685718e4d24de3c5f3ed4c"
sky.SkyboxDn = "4acbec5a65685718e4d24de3c5f3ed4c"
sky.SkyboxFt = "4acbec5a65685718e4d24de3c5f3ed4c"
sky.SkyboxLf = "4acbec5a65685718e4d24de3c5f3ed4c"
sky.SkyboxRt = "4acbec5a65685718e4d24de3c5f3ed4c"
sky.SkyboxUp = "4acbec5a65685718e4d24de3c5f3ed4c"
sky.Parent = game.Lighting
end
if string.sub(msg, 11) == "lava" then
sky = Instance.new("Sky")
sky.Name = "Sky"
sky.SkyboxBk = "23dbaf4e6598bafc308501deebf0b35e"
sky.SkyboxDn = "23dbaf4e6598bafc308501deebf0b35e"
sky.SkyboxFt = "23dbaf4e6598bafc308501deebf0b35e"
sky.SkyboxLf = "23dbaf4e6598bafc308501deebf0b35e"
sky.SkyboxRt = "23dbaf4e6598bafc308501deebf0b35e"
sky.SkyboxUp = "23dbaf4e6598bafc308501deebf0b35e"
sky.Parent = game.Lighting
end
if string.sub(msg, 11) == "deep blue" then
sky = Instance.new("Sky")
sky.Name = "Sky"
sky.SkyboxBk = "http://wiki.roblox.com/images/8/85/Deep_Blue_Back.jpg"
sky.SkyboxDn = "http://wiki.roblox.com/images/0/01/Beep_Blue_Down.jpg"
sky.SkyboxFt = "http://wiki.roblox.com/images/c/c7/Deep_Blue_Front.jpg"
sky.SkyboxLf = "http://wiki.roblox.com/images/f/fd/Deep_Blue_Left.jpg"
sky.SkyboxRt = "http://wiki.roblox.com/images/9/94/Deep_Blue_Right.jpg"
sky.SkyboxUp = "http://wiki.roblox.com/images/f/f2/Deep_Blue_Up.jpg"
sky.Parent = game.Lighting
end
if string.sub(msg, 11, 14) == "get/" then
sky = Instance.new("Sky")
sky.Name = "Sky"
sky.SkyboxBk = "rbxasset://textures\\".. string.sub(msg, 16)
sky.SkyboxDn = "rbxasset://textures\\".. string.sub(msg, 16)
sky.SkyboxFt = "rbxasset://textures\\".. string.sub(msg, 16)
sky.SkyboxLf = "rbxasset://textures\\".. string.sub(msg, 16)
sky.SkyboxRt = "rbxasset://textures\\".. string.sub(msg, 16)
sky.SkyboxUp = "rbxasset://textures\\".. string.sub(msg, 16)
sky.Parent = game.Lighting
end
if string.sub(msg, 11, 14) == "new/" then
sky = Instance.new("Sky")
sky.Name = "Sky"
sky.SkyboxBk = string.sub(msg, 16)
sky.SkyboxDn = string.sub(msg, 16)
sky.SkyboxFt = string.sub(msg, 16)
sky.SkyboxLf = string.sub(msg, 16)
sky.SkyboxRt = string.sub(msg, 16)
sky.SkyboxUp = string.sub(msg, 16)
sky.Parent = game.Lighting
end
end
if string.sub(msg, 7, 12) == "color/" then
if string.sub(msg, 13) == "normal" then
game.Lighting.Ambient = Color3.new(128, 128, 128)
game.Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
game.Lighting.ColorShift_Top = Color3.new(0, 0, 0)
game.Lighting.ShadowColor = Color3.new(128, 128, 128)
end
if string.sub(msg, 13, 18) == "disco/" then
if disco == true then
disco = false
else
disco = true
while disco == true do
game.Lighting.Ambient = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255))
game.Lighting.ColorShift_Bottom = game.Lighting.Ambient
game.Lighting.ColorShift_Top = game.Lighting.Ambient
game.Lighting.ShadowColor = game.Lighting.Ambient
wait(0.75)
end
end
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
if string.sub(msg, 13) == "yellow" then
game.Lighting.Ambient = Color3.new(255, 255, 128)
game.Lighting.ColorShift_Bottom = Color3.new(255, 255, 0)
game.Lighting.ColorShift_Top = Color3.new(255, 255, 0)
game.Lighting.ShadowColor = Color3.new(255, 255, 128)
end
if string.sub(msg, 13) == "purple" then
game.Lighting.Ambient = Color3.new(255, 128, 255)
game.Lighting.ColorShift_Bottom = Color3.new(255, 0, 255)
game.Lighting.ColorShift_Top = Color3.new(255, 0, 255)
game.Lighting.ShadowColor = Color3.new(255, 128, 255)
game.Lighting.Brightness = 1
end
if string.sub(msg, 13) == "black" then
game.Lighting.Ambient = Color3.new(0, 0, 0)
game.Lighting.ColorShift_Bottom = Color3.new(0, 0, 0)
game.Lighting.ColorShift_Top = Color3.new(0, 0, 0)
game.Lighting.ShadowColor = Color3.new(15, 15, 15)
game.Lighting.Brightness = 0
end
end
end
if string.sub(msg, 1, 6) == "clean/" then
if string.sub(msg, 7) == "message" then
children1 = game.Workspace:GetChildren()
for i=1, #children1 do
if children1[1].ClassName == "Hint" or children1[i].ClassName == "Message" then
children1[i].Parent = game.Lighting
end
end
children2 = game.Players:GetChildren()
for i=1, #children2 do
children3 = children2[i]:GetChildren()
for i=1, #children3 do
if children3[1].ClassName == "Hint" or children3[i].ClassName == "Message" then
children3[i].Parent = game.Lighting
end
end
end
end
if string.sub(msg, 7) == "all" then
children = game.Workspace:GetChildren()
for i=1, #children do
if children[i] ~= game.Workspace.PrimaryPart and children[i].ClassName ~= "Script" and

children[i].ClassName ~= "Model" then
children[i].Parent = game.Lighting
end
end
end
if string.sub(msg, 7, 12) == "class/" then
children = game.Workspace:GetChildren()
for i=1, #children do
if children[i] ~= game.Workspace.PrimaryPart and children[i].ClassName == string.sub(msg, 13) then
children[i].Parent = game.Lighting
end
end
end
if string.sub(msg, 7, 11) == "name/" then
children = game.Workspace:GetChildren()
for i=1, #children do
if children[i] ~= game.Workspace.PrimaryPart and children[i].Name == string.sub(msg, 12) then
children[i].Parent = game.Lighting
end
end
end
end
if string.sub(msg, 1, 5) == "size/" then
player = game.Players:GetChildren()
for i=1, #player do
len = string.len(player[i].Name)
if player[i].Name == string.sub(msg, 6, 5 + len) and tonumber(string.sub(msg, 7 + len)) ~= nil then
scale = string.sub(msg, 7 + len)
bin = player[i].Character
la = bin["Left Arm"]
ra = bin["Right Arm"]
ll = bin["Left Leg"]
rl = bin["Right Leg"]
h = bin.Head
t = bin.Torso
sizeup = {t,h,ll,rl,ra,la}
for i=1, #sizeup do
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
o = Clone(bin.Animate)
bin.Animate.Parent = game.Lighting
o.Parent = bin
end
end
end
if string.sub(msg, 1, 4) == "god/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 5)) then
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
character[i].Transparency = 0.25
end
end
mybody = player[i].Character:GetChildren()
function onTouched(hit)
humanoid = hit.Parent:FindFirstChild("Humanoid")
if humanoid ~= nil then
humanoid.Health = 0
end
end
for i=1, #mybody do
if mybody[i].ClassName == "Part" then
mybody[i].Touched:connect(onTouched)
end
end
end
end
end
if string.sub(msg, 1, 4) == "pet/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 5)) then
local model = Instance.new("Model")
model.Name = player[i].Name.."'s Flicker"
model.Parent = player[i].Character
local flicker = Instance.new("Part")
flicker.Parent = model
flicker.Name = "Head"
flicker.Size = Vector3.new(1, 1, 1)
flicker.Shape = "Ball"
flicker.TopSurface = "Smooth"
flicker.BottomSurface = "Smooth"
flicker.Transparency = 0.9
flicker.BrickColor = player[i].Character.Torso.BrickColor
flicker.Position = player[i].Character.Head.Position + Vector3.new(0, 2.5, 0)
mesh1 = Instance.new("SpecialMesh")
mesh1.MeshType = "Sphere"
mesh1.Parent = flicker
local flicker2 = Instance.new("Part")
flicker2.Parent = model
flicker2.Name = "Inner Glow 1"
flicker2.Size = Vector3.new(1, 1, 1)
flicker2.Shape = "Ball"
flicker2.TopSurface = "Smooth"
flicker2.BottomSurface = "Smooth"
flicker2.Transparency = 0.5
flicker2.BrickColor = player[i].Character.Torso.BrickColor
flicker2.Position = flicker.Position
weld2 = Instance.new("Weld")
weld2.Parent = flicker
weld2.Part0 = flicker
weld2.Part1 = flicker2
weld2.C0 = CFrame.new(0, 0, 0)
mesh2 = Instance.new("SpecialMesh")
mesh2.MeshType = "Sphere"
mesh2.Scale = Vector3.new(0.8, 0.8, 0.8)
mesh2.Parent = flicker2
local flicker3 = Instance.new("Part")
flicker3.Parent = model
flicker3.Name = "Inner Glow 2"
flicker3.Size = Vector3.new(1, 1, 1)
flicker3.Shape = "Ball"
flicker3.TopSurface = "Smooth"
flicker3.BottomSurface = "Smooth"
flicker3.Transparency = 0.25
flicker3.BrickColor = player[i].Character.Torso.BrickColor
flicker3.Position = flicker.Position
weld3 = Instance.new("Weld")
weld3.Parent = flicker
weld3.Part0 = flicker
weld3.Part1 = flicker3
weld3.C0 = CFrame.new(0, 0, 0)
mesh3 = Instance.new("SpecialMesh")
mesh3.MeshType = "Sphere"
mesh3.Scale = Vector3.new(0.5, 0.5, 0.5)
mesh3.Parent = flicker3
local humanoid = Instance.new("Humanoid")
humanoid.Parent = model
humanoid.MaxHealth = 1000
humanoid.Health = 1000
local owner = Instance.new("StringValue")
owner.Parent = model
owner.Value = player[i].Name
owner.Name = "Owner"
local fly = Instance.new("BodyPosition")
fly.Parent = flicker
fly.maxForce = Vector3.new(1e+050, 1e+050, 1e+050)
fly.position = player[i].Character.Head.Position + Vector3.new(0, 2.5, 0)
local s = Instance.new("Script")
s.Name = "Pet Script"
s.Disabled = false
s.Parent = model
end
end
end
if string.sub(msg, 1, 7) == "no pet/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 8)) then
children = player[i].Character:GetChildren()
for x=1, #children do
if children[x]:FindFirstChild("Owner") ~= nil then
children[x].Parent = game.Lighting
end
end
end
end
end
if string.sub(msg, 1, 5) == "jail/" then
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 6)) then
player[i].Character.Torso.CFrame = CFrame.new(0, 615, 0)
end
end
end
if msg == "jail all/" then
player = game.Players:GetChildren()
for i=1, #player do
player[i].Character.Torso.CFrame = CFrame.new(0,615,0)
end
end
if msg == "explode jail/" then
for i=1, 5 do
ex = Instance.new("Explosion")
ex.Position = Vector3.new(math.random(-20, 20), math.random(600, 603), math.random(-20, 20))
ex.BlastRadius = 30
ex.BlastPressure = 1000000
ex.Parent = game.Workspace
end
children = game.Workspace:GetChildren()
for i=1, #children do
if children[i].Name == "Top" or children[i].Name == "Side" or children[i].Name == "Bottom" then
children[i].Anchored = false
children[i]:BreakJoints()
end
end
end
if string.sub(msg, 1, 12) == "max players/" then
if me.Name ~= Commander then return end
m = Instance.new("Message")
m.Parent = game.Workspace
game.Players.MaxPlayers = string.sub(msg, 13)
m.Text = "Max Players: " ..game.Players.MaxPlayers
wait(scrollSpeed)
m.Parent = game.Lighting
end
if string.sub(msg, 1, 5) == "make/" then
if string.sub(msg, 6) == "jail" then
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(0, 575, 0) p.Size = Vector3.new(50, 1, 50) p.Parent = game.Workspace p.Locked = true p.Transparency = 0.5 p.Name = "Bottom"
p1 = Instance.new("Part") p1.Anchored = true p1.Position = Vector3.new(25, 601, 0) p1.Size =

Vector3.new(1, 50, 50) p1.Parent = game.Workspace p1.Locked = true p1.Transparency = 0.5

p1.Name = "Side"
p2 = Instance.new("Part") p2.Anchored = true p2.Position = Vector3.new(-25, 601, 0) p2.Size =

Vector3.new(1, 50, 50) p2.Parent = game.Workspace p2.Locked = true p2.Transparency = 0.5

p2.Name = "Side"
p3 = Instance.new("Part") p3.Anchored = true p3.Position = Vector3.new(0, 601, 25) p3.Size =

Vector3.new(50, 50, 1) p3.Parent = game.Workspace p3.Locked = true p3.Transparency = 0.5

p3.Name = "Side"
p4 = Instance.new("Part") p4.Anchored = true p4.Position = Vector3.new(0, 601, -25) p4.Size =

Vector3.new(50, 50, 1) p4.Parent = game.Workspace p4.Locked = true p4.Transparency = 0.5

p4.Name = "Side"
p5 = Instance.new("Part") p5.Anchored = true p5.Position = Vector3.new(0, 627, 0) p5.Size =

Vector3.new(50, 1, 50) p5.Parent = game.Workspace p5.Locked = true p5.Transparency = 0.5

p5.Name = "Top"
end
if string.sub(msg, 6) == "fog" then
m = Instance.new("Model")
m.Name = "Fog"
m.Parent = game.Workspace
for x=-250, 256, size do
for y=(size / 2) + 1.1, size * 3, size do
for z=-250, 256, size do
fog = Instance.new("Part")
fog.Anchored = true
fog.Name = "Fog"
fog.Locked = true
fog.BrickColor = color
fog.Transparency = opacy
fog.FormFactor = 0
fog.Size = Vector3.new(size, size, size)
fog.CanCollide = false
fog.CFrame = CFrame.new(x, y, z)
fog.TopSurface = 0
fog.BottomSurface = 0
fog.Parent = m
end
wait()
end
wait()
end
end
if string.sub(msg, 6) == "zombie" then
m = Instance.new("Model")
m.Name = "Zombie"
p = Instance.new("Part")
p.Name = "Torso"
p.FormFactor = 0
p.Size = Vector3.new(2, 2, 1)
p.BottomSurface = "Weld"
p.LeftSurface = "Weld"
p.RightSurface = "Weld"
p.Locked = true
p.CanCollide = true
p.BrickColor = BrickColor.new("Dark orange")
p.Parent = m
p2 = Clone(p)
p2.BottomSurface = "Inlet"
p2.LeftSurface = 0
p2.RightSurface = 0
p2.Name = "Left Arm"
p2.Size = Vector3.new(1, 2, 1)
p2.BrickColor = BrickColor.new("Medium green")
p2.Position = p.Position + Vector3.new(1.5, 0, 0)
p2.Parent = m
p3 = Clone(p2)
p3.Name = "Right Arm"
p3.Position = p.Position + Vector3.new(-1.5, 0, 0)
p3.Parent = m
p4 = Clone(p3)
p4.Name = "Left Leg"
p4.Size = Vector3.new(1, 2, 1)
p4.BrickColor = BrickColor.new("Dark orange")
p4.Position = Vector3.new(0.5, -2, 0)
p4.Parent = m
p5 = Clone(p4)
p5.Name = "Right Leg"
p5.Size = Vector3.new(1, 2, 1)
p5.Position = Vector3.new(-0.5, -2, 0)
p5.Parent = m
p6 = Clone(p2)
p6.Name = "Head"
p6.Size = Vector3.new(2, 1, 1)
p6.TopSurface = 0
p6.BottomSurface = "Inlet"
p6.LeftSurface = 0
p6.RightSurface = 0
p6.Position = Vector3.new(0, 1.5, 0)
p6.Parent = m
mesh = Instance.new("SpecialMesh")
mesh.MeshType = "Head"
mesh.Scale = Vector3.new(1.25, 1.25, 1.25)
mesh.Parent = p6
h = Instance.new("Humanoid")
h.Parent = m
h.MaxHealth = 1000
h.Health = 1000
m.Parent = game.Workspace
m:MakeJoints()
m:MoveTo(Vector3.new(0, 10, 0))
follow = Instance.new("Script")
follow.Parent = m
end
if string.sub(msg, 6) == "blender" then
p1 = Instance.new("Part")
p1.Name = "BladeHolder"
p1.Parent = game.Workspace
p1.Size = Vector3.new(250, 1, 250)
p1.FormFactor = "Custom"
p1.BrickColor = BrickColor.new("Black")
p1.Anchored = true
p1.TopSurface = "Hinge"
p1.BottomSurface = 0
p1.CFrame = CFrame.new(0, 1.7, 0)
p1:MakeJoints()
p2 = Instance.new("Part")
p2.Name = "Blade"
p2.Parent = game.Workspace
p2.Size = Vector3.new(15, 1, 190)
p2.FormFactor = "Custom"
p2.BrickColor = BrickColor.new("White")
p2.TopSurface = 0
p2.BottomSurface = 0
p2.CFrame = CFrame.new(0, 2.7, 0)
p2:MakeJoints()
local aaaaa=Instance.new("BodyAngularVelocity")
aaaaa.Parent=p2
aaaaa.BodyAngularVelocity.angularvelocity = Vector3.new(0, 0, 0)
aaaaa.BodyAngularVelocity.maxTorque = Vector3.new(1e+038, 1e+038, 1e+038)
s = Instance.new("Script")
s.Name = "Kill Script"
s.Disabled = false
s.Parent = p2
p3 = Instance.new("Part")
p3.Name = "Glass"
p3.Parent = game.Workspace
p3.Size = Vector3.new(202, 500, 5)
p3.FormFactor = "Custom"
p3.BrickColor = BrickColor.new("Pastel blue")
p3.Transparency = 0.5
p3.Reflectance = 0.01
p3.Anchored = true
p3.TopSurface = 0
p3.BottomSurface = 0
p3.CFrame = CFrame.new(0, 250, 100)
p3:MakeJoints()
p4 = Instance.new("Part")
p4.Name = "Glass"
p4.Parent = game.Workspace
p4.Size = Vector3.new(202, 500, 5)
p4.FormFactor = "Custom"
p4.BrickColor = BrickColor.new("Pastel blue")
p4.Transparency = 0.5
p4.Reflectance = 0.01
p4.Anchored = true
p4.TopSurface = 0
p4.BottomSurface = 0
p4.CFrame = CFrame.new(0, 250, -100)
p4:MakeJoints()
p5 = Instance.new("Part")
p5.Name = "Glass"
p5.Parent = game.Workspace
p5.Size = Vector3.new(5, 500, 202)
p5.FormFactor = "Custom"
p5.BrickColor = BrickColor.new("Pastel blue")
p5.Transparency = 0.5
p5.Reflectance = 0.01
p5.Anchored = true
p5.TopSurface = 0
p5.BottomSurface = 0
p5.CFrame = CFrame.new(100, 250, 0)
p5:MakeJoints()
p6 = Instance.new("Part")
p6.Name = "Glass"
p6.Parent = game.Workspace
p6.Size = Vector3.new(5, 500, 202)
p6.FormFactor = "Custom"
p6.BrickColor = BrickColor.new("Pastel blue")
p6.Transparency = 0.5
p6.Reflectance = 0.01
p6.Anchored = true
p6.TopSurface = 0
p6.BottomSurface = 0
p6.CFrame = CFrame.new(-100, 250, 0)
p6:MakeJoints()
p7 = Instance.new("Part")
p7.Name = "BlenderCap"
p7.Parent = game.Workspace
p7.Size = Vector3.new(202, 1, 202)
p7.FormFactor = "Custom"
p7.BrickColor = BrickColor.new("Black")
p7.Anchored = true
p7.TopSurface = 0
p7.BottomSurface = 0
p7.CFrame = CFrame.new(0, 500, 0)
p7:MakeJoints()
s = Instance.new("Script")
s.Name = "Blender Script"
s.Disabled = false
s.Parent = p2
end
if string.sub(msg, 6) == "ride" then
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(79, 1.8, 25) p.Size =

Vector3.new(20, 1.2, 100) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new(21) p.Velocity = Vector3.new(0, 0, 200)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(119, 1.8, 85) p.Size =

Vector3.new(100, 1.2, 20) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new(21) p.Velocity = Vector3.new(200, 0, 0)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(179, 1.8, 45) p.Size =

Vector3.new(20, 1.2, 100) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new(21) p.Velocity = Vector3.new(0, 0, -200)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(139, 1.8, -15) p.Size =

Vector3.new(100, 1.2, 20) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new(21) p.Velocity = Vector3.new(-200, 0, 0)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(129, 4.2, 35) p.Size =

Vector3.new(80, 6, 80) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new(199)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(68.5, 4.2, 35) p.Size =

Vector3.new(1, 6, 122) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new(199)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(130, 4.2, 95.5) p.Size =

Vector3.new(121, 6, 1) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new(199)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(129, 4.2, -25.5) p.Size =

Vector3.new(122, 6, 1) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new(199)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(190, 4.2, 34.5) p.Size =

Vector3.new(1, 6, 121) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new(199)
end
if string.sub(msg, 6) == "cart" then
p = Instance.new("Part") p.Anchored = false p.Position = Vector3.new(77, 8.2, 39) p.Size =

Vector3.new(6, 1.2, 10) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new(199)
s = Instance.new("Seat") s.Anchored = false s.Position = Vector3.new(77, 9.4, 39) s.Size =

Vector3.new(2,1.2,2) s.Parent = game.Workspace s.BrickColor = BrickColor.new(26) s.Locked = true
s:makeJoints()
end
if string.sub(msg, 6) == "house 1" then
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(1,1.8,-40.5) p.Size =

Vector3.new(58,1.2,52) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new(38)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(1,1.8,-5.5) p.Size =

Vector3.new(8,1.2,18) p.Parent = game.Workspace p.Locked = true p.BrickColor = BrickColor.new(38)
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-15.5,9,-12.5) p.Size =

Vector3.new(25,15.6,4) p.Parent = game.Workspace p.Locked = true
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(17.5,9,-12.5) p.Size =

Vector3.new(25,15.6,4) p.Parent = game.Workspace p.Locked = true
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(1,27,-12.5) p.Size =

Vector3.new(58,20.4,4) p.Parent = game.Workspace p.Locked = true
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(-31,19.2,-40.5) p.Size =

Vector3.new(6,36,60) p.Parent = game.Workspace p.Locked = true
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(33,19.2,-40.5) p.Size =

Vector3.new(6,36,60) p.Parent = game.Workspace p.Locked = true
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(1,19.2,-68.5) p.Size =

Vector3.new(58,36,4) p.Parent = game.Workspace p.Locked = true
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(1,37.8,-40.5) p.Size =

Vector3.new(70,1.2,60) p.Parent = game.Workspace p.Locked = true
end
if string.sub(msg, 6) == "house 2" then
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(68, 1, 47) p.Size =

Vector3.new(28, 1.2, 46) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(81.5, 8.8, 47) p.Size =

Vector3.new(1, 14.4, 46) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(68, 8.8, 24.5) p.Size =

Vector3.new(26, 14.4, 1) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(68, 8.8, 69.5) p.Size =

Vector3.new(26, 14.4, 1) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(54.5, 8.8, 33) p.Size =

Vector3.new(1, 14.4, 18) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(54.5, 8.8, 59) p.Size =

Vector3.new(1, 14.4, 22) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(66, 1.8, 46.5) p.Size =

Vector3.new(20, 0.4, 43) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Bright red") p.FormFactor = 2 p.TopSurface = "Smooth"
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(79, 2.8, 36.5) p.Size =
Vector3.new(4, 2.4, 3) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(79, 5.2, 38.5) p.Size =

Vector3.new(4, 2.4, 3) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(79, 7.6, 40.5) p.Size =

Vector3.new(4, 2.4, 3) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(79, 10, 42.5) p.Size =

Vector3.new(4, 2.4, 3) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(79, 12.4, 44.5) p.Size =

Vector3.new(4, 2.4, 3) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(79, 14.8, 46.5) p.Size =

Vector3.new(4, 2.4, 3) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(79.5, 16.6, 58.5) p.Size =

Vector3.new(5, 1.2, 23) p.Parent = game.Workspace p.Locked = true p.BrickColor

=BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(65.5, 16.6, 47) p.Size =

Vector3.new(23, 1.2, 46) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(81.5, 16.6, 35.5) p.Size =

Vector3.new(1, 1.2, 23) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(79, 16.6, 24.5) p.Size =

Vector3.new(4, 1.2, 1) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(81.5, 18.4, 47) p.Size =

Vector3.new(1, 2.4, 44) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(54.5, 18.4, 47) p.Size =

Vector3.new(1, 2.4, 44) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(68, 18.4, 69.5) p.Size =

Vector3.new(28, 2.4, 1) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(68, 18.4, 24.5) p.Size =

Vector3.new(28, 2.4, 1) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(68, 20.8, 25) p.Size =

Vector3.new(28, 2.4, 2) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(55, 20.8, 47) p.Size =

Vector3.new(2, 2.4, 42) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(81, 20.8, 47) p.Size =

Vector3.new(2, 2.4, 42) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(68, 20.8, 69) p.Size =

Vector3.new(28, 2.4, 2) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(68, 23.2, 68) p.Size =

Vector3.new(26, 2.4, 2) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(68, 23.2, 26) p.Size =

Vector3.new(26, 2.4, 2) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(80, 23.2, 47) p.Size =

Vector3.new(2, 2.4, 40) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(68, 23.2, 68) p.Size =

Vector3.new(26, 2.4, 2) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(56, 23.2, 47) p.Size =

Vector3.new(2, 2.4, 40) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
p = Instance.new("Part") p.Anchored = true p.Position = Vector3.new(68, 25, 47) p.Size =

Vector3.new(24, 1.2, 42) p.Parent = game.Workspace p.Locked = true p.BrickColor =

BrickColor.new("Black")
end
end
if string.sub(msg, 1, 5) == "give/" then
if string.sub(msg, 6, 11) == "plane/" then
hop = Instance.new("HopperBin")
hop.Name = "Plane Tool"
s = Instance.new("Script")
s.Disabled = false
s.Parent = hop
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 12)) then
hop.Parent = player[i].Backpack
end
end
if string.sub(msg, 12) == "all" then
player = game.Players:GetChildren()
for i=1, #player do
hop2 = Clone(hop)
hop2.Parent = player[i].Backpack
end
end
if string.sub(msg, 12) == "starter" then
hop.Parent = game.StarterPack
end
end
if string.sub(msg, 6, 14) == "balefire/" then
hop = Instance.new("HopperBin")
hop.Name = "Balefire"
s = Instance.new("Script")
s.Disabled = false
s.Parent = hop
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 15)) then
hop.Parent = player[i].Backpack
end
end
if string.sub(msg, 15) == "all" then
player = game.Players:GetChildren()
for i=1, #player do
hop2 = Clone(hop)
hop2.Parent = player[i].Backpack
end
end
if string.sub(msg, 15) == "starter" then
hop.Parent = game.StarterPack
end
end
if string.sub(msg, 6, 11) == "snake/" then
hop = Instance.new("HopperBin")
hop.Name = "Snake"
local s = Instance.new("Script")
s.Name = "Snake Script"
s.Disabled = false
s.Parent = hop
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 15)) then
hop.Parent = player[i].Backpack
end
end
if string.sub(msg, 15) == "all" then
player = game.Players:GetChildren()
for i=1, #player do
hop2 = Clone(hop)
hop2.Parent = player[i].Backpack
end
end
if string.sub(msg, 15) == "starter" then
hop.Parent = game.StarterPack
end
end
if string.sub(msg, 6, 15) == "explosion/" then
hop = Instance.new("HopperBin")
hop.Name = "Explosion"
s = Instance.new("Script")
s.Disabled = false
s.Parent = hop
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 16)) then
hop.Parent = player[i].Backpack
end
end
if string.sub(msg, 16) == "all" then
player = game.Players:GetChildren()
for i=1, #player do
hop2 = Clone(hop)
hop2.Parent = player[i].Backpack
end
end
if string.sub(msg, 16) == "starter" then
hop.Parent = game.StarterPack
end
end
if string.sub(msg, 6, 12) == "hammer/" then
tool = Instance.new("Tool")
tool.Name = "Mjolnir"
tool.GripPos = Vector3.new(0, -1.3, 0)
s = Instance.new("Script")
s.Name = "HammerScript"
SetSource(s, [[
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
]])
s.Parent = tool
l = Instance.new("LocalScript")
l.Name = "Local Gui"
SetSource(l, [[
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
]])
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
m.MeshType = 3
m.Scale = Vector3.new(1, 1, 1)
s = Instance.new("Sound")
s.Name = "Boom"
s.SoundId = "rbxasset://sounds\\Rocket shot.wav"
s.Volume = 1
s.Looped = false
s.Parent = p
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 13)) then
tool.Parent = player[i].Backpack
end
end
if string.sub(msg, 13) == "all" then
player = game.Players:GetChildren()
for i=1, #player do
tool2 = Clone(tool)
tool2.Parent = player[i].Backpack
end
end
if string.sub(msg, 13) == "starter" then
tool.Parent = game.StarterPack
end
end
if string.sub(msg, 6, 9) == "pbg/" then
tool = Instance.new("Tool")
tool.Name = "Paintball Gun"
tool.GripPos = Vector3.new(0, -0.3, 0.35)
s1 = Instance.new("Script")
s1.Name = "PaintballShooter"
SetSource(s1, [[
Tool = script.Parent
Tool.Enabled = true
function fire(v)
Tool.Handle.Fire:play()
local vCharacter = Tool.Parent
local vPlayer = game.Players:playerFromCharacter(vCharacter)
local ball = Instance.new("Part")
local spawnPos = vCharacter.PrimaryPart.Position
spawnPos  = spawnPos + (v * 8)
ball.Position = spawnPos
ball.Size = Vector3.new(1,1,1)
ball.Velocity = v * 100
ball.BrickColor = BrickColor.random()
ball.Shape = 0
ball.BottomSurface = 0
ball.TopSurface = 0
ball.Name = "Paintball"
ball.Elasticity = 0
ball.Reflectance = 0
ball.Friction = .9
local force = Instance.new("BodyForce")
force.force = Vector3.new(0,90,0)
force.Parent = ball
local creator_tag = Instance.new("ObjectValue")
creator_tag.Value = vPlayer
creator_tag.Name = "creator"
creator_tag.Parent = ball
ball.Parent = game.Workspace
ball.Touched:connect(function(hit) onTouched(hit, ball) end)
function onTouched(hit, part)
damage = 2
local humanoid = hit.Parent:FindFirstChild("Humanoid")
if hit:GetMass() <= 1.2 * 200 then
hit.BrickColor = part.BrickColor
end
if humanoid ~= nil then
part.Parent = game.Lighting
tagHumanoid(humanoid, part)
humanoid:TakeDamage(damage)
wait(2)
untagHumanoid(humanoid)
end
part.Parent = game.Lighting
end
function tagHumanoid(humanoid, part)
local tag = part:FindFirstChild("creator")
if tag ~= nil then
tag.Parent = humanoid
end
end
function untagHumanoid(humanoid)
if humanoid ~= nil then
local tag = humanoid:FindFirstChild("creator")
if tag ~= nil then
tag.Parent = game.Lighting
end
end
end
end
function onActivated()
if not Tool.Enabled then
return
end
Tool.Enabled = false
local character = Tool.Parent
local humanoid = character.Humanoid
if humanoid == nil then
print("Humanoid not found")
return
end
local targetPos = humanoid.TargetPoint
local lookAt = (targetPos - character.Head.Position).unit
fire(lookAt)
wait(0.5)
Tool.Enabled = true
end
script.Parent.Activated:connect(onActivated)
]])
s1.Disabled = false
s1.Parent = tool
l = Instance.new("LocalScript")
l.Name = "Local Gui"
SetSource(l, [[
local Tool = script.Parent
enabled = true
function onButton1Down(mouse)
if not enabled then
return
end
enabled = false
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
wait(0.5)
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
]])
l.Disabled = false
l.Parent = tool
p = Instance.new("Part")
p.Name = "Handle"
p.FormFactor = "Custom"
p.Size = Vector3.new(1, 2, 3)
p.BrickColor = BrickColor.new("Black")
p.TopSurface = 0
p.BottomSurface = 0
p.FrontSurface = "Motor"
p.Parent = tool
m = Instance.new("SpecialMesh")
m.Parent = p
m.Name = "Mesh"
m.MeshType = 3
m.Scale = Vector3.new(1, 1, 1)
s = Instance.new("Sound")
s.Name = "Fire"
s.SoundId = "rbxasset://sounds\\paintball.wav"
s.Volume = 1
s.Looped = false
s.Parent = p
tool.TextureId = "rbxasset://textures\\PaintballIcon.png"
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 10)) then
tool.Parent = player[i].Backpack
end
end
if string.sub(msg, 10) == "all" then
player = game.Players:GetChildren()
for i=1, #player do
tool2 = Clone(tool)
tool2.Parent = player[i].Backpack
end
end
if string.sub(msg, 10) == "starter" then
tool.Parent = game.StarterPack
end
end
if string.sub(msg, 6, 11) == "gun 1/" then
tool = Instance.new("Tool")
tool.Name = "M-51 Rifle"
tool.GripPos = Vector3.new(0, -1, .50)
s1 = Instance.new("Script")
s1.Name = "Gun Shooter"
SetSource(s1, [[
Tool = script.Parent
Tool.Enabled = true
function Weld()
p1 = script.Parent:FindFirstChild("Handle")
p2 = script.Parent:FindFirstChild("Handle2")
p3 = script.Parent:FindFirstChild("Handle3")
p4 = script.Parent:FindFirstChild("Handle4")
p5 = script.Parent:FindFirstChild("Handle5")
p6 = script.Parent:FindFirstChild("Handle6")
if p1 == nil then return end
if p2 == nil then return end
if p3 == nil then return end
if p4 == nil then return end
if p5 == nil then return end
if p6 == nil then return end
w1 = Instance.new("Weld")
w1.Parent = p1
w1.Part0 = p1
w1.Part1 = p2
w1.C0 = CFrame.new(0,-1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
w2 = Instance.new("Weld")
w2.Parent = p1
w2.Part0 = p1
w2.Part1 = p3
w2.C0 = CFrame.new(0,0,-2) * CFrame.fromEulerAnglesXYZ(0,0,0)
w3 = Instance.new("Weld")
w3.Parent = p4
w3.Part0 = p4
w3.Part1 = p5
w3.C0 = CFrame.new(0,0,-4) * CFrame.fromEulerAnglesXYZ(0,0,0)
w4 = Instance.new("Weld")
w4.Parent = p1
w4.Part0 = p1
w4.Part1 = p4
w4.C0 = CFrame.new(0,-2,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
w5 = Instance.new("Weld")
w5.Parent = p1
w5.Part0 = p1
w5.Part1 = p6
w5.C0 = CFrame.new(1,-1,-1) * CFrame.fromEulerAnglesXYZ(0,0,0)
end
function fire(v)
Tool.Handle.Fire:play()
local vCharacter = Tool.Parent
local vPlayer = game.Players:playerFromCharacter(vCharacter)
local ball = Instance.new("Part")
local spawnPos = vCharacter.PrimaryPart.Position
spawnPos  = spawnPos + (v * 10)
ball.Position = spawnPos
ball.Size = Vector3.new(1,1,1)
ball.Velocity = v * 500
ball.BrickColor = BrickColor.new("Black")
ball.Shape = 0
ball.BottomSurface = 0
ball.TopSurface = 0
ball.Name = "Bullet"
ball.Elasticity = 0
ball.Friction = .9
local force = Instance.new("BodyForce")
force.force = Vector3.new(0,90,0)
force.Parent = ball
local creator_tag = Instance.new("ObjectValue")
creator_tag.Value = vPlayer
creator_tag.Name = "creator"
creator_tag.Parent = ball
ball.Parent = game.Workspace
ball.Touched:connect(function(hit) onTouched(hit, ball) end)
function onTouched(hit, part)
damage = 15
local humanoid = hit.Parent:FindFirstChild("Humanoid")
if humanoid ~= nil then
part.Parent = game.Lighting
tagHumanoid(humanoid, part)
humanoid:TakeDamage(damage)
wait(2)
untagHumanoid(humanoid)
end
part.Parent = game.Lighting
end
function tagHumanoid(humanoid, part)
local tag = part:FindFirstChild("creator")
if tag ~= nil then
tag.Parent = humanoid
end
end
function untagHumanoid(humanoid)
if humanoid ~= nil then
local tag = humanoid:FindFirstChild("creator")
if tag ~= nil then
tag.Parent = game.Lighting
end
end
end
end
function onActivated()
if not Tool.Enabled then
return
end
Tool.Enabled = false
local character = Tool.Parent
local humanoid = character.Humanoid
if humanoid == nil then
print("Humanoid not found")
return
end
local targetPos = humanoid.TargetPoint
local lookAt = (targetPos - character.Head.Position).unit
fire(lookAt)
wait(0.05)
fire(lookAt)
wait(0.05)
fire(lookAt)
wait(0.25)
Tool.Enabled = true
end
script.Parent.Activated:connect(onActivated)
script.Parent.Equipped:connect(Weld)
script.Parent.Unequipped:connect(Weld)
]])
s1.Disabled = false
s1.Parent = tool
l = Instance.new("LocalScript")
l.Name = "Local Gui"
SetSource(l, [[
local Tool = script.Parent
enabled = true
function onButton1Down(mouse)
if not enabled then
return
end
enabled = false
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
wait(0.35)
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
]])
l.Disabled = false
l.Parent = tool
s2 = Instance.new("Script")
s2.Name = "Kill Script"
SetSource(s2, [[
part = script.Parent.Handle5
function onTouched(hit)
humanoid = hit.Parent:FindFirstChild("Humanoid")
if humanoid ~= nil then
humanoid.Health = 0
end
end
part.Touched:connect(onTouched)
]])
s2.Disabled = false
s2.Parent = tool
p1 = Instance.new("Part")
p1.Name = "Handle"
p1.Size = Vector3.new(1, 1, 4)
p1.TopSurface = 0
p1.BottomSurface = 0
p1.Locked = true
p1.Parent = tool
p2 = Instance.new("Part")
p2.Name = "Handle2"
p2.Size = Vector3.new(1, 1, 1)
p2.TopSurface = 0
p2.BottomSurface = 0
p2.Locked = true
p2.Parent = tool
p3 = Instance.new("Part")
p3.Name = "Handle3"
p3.Parent = tool
p3.Locked = true
p3.Size = Vector3.new(1,1,1)
p3.TopSurface = 0
p3.BottomSurface = 0
p3.FrontSurface = "Hinge"
p4 = Instance.new("Part")
p4.Name = "Handle4"
p4.Parent = tool
p4.Locked = true
p4.Size = Vector3.new(1,1,4)
p4.TopSurface = 0
p4.BottomSurface = 0
p4.FrontSurface = "Hinge"
p5 = Instance.new("Part")
p5.Name = "Handle5"
p5.Parent = tool
p5.Locked = true
p5.Size = Vector3.new(1,1,7)
p5.TopSurface = 0
p5.BottomSurface = 0
p5.FrontSurface = "Hinge"
p6 = Instance.new("Part")
p6.Name = "Handle6"
p6.Parent = tool
p6.Locked = true
p6.Size = Vector3.new(1,1,4)
p6.TopSurface = 0
p6.BottomSurface = 0
p6.FrontSurface = "Hinge"
s = Instance.new("Sound")
s.Name = "Fire"
s.SoundId = "http://www.roblox.com/Asset/?id=2697431"
s.Volume = 1
s.Looped = false
s.Parent = p1
m1 = Instance.new("SpecialMesh")
m1.Parent = p3
m1.MeshType = "Sphere"
m1.Scale = Vector3.new(0.9, .9, 2)
m1.Name = "Mesh"
m2 = Instance.new("SpecialMesh")
m2.Parent = p5
m2.MeshType = "Sphere"
m2.Scale = Vector3.new(0.9, 0.9, 1.5)
m2.Name = "Mesh"
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 12)) then
tool.Parent = player[i].Backpack
end
end
if string.sub(msg, 12) == "all" then
player = game.Players:GetChildren()
for i=1, #player do
tool2 = Clone(tool)
tool2.Parent = player[i].Backpack
end
end
if string.sub(msg, 12) == "starter" then
tool.Parent = game.StarterPack
end
end
if string.sub(msg, 6, 13) == "sword 1/" then
local sword = Instance.new("Tool")
sword.GripForward = Vector3.new(0, 0, -1)
sword.GripPos = Vector3.new(0, 0, .50)
sword.GripRight = Vector3.new(1, 0, 0)
sword.GripUp = Vector3.new(0, 1, 0)
sword.TextureId = "rbxasset://Textures\\Sword128.png"
sword.Name = "Sword"
local s = Instance.new("Script")
s.Name = "SwordScript"
SetSource(s, [[
r = game:GetService("RunService")
local slashDamage = 15
local lungeDamage = 20
local damage = slashDamage
local lastAttack = 0
sword = script.Parent.Handle3
Tool = script.Parent
Tool.Enabled = true
local SlashSound = Instance.new("Sound")
SlashSound.Name = "Slash"
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav"
SlashSound.Parent = sword
SlashSound.Volume = 0
local LungeSound = Instance.new("Sound")
LungeSound.Name = "Lunge"
LungeSound.SoundId = "rbxasset://sounds\\swordlunge.wav"
LungeSound.Parent = sword
LungeSound.Volume = 0
local UnsheathSound = Instance.new("Sound")
UnsheathSound.Name = "Unsheath"
UnsheathSound.SoundId = "rbxasset://sounds\\unsheath.wav"
UnsheathSound.Parent = sword
UnsheathSound.Volume = 0
function Blow(hit)
if hit.Parent == nil then return end
local humanoid = hit.Parent:FindFirstChild("Humanoid")
local vCharacter = Tool.Parent
local vPlayer = game.Players:playerFromCharacter(vCharacter)
local humanoid2 = vCharacter:FindFirstChild("Humanoid")
if humanoid ~= nil and humanoid ~= humanoid2 and humanoid2 ~= nil then
tagHumanoid(humanoid, vPlayer)
humanoid:TakeDamage(damage)
wait(1)
untagHumanoid(humanoid)
end
end
function tagHumanoid(humanoid, player)
local creatorTag = Instance.new("ObjectValue")
creatorTag.Value = player
creatorTag.Name = "creator"
creatorTag.Parent = humanoid
end
function untagHumanoid(humanoid)
if humanoid ~= nil then
local tag = humanoid:FindFirstChild("creator")
if tag ~= nil then
tag.Parent = game.Lighting
end
end
end
function Attack()
damage = slashDamage
SlashSound.Volume = 1
SlashSound:play()
local anim = Instance.new("StringValue")
anim.Name = "toolanim"
anim.Value = "Slash"
anim.Parent = Tool
end
function Lunge()
damage = lungeDamage
LungeSound.Volume = 1
LungeSound:play()
local anim = Instance.new("StringValue")
anim.Name = "toolanim"
anim.Value = "Lunge"
anim.Parent = Tool
force = Instance.new("BodyVelocity")
force.velocity = (Tool.Parent.Torso.CFrame.lookVector * 80) + Vector3.new(0,5,0)
force.Parent = Tool.Parent.Torso
wait(.25)
swordOut()
wait(.25)
force.Parent = game.Lighting
wait(.5)
swordUp()
damage = slashDamage
end
function swordUp()
Tool.GripForward = Vector3.new(0, 0, -1)
Tool.GripRight = Vector3.new(1, 0, 0)
Tool.GripUp = Vector3.new(0, 1, 0)
end
function swordOut()
Tool.GripForward = Vector3.new(0, 0, -1)
Tool.GripRight = Vector3.new(-1, 0, 0)
Tool.GripUp = Vector3.new(0, 0, -1)
end
function Weld()
handle = script.Parent.Handle
p1 = script.Parent.Handle1
p2 = script.Parent.Handle2
p3 = script.Parent.Handle3
p4 = script.Parent.Handle4
local w1 = Instance.new("Weld")
w1.Parent = handle
w1.Part0 = handle
w1.Part1 = p1
w1.C0 = CFrame.new(0, -1.4, 0)
local w2 = Instance.new("Weld")
w2.Parent = handle
w2.Part0 = handle
w2.Part1 = p2
w2.C0 = CFrame.new(0, 1.3, 0)
local w3 = Instance.new("Weld")
w3.Parent = handle
w3.Part0 = handle
w3.Part1 = p3
w3.C0 = CFrame.new(0, 5, 0)
local w4 = Instance.new("Weld")
w4.Parent = p3
w4.Part0 = p3
w4.Part1 = p4
w4.C0 = CFrame.new(0, 4.7, 0)
end
function onActivated()
if not Tool.Enabled then
return
end
Tool.Enabled = false
local character = Tool.Parent
local humanoid = character.Humanoid
if humanoid == nil then
print("Humanoid not found")
return
end
time = r.Stepped:wait()
if time - lastAttack <= .2 then
Lunge()
else
Attack()
end
lastAttack = time
Tool.Enabled = true
end
function onEquipped()
SlashSound.Volume = 0
LungeSound.Volume = 0
UnsheathSound.Volume = 0
SlashSound:stop()
LungeSound:stop()
UnsheathSound:stop()
UnsheathSound.Volume = 1
UnsheathSound:play()
Weld()
end
function onUnequipped()
SlashSound.Volume = 0
LungeSound.Volume = 0
UnsheathSound.Volume = 0
Weld()
end
script.Parent.Activated:connect(onActivated)
script.Parent.Equipped:connect(onEquipped)
script.Parent.Unequipped:connect(onUnequipped)
sword.Touched:connect(Blow)
Weld()
]])
s.Disabled = false
s.Parent = sword
local l = Instance.new("LocalScript")
l.Name = "Local Gui"
SetSource(l, [[
local Tool = script.Parent
enabled = true
function onButton1Down(mouse)
if not enabled then
return
end
enabled = false
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
wait(.05)
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
local children = script.Parent:GetChildren()
for i=1, #children do
if children[i].ClassName == "Part" then
if children[i].Name == "Handle2" or children[i].Name == "Handle3" then
children[i].CanCollide = true
else
children[i].CanCollide = false
end
end
end
end
function onUnequippedLocal(mouse)
local children = script.Parent:GetChildren()
for i=1, #children do
if children[i].ClassName == "Part" then
children[i].CanCollide = true
end
end
end
Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)
]])
l.Disabled = false
l.Parent = sword
handle = Instance.new("Part")
handle.Parent = sword
handle.Name = "Handle"
handle.Size = Vector3.new(1, 3, 1)
handle.TopSurface = "Smooth"
handle.BottomSurface = "Smooth"
handle.BrickColor = BrickColor.new("Bright red")
handle.Locked = true
p1 = Instance.new("Part")
p1.Parent = sword
p1.Name = "Handle1"
p1.Size = Vector3.new(1, 1.7, 1)
p1.FormFactor = "Plate"
p1.Locked = true
p1.TopSurface = "Smooth"
p1.BottomSurface = "Smooth"
p1.BrickColor = BrickColor.new("Black")
m1 = Instance.new("SpecialMesh")
m1.Parent = p
m1.Scale = Vector3.new(1.5, 1, 1.5)
p2 = Instance.new("Part")
p2.Parent = sword
p2.Name = "Handle2"
p2.Size = Vector3.new(3, 0.4, 3)
p2.Locked = true
p2.FormFactor = "Plate"
p2.TopSurface = "Smooth"
p2.BottomSurface = "Smooth"
p2.BrickColor = BrickColor.new("Black")
m2 = Instance.new("SpecialMesh")
m2.Parent = p2
p3 = Instance.new("Part")
p3.Parent = sword
p3.Name = "Handle3"
p3.TopSurface = "Smooth"
p3.BottomSurface = "Smooth"
p3.FormFactor = "Plate"
p3.Size = Vector3.new(0.1, 7, 2)
p3.Locked = true
p4 = Instance.new("Part")
p4.Parent = sword
p4.Name = "Handle4"
p4.Size = Vector3.new(0.4, 3, 2)
p4.TopSurface = "Smooth"
p4.BottomSurface = "Smooth"
p4.Locked = true
m4 = Instance.new("SpecialMesh")
m4.Parent = p4
m4.MeshType = "Wedge"
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 14)) then
sword.Parent = player[i].Backpack
end
end
if string.sub(msg, 14) == "all" then
player = game.Players:GetChildren()
for i=1, #player do
sword2 = Clone(sword)
sword2.Parent = player[i].Backpack
end
end
if string.sub(msg, 14) == "starter" then
sword.Parent = game.StarterPack
end
end
if string.sub(msg, 6, 13) == "sword 2/" then
local sword = Instance.new("Tool")
sword.GripForward = Vector3.new(0, 0, -1)
sword.GripPos = Vector3.new(0, -3, .20)
sword.GripRight = Vector3.new(1, 0, 0)
sword.GripUp = Vector3.new(0, 1, 0)
sword.TextureId = "rbxasset://Textures\\Sword128.png"
sword.Name = "Mace"
local s = Instance.new("Script")
s.Name = "SwordScript"
SetSource(s, [[
r = game:GetService("RunService")
local slashDamage = 50
local lungeDamage = 100
local damage = slashDamage
local lastAttack = 0
sword = script.Parent.Handle1
Tool = script.Parent
Tool.Enabled = true
local SlashSound = Instance.new("Sound")
SlashSound.Name = "Slash"
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav"
SlashSound.Parent = sword
SlashSound.Volume = 0
local LungeSound = Instance.new("Sound")
LungeSound.Name = "Lunge"
LungeSound.SoundId = "rbxasset://sounds\\swordlunge.wav"
LungeSound.Parent = sword
LungeSound.Volume = 0
local UnsheathSound = Instance.new("Sound")
UnsheathSound.Name = "Unsheath"
UnsheathSound.SoundId = "rbxasset://sounds\\unsheath.wav"
UnsheathSound.Parent = sword
UnsheathSound.Volume = 0
function Blow(hit)
if hit.Parent == nil then return end
local humanoid = hit.Parent:FindFirstChild("Humanoid")
local vCharacter = Tool.Parent
local vPlayer = game.Players:playerFromCharacter(vCharacter)
local humanoid2 = vCharacter:FindFirstChild("Humanoid")
if humanoid ~= nil and humanoid ~= humanoid2 and humanoid2 ~= nil then
tagHumanoid(humanoid, vPlayer)
humanoid:TakeDamage(damage)
wait(1)
untagHumanoid(humanoid)
end
end
function tagHumanoid(humanoid, player)
local creatorTag = Instance.new("ObjectValue")
creatorTag.Value = player
creatorTag.Name = "creator"
creatorTag.Parent = humanoid
end
function untagHumanoid(humanoid)
if humanoid ~= nil then
local tag = humanoid:FindFirstChild("creator")
if tag ~= nil then
tag.Parent = game.Lighting
end
end
end
function Attack()
damage = slashDamage
SlashSound.Volume = 1
SlashSound:play()
local anim = Instance.new("StringValue")
anim.Name = "toolanim"
anim.Value = "Slash"
anim.Parent = Tool
end
function Lunge()
damage = lungeDamage
LungeSound.Volume = 1
LungeSound:play()
local anim = Instance.new("StringValue")
anim.Name = "toolanim"
anim.Value = "Lunge"
anim.Parent = Tool
force = Instance.new("BodyVelocity")
force.velocity = (Tool.Parent.Torso.CFrame.lookVector * 80) + Vector3.new(0,5,0)
force.Parent = Tool.Parent.Torso
wait(.25)
swordOut()
wait(.25)
force.Parent = game.Lighting
wait(.5)
swordUp()
damage = slashDamage
end
function swordUp()
Tool.GripForward = Vector3.new(0, 0, -1)
Tool.GripRight = Vector3.new(1, 0, 0)
Tool.GripUp = Vector3.new(0, 1, 0)
end
function swordOut()
Tool.GripForward = Vector3.new(0, 0, 1)
Tool.GripRight = Vector3.new(-1, 0, 0)
Tool.GripUp = Vector3.new(0, 0, -1)
end
function Weld()
handle = script.Parent.Handle
p1 = script.Parent.Handle1
p2 = script.Parent.Handle2
p3 = script.Parent.Handle3
p4 = script.Parent.Handle4
p5 = script.Parent.Handle5
p6 = script.Parent.Handle6
local w1 = Instance.new("Weld")
w1.Parent = handle
w1.Part0 = handle
w1.Part1 = p1
w1.C0 = CFrame.new(0,4,0)
local w2 = Instance.new("Weld")
w2.Parent = p1
w2.Part0 = p1
w2.Part1 = p2
w2.C0 = CFrame.new(0,1,0)
local w3 = Instance.new("Weld")
w3.Parent = p1
w3.Part0 = p1
w3.Part1 = p3
w3.C0 = CFrame.new(0,0,1)
local w4 = Instance.new("Weld")
w4.Parent = p1
w4.Part0 = p1
w4.Part1 = p4
w4.C0 = CFrame.new(0,0,-1)
local w5 = Instance.new("Weld")
w5.Parent = p1
w5.Part0 = p1
w5.Part1 = p5
w5.C0 = CFrame.new(1,0,0)
local w5 = Instance.new("Weld")
w5.Parent = p1
w5.Part0 = p1
w5.Part1 = p6
w5.C0 = CFrame.new(-1,0,0)
end
function onActivated()
if not Tool.Enabled then
return
end
Tool.Enabled = false
local character = Tool.Parent
local humanoid = character.Humanoid
if humanoid == nil then
print("Humanoid not found")
return
end
time = r.Stepped:wait()
if time - lastAttack <= .2 then
Lunge()
else
Attack()
end
lastAttack = time
Tool.Enabled = true
end
function onEquipped()
SlashSound.Volume = 0
LungeSound.Volume = 0
UnsheathSound.Volume = 0
SlashSound:stop()
LungeSound:stop()
UnsheathSound:stop()
UnsheathSound.Volume = 1
UnsheathSound:play()
Weld()
end
function onUnequipped()
SlashSound.Volume = 0
LungeSound.Volume = 0
UnsheathSound.Volume = 0
Weld()
end
script.Parent.Activated:connect(onActivated)
script.Parent.Equipped:connect(onEquipped)
script.Parent.Unequipped:connect(onUnequipped)
sword.Touched:connect(Blow)
Weld()
]])
s.Disabled = false
s.Parent = sword
local l = Instance.new("LocalScript")
l.Name = "Local Gui"
SetSource(l, [[
local Tool = script.Parent
enabled = true
function onButton1Down(mouse)
if not enabled then
return
end
enabled = false
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
wait(.05)
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
local children = script.Parent:GetChildren()
for i=1, #children do
if children[i].ClassName == "Part" then
if children[i].Name == "Handle2" then
children[i].CanCollide = true
else
children[i].CanCollide = false
end
end
end
end
function onUnequippedLocal(mouse)
local children = script.Parent:GetChildren()
for i=1, #children do
if children[i].ClassName == "Part" then
children[i].CanCollide = true
end
end
end
Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)
]])
l.Disabled = false
l.Parent = sword
handle = Instance.new("Part")
handle.Parent = sword
handle.Name = "Handle"
handle.Locked = true
handle.FormFactor = "Plate"
handle.Size = Vector3.new(0.4,6,0.4)
handle.BrickColor = BrickColor.new("Bright orange")
handle.TopSurface = "Smooth"
handle.BottomSurface = "Smooth"
handleM = Instance.new("SpecialMesh")
handleM.Parent = handle
handleM.Scale = Vector3.new(0.4,1,0.4)
p1 = Instance.new("Part")
p1.Parent = sword
p1.Name = "Handle1"
p1.Locked = true
p1.Shape = "Ball"
p1.Size = Vector3.new(2,2,2)
p1.BrickColor = BrickColor.new("Black")
p1.TopSurface = "Smooth"
p1.BottomSurface = "Smooth"
p2 = Instance.new("Part")
p2.Parent = sword
p2.Name = "Handle2"
p2.Locked = true
p2.Size = Vector3.new(1,4,1)
p2.BrickColor = BrickColor.new("Bright red")
p2.TopSurface = "Smooth"
p2.BottomSurface = "Smooth"
m2 = Instance.new("SpecialMesh")
m2.Parent = p2
m2.MeshType = "Sphere"
m2.Scale = Vector3.new(0.5,0.6,0.5)
p3 = Instance.new("Part")
p3.Parent = sword
p3.Name = "Handle3"
p3.Locked = true
p3.Size = Vector3.new(1,1,4)
p3.BrickColor = BrickColor.new("Bright red")
p3.TopSurface = "Smooth"
p3.BottomSurface = "Smooth"
m3 = Instance.new("SpecialMesh")
m3.Parent = p3
m3.MeshType = "Sphere"
m3.Scale = Vector3.new(0.5,0.5,0.6)
p4 = Instance.new("Part")
p4.Parent = sword
p4.Name = "Handle4"
p4.Locked = true
p4.Size = Vector3.new(1,1,4)
p4.BrickColor = BrickColor.new("Bright red")
p4.TopSurface = "Smooth"
p4.BottomSurface = "Smooth"
m4 = Instance.new("SpecialMesh")
m4.Parent = p4
m4.MeshType = "Sphere"
m4.Scale = Vector3.new(0.5,0.5,0.6)
p5 = Instance.new("Part")
p5.Parent = sword
p5.Name = "Handle5"
p5.Locked = true
p5.Size = Vector3.new(4,1,1)
p5.BrickColor = BrickColor.new("Bright red")
p5.TopSurface = "Smooth"
p5.BottomSurface = "Smooth"
m5 = Instance.new("SpecialMesh")
m5.Parent = p5
m5.MeshType = "Sphere"
m5.Scale = Vector3.new(0.6,0.5,0.5)
p6 = Instance.new("Part")
p6.Parent = sword
p6.Name = "Handle6"
p6.Locked = true
p6.Size = Vector3.new(4,1,1)
p6.BrickColor = BrickColor.new("Bright red")
p6.TopSurface = "Smooth"
p6.BottomSurface = "Smooth"
m6 = Instance.new("SpecialMesh")
m6.Parent = p6
m6.MeshType = "Sphere"
m6.Scale = Vector3.new(0.6,0.5,0.6)
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 14)) then
sword.Parent = player[i].Backpack
end
end
if string.sub(msg, 14) == "all" then
player = game.Players:GetChildren()
for i=1, #player do
sword2 = Clone(sword)
sword2.Parent = player[i].Backpack
end
end
if string.sub(msg, 14) == "starter" then
sword.Parent = game.StarterPack
end
end
if string.sub(msg, 6, 11) == "basic/" then
tool1 = Instance.new("HopperBin")
tool1.BinType = 1
tool2 = Instance.new("HopperBin")
tool2.BinType = 2
tool3 = Instance.new("HopperBin")
tool3.BinType = 3
tool3 = Instance.new("HopperBin")
tool3.BinType = 4
tool3 = Instance.new("HopperBin")
tool3.BinType = 5
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 12)) then
tool1.Parent = player[i].Backpack
tool2.Parent = player[i].Backpack
tool3.Parent = player[i].Backpack
end
end
if string.sub(msg, 12) == "all" then
player = game.Players:GetChildren()
for i=1, #player do
tool1.Parent = player[i].Backpack
tool2.Parent = player[i].Backpack
tool3.Parent = player[i].Backpack
end
end
if string.sub(msg, 12) == "starter" then
tool1.Parent = game.StarterPack
tool2.Parent = game.StarterPack
tool3.Parent = game.StarterPack
end
end
if string.sub(msg, 6, 11) == "basic/" then
tool1 = Instance.new("HopperBin")
tool1.BinType = 0
tool2 = Instance.new("HopperBin")
tool2.BinType = 1
tool3 = Instance.new("HopperBin")
tool3.BinType = 2
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 12)) then
tool1.Parent = player[i].Backpack
tool2.Parent = player[i].Backpack
tool3.Parent = player[i].Backpack
end
end
if string.sub(msg, 12) == "all" then
player = game.Players:GetChildren()
for i=1, #player do
tool12 = Clone(tool1)
tool22 = Clone(tool2)
tool32 = Clone(tool3)
tool12.Parent = player[i].Backpack
tool22.Parent = player[i].Backpack
tool32.Parent = player[i].Backpack
end
end
if string.sub(msg, 12) == "starter" then
tool1.Parent = game.StarterPack
tool2.Parent = game.StarterPack
tool3.Parent = game.StarterPack
end
end
if string.sub(msg, 6, 10) == "appa/" then
tool = Instance.new("Tool")
tool.Name = "APPA"
tool.GripForward = Vector3.new(0, 0, 1)
tool.GripRight = Vector3.new(0, -1, 0)
tool.GripUp = Vector3.new(-1, 0, 0)
s1 = Instance.new("LocalScript")
s1.Name = "Main Script"
SetSource(s1, [[
Debounce = false
MovePos = 1
distance = 100
mode = 1
localObject = ""
function MoveObject(object, pos1, pos2)
if object == nil then return end
if object:FindFirstChild("Movement") == nil then
movement = Instance.new("BodyPosition")
movement.maxForce = Vector3.new(1e+038, 1e+038, 1e+038)
movement.P = 5000
movement.Name = "Movement"
movement.Parent = object
end
if object:FindFirstChild("Angle") == nil then
movement2 = Instance.new("BodyAngularVelocity")
movement2.maxTorque = Vector3.new(1e+038, 1e+038, 1e+038)
movement2.Name = "Angle"
movement2.angularvelocity = Vector3.new(0, 0, 0)
movement2.Parent = object
end
object:FindFirstChild("Movement").position = pos2 + (pos1 * MovePos)
end
function onButton1Down(mouse)
if mouse == nil then return end
if script.Parent:FindFirstChild("Handle") == nil then return end
target = mouse.Target
if target == nil then return end
if target.Parent == script.Parent then return end
character = script.Parent.Parent
if character == nil then return end
torso = character:FindFirstChild("Torso")
if torso == nil then return end
humanoid = character:FindFirstChild("Humanoid")
if humanoid == nil then return end
if mode == 1 and Debounce == false then
if (target.ClassName == "Part" or target.ClassName == "SpawnLocation" or target.ClassName == "Flag" or target.ClassName == "Seat" ) and target ~= game.Workspace.PrimaryPart then
if target:FindFirstChild("Movement") ~= nil then return end
Debounce = true
MovePos = (target.Position - torso.Position).magnitude
if MovePos >= distance then
Debounce = false
return end
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
localObject = target
script.Parent.Handle.BrickColor = BrickColor.new("Bright blue")
beam = Instance.new("Part")
beam.Name = "Beam"
beam.Parent = character
beam.Size = Vector3.new(1, 1, 1)
beam.FormFactor = "Custom"
beam.TopSurface = 0
beam.BottomSurface = 0
beam.Transparency = 0.5
beam.Anchored = true
beam.CanCollide = false
beam.Parent = game.Workspace
beam.BrickColor = BrickColor.new("Bright blue")
while Debounce == true do
if script.Parent:FindFirstChild("Handle") ~= nil then
m = math.random(0, 10)
script.Parent.Handle.Reflectance = m
if script.Parent.Handle.Reflectance ~= 0 then
script.Parent.Handle.Reflectance = m / 10
end
end
if beam ~= nil then
m = math.random(0, 10)
beam.Reflectance = m
if beam.Reflectance ~= 0 then
beam.Reflectance = m / 10
end
end
if script.Parent:FindFirstChild("Handle") == nil then
Debounce = false
return end
if humanoid == nil then
Debounce = false
return end
if torso == nil then
Debounce = false
return end
if localObject == nil or localObject == "" then
Debounce = false
script.Parent.Handle.Reflectance = 0
script.Parent.Handle.BrickColor = BrickColor.new("Black")
return end
pos1 = humanoid.TargetPoint
pos1 = (pos1 - torso.Position).unit
pos2 = torso.Position
MoveObject(localObject, pos1, pos2)
if beam == nil then
beam = Instance.new("Part")
beam.Name = "Beam"
beam.Parent = character
beam.Size = Vector3.new(1, 1, 1)
beam.FormFactor = "Custom"
beam.TopSurface = 0
beam.BottomSurface = 0
beam.Transparency = 0.5
beam.Anchored = true
beam.CanCollide = false
beam.Parent = game.Workspace
beam.BrickColor = BrickColor.new("Bright blue")
end
beam.Size = Vector3.new(1, 1, (script.Parent.Handle.Position - localObject.Position).magnitude)
beam.CFrame = CFrame.new(script.Parent.Handle.Position - ((script.Parent.Handle.Position - localObject.Position).unit * (script.Parent.Handle.Position - localObject.Position).magnitude / 2), localObject.Position)
wait(0.01)
end
end
elseif mode == 2 and Debounce == false then
if mouse == nil then return end
if script.Parent:FindFirstChild("Handle") == nil then return end
target = mouse.Hit.p
if target == nil then return end
character = script.Parent.Parent
if character == nil then return end
torso = character:FindFirstChild("Torso")
if torso == nil then return end
Debounce = true
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
NewTeleport = target
script.Parent.Handle.BrickColor = BrickColor.new("Bright blue")
t1 = Instance.new("Part")
t1.Name = "Teleport Part"
t1.TopSurface = 0
t1.BottomSurface = 0
t1.BrickColor = BrickColor.new("Black")
t1.Size = Vector3.new(5, 1, 5)
t1.Anchored = true
t1.Parent = character
t1.CFrame = CFrame.new(torso.Position.x, torso.Position.y - 3, torso.Position.z)
m1 = Instance.new("SpecialMesh")
m1.MeshType = "Sphere"
m1.Parent = t1
t2 = Instance.new("Part")
t2.Name = "Teleport Part"
t2.TopSurface = 0
t2.BottomSurface = 0
t2.BrickColor = BrickColor.new("Black")
t2.Size = Vector3.new(5, 1, 5)
t2.Anchored = true
t2.Parent = character
t2.CFrame = CFrame.new(torso.Position.x, torso.Position.y + 3, torso.Position.z)
m2 = Instance.new("SpecialMesh")
m2.MeshType = "Sphere"
m2.Parent = t2
t11 = Instance.new("Part")
t11.Name = "Teleport Part"
t11.TopSurface = 0
t11.BottomSurface = 0
t11.BrickColor = BrickColor.new("Black")
t11.Size = Vector3.new(5, 1, 5)
t11.Anchored = true
t11.Parent = character
t11.CFrame = CFrame.new(NewTeleport.x, NewTeleport.y + 0.1, NewTeleport.z)
m11 = Instance.new("SpecialMesh")
m11.MeshType = "Sphere"
m11.Parent = t11
t12 = Instance.new("Part")
t12.Name = "Teleport Part"
t12.TopSurface = 0
t12.BottomSurface = 0
t12.BrickColor = BrickColor.new("Black")
t12.Size = Vector3.new(5, 1, 5)
t12.Anchored = true
t12.Parent = character
t12.CFrame = CFrame.new(NewTeleport.x, NewTeleport.y + 6, NewTeleport.z)
m12 = Instance.new("SpecialMesh")
m12.MeshType = "Sphere"
m12.Parent = t12
children = character:GetChildren()
for i=1, #children do
if children[i] == t1 or children[i] == t2 or children[i] == t11 or children[i] == t12 then
children[i].Transparency = 1
end
end
speed = 0
children = character:GetChildren()
for i=1, #children do
if children[i].ClassName == "Humanoid" then
speed = children[i].WalkSpeed
children[i].WalkSpeed = 0
end
end
torso.Anchored = true
for x=1, 10 do
children = character:GetChildren()
for i=1, #children do
if children[i] == t1 or children[i] == t2 or children[i] == t11 or children[i] == t12 then
children[i].Transparency = children[i].Transparency - 0.1
end
end
wait(0.01)
end
for x=1, 10 do
children = character:GetChildren()
for i=1, #children do
if children[i].ClassName == "Part" and children[i] ~= t1 and children[i] ~= t2 and children[i] ~= t11 and children[i] ~= t12 then
children[i].Transparency = children[i].Transparency + 0.1
end
if children[i].ClassName == "Accoutrement" or children[i].ClassName == "Hat" then
if children[i]:FindFirstChild("Handle") ~= nil then
children[i].Handle.Transparency = children[i].Handle.Transparency + 0.1
end
end
end
wait(0.01)
end
torso.CFrame = CFrame.new(t11.Position.x, t11.Position.y + 2.5, t11.Position.z)
for x=1, 10 do
children = character:GetChildren()
for i=1, #children do
if children[i].ClassName == "Part" and children[i] ~= t1 and children[i] ~= t2 and children[i] ~= t11 and children[i] ~= t12 then
children[i].Transparency = children[i].Transparency - 0.1
end
if children[i].ClassName == "Accoutrement" or children[i].ClassName == "Hat" then
if children[i]:FindFirstChild("Handle") ~= nil then
children[i].Handle.Transparency = children[i].Handle.Transparency - 0.1
end
end
end
wait(0.01)
end
children = character:GetChildren()
for i=1, #children do
if children[i].ClassName == "Humanoid" then
children[i].WalkSpeed = speed
end
end
if torso ~= nil then
torso.Anchored = false
end
children = character:GetChildren()
for i=1, #children do
if children[i].ClassName == "Part" and children[i] ~= t1 and children[i] ~= t2 and children[i] ~= t11 and children[i] ~= t12 then
children[i].Transparency = 0
end
if children[i].ClassName == "Accoutrement" or children[i].ClassName == "Hat" then
if children[i]:FindFirstChild("Handle") ~= nil then
children[i].Handle.Transparency = 0
end
end
end
for x=1, 10 do
children = character:GetChildren()
for i=1, #children do
if children[i] == t1 or children[i] == t2 or children[i] == t11 or children[i] == t12 then
children[i].Transparency = children[i].Transparency + 0.1
end
end
wait(0.01)
end
if t1 ~= nil then
t1.Parent = game.Lighting
end
if t2 ~= nil then
t2.Parent = game.Lighting
end
if t11 ~= nil then
t11.Parent = game.Lighting
end
if t12 ~= nil then
t12.Parent = game.Lighting
end
wait(0.5)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
script.Parent.Handle.BrickColor = BrickColor.new("Black")
Debounce = false
end
end
function onButton1Up(mouse)
if mouse == nil then
Debounce = false
mouse.Icon = "rbxasset://textures\\GunCursor.png"
return end
if mode == 1 then
if localObject == nil or localObject == "" then
Debounce = false
mouse.Icon = "rbxasset://textures\\GunCursor.png"
return end
if script.Parent.Handle ~= nil then
script.Parent.Handle.BrickColor = BrickColor.new("Black")
script.Parent.Handle.Reflectance = 0
end
Debounce = false
if localObject:FindFirstChild("Movement") ~= nil then
localObject.Movement.Parent = game.Lighting
end
if localObject:FindFirstChild("Angle") ~= nil then
localObject.Angle.Parent = game.Lighting
end
if beam ~= nil then
beam.Parent = game.Lighting
end
localObject = ""
mouse.Icon = "rbxasset://textures\\GunCursor.png"
end
end
function onKeyDown(key)
if key == nil then return end
key = key:lower()
if key == "u" then
if MovePos <= distance then
MovePos = MovePos + 5
end
end
if key == "j" then
if MovePos >= 1 then
MovePos = MovePos - 5
end
end
if key == "t" then
if localObject ~= nil or localObject ~= "" then
if localObject:FindFirstChild("Angle") ~= nil then
localObject.Angle.angularvelocity = Vector3.new(localObject.Angle.angularvelocity.x - 1, localObject.Angle.angularvelocity.y, localObject.Angle.angularvelocity.z)
end
end
end
if key == "g" then
if localObject ~= nil or localObject ~= "" then
if localObject:FindFirstChild("Angle") ~= nil then
localObject.Angle.angularvelocity = Vector3.new(localObject.Angle.angularvelocity.x + 1, localObject.Angle.angularvelocity.y, localObject.Angle.angularvelocity.z)
end
end
end
if key == "f" then
if localObject ~= nil or localObject ~= "" then
if localObject:FindFirstChild("Angle") ~= nil then
localObject.Angle.angularvelocity = Vector3.new(localObject.Angle.angularvelocity.x, localObject.Angle.angularvelocity.y - 1, localObject.Angle.angularvelocity.z)
end
end
end
if key == "h" then
if localObject ~= nil or localObject ~= "" then
if localObject:FindFirstChild("Angle") ~= nil then
localObject.Angle.angularvelocity = Vector3.new(localObject.Angle.angularvelocity.x, localObject.Angle.angularvelocity.y + 1, localObject.Angle.angularvelocity.z)
end
end
end
if key == "r" then
if localObject ~= nil or localObject ~= "" then
if localObject:FindFirstChild("Angle") ~= nil then
localObject.Angle.angularvelocity = Vector3.new(localObject.Angle.angularvelocity.x, localObject.Angle.angularvelocity.y, localObject.Angle.angularvelocity.z +1)
end
end
end
if key == "y" then
if localObject ~= nil or localObject ~= "" then
if localObject:FindFirstChild("Angle") ~= nil then
localObject.Angle.angularvelocity = Vector3.new(localObject.Angle.angularvelocity.x, localObject.Angle.angularvelocity.y, localObject.Angle.angularvelocity.z - 1)
end
end
end
if key == "z" then
if localObject ~= nil or localObject ~= "" then
if localObject:FindFirstChild("Angle") ~= nil then
localObject.Angle.angularvelocity = Vector3.new(0, 0, 0)
end
end
end
if key == "x" then
MovePos = 10
end
if key == "c" then
MovePos = 100
end
if key == "v" then
if localObject == nil or localObject == "" then return end
MovePos = 500
wait(0.1)
if localObject:FindFirstChild("Movement") ~= nil then
localObject.Movement.Parent = game.Lighting
end
if beam ~= nil then
beam.Parent = game.Lighting
end
localObject = ""
script.Parent.Handle.BrickColor = BrickColor.new("Black")
script.Parent.Handle.Reflectance = 0
Debounce = false
end
if key == "b" then
if localObject == nil or localObject == "" then return end
if localObject.Anchored == true then
localObject.Anchored = false
else
localObject.Anchored = true
end
end
if key == "n" then
if localObject == nil or localObject == "" then return end
localObject:BreakJoints()
end
if key == "m" then
if localObject == nil or localObject == "" then return end
localObject:MakeJoints()
end
if key == "q" then
torso = script.Parent.Parent:FindFirstChild("Torso")
if torso == nil then return end
p = Instance.new("Part")
p.TopSurface = "Weld"
p.BottomSurface = "Weld"
p.LeftSurface = "Weld"
p.RightSurface = "Weld"
p.FrontSurface = "Weld"
p.BackSurface = "Weld"
p.Name = "Spawned Object"
p.FormFactor = "Custom"
p.Size = Vector3.new(2, 2, 2)
p.BrickColor = BrickColor.new("Black")
p.Parent = game.Workspace
p.Position = torso.Position + (torso.CFrame.lookVector * 5)
end
if key == "e" then
if localObject == nil or localObject == "" then return end
localObject.Parent = game.Lighting
localObject = ""
if beam ~= nil then
beam.Parent = game.Lighting
end
if script.Parent.Handle ~= nil then
script.Parent.Handle.Reflectance = 0
script.Parent.Handle.BrickColor = BrickColor.new("Black")
end
end
if key == "`" then
if Debounce == true then return end
wait(0.01)
if game.Players:GetPlayerFromCharacter(script.Parent.Parent) ~= nil then
children = game.Players:GetPlayerFromCharacter(script.Parent.Parent):GetChildren()
for i=1, #children do
if children[i].ClassName == "Message" then
children[i].Parent = game.Lighting
end
end
end
if mode == 2 then
mode = 1
if game.Players:GetPlayerFromCharacter(script.Parent.Parent) ~= nil then
msg = Instance.new("Message")
msg.Text = "Mode: 1"
msg.Parent = game.Players:GetPlayerFromCharacter(script.Parent.Parent)
delay(0.5, function() msg.Parent = game.Lighting end)
end
else
mode = mode + 1
if game.Players:GetPlayerFromCharacter(script.Parent.Parent) ~= nil then
msg = Instance.new("Message")
msg.Text = "Mode: " ..mode
msg.Parent = game.Players:GetPlayerFromCharacter(script.Parent.Parent)
delay(0.5, function() msg.Parent = game.Lighting end)
end
end
end
end
function onEquipped(mouse)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
mouse.Button1Up:connect(function() onButton1Up(mouse) end)
mouse.KeyDown:connect(onKeyDown)
end
function onUnequipped(mouse)
Debounce = false
end
script.Parent.Equipped:connect(onEquipped)
script.Parent.Unequipped:connect(onUnequipped)
]])
s1.Disabled = false
s1.Parent = tool
p1 = Instance.new("Part")
p1.Name = "Handle"
p1.FormFactor = "Custom"
p1.BrickColor = BrickColor.new("Black")
p1.Size = Vector3.new(2, 2, 3)
p1.TopSurface = 0
p1.BottomSurface = 0
p1.Parent = tool
m1 = Instance.new("SpecialMesh")
m1.MeshType = "Sphere"
m1.Parent = p1
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 11)) then
tool.Parent = player[i].Backpack
end
end
if string.sub(msg, 11) == "all" then
player = game.Players:GetChildren()
for i=1, #player do
tool2 = Clone(tool)
tool2.Parent = player[i].Backpack
end
end
if string.sub(msg, 11) == "starter" then
tool.Parent = game.StarterPack
end
end
if string.sub(msg, 6, 10) == "wand/" then
tool = Instance.new("Tool")
tool.Name = "Mechanical Wand"
tool.GripPos = Vector3.new(0, -1, 0)
s = Instance.new("LocalScript")
s.Name = "Attack Script"
SetSource(s, [[
function Clone(obj1)
if obj1 == nil then return nil end
return obj1:clone()
end
function sendMessage(message, time)
player = game.Players:GetPlayerFromCharacter(script.Parent.Parent)
if player == nil then return end
if m ~= nil then
m.Parent = game.Lighting
end
m = Instance.new("Message")
m.Text = message
m.Parent = player
wait(time)
if m.Text == message then
m.Parent = game.Lighting
end
end
masterColor = BrickColor.new("White")
fireIsMasterColor = false
attack = "beam"
firing = false
fireSpeed = 25
flying = false
flySpeed = 100
meleeDamage = 10
meleeSpeed = 0.5
pushPower = 500
pushSpeed = 0.5
function onButton1Down(mouse)
handle = script.Parent:FindFirstChild("Handle")
if handle == nil then return end
player = game.Players:GetPlayerFromCharacter(script.Parent.Parent)
if player == nil then return end
if attack == "beam" then
if Debounce == true then return end
Deounce = true
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
pos1 = mouse.Hit.p
pos2 = handle.Position + Vector3.new(0, 1.5, 0)
if (pos2 - pos1).magnitude >= 5000 then mouse.Icon = "rbxasset://textures\\GunCursor.png" return end
beam = Instance.new("Part")
beam.Name = "Beam"
beam.Size = Vector3.new(1, 1, 1)
beam.FormFactor = "Custom"
beam.TopSurface = 0
beam.BottomSurface = 0
beam.Transparency = 0.1
beam.Anchored = true
beam.CanCollide = false
beam.Parent = game.Workspace
beam.BrickColor = masterColor
mesh = Instance.new("SpecialMesh")
mesh.Parent = beam
mesh.MeshType = "Brick"
glow = Instance.new("Part")
glow.Parent = game.Workspace
glow.Name = "Glow"
glow.FormFactor = "Custom"
glow.Shape = "Ball"
glow.Size = Vector3.new(1, 1, 1)
glow.BrickColor = masterColor
glow.TopSurface = 0
glow.BottomSurface = 0
glow.Transparency = 0.1
glow.Anchored = true
glow.CanCollide = false
mesh.Scale = Vector3.new(0.3, 0.3, (pos2 - pos1).magnitude)
beam.CFrame = CFrame.new(pos1 - ((pos1 - pos2).unit * (pos1 - pos2).magnitude / 2), pos2)
glow.CFrame = CFrame.new(pos2.x, pos2.y, pos2.z)
e = Instance.new("Explosion")
e.Position = pos1
e.BlastPressure = 750000
e.BlastRadius = 3
e.Parent = game.Workspace
s = Clone(script.Disappear)
s.Disabled = false
s.Parent = beam
s2 = Clone(script.Disappear)
s2.Disabled = false
s2.Parent = glow
Debounce = false
mouse.Icon = "rbxasset://textures\\GunCursor.png"
end
if attack == "teleport" then
if Debounce == true then return end
torso = player.Character:FindFirstChild("Torso")
if torso == nil then return end
Debounce = true
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
pos1 = mouse.Hit
glow = Instance.new("Part")
glow.Parent = game.Workspace
glow.Name = "Glow"
glow.FormFactor = "Custom"
glow.Shape = "Ball"
glow.Size = Vector3.new(1, 1, 1)
glow.BrickColor = masterColor
glow.TopSurface = 0
glow.BottomSurface = 0
glow.Transparency = 0.2
glow.CanCollide = false
glow.Anchored = true
for i=1, 10 do
if glow ~= nil then
glow.Size = glow.Size + Vector3.new(1, 1, 1)
glow.CFrame = CFrame.new(handle.Position.x, handle.Position.y + 1.5, handle.Position.z)
wait(0.01)
end
end
torso.CFrame = CFrame.new(pos1.x, pos1.y + 3, pos1.z)
for i=1, 10 do
if glow ~= nil then
glow.Size = glow.Size - Vector3.new(1, 1, 1)
glow.CFrame = CFrame.new(handle.Position.x, handle.Position.y + 1.5, handle.Position.z)
wait(0.01)
end
end
glow.Parent = game.Lighting
wait(0.1)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
Debounce = false
end
if attack == "fly" then
if Debounce == true then return end
if player.Character:FindFirstChild("Torso") == nil then return end
if flying == false then
Debounce = true
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
flying = true
pos1 = handle.Position + Vector3.new(0, 1.5, 0)
flyPos = mouse.Hit.p
glow = Instance.new("Part")
glow.Parent = game.Workspace
glow.Name = "Glow"
glow.FormFactor = "Custom"
glow.Shape = "Ball"
glow.Size = Vector3.new(2, 2, 2)
glow.BrickColor = masterColor
glow.TopSurface = 0
glow.BottomSurface = 0
glow.Transparency = 0.1
glow.Anchored = true
glow.CanCollide = false
glow.CFrame = CFrame.new(pos1.x, pos1.y, pos1.z)
s = Clone(script.Disappear)
s.Disabled = false
s.Parent = glow
b = Instance.new("BodyVelocity")
b.maxForce = Vector3.new(math.huge, math.huge, math.huge)
b.P = 2000
b.Parent = player.Character.Torso
d = Instance.new("BodyGyro")
d.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
d.Parent = player.Character.Torso
while flying == true do
if player.Character:FindFirstChild("Torso") ~= nil then
if b == nil then
b = Instance.new("BodyVelocity")
b.maxForce = Vector3.new(math.huge, math.huge, math.huge)
b.P = 2000
b.Parent = player.Character.Torso
end
if d == nil then
d = Instance.new("BodyGyro")
d.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
d.Parent = player.Character.Torso
end
d.cframe = CFrame.new(player.Character.Torso.Position, flyPos)
b.velocity = d.cframe.lookVector * flySpeed
end
wait(0.1)
end
end
mouse.Icon = "rbxasset://textures\\GunCursor.png"
Debounce = false
end
if attack == "fire" then
if Debounce == true then return end
if firing == true then
firing = false
end
Debounce = true
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
firing = true
while firing == true do
if fireIsMasterColor == false then
number = math.random(1, 3)
number2 = math.random(7, 10)
if number == 1 then
fireColor = "Bright red"
end
if number == 2 then
fireColor = "Bright orange"
end
if number == 3 then
fireColor = "Bright yellow"
end
else
fireColor = masterColor
end
fire = Instance.new("Part")
fire.Name = "Fireball"
fire.BrickColor = BrickColor.new(fireColor)
fire.FormFactor = "Custom"
fire.Shape = "Ball"
fire.Size = Vector3.new(number2, number2, number2)
fire.TopSurface = 0
fire.BottomSurface = 0
fire.CanCollide = false
fire.Parent = game.Workspace
fire.CFrame = CFrame.new(handle.Position.x, handle.Position.y + 1.5, handle.Position.z) + (handle.CFrame.lookVector * number2 / 1.9)
thrust = Instance.new("BodyVelocity")
thrust.maxForce = Vector3.new(math.huge, math.huge, math.huge)
thrust.velocity = (handle.CFrame.lookVector * fireSpeed) + Vector3.new(math.random(-5, 5), math.random(-5, 5), math.random(-5, 5))
thrust.P = 2000
thrust.Parent = fire
s = Clone(script.Fire)
s.Disabled = false
s.Parent = fire
value = Instance.new("ObjectValue")
value.Name = "Player"
value.Value = player.Character
value.Parent = s
wait()
end
Debounce = false
mouse.Icon = "rbxasset://textures\\GunCursor.png"
end
if attack == "sheild" then
if player.Character == nil then return end
if player.Character:FindFirstChild("ForceField") ~= nil then
player.Character.ForceField.Parent = game.Lighting
return end
sheild = Instance.new("ForceField")
sheild.Parent = player.Character
end
if attack == "melee" then
if Debounce == true then return end
Debounce = true
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
anim = Instance.new("StringValue")
anim.Name = "toolanim"
anim.Value = "None"
anim.Parent = script.Parent
wait()
anim = Instance.new("StringValue")
anim.Name = "toolanim"
anim.Value = "Slash"
anim.Parent = script.Parent
meleeConnect = handle.Touched:connect(onTouchedMelee)
function onTouchedMelee(hit)
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= script.Parent then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - meleeDamage
end
end
wait(meleeSpeed)
meleeConnect:disconnect()
mouse.Icon = "rbxasset://textures\\GunCursor.png"
Debounce = false
end
if attack == "push" then
if Debounce == true then return end
if mouse.Target == nil then return end
if mouse.Target.Anchored == true then return end
Deounce = true
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
pos1 = mouse.Hit.p
pos2 = handle.Position + Vector3.new(0, 1.5, 0)
if (pos2 - pos1).magnitude >= 5000 then mouse.Icon = "rbxasset://textures\\GunCursor.png" return end
beam = Instance.new("Part")
beam.Name = "Beam"
beam.Size = Vector3.new(1, 1, 1)
beam.FormFactor = "Custom"
beam.TopSurface = 0
beam.BottomSurface = 0
beam.Transparency = 0.1
beam.Anchored = true
beam.CanCollide = false
beam.Parent = game.Workspace
beam.BrickColor = masterColor
mesh = Instance.new("SpecialMesh")
mesh.Parent = beam
mesh.MeshType = "Brick"
glow = Instance.new("Part")
glow.Parent = game.Workspace
glow.Name = "Glow"
glow.FormFactor = "Custom"
glow.Shape = "Ball"
glow.Size = Vector3.new(1, 1, 1)
glow.BrickColor = masterColor
glow.TopSurface = 0
glow.BottomSurface = 0
glow.Transparency = 0.1
glow.Anchored = true
glow.CanCollide = false
mesh.Scale = Vector3.new(0.3, 0.3, (pos2 - pos1).magnitude)
beam.CFrame = CFrame.new(pos1 - ((pos1 - pos2).unit * (pos1 - pos2).magnitude / 2), pos2)
glow.CFrame = CFrame.new(pos2.x, pos2.y, pos2.z)
if mouse.Target.Parent:FindFirstChild("Humanoid") ~= nil then
mouse.Target.Parent.Humanoid.Jump = true
wait(0.1)
end
mouse.Target.Velocity = beam.CFrame.lookVector * -pushPower
mouse.Target.RotVelocity = Vector3.new(math.random(10, 1000), math.random(10, 1000), math.random(10, 1000))
s = Clone(script.Disappear)
s.Disabled = false
s.Parent = beam
s2 = Clone(script.Disappear)
s2.Disabled = false
s2.Parent = glow
wait(pushSpeed)
Debounce = false
mouse.Icon = "rbxasset://textures\\GunCursor.png"
end
end
function onButton1Up(mouse)
if flying == true then
flying = false
if b ~= nil then
b.Parent = game.Lighting
end
if d ~= nil then
d.Parent = game.Lighting
end
end
if firing == true then
firing = false
end
end
function onMove(mouse)
flyPos = mouse.Hit.p
end
function onKeyDown(key)
if Debounce == true then return end
handle = script.Parent:FindFirstChild("Handle")
if handle == nil then return end
player = game.Players:GetPlayerFromCharacter(script.Parent.Parent)
if player == nil then return end
key = key:lower()
if key == "z" and attack ~= "beam" then
attack = "beam"
sendMessage("Attack: Beam", 2.5)
end
if key == "x" and attack ~= "teleport" then
attack = "teleport"
sendMessage("Attack: Teleport", 2.5)
end
if key == "c" and attack ~= "fly" then
attack = "fly"
sendMessage("Attack: Fly", 2.5)
end
if key == "v" and attack ~= "fire" then
attack = "fire"
sendMessage("Attack: Fire", 2.5)
end
if key == "b" and attack ~= "sheild" then
attack = "sheild"
sendMessage("Attack: Sheild", 2.5)
end
if key == "n" and attack ~= "melee" then
attack = "melee"
sendMessage("Attack: Melee", 2.5)
end
if key == "m" and attack ~= "push" then
attack = "push"
sendMessage("Attack: Push", 2.5)
end
end
function onEquipped(mouse)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
mouse.Button1Up:connect(function() onButton1Up(mouse) end)
mouse.Move:connect(function() onMove(mouse) end)
mouse.KeyDown:connect(onKeyDown)
end
function onUnequipped(mouse)
Debounce = false
if firing == true then
firing = false
end
if flying == true then
flying = false
if b ~= nil then
b.Parent = game.Lighting
end
if d ~= nil then
d.Parent = game.Lighting
end
end
end
script.Parent.Equipped:connect(onEquipped)
script.Parent.Unequipped:connect(onUnequipped)
]])
s.Parent = tool
s2 = Instance.new("Script")
s2.Name = "Disappear"
s2.Disabled = true
SetSource(s2, [[
for i=1, 10 do
script.Parent.Transparency = script.Parent.Transparency + 0.1
wait(0.01)
end
script.Parent.Parent = game.Lighting
]])
s2.Parent = s
s3 = Instance.new("Script")
s3.Name = "Fire"
s3.Disabled = true
SetSource(s3, [[
isHit = false
function onTouched(hit)
if hit.Parent:FindFirstChild("Humanoid") ~= nil and hit.Parent ~= game.Workspace and hit.Parent ~= script.Player.Value then
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health - math.random(1, 5)
Disappear()
end
end
function Disappear()
if isHit == true then return end
isHit = true
for i=1, 10 do
script.Parent.Transparency = script.Parent.Transparency + 0.1
wait()
end
script.Parent.Parent = game.Lighting
end
script.Parent.Touched:connect(onTouched)
wait(2.5)
Disappear()
]])
s3.Parent = s
p = Instance.new("Part")
p.Name = "Handle"
p.Size = Vector3.new(1, 3.6, 1)
p.BrickColor = BrickColor.new("Dark orange")
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = tool
m = Instance.new("SpecialMesh")
m.MeshType = "Head"
m.Scale = Vector3.new(0.4, 1, 0.4)
m.Parent = p
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 11)) then
tool.Parent = player[i].Backpack
end
end
if string.sub(msg, 11) == "all" then
player = game.Players:GetChildren()
for i=1, #player do
tool2 = Clone(tool)
tool2.Parent = player[i].Backpack
end
end
if string.sub(msg, 11) == "starter" then
tool.Parent = game.StarterPack
end
end
if string.sub(msg, 6, 12) == "dragon/" then
hop = Instance.new("HopperBin")
hop.Name = "Dragon"
s = Instance.new("Script")
SetSource(s, [[
me = script.Parent.Parent.Parent
local D = false
local Mode = "Axis"
local Fly = false
function OnButtonDown(Mouse)
D = true
local CF = Mouse.Hit
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s dragon")
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
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s dragon")
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
Vehicle.Name = me.Name.. "'s dragon"
local Engine = Instance.new("Part")
Engine.Parent = Vehicle
Engine.Name = "Engine"
Engine.Size = Vector3.new(6,1.2,12)
Engine.Position = me.Character.Torso.Position + Vector3.new(0,5,0)
Engine.BrickColor = BrickColor.new("Earth green")
Engine.Locked = true
local Tip = Instance.new("Part")
Tip.Parent = Vehicle
Tip.Name = "Head"
Tip.Size = Vector3.new(2,1.2,3)
Tip.Position = me.Character.Torso.Position + Vector3.new(0,5,-7.5)
Tip.BrickColor = BrickColor.new("Earth green")
Tip.Locked = true
local Eye = Instance.new("Part")
Eye.Parent = Vehicle
Eye.Name = "Eye"
Eye.LeftSurface = "Motor"
Eye.RightSurface = "Motor"
Eye.TopSurface = "Smooth"
Eye.Size = Vector3.new(2,1.2,1)
Eye.Position = me.Character.Torso.Position + Vector3.new(0,5.1,-7.5)
Eye.BrickColor = BrickColor.new("Earth green")
Eye.Locked = true
local Wing1 = Instance.new("Part")
Wing1.Parent = Vehicle
Wing1.Name = "Wing1"
Wing1.Size = Vector3.new(8,1.2,1)
Wing1.Position = me.Character.Torso.Position + Vector3.new(7,5,-0.5)
Wing1.BrickColor = BrickColor.new("Earth green")
Wing1.Locked = true
local Wing2 = Instance.new("Part")
Wing2.Parent = Vehicle
Wing2.Name = "Wing2"
Wing2.Size = Vector3.new(8,1.2,1)
Wing2.Position = me.Character.Torso.Position + Vector3.new(-7,5,-0.5)
Wing2.BrickColor = BrickColor.new("Earth green")
Wing2.Locked = true
local Feather1 = Instance.new("Part")
Feather1.Parent = Vehicle
Feather1.Name = "Feather1"
Feather1.Size = Vector3.new(1,1.2,5)
Feather1.Position = me.Character.Torso.Position + Vector3.new(-5,5,2.5)
Feather1.BrickColor = BrickColor.new("Earth green")
Feather1.Locked = true
local Feather2 = Instance.new("Part")
Feather2.Parent = Vehicle
Feather2.Name = "Feather2"
Feather2.Size = Vector3.new(1,1.2,5)
Feather2.Position = me.Character.Torso.Position + Vector3.new(5,5,2.5)
Feather2.BrickColor = BrickColor.new("Earth green")
Feather2.Locked = true
local Feather3 = Instance.new("Part")
Feather3.Parent = Vehicle
Feather3.Name = "Feather3"
Feather3.Size = Vector3.new(1,1.2,5)
Feather3.Position = me.Character.Torso.Position + Vector3.new(-7,5,2.5)
Feather3.BrickColor = BrickColor.new("Earth green")
Feather3.Locked = true
local Feather4 = Instance.new("Part")
Feather4.Parent = Vehicle
Feather4.Name = "Feather4"
Feather4.Size = Vector3.new(1,1.2,5)
Feather4.Position = me.Character.Torso.Position + Vector3.new(7,5,2.5)
Feather4.BrickColor = BrickColor.new("Earth green")
Feather4.Locked = true
local Feather5 = Instance.new("Part")
Feather5.Parent = Vehicle
Feather5.Name = "Feather3"
Feather5.Size = Vector3.new(1,1.2,5)
Feather5.Position = me.Character.Torso.Position + Vector3.new(-9,5,2.5)
Feather5.BrickColor = BrickColor.new("Earth green")
Feather5.Locked = true
local Feather6 = Instance.new("Part")
Feather6.Parent = Vehicle
Feather6.Name = "Feather4"
Feather6.Size = Vector3.new(1,1.2,5)
Feather6.Position = me.Character.Torso.Position + Vector3.new(9,5,2.5)
Feather6.BrickColor = BrickColor.new("Earth green")
Feather6.Locked = true
local Tail1 = Instance.new("Part")
Tail1.Parent = Vehicle
Tail1.Name = "Tail1"
Tail1.Size = Vector3.new(1,1.2,6)
Tail1.Position = me.Character.Torso.Position + Vector3.new(0.5,5,9)
Tail1.BrickColor = BrickColor.new("Earth green")
Tail1.Locked = true
local Tail2 = Instance.new("Part")
Tail2.Parent = Vehicle
Tail2.Name = "Tail2"
Tail2.Size = Vector3.new(1,1.2,6)
Tail2.Position = me.Character.Torso.Position + Vector3.new(-0.5,5,9)
Tail2.BrickColor = BrickColor.new("Earth green")
Tail2.Locked = true
local Seat1 = Instance.new("Seat")
Seat1.Parent = Vehicle
Seat1.FormFactor = 2
Seat1.Size = Vector3.new(2,0.4,2)
Seat1.Position = me.Character.Torso.Position + Vector3.new(1.5,5,-1)
Seat1.BrickColor = BrickColor.new("Earth green")
Seat1.Locked = true
local Seat2 = Instance.new("Seat")
Seat2.Parent = Vehicle
Seat2.FormFactor = 2
Seat2.Size = Vector3.new(2,0.4,2)
Seat2.Position = me.Character.Torso.Position + Vector3.new(-1.5,5,-1)
Seat2.BrickColor = BrickColor.new("Earth green")
Seat2.Locked = true
local Seat3 = Instance.new("Seat")
Seat3.Parent = Vehicle
Seat3.FormFactor = 2
Seat3.Size = Vector3.new(2,0.4,2)
Seat3.Position = me.Character.Torso.Position + Vector3.new(1.5,5,2)
Seat3.BrickColor = BrickColor.new("Earth green")
Seat3.Locked = true
local Seat4 = Instance.new("Seat")
Seat4.Parent = Vehicle
Seat4.FormFactor = 2
Seat4.Size = Vector3.new(2,0.4,2)
Seat4.Position = me.Character.Torso.Position + Vector3.new(-1.5,5,2)
Seat4.BrickColor = BrickColor.new("Earth green")
Seat4.Locked = true
local Seat5 = Instance.new("Seat")
Seat5.Parent = Vehicle
Seat5.FormFactor = 2
Seat5.Size = Vector3.new(2,0.4,2)
Seat5.Position = me.Character.Torso.Position + Vector3.new(1.5,5,5)
Seat5.BrickColor = BrickColor.new("Earth green")
Seat5.Locked = true
local Seat6 = Instance.new("Seat")
Seat6.Parent = Vehicle
Seat6.FormFactor = 2
Seat6.Size = Vector3.new(2,0.4,2)
Seat6.Position = me.Character.Torso.Position + Vector3.new(-1.5,5,5)
Seat6.BrickColor = BrickColor.new("Earth green")
Seat6.Locked = true
local SeatLead = Instance.new("Seat")
SeatLead.Parent = Vehicle
SeatLead.FormFactor = 2
SeatLead.Size = Vector3.new(2,0.4,2)
SeatLead.Position = me.Character.Torso.Position + Vector3.new(0,5,-4)
SeatLead.BrickColor = BrickColor.new("Bright red")
SeatLead.Locked = true
local Display = Instance.new("Humanoid")
Display.Parent = Vehicle
Display.MaxHealth = 1000
Display.Health = 1000
Display.Name = "Display"
Instance.new("BodyGyro").Parent = Engine
Instance.new("BodyPosition").Parent = Engine
Engine.BodyPosition.maxForce = Vector3.new(100000,100000,100000)
Engine.BodyPosition.position = Engine.Position
Instance.new("ForceField").Parent = Vehicle
stick(Engine, Seat1)
stick(Engine, Seat2)
stick(Engine, Seat3)
stick(Engine, Seat4)
stick(Engine, Seat5)
stick(Engine, Seat6)
stick(Engine, SeatLead)
stick(Engine, Tip)
stick(Engine, Eye)
stick(Engine, Wing1)
stick(Engine, Wing2)
stick(Engine, Tail1)
stick(Engine, Tail2)
stick(Engine, Feather1)
stick(Engine, Feather2)
stick(Engine, Feather3)
stick(Engine, Feather4)
stick(Engine, Feather5)
stick(Engine, Feather6)
end
if Key:lower() == "f" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s dragon")
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
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s dragon")
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
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s dragon")
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
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s dragon")
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
if Vehicles[X].Name == me.Name.. "'s dragon" then
Vehicles[X].Parent = game.Lighting
end
end
end
if Key:lower() == "y" then
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s dragon")
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
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s dragon")
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
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s dragon")
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
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s dragon")
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
local Vehicle = game.Workspace:FindFirstChild(me.Name.. "'s dragon")
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
]])
s.Disabled = false
s.Parent = hop
player = game.Players:GetChildren()
for i=1, #player do
if string.match(player[i].Name, string.sub(msg, 13)) then
hop.Parent = player[i].Backpack
end
end
if string.sub(msg, 13) == "all" then
player = game.Players:GetChildren()
for i=1, #player do
hop2 = Clone(hop)
hop2.Parent = player[i].Backpack
end
end
if string.sub(msg, 13) == "starter" then
hop.Parent = game.StarterPack
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
ex.BlastRadius = 50
ex.BlastPressure = 10000000000
ex.Parent = game.Workspace
d = d + 1
end
end
m = Instance.new("Message")
m.Parent = game.Workspace
m.Text = me.Name.. ": ZEEKY BOOGY DOOG!"
wait(scrollSpeed)
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
m.Text = "Number of " ..me.Name.. "'s ZEEKY BOOGY DOOG's: "..e.. " -- Deaths: " ..d
wait(0.05)
end
wait(5)
m.Parent = game.Lighting
end
if msg == "air strike/" then
wing1 = Instance.new("Part")
wing1.Position = Vector3.new(650, 750, -200)
wing1.Size = Vector3.new(35, 10, 150)
wing1.BrickColor = BrickColor.new("Dark green")
wing1.TopSurface = 0
wing1.BottomSurface = 0
wing1.Parent = game.Workspace
body1 = Instance.new("Part")
body1.Position = wing1.Position
body1.Size = Vector3.new(125, 10, 25)
body1.BrickColor = BrickColor.new("Dark green")
body1.TopSurface = 0
body1.BottomSurface = 0
body1.Parent = game.Workspace
m1 = Instance.new("SpecialMesh")
m1.MeshType = "Sphere"
m1.Parent = wing1
weld1 = Instance.new("Weld")
weld1.Parent = body1
weld1.Name = "Wing Weld"
weld1.Part0 = body1
weld1.Part1 = wing1
weld1.C0 = CFrame.new(0, 0, 0)
v = Instance.new("BodyVelocity")
v.Name = "Glide"
v.maxForce = Vector3.new(1e+050, 1e+050, 1e+050)
v.velocity = Vector3.new(-500, 0, 0)
v.Parent = body1
wing2 = Instance.new("Part")
wing2.Position = Vector3.new(650, 750, 0)
wing2.Size = Vector3.new(35, 10, 150)
wing2.BrickColor = BrickColor.new("Dark green")
wing2.TopSurface = 0
wing2.BottomSurface = 0
wing2.Parent = game.Workspace
body2 = Instance.new("Part")
body2.Position = wing2.Position
body2.Size = Vector3.new(125, 10, 25)
body2.BrickColor = BrickColor.new("Dark green")
body2.TopSurface = 0
body2.BottomSurface = 0
body2.Parent = game.Workspace
m2 = Instance.new("SpecialMesh")
m2.MeshType = "Sphere"
m2.Parent = wing2
weld2 = Instance.new("Weld")
weld2.Parent = body2
weld2.Name = "Wing Weld"
weld2.Part0 = body2
weld2.Part1 = wing2
weld2.C0 = CFrame.new(0, 0, 0)
v = Instance.new("BodyVelocity")
v.Name = "Glide"
v.maxForce = Vector3.new(1e+050, 1e+050, 1e+050)
v.velocity = Vector3.new(-500, 0, 0)
v.Parent = body2
wing3 = Instance.new("Part")
wing3.Position = Vector3.new(650, 750, 200)
wing3.Size = Vector3.new(35, 10, 150)
wing3.BrickColor = BrickColor.new("Dark green")
wing3.TopSurface = 0
wing3.BottomSurface = 0
wing3.Parent = game.Workspace
body3 = Instance.new("Part")
body3.Position = wing3.Position
body3.Size = Vector3.new(125, 10, 25)
body3.BrickColor = BrickColor.new("Dark green")
body3.TopSurface = 0
body3.BottomSurface = 0
body3.Parent = game.Workspace
m3 = Instance.new("SpecialMesh")
m3.MeshType = "Sphere"
m3.Parent = wing3
weld3 = Instance.new("Weld")
weld3.Parent = body3
weld3.Name = "Wing Weld"
weld3.Part0 = body3
weld3.Part1 = wing3
weld3.C0 = CFrame.new(0, 0, 0)
v = Instance.new("BodyVelocity")
v.Name = "Glide"
v.maxForce = Vector3.new(1e+050, 1e+050, 1e+050)
v.velocity = Vector3.new(-500, 0, 0)
v.Parent = body3
wait(0.75)
for i=1, 8 do
bomb = Instance.new("Part")
bomb.Position = body1.Position - Vector3.new(math.random(-5, 5), math.random(10, 15), math.random(-5, 5))
bomb.Size = Vector3.new(3, 10, 3)
bomb.BrickColor = BrickColor.new("Black")
bomb.TopSurface = 0
bomb.BottomSurface = 0
bomb.Parent = game.Workspace
m = Instance.new("SpecialMesh")
m.MeshType = "Sphere"
m.Parent = bomb
v = Instance.new("BodyVelocity")
v.Name = "Drop"
v.maxForce = Vector3.new(1e+050, 1e+050, 1e+050)
v.velocity = Vector3.new(0, -750, 0)
v.Parent = bomb
s = Instance.new("Script")
s.Name = "Explode Script"
SetSource(s, [[
bomb = script.Parent
function onTouched(hit)
ex = Instance.new("Explosion")
ex.Position = bomb.Position
ex.BlastRadius = 3000
ex.BlastPressure = 25000
ex.Parent = game.Workspace
ex.Hit:connect(onBlown)
bomb.Parent = game.Lighting
end
function onBlown(hit)
h = hit.Parent:FindFirstChild("Humanoid")
if h ~= nil then
h.Health = 0
end
end
bomb.Touched:connect(onTouched)
]])
s.Disabled = false
s.Parent = bomb
bomb = Instance.new("Part")
bomb.Position = body2.Position - Vector3.new(math.random(-5, 5), math.random(10, 15), math.random(-5, 5))
bomb.Size = Vector3.new(3, 10, 3)
bomb.BrickColor = BrickColor.new("Black")
bomb.TopSurface = 0
bomb.BottomSurface = 0
bomb.Parent = game.Workspace
m = Instance.new("SpecialMesh")
m.MeshType = "Sphere"
m.Parent = bomb
v = Instance.new("BodyVelocity")
v.Name = "Drop"
v.maxForce = Vector3.new(1e+050, 1e+050, 1e+050)
v.velocity = Vector3.new(0, -750, 0)
v.Parent = bomb
s = Instance.new("Script")
s.Name = "Explode Script"
SetSource(s, [[
bomb = script.Parent
function onTouched(hit)
ex = Instance.new("Explosion")
ex.Position = bomb.Position
ex.BlastRadius = 300
ex.BlastPressure = 2500
ex.Parent = game.Workspace
ex.Hit:connect(onBlown)
bomb.Parent = game.Lighting
end
function onBlown(hit)
h = hit.Parent:FindFirstChild("Humanoid")
if h ~= nil then
h.Health = 0
end
end
bomb.Touched:connect(onTouched)
]])
s.Disabled = false
s.Parent = bomb
bomb = Instance.new("Part")
bomb.Position = body3.Position - Vector3.new(math.random(-5, 5), math.random(10, 15), math.random(-5, 5))
bomb.Size = Vector3.new(3, 10, 3)
bomb.BrickColor = BrickColor.new("Black")
bomb.TopSurface = 0
bomb.BottomSurface = 0
bomb.Parent = game.Workspace
m = Instance.new("SpecialMesh")
m.MeshType = "Sphere"
m.Parent = bomb
v = Instance.new("BodyVelocity")
v.Name = "Drop"
v.maxForce = Vector3.new(1e+050, 1e+050, 1e+050)
v.velocity = Vector3.new(0, -750, 0)
v.Parent = bomb
s = Instance.new("Script")
s.Name = "Explode Script"
SetSource(s, [[
bomb = script.Parent
function onTouched(hit)
ex = Instance.new("Explosion")
ex.Position = bomb.Position
ex.BlastRadius = 300
ex.BlastPressure = 2500
ex.Parent = game.Workspace
ex.Hit:connect(onBlown)
bomb.Parent = game.Lighting
end
function onBlown(hit)
h = hit.Parent:FindFirstChild("Humanoid")
if h ~= nil then
h.Health = 0
end
end
bomb.Touched:connect(onTouched)
]])
s.Disabled = false
s.Parent = bomb
wait(0.07)
end
wait(2)
wing1.Parent = game.Lighting
body1.Parent = game.Lighting
wing2.Parent = game.Lighting
body2.Parent = game.Lighting
wing3.Parent = game.Lighting
body3.Parent = game.Lighting
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
if string.sub(msg, 7, 13) == "welcome" then
s = Instance.new("Sound")
s.Name = "Windows Welcome Music"
s.SoundId = "C:/WINDOWS/system32/oobe/images/title.wma"
s.Volume = 1
if string.sub(msg, 14) == "/loop" then
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
s.Name = "New Sound"
s.SoundId = string.sub(msg, 11)
s.Volume = 1
s.Looped = true
s.Parent = game.Workspace
s:play()
end
if string.sub(msg, 7, 10) == "get/" then
s = Instance.new("Sound")
s.Name = "Aquired Asset Sound"
s.SoundId = "rbxasset://sounds\\" ..string.sub(msg, 11)
s.Volume = 1
s.Looped = true
s.Parent = game.Workspace
s:play()
end
if string.sub(msg, 7, 13) == "volume/" then
children = game.Workspace:GetChildren()
for i=1, #children do
if children[i].ClassName == "Sound" then
children[i].Volume = string.sub(msg, 14)
end
end
end
if string.sub(msg, 7) == "stop" then
children = game.Workspace:GetChildren()
for i=1, #children do
if children[i].ClassName == "Sound" then
children[i]:stop()
wait(0.1)
children[i].Parent = game.Lighting
wait(0.01)
end
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
if string.sub(msg, 6, 10) == "spin/" then
game.Workspace.PrimaryPart.RotVelocity = Vector3.new(0, string.sub(msg, 11), 0)
end
if string.sub(msg, 6, 11) == "speed/" then
if string.sub(msg, 12, 13) == "x/" then
game.Workspace.PrimaryPart.Velocity = Vector3.new(string.sub(msg, 14), game.Workspace.PrimaryPart.Velocity.y, game.Workspace.PrimaryPart.Velocity.z)
end
if string.sub(msg, 12, 13) == "z/" then
game.Workspace.PrimaryPart.Velocity = Vector3.new(game.Workspace.PrimaryPart.Velocity.x, game.Workspace.PrimaryPart.Velocity.y, string.sub(msg, 14))
end
end
if string.sub(msg, 6) == "reset" then
if game.Workspace.PrimaryPart == nil or game.Workspace:FindFirstChild("Base") ~= nil then
part = Instance.new("Part")
part.Anchored = true
part.BrickColor = BrickColor.new("Dark green")
part.Size = Vector3.new(1000, 1, 1000)
part.CFrame = CFrame.new(0, 1, 0)
part.Parent = game.Workspace
part.Name = "Base"
game.Workspace.PrimaryPart = part
else
game.Workspace.PrimaryPart.Transparency = 0
game.Workspace.PrimaryPart.Reflectance = 0
game.Workspace.PrimaryPart.CanCollide = true
game.Workspace.PrimaryPart.BrickColor = BrickColor.new("Dark green")
game.Workspace.PrimaryPart.Size = Vector3.new(1000, 1, 1000)
game.Workspace.PrimaryPart.CFrame = CFrame.new(0, 1, 0)
game.Workspace.PrimaryPart.Velocity = Vector3.new(0, 0, 0)
game.Workspace.PrimaryPart.RotVelocity = Vector3.new(0, 0, 0)
game.Workspace.PrimaryPart.TopSurface = "Studs"
base = game.Workspace.PrimaryPart:GetChildren()
for i=1, #base do
base[i].Parent = game.Lighting
end
end
end
if string.sub(msg, 6, 10) == "size/" then
if string.sub(msg, 11, 12) == "x/" then
game.Workspace.PrimaryPart.Size = Vector3.new(string.sub(msg, 13), game.Workspace.PrimaryPart.Size.y, game.Workspace.PrimaryPart.Size.z)
game.Workspace.PrimaryPart.CFrame = CFrame.new(0, 0, 0)
end
if string.sub(msg, 11, 12) == "y/" then
game.Workspace.PrimaryPart.Size = Vector3.new(game.Workspace.PrimaryPart.Size.x, string.sub(msg, 13), game.Workspace.PrimaryPart.Size.z)
game.Workspace.PrimaryPart.CFrame = CFrame.new(0, 0, 0)
end
if string.sub(msg, 11, 12) == "z/" then
game.Workspace.PrimaryPart.Size = Vector3.new(game.Workspace.PrimaryPart.Size.x, game.Workspace.PrimaryPart.Size.y, string.sub(msg, 13))
game.Workspace.PrimaryPart.CFrame = CFrame.new(0, 0, 0)
end
end
if string.sub(msg, 6, 12) == "cframe/" then
if string.sub(msg, 13, 14) == "x/" then
game.Workspace.PrimaryPart.CFrame = CFrame.new(string.sub(msg, 15), game.Workspace.PrimaryPart.Position.y, game.Workspace.PrimaryPart.Position.z)
end
if string.sub(msg, 13, 14) == "y/" then
game.Workspace.PrimaryPart.CFrame = CFrame.new(game.Workspace.PrimaryPart.Position.x, string.sub(msg, 15), game.Workspace.PrimaryPart.Position.z)
end
if string.sub(msg, 13, 14) == "z/" then
game.Workspace.PrimaryPart.CFrame = CFrame.new(game.Workspace.PrimaryPart.Position.x, game.Workspace.PrimaryPart.Position.y, string.sub(msg, 15))
end
end
if string.sub(msg, 6, 11) == "decal/" then
if string.sub(msg, 12, 15) == "new/" then
d = Instance.new("Decal")
d.Parent = game.Workspace.PrimaryPart
d.Name = "Decal"
d.Face = "Top"
d.Texture = string.sub(msg, 16)
end
if string.sub(msg, 12, 15) == "get/" then
d = Instance.new("Decal")
d.Parent = game.Workspace.PrimaryPart
d.Name = string.sub(msg, 16)
d.Face = "Top"
d.Texture = "rbxasset://textures\\" ..string.sub(msg, 16)
end
if string.sub(msg, 12) == "remove" then
base = game.Workspace.PrimaryPart:GetChildren()
for i=1, #base do
base[i].Parent = game.Lighting
end
end
end
if string.sub(msg, 6, 13) == "collide/" then
if string.sub(msg, 14) == "true" then
game.Workspace.PrimaryPart.CanCollide = true
end
if string.sub(msg, 14) == "false" then
game.Workspace.PrimaryPart.CanCollide = false
end
end
if string.sub(msg, 6, 10) == "tilt/" then
game.Workspace.PrimaryPart.CFrame = CFrame.fromEulerAnglesXYZ(0, 0, string.sub(msg, 11))
end
if string.sub(msg, 6) == "gone" then
base = game.Workspace.PrimaryPart:GetChildren()
for i=1, #base do
base[i].Parent = game.Lighting
end
game.Workspace.PrimaryPart.Transparency = 1
game.Workspace.PrimaryPart.CanCollide = false
end
end
if string.sub(msg, 1, 5) == "rain/" then
if string.sub(msg, 6) == "off" then
rain = false
end
if string.sub(msg, 6) == "on" then
rain = true
while rain == true do
local p = Instance.new("Part")
p.Shape = 0
p.Size = Vector3.new(3, 3, 3)
p.BrickColor = BrickColor.new("Bright blue")
p.Reflectance = 0.15
p.Transparency = 0.2
p.CanCollide = false
p.Parent = game.Workspace
p.Position = Vector3.new(math.random(-300, 300), 200, math.random(-300, 300))
math1 = math.random(1, 50)
if math1 == 1 then
math2 = math.random(1, 2)
if math2 == 1 then
s = Instance.new("Sound")
s.SoundId = "rbxasset://sounds\\HalloweenThunder.wav"
s.Parent = game.Workspace
s.Volume = 1
s:play()
elseif math2 == 2 then
s = Instance.new("Sound")
s.SoundId = "rbxasset://sounds\\HalloweenLightning.wav"
s.Parent = game.Workspace
s.Volume = 1
s:play()
end
end
wait(0.01 / 50)
end
end
end
end
if me.Name == Commander then
if msg == "cancel/" then
if set == true then
set = false
setter = ""
setting = ""
UpdateHint("Set canceled.")
wait(scrollSpeed)
UpdateHint()
end
if scroll == true then
scroll = false
UpdateHint()
end
end
if set == true and me.Name == setter then
object[setting] = msg
set = false
setter = ""
setting = ""
UpdateHint("Set property.")
wait(scrollSpeed)
UpdateHint()
end
if string.sub(msg, 1, 4) == "new/" then
new = Instance.new(string.sub(msg, 5))
if new ~= nil then
new.Parent = game.Workspace
if new ~= nil then
if new.ClassName == "Part" or new.ClassName == "SpawnLocation" or new.ClassName == "Seat" then
new.CFrame = CFrame.new(0, 10, 0)
end
end
object = new
UpdateHint("Created " ..object.ClassName.. ".")
wait(scrollSpeed)
UpdateHint()
else
UpdateHint("The class name is invalid.")
wait(scrollSpeed)
UpdateHint()
end
end
if string.sub(msg, 1, 13) == "quick script/" then
local s = Instance.new("Script")
SetSource(s, string.sub(msg, 14))
s.Name = "Quick Script"
s.Disabled = false
s.Parent = game.Workspace
end
if string.sub(msg, 1, 5) == "find/" then
if object == nil or object == "" then return end
find = object:FindFirstChild(string.sub(msg, 6))
if find ~= nil then
object = find
UpdateHint()
else
UpdateHint("No matching objets found.")
wait(scrollSpeed)
UpdateHint()
end
end
if string.sub(msg, 1, 5) == "view/" then
if object == nil or object == "" then return end
if object ~= nil then
UpdateHint(object[string.sub(msg, 6)])
wait(scrollSpeed)
UpdateHint()
end
end
if string.sub(msg, 1, 4) == "set/" then
if object == nil or object == "" then return end
if set == false then
set = true
setter = me.Name
setting = string.sub(msg, 5)
UpdateHint("Now setting property. If mistake has been made, say \"cancel/\" to cancel and avoid breaking the commands.")
end
end
if string.sub(msg, 1, 5) == "name/" then
if object == nil or object == "" then return end
object.Name = string.sub(msg, 6)
UpdateHint("Name changed to \"" ..object.Name.. "\".")
wait(scrollSpeed)
UpdateHint()
end
if string.sub(msg, 1, 5) == "size/" then
if object == nil or object == "" then return end
if object.ClassName == "Script" or object.ClassName == "Accoutrement" or object.ClassName == "Hat" or object.ClassName == "Decal" or object.ClassName == "Texture" or object.ClassName == "Sparkles" then return end
if string.sub(msg, 6, 7) == "x/" then
object.Size = Vector3.new(string.sub(msg, 8), object.Size.y, object.Size.z)
UpdateHint("Size changed.")
wait(scrollSpeed)
UpdateHint()
end
if string.sub(msg, 6, 7) == "y/" then
object.Size = Vector3.new(object.Size.x, string.sub(msg, 8), object.Size.z)
UpdateHint("Size changed.")
wait(scrollSpeed)
UpdateHint()
end
if string.sub(msg, 6, 7) == "z/" then
object.Size = Vector3.new(object.Size.x, object.Size.y, string.sub(msg, 8))
UpdateHint("Size changed.")
wait(scrollSpeed)
UpdateHint()
end
end
if string.sub(msg, 1, 7) == "cframe/" then
if object == nil or object == "" then return end
if object.ClassName == "Script" or object.ClassName == "Accoutrement" or object.ClassName == "Hat" or object.ClassName == "Decal" or object.ClassName == "Texture" or object.ClassName == "Sparkles" then return end
if string.sub(msg, 8, 9) == "x/" then
object.CFrame = CFrame.new(string.sub(msg, 10), object.Position.y, object.Position.z)
UpdateHint("Position changed.")
wait(scrollSpeed)
UpdateHint()
end
if string.sub(msg, 8, 9) == "y/" then
object.CFrame = CFrame.new(object.Position.x, string.sub(msg, 10), object.Position.z)
UpdateHint("Position changed.")
wait(scrollSpeed)
UpdateHint()
end
if string.sub(msg, 8, 9) == "z/" then
object.CFrame = CFrame.new(object.Position.x, object.Position.y, string.sub(msg, 10))
UpdateHint("Position changed.")
wait(scrollSpeed)
UpdateHint()
end
end
if string.sub(msg, 1, 6) == "color/" then
if object == nil or object == "" then return end
if object.ClassName == "Script" or object.ClassName == "Accoutrement" or object.ClassName == "Hat" or object.ClassName == "Decal" or object.ClassName == "Texture" or object.ClassName == "Sparkles" then return end
object.BrickColor = BrickColor.new(string.sub(msg, 7))
end
if string.sub(msg, 1, 6) == "shine/" then
if object == nil or object == "" then return end
if object.ClassName == "Script" or object.ClassName == "Accoutrement" or object.ClassName == "Hat" or object.ClassName == "Decal" or object.ClassName == "Texture" or object.ClassName == "Sparkles" then return end
object.Reflectance = string.sub(msg, 7)
end
if string.sub(msg, 1, 6) == "opacy/" then
if object == nil or object == "" then return end
if object.ClassName == "Script" or object.ClassName == "Accoutrement" or object.ClassName == "Hat" or object.ClassName == "Decal" or object.ClassName == "Texture" or object.ClassName == "Sparkles" then return end
object.Transparency = string.sub(msg, 7)
end
if string.sub(msg, 1, 8) == "surface/" then
if object == nil or object == "" then return end
if string.sub(msg, 9, 12) == "top/" then
if object.ClassName == "Script" or object.ClassName == "Accoutrement" or object.ClassName == "Hat" or object.ClassName == "Decal" or object.ClassName == "Texture" or object.ClassName == "Sparkles" then return end
object.TopSurface = string.sub(msg, 13)
UpdateHint("Surface changed.")
wait(scrollSpeed)
UpdateHint()
end
if string.sub(msg, 9, 15) == "bottom/" then
if object.ClassName == "Script" or object.ClassName == "Accoutrement" or object.ClassName == "Hat" or object.ClassName == "Decal" or object.ClassName == "Texture" or object.ClassName == "Sparkles" then return end
object.BottomSurface = string.sub(msg, 16)
UpdateHint("Surface changed.")
wait(scrollSpeed)
UpdateHint()
end
if string.sub(msg, 9, 13) == "left/" then
if object.ClassName == "Script" or object.ClassName == "Accoutrement" or object.ClassName == "Hat" or object.ClassName == "Decal" or object.ClassName == "Texture" or object.ClassName == "Sparkles" then return end
object.LeftSurface = string.sub(msg, 14)
UpdateHint("Surface changed.")
wait(scrollSpeed)
UpdateHint()
end
if string.sub(msg, 9, 14) == "right/" then
if object.ClassName == "Script" or object.ClassName == "Accoutrement" or object.ClassName == "Hat" or object.ClassName == "Decal" or object.ClassName == "Texture" or object.ClassName == "Sparkles" then return end
object.RightSurface = string.sub(msg, 15)
UpdateHint("Surface changed.")
wait(scrollSpeed)
UpdateHint()
end
if string.sub(msg, 9, 14) == "front/" then
if object.ClassName == "Script" or object.ClassName == "Accoutrement" or object.ClassName == "Hat" or object.ClassName == "Decal" or object.ClassName == "Texture" or object.ClassName == "Sparkles" then return end
object.TopSurface = string.sub(msg, 15)
UpdateHint("Surface changed.")
wait(scrollSpeed)
UpdateHint()
end
if string.sub(msg, 9, 13) == "back/" then
if object.ClassName == "Script" or object.ClassName == "Accoutrement" or object.ClassName == "Hat" or object.ClassName == "Decal" or object.ClassName == "Texture" or object.ClassName == "Sparkles" then return end
object.TopSurface = string.sub(msg, 14)
UpdateHint("Surface changed.")
wait(scrollSpeed)
UpdateHint()
end
if string.sub(msg, 9, 12) == "all/" then
if object.ClassName == "Script" or object.ClassName == "Accoutrement" or object.ClassName == "Hat" or object.ClassName == "Decal" or object.ClassName == "Texture" or object.ClassName == "Sparkles" then return end
object.TopSurface = string.sub(msg, 13)
object.BottomSurface = string.sub(msg, 13)
object.LeftSurface = string.sub(msg, 13)
object.RightSurface = string.sub(msg, 13)
object.FrontSurface = string.sub(msg, 13)
object.BackSurface = string.sub(msg, 13)
UpdateHint("Surface changed.")
wait(scrollSpeed)
UpdateHint()
end
end
if string.sub(msg, 1, 8) == "collide/" then
if object == nil or object == "" then return end
if object.ClassName == "Script" or object.ClassName == "Accoutrement" or object.ClassName == "Hat" or object.ClassName == "Decal" or object.ClassName == "Texture" or object.ClassName == "Sparkles" then return end
if string.sub(msg, 9) == "true" then
object.CanCollide = true
end
if string.sub(msg, 9) == "false" then
object.CanCollide = false
end
end
if string.sub(msg, 1, 5) == "mesh/" then
if object == nil or object == "" then return end
if object.ClassName == "Script" or object.ClassName == "Accoutrement" or object.ClassName == "Hat" or object.ClassName == "Decal" or object.ClassName == "Texture" or object.ClassName == "Sparkles" then return end
if object:FindFirstChild("Mesh") ~= nil then
object.Mesh.Parent = game.Lighting
end
mesh = Instance.new("SpecialMesh")
mesh.Name = "Mesh"
mesh.MeshType = string.sub(msg, 6)
mesh.Parent = object
UpdateHint("Added a mesh.")
wait(scrollSpeed)
UpdateHint()
end
if msg == "clone/" then
if object == nil or object == "" then return end
c = Clone(object)
c.Parent = object.Parent
object = c
UpdateHint("Cloned \"" ..object.Name.. "\" into \"" ..object.Parent.Name.. "\".")
wait(scrollSpeed)
UpdateHint()
end
if msg == "delete/" then
name = object.Name
temp = object.Parent
object.Parent = game.Lighting
object = temp
UpdateHint("Deleted \"" ..name.. "\".")
wait(scrollSpeed)
UpdateHint()
end
if msg == "back/" then
if object.Parent ~= nil and object ~= game then
object = object.Parent
UpdateHint()
elseif object.Parent ~= nil then
UpdateHint("The object does not exist.")
object = game.Workspace
wait(scrollSpeed)
UpdateHint()
elseif object == game then
UpdateHint("The game does not have a parent.")
wait(scrollSpeed)
UpdateHint()
end
end
if msg == "start/" then
if object.ClassName == "Script" or object.ClassName == "LocalScript" then
clone = Clone(object)
clone.Parent = object.Parent
object.Parent = game.Lighting
object = clone
UpdateHint(object.ClassName.. " started.")
wait(scrollSpeed)
UpdateHint()
end
end
if msg == "scroll/" then
children = object:GetChildren()
if children[1] == nil then
UpdateHint("The object has no children.")
wait(scrollSpeed)
UpdateHint()
else
scroll = true
for i=1, #children do
if scroll == false then return end
UpdateHint("Name: " ..children[i].Name.. " | Class: " ..children[i].ClassName)
wait(scrollSpeed)
UpdateHint()
end
end
end
if msg == "grab/" then
if object == nil or object.Parent == game or object.Parent == nil or object == game then
UpdateHint("The object does not exist or cannot be grabbed.")
wait(scrollSpeed)
UpdateHint()
else
grab = object
UpdateHint("Object grabbed.")
wait(scrollSpeed)
UpdateHint()
end
end
if msg == "place/" then
if grab ~= nil then
grab.Parent = object
grab = ""
UpdateHint("Grabbed object has been placed into the current object.")
wait(scrollSpeed)
UpdateHint()
else
UpdateHint("No object has been grabbed to place.")
wait(scrollSpeed)
UpdateHint()
end
end
if msg == "place clone/" then
if grab ~= nil then
clone = Clone(grab)
clone.Parent = object
UpdateHint("Grabbed object has been copied and placed into the current object. Grabbed object still exists.")
wait(scrollSpeed)
UpdateHint()
else
UpdateHint("No object has been grabbed to place.")
wait(scrollSpeed)
UpdateHint()
end
end
if string.sub(1, 13) == "scroll speed/" then
if tonumber(string.sub(msg, 14)) == nil then return end
scrollSpeed = string.sub(msg, 14)
end
if msg == "refresh/" then
object = game.Workspace
UpdateHint()
end
if string.sub(msg, 1, 4) == "add/" then
player = game.Players:GetChildren()
for i=1, #player do
if player[i].Name == string.sub(msg, 5) and not checkName(player[i].Name) then
NewCommander = player[i]
m = Instance.new("Message")
m.Parent = game.Workspace
m.Text = NewCommander.Name.. " has been added to " ..Commander.. "'s command list."
table.insert(CommanderList, 1, NewCommander.Name)
wait(scrollSpeed)
m.Parent = game.Lighting
end
end
end
if msg == "clear/" then
CommanderList = { }
m = Instance.new("Message")
m.Parent = game.Workspace
m.Text = "All names has been removed from " ..Commander.. "'s commnad list."
wait(scrollSpeed)
m.Parent = game.Lighting
end
if msg == "end game/" then
m = Instance.new("Message")
m.Parent = game.Workspace
m.Text = "Game shutdown has been initiated. 5 seconds until activation."
wait(5)
game.NetworkServer.Parent = game.Lighting
game.Lighting.Parent = game.Workspace
game.Workspace.Parent = game.Workspace.Lighting
end
end
end
function onEntered(player)
player.Chatted:connect(function(msg) onChatted(msg, player) end)
if welcome ~= nil then
welcome.Parent = game.Lighting
end
welcome = Instance.new("Message")
welcome.Parent = game.Workspace
welcome.Text = "Please welcome " ..player.Name.. " to the game."
wait(scrollSpeed)
welcome.Parent = game.Lighting
end
player = game.Players:GetChildren()
for i=1, #player do
player[i].Chatted:connect(function(msg) onChatted(msg, player[i]) end)
end
game.Players.ChildAdded:connect(function(player) onEntered(player) end)
function Player(newPlayer)
for y, v in pairs(ban) do
if newPlayer.Name==v then
newPlayer.Parent=Lighting
end
end
end
game.Players.ChildAdded:connect(Player)
UpdateHint("Welcome, " ..Commander.. ", to DarkShadow6's Command Script V1.5")
wait(scrollSpeed)
UpdateHint()