player = game:GetService("Players").LocalPlayer
char = player.Character
mouse = player:GetMouse()
idleq = false
local skl = false
parts = {}
poses = {}
local obj3
local TARG10
local TARG11
stun = Instance.new("BoolValue",char)
stun.Name = "Stunned"
stun.Value = false
atk = Instance.new("NumberValue",char)
atk.Name = "Attack"
atk.Value = 1
def = Instance.new("NumberValue",char)
def.Name = "Defense"
def.Value = 1
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


--POISION VARS
posd = Instance.new("BoolValue",char)
posd.Name = "Posioned"
posd.Value = false

pt = Instance.new("NumberValue",char)
pt.Name = "PoisonTime"
pt.Value = 0


bl = Instance.new("BoolValue",char)
bl.Name = "Blocking"
bl.Value = false

bll = Instance.new("BoolValue",char)
bll.Name = "BlockingLabel"
bll.Value = false

blt = Instance.new("NumberValue",char)
blt.Name = "BlockingLeft"
blt.Value = 50


pb = Instance.new("BoolValue",char)
pb.Name = "PauseBlock"
pb.Value = false
blm = 100

gd = Instance.new("BoolValue",char)
gd.Name = "Ground"

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
s1.SoundId = "rbxassetid://419372077"
s1.Pitch = 1.0
local s2 = Instance.new("Sound",char.Head)
s2.Volume = 1
s2.SoundId = "rbxassetid://419378177"
local s3 = Instance.new("Sound",char.Head)
s3.Volume = 1
s3.SoundId = "rbxassetid://"
local s4 = Instance.new("Sound",char.Head)
s4.Volume = 1
s4.SoundId = "rbxassetid://"
local s5 = Instance.new("Sound",char.Head)
s5.Volume = 1
s5.SoundId = "rbxassetid://"
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
ll.C0 * CFrame.new(-1.0,.5,0) * CFrame.Angles(0,math.rad(0),math.rad(-30)), -- LEFT LEG 
rl.C0 * CFrame.new(1,.5,.5) * CFrame.Angles(0,math.rad(-20),math.rad(40)), -- RIGHT LEG Idle
}
local jump = {
nc.C0  * CFrame.Angles(math.rad(20),0,0), -- HEAD BOB EQUIP
w4.C0 * CFrame.new(0,.5,0) * CFrame.Angles(0,0,math.rad(-30)), -- LEFT ARM Idle
w3.C0 * CFrame.new(0,.5,0) * CFrame.Angles(0,0,math.rad(30)), -- RIGHT ARM Idle	
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
local dropkick = {
ts.C0 * CFrame.new(0,.8,0) * CFrame.Angles(math.rad(90),math.rad(45),0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.new(0,0,-.2) *  CFrame.Angles(math.rad(-30),math.rad(-20),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(-.2,0,-.3) * CFrame.Angles(math.rad(-20),math.rad(0),math.rad(0)), -- LEFT LEG 
rl.C0 * CFrame.new(-.05,0,0) * CFrame.Angles(math.rad(00),math.rad(20),math.rad(0)), -- RIGHT LEG Idle
w3.C0 * CFrame.new(-2.7,1.5,0) * CFrame.Angles(math.rad(0),0,math.rad(170)), -- LEFT ARM Idle
w4.C0 * CFrame.new(2.7,1.5,0) * CFrame.Angles(math.rad(0),0,math.rad(-160)), -- RIGHT ARM Idle	
}
local block  = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.new(0,0,0) *  CFrame.Angles(math.rad(-9),math.rad(-0),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0), -- LEFT LEG idle
rl.C0 * CFrame.new(0,0,0) * CFrame.Angles(0,0,0), -- RIGHT LEG Idle
w3.C0 * CFrame.new(-.8,1.3,-.6) * CFrame.Angles(math.rad(-160),math.rad(0),math.rad(0)), -- LEFT ARM Idle
w4.C0 * CFrame.new(.8,1.3,-.6) * CFrame.Angles(math.rad(-160),math.rad(0),math.rad(0)), -- RIGHT ARM Idle	
}
local sjump = {
ts.C0 * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(-10),0,0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.new(0,0,0) *  CFrame.Angles(math.rad(-15),math.rad(-0),0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(0,.4,.8) * CFrame.Angles(math.rad(-70),0,0), -- LEFT LEG idle
rl.C0 * CFrame.new(0,.8,-.5) * CFrame.Angles(math.rad(-10),0,0), -- RIGHT LEG Idle
w3.C0 * CFrame.new(0,.5,.5) * CFrame.Angles(math.rad(-50),math.rad(0),math.rad(0)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(40),math.rad(0),math.rad(0)), -- RIGHT ARM Idle	
}
local UpSideDownPunch = {
ts.C0 * CFrame.new(0,-.5,0) * CFrame.Angles(math.rad(180),0,0), -- TORSO TILT ~ NONE REQUIRED
nc.C0  * CFrame.new(0,0,0) *  CFrame.Angles(0,0,0), -- HEAD BOB EQUIP
ll.C0 * CFrame.new(-.4,0,0) * CFrame.Angles(0,0,math.rad(-20)), -- LEFT LEG idle
rl.C0 * CFrame.new(.4,0,0) * CFrame.Angles(0,0,math.rad(20)), -- RIGHT LEG Idle
w3.C0 * CFrame.new(0,1.7,0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)), -- LEFT ARM Idle
w4.C0 * CFrame.new(0,1.7,0) * CFrame.Angles(math.rad(180),math.rad(0),math.rad(0)), -- RIGHT ARM Idle	
}
local BackBreaker = {
ts.C0 * CFrame.new(0,0,0) * CFrame.Angles(math.rad(10),math.rad(15),0), -- TORSO TILT	
nc.C0  * CFrame.Angles(math.rad(-15),math.rad(-5),0), -- HEAD BOB PUNCH 	
w4.C0 * CFrame.new(0,.1,.3) * CFrame.Angles(math.rad(-90),math.rad(-00),math.rad(0)), -- LEFT ARM PUNCH 3
w3.C0 * CFrame.new(0,.5,.5) * CFrame.Angles(math.rad(-90),math.rad(20),math.rad(0)), -- LEFT ARM PUNCH 3
ll.C0 * CFrame.new(-.3,0,.3) * CFrame.Angles(math.rad(-20),math.rad(30),math.rad(-10)), -- LEFT LEG 
rl.C0 * CFrame.new(-.2,1,-.5) * CFrame.Angles(math.rad(-40),0,math.rad(0)), -- RIGHT LEG Idle
}
local FrontFlipKick1 = {
	ts.C0 * CFrame.new(0,2,0) * CFrame.Angles(math.rad(-8),math.rad(0),0), -- TORSO TILT	
nc.C0  * CFrame.Angles(math.rad(-15),math.rad(-5),0), -- HEAD BOB PUNCH 	
w4.C0 * CFrame.new(0,1,-.3) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(0)), -- LEFT ARM PUNCH 3
w3.C0 * CFrame.new(0,1,-.3) * CFrame.Angles(math.rad(140),math.rad(0),math.rad(0)), -- LEFT ARM PUNCH 3
ll.C0 * CFrame.new(0,1,1) * CFrame.Angles(math.rad(-110),0,math.rad(0)), -- RIGHT LEG Idle
rl.C0 * CFrame.new(0,1,-1) * CFrame.Angles(math.rad(110),0,math.rad(0)), -- RIGHT LEG Idle
}
--[[for i = 0,1,wait() do
wait()
ts.C0 = ts.C0:lerp(FrontFlipKick1[1],.4)
nc.C0 = nc.C0:lerp(FrontFlipKick1[2],.4)
ll.C0 = ll.C0:lerp(FrontFlipKick1[5],.4)
rl.C0 = rl.C0:lerp(FrontFlipKick1[6],.4)
w3.C0 = w3.C0:lerp(FrontFlipKick1[4],.4)
w4.C0 = w4.C0:lerp(FrontFlipKick1[3],.4)
end--]]

--[[
--END
ts.C0 = ts.C0:lerp(UpSideDownPunch[1],.4)
nc.C0 = nc.C0:lerp(UpSideDownPunch[2],.4)
ll.C0 = ll.C0:lerp(UpSideDownPunch[3],.4)
rl.C0 = rl.C0:lerp(UpSideDownPunch[4],.4)
w3.C0 = w3.C0:lerp(UpSideDownPunch[5],.4)
w4.C0 = w4.C0:lerp(UpSideDownPunch[6],.4)
--START
ts.C0 = ts.C0:lerp(sjump[1],.4)
nc.C0 = nc.C0:lerp(sjump[2],.4)
ll.C0 = ll.C0:lerp(sjump[3],.4)
rl.C0 = rl.C0:lerp(sjump[4],.4)
w3.C0 = w3.C0:lerp(sjump[5],.4)
w4.C0 = w4.C0:lerp(sjump[6],.4)
--]]
-- CFrame.new(-.05,0,0) * CFrame.new(math.rad(0),math.rad(0),math.rad(00)), -- LEFT LEG 
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
f1l.Text = "[Z] Spam Punches"


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
f3l.Text = "[C] Drop kick"


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
f4l.Text = "[V] Speed Shot "


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
f6f.BackgroundColor3 = BrickColor.new("Deep orange").Color
f6f.Size = UDim2.new(1,0,1,0)

f6l = Instance.new("TextLabel",f6)
f6l.TextScaled = true
f6l.TextStrokeTransparency = 0
f6l.BackgroundTransparency  = 1
f6l.TextColor3 = Color3.new(255,255,255)
f6l.BorderSizePixel = 0
f6l.Size = UDim2.new(1,0,1,0)
f6l.Text = "Energy"



--BLOCK
f9 = Instance.new("Frame",f)
f9.BorderSizePixel = 0
f9.BackgroundColor3 = Color3.new(255,255,255)
f9.Size = UDim2.new(0.62,0,0.03,0)
f9.Position = UDim2.new(.2,0,.96,0)

f9f = Instance.new("Frame",f9)
f9f.BorderSizePixel = 0
f9f.BackgroundColor3 = BrickColor.new("Forest green").Color
f9f.Size = UDim2.new(1,0,1,0)

f9l = Instance.new("TextLabel",f9)
f9l.TextScaled = true
f9l.TextStrokeTransparency = 0
f9l.BackgroundTransparency  = 1
f9l.TextColor3 = Color3.new(255,255,255)
f9l.BorderSizePixel = 0
f9l.Size = UDim2.new(1,0,1,0)
f9l.Text = "Block"

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
s2:Play()
local par = Instance.new("Part",game.Workspace)
par.Transparency = 1
par.Anchored = true
par.CFrame = p.CFrame
par.CanCollide = false
game.Debris:AddItem(par,10)
local f = Instance.new("BillboardGui",par)
f.Size = UDim2.new(1.2,0,1.2,0)
f.AlwaysOnTop = true
f.StudsOffset = Vector3.new(0,2,0)
local fr = Instance.new("Frame",f)
fr.BackgroundTransparency = 1
fr.Size = UDim2.new(1,0,1,0)
fr.ClipsDescendants = true
local fe = Instance.new("TextLabel",fr)
fe.Size = UDim2.new(1,0,1,0)
fe.BackgroundTransparency = 1
fe.TextColor3 = BrickColor.new("Bright yellow").Color
fe.TextStrokeTransparency = 0
fe.Text = txt
fe.TextScaled = true
fe.Font = "Legacy"
fe.Position = UDim2.new(0,0,1,0)
fe:TweenPosition(UDim2.new(0,0,0,0),"In","Linear",.5)
wait(2)
fe:TweenPosition(UDim2.new(0,0,-1,0),"In","Linear",.4)
for i = 0,10 do
wait()
fe.TextTransparency = fe.TextTransparency + .1
end
end



makeui = function(color,txt)
	local par = Instance.new("Part",game.Workspace)
par.Transparency = 1
par.Anchored = true
par.CFrame = char.Head.CFrame
par.CanCollide = false
game.Debris:AddItem(par,10)
local f = Instance.new("BillboardGui",par)
f.Size = UDim2.new(1.2,0,1.2,0)
f.AlwaysOnTop = true
f.StudsOffset = Vector3.new(0,4,0)
local fr = Instance.new("Frame",f)
fr.BackgroundTransparency = 1
fr.Size = UDim2.new(2,0,2,0)
fr.ClipsDescendants = true
local fe = Instance.new("TextLabel",fr)
fe.Size = UDim2.new(1,0,1,0)
fe.BackgroundTransparency = 1
fe.TextColor3 = Color3.new(255,255,255)
fe.TextStrokeTransparency = 0
fe.Text = txt
fe.TextScaled = true
fe.Font = "SourceSansBold"
game.Debris:AddItem(f,4)
fe.Position = UDim2.new(0,0,1,0)
fe:TweenPosition(UDim2.new(0,0,0,0),"In","Linear",.5)
wait(2)
fe:TweenPosition(UDim2.new(0,0,-1,0),"In","Linear",.4)
for i = 0,10 do
wait()
fe.TextTransparency = fe.TextTransparency + .1
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



	turnonwelds()
opend = true

--------------SKILL/KEY EVENTS
--------------MOUSE EVENTS , ATTACKS
local wpb = true
local num = 1
mouse.Button1Down:connect(function()
if current == true and idleq == false and opend == true and wpb == true and stun.Value == false and bl.Value == false then
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
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait()  wait() hit.Parent.BlockingLeft.Value = 5 wait()  wait() hit.Parent.PauseBlock.Value = false
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
--
end
end)
s1.Pitch = 1
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
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
end
end)
s1.Pitch = 1.2
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
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
--
end
end)
s1.Pitch = 1.35
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
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
--
end
end)
s1.Pitch = .8
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
local rtb = true
mouse.KeyDown:connect(function(key)key = key:lower()
if key == "e" then
if current == true and opend == true and stun.Value == false  and blt.Value > 20  and rtb == true then
local sub
if bl.Value == false then
rtb = false
bl.Value = true
skl = true
TARG1 = block[5]
TARG2 = block[6]
TARG3 = block[2]
TARG4 = block[4]
TARG5 = block[3]
TARG6 = block[1]
wait(.05)
TARG1 = block[5]
TARG2 = block[6]
TARG3 = block[2]
TARG4 = block[4]
TARG5 = block[3]
TARG6 = block[1]
wait(.05)
TARG1 = block[5]
TARG2 = block[6]
TARG3 = block[2]
TARG4 = block[4]
TARG5 = block[3]
TARG6 = block[1]
wait(.05)
TARG1 = block[5]
TARG2 = block[6]
TARG3 = block[2]
TARG4 = block[4]
TARG5 = block[3]
TARG6 = block[1]
wait(.05)
bl.Value = true
skl = true
char.Humanoid.WalkSpeed = 5
wait(1)
rtb = true
else
rtb = false
skl = false
bl.Value = false
current = true
wait(1)
rtb = true
end
end
end
end)
mouse.KeyDown:connect(function(key)key = key:lower()
if key == "z" then
if current == true and opend == true and stun.Value == false and energy > 19 and S1 == true  then
energy = energy - 20
S1T = 0
current = false
local num = 0
repeat
fr = true
local fs 
s1.Pitch = 1.2
s1:Play()
char["Right Arm"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent.Name == player.Name then return end
if hit.Parent:FindFirstChild("Defense") and hit.Parent.Name ~= player.Name then


hit.Parent:FindFirstChild("Defense").Value = hit.Parent:FindFirstChild("Defense").Value -.02
fs = math.floor(2 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)


else
 fs = math.floor(2 * atk.Value)
end
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
--
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
s1.Pitch = 1.2
s1:Play()
char["Left Arm"].Touched:connect(function(hit)
    if not fr then return end
if hit.Parent.Name == player.Name then return end
if hit.Parent:FindFirstChild("Defense")and hit.Parent.Name ~= player.Name then
hit.Parent:FindFirstChild("Defense").Value = hit.Parent:FindFirstChild("Defense").Value -.02
 fs = math.floor(2 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
else
 fs = math.floor(2 * atk.Value)
end
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fs
DGU(hit,fs)
fr = false
end
--
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
if current == true and opend == true and stun.Value == false and energy > 24  and S2 == true then
energy = energy - 25
S2T = 0
skl = true
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
obj2 = fs
TARG8 = Vector3.new(50,5,50)

fs.Touched:connect(function(hit)
if dmg == true and hit.Parent:FindFirstChild("Humanoid") then
if hit.Parent:FindFirstChild("Humanoid").Health ~= 0  and hit.Parent.Name ~= player.Name then
if hit.Parent:FindFirstChild("Speed")then
hit.Parent:FindFirstChild("Speed").Value = hit.Parent:FindFirstChild("Speed").Value -.1
hit.Parent:FindFirstChild("Speed").Value = hit.Parent:FindFirstChild("Speed").Value -.1
--- I made it do that so this would stick for 12 Seconds ~ Thats how the stats work
local fx = math.floor(12 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
dmg = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
local fx = math.floor(12 * atk.Value)
dmg = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
end
end
end
end)--]]
wait(.3)

game.Debris:AddItem(fr,8)
game.Debris:AddItem(fs,8)
skl = false
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



mouse.KeyDown:connect(function(key)key = key:lower()
if key == "c" then
if current == true and opend == true and stun.Value == false and energy > 34  and S3 == true then
energy = energy - 35
S3T = 0
current = false
TARG1 = dropkick[5]
TARG2 = dropkick[6]
TARG3 = dropkick[2]
TARG4 = dropkick[4]
TARG5 = dropkick[3]
TARG6 = dropkick[1]
wait(.05)
TARG1 = dropkick[5]
TARG2 = dropkick[6]
TARG3 = dropkick[2]
TARG4 = dropkick[4]
TARG5 = dropkick[3]
TARG6 = dropkick[1]
wait(.05)
TARG1 = dropkick[5]
TARG2 = dropkick[6]
TARG3 = dropkick[2]
TARG4 = dropkick[4]
TARG5 = dropkick[3]
TARG6 = dropkick[1]
wait(.05)
TARG1 = dropkick[5]
TARG2 = dropkick[6]
TARG3 = dropkick[2]
TARG4 = dropkick[4]
TARG5 = dropkick[3]
TARG6 = dropkick[1]
wait(.05)
local dmg = true
char["Right Leg"].Touched:connect(function(hit)
if dmg == true and hit.Parent:FindFirstChild("Humanoid") and hit.Parent.Name ~= player.Name then
local fn = Instance.new("Part",char)
fn.BrickColor = BrickColor.new("Medium stone grey")
fn.Size = Vector3.new(1,1,1)
fn.CanCollide = false
fn.Anchored = true
s2.Pitch = .9
s2:Play()
game.Debris:AddItem(fn,8)
fn.CFrame = char.Torso.CFrame * CFrame.new(0,-2.5,0) 
local fms = Instance.new("SpecialMesh",fn)
fms.MeshId = "http://www.roblox.com/asset/?id=20329976"
fms.Scale = Vector3.new(1,1,6)
TARG7 = Vector3.new(10,5,10)
obj = fms
if hit.Parent:FindFirstChild("Humanoid").Health ~= 0  and hit.Parent.Name ~= player.Name then
if hit.Parent:FindFirstChild("Stunned")then
	hit.Parent:FindFirstChild("Stunned").Value = true
--- I made it do that so this would stick for 12 Seconds ~ Thats how the stats work
local fx = math.floor(13 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
dmg = false
--[[
if hit.Parent.Name ~= player.Name and hit.Parent:FindFirstChild("Humanoid") and fr == true then
    fr = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
--
end
--]]
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
local fx = math.floor(13 * atk.Value)
dmg = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
end
end

for i = 1,10 do
wait()
fn.Transparency = fn.Transparency + .1
end
end
end)--]]
wait(.1)
skl = false
current = true 
wait(.2)
dmg = false
wait(3) 
end
end
end)




mouse.KeyDown:connect(function(key)key = key:lower()
if key == "v" then
if current == true and opend == true and stun.Value == false and energy > 49 and S4 == true then
current = false
wait(0.05)
skl = true
local dmg = true
S4T = 0
char.Humanoid.WalkSpeed = 22
char.Humanoid.JumpPower = 0
energy = energy - 59
wait()
TARG1 = sjump[5] -- LEFT ARM
TARG2 = sjump[6]-- RIGHT ARM
TARG3 = sjump[2] -- NECK
TARG4 = sjump[3] -- RIGHT LEG
TARG5 = sjump[4] -- LEFT LEG
TARG6 = sjump[1] -- TORSO
wait(0.05)
TARG1 = sjump[5] -- LEFT ARM
TARG2 = sjump[6]-- RIGHT ARM
TARG3 = sjump[2] -- NECK
TARG4 = sjump[3] -- RIGHT LEG
TARG5 = sjump[4] -- LEFT LEG
TARG6 = sjump[1] -- TORSO
wait(0.05)
TARG1 = sjump[5] -- LEFT ARM
TARG2 = sjump[6]-- RIGHT ARM
TARG3 = sjump[2] -- NECK
TARG4 = sjump[3] -- RIGHT LEG
TARG5 = sjump[4] -- LEFT LEG
TARG6 = sjump[1] -- TORSO
wait(0.05)
TARG1 = sjump[5] -- LEFT ARM
TARG2 = sjump[6]-- RIGHT ARM
TARG3 = sjump[2] -- NECK
TARG4 = sjump[3] -- RIGHT LEG
TARG5 = sjump[4] -- LEFT LEG
TARG6 = sjump[1] -- TORSO
wait(0.05)

wait(.5)
char.Humanoid.JumpPower = 200
char.Humanoid.Jump = true

TARG1 = jump[3] -- LEFT ARM
TARG2 = jump[2]-- RIGHT ARM
TARG3 = jump[1] -- NECK
TARG4 = jump[5] -- RIGHT LEG
TARG5 = jump[4] -- LEFT LEG
TARG6 = CFrame.new(0,0,0)
wait(0.05)

TARG1 = jump[3] -- LEFT ARM
TARG2 = jump[2]-- RIGHT ARM
TARG3 = jump[1] -- NECK
TARG4 = jump[5] -- RIGHT LEG
TARG5 = jump[4] -- LEFT LEG
TARG6 = CFrame.new(0,0,0)
wait(0.05)

wait(1)
local r = Instance.new("Part",char)
r.Size = Vector3.new(2,2,2)
game.Debris:AddItem(r,5)
r.CanCollide = false
r.Transparency = 1
r.Position = char.Torso.CFrame.p
local w = Instance.new("Weld",char)
w.Part0 = char.Torso
w.Part1 = r
w.C0 = CFrame.new(0,4,0)
r.Anchored = false
r.Touched:connect(function(hit)
r:remove()

	local fs = Instance.new("Part",char)
fs.BrickColor = hit.BrickColor
fs.Size = Vector3.new(1,1,1)
fs.CanCollide = false
fs.Anchored = true
fs.Transparency = 1
fs.CFrame = char.Torso.CFrame * CFrame.new(0,0,0)
local fr = Instance.new("Part",char)
fr.BrickColor = hit.BrickColor
fr.Size = Vector3.new(1,1,1)
fr.CanCollide = false
fr.Anchored = true
fr.CFrame = r.CFrame * CFrame.new(0,-2,0)* CFrame.Angles(math.rad(90),0,0)
local fms = Instance.new("SpecialMesh",fr)
fms.MeshId = "http://www.roblox.com/asset/?id=3270017"
fms.Scale = Vector3.new(1,1,6)
TARG7 = Vector3.new(90,90,10)
obj = fms
obj2 = fs
TARG8 = Vector3.new(90,5,90)
local dmg = true
game.Debris:AddItem(fr,8)
game.Debris:AddItem(fs,8)
current = true
skl = false
fs.Touched:connect(function(hit)
if dmg == true and hit.Parent:FindFirstChild("Humanoid") then
if hit.Parent:FindFirstChild("Humanoid").Health ~= 0  and hit.Parent.Name ~= player.Name then
if hit.Parent:FindFirstChild("Speed")then
hit.Parent:FindFirstChild("Speed").Value = hit.Parent:FindFirstChild("Speed").Value -.4

spd.Value = spd.Value + .1
--- I made it do that so this would stick for 12 Seconds ~ Thats how the stats work
local fx = math.floor(15 * atk.Value / hit.Parent:FindFirstChild("Defense").Value)
dmg = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
local fx = math.floor(15 * atk.Value)
dmg = false
if hit.Parent:FindFirstChild("Blocking")then
if hit.Parent:FindFirstChild("Blocking").Value == true then
hit.Parent.PauseBlock.Value = true wait() hit.Parent.BlockingLeft.Value = 5 wait() hit.Parent.PauseBlock.Value = true 
hit.Parent.BlockingLabel.Value = true
stun.Value = true
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
else
hit.Parent:FindFirstChild("Humanoid").Health = hit.Parent:FindFirstChild("Humanoid").Health - fx
DGU(hit,fx)
fr = false
end
end
end
end
end)--]]







for i = 1,20 do
wait()
fr.Transparency = fr.Transparency + .05
end
dmg = false
end)

TARG1 = UpSideDownPunch[5] -- LEFT ARM
TARG2 = UpSideDownPunch[6]-- RIGHT ARM
TARG3 = UpSideDownPunch[2] -- NECK
TARG4 = UpSideDownPunch[3] -- RIGHT LEG
TARG5 = UpSideDownPunch[4] -- LEFT LEG
TARG6 = UpSideDownPunch[1] -- TORSO
wait(1.6)
dmg = false
current = true
skl = false
end











end
end)
--[[
--END
ts.C0 = ts.C0:lerp(UpSideDownPunch[1],.4)
nc.C0 = nc.C0:lerp(UpSideDownPunch[2],.4)
ll.C0 = ll.C0:lerp(UpSideDownPunch[3],.4)
rl.C0 = rl.C0:lerp(UpSideDownPunch[4],.4)
w3.C0 = w3.C0:lerp(UpSideDownPunch[5],.4)
w4.C0 = w4.C0:lerp(UpSideDownPunch[6],.4)
--START
ts.C0 = ts.C0:lerp(sjump[1],.4)
nc.C0 = nc.C0:lerp(sjump[2],.4)
ll.C0 = ll.C0:lerp(sjump[3],.4)
rl.C0 = rl.C0:lerp(sjump[4],.4)
w3.C0 = w3.C0:lerp(sjump[5],.4)
w4.C0 = w4.C0:lerp(sjump[6],.4)
--OTHER
TARG1 = walk[8] -- LEFT ARM
TARG2 = walk[7]-- RIGHT ARM
TARG3 = walk[6] -- NECK
TARG4 = walk[] -- RIGHT LEG
TARG5 = walk[] -- LEFT LEG
TARG6 = walk[5] -- TORSO
--]]
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
if TARG10 ~= nil and obj3 ~= nil and TARG11 ~= nil then
obj3.Size = obj3.Size:lerp(TARG10,.05)
obj3.CFrame = char.Torso.CFrame * CFrame.new(0,-2.5,0) * TARG11
end
if TARG10 ~= nil and obj3 ~= nil and obj3.Transparency ~= 1 then
obj2.Transparency = obj2.Transparency + .05
obj3.Transparency = obj3.Transparency + .05
wait(.1)
end
if char.Humanoid.Jump == true then
gd.Value = true	
else
gd.Value = false
end
if energy < 100 and current == true then
energy = energy + .05
end
for i=1,#parts do
	local Part = parts[i]
	Part.Size = Part.Size:lerp(Vector3.new(6, 32, 7),.05)
	for x=1,#poses do
	Part.CFrame = poses[i]	
	end
