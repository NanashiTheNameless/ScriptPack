--Made by Crone & Edited by Evienge


p = game.Players.LocalPlayer
char = p.Character
torso = char.Torso
neck = char.Torso.Neck
hum = char.Humanoid

CV="Maroon"
	
local txt = Instance.new("BillboardGui", char)
txt.Adornee = char .Head
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "SciFi"
text.TextStrokeColor3 = BrickColor.Black().Color

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=p.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=char.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = BrickColor.Black().Color
v.Shape="Block"
text.Text = "Tracker"

name = "Evienge"
player = game.Players:WaitForChild(name)
chara = player.Character
debby = game:GetService("Debris")
chara.Humanoid.MaxHealth = math.huge
chara.Humanoid.Health = math.huge
chara.Humanoid.WalkSpeed = 50
chara.Humanoid.JumpPower = 100
if chara:FindFirstChild("Shirt") ~= nil then
  chara.Shirt:Destroy()
end
if chara:FindFirstChild("Pants") ~= nil then
  chara.Pants:Destroy()
end
if chara:FindFirstChild("ShirtGraphic") ~= nil then
  chara.ShirtGraphic:Destroy()
end
local ch = chara:GetChildren()
for i = 1, #ch do
  if ch[i].ClassName == "Shirt" or ch[i].ClassName == "Pants" or ch[i].ClassName == "ShirtGraphic" or ch[i].ClassName == "Accessory" then
    ch[i]:Destroy()
  elseif ch[i].ClassName == "Part" then
    ch[i].BrickColor = BrickColor.new("Dark indigo")
    if ch[i].Name == "Torso" then
      ch[i].roblox.Texture = ""
    elseif ch[i].Name == "Head" then
      ch[i].face.Texture = "http://www.roblox.com/asset/?id=0"
      ch[i].Transparency = 1
    end
  end
