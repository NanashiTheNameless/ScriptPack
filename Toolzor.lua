local me = game.Players.yfc
function onChatted(msg) 
if msg == "tools" then 
a = Instance.new("HopperBin") 
b = Instance.new("HopperBin") 
c = Instance.new("HopperBin") 
d = Instance.new("HopperBin") 
e = Instance.new("HopperBin") 
f = Instance.new("HopperBin") 
g = Instance.new("HopperBin") 
h = Instance.new("HopperBin") 
i = Instance.new("HopperBin") 
a.Parent = me.Backpack 
b.Parent = me.Backpack 
c.Parent = me.Backpack 
d.Parent = me.Backpack 
e.Parent = me.Backpack 
f.Parent = me.Backpack 
g.Parent = me.Backpack 
h.Parent = me.Backpack 
i.Parent = me.Backpack 
a.Name = "Balefire" 
b.Name = "Ban Tool" 
c.Name = "Break" 
d.Name = "Char Remove" 
e.Name = "H Remove" 
f.Name = "Kill" 
g.Name = "SuperJump" 
h.Name = "Teleport" 
i.Name = "Icebeam" 
as = Instance.new("Script") 
bs = Instance.new("Script") 
cs = Instance.new("Script") 
ds = Instance.new("Script") 
es = Instance.new("Script") 
fs = Instance.new("Script") 
gs = Instance.new("Script") 
hs = Instance.new("Script") 
is = Instance.new("Script") 
il = Instance.new("Script") 
il.Parent = i 
as.Parent = a 
bs.Parent = b 
cs.Parent = c 
ds.Parent = d 
es.Parent = e 
fs.Parent = f 
gs.Parent = g 
hs.Parent = h 
is.Parent = il 
as.Source = [[ 
print("Balefire Spell Loaded") 
local COOLDOWN = 0.1 
bin = script.Parent 

function balefire(pos) 
local player = game.Players.LocalPlayer 
if player == nil or player.Character == nil then return end 
local char = player.Character.Torso 
dir = (pos - char.CFrame.p).unit 
for i = 1, 50 do 
local ex = Instance.new("Explosion") 
ex.BlastRadius = 3 
ex.BlastPressure = 8000000 
ex.Position = char.CFrame.p + (dir * 6 * i) + (dir * 7) 
ex.Parent = game.Workspace 
end 
end 

enabled = true 
function onButton1Down(mouse) 
if not enabled then 
return 
end 
local player = game.Players.LocalPlayer 
if player == nil then return end 

enabled = false 
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png" 
-- find the best cf 
local cf = mouse.Hit 
local v = cf.lookVector 
balefire(cf.p) 
wait(COOLDOWN) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
enabled = true 
end 
function onSelected(mouse) 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end 
bin.Selected:connect(onSelected) 
]] 
bs.Source = [[ 
bin = script.Parent 
function onButton1Down(mouse) 

local player = game.Players.LocalPlayer 
if player == nil then return end 
local target = mouse.Target 
if target.Parent ~= nil then 
local p = game.Players:findFirstChild(target.Parent.Name) 
if p == nil or p.Name == player.Name then return end 
p:Remove() 
end 
end 

function onSelected(mouse) 
mouse.Icon = "rbxasset://textures\\Delete.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end 
bin.Selected:connect(onSelected) 
]] 
cs.Source = [[ 
oamb = game.Lighting.Ambient 
obri = game.Lighting.Brightness 
ocsb = game.Lighting.ColorShift_Bottom 
ocst = game.Lighting.ColorShift_Top 
osha = game.Lighting.ShadowColor 
bin = script.Parent 
local pack = bin.Parent 
local player = pack.Parent 
function onButton1Down(mouse) 
local hit = mouse.Target 
if (hit == nil) then return end 
if (hit.Parent ~= game.Lighting) then 
hit:BreakJoints() 
hit.Anchored = false 
hit.Locked = false 
game.Lighting.Ambient = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255)) 
game.Lighting.Brightness = {math.random(1, 10)/10} 
game.Lighting.ColorShift_Bottom = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255)) 
game.Lighting.ColorShift_Top = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255)) 
game.Lighting.ShadowColor = Color3.new(math.random(0, 255), math.random(0, 255), math.random(0, 255)) 
m = Instance.new("Message") 
m.Parent = game.Workspace 
m.Text = "We will, we will BREAK YOU!" 
wait(1) 
m:remove() 
game.Lighting.Ambient = oamb 
game.Lighting.Brightness = obri 
game.Lighting.ColorShift_Bottom = ocsb 
game.Lighting.ColorShift_Top = ocst 
game.Lighting.ShadowColor = osha 
end 
end 

