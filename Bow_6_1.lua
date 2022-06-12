dmg = 15
me = game.Players.ic3w0lf589
char = me.Character
name = "XBowS"
hold = false
order = 1
modes = {"Normal", "Pull"}
mode = modes[order]

shoot = Instance.new("Sound")
shoot.Looped = false
shoot.Volume = 0.8
shoot.Pitch = 1.7
shoot.SoundId = "http://www.roblox.com/asset/?id=2691586"

function getnoobs(pos,dist)
local stoof = {}
local mods = {}
for _,v in pairs(workspace:children()) do
if v:IsA("BasePart") then
if (v.Position - pos).magnitude < dist and v.Anchored == false then
table.insert(stoof,v)
end
elseif v:IsA("Model") and v:findFirstChild("Humanoid") and v:findFirstChild("Torso") and v ~= char then
if (v.Torso.Position - pos).magnitude < dist then
table.insert(mods,v)
end
end
for _,k in pairs(v:children()) do
if k:IsA("BasePart") then
if (k.Position - pos).magnitude < dist and k.Anchored == false then
table.insert(stoof,k)
end
end
for _,o in pairs(k:children()) do
if o:IsA("BasePart") then
if (o.Position - pos).magnitude < dist and o.Anchored == false then
table.insert(stoof,o)
end
end
end
end
end
return stoof, mods
end

function getonenoob(pos,dist)
local mod
local to
local tem
local d = dist
for i,v in pairs(workspace:children()) do
to, tem = v:findFirstChild("Torso"), v:findFirstChild("Humanoid")
if v:IsA("Model") and to ~= nil and tem ~= nil then
if (to.Position - pos).magnitude <= d then
mod = v
d = (to.Position - pos).magnitude
end
end
end
return mod
end

function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
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
part.Locked = true
part:BreakJoints()
end

function weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end

rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")

for i,v in pairs(char:children()) do
if v.Name == name then v:remove() end
end

launcher = Instance.new("Model")
launcher.Name = name

main = Instance.new("Part")
prop( main, launcher, false, 0, 0, 0.8, 1.8, 0.6, "Dusty Rose", false, "Custom" )
Instance.new("SpecialMesh",main).MeshType = "Sphere"

torsoweld = Instance.new("Weld")
weld( torsoweld, torso, main, 0, 0, math.pi/4.5, 0, 0, -0.7 )

shoot.Parent = main

for i = -20, 84, 8 do
local lapa = Instance.new("Part")
prop( lapa, launcher, false, 0, 0, 0.5, 0.23, 0.2, "Reddish brown", false, "Custom" )
Instance.new("BlockMesh",lapa)
local w = Instance.new("Weld")
w.C0 = CFrame.new(0,-1.25,-1.4) * CFrame.Angles(math.rad(i),0,0)
weld(w,main,lapa,0,0,0,0,0,-1.5)
end

for i = 20, -84, -8 do
local lapa = Instance.new("Part")
prop( lapa, launcher, false, 0, 0, 0.5, 0.23, 0.2, "Reddish brown", false, "Custom" )
Instance.new("BlockMesh",lapa)
local w = Instance.new("Weld")
w.C0 = CFrame.new(0,1.25,-1.4) * CFrame.Angles(math.rad(i),0,0)
weld(w,main,lapa,0,0,0,0,0,-1.5)
end

string1 = Instance.new("Part")
prop( string1, launcher, false, 0, 0, 0.2, 2.8, 0.2, "Institutional white", false, "Custom" )
Instance.new("CylinderMesh",string1).Scale = Vector3.new(0.4,1,0.4)

str1 = Instance.new("Weld")
weld(str1,main,string1,0,0,0,0,-1.4,1.25)

string2 = Instance.new("Part")
prop( string2, launcher, false, 0, 0, 0.2, 2.8, 0.2, "Institutional white", false, "Custom" )
Instance.new("CylinderMesh",string2).Scale = Vector3.new(0.4,1,0.4)

str2 = Instance.new("Weld")
weld(str2,main,string2,0,0,0,0,1.4,1.25)

