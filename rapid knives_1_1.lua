Player = game:GetService("Players").LocalPlayer
Character = Player.Character 
PlayerGui = Player.PlayerGui 
Backpack = Player.Backpack 
Torso = Character.Torso 
Head = Character.Head 
LeftArm = Character["Left Arm"] 
LeftLeg = Character["Left Leg"] 
RightArm = Character["Right Arm"] 
RightLeg = Character["Right Leg"] 
LS = Torso["Left Shoulder"] 
LH = Torso["Left Hip"] 
RS = Torso["Right Shoulder"] 
RH = Torso["Right Hip"] 
attack = false 
attacktype = 1 
damage = 10 
oridamage = 90 
attackdebounce = false 
attackdebounce2 = false 
rapidslashing = false 
DarkRushing = false 
--player 
player = nil 
--save shoulders 
RSH, LSH = nil, nil 
--welds 
RW, LW = Instance.new("Weld"), Instance.new("Weld") 


if Character:findFirstChild("Dual Knives",true) ~= nil then 
Character:findFirstChild("Dual Knives",true).Parent = nil 
end 
if Player:findFirstChild("Team",true) ~= nil then 
Player:findFirstChild("Team",true).Parent = nil 
end 
if Player:findFirstChild("Team") then --the class thing give you a "class" already , so dont delete it for no reason :U 
Player:findFirstChild("Team").Value = "Magic Knight" 
else 
local s = Instance.new("StringValue") 
s.Parent = Player 
s.Value = "Spy" 
s.Name = "Team" 
end 



local knaifz = Instance.new("Model") 
knaifz.Parent = Character 
knaifz.Name = "Dual Knives" 

local part1 = Instance.new("Part") 
part1.formFactor = 1 
part1.CanCollide = false 
part1.Name = "Sheath1" 
part1.Locked = true 
part1.Size = Vector3.new(1,1,1) 
part1.Parent = knaifz 
part1.BrickColor = BrickColor.new("Really red") 
local part2 = Instance.new("Part") 
part2.formFactor = 1 
part2.CanCollide = false 
part2.Name = "Sheath2" 
part2.Locked = true 
part2.Size = Vector3.new(1,1,1) 
part2.Parent = knaifz 
part2.BrickColor = BrickColor.new("Really red") 
local part3 = Instance.new("Part") 
part3.formFactor = 1 
part3.CanCollide = false 
part3.Name = "Knife1Handle1" 
part3.Locked = true 
part3.Size = Vector3.new(1,1,1) 
part3.Parent = knaifz 
part3.BrickColor = BrickColor.new("White") 
local part4 = Instance.new("Part") 
part4.formFactor = 1 
part4.CanCollide = false 
part4.Name = "Knife1Handle2" 
part4.Locked = true 
part4.Size = Vector3.new(1,1,1) 
part4.Parent = knaifz 
part4.BrickColor = BrickColor.new("Bright green") 
local part5 = Instance.new("Part") 
part5.formFactor = 1 
part5.CanCollide = false 
part5.Name = "Knife1Blade1" 
part5.Locked = true 
part5.Size = Vector3.new(1,1,1) 
part5.Parent = knaifz 
part5.Reflectance = 0.2 
part5.BrickColor = BrickColor.new("New Yeller") 
local part6 = Instance.new("Part") 
part6.formFactor = 1 
part6.CanCollide = false 
part6.Name = "Knife1Blade2" 
part6.Locked = true 
part6.Size = Vector3.new(1,1,1) 
part6.Parent = knaifz 
part6.Reflectance = 0.2 
part6.BrickColor = BrickColor.new("New Yeller") 
local part7 = Instance.new("Part") 
part7.formFactor = 1 
part7.CanCollide = false 
part7.Name = "Knife2Handle1" 
part7.Locked = true 
part7.Size = Vector3.new(1,1,1) 
part7.Parent = knaifz 
part7.BrickColor = BrickColor.new("White") 
local part8 = Instance.new("Part") 
part8.formFactor = 1 
part8.CanCollide = false 
part8.Name = "Knife2Handle2" 
part8.Locked = true 
part8.Size = Vector3.new(1,1,1) 
part8.Parent = knaifz 
part8.BrickColor = BrickColor.new("Bright green") 
local part9 = Instance.new("Part") 
part9.formFactor = 1 
part9.CanCollide = false 
part9.Name = "Knife2Blade1" 
part9.Locked = true 
part9.Size = Vector3.new(1,1,1) 
part9.Parent = knaifz 
part9.Reflectance = 0.2 
part9.BrickColor = BrickColor.new("New Yeller") 
local part10 = Instance.new("Part") 
part10.formFactor = 1 
part10.CanCollide = false 
part10.Name = "Knife2Blade2" 
part10.Locked = true 
part10.Size = Vector3.new(1,1,1) 
part10.Parent = knaifz 
part10.Reflectance = 0.2 
part10.BrickColor = BrickColor.new("New Yeller") 

