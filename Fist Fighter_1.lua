player = game:GetService("Players").LocalPlayer
char = player.Character
mouse = player:GetMouse()
idleq = false
stun = Instance.new("BoolValue",char)
stun.Name = "Stunned"
stun.Value = false
atk = Instance.new("NumberValue",char)
atk.Name = "Attack"
atk.Value = 1.1
def = Instance.new("NumberValue",char)
def.Name = "Defense"
def.Value = 1.0
spd = Instance.new("NumberValue",char)
spd.Name = "Speed"
spd.Value = 1
deft = Instance.new("NumberValue",char)
deft.Name = "DefenseTime"
deft.Value = 0
atkt = Instance.new("NumberValue",char)
atkt.Name = "AttackTime"
atkt.Value = 0
spdt = Instance.new("NumberValue",char)
spdt.Name = "SpeedTime"
spdt.Value = 0
local TARG7
local obj
local TARG8
local obj2
for i,v in pairs (char:GetChildren())do
if v.ClassName == "Weld" then
v:destroy()
end
end
----OPEN
local tr = char:WaitForChild("Torso")
local lr = char:WaitForChild("Left Arm")
local ra = char:WaitForChild("Right Arm")

local s1 = Instance.new("Sound",char.Head)
s1.Volume = 1
s1.SoundId = "rbxassetid://280667448"
local s2 = Instance.new("Sound",char.Head)
s2.Volume = .5
s2.SoundId = "rbxassetid://260430060"

--WELDS --
local w3 = Instance.new("Weld",char)
run = game:GetService("RunService")
w3.Part0 = lr
w3.Part1 = tr
w3.C0 = CFrame.new(1.5,0,0)
 
local w4= Instance.new("Weld",char)
w4.Part0 = ra
w4.Part1 = tr
w4.C0 = CFrame.new(-1.5,0,0)

local nc = Instance.new("Weld",char)
nc.Part0 = char.Torso
nc.Part1 = char.Head
nc.C0 = CFrame.new(0,1.5,0)

local ll = Instance.new("Weld",char)
ll.Part0 = char.Torso
ll.Part1 = char["Left Leg"]
ll.C0 = CFrame.new(-.5,-2,0)

local rl = Instance.new("Weld",char)
rl.Part0 = char.Torso
rl.Part1 = char["Right Leg"]
rl.C0 = CFrame.new(.5,-2,0)

local ts = Instance.new("Weld",char)
ts.Part0 = char.HumanoidRootPart
ts.Part1 = char.Torso
ts.C0 = CFrame.new(0,0,0)* CFrame.Angles(0,0,0)
--MAKE AND UNDO WELDS

turnonwelds = function()
w3.Part1 = tr
w4.Part1 = tr
nc.Part1 = char.Head
ll.Part1 = char["Left Leg"]
rl.Part1 = char["Right Leg"]
end
turnoffwelds = function()
	w3.Part1 = nil
w4.Part1 = nil
nc.Part1 = nil
ll.Part1 = nil
rl.Part1 = nil
end

turnoffwelds()
----LERP POSES
------- CFRAMES FOR LERP