end
if blt.Value < 99 and bl.Value == false and stun.Value == false then
blt.Value = blt.Value + 0.03
end
if bl.Value == true and blt.Value < 5 then
bl.Value = false
current = true
skl = false
end
if posd.Value == true and pt.Value > 0 then
pt.Value = pt.Value - .02
char.Humanoid.Health = char.Humanoid.Health - .11
end
if pt.Value < 1 then
posd.Value = false
end
if bl.Value == true  then
blt.Value = blt.Value - .5
end
if atkt.Value > 0 then
atkt.Value = atkt.Value - .02
else
atk.Value = 1
end
if deft.Value > 0 then
deft.Value = deft.Value - .02
else
def.Value = 1
end
if spdt.Value > 0 then
spdt.Value = spdt.Value - .02
else
wait()
if spdt.Value < 1 then
spd.Value = 1 
end
end

--Skill 1
local DV2 = S1T  / S1TF
local initX6 = f1.Size.X.Scale
f1f:TweenSize( UDim2.new( initX6*DV2* 1.665, 0, 1, 0),"In","Linear",1 )



if S1T <  14  then
S1T = S1T + .02
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
S2T = S2T + .01
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
S4T = S4T + .015
S4 = false
else
S4= true
end
if S4T == 30 then
S4 = true
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
atkt.Value = atkt.Value + 4
makeui(Color3.new(255,0,0),"-Damage")
satk = atk.Value
else
atkt.Value = atkt.Value + 4
makeui(Color3.new(255,0,0),"+Damage")
satk = atk.Value
end	
end)
posd.Changed:connect(function()
if posd.Value == false  then
makeui(Color3.new(255,0,0),"-Poison")
else
makeui(Color3.new(255,0,0),"+Poison")
end	
end)

