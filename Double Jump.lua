lp = game.Players.LocalPlayer
char = lp.Character
mouse = lp:GetMouse()
hed = char.Head
torso = char.Torso
larm = char["Left Arm"]
rarm = char["Right Arm"]
lleg = char["Left Leg"]
rleg = char["Right Leg"]
rootpart=char.HumanoidRootPart
hum = char.Humanoid
canJump=true

exo = function(parent, pitch)
exos = Instance.new("Sound")
exos.Parent=parent
exos.SoundId="rbxassetid://222942614"
exos.Volume=10
exos.Pitch=pitch
wait(0.001)
exos:Play()
end

mouse.KeyDown:connect(function(key)
if key==' ' then
if hum.Jump==true and canJump==true then
canJump=false
hum.Jump=false
BV = Instance.new("BodyVelocity", torso)
hum.Jump=false
BV.maxForce = Vector3.new(0,5000,0)
exo(char.Torso, 1)
hum.Jump=false
BV.P = 5000
hum.Jump=false
BV.velocity = Vector3.new(0,8000,0)
hum.Jump=false
wait(0.5)
hum.Jump=false
BV:Remove()
hum.Jump=false
canJump=true
end
end
end)