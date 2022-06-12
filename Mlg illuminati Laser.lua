---CREATED BY SoIHeardYouLikeMemes/Kidd_Anonymouse/Teen_Anonymouse/Adult_Anonymouse/FetusAnonymouse---
---those are all my alts btw.---
local you = game.Players.LocalPlayer
local char = you.Character
local mouse = you:GetMouse()
local firing = false

local m = Instance.new("Model",char)
local illum = Instance.new("Part",m)
illum.CanCollide = false
illum.BottomSurface = "Smooth"
illum.TopSurface = "Smooth"
illum.Size = Vector3.new(0.2, 0.2, 0.2)
illum.Anchored = true

local s = Instance.new("Sound",m)
s.SoundId = "rbxassetid://185492305"
s.Volume = 0.8
s.Looped = true
s:Play()
local SP = Instance.new("SpecialMesh",illum)
SP.MeshId = "rbxassetid://438530093"
SP.TextureId = "rbxassetid://438530120"
SP.Scale = Vector3.new(0.2, 0.2, 0.2)
SP.Offset = Vector3.new(0.5, 8, 0.03)


local MousePart = Instance.new("Part",m)
MousePart.CanCollide = false
MousePart.BottomSurface = "Smooth"
MousePart.TopSurface = "Smooth"
MousePart.Size = Vector3.new(0.2, 0.2, 0.2)
MousePart.Anchored = true


local TipPart = Instance.new("Part",m)
TipPart.CanCollide = false
TipPart.BottomSurface = "Smooth"
TipPart.TopSurface = "Smooth"
TipPart.BrickColor = BrickColor.new("Lime green")
TipPart.Material = "Neon"
TipPart.FormFactor = "Custom"
TipPart.Shape = "Ball"
TipPart.Size = Vector3.new(2, 2, 2)
TipPart.Anchored = true
TipPart.Locked = true
TipPart.CanCollide = false
TipPart.Transparency = 0.5

local PE1 = Instance.new("ParticleEmitter",TipPart) -- dorritoes
PE1.Texture = "rbxassetid://686815657"
PE1.LightEmission = 0.3
PE1.Acceleration = Vector3.new(0,-2,0)
PE1.Lifetime = NumberRange.new(5,7)
PE1.Speed = NumberRange.new(3,5)
PE1.Rate = 30
PE1.VelocitySpread = 50

local PE2 = Instance.new("ParticleEmitter",TipPart) --illuminati
PE2.Texture = "rbxassetid://686815657"
PE2.LightEmission = 1
PE2.Acceleration = Vector3.new(0,-2,0)
PE2.Lifetime = NumberRange.new(5,7)
PE2.Speed = NumberRange.new(3,5)
PE2.Rate = 10
PE2.VelocitySpread = 50

local PE3 = Instance.new("ParticleEmitter",TipPart) --HitMarkers
PE3.Texture = "rbxassetid://686815657"
PE3.LightEmission = 1
PE3.Acceleration = Vector3.new(0,-2,0)
PE3.Lifetime = NumberRange.new(5,7)
PE3.Speed = NumberRange.new(3,5)
PE3.Rate = 10
PE3.VelocitySpread = 50

local PE4 = Instance.new("ParticleEmitter",MousePart) -- dorritoes
PE4.Texture = "rbxassetid://484383135"
PE4.Acceleration = Vector3.new(0,-10,0)
PE4.Lifetime = NumberRange.new(2,4)
PE4.Speed = NumberRange.new(8,10)
PE4.Rate = 100
PE4.VelocitySpread = 50

local PE5 = Instance.new("ParticleEmitter",MousePart) --illuminati
PE5.Texture = "rbxassetid://686815657"
PE5.Acceleration = Vector3.new(0,-10,0)
PE5.Lifetime = NumberRange.new(2,4)
PE5.Speed = NumberRange.new(8,10)
PE5.Rate = 100
PE5.VelocitySpread = 50