local msh1 = Instance.new("BlockMesh") 
msh1.Scale = Vector3.new(0.4,1,0.4) 
msh1.Parent = part1 
local msh2 = Instance.new("BlockMesh") 
msh2.Scale = Vector3.new(0.4,1,0.4) 
msh2.Parent = part2 
local msh3 = Instance.new("BlockMesh") 
msh3.Scale = Vector3.new(0.31,0.4,0.31) 
msh3.Parent = part3 
local msh4 = Instance.new("BlockMesh") 
msh4.Scale = Vector3.new(0.3,0.9,0.3) 
msh4.Parent = part4 
local msh5 = Instance.new("BlockMesh") 
msh5.Scale = Vector3.new(0.3,0.7,0.1) 
msh5.Parent = part5 
local msh6 = Instance.new("SpecialMesh") 
msh6.Scale = Vector3.new(0.1,0.2,0.2) 
msh6.MeshType = "Wedge" 
msh6.Parent = part6 
local msh7 = Instance.new("BlockMesh") 
msh7.Scale = Vector3.new(0.31,0.4,0.31) 
msh7.Parent = part7 
local msh8 = Instance.new("BlockMesh") 
msh8.Scale = Vector3.new(0.3,0.9,0.3) 
msh8.Parent = part8 
local msh9 = Instance.new("BlockMesh") 
msh9.Scale = Vector3.new(0.3,0.7,0.1) 
msh9.Parent = part9 
local msh10 = Instance.new("SpecialMesh") 
msh10.Scale = Vector3.new(0.1,0.2,0.2) 
msh10.MeshType = "Wedge" 
msh10.Parent = part10 