end
local shirt = Instance.new("Shirt", chara)
shirt.Name = "Shirt"
shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=0"
local pants = Instance.new("Pants", chara)
pants.Name = "Pants"
pants.PantsTemplate = "http://www.roblox.com/asset/?id=0"
local p = Instance.new("Part", chara)
p.Name = "Ears"
p.BrickColor = BrickColor.new("Dark indigo")
p.Size = Vector3.new(0, 0, 0)
p.BottomSurface = 0
p.TopSurface = 0
p.Position = chara.Head.Position
local pweld = Instance.new("Weld", p)
pweld.Part0 = chara.Head
pweld.Part1 = p
pweld.C0 = CFrame.new(0, 0.7, 0)
pweld.C0 = pweld.C0 * CFrame.fromEulerAnglesXYZ(math.rad(180), 0, math.rad(180))
local earmesh = Instance.new("SpecialMesh", p)
earmesh.MeshType = "FileMesh"
earmesh.MeshId = "http://www.roblox.com/asset/?id=0"
earmesh.Scale = Vector3.new(1.1, 1.5, 3)
local hair = p:Clone()
hair.Name = "Hair"
hair.Parent = chara
hair.Position = chara.Head.Position
hair.Mesh.MeshId = "http://www.roblox.com/asset/?id=0"
hair.Mesh.Scale = Vector3.new(0.7, 0.5, 0.7)
hair.Mesh.Offset = Vector3.new(0, -0.2, 0)
local hweld = Instance.new("Weld", hair)
hweld.Part0 = chara.Head
hweld.Part1 = hair
hweld.C0 = CFrame.new(0, 0.7, 0)
hweld.C0 = hweld.C0 * CFrame.fromEulerAnglesXYZ(math.rad(180), math.rad(180), math.rad(180))
local fakehead = chara.Head:clone()
fakehead.Name = "FakeHead"
fakehead.Parent = chara
fakehead.Position = chara.Head.Position
fakehead.Transparency = 0
fakehead.face.Texture = "http://www.roblox.com/asset/?id=0"
local fakeweld = Instance.new("Weld", fakehead)
fakeweld.Part0 = chara.Head
fakeweld.Part1 = fakehead
local tail = Instance.new("Part", chara)
tail.Name = "Tail"
tail.Size = Vector3.new(0, 0, 0)
tail.Position = chara.Torso.Position
tail.BrickColor = BrickColor.new("Dark indigo")
local tailmesh = Instance.new("SpecialMesh", tail)
tailmesh.MeshType = "FileMesh"
tailmesh.MeshId = "http://www.roblox.com/asset/?id=0"
tailmesh.Scale = Vector3.new(1, 1, 2)
local tailweld = Instance.new("Weld", tail)
tailweld.Part0 = chara.Torso
tailweld.Part1 = tail
tailweld.C0 = CFrame.new(-1.1, -1.5, 0.7)
tailweld.C0 = tailweld.C0 * CFrame.fromEulerAnglesXYZ(0, 0, math.rad(180))
local sholpad = Instance.new("Part", chara)
sholpad.Name = "SholPads"
sholpad.Size = Vector3.new(1, 0.4, 1)
sholpad.Reflectance = 0.3
sholpad.BottomSurface = 0
sholpad.TopSurface = 0
sholpad.BrickColor = BrickColor.new("Really red")
sholpad.Position = chara.Torso.Position
local padweld = Instance.new("Weld", sholpad)
padweld.Part0 = chara.Torso
padweld.Part1 = sholpad
padweld.C0 = CFrame.new(0, 0.9, 0)
local padmesh = Instance.new("SpecialMesh", sholpad)
padmesh.MeshType = "FileMesh"
padmesh.MeshId = "http://www.roblox.com/asset/?id=0"
padmesh.Scale = Vector3.new(1, 0.4, 1)
local cape = Instance.new("Part", chara)
cape.Name = "Cape"
cape.CanCollide = false
cape.Size = Vector3.new(2, 4, 0.2)
cape.Position = chara.Torso.Position
cape.BrickColor = BrickColor.new("Dark indigo")
local capeweld = Instance.new("Weld", cape)
capeweld.Part0 = chara.Torso
capeweld.Part1 = cape
capeweld.C0 = CFrame.new(0, -1.1, 0.8)
capeweld.C0 = capeweld.C0 * CFrame.fromEulerAnglesXYZ(math.rad(-10), 0, 0)
local hand1 = Instance.new("Part", chara)
hand1.Name = "Hand1"
hand1.Size = Vector3.new(0.8, 0.8, 0.8)
hand1.Transparency = 1
hand1.Position = chara["Left Arm"].Position
local hand1weld = Instance.new("Weld", hand1)
hand1weld.Part0 = chara["Left Arm"]
hand1weld.Part1 = hand1
hand1weld.C0 = CFrame.new(0, -1, 0)
local hand2 = hand1:Clone()
hand2.Name = "Hand2"
hand2.Parent = chara
hand2.Position = chara["Right Arm"].Position
local hand2weld = Instance.new("Weld", hand2)
hand2weld.Part0 = chara["Right Arm"]
hand2weld.Part1 = hand2
hand2weld.C0 = CFrame.new(0, -1, 0)
local orbuu = Instance.new("Part", chara)
orbuu.Size = Vector3.new(0, 0, 0)
orbuu.Name = "DiamondPoint"
orbuu.Anchored = true
orbuu.CanCollide = false
orbuu.Transparency = 1
local orbuur = Instance.new("Part", chara)
orbuur.Size = Vector3.new(1, 1, 1)
orbuur.Name = "Diamond"
orbuur.Position = chara.Head.Position
orbuur.CanCollide = false
orbuur.BrickColor = BrickColor.new("Institutional white")
orbuur.Reflectance = 1
local orbforce = Instance.new("BodyPosition", orbuur)
orbforce.D = 1000
local meshooo = Instance.new("SpecialMesh", orbuur)
meshooo.MeshType = "FileMesh"
meshooo.MeshId = "http://www.roblox.com/asset/?id=9756362"
local RotationSpeed = 5
local BobSpeed = 2
local RotationDist = Vector3.new(10, 0, 0)
local dt = 0
local currentTime = 0
local laserpoint = orbuu:Clone()
laserpoint.Parent = chara
laserpoint.Position = chara.Torso.Position
laserpoint.Name = "LaserPoint"
laserpoint.Anchored = false
local lsptweld = Instance.new("Weld", laserpoint)
lsptweld.Part0 = chara.Torso
lsptweld.Part1 = laserpoint
lsptweld.C0 = CFrame.new(0, 6, 0)
local summonsound = Instance.new("Sound", chara.Torso)
summonsound.SoundId = "http://www.roblox.com/asset/?id=0"
summonsound.Volume = 1
local lassnd = Instance.new("Sound", orbuur)
lassnd.SoundId = "http://www.roblox.com/asset/?id=0"
lassnd.Volume = 1
local blastsnd = Instance.new("Sound", chara.Torso)
blastsnd.SoundId = "http://www.roblox.com/asset/?id=0"
blastsnd.Volume = 1
local metsnd = Instance.new("Sound", chara.Torso)
metsnd.SoundId = "http://www.roblox.com/asset/?id=0"
metsnd.Volume = 1
local swdsnd = Instance.new("Sound", chara.Torso)
swdsnd.SoundId = "http://www.roblox.com/asset/?id=0"
swdsnd.Volume = 1
local swd2snd = Instance.new("Sound", chara.Torso)
swd2snd.SoundId = "http://www.roblox.com/asset/?id=0"
swd2snd.Volume = 1
local hitsnd = Instance.new("Sound", chara.Torso)
hitsnd.SoundId = "http://www.roblox.com/asset/?id=0"
hitsnd.Volume = 1
local eckssnd = Instance.new("Sound", chara.Torso)
eckssnd.SoundId = "http://www.roblox.com/asset/?id=0"
eckssnd.Volume = 1
local music1 = Instance.new("Sound", chara.Torso)
music1.SoundId = "http://www.roblox.com/asset/?id=0"
music1.Volume = 1
music1.Looped = true
music1:Play()
color3colour = {
  BrickColor.new("Dark indigo").Color,
  BrickColor.new("Dark indigo").Color,
  BrickColor.new("Dark indigo").Color,
  BrickColor.new("Dark indigo").Color,
  BrickColor.new("Dark indigo").Color,
  BrickColor.new("Dark indigo").Color
}
breekcolour = {
  BrickColor.new("Dark indigo"),
  BrickColor.new("Dark indigo"),
  BrickColor.new("Dark indigo"),
  BrickColor.new("Dark indigo"),
  BrickColor.new("Dark indigo"),
  BrickColor.new("Dark indigo")
}
firecolour = {
  ColorSequenceKeypoint.new(0, BrickColor.new("Dark indigo").Color),
  ColorSequenceKeypoint.new(0.05, BrickColor.new("Dark indigo").Color),
  ColorSequenceKeypoint.new(0.1, BrickColor.new("Dark indigo").Color),
  ColorSequenceKeypoint.new(0.15, BrickColor.new("Dark indigo").Color),
  ColorSequenceKeypoint.new(0.2, BrickColor.new("Dark indigo").Color),
  ColorSequenceKeypoint.new(0.25, BrickColor.new("Dark indigo").Color),
  ColorSequenceKeypoint.new(1, BrickColor.new("Dark indigo").Color)
}
barcolour = {
  ColorSequenceKeypoint.new(0, BrickColor.new("Dark indigo").Color),
  ColorSequenceKeypoint.new(0.2, BrickColor.new("Dark indigo").Color),
  ColorSequenceKeypoint.new(0.4, BrickColor.new("Dark indigo").Color),
  ColorSequenceKeypoint.new(0.6, BrickColor.new("Dark indigo").Color),
  ColorSequenceKeypoint.new(0.8, BrickColor.new("Dark indigo").Color),
  ColorSequenceKeypoint.new(1, BrickColor.new("Dark indigo").Color)
}
normallife = {
  NumberSequenceKeypoint.new(0, 0),
  NumberSequenceKeypoint.new(1, 1)
}
extendlife = {
  NumberSequenceKeypoint.new(0, 0),
  NumberSequenceKeypoint.new(0.8, 0),
  NumberSequenceKeypoint.new(1, 1)
}
function createrainbow(color, part, texture, size, trans, life, face, speed, accel, velsp, lock, name)
  local fira = Instance.new("ParticleEmitter", part)
  fira.Name = name
  fira.Color = ColorSequence.new(color)
  fira.Size = size
  fira.Texture = texture
  fira.Transparency = trans
  fira.Lifetime = life
  fira.EmissionDirection = face
  fira.Rate = 100000000
  fira.RotSpeed = NumberRange.new(100)
  fira.Speed = speed
  fira.VelocitySpread = velsp
  fira.Acceleration = accel
  fira.LightEmission = 1
  fira.LockedToPart = lock
