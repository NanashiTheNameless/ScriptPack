script.Parent = nil

person = "DEADDEVIL1919"

me = Workspace[person]

me.Humanoid.MaxHealth = 2000

me.Humanoid.Health = 10000

torso = me.Torso

local mat = "Plastic"

t = 0.1

m = Instance.new("Model",me)

m.Name = "Suit"

function make(a)

c = Instance.new("Part",m)

c.formFactor = "Custom"

c.Position = a.Position

c.Size = Vector3.new(a.Size.x,a.Size.y,t)

c.TopSurface = 0

c.BottomSurface = 0

c.Material = "Concrete"

c.BrickColor = BrickColor.new("Brown")

w = Instance.new("Weld",m)

w.Part0 = c

w.Part1 = a

w.C1 = CFrame.new(0,0,a.Size.z/2)

c2 = c:Clone()

c2.Parent = m

w = Instance.new("Weld",m)

w.Part0 = c2

w.Part1 = a

w.C1 = CFrame.new(0,0,-a.Size.z/2)

c3 = c:Clone()

c3.Parent = m

c3.Size = Vector3.new(t,a.Size.y,a.Size.z)

w = Instance.new("Weld",m)

w.Part0 = c3

w.Part1 = a

w.C1 = CFrame.new(a.Size.x/2,0,0)

c4 = c3:Clone()

c4.Parent = m

w = Instance.new("Weld",m)

w.Part0 = c4

w.Part1 = a

w.C1 = CFrame.new(-a.Size.x/2,0,0)

c5 = c:Clone()

c5.Parent = m

c5.Size = Vector3.new(a.Size.x,0,a.Size.z)

w = Instance.new("Weld",m)

w.Part0 = c5

w.Part1 = a

w.C1 = CFrame.new(0,a.Size.y/2,0)

c6 = c5:Clone()

c6.Parent = m

w = Instance.new("Weld",m)

w.Part0 = c6

w.Part1 = a

w.C1 = CFrame.new(0,-a.Size.y/2,0)

end

for i,v in pairs(me:GetChildren()) do

if v:IsA("BasePart") then

if v.Name ~= "Head" then

make(v)

end

end

end

me.Head.Color = c.Color

---------PART 2-------

function bounch(hit)

for i,v in pairs (hit.Parent:GetChildren()) do

if v:IsA("Humanoid") then

v.Sit = true

v.Torso.Velocity = CFrame.new(v.Torso.Position,torso.Position).lookVector * -500

end

end

end

rad = 5

r = 30

p = Instance.new("Part",m)

p.formFactor = "Custom"

p.Size = Vector3.new(0.5,0.5,0.5)

p.Position = torso.Position

p.TopSurface = 0

p.BottomSurface = 0

p.BrickColor = BrickColor.new("New Yeller")

p.Transparency = 0.5

ww = Instance.new("Weld",p)

ww.Part0 = p

ww.Part1 = torso

p2 = p:Clone()

p2.Parent = m

p3 = p:Clone()

p3.Parent = m

ww2 = Instance.new("Weld",p2)

ww2.Part0 = p2

ww2.Part1 = torso

ww3 = Instance.new("Weld",p3)

ww3.Part0 = p3

ww3.Part1 = torso

ww3.C1 = CFrame.Angles(0,math.pi/2,0)

-----------------

for i = 1,360,r do

wait()

c = Instance.new("Part",m)

c.Size = Vector3.new(1,1,1)

c.TopSurface = 0

c.BottomSurface = 0

c.CanCollide = false

c.Position = torso.Position

c.Shape = 0

c.Material = "Concrete"

c.Touched:connect(bounch)

c.BrickColor = BrickColor.new("Brown")

mesh = Instance.new("FileMesh",c)

mesh.MeshId = "http://www.roblox.com/asset/?id=1290033"

w = Instance.new("Weld",c)

w.Part0 = c

w.Part1 = p

w.C1 = CFrame.new(math.cos(math.rad(i))*rad,0,math.sin(math.rad(i))*rad)

end

------------

for i = 1,360,r do

wait()

c2 = c:Clone()

c2.Parent = m

c2.Touched:connect(bounch)

w = Instance.new("Weld",c)

w.Part0 = c

w.Part1 = p

w.C1 = CFrame.new(math.cos(math.rad(i))*rad,0,math.sin(math.rad(i))*rad)

end

------------

for i = 1,360,r do

wait()

c2 = c:Clone()

c2.Parent = m

c2.Touched:connect(bounch)

w = Instance.new("Weld",c2)

w.Part0 = c2

w.Part1 = p2

w.C1 = CFrame.new(math.cos(math.rad(i))*rad,math.sin(math.rad(i))*rad,0)

end

-----------

for i = 1,360,r do

wait()

c2 = c:Clone()

c2.Parent = m

c2.Touched:connect(bounch)

w = Instance.new("Weld",c2)

w.Part0 = c2

w.Part1 = p3

w.C1 = CFrame.new(math.cos(math.rad(i))*rad,math.sin(math.rad(i))*rad,0)

end

while true do

wait()

ww.C1 = ww.C1 * CFrame.Angles(0,0.1,0)

ww2.C1 = ww2.C1 * CFrame.Angles(0,0,0.1)

ww3.C1 = ww3.C1 * CFrame.Angles(0,0,-0.1)

end

--mediafire--
