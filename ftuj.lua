originalAmmo = script.Parent.Ammo.Value 
m = Instance.new("Message") 

function computeDirection(vec) 
local lenSquared = vec.magnitude^2 
local invSqrt = 1 / math.sqrt(lenSquared) 
return Vector3.new(vec.x * invSqrt, vec.y * invSqrt, vec.z * invSqrt) 
end 



function updateAmmo() 
m.Text = " " 
--for i = 1,script.Parent.Ammo.Value do 
-- m.Text = m.Text .. "|" 
--end 
--for i = 1, (originalAmmo - script.Parent.Ammo.Value) do 
-- m.Text = m.Text .. " " 
--end 
m.Text = m.Text .. " " .. script.Parent.Ammo.Value.. "/12" 
end 


function fire(v) 
for i = 1,1 do 
script.Parent.Handle.Fire:play() 
script.Parent.Ammo.Value = script.Parent.Ammo.Value - 1 
updateAmmo() 
local dir = v - script.Parent["Handle"].Position 
dir = computeDirection(dir) 
local pos = script.Parent["Handle"].Position + (dir * 8) 
local p = Instance.new("Part") 
p.Name = "Projectile" 
p.CFrame = CFrame.new(pos, pos + dir) 
p.BrickColor = BrickColor.new(24) 
p.Reflectance = 0.1 
p.Velocity = (script.Parent.Parent["Head"].Position - v).unit * -150 
p.Size = Vector3.new(1, 0.4, 1) 
p.formFactor = 2 
local mesh = script.Parent.Mesh:clone() 
mesh.Parent = p 
local upforce = Instance.new("BodyForce") 
upforce.force = Vector3.new(0, p:GetMass() * 196, 0) 
upforce.Parent = p 
local s = script.Parent["ProjectileScript"]:Clone() 
s.Disabled = false 
s.Parent = p 
p.Parent = game.Workspace 
wait(0) 
end 
end 


function onActivated() 
if script.Parent.Enabled == true then 
--script.Parent.Enabled = false 
if script.Parent.Ammo.Value > 0 then 
fire(script.Parent.Parent["Humanoid"].TargetPoint) 
else 
if script.Parent.Clips.Value >= -30000000000000 then 
script.Parent.Enabled = false 
script.Parent.Handle.Reload:play() 
m.Text = "reloading" 
for i =1,5 do 
wait(5) --Reload Time 
m.Text = m.Text .. "." 
end 
script.Parent.Clips.Value = script.Parent.Clips.Value - 1 
script.Parent.Ammo.Value = originalAmmo 
updateAmmo() 
script.Parent.Enabled = true 
else 
m.Text = "No more clips!" 
end 
end 
wait(0.11) 
--script.Parent.Enabled = true 
end 
end 


function onEquipped() 
local p = game.Players:GetChildren() 
for i = 1,#p do 
if p[i].Character == script.Parent.Parent then 
m.Parent = p[i] 
end 
end 
updateAmmo() 
end 

function onUnequipped() 
m.Parent = nil 
end 

-------------------------------Local Mouse GUI----------------------------------------------------------------------- 
local enabled = true 

function onButton1Down(mouse) 
if enabled == false then 
return 
end 

enabled = false 

mouse.Icon = "rbxasset://textures\\GunWaitCursor.png" 

wait(15) 

enabled = true 

mouse.Icon = "rbxasset://textures\\GunCursor.png" 
end 

