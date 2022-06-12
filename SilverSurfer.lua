name = "rigletto"
m = game.Players[name]
char = m.Character


Humanoid = char.Humanoid
Torso = char.Torso
Head = char.Head
LeftLeg = char["Left Leg"]
RightLeg = char["Right Leg"]
LeftArm = char["Left Arm"]
RightArm = char["Right Arm"]
Neck = Torso["Neck"]

NeckC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
NeckC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
LeftShoulderC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LeftShoulderC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
RightHipC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RightHipC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RightShoulderC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
RightShoulderC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
LeftHipC0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LeftHipC1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)


LeftLeg.Reflectance = .5
LeftArm.Reflectance = .5
RightLeg.Reflectance = .5
RightArm.Reflectance = .4
Torso.Reflectance = .5
Head.Reflectance = .5
RightArm.Reflectance = .5


m.Chatted:connect(function(msg)
        if msg == "Silver" then
mi = Instance.new("Part")
mi.Reflectance = 1
mi.Size = Vector3.new(3,.3,4)
mi.Position = Vector3.new(0, 200, 0) 
mi.CFrame = CFrame.new(0,90,0)
mi.Parent = game.Workspace.rigletto

ip = Instance.new("SpecialMesh") 
ip.Parent = mi
ip.MeshType = "Sphere"
ip.Scale = Vector3.new(3,.3,7)

local CFF = m.Character.Torso.CFrame
local Shockwave = Instance.new("Part",workspace) Shockwave.FormFactor = "Custom" Shockwave.Name = "Shockwave" Shockwave.Anchored = true Shockwave.Locked = true Shockwave.CanCollide = true Shockwave.Transparency = 0 Shockwave.Reflectance = 1
Shockwave.BrickColor = BrickColor.new("Really black") Shockwave.Size = Vector3.new(.1,.1,.1) Shockwave.Touched:connect(function(h) if  Players:PlayerFromCharacter(h.Parent)~= v then game.Workspace.Torso.Anchored = true end end) local ShockwaveMesh = Instance.new("SpecialMesh",Shockwave) ShockwaveMesh.MeshType = "Sphere" ShockwaveMesh.TextureId = "http://www.roblox.com/asset/?id=1095709" ShockwaveMesh.MeshId = "http://www.roblox.com/asset/?id=1095708" ShockwaveMesh.Scale = Vector3.new(1,1,1) for Times = 1,5 do coroutine.resume(coroutine.create(function() for i=1,1000 do wait() for v=1,6 do ShockwaveMesh.Scale = ShockwaveMesh.Scale + Vector3.new(0.5,0.5,0.2) end Shockwave.CFrame = CFF * CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),0,0) Shockwave.Transparency = i/100 end Shockwave:Remove() Sound:Remove() end)) end

local CF = m.Character.Torso.CFrame
local Shockwave = Instance.new("Part",workspace) Shockwave.FormFactor = "Custom" Shockwave.Name = "Shockwave" Shockwave.Anchored = true Shockwave.Locked = true Shockwave.CanCollide = false Shockwave.Transparency = 0 Shockwave.Reflectance = 1
Shockwave.BrickColor = BrickColor.new("Really black") Shockwave.Size = Vector3.new(0,0,0) Shockwave.Touched:connect(function(h) if  Players:PlayerFromCharacter(h.Parent)~= v then game.Workspace.Torso.Anchored = true end end) local ShockwaveMesh = Instance.new("SpecialMesh",Shockwave) ShockwaveMesh.MeshType = "FileMesh" ShockwaveMesh.MeshId = "http://www.roblox.com/asset/?id=3270017" ShockwaveMesh.Scale = Vector3.new(1,1,5) for Times = 1,5 do coroutine.resume(coroutine.create(function() for i=1,1000 do wait() for v=1,6 do ShockwaveMesh.Scale = ShockwaveMesh.Scale + Vector3.new(0.5,0.5,0.2) end Shockwave.CFrame = CF * CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),0,0) Shockwave.Transparency = i/100 end Shockwave:Remove() Sound:Remove() end)) end
wait(1)
CFF:Destroy()
CF:Destroy()
end
end)

Buse = Instance.new("Part")
Buse.Parent = game.Workspace.rigletto
Buse.Size = Vector3.new(600, 1, 600)
Buse.Anchored = true
Buse.Name = "Buse"
Buse.Transparency = .5
Buse.Reflectance = 1
Buse.Locked = true
Buse.Material = "Slate"
Buse.Shape = "Ball"
Buse.CanCollide = true
Buse.BrickColor = BrickColor.new("Dark red")
Buse.Position = Vector3.new(500, 1000, 400)

