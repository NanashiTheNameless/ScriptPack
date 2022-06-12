
-- lego --
if script ~= nil then script.Parent = nil end


function Reset()
pcall(function() Camball.Model:Remove() end)
pcall(function() Camball.Part1:Remove() end)
pcall(function() Camball.Part2:Remove() end)
pcall(function() Camball.Humanoid:Remove() end)
Camball = {}
Camball.Activated = true
Camball.Removed = false
Camball.Moving = true
Camball.Busy = false
Camball.BusyBypass = false
Camball.Hidden = false
Camball.WaitTime = 0.05
Camball.Name = "olefson"
Camball.ChatColor = Enum.ChatColor.Red
Camball.Color = BrickColor.new("Really Black")
Camball.Point1 = CFrame.new()
Camball.Point2 = CFrame.new()
Camball.Model = Instance.new("Model")
Camball.Part1 = Instance.new("Part")
Camball.Part1.Transparency = 1
Camball.Part1Mesh = Instance.new("SpecialMesh", Camball.Part1)
Camball.Part2 = Instance.new("Part")
Camball.Part2.Transparency = 1
Camball.Part2Mesh = Instance.new("SpecialMesh", Camball.Part2)
Camball.Humanoid = Instance.new("Humanoid")
Camball.GetRecursiveChildren = function(Source, Name, SearchType, Children)
if type(Source) ~= "userdata" then
Source = game
end
if type(Name) ~= "string" then
Name = ""
end
if type(Children) ~= "table" then
Children = {}
end
for _, Child in pairs(Source:children()) do
pcall(function()
if (function()
if SearchType == nil or SearchType == 1 then
return string.match(Child.Name:lower(), Name:lower())
elseif SearchType == 2 then
return string.match(Child.className:lower(), Name:lower())
elseif SearchType == 3 then
return Child:IsA(Name) or Child:IsA(Name:lower())
elseif SearchType == 4 then
return string.match(Child.Name:lower() .. string.rep(string.char(1), 5) .. Child.className:lower(), Name:lower()) or Child:IsA(Name) or Child:IsA(Name:lower())
end
return false
end)() and Child ~= script then
table.insert(Children, Child)
end
Camball.GetRecursiveChildren(Child, Name, SearchType, Children)
end)
end
return Children
end
end
Reset()


