mainc = BrickColor.new("Black")
lightc = BrickColor.new("Bright yellow")
posx = -210
posz = -210

tab = {}
thing = {}

for i = -960, 960, 40 do
local o = Instance.new("Part")
o.Parent = workspace
o.formFactor = 0
o.TopSurface = 0
o.BottomSurface = 0
o.Anchored = true
o.Size = Vector3.new(4,3,4)
o.CFrame = CFrame.new(posx,1.2,posz)
o.BrickColor = mainc
local o1 = Instance.new("SpecialMesh")
o1.Parent = o
o1.MeshType = "FileMesh"
o1.MeshId = "http://www.roblox.com/asset/?id=1033714"
o1.Scale = Vector3.new(1.9, 2.5, 1.9)
local e = Instance.new("Part")
e.Parent = workspace
e.formFactor = 0
e.TopSurface = 0
e.BottomSurface = 0
e.Anchored = true
e.Size = Vector3.new(1,9,1)
e.CFrame = CFrame.new(posx,5.5,posz)
e.BrickColor = mainc
local e1 = Instance.new("CylinderMesh")
e1.Parent = e
local g = Instance.new("Part")
g.Parent = workspace
g.formFactor = 0
g.TopSurface = 0
g.BottomSurface = 0
g.Anchored = true
g.Size = Vector3.new(4,1,4)
g.CFrame = CFrame.new(posx,10.5,posz)
g.BrickColor = mainc
local g1 = Instance.new("CylinderMesh")
g1.Parent = g
local r = Instance.new("Part")
r.Parent = workspace
r.formFactor = 0
r.TopSurface = 0
r.BottomSurface = 0
r.Anchored = true
r.Size = Vector3.new(3,3,3)
r.CFrame = CFrame.new(posx,12,posz)
r.BrickColor = lightc
r.Transparency = 0.1
table.insert(thing,r)
local r1 = Instance.new("CylinderMesh")
r1.Parent = r
local m = g:clone()
m.Parent = workspace
m.CFrame = CFrame.new(posx,14,posz)
local k = Instance.new("Part")
k.Parent = workspace
k.formFactor = 0
k.TopSurface = 0
k.BottomSurface = 0
k.Anchored = true
k.Size = Vector3.new(1,3,1)
k.CFrame = CFrame.new(posx+1.6,12,posz)
k.BrickColor = mainc
local k1 = Instance.new("CylinderMesh")
k1.Parent = k
k1.Scale = Vector3.new(0.35,1,0.35)
local kj = k:clone()
kj.Parent = workspace
kj.CFrame = CFrame.new(posx-1.6,12,posz)
local kf = k:clone()
kf.Parent = workspace
kf.CFrame = CFrame.new(posx,12,posz+1.6)
local kt = k:clone()
kt.Parent = workspace
kt.CFrame = CFrame.new(posx,12,posz-1.6)
for o=1, 36, 2 do
local bal1 = Instance.new("Part")
bal1.Parent = workspace
bal1.Shape = "Ball"
bal1.TopSurface = 0
bal1.BottomSurface = 0
bal1.Anchored = true
bal1.Size = Vector3.new(1,1,1)
bal1.CFrame = CFrame.new(posx,12,posz)
bal1.BrickColor = lightc
bal1.Transparency = 0.94
bal1.CanCollide = false
local bh = Instance.new("SpecialMesh")
bh.Parent = bal1
bh.MeshType = "Sphere"
bh.Scale = Vector3.new(o,o,o)
table.insert(tab,bal1)
end
posx = posx + 70
if posx >= 250 then
	posx = -210
	posz = posz + 70
end
end

l = game:service("Lighting")
coroutine.resume(coroutine.create(function()
	m = Instance.new("Hint")
	m.Parent = workspace
	while true do
		wait(0.04)
		l:SetMinutesAfterMidnight(l:GetMinutesAfterMidnight()+1)
		m.Text = l.TimeOfDay
		if l:GetMinutesAfterMidnight() >= 1045 or l:GetMinutesAfterMidnight() <= 410 then
			for i=1, #tab do
				tab[i].Transparency = 0.94
			end
			for i=1, #thing do
				thing[i].Transparency = 0.2
				thing[i].BrickColor = lightc
			end
			l.Brightness = 0.2
			l.Ambient = Color3.new(0.3,0.3,0.55)
		else
			l.Brightness = 0.6
			l.Ambient = Color3.new(0.56,0.56,0.56)
			for i=1, #tab do
				tab[i].Transparency = 1
			end
			for i=1, #thing do
				thing[i].Transparency = 0.6
				thing[i].BrickColor = BrickColor.new("Medium grey")
			end
		end
	end
end))