hbr = Instance.new("Part")
prop( hbr, launcher, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom" )
hwr = Instance.new("Weld")
weld( hwr, rarm, hbr, 0, 0, 0, 0, 0.93, 0)

hbl = Instance.new("Part")
prop( hbl, launcher, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom" )
hwl = Instance.new("Weld")
weld( hwl, larm, hbl, 0, 0, 0, 0, 0.93, 0)

rb = Instance.new("Part")
prop( rb, launcher, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom" )
rh = Instance.new("Weld")
weld( rh, torso, rb, 0, 0, 0, -1.5, -0.5, 0)

lb = Instance.new("Part")
prop( lb, launcher, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom" )
lh = Instance.new("Weld")
weld( lh, torso, lb, 0, 0, 0, 1.5, -0.5, 0)

rw = Instance.new("Weld")
weld(rw,rb,nil,0,0,0,0,0.5,0)

lw = Instance.new("Weld")
weld(lw,lb,nil,0,0,0,0,0.5,0)

holdr = Instance.new("Weld")
weld(holdr,hbr,nil,0,0,0,0,0,0)

holdl = Instance.new("Weld")
weld(holdl,hbl,nil,-math.pi/2,0.06,math.pi/6,0,0,0)

rightbattle = nil
leftbattle = nil

launcher.Parent = char

function selectanim()
lw.Part1 = larm
rw.Part1 = rarm
for i=0,50,10 do
lw.C0 = CFrame.Angles(math.rad(i),math.rad(-i*1.5),math.rad(i/2.7)) * CFrame.new(0,math.rad(-i/3),0)
lh.C0 = CFrame.new(math.rad(i),0,math.rad(-i/1.6))
rw.C0 = CFrame.Angles(math.rad(i/1.5),0,0) * CFrame.new(0,0,0)
wait()
end
local rwn, lwn, lhn, holdln = rw.C0, lw.C0, lh.C0, holdl.C0
if rightbattle == nil then
rightbattle = rwn
leftbattle = lwn
end
torsoweld.Part1 = nil
holdl.Part1 = main
end

function deselanim()
rw.Part1 = nil
lw.Part1 = nil
torsoweld.Part1 = main
holdl.Part1 = nil
holdr.Part1 = nil
rw.C0 = CFrame.new(0,0,0)
lw.C0 = CFrame.new(0,0,0)
holdl.C0 = CFrame.new(0,0,0)
holdr.C0 = CFrame.new(0,0,0)
rh.C0 = CFrame.new(0,0,0)
end

function makearrow(p)
local arrow = Instance.new("Model")
arrow.Name = "xSArrow"
local pa = Instance.new("Part")
prop(pa, arrow, true, 0, 0, 0.2, 0.2, 3.7, "Brown", false, "Custom")
pa.CFrame = p.CFrame

local tip = Instance.new("Part")
prop(tip, arrow, true, 0, 0, 0.34, 0.34, 0.7, "Medium grey", false, "Custom")
tip.CFrame = pa.CFrame
Instance.new("SpecialMesh",tip).MeshType = "Sphere"

local tw = Instance.new("Weld")
weld(tw, pa, tip, 0, 0, 0, 0, 0, -1.85)

local wa = Instance.new("Weld")
weld(wa, p, pa, 0, 0, 0, -0.2, 0, -0.6)
arrow.Parent = launcher

return arrow, pa, wa
end

if script.Parent.className ~= "HopperBin" then
h = Instance.new("HopperBin",me.Backpack)
h.Name = "xBowS"
script.Parent = h
end

bin = script.Parent

function select(mouse)
selectanim()
mouse.Button1Down:connect(function()
local poz = mouse.Hit.p
if mode == "Normal" then
order = order + 1
mode = modes[order]
for i=0,55,5 do
lw.C0 = leftbattle * CFrame.Angles(math.rad(i*1.8),math.rad(i),math.rad(-i))
holdl.C0 = CFrame.Angles(0,math.rad(-i/1.5),math.rad(-i/2))
rw.C0 = rightbattle * CFrame.Angles(math.rad(i),0,math.rad(-i/2)) * CFrame.new(0,0,math.rad(i/3))
wait()
end
elseif mode == "Pull" then
order = 1
mode = modes[order]
local meh, lol = rw.C0, lw.C0
local arrow, pa, wa = makearrow(main)
for i=0,30,5 do
str1.C0 = CFrame.new(0,0,-i/22) * CFrame.Angles(math.rad(i),0,0)
str2.C0 = CFrame.new(0,i/90,-i/22) * CFrame.Angles(math.rad(-i),0,0)
rw.C0 = meh * CFrame.Angles(0,0,math.rad(i)) * CFrame.new(0,math.rad(i*1.5),0)
wa.C0 = CFrame.new(0,0,math.rad(-i*2))
wait()
end
for i=30,0,-15 do
str1.C0 = CFrame.new(0,0,-i/22) * CFrame.Angles(math.rad(i),0,0)
str2.C0 = CFrame.new(0,i/90,-i/22) * CFrame.Angles(math.rad(-i),0,0)
wa.C0 = CFrame.new(0,0,math.rad(-i*3))
wait()
end
wa:remove()
wait(1)
pa.CFrame = CFrame.new(pa.Position, poz)
wait(1)
pa.Velocity = pa.CFrame.lookVector * 250
end
end)
end

function desel()
deselanim()
end

--[[
for i=0,30,5 do
str1.C0 = CFrame.new(0,0,-i/22) * CFrame.Angles(math.rad(i),0,0)
str2.C0 = CFrame.new(0,i/90,-i/22) * CFrame.Angles(math.rad(-i),0,0)
]]
bin.Selected:connect(select)
bin.Deselected:connect(desel)

-- lego