local PE6 = Instance.new("ParticleEmitter",MousePart) --HitMarkers
PE6.Texture = "rbxassetid://644165701"
PE6.Acceleration = Vector3.new(0,-10,0)
PE6.Lifetime = NumberRange.new(2,4)
PE6.Speed = NumberRange.new(8,10)
PE6.Rate = 100
PE6.VelocitySpread = 50

PE1.Enabled = false
PE2.Enabled = false
PE3.Enabled = false
PE4.Enabled = false
PE5.Enabled = false
PE6.Enabled = false

function drawlazer(p1,p2)
part = Instance.new("Part", m)
part.Name = "Location"
part.BottomSurface = 0
part.TopSurface = 0
part.BrickColor = BrickColor.new("Lime green")
part.Material = "Neon"
part.FormFactor = "Custom"
part.Shape = "Ball"
part.Size = Vector3.new(4, 4, 4)
part.Anchored = true
part.Locked = true
part.CanCollide = false
part.Transparency = 0.5
part.CFrame = CFrame.new(p1.Position.x,p1.Position.y,p1.Position.z)

obj = part
local lastPos = obj.CFrame.p
objC = obj:Clone()
objC.Name = "Line"
objC.Parent = m
objC.Shape = "Ball"
objC.Anchored = true
local distance = (p2.Position- obj.CFrame.p).magnitude
objC.Size = Vector3.new(10,10,distance)
objC.CFrame = CFrame.new(p2.Position,obj.Position)*CFrame.new(0,0,-distance/2)
lastPos = obj.CFrame.p
objCC1 = objC:Clone()
objCC1.Parent = objC
objCC1.CFrame = CFrame.new(p2.Position,obj.Position)*CFrame.new(0,0,-distance/2.5)
objCC1.Size = Vector3.new(4,4,distance/2)
objCC1.Name = "LineC1"

objCC2 = objC:Clone()
objCC2.Parent = objC
objCC2.CFrame = CFrame.new(p2.Position,obj.Position)*CFrame.new(0,0,-distance/1.5)
objCC2.Size = Vector3.new(4,4,distance/2)
objCC2.Name = "LineC2"
objCC2:ClearAllChildren()

end

function drawlazer2(p1,p2)
part = m:FindFirstChild("Location")
part.CFrame = CFrame.new(p1.Position.x,p1.Position.y,p1.Position.z)
obj = part
local distance = (p2.Position- obj.CFrame.p).magnitude
objC = m.Line:Clone()
objC.Name = "Line2"
objC.Parent = m
objC.Size = Vector3.new(4,4,distance)
objC.CFrame = CFrame.new(p2.Position,obj.Position)*CFrame.new(0,0,-distance/2)

objCC1 = objC.LineC1

objCC1.CFrame = CFrame.new(p2.Position,obj.Position)*CFrame.new(0,0,-distance/2.5)
objCC1.Size = Vector3.new(4,4,distance/2)


objCC2 = objC.LineC2

objCC2.CFrame = CFrame.new(p2.Position,obj.Position)*CFrame.new(0,0,-distance/1.5)
objCC2.Size = Vector3.new(4,4,distance/2)


m.Line:remove()

objC.Name = "Line"
for _,v in pairs(game.Players:GetPlayers()) do
	
if v ~= you then
local d = (part.Position- v.Character:WaitForChild("Torso").CFrame.p).magnitude
if d <= 5 then
v.Character:FindFirstChildOfClass("Humanoid"):TakeDamage(5)
end
end
--wait()
end

end


function despawn1(part1,part2,length)

for i = 10,1,-1 do

part1.Transparency = part1.Transparency + 0.1
part1.Size = part1.Size + Vector3.new(0.2,0.2,length)
part1.Size = Vector3.new(part1.Size.X,part1.Size.Y,length)

wait(0.01)
end
part1:remove()

for i = 10,1,-1 do

part2.Transparency = part2.Transparency + 0.1

wait(0.01)
end
part2:remove()

end

function despawn2(part1,length)

for i = 10,1,-1 do

part1.Transparency = part1.Transparency + 0.1
part1.Size = part1.Size + Vector3.new(0.2,0,length)
part1.Size = Vector3.new(part1.Size.X,part1.Size.Y,length)

