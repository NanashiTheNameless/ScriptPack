--Spirit Sword Gifted by TheRedAngel, Local Script!

for i, v in pairs(game.Players.LocalPlayer.Backpack:children()) do 
if v.className == "HopperBin" and v.Name == "SpiritSword" then 
v:remove() 
end 
end 
bin = Instance.new("HopperBin") 
bin.Name = "SpiritSword" 
bin.Parent = game.Players.LocalPlayer.Backpack 
local hop = Instance.new("HopperBin") 
script.Parent = hop 

local doublesword = true
local doubleclicktime = 0.3 
local idledmg = 5 
local chargedmg = 8 
if doublesword == true then 
idledmg = idledmg/1.7
chargedmg = chargedmg/1.7 
end 

local character = game.Players.LocalPlayer.Character 
local char = game.Players.LocalPlayer.Character 
local HUM = game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local Torsoz = game.Players.LocalPlayer.Character:findFirstChild("Torso") 
local RA = game.Players.LocalPlayer.Character:findFirstChild("Right Arm") 
local LA = game.Players.LocalPlayer.Character:findFirstChild("Left Arm") 
local H = game.Players.LocalPlayer.Character:findFirstChild("Head") 
local RS = Torsoz:findFirstChild("Right Shoulder") 
local LS = Torsoz:findFirstChild("Left Shoulder") 
local RH = Torsoz:findFirstChild("Right Hip") 
local LH = Torsoz:findFirstChild("Left Hip") 
local N = Torsoz:findFirstChild("Neck") 
local Joint1 
local Joint2 
local Main 
local j 
local j2 
local Attacking = false 
local Charging = false 
local Casting = false 
local clickval = false 
local effectz = false 
local rnum = Instance.new("NumberValue") 
rnum.Value = math.random() 
local efftable = {} 
local raytable = {} 

chargepitch = 1.7 
chargevol = 0.2 
local ChargeSwing = Instance.new("Sound", H) 
ChargeSwing.SoundId = "http://www.roblox.com/asset/?id=31758934" 
ChargeSwing.Pitch = chargepitch 
ChargeSwing.Volume = chargevol 
summonpitch = 1 
summonvol = 1 
local Summon = Instance.new("Sound", H) 
Summon.SoundId = "http://www.roblox.com/asset/?id=12229501" 
Summon.Pitch = summonpitch 
Summon.Volume = summonvol 
Summon.Looped = false 
local HitSound = Instance.new("Sound", H) 
HitSound.SoundId = "http://www.roblox.com/asset/?id=16950449" 
HitSound.Pitch = 0.6 
HitSound.Volume = 0.7 
HitSound.Looped = false 

local P = Instance.new("Part") 
P.Anchored = false 
P.CanCollide = false 
P.Name = "Part" 
P.formFactor = "Custom" 
P.Size = Vector3.new(0.5,0.5,0.5) 
P.Locked = true 
P.TopSurface = 0 
P.BottomSurface = 0 

function Build() 
for i, v in pairs(char:children()) do 
if v.className == "Model" and v.Name == "SpiritSword" then 
v:remove() 
end 
end 
local mdl = Instance.new("Model", char) 
mdl.Name = "SpiritSword" 

local h = P:Clone() 
h.Name = "Sword" 
h.Parent = mdl 
h.Size = Vector3.new(1,1,4.2) 
local mesh = Instance.new("SpecialMesh", h) 
mesh.Name = "Mesh" 
mesh.MeshId = "http://www.roblox.com/asset/?id=76448940" 
mesh.TextureId = "http://www.roblox.com/asset/?id=76448989" 
mesh.Scale = Vector3.new(0.75,0.75,0.75) 
j = h:Clone() 
j.Parent = h 
j.Size = Vector3.new(0.5,0.5,0.5) 
j.Name = "SwordEffect" 
j.Transparency = 0.2 
local w = Instance.new("Motor", j) 
w.Part0 = h 
w.Part1 = j 
local w = Instance.new("Motor", h) 
w.Part0 = Torsoz 
w.Part1 = h 
w.C0 = CFrame.new(0,0,0.55) * CFrame.Angles(math.pi/2,0,math.pi) 
w.C0 = w.C0 * CFrame.Angles(0,math.pi/4,0) 
Main = w 
if doublesword == true then 
local h2 = P:Clone() 
h2.Name = "Sword2" 
h2.Parent = h 
h2.Size = Vector3.new(1,1,4.2) 
local mesh = Instance.new("SpecialMesh", h2) 
mesh.MeshId = "http://www.roblox.com/asset/?id=76448940" 
mesh.TextureId = "http://www.roblox.com/asset/?id=76448989" 
mesh.Scale = Vector3.new(0.75,0.75,0.75) 
j2 = h2:Clone() 
j2.Parent = h2 
j2.Size = Vector3.new(0.5,0.5,0.5) 
j2.Name = "SwordEffect2" 
j2.Transparency = 0.2 
local w = Instance.new("Motor", j2) 
w.Part0 = h2 
w.Part1 = j2 
local w = Instance.new("Motor", h2) 
w.Part0 = h 
w.Part1 = h2 
w.C0 = CFrame.new(0,0,-3.25) * CFrame.Angles(0,-math.pi,0) 
end 

