--[[
Fire Shattering By Tjmax1490609
Credit Goes To Invaderzimfan1233 For Creating Earth Shattering..
Thanks for using! ]]



Instance.new("HopperBin",game.Players.LocalPlayer.Backpack).Name = "Fire - Shattering"
script.Parent = game.Players.LocalPlayer.Backpack:findFirstChild"Fire - Shattering"
local char = script.Parent.Parent.Parent.Character
local humanoid = char.Humanoid
local Head = char.Head
local Torso = char.Torso
local LeftArm = char["Left Arm"]
local RightArm = char["Right Arm"]
local LeftLeg = char["Left Leg"]
local RightLeg = char["Right Leg"]
local RightHip = Torso["Right Hip"]
local LeftHip = Torso["Left Hip"]
local Neck = Torso.Neck
local RightShoulder = Torso["Right Shoulder"]
local LeftShoulder = Torso["Left Shoulder"]
local NeckC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local NeckC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
local LeftShoulderC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
local LeftShoulderC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
local RightShoulderC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
local RightShoulderC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
local LeftHipC0 = CFrame.new(-1, -1, 0, 0, 0, -1,0,1, 0, 1, 0, 0)
local LeftHipC1 = CFrame.new(-0.5,1,0,0,0,-1,0,1,0,1, 0, 0)
local RightHipC0 = CFrame.new(1,-1,0,0,0,1,0,1,0,-1,0,0)
local RightHipC1 = CFrame.new(0.5,1,0,0,0,1,0,1,0,-1,0,0)
local taco = false
local taco2 = true
local time = game.Lighting.TimeOfDay
local h = tonumber(string.sub(time,1,2))
local m = tonumber(string.sub(time,4,5))+1
local s = tonumber(string.sub(time,7,8))
local function frame()
TiltX = 0
TiltY = 0
TiltZ = 0
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(TiltX, TiltY, TiltZ)
TiltX = -0.5
TiltY = 0
TiltZ = 0
MoveX = 0
MoveY = 0
MoveZ = 0
RightShoulder.C0 = RightShoulder.C0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX,MoveY,MoveZ)
LeftShoulder.C0 = LeftShoulder.C0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX,MoveY,MoveZ)
TiltX = 0
TiltY = 0
TiltZ = 0
MoveX = 0
MoveY = 0
MoveZ = 0
RightHip.C0 = RightHipC0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX,MoveY,MoveZ)
LeftHip.C0 = LeftHipC0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX,MoveY,MoveZ)
end
function switch(bool)
for i,v in pairs(char:GetChildren())do
if v == Torso or v == Head or v == LeftArm or v == RightArm or v == LeftLeg or v == RightLeg then
v.Anchored = bool
end end end
local function frame2()
TiltX = 0
TiltY = 0
TiltZ = 1.57
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(TiltX, TiltY, TiltZ)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(TiltX, TiltY, -TiltZ)
TiltX = 0.6
TiltY = 0
TiltZ = 0
MoveX = 0
MoveY = 0
MoveZ = -0.3
RightShoulder.C0 = RightShoulder.C0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
LeftShoulder.C0 = LeftShoulder.C0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
TiltX = -0.05
TiltY = 0
TiltZ = 0
MoveX = 0
MoveY = 0.1
MoveZ = 0
RightHip.C0 = RightHipC0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
LeftHip.C0 = LeftHipC0 * CFrame.Angles(TiltX, TiltY, TiltZ) * CFrame.new(MoveX, MoveY, MoveZ)
end
local function RefreshWelds()
Neck.C0 = NeckC0
Neck.C1 = NeckC1
RightShoulder.C0 = RightShoulderC0
RightShoulder.C1 = RightShoulderC1
LeftShoulder.C0 = LeftShoulderC0
LeftShoulder.C1 = LeftShoulderC1
RightHip.C0 = RightHipC0
RightHip.C1 = RightHipC1
LeftHip.C0 = LeftHipC0
LeftHip.C1 = LeftHipC1
end
local function Button1Down(mouse)
if Busy then return end
Busy = true
local staystill = Instance.new("BodyPosition",Torso)
staystill.maxForce = Vector3.new(math.huge,math.huge,math.huge)
staystill.position = Torso.Position
frame()
local energy = Instance.new("Part",char)
energy.Size = Vector3.new(0.1,0.1,0.1)
energy.CanCollide = false
energy.Anchored = true
energy.Locked = true
energy.Shape = "Ball"
energy.TopSurface = "Smooth"
energy.BottomSurface = "Smooth"
energy.Color = Color3.new(0/0,0/0,0/0)
energy.CFrame = RightArm.CFrame * CFrame.new(-0.1,-0.6,-0.7)
local f1 = Instance.new("Fire",energy)
f1.Color = energy.Color
f1.SecondaryColor = Color3.new(0,0,0)
for i = 1,10 do
energy.CFrame = RightArm.CFrame * CFrame.new(-0.3,-0.7,-0.6)
energy.Size = energy.Size + Vector3.new(0.5,0.5,0.5)
energy.Reflectance = energy.Reflectance + 0.1
wait()
energy.CFrame = RightArm.CFrame * CFrame.new(-0.1,-0.7,-0.5)
energy.Reflectance = energy.Reflectance + 0.1
end
game:GetService("Chat"):Chat(Head,"FIRE EEKYEA!",0)
wait(0.6)
for i = 1,10 do
wait()
energy.CFrame = energy.CFrame * CFrame.new(-0.1,0.20,-0.20)
end
wait(0.5)
game:GetService("Chat"):Chat(Head,"TORNAIEA SI FIRE!",0)
for i = 1,10 do
wait()
energy.CFrame = Torso.CFrame * CFrame.new(0,1.2,-10.2)
end
game:GetService("Chat"):Chat(Head,"Si Nawata!",0)
for i = 1,10 do
wait()
energy.CFrame = Torso.CFrame * CFrame.new(0,5,-3)
end
wait(0.6)
for i = 1,10 do
wait()
energy.CFrame = Torso.CFrame * CFrame.new(0,-3,-3)
end
wait(0.6)
for i = 1,10 do
wait()
energy.CFrame = Torso.CFrame * CFrame.new(0,1.2,-3)
end
wait(0.4)
for i = 1,10 do
wait()
RightShoulder.C0 = RightShoulderC0 * CFrame.Angles(2, 2.5, 5)
LeftShoulder.C0 = LeftShoulderC0 * CFrame.Angles(-2, -2.5, -5)
end
game:GetService("Chat"):Chat(Head,"Facade..",0)
wait(0.6)
for i = 1,10 do
wait()
energy.Size = energy.Size + Vector3.new(0.6,0.6,0.6)
energy.Reflectance = 0
end
for i = .1,0.6 do
wait()
energy.Transparency = i
end
game:GetService("Chat"):Chat(Head,"FIRE SHATTERING!!",0)
wait(0.6)
for i = 1,10 do
wait()
energy.Size = energy.Size + Vector3.new(1, 1, 1)
end
a = Instance.new("ForceField",char)

wait(2)

game:GetService("Chat"):Chat(Head,"Mouri!!!",0)

local e = Instance.new("Explosion",Workspace)

e.BlastPressure = 2234987

e.BlastRadius = 23472348728947293843453

e.Position = energy.Position

wait(2)

local e = Instance.new("Explosion",Workspace)

e.BlastPressure = 2234987

e.BlastRadius = 23472348728947293843453

e.Position = energy.Position

wait(2)

for i = 1,10 do
wait()
energy.Size = energy.Size - Vector3.new(0, 0, 0)
wait(.1)
energy:Remove()
end

a:Remove()

RefreshWelds()
humanoid.PlatformStand = false
staystill:Destroy()
wait(5)
Busy = false
end
script.Parent.Selected:connect(function(mouse)mouse.Button1Down:connect(function(mouse)Button1Down(mouse)end)end)