wait(0.01)
end
part1:remove()
end



function snipe(T)

part = Instance.new("Part", m)
part.Name = "Sniper"
part.BottomSurface = 0
part.TopSurface = 0
part.BrickColor = BrickColor.new("Really black")
part.Material = "Neon"
part.FormFactor = "Custom"
part.Size = Vector3.new(1, 1, 3)
part.Anchored = true
part.Locked = true
part.CanCollide = false
part.Transparency = 0

local SP = Instance.new("SpecialMesh",part)
SP.MeshId = "rbxassetid://685827900"
SP.Scale = Vector3.new(0.05, 0.05, 0.05)
SP.Offset = Vector3.new(0, -0.3, 3.05)

local S=part

part.Position = char.Torso.Position + Vector3.new(math.random(-5,5),math.random(3,8),math.random(-5,5))
part.CFrame = CFrame.new(part.Position,T.Position)


obj = part
local lastPos = obj.CFrame.p
objC = obj:Clone()
objC.Mesh:remove()
wait(0.05)
objC.Parent = part
objC.Shape = "Ball"
objC.FormFactor = "Custom"
objC.Anchored = true
objC.BrickColor = BrickColor.new("New Yeller")
local distance = (T.Position- obj.CFrame.p).magnitude
objC.Size = Vector3.new(0.2,0.2,distance)
objC.CFrame = CFrame.new(T.Position,obj.Position)*CFrame.new(0,0,-distance/2)
local s = Instance.new("Sound",part)
s.SoundId = "rbxassetid://680140087"
s.Volume = 1
s.PlayOnRemove = true
s:remove()
despawn1(objC,part,distance)
if mouse.Target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
mouse.Target.Parent:FindFirstChildOfClass("Humanoid"):TakeDamage(20)
local PETemp = Instance.new("ParticleEmitter",mouse.Target) --HitMarkers
PETemp.Texture = "rbxassetid://644165701"
PETemp.Acceleration = Vector3.new(0,-10,0)
PETemp.Lifetime = NumberRange.new(2,4)
PETemp.Speed = NumberRange.new(8,10)
PETemp.Rate = 100
PETemp.VelocitySpread = 50
PETemp.Enabled = true
wait(0.1)
PETemp.Enabled = false
end
end






function ThrowDorito(a,b)
if m:FindFirstChild("Throw") == nil then
local animation=Instance.new("Animation",char:FindFirstChildOfClass("Humanoid"))
animation.Name="Throw"
animation.AnimationId="http://www.roblox.com/asset/?id=207107855"
anim=char:FindFirstChildOfClass("Humanoid"):LoadAnimation(animation)
anim:Play()
else
local animation=char:FindFirstChildOfClass("Humanoid").Throw
anim=char:FindFirstChildOfClass("Humanoid"):LoadAnimation(animation)
anim:Play()
end

part = Instance.new("Part", m)
part.Name = "Dorito"
part.BottomSurface = 0
part.TopSurface = 0
part.BrickColor = BrickColor.new("Neon orange")
part.Material = "Neon"
part.FormFactor = "Custom"
part.Shape = "Ball"
part.Size = Vector3.new(1,0.2,1)
part.Anchored = true
part.Locked = true
part.CanCollide = false
part.Transparency = 0
part.CFrame = CFrame.new(a.Position.x,a.Position.y,a.Position.z)
local SP = Instance.new("SpecialMesh",part)
SP.MeshId = "rbxassetid://627995517"
SP.Scale = Vector3.new(1, 1, 1)


obj = part
local lastPos = obj.CFrame.p
objC = obj:Clone()
objC.Name = "DoritoTrail"
objC.Mesh:remove()
objC.Parent = m
objC.FormFactor = "Custom"
objC.Anchored = true
objC.Transparency = 0.5
objC.BrickColor = BrickColor.new("CGA brown")