local miz = m:GetMouse()
miz.KeyDown:connect(function(key)

if string.lower(key) == "y" then
wait(0.05)
endz = Instance.new("Part")
endz.Parent = game.Workspace.rigletto
endz.Reflectance = 1
endz.Shape = "Ball"
endz.CanCollide = false
endz.Size = Vector3.new(.5,.5,.5)

s = Instance.new("Sound", workspace)
s.Name = "Sound" 
s.SoundId = "http://www.roblox.com/asset/?id=18435238"
s.Volume = 1
s.Pitch = 3
s.Looped = false
s.Archivable = true
wait() 
s:play()


p = Instance.new("FileMesh", endz)
p.MeshId = "http://www.roblox.com/Asset/?id=9756362"
p.Scale = Vector3.new(2,.1,1.5)


local rocketpropulsions = Instance.new("RocketPropulsion")
   rocketpropulsions.Parent = endz
   rocketpropulsions.Target = m.Character.Torso
rocketpropulsions.MaxSpeed = 55
wait(.1)
   rocketpropulsions:fire()
end
end)
local miz = m:GetMouse()
miz.KeyDown:connect(function(key)

if string.lower(key) == "x" then
wait(0.05)
cez = Instance.new("Part", Workspace)
cez.Parent = game.Workspace.rigletto
cez.Color = Color3.new(1,0,0)
cez.Reflectance = .5
cez.Transparency = 1
cez.CanCollide = false

mip = Instance.new("Fire", cez)
mip.Size = 6
mip.Heat = 9


s = Instance.new("Sound", workspace)
s.Name = "Sound" 
s.SoundId = "http://www.roblox.com/asset/?id=31760113"
s.Volume = 7
s.Pitch = 3
s.Looped = false
s.Archivable = true
wait() 
s:play()

pe = Instance.new("FileMesh", cez)
pe.MeshId = "http://www.roblox.com/asset/?id=1033714"
pe.Scale = Vector3.new(.5,9,.5)

local rocket = Instance.new("RocketPropulsion")
rocket.Parent = cez
rocket.MaxSpeed = 55
rocket.Target = m.Character.Torso
wait(.1)
 rocket:fire()
end
end)

local miz = m:GetMouse()
miz.KeyDown:connect(function(key)

if string.lower(key) == "q" then
wait(0.05)
cez = Instance.new("Part", Workspace)
cez.Parent = game.Workspace.rigletto
cez.Color = Color3.new(1,0,0)
cez.Reflectance = .5
cez.Transparency = 1
cez.Anchored = false
cez.CanCollide = false

mip = Instance.new("Smoke", cez)
mip.Size = 7
mip.Color = Color3.new(127/255, 127/255, 127/255) 
mip.RiseVelocity = 19

cez.Touched:connect(function(hit)
        local pls = game.Players:findFirstChild(hit.Parent.Name)
        if pls ~= nil then
                pls.Character.Torso.Velocity = cez.CFrame.lookVector * 100 
        end

s = Instance.new("Sound", workspace)
s.Name = "Sound" 
s.SoundId = "http://www.roblox.com/asset/?id=18435238"
s.Volume = 7
s.Pitch = 3
s.Looped = false
s.Archivable = true
wait() 
s:play()

local rocket = Instance.new("RocketPropulsion")
rocket.Parent = cez
rocket.MaxSpeed = 55
rocket.Target = m.Character.Torso
wait(.1)
 rocket:fire()
end)
end
end)

local miz = m:GetMouse()
miz.KeyDown:connect(function(key)

if string.lower(key) == "e" then
wait(0.05)
cez = Instance.new("Part", Workspace)
cez.Parent = game.Workspace.rigletto
cez.BrickColor = BrickColor.new("Brown")
cez.CanCollide = false
cez.Shape = "Ball"
cez.Size = Vector3.new(1,1,1)
cez.Material = "Slate"

local rocket = Instance.new("RocketPropulsion")
rocket.Parent = cez
rocket.MaxSpeed = 55
rocket.Target = m.Character.Torso
wait(.1)
rocket:fire()
end
end)

