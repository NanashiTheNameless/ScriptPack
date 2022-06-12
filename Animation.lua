repeat wait() until game:service("Players").LocalPlayer.Character ~= nil;
Player = game:service("Players").LocalPlayer
Char = Player.Character--and actually my friend made it I'm studying it lol, but still im ebt
mouse = Player:GetMouse()
Humanoid = Char:findFirstChild("Humanoid")
Torso = Char:findFirstChild("Torso")
Head = Char.Head
ra = Char:findFirstChild("Right Arm")
la = Char:findFirstChild("Left Arm")
rl = Char:findFirstChild("Right Leg")
ll = Char:findFirstChild("Left Leg")
rs = Torso:findFirstChild("Right Shoulder")
ls = Torso:findFirstChild("Left Shoulder")
rh = Torso:findFirstChild("Right Hip")
lh = Torso:findFirstChild("Left Hip")
neck = Torso:findFirstChild("Neck")
rj = Char:findFirstChild("HumanoidRootPart"):findFirstChild("RootJoint")
anim = Char:findFirstChild("Animate")
rootpart = Char:findFirstChild("HumanoidRootPart")
Camera = workspace.CurrentCamera
if anim then
anim:Destroy()
end
shiftDown = false
ctrlDown = false
function clerp(c1,c2,al)
local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
for i,v in pairs(com1) do 
com1[i] = v+(com2[i]-v)*al
end
return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
end
rm = Instance.new("Weld", Torso)
rm.C0 = CFrame.new(1.5, 0.5, 0) *CFrame.Angles(0, 0, 0)
rm.C1 = CFrame.new(0, 0.5, 0)
rm.Part0 = Torso
rm.Part1 = ra
lm = Instance.new("Weld", Torso)
lm.C0 = CFrame.new(-1.5, 0.5, 0) *CFrame.Angles(0, 0, 0)
lm.C1 = CFrame.new(0, 0.5, 0)
lm.Part0 = Torso
lm.Part1 = la
rlegm = Instance.new("Weld", Torso)
rlegm.C0 = CFrame.new(0.5, -1, 0) *CFrame.Angles(0, 0, 0)
rlegm.C1 = CFrame.new(0, 1, 0)
rlegm.Part0 = Torso
rlegm.Part1 = rl
llegm = Instance.new("Weld", Torso)
llegm.C0 = CFrame.new(-0.5, -1, 0) *CFrame.Angles(0, 0, 0)
llegm.C1 = CFrame.new(0, 1, 0)
llegm.Part0 = Torso
llegm.Part1 = ll
nec = Instance.new("Weld",Torso)
nec.Part0 = Torso
nec.Part1 = Head
nec.C0 = CFrame.new(0,1,0) * CFrame.Angles(-1,-0,-0)
nec.C1 = CFrame.new(0,-0.5,0) * CFrame.Angles(-1,-0,-0)
rsc0 = rm.C0
lsc0 = lm.C0
llc0 = llegm.C0
rlc0 = rlegm.C0
neckc0 = nec.C0
rootc0 = rj.C0
mouse.KeyDown:connect(function(Key)
if Key:byte() == 48 then 
shiftDown = true
elseif Key:byte() == 52 then
altDown = true
end
end)
mouse.KeyUp:connect(function(Key)
if Key:byte() == 48 then
shiftDown = false 
elseif Key:byte() == 52 then
altDown = false
end
end)
 