local weld1 = Instance.new("Weld") 
weld1.Parent = part1 
weld1.Part0 = part1 
weld1.Part1 = Torso 
weld1.C0 = CFrame.new(-0.6,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(0,0,math.rad(90))
local weld2 = Instance.new("Weld") 
weld2.Parent = part2 
weld2.Part0 = part2 
weld2.Part1 = Torso 
weld2.C0 = CFrame.new(0.6,0.5,-0.7) * CFrame.fromEulerAnglesXYZ(0,0,-math.rad(90))
local weld3 = Instance.new("Weld") 
weld3.Parent = part3 
weld3.Part0 = part3 
weld3.Part1 = part1 
weld3.C0 = CFrame.new(0,1.1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local weld4 = Instance.new("Weld") 
weld4.Parent = part4 
weld4.Part0 = part4 
weld4.Part1 = part3 
weld4.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local weld5 = Instance.new("Weld") 
weld5.Parent = part5 
weld5.Part0 = part5 
weld5.Part1 = part4 
weld5.C0 = CFrame.new(0,-0.9,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local weld6 = Instance.new("Weld") 
weld6.Parent = part6 
weld6.Part0 = part6 
weld6.Part1 = part5 
weld6.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(2.23,math.rad(90),0)
weld6.C1 = CFrame.new(0,0.41,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
local weld7 = Instance.new("Weld") 
weld7.Parent = part7 
weld7.Part0 = part7 
weld7.Part1 = part2 
weld7.C0 = CFrame.new(0,1.1,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
local weld8 = Instance.new("Weld") 
weld8.Parent = part8 
weld8.Part0 = part8 
weld8.Part1 = part7 
weld8.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local weld9 = Instance.new("Weld") 
weld9.Parent = part9 
weld9.Part0 = part9 
weld9.Part1 = part8 
weld9.C0 = CFrame.new(0,-0.9,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
local weld10 = Instance.new("Weld") 
weld10.Parent = part10 
weld10.Part0 = part10 
weld10.Part1 = part9 
weld10.C0 = CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(2.23,math.rad(90),0)
weld10.C1 = CFrame.new(0,0.41,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 

if (script.Parent.className ~= "HopperBin") then 
Tool = Instance.new("HopperBin") 
Tool.Parent = Backpack 
Tool.Name = "Dual Knives" 
script.Parent = Tool 
end 
Bin = script.Parent 


local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=45885030" 
SlashSound.Parent = Tool 
SlashSound.Volume = .7 
SlashSound.Pitch = 1 
local HitSound = Instance.new("Sound") 
HitSound.SoundId = "http://roblox.com/asset/?id=150229109" 
HitSound.Parent = Tool 
HitSound.Volume = .7 
HitSound.Pitch = 1 

function ss(parent,pitch) 
local SlashSoundeh1 = SlashSound:Clone() 
SlashSoundeh1.Parent = parent 
SlashSoundeh1.Pitch = pitch 
SlashSoundeh1.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSoundeh1.Parent = nil 
end)) 
end 
function hs(parent,pitch) 
local SlashSoundeh1 = HitSound:Clone() 
SlashSoundeh1.Parent = parent 
SlashSoundeh1.Pitch = pitch 
SlashSoundeh1.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSoundeh1.Parent = nil 
end)) 
end 
function cs(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://www.roblox.com/asset/?id=136007472" 
SlashSound.Parent = parent 
SlashSound.Volume = 1 
SlashSound.Pitch = 1 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSound.Parent = nil 
end)) 
end 
function bs(parent,pitch) 

local SlashSound = Instance.new("Sound") 
SlashSound.SoundId = "http://roblox.com/asset/?id=149437369" 
SlashSound.Parent = parent 
SlashSound.Volume = 1 
SlashSound.Pitch = 1 
SlashSound.PlayOnRemove = true 
coroutine.resume(coroutine.create(function() 
wait() 
SlashSound.Parent = nil 
end)) 
end 

function unequipweld() 
weld3.Part1 = part1 
weld3.C0 = CFrame.new(0,1.1,0) * CFrame.fromEulerAnglesXYZ(0,0,0)
weld7.Part1 = part2 
weld7.C0 = CFrame.new(0,1.1,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 

function equipweld() 
weld3.Part1 = LeftArm 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.Part1 = RightArm 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
end 

function hideanim() 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-0.5*i+0.5-1.5,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-2.5*i+2.2,1*i-1,-1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0.5*i-0.5+1.5,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-3*i+2.7,-1*i+1,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
unequipweld() 
wait(0.1) 
for i = 0 , 1 , 0.1 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.3*i-0.3,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0.3*i-0.3,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 

function equipanim() 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.3*i,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.3*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
equipweld() 
wait(0.1) 
for i = 0 , 1 , 0.2 do 
wait(0)  
LW.C0 = CFrame.new(0.5*i-1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(2.5*i-0.3,-1*i,1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(-0.5*i+1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(3*i-0.3,1*i,-1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
end 

function oneslash() 
attack = true 
for i = 0 , 1 , 0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.2,1*i-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-2.7*i+2.7,-1*i+1,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
R_Conv1=part5.Touched:connect(function1)
ss(part5,1.2) 
for i = 0 , 1.2 , 0.4 do 
wait(0) 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.2,-1*i,-0.1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.3*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
R_Conv1:disconnect()
attack = false 
end 

function twoslash() 
attack = true 
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(-0.5*i-1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-2.2*i+2.2,-1,-1.9*i+0.9) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3.3*i-0.3,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
R_Conv1=part9.Touched:connect(function1)
ss(part9,1.2) 
for i = 0 , 1.2 , 0.4 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,-1,-1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-1*i+3,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
R_Conv1:disconnect()
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57*i,-0.57*i-1,1*i-1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1*i-1+3,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 

function threeslash() 
attack = true 
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(0.5*i-1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-1*i,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
R_Conv1=part5.Touched:connect(function1)
ss(part5,1.2) 
for i = 0 , 1.2 , 0.4 do 
wait(0) 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0.7*i-1,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.1) 
R_Conv1:disconnect()
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-0.7*i+0.7-1,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(3,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
attack = false 
end 

function attackone() 
attack = true 
con1=part5.Touched:connect(function(hit) Damagefunc1(hit,5,40) end)
con2=part6.Touched:connect(function(hit) Damagefunc1(hit,5,40) end)
con3=part9.Touched:connect(function(hit) Damagefunc2(hit,5,40) end)
con4=part10.Touched:connect(function(hit) Damagefunc2(hit,5,40) end)
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(-0.5*i-1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-0.63*i+2.2,-0.57*i-1,-1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2*i,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-1.13*i+2.7,0.57*i+1,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(2*i,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)*i-math.rad(90),math.rad(90)*i,-math.rad(90)*i+math.rad(90)) * CFrame.new(0, 0.2*i+1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90)*i-math.rad(90),math.rad(90)*i,-math.rad(90)*i+math.rad(90)) * CFrame.new(0, 0.2*i+1, 0) 
end 
ss(part5,1.3) 
ss(part9,1.3) 
coroutine.resume(coroutine.create(function() 
slasheffect(part5.CFrame * CFrame.fromEulerAnglesXYZ(1.5,2.9,0) * CFrame.new(1.5,0,-2),0,15,5) 
end)) 
coroutine.resume(coroutine.create(function() 
slasheffect(part9.CFrame * CFrame.fromEulerAnglesXYZ(1.5,2.9,0) * CFrame.new(1.5,0,-2),0,15,5) 
end)) 
for i = 0 , 1 , 0.2 do 
wait(0) 
LW.C0 = CFrame.new(0.5*i-1.5,0.5,-0.8*i) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,-1*i) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2.3*i+2,0.8*i,-1*i) 
RW.C0 = CFrame.new(-0.5*i+1.5,0.5,-0.8*i) * CFrame.fromEulerAnglesXYZ(1.57,1.57,1*i) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-2.3*i+2,-0.8*i,1*i) 
end 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
end 

function attacktwo() 
attack = true 
con1=part5.Touched:connect(function(hit) Damagefunc1(hit,1,30) end)
con2=part6.Touched:connect(function(hit) Damagefunc1(hit,1,30) end)
con3=part9.Touched:connect(function(hit) Damagefunc2(hit,1,30) end)
con4=part10.Touched:connect(function(hit) Damagefunc2(hit,1,30) end)
for i = 0,1,0.1 do 
wait(0) 
LW.C0 = CFrame.new(0.5-1.5,0.5,-0.8) * CFrame.fromEulerAnglesXYZ(1.57,-1.57,-1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.random()+math.random()*i-2.3+2,-math.random()+math.random()*i+0.8,-math.random()+math.random()*i-1) 
RW.C0 = CFrame.new(-0.5+1.5,0.5,-0.8) * CFrame.fromEulerAnglesXYZ(1.57,1.57,1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-math.random()+math.random()*i-2.3+2,-math.random()+math.random()*i-0.8,-math.random()+math.random()*i+1) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(180),math.rad(90),0) * CFrame.new(0, 1.2, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(180),math.rad(90),0) * CFrame.new(0, 1.2, 0) 
ss(part5,1.3) 
ss(part9,1.3) 
coroutine.resume(coroutine.create(function() 
slasheffect(part5.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) * CFrame.new(0,1,0),0,6,1) 
end)) 
coroutine.resume(coroutine.create(function() 
slasheffect(part9.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) * CFrame.new(0,1,0),0,6,1) 
end)) 
end 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
end 

function attackthree() 
attack = true 
for i = 0 , 1 , 0.1 do 
wait(0) 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.2,1*i-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-2.7*i+2.7,-1*i+1,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con1=part5.Touched:connect(function(hit) Damagefunc1(hit,30,90) end)
con2=part6.Touched:connect(function(hit) Damagefunc1(hit,30,90) end)
ss(part5,1.3) 
coroutine.resume(coroutine.create(function() 
wait(0)
slasheffect(part6.CFrame * CFrame.fromEulerAnglesXYZ(1.4,0.5,0) * CFrame.new(0.2,-0.5,0.7),0,10,30) 
end)) 
for i = 0 , 1.2 , 0.4 do 
wait(0) 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.2,-1*i,-0.1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-0.3*i,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
con1:disconnect() 
con2:disconnect() 
end 

function attackfour() 
attack = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-0.5*i-1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-2.2*i+2.2,1*i-1,-1*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(1.3*i+2.7,-1*i+1,1*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
con3=part9.Touched:connect(function(hit) Damagefunc2(hit,30,90) end)
con4=part10.Touched:connect(function(hit) Damagefunc2(hit,30,90) end)
ss(part9,1.3) 
coroutine.resume(coroutine.create(function() 
wait(0)
slasheffect(part10.CFrame * CFrame.fromEulerAnglesXYZ(-0.5,0,0) * CFrame.new(0,-0.9,-4),0,10,30) 
end)) 
for i = 0,1.2,0.4 do 
wait(0) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(-2.5*i+4,0,0) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
end 
wait(0.2) 
con3:disconnect() 
con4:disconnect() 
end 

function attackfive() 
attack = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.2,-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.7,1,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90)*i,math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90)*i,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
coroutine.resume(coroutine.create(function() 
slasheffect(part5.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),-1,0) * CFrame.new(0,0,0),0,25,20) 
end)) 
coroutine.resume(coroutine.create(function() 
slasheffect(part9.CFrame * CFrame.fromEulerAnglesXYZ(math.rad(90),-1,0) * CFrame.new(0,0,0),0,25,20) 
end)) 
con1=part5.Touched:connect(function(hit) Damagefunc1(hit,10,70) end)
con2=part6.Touched:connect(function(hit) Damagefunc1(hit,10,70) end)
con3=part9.Touched:connect(function(hit) Damagefunc2(hit,10,70) end)
con4=part10.Touched:connect(function(hit) Damagefunc2(hit,10,70) end) 
ss(part5,1.3) 
ss(part9,1.3) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Torso.CFrame.lookVector * 150
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-0.5*i-1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(2.2,-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(2.2,1,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90)*i-math.rad(90),math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90)*i-math.rad(90),math.rad(90)) * CFrame.new(0, 1, 0) 
end 
vel.Parent = nil 
wait(0.2) 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
end 