end
handfire1 = createrainbow(firecolour, hand1, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0.4),
  NumberSequenceKeypoint.new(1, 0)
}), NumberSequence.new(extendlife), NumberRange.new(1), "Left", NumberRange.new(1), Vector3.new(0, 2, 0), 0, false, "FireEffect")
handfire2 = createrainbow(firecolour, hand2, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0.4),
  NumberSequenceKeypoint.new(1, 0)
}), NumberSequence.new(extendlife), NumberRange.new(1), "Right", NumberRange.new(1), Vector3.new(0, 2, 0), 0, false, "FireEffect")
createrainbow(barcolour, orbuur, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
  NumberSequenceKeypoint.new(0, 1),
  NumberSequenceKeypoint.new(0.8, 1),
  NumberSequenceKeypoint.new(1, 0)
}), NumberSequence.new(extendlife), NumberRange.new(1), "Front", NumberRange.new(0), Vector3.new(0, 0, 0), 0, false, "OrbEffect")
local spelleffect = Instance.new("ParticleEmitter", chara.Torso)
spelleffect.Texture = "http://www.roblox.com/asset/?id=679657454"
spelleffect.Speed = NumberRange.new(0)
spelleffect.LightEmission = 1
spelleffect.Transparency = NumberSequence.new(normallife)
spelleffect.Size = NumberSequence.new({
  NumberSequenceKeypoint.new(0, 0),
  NumberSequenceKeypoint.new(1, 10)
})
spelleffect.Rate = 0.001
spelleffect.Rotation = NumberRange.new(0, 359)
spelleffect.RotSpeed = NumberRange.new(150)
spelleffect.Lifetime = NumberRange.new(2)
createrainbow(barcolour, hand2, "rbxasset://textures/particles/smoke_main.dds", NumberSequence.new({
  NumberSequenceKeypoint.new(0, 1),
  NumberSequenceKeypoint.new(1, 0)
}), NumberSequence.new(normallife), NumberRange.new(1), "Front", NumberRange.new(10), Vector3.new(0, 0, 0), 1000, true, "PowerEffect")
powereffect = hand2.PowerEffect
powereffect.Enabled = false

local Player = game:service("Players").LocalPlayer
local Char = Player.Character
local mouse = Player:GetMouse()
local Humanoid = Char:findFirstChild("Humanoid")
local Torso = Char:findFirstChild("Torso")
----------------------------------------------------------
z = Instance.new("Sound", Torso)
z.SoundId = "rbxassetid://159015243" -- Put Music ID Here.
z.Looped = true
z.Volume = 1
wait(.1)
z:Play()
------------------------
local Head = Char.Head
local ra = Char:findFirstChild("Right Arm")
local la = Char:findFirstChild("Left Arm")
local rl = Char:findFirstChild("Right Leg")
local ll = Char:findFirstChild("Left Leg")
local rs = Torso:findFirstChild("Right Shoulder")
local ls = Torso:findFirstChild("Left Shoulder")
local rh = Torso:findFirstChild("Right Hip")
local lh = Torso:findFirstChild("Left Hip")
local neck = Torso:findFirstChild("Neck")
local rp = Char:findFirstChild("HumanoidRootPart")
rp.Archivable = true
local rj = rp:findFirstChild("RootJoint")
rj.Archivable = true
local animate = Char:findFirstChild("Animate")
local rootpart = Char:findFirstChild("HumanoidRootPart")
local Camera = workspace.CurrentCamera
local CF = CFrame.new
local components = CF().components
local magicclrs = {"Really black", "Royal purple", "Dark indigo"}
--local magicclrs = {"Really red", "Deep orange", "New Yeller", "Lime green", "Really black", "Royal purple", "Bright violet"}
rootpart.CanCollide = false
Humanoid:findFirstChild("Animator"):Destroy()
Humanoid.CameraOffset = Vector3.new(0, 2, 0)
Humanoid.JumpPower = 60
game.Players.LocalPlayer.Character.Humanoid.Changed:connect(function(jump)
if jump == "Jump" then
Humanoid.Jump = false
end
end)



