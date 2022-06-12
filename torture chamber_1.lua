pcall(function() workspace.Base.Torture:remove() end) 

local tortu = false 

local mod = Instance.new("Model", workspace.Base) 
mod.Name = "Torture" 
local base = Instance.new("Part", mod) 
base.Anchored = true 
base.BrickColor = BrickColor.new("Black") 
base.Size = Vector3.new(40, 1, 20) 
base.CFrame = CFrame.new(25, 1, 0) * CFrame.Angles(0, 0, 0) 
local basem = Instance.new("BlockMesh", base) 
local base2 = Instance.new("Part", mod) 
base2.Anchored = true 
base2.BrickColor = BrickColor.new("Black") 
base2.Size = Vector3.new(41, 20, 1) 
base2.CFrame = CFrame.new(25, 10, 10) * CFrame.Angles(0, 0, 0) 
local base2m = Instance.new("BlockMesh", base2) 
local base3 = Instance.new("Part", mod) 
base3.Anchored = true 
base3.BrickColor = BrickColor.new("Black") 
base3.Size = Vector3.new(1, 20, 20) 
base3.CFrame = CFrame.new(45, 10, 0) * CFrame.Angles(0, 0, 0) 
local base3m = Instance.new("BlockMesh", base3) 
local base4 = Instance.new("Part", mod) 
base4.Anchored = true 
base4.BrickColor = BrickColor.new("Black") 
base4.Size = Vector3.new(1, 20, 7) 
base4.CFrame = CFrame.new(5, 10, 6.5) * CFrame.Angles(0, 0, 0) 
local base4m = Instance.new("BlockMesh", base4) 
local base5 = Instance.new("Part", mod) 
base5.Anchored = true 
base5.BrickColor = BrickColor.new("Black") 
base5.Size = Vector3.new(1, 20, 7) 
base5.CFrame = CFrame.new(5, 10, -6.5) * CFrame.Angles(0, 0, 0) 
local base5m = Instance.new("BlockMesh", base5) 
local base6 = Instance.new("Part", mod) 
base6.Anchored = true 
base6.BrickColor = BrickColor.new("Black") 
base6.Size = Vector3.new(1, 10, 9) 
base6.CFrame = CFrame.new(5, 15.4, 0.5) * CFrame.Angles(0, 0, 0) 
local base6m = Instance.new("BlockMesh", base6) 
local base7 = Instance.new("Part", mod) 
base7.Anchored = true 
base7.BrickColor = BrickColor.new("Black") 
base7.Size = Vector3.new(40, 1, 20) 
base7.CFrame = CFrame.new(25, 19.6, 0) * CFrame.Angles(0, 0, 0) 
local base7m = Instance.new("BlockMesh", base7) 
local base8 = Instance.new("Part", mod) 
base8.Anchored = true 
base8.BrickColor = BrickColor.new("Black") 
base8.Transparency = 0.75 
base8.Size = Vector3.new(41, 20, 1) 
base8.CFrame = CFrame.new(25, 10, -10) * CFrame.Angles(0, 0, 0) 
local base8m = Instance.new("BlockMesh", base8) 
local base9 = Instance.new("Part", mod) 
base9.Anchored = true 
base9.BrickColor = BrickColor.new("Black") 
base9.Size = Vector3.new(2, 4, 2) 
base9.CFrame = CFrame.new(35, 17.5, 0) * CFrame.Angles(0, 0, 0) 
local base9m = Instance.new("CylinderMesh", base9) 
local base10 = Instance.new("Part", mod) 
base10.Anchored = true 
base10.BrickColor = BrickColor.new("New Yeller") 
base10.Transparency = 0.75 
base10.CanCollide = false 
base10.Size = Vector3.new(1, 1, 1) 
base10.CFrame = CFrame.new(35, 9, 0) * CFrame.Angles(0, 0, 0) 
local base10m = Instance.new("SpecialMesh", base10) 
base10m.MeshType = "FileMesh" 
base10m.Scale = Vector3.new(5, 20, 5) 
base10m.MeshId = "http://www.roblox.com/asset/?id=1033714" 
local base11 = Instance.new("Part", mod) 
base11.Anchored = true 
base11.BrickColor = BrickColor.new("Reddish brown") 
base11.Size = Vector3.new(6, 1, 4) 
base11.CFrame = CFrame.new(35, 3.5, 0) * CFrame.Angles(0, 0, 0) 
local base11m = Instance.new("BlockMesh", base11) 
local base12 = Instance.new("Part", mod) 
base12.Anchored = true 
base12.BrickColor = BrickColor.new("Reddish brown") 
base12.Size = Vector3.new(1, 3, 1) 
base12.CFrame = CFrame.new(37.5, 2.5, 1.5) * CFrame.Angles(0, 0, 0) 
local base12m = Instance.new("CylinderMesh", base12) 
local base13 = Instance.new("Part", mod) 
base13.Anchored = true 
base13.BrickColor = BrickColor.new("Reddish brown") 
base13.Size = Vector3.new(1, 3, 1) 
base13.CFrame = CFrame.new(37.5, 2.5, -1.5) * CFrame.Angles(0, 0, 0) 
local base13m = Instance.new("CylinderMesh", base13) 
local base14 = Instance.new("Part", mod) 
base14.Anchored = true 
base14.BrickColor = BrickColor.new("Reddish brown") 
base14.Size = Vector3.new(1, 3, 1) 
base14.CFrame = CFrame.new(32.5, 2.5, -1.5) * CFrame.Angles(0, 0, 0) 
local base14m = Instance.new("CylinderMesh", base14) 
local base15 = Instance.new("Part", mod) 
base15.Anchored = true 
base15.BrickColor = BrickColor.new("Reddish brown") 
base15.Size = Vector3.new(1, 3, 1) 
base15.CFrame = CFrame.new(32.5, 2.5, 1.5) * CFrame.Angles(0, 0, 0) 
local base15m = Instance.new("CylinderMesh", base15) 
local base16 = Instance.new("Part", mod) 
base16.Anchored = true 
base16.BrickColor = BrickColor.new("Dark stone grey") 
base16.Size = Vector3.new(1, 10, 6) 
base16.CFrame = CFrame.new(5, 5.8, 0) * CFrame.Angles(0, 0, 0) 
local base16m = Instance.new("BlockMesh", base16) 
local panel = Instance.new("Part", mod) 
panel.Anchored = true 
panel.BrickColor = BrickColor.new("Black") 
panel.Size = Vector3.new(9, 5, 4) 
panel.CFrame = CFrame.new(24, 2.5, -50) * CFrame.Angles(0, 0, 0) 
local panelm = Instance.new("BlockMesh", panel) 
local guy = Instance.new("Model", mod) 
guy.Name = "Prisoner" 
local hums = Instance.new("Humanoid", guy) 
hums.Health = 100 
hums.MaxHealth = 100 
local torso = Instance.new("Part", guy) 
torso.Anchored = false 
torso.formFactor = "Symmetric" 
torso.Name = "Torso" 
torso.BrickColor = BrickColor.new("White") 
torso.Size = Vector3.new(2, 2, 1) 
torso.CFrame = CFrame.new(27, 8, 0) * CFrame.Angles(0, 0, 0) 
torso:BreakJoints() 
--[[local bg = Instance.new("BodyGyro", torso) 
bg.maxTorque = Vector3.new(math.huge, math.huge, math.huge) ]] 
local torsom = Instance.new("BlockMesh", torso) 
torsom.Scale = Vector3.new(1.1, 1.1, 1.1) 
local head = Instance.new("Part", guy) 
head.Anchored = false 
head.formFactor = "Symmetric" 
head.Name = "Head" 
head.BrickColor = BrickColor.new("Pastel brown") 
head.Size = Vector3.new(2, 1, 1) 
head.CFrame = CFrame.new(27, 8, 0) * CFrame.Angles(0, 0, 0) 
head:BreakJoints() 
local headm = Instance.new("SpecialMesh", head) 
headm.Scale = Vector3.new(1.1, 1.1, 1.1) 
local headw = Instance.new("Weld", guy) 
headw.Part0 = head 
headw.Part1 = torso 
headw.C0 = CFrame.new(0, -1.65, 0) 
local rarm = Instance.new("Part", guy) 
rarm.Anchored = false 
rarm.CanCollide = false 
rarm.formFactor = "Symmetric" 
rarm.Name = "Right Arm" 
rarm.BrickColor = BrickColor.new("White") 
rarm.Size = Vector3.new(1, 2, 1) 
rarm.CFrame = CFrame.new(27, 8, 0) * CFrame.Angles(0, 0, 0) 
rarm:BreakJoints() 
local rarmm = Instance.new("BlockMesh", rarm) 
rarmm.Scale = Vector3.new(1.1, 1.1, 1.1) 
local rarmw = Instance.new("Weld", guy) 
rarmw.Part0 = rarm 
rarmw.Part1 = torso 
rarmw.C0 = CFrame.new(-1.5, 0, 0) 
local larm = Instance.new("Part", guy) 
larm.Anchored = false 
larm.formFactor = "Symmetric" 
larm.CanCollide = false 
larm.Name = "Left Arm" 
larm.BrickColor = BrickColor.new("White") 
larm.Size = Vector3.new(1, 2, 1) 
larm.CFrame = CFrame.new(27, 8, 0) * CFrame.Angles(0, 0, 0) 
larm:BreakJoints() 
local larmm = Instance.new("BlockMesh", larm) 
larmm.Scale = Vector3.new(1.1, 1.1, 1.1) 
local larmw = Instance.new("Weld", guy) 
larmw.Part0 = larm 
larmw.Part1 = torso 
larmw.C0 = CFrame.new(1.5, 0, 0) 
local lleg = Instance.new("Part", guy) 
lleg.Anchored = false 
lleg.formFactor = "Symmetric" 
lleg.Name = "Left Leg" 
lleg.BrickColor = BrickColor.new("White") 
lleg.Size = Vector3.new(1, 2, 1) 
lleg.CFrame = CFrame.new(27, 8, 0) * CFrame.Angles(0, 0, 0) 
lleg:BreakJoints() 
local llegm = Instance.new("BlockMesh", lleg) 
llegm.Scale = Vector3.new(1.1, 1.1, 1.1) 
local llegw = Instance.new("Weld", guy) 
llegw.Part0 = lleg 
llegw.Part1 = torso 
llegw.C0 = CFrame.new(0.5, 2, 0) 
local rleg = Instance.new("Part", guy) 
rleg.Anchored = false 
rleg.formFactor = "Symmetric" 
rleg.Name = "Right Leg" 
rleg.BrickColor = BrickColor.new("White") 
rleg.Size = Vector3.new(1, 2, 1) 
rleg.CFrame = CFrame.new(27, 8, 0) * CFrame.Angles(0, 0, 0) 
rleg:BreakJoints() 
local rlegm = Instance.new("BlockMesh", rleg) 
rlegm.Scale = Vector3.new(1.1, 1.1, 1.1) 
local rlegw = Instance.new("Weld", guy) 
rlegw.Part0 = rleg 
rlegw.Part1 = torso 
rlegw.C0 = CFrame.new(-0.5, 2, 0) 
local mod2 = Instance.new("Model", mod) 
mod2.Name = "Acid" 
local hum = Instance.new("Humanoid", mod2) 
hum.Health = 0 
hum.MaxHealth = 0 
local button1 = Instance.new("Part", mod2) 
button1.Anchored = true 
button1.Name = "Head" 
button1.BrickColor = BrickColor.new("Really red") 
button1.Size = Vector3.new(1, 2, 1) 
button1.CFrame = CFrame.new(27, 4, -50) * CFrame.Angles(0, 0, 0) 
local button1m = Instance.new("BlockMesh", button1) 
local click1 = Instance.new("ClickDetector", button1) 
local mod3 = Instance.new("Model", mod) 
mod3.Name = "Fire" 
local hum2 = Instance.new("Humanoid", mod3) 
hum2.Health = 0 
hum2.MaxHealth = 0 
local button2 = Instance.new("Part", mod3) 
button2.Anchored = true 
button2.Name = "Head" 
button2.BrickColor = BrickColor.new("Really red") 
button2.Size = Vector3.new(1, 2, 1) 
button2.CFrame = CFrame.new(25.5, 4, -50) * CFrame.Angles(0, 0, 0) 
local button2m = Instance.new("BlockMesh", button2) 
local click2 = Instance.new("ClickDetector", button2) 
local mod4 = Instance.new("Model", mod) 
mod4.Name = "Gas" 
local hum3 = Instance.new("Humanoid", mod4) 
hum3.Health = 0 
hum3.MaxHealth = 0 
local button3 = Instance.new("Part", mod4) 
button3.Anchored = true 
button3.Name = "Head" 
button3.BrickColor = BrickColor.new("Really red") 
button3.Size = Vector3.new(1, 2, 1) 
button3.CFrame = CFrame.new(24, 4, -50) * CFrame.Angles(0, 0, 0) 
local button3m = Instance.new("BlockMesh", button3) 
local click3 = Instance.new("ClickDetector", button3) 

