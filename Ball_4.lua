plyr = game.Players.LocalPlayer
char = plyr.Character
char.Humanoid.WalkSpeed = 90
char.Animate.Disabled = true

hop = Instance.new('HopperBin', plyr.Backpack)
hop.Name = 'BallNub'
hop.Selected:connect(function()
ball = Instance.new('Part', char)
ball.BrickColor = BrickColor.new('Really black')
ball.Size = Vector3.new(2,2,2)
ball.CanCollide = false
ball.Shape = "Ball"
wel = Instance.new('Weld')
wel.Part0 = char['Right Arm']
wel.Part1 = ball
wel.C0 = CFrame.new(0,-2,0)
wel.Parent = char['Right Arm']
ball.RightSurface = "Smooth"
ball.LeftSurface = "Smooth"
ball.FrontSurface = "Smooth"
ball.LeftSurface = "Smooth"
ball.TopSurface = "Smooth"
ball.BottomSurface = "Smooth"
char.Torso["Right Shoulder"].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(1.5,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.3,1.4,-0.5)*CFrame.Angles(1.5,0,0.5)
char.Torso.Neck.C0 = CFrame.new(0,1,0)*CFrame.Angles(1.3,3,0)
game:GetService('Chat'):chat(char.Head, "Ball is in nuetral", Enum.ChatColor.Green)
end)

mode = Instance.new('StringValue', char)
mode.Name = "mode"
mode.Value = "Nuetral"

hop.Selected:connect(function(mouse)
mouse.KeyDown:connect(function(key)
key:lower()
if key == "j" then
game:GetService('Chat'):chat(char.Head, "Swtiching to electric element", Enum.ChatColor.Red)
ball.Reflectance = 0.5
wait(0.03)
ball.Reflectance = 0.10
wait(0.03)
ball.Reflectance = 0.20
wait(0.03)
ball.Reflectance = 0.30
wait(0.03)
ball.Reflectance = 0.40
wait(0.03)
ball.Reflectance = 0.50
wait(0.03)
ball.Reflectance = 0.60
wait(0.03)
ball.Reflectance = 0.70
wait(0.03)
ball.Reflectance = 0.80
wait(0.03)
ball.Reflectance = 0.90
wait(0.03)
ball.Reflectance = 1
mode.Value = "Electric"
end
end)
end)
nerp = true
hop.Selected:connect(function(mouse)
mouse.Button1Down:connect(function()
if mode.Value == "Nuetral" then
derpa = ball.Touched:connect(function(hit)
hum = hit.Parent:findFirstChild('Humanoid')
if hum and nerp == true then
nerp = true
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health -5
hit.Parent.Humanoid.Sit = true
nurb = hit.Parent.Torso.Velocity
hit.Parent.Torso.Velocity = hit.Parent.Torso.Velocity+Vector3.new(900,900,900)
wait(1)
hit.Parent.Torso.Velocity = Vector3.new(nurb)
nerp.Value = false
wait(0.93)
nerp.Value = true
else
wait()
end
end)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(1.5,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(1.5,0,0.5)
char.Torso.Neck.C0 = CFrame.new(0,1,0)*CFrame.Angles(1.3,3,0)
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(2,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(2,0,0.5)
char.Torso.Neck.C0 = CFrame.new(0,1,0)*CFrame.Angles(1.6,3,0)
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(2.5,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(2.5,0,0.5)
char.Torso.Neck.C0 = CFrame.new(0,1,0)*CFrame.Angles(1.9,3,0)
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(3,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(3,0,0.5)
char.Torso.Neck.C0 = CFrame.new(0,1,0)*CFrame.Angles(2.2,3,0)
char.Humanoid.Jump = true
wait(0.5)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(3,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(3,0,0.5)
char.Torso.Neck.C0 = CFrame.new(0,1,0)*CFrame.Angles(1.9,3,0)
char.Humanoid.Jump = true
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(2.5,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(2.5,0,0.5)
char.Torso.Neck.C0 = CFrame.new(0,1,0)*CFrame.Angles(1.6,3,0)
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(2,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(2,0,0.5)
char.Torso.Neck.C0 = CFrame.new(0,1,0)*CFrame.Angles(1.3,3,0)
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(1.5,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(1.5,0,0.5)
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(1,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(1,0,0.5)
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(0.5,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(0.5,0,0.5)
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(1,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(1,0,0.5)
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(1.5,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(1.5,0,0.5)
derpa:disconnect()
end
end)
mouse.Button1Down:connect(function()
if mode.Value == "Electric" then
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(1.5,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(1,0,0.4)
sparkles = Instance.new('Sparkles', ball)
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(2,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(0.5,0,0.3)
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(2.5,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,0.7,-0.5)*CFrame.Angles(0,0,0.2)
char.Torso.Neck.C0 = CFrame.new(0,1,0)*CFrame.Angles(1.6,3,0)
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(3.5,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,0.5,-0.5)*CFrame.Angles(0,0,0.0)
char.Torso.Neck.C0 = CFrame.new(0,1,0)*CFrame.Angles(1.9,3,0)
wait(3)

char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(3.5,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(1,0,0.4)
sparkles = Instance.new('Sparkles', ball)
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(2.5,0,-0.5)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,1,-0.5)*CFrame.Angles(0.5,0,0.3)
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(2,0,-0.3)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,0.7,-0.5)*CFrame.Angles(0,0,0.2)
char.Torso.Neck.C0 = CFrame.new(0,1,0)*CFrame.Angles(1.6,3,0)
wait(0.03)
char.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(1.5,0,-0)
char.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,0.5,-0.5)*CFrame.Angles(0,0,0.0)
char.Torso.Neck.C0 = CFrame.new(0,1,0)*CFrame.Angles(1.3,3,0)
ball2 = ball:Clone()
ball.Transparency = 1
ball2.Parent = game.Workspace
ball2.Touched:connect(function(hit)
print('1')
if hit and hit.Parent.Name ~= char.Name then
print('2')
c = hit.Parent:findFirstChild('Humanoid')
print('3')
if c then
print('4')
nerp = true
print('5')
hit.Parent.Humanoid.WalkSpeed = 0
print('6')
hit.Parent.Animate.Disabled = false
hit.Parent.Torso.Anchored = true
ball2.Anchored = true
hit.Parent.Torso['Right Shoulder'].C0 = CFrame.new(1.5,1,0)*CFrame.Angles(3,0,0.5)
hit.Parent.Torso["Left Shoulder"].C0 = CFrame.new(-1.5,0.5,0)*CFrame.Angles(3,0,-0.5)
hit.Parent.Torso['Right Hip'].C0 = CFrame.new(0.5,-1,0.5)*CFrame.Angles(1,1,0)
hit.Parent.Torso['Left Hip'].C0 = CFrame.new(0.5,-1,-0.5)*CFrame.Angles(-1,1,0)
naerb = Instance.new('Part', char)
narb.Position = hit.Parent.Torso.Position*CFrame.new(0,10,0)
for i=1, 5 do
hit.Parent.Humanoid.Health = hit.Parent.Humanoid.Health -5
wait(0.03)
end
else 
wait()
end
end
end)
floatForce = Instance.new("BodyForce")
floatForce.force = Vector3.new(0, ball2:GetMass() * 196.1,0.0)
floatForce.Parent = ball2
ball2.Velocity = char.Torso.CFrame.lookVector*9
wait(5)
ball.Transparency = 0
hit.Parent.Torso.Anchored = false
hit.Parent.Humanoid.WalkSpeed = 16
ball2:Destroy()
end
nerp = false
nerp = true
end)
end)