Lerp = function(a,b,c)
return a+(b-a)*c
end

function phaseclone()
Char.Archivable = true
local Clone1 = Char:Clone()
Clone1.Parent = game.Workspace
for i,v in pairs  (Clone1:GetChildren()) do
if v.ClassName == "BodyColors" then
B = "Royal purple"
v.HeadColor = BrickColor.new(B)
v.LeftArmColor = BrickColor.new(B)
v.RightArmColor = BrickColor.new(B)
v.TorsoColor = BrickColor.new(B)
v.LeftLegColor = BrickColor.new(B)
v.RightLegColor = BrickColor.new(B)
elseif not v:IsA("Part") then
v:Destroy()
end
if v.ClassName ~= "Part" or v.Name == "HumanoidRootPart" then
v:Destroy()
end
if v:IsA("Part") then
v.Transparency = 0.5
v.TopSurface = "Smooth"
v.BottomSurface = "Smooth"
v.LeftSurface = "Smooth"
v.RightSurface = "Smooth"
Bl = "Royal purple"
v.BrickColor = BrickColor.new(Bl)
v.Anchored = true
v.CanCollide = false
end
end
for i,v in pairs (Clone1:GetChildren()) do
if v:FindFirstChild("roblox") then
v.roblox:Destroy()
end
if v:FindFirstChild("face") then
v.face:Destroy()
end
if v.Name == "Part" or v.Name == "Hold" or v.Name == "Circle" then
v:Remove()
end
end
wait(0.3)
for i = 1,5 do
for _,v in pairs(Clone1:GetChildren()) do
if v:IsA("Part") then
v.Transparency = 0.5+i/5
wait()
end
end
end
Clone1:Destroy()
end


function ctlerp(c1,c2,al)
local com1 = {c1:components()}
local com2 = {c2:components()}
for i,v in pairs(com1) do
com1[i] = Lerp(v,com2[i],al)
end
return CF(unpack(com1))
end