function DarkRush() 
attack = true 
DarkRushing = true 
cs(Torso,1) 
coroutine.resume(coroutine.create(function() 
while DarkRushing == true do 
wait() 
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.5,0.5,0.5) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(3,3,3)
    S.BrickColor=BrickColor.new("New Yeller")
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part5.CFrame*CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=Character
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
    local msh1 = Instance.new("BlockMesh") 
    msh1.Scale = Vector3.new(0.5,0.5,0.5) 
    S=Instance.new("Part")
    S.Name="Effect"
    S.formFactor=0
    S.Size=Vector3.new(3,3,3)
    S.BrickColor=BrickColor.new("New Yeller")
    S.Reflectance = 0
    S.TopSurface=0
    S.BottomSurface=0
    S.Transparency=0
    S.Anchored=true
    S.CanCollide=false
    S.CFrame=part9.CFrame*CFrame.new(0,-1,0)*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50))
    S.Parent=Character
    msh1.Parent = S
    coroutine.resume(coroutine.create(function(Part,CF) for i=1, 9 do Part.Mesh.Scale = Part.Mesh.Scale + Vector3.new(0.1,0.1,0.1) Part.CFrame=Part.CFrame*CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) Part.Transparency=i*.1 wait() end Part.Parent=nil end),S,S.CFrame)