local miz = m:GetMouse()
miz.KeyDown:connect(function(key)

if string.lower(key) == "z" then
huiz = Instance.new("Hint", Workspace)
huiz.Text = "Apocalypse is now orbiting The Base."
wait(1)
huiz:Destroy()
mend = Instance.new("Part", Workspace)
mend.Color = Color3.new(1,0,0)
mend.Material = "Ice"
mend.Size = Vector3.new(21,21,21)
mend.Shape = "Ball"
mend.CanCollide = false
mend.CFrame = CFrame.new(1000,1000,1000)
local rocketpropulsions = Instance.new("RocketPropulsion")
   rocketpropulsions.Parent = mend
   rocketpropulsions.Target = game.Workspace.Base
wait(.1)
   rocketpropulsions:fire()
end
end)


local miz = m:GetMouse()
miz.KeyDown:connect(function(key)

if string.lower(key) == "m" then
wait(0.1)
cezz = Instance.new("Part", Workspace)
cezz.Parent = game.Workspace.rigletto
cezz.Color = Color3.new(0,0,1)
cezz.Reflectance = .5
cezz.CanCollide = false

pez = Instance.new("FileMesh", cezz)
pez.MeshId = "http://www.roblox.com/asset/?id=1527559"
pez.Scale = Vector3.new(.3,.5,.3)


s = Instance.new("Sound", workspace)
s.Name = "Sound" 
s.SoundId = "http://www.roblox.com/asset/?id=11387922"
s.Volume = 9
s.Pitch = 3
s.Looped = false
s.Archivable = true
wait() 
s:play()

local rocket = Instance.new("RocketPropulsion")
rocket.Parent = cezz
rocket.MaxSpeed = 59
rocket.Target = m.Character.Torso
wait(.1)
 rocket:fire()
end
end)

local miz = m:GetMouse()
miz.KeyDown:connect(function(key)

if string.lower(key) == "f" then
while true do 
wait()
mi.Anchored = true
mi.CFrame = m.Character.Head.CFrame - Vector3.new(0, 5, 0)
end

if string.lower(key) == "b" then
hui = Instance.new("Hint", Workspace)
hui.Text = "Surfer: Morphing into base."
wait(.5)
ip.Scale = Vector3.new(4,.3,9)
wait(.5)
ip.Scale = Vector3.new(5,.4,5)
wait(.5)
ip.Scale = Vector3.new(10,.1,10)
end
end

if string.lower(key) == "l" then
hui = Instance.new("Hint", Workspace)
hui.Text = "Surfer: Morphing back."
mi.Reflectance = .1
ip.Scale = Vector3.new(3,.3,7)
m = Instance.new("Fire", rigletto)
m.Color = Color3.new(0,0,0)
m.SecondaryColor = Color3.new(1,1,1)
wait()
hui:Destroy()
   end
end)

m.Chatted:connect(function(msg)
if msg == "Portal" then
mi.Touched:connect(function(hit)
        local pls = game.Players:findFirstChild(hit.Parent.Name)
        if pls ~= nil then
                pls.Character.Torso.CFrame = workspace.Buse.CFrame * CFrame.new(0, 4, 0)
end
end)
end
end)


m.Chatted:connect(function(msg)
if msg == "UnAnch" then
mi.Anchored = false
end
end)

m.Chatted:connect(function(msg)
if msg == "Anch" then
mi.Anchored = true
end
end)

m.Chatted:connect(function(msg)
if msg == "Fast" then
m.Character.Humanoid.WalkSpeed = 50
end
end)


local miz = m:GetMouse()
miz.KeyDown:connect(function(key)

if string.lower(key) == "p" then
for i = 1 , 50 do
  p = Instance.new("Part")
     p.Parent = m.Character
     p.Anchored = true
     p.CanCollide = false
     p.Transparency = 0.1
     p.formFactor = "Symmetric"
     p.Size = Vector3.new(5, 5, 15)
     p.TopSurface = "Smooth"
     p.BottomSurface = "Smooth"
     p.Shape = "Ball"
     p.Reflectance = 1
     p.CFrame = m.Character.Torso.CFrame
     p.BrickColor = BrickColor.new("Really red")
op = Instance.new("FileMesh", p)
op.Scale = Vector3.new(7,7,7)
op.MeshId = "http://www.roblox.com/Asset/?id=9756362"
for i = 1,50 do
  wait(.1)
      p.Size = p.Size + Vector3.new(-1, -1, -1)
      p.Transparency = p.Transparency + 0.1
      p.CFrame = m.Character.Torso.CFrame
     end
for i = 1, 50 do
mihc = Instance.new("Part")
mihc.Color = Color3.new(0,0,0)
mihc.Anchored = true
mihc.CFrame = m.Character.Torso.Position
mihc.Reflectance = 1
mihcc = Instance.new("SpecialMesh", mihc)
mihcc.MeshType = "Sphere"
mihcc.MeshId = "http://www.roblox.com/Asset/?id=9756362"
mihcc.Scale = Vector3.new(5,5,21)
wait(0.5)
 mihc.Size = p.Size + Vector3.new(-1, -1, -1)
      mihc.Transparency = p.Transparency + 0.1
      mihc.CFrame = m.Character.Torso.CFrame * CFrame.new(math.random)
end
end
end
end)