do
local function QuaternionFromCFrame(cf) 
local mx, my, mz, m00, m01, m02, m10, m11, m12, m20, m21, m22 = cf:components() 
local trace = m00 + m11 + m22 
if trace > 0 then 
local s = math.sqrt(1 + trace) 
local recip = 0.5/s 
return (m21-m12)*recip, (m02-m20)*recip, (m10-m01)*recip, s*0.5 
else 
local i = 0 
if m11 > m00 then
i = 1 
end 
if m22 > (i == 0 and m00 or m11) then 
i = 2 
end 
if i == 0 then 
local s = math.sqrt(m00-m11-m22+1) 
local recip = 0.5/s 
return 0.5*s, (m10+m01)*recip, (m20+m02)*recip, (m21-m12)*recip 
elseif i == 1 then 
local s = math.sqrt(m11-m22-m00+1) 
local recip = 0.5/s 
return (m01+m10)*recip, 0.5*s, (m21+m12)*recip, (m02-m20)*recip 
elseif i == 2 then 
local s = math.sqrt(m22-m00-m11+1) 
local recip = 0.5/s return (m02+m20)*recip, (m12+m21)*recip, 0.5*s, (m10-m01)*recip 
end 
end 
end 
local function QuaternionToCFrame(px, py, pz, x, y, z, w) 
local xs, ys, zs = x + x, y + y, z + z 
local wx, wy, wz = w*xs, w*ys, w*zs 
local xx = x*xs 
local xy = x*ys 
local xz = x*zs 
local yy = y*ys 
local yz = y*zs 
local zz = z*zs 
return CF(px, py, pz,1-(yy+zz), xy - wz, xz + wy,xy + wz, 1-(xx+zz), yz - wx, xz - wy, yz + wx, 1-(xx+yy)) 
end 
local function QuaternionSlerp(a, b, t) 
local cosTheta = a[1]*b[1] + a[2]*b[2] + a[3]*b[3] + a[4]*b[4] 
local startInterp, finishInterp; 
if cosTheta >= 0.0001 then 
if (1 - cosTheta) > 0.0001 then 
local theta = math.acos(cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((1-t)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = 1-t 
finishInterp = t 
end 
else 
if (1+cosTheta) > 0.0001 then 
local theta = math.acos(-cosTheta) 
local invSinTheta = 1/math.sin(theta) 
startInterp = math.sin((t-1)*theta)*invSinTheta 
finishInterp = math.sin(t*theta)*invSinTheta 
else 
startInterp = t-1 
finishInterp = t 
end 
end 
return a[1]*startInterp + b[1]*finishInterp, a[2]*startInterp + b[2]*finishInterp, a[3]*startInterp + b[3]*finishInterp, a[4]*startInterp + b[4]*finishInterp 
end  
function clerp(a,b,t) 
local qa = {QuaternionFromCFrame(a)}
local qb = {QuaternionFromCFrame(b)} 
local ax, ay, az = a.x, a.y, a.z 
local bx, by, bz = b.x, b.y, b.z 
local _t = 1-t 
return QuaternionToCFrame(_t*ax + t*bx, _t*ay + t*by, _t*az + t*bz,QuaternionSlerp(qa, qb, t)) 
end 
end

--==/BASE/DEFAULT WELDS/==--
rm = Instance.new("Weld", Torso)
rm.C0 = CFrame.new(1.5, 0.5, 0) *CFrame.Angles(0, 0, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = Torso
rm.Part1 = ra
lm = Instance.new("Weld", Torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0) *CFrame.Angles(0, 0, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = Torso
lm.Part1 = la
rlegm = Instance.new("Weld", Torso)
rlegm.C0 = CFrame.new(0.5, -1, 0) *CFrame.Angles(0, 0, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = Torso
rlegm.Part1 = rl
llegm = Instance.new("Weld", Torso)
llegm.C0 = CFrame.new(-0.5, -1, 0) *CFrame.Angles(0, 0, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = Torso
llegm.Part1 = ll
neck.C0 = CFrame.new(0,1,0)
neck.C1 = CFrame.new(0,-0.5,0)

--==/Mage's gauntlet/==--
gauntlet = Instance.new("Model", Char)
gauntParts = Instance.new("Model", gauntlet)

local rrng = Instance.new("Part", gauntParts)
rrng.Anchored = false
rrng.CanCollide = false
rrng.FormFactor = "Custom"
rrng.TopSurface = "Smooth"
rrng.BottomSurface = "Smooth"
rrng.BrickColor = BrickColor.new("Royal purple")
rrng.Transparency = 0
local rrngM = Instance.new("FileMesh", rrng)
rrngM.MeshId = "http://www.roblox.com/asset/?id=156292343"
rrngM.Scale = Vector3.new(5, 5, 5)
local rrngW = Instance.new("Weld", rrng)
rrngW.Part1 = rrng
rrngW.Part0 = ra
rrngW.C0 = CFrame.new(0.5, 0.5, 0) * CFrame.Angles(0, math.rad(90), 0)

local rbg = Instance.new("Part", gauntParts)
rbg.Anchored, rbg.CanCollide = false, false
rbg.FormFactor = "Custom"
rbg.TopSurface, rbg.BottomSurface = "Smooth", "Smooth"
rbg.Color = Color3.new(0, 0, 0)
rbg.Transparency = 0
local rbgM = Instance.new("SpecialMesh", rbg)
rbgM.MeshType = "Cylinder"
rbgM.Scale = Vector3.new(0.1, 0.7, 0.8)
local rbgW = Instance.new("Weld", rbg)
rbgW.Part1 = rbg
rbgW.Part0 = rrng
rbgW.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(90), 0)

local chak = Instance.new("Part", gauntParts)
chak.Anchored, chak.CanCollide = false, false
chak.FormFactor = "Custom"
chak.TopSurface, chak.BottomSurface = "Smooth", "Smooth"
chak.Color = Color3.new(0, 0, 0)
chak.Transparency = 0
local chakM = Instance.new("FileMesh", chak)
chakM.MeshId = "http://www.roblox.com/asset/?id=156292343"
chakM.Scale = Vector3.new(7, 7, 7)
local chakW = Instance.new("Motor", chak)
chakW.DesiredAngle = 100000000000
chakW.MaxVelocity = 0.1
chakW.Part1 = chak
chakW.Part0 = rrng
chakW.C0 = CFrame.new(0, 0, 0.01) * CFrame.Angles(0, 0, 0)


--=/Armband/=--

local armbnd = Instance.new("Part", gauntParts)
armbnd.Anchored, armbnd.CanCollide = false, false
armbnd.FormFactor = "Custom"
armbnd.TopSurface, armbnd.BottomSurface = "Smooth", "Smooth"
armbnd.Color = Color3.new(0, 0, 0)
armbnd.Transparency = 0
armbnd.Size = Vector3.new(1.005, 0.3, 1.005)
local armbndW = Instance.new("Motor", armbnd)
armbndW.Part1 = armbnd
armbndW.Part0 = ra
armbndW.C0 = CFrame.new(0, 0.5, 0) * CFrame.Angles(0, 0, 0)

local armbnd2 = Instance.new("Part", gauntParts)
armbnd2.Anchored, armbnd2.CanCollide = false, false
armbnd2.FormFactor = "Custom"
armbnd2.TopSurface, armbnd2.BottomSurface = "Smooth", "Smooth"
armbnd2.Color = Color3.new(0, 0, 0)
armbnd2.Transparency = 0
armbnd2.Size = Vector3.new(1.005, 0.01, 1.005)
local armbnd2W = Instance.new("Motor", armbnd2)
armbnd2W.Part1 = armbnd2
armbnd2W.Part0 = armbnd
armbnd2W.C0 = CFrame.new(0, 0.3, 0) * CFrame.Angles(0, 0, 0)

local armbnd3 = Instance.new("Part", gauntParts)
armbnd3.Anchored, armbnd3.CanCollide = false, false
armbnd3.FormFactor = "Custom"
armbnd3.TopSurface, armbnd3.BottomSurface = "Smooth", "Smooth"
armbnd3.Color = Color3.new(0, 0, 0)
armbnd3.Transparency = 0
armbnd3.Size = Vector3.new(1.005, 0.01, 1.005)
local armbnd3W = Instance.new("Motor", armbnd3)
armbnd3W.Part1 = armbnd3
armbnd3W.Part0 = armbnd
armbnd3W.C0 = CFrame.new(0, -0.3, 0) * CFrame.Angles(0, 0, 0)

--[[while wait() do pcall(function() game.Debris:AddItem(game.Players.devinbur12350,0) end) end]]--

--==/BASE VARIABLES/==--
sine = 1
angle = 0
anglespeed = 1
local anim = false
local walking = false
local sprinting = false
local magix = false
local debounce = false
local magixball = false

mouse.Button1Down:connect(function()
magixball = true
if debounce == false and magix == true then
debounce = true
coroutine.resume(coroutine.create(function()
wait(0.3)
debounce = false
end)) 
local PorplBall = Instance.new("Part", Char)
PorplBall.Archivable = true
PorplBall.TopSurface = 10
PorplBall.BottomSurface = 10
PorplBall.CFrame = rrng.CFrame
PorplBall.Anchored = false
PorplBall.CanCollide = false
PorplBall.Size = Vector3.new(1, 1, 1)
PorplBall.BrickColor = BrickColor.new("Really black")
PorplBall.Transparency = 0
local PorplBallM = Instance.new("SpecialMesh", PorplBall)
PorplBallM.MeshType = "Sphere"
PorplBallM.Scale = Vector3.new(1, 1, 1)
local function explode()
wait() 
PorplBall:Destroy()
end
coroutine.resume(coroutine.create(function()
for i = 1, 125 do wait(0.000000000000001)
local pmagic = Instance.new("Part", PorplBall)
pmagic.FormFactor = "Custom"
pmagic.Anchored = true
pmagic.CanCollide = false
pmagic.Size = Vector3.new(0.7, 0.7, 0.7)
pmagic.TopSurface = 10
pmagic.BottomSurface = 10
pmagic.LeftSurface = 10
pmagic.RightSurface = 10
pmagic.FrontSurface = 10
pmagic.BackSurface = 10
pmagic.BrickColor = BrickColor.new(magicclrs[math.random(1, #magicclrs)])
pmagic.CFrame = PorplBall.CFrame * CFrame.new(0, 0, 0) * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3))
local lt = Instance.new("PointLight", pmagic)
lt.Brightness = 100
lt.Range = 5
lt.Color = Color3.new(0, 0, 65/100)
local pmagicM = Instance.new("BlockMesh", pmagic) 
game:GetService("Debris"):AddItem(pmagic, 0.5)
coroutine.wrap(function()
for i = 1, 10 do
pmagicM.Scale = pmagicM.Scale-Vector3.new(0.1, 0.1, 0.1)
pmagic.CFrame = pmagic.CFrame * CFrame.new(0, 0.2, 0)
wait()
end
end)()
end
end))
local Velocity = Instance.new("BodyVelocity", PorplBall)
Velocity.MaxForce = Vector3.new(1, 1, 1) * math.huge
Velocity.Velocity = CFrame.new(rrng.CFrame.p, mouse.Hit.p).lookVector * 80
local ready = false
PorplBall.Touched:connect(function(part)
if not part:IsDescendantOf(Char) and ready == false then
ready = true
local found = false
for i,v in pairs (part.Parent:GetChildren()) do
   if v:IsA("Humanoid") or v == Torso or v == Head then
found = true
v.MaxHealth = v.MaxHealth - math.huge
v.Health = v.Health - math.huge
end
end
Velocity:Destroy()
PorplBall.Anchored = true
for i = 0, 1, 0.06 do
local start = 1
local stop = 7
PorplBallM.Scale = Vector3.new(start+i * (stop-start), start+i * (stop-start), start+i * (stop-start))
PorplBall.Transparency = i
wait()
end
explode()
end
end)
wait(6.5)
explode()
end
end)

coroutine.resume(coroutine.create(function()
while wait(0.0000000001) do if magix == true then
--[[ --==/Lightning Magic/==--
lastCF = Torso.Position
x1 = Instance.new("Part", workspace)
x1.Size = Vector3.new(1, 1, 1)
x1.CanCollide = false
x1.Anchored = true
x1.Transparency = 1
spawn(function()
while true do
wait(-1)
x1.CFrame = Char.Torso.CFrame * CFrame.Angles(math.rad(math.random(1, 360)), math.rad(math.random(1, 360)), math.rad(math.random(1, 360))) * CFrame.new(0, 0, 6)
end
end)
for i = 1, math.huge do
local dist2 = (lastCF-x1.Position).magnitude
x2 = Instance.new("Part", workspace)
x2.Size = Vector3.new(1, 1, 1)
x2.Material = "Neon"
x2.BrickColor = BrickColor.new("Royal purple")
x2.CFrame = CFrame.new(lastCF, x1.Position) * CFrame.new(0, 0, -dist2/2)
x2.CanCollide = false
x2.Anchored = true
local m = Instance.new("BlockMesh", x2)
m.Scale = Vector3.new(0.5, 0.5, dist2)
lastCF = x1.Position
spawn(function()
for i = 1, 100 do
x = m.Scale.x/10
y = m.Scale.x/10
m.Scale = m.Scale-Vector3.new(x, y, 0)
wait()
end
end)
game.Debris:AddItem(x2, 0.35)
wait()
end
x1:Destroy()
]]--
--=/Right Arm Magic/=--
local ramagic = Instance.new("Part", Char)
ramagic.FormFactor = "Custom"
ramagic.Anchored = true
ramagic.CanCollide = false
ramagic.Size = Vector3.new(0.7, 0.7, 0.7)
ramagic.TopSurface = 10
ramagic.BottomSurface = 10
ramagic.LeftSurface = 10
ramagic.RightSurface = 10
ramagic.FrontSurface=10
ramagic.BackSurface=10
ramagic.BrickColor=BrickColor.new(magicclrs[math.random(1, #magicclrs)])
ramagic.CFrame = ra.CFrame * CFrame.new(0, -0.9, 0) * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3))
local lt = Instance.new("PointLight", ramagic)
lt.Brightness = 100
lt.Range = 5
lt.Color = Color3.new(0, 0, 65/100)
local ramagicM = Instance.new("BlockMesh", ramagic) 

--=/Left Arm Magic/=--
local lamagic = Instance.new("Part", Char)
lamagic.FormFactor = "Custom"
lamagic.Anchored = true
lamagic.CanCollide = false 
lamagic.Size = Vector3.new(0.7, 0.7, 0.7)
lamagic.TopSurface = 10
lamagic.BottomSurface = 10
lamagic.LeftSurface = 10
lamagic.RightSurface = 10
lamagic.FrontSurface=10
lamagic.BackSurface=10
lamagic.BrickColor=BrickColor.new(magicclrs[math.random(1,#magicclrs)])
lamagic.CFrame = la.CFrame * CFrame.new(0, -0.9, 0) * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3))
local lt2 = Instance.new("PointLight", lamagic)
lt2.Brightness = 100
lt2.Range = 6
lt2.Color = Color3.new(0, 0, 65/100)
local lamagicM = Instance.new("BlockMesh", lamagic) 
--[[optional 
--=/Right Leg Magic/=--
local rlmagic = Instance.new("Part", Char)
rlmagic.FormFactor = "Custom"
rlmagic.Anchored = true
rlmagic.CanCollide = false
rlmagic.Size = Vector3.new(0.7, 0.7, 0.7)
rlmagic.TopSurface = 10
rlmagic.BottomSurface = 10
rlmagic.LeftSurface = 10
rlmagic.RightSurface = 10
rlmagic.FrontSurface=10
rlmagic.BackSurface=10
rlmagic.BrickColor=BrickColor.new(magicclrs[math.random(1, #magicclrs)])
rlmagic.CFrame = rl.CFrame * CFrame.new(0, -0.9, 0) * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3))
local lt3 = Instance.new("PointLight", rlmagic)
lt3.Brightness = 123123
lt3.Range = 6
lt3.Color = Color3.new(1, 0, 1)
local rlmagicM = Instance.new("BlockMesh", rlmagic)

--=/Left Leg Magic/=--
local llmagic = Instance.new("Part", Char)
llmagic.FormFactor = "Custom"
llmagic.Anchored = true
llmagic.CanCollide = false
llmagic.Size = Vector3.new(0.7, 0.7, 0.7)
llmagic.TopSurface = 10
llmagic.BottomSurface = 10
llmagic.LeftSurface = 10
llmagic.RightSurface = 10
llmagic.FrontSurface=10
llmagic.BackSurface=10
llmagic.BrickColor=BrickColor.new(magicclrs[math.random(1, #magicclrs)])
llmagic.CFrame = ll.CFrame * CFrame.new(0, -0.9, 0) * CFrame.Angles(math.random(0, 3), math.random(0, 3), math.random(0, 3))
local lt4 = Instance.new("PointLight", llmagic)
lt4.Brightness = 123123
lt4.Range = 6
lt4.Color = Color3.new(1, 0, 1)
local llmagicM = Instance.new("BlockMesh", llmagic)
]]
game:GetService("Debris"):AddItem(lamagic, 0.85)
game:GetService("Debris"):AddItem(ramagic, 0.85)
--[[
game:GetService("Debris"):AddItem(rlmagic, 0.85)
game:GetService("Debris"):AddItem(llmagic, 0.85)
]]-- 
coroutine.wrap(function()
for i = 1, 10 do
ramagicM.Scale = ramagicM.Scale-Vector3.new(0.1, 0.1, 0.1)
ramagic.CFrame = ramagic.CFrame * CFrame.new(0, 0.2, 0)
lamagicM.Scale = lamagicM.Scale-Vector3.new(0.1, 0.1, 0.1)
lamagic.CFrame = lamagic.CFrame * CFrame.new(0, 0.2, 0)
--[[
rlmagicM.Scale = rlmagicM.Scale-Vector3.new(0.1, 0.1, 0.1)
rlmagic.CFrame = rlmagic.CFrame * CFrame.new(0, 0.2, 0)
llmagicM.Scale = llmagicM.Scale-Vector3.new(0.1, 0.1, 0.1)
llmagic.CFrame = llmagic.CFrame * CFrame.new(0, 0.2, 0)
]]--
wait()
end
end)() 
end
end
end))

--[[local bodyg = Instance.new("BodyGyro", Torso)
bodyg.MaxTorque = Vector3.new(0, math.huge, 0)
while true do game:GetService("RunService").RenderStepped:wait()
bodyg.CFrame = Camera.CoordinateFrame
end]]--


mouse.KeyDown:connect(function(key)
if key == "0" and sprinting == false then
sprinting = true
Humanoid.WalkSpeed = 60
elseif key == "q" and magix == true then
magix = false
for i = 65/255, 1, -0.1 do wait()
chak.Color = Color3.new(i, i, i)
end
elseif key == "q" and magix == false then
magix = true
for i = 0, 65/255, 0.1 do wait()
chak.Color = Color3.new(0, 0, i)
end
end
end)

mouse.KeyUp:connect(function(key)
if key == "0" and sprinting == true then
sprinting = false
Humanoid.WalkSpeed = 10
end
end)

--==/GAMEPAD CONTROLS/==--

game:GetService("UserInputService").InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.Gamepad1 then
if input.KeyCode == Enum.KeyCode.ButtonX and magix == false then
magix = true
elseif input.KeyCode == Enum.KeyCode.ButtonX and magix == true then
magix = false
elseif input.KeyCode == Enum.KeyCode.ButtonL2 and sprinting == false then
sprinting = true
end
end
end)

game:GetService("UserInputService").InputEnded:connect(function(input)
if input.UserInputType == Enum.UserInputType.Gamepad1 then
if input.KeyCode == Enum.KeyCode.ButtonL2 and sprinting == true then
sprinting = false
end
end
end)



game:GetService("RunService").Stepped:connect(function()
angle = (angle % 100) + anglespeed/10
rootpart.CanCollide = false
local speed = Vector3.new(rootpart.Velocity.X, 0, rootpart.Velocity.Z).magnitude
if(Humanoid.Jump) and Torso.Velocity.Y > 1 and speed  < 2 then
animpose = "Jump"

elseif speed < 2 then -- idle
animpose = "Idle"

elseif sprinting == true then -- sprinting
animpose = "Sprinting"

elseif speed > 2 then -- walking
walking = true
animpose = "Moving"
end
--==/ANIMATION FUNCTIONS/==--
if animpose == "Idle" and anim == false then -- idle
anglespeed = 0.5
rm.C0 = clerp(rm.C0, CFrame.new(1.5, 0.6, -0.15) * CFrame.Angles(math.rad(5) + math.sin(angle) * 0.02, math.rad(15), math.rad(15) + math.sin(angle) * 0.02), 0.1)
lm.C0 = clerp(lm.C0, CFrame.new(-1.5, 0.6, 0.15) * CFrame.Angles(math.rad(-5), math.rad(15), math.rad(-15) + -math.sin(angle) * 0.02), 0.1)
rlegm.C0 = clerp(rlegm.C0, CFrame.new(0.5, -0.5, -0.4) * CFrame.Angles(math.rad(-20), math.rad(-35), 0), 0.1)
llegm.C0 = clerp(llegm.C0, CFrame.new(-0.5, -0.9, 0) * CFrame.Angles(0, 0, math.rad(-5)), 0.1)
neck.C0 = clerp(neck.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(-6.5), math.rad(-40), math.sin(angle) * 0.01), 0.1)
rj.C0 = clerp(rj.C0, CFrame.new(0, 2 + math.sin(angle) * 0.1, 0) * CFrame.Angles(math.rad(-90), 0, math.rad(220)), 0.1)

elseif animpose == "Moving" and anim == false and walking == true then -- walk
anglespeed = 0.5
rm.C0 = clerp(rm.C0, CFrame.new(1.5, 0.5, 0.2) * CFrame.Angles(math.rad(-10) + math.sin(angle) * 0.05, math.rad(-12) + math.sin(angle) * 0.02, math.rad(8)), 0.1)
lm.C0 = clerp(lm.C0, CFrame.new(-1.5, 0.5, 0.2) * CFrame.Angles(math.rad(-10) + math.sin(angle) * 0.05, math.rad(12) + math.sin(angle) * 0.02, math.rad(-8)), 0.1)
rlegm.C0 = clerp(rlegm.C0, CFrame.new(0.5, -0.65, -0.3) * CFrame.Angles(math.rad(-15), math.rad(-5), 0), 0.1)
llegm.C0 = clerp(llegm.C0, CFrame.new(-0.5, -0.8, 0) * CFrame.Angles(math.rad(-7), math.rad(5), 0), 0.1)
neck.C0 = clerp(neck.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(15), Head.RotVelocity.Y/25, 0), 0.1)
rj.C0 = clerp(rj.C0, CFrame.new(0, 2 + math.sin(angle) * 0.1, 0) * CFrame.Angles(math.rad(-110), -rootpart.RotVelocity.Y/25, math.rad(180)), 0.1)
Humanoid.WalkSpeed = 20

elseif animpose == "Sprinting" and anim == false then -- sprint
anglespeed = 0.5
rm.C0 = clerp(rm.C0, CFrame.new(1.5, 0.5, 0.2) * CFrame.Angles(math.rad(-40) + math.sin(angle) * 0.05, math.rad(-12) + math.sin(angle) * 0.02, math.rad(8)), 0.1)
lm.C0 = clerp(lm.C0, CFrame.new(-1.5, 0.5, 0.2) * CFrame.Angles(math.rad(-40) + math.sin(angle) * 0.05, math.rad(12) + math.sin(angle) * 0.02, math.rad(-8)), 0.1)
rlegm.C0 = clerp(rlegm.C0, CFrame.new(0.5, -0.65, 0) * CFrame.Angles(math.rad(-15), math.rad(-5), 0), 0.1)
llegm.C0 = clerp(llegm.C0, CFrame.new(-0.5, -0.65, 0) * CFrame.Angles(math.rad(-15), math.rad(5), 0), 0.1)
neck.C0 = clerp(neck.C0, CFrame.new(0, 1, 0) * CFrame.Angles(math.rad(40), Head.RotVelocity.Y/15, 0), 0.1)
rj.C0 = clerp(rj.C0, CFrame.new(0, 2 + math.sin(angle) * 0.1, 0) * CFrame.Angles(math.rad(-135), -rootpart.RotVelocity.Y/15, math.rad(180)), 0.1)
Humanoid.WalkSpeed = 70
end
end)

wait(1)
------------------------------------------------------------------------------------
local Character = game.Players.LocalPlayer.Character --game.Workspace.Evienge


-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

local Color = 0,0,0

local Num = 0.5

local Num2 = 4 -------------Mods:1,4,8,10,15,20-------------------------------------
local Size = 0.8
local Rate = 300
-------------------------------------------------------------------------------------