end 
Build() 

function Click(num) 
if clickval == true then 
wait() 
clickval = false 
else 
clickval = true 
wait(doubleclicktime) 
clickval = false 
end 
end 

function ChargeAttack(mouse, speed) 
Charging = true 
local p = Joint1.Parent 
Joint1:remove() 
Joint1 = Instance.new("Motor", p) 
Joint1.Part0 = Torsoz 
Joint1.Part1 = p 
Joint1.C0 = CFrame.new(1.5,0.5,0) 
local rnumz = rnum.Value 
local jointz = Joint1 
local con = Main.Parent.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= char.Name then 
HitSound:Stop() 
hit.Parent.Humanoid:TakeDamage(chargedmg) 
HitSound:Play() 
end 
end) 
local con2 = nil 
if doublesword == true then 
con2 = Main.Parent.Sword2.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= char.Name then 
hit.Parent.Humanoid:TakeDamage(chargedmg) 
end 
end) 
end 
wait() 
Attacking = true 
--print("Charge Activated") 
Torsoz.CFrame = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)) 
local bv = Instance.new("BodyVelocity", Torsoz) 
bv.maxForce = Vector3.new(math.huge,0,math.huge) 
bv.velocity = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)).lookVector * speed 
local bg = Instance.new("BodyGyro", Torsoz) 
bg.maxTorque = Vector3.new(math.huge,0,math.huge) 
bg.cframe = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)) 
bg.D = 100 
effectz = true 
for _ = 1, 1 do 
jointz.C0 = CFrame.new(1.35,0.5,0) * CFrame.Angles(0,0,-math.pi/3) 
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/1.1,0,0) 
ChargeSwing.Pitch = chargepitch 
ChargeSwing.Volume = chargevol 
ChargeSwing:Play() 
for i = 1, 13 do 
ChargeSwing.Pitch = ChargeSwing.Pitch - 0.045 
ChargeSwing.Volume = ChargeSwing.Volume + 0.1
jointz.C0 = jointz.C0 * CFrame.Angles(-(math.pi/1.1)/13,0,0) 
wait() 
end 
jointz.C0 = CFrame.new(1.25,0.5,0) * CFrame.Angles(0,0,math.pi/3) 
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/1.3,0,0) 
ChargeSwing.Pitch = chargepitch 
ChargeSwing.Volume = chargevol 
ChargeSwing:Play() 
for i = 1, 13 do 
ChargeSwing.Pitch = ChargeSwing.Pitch - 0.045 
ChargeSwing.Volume = ChargeSwing.Volume + 0.1
jointz.C0 = jointz.C0 * CFrame.Angles(-(math.pi*1.15)/13,0,0) 
wait() 
end 
end 
HUM.PlatformStand = false 
con:disconnect() 
if con2 ~= nil then 
con2:disconnect() 
end 
bv:Destroy() 
bg:Destroy() 
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0) 
wait() 
ChargeSwing.Pitch = chargepitch 
ChargeSwing.Volume = chargevol 
Attacking = false 
Charging = false 
effectz = false 
end 

function IdleAttack() 
effectz = true 
local numz = rnum.Value 
local jointz = Joint1 
local con = Main.Parent.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= char.Name then 
HitSound:Stop() 
hit.Parent.Humanoid:TakeDamage(idledmg) 
HitSound:Play() 
end 
end) 
local con2 = nil 
if doublesword == true then 
con2 = Main.Parent.Sword2.Touched:connect(function(hit) 
if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent.Name ~= char.Name then 
hit.Parent.Humanoid:TakeDamage(idledmg) 
end 
end) 
end 
Attacking = true 
--print("Attack Activated") 
jointz.C0 = CFrame.new(1.25,0.5,0) * CFrame.Angles(0,0,math.pi/3) 
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/1.3,0,0) 
ChargeSwing.Pitch = chargepitch 
ChargeSwing.Volume = chargevol 
ChargeSwing:Play() 
for i = 1, 16 do 
if rnum.Value ~= numz then 
ChargeSwing:Stop() 
--print("Attack Deactivated") 
break 
end 
ChargeSwing.Pitch = ChargeSwing.Pitch - 0.045 
ChargeSwing.Volume = ChargeSwing.Volume + 0.1
jointz.C0 = jointz.C0 * CFrame.Angles(-(math.pi*1.15)/16,0,0) 
wait() 
end 
HUM.PlatformStand = false 
con:disconnect() 
if con2 ~= nil then 
con2:disconnect() 
end 
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0) 
ChargeSwing.Pitch = chargepitch 
ChargeSwing.Volume = chargevol 
Attacking = false 
effectz = false 
end 