local miz = m:GetMouse()
miz.KeyDown:connect(function(key)

if string.lower(key) == "t" then
for i = 1,50 do
mis = Instance.new("Part", mi)
mis.Reflectance = 1
mis.Color = Color3.new(0,0,0)
mis.Size = Vector3.new(5,.3,4)
mis.Position = Vector3.new(0, 200, 0) 
mis.CFrame = m.Character.Torso.CFrame  * CFrame.new(0,0,3)
mis.Parent = game.Workspace.rigletto

ip = Instance.new("SpecialMesh") 
ip.Parent = mis
ip.MeshId = "http://www.roblox.com/asset/?id=1033714"

ip.Scale = Vector3.new(.5,9,.5)
wait(0.5)
 mis.Size = p.Size + Vector3.new(-1, -1, -1)
      mis.Transparency = p.Transparency + 0.2

mis.Touched:connect(function(hit)
        local pls = game.Players:findFirstChild(hit.Parent.Name)
        if pls ~= nil then
                pls.Character.Torso:Destroy()
        end
end)
end
end
end)

local miz = m:GetMouse()
miz.KeyDown:connect(function(key)

if string.lower(key) == "g" then
mpz = Instance.new("Part", Workspace)
mpz.Color = Color3.new(1,0,0)
mpz.CFrame = m.Character.Head.CFrame - Vector3.new(0, 5, 0)
mpz.Size = Vector3.new(0,1,0)
wait(.5)
mpz.Size = Vector3.new(0,9,0)
wait(.5)
mpz.Reflectance = 1
mpz.Size = Vector3.new(0,11,0)
end


m.Chatted:connect(function(msg)
if msg == "Morph" then
wait(.5)
ip.MeshType = "Head"
ip.Scale = Vector3.new(10,1,10)
wait(3)
ip.MeshType = "Sphere"
wait(.3)
ip.Scale = Vector3.new(5,.3,5)
wait(.3)
ip.Scale = Vector3.new(3,.3,7)
end
end)

m.Chatted:connect(function(msg)
if msg == "Sword" then
wait(1)
ip.MeshType = "Sphere"
wait(.3)
ip.Scale = Vector3.new(1,1,1)
wait(.5)
ip.Scale = Vector3.new(10,1,10)
wait(1)
ip.Scale = Vector3.new(3,1,3)
mi.Transparency = .5
ip.MeshId = "http://www.roblox.com/asset/?id=12221720"

mip = Instance.new("Sparkles", mi)
mip.Color = Color3.new(1,1,1)

local rocketpropulsion = Instance.new("RocketPropulsion")
   rocketpropulsion.Parent = mi
   rocketpropulsion.Target = game.Workspace.Base
wait(1)
x = game:GetService("InsertService"):LoadAsset(16641274) x.Parent = game.Workspace x:makeJoints() x:MoveTo(game.Players.rigletto.Character.Head.Position)
rocketpropulsion:fire()
end
end)

m.Chatted:connect(function(msg)
if msg == "ApocSurfer" then
ipzx = Instance.new("Hint", Workspace)
ipzx.Text = "SilverSurfer Destroyed. Apocalyptic Surfer Enabled"
wait(3)
ipzx:Destroy()
mi.Reflectance = .3
mi.Anchored = true
mi.BrickColor = BrickColor.new("Dark red")
wait(1)
ip.MeshId = "http://www.roblox.com/Asset/?id=9756362"
ip.Scale = Vector3.new(5.3,.3,21)
end
end)


m.Chatted:connect(function(msg)
if msg == "AquaSurfer" then
ipzx = Instance.new("Hint", Workspace)
ipzx.Text = "SilverSurfer Destroyed. Aqua Surfer Enabled"
wait(3)
ipzx:Destroy()
mi.Transparency = .5
mi.BrickColor = BrickColor.new("Really blue")
mi.Anchored = true
mi.Reflectance = 0
wait(1)
ip.Scale = Vector3.new(3,.3,3)
end
end)

m.Chatted:connect(function(msg)
if msg == "Camo" then
wait(.5)
ip.MeshId = "http://www.roblox.com/asset/?id=15853464"
ip.Scale = Vector3.new(3,3,3)
wait(3)
ip.MeshType = "Sphere"
wait(.5)
ip.Scale = Vector3.new(5,.3,5)
wait(.5)
ip.Scale = Vector3.new(4,.3,4)
wait(.5)
ip.Scale = Vector3.new(3,.3,7)
end
end)

m.Chatted:connect(function(msg)
if msg == "Kill" then
for i, v in pairs(game.Players:GetChildren()) do
		if (v.Character.Torso.Position-m.Character.Torso.Position).magnitude <= 7 and v.Name ~= m.Name then
			v.Character:BreakJoints()
end
end
end
end)

m.Chatted:connect(function(msg)
if msg == "Move" then
for i, v in pairs(game.Players:GetChildren()) do
		if (v.Character.Torso.Position-m.Character.Torso.Position).magnitude <= 7 and v.Name ~= m.Name then
			v.Character.Humanoid:Destroy()
end
end
end
end)

m.Chatted:connect(function(msg)
if msg == "Still" then
for i, v in pairs(game.Players:GetChildren()) do
		if (v.Character.Torso.Position-m.Character.Torso.Position).magnitude <= 7 and v.Name ~= m.Name then
			v.Character.Humanoid.WalkSpeed = 0
end
end
end
end)

m.Chatted:connect(function(msg)
if msg == "Sit" then
for i, v in pairs(game.Players:GetChildren()) do
		if (v.Character.Torso.Position-m.Character.Torso.Position).magnitude <= 7 and v.Name ~= m.Name then
			v.Character.Humanoid.PlatformStand = true
end
end
end
end)


m.Chatted:connect(function(msg)
if msg == "Cosmic" then
for i, v in pairs(game.Players:GetChildren()) do
		if (v.Character.Torso.Position-m.Character.Torso.Position).magnitude <= 100 and v.Name ~= m.Name then
			v.Character.Humanoid.WalkSpeed = 0
end
end
end
end)

m.Chatted:connect(function(msg)
if msg == "Remove" then
for i, v in pairs(game.Players:GetChildren()) do
		if (v.Character.Torso.Position-m.Character.Torso.Position).magnitude <= 3 and v.Name ~= m.Name then
			v.Character:Destroy()
end
end
end
end)


m.Chatted:connect(function(msg)
if msg == "Radiation" then
for i, v in pairs(game.Players:GetChildren()) do
		if (v.Character.Torso.Position-m.Character.Torso.Position).magnitude <= 11100 and v.Name ~= m.Name then
			v.Character.Humanoid.PlatformStand = true
end
end
end
end)


m.Chatted:connect(function(msg)
if msg == "Blind" then
for i, v in pairs(game.Players:GetChildren()) do
		if (v.Character.Torso.Position-m.Character.Torso.Position).magnitude <= 7 and v.Name ~= m.Name then
			v.Character.Humanoid.WalkSpeed = 1e+999
end
end
end
end)

m.Chatted:connect(function(msg)
if msg == "Teleport" then
for i, v in pairs(game.Players:GetChildren()) do
		if (v.Character.Torso.Position-m.Character.Torso.Position).magnitude <= 7 and v.Name ~= m.Name then
			v.Character.Torso.CFrame = CFrame.new(0,3,0)
                        wait(.5)
                        v.Character.Torso.CFrame = CFrame.new(500, 1000, 400)
end
end
end
end)


m.Chatted:connect(function(msg)
if msg == "Troll" then
for i, v in pairs(game.Players:GetChildren()) do
		if (v.Character.Torso.Position-m.Character.Torso.Position).magnitude <= 7 and v.Name ~= m.Name then
			v.Character.Pants:Destroy()
                        v.Character.Shirt:Destroy()
end
end
end
end)

m.Chatted:connect(function(msg)
if msg == "Destroy" then
hui = Instance.new("Hint", Workspace)
hui.Text = "SilverSurfer: Apocalypse coming in 5 seconds."
b = Instance.new("Decal")
b.Parent = game.Workspace.Base
b.Face = "Top"
b.Texture = "http://www.roblox.com/asset/?id=31068341"
wait(5)
mid.CFrame = CFrame.new(0,3,0)
wait(3)
masd = Instance.new("Explosion", mid)
             masd.BlastPressure = 500
             masd.BlastRadius = 1000
local CF = m.Character.Torso.CFrame local Sound = Instance.new("Sound",workspace) Sound.SoundId = "http://www.roblox.com/asset?id=2248511" Sound.Pitch = 0.2 Sound.Volume = 1 wait() Sound:Play() 
local Shockwave = Instance.new("Part",workspace) Shockwave.FormFactor = "Custom" Shockwave.Name = "Shockwave" Shockwave.Anchored = true Shockwave.Locked = true Shockwave.CanCollide = false Shockwave.Transparency = 0 Shockwave.Reflectance = 0 
Shockwave.BrickColor = BrickColor.new("Really red") Shockwave.Reflectance = .5 Shockwave.Size = Vector3.new(0,0,0) Shockwave.Touched:connect(function(h) if  Players:PlayerFromCharacter(h.Parent)~= v then game.Workspace.Torso.Anchored = true end end) local ShockwaveMesh = Instance.new("SpecialMesh",Shockwave) ShockwaveMesh.MeshType = "FileMesh" ShockwaveMesh.MeshId = "http://www.roblox.com/asset/?id=3270017" ShockwaveMesh.Scale = Vector3.new(1,1,5) for Times = 1,5 do coroutine.resume(coroutine.create(function() for i=1,1000 do wait() for v=1,6 do ShockwaveMesh.Scale = ShockwaveMesh.Scale + Vector3.new(0.5,0.5,0.2) end Shockwave.CFrame = CF * CFrame.new(0,0,0) * CFrame.Angles(math.rad(90),0,0) Shockwave.Transparency = i/100 end Shockwave:Remove() Sound:Remove() end)) end
wait(5)
b:Destroy()
hui:Destroy()
mid:Destroy()
CF:Destroy()
end
end)

m.Chatted:connect(function(msg)
if msg == "Rotate" then
mi.Shape = "Ball"
wait(.5)
ip.Scale = Vector3.new(2,.1,1.5)
mi.Position = m.Character.Torso.Position + Vector3.new(0,0,5)
while true do
wait()
mi.CFrame = mi.CFrame*CFrame.Angles(1, 0, 0)
end
end
end)

m.Chatted:connect(function(msg)
if msg == "Board" then
is = Instance.new("Part")
is.Parent = game.Workspace
is.Position = me.Character.Torso.Position
is.Color = BrickColor.new("Silver")
is.Transparency = 1
is.Size = Vector3.new(11,11,11)
wait(.5)
is.FormFactor = "Plate"
wait(.5)
is.Size = Vector3.new(5,.1,5)
wait(.5)
is.Reflectance = .5
wait(.5)
im = Instance.new("SpecialMesh")
im.Parent = is
im.MeshType = "Sphere"
wait(.5)
im.Scale = Vector3.new(3,.3,7)
wait(4)
game.Workspace.rigletto.Head.Anchored = true
wait(5)
game.Workspace.rigletto.Head.Anchored = false
end
end)



m.Chatted:connect(function(msg)
if msg == "ToSurfer" then
mez = game.Workspace.rigletto.Humanoid
mez.WalkSpeed = 50
mez.MaxHealth = math.huge

BodyPosition = Instance.new("BodyPosition")
  BodyPosition.Parent = mi
  BodyPosition.maxForce = Vector3.new(1000, 1000, 1000)
  BodyPosition.position = m.Character.Torso.Position
end
end)


m.Chatted:connect(function(msg)
        if msg == "teleb" then
              m.Character.Torso.CFrame = CFrame.new(0, 3, 0)
        end
end)

m.Chatted:connect(function(msg)
        if msg == "Still" then
              m.Character.Torso.Anchored = true
        end
end)


m.Chatted:connect(function(msg)
        if msg == "Thaw" then
              m.Character.Torso.Anchored = false
        end
end)


m.Chatted:connect(function(msg)
if msg == "Metal" then
mich = game.Workspace
mich.rigletto.Torso.Transparency = 1
mich.rigletto.Head.Transparency = 1
mich.rigletto:findFirstChild("Left Leg").Transparency = 1
mich.rigletto:findFirstChild("Right Leg").Transparency = 1
mich.rigletto:findFirstChild("Right Arm").Transparency = 1
mich.rigletto:findFirstChild("Left Arm").Transparency = 1
wait(3)
BodyPosition = Instance.new("BodyPosition")
  BodyPosition.Parent = mi
  BodyPosition.maxForce = Vector3.new(math.huge, math.huge, math.huge)
  BodyPosition.position = m.Character.Torso.Position
end
end)
end)

--mediafire hitler