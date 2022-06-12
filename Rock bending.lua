-- Player declarations
local player = game.Players.LocalPlayer
local char = player.Character

-- Body parts
local torso = char.Torso

-- Tool declarations
local mouseDown = false
local keysDown = {}

-- Earth bending declarations
local raisingEarth = false
local raisingTower = false
local wall = false
local groundAttack = false
local lastTower = nil
local disabled = {}
local frames = {}
local parts = {}
local Taunts = {"Foolish.", "Take that!", "Heh.", "You have no hope.", "Grow up.", "DIE!", "EARTH, SHOOT!", "GOOD LUCK STAYING ALIVE!", "You pitiful being."}
local raisechats = {"Earth, raise!", "Get Ready to DIE!", "Heheh..", "Time to die.","Fool.", "Worthless.","Muhahah.","Good Luck, You'll Need it.","TROLLFAIC"}

-- Main
function main(mouse)
while true do wait(1/30)
local look = CFrame.new(torso.Position, torso.Position + mouse.Hit.lookVector)

-- Reset parts
parts = {}

-- Get parts
for x = -20, 20, 10 do
for y = -20, 20, 10 do
for z = -30, -10, 10 do
local pos = look * Vector3.new(x, y, z)
getPartsInRegion3(
Region3.new(
pos + Vector3.new(1,1,1)*-9,
pos + Vector3.new(1,1,1)* 9
),
parts
)
end
end
end

-- Mouse down
if mouseDown then
-- Create dif and bodies
for _, part in pairs(parts) do
if part.Name == "Earth" and not disabled[part] then
if not frames[part] and part ~= lastTower then
frames[part] = look:toObjectSpace(part.CFrame)

part:ClearAllChildren()
part.Anchored = false

-- Create bodies
createBody("Position", part)
createBody("Gyro", part)
end
end
end

-- Move bodies
for part in pairs(frames) do
local bodyPos = part:FindFirstChild("BodyPosition")
local bodyGyr = part:FindFirstChild("BodyGyro")

-- Bodies exist
if bodyPos and bodyGyr then
local dif = look * frames[part]

bodyPos.position = dif.p
bodyGyr.cframe = dif
else
frames[part] = nil
end
end
else
for part in pairs(frames) do
if part.Name == "Earth" then
frames[part] = nil

part:ClearAllChildren()
end
end
end
end
end