function onButton1Down(mouse) 
if Charging == false and Casting == false then 
if clickval == true then 
rnum.Value = math.random() 
coroutine.resume(coroutine.create(ChargeAttack), mouse, 40) 
else 
if Attacking == false then 
coroutine.resume(coroutine.create(IdleAttack)) 
end 
end 
end 

coroutine.resume(coroutine.create(Click), rnum.Value) 

end 

function SwordThrow(mouse) 
local bp = Instance.new("BodyPosition", Torsoz) 
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bp.position = Torsoz.Position 
local bg = Instance.new("BodyGyro", Torsoz) 
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.cframe = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)) 
HUM.WalkSpeed = 0 
local jointz = Joint1 
Casting = true 
Torsoz.CFrame = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)) 
local tab = {} 
for i = 1, 3 do 
local s = P:Clone() 
s.Name = "SwordSpell" 
s.Parent = char 
s.Anchored = true 
s.Size = Vector3.new(0.5,0.5,0.5) 
s.Transparency = 1 
if i == 1 then 
s.CFrame = Torsoz.CFrame * CFrame.new(-4,-4.5,0) * CFrame.Angles(-math.pi/2,0,0) 
elseif i == 2 then 
s.CFrame = Torsoz.CFrame * CFrame.new(0,-4.5,-4) * CFrame.Angles(-math.pi/2,0,-math.pi/2) 
elseif i == 3 then 
s.CFrame = Torsoz.CFrame * CFrame.new(4,-4.5,0) * CFrame.Angles(-math.pi/2,0,math.pi) 
end 
local mesh = Instance.new("SpecialMesh", s) 
mesh.MeshId = "http://www.roblox.com/asset/?id=76448940" 
mesh.TextureId = "http://www.roblox.com/asset/?id=76448989" 
mesh.Scale = Vector3.new(0.55,0.55,0.75) 
mesh.VertexColor = Vector3.new(0.2,0.45,1) 
tab[i] = s 
end 
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(0,0,0) 
Summon.Pitch = summonpitch 
Summon.Volume = summonvol 
effectz = true 
Summon:Play() 
for i = 1, 22 do 
Summon.Pitch = Summon.Pitch - (1/22) 
for i, v in pairs(tab) do 
v.CFrame = v.CFrame * CFrame.new(0,0,9/22) * CFrame.Angles(0,0,math.pi*6/22) 
v.Transparency = v.Transparency - 0.65/22 
end 
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/1.6/22,0,0) * CFrame.Angles(0,0,0.08) 
wait(0.012) 
end 
wait(0.12) 
Summon:Stop() 
Summon.Pitch = summonpitch 
Summon.Volume = summonvol 
for i = 1, 3 do 
jointz.C0 = jointz.C0 * CFrame.Angles(0,-math.pi/2/3,0) 
wait() 
end 
for i, v in pairs(tab) do 
v.CFrame = CFrame.new(v.Position, mouse.Hit.p) * CFrame.Angles(0,math.pi,0) 
end 
for i = 1, 5 do 
jointz.C0 = jointz.C0 * CFrame.Angles(-math.pi/1.4/5,0.06,0) 
if i == 3 then 
for ii = 1, 3 do 
table.insert(raytable, tab[ii]) 
game:service("Debris"):AddItem(tab[ii], 8.5) 
tab[ii] = nil 
end 
end 
wait() 
end 
effectz = false 
HUM.WalkSpeed = 16 
bp:Destroy() 
bg:Destroy() 
wait(0.45) 
Casting = false 
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0) 
end 