function onSelect(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end 

script.Parent.Equipped:connect(onSelect) 
--------------------------------------------Matter Shot---------------XD-------------------------------------------- 
-----------------------------This Makes You Shoot Matter-------------------------------------------------------------- 
if (key == "Z") then 
local enabled = true 
local battery = 5 -- Set this to whatever, lower than fullbattery 
local fullbattery = 5 -- Set this to the max battery 
local ball = Instance.new("Part") 
local h = Instance.new("Hint") 
ball.Shape = 0 
ball.TopSurface = 0 
ball.BottomSurface = 0 
ball.BrickColor = script.Parent.H4.BrickColor 
ball.Size = Vector3.new(1,1,1) 
ball.Locked = true 
ball.CanCollide = false 

--[[ Now for the fun part. 
Time to make it shoot! ]] 

function fire() 
if battery > 0 and enabled == true then 
enabled = false 
local b = ball:Clone() 
b.Parent = workspace 
local targ = script.Parent.Parent.Humanoid.TargetPoint - script.Parent.H3.Position 
local dir = targ / targ.magnitude 
local pos = script.Parent.H3.Position + (dir * 4) 
local cfr = CFrame.new(pos, pos + dir) 
b.CFrame = cfr 
local bv = Instance.new("BodyVelocity") 
bv.velocity = dir * 150 
bv.Parent = b 
local s = script.Parent.Gravity:Clone() 
s.Disabled = false 
s.Parent = b 
decrease() 
wait(15) 
enabled = true 
elseif battery == 0 then 
h.Text = "Out of energy!" 
elseif battery < 0 then 
h.Text = "Oh no! It's about to explode!" 
wait(1.5) 
h.Text = "KABOOM!" 
explode() 
end 
end 

function explode() 
local e = Instance.new("Explosion") 
e.Parent = workspace 
e.BlastRadius = 10 
e.BlastPressure = 1e+005 
e.Position = script.Parent.Handle.Position 
end 

function decrease() 
battery = battery - 1 
script.Parent.H4.Transparency = script.Parent.H4.Transparency + (0.75 / fullbattery) 
h.Text = "Energy: [" 
for i = 1, battery do 
h.Text = h.Text .. "|" 
end 
for i = 1, fullbattery - battery do 
h.Text = h.Text .. " " 
end 
h.Text = h.Text .. "]" 
end 

function unequipped() 
h.Parent = nil 
end 

function equipped() 
h.Parent = game.Players:GetPlayerFromCharacter(script.Parent.Parent) 
h.Text = "Energy: [" 
for i = 1, battery do 
h.Text = h.Text .. "|" 
end 
for i = 1, fullbattery - battery do 
h.Text = h.Text .. " " 
end 
h.Text = h.Text .. "]" 
end 

script.Parent.Activated:connect(fire) 
script.Parent.Equipped:connect(equipped) 
script.Parent.Unequipped:connect(unequipped) 
------------------------------------------Actuall Bullet To Be Shot-------------------------------------------------- 
ball = script.Parent 
damage = math.random(30,50) 



function onTouched(hit) 
local humanoid = hit.Parent:findFirstChild("Humanoid") 

if hit.Parent.className == "Hat" or hit.Parent.className == "Tool" or hit.CanCollide == false then return end 

if humanoid ~= nil then 
tagHumanoid(humanoid) 
if hit.Name == "Head" then 
humanoid:TakeDamage(damage * 2) 
elseif hit.Name == "Torso" then 
humanoid:TakeDamage(damage * 1.5) 
end 
wait(2) 
untagHumanoid(humanoid) 
end 

connection:disconnect() 
ball.Parent = nil 
end 

function tagHumanoid(humanoid) 
-- todo: make tag expire 
local tag = ball:findFirstChild("creator") 
if tag ~= nil then 
local new_tag = tag:clone() 
new_tag.Parent = humanoid 
end 
end 


function untagHumanoid(humanoid) 
if humanoid ~= nil then 
local tag = humanoid:findFirstChild("creator") 
if tag ~= nil then 
tag.Parent = nil 
end 
end 
end 

connection = ball.Touched:connect(onTouched) 

wait(8) 
ball.Parent = nil 
-----------------------------------------------Shooter------------------------------------------------------------------- 
if (key == "Q") then 
Tool = script.Parent 

local arms = nil 
local torso = nil 
local weld33 = nil -- right arm 
local weld55 = nil -- left arm 
local welds = {} 
local reloading = false 

function ReloadSequence() -- this will be a pain in my blocky butt. 
local mag = Instance.new("Part") 
mag.Size = Vector3.new(1,1,1) 
mag.BrickColor = BrickColor.new(26) 
mag.CFrame = Tool.Handle.CFrame 
mag.Parent = game.Workspace 
local magmesh = Instance.new("BlockMesh") 
magmesh.Scale = Vector3.new(.2,.75,.3) 
magmesh.Parent = mag 
game:GetService("Debris"):addItem(mag,6) 
wait(.05) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), -0.2, math.rad(-90)) 
wait(.05) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), -0.4, math.rad(-90)) 
wait(.05) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), -0.6, math.rad(-90)) 
wait(.05) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), -0.8, math.rad(-80)) 
wait(.05) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), -1, math.rad(-70)) 
wait(.05) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(270), -1.2, math.rad(-60)) 
wait(.05) 
local mag2 = Instance.new("Part") 
mag2.Size = Vector3.new(1,1,1) 
mag2.BrickColor = BrickColor.new(26) 
mag2.Parent = game.Workspace 
local magmesh2 = Instance.new("BlockMesh") 
magmesh2.Scale = Vector3.new(.2,.75,.3) 
magmesh2.Parent = mag2 
local magweld = Instance.new("Weld") 
leftarm = Tool.Parent["Left Arm"] 
magweld.Parent = mag2 
magweld.Part0 = mag2 
magweld.Part1 = leftarm 
magweld.C0 = CFrame.new(-1,0,0.3) 
magweld.C0 = magweld.C0 * CFrame.fromEulerAnglesXYZ(0,0.6,1.6) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(260), -1.2, math.rad(-50)) 
wait(.1) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(270), -1, math.rad(-60)) 
wait(.05) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(280), -0.8, math.rad(-70)) 
wait(.05) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), -0.6, math.rad(-80)) 
wait(.05) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), -0.4, math.rad(-90)) 
wait(.05) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), -0.2, math.rad(-90)) 
wait(.05) 
mag2:remove() 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90)) 
wait(.1) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0.2, math.rad(-90)) 
wait(.05) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90)) 
wait(.3) 
weld55.C1 = CFrame.new(-0.35, 0.1, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90)) 
wait(.2) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90)) 
wait(.2) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90)) 
wait(.05) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0.2, math.rad(-90)) 
wait(.05) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90)) 
end 

