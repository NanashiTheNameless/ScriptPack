function onTouched(hit)
humanoid = hit.Parent:findFirstChild("Humanoid")
if humanoid ~= nil then
humanoid.Health = humanoid.Health - 12
t = humanoid.Parent:findFirstChild("Torso")
t.CFrame = t.CFrame * CFrame.Angles(math.random(-3, 3), math.random(-3, 3), math.random(-3, 3))
if t ~= nil then
t.Velocity = t.CFrame.lookVector * 100
end