function Teleport(mouse) 
local posz = mouse.Hit.p 
local bp = Instance.new("BodyPosition", Torsoz) 
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bp.position = Torsoz.Position 
local bg = Instance.new("BodyGyro", Torsoz) 
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.cframe = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)) 
HUM.WalkSpeed = 0 
local jointz = Joint1 
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(0,0,0) 
Casting = true 
effectz = true 
Torsoz.CFrame = CFrame.new(Torsoz.Position, Vector3.new(mouse.Hit.x,Torsoz.Position.y,mouse.Hit.z)) 
local por = P:Clone() 
por.Parent = Torsoz 
por.Anchored = true 
por.CFrame = Torsoz.CFrame + Torsoz.CFrame.lookVector*3.5 
por.BrickColor = BrickColor.new("Navy blue") 
por.Transparency = 1 
por.Reflectance = 1 
local mesh = Instance.new("SpecialMesh", por) 
mesh.MeshType = "Sphere" 
mesh.Scale = Vector3.new(0,0,0) 
local mar = P:Clone() 
mar.Parent = Torsoz 
mar.Anchored = true 
mar.CFrame = CFrame.new(posz) + Vector3.new(0,1,0) 
mar.BrickColor = BrickColor.new("Navy blue") 
mar.Transparency = 1 
mar.Reflectance = 1 
local mesh = Instance.new("SpecialMesh", mar) 
mesh.Scale = Vector3.new(0,3,0) 
mesh.MeshId = "http://www.roblox.com/asset/?id=20329976" 

for i = 1, 22 do 
por.Transparency = por.Transparency - (0.7/22) 
por.Reflectance = por.Reflectance - (0.9/22) 
por.Mesh.Scale = por.Mesh.Scale + Vector3.new(16/22,19/22,0.6/22) 
jointz.C0 = jointz.C0 * CFrame.Angles(math.pi/1.6/22,0,0) * CFrame.Angles(0,0,0.08) 
wait() 
end 
for i = 1, 10 do 
mar.Transparency = mar.Transparency - (0.7/10) 
mar.Reflectance = mar.Reflectance - (0.9/10) 
mar.Mesh.Scale = mar.Mesh.Scale + Vector3.new(12/10,0,12/10) 
jointz.C0 = jointz.C0 * CFrame.Angles(0,-math.pi*2/10,0) 
wait() 
end 
HUM.WalkSpeed = 16 
bp:Destroy() 
bg:Destroy() 
Torsoz.CFrame = CFrame.new(posz, Torsoz.CFrame.p) * CFrame.Angles(0,math.pi,0) + Vector3.new(0,3.5,0) 
for i = 1, 11 do 
por.Transparency = por.Transparency + (0.7/11) 
por.Reflectance = por.Reflectance + (0.9/11) 
por.Mesh.Scale = por.Mesh.Scale - Vector3.new(16/11,19/11,0.6/11) 
mar.Transparency = mar.Transparency + (0.7/11) 
mar.Reflectance = mar.Reflectance + (0.9/11) 
mar.Mesh.Scale = mar.Mesh.Scale - Vector3.new(12/11,2/11,12/11) 
jointz.C0 = jointz.C0 * CFrame.Angles(-(math.pi/1.6)/11,0,0) * CFrame.Angles(0,0,-0.16) 
wait() 
end 
por:Destroy() 
mar:Destroy() 
effectz = false 
wait(0.15) 
Casting = false 
jointz.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0) 
end 

function onKeyDown(key, mouse) 
if Charging == false and Attacking == false and Casting == false then 
if key == "e" then 
SwordThrow(mouse) 
elseif key == "g" then 
Teleport(mouse) 
end 
end 
end 

function Equip() 
effectz = true 
Attacking = true 
Charging = true 
local p = P:Clone() 
p.Parent = Torsoz 
p.Transparency = 1 
local w = Instance.new("Motor", p) 
w.Part0 = p 
w.Part1 = RA 
w.C0 = CFrame.new(0,-0.5,0) 
RS.Part0 = nil 
Joint1 = Instance.new("Motor", p) 
Joint1.Part0 = Torsoz 
Joint1.Part1 = p 
Joint1.C0 = CFrame.new(1.5,0.5,0) 

for i = 1, 8 do 
Joint1.C0 = Joint1.C0 * CFrame.Angles(math.pi*1.2/8,-0.4/8,0) 
wait() 
end 
Main.Part0 = RA 
Main.C0 = CFrame.new(0,-1,-1.5) * CFrame.Angles(0,math.pi,math.pi/2) 
for i = 1, 9 do 
Joint1.C0 = Joint1.C0 * CFrame.Angles(-math.pi*1.2/14,0,0) 
wait() 
end 
Main.Part0 = RA 
Main.C0 = CFrame.new(0,-1,-1.5) * CFrame.Angles(0,math.pi,math.pi/2) 
Joint1.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0) 
Attacking = false 
Charging = false 
effectz = false 
end 