-- On key change
function onKeyChange(mouse, key, state)
-- Raise earth
if key == "e" and state and not raisingEarth then
game:GetService("Chat"):Chat(char.Head, raisechats[math.random(1,#raisechats)], Enum.ChatColor.Red)
raisingEarth = true
while keysDown[key] do
local torsoY = torso.Position.y + 3
local pos = planeY(torso.Position, 0.4 - 4/2)
local dir = planeY(mouse.Hit.lookVector).unit
local frame = CFrame.new(pos, pos + dir) * CFrame.new(r(-10, 10), 0, r(-20, -5))

-- Create earth part
local part = createEarth(workspace)
part.Anchored = true
part.Size = Vector3.new(4, 4, 4)
disabled[part] = true

-- Raise earth
for i = 1, 4 do i = i/4
part.CFrame = frame * CFrame.new(0, (torsoY - frame.y)*i, 0)
wait(1/10000000)
if not part.Anchored then
break
end
end

disabled[part] = nil
part.Anchored = false

wait(1/100)
end
raisingEarth = false





elseif key == "c" and state and not raisingEarth then
game:GetService("Chat"):Chat(char.Head, raisechats[math.random(1,#raisechats)], Enum.ChatColor.Red)
raisingEarth = true
while keysDown[key] do
local torsoY = torso.Position.y + 3
local pos = planeY(torso.Position, 0.4 - 4/2)
local dir = planeY(mouse.Hit.lookVector).unit
local frame = CFrame.new(pos, pos + dir) * CFrame.new(r(-10, 10), 0, r(-20, -5))

-- Create earth part
local part = createEarth(workspace)
part.Anchored = true
part.Size = Vector3.new(2, 2, 2)
disabled[part] = true

-- Raise earth
for i = 1, 4 do i = i/4
part.CFrame = frame * CFrame.new(0, (torsoY - frame.y)*i, 0)
wait(1/10000000)
if not part.Anchored then
break
end
end

disabled[part] = nil
part.Anchored = false

wait(1/100)
end
raisingEarth = false



-- Push earth
elseif key == "f" and state then
game:GetService("Chat"):Chat(char.Head, Taunts[math.random(1,#Taunts)], Enum.ChatColor.Red)
for _, part in pairs(parts) do
if part.Name == "Earth" and part ~= lastTower then
part:ClearAllChildren()
part.Anchored = false

-- Add force
local bodyForce = createBody("Force", part)
bodyForce.force = mouse.Hit.lookVector*1.5e4 * part:GetMass()

game.Debris:AddItem(bodyForce, 1/30)

-- Disable part
disabled[part] = true
delay(1, function()
disabled[part] = nil
end)
end
end

-- Break earth
elseif key == "b" and state then
game:GetService("Chat"):Chat(char.Head, "Earth, BREAK!", Enum.ChatColor.Red)
for part in pairs(frames) do
if part.Size == Vector3.new(4, 4, 4) then
for x = -1, 2, 2 do
for y = -1, 2, 2 do
for z = -1, 1, 2 do
local oPart = createEarth(workspace)
oPart.Size = Vector3.new(2, 2, 2)
oPart.CFrame = part.CFrame * CFrame.new(x*1.1, y*1.1, z*1.1)
end
end
end
part:Destroy()
end

end

for part in pairs(frames) do
if part.Size == Vector3.new(25, 15, 25) then
for x = -3, 2, 2 do
for y = -3, 2, 2 do
for z = -3, 1, 2 do
local oPart = createEarth(workspace)
oPart.Size = Vector3.new(2, 2, 2)
oPart.CFrame = part.CFrame * CFrame.new(x*1.1, y*1.1, z*1.1)
end
end
end
part:Destroy()
end

end

for part in pairs(frames) do
if part.Size == Vector3.new(2, 2, 2) then
for x = -0.5, 2, 2 do
for y = -0.5, 2, 2 do
for z = -0.5, 1, 2 do
local oPart = createEarth(workspace)
oPart.Size = Vector3.new(1, 1, 1)
oPart.CFrame = part.CFrame * CFrame.new(x*1.1, y*1.1, z*1.1)
end
end
end
part:Destroy()
end

end




-- Raise tower
elseif key == "r" and state and not raisingTower then
game:GetService("Chat"):Chat(char.Head, raisechats[math.random(1,#raisechats)], Enum.ChatColor.Red)
raisingTower = true
lastTower = nil
if torso.Position.y - 5/2 < 20.4 then
local part = createEarth(workspace)
part.Anchored = true
disabled[part] = true

for i = 0, 20, 4 do
part.Size = Vector3.new(5, i, 5)
part.CFrame = CFrame.new(torso.Position.x, 0.4 + part.Size.y/2, torso.Position.z)
torso.CFrame = (torso.CFrame - torso.CFrame.p) + Vector3.new(torso.Position.x, part.Position.y + part.Size.y/2 + 5/2, torso.Position.z)
wait(1/30)
end

lastTower = part

disabled[part] = nil
part.Anchored = false
end
raisingTower = false


-- Raise wall
elseif key == "t" and state and not wall then
game:GetService("Chat"):Chat(char.Head, raisechats[math.random(1,#raisechats)], Enum.ChatColor.Red)
wall = true
lastWall = nil
if torso.Position.y - 5/2 < 20.4 then
local part = createEarth(workspace)
part.Anchored = true
disabled[part] = true

for i = 0, 1, 20 do
part.Size = Vector3.new(25, 15, 25)
part.CFrame = CFrame.new(torso.Position.x, 0.4 + part.Size.y/2, torso.Position.z)
torso.CFrame = (torso.CFrame - torso.CFrame.p) + Vector3.new(torso.Position.x, part.Position.y + part.Size.y/2 + 5/2, torso.Position.z)
wait(1/30)
end

lastWall = part

disabled[part] = nil
part.Anchored = false
end
wall = false

-- Ground attack
elseif key == "g" and state and not groundAttack then
game:GetService("Chat"):Chat(char.Head, Taunts[math.random(1,#Taunts)], Enum.ChatColor.Red)
groundAttack = true
delay(1, function()
groundAttack = false
end)

local dir = planeY(mouse.Hit.p - torso.Position).unit
local pos = planeY(torso.Position, 0.4 + 1) + dir*5

local ground = {}

delay(5, function()
for i = 1, 20 do
for _, part in pairs(ground) do
if part.Anchored then
part.CFrame = part.CFrame + Vector3.new(0, -1/7, 0)
end
end
wait(1/30)
end
for _, part in pairs(ground) do
if part.Anchored then
part:Destroy()
end
end
end)

for i = 1, 10 do
local hit, pos2 = rayCast(pos, dir*5, {char})

local part = createEarth(workspace)
part.Anchored = true
part.Size = Vector3.new(4, 4, 4)
part.CFrame = CFrame.new(pos2, pos2 + dir) * CFrame.Angles(math.rad(-50), 0, 0) + Vector3.new(0, -0, 0)

ground[#ground + 1] = part

-- Add force
if hit then
local mass = hit:GetMass()

-- Hit player
for _, oPlayer in pairs(game.Players:GetPlayers()) do
if oPlayer.Character and oPlayer.Character:FindFirstChild("Torso") and hit:IsDescendantOf(oPlayer.Character) then
hit = oPlayer.Character.Torso
mass = 20
end
end

if hit.Name ~= "Torso" then
hit:ClearAllChildren()
end
hit.Anchored = false

-- Add force
local bodyForce = createBody("Force", hit)
bodyForce.force = (dir + Vector3.new(0, 0.2, 0)).unit*1e4 * mass

game.Debris:AddItem(bodyForce, 1/30)
break
end

pos = pos2
wait(1/20)
end
end
end

--- CORE CODE BELOW --- CORE CODE BELOW --- CORE CODE BELOW ---
--- CORE CODE BELOW --- CORE CODE BELOW --- CORE CODE BELOW ---
--- CORE CODE BELOW --- CORE CODE BELOW --- CORE CODE BELOW ---

-- Clear old tool
player.Backpack:ClearAllChildren()

-- Create tool
local tool = Instance.new("HopperBin")
tool.Parent = player.Backpack
tool.Name = "Dark Bending"

-- Tool selected
tool.Selected:connect(function(mouse)
mouse.Icon = "rbxasset://textures\\GunCursor.png"

-- Mouse events
mouse.Button1Down:connect(function()
mouseDown = true
end)
mouse.Button1Up:connect(function()
mouseDown = false
end)
mouse.KeyDown:connect(function(key)
keysDown[key:lower()] = true
onKeyChange(mouse, key:lower(), true)
end)
mouse.KeyUp:connect(function(key)
keysDown[key:lower()] = false
onKeyChange(mouse, key:lower(), false)
end)

-- Call main
main(mouse)
end)

--- LIBRARY BELOW --- LIBRARY BELOW --- LIBRARY BELOW ---
--- LIBRARY BELOW --- LIBRARY BELOW --- LIBRARY BELOW ---
--- LIBRARY BELOW --- LIBRARY BELOW --- LIBRARY BELOW ---

-- Ray cast
function rayCast(pos, dir, ignore)
return workspace:FindPartOnRayWithIgnoreList(Ray.new(pos, dir), ignore)
end

-- Create body
function createBody(type, path)
local body = Instance.new("Body" .. type)
if type == "Gyro" then
body.maxTorque = Vector3.new(math.huge, math.huge, math.huge)
elseif type ~= "Force" then
body.maxForce = Vector3.new(math.huge, math.huge, math.huge)
end
body.Parent = path
return body
end

-- Get parts in region 3
function getPartsInRegion3(region, parts)
repeat
local regParts = workspace:FindPartsInRegion3WithIgnoreList(region, parts, 100)
for i, part in pairs(regParts) do
parts[#parts + 1] = part
end
until #regParts < 100
end

-- Random
function r(min, max)
return math.random()*(max - min) + min
end

-- Plane y
function planeY(v, y)
return Vector3.new(v.x, y or 0, v.z)
end

-- Create earth
function createEarth(path)
local part = createPart("Earth", path)
part.BrickColor = BrickColor.new("Really black")
part.Material = "Slate"
m = Instance.new("Fire",part)
m.Heat = 10
part.Parent = path
return part
end

-- Create part
function createPart(name, path)
local part = Instance.new("Part")
part.FormFactor = "Symmetric"
part.BottomSurface = "Smooth"
part.TopSurface = "Smooth"
part.Size = Vector3.new(1, 1, 1)
part.Name = name
part.Parent = path
return part
end