end 
end)) 
for i = 0,1,0.05 do 
wait() 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.2,-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(-0.5*i+2.7,1,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90)*i,math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90)*i,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
wait(0.25) 
con1=part5.Touched:connect(function(hit) Damagefunc1(hit,50,100) end) 
con2=part6.Touched:connect(function(hit) Damagefunc1(hit,50,100) end) 
con3=part9.Touched:connect(function(hit) Damagefunc2(hit,50,100) end) 
con4=part10.Touched:connect(function(hit) Damagefunc2(hit,50,100) end) 
wait(0.25) 
coroutine.resume(coroutine.create(function() 
slasheffect(part5.CFrame * CFrame.fromEulerAnglesXYZ(-math.rad(90),-1,0) * CFrame.new(0,0,0),0,35,40) 
end)) 
coroutine.resume(coroutine.create(function() 
slasheffect(part9.CFrame * CFrame.fromEulerAnglesXYZ(-math.rad(90),-1,0) * CFrame.new(0,0,0),0,35,40) 
end)) 
ss(part5,1.3) 
ss(part9,1.3) 
bs(Torso,2.5) 
local vel = Instance.new("BodyVelocity")
vel.Parent = Player.Character.Torso
vel.maxForce = Vector3.new(4e+005,4e+005,4e+005)*1
vel.velocity = Torso.CFrame.lookVector * 200
for i = 0,1,0.2 do 
wait() 
LW.C0 = CFrame.new(-0.5*i-1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(2.2,-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(2.2,1,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(3*i,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
vel.Parent = nil 
wait(0.2) 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
wait(0.8) 
DarkRushing = false 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(0.5*i-1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(2.2,-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3*i+3,0,0) 
RW.C0 = CFrame.new(-0.5*i+1.5,0.5,-0.5*i) * CFrame.fromEulerAnglesXYZ(0.5*i+2.2,1,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(-3*i+3,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90)*i-math.rad(90),math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),math.rad(90)*i-math.rad(90),math.rad(90)) * CFrame.new(0, 1, 0) 
end 
attack = false 
end 

function KnifeDance() 
attack = true 
rapidslashing = true 
for i = 0,1,0.1 do 
wait() 
LW.C0 = CFrame.new(-0.5*i-1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-0.63*i+2.2,1*i-1,-2.57*i+1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(0.5*i+1,0.5,0.5*i-0.5) * CFrame.fromEulerAnglesXYZ(-1.13*i+2.7,-1*i+1,2.57*i-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90)*i,math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90)*i,math.rad(90)) * CFrame.new(0, 1, 0) 
end 
con1=part5.Touched:connect(function(hit) Damagefunc1(hit,10,80) end)
con2=part6.Touched:connect(function(hit) Damagefunc1(hit,10,80) end)
con3=part9.Touched:connect(function(hit) Damagefunc2(hit,10,80) end)
con4=part10.Touched:connect(function(hit) Damagefunc2(hit,10,80) end)
while rapidslashing == true do 
wait() 
ss(part5,1.3) 
ss(part9,1.3) 
coroutine.resume(coroutine.create(function() 
slasheffect(part5.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) * CFrame.new(math.random(),1+math.random(),math.random()),0,8,10) 
end)) 
coroutine.resume(coroutine.create(function() 
slasheffect(part9.CFrame * CFrame.fromEulerAnglesXYZ(math.random(-50,50),math.random(-50,50),math.random(-50,50)) * CFrame.new(math.random(),1+math.random(),math.random()),0,8,10) 
end)) 
LW.C0 = CFrame.new(-1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,-1.57) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.random()-math.random(),math.random()-math.random(),-1.57) 
RW.C0 = CFrame.new(1.5,0.5,0) * CFrame.fromEulerAnglesXYZ(1.57,0,1.57) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(math.random()-math.random(),math.random()-math.random(),1.57) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90),math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),-math.rad(90),math.rad(90)) * CFrame.new(0, 1, 0) 
end 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.5-0.3,-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3-0.3,1,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
con1:disconnect() 
con2:disconnect() 
con3:disconnect() 
con4:disconnect() 
attack = false 
end 


