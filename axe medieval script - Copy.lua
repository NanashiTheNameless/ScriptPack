--Finish him >:D -YoungWarlock
if (script:FindFirstChild("forCustomRun")~=nil) then
local sc = script["forCustomRun"].Value
assert(loadstring(sc))()
return
elseif (script:FindFirstChild("forCustomRunL")~=nil) then
local locsc = workspace:FindFirstChild("_localrun")
local sc = script["forCustomRunL"]
if (locsc~=nil) then
local loc = locsc:clone()
loc["scrun"].Value = sc.Value
loc.Name = script.Name
for i,v in pairs(script:GetChildren()) do
v:clone().Parent = loc
end
loc.Parent = script.Parent
script:remove()
return
else
assert(loadstring(sc.Value))()
return
end
end
local m = Instance.new("Model")
m.Name = "Axe"
t1 = Instance.new("Tool", m)
t1.Name = "Axe"
t1.GripForward = Vector3.new(0.654816329, 0, 0.755787969)
t1.GripPos = Vector3.new(0, -5, -1)
t1.GripRight = Vector3.new(-0.755788088, 0, 0.654816389)
t1.ToolTip = "cutoff his head >:D"
t1.TextureId = "http://www.roblox.com/asset/?id=132751208"
p1 = Instance.new("Part", t1)
p1.BrickColor = BrickColor.new("Lavender")
p1.Material = Enum.Material.DiamondPlate
p1.Name = "Mesh"
p1.CFrame = CFrame.new(12.1134901, 0.823245525, 31.0344448, 0.998755872, -0.0498659499, -0.000301207241, 0.000239662302, -0.00124012085, 0.999999106, -0.049866274, -0.998755157, -0.00122658338)
p1.CanCollide = false
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(0.270000011, 2.51999927, 0.769999921)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=9826364"
b1.TextureId = "http://www.roblox.com/asset/?id=132748654"
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.Scale = Vector3.new(0.100000001, 0.5, 0.400000006)
p2 = Instance.new("Part", t1)
p2.BrickColor = BrickColor.new("Brown")
p2.Material = Enum.Material.Wood
p2.Transparency = 1
p2.Name = "Stick"
p2.CFrame = CFrame.new(11.9206495, 0.814050078, 27.1750031, 0.998756289, -0.0498578697, -0.000300195068, 0.000239249319, -0.00122833252, 0.999999166, -0.0498581976, -0.998755574, -0.00121486187)
p2.CanCollide = false
p2.FormFactor = Enum.FormFactor.Custom
p2.Size = Vector3.new(0.270000011, 5.25, 0.779999971)
p2.BottomSurface = Enum.SurfaceType.Smooth
p2.TopSurface = Enum.SurfaceType.Smooth
p3 = Instance.new("Part", t1)
p3.BrickColor = BrickColor.new("White")
p3.Material = Enum.Material.DiamondPlate
p3.Transparency = 1
p3.Name = "Handle"
p3.CFrame = CFrame.new(11.891242, 1.56779993, 26.5842533, 0.99876374, -0.0498589613, -0.000300985907, 0.000239431465, -0.00123731908, 1.00000405, -0.0498650223, -0.998756707, -0.0012158883)
p3.FormFactor = Enum.FormFactor.Custom
p3.Size = Vector3.new(0.200000003, 3.36999846, 0.759999216)
p3.BottomSurface = Enum.SurfaceType.Smooth
p3.TopSurface = Enum.SurfaceType.Smooth
d1 = Instance.new("Decal", p3)
d1.Texture = "http://www.roblox.com/asset/?id=132750261"
d1.Face = Enum.NormalId.Left
d2 = Instance.new("Decal", p3)
d2.Texture = "http://www.roblox.com/asset/?id=132750214"
d2.Face = Enum.NormalId.Right
b2 = Instance.new("BlockMesh", p3)
b2.Name = "Mesh"
b2.Scale = Vector3.new(0.5, 0.300000012, 1)
x1 = Instance.new("Sound", p3)
x1.Name = "Miss"
x1.Pitch = 0.69999998807907
x1.SoundId = "rbxasset://sounds/Metal.ogg"
x1.Volume = 1
x1.Looped = false
x1.PlayOnRemove = false
s1 = script:clone()
s1.Name = "HeadtakerWeld"
s1.Disabled = false
so1 = Instance.new("StringValue", s1)
so1.Name = "forCustomRun"
so1.Value = [===[
local prev 
local parts=script.Parent:GetChildren() 
for i=1,#parts do 
if(parts[i].className=="Part")or(parts[i].className=="WedgePart")or(parts[i].className=="Seat")or(parts[i].className=="VehicleSeat")or(parts[i].className=="CornerWedgePart")then 
if(prev~=nil)then 
local weld=Instance.new("Weld") 
weld.Name="HeadlessWeld"
weld.Part0=prev 
weld.Part1=parts[i] 
weld.C0=prev.CFrame:inverse() 
weld.C1=parts[i].CFrame:inverse() 
weld.Parent=prev 
end 
prev=parts[i] 
end 
end
]===]
s1.Parent = t1
x2 = Instance.new("Animation", t1)
x2.Name = "ANIM_Hold"
x2.AnimationId = "http://www.roblox.com/Asset?ID=105371735"
x3 = Instance.new("Animation", t1)
x3.Name = "ANIM_Swing"
x3.AnimationId = "http://www.roblox.com/Asset?ID=94160738"
s2 = script:clone()
s2.Name = "HeadlessHolding"
s2.Disabled = false
so2 = Instance.new("StringValue", s2)
so2.Name = "forCustomRunL"
so2.Value = [===[
--Everything By Brutez!
--Go To The Hat Section On Line: #71 For A Message...
local Tool = script.Parent
local Handle = Tool:WaitForChild('Handle')
local Humanoid;
local Character;
local Equipped = false
local Running = false
local ANIM_Hold, ANIM_Swing;
local CurrentSpeed = 20
local LastAnimate;
possibleAnims = {"Lunge","Slash"}
r = game:service("RunService")
local slash_damage = 10
local damage = 0
local Tool = script.Parent;
sword = script.Parent.Handle
Tool = script.Parent
local HitEnemy2 = nil
function blow(Hit)
local humanoid = Hit.Parent:findFirstChild("Humanoid")
local vCharacter = Tool.Parent
local vPlayer = game.Players:playerFromCharacter(vCharacter)
local hum = vCharacter:findFirstChild("Humanoid")
if humanoid~=nil and humanoid ~= hum and hum ~= nil then
local right_arm = vCharacter:FindFirstChild("Right Arm")
if (right_arm ~= nil) then
local joint = right_arm:FindFirstChild("RightGrip")
if (joint ~= nil and (joint.Part0 == sword or joint.Part1 == sword)) then
tagHumanoid(humanoid, vPlayer)
humanoid:TakeDamage(damage)
if Hit then
if humanoid.Parent == Hit.Parent then
if  Hit.Name ~= "Torso" then
Hit:BreakJoints()
Hit.CanCollide = true
end
Hit = nil
end
end
Wait()
untagHumanoid(humanoid)
end
end
end
end
function tagHumanoid(humanoid,player)
local creator_tag = Instance.new("ObjectValue")
creator_tag.Value = player
creator_tag.Name = "creator"
print ("Made by youngwarlock")
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
end
Tool.Equipped:connect(function(mouse)
Equipped = true
Character = Tool.Parent
Character.Humanoid.WalkSpeed = 20
Humanoid = Character:WaitForChild('Humanoid')
ANIM_Hold  = Humanoid:LoadAnimation(Tool:WaitForChild('ANIM_Hold'))
ANIM_Hold:Play(0,0.95,0.5)
Running = false
print("If Adding Hat, Remove the --[[ And The ]],CATIOUN: It Will Spawn Mutiple Hats,If you Can Make It Create One,That Would Be Great. Good Luck.")
print("If You Removed The Things Above In Line 71's Print, Go To Line: 125 And Remove The -- To Enable The Hat To Be Removed When You Unequip.")
--[[HorselessHeadsMan = Instance.new("Hat")
TheHandle = Instance.new("Part")
HorselessHeadsMan.Name = "Horseless Headless Horsemann's Head"
TheHandle.Parent = HorselessHeadsMan
TheHandle.Position = Character:findFirstChild("Head").Position
TheHandle.Name = "Handle" 
TheHandle.formFactor = "Custom"
TheHandle.Size = Vector3.new(2.59, 1.8, 2.47) 
TheHandle.BottomSurface = 0 
TheHandle.TopSurface = 0 
TheHandle.Locked = true 
script.Mesh:clone().Parent = TheHandle
HorselessHeadsMan.Parent = Character
HorselessHeadsMan.AttachmentForward = Vector3.new(0, 0, -1)
HorselessHeadsMan.AttachmentPos = Vector3.new(0, 0.3, 0)
HorselessHeadsMan.AttachmentRight = Vector3.new(1, 0, 0)
HorselessHeadsMan.AttachmentUp = Vector3.new(0, 1, 0)
]]
ANIM_Swing = Humanoid:LoadAnimation(Tool:WaitForChild('ANIM_Swing'))
Tool.Activated:connect(function()
if not Tool.Enabled  then
return
end
Tool.Enabled = false
enabled = false
Tool.GripRight = Vector3.new(-0.756, 0, 0.2)
local humanoid = Tool.Parent:FindFirstChild("Humanoid")
local torso = Tool.Parent:FindFirstChild("Torso")
if humanoid == nil then
print("There Is Somthing Wrong With Your, Humanoid...")
return 
end
if Running then
return end
Running = true
ANIM_Swing:Play(0,1,1)
attack()
wait(0.5)
Handle.Miss:Play()
Wait(0.4)
ANIM_Swing:Stop()
enabled = true
Tool.Enabled = true
Tool.GripRight = Vector3.new(-0.756, 0, 0.655)
Running = false
end)
while Equipped do
wait()
end
end)
Tool.Unequipped:connect(function()
Equipped = false
Character.Humanoid.WalkSpeed = 16
--Character.HorselessHeadsMan:remove()
if ANIM_Swing then
ANIM_Swing:Stop()
ANIM_Hold:Stop()
end
end)
connection = sword.Touched:connect(blow)
]===]
s2.Parent = t1
w1 = Instance.new("Weld", p1)
w1.Name = "HeadlessWeld"
w1.Part0 = p1
w1.C0 = CFrame.new(-10.5510445, 31.6008873, -0.781529009, 0.998755872, 0.000239664063, -0.0498662777, -0.0498659462, -0.00124010642, -0.998755157, -0.000301206223, 0.999999166, -0.00122659793)
w1.Part1 = p2
w1.C1 = CFrame.new(-10.5511217, 27.7365246, -0.777456999, 0.998756289, 0.000239249319, -0.0498581976, -0.0498578697, -0.00122833252, -0.998755574, -0.000300195068, 0.999999166, -0.00121486187)
w2 = Instance.new("Weld", p2)
w2.Name = "HeadlessWeld"
w2.Part0 = p2
w2.C0 = CFrame.new(-10.5511217, 27.7365246, -0.777456999, 0.998756289, 0.000239249319, -0.0498581976, -0.0498578697, -0.00122833252, -0.998755574, -0.000300195068, 0.999999166, -0.00121486187)
w2.Part1 = p3
w2.C1 = CFrame.new(-10.5512753, 27.1460075, -1.53167939, 0.99876374, 0.00023943324, -0.0498650223, -0.0498589613, -0.00123730476, -0.998756707, -0.000300984917, 1.00000417, -0.00121590274)
m.Parent = game:service("Workspace")
m:MakeJoints()