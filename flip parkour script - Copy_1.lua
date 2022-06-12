pl=game.Players.LocalPlayer
me=pl.Character
xl=me.Torso['Right Shoulder']
t=Instance.new("HopperBin",pl.Backpack)
t.Name="the_Parkour_Flip"
 
local debounce=false
function _restoreproperties() 
Holder = player.Character 
Torso = Holder:FindFirstChild("Torso") 
RightS = Torso:FindFirstChild("Right Shoulder") 
LeftS = Torso:FindFirstChild("Left Shoulder") 
RightH = Torso:FindFirstChild("Right Hip") 
LeftH = Torso:FindFirstChild("Left Hip") 
RightS.MaxVelocity = .15 
LeftS.MaxVelocity = .15 
RightH.MaxVelocity = .1 
LeftH.MaxVelocity = .1 
RightS.DesiredAngle = 0 
LeftS.DesiredAngle = 0 
LeftH.DesiredAngle = 0 
RightH.DesiredAngle = 0 
end 
function ManageAnimation(value) 
Holder = player.Character 
Player = player 
if value == "no anim" then 
Anim = Holder:FindFirstChild("Animate") 
if Anim~=nil then 
Anim.Disabled = true 
Anim.Parent = Player 
end 
elseif value == "re-anim" then 
Anim = Player:FindFirstChild("Animate") 
if Anim~=nil then 
Anim.Disabled = false 
Anim.Parent = Holder 
end 
end 
end 
function Down(ml) 
for i=1, ml.velocity.y/3 do 
ml.velocity = ml.velocity+Vector3.new(0,-4.25,0) 
wait() 
end 
ml:Remove() 
end 
function Flip() 
if debounce==true then return end
debounce=true
Char = player.Character 
Human = Char.Humanoid 
Torso = Char.Torso 
CF = Torso.CFrame 
Human.PlatformStand = false
Human.Sit = true
VelUp = Instance.new("BodyVelocity") 
VelUp.velocity = Vector3.new(0,-5000,0)+Torso.CFrame.lookVector*-30
VelUp.P = VelUp.P*-1000
VelUp.maxForce = Vector3.new(10000,10000,10000)*999 
VelUp.Parent = Torso 
coroutine.resume(coroutine.create(Down),VelUp) 
Gyro = Instance.new("BodyGyro") 
Gyro.P = Gyro.P*10
Gyro.maxTorque = Vector3.new(100000,100000,100000)*999 
Gyro.cframe = CF 
Gyro.Parent = Torso 
for i=1, 16 do 
Gyro.cframe = Gyro.cframe*CFrame.fromEulerAnglesXYZ(math.pi/9,math.pi/-18,0) 
wait() 
end 
Gyro.cframe = CF 
wait()
Gyro:Remove()
Human.PlatformStand = false
Human.Sit = false
_restoreproperties() 
debounce=false
end 
function onActive(mouse) 
player = game.Players.LocalPlayer 
if player==nil then return end 
mouse.Button1Down:connect(function() Flip() end) 
end 
script.Parent = t.Selected:connect(onActive) 
 