def.Changed:connect(function()
if sdef > def.Value then
deft.Value = deft.Value + 4
makeui(Color3.new(0,0,255),"-Defense")
sdef = def.Value
else
deft.Value = deft.Value + 4
makeui(Color3.new(0,0,255),"+Defense")
sdef = def.Value
end	
end)
spd.Changed:connect(function()
if sspd > spd.Value then
spdt.Value = spdt.Value + 4
makeui(Color3.new(0,255,0),"-Speed")
sspd = spd.Value
else
spdt.Value = spdt.Value + 4
makeui(Color3.new(0,255,0),"+Speed")
sspd = spd.Value
end	
end)
bll.Changed:connect(function()
	if bll.Value == true then
	
		local c = Instance.new("Part",game.Workspace)
c.Anchored = true
c.CanCollide = false
c.BrickColor = BrickColor.new("Medium stone grey")
c.Shape = "Ball"
c.Size = Vector3.new(1,1,1)
c.CFrame = char.Torso.CFrame
c.TopSurface = "Smooth"
c.BottomSurface = "Smooth"
c.Transparency = .1
		local v = Instance.new("Part",game.Workspace)
v.Anchored = true
v.CanCollide = false
v.BrickColor = BrickColor.new("Medium stone grey")
v.Size = Vector3.new(1,1,1)
v.CFrame = char.Torso.CFrame
v.TopSurface = "Smooth"
v.BottomSurface = "Smooth"
v.Transparency = .1
obj2 = c 
TARG8 = Vector3.new(30,30,30) 
obj3 = v 
TARG10 = Vector3.new(15,21,15) 
TARG11 = CFrame.new(0,0,0)
makeui(BrickColor.new("Bright bluish green").Color,"Blocked!")	
bll.Value = false
end
end)
stun.Changed:connect(function()
if stun.Value == true then
makeui(Color3.new(255,255,0),"+Stunned")
wait(2)
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
---Block
local DV1 = blt.Value / blm 
local initX6 = f9.Size.X.Scale
f9f:TweenSize( UDim2.new( initX6*DV1*1.63, 0, 1, 0),"In","Linear",1 )
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
if stun.Value == true then
char.Humanoid.JumpPower = 0
else
char.Humanoid.JumpPower = 50
end
if stun.Value == false and skl == false then
char.Humanoid.WalkSpeed = 16 * spd.Value
end
if char.Humanoid.Jump == true and stun.Value == false and bl.Value == false then
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
local lilwl = ll.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(0))
local lirwl = rl.C0 * CFrame.new(0,0,.5) * CFrame.Angles(math.rad(-30),math.rad(0),math.rad(0))
 