local distance = (b.Position- obj.CFrame.p).magnitude
objC.Size = Vector3.new(1,0.2,distance)
objC.CFrame = CFrame.new(b.Position,obj.Position)*CFrame.new(0,0,-distance/2)
lastPos = obj.CFrame.p
obj.CFrame = CFrame.new(b.Position,obj.Position)*CFrame.new(0,0,-distance)
obj.CFrame = obj.CFrame * CFrame.fromEulerAnglesXYZ(0,math.random(1,99),0)
objC.Size = Vector3.new(1,0.2,distance)
print(distance)
	local target = mouse.Target
    local weld = Instance.new("ManualWeld")
    weld.Part0 = part
    weld.Part1 = target
    weld.C0 = CFrame.new()
    weld.C1 = target.CFrame:inverse() * part.CFrame
    weld.Parent = part
	part.Anchored = false
	if target.Parent:FindFirstChildOfClass("Humanoid") ~= nil then
		target.Parent:FindFirstChildOfClass("Humanoid"):TakeDamage(5)
	end
	despawn2(objC,distance)
end









function shoot()
print("FIRE!")
TipPart.Transparency = 0.5
if m:FindFirstChild("Line") == nil then

drawlazer(MousePart,TipPart)
else
drawlazer2(MousePart,TipPart)
end
local s = Instance.new("Sound",TipPart)
s.SoundId = "rbxassetid://705502934"
s.Volume = 2.5
s.PlayOnRemove = true
s:remove()
wait()
end

--.KEYS....KEYS....KEYSKEYSKEYS....KEYS....KEYS....KEYSKEYSKEYS......--
--.KEYS....KEYS....KEYSKEYSKEYS....KEYS....KEYS..KEYSKEYS..KEYSKEYS..--
--.KEYS..KEYS......KEYS..............KEYSKEYS...KEYS...........KEYS..--
--.KEYS..KEYS......KEYS..............KEYSKEYS...KEYSKEYS.............--
--.KEYSKEYS........KEYSKEYS............KEYS........KEYSKEYS..........--
--.KEYSKEYS........KEYSKEYS............KEYS............KEYSKEYS......--
--.KEYS..KEYS......KEYS..............KEYS..................KEYSKEYS..--
--.KEYS..KEYS......KEYS..............KEYS.......KEYS...........KEYS..--
--.KEYS....KEYS....KEYSKEYSKEYS....KEYS.........KEYSKEYS..KEYSKEYS...--
--.KEYS....KEYS....KEYSKEYSKEYS....KEYS............KEYSKEYSKEYS......--
mouse.Button1Up:connect(function()
firing = false
print("Stop")
PE1.Enabled = false
PE2.Enabled = false
PE3.Enabled = false
PE4.Enabled = false
PE5.Enabled = false
PE6.Enabled = false
if m:FindFirstChild("Line") ~= nil then
m.Line:remove()
m.Location:remove()
end
TipPart.Transparency = 1
repeat illum.CFrame = illum.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0) illum.Position = char.Torso.Position + Vector3.new(0,.01,0) if m:FindFirstChild("Line") ~= nil then m:FindFirstChild("Line"):remove() end if m:FindFirstChild("Location") ~= nil then m:FindFirstChild("Location"):remove() end wait()
until firing == true
end)

mouse.Button1Down:connect(function()
firing = true
PE1.Enabled = true
--PE2.Enabled = true
--PE3.Enabled = true
PE4.Enabled = true
PE5.Enabled = true
PE6.Enabled = true
repeat MousePart.CFrame = CFrame.new(mouse.Hit.p) TipPart.Position = char.Head.Position + Vector3.new(0,9,0) illum.CFrame = illum.CFrame * CFrame.fromEulerAnglesXYZ(0,0.05,0) illum.Position = char.Torso.Position + Vector3.new(0,.01,0) shoot() wait()
until firing == false 

end)

mouse.KeyDown:connect(function(key)
if key == "q" and firing == false then
MousePart.CFrame = CFrame.new(mouse.Hit.p)
snipe(MousePart)
print("Snipe")
elseif key == "e" and firing == false then
MousePart.CFrame = CFrame.new(mouse.Hit.p)
ThrowDorito(MousePart,char:FindFirstChild("Right Arm"))
print("Dorito")
end

end)