function UnEquip() 
effectz = true 
local joint = Joint1 
Joint1.C0 = CFrame.new(1.5,0.5,0) * CFrame.Angles(math.pi/2.4,0,0) 
for i = 1, 9 do 
Joint1.C0 = Joint1.C0 * CFrame.Angles(math.pi*1.2/14,0,0) 
wait() 
end 
Main.Part0 = Torsoz 
Main.C0 = CFrame.new(0,0,0.55) * CFrame.Angles(math.pi/2,0,math.pi) 
Main.C0 = Main.C0 * CFrame.Angles(0,math.pi/4,0) 
for i = 1, 8 do 
Joint1.C0 = Joint1.C0 * CFrame.Angles(-math.pi*1.2/8,0,0) 
wait() 
end 
joint.Parent:remove() 
RS.Part0 = Torsoz 
RS.Part1 = RA 
effectz = false 
end 

bin.Selected:connect(function(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(function(key) onKeyDown(key, mouse) end) 
Equip() 
end) 

bin.Deselected:connect(function() 
UnEquip() 
Build() 
end) 


wait(1) 
local plus = true 
local DDD = 1 
coroutine.resume(coroutine.create(function() 
while true do 
DDD = DDD + 1 
if DDD%1 == 0 then 
if effectz == true then 
if Main.Parent ~= nil then 
local gg = P:Clone() 
gg.Name = "SwordEffect" 
gg.Parent = Torsoz 
gg.Anchored = true 
gg.Size = Vector3.new(0.5,0.5,0.5) 
gg.CFrame = Main.Parent.CFrame 
local mesh = Instance.new("SpecialMesh", gg) 
mesh.MeshId = "http://www.roblox.com/asset/?id=76448940" 
mesh.TextureId = "http://www.roblox.com/asset/?id=76448989" 
mesh.Scale = Vector3.new(0.75,0.75,0.75) 
table.insert(efftable, gg) 
if doublesword == true then 
local gg2 = P:Clone() 
gg2.Name = "SwordEffect2" 
gg2.Parent = Torsoz 
gg2.Anchored = true 
gg2.Size = Vector3.new(0.5,0.5,0.5) 
gg2.CFrame = gg.CFrame * CFrame.new(0,0,-3.25) * CFrame.Angles(0,math.pi,0) 
local mesh = Instance.new("SpecialMesh", gg2) 
mesh.MeshId = "http://www.roblox.com/asset/?id=76448940" 
mesh.TextureId = "http://www.roblox.com/asset/?id=76448989" 
mesh.Scale = Vector3.new(0.75,0.75,0.75) 
table.insert(efftable, gg2) 
end 
end 
end 
end 
for i, v in pairs(efftable) do 
if v.Transparency > 0.9 then 
efftable[i]:remove() 
efftable[i] = nil 
end 
v.Transparency = v.Transparency + 0.055 
end 
if j ~= nil then 
if j.Transparency > 0.96 then 
plus = false 
j.Transparency = 0.25 
j.Mesh.Scale = Vector3.new(0.75,0.75,0.75) 
j.Mesh.VertexColor = Vector3.new(1,1,1) 
if j2 ~= nil then 
j2.Transparency = 0.25 
j2.Mesh.Scale = Vector3.new(0.75,0.75,0.75) 
j2.Mesh.VertexColor = Vector3.new(1,1,1) 
end 
Spawn(function() wait(0.5) plus = true end)
end 
if plus == true then 
j.Transparency = j.Transparency + 0.045 
j.Mesh.Scale = j.Mesh.Scale + Vector3.new(0.022*2,0.028*2,0.004*2) 
j.Mesh.VertexColor = j.Mesh.VertexColor - Vector3.new(0.1,0.04,0) 
if j2 ~= nil then 
j2.Transparency = j2.Transparency + 0.045 
j2.Mesh.Scale = j2.Mesh.Scale + Vector3.new(0.022*2,0.028*2,0.004*2) 
j2.Mesh.VertexColor = j2.Mesh.VertexColor - Vector3.new(0.1,0.04,0) 
end 
end 
end 

------------------------- Projectiles ------------------------
for i, v in pairs(raytable) do 
if v ~= nil and v.className == "Part" then 
local posz1 = v.CFrame * CFrame.new(0,0,-2.25) 
local ray = Ray.new(posz1.p, posz1.lookVector*-4.5) 
local hitz, enz = workspace:FindPartOnRay(ray, char) 

if hitz ~= nil then 
x = Instance.new("Explosion", workspace) 
x.Position = enz 
raytable[i]:remove() 
raytable[i] = nil 
end 
v.CFrame = v.CFrame - v.CFrame.lookVector*4.5 

end 
end 


wait() 
end 
end))