local walk = {
--Left
ll.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)), --  LEFT LEG
rl.C0 * CFrame.new(0,0,.5) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)), -- RIGHT LEG
--Right
ll.C0 * CFrame.new(0,0,.5) * CFrame.Angles(math.rad(-45),math.rad(0),math.rad(0)), --  LEFT LEG
rl.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(45),math.rad(0),math.rad(0)), -- RIGHT LEG
-----------------------------------------------------------------------------------------------
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),0,0) , -- Torso Tilt
nc.C0  * CFrame.Angles(math.rad(20),math.rad(0),0), -- HEAD TILT UP
w4.C0 * CFrame.new(0,.2,-.4) * CFrame.Angles(math.rad(60),math.rad(0),math.rad(0)), --  ARM MOVEMENT
w3.C0 * CFrame.new(0,.2,-.4) * CFrame.Angles(math.rad(60),math.rad(0),math.rad(0)) -- ARM MOVEMENT

}
local equip = {
nc.C0  * CFrame.Angles(math.rad(-10),math.rad(0),0), -- HEAD BOB EQUIP
w3.C0 * CFrame.new(-1.1,-.1,-1.2) * CFrame.Angles(math.rad(-160),0,math.rad(90)), -- LEFT ARM FOLD
w4.C0 * CFrame.new(1.1,-.2,-1.2) * CFrame.Angles(math.rad(-160),0,math.rad(-90)) -- RIGHT ARM FOLD
}
local idle = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(-40),0), -- TORSO TILT
nc.C0  * CFrame.Angles(0,math.rad(30),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-5),math.rad(30),math.rad(-10)), -- LEFT LEG idle
rl.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(5),math.rad(-30),math.rad(10)), -- RIGHT LEG Idle
w3.C0 * CFrame.new(0,.5,0) * CFrame.Angles(math.rad(-90),math.rad(20),math.rad(30)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,.5,-.2) * CFrame.Angles(math.rad(-120),math.rad(-20),math.rad(-30)), -- RIGHT ARM Idle w4.C0 * CFrame.new(0,.5,-.2) * CFrame.Angles(math.rad(-100),math.rad(-30),math.rad(-30))
}
local PA1 = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),math.rad(40),math.rad(30)), -- TORSO TILT	
ll.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(20),math.rad(30),math.rad(-10)), -- LEFT LEG PUNCH1
rl.C0 * CFrame.new(0,-.05,-.5) * CFrame.Angles(math.rad(20),math.rad(-30),math.rad(10)), -- RIGHT LEG PUNCH
nc.C0  * CFrame.Angles(math.rad(-7),math.rad(20),0), -- HEAD BOB PUNCH 
w3.C0 * CFrame.new(0,.6,0) * CFrame.Angles(math.rad(30),0,math.rad(20)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,.5,-.2) * CFrame.Angles(math.rad(-100),math.rad(-20),math.rad(-30)), -- RIGHT ARM
}
local PA2 = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(-35),0), -- TORSO TILT	
ll.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-5),math.rad(30),math.rad(-10)), -- LEFT LEG idle
rl.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(5),math.rad(-30),math.rad(10)), -- RIGHT LEG Idle
CFrame.new(0,1.5,0)* CFrame.Angles(math.rad(20),math.rad(20),0), -- HEAD BOB PUNCH 
w4.C0 * CFrame.new(0,1,0) * CFrame.Angles(math.rad(30),0,math.rad(-40)), -- LEFT ARM Idle
w3.C0 * CFrame.new(-.5,1.5,-.3) * CFrame.Angles(math.rad(-150),0,math.rad(-10)), -- RIGHT ARM Idle
}
local PA3 = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),math.rad(15),0), -- TORSO TILT	
nc.C0  * CFrame.Angles(math.rad(-15),math.rad(-5),0), -- HEAD BOB PUNCH 	
w4.C0 * CFrame.new(.4,1,.7) * CFrame.Angles(math.rad(40),math.rad(20),math.rad(-50)), -- LEFT ARM PUNCH 3
w3.C0 * CFrame.new(-.3,1.5,0) * CFrame.Angles(math.rad(40),math.rad(20),math.rad(50)), -- RIGHT ARM PUNCH 3
ll.C0 * CFrame.new(-.3,0,.3) * CFrame.Angles(math.rad(-20),math.rad(30),math.rad(-10)), -- LEFT LEG 
rl.C0 * CFrame.new(0,1,-.5) * CFrame.Angles(math.rad(-40),0,math.rad(0)), -- RIGHT LEG Idle
}
local PA4 = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(60),math.rad(-60),0), -- TORSO TILT	
nc.C0  * CFrame.Angles(math.rad(-25),math.rad(50),0), -- HEAD BOB PUNCH 
w4.C0 * CFrame.new(.4,1,.7) * CFrame.Angles(math.rad(50),0,math.rad(-70)), -- LEFT ARM PUNCH 3	
w3.C0 * CFrame.new(-1.2,-.2,1) * CFrame.Angles(math.rad(-40),math.rad(20),math.rad(-50)), -- RIGHT ARM PUNCH 3
ll.C0 * CFrame.new(-1.0,.5,0) * CFrame.Angles(0,math.rad(0),math.rad(-50)), -- LEFT LEG 
rl.C0 * CFrame.new(1,.5,.5) * CFrame.Angles(0,math.rad(-20),math.rad(60)), -- RIGHT LEG Idle
}
local jump = {
nc.C0  * CFrame.Angles(math.rad(20),0,0), -- HEAD BOB EQUIP
w4.C0 * CFrame.new(0,1,0) * CFrame.Angles(0,0,math.rad(-50)), -- LEFT ARM Idle
w3.C0 * CFrame.new(0,1,0) * CFrame.Angles(0,0,math.rad(50)), -- RIGHT ARM Idle	
ll.C0 * CFrame.new(-.3,0,0) * CFrame.Angles(0,0,math.rad(-20)), -- LEFT LEG idle
rl.C0 * CFrame.new(.3,0,0) * CFrame.Angles(0,0,math.rad(20)), -- RIGHT LEG Idle
}
local stunned = {
nc.C0  * CFrame.Angles(0,math.rad(90),0), -- HEAD BOB EQUIP
w4.C0 * CFrame.new(0,1,0) * CFrame.Angles(0,0,math.rad(-50)), -- LEFT ARM Idle
w3.C0 * CFrame.new(0,1,0) * CFrame.Angles(0,0,math.rad(50)), -- RIGHT ARM Idle	
ll.C0 * CFrame.new(-.3,0,0) * CFrame.Angles(0,0,math.rad(-20)), -- LEFT LEG idle
rl.C0 * CFrame.new(.3,0,0) * CFrame.Angles(0,0,math.rad(20)), -- RIGHT LEG Idle
ts.C0 * CFrame.new(0,-2.5,0) * CFrame.Angles(math.rad(90),0,0), -- TORSO TILT			
}
local PA1C = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(-30),math.rad(-40),math.rad(-30)), -- TORSO TILT	
ll.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(20),math.rad(30),math.rad(-10)), -- LEFT LEG PUNCH1
rl.C0 * CFrame.new(0,-.05,-.5) * CFrame.Angles(math.rad(20),math.rad(-30),math.rad(10)), -- RIGHT LEG PUNCH
nc.C0  * CFrame.Angles(math.rad(-7),math.rad(-20),0), -- HEAD BOB PUNCH 
w3.C0 * CFrame.new(0,.5,-.2) * CFrame.Angles(math.rad(-100),math.rad(40),math.rad(30)), -- RIGHT ARM
w4.C0 * CFrame.new(0,.6,0) * CFrame.Angles(math.rad(30),0,math.rad(-20)), -- LEFT ARM Idle
}
local Stomp = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(0),0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.Angles(math.rad(-13),math.rad(-20),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(-.05,0,0) * CFrame.new(math.rad(0),math.rad(0),math.rad(00)), -- LEFT LEG 
rl.C0 * CFrame.new(0,.6,-.6) * CFrame.Angles(math.rad(-0),0,math.rad(0)), -- RIGHT LEG Idle
w3.C0 * CFrame.new(0,.7,0) * CFrame.Angles(math.rad(-30),0,math.rad(30)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,.7,0) * CFrame.Angles(math.rad(-30),0,math.rad(-30)), -- RIGHT ARM Idle	
}
local Stomp2 = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,math.rad(0),0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.Angles(math.rad(-25),math.rad(-20),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(-.05,0,0) * CFrame.new(math.rad(0),math.rad(0),math.rad(00)), -- LEFT LEG 
rl.C0 * CFrame.new(0,0,-.6) * CFrame.Angles(math.rad(-0),0,math.rad(0)), -- RIGHT LEG Idle
w3.C0 * CFrame.new(0,.7,0) * CFrame.Angles(math.rad(-30),0,math.rad(35)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,.7,0) * CFrame.Angles(math.rad(-30),0,math.rad(-35)), -- RIGHT ARM Idle	
}
--[[for i = 0,1,wait() do
wait()
--ts.C0 = ts.C0:lerp(Stomp2[1],.4)
--nc.C0 = nc.C0:lerp(Stomp2[2],.4)
--ll.C0 = ll.C0:lerp(Stomp2[3],.4)
--rl.C0 = rl.C0:lerp(Stomp2[4],.4)
--w3.C0 = w3.C0:lerp(Stomp2[5],.4)
--w4.C0 = w4.C0:lerp(Stomp2[6],.4)
end--]]

