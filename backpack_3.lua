me = game.Players:findFirstChild("xSoulStealerx")
torso = me.Character.Torso

colors = {"Bright green", "Bright red"}

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor,form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part:BreakJoints()
end

function weld(w, p, p0, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p0
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end

function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end


back = Instance.new("Model",me.Character)
back.Name = "Apples"

for i = -0.6, -1.8, -1.1 do
local b = Instance.new("Part")
prop(b,back,true,0,0,2.1,2.5,0.2,"Brown",false,"Custom")
local mw = Instance.new("Weld")
weld(mw,torso,torso,b,0,0,0,0,0.2,i)
end

for i = -1, 1, 2 do
local b = Instance.new("Part")
prop(b,back,true,0,0,0.2,2.5,1.2,"Brown",false,"Custom")
local mw = Instance.new("Weld")
weld(mw,torso,torso,b,0,0,0,i,0.2,-1.2)
end

local lol = Instance.new("Part")
prop(lol,back,true,0,0,2,0.2,1.2,"Brown",false,"Custom")
local mwl = Instance.new("Weld")
weld(mwl,torso,torso,lol,0,0,0,0,1.45,-1.2)

for i = -0.75, 0.75, 1.5 do
local xd = Instance.new("Part")
prop(xd,back,true,0,0,0.3,2,1.1,"Brown",false,"Custom")
local m = Instance.new("Weld")
weld(m,torso,torso,xd,0,0,i/4.5,i,-0.05,0)
end

posy1 = -4
posy2 = 11
posx1 = -6
posx2 = 6
posz1 = -13
posz2 = -10

for i=1,math.random(7,12) do
local xd = Instance.new("Part")
prop(xd,back,true,0,0,0.3,2,1.1,"Brown",false,"Custom")
local m = Instance.new("Weld")
weld(m,torso,torso,xd,0,0,0,0,0,0,0,0)
local mah = Instance.new("SpecialMesh")
local lol = math.random(9,15)/10
mesh(mah,xd,lol,lol,lol,"FileMesh")
mah.MeshId = "http://www.roblox.com/asset/?id=16190555"
xd.BrickColor = BrickColor.new(colors[math.random(1,#colors)])
end