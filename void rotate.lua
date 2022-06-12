----------------------------DO NOT GIVE TO ANYONE------------------------------------------------------------
 
local me = game.Players.LocalPlayer.Name--Don't change.
 
local plr = game.Players[me]
 
local char = game.Players[me].Character

local mouse = plr:GetMouse()
 
function can(player)
return (player.Character.Head.Position - char.Head.Position).Magnitude < 20
end
 
mouse.KeyDown:connect(function(key)
if key=='q' then
coroutine.resume(coroutine.create(function()
local ball = Instance.new("Part",char)
ball.TopSurface = 'Smooth'
ball.BottomSurface = 'Smooth'
ball.Anchored=true
ball.CanCollide=false
ball.Name = 'Affect!'
ball.BrickColor = BrickColor.new("Royal purple")
ball.Size = Vector3.new(100,100,100)
ball.CFrame = char.Torso.CFrame
z = Instance.new("SpecialMesh", ball)
z.MeshId = "http://www.roblox.com/asset/?id=12212520"
z.Scale = Vector3.new(1, 1, 1)
local EE = Instance.new("SpecialMesh",ball)
EE.MeshType = 'Sphere'
local move = Instance.new("BodyAngularVelocity",char.Torso)
move.maxTorque = Vector3.new(math.huge,math.huge,math.huge)
move.angularvelocity = Vector3.new(0,18,0)
move.P = 4000
 
ball.Transparency = .4
ball.Reflectance = .5
 
local ROTATES = 0
 
while ROTATES <= 50 do
ROTATES = ROTATES + 1
EE.Scale = EE.Scale + Vector3.new(.2,.2,.2)
ball.CFrame = char.Torso.CFrame
local AL = game.Players:GetPlayers()
for i=1, #AL do
if AL[i].Name~=(me) and can(AL[i]) then
AL[i].Character.Humanoid.Health = AL[i].Character.Humanoid.Health - 1
end end
wait(0.05)
end
wait(.4)
while ROTATES >= 0 do
ROTATES = ROTATES - 1
EE.Scale = EE.Scale + Vector3.new(-.2,-.2,-.2)
ball.CFrame = char.Torso.CFrame
local AE = game.Players:GetPlayers()
for z=1, #AE do
if AE[z].Name~=(me) and can(AE[z]) then
AE[z].Character.Humanoid.Health = AE[z].Character.Humanoid.Health - 1
end end
wait(0.05)
end
 
ball:remove()
move:remove()
end))
end
end)