function acid() 
local acid = Instance.new("Part", mod) 
acid.Anchored = true 
acid.formFactor = "Custom" 
acid.Transparency = 0.75 
acid.CanCollide = false 
acid.BrickColor = BrickColor.new("Bright green") 
acid.Size = Vector3.new(40, 1, 20) 
acid.CFrame = CFrame.new(25, 1, 0) * CFrame.Angles(0, 0, 0) 
local acidm = Instance.new("BlockMesh", acid) 
for i = 1, 30 do 
hums:TakeDamage(4) 
acid.Size = acid.Size + Vector3.new(0, 1, 0) 
acid.CFrame = CFrame.new(25, 0.5, 0) * CFrame.Angles(0, 0, 0) 
wait(0.25) 
end 
for i = 1, 30 do 
acid.Size = acid.Size - Vector3.new(0, 1, 0) 
acid.CFrame = CFrame.new(25, 0.5, 0) * CFrame.Angles(0, 0, 0) 
wait(0.25) 
end 
acid:remove() 
local sc = script:clone() 
sc.Parent = workspace 
script:remove() 
end 
function gas() 
local gas = Instance.new("Part", mod) 
gas.Anchored = true 
gas.formFactor = "Custom" 
gas.Transparency = 1
gas.CanCollide = false 
gas.BrickColor = BrickColor.new("Bright green") 
gas.Size = Vector3.new(1, 1, 1) 
gas.CFrame = CFrame.new(20, 1, 0) * CFrame.Angles(0, 0, 0) 
local gasm = Instance.new("BlockMesh", gas) 
local gass = Instance.new("Smoke", gas) 
gass.Size = 0 
gass.Color = Color3.new(0, 1, 0) 
gass.Opacity = 0 
for i = 1, 50 do 
hums:TakeDamage(2) 
gass.Opacity = gass.Opacity + 0.25 
gass.Size = gass.Size + 0.25 
wait(0.15) 
end 
for i = 1, 5 do 
gass.Opacity = gass.Opacity - 0.25 
gass.Size = gass.Size - 0.25 
wait(0.15) 
end 
gas:remove() 
local sc = script:clone() 
sc.Parent = workspace 
script:remove() 
end 
function fire() 
local fire = Instance.new("Part", mod) 
fire.Anchored = true 
fire.formFactor = "Custom" 
fire.Transparency = 1 
fire.BrickColor = BrickColor.new("Bright green") 
fire.Size = Vector3.new(1, 1, 1) 
fire.CFrame = CFrame.new(35, 1, 0) * CFrame.Angles(0, 0, 0) 
local firem = Instance.new("BlockMesh", fire) 
local firef = Instance.new("Fire", fire) 
firef.Heat = 0 
firef.Size = 0 
local fire2 = Instance.new("Part", mod) 
fire2.Anchored = true 
fire2.formFactor = "Custom" 
fire2.Transparency = 1 
fire2.BrickColor = BrickColor.new("Bright green") 
fire2.Size = Vector3.new(1, 1, 1) 
fire2.CFrame = CFrame.new(20, 1, 0) * CFrame.Angles(0, 0, 0) 
local fire2m = Instance.new("BlockMesh", fire) 
local fire2f = Instance.new("Fire", fire2) 
fire2f.Heat = 0 
fire2f.Size = 0 
for i = 1, 20 do 
hums:TakeDamage(6) 
firef.Heat = firef.Heat + 0.5 
firef.Size = firef.Size + 1 
fire2f.Heat = firef.Heat + 0.5 
fire2f.Size = firef.Size + 1 
wait(0.25) 
end 
for i = 1, 20 do 
firef.Heat = firef.Heat - 0.5 
firef.Size = firef.Size - 1 
fire2f.Heat = firef.Heat - 0.5 
fire2f.Size = firef.Size - 1 
wait(0.25) 
end 
fire:remove() 
fire2:remove() 
local sc = script:clone() 
sc.Parent = workspace 
script:remove() 
end 

click1.MouseClick:connect(function() 
if tortu == false then 
tortu = true 
acid() 
tortu = false 
end 
end) 
click2.MouseClick:connect(function() 
if tortu == false then 
tortu = true 
fire() 
tortu = false 
end 
end) 
click3.MouseClick:connect(function() 
if tortu == false then 
tortu = true 
gas() 
tortu = false 
end 
end) 