function Reload() 
if script.Parent.Ammo.Value < script.Parent.MaxAmmo.Value and reloading == false and script.Parent.StoredAmmo.Value >= 1 then 
reloading = true 
script.Parent.Ammo.Value = 0 
Tool.Handle.Reload:play() 
ReloadSequence() 
-- ... 
if script.Parent.StoredAmmo.Value >= script.Parent.MaxAmmo.Value then 
script.Parent.Ammo.Value = script.Parent.MaxAmmo.Value 
script.Parent.StoredAmmo.Value = 7 
script.Parent.Recoil.Value = 5 
elseif script.Parent.StoredAmmo.Value < script.Parent.MaxAmmo.Value and script.Parent.StoredAmmo.Value >= 1 then 
script.Parent.Ammo.Value = script.Parent.StoredAmmo.Value 
script.Parent.StoredAmmo.Value = 0 
script.Parent.Recoil.Value = 5 
end 
reloading = false 
end 
end 

function Equip(mouse) 
wait(0.01) 
arms = {Tool.Parent:FindFirstChild("Left Arm"), Tool.Parent:FindFirstChild("Right Arm")} 
torso = Tool.Parent:FindFirstChild("Torso") 
if arms ~= nil and torso ~= nil then 
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")} 
if sh ~= nil then 
local yes = true 
if yes then 
yes = false 
sh[1].Part1 = nil 
sh[2].Part1 = nil 
local weld1 = Instance.new("Weld") -- left arm 
weld55 = weld1 
weld1.Part0 = torso 
weld1.Parent = torso 
weld1.Part1 = arms[1] 
weld1.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90)) 
welds[1] = weld1 
local weld2 = Instance.new("Weld") -- right arm 
weld33 = weld2 
weld2.Part0 = torso 
weld2.Parent = torso 
weld2.Part1 = arms[2] 
weld2.C1 = CFrame.new(-0.75, 0.5, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0) 
welds[2] = weld2 
end 
else 
print("sh") 
end 
else 
print("arms") 
end 
end 

function Unequip(mouse) 
if arms ~= nil and torso ~= nil then 
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")} 
if sh ~= nil then 
local yes = true 
if yes then 
yes = false 
sh[1].Part1 = arms[1] 
sh[2].Part1 = arms[2] 
welds[1].Parent = nil 
welds[2].Parent = nil 
end 
else 
print("sh") 
end 
else 
print("arms") 
end 
end 

function fire(v) 

Tool.Handle.Fire:play() 


local vCharacter = Tool.Parent 
local vPlayer = game.Players:playerFromCharacter(vCharacter) 

local missile = Instance.new("Part") 



local spawnPos = vCharacter.PrimaryPart.Position 



spawnPos = spawnPos + (v * 8) 