Damagefunc1=function(hit,Damage,Knockback)
    if attackdebounce == false then 
    attackdebounce = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.2) 
    attackdebounce = false 
    end)) 
    if hit.Parent==nil then
        return
    end
    CPlayer=Bin 
    h=hit.Parent:FindFirstChild("Humanoid")
    if h~=nil and hit.Parent.Name~="grgrgry21" and hit.Name~="SlashEffect" and hit.Parent:FindFirstChild("Torso")~=nil then
        Damage=Damage
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            hs(hit,1.2) 
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
--[[        if math.random(1,5)==1 then
            CRIT=true
            Damage=Damage*2
            Knockback=Knockback*2
            r=Instance.new("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
            r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso
            s=Instance.new("Sound")
            s.SoundId="http://www.roblox.com/asset/?id=2801263"
            s.Volume=1
            s.Pitch=2
            s.Parent=hit
            s:Play()
    
        end]]
        Damage=Damage+math.random(0,10)
--        Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
        h:TakeDamage(Damage)
        showDamage(hit.Parent,Damage,.5)
        vp=Instance.new("BodyVelocity")
        vp.P=500
        vp.maxForce=Vector3.new(math.huge,0,math.huge)
--        vp.velocity=Character.Torso.CFrame.lookVector*Knockback
        vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
        if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end
        game:GetService("Debris"):AddItem(vp,.25)
--[[        r=Instance.new("BodyAngularVelocity")
        r.P=3000
        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
        r.Parent=hit.Parent.Torso]]
        game:GetService("Debris"):AddItem(r,.5)
                c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=Player
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
        CRIT=false
        hitDeb=true
        AttackPos=6
    end
    end 
end

Damagefunc2=function(hit,Damage,Knockback)
    if attackdebounce2 == false then 
    attackdebounce2 = true 
    coroutine.resume(coroutine.create(function() 
    wait(0.2) 
    attackdebounce2 = false 
    end)) 
    if hit.Parent==nil then
        return
    end
    CPlayer=Bin 
    h=hit.Parent:FindFirstChild("Humanoid")
    if h~=nil and hit.Parent.Name~="grgrgry21" and hit.Parent:FindFirstChild("Torso")~=nil then
        Damage=Damage
        print(hit) 
--[[        if game.Players:GetPlayerFromCharacter(hit.Parent)~=nil then
            return
        end]]
            hs(hit,1.2) 
            c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=game.Players.LocalPlayer
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
--            print(c.Value)
--[[        if math.random(1,5)==1 then
            CRIT=true
            Damage=Damage*2
            Knockback=Knockback*2
            r=Instance.new("BodyAngularVelocity")
            r.P=3000
            r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
            r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
            r.Parent=hit.Parent.Torso
            s=Instance.new("Sound")
            s.SoundId="http://www.roblox.com/asset/?id=2801263"
            s.Volume=1
            s.Pitch=2
            s.Parent=hit
            s:Play()
    
        end]]
        Damage=Damage+math.random(3,7)
--        Blood(hit.CFrame*CFrame.new(math.random(-10,10)/10,math.random(-10,10)/10,0),math.floor(Damage/2))
        h:TakeDamage(Damage)
        showDamage(hit.Parent,Damage,.5)
        vp=Instance.new("BodyVelocity")
        vp.P=500
        vp.maxForce=Vector3.new(math.huge,0,math.huge)
--        vp.velocity=Character.Torso.CFrame.lookVector*Knockback
        vp.velocity=Torso.CFrame.lookVector*Knockback+Torso.Velocity/1.05
        if Knockback>0 then
            vp.Parent=hit.Parent.Torso
        end
        game:GetService("Debris"):AddItem(vp,.25)
--[[        r=Instance.new("BodyAngularVelocity")
        r.P=3000
        r.maxTorque=Vector3.new(500000000,50000000000,500000000)*50000
        r.angularvelocity=Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
        r.Parent=hit.Parent.Torso]]
        game:GetService("Debris"):AddItem(r,.5)
                c=Instance.new("ObjectValue")
            c.Name="creator"
            c.Value=Player
            c.Parent=h
            game:GetService("Debris"):AddItem(c,.5)
        CRIT=false
        hitDeb=true
        AttackPos=6
    end
    end 
end

showDamage=function(Char,Dealt,du)
    m=Instance.new("Model")
    m.Name=tostring(Dealt)
    h=Instance.new("Humanoid")
    h.Health=0
    h.MaxHealth=0
    h.Parent=m
    c=Instance.new("Part")
    c.Transparency=0
    c.BrickColor=BrickColor:Red()
    if CRIT==true then
        c.BrickColor=BrickColor.new("New Yeller")
    end
    c.Name="Head"
    c.TopSurface=0
    c.BottomSurface=0
    c.formFactor="Plate"
    c.Size=Vector3.new(1,.4,1)
    ms=Instance.new("CylinderMesh")
    
    ms.Scale=Vector3.new(.8,.8,.8)
    if CRIT==true then
        ms.Scale=Vector3.new(1.25,1.5,1.25)
    
    end
    ms.Parent=c
    c.Reflectance=0
    Instance.new("BodyGyro").Parent=c
    c.Parent=m
    c.CFrame=CFrame.new(Char["Head"].CFrame.p+Vector3.new(0,1.5,0))
    f=Instance.new("BodyPosition")
    f.P=2000
    f.D=100
    f.maxForce=Vector3.new(math.huge,math.huge,math.huge)
    f.position=c.Position+Vector3.new(0,3,0)
    f.Parent=c
    game:GetService("Debris"):AddItem(m,.5+du)
    c.CanCollide=false
    m.Parent=workspace
    c.CanCollide=false
end

function slasheffect(cframe,waitin,size,efdam) 
wait(waitin) 
for l=1, 2 do
wait() 
e=Instance.new("Part")
coneffect=e.Touched:connect(function(hit) Damagefunc1(hit,efdam,1) end)
e.Name="SlashEffect"
e.TopSurface=0
e.BottomSurface=0
e.formFactor="Symmetric"
e.Size=Vector3.new(1,1,size)
e.Anchored=true
e.BrickColor=BrickColor.new("New Yeller") 
e.Reflectance=0

e.CanCollide=false
m=Instance.new("SpecialMesh")
m.MeshType="Sphere"
m.Scale=Vector3.new(.25,.25,1)
m.Parent=e
e.CFrame = cframe
e.Parent=workspace
coroutine.resume(coroutine.create(function(m) for i=1, 9 do m.Transparency=i*.1 m.Mesh.Scale=m.Mesh.Scale-Vector3.new(.01,.01,.05)*2 wait() end m.Parent=nil coneffect:disconnect() end),e)
end
end 


function ob1d(mouse) 
if attack == true then return end 
hold = true 
--[[oneslash() 
if hold == true then 
twoslash() 
end 
if hold == true then 
threeslash() 
end ]] 
attackin = math.random(1,5) 
--attackin = 5 
if attackin == 1 then 
attackone() 
elseif attackin == 2 then 
attacktwo() 
elseif attackin == 3 then 
attackthree() 
elseif attackin == 4 then 
attackfour() 
elseif attackin == 5 then 
attackfive() 
end 
wait(0.2) 
LW.C0 = CFrame.new(-1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(2.5-0.3,-1,1) 
LW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
RW.C0 = CFrame.new(1,0.5,-0.5) * CFrame.fromEulerAnglesXYZ(3-0.3,1,-1) 
RW.C1 = CFrame.new(0, 0.5, 0) * CFrame.fromEulerAnglesXYZ(0,0,0) 
weld3.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
weld7.C0 = CFrame.fromEulerAnglesXYZ(-math.rad(90),0,math.rad(90)) * CFrame.new(0, 1, 0) 
attack = false 
end 

function ob1u(mouse) 
hold = false 
end 

buttonhold = false 

function key(key) 
if attack == true then return end 
if key == "q" then 
DarkRush() 
end 
if key == "e" then 
KnifeDance() 
end 
end 

function key2(key) 
if key == "e" then 
rapidslashing = false 
end 
end 

function s(mouse) 
mouse.Button1Down:connect(function() ob1d(mouse) end) 
mouse.Button1Up:connect(function() ob1u(mouse) end) 
mouse.KeyDown:connect(key) 
mouse.KeyUp:connect(key2) 
unsheathed = true 
player = Player 
ch = Character 
RSH = ch.Torso["Right Shoulder"] 
LSH = ch.Torso["Left Shoulder"] 
-- 
RSH.Parent = nil 
LSH.Parent = nil 
-- 
RW.Part0 = ch.Torso 
RW.C0 = CFrame.new(1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.3, 0, -0.5) 
RW.C1 = CFrame.new(0, 0.5, 0) 
RW.Part1 = ch["Right Arm"] 
RW.Parent = ch.Torso 
--_G.R = RW 
-- 
LW.Part0 = ch.Torso 
LW.C0 = CFrame.new(-1.5, 0.5, 0) --* CFrame.fromEulerAnglesXYZ(1.7, 0, 0.8) 
LW.C1 = CFrame.new(0, 0.5, 0) 
LW.Part1 = ch["Left Arm"] 
LW.Parent = ch.Torso 
--_G.L = LW 
--
equipanim() 
end 

function ds(mouse) 
unsheathed = false 
hideanim() 
wait(0) 
RW.Parent = nil 
LW.Parent = nil 
RSH.Parent = player.Character.Torso 
LSH.Parent = player.Character.Torso 
end 

Bin.Selected:connect(s) 
Bin.Deselected:connect(ds) 


Game.Workspace.masterepico.Humanoid.MaxHealth = 500