------------------------------------CLASS UI  ------------------------------------



f = Instance.new("ScreenGui",player.PlayerGui)
f.Name = "UI"

f1 = Instance.new("Frame",f)
f1.BorderSizePixel = 0
f1.BackgroundColor3 = Color3.new(0,0,0)
f1.Size = UDim2.new(0.3,0,0.05,0)
f1.Position = UDim2.new(0.2,0,0.84,0)

f1f = Instance.new("Frame",f1)
f1f.BorderSizePixel = 0
f1f.BackgroundColor3 = Color3.new(255,255,255)
f1f.Size = UDim2.new(1,0,1,0)

f1l = Instance.new("TextLabel",f1)
f1l.TextScaled = true
f1l.TextStrokeTransparency = 0
f1l.BackgroundTransparency  = 1
f1l.TextColor3 = Color3.new(255,255,255)
f1l.BorderSizePixel = 0
f1l.Size = UDim2.new(1,0,1,0)
f1l.Text = "[Z] Consecutive Punches"


f2 = Instance.new("Frame",f)
f2.BorderSizePixel = 0
f2.BackgroundColor3 = Color3.new(0,0,0)
f2.Size = UDim2.new(0.3,0,0.05,0)
f2.Position = UDim2.new(0.52, 0,0.84, 0)

f2f = Instance.new("Frame",f2)
f2f.BorderSizePixel = 0
f2f.BackgroundColor3 = Color3.new(255,255,255)
f2f.Size = UDim2.new(1,0,1,0)

f2l = Instance.new("TextLabel",f2)
f2l.TextScaled = true
f2l.TextStrokeTransparency = 0
f2l.BackgroundTransparency  = 1
f2l.TextColor3 = Color3.new(255,255,255)
f2l.BorderSizePixel = 0
f2l.Size = UDim2.new(1,0,1,0)
f2l.Text = "[X] Ground Stomp"


f3 = Instance.new("Frame",f)
f3.BorderSizePixel = 0
f3.BackgroundColor3 = Color3.new(0,0,0)
f3.Size = UDim2.new(0.3,0,0.05,0)
f3.Position = UDim2.new(0.2,0,0.9,0)

f3f = Instance.new("Frame",f3)
f3f.BorderSizePixel = 0
f3f.BackgroundColor3 = Color3.new(255,255,255)
f3f.Size = UDim2.new(1,0,1,0)

f3l = Instance.new("TextLabel",f3)
f3l.TextScaled = true
f3l.TextStrokeTransparency = 0
f3l.BackgroundTransparency  = 1
f3l.TextColor3 = Color3.new(255,255,255)
f3l.BorderSizePixel = 0
f3l.Size = UDim2.new(1,0,1,0)
f3l.Text = "[C] Gather Anger"


f4 = Instance.new("Frame",f)
f4.BorderSizePixel = 0
f4.BackgroundColor3 = Color3.new(0,0,0)
f4.Size = UDim2.new(0.3,0,0.05,0)
f4.Position = UDim2.new(.52,0,.9,0)

f4f = Instance.new("Frame",f4)
f4f.BorderSizePixel = 0
f4f.BackgroundColor3 = Color3.new(255,255,255)
f4f.Size = UDim2.new(1,0,1,0)

f4l = Instance.new("TextLabel",f4)
f4l.TextScaled = true
f4l.TextStrokeTransparency = 0
f4l.BackgroundTransparency  = 1
f4l.TextColor3 = Color3.new(255,255,255)
f4l.BorderSizePixel = 0
f4l.Size = UDim2.new(1,0,1,0)
f4l.Text = "[V] Spike Earth"


---HEALTH BAR

f5 = Instance.new("Frame",f)
f5.BorderSizePixel = 0
f5.BackgroundColor3 = Color3.new(255,255,255)
f5.Size = UDim2.new(0.3,0,0.03,0)
f5.Position = UDim2.new(.52,0,.8,0)

f5f = Instance.new("Frame",f5)
f5f.BorderSizePixel = 0
f5f.BackgroundColor3 = Color3.new(0,255,0)
f5f.Size = UDim2.new(1,0,1,0)

f5l = Instance.new("TextLabel",f5)
f5l.TextScaled = true
f5l.TextStrokeTransparency = 0
f5l.BackgroundTransparency  = 1
f5l.TextColor3 = Color3.new(255,255,255)
f5l.BorderSizePixel = 0
f5l.Size = UDim2.new(1,0,1,0)
f5l.Text = "Health"


---ENERGY BAR

f6 = Instance.new("Frame",f)
f6.BorderSizePixel = 0
f6.BackgroundColor3 = Color3.new(255,255,255)
f6.Size = UDim2.new(0.3,0,0.03,0)
f6.Position = UDim2.new(.2,0,.8,0)

f6f = Instance.new("Frame",f6)
f6f.BorderSizePixel = 0
f6f.BackgroundColor3 = Color3.new(255, 170, 0)
f6f.Size = UDim2.new(1,0,1,0)

f6l = Instance.new("TextLabel",f6)
f6l.TextScaled = true
f6l.TextStrokeTransparency = 0
f6l.BackgroundTransparency  = 1
f6l.TextColor3 = Color3.new(255,255,255)
f6l.BorderSizePixel = 0
f6l.Size = UDim2.new(1,0,1,0)
f6l.Text = "Energy"

