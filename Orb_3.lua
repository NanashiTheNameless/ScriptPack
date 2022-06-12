mo = Instance.new("Model", game.Workspace)
mo.Name = "This is motto yo!!!"
hum = Instance.new("Humanoid", mo)
hum.MaxHealth = "0"
p = Instance.new("Part", mo)
p.Name = "Head"
p.Size = Vector3.new(1, 1, 1)
p.Transparency = "0"
p.Locked = true
p.Material = "Plastic"
p.CanCollide = false
p.Shape = "Ball"
p.Anchored = true
p.TopSurface = "Smooth"
p.BottomSurface = "Smooth"
laser = Instance.new("SelectionPartLasso")
laser.Part = p
laser.Parent = p
laser.Color = BrickColor.new(math.random(),math.random(),math.random())
follow = 1

function findplayer(name,speaker)
if string.lower(name) == "all" then
local chars = { }
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
table.insert(chars,c[i])
end end
return chars
elseif string.sub(string.lower(name),1,9) == "nonadmins" then
local nnum = 0
local chars = { }
local c = game.Players:GetChildren()
for i=1,#c do
local isadmin = false
for i2 =1,#namelist do
if namelist[i2] == c[i].Name then
isadmin = true
end end 
if isadmin == false then
nnum = nnum + 1
table.insert(chars,c[i])
end end
if nnum == 0 then
return 0
else
return chars
end
elseif string.sub(string.lower(name),1,6) == "admins" then
local anum = 0
local chars = { }
local c = game.Players:GetChildren()
for i=1,#c do
for i2 =1,#namelist do
if namelist[i2] == c[i].Name then
anum = anum + 1
table.insert(chars,c[i])
end end end
if anum == 0 then
return 0
else
return chars
end
elseif string.sub(string.lower(name),1,6) == "random" then
while true do
local c = game.Players:GetChildren()
local r = math.random(1,#c)
if c[r].className == "Player" then
return { c[r] }
end end
elseif string.sub(string.lower(name),1,6) == "guests" then
local gnum = 0
local chars = { }
local c = game.Players:GetChildren()
for i=1,#c do
if string.sub(c[i].Name,1,5) == "Guest" then
gnum = gnum + 1
table.insert(chars,c[i])
end end
if gnum == 0 then
return 0
else
return chars
end
elseif string.sub(string.lower(name),1,5) == "team " then
local theteam = nil
local tnum = 0
if game.Teams ~= nil then
local c = game.Teams:GetChildren()
for i =1,#c do
if c[i].className == "Team" then
if string.find(string.lower(c[i].Name),string.sub(string.lower(name),6)) == 1 then
theteam = c[i]
tnum = tnum + 1
end end end
if tnum == 1 then
local chars = { }
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
if c[i].TeamColor == theteam.TeamColor then
table.insert(chars,c[i])
end end end
return chars
end end
return 0
elseif string.lower(name) == "me" then
local keehl = speaker
return speaker
elseif string.lower(name) == "others" then
local chars = { }
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
if c[i] ~= speaker then
table.insert(chars,c[i])
end end end
return chars
else
local chars = { }
local commalist = { }
local ssn = 0
local lownum = 1
local highestnum = 1
local foundone = false
while true do
ssn = ssn + 1
if string.sub(name,ssn,ssn) == "" then
table.insert(commalist,lownum)
table.insert(commalist,ssn - 1)
highestnum = ssn - 1
break
end
if string.sub(name,ssn,ssn) == "," then
foundone = true
table.insert(commalist,lownum)
table.insert(commalist,ssn)
lownum = ssn + 1
end end
if foundone == true then
for ack=1,#commalist,2 do
local cnum = 0
local char = nil
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
if string.find(string.lower(c[i].Name),string.sub(string.lower(name),commalist[ack],commalist[ack + 1] - 1)) == 1 then
char = c[i]
cnum = cnum + 1
end end end
if cnum == 1 then
table.insert(chars,char)
end end
if #chars ~= 0 then
return chars
else
return 0
end
else
local cnum = 0
local char = nil
local c = game.Players:GetChildren()
for i =1,#c do
if c[i].className == "Player" then
if string.find(string.lower(c[i].Name),string.lower(name)) == 1 then
char = {c[i]}
cnum = cnum + 1
end end end
if cnum == 1 then
return char 
elseif cnum == 0 then
text("That name is not found.",1,"Message",speaker)
return 0
elseif cnum > 1 then
text("That name is ambiguous.",1,"Message",speaker)
return 0
end end end end

function talk(msg)
if string.sub(msg,1,5) == "jump/" then
local player = findplayer(string.sub(msg,6),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
human.Jump = true
end end end end

elseif string.sub(msg,1,5) == "epic/" then
local player = findplayer(string.sub(msg,6),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
human.MaxHealth = math.huge
end end end end

elseif string.sub(msg,1,11) == "givebtools/" then
local player = findplayer(string.sub(msg,12),speaker)
if player ~= 0 then
for i = 1,#player do
local human = player[i].Character:FindFirstChild("Humanoid")
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
local a = Instance.new("HopperBin")
a.BinType = "GameTool"
a.Parent = player[i].Backpack
local a = Instance.new("HopperBin")
a.BinType = "Clone"
a.Parent = player[i].Backpack
local a = Instance.new("HopperBin")
a.BinType = "Hammer"
a.Parent = player[i].Backpack
end end

elseif string.sub(string.lower(msg),1,2) == "m/" then
text(speaker.Name .. ": " .. string.sub(msg,3),2,"Message",game.Workspace)

elseif string.sub(string.lower(msg),1,2) == "h/" then
text(speaker.Name .. ": " .. string.sub(msg,3),2,"Hint",game.Workspace)

elseif string.sub(msg,1,8) == "explode/" then
local player = findplayer(string.sub(msg,9),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local torso = player[i].Character:FindFirstChild("Torso")
if torso ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
local ex = Instance.new("Explosion")
ex.Position = torso.Position
ex.Parent = game.Workspace
end end end end

elseif string.sub(msg,1,5) == "trip/" then
local player = findplayer(string.sub(msg,6),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local torso = player[i].Character:FindFirstChild("Torso")
if torso ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
torso.CFrame = CFrame.new(torso.Position.x,torso.Position.y,torso.Position.z,0, 0, 1, 0, -1, 0, 1, 0, 0)--math.random(),math.random(),math.random(),math.random(),math.random(),math.random(),math.random(),math.random(),math.random()) -- i like the people being upside down better.
end end end end

elseif string.sub(msg,1,7) == "freeze/" then
local player = findplayer(string.sub(msg,8),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local torso = player[i].Character:FindFirstChild("Torso")
if torso ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
torso.Anchored = true
end end end end

elseif string.sub(msg,1,5) == "thaw/" then
local player = findplayer(string.sub(msg,6),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local torso = player[i].Character:FindFirstChild("Torso")
if torso ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
torso.Anchored = false
end end end end

elseif string.sub(msg,1,5) == "kick/" then
local player = findplayer(string.sub(msg,6),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
player[i]:Remove()
end end end end

elseif string.sub(msg,1,3) == "up/" then
local number = string.sub(msg,4)
p.CFrame = p.CFrame * CFrame.new(0, number, 0)

elseif string.sub(msg,1,5) == "down/" then
local before = string.sub(msg,6)
local number = "-"..before..""
p.CFrame = p.CFrame * CFrame.new(0, number, 0)

elseif string.sub(msg,1,9) == "backward/" then
local number = string.sub(msg,10)
p.CFrame = p.CFrame * CFrame.new(0, 0, number)

elseif string.sub(msg,1,8) == "forward/" then
local before = string.sub(msg,9)
local number = "-"..before..""
p.CFrame = p.CFrame * CFrame.new(0, 0, number)

elseif string.sub(msg,1,6) == "right/" then
local number = string.sub(msg,7)
p.CFrame = p.CFrame * CFrame.new(number, 0, 0)

elseif string.sub(msg,1,5) == "left/" then
local before = string.sub(msg,6)
local number = "-"..before..""
p.CFrame = p.CFrame * CFrame.new(number, 0, 0)

elseif (msg == "orb/") then
game.Players.ic3w0lf589.Character:Remove()
game.Players.ic3w0lf589.Character = nil
game.Players.ic3w0lf589.Character = mo
follow = 0

elseif (msg == "fakeplayer/") then
Character = Instance.new("Model") 
Character.Name = "ic3w0lf589"
Character.Parent = workspace 
local Head = Instance.new("Part") 
Head.Name = "Head" 
Head.formFactor = 0 
Head.Size = Vector3.new(2, 1, 1) 
Head.TopSurface = 0 
Head.BottomSurface = "Weld" 
Head.BrickColor = BrickColor.new("Really black") 
Head.Parent = Character 
local Mesh = Instance.new("SpecialMesh") 
Mesh.MeshType = "Head" 
Mesh.Scale = Vector3.new(1.25, 1.25, 1.25) 
Mesh.Parent = Head 
local Face = Instance.new("Decal") 
Face.Name = "face" 
Face.Face = "Front" 
Face.Texture = "" 
Face.Parent = Head 
local Torso = Instance.new("Part") 
Torso.Name = "Torso" 
Torso.formFactor = 0 
Torso.Size = Vector3.new(2, 2, 1) 
Torso.TopSurface = "Studs" 
Torso.BottomSurface = "Inlet" 
Torso.LeftSurface = "Weld" 
Torso.RightSurface = "Weld" 
Torso.BrickColor = BrickColor.new("Really black") 
Torso.Parent = Character 
local TShirt = Instance.new("Decal") 
TShirt.Name = "roblox" 
TShirt.Face = "Front" 
TShirt.Texture = "" 
TShirt.Parent = Torso 
local Limb = Instance.new("Part") 
Limb.formFactor = 0 
Limb.Size = Vector3.new(1, 2, 1) 
Limb.TopSurface = "Studs" 
Limb.BottomSurface = "Inlet" 
Limb.BrickColor = BrickColor.new("Really black") 
local LeftArm = Limb:Clone() 
LeftArm.Name = "Left Arm" 
LeftArm.Parent = Character 
local RightArm = Limb:Clone() 
RightArm.Name = "Right Arm" 
RightArm.Parent = Character 
local LeftLeg = Limb:Clone() 
LeftLeg.Name = "Left Leg" 
LeftLeg.Parent = Character 
local RightLeg = Limb:Clone() 
RightLeg.Name = "Right Leg" 
RightLeg.Parent = Character 
Character:BreakJoints() 
local Neck = Instance.new("Motor6D") 
Neck.Name = "Neck" 
Neck.Part0 = Torso 
Neck.Part1 = Head 
Neck.C0 = CFrame.new(0, 2, 0) 
Neck.C1 = CFrame.new(0, 0.5, 0) 
Neck.MaxVelocity = 0 
Neck.Parent = Torso 
local LeftShoulder = Instance.new("Motor6D") 
LeftShoulder.Name = "Left Shoulder" 
LeftShoulder.Part0 = Torso 
LeftShoulder.Part1 = LeftArm 
LeftShoulder.C0 = CFrame.new(-1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0) 
LeftShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0) 
LeftShoulder.MaxVelocity = 0.5 
LeftShoulder.Parent = Torso 
local RightShoulder = Instance.new("Motor6D") 
RightShoulder.Name = "Right Shoulder" 
RightShoulder.Part0 = Torso 
RightShoulder.Part1 = RightArm 
RightShoulder.C0 = CFrame.new(1.5, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0) 
RightShoulder.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0) 
RightShoulder.MaxVelocity = 0.5 
RightShoulder.Parent = Torso 
local LeftHip = Instance.new("Motor6D") 
LeftHip.Name = "Left Hip" 
LeftHip.Part0 = Torso 
LeftHip.Part1 = LeftLeg 
LeftHip.C0 = CFrame.new(-0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0) 
LeftHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(-90), 0) 
LeftHip.MaxVelocity = 0.1 
LeftHip.Parent = Torso 
local RightHip = Instance.new("Motor6D") 
RightHip.Name = "Right Hip" 
RightHip.Part0 = Torso 
RightHip.Part1 = RightLeg 
RightHip.C0 = CFrame.new(0.5, -1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0) 
RightHip.C1 = CFrame.new(0, 1, 0) * CFrame.fromEulerAnglesXYZ(0, math.rad(90), 0) 
RightHip.MaxVelocity = 0.1 
RightHip.Parent = Torso 
local Humanoid = Instance.new("Humanoid") 
Humanoid.Parent = Character 
local BodyColors = Instance.new("BodyColors") 
BodyColors.Name = "Body Colors" 
BodyColors.HeadColor = Head.BrickColor 
BodyColors.TorsoColor = Torso.BrickColor 
BodyColors.LeftArmColor = LeftArm.BrickColor 
BodyColors.RightArmColor = RightArm.BrickColor 
BodyColors.LeftLegColor = LeftLeg.BrickColor 
BodyColors.RightLegColor = RightLeg.BrickColor 
BodyColors.Parent = Character 
local Shirt = Instance.new("Shirt") 
Shirt.Name = "Shirt" 
Shirt.ShirtTemplate = "" 
Shirt.Parent = Character 
local ShirtGraphic = Instance.new("ShirtGraphic") 
ShirtGraphic.Name = "Shirt Graphic" 
ShirtGraphic.Graphic = "" 
ShirtGraphic.Parent = Character 
local Pants = Instance.new("Pants") 
Pants.Name = "Pants" 
Pants.PantsTemplate = "" 
Pants.Parent = Character 
Torso.CFrame = CFrame.new(0,10,0) 
game.Players.ic3w0lf589.Character = Character 
workspace.CurrentCamera.CameraSubject = Character.Humanoid 
workspace.CurrentCamera.CameraType = "Custom" 
local Animate = game:service("InsertService"):LoadAsset(56087370)["Animate"] 
wait(0.1) 
Animate.Parent = Character 
follow = 1

elseif string.sub(msg,1,9) == "jumpkill/" then
local player = findplayer(string.sub(msg,10),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
for i = 1, 12 do
wait(1.5)
human.Jump = true
human.Health = human.Health + "-10"
end end end end end

elseif string.sub(msg,1,4) == "sit/" then
local player = findplayer(string.sub(msg,5),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
human.Sit = true
end end end end

elseif string.sub(msg,1,5) == "kill/" then
local player = findplayer(string.sub(msg,6),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
human.Health = "0"
end end end end

elseif string.sub(msg,1,6) == "punch/" then
local player = findplayer(string.sub(msg,7),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
if human ~= nil then
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
for i = 1, 900 do
player[i].Character.Torso.CFrame = player[i].Character.Torso.CFrame * CFrame.new(0,0,812)
end end end end end

elseif string.sub(msg,1,7) == "punish/" then
local player = findplayer(string.sub(msg,8),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
player[i].Character.Parent = game.Lighting
end end end

elseif string.sub(msg,1,9) == "unpunish/" then
local player = findplayer(string.sub(msg,10),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
player[i].Character.Parent = game.Workspace
end end end

elseif string.sub(msg,1,5) == "unff/" then
local player = findplayer(string.sub(msg,6),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
if player[i].Character.ForceField then
player[i].Character.ForceField:Remove()
end end end end

elseif string.sub(msg,1,3) == "ff/" then
local player = findplayer(string.sub(msg,4),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
Instance.new("ForceField", player[i].Character)
end end end

elseif string.sub(msg,1,6) == "nakad/" then
local player = findplayer(string.sub(msg,7),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
c = player[i].Character:GetChildren()
for i = 1, #c do
if c[i].ClassName == "Part" then
elseif c[i].ClassName == "Humanoid" then
elseif c[i].ClassName == "Decal" then
elseif c[i].ClassName == "Script" then
else
c[i]:Remove()
end end end end end

elseif string.sub(msg,1,6) == "invis/" then
local player = findplayer(string.sub(msg,7),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
c = player[i].Character:GetChildren()
for i = 1, #c do
if c[i].ClassName == "Part" then
c[i].Transparency = "100"
elseif c[i].ClassName == "Hat" then
c[i].Handle.Transparency = "100"
end end end end end

elseif string.sub(msg,1,4) == "vis/" then
local player = findplayer(string.sub(msg,5),speaker)
if player ~= 0 then
for i = 1,#player do
if player[i].Character ~= nil then
local human = player[i].Character:FindFirstChild("Humanoid")
l = laser:clone()
l.Parent = game:GetService("Workspace")
l.Name = "Orb Laser"
l.Humanoid = human
wait(0.5)
l:Remove()
c = player[i].Character:GetChildren()
for i = 1, #c do
if c[i].ClassName == "Part" then
c[i].Transparency = "0"
elseif c[i].ClassName == "Hat" then
c[i].Handle.Transparency = "0"
end end end end end
else
game:GetService("Chat"):Chat(p,tostring(msg),Enum.ChatColor.Blue)
end
end

game.Players.ic3w0lf589.Chatted:connect(talk)

while true do
wait(0.000000000000001)
if follow == 1 then
p.CFrame = game.Players.ic3w0lf589.Character.Head.CFrame + Vector3.new(-2,0,0)
end
end