missile.Position = spawnPos 
missile.Size = Vector3.new(1,1,1) 
missile.Velocity = v * 400 + (Vector3.new(math.random(-1,1) * script.Parent.Recoil.Value,math.random(-1,1) * script.Parent.Recoil.Value,math.random(-1,1) * script.Parent.Recoil.Value)) 
missile.BrickColor = BrickColor.new(26) 
missile.Shape = 0 
missile.BottomSurface = 0 
missile.TopSurface = 0 
missile.Name = "Bullet" 
missile.Elasticity = 0 
missile.Reflectance = 0 
missile.Friction = .9 

local shell = Instance.new("Part") 
shell.CFrame = Tool.Chamber.CFrame * CFrame.fromEulerAnglesXYZ(1.5,0,0) 
shell.Size = Vector3.new(1,1,1) 
shell.BrickColor = BrickColor.new(24) 
shell.BottomSurface = 0 
shell.TopSurface = 0 
shell.Name = "Shell" 
shell.Velocity = Tool.Chamber.CFrame.lookVector * 30 + Vector3.new(math.random(-10,10),20,math.random(-10,10)) 
shell.RotVelocity = Vector3.new(0,200,0) 

local shellmesh = Instance.new("SpecialMesh") 
shellmesh.Scale = Vector3.new(.3,.75,.3) 
shellmesh.Parent = shell 

local force = Instance.new("BodyForce") 
force.force = Vector3.new(0,missile:getMass() * 196,0) 
force.Parent = missile 

local mesh = Instance.new("SpecialMesh") 
mesh.Scale = Vector3.new(.2,.2,.2) 
mesh.MeshType = "Sphere" 
mesh.Parent = missile 

local new_script = script.Parent.Bullet:clone() 
new_script.Disabled = false 
new_script.Parent = missile 

local creator_tag = Instance.new("ObjectValue") 
creator_tag.Value = vPlayer 
creator_tag.Name = "creator" 
creator_tag.Parent = missile 



missile.Parent = game.Workspace 
shell.Parent = game.Workspace 
game:GetService("Debris"):addItem(shell,6) 

weld33.C1 = CFrame.new(-0.75, 0.5, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-100), math.rad(-15),0) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0.2, math.rad(-90)) 
Tool.Flash.Mesh.Scale = Vector3.new(1, 2, 1) 
Tool.Flash.Transparency = .3 
wait(0.025) 
weld33.C1 = CFrame.new(-0.75, 0.5, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-110), math.rad(-15),0) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0.4, math.rad(-90)) 
Tool.Flash.Mesh.Scale = Vector3.new(.75, 1.5, .75) 
Tool.Flash.Transparency = .5 
wait(0.025) 
weld33.C1 = CFrame.new(-0.75, 0.5, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-100), math.rad(-15),0) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0.2, math.rad(-90)) 
Tool.Flash.Mesh.Scale = Vector3.new(.5, 1.5, .5) 
Tool.Flash.Transparency = .8 
wait(0.025) 
weld33.C1 = CFrame.new(-0.75, 0.5, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15),0) 
weld55.C1 = CFrame.new(-0.35, 0.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90)) 
Tool.Flash.Transparency = 1 
end 

function KeyDownFunctions(key) 
if key == "r" then 
Reload() 
end 
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
local ammo = script.Parent.Ammo 
local maxammo = script.Parent.MaxAmmo 
if reloading == false and humanoid.Health >= 1 then 
if ammo.Value >= 1 then 
ammo.Value = ammo.Value - 1 
local targetPos = humanoid.TargetPoint 
local lookAt = (targetPos - character.Head.Position).unit 
if script.Parent.Recoil.Value < 20 then 
script.Parent.Recoil.Value = script.Parent.Recoil.Value + math.random(1,3) 
end 
fire(lookAt) 
else 
Reload() 
end 
end 
Tool.Enabled = true 
end 

function onEquippedLocal(mouse) 

if mouse == nil then 
print("Mouse not found") 
return 
end 

mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.KeyDown:connect(KeyDownFunctions) 
while true do 
wait() 
script.Parent.Name = "Deagle ["..script.Parent.Ammo.Value.."]["..script.Parent.StoredAmmo.Value.."]"---------Where It Says Deagle But Ur Guns Name 
end 
end 


Tool.Equipped:connect(onEquippedLocal) 


script.Parent.Activated:connect(onActivated) 
Tool.Equipped:connect(Equip) 
Tool.Unequipped:connect(Unequip) 