------------ATK 
fa = Instance.new("TextLabel",f)
fa.TextScaled = true
fa.TextStrokeTransparency = 0
fa.BackgroundTransparency  = .5
fa.BackgroundColor3 = Color3.new(0,0,0)
fa.TextColor3 = Color3.new(255,0,0)
fa.BorderSizePixel = 0
fa.Size = UDim2.new(.2,0,0.05,0)
fa.Position = UDim2.new(0.2,0,0.74,0)
fa.Text = "Attack : 1"
------------SPD 
fa2 = Instance.new("TextLabel",f)
fa2.TextScaled = true
fa2.TextStrokeTransparency = 0
fa2.BackgroundTransparency  = .5
fa2.BackgroundColor3 = Color3.new(0,0,0)
fa2.TextColor3 = Color3.new(0,255,0)
fa2.BorderSizePixel = 0
fa2.Size = UDim2.new(.2,0,0.05,0)
fa2.Position = UDim2.new(0.41,0,0.74,0)
fa2.Text = "Speed : 1"
------------DEF 
fa3 = Instance.new("TextLabel",f)
fa3.TextScaled = true
fa3.TextStrokeTransparency = 0
fa3.BackgroundTransparency  = .5
fa3.BackgroundColor3 = Color3.new(0,0,0)
fa3.TextColor3 = Color3.new(0,0,255)
fa3.BorderSizePixel = 0
fa3.Size = UDim2.new(.2,0,0.05,0)
fa3.Position = UDim2.new(0.62,0,0.74,0)
fa3.Text = "Defense : 1"
-------------------CLASS VARS--------------------------
S1 = true
S1T = 0
S1TF = 7
S2 = true
S2T = 0
S2TF = 15
S3 = true
S3T = 0
S3TF = 12
S4 = true
S4T = 0
S4TF = 30
energy = 0
------------------------------------EXTRA WELDS AREA ------------------------------------





----EQUIP FUNCTION
local Close1 = CFrame.new(1.5,0,0)
local Close2 = CFrame.new(-1.5,0,0)
local Speed = 0.3
local Open4 = w4.C0 * CFrame.new(0,.5,0) * CFrame.Angles(0,0,math.rad(-30))
local h1 = nc.C0  * CFrame.Angles(math.rad(20),math.rad(-30),0)
local h2 = CFrame.new(0,1.5,0)
local h3 = nc.C0  * CFrame.Angles(math.rad(-20),math.rad(30),0)
--leg anims
local opend = false
local current = true




---------------------------------------------------------------------------------------
----DAMAGE UI N DMG
local DGU = function(p,txt)
local r = math.random(1,5)
if r == 1 then
s2.Pitch = 1
end
if r == 2 then
s2.Pitch = 1.2
end
if r == 3 then
s2.Pitch = 1.3
end
if r == 4 then
s2.Pitch = 1.4
end
if r == 5 then
s2.Pitch = 1.5
end
s2:Play()
local f = Instance.new("BillboardGui",p)
f.Size = UDim2.new(1,0,1,0)
f.AlwaysOnTop = true
f.StudsOffset = Vector3.new(0,2,0)
local fr = Instance.new("Frame",f)
fr.BackgroundTransparency = 1
fr.Size = UDim2.new(1,0,1,0)
fr.ClipsDescendants = true
local fe = Instance.new("TextLabel",fr)
fe.Size = UDim2.new(1,0,1,0)
fe.BackgroundTransparency = 1
fe.TextColor3 = Color3.new(255,0,0)
fe.TextStrokeTransparency = 0
fe.Text = txt
fe.TextScaled = true
fe.Font = "SourceSansBold"
game.Debris:AddItem(f,2)
fe.Position = UDim2.new(0,0,1,0)
fe:TweenPosition(UDim2.new(0,0,0,0),"In","Linear",.3)
for i = 1,10 do
fe.TextTransparency = fe.TextTransparency + .1
wait(.1)
end
end



makeui = function(color,txt)
local f = Instance.new("BillboardGui",char.Head)
f.Size = UDim2.new(1,0,1,0)
f.AlwaysOnTop = true
f.StudsOffset = Vector3.new(0,4,0)
local fr = Instance.new("Frame",f)
fr.BackgroundTransparency = 1
fr.Size = UDim2.new(1,0,1,0)
fr.ClipsDescendants = true
local fe = Instance.new("TextLabel",fr)
fe.Size = UDim2.new(1,0,1,0)
fe.BackgroundTransparency = 1
fe.TextColor3 = color
fe.TextStrokeTransparency = 0
fe.Text = txt
fe.TextScaled = true
fe.Font = "SourceSansBold"
game.Debris:AddItem(f,2)
fe.Position = UDim2.new(0,0,1,0)
fe:TweenPosition(UDim2.new(0,0,0,0),"In","Linear",.3)
for i = 1,10 do
fe.TextTransparency = fe.TextTransparency + .1
wait(.1)
end
end
----TARG
local TARG1
local TARG2
local TARG3
local TARG4
local TARG5
local TARG6
local IdleAndWalk = false


mouse.KeyDown:connect(function(key)key = key:lower()
if key == "f" and current == true and stun.Value == false then
if opend == true then
current = false

opend = false
TARG6 = CFrame.new(0,0,0)
TARG5 = CFrame.new(-.5,-2,0)
TARG4 =  CFrame.new(.5,-2,0)
wait()
TARG1 = equip[2]
TARG2 = equip[3]
TARG3 = equip[1]
TARG5 = CFrame.new(-.5,-2,0)
TARG4 =  CFrame.new(.5,-2,0)
TARG6 = CFrame.new(0,0,0)
idleq = true
wait(.2)
current = true
wait(.3)
idleq = false
TARG1 = Close1
TARG2 = Close2
TARG3 = h2
TARG6 = CFrame.new(0,0,0)
TARG5 = CFrame.new(-.5,-2,0)
TARG4 =  CFrame.new(.5,-2,0)
else
	turnonwelds()
	
current = false
opend = true
wait()
TARG1 = equip[2]
TARG2 = equip[3]
TARG3 = equip[1]
idleq = true
wait(.2)
current = true
wait(.3)
idleq = false
TARG6 = CFrame.new(0,0,0)
TARG6 = CFrame.new(0,0,0)
TARG5 = CFrame.new(-.5,-2,0)
TARG4 =  CFrame.new(.5,-2,0)
end 
end
end)