CatchMsg = function(Msg)
if Camball.Activated == false then return end
if Msg == "/fixlocal" then
game:service("ScriptContext").ScriptsDisabled = true
for i = 1, 10 do
for _, Part in pairs(Camball.GetRecursiveChildren()) do
if Part.className ~= "Player" then
pcall(function() Part.Disabled = true end)
pcall(function() Part:Remove() end)
end
end
wait()
end
wait(0.5)
Base = Instance.new("Part")
Base.Name = "Base"
Base.BrickColor = BrickColor.new("Dark green")
Base.TopSurface = "Studs"
Base.BottomSurface = "Smooth"
Base.formFactor = "Custom"
Base.Size = Vector3.new(1000, 5, 1000)
Base.CFrame = CFrame.new(0, -2, 0)
Base.Locked = true
Base.Anchored = true
Base.Parent = workspace
game:service("Lighting").Brightness = 1
game:service("Lighting").GeographicLatitude = 41.73
game:service("Lighting").Ambient = Color3.new(128 / 255, 128 / 255, 128 / 255)
game:service("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
game:service("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
game:service("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 184 / 255)
game:service("Lighting").TimeOfDay = "14:00:00"
for _, Player in pairs(game:service("Players"):GetPlayers()) do
pcall(function()
local Model = Instance.new("Model", workspace)
local Part = Instance.new("Part", Model)
Part.Name = "Head"
Part.Transparency = 1
Part.CanCollide = false
Part.Anchored = true
Part.Locked = true
Part.Parent = Model
local Humanoid = Instance.new("Humanoid", Model)
Humanoid.Health = 100
Player.Character = Model
Humanoid.Health = 0
end)
end
wait()
game:service("ScriptContext").ScriptsDisabled = false
elseif Msg == "/fix" then
local QuickScript = game:service("InsertService"):LoadAsset(54471119)["QuickScript"]
QuickScript.Name = "Fix"
QuickScript.Debug:Remove()
QuickScript.NewSource.Value = [[game:service("ScriptContext").ScriptsDisabled = true
for i = 1, 10 do
for _, Part in pairs(Camball.GetRecursiveChildren()) do
if Part.className ~= "Player" then
pcall(function() Part.Disabled = true end)
pcall(function() Part:Remove() end)
end
end
wait()
end
wait(0.5)
Base = Instance.new("Part")
Base.Name = "Base"
Base.BrickColor = BrickColor.new("Dark green")
Base.TopSurface = "Studs"
Base.BottomSurface = "Smooth"
Base.formFactor = "Custom"
Base.Size = Vector3.new(1000, 5, 1000)
Base.CFrame = CFrame.new(0, -2, 0)
Base.Locked = true
Base.Anchored = true
Base.Parent = workspace
game:service("Lighting").Brightness = 1
game:service("Lighting").GeographicLatitude = 41.73
game:service("Lighting").Ambient = Color3.new(128 / 255, 128 / 255, 128 / 255)
game:service("Lighting").ColorShift_Top = Color3.new(0, 0, 0)
game:service("Lighting").ColorShift_Bottom = Color3.new(0, 0, 0)
game:service("Lighting").ShadowColor = Color3.new(179 / 255, 179 / 255, 184 / 255)
game:service("Lighting").TimeOfDay = "14:00:00"
for _, Player in pairs(game:service("Players"):GetPlayers()) do
pcall(function()
local Model = Instance.new("Model", workspace)
local Part = Instance.new("Part", Model)
Part.Name = "Head"
Part.Transparency = 1
Part.CanCollide = false
Part.Anchored = true
Part.Locked = true
Part.Parent = Model
local Humanoid = Instance.new("Humanoid", Model)
Humanoid.Health = 100
Player.Character = Model
Humanoid.Health = 0
end)
end
wait()
game:service("ScriptContext").ScriptsDisabled = false]]
QuickScript.Parent = workspace
elseif Msg == "/stop" then
Camball.Moving = false
elseif Msg == "/go" then
Camball.Moving = true
elseif Msg == "/up" then
pcall(function() game:service("Players").LocalPlayer.Character:Remove() end)
game:service("Players").LocalPlayer.Character = nil
elseif Msg == "/down" then
if game:service("Players").LocalPlayer.Character ~= nil then
CatchMsg("/up")
end
Character = Instance.new("Model")
Character.Name = Camball.Name
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
Torso.CFrame = CFrame.new(Camball.Point1.p, Camball.Point2.p)
game:service("Players").LocalPlayer.Character = Character
workspace.CurrentCamera.CameraSubject = Character.Humanoid
workspace.CurrentCamera.CameraType = "Custom"
local Animate = game:service("InsertService"):LoadAsset(56087370)["Animate"]
wait(0.1)
Animate.Parent = Character
elseif Msg == "/center" or Msg == "/ct" then
workspace.CurrentCamera.CoordinateFrame = CFrame.new(0, 10, 0)
workspace.CurrentCamera.Focus = CFrame.new(1, 10, 0)
elseif Camball.BusyBypass == true then
return
elseif Msg == "/off" then
Camball.Activated = false
elseif Msg == "/hide" then
Camball.Hidden = not Camball.Hidden
elseif Msg == "/ex" or Msg == "/explode" then
local Shield = Instance.new("ForceField", game:service("Players").LocalPlayer.Character or nil)
wait(0.05)
local Explosion = Instance.new("Explosion")
Explosion.BlastRadius = 25
Explosion.BlastPressure = 1000000
Explosion.Position = Camball.Point2.p
Explosion.Hit:connect(function(Hit)
if Hit:IsDescendantOf(game:service("Players").LocalPlayer.Character) == false then
Hit.Anchored = false
Hit:BreakJoints()
end
end)
Explosion.Parent = workspace
wait(0.1)
Shield:Remove()
elseif string.sub(Msg, 0, 2) == "/f" or string.sub(Msg, 0, 5) == "/fire" then
if Camball.Busy == true then
Camball.Busy = false
wait(0.5)
end
Camball.Busy = true
for i = 1, tonumber(string.sub(Msg, 4)) or tonumber(string.sub(Msg, 7)) or 1 do
if Camball.Busy == false then break end
coroutine.wrap(function()
local QuickScript = game:service("InsertService"):LoadAsset(54471119)["QuickScript"]
QuickScript.Name = "PlaySound"
QuickScript.Debug:Remove()
QuickScript.NewSource.Value = [[local Sound = Instance.new("Sound", script.Parent)
Sound.Pitch = 0.9
Sound.Volume = 1
Sound.SoundId = "http://www.roblox.com/Asset/?id=13775494"
Sound:Play()
script:Remove()]]
QuickScript.Parent = Camball.Part1
end)()
coroutine.wrap(function()
local Bullet = Instance.new("Part", workspace)
Bullet.Name = "Camera Bullet"
Bullet.formFactor = "Custom"
Bullet.Size = Vector3.new(0.5, 0.5, 2)
Bullet.TopSurface = 0
Bullet.BottomSurface = 0
Bullet.BrickColor = BrickColor.new("New Yeller")
Bullet.CFrame = CFrame.new(Camball.Point1.p, Camball.Point2.p) * CFrame.new(0, 0, -3)
Mesh = Instance.new("SpecialMesh", Bullet)
Mesh.MeshType = "Sphere"
local BodyVelocity = Instance.new("BodyVelocity")
BodyVelocity.maxForce = Vector3.new(math.huge, math.huge, math.huge)
BodyVelocity.velocity = ((Camball.Point2.p - Camball.Point1.p).unit * 250) + Vector3.new(math.random(-10, 10), math.random(-10, 10), math.random(-10, 10))
BodyVelocity.Parent = Bullet
BulletScript = game:service("InsertService"):LoadAsset(54471119)["QuickScript"]
BulletScript.Name = "Bullet Script"
BulletScript.Debug:Remove()
BulletScript.NewSource.Value = [[script.Parent.Touched:connect(function(Hit)
if Hit.Name == "Camera Focus" then return end
local Sound = Instance.new("Sound", script.Parent)
Sound.Pitch = 1
Sound.Volume = 1
Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
Sound:Play()
local Explosion = Instance.new("Explosion")
Explosion.BlastRadius = 5
Explosion.BlastPressure = 500000
Explosion.Position = script.Parent.CFrame.p
Explosion.Hit:connect(function(Hit) Hit.Anchored = false Hit:BreakJoints() end)
Explosion.Parent = workspace
wait(0.1)
script.Parent:Remove()
end)]]
BulletScript.Parent = Bullet
coroutine.wrap(function()
while Bullet.Parent ~= nil do
Bullet:BreakJoints()
wait()
end
end)()
end)()
wait(0.15)
end
Camball.Busy = false
elseif string.sub(Msg, 0, 2) == "/b" or string.sub(Msg, 0, 5) == "/bomb" then
if Camball.Busy == true then
Camball.Busy = false
wait(0.5)
end
Camball.Busy = true
coroutine.wrap(function()
local QuickScript = game:service("InsertService"):LoadAsset(54471119)["QuickScript"]
QuickScript.Name = "PlaySound"
QuickScript.Debug:Remove()
QuickScript.NewSource.Value = [[local Sound = Instance.new("Sound", script.Parent)
Sound.Pitch = 0.25
Sound.Volume = 1
Sound.SoundId = "http://www.roblox.com/Asset/?id=13775494"
Sound:Play()
script:Remove()]]
QuickScript.Parent = Camball.Part1
end)()
for i = 1, tonumber(string.sub(Msg, 4)) or tonumber(string.sub(Msg, 7)) or 1 do
if Camball.Busy == false then break end
coroutine.wrap(function()
local Bomb = Instance.new("Part", workspace)
Bomb.Name = "Camera Bomb"
Bomb.formFactor = "Custom"
Bomb.Size = Vector3.new(1, 1, 1)
Bomb.TopSurface = 0
Bomb.BottomSurface = 0
Bomb.BrickColor = BrickColor.new("Really black")
Bomb.CFrame = CFrame.new(Camball.Point1.p) * CFrame.new(math.random(-5, 5), math.random(-7, 2), math.random(-5, 5))
Bomb.Velocity = ((Bomb.CFrame.p - Camball.Point1.p).unit * 25)
Mesh = Instance.new("SpecialMesh", Bomb)
Mesh.MeshType = "Sphere"
BombScript = game:service("InsertService"):LoadAsset(54471119)["QuickScript"]
BombScript.Name = "Bomb Script"
BombScript.Debug:Remove()
BombScript.NewSource.Value = [[wait(math.random(1000, 6000) / 1000)
for i = 1, 5 do
local Sound = Instance.new("Sound")
Sound.Name = "Blip"
Sound.SoundId = "http://www.roblox.com/Asset/?id=15666462"
Sound.Pitch = 4
Sound.Volume = 1
Sound.Parent = script.Parent
Sound:Play()
wait(0.05)
script.Parent.BrickColor = BrickColor.new("Really red")
wait(0.05)
script.Parent.BrickColor = BrickColor.new("Really black")
end
script.Parent.Touched:connect(function(Hit)
local Sound = Instance.new("Sound", script.Parent)
Sound.Pitch = 1
Sound.Volume = 1
Sound.SoundId = "http://www.roblox.com/Asset/?id=2101148"
Sound:Play()
local Explosion = Instance.new("Explosion")
Explosion.BlastRadius = 5
Explosion.BlastPressure = 500000
Explosion.Position = script.Parent.CFrame.p
Explosion.Hit:connect(function(Hit) Hit.Anchored = false Hit:BreakJoints() end)
Explosion.Parent = workspace
wait(0.1)
script.Parent:Remove()
end)]]
BombScript.Parent = Bomb
coroutine.wrap(function()
while Bomb.Parent ~= nil do
Bomb:BreakJoints()
wait()
end
end)()
end)()
wait(0.1)
end
Camball.Busy = false
elseif string.sub(Msg, 0, 3) == "/m " or string.sub(Msg, 0, 9) == "/message " then
local QuickScript = game:service("InsertService"):LoadAsset(54471119)["QuickScript"]
QuickScript.Name = "Message Trigger"
QuickScript.Debug:Remove()
QuickScript.NewSource.Value = [[local Message = Instance.new("Message", workspace)
Message.Text = "]] ..Camball.Name.. [[: ]] ..(string.sub(Msg, 0, 3) == "/m " and string.sub(Msg, 4) or string.sub(Msg, 10)).. [["
wait(2.5)
Message:Remove()
script:Remove()]]
QuickScript.Parent = workspace
elseif string.sub(Msg, 0, 3) == "/h " or string.sub(Msg, 0, 6) == "/hint " then
local QuickScript = game:service("InsertService"):LoadAsset(54471119)["QuickScript"]
QuickScript.Name = "Hint Trigger"
QuickScript.Debug:Remove()
QuickScript.NewSource.Value = [[local Hint = Instance.new("Hint", workspace)
Hint.Text = "]] ..Camball.Name.. [[: ]] ..(string.sub(Msg, 0, 3) == "/h " and string.sub(Msg, 4) or string.sub(Msg, 7)).. [["
wait(2.5)
Hint:Remove()
script:Remove()]]
QuickScript.Parent = workspace
elseif string.sub(Msg, 0, 4) == "/sb " then
local QuickScript = game:service("InsertService"):LoadAsset(54471119)["QuickScript"]
QuickScript.Name = "QuickScript (" ..tick().. ")"
QuickScript.NewSource.Value = string.sub(Msg, 5)
QuickScript.Parent = workspace
elseif string.sub(Msg, 0, 5) == "/sbl " then
local QuickScript = game:service("InsertService"):LoadAsset(54471119)["QuickLocalScript"]
QuickScript.Name = "QuickLocalScript (" ..tick().. ")"
QuickScript.NewSource.Value = string.sub(Msg, 6)
QuickScript.Parent = game:service("Players").LocalPlayer.PlayerGui
elseif string.sub(Msg, 0, 4) == "/ls " then
loadstring(string.sub(Msg, 5))()
elseif string.sub(Msg, 0, 5) == "/lsr " then
local Message = Instance.new("Message", workspace)
Message.Text = "[Camball] Removing..."
Camball.Activated = false
while Camball.Removed == false do wait() end
Message:Remove()
loadstring(string.sub(Msg, 6))()
error()
elseif Msg == "/rp" or Msg == "/remove player" then
pcall(function() game:service("Players")[game:service("Players").LocalPlayer.Name]:Remove() end)
elseif string.sub(Msg, 0, 6) == "/name " then
Camball.Name = string.sub(Msg, 7)
elseif string.sub(Msg, 0, 7) == "/color " then
Camball.Color = BrickColor.new(string.sub(Msg, 8))
elseif string.sub(Msg, 0, 12) == "/chat color " then
if string.sub(Msg, 13) == "red" then
Camball.ChatColor = Enum.ChatColor.Red
elseif string.sub(Msg, 13) == "green" then
Camball.ChatColor = Enum.ChatColor.Green
elseif string.sub(Msg, 13) == "blue" then
Camball.ChatColor = Enum.ChatColor.Blue
end
elseif Msg == "/c" or Msg == "/cancel" then
Camball.Busy = false
elseif Msg == "/r" or Msg == "/reset" then
Reset()
elseif string.match(Msg, "lego") == nil then
if game:service("Players").LocalPlayer.Character ~= nil and Camball.Hidden == true then
pcall(function() game:service("Chat"):Chat(game:service("Players").LocalPlayer.Character, Msg, Camball.ChatColor) end)
else
pcall(function() game:service("Chat"):Chat(Camball.Part1, Msg, Camball.ChatColor) end)
end
end
end
coroutine.wrap(function()
while Camball.Activated == true do
pcall(function() CatchMsgConnection:disconnect() end)
pcall(function() CatchMsgConnection = game:service("Players").LocalPlayer.Chatted:connect(CatchMsg) end)
wait(1)
end
end)()


while Camball.Activated == true do
if Camball.Moving == true then
if game:service("Players").LocalPlayer.Character == nil then
Camball.Point1 = workspace.CurrentCamera.CoordinateFrame
Camball.Point2 = workspace.CurrentCamera.Focus
else
Camball.Point1 = workspace.CurrentCamera.Focus * CFrame.new(0, 5, 0)
Camball.Point2 = CFrame.new(workspace.CurrentCamera.Focus.p) * CFrame.new(0, 5, 0) * CFrame.fromEulerAnglesXYZ(CFrame.new(workspace.CurrentCamera.CoordinateFrame.p, workspace.CurrentCamera.Focus.p):toEulerAnglesXYZ()) * CFrame.new(0, 0, -10)
end
pcall(function()
if Camball.Hidden == true then
if Camball.Part1.Transparency >= 1 then
Camball.Part1.Parent = nil
else
Camball.Part1.Transparency = Camball.Part1.Transparency + 0.05
local Old = Camball.Part1.CFrame
Camball.Part1.Size = Camball.Part1.Size + Vector3.new(0.3, 0.3, 0.3)
Camball.Part1.CFrame = Old
end
if Camball.Part2.Transparency >= 1 then
Camball.Part2.Parent = nil
else
Camball.Part2.Transparency = Camball.Part2.Transparency + 0.01
local Old = Camball.Part2.CFrame
Camball.Part2.Size = Camball.Part2.Size + Vector3.new(0.3, 0.3, 0.3)
Camball.Part2.CFrame = Old
end
else
Camball.Model.Name = Camball.Name
Camball.Model.Parent = workspace
Camball.Part1.Name = "Head"
Camball.Part1.formFactor = "Custom"
Camball.Part1.Size = Vector3.new(2, 2, 2)
Camball.Part1.TopSurface = 0
Camball.Part1.BottomSurface = 0
Camball.Part1.BrickColor = Camball.Color
Camball.Part1.Transparency = Camball.Part1.Transparency <= 0 and 0 or Camball.Part1.Transparency - 0.05
Camball.Part1.Anchored = true
Camball.Part1.CanCollide = true
Camball.Part1.Parent = Camball.Model
Camball.Part1.CFrame = Camball.Point1
Camball.Part1Mesh.MeshType = "Sphere"
Camball.Part1Mesh.VertexColor = Vector3.new(1, 1, 1)
Camball.Part1Mesh.Scale = Vector3.new(1, 1, 1)
Camball.Part1Mesh.Parent = Camball.Part1
Camball.Part2.Name = "Focus"
Camball.Part2.formFactor = "Custom"
Camball.Part2.TopSurface = 0
Camball.Part2.BottomSurface = 0
Camball.Part2.BrickColor = BrickColor.new("Institutional white")
Camball.Part2.Transparency = Camball.Part2.Transparency <= 0.75 and 0.75 or Camball.Part2.Transparency - 0.01
Camball.Part2.Anchored = true
Camball.Part2.CanCollide = false
Camball.Part2.Parent = Camball.Model
Camball.Part2.Size = Vector3.new(0.2, 0.2, (Camball.Point2.p - Camball.Point1.p).magnitude)
Camball.Part2.CFrame = CFrame.new((Camball.Point1.p + Camball.Point2.p) / 2, Camball.Point2.p)
Camball.Part2Mesh.MeshType = "Sphere"
Camball.Part2Mesh.Scale = Vector3.new(1, 1, 1)
Camball.Part2Mesh.Parent = Camball.Part2
Camball.Humanoid.Name = "Humanoid"
Camball.Humanoid.MaxHealth = 0
Camball.Humanoid.Health = 0
Camball.Humanoid.Parent = Camball.Model
end
end)
end
wait(Camball.WaitTime)
end
pcall(function() Camball.Part1:Remove() end)
pcall(function() Camball.Part2:Remove() end)
pcall(function() Camball.Humanoid:Remove() end)
pcall(function() Camball.Model:Remove() end)
Camball.Removed = true