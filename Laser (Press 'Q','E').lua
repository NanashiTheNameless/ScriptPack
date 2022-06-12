wait()
script.Parent=nil
function Fire(cframee)
local part = Instance.new("Part", game.Players.LocalPlayer.Character)
part.FormFactor = Enum.FormFactor.Symmetric
part.CanCollide = false
part.Anchored = true
part.Material = Enum.Material.Neon
part.Size = Vector3.new(8, 1, 1)
part.Locked = true
part.BrickColor = BrickColor.new("Institutional white")
part.Friction = 0.3
part.CFrame=cframee
while part and part.Parent~=nil do
local ray = Ray.new(
    part.CFrame.p,
    (part.CFrame*CFrame.new(1,0,0).p - part.CFrame.p).unit * 4
) 
local ignore = game.Players.LocalPlayer.Character
 
local hit, position, normal = Workspace:FindPartOnRay(ray, ignore)
if hit then
part.CFrame=part.CFrame*CFrame.Angles(0,math.rad(math.random(-360,360)),0)
pcall(function()hit.Parent.Humanoid:TakeDamage(30)end)
pcall(function()hit.Parent.Parent.Humanoid:TakeDamage(30)end)
else
part.CFrame=part.CFrame*CFrame.new(4,0,0)
end
game:service'RunService'.RenderStepped:wait()
end
end
game:service'Players'.LocalPlayer:GetMouse().KeyDown:connect(function(key)
if key=='e' then
Fire(game.Players.LocalPlayer.Character.Head.CFrame*CFrame.new(0,0,-4)*CFrame.Angles(0,math.rad(90),0))
elseif key == 'q' then
for i=1, 36 do
coroutine.resume(coroutine.create(function()
Fire(game.Players.LocalPlayer.Character.Head.CFrame*CFrame.Angles(0,math.rad(i*10),0)*CFrame.new(0,0,-4)*CFrame.Angles(0,math.rad(90),0))
end))
end
end
end)