--------------SKILL/KEY EVENTS
--------------MOUSE EVENTS , ATTACKS
local wpb = true
local num = 1
mouse.Button1Down:connect(function()
if current == true and idleq == false and opend == true and wpb == true and stun.Value == false then
local fs 

if num == 1 then
wpb = false
current = false
fr = true
char["Right Arm"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent:FindFirstChild("Defense")then
 fs = math.floor(math.random(5,11) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(math.random(5,11) * atk.Value)
end

if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
end)
s1:Play()
wait(.1)
TARG1 = PA1[5]
TARG2 = PA1[6]
TARG3 = PA1[4]
TARG4 = PA1[3]
TARG5 = PA1[2]
TARG6 = PA1[1]
wait(.1)
TARG1 = PA1[5]
TARG2 = PA1[6]
TARG3 = PA1[4]
TARG4 = PA1[3]
TARG5 = PA1[2]
TARG6 = PA1[1]
wait(.1)
TARG1 = PA1[5]
TARG2 = PA1[6]
TARG3 = PA1[4]
TARG4 = PA1[3]
TARG5 = PA1[2]
TARG6 = PA1[1]
wait(.1)
TARG1 = PA1[5]
TARG2 = PA1[6]
TARG3 = PA1[4]
TARG4 = PA1[3]
TARG5 = PA1[2]
TARG6 = PA1[1]
wait(.2)
current = true
fr = false
wait(.1)
wpb = true
num = num +1 
return 
end
if num == 2 then
wpb = false
current = false
fr = true
char["Left Arm"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent:FindFirstChild("Defense")then
 fs = math.floor(math.random(5,11) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(math.random(5,11) * atk.Value)
end
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
end)
s1:Play()
wait(.1)
TARG1 = PA2[6]
TARG2 = PA2[5]
TARG3 = PA2[4]
TARG4 = PA2[3]
TARG5 = PA2[2]
TARG6 = PA2[1]
wait(.1)
TARG1 = PA2[6]
TARG2 = PA2[5]
TARG3 = PA2[4]
TARG4 = PA2[3]
TARG5 = PA2[2]
TARG6 = PA2[1]
wait(.1)
TARG1 = PA2[6]
TARG2 = PA2[5]
TARG3 = PA2[4]
TARG4 = PA2[3]
TARG5 = PA2[2]
TARG6 = PA2[1]
wait(.1)
TARG1 = PA2[6]
TARG2 = PA2[5]
TARG3 = PA2[4]
TARG4 = PA2[3]
TARG5 = PA2[2]
TARG6 = PA2[1]
wait(.2)
current = true
fr = false
wait(.1)
wpb = true
num = num + 1
return 
end
if num == 3 then
wpb = false
current = false
fr = true
char["Right Leg"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent:FindFirstChild("Defense")then
 fs = math.floor(math.random(5,11) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(math.random(5,11) * atk.Value)
end
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
end)
s1:Play()
wait(.1)
TARG1 = PA3[3]
TARG2 = PA3[4]
TARG3 = PA3[2]
TARG4 = PA3[6]
TARG5 = PA3[5]
TARG6 = PA3[1]
wait(.1)
TARG1 = PA3[3]
TARG2 = PA3[4]
TARG3 = PA3[2]
TARG4 = PA3[6]
TARG5 = PA3[5]
TARG6 = PA3[1]
wait(.1)
TARG1 = PA3[3]
TARG2 = PA3[4]
TARG3 = PA3[2]
TARG4 = PA3[6]
TARG5 = PA3[5]
TARG6 = PA3[1]
wait(.1)
TARG1 = PA3[3]
TARG2 = PA3[4]
TARG3 = PA3[2]
TARG4 = PA3[6]
TARG5 = PA3[5]
TARG6 = PA3[1]
wait(.2)
current = true
fr = false
wait(.1)
wpb = true
num = num +1
return 
end
if num == 4 then
wpb = false
current = false
fr = true
char["Left Leg"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent:FindFirstChild("Defense")then
 fs = math.floor(math.random(7,15) * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(math.random(7,15) * atk.Value)
end
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
end)
s1:Play()
wait(.1)
TARG1 = PA4[4]
TARG2 = PA4[3]
TARG3 = PA4[2]
TARG4 = PA4[6]
TARG5 = PA4[5]
TARG6 = PA4[1]
wait(.1)
TARG1 = PA4[4]
TARG2 = PA4[3]
TARG3 = PA4[2]
TARG4 = PA4[6]
TARG5 = PA4[5]
TARG6 = PA4[1]
wait(.1)
TARG1 = PA4[4]
TARG2 = PA4[3]
TARG3 = PA4[2]
TARG4 = PA4[6]
TARG5 = PA4[5]
TARG6 = PA4[1]
wait(.1)
TARG1 = PA4[4]
TARG2 = PA4[3]
TARG3 = PA4[2]
TARG4 = PA4[6]
TARG5 = PA4[5]
TARG6 = PA4[1]
wait(.2)
current = true
fr = false
wait(.1)
wpb = true
num = 1
return 
end
end
end)
--[[
	
ts.C0 = ts.C0:lerp(PA4[1],.4)
nc.C0 = nc.C0:lerp(PA4[2],.4)
ll.C0 = ll.C0:lerp(PA4[5],.4)
rl.C0 = rl.C0:lerp(PA4[6],.4)
w3.C0 = w3.C0:lerp(PA4[4],.4)
w4.C0 = w4.C0:lerp(PA4[3],.4)
--]]
mouse.KeyDown:connect(function(key)key = key:lower()
if key == "z" then
if current == true and opend == true and stun.Value == false and energy > 8  and S1 == true  then
energy = energy - 9
S1T = 0
current = false
local num = 0
repeat
fr = true
local fs 
char["Right Arm"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent:FindFirstChild("Defense")then
hit.Parent:FindFirstChild("Defense").Value = hit.Parent:FindFirstChild("Defense").Value -.02
 fs = math.floor(4 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(4 * atk.Value)
end
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
end)
TARG1 = PA1[5]
TARG2 = PA1[6]
TARG3 = PA1[4]
TARG4 = PA1[3]
TARG5 = PA1[2]
TARG6 = PA1[1]
wait(.11)
fr = false
wait(.11)
fr = true
local fs 
char["Left Arm"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent:FindFirstChild("Defense")then
hit.Parent:FindFirstChild("Defense").Value = hit.Parent:FindFirstChild("Defense").Value -.02
 fs = math.floor(4 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(4 * atk.Value)
end
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
end)
TARG1 = PA1C[5]
TARG2 = PA1C[6]
TARG3 = PA1C[4]
TARG4 = PA1C[3]
TARG5 = PA1C[2]
TARG6 = PA1C[1]
wait(.11)
fr = false
wait(.11)
num = num + 2
until num == 10
current = true 
wait(3) 
end
end
end)
--- KEYDOWN 2
mouse.KeyDown:connect(function(key)key = key:lower()
if key == "x" then
if current == true and opend == true and stun.Value == false and energy > 15  and S2 == true then
energy = energy - 16
S2T = 0
char.Humanoid.WalkSpeed = 0
f = Instance.new("Part",game.Workspace)
f.Position = char.Torso.Position + Vector3.new(0, -2, -12)
f.CanCollide = false
f.Transparency = 1
local asdf
local cf
f.Touched:connect(function(hit)
if hit.Parent:FindFirstChild("Humanoid") then
else
cf = f.CFrame
asdf = hit.BrickColor	
end
end)
current = false
TARG1 = Stomp[5]
TARG2 = Stomp[6]
TARG3 = Stomp[2]
TARG4 = Stomp[4]
TARG5 = Stomp[3]
TARG6 = Stomp[1]
wait(.05)
TARG1 = Stomp[5]
TARG2 = Stomp[6]
TARG3 = Stomp[2]
TARG4 = Stomp[4]
TARG5 = Stomp[3]
TARG6 = Stomp[1]
wait(.05)
TARG1 = Stomp[5]
TARG2 = Stomp[6]
TARG3 = Stomp[2]
TARG4 = Stomp[4]
TARG5 = Stomp[3]
TARG6 = Stomp[1]
wait(.05)
TARG1 = Stomp[5]
TARG2 = Stomp[6]
TARG3 = Stomp[2]
TARG4 = Stomp[4]
TARG5 = Stomp[3]
TARG6 = Stomp[1]
wait(.05)
TARG1 = Stomp[5]
TARG2 = Stomp[6]
TARG3 = Stomp[2]
TARG4 = Stomp[4]
TARG5 = Stomp[3]
TARG6 = Stomp[1]
wait(.05)
TARG1 = Stomp2[5]
TARG2 = Stomp2[6]
TARG3 = Stomp2[2]
TARG4 = Stomp2[4]
TARG5 = Stomp2[3]
TARG6 = Stomp2[1]
wait(.05)
TARG1 = Stomp2[5]
TARG2 = Stomp2[6]
TARG3 = Stomp2[2]
TARG4 = Stomp2[4]
TARG5 = Stomp2[3]
TARG6 = Stomp2[1]
wait(.05)
TARG1 = Stomp2[5]
TARG2 = Stomp2[6]
TARG3 = Stomp2[2]
TARG4 = Stomp2[4]
TARG5 = Stomp2[3]
TARG6 = Stomp2[1]
wait(.05)
TARG1 = Stomp2[5]
TARG2 = Stomp2[6]
TARG3 = Stomp2[2]
TARG4 = Stomp2[4]
TARG5 = Stomp2[3]
TARG6 = Stomp2[1]
wait(.05)
local fs = Instance.new("Part",char)
fs.BrickColor = asdf
fs.Size = Vector3.new(1,1,1)
fs.CanCollide = false
fs.Anchored = true
fs.Transparency = 1
fs.CFrame = char.Torso.CFrame * CFrame.new(0,-2.5,0)
local fr = Instance.new("Part",char)
fr.BrickColor = asdf
fr.Size = Vector3.new(1,1,1)
fr.CanCollide = false
fr.Anchored = true
fr.CFrame = char.Torso.CFrame * CFrame.new(0,-2.5,0) * CFrame.Angles(math.rad(90),0,0)
local fms = Instance.new("SpecialMesh",fr)
fms.MeshId = "http://www.roblox.com/asset/?id=3270017"
fms.Scale = Vector3.new(1,1,6)
TARG7 = Vector3.new(40,40,10)
obj = fms
obj2 = fs
TARG8 = Vector3.new(40,5,40)
local dmg = true
fs.Touched:connect(function(hit)
if dmg == true and hit.Parent:FindFirstChild("Humanoid") then
if hit.Parent:FindFirstChild("Humanoid").Health ~= 0  and hit.Parent.Name ~= player.Name then
if hit.Parent:FindFirstChild("Speed")then
hit.Parent:FindFirstChild("Speed").Value = hit.Parent:FindFirstChild("Speed").Value -.1
hit.Parent:FindFirstChild("Speed").Value = hit.Parent:FindFirstChild("Speed").Value -.1
hit.Parent:FindFirstChild("Speed").Value = hit.Parent:FindFirstChild("Speed").Value -.1
hit.Parent:FindFirstChild("Speed").Value = hit.Parent:FindFirstChild("Speed").Value -.1
hit.Parent:FindFirstChild("Speed").Value = hit.Parent:FindFirstChild("Speed").Value -.1
--- I made it do that so this would stick for 12 Seconds ~ Thats how the stats work
local fx = math.floor(22 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
dmg = false
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,math.floor(22 * atk.Value / hit.Parent:FindFirstChild("Defense").Value))
else
local fx = math.floor(22 * atk.Value)
dmg = false
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,math.floor(22 * atk.Value))
end
end
end
end)--]]
wait(.3)
game.Debris:AddItem(fr,8)
game.Debris:AddItem(fs,8)
current = true 
for i = 1,10 do
wait()
fr.Transparency = fr.Transparency + .1
end
wait(.4)
dmg = false
wait(3) 
end
end
end)
--[[ts.C0 = ts.C0:lerp(Stomp2[1],.4)
nc.C0 = nc.C0:lerp(Stomp2[2],.4)
ll.C0 = ll.C0:lerp(Stomp2[3],.4)
rl.C0 = rl.C0:lerp(Stomp2[4],.4)
w3.C0 = w3.C0:lerp(Stomp2[5],.4)
w4.C0 = w4.C0:lerp(Stomp2[6],.4)

TARG1 = stunned[3] -- LEFT ARM
TARG2 = stunned[2]-- RIGHT ARM
TARG3 = stunned[1] -- NECK
TARG4 = stunned[5] -- RIGHT LEG
TARG5 = stunned[4] -- LEFT LEG
TARG6 = stunned[6] -- TORSO TILT
-]]




local Speed = .4
local lspeed = .2
game:GetService("RunService").RenderStepped:connect(function()
if Vector3.new(char.Torso.Velocity.X,0,char.Torso.Velocity.Z).magnitude > 2 then 
IdleAndWalk = true
else
IdleAndWalk = false
end
if TARG4 ~= nil then
rl.C0 = rl.C0:lerp(TARG4,lspeed)
end
if TARG5 ~= nil then
ll.C0 = ll.C0:lerp(TARG5,lspeed)
end
if TARG3 ~= nil then
nc.C0 = nc.C0:lerp(TARG3,lspeed)
end
if TARG1 ~= nil then
w3.C0 = w3.C0:lerp(TARG1,Speed)
end
if TARG2 ~= nil then
w4.C0 = w4.C0:lerp(TARG2,Speed)
end
if TARG6 ~= nil then
ts.C0 = ts.C0:lerp(TARG6,Speed)
end
if TARG7 ~= nil and obj ~= nil then
obj.Scale = obj.Scale:lerp(TARG7,.05)
end
if TARG8 ~= nil and obj2 ~= nil then
obj2.Size = obj2.Size:lerp(TARG8,.05)
obj2.CFrame = char.Torso.CFrame * CFrame.new(0,-2.5,0)
end
end)
--SEC HANDLER
--[[
S1 = true
S1T = 7
S1TF = 7
S2 = true
S2T = 15
S2TF = 15
S3 = true
S3T = 12
S3TF = 12
S4 = true
S4T = 30
S4TF = 30
energy = 0
--]]




--makeui(Color3.new(0,255,0),"+Speed")
--makeui(Color3.new(255,0,0),"+Damage")
--makeui(Color3.new(0,0,255),"+Defense")
---VALUE CHANGERS 
satk = atk.Value
sdef = def.Value
sspd = spd.Value
atk.Changed:connect(function()
if satk > atk.Value then
makeui(Color3.new(255,0,0),"-Damage")
satk = atk.Value
atkt.Value = atkt.Value + 4
else
makeui(Color3.new(255,0,0),"+Damage")
satk = atk.Value
atkt.Value = atkt.Value + 4
end	
end)
def.Changed:connect(function()
if sdef > def.Value then
makeui(Color3.new(0,0,255),"-Defense")
sdef = def.Value
deft.Value = deft.Value + 4
else
makeui(Color3.new(0,0,255),"+Defense")
sdef = def.Value
deft.Value = deft.Value + 4
end	
end)
spd.Changed:connect(function()
if sspd > spd.Value then
makeui(Color3.new(0,255,0),"-Speed")
sspd = spd.Value
spdt.Value = spdt.Value + 4
else
makeui(Color3.new(0,255,0),"+Speed")
sspd = spd.Value
spdt.Value = spdt.Value + 4
end	
end)
stun.Changed:connect(function()
if stun.Value == true then
makeui(Color3.new(255,255,0),"+Stunned")
wait(4)
if opend == true then
stun.Value = false
end
end
if stun.Value == false then
makeui(Color3.new(255,255,0),"-Stunned")
end
end)
-------------------
while wait() do
wait()
fa.Text = "Attack : "..atk.Value
fa2.Text = "Speed : "..spd.Value
fa3.Text = "Defense : "..def.Value

if atkt.Value > 0 then
atkt.Value = atkt.Value - .03
else
atk.Value = 1.1
end
if deft.Value > 0 then
deft.Value = deft.Value - .03
else
def.Value = 1
end
if spdt.Value > 0 then
spdt.Value = spdt.Value - .03
else
spd.Value = 1
end
----HP
local initX5 = f5.Size.X.Scale
local maxhp = char.Humanoid.MaxHealth
local hp = char.Humanoid.Health
local Pie = (hp / maxhp)
f5f:TweenSize( UDim2.new( initX5*Pie*3.33, 0, 1, 0),"In","Linear",1 )
---Energy
local DV1 = energy / 100
local initX6 = f6.Size.X.Scale
f6f:TweenSize( UDim2.new( initX6*DV1*3.33, 0, 1, 0),"In","Linear",1 )
--Skill 1
local DV2 = S1T  / S1TF
local initX6 = f1.Size.X.Scale
f1f:TweenSize( UDim2.new( initX6*DV2* 1.665, 0, 1, 0),"In","Linear",1 )
if S1T <  14  then
S1T = S1T + .05
S1 = false
else
S1 = true
end
if S1T == 14 then
S1 = true
end
--Skill 2
local DV2 = S2T  / S2TF
local initX6 = f2.Size.X.Scale
f2f:TweenSize( UDim2.new( initX6*DV2* 3.566, 0, 1, 0),"In","Linear",1 )
if S2T <  14  then
S2T = S2T + .05
S2 = false
else
S2 = true
end
if S2T == 15 then
S2 = true
end
--Skill 3
local DV2 = S3T  / S3TF
local initX6 = f3.Size.X.Scale
f3f:TweenSize( UDim2.new( initX6*DV2* 2.855, 0, 1, 0),"In","Linear",1 )
if S3T <  14  then
S3T = S3T + .01
S3 = false
else
S3 = true
end
if S3T == 15 then
S3 = true
end
--Skill 4
local DV2 = S4T  / S4TF
local initX6 = f4.Size.X.Scale
f4f:TweenSize( UDim2.new( initX6*DV2*3.45, 0, 1, 0),"In","Linear",1 )
if S4T <  29  then
S4T = S4T + .04
S4 = false
else
S4= true
end
if S4T == 30 then
S4 = true
end

if energy < 100 then
energy = energy + .1
end
if opend == true and current == true and idleq == false then
if  stun.Value == true then
TARG1 = stunned[3] -- LEFT ARM
TARG2 = stunned[2]-- RIGHT ARM
TARG3 = stunned[1] -- NECK
TARG4 = stunned[5] -- RIGHT LEG
TARG5 = stunned[4] -- LEFT LEG
TARG6 = stunned[6] -- TORSO TILT
char.Humanoid.WalkSpeed = 0 
end
if stun.Value == false and current ==  true then
char.Humanoid.WalkSpeed = 16 * spd.Value
end
if char.Humanoid.Jump == true and stun.Value == false then
TARG1 = jump[3] -- LEFT ARM
TARG2 = jump[2]-- RIGHT ARM
TARG3 = jump[1] -- NECK
TARG4 = jump[5] -- RIGHT LEG
TARG5 = jump[4] -- LEFT LEG
TARG6 = CFrame.new(0,0,0)
end
--ts.C0 = ts.C0:lerp(stunned[6],.4)
--nc.C0 = nc.C0:lerp(stunned[1],.4)
--ll.C0 = ll.C0:lerp(stunned[4],.4)
--rl.C0 = rl.C0:lerp(stunned[5],.4)
--w3.C0 = w3.C0:lerp(stunned[3],.4)
--w4.C0 = w4.C0:lerp(stunned[2],.4)
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false  then
TARG1 = walk[8] -- LEFT ARM
TARG2 = walk[7]-- RIGHT ARM
TARG3 = walk[6] -- NECK
TARG4 = walk[4] -- RIGHT LEG
TARG5 = walk[3] -- LEFT LEG
TARG6 = walk[5] -- TORSO
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false then
TARG1 = walk[8] -- LEFT ARM
TARG2 = walk[7]-- RIGHT ARM
TARG3 = walk[6] -- NECK
TARG4 = walk[2] -- RIGHT LEG
TARG5 = walk[1] -- LEFT LEG
TARG6 = walk[5] -- TORSO
end	
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false then
wait(.05)
end
else
if IdleAndWalk == false and char.Humanoid.Jump == false and stun.Value == false then	
TARG1 = idle[5]
TARG2 = idle[6]
TARG3 = idle[2]
TARG4 = idle[4]
TARG5 = idle[3]
TARG6 = idle[1]
end
end
end
end

--[[




	ts.C0 = ts.C0:lerp(idle[1],.4)
nc.C0 = nc.C0:lerp(idle[2],.4)
ll.C0 = ll.C0:lerp(idle[3],.4)
rl.C0 = rl.C0:lerp(idle[4],.4)
w3.C0 = w3.C0:lerp(idle[5],.4)
w4.C0 = w4.C0:lerp(idle[6],.4)
 
TARG1 = idle[5]
TARG2 = idle[6]
TARG3 = idle[2]
TARG4 = idle[5]
TARG5 = idle[3]
TARG6 = idle[2]
if TARG4 ~= nil then
rl.C0 = rl.C0:lerp(TARG4,lspeed)
end
if TARG5 ~= nil then
ll.C0 = ll.C0:lerp(TARG5,lspeed)
end
if TARG3 ~= nil then
nc.C0 = nc.C0:lerp(TARG3,lspeed)
end
if TARG1 ~= nil then
w3.C0 = w3.C0:lerp(TARG1,Speed)
end
if TARG2 ~= nil then
w4.C0 = w4.C0:lerp(TARG2,Speed)
end

ll.C0 = ll.C0:lerp(walk[3],.4)
rl.C0 = rl.C0:lerp(walk[4],.4)
---OTHER ANIMS
ts.C0 = ts.C0:lerp(walk[5],.4)
nc.C0 = nc.C0:lerp(walk[6],.4)
w4.C0 = w4.C0:lerp(walk[7],.4)
w3.C0 = w3.C0:lerp(walk[8],.4)

TARG1 = walk[8] -- LEFT ARM
TARG2 = walk[7]-- RIGHT ARM
TARG3 = walk[6] -- NECK
TARG4 = walk[] -- RIGHT LEG
TARG5 = walk[] -- LEFT LEG
TARG6 = walk[5] -- TORSO

for i = 0,1,wait() do
wait()
ll.C0 = ll.C0:lerp(walk[3],.4)
rl.C0 = rl.C0:lerp(walk[4],.4)
---OTHER ANIMS
ts.C0 = ts.C0:lerp(walk[5],.4)
nc.C0 = nc.C0:lerp(walk[6],.4)
w4.C0 = w4.C0:lerp(walk[7],.4)
w3.C0 = w3.C0:lerp(walk[8],.4)
end--]]