pcall(function() workspace["castle"]:remove() end)
workspac = Instance.new("Model") 
workspac.Parent = workspace 
workspac.Name = "castle" 
script.Parent = workspac
doing = false 
closed = true 
function new(part, x, y, z, xx, yy, zz, parent, color) 
local brick = part 
brick.formFactor = "Custom" 
brick:BreakJoints() 
brick.Anchored = true 
brick.CanCollide = true
brick.Size = Vector3.new(x, y, z) 
brick.Parent = parent 
brick.CFrame = CFrame.new(xx, yy, zz) 
brick.BrickColor = BrickColor.new(color) 
return brick
end 
b = Instance.new("Part") 
new(b, 5, 25, 35, 35, 12.5, 0, workspac, "Dark grey") 
b = Instance.new("Part") 
new(b, 5, 25, 35, 35, 12.5, 55, workspac, "Dark grey") 
b = Instance.new("Part") 
new(b, 70, 25, 5, 67.5, 12.5, 75, workspac, "Dark grey") 
b = Instance.new("Part") 
new(b, 70, 25, 5, 67.5, 12.5, -20, workspac, "Dark grey") 
b = Instance.new("Part") 
new(b, 5, 25, 91, 100, 12.5, 27.5, workspac, "Dark grey") 
bu1 = Instance.new("Part") 
bu1.Name = "Button1" 
new(bu1, 2, 2, 2, 39, 1, 16, workspac, "Bright green") 
c1 = Instance.new("ClickDetector", bu1) 
bu2 = Instance.new("Part") 
bu2.Name = "Button2" 
c2 = Instance.new("ClickDetector", bu2) 
new(bu2, 2, 2, 2, 39, 1, 13, workspac, "Bright red") 
for i = 0, 19, 1 do 
local g = Instance.new("Part") 
new(g, 1, 25, 1, 35, 12.5, 18, workspac, "Dark grey") 
g.Name = "g" ..i.. ""
g.CFrame = g.CFrame + Vector3.new(0, 0, i) 
wait() 
end 
function gate() 
for _, v in pairs(workspac:GetChildren()) do
if v.Name ~= "g" then 
print("open") 
v.Transparency = 1 
v.CanCollide = false 
else 
print("NO") 
end 
end 
end 
function gatec() 
for _, v in pairs(workspac:GetChildren()) do 
for i = 1, 19 do 
if v.Name ~= "g" then 
v.Transparency = 1 
v.CanCollide = true 
end 
end 
end 
end 
c1.Clicked:connect(gate) 
c2.Clicked:connect(gatec) 
