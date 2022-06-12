bricks = {}
point = CFrame.new(-30,30,0)

for i=0, 1.57, 0.03 do
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(70,2,1)
p.Anchored = true
p.CFrame = point
p.CFrame = p.CFrame * CFrame.Angles(-i,0,0) * CFrame.new(0,0,-30)
p.BrickColor = BrickColor.new("Brown")
p.TopSurface = 0
p.BottomSurface = 0
p.Reflectance = 1
table.insert(bricks,p)
end


bricks = {}
point = CFrame.new(-30,30,0)

for i=0, 6.28, 0.05 do
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(70,3,1)
p.Anchored = true
p.CFrame = point
p.CFrame = p.CFrame * CFrame.Angles(-i,0,0) * CFrame.new(0,0,-30)
p.BrickColor = BrickColor.new("Brown")
p.TopSurface = 0
p.BottomSurface = 0
p.Reflectance = 1
table.insert(bricks,p)
end

bricks = {}
point = CFrame.new(-30,0,0)


for i=0, 70, 0.03 do
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(5,4,2)
p.Anchored = true
p.CFrame = point
p.CFrame = p.CFrame * CFrame.Angles(0,i,0) * CFrame.new(i,i,0)
p.BrickColor = BrickColor.new("Brown")
p.TopSurface = 0
p.BottomSurface = 0
p.Reflectance = 0.2
table.insert(bricks,p)
end
for i=1, #bricks do
coroutine.resume(coroutine.create(function()
for i=1, 50 do
bricks[i].Transparency = bricks[i].Transparency + 0.02
wait()
end
end))
end



bricks = {}
point = CFrame.new(-30,6,0)

for i=0, 7.4, 0.2 do
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(1,1,1)
p.Anchored = true
p.CFrame = CFrame.new(-30,6,0)
p.CFrame = p.CFrame * CFrame.Angles(-i,0,0) * CFrame.new(0,0,-5)
p.BrickColor = BrickColor.new("Brown")
p.TopSurface = 0
p.BottomSurface = 0
p.Reflectance = 1
table.insert(bricks,p)
end


point = CFrame.new(50,30,0)
ding = point.Y
colors1 = {"Bright red", "Bright yellow", "Neon orange"}
colors2 = {"White", "Bright blue", "Light blue"}
colors3 = {"Bright green", "Dark green", "Olive"}
num1 = #colors1
num2 = #colors2
num3 = #colors3
allcols = {}
for a,b in pairs(colors1) do 
table.insert(allcols,b) 
end 
for a,b in pairs(colors2) do 
table.insert(allcols,b) 
end 
for a,b in pairs(colors3) do 
table.insert(allcols,b) 
end 

allnum = #allcols

test = {}
test1 = {}
test2 = {}


for i=0, 6.4, 0.05 do
local p = Instance.new("Part")
p.Parent = workspace
p.Size = Vector3.new(1,1,1)
p.Anchored = true
p.CFrame = point
p.CFrame = p.CFrame * CFrame.Angles(0,i,0) * CFrame.new(0,0,ding)
p.TopSurface = 0
p.BrickColor = BrickColor.new(colors1[math.random(1,num1)])
p.BottomSurface = 0
table.insert(test, p)
local o = Instance.new("Part")
o.Parent = workspace
o.Size = Vector3.new(1,1,1)
o.Anchored = true
o.CFrame = point
o.CFrame = o.CFrame * CFrame.Angles(i,0,0) * CFrame.new(0,ding,0)
o.TopSurface = 0
o.BrickColor = BrickColor.new(colors2[math.random(1,num2)])
o.BottomSurface = 0
table.insert(test1, o)
local a = Instance.new("Part")
a.Parent = workspace
a.Size = Vector3.new(1,1,1)
a.Anchored = true
a.CFrame = point
a.CFrame = a.CFrame * CFrame.Angles(0,0,i) * CFrame.new(ding,0,0)
a.TopSurface = 0
a.BrickColor = BrickColor.new(colors3[math.random(1,num3)])
a.BottomSurface = 0
table.insert(test2, a)
local b = Instance.new("Part")
b.Parent = workspace
b.Size = Vector3.new(6,6,6)
b.Anchored = true
b.CFrame = point
b.CFrame = b.CFrame * CFrame.Angles(i,i,i) * CFrame.new(0,0,0)
b.TopSurface = 0
b.BrickColor = BrickColor.new(allcols[math.random(1,allnum)])
b.BottomSurface = 0
end