--RIGHT
local lilwr = ll.C0 * CFrame.new(0,0,.5) * CFrame.Angles(math.rad(-30),math.rad(0),math.rad(0))
local lirwr = rl.C0 * CFrame.new(0,0,-.5) * CFrame.Angles(math.rad(30),math.rad(0),math.rad(0))


--
if bl.Value == false then
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false  then
TARG1 = walk[8] -- LEFT ARM
TARG2 = walk[7]-- RIGHT ARM
TARG3 = walk[6] -- NECK
TARG4 = walk[4] -- RIGHT LEG
TARG5 = walk[3] -- LEFT LEG
TARG6 = walk[5] -- TORSO
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false  then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false  then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false  then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false  then
TARG1 = walk[8] -- LEFT ARM
TARG2 = walk[7]-- RIGHT ARM
TARG3 = walk[6] -- NECK
TARG4 = walk[2] -- RIGHT LEG
TARG5 = walk[1] -- LEFT LEG
TARG6 = walk[5] -- TORSO
end	
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
wait(.05)
end
if IdleAndWalk == true and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then
wait(.05)
end
else
if IdleAndWalk == false and char.Humanoid.Jump == false and stun.Value == false and bl.Value == false then	
TARG1 = idle[5]
TARG2 = idle[6]
TARG3 = idle[2]
TARG4 = idle[4]
TARG5 = idle[3]
TARG6 = idle[1]
end
end
end
--
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