 function recurse3(x)
if x:isA("Sound") then
x:Stop()
x:Destroy()
else
for i,v in pairs(x:GetChildren()) do
recurse3(v)
end
end
end
recurse3(workspace)



function recurse(x)
if x:isA("Part") or x:isA("UnionOperation") or x:isA("WedgePart") or x:isA("TrussPart") then
Instance.new("Fire", x)
x.Locked = false
x.CanCollide = false
x.Anchored = false
game:GetService("RunService").RenderStepped:wait()
else
for i,v in pairs(x:GetChildren()) do
recurse(v)
end
end
end
recurse(workspace)