
script.Parent = nil 
div = ";"
local cc = {["Blue"] = Enum.ChatColor.Blue,["Red"] = Enum.ChatColor.Red,["Green"] = Enum.ChatColor.Green}
local players = game:GetService("Players")
local me = players.LocalPlayer
local char = me.Character
local name = "Rainbow Dash"
local chatcolor = cc["Blue"]
local chat = false
local cam = game:GetService("Workspace").CurrentCamera
local foc = cam.Focus
local cor = cam.CoordinateFrame
function findp(name) 
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
if string.lower(string.sub(v.Name,1,#name))==string.lower(name) then
return v 
end 
end 
end
me.Chatted:connect(function(msg)
if string.lower(msg) == "makechar" then
Character = Instance.new("Model")
Character.Name = name
Character.Parent = workspace
local Head = Instance.new("Part")
Head.Name = "Head"
Head.formFactor = 0
Head.Size = Vector3.new(2, 1, 1)
Head.TopSurface = 0
Head.BottomSurface = "Weld"
Head.BrickColor = BrickColor.new("Bright orange")
Head.Parent = Character
local Mesh = Instance.new("SpecialMesh")
Mesh.MeshType = "Head"
Mesh.Scale = Vector3.new(1.125, 1.125, 1.125)
Mesh.Parent = Head
local Face = Instance.new("Decal")
Face.Name = "face"
Face.Face = "Front"
Face.Texture = "rbxasset://textures/face.png"
Face.Parent = Head
local Torso = Instance.new("Part")
Torso.Name = "Torso"
Torso.formFactor = 0
Torso.Size = Vector3.new(2, 2, 1)
Torso.TopSurface = "Studs"
Torso.BottomSurface = "Inlet"
Torso.LeftSurface = "Weld"
Torso.RightSurface = "Weld"
Torso.BrickColor = BrickColor.new("Bright orange")
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
local LeftArm = Limb:Clone()
LeftArm.Name = "Left Arm"
LeftArm.Parent = Character
LeftArm.BrickColor = BrickColor.new("Bright orange")
local RightArm = Limb:Clone()
RightArm.Name = "Right Arm"
RightArm.Parent = Character
RightArm.BrickColor = BrickColor.new("Bright orange")
local LeftLeg = Limb:Clone()
LeftLeg.Name = "Left Leg"
LeftLeg.Parent = Character
LeftLeg.BrickColor = BrickColor.new("Bright orange")
local RightLeg = Limb:Clone()
RightLeg.Name = "Right Leg"
RightLeg.Parent = Character
RightLeg.BrickColor = BrickColor.new("Bright orange")
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
Humanoid.WalkSpeed = 20
local BodyColors = Instance.new("BodyColors")
BodyColors.Name = "Body Colors"
BodyColors.HeadColor = BrickColor.new("Bright orange")
BodyColors.TorsoColor = BrickColor.new("Bright orange")
BodyColors.LeftArmColor = BrickColor.new("Bright orange")
BodyColors.RightArmColor = BrickColor.new("Bright orange")
BodyColors.LeftLegColor = BrickColor.new("Bright orange")
BodyColors.RightLegColor = BrickColor.new("Bright orange")
BodyColors.Parent = Character
local Shirt = Instance.new("Shirt")
Shirt.Name = "Shirt"
Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=70365100"
Shirt.Parent = Character
Hat = Instance.new("Hat")
Hat.AttachmentForward = Vector3.new (0, 0, -1)
Hat.AttachmentPos = Vector3.new(0, -0.25, 0)
Hat.AttachmentRight = Vector3.new (1, 0, 0)
Hat.AttachmentUp = Vector3.new (0, 1, 0)
Hat.Parent = Character
Hat1=Instance.new("Part")
Hat1.Name = "Handle"
Hat1.formFactor = 0
Hat1.Size=Vector3.new(2,2,2)
Hat1.Parent = Hat
Hat2 = Instance.new("SpecialMesh")
Hat2.MeshId = "http://www.roblox.com/asset/?id=13640868"
Hat2.TextureId = "http://www.roblox.com/asset/?id=64895513"
Hat1.BrickColor = BrickColor.new("Bright orange")
Hat2.Parent = Hat1
Boddy = Instance.new("CharacterMesh")
Boddy.MeshId = "32328670"
Boddy.Parent = Character
Boddy.BodyPart = "Torso"
LArm = Instance.new("CharacterMesh")
LArm.MeshId = "32328397"
LArm.Parent = Character
LArm.BodyPart = "LeftArm"
RArm = Instance.new("CharacterMesh")
RArm.MeshId = "32328563"
RArm.Parent = Character
RArm.BodyPart = "RightArm"
LLeg = Instance.new("CharacterMesh")
LLeg.MeshId = "27111857"
LLeg.Parent = Character
LLeg.BodyPart = "LeftLeg"
RLeg = Instance.new("CharacterMesh")
RLeg.MeshId = "27111882"
RLeg.Parent = Character
RLeg.BodyPart = "RightLeg"
local ShirtGraphic = Instance.new("ShirtGraphic")
ShirtGraphic.Name = "Shirt Graphic"
ShirtGraphic.Graphic = "http://www.roblox.com/asset/?id=55500353"
ShirtGraphic.Parent = Character
local Pants = Instance.new("Pants")
Pants.Name = "Pants"
Pants.PantsTemplate = "http://www.roblox.com/asset/?id=46906180"
Pants.Parent = Character
for i,v in pairs(Workspace:GetChildren())do 
if v.ClassName == "SpawnLocation" then 
local m = math.random(1, #v)
Character:MoveTo(v[m].Position + Vector3.new(0,3,0))
else Character:MoveTo(Vector3.new(0,10,0)) 
end
end
players.LocalPlayer.Character = Character
cam.CameraSubject = Character.Humanoid
cam.CameraType = "Custom"
elseif string.lower(msg) == "rc"..div then
chatcolor = cc["Red"]
elseif string.lower(msg) == "bc"..div then
chatcolor = cc["Blue"]
elseif string.lower(msg) == "gc"..div then
chatcolor = cc["Green"]
elseif string.sub(string.lower(msg),1,5) == "chat"..div then
if string.sub(string.lower(msg),6) == "on" then
chat = true
elseif string.sub(string.lower(msg),6) == "off" then
chat = false
end
elseif string.sub(string.lower(msg),1,5) == "kick"..div then
local p = findp(string.sub(string.lower(msg),6))
if p ~= nil then
p:remove()
end
if string.sub(msg,7) == "" then
for i,v in pairs(game:GetService("Players"):GetPlayers())do
v:remove()
end
end
elseif string.sub(string.lower(msg),1,5) == "kill"..div then
local p = findp(string.sub(string.lower(msg),6))
if p ~= nil then
p.Character:BreakJoints()
end
if string.sub(msg,7) == "" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
v.Character:BreakJoints()
end
end
elseif string.sub(string.lower(msg),1,4) == "obc"..div then
local p = findp(string.sub(string.lower(msg),5))
if p ~= nil then
p.MembershipTypeReplicate = 3
end
if string.sub(msg,5) == "" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
v.MembershipTypeReplicate = 3
end
end
elseif string.sub(string.lower(msg),1,4) == "tbc"..div then
local p = findp(string.sub(string.lower(msg),5))
if p ~= nil then
p.MembershipTypeReplicate = 2
end
if string.sub(msg,5) == "" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
v.MembershipTypeReplicate = 2
end
end
elseif string.sub(string.lower(msg),1,3) == "bc"..div then
local p = findp(string.sub(string.lower(msg),4))
if p ~= nil then
p.MembershipTypeReplicate = 1
end
if string.sub(msg,4) == "" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
v.MembershipTypeReplicate = 1
end
end
elseif string.sub(string.lower(msg),1,4) == "nbc"..div then
local p = findp(string.sub(string.lower(msg),5))
if p ~= nil then
p.MembershipTypeReplicate = 0
end
if string.sub(msg,5) == "" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
v.MembershipTypeReplicate = 0
end
end
elseif string.sub(string.lower(msg),1,3) == "ff"..div then
local p = findp(string.sub(string.lower(msg),4))
if p ~= nil then
forf = Instance.new("ForceField")
forf.Parent = p.Character
end
if string.sub(msg,4) == "" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
frf = Instance.new("ForceField")
frf.Parent = v.Character
end
end
elseif string.sub(string.lower(msg),1,8) == "explode"..div then
local p = findp(string.sub(string.lower(msg),9))
if p ~= nil then
ex = Instance.new("Explosion")
ex.Parent = game.Workspace
ex.Position = p.Character.Torso.Position
end
if string.sub(msg,9) == "" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
exp = Instance.new("Explosion")
exp.Parent = game.Workspace
exp.Position = v.Character.Torso.Position
end
end
elseif string.sub(string.lower(msg),1,5) == "nlag"..div then
local p = findp(string.sub(string.lower(msg),6))
if p ~= nil then
for i=1,10000 do
lm = Instance.new("Message")
lm.Text = "Your being lagged for being a Noob."
lm.Parent = p.PlayerGui
end
end
elseif string.sub(string.lower(msg),1,5) == "elag"..div then
local p = findp(string.sub(string.lower(msg),6))
if p ~= nil then
for i=1,10000 do
elm = Instance.new("Message")
elm.Text = "Your being lagged for being a Enemy."
elm.Parent = p.PlayerGui
end
end
elseif string.sub(string.lower(msg),1,4) == "inv"..div then
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == name then
for i,vv in pairs(v:GetChildren()) do
if vv.ClassName == "Part" then
vv.Transparency = 1
end
end
end
end
elseif string.sub(string.lower(msg),1,6) == "uninv"..div then
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == name then
for i,vv in pairs(v:GetChildren()) do
if vv.ClassName == "Part" then
vv.Transparency = .5
end
end
end
end
elseif string.sub(string.lower(msg),1,10) == "lightning"..div then
local p = findp(string.sub(string.lower(msg),11))
if p ~= nil then
ltp = Instance.new("Part", game.Workspace)
ltp.CanCollide = false
game.Lighting.TimeOfDay = 1
snd=Instance.new("Sound",game.Workspace)
snd.Pitch = 1
snd.Volume = 1
snd.SoundId = "rbxasset://sounds/HalloweenThunder.wav"
snd:play()
ltp.Size = Vector3.new(1,500,1)
ltp.BrickColor = BrickColor.new("Bright yellow")
ltp.CFrame = p.Character.Head.CFrame
p.Character:BreakJoints()
wait(.1)
game.Lighting.TimeOfDay = 14
ltp:remove()
end
if string.sub(msg,11) == "" then
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
ltp = Instance.new("Part", game.Workspace)
ltp.Size = Vector3.new(1,500,1)
ltp.CanCollide = false
game.Lighting.TimeOfDay = 1
snd=Instance.new("Sound",game.Workspace)
snd.Pitch = 1
snd.Volume = 1
snd.SoundId = "rbxasset://sounds/HalloweenThunder.wav"
snd:play()
ltp.BrickColor = BrickColor.new("Bright yellow")
ltp.CFrame = v.Character.Head.CFrame
v.Character:BreakJoints()
wait(.1)
game.Lighting.TimeOfDay = 14
ltp:remove()
end
end
elseif string.sub(string.lower(msg),1,5) == "base"..div then
bs = Instance.new("Part", game.Workspace)
bs.Anchored = true
bs.CFrame = CFrame.new(0,0,0)
bs.Size = Vector3.new(512 , 0 , 512)
bs.Locked = true
bs.BrickColor = BrickColor.new("Deep blue")
bs.TopSurface = "Smooth"
bs.BottomSurface = "Smooth"
else
if chat then
if pcall(function() game:getService("Chat"):Chat(players.LocalPlayer.Character.Head,msg,chatcolor) end) then
print 'Chatted'
else
print 'Error chatting'
end
end
end
end)

