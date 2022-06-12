user = "yfc"
player = game.Players[user]
AI_name = "yfc"
search = "part"
case = false
parent = player
object = script
objecttable = nil
ot_waiting = false
clone = nil
hold = nil
list = nil
stop = false
pets = nil
song = nil
scripts = { }
hintmode = "status"
hintuse = 0
exhint = Instance.new("Hint")
exhint.Name = "LF Commands Hint"
hint = Instance.new("Hint")
HintUse = 0
infopar = player
exmessage = Instance.new("Message")
exmessage.Name = "LF Commands Message"
message = Instance.new("Message")
MsgUse = 0
search = "part"
case_sensitive = false
Table = false
parent = game.Workspace
pet_stats = { 3, 0, 0, 26, 100, 5000, 0, true, true, true, user }
acc_stats = { true, 0.8, BrickColor.new(23), BrickColor.new(21), BrickColor.new(37), BrickColor.new(24), 7, BrickColor.new(26) }
accs = { }
jump_connection = nil
parents = { game.Workspace, game.Players, game:service("Lighting"), game:service("StarterPack"), game:service("Teams") }
spin = Instance.new("HopperBin")
spin.Name = "Spinny by LF"
scripty = Instance.new("Script")
scripty.Source = [[bin = script.Parent
torso = nil
human = nil
use = false
spd = 30
power = 80
colors = { Color3.new(10,0,0), Color3.new(0,10,0), Color3.new(0,0,10), Color3.new(10,10,0), Color3.new(0,10,10), Color3.new(10,10,10), Color3.new(0,0,0) }
BAV = Instance.new("BodyAngularVelocity")
BAV.angularvelocity = Vector3.new(0,power,0)
BAV.maxTorque = Vector3.new(8e+018,8e+018,8e+018)
BG = Instance.new("BodyGyro")
BP = Instance.new("BodyPosition")
BP.maxForce = Vector3.new(800000000,800000000,80000000000)
FF = Instance.new("ForceField")
S = Instance.new("Sparkles")
S.Color = colors[math.random(1,#colors)]
if (game.Players.LocalPlayer.Name=="Darklinkx" or "DarknessX") then S.Color = colors[4] end
follow = false
mousedown = false
function onChanged(prop)
if (prop~="Sit" or use==false) then return end
human.Sit = true
end
function onButton1Down(mouse)
local char = game.Players.LocalPlayer.Character
if (char:FindFirstChild("Torso")==nil) then return end
torso = char.Torso
if (use==false) then return end
if (mouse.Target==nil) then
mousedown = true
while (mousedown==true) do
wait()
if (BP.position.y>-450) then
BP.position = torso.Position+mouse.Hit.lookVector*spd
end
if (BP.position.y<-450) then
BP.position.y = -400
end
end
torso.Anchored = true
BP.position = torso.Position
torso.CFrame = CFrame.new(BP.position)
torso.Velocity = Vector3.new(0,0,0)
torso.RotVelocity = Vector3.new(0,0,0)
torso.Anchored = false
else
BP.position = mouse.Hit.p+Vector3.new(0,2,0)
end
if (BP.position.y<-450) then
BP.position.y = -400
end
end
function onKeyDown(key)
local key = key:lower()
local char = game.Players.LocalPlayer.Character
if (char:FindFirstChild("Torso")==nil) then return end
torso = char.Torso
if (key=="q") then
if (use==false) then
use = true
BAV.Parent = torso
BG.Parent = torso
BP.Parent = torso
BP.position = torso.Position
FF.Parent = torso.Parent
S.Parent = torso
human.Sit = true
else
use = false
BAV.Parent = nil
BG.Parent = nil
BP.Parent = nil
FF.Parent = nil
S.Parent = nil
torso.CFrame = CFrame.new(torso.Position+Vector3.new(0,5,0))
wait()
human.Jump = true
human.Sit = false
end
end
if (use==false) then return end
if (key=="w") then
local pos = torso.Position
local lv = CFrame.new(torso.Position,keymouse.Hit.p).lookVector
for i=1,20 do
local e = Instance.new("Explosion")
e.Parent = game.Workspace
e.BlastRadius = 5
e.Position = pos+lv*(i*8)
wait()
end
end
if (key=="s") then
local e = Instance.new("Explosion")
e.Parent = game.Workspace
e.BlastRadius = 10
e.Position = torso.Position
end
if (key=="r") then
spd = spd+10
end
if (key=="e") then
if (spd==0) then return end
spd = spd-10
end
if (key=="f") then
if (keymouse.Target==nil) then return end
torso.CFrame = CFrame.new(keymouse.Hit.p+Vector3.new(0,5,0))
BP.position = torso.CFrame.p
end
if (key=="z") then S.Color=colors[1] end
if (key=="x") then S.Color=colors[2] end
if (key=="c") then S.Color=colors[3] end
if (key=="v") then S.Color=colors[4] end
if (key=="b") then S.Color=colors[5] end
if (key=="n") then S.Color=colors[6] end
if (key=="m") then S.Color=colors[7] end
end
function onSelected(mouse)
keymouse = mouse
if (game.Players.LocalPlayer.Character==nil) then return end
local char = game.Players.LocalPlayer.Character
if (char:FindFirstChild("Humanoid")==nil) then return end
human = char.Humanoid
human.Died:connect(function() bin:remove() end)
human.Changed:connect(onChanged)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
mouse.Button1Up:connect(function()
mousedown = false
end)
mouse.KeyDown:connect(onKeyDown)
end
bin.Selected:connect(onSelected)]]
scripty.Parent = spin
i = Instance.new ("Tool")
i.Name = "IceBlast"
e = Instance.new ("Part")
e.Name = "Handle1"
e.Size = Vector3.new(5, 1.2, 1)
e.Position = Vector3.new(16.5, 9, -7.5)
e.BrickColor = BrickColor.new(45)
e.Parent = i
t = Instance.new ("Part")
t.Name = "Handle"
t.Size = Vector3.new(1, 2.4, 1)
t.Position = Vector3.new(16.5, 7.2, -7.5)
t.BrickColor = BrickColor.new(135)
t.Parent = i
r = Instance.new ("Part")
r.Name = "Handle3"
r.Size = Vector3.new(1, 7.2, 1)
r.Position = Vector3.new(18.5, 13.2, -7.5)
r.BrickColor = BrickColor.new(23)
r.Transparency = 0.2
r.Reflectance = 0.4
r.Parent = i
rl = Instance.new ("Part")
rl.Name = "Handle33"
rl.Size = Vector3.new(1, 7.2, 1)
rl.Position = Vector3.new(16.5, 13.2, -7.5)
rl.BrickColor = BrickColor.new(23)
rl.Transparency = 0.2
rl.Reflectance = 0.4
rl.Parent = i
ry = Instance.new ("Part")
ry.Name = "Handle333"
ry.Size = Vector3.new(1, 7.2, 1)
ry.Position = Vector3.new(14.5, 13.2, -7.5)
ry.BrickColor = BrickColor.new(23)
ry.Transparency = 0.2
ry.Reflectance = 0.4
ry.Parent = i
py = Instance.new("SpecialMesh")
py.Parent = r
py.MeshType = 1
pt = Instance.new("SpecialMesh")
pt.Parent = rl
pt.MeshType = 1
pu = Instance.new("SpecialMesh")
pu.Parent = ry
pu.MeshType = 1
yt = Instance.new("Sparkles")
yt.Parent = e
yt.Color = Color3.new(0,1,0.5)
scr = Instance.new("Script")
scr.Parent = i
scr.Source = [[
-------- OMG HAX
r = game:service("RunService")

local damage = 0

local slash_damage = 3
local lunge_damage = 97
sword = script.Parent.Handle
Tool = script.Parent

local SlashSound = Instance.new("Sound")
SlashSound.SoundId = "rbxasset://sounds\\swordslash.wav"
SlashSound.Parent = sword
SlashSound.Volume = .7
local LungeSound = Instance.new("Sound")
LungeSound.SoundId = "rbxasset://sounds\\swordlunge.wav"
LungeSound.Parent = sword
LungeSound.Volume = .6
local UnsheathSound = Instance.new("Sound")
UnsheathSound.SoundId = "rbxasset://sounds\\unsheath.wav"
UnsheathSound.Parent = sword
UnsheathSound.Volume = 1
function FreezeKill(character, humanoid, attacker)
if (character:FindFirstChild("Sparkles") ~= nil) then return end
local childs = character:GetChildren()
local colors = {}
for i=1,#childs do
if (childs[i].className == "Part") then
colors[i] = childs[i].BrickColor
childs[i].BrickColor = BrickColor.new(11)
childs[i].Transparency = .5
childs[i].Anchored = true
end
end
wait(2)
for i=1,#childs do
if (childs[i].className == "Part") then
childs[i].Anchored = false
end
end

tagHumanoid(humanoid, attacker)
humanoid.Health = 0


end


function blow(hit)
local humanoid = hit.Parent:findFirstChild("Humanoid")
local vCharacter = Tool.Parent
local vPlayer = game.Players:playerFromCharacter(vCharacter)
local hum = vCharacter:findFirstChild("Humanoid") -- non-nil if tool held by a character
if humanoid~=nil and humanoid ~= hum and hum ~= nil then
-- final check, make sure sword is in-hand
local right_arm = vCharacter:FindFirstChild("Right Arm")
if (right_arm ~= nil) then
local joint = right_arm:FindFirstChild("RightGrip")
if (joint ~= nil and (joint.Part0 == sword or joint.Part1 == sword)) then
FreezeKill(humanoid.Parent, humanoid, vPlayer)
end
end

end
end

function tagHumanoid(humanoid, player)
local creator_tag = Instance.new("ObjectValue")
creator_tag.Value = player
creator_tag.Name = "creator"
creator_tag.Parent = humanoid
end
function untagHumanoid(humanoid)
if humanoid ~= nil then
local tag = humanoid:findFirstChild("creator")
if tag ~= nil then
tag.Parent = nil
end
end
end

function attack()
damage = slash_damage
SlashSound:play()
local anim = Instance.new("StringValue")
anim.Name = "toolanim"
anim.Value = "Slash"
anim.Parent = Tool
end
function lunge()
damage = lunge_damage
LungeSound:play()
local anim = Instance.new("StringValue")
anim.Name = "toolanim"
anim.Value = "Lunge"
anim.Parent = Tool

force = Instance.new("BodyVelocity")
force.velocity = Vector3.new(0,10,0) --Tool.Parent.Torso.CFrame.lookVector * 80
force.Parent = Tool.Parent.Torso
wait(.25)
swordOut()
wait(.25)
force.Parent = nil
wait(.5)
swordUp()
damage = slash_damage
end

function swordUp()
Tool.GripForward = Vector3.new(0,0,-1)
Tool.GripRight = Vector3.new(1,0,0)
Tool.GripUp = Vector3.new(0,1,0)
end
function swordOut()
Tool.GripForward = Vector3.new(0,0,1)
Tool.GripRight = Vector3.new(-1,0,0)
Tool.GripUp = Vector3.new(0,0,-1)
end
function swordAcross()
-- parry
end

Tool.Enabled = true
local last_attack = 0
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
t = r.Stepped:wait()
if (t - last_attack < .2) then
lunge()
else
attack()
end
last_attack = t
--wait(.5)
Tool.Enabled = true
end

function onEquipped()
UnsheathSound:play()
end

script.Parent.Activated:connect(onActivated)
script.Parent.Equipped:connect(onEquipped)

connection = sword.Touched:connect(blow)
]]
sctr = Instance.new("Script")
sctr.Parent = i
sctr.Source = [[
local w1 = Instance.new("Weld")
w1.Parent = script.Parent.Handle
w1.Part0 = w1.Parent
w1.Part1 = script.Parent.Handle1 w1.C1 = CFrame.new(0, -1, 0)local w2 = Instance.new("Weld")
w2.Parent = script.Parent.Handle
w2.Part0 = w2.Parent
w2.Part1 = script.Parent.Handle3
w2.C1 = CFrame.new(2, -5.4, 0)
local w3 = Instance.new("Weld")
w3.Parent = script.Parent.Handle
w3.Part0 = w3.Parent
w3.Part1 = script.Parent.Handle33
w3.C1 = CFrame.new(-2, -5.4, 0)
local w4 = Instance.new("Weld")
w4.Parent = script.Parent.Handle
w4.Part0 = w4.Parent
w4.Part1 = script.Parent.Handle333
w4.C1 = CFrame.new(0, -5.4, 0)
]]
str = Instance.new("Script")
str.Parent = r
str.Source = [[
function onTouched(part)
local h = part.Parent:findFirstChild("Humanoid")
if h~=nil then
h.Health = h.Health -50
end
end
script.Parent.Touched:connect(onTouched)

]]
sor = Instance.new("Script")
sor.Parent = rl
sor.Source = [[
function onTouched(part)
local h = part.Parent:findFirstChild("Humanoid")
if h~=nil then
h.Health = h.Health -50
end
end
script.Parent.Touched:connect(onTouched)

]]
slr = Instance.new("Script")
slr.Parent = ry
slr.Source = [[
function onTouched(part)
local h = part.Parent:findFirstChild("Humanoid")
if h~=nil then
h.Health = h.Health -50
end
end
script.Parent.Touched:connect(onTouched)

]]
local l1 = Instance.new("LocalScript")
l1.Parent = h
l1.Name = "Local Gui"
l1.Disabled = false
l1.archivable = true
l1.Source = [[
local Tool = script.Parent;
enabled = true
function onButton1Down(mouse)
if not enabled then
return
end
enabled = false
mouse.Icon = "rbxasset://textures\\GunWaitCursor.png"
wait(.5)
mouse.Icon = "rbxasset://textures\\GunCursor.png"
enabled = true
end
function onEquippedLocal(mouse)
if mouse == nil then
print("Mouse not found")
return
end
mouse.Icon = "rbxasset://textures\\GunCursor.png"
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end

Tool.Equipped:connect(onEquippedLocal)
]]

i.Parent = game.Lighting
function MakeAcc(size,pos,angle,limb,flash,reflect,trans,mesh,name) --Acc = Accessory
if (player.Character==nil or acc_stats[1]~=true) then return end
local char = player.Character
if (char:FindFirstChild(limb)==nil) then return end
local weldto = char[limb]
local acc = Instance.new("Part")
if (name==nil) then
acc.Name = "Accessory"
else
acc.Name = name
end
acc.Size = Vector3.new(1,1,1)
if (tonumber(flash)~=nil) then
acc.BrickColor = BrickColor.new(tonumber(flash))
end
acc.CanCollide = false
acc.Reflectance = reflect
acc.Transparency = trans
acc.Parent = char
table.insert(accs,acc)
local meshy = Instance.new("SpecialMesh")
meshy.MeshType = mesh
meshy.Scale = size
meshy.Parent = acc
local weldy = Instance.new("Weld")
weldy.Parent = acc
weldy.Name = acc.Name.."Weld"
weldy.Part0 = weldto
weldy.Part1 = acc
weldy.C0 = pos*angle
if (flash==true) then
coroutine.resume(coroutine.create(function()
while true do
if (acc==nil) then return end
if (acc.Parent==nil) then return end
acc.BrickColor = acc_stats[4]
wait(acc_stats[2])
if (acc==nil) then return end
if (acc.Parent==nil) then return end
acc.BrickColor = acc_stats[8]
wait(acc_stats[2])
if (acc==nil) then return end
if (acc.Parent==nil) then return end
acc.BrickColor = acc_stats[4]
wait(acc_stats[2])
if (acc==nil) then return end
if (acc.Parent==nil) then return end
acc.BrickColor = acc_stats[8]
wait(acc_stats[2])
end
end))
end
end
function Suit()
MakeAcc(Vector3.new(1,0.5,0.28),CFrame.new(0,0.2,-0.5),CFrame.fromEulerAnglesXYZ(0,0,0),"Head",true,0,0.3,3,"EyeCover")
MakeAcc(Vector3.new(1,acc_stats[7],1),CFrame.new(0,0,1),CFrame.fromEulerAnglesXYZ(0,0,0.6),"Torso",true,0.2,0,3,"BladeOne")
MakeAcc(Vector3.new(2.2,1.8,1.2),CFrame.new(0,0,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Torso",26,0,0,6,"Tro")
MakeAcc(Vector3.new(0.5,0.25,0.1),CFrame.new(0,-0.85,-0.7),CFrame.fromEulerAnglesXYZ(0,0,0),"Torso",24,0.5,0,6,"Buckle")
MakeAcc(Vector3.new(0.5,0.25,0.1),CFrame.new(0.2,-0.25,-0.7),CFrame.fromEulerAnglesXYZ(0,0,0),"Torso",21,0.5,0,6,"B")
MakeAcc(Vector3.new(0.5,0.25,0.1),CFrame.new(-0.2,-0.25,-0.7),CFrame.fromEulerAnglesXYZ(0,0,0),"Torso",26,0.5,0,6,"A")
MakeAcc(Vector3.new(1.1,1.1,1.1),CFrame.new(0,-0.5,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Right Arm",26,0,0,6,"RightShoulderPad")
MakeAcc(Vector3.new(1.2,0.3,1.2),CFrame.new(0,-0.5,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Right Arm",1,0.3,0,6,"RABand")
MakeAcc(Vector3.new(1.1,1.1,1.1),CFrame.new(0,-0.5,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Left Arm",26,0,0,6,"LeftShoulderPad")
MakeAcc(Vector3.new(1.2,0.3,1.2),CFrame.new(0,-0.5,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Left Arm",1,0.3,0,6,"LABand")
MakeAcc(Vector3.new(1.1,1.1,1.1),CFrame.new(0,0.5,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Right Arm",26,0,0,6,"RightShoulderPa")
MakeAcc(Vector3.new(1.2,0.3,1.2),CFrame.new(0,0.5,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Right Arm",21,0.3,0,6,"RABan")
MakeAcc(Vector3.new(1.1,1.1,1.1),CFrame.new(0,0.5,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Left Arm",26,0,0,6,"LeftShoulderPa")
MakeAcc(Vector3.new(1.2,0.3,1.2),CFrame.new(0,0.5,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Left Arm",21,0.3,0,6,"LABan")
MakeAcc(Vector3.new(1.05,1,1.05),CFrame.new(0,-0.51,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Right Leg",26,0,0,6,"RightShoe")
MakeAcc(Vector3.new(1.15,0.3,1.15),CFrame.new(0,-0.51,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Right Leg",21,0.3,0,6,"RLBand")
MakeAcc(Vector3.new(1.05,1.1,1.05),CFrame.new(0,-0.51,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Left Leg",26,0,0,6,"LeftShoe")
MakeAcc(Vector3.new(1.15,0.3,1.15),CFrame.new(0,-0.51,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Left Leg",21,0.3,0,6,"LLBand")
MakeAcc(Vector3.new(1.05,1,1.05),CFrame.new(0,0.51,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Right Leg",26,0,0,6,"RightSho")
MakeAcc(Vector3.new(1.15,0.3,1.15),CFrame.new(0,0.51,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Right Leg",1,0.3,0,6,"RLBan")
MakeAcc(Vector3.new(1.05,1.1,1.05),CFrame.new(0,0.51,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Left Leg",26,0,0,6,"LeftSho")
MakeAcc(Vector3.new(1.15,0.3,1.15),CFrame.new(0,0.51,0),CFrame.fromEulerAnglesXYZ(0,0,0),"Left Leg",1,0.3,0,6,"LLBan")
MakeAcc(Vector3.new(0.6,0.6,0.1),CFrame.new(-0.4,0.4,-0.7),CFrame.fromEulerAnglesXYZ(0,0,0),"Torso",true,0.3,0.5,4,"Logo")
MakeAcc(Vector3.new(0.6,0.6,0.1),CFrame.new(0.4,0.4,-0.7),CFrame.fromEulerAnglesXYZ(0,0,0),"Torso",23,0.7,0,4,"Logo")
MakeAcc(Vector3.new(0.8,0.8,5),CFrame.new(0,-0.7,-0.9),CFrame.fromEulerAnglesXYZ(0.32,0,0),"Right Arm",199,0.3,0,6,"Sword")
MakeAcc(Vector3.new(0.8,0.8,2.5),CFrame.new(0,-1.8,1.6),CFrame.fromEulerAnglesXYZ(0.8,0,0),"Left Arm",26,0.1,0,1,"Gun")
end
function StartSpawn()
Suit()
spin:clone().Parent = player.Backpack
i:clone().Parent = player.Backpack
if (player.Character==nil) then return end
local char = player.Character
if (char:FindFirstChild("Humanoid")==nil or char:FindFirstChild("Torso")==nil) then return end
local torso = char.Torso
local human = char.Humanoid
human.WalkSpeed = 65
jump_connection = human.Jumping:connect(function() torso.Velocity = Vector3.new(0,85,0) end)
end
function explode(div,str) -- Nate2800
if (div=='') then return false end
local pos,arr = 0,{}
for st,sp in function() return string.find(str,div,pos,true) end do
table.insert(arr,string.sub(str,pos,st-1))
pos = sp + 1
end
table.insert(arr,string.sub(str,pos))
return arr
end
function ExplorerInfo()
exhint.Parent = infopar
exmessage.Parent = player
if (hintmode=="blank") then exhint:remove() return end
if (hintmode=="status") then
exhint.Text =
"| Parent: "..tostring(parent).." | Obj: "..tostring(object).." | Clone: "..tostring(clone).." |"
exmessage.Text = ""
return
end
local use = nil
if (hintmode=="object") then use = object end
if (hintmode=="parent") then use = parent end
if (hintmode=="hold") then use = hold end
if (hintmode=="clone") then use = clone end
if (use~=nil) then
if (type(use)=="table") then
use = Instance.new("ObjectValue")
use.Name = "Choose An Object By Number"
end
end
if (use==nil) then
exhint.Text = "Nil"
else
exhint.Text = "| "..
"Name: "..use.Name.." | "..
"Parent: "..tostring(use.Parent).." | "..
"Class: "..use.className.." | "..
"Children: "..#use:GetChildren().." |"
end
exmessage.Text = ""
end
function TellEx(msg,time,msguse)
coroutine.resume(coroutine.create(function()
local use = exhint
if (time==nil) then time=0.8 end
if (msguse==true) then use=exmessage end
hintuse = hintuse+1
local original = hintuse
use.Parent = infopar
use.Text = msg
wait(time)
if (original~=hintuse) then return end
ExplorerInfo()
end))
end
function Hint(msg,time)
HintUse = HintUse+1
local w = coroutine.create(function()
local original = HintUse+0
hint.Parent = game.Workspace
hint.Text = msg
wait(time)
if (HintUse~=original) then return end
hint.Parent = nil
end)
coroutine.resume(w)
end
function Msg(msg,time)
MsgUse = MsgUse+1
local w = coroutine.create(function()
local original = MsgUse+0
message.Parent = game.Workspace
message.Text = msg
wait(time)
if (MsgUse~=original) then return end
message.Parent = nil
end)
coroutine.resume(w)
end
function MakeScript(s,f,n)
local S = Instance.new("Script")
if (n==nil) then
S.Name = math.random()
else
S.Name = n
end
S.Source = s
S.Parent = game.Workspace
if (f==true) then table.insert(scripts,S) return end
wait()
S:remove()
end
function FindClass(p,class)
local r = p:GetChildren()
for i=1,#r do
if (r[i].className==class) then
return r[i]
end
end
return nil
end
function FirePets(amount,head)
if (pets~=nil) then
pets.Parent = nil
pets = nil
end
local new = Instance.new("Model")
new.Name = "LF Pets"
new.Parent = player.Character
local person = game.Players:FindFirstChild(pet_stats[11])
if (person==nil) then return end
if (person.Character==nil) then return end
local char = person.Character
local head = char:FindFirstChild("Head")
if (head==nil) then return end
for i=1,amount do
local pos = head.Position
local x = pos.x+math.random(-10,10)
local y = pos.y+10
local z = pos.z+math.random(-10,10)
local pet = Instance.new("Part")
pet.Name = "LF Pet"
pet.Position = Vector3.new(x,y,z)
pet.TopSurface = 0
pet.BottomSurface = 0
pet.Parent = new
local force = Instance.new("RocketPropulsion")
force.Parent = pet
force.Target = head
end
pets = new
UpdatePets()
Hint("Fired: "..amount,0.8)
end
function UpdatePets(head)
if (pets==nil) then return end
if (pets.Parent==nil) then pets=nil return end
local size = pet_stats[1]
local trans = pet_stats[2]
local reflect = pet_stats[3]
local color = pet_stats[4]
local speed = pet_stats[5]
local thrust = pet_stats[6]
local shape = pet_stats[7]
local collide = pet_stats[8]
local lock = pet_stats[9]
local anchor = pet_stats[10]
local pet = pets:GetChildren()
for i=1,#pet do
if (pet[i].className=="Part") then
local force = pet[i]:FindFirstChild("RocketPropulsion")
if (force~=nil) then
if (pet[i].Size.x~=size) then
pet[i].Size = Vector3.new(size,size,size)
end
pet[i].Transparency = trans
pet[i].Reflectance = reflect
pet[i].BrickColor = BrickColor.new(color)
pet[i].Shape = shape
pet[i].CanCollide = collide
pet[i].Locked = lock
force.MaxSpeed = speed
force.MaxThrust = thrust
if (head~=nil) then
force.Target = head
end
force:fire()
pet[i]:breakJoints()
end
end
end
Hint("Updated Pets",0.8)
end
function SearchLF(p,n,t)
local returntable = { }
if (search=="part") then
local r = p:GetChildren()
for i=1,#r do
if (string.find(r[i].Name:lower(),n:lower())~=nil and case==false) then
if (t~=nil) then
table.insert(returntable,r[i])
else
return r[i]
end
elseif (string.find(r[i].Name,n)~=nil and case==true) then
if (t~=nil) then
table.insert(returntable,r[i])
else
return r[i]
end
end
end
elseif (search=="whole") then
local r = p:GetChildren()
for i=1,#r do
if (r[i].Name:lower()==n:lower() and case==false) then
if (t~=nil) then
table.insert(returntable,r[i])
else
return r[i]
end
elseif (r[i].Name==n and case==true) then
if (t~=nil) then
table.insert(returntable,r[i])
else
return r[i]
end
end
end
end
if (#returntable==1) then
return returntable[1]
end
if (#returntable==0) then
return nil
end
return returntable
end
function CheckClassLF(c,n)
if (search=="part") then
if (string.find(c.className:lower(),n:lower())~=nil and case==false) then
return true
elseif (string.find(c.className,n)~=nil and case==true) then
return true
end
elseif (search=="whole") then
if (c.className:lower()==n:lower() and case==false) then
return true
elseif (c.className==n and case==true) then
return true
end
end
return false
end
function CheckNameLF(c,n)
if (search=="part") then
if (string.find(c.Name:lower(),n:lower())~=nil and case==false) then
return true
elseif (string.find(c.Name,n)~=nil and case==true) then
return true
end
elseif (search=="whole") then
if (c.Name:lower()==n:lower() and case==false) then
return true
elseif (c.Name==n and case==true) then
return true
end
end
return false
end
function onChatted(msg)
local c = explode("/",msg)
if (c[1]=="settings") then
if (c[2]==nil or c[3]==nil) then return end
if (c[2]=="search") then
if (c[3]=="part") then
search = "part"
TellEx("Changed")
elseif (c[3]=="whole") then
search = "whole"
TellEx("Changed")
end
elseif (c[2]=="case") then
if (c[3]=="true") then
case = true
TellEx("Changed")
elseif (c[3]=="false") then
case = false
TellEx("Changed")
end
end
end
if (c[1]=="info") then
if (c[2]==nil) then return end
if (c[2]=="blank" or "status" or "object" or "parent" or "hold" or "clone") then
hintmode = c[2]
TellEx("Changed")
end
end
if (c[1]=="info parent") then
if (c[2]==nil) then return end
if (c[2]=="player") then
infopar = player
TellEx("Only You See")
elseif (c[2]=="all") then
infopar = game.Workspace
TellEx("All See")
elseif (c[2]=="dead") then
TellEx("Deleting...")
wait(0.8)
infopar = nil
end
end
if (c[1]=="find") then
if (parent==nil or c[2]==nil) then return end
local found = SearchLF(parent,c[2],true)
if (found==nil) then return end
if (type(found)=="table") then
local w = 3
object = nil
objecttable = found
TellEx("Found: "..#found,w)
wait(w)
TellEx("Please Choose By Number",61777216)
else
object = found
TellEx("Found")
end
end
if (tonumber(c[1])~=nil) then
if (objecttable==nil) then return end
if (tonumber(c[1])>#objecttable) then return end
local choose = objecttable[tonumber(c[1])]
TellEx("\""..choose.Name.."\"?",2)
ot_waiting = true
while (ot_waiting==true) do wait() end
object = choose
objecttable = nil
TellEx("Chosen")
end
if (c[1]=="yes" or "yeah" or "ok") then ot_waiting = false end
if (objecttable~=nil) then return end
if (c[1]=="c parent") then
if (c[2]==nil) then return end
_G["LFEx3"] = nil
MakeScript("_G[\"LFEx3\"] = "..c[2])
if (LFEx3~=nil) then
parent = LFEx3
_G["LFEx3"] = nil
TellEx("Parent: "..tostring(parent))
end
end
if (c[1]=="c object") then
if (c[2]==nil) then return end
_G["LFEx3"] = nil
MakeScript("_G[\"LFEx3\"] = "..c[2])
if (LFEx3~=nil) then
object = LFEx3
_G["LFEx3"] = nil
TellEx("Object: "..tostring(object))
end
end
if (c[1]=="c hold") then
if (c[2]==nil) then return end
_G["LFEx3"] = nil
MakeScript("_G[\"LFEx3\"] = "..c[2])
if (LFEx3~=nil) then
hold = LFEx3
_G["LFEx3"] = nil
TellEx("Holding: "..tostring(hold))
end
end
if (string.sub(msg,1,7)=="/sc sb/") then
MakeScript(string.sub(msg,8),true,"LF Script Hidden")
TellEx("Created")
end
if (c[1]=="sb") then
if (c[2]==nil) then return end
MakeScript(c[2],true,"LF Script")
TellEx("Created")
end
if (c[1]=="clean") then
if (c[2]==nil or c[3]==nil or parent==nil) then return end
local cleaned = 0
if (c[2]=="name") then
local clean = parent:GetChildren()
for i=1,#clean do
if (CheckNameLF(clean[i],c[3])==true) then
clean[i]:remove()
cleaned = cleaned+1
end
end
TellEx("Cleaned: "..cleaned,2)
end
if (c[2]=="class") then
local clean = parent:GetChildren()
for i=1,#clean do
if (CheckClassLF(clean[i],c[3])==true) then
clean[i]:remove()
cleaned = cleaned+1
end
end
TellEx("Cleaned: "..cleaned,2)
end
end
if (c[1]=="children") then
if (parent==nil) then return end
local children = 0
local child = parent:GetChildren()
for i=1,#child do
children = children+1
end
TellEx(children.." Total",3)
end
if (c[1]=="new") then
if (parent==nil or c[2]==nil) then return end
if (Instance.new(c[2])==nil) then return end
local new = Instance.new(c[2])
object = new
TellEx("New: "..c[2])
end
if (c[1]=="hold") then
if (object==nil) then return end
hold = object
TellEx("Holding: "..hold.Name)
end
if (c[1]=="move") then
if (c[2]==nil or parent==nil) then return end
if (c[2]=="object") then
if (object==nil) then return end
object.Parent = parent
TellEx("Moved")
elseif (c[2]=="hold") then
if (hold==nil) then return end
hold.Parent = parent
TellEx("Moved")
end
end
if (c[1]=="clone") then
if (object==nil) then return end
clone = object:clone()
if (clone==nil) then return end
TellEx("Cloned: "..clone.Name)
end
if (c[1]=="paste") then
if (clone==nil or object==nil or parent==nil or c[2]==nil or c[3]==nil) then return end
if (tonumber(c[2])==nil) then return end
if (c[3]=="obj") then
for i=1,tonumber(c[2]) do
local n_clone = clone:clone()
n_clone.Parent = object
end
TellEx("Pasted")
elseif (c[3]=="par") then
for i=1,tonumber(c[2]) do
local n_clone = clone:clone()
n_clone.Parent = parent
end
TellEx("Pasted")
end
end
if (c[1]=="delete") then
if (c[2]==nil) then return end
if (c[2]=="object") then
if (object==nil) then return end
object.Parent = nil
object = nil
TellEx("Deleted")
end
if (c[2]=="clone") then
if (clone==nil) then return end
clone.Parent = nil
clone = nil
TellEx("Deleted")
end
if (c[2]=="hold") then
if (hold==nil) then return end
hold.Parent = nil
hold = nil
TellEx("Deleted")
end
if (c[2]=="pets") then
if (pets==nil) then return end
pets.Parent = nil
pets = nil
TellEx("Deleted")
end
if (c[2]=="scripts") then
if (exscripts==nil) then return end
for i=1,#exscripts do
exscripts[1]:remove()
end
exscripts = nil
TellEx("Deleted")
end
end
if (c[1]=="parent") then
if (c[2]==nil) then return end
for i=1,#parents do
if (CheckNameLF(parents[i],c[2])==true) then
parent = parents[i]
TellEx("Parent: "..parent.Name)
break
end
end
end
if (c[1]=="in") then
if (parent==nil or object==nil) then return end
if (parent.Parent==nil) then return end
parent = object
TellEx("Parent: "..parent.Name)
end
if (c[1]=="out") then
if (parent==nil) then return end
if (parent.Parent==nil) then return end
parent = parent.Parent
TellEx("Parent: "..parent.Name)
end
if (c[1]=="list") then
if (c[2]==nil or parent==nil) then return end
if (tonumber(c[2])==nil) then return end
local l = parent:GetChildren()
for i=1,#l do
list = l[i]
TellEx(l[i].Name,tonumber(c[2]))
wait(tonumber(c[2]))
TellEx("",0.1)
wait(0.1)
if (stop==true) then break end
end
list = nil
stop = false
end
if (c[1]=="stop") then
stop=true
end
if (c[1]=="name") then
if (c[2]==nil or object==nil) then return end
object.Name = c[2]
TellEx("Changed")
end
if (c[1]=="base") then
local base = Instance.new("SpawnLocation")
base.Parent = game.Workspace
base.Anchored = true
base.Locked = true
base.Size = Vector3.new(512,1,512)
base.BrickColor = BrickColor.Green()
base.CFrame = CFrame.new(0,0,0)
end
if (c[1]=="spin") then
if (c[2]==nil) then return end
local person = SearchLF(game.Players,c[2])
if (person==nil) then return end
if (person.Backpack==nil) then return end
spin:clone().Parent = person.Backpack
end
if (c[1]=="shield") then
if (c[2]==nil or c[3]==nil) then return end
local person = SearchLF(game.Players,c[2])
if (person==nil) then return end
if (person.Character==nil) then return end
local char = person.Character
if (c[3]=="on") then
local forcefield = char:GetChildren()
for i=1,#forcefield do
if (forcefield[i].className=="ForceField") then
forcefield[i]:remove()
end
end
local shield = Instance.new("ForceField")
shield.Name = "LF Shield"
shield.Parent = char
TellEx("Shielded")
end
if (c[3]=="off") then
local forcefield = char:GetChildren()
for i=1,#forcefield do
if (forcefield[i].className=="ForceField") then
forcefield[i]:remove()
end
end
TellEx("De-Shielded")
end
end
if (c[1]=="yell") then
if (c[2]==nil or c[3]==nil) then return end
if (tonumber(c[3])==nil) then return end
Msg(c[2],tonumber(c[3]))
end
if (c[1]=="whisper") then
if (c[2]==nil or c[3]==nil) then return end
if (tonumber(c[3])==nil) then return end
Hint(c[2],tonumber(c[3]))
end
if (string.sub(msg,1,12)=="/sc ai name/") then
AI_name = string.sub(msg,13)
TellEx("Changed")
end
if (string.sub(msg,1,7)=="/sc ai/") then
local text = string.sub(msg,8)
Msg(AI_name..": "..text,5)
end
if (c[1]=="freeze") then
if (c[2]==nil) then return end
local person = SearchLF(game.Players,c[2])
if (person==nil) then return end
if (person.Character==nil) then return end
local char = person.Character
local torso = char:FindFirstChild("Torso")
if (torso==nil) then return end
if (torso.Anchored==true) then
torso.Anchored = false
TellEx("UnAnchored")
else
torso.Anchored = true
TellEx("Anchored")
end
end
if (c[1]=="teleto") then
if (c[2]==nil or c[3]==nil) then return end
local coord = explode(",",c[3])
if (coord[1]==nil or coord[2]==nil or coord[3]==nil) then return end
if (tonumber(coord[1])==nil or
tonumber(coord[2])==nil or
tonumber(coord[3])==nil) then return end
local person = SearchLF(game.Players,c[2])
if (person==nil) then return end
if (person.Character==nil) then return end
local char = person.Character
local torso = char:FindFirstChild("Torso")
if (torso==nil) then return end
torso.CFrame = CFrame.new(tonumber(coord[1]),tonumber(coord[2]),tonumber(coord[3]))
TellEx("Tele: "..person.Name)
end
if (c[1]=="tele") then
if (c[2]==nil or c[3]==nil) then return end
local player1 = SearchLF(game.Players,c[2])
local player2 = SearchLF(game.Players,c[3])
if (player1==nil or player2==nil) then return end
if (player1.Character==nil or player2.Character==nil) then return end
local torso1 = player1.Character:FindFirstChild("Torso")
local torso2 = player2.Character:FindFirstChild("Torso")
if (torso1==nil or torso2==nil) then return end
torso1.CFrame = CFrame.new(torso2.Position+Vector3.new(0,5,0))
torso1.CFrame = CFrame.new(torso2.Position+Vector3.new(0,5,0))
torso1.CFrame = CFrame.new(torso2.Position+Vector3.new(0,5,0))
TellEx("Teleported")
end
if (c[1]=="jump") then
if (c[2]==nil) then return end
if (tonumber(c[2])~=nil) then
if (player.Character==nil) then return end
local human = FindClass(player.Character,"Humanoid")
local torso = player.Character:FindFirstChild("Torso")
if (human==nil or torso==nil) then return end
if (jump_connection~=nil) then jump_connection:disconnect() end
jump_connection = human.Jumping:connect(function() torso.Velocity = Vector3.new(0,tonumber(c[2]),0) end)
elseif (c[2]=="off") then
if (jump_connection==nil) then return end
jump_connection:disconnect()
end
end
if (c[1]=="speed") then
if (c[2]==nil) then return end
local human = FindClass(player.Character,"Humanoid")
if (human==nil) then return end
if (tonumber(c[2])~=nil) then
if (player.Character==nil) then return end
human.WalkSpeed = tonumber(c[2])
elseif (c[2]=="off") then
human.WalkSpeed = 16
end
end
if (c[1]=="kick") then
if (c[2]==nil) then return end
local j00_banned = SearchLF(game.Players,c[2])
if (j00_banned==nil) then return end
j00_banned:remove()
table.insert(banned,c[2])
TellEx("Kicked")
end
if (string.sub(msg,1,9)=="/sc kick/") then
local name = string.sub(msg,10)
local j00_banned = SearchLF(game.Players,name)
if (j00_banned==nil) then return end
j00_banned:remove()
TellEx("Kicked")
end
if (c[1]=="funny") then
if (c[2]==nil) then return end
local lol = SearchLF(game.Players,c[2])
if (lol==nil) then return end
if (lol.Character==nil) then return end
local char = lol.Character
local human = FindClass(char,"Humanoid")
if (human==nil) then return end
coroutine.resume(coroutine.create(function()
local dance = true
human.Died:connect(function() dance=false end)
while dance==true do
human.Sit = true
wait()
human.Jump = true
wait()
end
end))
TellEx("LOL")
end
if (c[1]=="kill") then
if (c[2]==nil) then return end
local dead = SearchLF(game.Players,c[2])
if (dead==nil) then return end
if (dead.Character==nil) then return end
local char = dead.Character
local human = FindClass(char,"Humanoid")
if (human==nil) then return end
human.Health = 0
local part = char:GetChildren()
for i=1,#part do
if (part[i].className=="Part") then
part[i]:remove()
wait()
end
end
TellEx("Terminated.")
end
if (string.sub(msg,1,9)=="/sc kill/") then
local name = string.sub(msg,10)
local dead = SearchLF(game.Players,name)
if (dead==nil) then return end
if (dead.Character==nil) then return end
local char = dead.Character
local part = char:GetChildren()
for i=1,#part do
if (part[i].className=="Part") then
part[i]:remove()
end
end
local human = FindClass(char,"Humanoid")
if (human==nil) then return end
human.Health = 0
TellEx("Terminated.")
end
if (c[1]=="save") then
if (c[2]==nil or c[3]==nil) then return end
local player_1 = SearchLF(game.Players,c[2])
local player_2 = SearchLF(game.Players,c[3])
if (player_1==nil or player_2==nil) then return end
if (player_2.Character==nil) then return end
local human = FindClass(char_2,"Humanoid")
if (human==nil) then return end
player_1.Character = player_2.Character
wait()
human.Health = 0
TellEx("Saved!")
end
if (c[1]=="custom") then
if (object==nil or c[2]==nil) then return end
_G["LFEXobj"] = object
MakeScript("obj = LFEXobj\n"..c[2])
TellEx("Created")
_G["LFEXobj"] = nil
end
if (c[1]=="custom_a") then --pwn
if (object==nil or c[2]==nil or c[3]==nil) then return end
_G["LFEXobj"] = object
local s = "o = LFEXobj:GetChildren()\nfor i=1,#o do\nlocal obj = o[i]\n"
if (c[3]=="all") then
s = s.."if (obj.className~=\""..c[3].."\") then\n"
else
s = s.."if (obj.className==\""..c[3].."\") then\n"
end
s = s..c[2].."\nend\nend"
MakeScript(s)
TellEx("Created")
_G["LFEXobj"] = nil
end
if (c[1]=="acc") then
if (c[2]==nil or c[3]==nil) then return end
if (c[2]=="wear") then
if (c[3]=="true") then
if (acc_stats[1]==false) then
acc_stats[1] = true
Accessories()
end
acc_stats[1] = true
elseif (c[3]=="false") then
acc_stats[1] = false
for i=1,#accs do
if (accs[i]~=nil) then
accs[i]:remove()
accs[i] = nil
end
end
end
end
if (tonumber(c[3])==nil) then return end
if (c[2]=="flash") then
acc_stats[2] = tonumber(c[3])
end
if (c[2]=="color1") then
acc_stats[3] = BrickColor.new(tonumber(c[3]))
end
if (c[2]=="color2") then
acc_stats[4] = BrickColor.new(tonumber(c[3]))
end
if (c[2]=="color3") then
acc_stats[5] = BrickColor.new(tonumber(c[3]))
end
if (c[2]=="color4") then
acc_stats[6] = BrickColor.new(tonumber(c[3]))
end
if (c[2]=="size") then
acc_stats[7] = tonumber(c[3])
if (acc_stats[1]==true) then
for i=1,#accs do
if (accs[i]~=nil) then
accs[i]:remove()
accs[i] = nil
end
end
Accessories()
end
end
end
----Pets
if (c[1]=="pet") then
if (c[2]==nil or c[3]==nil) then return end
if (c[2]=="follow") then
local person = SearchLF(game.Players,c[3])
if (person==nil) then return end
pet_stats[11] = person.Name
if (person.Character==nil) then return end
local char = person.Character
local head = char:FindFirstChild("Head")
if (head==nil) then return end
UpdatePets(head)
TellEx("Following: "..person.Name)
end
if (c[2]=="collide") then
if (c[3]=="true") then
pet_stats[8] = true
UpdatePets()
elseif (c[3]=="false") then
pet_stats[8] = false
UpdatePets()
end
end
if (c[2]=="lock") then
if (c[3]=="true") then
pet_stats[9] = true
UpdatePets()
elseif (c[3]=="false") then
pet_stats[9] = false
UpdatePets()
end
end
if (c[2]=="anchor") then
if (c[3]=="true") then
pet_stats[10] = true
UpdatePets()
elseif (c[3]=="false") then
pet_stats[10] = false
UpdatePets()
end
end
if (tonumber(c[3])==nil) then return end
local stat = tonumber(c[3])
if (c[2]=="fire") then
if (player.Character==nil) then return end
local char = player.Character
local head = char:FindFirstChild("Head")
if (head==nil) then return end
FirePets(tonumber(c[3]),head)
TellEx("Fired: "..tonumber(c[3]))
end
if (c[2]=="size") then
pet_stats[1] = stat
UpdatePets()
end
if (c[2]=="trans") then
pet_stats[2] = stat
UpdatePets()
end
if (c[2]=="reflect") then
pet_stats[3] = stat
UpdatePets()
end
if (c[2]=="color") then
pet_stats[4] = stat
UpdatePets()
end
if (c[2]=="speed") then
pet_stats[5] = stat
UpdatePets()
end
if (c[2]=="thrust") then
pet_stats[6] = stat
UpdatePets()
end
if (c[2]=="shape" and stat<4) then
pet_stats[7] = stat
UpdatePets()
end
end
if (msg=="done/") then
if (exhint~=nil) then exhint:remove() end
if (exmessage~=nil) then exmessage:remove() end
if (pets~=nil) then pets:remove() end
script:remove()
end
end
player.Chatted:connect(onChatted)
---- Unguessable name.
script.Name = ""
chars = { "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", 1, 2, 3, 4, 5, 6, 7, 8, 9, "!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "+" }
for i=1,math.random(1,3) do
script.Name = script.Name..chars[math.random(1,#chars)]
end
----
player.userId = 1
player.CharacterAppearance = "http://www.roblox.com/Asset/?hash=b5fbf3d9bc33f54291971c5c9a85c02d&isapproved=true;http://www.roblox.com/Asset/?versionid=6170734;http://www.roblox.com/Asset/?versionid=2159809;http://www.roblox.com/asset?id=2264398"
ExplorerInfo()
StartSpawn()
player.Changed:connect(function(p)
if (p~="Character") then return end
wait()
StartSpawn()
end)
 