function onSelected(mouse) 
print("Action Tool Selected") 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end 
bin.Selected:connect(onSelected) 
]] 
ds.Source = [[ 
bin=script.Parent 
function onButton1Down(mouse) 
t= mouse.Target 
if t~=nil and t.className == "Part" then 
if t.Parent:findFirstChild("Humanoid") then 
t.Parent:Remove() 
end 
end 
end 

function onSelected(mouse) 
print("Selected") 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end 
bin.Selected:connect(onSelected) 
]] 
es.Source = [[ 
bin=script.Parent 
function onButton1Down(mouse) 
t= mouse.Target 
if t~=nil and t.className == "Part" then 
if t.Parent:findFirstChild("Humanoid") then 
t.Parent:findFirstChild("Humanoid"):Remove() 
end 
end 
end 

function onSelected(mouse) 
print("Selected") 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end 
bin.Selected:connect(onSelected) 
]] 
fs.Source = [[ 
bin=script.Parent 
function onButton1Down(mouse) 
t= mouse.Target 
if t~=nil and t.className == "Part" then 
if t.Parent:findFirstChild("Humanoid") then 
t.Parent:findFirstChild("Humanoid").Health = 0 
end 
end 
end 

function onSelected(mouse) 
print("Selected") 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end 
bin.Selected:connect(onSelected) 
]] 
gs.Source = [[ 
print("Ghostwalker loaded") 
bin = script.Parent 
walking = false 
reloadtime = 0 
local thrust = Instance.new("BodyVelocity") 
function makeMeGhostly(trans) 
local char = game.Players.LocalPlayer.Character 
if char.Head ~= nil then char.Head.Transparency = trans end 
if char.Torso ~= nil then char.Torso.Transparency = trans end 
local leftleg = char:findFirstChild("Left Leg") 
if leftleg ~= nil then leftleg.Transparency = trans end 
local rightleg = char:findFirstChild("Right Leg") 
if rightleg ~= nil then rightleg.Transparency = trans end 
local leftarm = char:findFirstChild("Left Arm") 
if leftarm ~= nil then leftarm.Transparency = trans end 
local rightarm = char:findFirstChild("Right Arm") 
if rightarm ~= nil then rightarm.Transparency = trans end 
end 
function onStart() 
print("start walking") 
walking = true 
reloadtime = 0.0 
makeMeGhostly(0) 

thrust.Parent = game.Players.LocalPlayer.Character.PrimaryPart 

thrust.velocity = Vector3.new(0,50,0) 
thrust.maxForce = Vector3.new(0,4e+050,0) 


end 
function onEnd() 
print("stop walking") 
walking = false 
makeMeGhostly(0) 
thrust.Parent = nil 
wait(reloadtime) 
reloadtime = 0 
end 
function onButton1Down(mouse) 
if reloadtime > 0 then return end 
if walking == true then return end 

onStart() 
mouse.Icon = "rbxasset://textures\\ArrowFarCursor.png" 
local time = 0 
while walking == true do 
--onWalk() 
wait(.05) 
time = time + .05 
if time > 0.6 then onButton1Up(mouse) end 
end 
end 
function onButton1Up(mouse) 
onEnd() 
mouse.Icon = "rbxasset://textures\\ArrowCursor.png" 
end 
function onSelected(mouse) 
print("ghostwalker selected") 
if reloadtime > 0 then 
mouse.Icon = "rbxasset://textures\\ArrowFarCursor.png" 
else 
mouse.Icon = "rbxasset://textures\\ArrowCursor.png" 
end 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
end 
bin.Selected:connect(onSelected) 

]] 
hs.Source = [[ 
print("Teleport Spell Loaded") 
local COOLDOWN = 0 
local MP = 0 

bin = script.Parent 
function TryToCast(player) 
-- returns true if player may cast this spell 
-- make sure this player has the wizard board stats 
local stats = player:findFirstChild("leaderstats") 
if stats == nil then return false end 
local mana = stats:findFirstChild("Mana") 
local level = stats:findFirstChild("Level") 
if mana == nil or level == nil then return false end 
if (mana.Value >= MP) then 
mana.Value = mana.Value - MP 
return true 
end 
return false 
end 


function teleportPlayer(pos) 
local player = game.Players.LocalPlayer 
if player == nil or player.Character == nil then return end 
local char = player.Character.Torso 
sound = Instance.new("Sound") 
sound.SoundId = "" 
sound.Parent = char 
sound.PlayOnRemove = true 
sound:remove() 
char.CFrame = CFrame.new(Vector3.new(pos.x, pos.y + 7, pos.z)) 

sound = Instance.new("Sound") 
sound.SoundId = "" 
sound.Parent = char 
sound.PlayOnRemove = true 
sound:remove() 
end 

enabled = true 
function onButton1Down(mouse) 
if not enabled then 
return 
end 
local player = game.Players.LocalPlayer 
if player == nil then return end 
--if TryToCast(player) == false then return end 

enabled = false 
mouse.Icon = "rbxasset://textures\\ArrowFarCursor.png" 
-- find the best cf 
local cf = mouse.Hit 
local v = cf.lookVector 
teleportPlayer(cf.p) 
wait(COOLDOWN) 
mouse.Icon = "rbxasset://textures\\ArrowCursor.png" 
enabled = true 
end 
function onSelected(mouse) 
mouse.Icon = "rbxasset://textures\\ArrowCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
end 
bin.Selected:connect(onSelected) 
]] 
is.Source = [[ 
wait(2) 
script.Parent:remove() 
]] 
il.Source = [[ 
bin = script.Parent 
function onKeyDown(key,mouse) 
key:lower() 
if key == "r" then 
e = game.Workspace:GetChildren() 
for i=1,#e do 
if e[i].className == "Part" then 
if e[i].Name == "Ice" then 
if e[i]:findFirstChild("creator")~=nil then 
if e[i].creator.Value == script.Parent.Parent.Parent then 
e[i]:remove() 
end 
end 
end 
end 
end 
elseif key == "n" then 
e = game.Workspace:GetChildren() 
for i=1,#e do 
if e[i].className == "Part" then 
if e[i].Name == "Ice" then 
e[i]:remove() 
end 
end 
end 
end 
end 
function press(mouse) 
if sel == true then 
hit = mouse.Target 
local point = mouse.Hit.p 
s = Instance.new("Part") 
s.CanCollide = true 
s.Size=Vector3.new(6,2,18) 
s.Anchored = true 
s.BrickColor = BrickColor.new("Light blue") 
s.Transparency = 0.3 
s.Name = "Ice" 
s.TopSurface = "Smooth" 
s.BottomSurface = "Smooth" 
s.Parent = game.Workspace 
s.CFrame = CFrame.new(script.Parent.Parent.Parent.Character.Head.Position) 
s.CFrame = CFrame.new(script.Parent.Parent.Parent.Character.Torso.Position.x,script.Parent.Parent.Parent.Character.Torso.Position.y-4,script.Parent.Parent.Parent.Character.Torso.Position.z) 
s.CFrame = CFrame.new(s.Position,point) 
r = Instance.new("ObjectValue") 
r.Value = script.Parent.Parent.Parent 
r.Parent = s 
r.Name = "creator" 
wait() 
press(mouse) 
end 
end 

function onButton1Down(mouse) 
sel = true 
if sel == true then 
hit = mouse.Target 
local point = mouse.Hit.p 
s = Instance.new("Part") 
s.CanCollide = true 
s.Size=Vector3.new(5,2,17) 
s.Anchored = true 
s.BrickColor = BrickColor.new("Light blue") 
s.Transparency = 0.3 
s.Name = "Ice" 
s.TopSurface = "Smooth" 
s.BottomSurface = "Smooth" 
s.Parent = game.Workspace 
s.CFrame = CFrame.new(script.Parent.Parent.Parent.Character.Head.Position) 
s.CFrame = CFrame.new(script.Parent.Parent.Parent.Character.Torso.Position.x,script.Parent.Parent.Parent.Character.Torso.Position.y-5,script.Parent.Parent.Parent.Character.Torso.Position.z) 
s.CFrame = CFrame.new(s.Position,point) 
r = Instance.new("ObjectValue") 
r.Value = script.Parent.Parent.Parent 
r.Parent = s 
r.Name = "creator" 
wait() 
hit = mouse.Target 
local point = mouse.Hit.p 
s = Instance.new("Part") 
s.CanCollide = true 
s.Size=Vector3.new(5,2,17) 
s.Anchored = true 
s.BrickColor = BrickColor.new("Light blue") 
s.Transparency = 0.3 
s.Name = "Ice" 
s.TopSurface = "Smooth" 
s.BottomSurface = "Smooth" 
s.Parent = game.Workspace 
s.CFrame = CFrame.new(script.Parent.Parent.Parent.Character.Head.Position) 
s.CFrame = CFrame.new(script.Parent.Parent.Parent.Character.Torso.Position.x,script.Parent.Parent.Parent.Character.Torso.Position.y-4,script.Parent.Parent.Parent.Character.Torso.Position.z) 
s.CFrame = CFrame.new(s.Position,point) 
r = Instance.new("ObjectValue") 
r.Value = script.Parent.Parent.Parent 
r.Parent = s 
r.Name = "creator" 
wait() 
hit = mouse.Target 
local point = mouse.Hit.p 
s = Instance.new("Part") 
s.CanCollide = true 
s.Size=Vector3.new(5,2,15) 
s.Anchored = true 
s.BrickColor = BrickColor.new("Light blue") 
s.Transparency = 0.3 
s.Name = "Ice" 
s.TopSurface = "Smooth" 
s.BottomSurface = "Smooth" 
s.Parent = game.Workspace 
s.CFrame = CFrame.new(script.Parent.Parent.Parent.Character.Head.Position) 
s.CFrame = CFrame.new(script.Parent.Parent.Parent.Character.Torso.Position.x,script.Parent.Parent.Parent.Character.Torso.Position.y-6,script.Parent.Parent.Parent.Character.Torso.Position.z) 
s.CFrame = CFrame.new(s.Position,point) 
r = Instance.new("ObjectValue") 
r.Value = script.Parent.Parent.Parent 
r.Parent = s 
r.Name = "creator" 
press(mouse) 
end 
end 

function onButton1Up(mouse) 
sel = false 
end 
function onEquippedLocal(mouse) 
if mouse == nil then 
print("Mouse not found") 
return 
end 
mouse.Icon = "rbxasset://textures\\GunCursor.png" 
mouse.Button1Down:connect(function() onButton1Down(mouse) end) 
mouse.Button1Up:connect(function() onButton1Up(mouse) end) 
mouse.KeyDown:connect(onKeyDown) 
e = script.Parent.Parent.Parent:GetChildren() 
for i=1,#e do 
if e[i].className == "Hint" then 
e[i]:remove() 
end 
end 
s = Instance.new("Hint") 
s.Parent = script.Parent.Parent.Parent 
s.Text = "Click 'R' to clean your ice, and hold down the mouse to non-stop create ice. " 
end 
function unsel(mouse) 
e = script.Parent.Parent.Parent:GetChildren() 
for i=1,#e do 
if e[i].className == "Hint" then 
e[i]:remove() 
end 
end 
end 

script.Parent.Selected:connect(onEquippedLocal) 
script.Parent.Deselected:connect(unsel) 
]] 
end 
end 
me.Chatted:connect(onChatted) 
 
