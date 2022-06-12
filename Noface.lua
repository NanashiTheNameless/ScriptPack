--KAONASHI--
-- mediafire
script:ClearAllChildren()
Player = game.Players.ace28545
Character = Player.Character
Hop = Instance.new("Tool",Player.Backpack)
Hop.ToolTip = "Equip to appear."
Hop.CanBeDropped = false
Hop.Name = "BLUELICH"
Hu = Character.Humanoid
H = Instance.new("Part",Hop)
H.Name = "Handle"
H.formFactor = 3
H.CanCollide = false
H.Anchored = false
H.Size = Vector3.new(0.2,0.2,0.2)
H.Transparency = 1
script.Parent = Hop
pcall(function()
Character.Kaonashi:Destroy()
end)
mode = 1
--[[
coroutine.resume(coroutine.create(function()
game:service("ContentProvider"):Preload("http://www.roblox.com/Asset/?id=1280473")
wait(0.5)
local s = Instance.new("Sound")
s.SoundId = "http://www.roblox.com/Asset/?id=1280473"
s.Looped = true
s.Parent = Character.Head
wait(0.5)
s:Play()
end))
]]
gui = Instance.new("ScreenGui",Player.PlayerGui)
gui.Name = "BlueLich"
frame = Instance.new("Frame",gui)
frame.Style = 2
frame.Size = UDim2.new(1,0,0.1,0)
frame.Position = UDim2.new(0,0,0.9,0)
mode1 = Instance.new("TextLabel",frame)
mode1.Position = UDim2.new(0,100,0.5,0)
mode1.Text = "Bite"
mode1.Font = 2
mode1.FontSize = 7
mode1.TextColor3 = BrickColor.White().Color
button1 = Instance.new("TextButton",frame)
button1.Position = UDim2.new(0,125,0.5,-27.5)
button1.Size = UDim2.new(0,50,0,50)
button1.BackgroundTransparency = 1
button1.Text = ">"
button1.Font = 2
button1.FontSize = 7
button1.TextColor3 = BrickColor.White().Color
button2 = Instance.new("TextButton",frame)
button2.Position = UDim2.new(0,25,0.5,-27.5)
button2.Size = UDim2.new(0,50,0,50)
button2.BackgroundTransparency = 1
button2.Text = "<"
button2.Font = 2
button2.FontSize = 7
button2.TextColor3 = BrickColor.White().Color
button1.MouseButton1Click:connect(function()
if mode == 1 then
mode = 2
mode1.Text = "Spear"
elseif mode == 2 then
mode = 3
mode1.Text = "Shield"
else
mode = 1
mode1.Text = "Bite"
end
end)
button2.MouseButton1Click:connect(function()
if mode == 1 then
mode = 3
mode1.Text = "Shield"
elseif mode == 2 then
mode = 1
mode1.Text = "Bite"
else
mode = 2
mode1.Text = "Spear"
end
end)
pcall(function()
Character.Head.face:Destroy()
end)
shrouded = false
Character.Torso.Changed:connect(function()
if shrouded then
        Character.Torso.CanCollide = false
        Character.Head.CanCollide = false
end
end)
game:GetService('RunService').Stepped:connect(function()
if shrouded then
        Character.Torso.CanCollide = false
        Character.Head.CanCollide = false
end
end)
Torso = Character.Torso
CHAR = Character:children()
for i = 1,#CHAR do
if CHAR[i]:IsA("Part") then
CHAR[i].Transparency = 1
CHAR[i].CanCollide = false
elseif CHAR[i]:IsA("Hat") then
CHAR[i]:Destroy()
end
end
function Weld(p0,p1,c0)
local weld = Instance.new("Weld",p0)
weld.Part0 = p0
weld.Part1 = p1
weld.C0 = c0
return weld
end
function Part(parent,size)
part = Instance.new("Part",parent)
part.formFactor = 3
part.Size = size
return part
end
Kao = Instance.new("Model",Character)
Kao.Name = "Kaonashi"
Base = Part(Kao,Vector3.new(0.35,0.35,0.35))
Base.Position = Torso.Position
Base.BrickColor = BrickColor.new("Really black")
Base.CanCollide = false
Base.Reflectance = 0.1
Instance.new("CylinderMesh",Base).Scale = Vector3.new(10,10,10)
Weld(Torso,Base,CFrame.new(0,-1.5,0))
Base2 = Part(Kao,Vector3.new(0.35,0.35,0.35))
Base2.Position = Torso.Position
Base2.CanCollide = false
Base2.Reflectance = 0.1
Base2.BrickColor = BrickColor.new("Really black")
Base2Mesh = Instance.new("SpecialMesh",Base2)
Base2Mesh.MeshType = "Sphere"
Base2Mesh.Scale = Vector3.new(10,10,10)
Weld(Torso,Base2,CFrame.new(0,2,0))
Base3 = Part(Kao,Vector3.new(0.35,0.2,0.35))
Base3.Position = Torso.Position
Base3.BrickColor = BrickColor.new("Really black")
Base3.CanCollide = false
Base3.Reflectance = 0.1
Instance.new("CylinderMesh",Base3).Scale = Vector3.new(10,10,10)
Weld(Torso,Base3,CFrame.new(0,1,0))
Lip = Part(Kao,Vector3.new(0.35,0.225,0.35))
Lip.Position = Torso.Position
Lip.BrickColor = BrickColor.new("Really black")
Lip.CanCollide = false
Lip.Reflectance = 0.1
Instance.new("CylinderMesh",Lip).Scale = Vector3.new(10,7.25,10)
LipW = Weld(Torso,Lip,CFrame.new(0,1.3,0))
Mask = Part(Kao,Vector3.new(1.3,0.2,1.3))
Mask.Position = Torso.Position
Mask.BrickColor = BrickColor.White()
Mask.CanCollide = false
Mask.Reflectance = 0.1
Instance.new("CylinderMesh",Mask).Scale = Vector3.new(1,1,1)
Weld(Torso,Mask,CFrame.new(0,2,-1.75)*CFrame.Angles(math.rad(90),0,0))
Mask2 = Part(Kao,Vector3.new(1.3,0.2,1.3))
Mask2.Position = Torso.Position
Mask2.BrickColor = BrickColor.White()
Mask2.CanCollide = false
Mask2.Reflectance = 0.1
Instance.new("CylinderMesh",Mask2).Scale = Vector3.new(1,1,1)
Weld(Torso,Mask2,CFrame.new(0,1.3,-1.75)*CFrame.Angles(math.rad(90),0,0))
Mask3 = Part(Kao,Vector3.new(1.3,0.2,0.9))
Mask3.Position = Torso.Position
Mask3.BrickColor = BrickColor.White()
Mask3.CanCollide = false
Mask3.Reflectance = 0.1
Instance.new("BlockMesh",Mask3)
Weld(Torso,Mask3,CFrame.new(0,1.65,-1.75)*CFrame.Angles(math.rad(90),0,0))
Mask4 = Part(Kao,Vector3.new(0.2,0.21,0.2))
Mask4.Position = Torso.Position
Mask4.BrickColor = BrickColor.new("Medium blue")
Mask4.CanCollide = false
Mask4.Reflectance = 0.1
Instance.new("BlockMesh",Mask4)
Weld(Torso,Mask4,CFrame.new(0.35,1.7,-1.75)*CFrame.Angles(math.rad(90),0,0))
Mask5 = Part(Kao,Vector3.new(0.2,0.21,0.2))
Mask5.Position = Torso.Position
Mask5.BrickColor = BrickColor.new("Medium blue")
Mask5.CanCollide = false
Mask5.Reflectance = 0.1
Instance.new("BlockMesh",Mask5)
Weld(Torso,Mask5,CFrame.new(-0.35,1.7,-1.75)*CFrame.Angles(math.rad(90),0,0))
Mask6 = Part(Kao,Vector3.new(0.5,0.21,0.2))
Mask6.Position = Torso.Position
Mask6.BrickColor = BrickColor.new("Really black")
Mask6.CanCollide = false
Mask6.Reflectance = 0.1
Instance.new("BlockMesh",Mask6)
Weld(Torso,Mask6,CFrame.new(-0.41,2,-1.75)*CFrame.Angles(math.rad(90),0,0))
Mask7 = Part(Kao,Vector3.new(0.5,0.21,0.2))
Mask7.Position = Torso.Position
Mask7.BrickColor = BrickColor.new("Really black")
Mask7.CanCollide = false
Mask7.Reflectance = 0.1
Instance.new("BlockMesh",Mask7)
Weld(Torso,Mask7,CFrame.new(0.41,2,-1.75)*CFrame.Angles(math.rad(90),0,0))
Mask8 = Part(Kao,Vector3.new(0.5,0.21,0.2))
Mask8.Position = Torso.Position
Mask8.BrickColor = BrickColor.new("Really black")
Mask8.CanCollide = false
Mask8.Reflectance = 0.1
Instance.new("BlockMesh",Mask8)
Weld(Torso,Mask8,CFrame.new(-0.41,1.4,-1.75)*CFrame.Angles(math.rad(90),0,0))
Mask9 = Part(Kao,Vector3.new(0.5,0.21,0.2))
Mask9.Position = Torso.Position
Mask9.BrickColor = BrickColor.new("Really black")
Mask9.CanCollide = false
Mask9.Reflectance = 0.1
Instance.new("BlockMesh",Mask9)
Weld(Torso,Mask9,CFrame.new(0.41,1.4,-1.75)*CFrame.Angles(math.rad(90),0,0))
Mask10 = Part(Kao,Vector3.new(0.2,0.21,0.2))
Mask10.Position = Torso.Position
Mask10.BrickColor = BrickColor.new("Really black")
Mask10.CanCollide = false
Mask10.Reflectance = 0.1
Instance.new("BlockMesh",Mask10).Scale = Vector3.new(0.4,1,0.4)
Weld(Torso,Mask10,CFrame.new(0.55,1.7,-1.75)*CFrame.Angles(math.rad(90),0,0))
Mask11 = Part(Kao,Vector3.new(0.2,0.21,0.2))
Mask11.Position = Torso.Position
Mask11.BrickColor = BrickColor.new("Really black")
Mask11.CanCollide = false
Mask11.Reflectance = 0.1
Instance.new("BlockMesh",Mask11).Scale = Vector3.new(0.4,1,0.4)
Weld(Torso,Mask11,CFrame.new(-0.55,1.7,-1.75)*CFrame.Angles(math.rad(90),0,0))
Cross = Part(Kao,Vector3.new(2.2,1.7,0.2))
Cross.Position = Torso.Position
Cross.BrickColor = BrickColor.new("Bright red")
Cross.CanCollide = false
Cross.Reflectance = 0.1
Instance.new("BlockMesh",Cross)
Weld(Torso,Cross,CFrame.new(0,1.1,-1.15))
Tooth1 = Part(Kao,Vector3.new(0.3,0.4,0.2))
Tooth1.Position = Torso.Position
Tooth1.BrickColor = BrickColor.White()
Tooth1.CanCollide = false
Tooth1.Reflectance = 0.1
Weld(Torso,Tooth1,CFrame.new(0.75,0.67,-1.3))
Tooth2 = Part(Kao,Vector3.new(0.3,0.4,0.2))
Tooth2.Position = Torso.Position
Tooth2.BrickColor = BrickColor.White()
Tooth2.CanCollide = false
Tooth2.Reflectance = 0.1
Weld(Torso,Tooth2,CFrame.new(0.25,0.67,-1.5))
Tooth3 = Part(Kao,Vector3.new(0.3,0.4,0.2))
Tooth3.Position = Torso.Position
Tooth3.BrickColor = BrickColor.White()
Tooth3.CanCollide = false
Tooth3.Reflectance = 0.1
Weld(Torso,Tooth3,CFrame.new(-0.25,0.67,-1.5))
Tooth4 = Part(Kao,Vector3.new(0.3,0.4,0.2))
Tooth4.Position = Torso.Position
Tooth4.BrickColor = BrickColor.White()
Tooth4.CanCollide = false
Tooth4.Reflectance = 0.1
Weld(Torso,Tooth4,CFrame.new(-0.75,0.67,-1.3))
BotTooth1 = Part(Kao,Vector3.new(0.3,0.4,0.2))
BotTooth1.Position = Torso.Position
BotTooth1.BrickColor = BrickColor.White()
BotTooth1.CanCollide = false
BotTooth1.Reflectance = 0.1
Weld(Torso,BotTooth1,CFrame.new(0.75,0.17,-1.3))
BotTooth2 = Part(Kao,Vector3.new(0.3,0.4,0.2))
BotTooth2.Position = Torso.Position
BotTooth2.BrickColor = BrickColor.White()
BotTooth2.CanCollide = false
BotTooth2.Reflectance = 0.1
Weld(Torso,BotTooth2,CFrame.new(0.25,0.17,-1.5))
BotTooth3 = Part(Kao,Vector3.new(0.3,0.4,0.2))
BotTooth3.Position = Torso.Position
BotTooth3.BrickColor = BrickColor.White()
BotTooth3.CanCollide = false
BotTooth3.Reflectance = 0.1
Weld(Torso,BotTooth3,CFrame.new(-0.25,0.17,-1.5))
BotTooth4 = Part(Kao,Vector3.new(0.3,0.4,0.2))
BotTooth4.Position = Torso.Position
BotTooth4.BrickColor = BrickColor.White()
BotTooth4.CanCollide = false
BotTooth4.Reflectance = 0.1
Weld(Torso,BotTooth4,CFrame.new(-0.75,0.17,-1.3))
for i = 45,315,6 do
local Rota = Part(Kao,Vector3.new(0.2,2,0.2))
Rota.Position = Torso.Position
Rota.BrickColor = BrickColor.new("Really black")
Rota.CanCollide = false
Rota.Reflectance = 0.1
Instance.new("BlockMesh",Rota)
local rotweld = Instance.new("Weld",Torso)
rotweld.Part0 = Torso
rotweld.Part1 = Rota
rotweld.C0 = CFrame.new(0,1.1,0)*CFrame.Angles(0,math.rad(i),0)
rotweld.C0 = rotweld.C0*CFrame.new(0,0,-1.625)
end
trailmod = Instance.new("Model",Kao)
function Trail()
local trailch = trailmod:children()
for i = 1,#trailch do
pcall(function()
if trailch[i].Transparency > 0.9 then
trailch[i]:Destroy()
else
trailch[i].Mesh.Scale = trailch[i].Mesh.Scale + Vector3.new(-0.2,0,-0.2)
trailch[i].Transparency = trailch[i].Transparency + 0.03
end
end)
end
if not shrouded then
local trail = Base:Clone()
trail.Parent = trailmod
trail.CanCollide = false
trail.Anchored = true
trail.Mesh.Scale = Vector3.new(10,0.1,10)
trail.CFrame = Torso.CFrame*CFrame.new(0,-3,0)
end
end
function Shroud()
if shrouded == false then
local kaoc = Kao:children()
for i = 1,#kaoc do
if kaoc[i]:IsA("Part") then
coroutine.resume(coroutine.create(function()
for i2 = 0,1,0.1 do
kaoc[i].Transparency = i2
wait()
end
end))
end
end
shrouded = true
elseif shrouded == true then
local kaoc = Kao:children()
for i = 1,#kaoc do
if kaoc[i]:IsA("Part") then
coroutine.resume(coroutine.create(function()
for i2 = 1,0,-0.1 do
kaoc[i].Transparency = i2
wait()
end
end))
end
end
shrouded = false
end
end
function spire(Pos)
coroutine.resume(coroutine.create(function()
local Spire = Part(workspace,Vector3.new(5,8,5))
Spire.Anchored = true
Spire.CFrame = Pos*CFrame.new(0,-7,0)
Spire.BrickColor = BrickColor.new("Medium blue")
Spire.Transparency = 0.4
Spire.Reflectance = 0.2
local SpireMesh = Instance.new("SpecialMesh",Spire)
SpireMesh.MeshId = "http://www.roblox.com/asset/?id=1778999"
SpireMesh.Scale = Vector3.new(4,8,4)
Spire.Touched:connect(function(spirep)
pcall(function()
coroutine.resume(coroutine.create(function()
if spirep.Parent ~= Character then
spirep.Parent.Humanoid.PlatformStand = true
spirep.Parent.Health.Disabled = true
wait()
spirep.Parent.Humanoid:TakeDamage(5)
local spirev = Instance.new("BodyVelocity",spirep)
spirev.velocity = Vector3.new(0,100,0)
spirev.maxForce = Vector3.new()*math.huge
wait()
spirep.Parent.Health.Disabled = false
spirev:Destroy()
end
end))
end)
end)
for i = 1,4 do
Spire.CFrame = Spire.CFrame*CFrame.new(0,1.5,0)
wait()
end
wait(0.5)
for i = 1,8 do
Spire.CFrame = Spire.CFrame*CFrame.new(0,-1,0)
wait()
end
Spire:Destroy()
end))
end
clicky = false
spireg = false
Hop.Equipped:connect(function(Mouse)
Shroud()
end)
Hop.Activated:connect(function()
if clicky == false then
if mode == 1 then
clicky = true
Base3.Transparency = 1
wait()
LipW.C0 = LipW.C0*CFrame.new(0,0.1,0)
wait(0.5)
LipW.C0 = LipW.C0*CFrame.new(0,-0.1,0)
wait()
Base3.Transparency = 0
wait(0.1)
clicky = false
elseif mode == 2 then
clicky = true
spire(Torso.CFrame*CFrame.new(-5,0,-6))
spire(Torso.CFrame*CFrame.new(0,0,-8))
spire(Torso.CFrame*CFrame.new(5,0,-6))
wait(0.1)
spire(Torso.CFrame*CFrame.new(-7,0,-10))
spire(Torso.CFrame*CFrame.new(0,0,-13))
spire(Torso.CFrame*CFrame.new(7,0,-10))
wait(0.1)
spire(Torso.CFrame*CFrame.new(0,0,-16))
spire(Torso.CFrame*CFrame.new(9,0,-13))
spire(Torso.CFrame*CFrame.new(-9,0,-13))
wait(0.1)
spire(Torso.CFrame*CFrame.new(0,0,-20))
spire(Torso.CFrame*CFrame.new(11,0,-16))
spire(Torso.CFrame*CFrame.new(-11,0,-16))
wait(0.1)
spire(Torso.CFrame*CFrame.new(0,0,-23))
spire(Torso.CFrame*CFrame.new(13,0,-20))
spire(Torso.CFrame*CFrame.new(-13,0,-20))
wait(1)
clicky = false
elseif mode == 3 then
clicky = true
spire(Torso.CFrame*CFrame.new(-8,0,-8))
spire(Torso.CFrame*CFrame.new(8,0,-8))
spire(Torso.CFrame*CFrame.new(-8,0,8))
spire(Torso.CFrame*CFrame.new(8,0,8))
spire(Torso.CFrame*CFrame.new(-5,0,-5))
spire(Torso.CFrame*CFrame.new(5,0,-5))
spire(Torso.CFrame*CFrame.new(-5,0,5))
spire(Torso.CFrame*CFrame.new(5,0,5))
spire(Torso.CFrame*CFrame.new(-5,0,0))
spire(Torso.CFrame*CFrame.new(5,0,0))
spire(Torso.CFrame*CFrame.new(0,0,-5))
spire(Torso.CFrame*CFrame.new(0,0,5))
wait(1.5)
clicky = false
end
end
end)
Hop.Unequipped:connect(function()
Shroud()
end)
Shroud()
kaoc2 = Kao:children()
for i = 1,#kaoc2 do
if kaoc2[i]:IsA("Part") then
Instance.new("ForceField",kaoc2[i])
end
end
kaoc3 = Character:children()
for i = 1,#kaoc3 do
if kaoc3[i]:IsA("Part") then
Instance.new("ForceField",kaoc3[i])
end
end
while wait(0.02) do
Trail()
end