FreeFalling = false
Jumping = false
Humanoid.Jumping:connect(function(B)
if B then Jumping = true
else Jumping = false
end
end)
Humanoid.FreeFalling:connect(function(B)
if B then FreeFalling = true
else FreeFalling = false
end
end)
count = 0
countspeed = 1
while wait() do
count = (count % 100) + countspeed
angle = math.pi * math.sin(math.pi*2/100*count)
if Vector3.new(0, Torso.Velocity.y, 0).magnitude > 2 and Jumping or FreeFalling then --Jump animation
countspeed = 8
rm.C0 = clerp(rm.C0,rsc0 * CFrame.Angles(math.rad(-20) + (-angle*0.000), 0, math.rad(0)),.5)
lm.C0 = clerp(lm.C0,lsc0 * CFrame.Angles(math.rad(-20) + (-angle*0.000), 0, math.rad(0)),.5)
rlegm.C0 = clerp(rlegm.C0,CFrame.new(0.5, -0.5, -.5) * CFrame.Angles(math.rad(-20) + (-angle*0.000), 0, 0),.5)
llegm.C0 = clerp(llegm.C0,llc0 * CFrame.Angles(math.rad(20) + (-angle*0.000), 0, 0),.9)
rj.C0 = clerp(rj.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(85), math.rad(180), 0),.3)
nec.C0 = clerp(nec.C0,neckc0 * CFrame.Angles(0,0,0),.4)
Humanoid.WalkSpeed = 16
elseif Vector3.new(Torso.Velocity.x, 0, Torso.Velocity.z).magnitude < 2 then --Idle anim
countspeed = 0.66
rlegm.C0 = clerp(rlegm.C0,rlc0 * CFrame.Angles(math.rad(6), 0, 0),.4)
llegm.C0 = clerp(llegm.C0,llc0 * CFrame.Angles(math.rad(-6), 0, 0),.4)
rm.C0 = clerp(rm.C0,rsc0 * CFrame.Angles(math.rad(-6), 0, math.rad(6)),.4)
lm.C0 = clerp(lm.C0,lsc0 * CFrame.Angles(math.rad(-6), 0, math.rad(-6)),.4)
rj.C0 = clerp(rj.C0,rootc0 * CFrame.Angles(-math.rad(1), 0, 0),.4)
nec.C0 = clerp(nec.C0,neckc0 * CFrame.Angles(angle*0.050,0,0),.4)
Humanoid.WalkSpeed = 30
elseif Vector3.new(Torso.Velocity.x, 0, Torso.Velocity.z).magnitude > 2 then --Walk & run anim
if not shiftDown and not altDown then -- le walk
countspeed = 6
rm.C0 = clerp(rm.C0,rsc0 * CFrame.Angles(angle*0.290 + (-angle*0.000), 0, math.rad(0)),.4)
lm.C0 = clerp(lm.C0,lsc0 * CFrame.Angles(-angle*0.290 + (-angle*0.000), 0, math.rad(0)),.4)
rlegm.C0 = clerp(rlegm.C0,CFrame.new(0.5, -1, 0) * CFrame.Angles(-angle*0.240 + (-angle*0.000), 0, 0),.4)
llegm.C0 = clerp(llegm.C0,llc0 * CFrame.Angles(angle*0.240 + (-angle*0.000), 0, 0),.4)
rj.C0 = clerp(rj.C0,rootc0 * CFrame.Angles(math.rad(0) + (angle*0.000), 0, math.rad(1)),.4)
nec.C0 = clerp(nec.C0,neckc0 * CFrame.Angles(math.rad(5),0,0),.4)
Humanoid.WalkSpeed = 16
elseif (shiftDown and altDown) or (not shiftDown and altDown) then -- crouch stop??? idk lol 
countspeed = 2
rlegm.C0 = clerp(rlegm.C0,CFrame.new(0.5, -0.5, -.5) * CFrame.Angles(math.rad(-20) + (-angle*0.000), 0, 0),.7)
llegm.C0 = clerp(llegm.C0,llc0 * CFrame.Angles(math.rad(1), 0, 0),.7)
rm.C0 = clerp(rm.C0,rsc0 * CFrame.Angles(-1.30, .0, .25),.7)
lm.C0 = clerp(lm.C0,lsc0 * CFrame.Angles(-1.30, .0, -.25),.7)
rj.C0 = clerp(rj.C0,(rootc0*CFrame.new(0,0,-1.75)) * CFrame.Angles(math.rad(-75), 0, math.rad(1)),.7)
nec.C0 = clerp(nec.C0,neckc0 * CFrame.Angles(math.rad(-50),math.rad(-1),math.rad(-1)),.7)
if Humanoid.WalkSpeed > 5 then
Humanoid.WalkSpeed = Humanoid.WalkSpeed - 0.5
else
altDown = false
Humanoid.WalkSpeed = 30
end
else -- le run
countspeed = 10
rm.C0 = clerp(rm.C0,rsc0 * CFrame.Angles(math.rad(-30) + (-angle*0.000), 0, math.rad(0)),.4)
lm.C0 = clerp(lm.C0,lsc0 * CFrame.Angles(math.rad(-30) + (-angle*0.000), 0, math.rad(0)),.4)
rlegm.C0 = clerp(rlegm.C0,CFrame.new(0.5, -1, 0) * CFrame.Angles(-angle*0.490 + (-angle*0.000), 0, 0),.4)
llegm.C0 = clerp(llegm.C0,llc0 * CFrame.Angles(angle*0.490 + (-angle*0.000), 0, 0),.4)
rj.C0 = clerp(rj.C0,rootc0 * CFrame.Angles(math.rad(35) + (angle*0.000), 0, math.rad(1)),.4)
nec.C0 = clerp(nec.C0,neckc0 * CFrame.Angles(math.rad(15),0,0),.4)
Humanoid.WalkSpeed = 40
end
end
end
 