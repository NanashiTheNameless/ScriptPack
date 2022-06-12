
pcall(function() game.Players.LocalPlayer.Backpack.Pistol:Destroy() end) 
bin = Instance.new("HopperBin", game.Players.LocalPlayer.Backpack) 
bin.Name = "Pistol" 
 
maincolor = "Really black" 
bulletcolor = "Bright yellow" 
bullettrans = 0.65 
firerate = 0.175 
mindmg = 13 
maxdmg = 19 
 
player = game.Players.LocalPlayer 
char = player.Character
Anims = char:FindFirstChild("Animate")
if Anims then 
Anims:Destroy()
end
torsoz = char:findFirstChild("Torso") 
local LA = char:findFirstChild("Left Arm") 
local LS = torsoz:findFirstChild("Left Shoulder") 
local H = char:findFirstChild("Head") 
local N = torsoz:findFirstChild("Neck") 
local RA = char:findFirstChild("Right Arm") 
local RS = torsoz:findFirstChild("Right Shoulder") 
local S = Instance.new("Sound") 
S.SoundId = "http://www.roblox.com/asset/?id=2760979" 
S.Volume = 1 
 
local Joint = Instance.new("Motor") 
local Joint2 = Instance.new("Motor") 
local Joint3 = Instance.new("Motor") 
local Gun = Instance.new("Part") 
local Gun2 = Instance.new("Part") 
local GT1 = Instance.new("Part") 
local GT2 = Instance.new("Part") 
local GunSide = 1 
 
function Shoot(mouse, side, length) 
if length == nil then 
length = 20 
end 
local shotside = GT1 
if side == 2 then 
shotside = GT2 
end 
S.Parent = shotside 
S.Pitch = math.random(90, 110)/100 
S:Play() 
local pos1 = CFrame.new(shotside.Position, mouse.Hit.p) 
local pos2 = pos1.lookVector*length 
local ray = Ray.new(pos1.p, pos2) 
local hitz, enz = workspace:findPartOnRay(ray, char) --- char means the ray wont hit anything parented to your character
print(hitz)
local line = Instance.new("Part", torsoz) 
line.CanCollide = false 
line.Locked = true 
line.Anchored = true 
line.BrickColor = BrickColor.new(bulletcolor) 
line.TopSurface = 0 
line.BottomSurface = 0 
line.formFactor = "Custom" 
line.Size = Vector3.new(0.5,0.5,0.5) 
line.Transparency = bullettrans 
line.CFrame = CFrame.new((pos1.p + enz)/2,pos1.p) * CFrame.Angles(math.pi/2,0,0) 
local mesh = Instance.new("CylinderMesh", line) 
mesh.Scale = Vector3.new(0.3,(shotside.Position - enz).magnitude*2,0.3) 
game:GetService("Debris"):AddItem(line, 0.11) 
 
local hum = nil 
local DD = false 
if hitz ~= nil then 
if hitz.Parent.className == "Model" then 
for i, v in pairs(hitz.Parent:children()) do 
if v.className == "Humanoid" then 
hum = v 
end 
end 
elseif hitz.Parent.Parent.className == "Model" and hitz.Parent.className == "Hat" then 
for i, v in pairs(hitz.Parent.Parent:children()) do 
if v.className == "Humanoid" then 
hum = v 
DD = true 
end 
end 
end 
if hum ~= nil then 
local dmg = math.random(mindmg, maxdmg) 
if DD == true then 
dmg = dmg * 1.5 
end 
hum:TakeDamage(dmg) 
print("Damage: "..dmg) 
end 
end 
 
end 
 
deb = true 
function B1D(mouse) 
if deb == true then 
deb = false 
Shoot(mouse, GunSide, 150) 
if GunSide == 1 then 
Joint.C0 = CFrame.new(-1.75,0.5,-0.5) * CFrame.Angles(math.pi/2,0,-math.pi/3) * CFrame.Angles(0,-0.375,0) * CFrame.Angles(0.2,0,0) * CFrame.new(0,0.2,-0.2) 
GunSide = 2 
else 
Joint2.C0 = CFrame.new(0.85,0.5,-0.75) * CFrame.Angles(math.pi/2,0,-math.pi/3) * CFrame.Angles(0,0.375,0) * CFrame.Angles(0.2,0,0) * CFrame.new(0,0.2,-0.2) 
GunSide = 1 
end 
wait(firerate) 
Joint.C0 = CFrame.new(-1.75,0.5,-0.5) * CFrame.Angles(math.pi/2,0,-math.pi/3) * CFrame.Angles(0,-0.375,0) 
Joint2.C0 = CFrame.new(0.85,0.5,-0.75) * CFrame.Angles(math.pi/2,0,-math.pi/3) * CFrame.Angles(0,0.375,0) 
deb = true 
end 
end 
 
function Key(key, mouse) 
end 
 
function Equip() 
LS.Part0 = nil 
RS.Part0 = nil 
N.Part0 = nil 
Joint = Instance.new("Motor", torsoz) 
Joint.Name = "TopLeft" 
Joint.Part0 = torsoz 
Joint.Part1 = LA 
Joint.C0 = CFrame.new(-1.75,0.5,-0.5) * CFrame.Angles(math.pi/2,0,-math.pi/3) * CFrame.Angles(0,-0.375,0) 
Joint2 = Instance.new("Motor", torsoz) 
Joint2.Name = "TopRight" 
Joint2.Part0 = torsoz 
Joint2.Part1 = RA 
Joint2.C0 = CFrame.new(0.85,0.5,-0.75) * CFrame.Angles(math.pi/2,0,-math.pi/3) * CFrame.Angles(0,0.375,0) 
Joint3 = Instance.new("Motor", torsoz) 
Joint3.Name = "Nek" 
Joint3.Part0 = torsoz 
Joint3.Part1 = H 
Joint3.C0 = CFrame.new(0,1.5,0) * CFrame.Angles(0,math.pi/3,0) 
 
Gun = Instance.new("Part", torsoz) 
Gun.Name = "PistolGunFtwNob" 
Gun.formFactor = "Custom" 
Gun.Size = Vector3.new(0.5,0.5,0.5) 
Gun.Locked = true 
Gun.CanCollide = false 
Gun.Position = torsoz.Position 
Gun.BrickColor = BrickColor.new(maincolor) 
Gun.TopSurface = 0 
Gun.BottomSurface = 0 
Gun.Transparency = 0 
GT1 = Gun:Clone() 
GT1.Name = "GunTip" 
GT1.Parent = Gun 
GT1.Transparency = 1 
local w = Instance.new("Motor", GT1) 
w.Part0 = Gun 
w.Part1 = GT1 
w.C0 = CFrame.new(0,0.35,-0.5) 
local mesh = Instance.new("SpecialMesh", Gun) 
mesh.MeshId = "http://www.roblox.com/asset/?id=4372594"
mesh.Scale = Vector3.new(1.2,1.2,1.2) 
Gun2 = Gun:Clone() 
Gun2.Parent = Gun 
GT2 = Gun2.GunTip 
local w = Instance.new("Motor", Gun) 
w.Part0 = LA 
w.Part1 = Gun 
w.C0 = CFrame.new(0,-1.4,-0.2) * CFrame.Angles(-math.pi/2,0,0) 
local w = Instance.new("Motor", Gun2) 
w.Part0 = RA 
w.Part1 = Gun2 
w.C0 = CFrame.new(0,-1.4,-0.2) * CFrame.Angles(-math.pi/2,0,0) 
 
 
end 
 
function Unequip()  --- trolo
Gun:Destroy() -- for now
end 
 
 
bin.Selected:connect(function(mouse) 
mouse.Button1Down:connect(function() B1D(mouse) end) 
mouse.KeyDown:connect(function(key) Key(key, mouse) end) 
wait() 
Equip() 
bg = Instance.new("BodyGyro", torsoz) 
bg.maxTorque = Vector3.new(math.huge,math.huge,math.huge) 
bg.Name = "Gyro" 
bg.D = 100 
while Joint.Parent == torsoz do 
local pos1 = torsoz.Position 
local pos2 = Vector3.new(mouse.Hit.x, pos1.y,mouse.Hit.z) 
bg.cframe = CFrame.new(pos1, pos2) * CFrame.Angles(0,-math.pi/3,0) 
bg.Parent = torsoz 
wait() 
end 
end) 
bin.Deselected:connect(function() 
Joint:Destroy() 
Joint2:Destroy() 
Joint3:Destroy() 
bg:Destroy() 
LS.Part0 = torsoz 
LS.Part1 = LA 
RS.Part0 = torsoz 
RS.Part1 = RA 
N.Part0 = torsoz 
N.Part1 = H 
Unequip() 
end) 
 
